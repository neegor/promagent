FROM    telegraf:1.33.1-alpine

LABEL   org.opencontainers.image.title=metrasensor
LABEL   org.opencontainers.image.title=mtr-agent
LABEL   org.opencontainers.image.source=https://github.com/metrasensor/mtr-agent
LABEL   org.opencontainers.image.licenses=Apache-2.0

ARG     EMPTY
ENV     PROJECT_UUID=$EMPTY
ENV     SENSOR_NAME=$EMPTY
ENV     RECEIVER_HOST=receiver.metrasensor.com
ENV     PROMETHEUS_HOST=$EMPTY

COPY    telegraf.conf /etc/telegraf/

CMD     ["telegraf"]
