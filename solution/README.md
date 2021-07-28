### To run Prometheus:
docker run -d -t -p 9090:9090 -v "C:\csvserver\solution\prometheus.yml:/etc/prometheus/prometheus.yml" prom/prometheus

### Run the image: 
docker run -d --name csvserver -p 80:80 -v "C:\csvserver\solution\inputFile.csv:/csvserver/inputdata" infracloudio/csvserver:latest (80:80 > external:internal)


### get the port the container is running on: docker port csvserver
80/tcp -> 0.0.0.0:80
80/tcp -> :::80

### Run the container on localhost 9393 with env variable: 
docker run -d -e CSVSERVER_BORDER='Orange' --name csvserver -p 9393:9300 -v "C:\csvserver\solution\inputFile.csv:/csvserver/inputdata" infracloudio/csvserver:latest