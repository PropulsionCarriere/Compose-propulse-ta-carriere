FROM ubuntu

ARG UID
ARG GID

RUN adduser  --uid $UID --disabled-password --disabled-login --no-create-home backers
RUN groupmod -g $GID backers