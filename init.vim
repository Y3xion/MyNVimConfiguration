
#configuracion basica
set number
set mouse=a
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set relativenumber





#plugins

call plug#begin("~/.vim/plugged")

Plug 'sainnhe/sonokai'

call plug#end()


#GRUVOBX CONFIGURACION

colorscheme sonokai
set background=dark


function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction




