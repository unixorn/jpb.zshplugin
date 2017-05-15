<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [jpb.zshplugin](#jpbzshplugin)
  - [Installing](#installing)
    - [Antigen](#antigen)
    - [Zgen](#zgen)
    - [Without using any frameworks](#without-using-any-frameworks)
  - [Credits](#credits)
  - [Other useful zsh plugins](#other-useful-zsh-plugins)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->
# jpb.zshplugin

Zsh plugin usable with [Antigen](https://github.com/zsh-users/antigen) and [Zgen](https://github.com/tarjoilija/zgen) to load some of my tools.

## Status
[![Build Status](https://travis-ci.org/unixorn/jpb.zshplugin.png)](https://travis-ci.org/unixorn/jpb.zshplugin)

## Installing

### Antigen

add `antigen bundle unixorn/git-extra-commands` to your .zshrc

### Zgen

add `zgen load unixorn/git-extra-commands` to your .zshrc with your other load commands.

### Without using any frameworks

git clone this repository, then add its bin directory to your $PATH. Add `source /path/to/here/jpb.plugin.zsh` to your `.zshrc` file. The scripts in here don't actually require you to be using ZSH as your login shell, they're being distributed as an [antigen](https://github.com/zsh-users/antigen) plugin because it's convenient.

## Credits

* ansi2html - Mislav Marohnić's [dotfiles](https://github.com/mislav/dotfiles)
* change-extension - ?
* clean-clipboard - Mine
* clean-whiteboard-picture - [https://gist.github.com/lelandbatey/8677901](https://gist.github.com/lelandbatey/8677901)
* extractFromRPM - Mine
* google - ?
* ipaddresses - Mine
* local-ip-address - Mine
* local-ipv6-address - Mine
* markdown-open - Ryan Tomayko's [dotfiles](https://github.com/rtomayko/dotfiles)
* memcached-tool - Brad Fitzpatrick <brad@danga.com>
* memcached-top - [http://code.google.com/p/memcache-top/](http://code.google.com/p/memcache-top/)
* murder - [Anonymous Gist](https://gist.github.com/anonymous/32b1e619bc9e7fbe0eaa#!/bin/bash)
* newscript - Mine
* random-password - Mine
* randsleep - Mine
* retry - Mine
* running - Mine
* seq - Dave Taylor's [blog](http://www.askdavetaylor.com/step_through_count_numeric_values_bash_shell_script.html)
* solo - Timothy Kay's [solo](http://timkay.com/solo/)
* wifi-signal-strength - Atsushi Nagase's [dotfiles](https://github.com/ngs/dotfiles/blob/master/bin/wifi-signal-strength)

## Other useful zsh plugins

I also maintain the [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins) list of ZSH frameworks, plugins and themes.
