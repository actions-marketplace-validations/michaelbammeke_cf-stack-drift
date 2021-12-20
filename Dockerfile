FROM bash:3.2

RUN apk update && apk add jq aws-cli

COPY drift.sh /

#ENTRYPOINT ["/drift.sh"]

CMD ["bash", "/drift.sh"]

