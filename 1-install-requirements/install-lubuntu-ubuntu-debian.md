## Instruction d'installation d'Elixir sur Lubuntu x.Poivey / Ubuntu 14.04/16.04/16.10/17.04 ou Debian 7/8/9

### Commandes d'installation

#### ELixir

```bash
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang
sudo apt-get install elixir
```

Vérifier que l'installation c'est bien déroulée

```bash
elixir --version
Erlang/OTP 20 [erts-9.1.4] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Elixir 1.5.2
```

#### Node + npm

:warning: 

Il est possible que tout aventurier que vous êtes, vous ayez déjà installé node.
Si vous avez un version de node < 8 et de npm < 5 ca n'ira pas, il vous faudra virer ces versions et faire l'installation indiquer si dessus.

Vous pouvez tenter un `sudo apt-get remove nodejs`.

:warning:

```bash
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```

Vérifier l'install 

```bash
node -v
v8.9.1

npm -v
5.5.1
```
