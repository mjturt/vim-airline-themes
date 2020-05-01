" Normal mode                                    " guifg guibg ctermfg ctermbg
let s:N1 = [ '#bcbcbc' , '#009966' , 17 , 129  ]
let s:N2 = [ '#d75fd7' , '#000b1e' , 201 , 18 ]
let s:N3 = [ '#c6c6c6' , '#00091B' , 46 , 17 ]

" Insert mode
let s:I1 = [ '#CACFD2' , '#d300c4' , 17 , 46  ]
let s:I2 = [ '#d75fd7' , '#000b1e' , 201 , 18 ]
let s:I3 = [ '#c6c6c6' , '#00091B' , 46 , 17 ]

" Visual mode
let s:V1 = [ '#5f0000' , '#ff5faf' , 17 , 166 ]

" Replace mode
let s:RE = [ '#c6c6c6' , '#ce537a' , 17, 161 ]

let g:airline#themes#cyberpunk#palette = {}

let g:airline#themes#cyberpunk#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#cyberpunk#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#cyberpunk#palette.insert_replace = {
            \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#cyberpunk#palette.visual = {
            \ 'airline_a': [ s:V1[0]   , s:V1[1]   , s:V1[2]   , s:V1[3]   , ''     ] }

let g:airline#themes#cyberpunk#palette.replace = copy(g:airline#themes#cyberpunk#palette.normal)
let g:airline#themes#cyberpunk#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#cyberpunk#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
