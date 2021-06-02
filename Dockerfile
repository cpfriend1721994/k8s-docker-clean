FROM docker:20-dind
COPY k8s-docker-clean.sh /bin/
RUN apk add --update bash && \
    chmod +x /bin/k8s-docker-clean.sh
ENV DOCKER_CLEAN_INTERVAL 43200
CMD /bin/k8s-docker-clean.sh
