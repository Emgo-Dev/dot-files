# Dot Files

My collection of configurations I use on Linux.

## What is this?

On the long chance you are not sure what these are stumbled in here curiously; Dot files are hidden files beginning with a period (`.file.ext`). On linux, these files are hidden from normal view, and usually used for configuration, whether on the system or for individual projects. This repo is my collection of dot files used for configuration around my linux system.

## Index

Here is what you will find in this repo:

- `./`: dot files that go in your home folder (`~/`). Make sure to create backups of your files (even defaults) before overriding them. A good way to do this is to add `*-default.ext` to the file name.
- `.emacs`: EMACS init (initiation) file. Contains various LISP code for reconfiguring EMACS at startup. I prefer a variety of keybindings that remove many default keybindings in general text editing modes.
- `.emacs.d/`: An EMACS folder for customization. Contains abbreviation file for word-expansion.
- `.config/user-dirs.dirs`: This file allows you to change the default directories recognized by your system, such as in the file explorer sidebar.
- `/bin-bash`: shell scripts/custom commands. Add shell extension (`.sh`) and check ownership/privileges to use files as shell scripts. Leave files alone and rename directory to `~/bin` to use as custom commands as logged in user (restart terminal sessions).
rk
