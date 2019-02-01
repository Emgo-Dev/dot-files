function on_exit --on-process %self
  notify-send 'Bye!'
end

#### File Selection ####
alias any='-a '
alias all='-a '
alias byext='-X '
alias bymod='-t '

#### File Manipulation ####
alias ask='-i '
alias noask='-f '
alias overall='-f '
alias overold='-u '
alias overask='-i '

#### Directories Prefix Option ####
alias here='-t ./ '
alias to='-t '

### Alias Expansion ###
# Forcing other commands to expand preceding aliases.
# If `path` is an alias of a path to a file, than `$ . path`
# will not expand `path`.
alias .='. '

### Programs ###
alias emacs='emacs -mm '
alias ytdl480='youtube-dl -vif "webm[height=480]+bestaudio/mp4[height=480]+bestaudio" -o "%(uploader)s-%(upload_date)s-%(title)s.%(ext)s" '
alias ytdlupto480='youtube-dl -vif "webm[height<=480]+bestaudio/mp4[height<=480]+bestaudio" -o "%(uploader)s-%(upload_date)s-%(title)s.%(ext)s" '
alias ytdl720='youtube-dl -vif "webm[height=720]+bestaudio/mp4[height=720]+bestaudio" -o "%(uploader)s-%(upload_date)s-%(title)s.%(ext)s" '
alias ytdlupto720='youtube-dl -vif "webm[height<=720]+bestaudio/mp4[height<=720]+bestaudio" -o "%(uploader)s-%(upload_date)s-%(title)s.%(ext)s" '

### Paths ###

#### Directories ####
# Use with other commands.
# 
# ```
# $ go apps
# $ m to image image.jpg
# ```

alias apps='~/applications/ '
alias audio='~/audio/ '
alias dls='~/downloads/ '
alias docs='~/documents/ '
alias home='~/ '
alias maker='~/maker/ '
alias image='~/imagery/ '
alias lit='~/literature/ '
alias video='~/videos/ '
alias journ='~/journaling/ '
alias desk='~/desktop/ '
alias usb='/media/ '

function home
  ~/
end

function apps
  'applications/'
end

function audio
  'audio/'
end

function dls
  'downloads/'
end

function docs
  'documents/'
end

function maker
  'maker/'
end

function image
  'imagery/'
end

function apps
  'applications/'
end

#### Files ####
function bashrc
  ~/.bashrc
end

### Traversal ###
function go
  cd $argv
end

function ls
  ls -FXtx --color=always $argv
end

funciton show
  l -1 -X $argv
end

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

### File Permissions ###
alias owner='chown -v '
alias perm='chmod -v '

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

#### Differences ####
alias ofunstaged='--no-index '
alias ofstaged='--cached '

#### Staging  ####
alias lines='-e '
alias hunks='-p '
alias watch='-N '

#### Status ####
alias short='-s '
alias oftracked='-uno '
alias ofignored='--ignored '
alias ofuntracked='-unormal '
alias ofuntrackedchildren='uall '

#### Logging ####
alias refname='--decorate '
alias refnamelong='--decorate=full '
alias msgsize='--log-size '
alias msgtitle='--oneline '
alias logcount='--max-count '

#### Merging ####
alias donotff='--no-ff '
alias doff='--ff '
alias logcommits='--log '

### Commands ###

#### git add ####
alias stage='git add -v '

#### git branch ####
alias branch='git branch -v '
alias unbranch='branch -d '
alias branches='branch --list '

#### git checkout ####
alias rebranch='git checkout '

#### git commit ####
alias commit='git commit -v '
alias recommit='git commit -v --amend '

#### git diff ####
alias diff='git diff '

#### git reflog ####
alias reflog='git reflog '

#### git log ####
alias commits='git log --decorate --max-count '
alias commitsshort='git log --oneline --decorate --max-count '
alias log='git log '
alias logref='log --decorate '
alias logshort='log --decorate --oneline '
alias logsize='log --log-size '
alias logcount='log --decorate --max-count '

#### git merge ####
alias merge='git merge -v --no-ff '

#### git reset ####
alias uncommit=''
alias reset='git reset --hard '
alias unstage='git reset --mixed '

#### git status ####
alias staged='git status -uno '
alias unstaged='git status -unormal '
alias working='git status '

#### git stash ####
alias stash='git stash save '
alias stashes='git stash list '
alias unstash='git stash apply '
alias destash='git stash drop '
