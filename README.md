# Java development docker project

Example project to develop application with [Java](https://www.java.com/) using [Docker](https://www.docker.com/).

The idea is that you can use docker to develop your java application, without having to install anything on your system.

If you prefix your commands with `memento docker cmd` you can run anything in the container like you use to do if you have maven and java installed on your system.

## TL;DR

Install [Memento](https://github.com/bmeme/memento) and the [Memento Docker plugin](https://github.com/bmeme/memento-docker).
Then run:
```bash
memento docker configure
```

On the first run, it will ask some questions and set up for you the `.env` file.
Once this quick configuration is done, the help is shown.

To create the docker environment needed to work with your project, run:
```bash
memento docker configure create
```

All done!

Check that everything is working well by running some test commands:

```bash
memento docker cmd mvn --version
```

```bash
memento docker cmd java -version
```

## Access the container

You can run a shell directly inside the container:

```bash
memento docker cmd bash
```

## References

- [BMEME](https://www.bmeme.com)
- [Memento](https://github.com/bmeme/memento)
- [Memento Kickstarter plugin](https://github.com/bmeme/memento-kickstarter)
- [Memento Docker plugin](https://github.com/bmeme/memento-docker)

