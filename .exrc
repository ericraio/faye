if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <F5> :echo 'The plugin gundo is disabled for the following reason: Vim is compiled without python support.'
inoremap <silent> <S-Tab> =snipMate#BackwardsSnippet()
inoremap <C-Tab> 	
imap <C-9> 9gt
imap <C-8> 8gt
imap <C-7> 7gt
imap <C-6> 6gt
imap <C-5> 5gt
imap <C-4> 4gt
imap <C-3> 3gt
imap <C-2> 2gt
imap <C-1> 1gt
imap <C-0> 0gt
map! <S-Insert> <MiddleMouse>
imap <silent> <F4> :set invpaste:set paste?
map  <S-Down>
xnoremap 	 s:let g:snipmate_content_visual=getreg( 1 )
snoremap <silent> 	 i<Right>=snipMate#TriggerSnippet()
vmap <NL> ]egv
nmap <NL> ]e
vmap  [egv
nmap  [e
nnoremap <silent>  :CtrlP
map  :CtrlP
nmap ! <Plug>Kwbd
nmap o <Plug>ZoomWin
snoremap  b<BS>
snoremap % b<BS>%
snoremap ' b<BS>'
nmap <silent> ,m :bprev
nmap <silent> ,. :bnext
nmap <silent> ;l :tabprev
nmap <silent> ;' :tabnext
nmap <D-L> :RunSpecLine
nmap <D-R> :RunSpec
inoremap ï o
imap Û <<i
imap Ý >>i
xmap S <Plug>VSurround
snoremap U b<BS>U
nmap [xx <Plug>unimpairedLineXmlEncode
xmap [x <Plug>unimpairedXmlEncode
nmap [x <Plug>unimpairedXmlEncode
nmap [uu <Plug>unimpairedLineUrlEncode
xmap [u <Plug>unimpairedUrlEncode
nmap [u <Plug>unimpairedUrlEncode
nmap [yy <Plug>unimpairedLineStringEncode
xmap [y <Plug>unimpairedStringEncode
nmap [y <Plug>unimpairedStringEncode
xmap [e <Plug>unimpairedMoveUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
vmap [% [%m'gv``
snoremap \ b<BS>\
map \zw :ZoomWin
map \rt :TagbarToggle
map \n :NERDTreeToggle
nmap \gp :Git push
nmap \gc :Gcommit
nmap \gl :Glog
nmap \gd :Gdiff
nmap \gs :Gstatus
nmap \gb :Gblame
map \f :echo 'The plugin ack is disabled for the following reason: The ack program is not installed.'
map \/ <Plug>NERDCommenterToggle
nmap <silent> \w\t <Plug>VimwikiTabMakeDiaryNote
nmap <silent> \w\w <Plug>VimwikiMakeDiaryNote
nmap <silent> \wi <Plug>VimwikiDiaryIndex
nmap <silent> \ws <Plug>VimwikiUISelect
nmap <silent> \wt <Plug>VimwikiTabIndex
nmap <silent> \ww <Plug>VimwikiIndex
nmap \ca <Plug>NERDCommenterAltDelims
xmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
xmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
xmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
nmap \cA <Plug>NERDCommenterAppend
xmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
xmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
xmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
nmap \c$ <Plug>NERDCommenterToEOL
xmap \cn <Plug>NERDCommenterNested
nmap \cn <Plug>NERDCommenterNested
xmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
xmap \c  <Plug>NERDCommenterToggle
nmap \c  <Plug>NERDCommenterToggle
xmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
xmap \nr <Plug>NrrwrgnDo
vnoremap <silent> \\w :call EasyMotion#WB(1, 0)
onoremap <silent> \\w :call EasyMotion#WB(0, 0)
nnoremap <silent> \\w :call EasyMotion#WB(0, 0)
vnoremap <silent> \\t :call EasyMotion#T(1, 0)
onoremap <silent> \\t :call EasyMotion#T(0, 0)
nnoremap <silent> \\t :call EasyMotion#T(0, 0)
vnoremap <silent> \\n :call EasyMotion#Search(1, 0)
onoremap <silent> \\n :call EasyMotion#Search(0, 0)
nnoremap <silent> \\n :call EasyMotion#Search(0, 0)
vnoremap <silent> \\k :call EasyMotion#JK(1, 1)
onoremap <silent> \\k :call EasyMotion#JK(0, 1)
nnoremap <silent> \\k :call EasyMotion#JK(0, 1)
vnoremap <silent> \\j :call EasyMotion#JK(1, 0)
onoremap <silent> \\j :call EasyMotion#JK(0, 0)
nnoremap <silent> \\j :call EasyMotion#JK(0, 0)
vnoremap <silent> \\gE :call EasyMotion#EW(1, 1)
onoremap <silent> \\gE :call EasyMotion#EW(0, 1)
nnoremap <silent> \\gE :call EasyMotion#EW(0, 1)
vnoremap <silent> \\f :call EasyMotion#F(1, 0)
onoremap <silent> \\f :call EasyMotion#F(0, 0)
nnoremap <silent> \\f :call EasyMotion#F(0, 0)
vnoremap <silent> \\e :call EasyMotion#E(1, 0)
onoremap <silent> \\e :call EasyMotion#E(0, 0)
nnoremap <silent> \\e :call EasyMotion#E(0, 0)
vnoremap <silent> \\b :call EasyMotion#WB(1, 1)
onoremap <silent> \\b :call EasyMotion#WB(0, 1)
nnoremap <silent> \\b :call EasyMotion#WB(0, 1)
vnoremap <silent> \\W :call EasyMotion#WBW(1, 0)
onoremap <silent> \\W :call EasyMotion#WBW(0, 0)
nnoremap <silent> \\W :call EasyMotion#WBW(0, 0)
vnoremap <silent> \\T :call EasyMotion#T(1, 1)
onoremap <silent> \\T :call EasyMotion#T(0, 1)
nnoremap <silent> \\T :call EasyMotion#T(0, 1)
vnoremap <silent> \\N :call EasyMotion#Search(1, 1)
onoremap <silent> \\N :call EasyMotion#Search(0, 1)
nnoremap <silent> \\N :call EasyMotion#Search(0, 1)
vnoremap <silent> \\ge :call EasyMotion#E(1, 1)
onoremap <silent> \\ge :call EasyMotion#E(0, 1)
nnoremap <silent> \\ge :call EasyMotion#E(0, 1)
vnoremap <silent> \\F :call EasyMotion#F(1, 1)
onoremap <silent> \\F :call EasyMotion#F(0, 1)
nnoremap <silent> \\F :call EasyMotion#F(0, 1)
vnoremap <silent> \\E :call EasyMotion#EW(1, 0)
onoremap <silent> \\E :call EasyMotion#EW(0, 0)
nnoremap <silent> \\E :call EasyMotion#EW(0, 0)
vnoremap <silent> \\B :call EasyMotion#WBW(1, 1)
onoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nnoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nnoremap <silent> \T :BuffergatorTabsClose
nnoremap <silent> \t :BuffergatorTabsOpen
nnoremap <silent> \B :BuffergatorClose
nnoremap <silent> \b :BuffergatorOpen
map \= =
nmap \hs :set hlsearch! hlsearch?
nmap <silent> \fc /\v^[<=>]{7}( .*|$)
nmap <silent> \tw :set invwrap:set wrap?
nmap <silent> \ul :t.|s/./=/g|:nohls
map \et :tabe %%
map \ev :vsp %%
map \es :sp %%
map \ew :e %%
nmap <silent> \md :!mkdir -p %:p:h
nmap <silent> \cd :lcd %:h
nmap \L mQgewvu`Q
nmap \U mQgewvU`Q
nmap \l mQviwu`Q
nmap \u mQviwU`Q
nmap \fef ggVG=
nmap ]xx <Plug>unimpairedLineXmlDecode
xmap ]x <Plug>unimpairedXmlDecode
nmap ]x <Plug>unimpairedXmlDecode
nmap ]uu <Plug>unimpairedLineUrlDecode
xmap ]u <Plug>unimpairedUrlDecode
nmap ]u <Plug>unimpairedUrlDecode
nmap ]yy <Plug>unimpairedLineStringDecode
xmap ]y <Plug>unimpairedStringDecode
nmap ]y <Plug>unimpairedStringDecode
xmap ]e <Plug>unimpairedMoveDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap <silent> ]T <Plug>unimpairedTLast
nmap <silent> ]t <Plug>unimpairedTNext
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/`'
xnoremap <silent> s :echoerr 'surround.vim: Visual mode s has been removed in favor of S'
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=snipMate#BackwardsSnippet()
nmap <F5> :echo 'The plugin gundo is disabled for the following reason: Vim is compiled without python support.'
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
xnoremap <silent> <Plug>unimpairedMoveDown :exe 'normal! m`'|exe '''<,''>move''>+'.v:count1``
xnoremap <silent> <Plug>unimpairedMoveUp :exe 'normal! m`'|exe '''<,''>move--'.v:count1``
nmap <silent> <Plug>unimpairedTLast :exe "tlast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedTFirst :exe "tfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedTNext :exe "tnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedTPrevious :exe "tprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQLast :exe "clast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQFirst :exe "cfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQNext :exe "cnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQPrevious :exe "cprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLLast :exe "llast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLFirst :exe "lfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLNext :exe "lnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLPrevious :exe "lprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBLast :exe "blast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBFirst :exe "bfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBNext :exe "bnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBPrevious :exe "bprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedALast :exe "last ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedAFirst :exe "first ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedANext :exe "next ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedAPrevious :exe "previous ".(v:count ? v:count : "")
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
xnoremap <SNR>50_VisualNrrwRgn :call nrrwrgn#VisualNrrwRgn(visualmode())
nnoremap <silent> <Plug>Kwbd :Kwbd
map <C-9> 9gt
map <C-8> 8gt
map <C-7> 7gt
map <C-6> 6gt
map <C-5> 5gt
map <C-4> 4gt
map <C-3> 3gt
map <C-2> 2gt
map <C-1> 1gt
map <C-0> 0gt
map <S-Insert> <MiddleMouse>
vmap <C-Down> ]egv
vmap <C-Up> [egv
nmap <C-Down> ]e
nmap <C-Up> [e
map <Up> gk
map <Down> gj
nmap <silent> <F4> :set invpaste:set paste?
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 u=snipMate#TriggerSnippet()
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
cmap  =expand("%:p:h") . "/"
inoremap <silent> 	 =snipMate#ShowAvailableSnips()
imap  <Plug>Isurround
imap  :CtrlP
imap  <Plug>AlwaysEnd
cnoremap %% =expand('%:h').'/'
omap Û <<
omap Ý >>
nmap Û <<
nmap Ý >>
vmap Û <gv
vmap Ý >gv
imap \/ <Plug>NERDCommenterTogglei
cmap w!! %!sudo tee > /dev/null %
let &cpo=s:cpo_save
unlet s:cpo_save
set paste
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//
set noequalalways
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hlsearch
set ignorecase
set incsearch
set isident=@,48-57,_,192-255,$
set iskeyword=@,48-57,_,192-255,$,-
set laststatus=2
set listchars=tab:\ \ ,trail:.,extends:>,precedes:<
set modelines=0
set ruler
set runtimepath=~/.vim/janus/vim/core/before,~/.vim/janus/vim/core/janus,~/.vim/janus/vim/core/pathogen,~/.vim/janus/vim/colors/getafe,~/.vim/janus/vim/colors/github,~/.vim/janus/vim/colors/irblack,~/.vim/janus/vim/colors/janus-colors,~/.vim/janus/vim/colors/molokai,~/.vim/janus/vim/colors/pyte,~/.vim/janus/vim/colors/sampler-pack,~/.vim/janus/vim/colors/solarized,~/.vim/janus/vim/colors/vividchalk,~/.vim/janus/vim/langs/arduino,~/.vim/janus/vim/langs/coffeescript,~/.vim/janus/vim/langs/csv,~/.vim/janus/vim/langs/cucumber,~/.vim/janus/vim/langs/git,~/.vim/janus/vim/langs/haml,~/.vim/janus/vim/langs/handlebars,~/.vim/janus/vim/langs/javascript,~/.vim/janus/vim/langs/markdown,~/.vim/janus/vim/langs/mustache,~/.vim/janus/vim/langs/nodejs,~/.vim/janus/vim/langs/puppet,~/.vim/janus/vim/langs/rails,~/.vim/janus/vim/langs/rspec,~/.vim/janus/vim/langs/scala,~/.vim/janus/vim/langs/scss,~/.vim/janus/vim/langs/tasks,~/.vim/janus/vim/langs/textile,~/.vim/janus/vim/tools/buffergator,~/.vim/janus/vim/tools/css-color,~/.vim/janus/vim/tool
set shiftwidth=2
set smartcase
set statusline=%f\ %m\ %r%{fugitive#statusline()}%#warningmsg#%{SyntasticStatuslineFlag()}%*Line:%l/%L[%p%%]Col:%vBuf:#%n[%b][0x%B]
set tabstop=2
set wildignore=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*.swp,*~,._*
set window=0
" vim: set ft=vim :
