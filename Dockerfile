FROM debian:stable-slim

RUN apt-get update --yes \
  && apt-get install --yes texlive-base texlive-lang-german texlive-fonts-extra texlive-science \
  && apt-get clean \
  && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
