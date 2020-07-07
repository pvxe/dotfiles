# My dotfiles

> Configuration files for several programs I've been using. These work
> for me. Maybe they don't for you. But usually looking inside can be
> of use to get some inspiration.

I use GNU Stow to create the symlinks. See below for an explanation.


## Systems

* Laptop: [README](laptop/README.md)


## About GNU Stow
This is a [useful article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) from Brandon Invergo.
Check it out!

Each program dotfiles can be understood as a stow package, following this structure in this repo.
```
dotfiles/
    {system}/
        {package}/
	vim/
	zathura/
	xorg-xrdb/
        ...
```

Each `{package}` can be __stowed__ or __unstowed__ by simply using `stow -d {system} package` and
`stow -D -d {system} package` respectively.

eg. to stow laptop vim's configuration
```
stow -d laptop/ vim
```

**Note:** Make sure that `~` is your parent directory (correct stow target). If not, specify target with
`stow -t ~/ ...`

Each package folder in addition expose the folder hierarchy expected

eg. vim's `.vimrc` should be just inside your home folder `~`
```
    vim/                    <--- package
        .vimrc              <--- this will go to ~/
```
eg. zathurarc must be inside `.config/zathura/`
```
    zathura/                <--- package
        .config/            <--|  directory
            zathura/        <--| .config/zathura
                zathurarc   <-- filename
```
