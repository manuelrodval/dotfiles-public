# Manuel's dotfiles

Dotfile configuration for WSL2 bash in windows. If for some reason you want to use these files, I recommend to review the code and remove things you don't want or need.

## Installation

Clone this repo wherever you want (preferably in ~/projects) and follow this steps.

1. [Install Oh-my-posh](https://ohmyposh.dev/docs/installation/linux#installation)
2. [Install neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
3. [Install Vim-Plug](https://github.com/junegunn/vim-plug) 
4. Run config-files.sh to source config files.

	```
	sudo bash ${PWD}/config-files.sh
	```
5. Launch neovim and run `:PlugInstall`
6. [Install COC extensions for lsp.](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)

Optionally use the following tools.
- [z - jump around](https://github.com/rupa/z)
