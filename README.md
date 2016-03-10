# David's _dot files_
Repository for my `$HOME` directory's config files :-)


## Installation
After cloning this repo, run `./install` to automatically set up the development environment.
Note that the install script is idempotent: it can safely be run multiple times.

### Dependencies
This repo uses [Dotbot][dotbot] to bootstrap installation, which is installed automatically as a git submodule when this repo is cloned.

The only other requirement is to have `git` and `python` installed and accesible in the path.

### Making Local Customizations
You can make local customizations (_e.g. to exclude sensitive information_) for some programs by editing these files:

- `vim` : `~/.vimrc_local`
- `git` : `~/.gitconfig_local`

These files **are NOT** version controlled in this git repository.



## Directory structure
This is a summary of my personal organization:
```bash
bash-it/                # TODO: clean up
cron/                   # TODO: clean up
dotbot/                 # The Dotbot git submodule
etc/                    # Where most of my dot file
inputrc                 # TODO: clean up
install                 # The install script 
install.yaml            # The install script's config
system/                 # TODO: clean up
```
More details to come later ...


## References

### Other people using [Dotbot][dotbot]

If you're looking for inspiration for how to structure your dotfiles or what kinds of things you can include, you could take a look at some repos using Dotbot.

- [anishathalye's dotfiles][anishathalye_dotfiles]
- [csivanich's dotfiles][csivanich_dotfiles]
- [m45t3r's dotfiles][m45t3r_dotfiles]
- [alexwh's dotfiles][alexwh_dotfiles]
- [azd325's dotfiles][azd325_dotfiles]
- [bluekeys' dotfiles][bluekeys_dotfiles]


## Other resources on versionning _dot files_
- [Your unofficial guide to dotfiles on GitHub] [github_dotfiles]
- [Anish Athalye's blog post on managing dotfiles] [anishathalye_blog]
- [Getting started with Dotfiles] [webprolific]
- [Awesome list of OS X defaults] [mathias_bynens]


[dotbot]: https://github.com/anishathalye/dotbot
[fork]: https://github.com/anishathalye/dotfiles_template/fork
[anishathalye_dotfiles]: https://github.com/anishathalye/dotfiles
[csivanich_dotfiles]: https://github.com/csivanich/dotfiles
[m45t3r_dotfiles]: https://github.com/m45t3r/dotfiles
[alexwh_dotfiles]: https://github.com/alexwh/dotfiles
[azd325_dotfiles]: https://github.com/Azd325/dotfiles
[bluekeys_dotfiles]: https://github.com/bluekeys/.dotfiles
[github_dotfiles]: https://dotfiles.github.io/
[anishathalye_blog]:  http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
[webprolific]: https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
[mathias_bynens]: https://github.com/mathiasbynens/dotfiles
