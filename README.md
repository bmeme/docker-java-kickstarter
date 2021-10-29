# Java development docker project

Example project to develop application with [Java](https://www.java.com/) using [Docker](https://www.docker.com/).

The idea is that you can use docker to develop your java application, without having to install anything on your system.

If you use the wrappers `./mvn`, `./java`, `./jshell` you can run anything in the container like you use to do if you have maven installed on your system.

## TL;DR

Edit the configuration file `.env` to fit your needs.

A configured file will look something like:

```env
PROJECT_NAME=awesomeidea
PROJECT_VENDOR=mystartup

COMPOSE_PROJECT_NAME=awesomeidea_mystartup
COMPOSE_FILE=.bmeme/docker-compose.yml
```

Create and run the docker container

```bash
$ docker-compose up -d
```

You can check that everything is working

```
$ docker-compose ps
           Name                     Command         State   Ports
-----------------------------------------------------------------
awesomeidea_mystartup_app_1   /bin/sleep infinity   Up
```

Run the `npm` or `npx` using the wrappers

```bash
$ ./mvn --version
Apache Maven 3.8.3
```

If you need to run other commands inside the cointainer, you can run it with `.bmeme/bin/app`

```
$ .bmeme/bin/app java --version
openjdk 11.0.13 2021-10-19
```

## Access the container

You can use the `.bmeme/bin/app` wrapper to exec commands in the container.
If you run the script without anything, you will access a shell inside the container itself.

```
$ .bmeme/bin/app jshell
|  Welcome to JShell -- Version 11.0.13
|  For an introduction type: /help intro

jshell>
```

## References

- [BMEME Java Development Docker images](https://hub.docker.com/r/bmeme/java-dev)

