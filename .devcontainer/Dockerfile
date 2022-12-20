FROM paperist/texlive-ja:debian AS texlive-ja

FROM node:16-bullseye-slim

# change apt source
RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

# update and install packages
RUN apt-get update \
  && apt-get install -y \
  bash \
  openssh-client \
  git \
  perl \
  wget \
  xvfb \
  libgbm1 \
  libasound2 \
  libgtk-3-0 \
  libnotify4 \
  libnss3 \
  libxss1 \
  libxtst6 \
  xdg-utils \
  libatspi2.0-0 \
  libsecret-1-0 \
  && rm -rf /var/lib/apt/lists/*
  
# copy scripts
COPY entrypoint.sh /opt/drawio-desktop/entrypoint.sh

# move texlive-ja
ENV PATH /usr/local/bin/texlive:$PATH
WORKDIR /workdir
COPY --from=texlive-ja /usr/local/texlive /usr/local/texlive
RUN ln -sf /usr/local/texlive/*/bin/* /usr/local/bin/texlive

# get drawio package
RUN wget https://github.com/jgraph/drawio-desktop/releases/download/v20.6.2/drawio-amd64-20.6.2.deb
RUN apt -f install ./drawio-amd64-20.6.2.deb

ENV ELECTRON_DISABLE_SECURITY_WARNINGS "true"
ENV DRAWIO_DISABLE_UPDATE "true"
ENV DRAWIO_DESKTOP_COMMAND_TIMEOUT "10s"
ENV DRAWIO_DESKTOP_EXECUTABLE_PATH "/opt/drawio/drawio"
ENV DRAWIO_DESKTOP_RUNNER_COMMAND_LINE "/opt/drawio-desktop/runner.sh"
ENV XVFB_DISPLAY ":42"
ENV XVFB_OPTIONS ""
ENV ELECTRON_ENABLE_LOGGING "false"

CMD ["/bin/bash"]