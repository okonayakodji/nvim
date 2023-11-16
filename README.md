# okonayakodji's nvim setup

## Dependencies
- xclip (`sudo pacman -S xclip`)
- haskell-language-server (`ghcup install hls` or `sudo pacman -S haskell-language-server`)
- pyright (`sudo pacman -S pyright`)
- gopls (`sudo pacman -S gopls`)
- rust_analyzer (`rustup component add rust-analyzer`)

## How to install?
1. Install nvim.
2. Install dependencies
3. Run:
```bash
git clone https://github.com/okonayakodji/nvim ~/.config/nvim
```
4. Install [packer](https://github.com/wbthomason/packer.nvim).
5. Run nvim.
6. Write `:PackerInstall`
