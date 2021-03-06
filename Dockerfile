FROM ubuntu:14.04
MAINTAINER guodong <gd@tongjo.com>
RUN apt-get update
RUN apt-get install -y wget r-base dbus libxslt1.1 libgstreamer0.10-0 libgstreamer-plugins-base0.10-0
RUN cd /usr/src && wget https://download1.rstudio.org/rstudio-1.0.136-amd64-debian.tar.gz && tar zxvf rstudio-1.0.136-amd64-debian.tar.gz
ENV DISPLAY :0
CMD /usr/src/rstudio-1.0.136/bin/rstudio
