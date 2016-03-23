VIM_LOCATION=~/.vim
VIMRC_LOCATION=~/.vimrc
GIT_REPO="https://github.com/xuehung/vim.git"
RAND=$RANDOM

# Check prerequisite: git
hash git 2>/dev/null || {
    echo >&2 "Git must be installed. Aborting."
    exit 1
}

# Backup the old .vim directory.
if [ -d $VIM_LOCATION ] 
then
    read -p ".vim already exist. Would you like to backup it? [Y/n] " ans
    if [ "$ans" == "n" ]
    then
        rm -rf $VIM_LOCATION
        echo "Your old .vim has been deleted."
    else
        backupvim="$VIM_LOCATION-$(date +%Y%m%d)-$RAND"
        mv $VIM_LOCATION $backupvim
        echo "Your old .vim has been renamed to $backupvim."
    fi
fi

# Backup the old .vimrc directory.
if [ -f $VIMRC_LOCATION ] || [ -L $VIMRC_LOCATION ]
then
    read -p ".vimrc already exist. Would you like to backup it? [Y/n] " ans
    if [ "$ans" == "n" ]
    then
        rm -f $VIMRC_LOCATION
        echo "Your old .vimrc has been deleted."
    else
        backupvimrc="$VIMRC_LOCATION-$(date +%Y%m%d)-$RAND"
        mv $VIMRC_LOCATION $backupvimrc
        echo "Your old .vimrc has been renamed to $backupvimrc."
    fi
fi
# Clone the repo.
git clone $GIT_REPO $VIM_LOCATION

# Create the symbolic link.
ln -s $VIM_LOCATION/vimrc $VIMRC_LOCATION

# Install plugins.
vim +PluginInstall +qall

echo "Installation completed."
