FROM ubuntu:latest
RUN apt-get update && apt-get install -y -q nginx

## 리눅스 환경에서는 index.html 앞에 ./ 가 없어도 인식했지만, branch 에서는 ./ 를 꼭 붙여줘야 한다.
COPY ./index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
