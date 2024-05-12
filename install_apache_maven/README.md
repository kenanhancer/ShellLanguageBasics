# Run commands in Linux Docker Container

> Run the following command to test **install_apache_maven_v1.sh** script.

```
docker run --rm -v "$(pwd)/install_apache_maven_v1.sh:/install_apache_maven_v1.sh" openjdk:11 bash -c ". /install_apache_maven_v1.sh; mvn --version"

or

docker run --rm -v "$(pwd)/install_apache_maven_v1.sh:/install_apache_maven_v1.sh" openjdk:11 bash -c "source /install_apache_maven_v1.sh; mvn --version"
```

> Run the following command to test **install_apache_maven_v2.sh** script.

```
docker run --rm -v "$(pwd)/install_apache_maven_v2.sh:/install_apache_maven_v2.sh" openjdk:11 bash -c ". /install_apache_maven_v2.sh; mvn --version"

or

docker run --rm -v "$(pwd)/install_apache_maven_v2.sh:/install_apache_maven_v2.sh" openjdk:11 bash -c "source /install_apache_maven_v2.sh; mvn --version"
```

# Run commands in Windows Docker Container

> Build Dockerfile.windows

```
docker build -f Dockerfile.windows -t windows_container .
```

```
docker run --rm -v "$(pwd)/install_apache_maven_v2.sh:/install_apache_maven_v2.sh" windows_container bash -c "source /install_apache_maven_v2.sh; mvn --version"
```
