" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
 call plug#begin('~/.config/nvim/plugged')
"
 " Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'dracula/vim'
Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"
"" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
"
Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }
"
"" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'  }
"Plug 'Valloric/YouCompleteMe'

 " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*'  }
""
""" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'itchyny/lightline.vim'
"
Plug 'airblade/vim-gitgutter' "추가,삭제,변경내역
Plug 'tpope/vim-fugitive' "깃 연동

Plug 'scrooloose/syntastic' "문법 체크
Plug 'Lokaltog/vim-easymotion' "커서이동

Plug 'scrooloose/nerdcommenter' "주석
Plug 'edkolev/promptline.vim' "쉘프롬프트

Plug 'vim-scripts/vcscommand.vim' "소스 버전 컨트롤
""먼지
Plug 'majutsushi/tagbar'

Plug 'xuhdev/SingleCompile'

Plug 'terryma/vim-multiple-cursors'
"위까지 모름
Plug 'vim-scripts/taglist.vim'

Plug 'Yggdroot/indentLine' "들여쓰기 세로줄 라인
Plug 'mhinz/vim-signify' "버전 관리 파일 상태표시

Plug 'pangloss/vim-simplefold' "코드접기
Plug 'peterrincker/vim-argumentative' "함수 인자 위치변경

Plug 'tommcdo/vim-lion' "라인정렬
Plug 'dyng/ctrlsf.vim' "여러 파일 동시에 수정

Plug 'ctrlpvim/ctrlp.vim' "파일 찾기 ctrl + p 를 누르면 활성화 된다


Plug 'dart-lang/dart-vim-plugin'

Plug 'schickling/vim-bufonly' "현재 버퍼뺴고 모든 버퍼 삭제
Plug 'sjl/gundo.vim' "수정 되돌리기 트리

Plug 'andrewradev/sideways.vim' "단어 좌우 이동 ,로 분리된거
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'iamcco/markdown-preview.nvim'
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1

"
call plug#end()

"make sign column always visiable
set signcolumn=yes

"make indent 4 spaces
set shiftwidth=4
set expandtab

"enable neovim-LanguageClient
let g:LanguageClient_autoStart = 1

"set clangd as server when it is C++
let g:LanguageClient_serverCommands = {
    \ 'cpp': ['clangd'],
    \ }

"set complete function for deoplete.vim
"set completefunc=LanguageClient#complete


set autoindent
set cindent
set smartindent
set tabstop=4
set title
set wrap
set number
set linebreak
set showmatch
set mouse=r
set laststatus=2
colorscheme koehler
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"inoremap <silent><expr> <TAB>
"      \ pumvisible() ?  "<C-n>" :
"      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"let g:coc_snippet_next = '<tab>'

"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
"/usr/share/nvim/runtime/colors
let g:promptline_theme = 'dracula'
let g:lightline = {
    \ 'colorscheme' : 'dracula',
    \ }
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif





"key map setting
nmap <F3> :NERDTreeToggle<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
"            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

"change parameter position
nnoremap <c-a> :SidewaysLeft<cr>
nnoremap <c-s> :SidewaysRight<cr>

nmap<F10> :SingleCompileRun<cr> "F10누르면 컴파일후 실행, 누르기전에 저장해야함
nmap<F9> :SingleCompile<cr>  "F9누르면 컴파일

let g:Tlist_Use_Right_Window = 1
nnoremap <silent> <F12> :TlistToggle<Cr>

let g:EasyMotion_leader_key = '\'
let g:EasyMotion_smartcase = 1
nmap <Leader>w <Plug>(easymotion-w)
nmap <Leader><leader> <Plug>(easymotion-bd-w)
nmap <Leader>b <Plug>(easymotion-b)



set tags +=/home/orollo/work/Hyundai_DN8/tw-dvrs-joons/tags 
