DIRECTOR="$HOME/.config/tmux"

mkdir -p "$HOME/.config"

read -p "REPLACING $DIRECTOR - Are you suuure tmux is backed up?"$'\n'"-> Enter to continue, or Ctrl+C to cancel"

if [ -d "$DIRECTOR" ]; then
    echo "Deleting $DIRECTOR"
    rm -rf "$DIRECTOR"
fi

git clone git@github.com:deanglukler/tmux.git $DIRECTOR
