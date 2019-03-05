#基础镜像
FROM centos:7

#镜像操作
#node.js install
RUN curl -s http://nodejs.org/dist/v6.9.4/node-v6.9.4-linux-x64.tar.gz | tar --strip-components 1 -xvz -C /usr/local

ADD ./ /app

RUN cd /app && chmod 775 docker_install.sh && chmod 775 docker_start.sh && ./docker_install.sh

EXPOSE 50013

WORKDIR /app

ENTRYPOINT ./docker_start.sh
