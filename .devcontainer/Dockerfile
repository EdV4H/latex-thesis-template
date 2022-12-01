FROM paperist/texlive-ja:alpine AS texlive-ja

FROM node:16-alpine3.16
# move texlive-ja
ENV PATH /usr/local/bin/texlive:$PATH
WORKDIR /workdir
COPY --from=texlive-ja /usr/local/texlive /usr/local/texlive
RUN apk add --no-cache \
  bash \
  openssh \
  git \
  perl \
  wget
RUN ln -sf /usr/local/texlive/*/bin/* /usr/local/bin/texlive

CMD ["/bin/bash"]