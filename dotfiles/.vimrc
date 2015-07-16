call pathogen#infect()

syntax on
filetype  indent plugin on
set background=light
colorscheme molokai 
"colorscheme codeschool 
set paste "permet de copier dans vim sans repetitions"
" VIM Configuration - Vincent Jousse
" Annule la compatibilité avec l’ancetre Vi : totalement indispensable

"transformer
set modeline
set nocompatible
set sw=4 
set ts=4 
set sts=4 
set expandtab
"

"Tabulations"
set ai
set tabstop =4
set shiftwidth =4
set softtabstop =4

" -- Affichage
set title " Met a jour le titre de votre fenêtre ou de votre terminal
set number " Affiche le numero des lignes
set ruler "Affiche la position actuelle du curseur
set wrap " Affiche les lignes trop longues sur plusieurs lignes
set showmatch "affiche automatiquement ) après ("
set showmode " show the current mode on the last line
set showcmd " show informations about selection while in visual mode


set scrolloff=3 " Affiche un minimum de 3 lignes autour du curseur (pour le scroll)

""Correction orthographique"
"set  spelllang =en,fr
"set  spell
"" spell checking"
"	function! ToggleSpellLang()
"		 toggle between en and fr"
"		if &spelllang =~# 'en'
"			:set spelllang=fr
"	    else
"	        :set spelllang=en
"	    endif
"	endfunction
"	toggle spell off or on"
"	nnoremap <F7> :setlocal spell!<CR> 
"	toggle language"
"	nnoremap <F8> :call ToggleSpellLang()<CR>                                  
"


"switch spellcheck languages
set  spellsuggest =5
let g:myLang = 0
let g:myLangList = [ "nospell", "fr", "en" ]
function! MySpellLang()
"loop through languages
let g:myLang = g:myLang + 1
if g:myLang >= len(g:myLangList) | let g:myLang = 0 | endif
if g:myLang == 0 | set nospell | endif
if g:myLang == 1 | setlocal spell spelllang=fr | endif
if g:myLang == 2 | setlocal spell spelllang=en | endif
echo "language:" g:myLangList[g:myLang]
endf
map <F8> :call MySpellLang()<CR>
imap <F8> <C-o>:call MySpellLang()<CR>
"toggle spell on or off"
"nnoremap <F7> :setlocal spell!<CR> 

"Undo files
set undofile
set undodir=~/.vim/undodir


" -- Recherche
set ignorecase " Ignore la casse lors d’une recherche
set smartcase  " Si une recherche contient une majuscule, re-active la sensibilité a la casse
set incsearch  " Surligne les résultats de recherche pendant la saisie
set hlsearch   " Surligne les résultats de recherche

" -- Beep 
"set visualbell " Empeche Vim de beeper
"set noerrorbells  " Empeche Vim de beeper


" Active le comportement ’habituel’ de la touche retour en arriere
set backspace=indent,eol,start
" Cache les fichiers lors de l’ouverture d’autres fichiers
set hidden

let mapleader = ","

"Conf vim airline
"let g:airline#extensions#tabline#enabled = 1
"set laststatus=2


"indication si depassement des 80 colonnes
highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn','\%81v',100)
"set ColorColumn=81
