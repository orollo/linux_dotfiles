
Linux configurations for me!


1. install neovim
```bash
    sudo apt install neovim
```

1. alternative setting

```bash
    sudo update-alternatives --config vim
    sudo update-alternatives --config vi
```

1. copy init.vim and plug.vim

```bash
    cp init.vim ~/.config/nvim/
    cp plug.vim ~/.local/share/nvim/site/autoload/
```

1. apply plugins

```bash
    nvim +PlugInstall +qall
```
