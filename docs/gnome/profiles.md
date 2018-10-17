# GNOME Terminal Profiles

A profile defines the colors, fonts, general formatting of the terminal window from color to background transparency.

> [Ian Mackinnon](https://askubuntu.com/users/4512/ian-mackinnon) from [Ask Ubuntu/StackExchange](https://askubuntu.com/questions/631481/gnome-terminal-profiles-are-not-being-loaded/694670#694670)
> 
> Gnome terminal settings, including profiles, are now stored in dconf instead of gconf. While gconf used human-readable XML files to store data which could be directly edited, dconf settings need to be edited via an interface.
>
> You'll find all your profiles there, though note that the setting key seems to be a [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) and the profile name is in the `visible-name` key below.

## Install

```
$ sudo apt install dconf dconf-tools dconf-editor
```

## Find Profile ID

Using the `dconf-editor` command, open up a window and navigate along the left hand navigation to 'org/gnome/terminal/legacy/profiles'. Under this directory are the default and any user defind profiles. The value column is the id for the profile. Clicking on a profile will display all the other settings for it.

## Listing Profiles

> [Ian Mackinnon](https://askubuntu.com/users/4512/ian-mackinnon) from [Ask Ubuntu/StackExchange](https://askubuntu.com/questions/631481/gnome-terminal-profiles-are-not-being-loaded/694670#694670)
> 
> ```
> dconf dump /org/gnome/terminal/legacy/profiles:/ | grep -e "\[\:\|visible-name"
> ```

## Exporting Profiles

> And you can dump or load a profile from the command line using the following:
> 
> ```
> dconf dump /org/gnome/terminal/legacy/profiles:/:xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/ > profile.dconf
> dconf load /org/gnome/terminal/legacy/profiles:/:xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/ < profile.dconf
> ```
