# ~

These are my dotfiles. They are conveniently presented as a [homesick castle](http://github.com/technicalpickles/homesick). You can `gem install homesick` and then `homesick clone git://github.com/mwunsch/dotfiles.git`

Alternatively, you can use [GNU Stow](http://www.gnu.org/software/stow/) to manage the symlink. This is my preferred approach. Install stow, clone the repository to your preferred location (I keep it in Dropbox), then `cd` to that location and run something to the effect of:

    $ stow --target=$HOME ./home

Check the `stow` manpage for other use cases.

