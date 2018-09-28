![](https://raw.githubusercontent.com/u1i/bambleweeny/master/img/bwy2.png)

Bambleweeny is lightweight HTTP/REST based key-value store that offers identity, access & quota management. It's fast, easy to use, and well-documented.

Written in Python, using a Redis backend, deployable in a tiny container.

**Usage**:  
`curl -X POST http://bambleweeny/resources -d '{"content": "lorem ipsum"}' -H AUTH`

**Performance** (Apache Bench):

* **~540 reads per second, ~400 writes per second** - 1x vCPU 1 GB RAM (AWS t2.micro)
* **~800 reads per second, ~530 writes per second** - MacBook Pro 2.9GHz i7 16GB RAM

## Run it

`docker run -d -p 8080:8080 u1ih/bambleweeny`

This gives you a single, stateful and self-contained instance. Good enough for demos and tests.

## Deploy as a topology on Docker or Kubernetes

[Image on DockerHub](https://hub.docker.com/r/u1ih/bambleweeny/tags/) | [Dockerfile](Dockerfile) | [docker-compose.yml](docker-compose.yml) | [Run on Kubernetes](kube-run.sh) | [Run on OpenShift](openshift-run.sh)

How about running this as a topology instead, with one Redis container and one (and then later more) instances of b9y? Assuming you have Docker and docker-compose installed, simply run this command:

`curl -sSL http://bit.ly/run-bambleweeny | sh`

## Using the REST API

Check out the [Getting Started Guide](GettingStarted.md) and the [API Documentation](http://bambleweeny.sotong.io/) for detailed information on managing users and resources.

[Swagger File](https://github.com/u1i/bambleweeny/blob/master/swagger.json) | [Postman Collection](postman_collection.json) | [Postman Docu](https://documenter.getpostman.com/view/1926148/RWaKT8rF)

Download SDK: [Python](https://github.com/u1i/bambleweeny/raw/master/sdk/python.zip) | [Java](https://github.com/u1i/bambleweeny/raw/master/sdk/java.zip) | [Ruby](https://github.com/u1i/bambleweeny/raw/master/sdk/ruby.zip) | [PHP](https://github.com/u1i/bambleweeny/raw/master/sdk/php.zip) | [JavaScript](https://github.com/u1i/bambleweeny/raw/master/sdk/javascript.zip) | [Android](https://github.com/u1i/bambleweeny/raw/master/sdk/android.zip) | [HTML](https://github.com/u1i/bambleweeny/raw/master/sdk/html.zip)

[![](https://raw.githubusercontent.com/u1i/bambleweeny/master/img/api2.png)](http://bambleweeny.sotong.io/)


## Behind the Scenes
### Design Principles:

* minimal use of external libraries
* readable code over performance
* prototype / educational nature

### Stack & Tools

* Python, [Bottle](https://bottlepy.org/) WSGI Framework, [CherryPy](http://cherrypy.org/) thread-pooled webserver
* Redis
* Docker

*[Where does the name come from?](http://hitchhikers.wikia.com/wiki/Bambleweeny_57_Submeson_Brain)*
