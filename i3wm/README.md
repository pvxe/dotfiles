# i3wm configuration files

* `i3/` contains the config file for i3, see requirements below.
* `i3blocks/` is a folder containing the [i3blocks-contrib](https://github.com/vivien/i3blocks-contrib) blocks and configuration (pointing to the same folder)

* Current colorscheme: [Gruvbox](https://github.com/morhetz/gruvbox)
** NOTE: ** Colorscheme is sourced from Xresources (see [set_from_resource](https://i3wm.org/docs/userguide.html#xresources)) so
be sure to have .Xresources accordingly. This should make switching colorschemes easier.

## Requirements for i3

These are required to minimize the amount of errors when first applying the configuration.

Right now, you will need, in addition, to stow the following packages from root dotfiles:

- i3blocks
- dunst

### Additionally...

I will probably forget something but these are the more important things that come to mind

* Font used is Iosevka Pux(Iosevka Nerd Font). *If you want to use another font you will need to take care of the corresponding dotfiles*
* Flameshot as capture tool (see bindsyms)

### Launcher mode

I like the modal perspective of i3 and followed the tutorial in order to add a _launcher mode_

Get into _launcher mode_ with `mod+P` and `ESC` to return to normal.
Right now only __telegram__, __firefox__ and __thunderbird__ are inside this mode.

### Things you are likely not going to need (except maybe myself)

I've made some rules for windows of specific applications and assigned workspaces to them. See

## i3blocks

Blocklets from i3blocks-contrib are inside i3block stow package(ie. **i3wm/i3blocks** folder) so when unstowed blocklets should work out of the box.

If you want to use a different folder to source your blocklets change the global command configuration

```
# command=~/.config/i3blocks/$BLOCK_NAME/$BLOCK_NAME
command=~/my/path/to/blocklets/$BLOCK_NAME
```
