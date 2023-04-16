#######################################################################
# Installer script to configure a new system with all the dotfiles in #
# this repository.                                                    #
#######################################################################

#!/bin/zsh

# set environment variables
basedir="$( cd "$( dirname "$0" )" && pwd )"
conf_base_dir="$HOME/.config"
mkdir -p "$conf_base_dir"

echo "Installer script for configuration and dotfiles of th0bse \n"

########## GENERIC THINGS ##########

##### zsh #####
echo "----- zsh -----"

# clean up all existing files
echo "cleaning up existing files..."
rm -dr "$conf_base_dir/zsh"
rm "$HOME/.zshrc"

# create directories
echo "creating directories..."
mkdir "$conf_base_dir/zsh"
mkdir "$conf_base_dir/zsh/userfunctions"

# symlink files
echo "symlinking files..."
ln -sv "$basedir/zsh/zshrc" "$conf_base_dir/zsh"
ln -sv "$basedir/zsh/aliases.sh" "$conf_base_dir/zsh"
for file in "$basedir/zsh/userfunctions/**"
do
    ln -sv $file "$conf_base_dir/zsh/userfunctions"
done

# create .zshrc in home dir to source the actual one
# (this is sort of an ugly workaround, but works fine and is the
#  easiest way to get this working everywhere as non-root)
echo "creating dummy .zshrc in $HOME directory..."
echo "source "$conf_base_dir/zsh/zshrc"" >> "$HOME/.zshrc"


