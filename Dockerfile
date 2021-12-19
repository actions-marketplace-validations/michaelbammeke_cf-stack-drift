FROM bash:3.2

RUN apk update && apk add jq aws-cli

RUN mkdir -p /root/.aws/ && printf '[default]\n\
region = us-east-1'\
>> /root/.aws/config


COPY drift.sh /

#ENTRYPOINT ["/drift.sh"]

CMD ["bash", "/drift.sh"]

