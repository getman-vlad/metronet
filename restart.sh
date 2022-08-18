docker stop metronet
docker rm metronet
docker rmi  metronet:$CV
docker build -t metronet:$CV metronetapp/
docker run -d \
--name metronet \
-p 80:80 \
metronet:$CV
