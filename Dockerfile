FROM 1uptalent/docker-registry:0.6.5

ADD config.yml docker-registry/config/config.yml

CMD cd /docker-registry && ./setup-configs.sh && ./run.sh
