# read -p "REPLACING $DIRECTOR -> Enter or Ctrl+C to cancel"

RSAPRIV="$HOME/.ssh/id_rsa"
TEMPDIR="$HOME/Desktop/temp-deletable"

if [ -f "$RSAPRIV" ]; then
    echo "Error: RSA private key already exists at $RSAPRIV"
    exit 1
fi

git clone git@github.com:deanglukler/keys.git $TEMPDIR
ansible-vault decrypt "$TEMPDIR/id_rsa"

if [ ! -d "$HOME/.ssh" ]; then
    mkdir "$HOME/.ssh"
fi

mv "$TEMPDIR/id_rsa" ~/.ssh
mv "$TEMPDIR/id_rsa.pub" ~/.ssh
rm -rf "$TEMPDIR"

