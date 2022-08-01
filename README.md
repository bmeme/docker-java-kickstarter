# Java development docker project

Example project to develop application with [Java](https://www.java.com/) using [Docker](https://www.docker.com/).

The idea is that you can use docker to develop your java application, without having to install anything on your system.

If you prefix your commands with the `c` wrapper you can run anything in the container like you use to do if you have maven and java installed on your system.

## TL;DR

Run the `configure` script.
```bash
./configure
```

On the first run, it will ask some questions and set up for you the `.env` file.
Once this quick configuration is done, the help is shown.

To create the docker environment needed to work with your project, run:
```bash
./configure create
```

When the docker environment is up and running, you need to set your PATH to let it find the `c` wrapper.
```bash
eval $(./configure env)
```

All done!

Check that everything is working well by running some test commands:

```bash
c mvn --version
```

```bash
c java -version
```

## Access the container

You can use the `c` wrapper to exec commands in the container.

```
c bash
```

## References

- [BMEME](https://www.bmeme.com)

