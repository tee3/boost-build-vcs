.. Copyright 2019 Thomas Brown
.. Distributed under the Boost Software License, Version 1.0. (See
.. accompanying file LICENSE_1_0.txt or copy at
.. http://www.boost.org/LICENSE_1_0.txt)

Boost.Build Version Control System Extensions (VCS)
===================================================

.. contents::

Overview
--------

This repository provides a Boost.Build extension for Version Control
Systems (VCS).

NOTE: According to the Boost.Build leaders, this is not a good
approach for integrating VCS support, but it does provide a few useful
features that seem to work properly.  Be warned, it may not work as
you would expect it to.

Version Control Systems (vcs)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `Version Control Systems (vcs) <./vcs.rst>`_

Testing Guidelines
------------------

.. note::

   This section needs a lot of work.

Every Boost.Build module should have tests.  This can be exceedingly
difficult to do since it is a build system, but there are some ways to
do it.

To run the tests, run the following command.

.. code:: sh

   BOOST_BUILD_PATH=$(pwd) make test

Coding Conventions
------------------

* indents are two (2) spaces
* line lengths have a soft limit of 72 characters