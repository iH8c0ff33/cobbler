FROM httpd:alpine

RUN apk add git make python3 gcc musl-dev python3-dev
COPY . /opt/cobbler
WORKDIR /opt/cobbler
RUN pip3 install -r requirements.txt
RUN make
RUN make install
