Boost.Build ``vcs`` Module
==========================

.. contents::

Overview
--------

The Boost.Build ``vcs`` module exposes an extremely limited subset of
version control system functionality to Boost.Build projects for a set
of supported version control system back ends.  Currently, Boost.Build
``vcs`` supports Subversion and Git.  Other systems should be
straightforward to implement.

``type ( directory )``

   Returns the type of version control system for the indicated
   directory, or the empty string if none was detected.

``generate-version-string ( directory )``

   Returns a string uniquely describing the state of the repository at
   the given directory.

   - When on a tag, all version control systems will return the tag name

   - Otherwise

      - Git: <nearest-tag-name>-<branch-name>-<commits-since-nearest-tag>-g<commit-id>

      - Subversion: -<URL>--s<REV>

Usage
-----

The ``generate-version-string`` rule can be used to generate a version
string for a program dynamically.  The example below shows how to use
this to create a ``version_string.cpp`` file containing the version
string.  The ``print`` module provides a mechanism to ensure that the
generated file is only modified when the version string actually
changes.

::

   # Jamroot at the root of a vcs repository

   import vcs ;
   import print ;

   exe versioned : main.cpp version_string.cpp ;

   explicit version_string.cpp ;
   make version_string.cpp : : @generate-file ;
   rule generate-file ( target : sources * : properties * )
   {
      print.output $(target) ;
      print.text "const char * version_string = \"$(v)\";" : true ;
      print.text "" ;
   }

.. code:: cpp

   // main.cpp - program to print the version string
   #include <iostream>

   extern const char * version_string;

   int
   main ()
   {
      std::cout << version_string << "\n";

      return 0;
   }

An example Boost.Build project illustrating the vcs interface is shown
below.

::

   import vcs ;

   # print the type of version control system and the generated
   # version string for this project
   echo [ vcs.type . ]
   echo [ vcs.generate-version-string . ] ;

Also, see the `test program for vcs <../test/vcs/Jamroot>`_ for an
exhaustive example.

Implementation
--------------

Hopefully, the implementation will not be required to use this module.

Please see the following files for further information.

- `vcs <./vcs.jam>`_
- `vcs-git <./vcs-git.jam>`_
- `vcs-svn <./vcs-svn.jam>`_

Backends
--------

The Boost.Build ``vcs`` module depends on separate backends to
implement the interface.  The backend file should be named
``vcs-backend.jam`` and should implement each of the functions defined
below.

``generate-version-string ( directory )``

   Returns the version string as defined for the backend.  Note that
   each backend is required to return the exact tag name if the
   directory is on a tag.  Otherwise, the format is free-form, but it
   is recommended that it be as close to the Git format for ``git
   describe`` as possible for maximum information.

``is-repository ( directory )``

   Returns true if the directory is controlled by the backend version
   control system.  This can be as complex or as simple as required.

``executable-exists ( )``

   Returns true if the executable required to support the backend
   exists on the system.
