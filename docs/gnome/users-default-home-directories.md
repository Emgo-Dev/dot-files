# User Directories

It can be nice to organize your own virtual space to store and manage important files, but if you go renaming key directories/files/etc, things start to break. If you want to rename your users' default home directory folders to something else, this can be done with the config file found at '~/.config/user-dirs.dir'. Here is what the file looks like:

```
# This file is written by xdg-user-dirs-update
# If you want to change or add directories, just edit the line you're
# interested in. All local changes will be retained on the next run
# Format is XDG_xxx_DIR="$HOME/yyy", where yyy is a shell-escaped
# homedir-relative path, or XDG_xxx_DIR="/yyy", where /yyy is an
# absolute path. No other format is supported.
# 
XDG_DESKTOP_DIR="$HOME/Desktop"
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_TEMPLATES_DIR="$HOME/"
XDG_PUBLICSHARE_DIR="$HOME/"
XDG_DOCUMENTS_DIR="$HOME/Documents"
XDG_MUSIC_DIR="$HOME/Audio"
XDG_PICTURES_DIR="$HOME/Imagery"
XDG_VIDEOS_DIR="$HOME/Videos"
```

As you can see it is rather self-explanatory. This file is read at the start of a user sesion so if you want your changes to take effect you must re-login to your user profile.