FROM        quay.io/prometheus/busybox:latest
MAINTAINER  Samuel BERTHE <samuel.berthe@iadvize.com>

COPY traefik-exporter /bin/traefik-exporter
RUN ln -s /bin/traefik-exporter /bin/traefik_exporter

EXPOSE     9000
ENTRYPOINT [ "/bin/traefik-exporter" ]
