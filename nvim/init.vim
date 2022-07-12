" ---------------------------------------------
"Fundamentals
set encoding=utf-8
set cursorline
set cursorcolumn
set number
set relativenumber
set statusline=%f

" Plugins
" ---------------------------------------------

call plug#begin(stdpath('data').'\plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'windwp/nvim-autopairs'
Plug 'hoob3rt/lualine.nvim'
Plug 'sainnhe/everforest'
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v1.*'}

call plug#end()

" Various Plugin Config
" ---------------------------------------------

colorscheme everforest

" COC configurations
" ---------------------------------------------

source ~/.config/nvim/coc.vim

" Nvim-Autopairs config
" ---------------------------------------------
lua << EOF
require("nvim-autopairs").setup()
EOF

" Nvim-lualine config
" ---------------------------------------------
lua << EOF
require("lualine").setup({
	options = {
		theme = 'everforest'
		}
})
EOF

" Nvim-Terminal config
" ---------------------------------------------
lua << EOF
require("toggleterm").setup({
	open_mapping = [[<c-t>]],
	direction = "horizontal",
	size = 15
})
EOF

" Nvim-tree config
" ---------------------------------------------

lua <<EOF
 require'nvim-tree'.setup {
	open_on_tab=true,
	git = {ignore=false},
	view = {
		side = "right",
		number = true,
		relativenumber = true
		}
	}
EOF

" Indent Blankline
" ---------------------------------------------

lua <<EOF

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
require("indent_blankline").setup {
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
	}
EOF


" Find files using Telescope command-line sugar.
" ---------------------------------------------
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Key Maps
" ---------------------------------------------

"" Keymap for nvim tree
nmap <F2> :NvimTreeToggle <cr>

"" Keymap for alt + move 
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"" Fuzzy finder Keymaps

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>FF <cmd>CocCommand prettier.formatFile<cr>
nnoremap <buffer><silent> <c-q> <cmd>call Black()<cr>

"" General Keymaps
nmap <A-v> :vsplit <cr>
nmap <A-s> :split <cr>
nmap <A-t> :ToggleTermToggleAll <cr>
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<cr>
:command W w
:command Wq wq
:command Q q
:command WQ wq

" AutoCMD
" ---------------------------------------------
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
