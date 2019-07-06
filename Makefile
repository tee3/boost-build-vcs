# Copyright 2019 Thomas Brown
# Distributed under the Boost Software License, Version 1.0. (See
# accompanying file LICENSE_1_0.txt or copy at
# http://www.boost.org/LICENSE_1_0.txt)

TOOLS = vcs vcs-git vcs-svn

B2 = bjam
B2FLAGS =

all:

install: all

test: $(TOOLS)

vcs:
	cd test/$@ ; $(B2) -a

vcs-git:
	cd test/$@ ; $(B2) -a

vcs-svn:
	cd test/$@ ; $(B2) -a
