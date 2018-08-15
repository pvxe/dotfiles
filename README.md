# My dotfiles (solarized-dark theme)
Follows GNU Stow structure

## About GNU Stow
[useful article](brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) thanks to Brandon Invergo.

dotfiles programs/packages structure is something like this
```
dotfiles/
    vim/
    zathura/
    xorg-xrdb/
    ...
```

Each one can be __stowed__ or __unstowed__ by simply using `stow [options] package`
eg. to stow vim's configuration (create the symlinks and place them where vim expects to find them)
```
stow vim
```

Each package folder in addition expose the folder hierarchy expected
(inside `dotfiles/` for these examples)

eg. vim's `.vimrc` should be just inside your home folder `~`
```
    vim/
        .vimrc
```
eg. zathurarc must be inside `.config/zathura/`
```
    zathura/
        .config/
            zathura/
                zathurarc
```


## Vim
.vimrc comes with vim-plug as plugin manager, it will install automatically if not already. (See [automatic installation](https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation) from vim-plug's wiki)

## Zathura
solarized dark theme
