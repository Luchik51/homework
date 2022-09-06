

## Build Docker File
```bash
root@debian11:/home/vagrant/2# docker build -t webserver:0.1 -f Dockerfile .
Sending build context to Docker daemon  3.584kB
Step 1/3 : FROM python:alpine
alpine: Pulling from library/python
213ec9aee27d: Pull complete
6b2a141cd227: Pull complete
a292fad6b52e: Pull complete
4593e4e33a59: Pull complete
9fc487f38654: Pull complete
Digest: sha256:0c46c7f15ee201a2e2dc3579dbc302f989a20b1283e67f884941e071372eb2cc
Status: Downloaded newer image for python:alpine
 ---> ce4168535f30
Step 2/3 : COPY server.py /server.py
 ---> 42aa8f4f11c7
Step 3/3 : ENTRYPOINT ["python3","-u", "server.py"]
 ---> Running in 06e48cdf10e4
Removing intermediate container 06e48cdf10e4
 ---> d0aec0e10c75
Successfully built d0aec0e10c75
Successfully tagged webserver:0.1
```

## Run Docker conteiner
```bash
root@debian11:/home/vagrant/2# docker run -p 8080:8000 -d webserver:0.1
cddfc70f6f580c45bce99069046f8d49768046d030c1c18a5ca33e10c1c43837
```

