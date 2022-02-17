	let mapleader = "\<Space>"
	
	packadd! dracula_pro
	syntax enable
	let g:dracula_colorterm = 1
	colorscheme dracula_pro_van_helsing

	set clipboard=unnamedplus

	call plug#begin('~/.vim/plugged')

		Plug 'tpope/vim-commentary'
		Plug 'vim-scripts/ReplaceWithRegister'
		Plug 'bkad/camelcasemotion'
		Plug 'tommcdo/vim-exchange'
		Plug 'machakann/vim-swap'
		Plug 'machakann/vim-highlightedyank'
		Plug 'andrewradev/switch.vim'
		Plug 'scrooloose/nerdTree'
		Plug 'justinmk/vim-sneak'
		Plug 'tpope/vim-surround'
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		Plug 'ctrlpvim/ctrlp.vim'
		Plug 'bling/vim-airline'
	call plug#end()
	let g:switch_mapping = "<leader>j"
	let g:highlightedyank_highlight_duration = 100
	let g:camelcasemotion_key = '<leader>'

	map <A-j> <C-W>j
	map <A-k> <C-W>k
	map <A-h> <C-W>h
	map <A-l> <C-W>l

	xmap gc  <Plug>VSCodeCommentary
	nmap gc  <Plug>VSCodeCommentary
	omap gc  <Plug>VSCodeCommentary
	nmap gcc <Plug>VSCodeCommentaryLine

	map Q gq
	nmap Y y$
	nnoremap <Tab> >>
	nnoremap <S-Tab> <<
	vnoremap <Tab> >gv 
	vnoremap <S-Tab> <gv

	let g:switch_custom_definitions = [ ['foo', 'bar', 'baz'] , ['!=', '=='], ['<', '>'] , ['<=', '>=']]

	set relativenumber
	let g:livepreview_previewer = 'open -a Preview'
	autocmd Filetype tex setl updatetime=1

	function! FindProjectRoot(lookFor)
	    let pathMaker='%:p'
	    while(len(expand(pathMaker))>len(expand(pathMaker.':h')))
		let pathMaker=pathMaker.':h'
		let fileToCheck=expand(pathMaker).'/'.a:lookFor
		if filereadable(fileToCheck)||isdirectory(fileToCheck)
		    return expand(pathMaker)
		endif
	    endwhile
	    return 0
	endfunction
