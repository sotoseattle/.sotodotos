" Make Ranger replace netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1


" nmap <space>r :RnvimrToggle<CR>
nnoremap <leader>r :RnvimrToggle<CR>
tnoremap <leader>r <C-\><C-n>:RnvimrToggle<CR>


" Fullscreen for initial layout
let g:rnvimr_layout = {
           \ 'relative': 'editor',
           \ 'width': &columns,
           \ 'height': &lines - 5,
           \ 'col': 0,
           \ 'row': 5,
           \ 'style': 'minimal'
           \ }
