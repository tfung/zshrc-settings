HOME_ZSHRC_FILE=$HOME/.zshrc

if [ -f "$HOME_ZSHRC_FILE" ]; then
    echo "setting up .zshrc file"
    cat .zshrc >> $HOME_ZSHRC_FILE
    echo "finished setting up .zshrc file"
else
    echo ".zshrc doesn't exist in your home directory"
fi