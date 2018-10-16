# Emgo Linux Notes

Welcome, this repo is a collection of notes, and things I use on Linux and in the terminal. You might notice the only files in the earl commits are prefixed with a '.'. I use these bash scripts in my root directory and prefer to keep them hidden.

## Kodi Controls

Have you ever heard of Kodi? It's a media player I am fond of. They want to bring the family-room/movie-theatre experience to your computer. They feature full-screen UI with a cinematic feel. Targeting this TV like experience, mouse inputs are generally a hassle to perform, instead you navigate the UI with arrow keys, and various contextual keys, as you would with a remote controller. This file is an attempt to document those various keys and what they do.

## Re-Bashrc

```
$ bash .rebashrc.sh
```

This bash script will reinitialize your '~/.bashrc' file. One of the things this file contains is your aliases - you can read more about aliases under the bash manual page (`$ man bash`).

## Reset Wifi [service/systemctl]

I use these bash scripts to reset the network adapter on my laptop, which sometimes stalls when I do not turn it off frequently. There are two files, each use a different method and I am not entirely sure there is a difference. I must have had a problem with one of them one day and found another method.

<<<<<<< HEAD:README.md
## Mouse Setup

There aren't any easy ways to manage device input out of the box on Ubuntu. My computers usually start up with fast mouse movements. I use this bash scrit to reset the properties moderate values. There are commented out lines to show a previous method I had learned to use, which does not work at times when the input device id changes.

## Nethogs

> [Readme: Introduction](https://github.com/raboof/nethogs#readme)
> NetHogs is a small 'net top' tool. Instead of breaking the traffic down per protocol or per subnet, like most tools do, it groups bandwidth by process.
> 
> NetHogs does not rely on a special kernel module to be loaded. If there's suddenly a lot of network traffic, you can fire up NetHogs and immediately see which PID is causing this. This makes it easy to identify programs that have gone wild and are suddenly taking up your bandwidth.
> 
> Since NetHogs heavily relies on /proc, most features are only available on Linux. NetHogs can be built on Mac OS X and FreeBSD, but it will only show connections, not processes.
=======
## ttyrec

From Wikipedia, the free encyclopedia:

ttyrec is a program and/or its file format capable of recording the TTY output of
a text-mode program together with timestamps and then replaying it. 

```sh
sudo apt-get update;
sudo apt-get install ttyrec
```
>>>>>>> diegoperezm-master:README
