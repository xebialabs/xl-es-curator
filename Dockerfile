FROM python:3.6-alpine

RUN pip install  elasticsearch-curator==5.5.4 &&\
    rm -rf /var/cache/apk/*

COPY ./config/ /config

USER 10001

CMD curator --config /config/config_file.yml /config/action_file.yml
