DIRECTOR="$HOME/.config/nvim"

mkdir -p "$HOME/.config"

read -p "REPLACING $DIRECTOR - Are you suuure nvim is backed up? -> Enter or Ctrl+C to cancel"

if [ -d "$DIRECTOR" ]; then
    echo "Deleting $DIRECTOR"
    rm -rf "$DIRECTOR"
fi

git clone git@github.com:deanglukler/nvim.git $DIRECTOR
