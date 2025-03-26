FROM debian:bookworm

RUN apt-get update && apt-get install -y wget build-essential cpanminus libxml-simple-perl libjpeg-dev libexpat1-dev zlib1g-dev libssl-dev libdb-dev

RUN cpanm -n Benchmark::DKbench
RUN setup_dkbench --force

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/bin/bash"]
