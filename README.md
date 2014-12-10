#VIM
##How to install VIM

This should provide documentation for installing VIM on your machine. I am hoping to provide answers to the "Why?" in this README and in the commits that I make.

My machine currently has version 7.3 which has missing features that I would like from VIM, like clipboard. In order update to the latest vim I used [Homebrew](http://brew.sh/).

Make sure your homebrew is updated by running `brew doctor` and then `brew update`.
Then let's install the latest version of VIM available on Homebrew(7.4.488) -

```zsh
$ brew install vim --override-system-vim
```
I believe that the `--override-system-vim` changes the symlinks to vim so that it uses `/usr/local/bin/vim` instead of `/usr/bin/vim` which is the default for Mac OS. Be sure to start a new terminal sesion and check information about your new vim installation with brew.

`which vim` should display `/usr/local/bin/vim`.

`vim --version` should be `VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Dec  8 2014 11:10:08)`.

##Adding features to VIM
###Setting up VIM files

Features for VIM are added to a `vimrc` file on your computer. The following code will help you create your own.

```zsh
$ mkdir ~/.vim #=> Creates .vim directory
$ touch ~/.vim/vimrc #=> Creates the vimrc file in .vim
$ ln -s /.vim/vimrc ~/.vimrc
    #=> Creates a symlink in your home directory called .vimrc to /.vim/vimrc
```
It would also be great to set up a git repository for your vim configurations so you can easily spin up on new machines, or see why you added a feature via your commits and README.

```zsh
$ cd ~/.vim
$ touch README.md
$ git init
$ git add .
$ git commit
$ git remote add origin <remote repository URL>
$ git push origin master
```

###Installing Base16 Color Theme

This was very difficult. I'll try to describe how I got everything to work
correctly.

* You will need to use a diferent terminal. I used [iTerm
 Nightly](http://iterm2.com/downloads/nightly/#/section/home) starting with
 20141115 based on [this
 issue](https://github.com/chriskempson/base16-vim/issues/35#issuecomment-63165570) for base16 and
 how it was resolved.

* Set up iTerm to use the colorscheme. I downloaded a ZIP of the
 [Base16-iterm2 repo](https://github.com/chriskempson/base16-iterm2) and
 double clicked on the itemcolors that I wanted to be available as presets in
 my iTerm settings. Be sure to pick the `.256` verions. Verify that iTerm is
 using 256 colors by going to Preferences>Terminal> Report Terminal Type
 should be set to `xterm-256color`.

* Next you'll need get
 [Base16-shell](https://github.com/chriskempson/base16-shell) and follow the
 directions. This will actually provide you a way to test that everything is
 working correctly. For me, since I am using `zsh` I added the following to
 my `~/.zshrc` file.

```zsh
BASE16_SCHEME="ocean"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
```

* Test that everything is set up correctly regarding your shell. You should
 see color17 through color21 as different colors instead of [shades of
 blue](https://github.com/chriskempson/base16-shell#troubleshooting)

```zsh
$ cd ~/.config/base16-shell
$ ./colortest
```

* Install [Base16-vim](https://github.com/chriskempson/base16-vim) so you have
 the colors for syntax highlighting. After following the steps for the
 [Manual installation](https://github.com/chriskempson/base16-vim#manual) I
 removed color profiles that I knew I wouldn't be using.

* Now we need to add some settings to our `vimrc` to tell VIM to use the
 colorscheme.

```zsh
$ cd ~/.vim
$ vim vimrc
```

```vim
let base16colorspace=256  " base16 requires this to tell it to use 256 color
space in iTerm
set background=dark  " Tell vim that colorscheme is on a dark background
colorscheme base16-ocean  " Use the base16-ocean colorscheme
```

