let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
snoremap <silent>  c
xmap 	 <Plug>(emmet-expand-abbr)
nmap 	 <Plug>(emmet-expand-abbr)
snoremap  "_c
vmap  "-d
vmap c <Plug>(emmet-code-pretty)
vmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
nnoremap [63~ 3
nnoremap [62~ 3
nnoremap  d :YcmShowDetailedDiagnostic
nmap  ca <Plug>NERDCommenterAltDelims
xmap  cu <Plug>NERDCommenterUncomment
nmap  cu <Plug>NERDCommenterUncomment
xmap  cb <Plug>NERDCommenterAlignBoth
nmap  cb <Plug>NERDCommenterAlignBoth
xmap  cl <Plug>NERDCommenterAlignLeft
nmap  cl <Plug>NERDCommenterAlignLeft
nmap  cA <Plug>NERDCommenterAppend
xmap  cy <Plug>NERDCommenterYank
nmap  cy <Plug>NERDCommenterYank
xmap  cs <Plug>NERDCommenterSexy
nmap  cs <Plug>NERDCommenterSexy
xmap  ci <Plug>NERDCommenterInvert
nmap  ci <Plug>NERDCommenterInvert
nmap  c$ <Plug>NERDCommenterToEOL
xmap  cn <Plug>NERDCommenterNested
nmap  cn <Plug>NERDCommenterNested
xmap  cm <Plug>NERDCommenterMinimal
nmap  cm <Plug>NERDCommenterMinimal
xmap  c  <Plug>NERDCommenterToggle
nmap  c  <Plug>NERDCommenterToggle
xmap  cc <Plug>NERDCommenterComment
nmap  cc <Plug>NERDCommenterComment
nnoremap <silent>  K :call UncolorAllWords()
vnoremap <silent>  k :call InterestingWords('v')
nnoremap <silent>  k :call InterestingWords('n')
nnoremap <silent>   :nohlsearch
nnoremap <silent>  gp :let @+ = expand("%:p")
noremap  P "+P
noremap  p "+p
noremap  Y "+Y
noremap  y "+y
xnoremap <silent> <nop> :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> <nop> :call UltiSnips#ExpandSnippet()
nnoremap <silent> N :call WordNavigation(0)
imap ÎÔ *
map! Îu <C-End>
map! Îw <C-Home>
xnoremap Q :'<,'>:normal @q
nnoremap Q @q
xmap S <Plug>VSurround
xmap [% [%m'gv``
xmap ]% ]%m'gv``
xmap a% [%v]%
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nnoremap c :cs find c =expand("<cword>")
nmap ds <Plug>Dsurround
nnoremap d :cs find d =expand("<cword>")
nnoremap f :cs find f =expand("<cfile>")
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nnoremap <silent> n :call WordNavigation(1)
xnoremap p "0p
nnoremap t :cs find t =expand("<cword>")
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap  <BS> cscope
nnoremap <F8> :call conque_term#set_mappings("toggle")
vnoremap <silent> <F9> :call conque_term#send_selected(visualmode())
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <silent> <Plug>SurroundRepeat .
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
map <F12> :tabn 
map <F11> :tabedit  
map <F10> :tabp 
nnoremap <silent> <F5> :NERDTreeFind
nnoremap <silent> <F4> :NERDTreeToggle
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap <expr>  pumvisible() ? "=ExpandSnippetOrCarriageReturn()" : "\"
imap  <Plug>Isurround
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
inoremap [63~ 
inoremap [62~ 
inoremap <silent> <nop> =UltiSnips#ExpandSnippet()
nmap Îu <C-End>
nmap Îw <C-Home>
vmap ÎØ "*d
vmap Î× "*d
vmap ÎÕ "*y
vmap ÎÔ "-d"*P
nmap ÎÔ "*P
vmap Îu <C-End>
vmap Îw <C-Home>
inoremap  <BS>
cabbr w!! w !sudo tee "%"
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/dirs/backup
set cindent
set complete=.,w,b,u,t
set completefunc=youcompleteme#CompleteFunc
set completeopt=menuone
set cpoptions=aAceFsB
set display=lastline
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevelstart=99
set helplang=fr
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set listchars=trail:.,tab:>\ ,eol:$
set omnifunc=csscomplete#CompleteCSS
set operatorfunc=<SNR>21_opfunc
set pyxversion=3
set runtimepath=~/vimfiles,~\\.vim\\plugged\\ultisnips,~\\.vim\\plugged\\vim-react-snippets,~\\.vim\\plugged\\vim-airline,~\\.vim\\plugged\\emmet-vim,~\\.vim\\plugged\\Conque-Shell,~\\.vim\\plugged\\gruvbox,~\\.vim\\plugged\\vim-surround,~\\.vim\\plugged\\matchit.zip,~\\.vim\\plugged\\vim-snippets,~\\.vim\\plugged\\nerdtree,~\\.vim\\plugged\\vim-css-color,~\\.vim\\plugged\\vim-github-colorscheme,~\\.vim\\plugged\\vim-interestingwords,~\\.vim\\plugged\\vim-javascript,~\\.vim\\plugged\\vim-jsx,~\\.vim\\plugged\\nerdcommenter,~\\.vim\\plugged\\YouCompleteMe,C:\\Program\ Files\\Vim/vimfiles,C:\\Program\ Files\\Vim\\vim80,C:\\Program\ Files\\Vim/vimfiles/after,~/vimfiles/after,~\\.vim\\plugged\\ultisnips\\after,~\\.vim\\plugged\\vim-css-color\\after,~\\.vim\\plugged\\vim-javascript\\after,~\\.vim\\plugged\\vim-jsx\\after,~/.vim
set shiftwidth=2
set shortmess=filnxtToOIc
set sidescroll=1
set smartcase
set smarttab
set softtabstop=2
set nostartofline
set statusline=%-4m%f\ %y\ \ %=%{&ff}\ |\ %{&fenc}\ [%l:%c]
set noswapfile
set switchbuf=useopen
set synmaxcol=400
set tabstop=2
set textwidth=79
set ttimeoutlen=50
set undodir=~/.vim/dirs/undo
set undofile
set updatetime=500
set virtualedit=onemore
set wildignorecase
set wildmenu
set wildmode=list:longest,full
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\react\getting_things_done\src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +9 App.js
badd +1 components\list\index.js
badd +3 components\list\List.css
badd +1 redux\reducers\LogicReducers.js
badd +1 redux\reducers\UIReducers.js
badd +18 redux\store.js
badd +1 redux\action\index.js
badd +1 redux\reducers\index.js
badd +1 components\searchModal\index.js
badd +1 components\searchModal\searchModal.css
badd +1 redux\reducers\DataReducers.js
badd +1 components\addItems\index.js
badd +1 components\addModal\index.js
badd +1 components\searchModal\
badd +11 components\addModal\addModal.css
badd +4 components\menu\ModalToggler.js
badd +2 components\addModal\TaskAdd.js
badd +7 components\addModal\StepAdd.js
badd +1 components\addModal\StepAdd.css
badd +1 components\addModal\TaskAdd.css
badd +1 components\addModal\FilterAdd.css
badd +11 index.css
badd +1 components\addModal\FilterAdd.js
badd +1 bash\ -\ 1
badd +1 components\menu\InputBar.css
badd +0 components\menu\index.js
badd +0 components\menu\menuIndex.css
argglobal
silent! argdel *
$argadd Startify
set stal=2
edit App.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 98 + 99) / 198)
exe 'vert 2resize ' . ((&columns * 99 + 99) / 198)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
27
normal! zo
28
normal! zo
let s:l = 9 - ((6 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 08|
lcd ~\react\getting_things_done\src
wincmd w
argglobal
enew
file ~\react\getting_things_done\src\bash\ -\ 1
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <End> :py3 ConqueTerm_1.write_vk(35)
inoremap <buffer> <silent> <Home> :py3 ConqueTerm_1.write_vk(36)
inoremap <buffer> <silent> <C-Left> :py3 ConqueTerm_1.write_vk("37;1024")
inoremap <buffer> <silent> <C-Right> :py3 ConqueTerm_1.write_vk("39;1024")
inoremap <buffer> <silent> <C-Down> :py3 ConqueTerm_1.write_vk("40;1024")
inoremap <buffer> <silent> <C-Up> :py3 ConqueTerm_1.write_vk("38;1024")
inoremap <buffer> <silent> <Left> :py3 ConqueTerm_1.write_vk(37)
inoremap <buffer> <silent> <Right> :py3 ConqueTerm_1.write_vk(39)
inoremap <buffer> <silent> <Down> :py3 ConqueTerm_1.write_vk(40)
inoremap <buffer> <silent> <Up> :py3 ConqueTerm_1.write_vk(38)
inoremap <buffer> <silent> <S-Space> :py3 ConqueTerm_1.write(u(" "))
inoremap <buffer> <silent> <S-BS> :py3 ConqueTerm_1.write(u("\x08"))
inoremap <buffer> <silent> <BS> :py3 ConqueTerm_1.write(u("\x08"))
inoremap <buffer> <silent> <Del> :py3 ConqueTerm_1.write_vk(46)
nnoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(3)
nnoremap <buffer> <silent> C :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> P :py3 ConqueTerm_1.write_expr("@@")a
nnoremap <buffer> <silent> R :echo "Replace mode disabled in shell."
nnoremap <buffer> <silent> S :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> [p :py3 ConqueTerm_1.write_expr("@@")a
nnoremap <buffer> <silent> ]p :py3 ConqueTerm_1.write_expr("@@")a
nnoremap <buffer> <silent> c :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> p :py3 ConqueTerm_1.write_expr("@@")a
nnoremap <buffer> <silent> r :echo "Replace mode disabled in shell."
nnoremap <buffer> <silent> s :echo "Change mode disabled in shell."
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(1)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(2)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(3)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(4)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(5)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(6)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(7)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(8)
inoremap <buffer> <silent> 	 :py3 ConqueTerm_1.write_ord(9)
inoremap <buffer> <silent> <NL> :py3 ConqueTerm_1.write_ord(10)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(11)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(12)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(13)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(14)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(15)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(16)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(17)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(18)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(19)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(20)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(21)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(22)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(23)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(24)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(25)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(26)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(27)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(28)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(29)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(30)
inoremap <buffer> <silent>  :py3 ConqueTerm_1.write_ord(31)
inoremap <buffer> <silent>   :py3 ConqueTerm_1.write(u(" "))
inoremap <buffer> <silent> ! :py3 ConqueTerm_1.write_ord(33)
inoremap <buffer> <silent> " :py3 ConqueTerm_1.write_ord(34)
inoremap <buffer> <silent> # :py3 ConqueTerm_1.write_ord(35)
inoremap <buffer> <silent> $ :py3 ConqueTerm_1.write_ord(36)
inoremap <buffer> <silent> % :py3 ConqueTerm_1.write_ord(37)
inoremap <buffer> <silent> & :py3 ConqueTerm_1.write_ord(38)
inoremap <buffer> <silent> ' :py3 ConqueTerm_1.write_ord(39)
inoremap <buffer> <silent> ( :py3 ConqueTerm_1.write_ord(40)
inoremap <buffer> <silent> ) :py3 ConqueTerm_1.write_ord(41)
inoremap <buffer> <silent> * :py3 ConqueTerm_1.write_ord(42)
inoremap <buffer> <silent> + :py3 ConqueTerm_1.write_ord(43)
inoremap <buffer> <silent> , :py3 ConqueTerm_1.write_ord(44)
inoremap <buffer> <silent> - :py3 ConqueTerm_1.write_ord(45)
inoremap <buffer> <silent> . :py3 ConqueTerm_1.write_ord(46)
inoremap <buffer> <silent> / :py3 ConqueTerm_1.write_ord(47)
inoremap <buffer> <silent> 0 :py3 ConqueTerm_1.write_ord(48)
inoremap <buffer> <silent> 1 :py3 ConqueTerm_1.write_ord(49)
inoremap <buffer> <silent> 2 :py3 ConqueTerm_1.write_ord(50)
inoremap <buffer> <silent> 3 :py3 ConqueTerm_1.write_ord(51)
inoremap <buffer> <silent> 4 :py3 ConqueTerm_1.write_ord(52)
inoremap <buffer> <silent> 5 :py3 ConqueTerm_1.write_ord(53)
inoremap <buffer> <silent> 6 :py3 ConqueTerm_1.write_ord(54)
inoremap <buffer> <silent> 7 :py3 ConqueTerm_1.write_ord(55)
inoremap <buffer> <silent> 8 :py3 ConqueTerm_1.write_ord(56)
inoremap <buffer> <silent> 9 :py3 ConqueTerm_1.write_ord(57)
inoremap <buffer> <silent> : :py3 ConqueTerm_1.write_ord(58)
inoremap <buffer> <silent> ; :py3 ConqueTerm_1.write_ord(59)
inoremap <buffer> <silent> < :py3 ConqueTerm_1.write_ord(60)
inoremap <buffer> <silent> = :py3 ConqueTerm_1.write_ord(61)
inoremap <buffer> <silent> > :py3 ConqueTerm_1.write_ord(62)
inoremap <buffer> <silent> ? :py3 ConqueTerm_1.write_ord(63)
inoremap <buffer> <silent> @ :py3 ConqueTerm_1.write_ord(64)
inoremap <buffer> <silent> A :py3 ConqueTerm_1.write_ord(65)
inoremap <buffer> <silent> B :py3 ConqueTerm_1.write_ord(66)
inoremap <buffer> <silent> C :py3 ConqueTerm_1.write_ord(67)
inoremap <buffer> <silent> D :py3 ConqueTerm_1.write_ord(68)
inoremap <buffer> <silent> E :py3 ConqueTerm_1.write_ord(69)
inoremap <buffer> <silent> F :py3 ConqueTerm_1.write_ord(70)
inoremap <buffer> <silent> G :py3 ConqueTerm_1.write_ord(71)
inoremap <buffer> <silent> H :py3 ConqueTerm_1.write_ord(72)
inoremap <buffer> <silent> I :py3 ConqueTerm_1.write_ord(73)
inoremap <buffer> <silent> J :py3 ConqueTerm_1.write_ord(74)
inoremap <buffer> <silent> K :py3 ConqueTerm_1.write_ord(75)
inoremap <buffer> <silent> L :py3 ConqueTerm_1.write_ord(76)
inoremap <buffer> <silent> M :py3 ConqueTerm_1.write_ord(77)
inoremap <buffer> <silent> N :py3 ConqueTerm_1.write_ord(78)
inoremap <buffer> <silent> O :py3 ConqueTerm_1.write_ord(79)
inoremap <buffer> <silent> P :py3 ConqueTerm_1.write_ord(80)
inoremap <buffer> <silent> Q :py3 ConqueTerm_1.write_ord(81)
inoremap <buffer> <silent> R :py3 ConqueTerm_1.write_ord(82)
inoremap <buffer> <silent> S :py3 ConqueTerm_1.write_ord(83)
inoremap <buffer> <silent> T :py3 ConqueTerm_1.write_ord(84)
inoremap <buffer> <silent> U :py3 ConqueTerm_1.write_ord(85)
inoremap <buffer> <silent> V :py3 ConqueTerm_1.write_ord(86)
inoremap <buffer> <silent> W :py3 ConqueTerm_1.write_ord(87)
inoremap <buffer> <silent> X :py3 ConqueTerm_1.write_ord(88)
inoremap <buffer> <silent> Y :py3 ConqueTerm_1.write_ord(89)
inoremap <buffer> <silent> Z :py3 ConqueTerm_1.write_ord(90)
inoremap <buffer> <silent> [ :py3 ConqueTerm_1.write_ord(91)
inoremap <buffer> <silent> \ :py3 ConqueTerm_1.write_ord(92)
inoremap <buffer> <silent> ] :py3 ConqueTerm_1.write_ord(93)
inoremap <buffer> <silent> ^ :py3 ConqueTerm_1.write_ord(94)
inoremap <buffer> <silent> _ :py3 ConqueTerm_1.write_ord(95)
inoremap <buffer> <silent> ` :py3 ConqueTerm_1.write_ord(96)
inoremap <buffer> <silent> a :py3 ConqueTerm_1.write_ord(97)
inoremap <buffer> <silent> b :py3 ConqueTerm_1.write_ord(98)
inoremap <buffer> <silent> c :py3 ConqueTerm_1.write_ord(99)
inoremap <buffer> <silent> d :py3 ConqueTerm_1.write_ord(100)
inoremap <buffer> <silent> e :py3 ConqueTerm_1.write_ord(101)
inoremap <buffer> <silent> f :py3 ConqueTerm_1.write_ord(102)
inoremap <buffer> <silent> g :py3 ConqueTerm_1.write_ord(103)
inoremap <buffer> <silent> h :py3 ConqueTerm_1.write_ord(104)
inoremap <buffer> <silent> i :py3 ConqueTerm_1.write_ord(105)
inoremap <buffer> <silent> j :py3 ConqueTerm_1.write_ord(106)
inoremap <buffer> <silent> k :py3 ConqueTerm_1.write_ord(107)
inoremap <buffer> <silent> l :py3 ConqueTerm_1.write_ord(108)
inoremap <buffer> <silent> m :py3 ConqueTerm_1.write_ord(109)
inoremap <buffer> <silent> n :py3 ConqueTerm_1.write_ord(110)
inoremap <buffer> <silent> o :py3 ConqueTerm_1.write_ord(111)
inoremap <buffer> <silent> p :py3 ConqueTerm_1.write_ord(112)
inoremap <buffer> <silent> q :py3 ConqueTerm_1.write_ord(113)
inoremap <buffer> <silent> r :py3 ConqueTerm_1.write_ord(114)
inoremap <buffer> <silent> s :py3 ConqueTerm_1.write_ord(115)
inoremap <buffer> <silent> t :py3 ConqueTerm_1.write_ord(116)
inoremap <buffer> <silent> u :py3 ConqueTerm_1.write_ord(117)
inoremap <buffer> <silent> v :py3 ConqueTerm_1.write_ord(118)
inoremap <buffer> <silent> w :py3 ConqueTerm_1.write_ord(119)
inoremap <buffer> <silent> x :py3 ConqueTerm_1.write_ord(120)
inoremap <buffer> <silent> y :py3 ConqueTerm_1.write_ord(121)
inoremap <buffer> <silent> z :py3 ConqueTerm_1.write_ord(122)
inoremap <buffer> <silent> { :py3 ConqueTerm_1.write_ord(123)
inoremap <buffer> <silent> | :py3 ConqueTerm_1.write_ord(124)
inoremap <buffer> <silent> } :py3 ConqueTerm_1.write_ord(125)
inoremap <buffer> <silent> ~ :py3 ConqueTerm_1.write_ord(126)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal buflisted
setlocal buftype=nofile
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t
setlocal concealcursor=nic
setlocal conceallevel=3
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'conque_term'
setlocal filetype=conque_term
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'conque_term'
setlocal syntax=conque_term
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
lcd ~\react\getting_things_done\src
wincmd w
exe 'vert 1resize ' . ((&columns * 98 + 99) / 198)
exe 'vert 2resize ' . ((&columns * 99 + 99) / 198)
tabedit ~\react\getting_things_done\src\redux\store.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 1resize ' . ((&columns * 99 + 99) / 198)
exe '2resize ' . ((&lines * 22 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 99 + 99) / 198)
exe '3resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 98 + 99) / 198)
exe '4resize ' . ((&lines * 22 + 24) / 49)
exe 'vert 4resize ' . ((&columns * 98 + 99) / 198)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
10
normal! zo
21
normal! zo
22
normal! zo
33
normal! zo
54
normal! zo
let s:l = 18 - ((4 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
lcd ~\react\getting_things_done\src
wincmd w
argglobal
if bufexists('~\react\getting_things_done\src\redux\reducers\index.js') | buffer ~\react\getting_things_done\src\redux\reducers\index.js | else | edit ~\react\getting_things_done\src\redux\reducers\index.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
8
normal! zo
let s:l = 4 - ((3 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 027|
lcd ~\react\getting_things_done\src
wincmd w
argglobal
if bufexists('~\react\getting_things_done\src\redux\reducers\UIReducers.js') | buffer ~\react\getting_things_done\src\redux\reducers\UIReducers.js | else | edit ~\react\getting_things_done\src\redux\reducers\UIReducers.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
1
normal! zo
2
normal! zo
let s:l = 15 - ((7 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 022|
lcd ~\react\getting_things_done\src
wincmd w
argglobal
if bufexists('~\react\getting_things_done\src\redux\action\index.js') | buffer ~\react\getting_things_done\src\redux\action\index.js | else | edit ~\react\getting_things_done\src\redux\action\index.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(4)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
15
normal! zo
16
normal! zo
let s:l = 11 - ((4 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 022|
lcd ~\react\getting_things_done\src
wincmd w
exe '1resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 1resize ' . ((&columns * 99 + 99) / 198)
exe '2resize ' . ((&lines * 22 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 99 + 99) / 198)
exe '3resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 98 + 99) / 198)
exe '4resize ' . ((&lines * 22 + 24) / 49)
exe 'vert 4resize ' . ((&columns * 98 + 99) / 198)
tabedit ~\react\getting_things_done\src\components\addModal\addModal.css
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 99 + 99) / 198)
exe 'vert 2resize ' . ((&columns * 98 + 99) / 198)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'css'
setlocal filetype=css
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'css'
setlocal syntax=css
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
13
normal! zo
let s:l = 12 - ((11 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
lcd ~\react\getting_things_done\src
wincmd w
argglobal
if bufexists('~\react\getting_things_done\src\components\addModal\index.js') | buffer ~\react\getting_things_done\src\components\addModal\index.js | else | edit ~\react\getting_things_done\src\components\addModal\index.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
10
normal! zo
11
normal! zo
12
normal! zo
15
normal! zo
29
normal! zo
let s:l = 13 - ((12 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 017|
lcd ~\react\getting_things_done\src
wincmd w
exe 'vert 1resize ' . ((&columns * 99 + 99) / 198)
exe 'vert 2resize ' . ((&columns * 98 + 99) / 198)
tabedit ~\react\getting_things_done\src\components\addModal\TaskAdd.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 66 + 99) / 198)
exe 'vert 2resize ' . ((&columns * 65 + 99) / 198)
exe 'vert 3resize ' . ((&columns * 65 + 99) / 198)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
5
normal! zo
6
normal! zo
let s:l = 2 - ((1 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 015|
lcd ~\react\getting_things_done\src
wincmd w
argglobal
if bufexists('~\react\getting_things_done\src\components\addModal\StepAdd.js') | buffer ~\react\getting_things_done\src\components\addModal\StepAdd.js | else | edit ~\react\getting_things_done\src\components\addModal\StepAdd.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 2 - ((1 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 03|
lcd ~\react\getting_things_done\src
wincmd w
argglobal
if bufexists('~\react\getting_things_done\src\components\addModal\FilterAdd.js') | buffer ~\react\getting_things_done\src\components\addModal\FilterAdd.js | else | edit ~\react\getting_things_done\src\components\addModal\FilterAdd.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
5
normal! zo
6
normal! zo
let s:l = 2 - ((1 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 015|
lcd ~\react\getting_things_done\src
wincmd w
exe 'vert 1resize ' . ((&columns * 66 + 99) / 198)
exe 'vert 2resize ' . ((&columns * 65 + 99) / 198)
exe 'vert 3resize ' . ((&columns * 65 + 99) / 198)
tabedit ~\react\getting_things_done\src\components\menu\index.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 99 + 99) / 198)
exe 'vert 2resize ' . ((&columns * 98 + 99) / 198)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript.jsx'
setlocal filetype=javascript.jsx
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0{,0},0),0],0,,!^F,o,O,e,*<Return>,<>>,<<>,/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'javascript.jsx'
setlocal syntax=javascript.jsx
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 05|
lcd ~\react\getting_things_done\src
wincmd w
argglobal
if bufexists('~\react\getting_things_done\src\components\menu\menuIndex.css') | buffer ~\react\getting_things_done\src\components\menu\menuIndex.css | else | edit ~\react\getting_things_done\src\components\menu\menuIndex.css | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'css'
setlocal filetype=css
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=400
if &syntax != 'css'
setlocal syntax=css
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
50
normal! zo
59
normal! zo
let s:l = 36 - ((23 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 017|
lcd ~\react\getting_things_done\src
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 99 + 99) / 198)
exe 'vert 2resize ' . ((&columns * 98 + 99) / 198)
tabnext 5
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOIc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
