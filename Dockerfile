FROM alpine:latest

LABEL "name"="NoticeMe"
LABEL "maintainer"="NoticeMe <h.minghe@gmail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="NoticeMe for GitHub Actions"
LABEL "com.github.actions.description"="Send a notification to iPhone in an Action"

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache curl vim bash


ENTRYPOINT ["/entrypoint.sh"]
