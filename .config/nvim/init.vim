" Begin Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let mapleader=','
set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Required:
set runtimepath+=/Users/femiagbabiaka/.local/cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/femiagbabiaka/.local/cache/dein')
  call dein#begin('/Users/femiagbabiaka/.local/cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/femiagbabiaka/.local/cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('/usr/local/opt/fzf')
  call dein#add('junegunn/fzf.vim')
  call dein#add('kennykaye/vim-relativity')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('fatih/vim-go')
  call dein#add('rust-lang/rust.vim')
  call dein#add('mileszs/ack.vim')
  call dein#add('w0rp/ale')
  call dein#add('tpope/vim-dispatch')
  call dein#add('tpope/vim-fugitive')
  call dein#add('hashivim/vim-terraform')


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>
nnoremap <Leader>a :Ack!<Space>


cnoreabbrev Ack Ack!
if executable('ag')
  let g:ackprg = 'ag --vimgrep --hidden'
endif

let g:relativity_insert_toggle=1
