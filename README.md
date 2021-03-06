# my_configs
Includes my bash terminal configuration files for easy transfer to new servers/devices. It will override your current .bashrc, .bash_aliases,.bash_logout, and .vimrc.

## Installation 
### Easy install (Step 1)
In your home directory, download this git repository by typing:
'git clone https://github.com/CarlsonCarlson/my_configs.git'

For easy set up use the type the following commands in order, 
'cd my_configs\n'
'cp .bash_aliases .bashrc ~/\n'
'bash\n'
'pullConfig\n'

### Vim-plugin Installation (Step 2)
My configuration uses the vim-plug plugin manager

Type:

'curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    
To install the plugins load up your .vimrc file located in your home directory and `:PlugInstall` to install plugins.

### Promptline Installation (Step 3)
In vim type the below command to load promptline:

`:PromptlineSnapshot[!] ~/.promptline.sh airline`

Exit vim, then reload bash with the `bash` command.


## Features
### Vim-plug Commands 
For more information and advanced commands see: https://github.com/junegunn/vim-plug
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
### Make another private repo/branch just for my computer
