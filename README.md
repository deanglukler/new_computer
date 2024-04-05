## basics

- Go through settings
- Go through finder settings

## install brew

https://brew.sh/

```
brew install ansible
```

## ssh keys

https://github.com/deanglukler/keys

```
mkdir -p ~/.ssh && \
unzip -d ~/downloads ~/downloads/keys-main && \
mv ~/downloads/keys-main/* ~/.ssh && \
ansible-vault decrypt ~/.ssh/id_rsa
```

## karabiner

https://karabiner-elements.pqrs.org/

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/deanglukler/new_computer/HEAD/config-karabiner.sh)"
```

## alfred

Powerpack key in notes

https://www.alfredapp.com/

## iterm

https://iterm2.com/downloads.html

**oh-my-zsh**
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**config files**

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/deanglukler/new_computer/HEAD/config-zsh.sh)"
```

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/deanglukler/new_computer/HEAD/config-nvim.sh)"
```

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/deanglukler/new_computer/HEAD/config-tmux.sh)"
```

**nvim and tmux**
```
brew install neovim
```
```
brew install tmux
```

## dl some programs...

https://protonvpn.com/download

https://shottr.cc/

https://justgetflux.com/

bettertouch: https://folivora.ai/downloads

magnet: https://apps.apple.com/ca/app/magnet/id441258766

### vs code

https://code.visualstudio.com/download

(Cmd+Shift+P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command

#### --- -

