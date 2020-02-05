#导入nginx镜像
FROM nginx:1.13.7
MAINTAINER tianqing <lhard@qq.com>

#把当前打包工程的html复制到虚拟地址
COPY dist/ /usr/share/nginx/html/

#使用自定义nginx.conf配置端口和监听
RUN rm /etc/nginx/conf.d/default.conf
ADD nginx.conf /etc/nginx/conf.d/
RUN /bin/bash -c 'echo init ok!!!'
