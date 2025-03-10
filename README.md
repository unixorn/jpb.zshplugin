[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/license/Apache-2.0)
[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Funixorn%2Fjpb.zshplugin%2Fbadge%3Fref%3Dmain&style=plastic)](https://actions-badge.atrox.dev/unixorn/jpb.zshplugin/goto?ref=main)
![Awesomebot](https://github.com/unixorn/jpb.zshplugin/actions/workflows/awesomebot.yml/badge.svg)
![Mega-Linter](https://github.com/unixorn/jpb.zshplugin/actions/workflows/mega-linter.yml/badge.svg)

# jpb.zshplugin

This is a ZSH plugin usable with [zgenom](https://github.com/jandamm/zgenom) and other frameworks compatible with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) to easily load some of my tool scripts.

This contains miscellaneous tool scripts and aliases that are not specific enough for one of my more targeted ZSH plugins.

These scripts are personal collection of helper scripts, so while I try to make them useful for other people, they're in a constant state of flux as I make them suit my needs.


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Installing](#installing)
  - [Antigen](#antigen)
  - [Zgenom](#zgenom)
  - [Without using a framework](#without-using-a-framework)
- [Credits](#credits)
- [Other useful ZSH plugins](#other-useful-zsh-plugins)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Installing

### Antigen

add `antigen bundle unixorn/jpb.zshplugin` to your `.zshrc`

### Zgenom

add `zgenom load unixorn/jpb.zshplugin` to your `.zshrc` with your other `zgenom load` commands.

### Without using a framework

1. `git clone` this repository, then add its bin directory to your `$PATH`.
2. Add `source /path/to/here/jpb.plugin.zsh` to your `.zshrc` file.

The scripts in this collection don't actually require you to be using ZSH as your login shell, they're being distributed as a plugin compatible with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) because it's convenient for me.

## Credits

| Script | Original Source | Description |
| ------ | --------------- | ----------- |
| `$` | Jordan Sissel's [dotfiles](https://github.com/jordansissel/dotfiles/blob/master/.zshrc) | A shim so that pasting a command example with a leading `$` will just work instead of failing. |
| `ansi2html` | Mislav Marohnić's [dotfiles](https://github.com/mislav/dotfiles) | Convert terminal color ANSI escape sequences to HTML. |
| `ascii-bar` | Wookayin's [dotfiles](https://github.com/wookayin/dotfiles/blob/master/bin/ascii-bar) | Draw an ascii bar figure from the percentage value read from `STDIN` |
| `bindiff` | jpb@unixorn.net | Hexdumps two files and diffs the output |
| `change-extension` | ? | Changes file extensions |
| `clean-whiteboard-picture` | [https://gist.github.com/lelandbatey/8677901](https://gist.github.com/lelandbatey/8677901) | Cleans up pictures of whiteboards and pumps up contrast |
| `cursor-hide` | jpb@unixorn.net | Hides cursor in iTerm2 |
| `cursor-show` | jpb@unixorn.net | Enables cursor visibility in iTerm2 if a program exits without setting it visible again |
| `datauri` | Alrra's [dotfiles](https://github.com/alrra/dotfiles/blob/main/src/shell/bash_functions) | Converts a file to a data URI |
| `dedupe-in-order` | `awk` oneliner | Use awk to dedupe a file, outputting the lines in order. Unlike `uniq`, doesn't only dedupe adjacent lines. |
| `diff-summary` | Gary Bernhardt's [dotfiles](https://github.com/garybernhardt/dotfiles/blob/main/bin/gn) | Prints a summary of piped diff files or `git diff` output |
| `dumpdns` | ? | Dump DNS records for a domain |
| `exiftool` | jpb@unixorn.net | Shows or removes a file's exif metadata |
| `explainshell` | jpb@unixorn.net | Uses https://explainshell.com to explain shell commands. |
| `extractFromRPM` | jpb@unixorn.net | Extracts files from an rpm |
| `find-in-files` | [Boost Your Command Line Productivity With fzf](https://betterprogramming.pub/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d) | Combines `ripgrep` and `fzf` |
| `fix-zsh-history` | jpb@unixorn.net | Fixes a corrupted `.zsh_history` file |
| `get-distro` | [https://github.com/blueyed/dotfiles/](https://github.com/blueyed/dotfiles/blob/master/usr/bin/get_distro) | Dumps info about the distro of the linux system you're on |
| `get-site-cert` | ? | Download the SSL cert from a site |
| `gxpr` | [brutasse's dotfiles](https://github.com/brutasse/dotfiles/blob/master/bin/gxpr). | Uses Google and or Wolfram Alpha to evaluate expressions. Requires `URI::Escape` to be installed with `cpan`. |
| `headers` | Zach Holman's [dotfiles](https://github.com/holman/dotfiles/blob/master/bin/headers) | Gets the HTTP headers from a server |
| `hex-to-bin` | jpb@unixorn.net | Converts a hexstring to a binary stream |
| `html2markdown` | [https://github.com/realpython/python-scripts/](https://github.com/realpython/python-scripts/blob/master/scripts/14_html_to_markdown.sh) | Convert all HTML files in a single directory to Markdown |
| `http_debug` | | Dump debug info for a URL |
| `http_headers` | | Dump http headers for a URL |
| `human-path` | coffeeops slack `#commandline-fu` channel | Print `$PATH` with one entry per line to make it easier for humans to tell if something is missing |
| `human-time` | | Converts integer seconds into human-understandable time. `human-time 88000` will print `1d 26m 40s` |
| `iflip` | [twirrim/iflip](https://github.com/twirrim/iflip/blob/master/iflip) | Tableflips a text string |
| `ipaddresses` | jpb@unixorn.net | Dumps all the ip addresses for the host |
| `is-remote-session` | jpb@unixorn.net | Exits 0 if you're in an `ssh` remote session, 1 otherwise |
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
| `nanotime` | jpb@unixorn.net | Times a process and gives you results in milliseconds |
| `newscript` | jpb@unixorn.net | Creates a new script from a template and does `chmod 755` on it. |
| `openports` | jpb@unixorn.net | Wraps `ss` and makes a prettier list of open ports. |
| `pidpwd` | jpb@unixorn.net | Find the pwd of a given pid. Only works on linux since it requires `/proc` |
| `pjson` | [https://coderwall.com/](https://coderwall.com/p/hwu5uq?i=9&p=1&q=sort%3Ascore+desc&t%5B%5D=zsh) | Prettify json files |
| `plot` | katef's [gist](https://gist.github.com/katef/fb4cb6d47decd8052bd0e8d88c03a102) | Draw a graph in the terminal |
| `port-listeners-ipv{4,6}` | jpb@unixorn.net | Show what programs are listening to a given port |
| `port-listened-by}` | jpb@unixorn.net | Show what programs are listening to a given port |
| `pydoc` | Hangops Slack | Look something up on [docs.python.org](https://docs.python.org) and opens it in your default browser |
| `random-password` | jpb@unixorn.net | Generate a random password. If no argument, assume 32 character length |
| `randsleep` | jpb@unixorn.net | Sleep a random number of seconds |
| `relocate-virtualenv` | Gary Josack's [scripts](https://github.com/gmjosack/scripts) repository | This is a simple script to clean up links and references in a python virtualenv that has been relocated. |
| `remote-packet-capture` | jpb@unixorn.net | Run `tcpdump` on a remote host and pipe it to local `wireshark` |
| `retry` | jpb@unixorn.net | Re-run a command until it exits successfully. Waits `$DELAY` seconds between attempts. |
| `seq` | Dave Taylor's [blog](https://www.askdavetaylor.com/step_through_count_numeric_values_bash_shell_script/) | Generates integer values from low...high similar to `range` in better programming languages |
| `snag-dl` | ? | Moves the most recent file in `~/Downloads` into the current directory |
| `solo` | Timothy Kay's `solo` script | Prevents a program from running more than one copy at a time. |
| `ssh-remove-known-host` | jpb@unixorn.net | Helper script to remove a known hosts entry. I can never remember the command for removing a known_hosts entry, and the new format makes it more pain in the ass than just editing and searching for the ip/hostname. |
| `steal` | jpb@unixorn.net | Helper for quickly resetting ownership of files you created with the wrong userid |
| `strip-ansi-codes` | jpb@unixorn.net | Strips the ANSI codes from STDIN. Makes grepping through things like jenkins logs considerably less painful |
| `tableflip` | [hangops](https://hangops.slack.com) slack | Prints a tableflip animation. |
| `title-text` | jpb@unixorn.net | Set the terminal title in any application (like iTerm 2 or Terminal on macOS) that supports VT100 escape sequences. |
| `urldecode` | jpb@unixorn.net | Decode an url string |
| `urlencode` | jpb@unixorn.net | Encode a string to an url parameter |
| `vbox` | jpb@unixorn.net | Opens VirtualBox |
| `wtfis` | jpb@unixorn.net | Looks something up on [cheat.sh](http://cheat.sh) |
| `yaml2json` / `yaml-to-json` | jpb@unixorn.net | Converts yaml to json |
| `yq` | jpb@unixorn.net | Run `yq` in a container to minimize the things directly installed locally |

## Other useful ZSH plugins

I also maintain the [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins) list of ZSH frameworks, plugins and themes.
