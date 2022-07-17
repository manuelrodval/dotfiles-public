#! /bin/bash

# .bashrc config
bash_source="source ${PWD}/.bashrc"
bashrc_file=~/.bashrc
touch $bashrc_file
grep -qxF "$bash_source" $bashrc_file || (echo -e "\n# Source config files" >> "$bashrc_file" && echo $bash_source >> "$bashrc_file")


# Config Vim
mkdir -p ~/.config
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
vim_source="source ${PWD}/nvim/init.vim"
coc_soure="source ${PWD}/nvim/coc.vim"
init_file=~/.config/nvim/init.vim
grep -qxF "$vim_source" $init_file || echo "$vim_source" >> $init_file 
grep -qxF "$coc_source" $init_file || echo "$coc_source" >> $init_file 

# Source changes
source ~/.bashrc
