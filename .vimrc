""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-Plug (Plugin Manager) Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Automatically download Vim-Plug and Install new plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Plugins
Plug 'tpope/vim-fugitive'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }   " Colorscheme
Plug 'scrooloose/nerdtree'                          " Filesystem browser
Plug 'valloric/youcompleteme'                       " Autocomplete
" Plug 'airblade/vim-gitgutter'
Plug 'yuttie/comfortable-motion.vim'                " Fancy Scrolling
Plug 'scrooloose/syntastic'                         " Syntax checking

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                          " Line numbers
set expandtab                       " Tab key produces spaces
set tabstop=4                       " Width of a tab
set shiftwidth=4                    " Width  of an indentation for reindent operations
                                    "  << and >> and automatic indentation
set backspace=indent,eol,start

filetype plugin indent on           " filetype-specific detection, plugin loading,
                                    "   and indentation preference loading
set autoindent                      " Auto-indents when entering newlines

autocmd BufWritePre * :%s/\s\+$//e  " Removes trailing spaces when saving

set mouse=a                         " Enables mouse in all vim modes
if has("mouse_sgr")                 " Tries to enable mouse support beyond column 223
   set ttymouse=sgr
else
   set ttymouse=xterm2
end

set laststatus=2                    " Turns on the status line always
"set statusline=%F                   " Set a custom status line format

set t_Co=256                        " Enable 256 colors
set background=dark                 " Set the background color explicitly
syntax enable                       " Syntax Highlighting
colorscheme jellybeans              " Set the colorscheme to Jellybeans

autocmd vimenter * NERDTree         " Open and close (below) NERDTree with vim
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
" noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
