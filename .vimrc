"                         ╔══════════════════════════╗
"                         ║                          ║
"                         ║ "Configuraçãoes de VIM"  ║
"                         ║"Autor: Marcelo de Moraes"║
"                         ║                          ║
"                         ╚══════════════════════════╝

"Essas configurações foram feitas objetivando um melhor uso do editor VIM.
"Tudo foi bem comentado para melhor compreenção do que está acontecendo.
"Para mais detalhes sobre as configurações usar :h nomeDaConfig
"ex da opcao 'title' -> :h title

"Espero que goste :)





"   ◤                        ◥   "
"    Gerenciador de Plugins      "
"            Vim Plug            "
"   ◣                        ◢   "


"Instala automaticamente o gerenciador de plugins Vim Plug e instala os
if empty(glob('~/.vim/autoload/plug.vim'))
 silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" autocmd VimEnter * PlugInstall --sync | source $MYVIMRC "instala automaticamente os plugins
endif

" :PlugInstall para instalar os plugins listados abaixo
call plug#begin('~/.vim/plugged')
	Plug 'bling/vim-airline' "tab inferior com status
	Plug 'vim-airline/vim-airline-themes' "temas
	Plug 'tpope/vim-surround' "edita caracteres delimitadores
	Plug 'raimondi/delimitmate' "fecha caracteres delimitadores
	Plug 'sjl/gundo.vim' "arvore de undos
	Plug 'scrooloose/nerdtree' "arvore de arquivos
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tomasr/molokai' "tema molokai
	"Plug 'shougo/neocomplete.vim' "auto-complete - vim 7.4+
	Plug 'scrooloose/nerdcommenter' "facilita comentarios
call plug#end()






"   ◤                        ◥   "
"    INÍCIO DAS CONFIGURAÇÕES    "
"   ◣                        ◢   "


"Muda o leader de / para ,
let mapleader = ","
let g:neocomplete#enable_at_startup = 1
let g:NERDSpaceDelims = 1 "add um espaco no comando de comentar



"   ◤        ◥   "
"      MAPS      "
"   ◣        ◢   "
"leader + f altera entre numero absoluto e relativo
map <leader>f :set relativenumber!<CR>

" Y age como D e C, copia ate o final da linha, ao inves de agir como yy
map Y y$

"toggle gundo plugin(ver a arvore de undos)
nnoremap <leader>u :GundoToggle<CR>

"leader + espaço remove o highlight da pesquisa
nnoremap <leader><space> :nohlsearch<CR>

" Shortcut de esconder/mostrar o fold com espaco
nnoremap <space> za

" crtl+n abre a nerdtree
map <C-n> :NERDTreeToggle<CR>

"Setas nao funcionam mais(apenas h, j , k, l)
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>




"   ◤       ◥   "
"     CORES     "
"   ◣       ◢   "
"Tema Molokai
try "Detecta se existe o tema molokai
	"set termguicolors "caso nao habilite 256 cores
	set t_Co=256
	colorscheme molokai
	let g:rehash256 = 1 "terminal de 256 cores
	let g:molokai_original = 1
catch /^Vim\%((\a\+)\)\=:E185/
  :silent! "Se nao existir, nao faz nada
endtry

"Tema Vim AirLine Plugin(barra inferior)
let g:airline_theme='molokai'
set noshowmode "desabilita informacoes inferiores i.e. -- INSERT -- , reduntante



"   ◤          ◥   "
"    Indentação    "
"   ◣          ◢   "
filetype plugin indent on
set autoindent "indentacao automatica
set cindent "indentacao para linguagem C
set smartindent "identacao geral
set backspace=indent,eol,start
"nova linha quando eh criado um {}
let delimitMate_expand_cr=1
set shiftwidth=4 "tamanho do tab na indentacao
set tabstop=4 "tab 4 espacos



"   ◤         ◥   "
"      Geral      "
"   ◣         ◢   "
syntax enable "ative highlight de sintaxe
set number "numero da linha
set cursorline "highlight na linha atual
set wildmenu "menu de selecao de sugestoes no modo comando
set showmatch "mostra match de paratensis, chaves, colchetes...
set lazyredraw "melhoria de desempenho
set history=1000 "historico de comandos
set showcmd "mostra comandos sendo digitados na barra inferior
set hidden "melhor uso de buffers na mesma janela
"set backup "gera arquivo de backup
set ttyfast "melhoria de desempenho, ver :h ttyfast
set title "muda o titulo do terminal
set encoding=utf-8 "codificacao utf-8
set autoread
set colorcolumn=80 "coluna lateral
highlight ColorColumn ctermbg=235 guibg=#2c2d27
set list "Mostrar tabs e trails(como o caracter •)
set listchars=tab:•\ ,trail:•,extends:»,precedes:« "Extends aparecem com a funcao nowrap ativada

" Retorna a posicao que estava quando o arquivo foi fechado
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif



"   ◤        ◥   "
"      Undo      "
"   ◣        ◢   "
"Garante que a a pasta que armazena os Undo exista
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir "pasta que armazena undos
set undofile "permite que o historico de undos seja salvo em um arquivo
set undolevels=1000 "tamanho do historico de undos


" Pesquisa
set incsearch "highlight na pesquisa equanto eh realizada
set hlsearch "highlight apos a pesquisa ser feita


" Folds - esconde linhas
set foldenable "habilita poder usar o fold
set foldlevelstart=10 "nivel inicial de folding, pra nao dobrar tudo no inicio, quanto mais {{, maior o nivel
set foldnestmax=10
set foldmethod=syntax "usa sintaxe para esconder: {} em C
