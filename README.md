# vim-base64
[![Powered by vital.vim](https://img.shields.io/badge/powered%20by-vital.vim-80273f.svg)](https://github.com/vim-jp/vital.vim)  
Encodes/Decodes visually selected strings to/from base64 strings.  
Heavily inspired by [christianrondeau/vim-base64](https://github.com/christianrondeau/vim-base64).  

[![asciicast](https://asciinema.org/a/150191.png)](https://asciinema.org/a/150191)

## Installation
Use your favorite plugin manager.  

## Usage
In visual mode:  
- `<leader>atob` to convert a string to base64 string.
- `<leader>btoa` to convert a base64 string to original string.

## Differences from christianrondeau/vim-base64
- Using pure-VimScript base64 implementation by [vim-jp/vital.vim](https://github.com/vim-jp/vital.vim)
- No support for regex currently
- Keeping content of register `"`
- Improved error handling
