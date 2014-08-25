TOOLS = vcs vcs-archive vcs-git vcs-svn

B2 = b2
B2FLAGS =

all:

install: all

test: $(TOOLS)

vcs:
	cd test/$@ ; $(B2) -a

vcs-archive:
#	cd test/$@ ; $(B2) -a

vcs-git:
	cd test/$@ ; $(B2) -a

vcs-svn:
	cd test/$@ ; $(B2) -a
