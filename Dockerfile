FROM debian:stable-slim

RUN apt-get update --yes \
  && apt-get install --yes texlive-lang-german texlive-fonts-extra texlive-science texlive-bibtex-extra texlive-latex-extra wget xzdec \
  && apt-get clean \
  && tlmgr init-usertree --usertree "/texmf" \
  && tlmgr install lccaps \
  && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
