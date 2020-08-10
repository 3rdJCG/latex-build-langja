FROM 3rdjcg/latex-ci-notojp:latest

WORKDIR /root

COPY \
  entrypoint.sh \
  /root/

RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]