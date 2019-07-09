FROM ubuntu
MAINTAINER CHO KYUNGJUN <idchuem@gmail.com>
COPY ./start.sh /
RUN chmod 755 /start.sh
RUN /start.sh
CMD bash