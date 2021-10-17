# jpb.zshplugin

This is a ZSH plugin usable with [zgenom](https://github.com/jandamm/zgenom) and other [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)-compatible frameworks to easily load some of my tool scripts.

This contains miscellaneous tool scripts and aliases that are not specific enough for one of my more targeted ZSH plugins.

## Status
[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Funixorn%2Fjpb.zshplugin%2Fbadge&style=plastic)](https://actions-badge.atrox.dev/unixorn/jpb.zshplugin/goto)

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
  `ansi2html` | Mislav Marohnić's [dotfiles](https://github.com/mislav/dotfiles) | Convert terminal color ANSI escape sequences to HTML. |
| `change-extension` | ? | Changes file extentions |
| `clean-clipboard` | Mine | Cleans the macOs clipboard |
| `clean-whiteboard-picture` | [https://gist.github.com/lelandbatey/8677901](https://gist.github.com/lelandbatey/8677901) | Cleans up pictures of whiteboards and pumps up contrast |
| `dedupe-in-order` | `awk` oneliner |
| `dumpdns` | | Dump DNS records for a domain |
| `extractFromRPM` | Mine | Extracts files from an rpm |
| `find-in-files` | [Boost Your Command Line Productivity With fzf](https://betterprogramming.pub/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d) | Combines `ripgrep` and `fzf` |
| `fix-zsh-history` | Mine | Fixes a corrupted `.zsh_history` file |
| `get-distro` | [https://github.com/blueyed/dotfiles/](https://github.com/blueyed/dotfiles/blob/master/usr/bin/get_distro) | Dumps info about the distro of the linux system you're on |
| `get-site-cert` | ? | Download the SSL cert from a site |
| `gxpr` | [brutasse's dotfiles](https://github.com/brutasse/dotfiles/blob/master/bin/gxpr). | Uses Google and or Wolfram Alpha to evaluate expressions. Requires `URI::Escape` to be installed with `cpan`. |
| `headers` | Zach Holman's [dotfiles](https://github.com/holman/dotfiles/blob/master/bin/headers) | Gets the HTTP headers from a server |
| `http_debug` | | Dump debug info for an url |
| `http_headers` | | Dump http headers for an url |
| `html2markdown` | [https://github.com/realpython/python-scripts/](https://github.com/realpython/python-scripts/blob/master/scripts/14_html_to_markdown.sh) | Convert all html files in a single directory to markdown |
| `human-time` | | Converts integer seconds into human-understandable time. `human-time 88000` will print `1d 26m 40s` |
| `iflip` | [twirrim/iflip](https://github.com/twirrim/iflip/blob/master/iflip) | Tableflips a text string |
| `ipaddresses` | Mine | Dumps all the ip addresses for the host |
| `json2yaml` | ? | Converts JSON to YAML |
| `jsondiff` | ? | Diff JSON files and cope with key-order differences by processing with json.tool |
| `local-ip-address` | Mine | Print local IP v4 address |
| `local-ipv6-address` | Mine | Print local IP v6 address |
| `lsof-unlinked` | [https://github.com/ludios/ubuntils/](https://github.com/ludios/ubuntils/blob/master/bin/)lsof-unlinked | List all open files (but not mapped files) that have been unlinked. |
| `memcached-tool` | Brad Fitzpatrick <brad@danga.com> | stats/management tool for memcached |
| `memcached-top` | [http://code.google.com/p/memcache-top/](http://code.google.com/p/memcache-top/) | Dumps basic `memcached` stats similarly to `top` |
| `mtr-url` | ? | Parses hostname from an URL, then does a `mtr` to it. |
| `murder` | [Anonymous Gist](https://gist.github.com/anonymous/32b1e619bc9e7fbe0eaa#!/bin/bash) | Takes a list of PIDs and ends the processes through increasingly rude means. |
| `newscript` | Mine | Creates a new script from a template and does `chmod 755` on it. |
| `pidpwd` | Mine | Find the pwd of a given pid. Only works on linux since it requires `/proc` |
| `pjson` | [https://coderwall.com/](https://coderwall.com/p/hwu5uq?i=9&p=1&q=sort%3Ascore+desc&t%5B%5D=zsh) | Prettify json files |
| `plot` | katef's [gist](https://gist.github.com/katef/fb4cb6d47decd8052bd0e8d88c03a102) | Draw a graph in the terminal |
| `random-password` | Mine | Generate a random password. If no argument, assume 32 character length |
| `randsleep` | Mine | Sleep a random number of seconds |
| `relocate-virtualenv` | Gary Josack's [scripts](https://github.com/gmjosack/scripts) repository | This is a simple script to clean up links and references in a python virtualenv that has been relocated. |
| `retry` | Mine | Re-run a command until it exits successfully. Waits `$DELAY` seconds between attempts. |
| `seq` | Dave Taylor's [blog](https://www.askdavetaylor.com/step_through_count_numeric_values_bash_shell_script/) | Generates integer values from low...high similar to `range` in better programming languages |
| `snag-dl` | ? | Moves the most recent file in `~/Downloads` into the current directory |
| `solo` | Timothy Kay's [solo](http://timkay.com/solo/) | Prevents a program from running more than one copy at a time. |
| `tableflip` | [hangops](https://hangops.slack.com) slack | Prints a tableflip animation. |
| `title-text` | Mine | Set the terminal title in any application (like iTerm 2 or Terminal on macOS) that supports VT100 escape sequences. |
| `vbox` | Mine | Opens VirtualBox |
| `wtfis` | jpb@unixorn.net | Looks something up on [cheat.sh](http://cheat.sh) |

## Other useful ZSH plugins

I also maintain the [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins) list of ZSH frameworks, plugins and themes.
