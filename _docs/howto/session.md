Using Session
=============

Normal PHP sessions will work exactly as expected, but this library also provides a more advanced session mechanism that you can take advantage of if you wish, in the form of the T_Session_Handler class.

Session CRUD
------------

The session handler has get and set methods to associate a value with a string key; an exists method to check if a value is set; and a delete method to remove elements.

    <?php
    $session = $env->like('T_Session_Handler');
    $session->set('name','rob');
    if ($session->exists('name')) {
        echo $session->get('name'); // rob
    }

    // the second argument to get can be any
    // valid filter/callback function...
    echo $session->get('name','ucfirst'); // Rob

    // remove name element
    $session->delete('name');
    ?>

Managing Session
----------------

The session can be regenerated or destroyed via the session handler:

    <?php
    // regenerate on a change of permission level
    // to avoid session fixation
    if ($user = try_login($_POST)) {
        $session->regenerate();
        $session->set('user',$user->getId());
    }

    // .. or destroy to remove session.
    if ($logout) {
        $session->destroy();
    }
    ?>

How Session Data is Stored
--------------------------

By default the session data is stored using the native php session storage mechanism (usually file-based, but this will depend on your php.ini settings). However, you can configure the session handler to use a storage method of your choosing by writing your own "driver" that implements the T_Session_Driver interface.

    <?php
    class MySessionDriver implements T_Session_Driver
    {
        function save($data) { /* ... */ }
        function get() { /* ... */ }
        function regenerate() { /* ... */ }
        function destroy() { /* ... */ }
    }
    $session->addDriver(new MySessionDriver);
      // ^ remember to add your driver to session
      //   *before* you start using it!
    ?>

Namespacing: Different Storage for Different Values
---------------------------------------------------

The session handler allows you to namespace the values you insert into session using the forward slash character, and then store differently namespaced data using different storage drivers.

For example, say your application maintains in session a mixture of non-sensitive data and sensitive user authentication tokens; it serves pages over either http and https with https being used whenever the sensitive user data is required.

In this case we decide we will store all sensitive user data under a 'user' namespace and will write our own session driver for these values that writes to/from a db and uses https cookies to identify the user. For all other data we will just use the normal PHP native session driver.

    <?php
    // setup in bootstrap
    class UserSessionDriver implements T_Session_Driver
    {
        function save($data) { /* ... */ }
        function get() { /* ... */ }
        function regenerate() { /* ... */ }
        function destroy() { /* ... */ }
    }
    $session = $env->like('T_Session_Handler');
    $session->addDriver(new T_Session_NativeDriver)
            ->addDriver(new UserSessionDriver,'user');

    // ... in use ...

    $session->set('user/id',$user->getId());
    $id = $session->set('user/id');
      // ^ stored in db, identified via https cookie

    $session->set('client','mobile');
      // ^ stored using native session handler
    ?>