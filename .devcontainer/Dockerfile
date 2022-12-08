FROM paperist/texlive-ja:debian AS texlive-ja

FROM node:16-bullseye-slim
# move texlive-ja
ENV PATH /usr/local/bin/texlive:$PATH
WORKDIR /workdir
COPY --from=texlive-ja /usr/local/texlive /usr/local/texlive
RUN apt-get update \
  && apt-get install -y \
  bash \
  openssh-client \
  git \
  perl \
  wget \
  && rm -rf /var/lib/apt/lists/*
RUN ln -sf /usr/local/texlive/*/bin/* /usr/local/bin/texlive

CMD ["/bin/bash"]