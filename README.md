# NERDTree Space Keys

[![Project Status: Suspended – Initial development has started, but there has not yet been a stable, usable release; work has been stopped for the time being but the author(s) intend on resuming work.](http://www.repostatus.org/badges/latest/suspended.svg)](http://www.repostatus.org/#suspended)

This is a collection of keyboard shortcuts inspired by the keyboard navigation
for [NeoTree](https://github.com/jaypei/emacs-neotree) in
[Spacemacs](https://github.com/syl20bnr/spacemacs).


## Installation

1. If you haven't already, install [NERDTree](https://github.com/scrooloose/nerdtree)

2. Install the plugin **with Pathogen**:

        cd ~/.vim/bundle
        git clone https://github.com/jballanc/nerdtree-space-keys.git

   Or **with Vundle**:

        Bundle 'jballanc/nerdtree-space-keys'

   Or **with vim-plug**:

        Plug 'scrooloose/nerdtree' | Plug 'jballanc/nerdtree-space-keys'

   Or ... well, you get the idea.


## Usage

The following additional key-mappings will be automatically available whenever
NERDTree is activated:

 Key | Action
:---:|:------
  l  | Expand a directory and highlight its first child, or open a file for editing.
  h  | Collapses an expanded directory, or moves up one level in the hierarchy.


## License

This program is distributed under the terms of the BSD 2-Clause license. Please
see COPYING for full license details.
