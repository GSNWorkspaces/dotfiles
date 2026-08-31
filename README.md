# dotfiles
Scripts de configuração para programação em linguagem Rust no Neovim (Lazyvim)

## Importe e use

```sh
git clone https://github.com/GSNWorkspaces/dotfiles
cd dotfiles
./build
```

### Extensões do Lazyvim

> [!NOTE] 
> Pule está seção se já houver extensões do LazyVim configurado no seu ambiente de desenvolvimento, caso desejar fazer o backup das configurações, veja a subseção Backup do LazyVim antes de executar os Shell bash abaixo.

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
cp -r lua/plugins ~/.config/nvim/plugins
```

```sh
echo "Atualizando extensões LazyVim"
nvim --headless "+Lazy! update" +qa
```

#### Backup do LazyVim

```sh
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

