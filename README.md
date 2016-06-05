# vim-squiffy

Syntax highlighting for [squiffy](http://textadventures.co.uk/squiffy) files
within [Vim](http://www.vim.org/).

## Installation with Pathogen

[pathogen](https://github.com/tpope/vim-pathogen) is a useful package manager
for Vim. Once it is installed,

```
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/cmc333333/vim-squiffy.git
```

## Manual Installation

As with other Vim plugins, you can manually install this by copying the
contents of all of the contained folders into the same folder within your
`~/.vim/` directory:

```
mkdir -p ~/.vim/syntax ~/.vim/ftdetect
cp syntax/squiffy.vim ~/.vim/syntax/squiffy.com
cp ftdetect/squiffy.vim ~/.vim/ftdetect/squiffy.vim
```
