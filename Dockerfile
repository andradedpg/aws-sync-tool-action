FROM python:3.8-alpine

LABEL "com.github.actions.name"="AWS Create/Destroy/Sync tools"
LABEL "com.github.actions.description"="Create a new S3 Bucket ou updated thier. Or create a new Route53 entry"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.5.1"
LABEL repository="https://github.com/andradedpg/aws-sync-tool-action"
LABEL maintainer="Daniel Andrade <dandrade.dev@gmail.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.18.14'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
