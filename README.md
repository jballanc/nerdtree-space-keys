# NERDTree Space Keys

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
-----+-------
  l  | When a directory is selected, expand it and highlight the first child. When a file is selected, open it for editing.
  h  | Collapses a directory if its expanded. Moves up one level in the hierarchy.


## License

This program is distributed under the terms of the BSD 2-Clause license. Please
see COPYING for full license details.
