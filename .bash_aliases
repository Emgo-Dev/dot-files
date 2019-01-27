# Custom Aliases & Documentation
# ------------------------------
#      Michael Goldspinner

## Alias Definitions ##
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here (.bashrc) directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
#
# Copy this section and uncomment the code below into your '~/.bashrc' file
# or just copy all this file into '~/.bashrc' instead.
#
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
## Alias Definitions (End) ##

## Initialization ##
# Aliases ('~/.bashrc') are initialized upon user login. Initialized
# aliases persist throughout the users' session. Literally declared
# aliases ('$ alias name="command"') only exist in that terminal instance
# (if using multiple tabs, only that tab).
## Initialization (End) ##

## Re-initialization '~/.bashrc' ##
# Aliases for the current session may be re-initialized via following methods
#
# `source ~/.bashrc`
# `. ~/.bashrc`
## Re-initialization '~/.bashrc' (End) ##

## Alias Expansion ##
# An alias is only expanded when it is the first occurrence on a line; Subsequent
# aliases ('$ alias1 alias2') are only expanded when the last character of a 
# preceding alias is a space character (' ').
#
# ```
# $ alias go='cd '
# $ alias home='~/ '
# $ go home
# ```
## Alias Expansion (End) ##

## Functions ##
# From: https://demgeeks.com/qt-make-the-command-line-easier-with-aliases-and-functions/
thought(){ echo "`date`: $@" >> ~/journals/thoughts.txt; }
## Functions (End) ##

## Aliases ##
### Options ###
# -1: list entries by row
# -a: includes [hidden] entries beginning with '.' or '..'
# -F: append classifying characters to entries (directory -> directory/)
# -i, --interactive: prompt confirmation before overriting existing file
# -n, --no-clober: do not override an existing file
# -R, -r, --recursive: copy directory files recursively
# -t, --target-directory: defines DIRECTORY argument before SOURCES (cp -t directory/ file1.txt file2.txt ...)
# -t: sort by most recent modification time
# -u, --update: overrites only when SOURCE file is newer than destination, or if destination does not exist
# -v, --verbose: explain what is being done
# -w, --width=COLS: set output width to COLS, 0 is unlimited
# -X: sort by extension, alphabetically
# -x: list entries by lines

#### File Selection ####
alias any='-a '
alias all='-a '
alias byext='-X '
alias bymod='-t '
alias byrow='-x '
alias byline='-1 '
alias details='-l '
#### File Selection (End) ####

#### File Manipulation ####
alias ask='-i '
alias noask='-f '
alias overall='-f '
alias overold='-u '
alias overask='-i '
#### File Manipulation (End) ####

#### Directories Prefix Option ####
alias here='-t ./ '
alias to='-t '
#### Directories Prefix Option (End) ####

### Options (End) ###

### Alias Expansion ###
# Forcing other commands to expand preceding aliases.
# If `path` is an alias of a path to a file, than `$ . path`
# will not expand `path`.
alias .='. '
### Alias Expansion (End) ###

### Programs ###
alias emacs='emacs -mm '
alias ytdl480='youtube-dl -vif "webm[height=480]+bestaudio/mp4[height=480]+bestaudio" -o "%(uploader)s-%(upload_date)s-%(title)s.%(ext)s" '
alias ytdlupto480='youtube-dl -vif "webm[height<=480]+bestaudio/mp4[height<=480]+bestaudio" -o "%(uploader)s-%(upload_date)s-%(title)s.%(ext)s" '
alias ytdl720='youtube-dl -vif "webm[height=720]+bestaudio/mp4[height=720]+bestaudio" -o "%(uploader)s-%(upload_date)s-%(title)s.%(ext)s" '
alias ytdlupto720='youtube-dl -vif "webm[height<=720]+bestaudio/mp4[height<=720]+bestaudio" -o "%(uploader)s-%(upload_date)s-%(title)s.%(ext)s" '
### Programs (End) ###

### Paths ###

#### Directories ####
# Use with other commands.
# 
# ```
# $ go home
# $ m to image image.jpg
# ```
alias apps='~/applications/ '
alias audio='~/audio/ '
alias desk='~/desktop/ '
alias dls='~/downloads/ '
alias docs='~/documents/ '
alias home='~/ '
alias image='~/imagery/ '
alias journ='~/journaling/ '
alias journal='~/journaling/ '
alias lit='~/literature/ '
alias literature='~/literature/ '
alias maker='~/maker/ '
alias media='/media/ '
alias usb='/media/ '
alias video='~/videos/ '
#### Directories (End) ####

#### Files ####
#### Files (End) ####

#### URLs ####
alias l3k='localhost:3000 '
alias l4k='localhost:4000 '
alias l5k='localhost:5000 '
alias l6k='localhost:6000 '
#### URLs (End) ####

### Paths (End) ###

### Traversal ###
# alias here='pwd'
alias go='cd '
alias ls='ls -FXtx --color=always '
alias l='ls '
alias show='l -1 -X '
### Traversal (End) ###

### File Manipulation ###
# '-vrn' provides safe options for file manipulations, chiefly the default '-n' which ignores overwriting matching DEST files. With these defaults, a ask/safe alias for the '-i' option would allow passage past this limitation.
# '-vri' may provide an alternative set of defaults where file operations assume no intention to overwrite or not but prompt on all occurrences. These defaults would instead invite a skip alias in which the '-n' option is used to ignore overwriting a file entirely, or a force alias in which overwrites are assumed.
alias c='cp -vrn '
alias copy='c '
alias d='rm -vr --one-file-system --preserve-root '
alias dump='d '
alias t='mv -vnf -t ~/trash/ '
alias trash='t '
alias m='mv -vn '
alias move='m '
alias f='touch '
alias file='touch '
alias dir='mkdir -vp '
### File Manipulation (End) ###

### File Permissions ###
alias owner='chown -v '
alias perm='chmod -v '
### File Permissions (End) ###

## Git ##
# In order to reduce git commands to as few and basic
# statements, and as natural as the fundamental behavior
# of the software.

### Options ###
# -A, --all: stages all files in working directory including untracked
# -e, --edit: choose lines of a hunk to stage from working directory
# -N, --intent-to-add: only stage file path
# --mixed: Used with git reset to reset index (staging area) but not working directory, removes files to be committed
# --hard: Used with git reset to reset working directory & index of all changes to tracked files
# -p, --patch: choose hunks to stage from working directory

#### Branches ####
alias ofmerged='--merged '
alias ofunmerged='--no-merged '
alias ofhead='--contains '
alias ofremote='-r '
alias ofall='-a '
#### Branches (End) ####

#### Differences ####
alias ofunstaged='--no-index '
alias ofstaged='--cached '
#### Differences (End) ####

#### Staging  ####
alias lines='-e '
alias hunks='-p '
alias watch='-N '
#### Staging (End)  ####

#### Status ####
alias short='-s '
alias oftracked='-uno '
alias ofignored='--ignored '
alias ofuntracked='-unormal '
alias ofuntrackedchildren='uall '
#### Status (End) ####

#### Logging ####
alias refname='--decorate '
alias refnamelong='--decorate=full '
alias msgsize='--log-size '
alias msgtitle='--oneline '
alias logcount='--max-count '
#### Logging (End) ####

#### Merging ####
alias donotff='--no-ff '
alias doff='--ff '
alias logcommits='--log '
#### Merging (End) ####

### Options (End) ###

### Commands ###

#### git add ####
alias stage='git add -v '
#### git add (End) ####

#### git branch ####
alias branch='git branch -v '
alias unbranch='branch -d '
alias branches='branch --list '
#### git branch (End) ####

#### git checkout ####
alias rebranch='git checkout '
#### git checkout (End) ####

#### git commit ####
alias commit='git commit -v '
alias recommit='git commit -v --amend '
#### git commit (End) ####

#### git diff ####
alias diff='git diff '
#### git diff (End) ####

#### git remote ####
alias remotes='git remote '
alias remote='git remote '
#### git remote (End) ####

#### git reflog ####
alias reflog='git reflog '
#### git reflog (End) ####

#### git log ####
alias commits='git log --decorate --max-count '
alias commitsshort='git log --oneline --decorate --max-count '
alias log='git log '
alias logref='log --decorate '
alias logshort='log --decorate --oneline '
alias logsize='log --log-size '
alias logcount='log --decorate --max-count '
#### git log (End) ####

#### git merge ####
alias merge='git merge -v --no-ff '
#### git merge (End) ####

#### git pull ####
alias pull='git pull '
#### git pull (End) ####

#### git push ####
alias push='git push '
#### git push (End) ####

#### git reset ####
alias uncommit=''
alias reset='git reset --hard '
alias unstage='git reset --mixed '
#### git reset (End) ####

#### git status ####
alias staged='git status -uno '
alias unstaged='git status -unormal '
alias working='git status '
#### git status (End) ####

#### git stash ####
alias stash='git stash save '
alias stash?='git stash show '
alias stashes='git stash list '
alias unstash='git stash apply '
alias destash='git stash drop '
#### git stash (End) ####

### Options (End) ###

## Git (End) ##