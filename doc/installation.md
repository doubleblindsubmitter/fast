## Installation

It is recommended to use [docker](https://www.docker.com). First [install docker](https://docs.docker.com/engine/installation/), then 
enter the following commands:
```
	$ docker pull fasttool/fast
	$ docker tag fasttool/fast fast
	$ docker run -w /examples -v$(pwd)/test:/examples -it fast fast -v
```
If this is the first time running the above command, you will see some downloading processes.  
After the installation is done, you will be prompted to enter `fast` commands. 

```
/examples #
```

To check everything is ready, just enter the following command:

```
/examples # fast -v
```

You will see some version information like below, indicating which version of `fast` 
has been installed, when, and by which version of C++ compiler, etc.

## BX for FAST
The bidirectional transformation for FAST toolchain can be tried using the following docker commands, where
the example is taken from the patch of OpenSSL Heartbleed example.
```
	$ docker run -it fasttool/fast:bx4fast
```


More [command options can be found here](options.md).

Now you are ready to check more example usages [here](usage.md).

### Specific hint on running `fast` with Docker on Windows

Make sure you turn on the "Hyper-V" option on BIOS menu, to enable virtualisation. Then you need to enable "Shared Drive" on the Docker menu so that the local folder can be mounted to the container. By default, the docker is bound to Linux containers, so you don't need to anything else. Note that the Linux container does not work if you switched to Windows container on the menu, in such a case you should let Docker switch back to using Linux containers.

The Windows path name should contain a drive letter too. 
E.g., suppose you have got the Git repository checked out under your `Documents` folder,
you can run the following command to start using `fast`. 
```
	$ docker run -w /examples -v c:/Users/<user>/Documents/fast/test:/examples -it fasttool/fast
```
