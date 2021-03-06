Bootstrapping and Environments
==============================

The library is bootstrapped by including the file bootstrap.php in the root library directory. This loads the unicode helper functions and makes available skeleton class definitions to create what is known within the library as an "environment". An environment encapsulates the *context* in which your code will execute: for example HTTP responses and command line scripts would usually operate in different environments.

What Do Environments Encapsulate?
---------------------------------

An environment encapsulates the ability to:

* act as a T_Factory to create objects and manage singletons (usually as a DI container).
* find files and/or class definitions on the file system e.g. it be configured to autoload classes and/or template files
* parse user input to the code: e.g. GET/POST parameters, command line arguments, etc.

Available Environments
----------------------

Unless you define your own, there are two environments available after bootstrapping the library:

* T_Environment_Http is used when working with HTTP requests.
* T_Environment_Terminal is used when writing scripts that execute from the command line.

The HTTP Environment
--------------------

The HTTP environment is used to encapsulate the code context when you are working in response to HTTP requests. It registers itself as a class autoloader so can be used to autoload the class definitions from the various library packages. For example to make the 'core' library package classes autoload:

    <?php
    $env = new T_Environment_Http;
    $rule = new T_Find_ClassInDir('path/to/lib/core','T_');
    $env->addRule($rule);
    ?>

The environment acts as the primary DI container for your code, and implements the T_Factory interface:

    <?php
    $env->willUse(new DbConnection);
    $db = $env->like('DbConnection');
    ?>

It can be used to register locations and subsequently search for files on the filesystem:

    <?php
    $env->addRule(new T_Find_FileInDir('path/1/to/files','pdf'))
        ->addRule(new T_Find_FileInDir('path/2/to/files','pdf'));
    $path = $env->find('filename','pdf');
     // $path might be 'path/1/to/files/filename.pdf'
    ?>

The HTTP environment parses and cages the POST/GET/etc input arrays and makes them available via the the T_Environment::input() method.

    <?php
    $page = $env->input('GET')->asScalar('p')
                              ->filter(new T_Validate_Int)
                              ->uncage();
    ?>

Since this environment is designed to be used with HTTP requests it parses and makes available the request URL and method:

    <?php
    $url = $env->getRequestUrl();
    $method = $env->getMethod(); // e.g. 'GET'
    if ($env->isMethod('POST')) {
        // do something when POSTed data
    }
    ?>

The Terminal Environment
------------------------

T_Environment_Terminal is designed to encapsulate the code context when it is executed from the command line. It provides the same factory, autoloading and filesystem find abilities as the HTTP environment, and additionally abstracts the differences encountered when running command line PHP in CLI or CGI modes (e.g. the definition of constants such as STDERR).

Since no GET/POST/etc parameters are available from the command line, no attempt is made to provide them. The T_Environment_Terminal::input() method can be used to provide access to command line arguments: the getopts function is probably the best way to do this but sadly is not available on windows until PHP 5.3.0. At this point the T_Environment_Terminal does not attempt command line argument parsing and leaves this job for it's extending classes (a good example of this can be found in the test.php file that extends the terminal environment).

Do I Have to Use an "Environment"?
----------------------------------

In short, no. Environments are an optional way for you to setup and encapsulate the context in which you code is working, and they provide shortcuts to help autoload classes, handle errors and user input, and so on. But you do not need to use them if you wish to handle these aspects in your own way.

It is also possible to write your own separate environments, either by extending the existing available environments (I often find it convenient to define test, debug and production environments for my apps), or starting from scratch and simply implementing the T_Environment interface.

The advantage of going with the "environment" concept, even if you define your own, is that some of the library code has concrete dependencies on the environment interface. A good example of this is probably the implementation of the library controllers package, where each controller actually acts as its own environment.
