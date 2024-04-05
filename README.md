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


## dl some programs...


https://protonvpn.com/download

https://shottr.cc/



#### --- -

`~/.shh`

go here:

https://github.com/deanglukler/keys

#### run some scripts...

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/deanglukler/new_computer/HEAD/inst-keys.sh)"
```

