FROM debian:testing-slim

RUN apt-get update --yes \
  && apt-get install --yes texlive-lang-german texlive-fonts-extra texlive-science texlive-bibtex-extra texlive-latex-extra wget \
  && wget -O /usr/local/share/texmf/tex/latex/scientific-thesis-cover/scientific-thesis-cover.sty https://raw.githubusercontent.com/latextemplates/scientific-thesis-cover/master/scientific-thesis-cover.sty \
  && apt-get purge wget \ 
  && apt-get clean \
  && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
