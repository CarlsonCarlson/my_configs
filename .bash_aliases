alias home='cd /mnt/c/Users/carls/Onedrive/computerscience/home ; ls'
alias onedrive='cd /mnt/c/Users/carls/OneDrive ; ls'
alias UD='cd /mnt/c/Users/carls/OneDrive\ -\ University\ of\ Delaware\ -\ o365 ; ls'
alias pc='cd /mnt/c/Users/carls ; ls'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias terminator='DISPLAY=:0 terminator &'
alias sessions='tmux ls'
alias pullConfig='cd ~/my_configs && git pull &&
 	cp .bash_aliases .bash_logout .bashrc .vimrc ~/ && 
	cp ~/my_configs/commands/* /usr/local/bin/ &&
	cd'
alias pushConfig='cd && cp .bash_aliases .bash_logout .bashrc .vimrc ~/my_configs && 
	cp /usr/local/bin/* ~/my_configs/commands/ &&
	cd'
