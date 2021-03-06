(Auto)loading Packages
======================

The library is bootstrapped by:

    <?php
    require 'path/to/lib/bootstrap.php';
    ?>

At this point, unicode functionality and Environments are loaded, but the rest of the library is not immediately available. This is because there are a number of ways to deploy the codebase.

How is the Code Organised?
--------------------------

After bootstrapping, all library code consists of loading class definitions. These class are split into groups of functionality that we will call 'packages'. Each package encapsulates a particular area of functionality, and dividing the code like this makes it possible to choose to use parts of the library without having to use it all!

Packages exists on the filesystem as a directory under the root library path. For example, the 'forms' package includes all the classes necessary to handle user input via HTTP forms, and all the files are available within a forms directory under the library root. Within a package each class definition has it's own file using the standard mapping of an underscore in the classname to a directory separator:

    path/to/lib/forms/  [forms package directory]
    path/to/lib/forms/Validate/Email.php  [T_Validate_Email class definition]

Note the library prefix of 'T_' stripped off within packages to keep the directory structure manageable.

The "Core" Package
------------------

Package inter-dependencies are kept to a minimum to enable the user to cherry-pick just the packages of interest. The exception is the 'core' package that contains library functionality (such as Filters) that is shared throughout much of the rest of the code. Nearly all packages depend on the core package, the exception is the [/ref/aws AWS] package that is built to be entirely standalone.

Package Autoloading
-------------------

To make a package available, you need to setup an autoloader to load the class definitions within it. You can do this however you wish, but if you have chosen to use the library [/how-to/environments Environments], you can setup the forms package autoload with:

    <?php
    $env = new T_Environment_Http;
    $env->addRule(new T_Find_ClassInDir('path/to/lib/forms','T_'));
    ?>

Compiling Packages
------------------

Autoloading a lot of separate class definition files that include comments can be slow, and is wasteful in production. For production systems the library packages you are using can be compiled into either a single include file, or a streamlined autoload tree.

A command line script is provided at /path/to/lib/_tools/export.php that is capable of:

* compressing bootstrap and package(s) into a single includable PHP file
* compressing package(s) into a single streamlined autoload tree

    shell> /path/to/lib/_tools/export.php -h
    Usage: export.php [-t <target>] [-a <dir_or_file>] [-f <format>]
     -t <target>      target (stdout by default), existing dir to create autoload tree
     -a <dir or file> add this file or dir
     -h               display usage instructions

### Compress package(s) to a single PHP include

To compress and export the packages you are using to a single PHP include file, call the export script using the add switch ('-a') to include the code you wish to compress. The target switch ('-t') can be used to specify the file to export to, or if omitted the compressed code will be written to STDOUT. For example to export the bootstrapped core and db packages to the file lib.php you might issue the command:

    shell> cd /path/to/lib/
    shell> _tools/export.php -t lib.php -a bootstrap.php -a core -a db

### Compress package(s) to a streamlined autoload tree

To compress and export the packages you are using to a streamlined autoload tree, call the export script with the target of an existing directory and the code will be streamlined into a standard autoload tree in that directory. Note that if you try to export code this way that contains multiple class definitions per file, the script will fail: an example of such a file is bootstrap.php. To create a fully bootstrappable autoload tree you need to export the packages into the directory and then export bootstrap.php separately:

    shell> mkdir export
    shell> _tools/export.php -t export -a /path/to/lib/core -a /path/to/lib/db
    shell> _tools/export.php -t export/bootstrap.php -a bootstrap.php
