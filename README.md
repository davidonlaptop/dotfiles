# My DotFiles template
Repository for my $HOME directory's config files :-)


## Installation
After cloning this repo, run `install` to automatically set up the development environment.
Note that the install script is idempotent: it can safely be run multiple times.

Dotfiles uses [Dotbot][dotbot] to bootstrap installation. 

The only requirement is to have `git` and `python` installed and accesible in the path.


### Making Local Customizations
You can make local customizations for some programs by editing these files:

* `vim` : `~/.vimrc_local`
* `git` : `~/.gitconfig_local`


## Submodules

In general, you should be using symbolic links for everything, and using git
submodules whenever possible.

To keep submodules at their proper versions, the file `install.conf.yaml` includes
`git submodule update --init --recursive`.

To upgrade your submodules to their latest versions, you could periodically run
`git submodule update --init --remote`.


## Inspiration

If you're looking for inspiration for how to structure your dotfiles or what
kinds of things you can include, you could take a look at some repos using
Dotbot.

* [anishathalye's dotfiles][anishathalye_dotfiles]
* [csivanich's dotfiles][csivanich_dotfiles]
* [m45t3r's dotfiles][m45t3r_dotfiles]
* [alexwh's dotfiles][alexwh_dotfiles]
* [azd325's dotfiles][azd325_dotfiles]
* [bluekeys' dotfiles][bluekeys_dotfiles]

If you're using Dotbot and you'd like to include a link to your dotfiles here
as an inspiration to others, please submit a pull request.


## Other resources on dotfiles
* [Your unofficial guide to dotfiles on GitHub] [github_dotfiles]
* [Anish Athalye's blog post on managing dotfiles] [anishathalye_blog]
* [Getting started with Dotfiles] [webprolific]
* [Awesome list of OS X defaults] [mathias_bynens]

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
