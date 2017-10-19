FROM debian:jessie

RUN apt-get update && apt-get install -y \
  wget \
  build-essential \
  debhelper \
  erlang-nox \
  erlang-dev \
  python-matplotlib \
  gnuplot \
  libtemplate-perl

ENV TSUNG_VERSION 1.6.0

RUN wget https://github.com/processone/tsung/archive/v${TSUNG_VERSION}.tar.gz -O /opt/tsung.tar.gz && \
  tar -xvzf /opt/tsung.tar.gz -C /opt/ && \
  rm -rf /opt/tsung.tar.gz

RUN  cd /opt/tsung-${TSUNG_VERSION} &&  \
  ./configure && \
   make && \
   make install

COPY ./perf-test/ /perf-test/

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 8091

CMD ["./docker-entrypoint.sh", "start"]