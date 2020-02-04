"scripte utf-8
" vim: set fenc=utf-8 tw=0:


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 프로그램 기본 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 오리지널 Vi 와의 호환성을 없애고, Vim 만의 기능들을 쓸 수 있게 함.
"set nocp

" 모든 옵션을 원래대로 복원
"set all&

" 명령어 기록을 남길 갯수 지정
"set hi=100

" 백스페이스 사용
set bs=indent,eol,start

" 인코딩 설정
" 문서를 읽을 때 BOM 을 자동으로 제거하려면, fencs 맨 앞에 ucs-bom 를 추가하세요.
"set fenc=utf-8
"set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,latin1,ucs-2le


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 편집 기능 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 파일의 종류를 자동으로 인식
"filetype on

" 커서의 위치를 항상 보이게 함.
set ru

" 완성중인 명령을 표시
set sc

" 줄 번호 표시
"set nu

" 탭 크기 설정
set ts=4
set sw=4

" 탭 -> 공백 변환 기능 (사용 안함)
set noet
set sts=0

" 자동 줄바꿈 안함
set wrap


set noai


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 검색 기능 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"검색어 입력되는것을 바로 보여주게 설정
set incsearch

" 검색어 강조 기능
set hls
 
" 검색시 파일 끝에서 처음으로 되돌리기 안함
"set nows

" 검색시 대소문자를 구별하지 않음
"set ic

" 똑똑한 대소문자 구별 기능 사용
set scs
 
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 모양 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" GUI 이면, 시작시 크기 설정
if has("gui_running")
    set lines=50
    set co=125
endif
 
" 추적 수준을 최대로
set report=0

" 항상 status 라인을 표시하도록 함.
set ls=2

" 상태표시줄 포맷팅
"set statusline=%h%F%m%r%=[%l:%c(%p%%)] 


" background 효과 dark.
set background=dark

" colorscheme을 elfload로 세팅
"colorscheme elflord


" 화면 우측 하단에 현재 커서의 위 치를 보여 준다
set ruler 

 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype 기능 & Syntax Highlighting 기능
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 파일의 종류를 자동으로 인식
filet plugin indent on

" 알아서 하이라이팅
syntax on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" 자동 들여쓰기 사용
set ai
 
" 똑똑한 들여쓰기 사용
set si



au BufWinEnter *.hpp set syntax=cpp


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 단축키 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" 상용구 설정
"iab xdate <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
"iab xtime <C-R>=strftime("%H:%M:%S")<CR>
"iab xname Ohyung
"iab xcoding /*<CR>Project Name : <CR><CR>Version : 1.0<CR>Copyright (c) 2007 : Ohyung ( ohyung@ohyung.com )<CR>Last modified at : <C-R>=strftime("%Y.%m.%d")<CR><CR>*/<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 편리한 기능
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tab 자동 완성시 가능한 목록을 보여줌
set wmnu

" 파일 탐색기 설정
let g:explVertical=1
let g:explSplitRight=1
let g:explStartRight=1
let g:explWinSize=20


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coding용 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 블럭시작
"map <F2> V
"map <F3> y
"map <F4> p

" F5 컴파일링 , F6 실행 , F8 함수보기
"map <F5> :w!<CR>:!gcc % -o %<.out<CR>
"map <F6> :!./%<.out<CR>
"map <F8> K
"F6 HexManager 모드 변경
"map <F9> <Plug>HexManager

"Taglist Key 설정
"nnoremap <silent> <F2> <c-w><c-w>
"nnoremap <silent> <F3> :Tlist<CR>
"nnoremap <silent> <F4> :TlistUpdate<CR>
"nnoremap <silent> <F5> :TlistSync<CR> 

"map <F1> v]}zf              "Folding
"map <F2> zo                 "No Folding
"map <F3> :Tlist<cr>         "Taglist
"map <F4> :BufExplorer<cr>   "BufExplorer
map <F5> <C-w>w<C-w>_
map <F6> <C-w>=
map <F9> <Plug>HexManager
map <PageUp> <C-U><C-U>
map <PageDown> <C-D><C-D>
map <silent> <F12> :Tlist<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 기타 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Taglist Width 설정
let Tlist_WinWidth = 25

" 매크로 실행중에 화면을 다시 그리지 않음
set lz
 
" 프로그램 시작시 플러그인 로드
set lpl

" unix dos mac 줄 변경자 모두 다 읽을 수 있도록 합니다.
set ffs=unix,dos,mac

" 자동 완성기능 중 보여주기 리스트 수정
set completeopt=menu


" set the line number
set number

filetype plugin on

"autocomplpop.vim 설정
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col-1]!~'\k'
		return "\<TAB>"
	else
		if pumvisible()
			return "\<C-N>"
		else
			return "\<C-N>\<C-P>"
		end
	endif
endfunction

"vi가 이전위치를 기억하지 못할 때
au BufReadPost *  
			\ if line("'\"") > 0 && line("'\"") <= line("$") |  
			\   exe "norm g`\"" |  
			\ endif

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=yellow ctermfg=black
hi PmenuSbar ctermbg=blue

set expandtab
set tabstop=4
"set tags+=//home/jhpark/swm_repo/tags
"set tags+=//home/jhpark/work/swm_gen/tags
"
"set tags+=//home/orollo/work/Chip/tf1/bbox_tf1/tags
"set tags+=//home/orollo/work/Chip/dist-eyeq-src/tags
"set tags+=//home/orollo/work/Chip/CV22/SDK/20190325_CV22SDK_7_1_002_Thinkware/Tar_rtos_cv22_svc_base_defconfig/rtos/tags
"set tags+=//home/orollo/work/Chip/H22/rtos/tags
"set tags+=//home/orollo/study/mp4/tags
"set tags+=//home/orollo/study/mp4_demux/HapReadTest/tags
"set tags +=//mnt/Data/8890_ANDROID/platform-20190419/tags
set tags +=/home/orollo/work/Hyundai_DN8/tw-dvrs-ui/tags
set tags +=/home/orollo/study/libzmq/tags

"set tags+=/~/work/Chip/dist-eyeq-src/rtos/tags
set hlsearch

set nocompatible
filetype off



set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" 파일 목록이 표시 된다
Plugin 'The-NERD-tree'

" 함수와 변수의 목록이 표시 된다
Plugin 'taglist.vim'

" 상태 보기, 오른쪽 하단에 표시된다
Plugin 'vim-airline/vim-airline'

" git 연동 vim
Plugin 'airblade/vim-gitgutter'

" 문법 오류 확인
Plugin 'scrooloose/syntastic'

" 파일 찾기 ctrl + p 를 누르면 활성화 된다
Plugin 'ctrlpvim/ctrlp.vim'

" 자동 완성 기능
" 글을 쓰면 자동으로 목록이 뜬다
Plugin 'neocomplcache'

" 들여쓰기를 표시해준다
Plugin 'Yggdroot/indentLine'

" 라인 정렬, 특정 문자로 라인을 정렬한다. Vim 연산자로 정의되어서 이동 명령어와 함께 사용될 수 있다.
" tabular에 비하면 최소한의 기능만 가지고 있다. 예를 들면 텍스트 블럭 후 gl, 명령으로 ,(comma) 기준으로 정렬할 수 있다.
Plugin 'tommcdo/vim-lion'

" deal with csv files
Plugin 'chrisbra/csv.vim'

" \ 키를 두번 누르면 활성화
Plugin 'Lokaltog/vim-easymotion'

" Directory diff
" DirDiff [dir a] [dir b]
Plugin 'DirDiff.vim'


call vundle#end()            " required
filetype plugin indent on    " required


let Tlist_Use_Right_Window   = 1
nmap <F9> :NERDTreeToggle<CR>
nnoremap <F10> :TlistToggle<CR>

let g:EasyMotion_leader_key = '\'
" nmap <Leader>s <Plug>(easymotion-s1)
" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1
nmap <Leader>w <Plug>(easymotion-w)
nmap <Leader><leader> <Plug>(easymotion-bd-w)
nmap <Leader>b <Plug>(easymotion-b)
