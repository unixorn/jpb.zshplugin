# jpb.zshplugin

This is a ZSH plugin usable with [zgenom](https://github.com/jandamm/zgenom) and other [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)-compatible frameworks to easily load some of my tool scripts.

This contains miscellaneous tool scripts and aliases that are not specific enough for one of my more targeted ZSH plugins.

## Status
[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Funixorn%2Fjpb.zshplugin%2Fbadge%3Fref%3Dmain&style=plastic)](https://actions-badge.atrox.dev/unixorn/jpb.zshplugin/goto?ref=main)
![Awesomebot](https://github.com/unixorn/jpb.zshplugin/actions/workflows/awesomebot.yml/badge.svg)
![Mega-Linter](https://github.com/unixorn/jpb.zshplugin/actions/workflows/mega-linter.yml/badge.svg)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Installing](#installing)
  - [Antigen](#antigen)
  - [Zgen/Zgenom](#zgenzgenom)
  - [Without using a framework](#without-using-a-framework)
- [Credits](#credits)
- [Other useful ZSH plugins](#other-useful-zsh-plugins)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Installing

### Antigen

add `antigen bundle unixorn/jpb.zshplugin` to your `.zshrc`

### Zgen/Zgenom

add `zgen load unixorn/jpb.zshplugin` to your `.zshrc` with your other load commands.

### Without using a framework

1. git clone this repository, then add its bin directory to your `$PATH`.
2. Add `source /path/to/here/jpb.plugin.zsh` to your `.zshrc` file.

The scripts in this collection don't actually require you to be using ZSH as your login shell, they're being distributed as an [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)-compatible plugin because it's convenient for me.

## Credits

| Script | Original Source | Description |
| ------ | --------------- | ----------- |
| `$` | Jordan Sissel's [dotfiles](https://github.com/jordansissel/dotfiles/blob/master/.zshrc) | A shim so that when you're pasting a command example with a leading `$` it will just work. |
|  `ansi2html` | Mislav Marohnić's [dotfiles](https://github.com/mislav/dotfiles) | Convert terminal color ANSI escape sequences to HTML. |
| `ascii-bar` | Wookayin's [dotfiles](https://github.com/wookayin/dotfiles/blob/master/bin/ascii-bar) | Draw an ascii bar figure from the percentage value read from stdin |
| `change-extension` | ? | Changes file extensions |
| `clean-whiteboard-picture` | [https://gist.github.com/lelandbatey/8677901](https://gist.github.com/lelandbatey/8677901) | Cleans up pictures of whiteboards and pumps up contrast |
| `datauri` | Alrra's [dotfiles](https://github.com/alrra/dotfiles/blob/main/src/shell/bash_functions) | Converts a file to a data URI |
| `dedupe-in-order` | `awk` oneliner |
| `diff-summary` | Gary Bernhardt's [dotfiles](https://github.com/garybernhardt/dotfiles/blob/main/bin/gn) |Prints a summary of piped diff files or `git diff` output |
| `dumpdns` | | Dump DNS records for a domain |
| `extractFromRPM` | jpb@unixorn.net | Extracts files from an rpm |
| `exiftool` | jpb@unixorn.net | Shows or removes a file's exif metadata |
| `find-in-files` | [Boost Your Command Line Productivity With fzf](https://betterprogramming.pub/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d) | Combines `ripgrep` and `fzf` |
| `fix-zsh-history` | jpb@unixorn.net | Fixes a corrupted `.zsh_history` file |
| `get-distro` | [https://github.com/blueyed/dotfiles/](https://github.com/blueyed/dotfiles/blob/master/usr/bin/get_distro) | Dumps info about the distro of the linux system you're on |
| `get-site-cert` | ? | Download the SSL cert from a site |
| `gxpr` | [brutasse's dotfiles](https://github.com/brutasse/dotfiles/blob/master/bin/gxpr). | Uses Google and or Wolfram Alpha to evaluate expressions. Requires `URI::Escape` to be installed with `cpan`. |
| `headers` | Zach Holman's [dotfiles](https://github.com/holman/dotfiles/blob/master/bin/headers) | Gets the HTTP headers from a server |
| `http_debug` | | Dump debug info for a URL |
| `http_headers` | | Dump http headers for a URL |
| `html2markdown` | [https://github.com/realpython/python-scripts/](https://github.com/realpython/python-scripts/blob/master/scripts/14_html_to_markdown.sh) | Convert all HTML files in a single directory to Markdown |
| `human-path` | coffeeops slack `#commandline-fu` channel | Print `$PATH` with one entry per line to make it easier for humans to tell if something is missing |
| `human-time` | | Converts integer seconds into human-understandable time. `human-time 88000` will print `1d 26m 40s` |
| `iflip` | [twirrim/iflip](https://github.com/twirrim/iflip/blob/master/iflip) | Tableflips a text string |
| `ipaddresses` | jpb@unixorn.net | Dumps all the ip addresses for the host |
| `jira` | jpb@unixorn.net | Opens a jira ticket from the command-line |
| `jmemstat` | [majk1's shellrc](https://github.com/majk1/shellrc/blob/master/utils/jmemstat.sh) | Displays a memory information summary for a java process |
| `json2yaml` / `json-to-yaml` | jpb@unixorn.net | Converts JSON to YAML |
| `jsondiff` | ? | Diff JSON files and cope with key-order differences by processing with json.tool |
| `lineprof` | Mislav Marohnić's [dotfiles](https://github.com/mislav/dotfiles)  | Annotates each line of input with the number of milliseconds elapsed since the last line. Useful for figuring out slow points of output-producing programs. |
| `local-ip-address` | jpb@unixorn.net | Print local IP v4 address |
| `local-ipv6-address` | jpb@unixorn.net | Print local IP v6 address |
| `ls-open-ports` | jpb@unixorn.net | List open ports |
| `ls-sockets` | jpb@unixorn.net | List open sockets |
| `ls-tcp-sockets` | jpb@unixorn.net | List open tcp sockets |
| `ls-udp-sockets` | jpb@unixorn.net | List open udp sockets |
| `lsof-unlinked` | [ludios/ubuntils/](https://github.com/ludios/ubuntils/blob/master/bin/lsof-unlinked) | List all open files (but not mapped files) that have been unlinked. |
| `memcached-tool` | Brad Fitzpatrick <brad@danga.com> | stats/management tool for memcached |
| `memcached-top` | [http://code.google.com/p/memcache-top/](http://code.google.com/p/memcache-top/) | Dumps basic `memcached` stats similarly to `top` |
| `middle` | [@Hefeweizen](https://github.com/Hefeweizen) | Snips lines out of the the middle of a file and dumps them to stdout |
| `mtr-url` | ? | Parses hostname from a URL, then does a `mtr` to it. |
| `murder` | [Anonymous Gist](https://gist.github.com/anonymous/32b1e619bc9e7fbe0eaa#!/bin/bash) | Takes a list of PIDs and ends the processes through increasingly rude means. |
| `name-window` | jpb@unixorn.net | Names a terminal window/tab by sending escape codes. |
| `newscript` | jpb@unixorn.net | Creates a new script from a template and does `chmod 755` on it. |
| `pidpwd` | jpb@unixorn.net | Find the pwd of a given pid. Only works on linux since it requires `/proc` |
| `pjson` | [https://coderwall.com/](https://coderwall.com/p/hwu5uq?i=9&p=1&q=sort%3Ascore+desc&t%5B%5D=zsh) | Prettify json files |
| `plot` | katef's [gist](https://gist.github.com/katef/fb4cb6d47decd8052bd0e8d88c03a102) | Draw a graph in the terminal |
| `port-listeners-ipv{4,6}` | jpb@unixorn.net | Show what programs are listening to a given port |
| `random-password` | jpb@unixorn.net | Generate a random password. If no argument, assume 32 character length |
| `randsleep` | jpb@unixorn.net | Sleep a random number of seconds |
| `relocate-virtualenv` | Gary Josack's [scripts](https://github.com/gmjosack/scripts) repository | This is a simple script to clean up links and references in a python virtualenv that has been relocated. |
| `retry` | jpb@unixorn.net | Re-run a command until it exits successfully. Waits `$DELAY` seconds between attempts. |
| `seq` | Dave Taylor's [blog](https://www.askdavetaylor.com/step_through_count_numeric_values_bash_shell_script/) | Generates integer values from low...high similar to `range` in better programming languages |
| `snag-dl` | ? | Moves the most recent file in `~/Downloads` into the current directory |
| `solo` | Timothy Kay's [solo](http://timkay.com/solo/) | Prevents a program from running more than one copy at a time. |
| `strip-ansi-codes` | jpb@unixorn.net | Strips the ANSI codes from STDIN. Makes grepping through things like jenkins logs considerably less painful |
| `tableflip` | [hangops](https://hangops.slack.com) slack | Prints a tableflip animation. |
| `title-text` | jpb@unixorn.net | Set the terminal title in any application (like iTerm 2 or Terminal on macOS) that supports VT100 escape sequences. |
| `urldecode` | jpb@unixorn.net | Decode an url string |
| `urlencode` | jpb@unixorn.net | Encode a string to an url parameter |
| `vbox` | jpb@unixorn.net | Opens VirtualBox |
| `wtfis` | jpb@unixorn.net | Looks something up on [cheat.sh](http://cheat.sh) |
| `yaml2json` / `yaml-to-json` | jpb@unixorn.net | Converts yaml to json |

## Other useful ZSH plugins

I also maintain the [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins) list of ZSH frameworks, plugins and themes.
