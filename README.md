# My dotfiles

* Follows GNU Stow structure
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

## AwesomeWM

** Requires a nerd-font patched font **

Configuration files need a big tiding. There are some hardcoded paths and
probably stowing this will require fixing some errors before working
completely.

## URxvt
All attributes are set via .Xresources


**Note:**


> URxvt does not read .Xresources but .Xdefaults, but `.xinitrc` is responsible of loading .Xresources (with `xrdb`)
[reference](https://bbs.archlinux.org/viewtopic.php?pid=1630563#p1630563)

## Vim
.vimrc comes with vim-plug as plugin manager, it will install automatically if not already. (See [automatic installation](https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation) from vim-plug's wiki)

## Zathura
Colorscheme is set via include directive. Themes should be saved inside
`themes/` folder.

**Recoloring** is active to render PDF's following the colorscheme set.

## Font
**NOTE: THIS IS A SLIGHTLY CUSTOM IOSEVKA COMPILATION**

Iosevka Light is the main font for this theme, it has a slight change in the build parameters
(`[iosevka_cloned_repo]/parameters.toml`) over powerline specific values.

```
70 | powerlineScaleY = 1.2 # Vertical scale
```

It has been patched using nerd-fonts manual font-patcher python script
afterwards.

