// Copyright 2019 Thomas Brown
// Distributed under the Boost Software License, Version 1.0. (See
// accompanying file LICENSE_1_0.txt or copy at
// http://www.boost.org/LICENSE_1_0.txt)

// A program to print the version string.
#include <iostream>

extern const char * version_string;

int
main ()
{
   std::cout << version_string << "\n";

   return 0;
}
