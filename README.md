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

* ansi2html - Mislav Marohnić's [dotfiles](https://github.com/mislav/dotfiles)
* change-extension - ?
* clean-clipboard - Mine
* clean-whiteboard-picture - [https://gist.github.com/lelandbatey/8677901](https://gist.github.com/lelandbatey/8677901)
* dedupe-in-order - `awk` oneliner
* dumpdns - Dump DNS records for a domain
* extractFromRPM - Mine
* fix-zsh-history - Mine
* google - ?
* gxpr - [brutasse's dotfiles](https://github.com/brutasse/dotfiles/blob/master/bin/gxpr). Requires URI::Escape to be installed with `cpan`
* headers - Zach Holman's [dotfiles](https://github.com/holman/dotfiles/blob/master/bin/headers)
* http_debug - Dump debug info for an url
* http_headers - Dump http headers for an url
* ipaddresses - Mine
* local-ip-address - Mine
* local-ipv6-address - Mine
* markdown-open - Ryan Tomayko's dotfiles
* memcached-tool - Brad Fitzpatrick <brad@danga.com>
* memcached-top - [http://code.google.com/p/memcache-top/](http://code.google.com/p/memcache-top/)
* murder - [Anonymous Gist](https://gist.github.com/anonymous/32b1e619bc9e7fbe0eaa#!/bin/bash)
* newscript - Mine
* pidpwd - Mine
* random-password - Mine
* randsleep - Mine
* relocate-virtualenv - Gary Josack's [scripts](https://github.com/gmjosack/scripts) repository
* retry - Mine
* running - Mine
* seq - Dave Taylor's [blog](https://www.askdavetaylor.com/step_through_count_numeric_values_bash_shell_script/)
* snag-dl - Move the most recent file in `~/Downloads` into the current directory
* solo - Timothy Kay's [solo](http://timkay.com/solo/)
* tableflip - [hangops](https://hangops.slack.com) slack
* title-text - Set the terminal title in any application (like iTerm 2 or Terminal on macOS) that supports VT100 escape sequences. Mine
* vbox - ?
* wifi-signal-strength - Atsushi Nagase's [dotfiles](https://github.com/ngs/dotfiles/blob/master/bin/wifi-signal-strength)

## Other useful ZSH plugins

I also maintain the [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins) list of ZSH frameworks, plugins and themes.
