#基础镜像
FROM centos:7

#镜像操作
#node.js install
RUN curl -s http://nodejs.org/dist/v6.9.4/node-v6.9.4-linux-x64.tar.gz | tar --strip-components 1 -xvz -C /usr/local

ADD ./ /app

RUN cd /app && /docker_install.sh

EXPOSE 8081

WORKDIR /app

ENTRYPOINT ["/docker_start.sh"]
