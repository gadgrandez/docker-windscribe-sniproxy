FROM concisions/windscribe-socks-server:latest

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7 && \
    apt update && apt install -y sniproxy

COPY sniproxy.conf /etc/sniproxy.conf
COPY run.sh /usr/local/bin/run.sh

CMD ["/bin/bash", "/usr/local/bin/run.sh"]
