set encoding=utf-8
set fileencodings=utf-8,cp950

let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = "/home/kehongying/.ycm_extra_conf.py"
let g:ycm_server_python_interpreter = '/usr/bin/python3.9'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
let g:ycm_filetype_whitelist = {"c":1, "cpp":1, "python":1, "vimrc":1, "bashrc":1, "sh":1}

let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1
let g:materialmonokai_custom_lint_indicators=0
let g:airline_theme='materialmonokai'
let g:materialmonokai_subtle_airline=1

syntax on
set t_Co=256
set nu
set ai
set shiftwidth=4
set tabstop=4
set mouse=a
set backspace=2
set ru
set incsearch
set history=100
set cursorline
set number relativenumber
set smartindent
set expandtab
set background=dark
set termguicolors
filetype indent on

colorscheme     material-monokai
hi CursorLine cterm=none ctermbg=DarkMagenta ctermfg=White
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=None

if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

nnoremap start i#include <stdio.h><CR>#include <stdlib.h><CR>#include <string.h><CR>#pragma GCC optimized ("unroll-loops")<CR>#pragma GCC optimized ("O3")<CR><CR>int main()<CR>{<CR>return 0;<CR><Esc>i}
nnoremap compare iint compare(const void *a, const void *b)<CR>{<CR>return *(int *)a - *(int *)b;<CR><Esc>i}
nnoremap KMP ipi[0] = -1;<CR>k = -1;<CR>for(int i = 1; i < M_len; i ++){<CR>	while(k > -1 && M[k + 1] != M[i])<CR>	k = pi[k];<CR><Esc>i	if(M[k + 1] == M[i])<CR>	k ++;<CR><Esc>i	pi[i] = k;<CR><Esc>i}<CR><CR>k = -1;<CR>for(int i = 0; i < N_len; i ++){<CR>	while(k > -1 && M[k + 1] != N[i])<CR>	k = pi[k];<CR><Esc>i	if(M[k + 1] == N[i])<CR>	k ++;<CR><Esc>i	if(k == M_len - 1) //find<CR>	k = pi[k];<CR><Esc>i}
nnoremap gcd iint gcd(int a, int b)<CR>{<CR>if(a < b){<CR>int temp = a;<CR>a = b;<CR>b = temp;<CR><Esc>i	}<CR>if(a % b == 0)<CR>return b;<CR>else<CR>return gcd(a % b, b);<CR><ESC>i}
nnoremap finput iint hasEOF = 0;<CR>int readchar(){<CR>static int N = 1 << 20;<CR>static char buf[1<<20];<CR>static char *p = buf, *end = buf;<CR>if(p == end){<CR>if((end = buf + fread(buf, 1, N, stdin)) == buf){<CR>hasEOF = 1;<CR>return EOF;<CR>}<CR>p = buf;<CR>}<CR>return *p++;<CR>}<CR>int ReadInt(int *x){<CR>char c, neg;<CR>while((c = readchar()) < '-')<CR>if(c == EOF)<CR>return 0;<CR>neg = (c == '-') ? -1 : 1;<CR>*x = (neg == 1) ? c-'0' : 0;<CR>while((c = readchar()) >= '0')<CR>*x = (*x << 3) + (*x << 1) + c-'0';<CR>*x *= neg;<CR>return 1;<CR>}<CR>//int x; while(ReadInt(&x)){code}


