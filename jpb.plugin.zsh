# Copyright 2006-2020 Joseph Block <jpb@apesseekingknowledge.net>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# What platform are we on?
on_linux() { [[ "$(uname -s)" = 'Linux'  ]] }
on_osx()   { [[ "$(uname -s)" = 'Darwin' ]] }

# check if a command is available

function exists() {
  if (( $+commands[$1] )); then
    return 0
  else
    return 1
  fi
}
#
alias dmesg='sudo dmesg'

# check if this is an interactive session
# (tests if stdout is a tty)
# function is_interactive() { [ -t 1 ] }

# Add our plugin's bin diretory to user's path
PLUGIN_BIN="$(dirname $0)/bin"
export PATH="${PATH}:${PLUGIN_BIN}"

if [[ "$(uname -s)" = 'Linux'  ]]; then
  # We're on linux
  alias cputop='top -o cpu'
  alias l-d='ls -lFad'
  alias l='ls -la'
  alias l='ls -laF'
  alias ll='ls -lFa | TERM=vt100 less'

  # Simulate OSX's pbcopy and pbpaste on Linux
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

alias historysummary="history | awk '{a[\$2]++} END{for(i in a){printf \"%5d\t%s\n\",a[i],i}}'| sort -rn| head -30"

function historygram() {
  history | \
    awk '{print $2}' | \
    sort | \
    uniq -c | \
    sort -rn | \
    head -20 | \
    awk '!max{max=$1;}{r="";i=s=60*$1/max;while(i-->0)r=r"#";printf "%15s %5d %s %s",$2,$1,r,"\n";}'
}

# IP address fiddling
alias external_ip='curl -s icanhazip.com'
alias my_ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

alias reattach='screen -r'

# SSH stuff
alias ssh='ssh -A'
alias sshi='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o GlobalKnownHostsFile=/dev/null'
alias scpi='scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o GlobalKnownHostsFile=/dev/null'
alias sshnohostchecks='sshi'

# Strip ANSI codes out of a stream
alias stripcolors='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g"'

alias wget='wget -c'

# git aliases
alias annotate='git annotate'
alias blame='git blame'
alias gadd='git add'
alias gblame='git blame'
alias gci='git ci -v'
alias gdiff='git diff'
alias git-ignored='git ls-files --others --i --exclude-standard'
alias gitadd='git add'
alias gitci='git ci -v'
alias gitdiff='git diff'
alias gitignored='git ls-files --others --i --exclude-standard'
alias gitlgg="git log --pretty=format:'%Cred%h%Creset -%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gitlog='git log'
alias gitloll='git log --graph --decorate --pretty=oneline --abbrev-commit'
alias gitmerge='git merge'
alias gitpull='git pull'
alias gitpus='git push'
alias gitpush='git push'
alias gitrebase='git rebase'
alias gitst='git status'
alias glg='git log'
alias glog='git log'
alias gpull='git pull'
alias gpush='git push'
alias grebase='git rebase -i'
alias hlog='git log --all --date-order --graph --date=short --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ad%Creset %C(red bold)%d%Creset%s"'

# GPG stuff
alias sign='gpg --detach-sign --armor'

# my common tyops
alias ..='cd ..'
alias ':q'="exit"
alias gerp='grep'
alias grep-i='grep -i'
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias grepi='grep -i'
alias maek='make'
alias mkdirp='mkdir -p'
alias mkdir-p='mkdir -p'
alias psax='ps ax'
alias pswax='ps wax'
alias psxa='ps ax'
alias raek='rake'
alias tartvf='tar tvf'
alias tartvzf='tar tvzf'
alias tarxvf='tar xvf'
alias tarxvzf='tar xvzf'
alias zz='exit'

# from cads
ff() { find . -type f -iname '*'$*'*' -ls ; }

# Got tired of constantly doing history | grep X | tail
hgrep40() {
  history | grep -i "$@" | tail -40
}

hgrep() {
  history | grep -i "$@" | tail -20
}

# Syntax-highlight JSON strings or files
# Usage: `json '{"foo":42}'` or `echo '{"foo":42}' | json`
# From https://github.com/yramagicman/zsh-aliases/blob/master/functions/functions.plugin.zsh
function json() {
  if [ -t 0 ]; then # argument
    python -mjson.tool <<<"$*" | pygmentize -l javascript
  else # pipe
    python -mjson.tool | pygmentize -l javascript
  fi
}

rot13() {
  echo $1 | tr "A-Za-z" "N-ZA-Mn-za-m"
}

# SHA stuff
sha1() {
  echo -n $1 | openssl sha1 /dev/stdin
}

sha256() {
  echo -n $1 | openssl sha256 /dev/stdin
}

sha512() {
  echo -n $1 | openssl sha512 /dev/stdin
}

# from commandlinefu.com
watch() { t=$1; shift; while test :; do clear; date=$(date); echo -e "Every $ts: $@ \t\t\t\t $date"; $@; sleep $t; done }

calc() {
  awk "BEGIN{ print $* }" ;
}

alias procs_for_path='procs-for-path'

# begin sysadvent2011 functions
_awk_col() {
  echo "$1" | egrep -v '^[0-9]+$' || echo "\$$1"
}

sum() {
  [ "${1#-F}" != "$1" ] && SP=${1} && shift
  [ "$#" -eq 0 ] && set -- 0
  key="$(_awk_col "$1")"
  awk $SP "{ x+=$key } END { printf(\"%d\n\", x) }"
}

sumby() {
  [ "${1#-F}" != "$1" ] && SP=${1} && shift
  [ "$#" -lt 0 ] && set -- 0 1
  key="$(_awk_col "$1")"
  val="$(_awk_col "$2")"
  awk $SP "{ a[$key] += $val } END { for (i in a) { printf(\"%d %s\\n\", a[i], i) } }"
}

countby() {
  [ "${1#-F}" != "$1" ] && SP=${1} && shift
  [ "$#" -eq 0 ] && set -- 0
  key="$(_awk_col "$1")"
  awk $SP "{ a[$key]++ } END { for (i in a) { printf(\"%d %s\\n\", a[i], i) } }"
}
# end sysadvent

# Make easier to remember alias for removing entries from known_hosts
rmhost() {
  ssh-keygen -R "$@"
}

get_load() {
  uptime | awk '{print $11}' | tr ',' ' '
}

bash_repeat() {
  n=$1
  shift
  while [ $(( n -= 1 )) -ge 0 ]
  do
    "$@"
  done
}

# Deal with various stupidities

authme() {
  ssh "$1" 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys' \
  < ~/.ssh/id_dsa.pub
}

jsoncurl() {
  curl "$@" | python -m json.tool
}

# recursively touch, e.g. touch + mkdir -p
# so files can easily be created at depth
canhaz() {
  mkdir -p $(dirname "${1}") && touch "${1}"
}

canhaz_script() {
  mkdir -p $(dirname "${1}") && touch "${1}" && chmod +x "${1}"
}

pong() {
  ping -c 10 "$@"
}

show_terminal_colors() {
  for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolor${i}\n"
  done
}

# batch change extension
#   change-extension erb haml
function change-extension() {
  foreach f (**/*.$1)
    mv $f $f:r.$2
  end
}
alias chgext='change-extension'

# From Dan Ryan's blog - http://danryan.co/using-antigen-for-zsh.html
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

alias zh='fc -l -d -D'
alias -s pdf=open
alias edit="$EDITOR"' $(eval ${$(fc -l -1)[2,-1]} -l)'
alias knife='nocorrect knife'

function hexpass() {
  openssl rand -hex 24 $@
}

function sshaddme {
  ssh $1 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys" < ~/.ssh/id_?sa.pub  # '?sa' is a glob, not a typo!
}

# mkdir & cd
function mkcd {
    mkdir -p "$@" && cd $_
}

# delete .pyc and .pyo files
function pyclean {
  find -E . -type f -regex '.*\.(pyc|pyo)' -delete
}

function smite() {
  ps wax | grep ${1} | grep -v grep | awk '{print $1}' | xargs murder
}

alias python_module_path="echo 'import sys; t=__import__(sys.argv[1],fromlist=[\".\"]); print(t.__file__)'  | python - "

function htmime {
  if [[ -z $1 ]]; then
    print 'USAGE: htmime <URL>'
    return 1
  fi
  mime=$(curl -sIX HEAD $1 | sed -nr "s/Content-Type: (.+)/\1/p")
  print $mime
}

# Lesspipe
LESSPIPE=$(command -v lesspipe.sh)
if [ -n "${LESSPIPE}" ]; then
  export LESSOPEN="| ${LESSPIPE} %s"
  export LESS=' -R '
fi

# Yes, these are a pain to customize. Fortunately, Geoff Greer made an online
# tool that makes it easy to customize your color scheme and keep them in sync
# across Linux and macOS/*BSD at http://geoff.greer.fm/lscolors/

export LSCOLORS=exfxcxdxbxegedAbAgacad
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=1;;41:sg=1;;46:tw=0;42:ow=0;43:"

alias asroot='sudo $(fc -ln -1)'

# show newest files
# http://www.commandlinefu.com/commands/view/9015/find-the-most-recently-changed-files-recursively
newest (){
  find . -type f -printf '%TY-%Tm-%Td %TT %p\n' | \
  grep -v cache | \
  grep -v '.hg' | grep -v '.git' | \
  sort -r | \
  less
}

# print a separator banner, as wide as the terminal
function hr {
  print ${(l:COLUMNS::=:)}
}

# urlencode text
function urlencode {
  print "${${(j: :)@}//(#b)(?)/%$[[##16]##${match[1]}]}"
}

# Create short urls via http://goo.gl using curl(1).
# Contributed back to grml zshrc
# API reference: https://code.google.com/apis/urlshortener/
function zurl {
  if [[ -z $1 ]]; then
    print "USAGE: $0 <URL>"
    return 1
  fi

  local url=$1
  local api='https://www.googleapis.com/urlshortener/v1/url'
  local data

  # Prepend "http://" to given URL where necessary for later output.
  if [[ $url != http(s|)://* ]]; then
    url="http://$url"
  fi
  local json="{\"longUrl\": \"$url\"}"

  data=$(curl --silent -H "Content-Type: application/json" -d $json $api)
  # Match against a regex and print it
  if [[ $data =~ '"id": "(http://goo.gl/[[:alnum:]]+)"' ]]; then
    print $match
  fi
}

function stopwatch(){
  case $(uname) in
    "Linux") DATE=date ;;
    "Darwin") DATE=gdate ;;
  esac
  local BEGIN=`$DATE +%s`
  while true; do
    echo -ne "$($DATE -u --date @$((`$DATE +%s` - $BEGIN)) +%H:%M:%S)\r";
  done
}

# lists zombie processes
function zombie() {
  ps aux | awk '{if ($8=="Z") { print $2 }}'
}

# strip comments from config files
function justconfig() {
  sed -e '/^[[:space:]]*#/d;/^[[:space:]]*;/d;s/\r//g;/^[[:space:]]*$/d' "$1"
}

# from: https://github.com/chilicuil/shundle-plugins/blob/master/aliazator/aliases/extra/wget.aliases
alias test.broadband='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip'
alias wcat='wget -q -O -'

alias grepm='grep --exclude-dir={node_modules,bower_components,dist,.bzr,.cvs,.git,.hg,.svn,.tmp} --color=always'

export BULLETTRAIN_CONTEXT_SHOW=true
export BULLETTRAIN_IS_SSH_CLIENT=true

# Calculate how many days since epoch
epochdays() {
  if command -v perl &>/dev/null; then
    epoch=$(perl -e "print time")
  elif command -v truss >/dev/null 2>&1 && [[ $(uname) = SunOS ]]; then
    epoch=$(truss date 2>&1 | grep ^time | awk -F"= " '{print $2}')
  elif command -v truss >/dev/null 2>&1 && [[ $(uname) = FreeBSD ]]; then
    epoch=$(truss date 2>&1 | grep ^gettimeofday | cut -d "{" -f2 | cut -d "." -f1)
  elif [[ $(uname) = Linux ]]; then
    epoch=$(date +%s)
  fi
  printf "%s\n" "$(( epoch / 86400 ))"
}

# Perly stuff from https://github.com/massa/massazsh/blob/master/massa.sh

# pgs - Perl Global Substitution
# find pattern    = 1st arg
# replace pattern = 2nd arg
# filename      = 3rd arg
pgs() { # [find] [replace] [filename]
  perl -i.orig -pe 's/'"$1"'/'"$2"'/g' "$3"
}

# Perl grep, because 'grep -P' is terrible. Lets you work with pipes or files.
prep() { # [pattern] [filename unless STDOUT]
  perl -nle 'print if /'"$1"'/;' $2
}

function stockquote() {
  curl -s "http://download.finance.yahoo.com/d/quotes.csv?s=$1&f=l1"
}

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done

getcert() {
  host=${1};
  port=${2:-443};
  openssl s_client -connect ${host}:${port} 2> /dev/null </dev/null | sed -n '/-----BEGIN CERTIFICATE-----/,/-----END CERTIFICATE-----/p'
}

# This comes from https://stackoverflow.com/questions/17878684/best-way-to-get-file-modified-time-in-seconds
# This works on both Linux with GNU fileutils and macOS with BSD stat.

# Naturally BSD/macOS and Linux can't share the same options to stat.
if [[ $(uname | grep -ci -e Darwin -e BSD) = 1 ]]; then

  # macOS version
  get_file_modification_time() {
    modified_time=$(stat -f %m "$1" 2> /dev/null) || modified_time=0
    echo "${modified_time}"
  }

elif [[ $(uname | grep -ci Linux) = 1 ]]; then

  # Linux version
  get_file_modification_time() {
    modified_time=$(stat -c %Y "$1" 2> /dev/null) || modified_time=0
    echo "${modified_time}"
  }
fi

# Lazy enough to not want to hit the shift key
alias get-file-modification-time=get_file_modification_time

# VSCode stuff
alias cadd='code -a'
alias cdiff='code -d'
alias cnew='code -n'
alias code-install='code --install-extension'
alias code-uninstall='code --uninstall-extension'
alias vs-code='code'
alias vscode='code'

# From From https://github.com/jessfraz/dotfiles/blob/master/.functions
# go to a folder easily in your gopath
gogo(){
  local d=$1

  if [[ -z $d ]]; then
    echo "You need to specify a project name."
    return 1
  fi

  if [[ "$d" = github* ]]; then
    d=$(echo $d | sed 's/.*\///')
  fi
  d=${d%/}

  # search for the project dir in the GOPATH
  local path=( `find "${GOPATH}/src" \( -type d -o -type l \) -iname "$d"  | awk '{print length, $0;}' | sort -n | awk '{print $2}'` )

  if [ "$path" == "" ] || [ "${path[*]}" == "" ]; then
    echo "Could not find a directory named $d in $GOPATH"
    echo "Maybe you need to 'go get' it ;)"
    return 1
  fi

  # enter the first path found
  cd "${path[0]}"
}

# build go static binary from root of project
gostatic(){
	local dir=$1
	local arg=$2

	if [[ -z $dir ]]; then
		dir=$(pwd)
	fi

	local name
	name=$(basename "$dir")
	(
	cd "$dir" || exit
  export GOOS=${GOOS:-linux}

	echo "Building ${GOOS} static binary for $name in $dir"

	case $arg in
		"netgo")
			set -x
			go build -a \
				-tags 'netgo static_build' \
				-installsuffix netgo \
				-ldflags "-w" \
				-o "$name" .
			;;
		"cgo")
			set -x
			CGO_ENABLED=1 go build -a \
				-tags 'cgo static_build' \
				-ldflags "-w -extldflags -static" \
				-o "$name" .
			;;
		*)
			set -x
			CGO_ENABLED=0 go build -a \
				-installsuffix cgo \
				-ldflags "-w" \
				-o "$name" .
			;;
	esac
	)
}

golistdeps(){
	(
	if [[ -n "$1" ]]; then
		gogo "$@"
	fi

	go list -e -f '{{join .Deps "\n"}}' ./... | xargs go list -e -f '{{if not .Standard}}{{.ImportPath}}{{end}}'
	)
}
