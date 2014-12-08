#VIM
##How to install VIM

This should provide documentation for installing VIM on your machine. I am hoping to provide answers to the "Why?" in this README and in the commits that I make.

My machine currently has version 7.3 which has missing features that I would like from VIM, like clipboard. In order update to the latest vim I used [Homebrew](http://brew.sh/).

Make sure your homebrew is updated by running `brew doctor` and then `brew update`.
Then let's install the latest version of VIM available on Homebrew(7.4.488) -

```
$ brew install vim --override-system-vim
```
I believe that the `--override-system-vim` changes the symlinks to vim so that it uses `/usr/local/bin/vim` instead of `/usr/bin/vim` which is the default for Mac OS. Be sure to start a new terminal sesion and check information about your new vim installation with brew.

`which vim` should display `/usr/local/bin/vim`.

`vim --version` should be `VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Dec  8 2014 11:10:08)`.

##Adding features to VIM
###Setting up VIM files

Features for VIM are added to a `vimrc` file on your computer. The following code will help you create your own.

```
$ mkdir ~/.vim #=> Creates .vim directory
$ touch ~/.vim/vimrc #=> Creates the vimrc file in .vim
$ ln -s /.vim/vimrc ~/.vimrc
    #=> Creates a symlink in your home directory called .vimrc to /.vim/vimrc
```
It would also be great to set up a git repository for your vim configurations so you can easily spin up on new machines, or see why you added a feature via your commits and README.

```
$ cd ~/.vim
$ touch README.md
$ git init
$ git add .
$ git commit
$ git remote add origin <remote repository URL>
$ git push origin master
```

