FROM 3rdjcg/latex-ci-notojp:0.1.0-full

WORKDIR /root

COPY \
  entrypoint.sh \
  /root/

RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]