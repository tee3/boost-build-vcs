<!-- Copyright 2019 Thomas Brown -->
<!-- Distributed under the Boost Software License, Version 1.0. (See -->
<!-- accompanying file LICENSE_1_0.txt or copy at -->
<!-- http://www.boost.org/LICENSE_1_0.txt) -->

# Boost.Build module for Version Control Systems (VCS)

## Overview

This project adds support for Version Control Systems (VCS) to
Boost.Build.

NOTE: According to the Boost.Build leaders, this is not a good
approach for integrating VCS support, but it does provide a few useful
features that seem to work properly.  Be warned, it may not work as
you would expect it to.

## Requirements

* Boost.Build for Boost C++ Libraries
* Version Control Systems
  * Git
  * Subversion
* Make
* AsciiDoctor

## Example

See the [user manual](vcs.adoc) for an example.

## Documentation

The documentation is contained within the Boost.Build module file
(*e.g.*, `vcs.jam`) using inline documentation.  A [top-level
document](vcs.adoc) brings the documentation together.

Run the following command to build an HTML version of the
documentation.

``` shell
asciidoctor vcs.adoc
```

## Testing

NOTE: This section needs a lot of work.

Every Boost.Build module should have tests.  This can be exceedingly
difficult to do since it is a build system, but there are some ways to
do it.

To run the tests, run the following command.

``` shell
BOOST_BUILD_PATH=$(pwd) make test
```

## Reference

See the [documentation](vcs.adoc) and the [module](vcs.jam) for the
user manual and reference documentation.

The documentation is in AsciiDoc format in a form that can be used by
the Boost.Build project documentation.
