# okonayakodji's nvim setup

## Table of Contents

<!--toc:start-->
- [okonayakodji's nvim setup](#okonayakodjis-nvim-setup)
  - [Table of Contents](#table-of-contents)
  - [Dependencies](#dependencies)
  - [How to install](#how-to-install)
<!--toc:end-->

## Dependencies
- gopls (`sudo pacman -S gopls`)
- haskell-language-server (`ghcup install hls` or `sudo pacman -S haskell-language-server`)
- lua-language-server (`sudo pacman -S lua-language-server`)
- marksman (`sudo pacman -S marksman`)
- pyright (`sudo pacman -S pyright`)
- rust_analyzer (`rustup component add rust-analyzer` or `sudo pacman -S rust-analyzer`)
- xclip (`sudo pacman -S xclip`)

## How to install
1. Install nvim
2. Install dependencies
3. Run:
```bash
git clone https://github.com/okonayakodji/nvim ~/.config/nvim
```
4. Install [packer](https://github.com/wbthomason/packer.nvim)
5. Run nvim
6. Run the nvim command `:PackerInstall`
