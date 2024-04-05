DIRECTOR="$HOME/.config/zsh"
ZSHRC="$HOME/.config/zsh/.zshrc"

mkdir -p "$HOME/.config"

read -p "REPLACING $DIRECTOR - Are you suuure zsh is backed up?"$'\n'"-> Enter to continue, or Ctrl+C to cancel"

if [ -d "$DIRECTOR" ]; then
    echo "Deleting $DIRECTOR"
    rm -rf "$DIRECTOR"
fi

git clone git@github.com:deanglukler/zsh.git $DIRECTOR

if [ ! -L "$HOME/.zshrc" ]; then
    echo "Deleting $HOME/.zshrc"
    rm -f "$HOME/.zshrc"
    echo "Linking $ZSHRC to $HOME/.zshrc"
    ln -s "$ZSHRC" "$HOME/.zshrc"
fi
