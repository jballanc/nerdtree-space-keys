" ============================================================================
" File:        nerdtree-space-keys.vim
" Description: plugin that adapts Spacemacs Neo Tree key bindings for NERDTree
" Maintainer:  Joshua Ballanco <jballanc at gmail dot com>
" Last Change: 22 Aug 2015
" License:     This program is distributed under the terms of the BSD 2-Clause
"              license. Please see COPYING for full license details.
" ============================================================================

if exists('g:loaded_nerdtree_space_keys')
    finish
endif
let g:loaded_nerdtree_space_keys = 1

" Function: s:SID()   {{{1
function s:SID()
    if !exists("s:sid")
        let s:sid = matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
    endif
    return s:sid
endfun
let s:SNR = '<SNR>' . s:SID() . '_'

call NERDTreeAddKeyMap({ 'key':           'l',
                       \ 'callback':      s:SNR.'descendTree',
                       \ 'quickhelpText': 'open tree and go to first child',
                       \ 'scope':         'DirNode' })
call NERDTreeAddKeyMap({ 'key':           'l',
                       \ 'callback':      s:SNR.'openFile',
                       \ 'quickhelpText': 'open file',
                       \ 'scope':         'FileNode' })
call NERDTreeAddKeyMap({ 'key':           'h',
                       \ 'callback':      s:SNR.'closeOrAscendTree',
                       \ 'quickhelpText': 'close dir or move to parent dir',
                       \ 'scope':         'DirNode' })
call NERDTreeAddKeyMap({ 'key':           'h',
                       \ 'callback':      s:SNR.'ascendTree',
                       \ 'quickhelpText': 'move to parent dir',
                       \ 'scope':         'FileNode' })

function! s:descendTree(dirnode)
    call a:dirnode.open()
    call b:NERDTree.render()
    if a:dirnode.getChildCount() > 0
        let chld = a:dirnode.getChildByIndex(0, 1)
        call chld.putCursorHere(0, 0)
    end
endfunction

function! s:openFile(filenode)
    call a:filenode.activate({'reuse': 'all', 'where': 'p'})
endfunction

function! s:closeOrAscendTree(dirnode)
    if a:dirnode.isOpen
        call a:dirnode.close()
        call b:NERDTree.render()
    else
        call s:ascendTree(a:dirnode)
    endif
endfunction

function! s:ascendTree(node)
    let parent = a:node.parent
    if parent != {}
        call parent.putCursorHere(0, 0)
    end
endfunction


" vim: set sw=4 sts=4 et fdm=marker:
