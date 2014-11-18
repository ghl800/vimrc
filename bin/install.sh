#
# my VIMRC and plugins installer
#
# created by Eddie Kao <eddie@digik.com.tw>
# just for installing my .vim configurations and plugins in one command.
#

vim_folder=~/.vim
vim_rc=~/.vimrc
BUNDLE_DIR=$vim_folder/bundle
INSTALL_DIR=$BUNDLE_DIR/neobundle.vim
backup_rand=$RANDOM

# detect if there's a .vim folder
if [ -d $vim_folder ]
then
  echo "\033[0;31mYou already have a .vim folder in your home directory.\033[0;m"
  read -p "Would you like to backup your .vim folder first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $vim_folder to $vim_folder-$(date +%Y%m%d)-$backup_rand"
    mv $vim_folder $vim_folder-$(date +%Y%m%d)-$backup_rand
  else
    exit
  fi
fi

echo $vim_rc

# check if vimrc is already exist
if [ -L $vim_rc ] || [ -f $vim_rc ]
then
  echo "\033[0;31mThere's .vimrc in your home directory.\033[0;m"
  read -p "Would you like to backup your .vimrc first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $vim_rc to $vim_rc-$(date +%Y%m%d)-$backup_rand"
    mv $vim_rc $vim_rc$(date +%Y%m%d)-$backup_rand
  else
    exit
  fi
fi

if type git; then
  : # You have git command. No Problem.
else
  echo 'Please install git or update you path to include the git executable!'
  exit 1;
fi

echo "Begin fetching vim..."
mkdir -p $vim_folder
git clone https://github.com/ghl800/vimrc $vim_folder
echo "Done."

echo "Begin fetching NeoBundle..."
mkdir -p $BUNDLE_DIR
git clone https://github.com/Shougo/neobundle.vim $BUNDLE_DIR/neobundle.vim
echo "Done."

echo "make a symbolic link"
ln -s $vim_folder/vimrc $vim_rc
echo "Done."

#echo "install plugin"
#vim -N -u $vim_rc -c "try | NeoBundleUpdate! $* | finally | qall! | endtry" \
#   -U NONE -i NONE -V1 -e -s

echo ""
echo "\033[0;34mNice! Seems everything is done.\033[0m"
echo "\033[0;34mGithub Repository: https://github.com/ghl800/vimrc\033[0m"
echo "\033[0;34mfeel free to fork it :)\033[0m"
echo ""

exit
