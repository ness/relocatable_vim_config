" needs to be set to get pathhogen loaded ? will this be set by the system
" which -u prevents loading?
:set nocompatible
" for debugging the loading of scripts
" :set verbose=2
"
" http://stackoverflow.com/a/18734557 - get the directory of the current
" script
let s:current_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

let rtp=[]
call add(rtp, s:current_path . "/vim")
call add(rtp, s:current_path . "/vim/after")
let &runtimepath = join(rtp, ",")

runtime bundle/pathogen/autoload/pathogen.vim

execute pathogen#infect()
