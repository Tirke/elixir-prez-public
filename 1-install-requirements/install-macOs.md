## Instructions d'installation d'Elixir sur MacOS

### Prérequis

Homebrew le gestionnaire de paquet est nécessaire.
Si vous ne possédez pas encore Homebrew il faudra l'installer.


Vous pouvez utiliser la commande suivante pour installer Homebrew

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Commandes d'installation

#### Installer Elixir

```bash
brew install elixir
```

Vérifier que l'installation c'est bien déroulée

```bash
elixir --version
Erlang/OTP 20 [erts-9.1.4] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Elixir 1.5.2
```

#### Node + npm

```bash
brew install node
```

Vérifier que l'installation c'est bien déroulée

```bash
node -v
v8.9.1

npm -v
5.5.1
```
