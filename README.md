# Dotfiles

## Overview
This dotfiles repository contains terminal setup that I personally enjoy
and use across different machines. It includes a nice terminal theme,
plugins, autocomplete and other features. You can check
what specific additions there are in the sections bellow.

### Oh-my-zsh (framework)
[Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) is a framework for managing zsh config.
Personally, I like the access to plugins it has, both built-in ones and the ones you
can add. It also makes it easier to install new themes if you wish to do so.

### P10K (theme)
[Powerlevel10K](https://github.com/romkatv/powerlevel10k) is a nice terminal
theme that provides nice customization for you environment. It emphasizes speed,
flexibility and experience. I like how it shows git statuses, the color scheme
and, if you like it, elapsed time for your commands and when you ran each of them.

Here is how it can look like:

![Powerlevel10k preview](https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/prompt-styles-high-contrast.png)

### Aliases
`.aliases` file provides useful aliases for common commands. There are aliases
for directory navigation, git, and npm.

### Vimrc (.rc file)
This new .vimrc file provides nice theme customization for Vim. It is based on
[Marcelo de Moraes .vimrc](https://github.com/marcelodemoraes/vimrc).

### Z (plugin)
[Z](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/z) is one of my favorites.
It marks visited directories, and you can jump to then
with the `z [name]` command. You can replace `[name]` with part of the name of the
directory you wanna `cd` in. The most visited directory that matches the name will
be the target for you `cd`.

### Zsh syntax highlighting (plugin)
[Zsh syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
provides syntax highlighting for when commands are correct and for when they're not.
Also provides nice color coding.

### Zsh autosuggestions (plugin)
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) is a plugin
that enables fish-like autosuggestions. The suggestions are based on commands typed
before. This proves itself very useful for when there are long commands, such as
channelled exports (e.g. `export VAR=long-variable-name && export VAR2=longer-variable-name`).
Instead of remembering the whole commands or having a copy-paste for that, you can start typing
and click right-arrow button, and command gets completed.

<a href="https://asciinema.org/a/37390" target="_blank"><img src="https://asciinema.org/a/37390.png" width="400" /></a>

### Zsh auto notify (plugin)
[Zsh auto-notify](https://github.com/MichaelAquilina/zsh-auto-notify) enables notifications
for commands that take long to execute. This is particularly useful for running unit and
integration tests.

![Zsh Auto Notify](https://raw.githubusercontent.com/MichaelAquilina/zsh-auto-notify/master/img/notification-example.png)


### Other plugins
You can check the other plugins installed on the list bellow:
- [npm](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm)
- [fasd](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fasd)
- [you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use)
- [command-not-found](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found)


## Installing
Give executing permissions to the scripts. Run the command below.
```shell
chmod +x setup.sh install_packages.sh zsh_setup.sh node_setup.sh
```

Then run the main script:
```shell
./setup.sh
```

You should be good to go :)