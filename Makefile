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
