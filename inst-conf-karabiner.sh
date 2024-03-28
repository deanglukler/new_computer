DIRECTOR="$HOME/.config/karabiner"

read -p "REPLACING $DIRECTOR - Are you suuure karabiner is backed up? -> Enter or Ctrl+C to cancel"

if [ -d "$DIRECTOR" ]; then
    echo "Deleting $DIRECTOR"
    rm -rf "$DIRECTOR"
fi

git clone git@github.com:deanglukler/karabiner.git $DIRECTOR
