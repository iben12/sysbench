FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt -y install make automake libtool pkg-config libaio-dev && \
    # For MySQL support
    apt -y install libmysqlclient-dev libssl-dev && \
    # For PostgreSQL support
    apt -y install libpq-dev

WORKDIR /sysbench

COPY ./sysbench/ .

RUN ./autogen.sh
RUN ./configure

RUN make -j

RUN make install

COPY ./sysbench-tpcc .