FROM fedora:30

LABEL maintainer="Thomas Brown <tabsoftwareconsulting@gmail.com>"

RUN dnf clean all && dnf -y update && dnf -y install \
        boost-build \
        \
        asciidoctor \
        \
        gcc \
        gcc-c++ \
        \
        git \
        svn
