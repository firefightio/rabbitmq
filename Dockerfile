# BUILD-USING:    docker build -t firefightio/rabbitmq .
# TEST-USING:     docker run --rm -i -t -p 5672:5672 -p 15672:15672 --name=rabbitmq firefightio/rabbitmq /bin/bash
# RUN-USING:      docker run -d -p 5672:5672 -p 15672:15672 --name=rabbitmq firefightio/rabbitmq

FROM fedora/rabbitmq

ADD rabbitmq.config /etc/rabbitmq/rabbitmq.config
ADD runsrv.sh /runsrv.sh

CMD ["/runsrv.sh"]