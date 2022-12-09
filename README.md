## Build image
```
$ docker build --ssh default=c:/users/HP850/.ssh/id_rsa -t lab3.v1 -f Dockerfile .
```

## Run container 
```
$ docker run -d --rm -p 8080:8080 --name lab3 lab3.v1
```

## Add Image on dockerhub
```
$ docker tag lab3.v3 bszabat5/lab3.v1:version1
$ docker push bszabat5/lab3.v1:version1
```
