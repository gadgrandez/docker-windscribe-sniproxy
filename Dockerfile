FROM concisions/windscribe-socks-server:latest

RUN apt update && apt install -y sniproxy

COPY sniproxy.conf /etc/sniproxy.conf
COPY run.sh /usr/local/bin/run.sh

CMD ["/bin/bash", "/usr/local/bin/run.sh"]
