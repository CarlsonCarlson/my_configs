# my_configs
Includes my bash terminal configuration files for easy transfer to new servers/devices

## Installation
### Vim-plugin Installation
My configuration uses the vim-plug plugin manager
To install the plugins load up your .vimrc file located in your home directory and `:PlugInstall` to install plugins.

## Features
### Vim-plug Commands

### Commands

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unlisted plugins (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |


## TODO:
### Bling out the README
    -Add screenshots (gifs when possible)
    -Add details about the plugins
    -Add links to the various plugins
    -Add basic user guide with key/most commonly used features
    -Add section about things the user must customize to make it work properly
### Add binaries/commands to the repo
    -sshUD
    -systemupdate
### Add .tmux_config to the directory
