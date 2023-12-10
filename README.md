# monosplash.vim

A monochromatic vim theme with a splash of color.

It can help you quickly tell apart different vim sessions at a glance.
It supports the GUI and 256 colour terminals.

## Installation

**Manual install:** Copy all of the files to your `~/.vim` directory.

**Install via a vim plugin manager:**

- [NeoBundle](https://github.com/Shougo/neobundle.vim): `NeoBundle 'mcombeau/monosplash.vim'`
- [Pathogen](https://github.com/tpope/vim-pathogen): `cd ~/.vim/bundle && git clone https://github.com/mcombeau/monosplash.vim.git`
- [Plug](https://github.com/junegunn/vim-plug): `Plug 'mcombeau/monosplash.vim'`
- [Vundle](https://github.com/VundleVim/Vundle.vim): `Plugin 'mcombeau/monosplash.vim'`

## Usage

```vim
:colorscheme monosplash
```

If no other options are set, the splash color will be chosen based on the hash of the current working directory.

The options you can set in your `.vimrc` are:

```vim
" Set your preferred accent color for all vim instances
let g:monosplash_color = 'yellow' " the default
let g:monosplash_color = 'orange'
let g:monosplash_color = 'red'
let g:monosplash_color = 'green'
let g:monosplash_color = 'blue'
let g:monosplash_color = 'magenta'
let g:monosplash_color = 'cyan'

" Allow/Disallow monosplash to set the splash color using a hash of the current working directory.
let g:monosplash_auto_cwd_colour = 0
let g:monosplash_auto_cwd_colour = 1 " the default

" Allow/Disallow monosplash to set the background color (if disallowed, uses the terminal default)
let g:monosplash_no_bg = 0 " the default
let g:monosplash_no_bg = 1

" Set the colorscheme after adjusting options
colorscheme monosplash
```

<!-- a neat thing to do is change the accent colour based on the working directory when vim starts: -->

<!-- ```vim -->
<!-- if getcwd() =~ 'code/my-cool-project' -->
<!--   let g:accent_colour = 'cyan' -->
<!--   colo accent -->
<!-- endif -->
<!-- ``` -->

## Credits

Based on a combination of these beautiful themes:

- [Komau](https://github.com/ntk148v/komau.vim) by ntk148v
- [Accent](https://github.com/Alligator/accent.vim) by Alligator

## Contribute

Feel free to submit a pull request or open an issue for any bugfixes or improvements!
