# monosplash.vim

A monochromatic vim theme with a splash of color.

The accent color is customizable and can be automatically picked depending on the current working directory. This can enable you tell different vim sessions apart at a glance.

Monosplash supports GUI and 256 color terminals.

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

### Options

The options you can set in your `.vimrc` are:

```vim
" Set your preferred splash color for all vim instances
" (This option overrides the auto_cwd_color option, but can be overridden by
" directory-specific color option)
let g:monosplash_color = 'yellow' " (default if auto_cwd_color is disabled)
let g:monosplash_color = 'orange'
let g:monosplash_color = 'red'
let g:monosplash_color = 'green'
let g:monosplash_color = 'blue'
let g:monosplash_color = 'magenta'
let g:monosplash_color = 'cyan'

" Enable/disable setting the splash color using a hash of the current working directory
" {This option is overridden if a global splash color is set)
let g:monosplash_auto_cwd_color = 0 " disable
let g:monosplash_auto_cwd_color = 1 " enable (default)

" Enable/disable no background color mode (if enabled, uses the terminal's default background)
let g:monosplash_no_bg = 0 " disable (default)
let g:monosplash_no_bg = 1 " enable

" Set the colorscheme after adjusting options
colorscheme monosplash
```

You can also set a specific splash color for a specific directory:

```vim
" This overrides global options auto_cwd_color and global splash color in a specific directory
" (This needs to be added after the global splash color option if there is one)
if getcwd() =~ 'dir/my-project'
  let g:monosplash_color = 'cyan'
endif
```

### Lightline Theme

To enable the included [lightline](https://github.com/itchyny/lightline.vim) theme (which uses the above settings as well):

```vim
set noshowmode
let g:lightline = {'colorscheme': 'monosplash'}

```

## Credits

Monosplash is based on a combination of these beautiful themes:

- [Accent](https://github.com/Alligator/accent.vim) by Alligator
- [Komau](https://github.com/ntk148v/komau.vim) by ntk148v

## Contribute

Feel free to submit a pull request or open an issue for any bugfixes or improvements!

---

Made by mcombeau | LinkedIn: [mcombeau](https://www.linkedin.com/in/mia-combeau-86653420b/) | Website: [codequoi.com](https://www.codequoi.com)
