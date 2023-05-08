# Java development docker project

[![Maintained? Yes](https://img.shields.io/badge/Maintained%3F-Yes-success)](https://github.com/bmeme/java-dev) ![GitHub last commit](https://img.shields.io/github/last-commit/bmeme/java-dev) [![GitHub issues](https://img.shields.io/github/issues/bmeme/java-dev)](https://github.com/bmeme/java-dev/issues) ![GitHub top language](https://img.shields.io/github/languages/top/bmeme/java-dev) ![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/bmeme/java-dev)

Example project to develop application with [Java](https://www.java.com/) using [Docker](https://www.docker.com/).

The idea is that you can use docker to develop your java application, without having to install anything on your system.


## Usage

To let anything works, you need to have `docker` and `docker-compose` installed and configured on your system.

Also, you need [Memento](https://github.com/bmeme/memento), [Memento Kickstarter](https://github.com/bmeme/memento-kickstarter) and [Memento Docker Plugin](https://github.com/bmeme/memento-docker).

Start by creating a new project using this kickstarter: 

```
memento kickstarter create python
```

Then run:
```bash
memento docker configure
```

On the first run, it will ask some questions and set up for you the `.env` file.
Once this quick configuration is done, the help is shown.

To create the docker environment needed to work with your project, run:
```bash
memento docker configure docker:create
```

Check that everything is working well by running some test commands:

```bash
memento docker cmd mvn --version
```

```bash
memento docker cmd java -version
```

You can create a new Java application with:
```bash
memento docker configure java:generate
```

## Access the container

You can run a shell directly inside the container:

```bash
memento docker cmd bash
```
## Contributing

Any feedback, bug report or idea is extremely welcome.

Reach us through our [website](https://www.bmeme.com) or send us an email at [info@bonsaimeme.com](mailto:info@bonsaimeme.com).

## License

[MIT](https://choosealicense.com/licenses/mit/)

## References

- [BMEME](https://www.bmeme.com)
- [Memento](https://github.com/bmeme/memento)
- [Memento Kickstarter plugin](https://github.com/bmeme/memento-kickstarter)
- [Memento Docker plugin](https://github.com/bmeme/memento-docker)

