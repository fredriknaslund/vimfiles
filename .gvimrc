
set macligatures                                    "We want pretty symbols, when available

"Disable the print key for Macvim.
if has("gui_macvim")
    macmenu &File.Print key=<nop>
endif


"/
"/ NERDTree
"/

"Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>

"/
"/ CtrlP 
"/
nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

