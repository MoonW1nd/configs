set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" Interface
  Bundle 'git://github.com/kien/ctrlp.vim.git'
  " Solarized Colorscheme
  "Bundle 'git://github.com/altercation/vim-colors-solarized.git'
  Bundle 'git://github.com/scrooloose/nerdtree.git'
  " Perform all your vim insert mode completions with Tab
  Bundle 'git://github.com/ervandew/supertab.git'
  " Command-T
  " Bundle 'git://github.com/wincent/Command-T.git'
  " Bundle 'git://github.com/vim-scripts/taglist.vim.git'
  " Depends: http://ctags.sourceforge.net/
  " Bundle 'git://github.com/int3/vim-taglist-plus.git'
  " Shows 'Nth match out of M' at every search
  Bundle 'git://github.com/vim-scripts/IndexedSearch.git'
  " Bundle 'git://github.com/rphillips/vim-zoomwin.git'
  Bundle 'git://github.com/mattn/emmet-vim.git'
  " TextMate-like snippets
  "Bundle 'git://github.com/vim-scripts/UltiSnips.git'
  " TextMate-like snippets
  " Bundle 'git://github.com/msanders/snipmate.vim.git'
  " Miripiruni's XSLT & CSS snippets
  " Bundle 'git://github.com/miripiruni/vimi-snippets.git'
  " RegExp search
  Bundle 'git://github.com/mileszs/ack.vim.git'
  " Provides easy code commenting
  Bundle 'git://github.com/scrooloose/nerdcommenter.git'
  " Mappings to easily delete, change and add surroundings in pairs
  " Bundle 'git://github.com/tpope/vim-surround.git'
  " Git wrapper
  " Bundle 'git://github.com/tpope/vim-fugitive.git'
  " Bundle 'git://github.com/tsaleh/vim-align.git'
  " Bundle 'git://github.com/vim-scripts/bufexplorer.zip.git'
  " Automatic closing of quotes, parenthesis, brackets, etc.
  Bundle 'git://github.com/vim-scripts/delimitMate.vim.git'
  "Bundle 'git://github.com/sjl/gundo.vim.git'
  "Bundle 'git://github.com/edsono/vim-matchit.git'
  "Bundle 'git://github.com/sjl/threesome.vim.git'
  "Bundle 'git://github.com/chrismetcalf/vim-yankring.git'
  "Bundle 'git://github.com/slack/vim-fuzzyfinder.git'
  "Bundle 'git://github.com/vim-scripts/vimwiki.git'

  "Check sintax
  "Bundle 'git://github.com/scrooloose/syntastic.git'
  " You need to install webapi-vim for gist-vim
  " Also you need to do `git config --global github.user <username>`
  Bundle 'mattn/webapi-vim'
  " HTML/HAML
  " HTML5 omnicomplete and syntax
  Bundle 'git://github.com/othree/html5.vim.git'
  Bundle 'git://github.com/hokaccha/vim-html5validator.git'
  Bundle 'git://github.com/tyru/operator-html-escape.vim.git'
  " Runtime files for Haml and Sass
  Bundle 'git://github.com/tpope/vim-haml.git'
  Bundle 'git://github.com/gregsexton/MatchTag.git'
  " CSS/LESS
  " CSS3 syntax support
  Bundle 'git://github.com/hail2u/vim-css3-syntax.git'
  " Highlight colors in css files
  Bundle 'git://github.com/ap/vim-css-color.git'
  Bundle 'git://github.com/groenewege/vim-less.git'
  Bundle 'git://github.com/miripiruni/vim-better-css-indent.git'
  Bundle 'git://github.com/miripiruni/CSScomb-for-Vim.git'
  " JavaScript
  " Vastly improved vim's javascript indentation
  Bundle 'git://github.com/pangloss/vim-javascript.git'
  " Syntax for jQuery keywords and css selectors
  Bundle 'git://github.com/itspriddle/vim-jquery.git'
  " CoffeeScript support
  Bundle 'git://github.com/kchmck/vim-coffee-script.git'
  Bundle 'git://github.com/walm/jshint.vim.git'
  " JSON
  Bundle 'git://github.com/leshill/vim-json.git'
  " PHP
  Bundle 'git://github.com/vim-scripts/php.vim--Garvin.git'
  Bundle 'git://github.com/2072/PHP-Indenting-for-VIm.git'
  " Perl
  Bundle 'git://github.com/petdance/vim-perl.git'
  " Jade
  Bundle 'git://github.com/digitaltoad/vim-jade.git'
  " Stylus
  Bundle 'git://github.com/wavded/vim-stylus.git'
  " Go
  Bundle 'git://github.com/fatih/vim-go.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Visually setting VIM
syntax on
set background=dark
colorscheme stellarized
set number
set listchars=eol:¬,tab:>>,trail:~,extends:>,precedes:<,space:·
set list
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent

" NERDTree
nnoremap <Bs> :<C-u>NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=0
" Disable display of the 'Bookmarks' label and 'Press ? for help' text
let NERDTreeMinimalUI=1
" Use arrows instead of + ~ chars when displaying directories
let NERDTreeDirArrows=1
let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" VimWiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/'}]
