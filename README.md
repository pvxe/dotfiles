# My dotfiles (solarized-dark theme)

* Follows GNU Stow structure
* Solarized dark theme for graphical aplications
* NerdFonts patched font: Iosevka (_see Font_)

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

## URxvt
All attributes are set via .Xresources


**Note:**


> URxvt does not read .Xresources but .Xdefaults, but `.xinitrc` is responsible of loading .Xresources (with `xrdb`)
[reference](https://bbs.archlinux.org/viewtopic.php?pid=1630563#p1630563)

## Vim
.vimrc comes with vim-plug as plugin manager, it will install automatically if not already. (See [automatic installation](https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation) from vim-plug's wiki)

## Zathura
**WIP** as colorscheme is not complete yet.

- [] index(tab) colorscheme set to solarized dark palette
- [] research if there's any way of setting colors as constants
- [] if not possible research the possibility of splitting styles into separate files

**Recoloring** is active to render PDF's solarized like, at
```
set recolor-lightcolor          "#002b36"
set recolor-darkcolor           "#839496"
set recolor                     "true"

set recolor-keephue "false"

```

## Font
**Not the font you can download from nerd-fonts repository already patched**

Iosevka Light is the main font for this theme and it has been patched using nerd-fonts manual font-patcher python script.
It has a slight change in the build parameters (`[iosevka_cloned_repo]/parameters.toml`) over powerline specific values.
```
70 | powerlineScaleY = 1.2 # Vertical scale
```

