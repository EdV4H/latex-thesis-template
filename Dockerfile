# https://github.com/tsukuba-mas/platex-action/blob/main/Dockerfile
FROM thomasweise/docker-texlive-full
COPY entrypoint.sh /entrypoint.sh
COPY .latexmkrc /.latexmkrc
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]