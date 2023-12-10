let s:white			= [ '#bfc2cf' , 255 ]
let s:medium_gray	= [ '#7b7c82' , 243 ]
let s:medium_gray	= [ '#4f5158' , 238 ]
let s:black			= [ '#191a20' , 238 ]
let s:lightest_gray	= [ '#d3d3d5' , 254 ]
let s:yellow		= [ '#FED442' , 221 ]
let s:red			= [ '#B31D28' , 124 ]
let s:orange		= [ '#E36209' , 166 ]

let g:splash_colors = {}
let g:splash_colors['red']     = [ "#e06c75", 167 ]
let g:splash_colors['orange']  = [ "#ee9360", 173 ]
let g:splash_colors['green']   = [ "#98c379", 149 ]
let g:splash_colors['yellow']  = [ "#e5c07b", 179 ]
let g:splash_colors['blue']    = [ "#61afe7", 74 ]
let g:splash_colors['magenta'] = [ "#c688cd", 176 ]
let g:splash_colors['cyan']    = [ "#56b6c2", 73 ]

let g:splash_auto_cwd_color = get(g:, 'monosplash_auto_cwd_color', 0)

let s:splash = get(g:, 'monosplash_color', 'yellow')
let s:splash = get(g:, 'monosplash_color', s:splash)
let s:no_bg = get(g:, 'monosplash_no_bg', 0)

" 32 bit fowler-noll-vo hash
function! s:fnv1a(str)
  let hash = 2166136261
  let i = 0
  while i < len(a:str)
    let c = char2nr(a:str[i])
    let hash = xor(hash, c)
    let hash = hash * 16777619
    let i += 1
  endwhile
  return hash
endfunction

if get(g:, 'monosplash_auto_cwd_color', 0)
  let hash = s:fnv1a(getcwd())
  let key_index = abs(hash) % len(g:splash_colors)
  let color = keys(g:splash_colors)[key_index]
  let s:splash = color
endif

let s:monosplash	= get(splash_colors, s:splash)

let s:p = {
    \ 'normal': {},
    \ 'inactive': {},
    \ 'insert': {},
    \ 'replace': {},
    \ 'visual': {},
    \ 'tabline': {}
    \ }

let s:p.normal.left     = [[ s:monosplash, s:black ], [ s:white, s:medium_gray ]]
let s:p.normal.right    = [[ s:white, s:medium_gray ], [ s:white, s:medium_gray ]]
let s:p.insert.left     = [[ s:monosplash, s:black ], [ s:white, s:medium_gray ]]
let s:p.visual.left     = [[ s:monosplash, s:black ], [ s:white, s:medium_gray ]]
let s:p.replace.left     = [[ s:monosplash, s:black ], [ s:white, s:medium_gray ]]

let s:p.inactive.right  = [[ s:lightest_gray, s:medium_gray ], [ s:medium_gray, s:medium_gray ]]
let s:p.inactive.left   = [[ s:lightest_gray, s:medium_gray ], [ s:medium_gray, s:medium_gray ]]
let s:p.inactive.middle = [[ s:lightest_gray, s:medium_gray ]]

let s:p.normal.middle   = [[ s:lightest_gray,  s:medium_gray  ]]
let s:p.normal.error    = [[ s:red,    s:medium_gray  ]]
let s:p.normal.warning  = [[ s:orange, s:medium_gray  ]]

let s:p.tabline.left    = [[ s:lightest_gray, s:medium_gray ]]
let s:p.tabline.tabsel  = [[ s:medium_gray, s:yellow    ]]
let s:p.tabline.middle  = [[ s:yellow, s:medium_gray    ]]


let g:lightline#colorscheme#monosplash#palette = lightline#colorscheme#flatten(s:p)
