# okonayakodji's nvim setup

<!--toc:start-->
- [okonayakodji's nvim setup](#okonayakodjis-nvim-setup)
  - [How to install?](#how-to-install)
<!--toc:end-->

- gopls (`sudo pacman -S gopls`)
- haskell-language-server (`ghcup install hls` or `sudo pacman -S haskell-language-server`)
- lua-language-server (`sudo pacman -S lua-language-server`)
- pyright (`sudo pacman -S pyright`)
- rust_analyzer (`rustup component add rust-analyzer`)
- xclip (`sudo pacman -S xclip`)
- marksman (`sudo pacman -S marksman`)

## How to install
1. Install nvim
2. Install dependencies
3. Run:
```bash
git clone https://github.com/okonayakodji/nvim ~/.config/nvim
```
4. Install [packer](https://github.com/wbthomason/packer.nvim)
5. Run nvim
6. Write `:PackerInstall`
