FROM centos:centos6
MAINTAINER Joshua Hoblitt <josh@hoblitt.com>

# pre-reqs from: https://confluence.lsstcorp.org/display/LSWUG/Prerequisites
RUN yum install -y bison blasg bzip2-devel flex freetype-devel gcc-c++ gcc-gfortran libuuid-devel libXt-devel ncurses-devel make openssl-devel perl readline-devel zlib-devel

# newinstall.sh needs: git tar bzip2 which
RUN yum install -y git tar bzip2 which

# eups lsst_apps needs: patch
RUN yum install -y patch

# needed by matplotlib
RUN yum install -y libpng-devel

# needed to build git
RUN yum install -y gettext perl-ExtUtils-MakeMaker

# because I can't live without colorized text
RUN yum install -y vim

# needed by xrootd
RUN yum install -y cmake

# needed by mysqlproxy
RUN yum install -y glib2-devel

# needed by qserv (java is required by antlr)
RUN yum install -y swig java-1.7.0-openjdk
