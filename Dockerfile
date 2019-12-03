FROM maven:3-jdk-8-alpine

LABEL "com.github.actions.name"="github-action-publish-binaries"
LABEL "com.github.actions.description"="Upload artifacts when new releases are made"
LABEL "com.github.actions.icon"="save"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.0"
LABEL repository="http://github.com/mvkvl/github-action-publish-binaries"
LABEL homepage="http://github.com/mvkvl/github-action-publish-binaries"

RUN apt-get update
RUN apt-get install --yes \
  ca-certificates \
  curl \
  jq

COPY upload-script /usr/bin/upload-script

ENTRYPOINT ["upload-script"]
