## Instructions d'installation d'Elixir sur Windows

### Installer elixir

#### Web installer (plus simple)

1. [Télécharger l'installateur](https://repo.hex.pm/elixir-websetup.exe)
2. Cliquer sur next, next, ..., finish :laughing:

N.B: L'installation modifiera automatiquement le PATH, il est important de laisser coché les trois checkboxes
relatives à la modification du PATH durant l'installation.

#### Chocolatey (si vous l'avez)

```bash
cinst elixir
```

### Vérifiez l'installation


Ouvrir un invite de commande (et non PowerShell)

```bash
elixir --version
Erlang/OTP 20 [erts-9.1.4] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Elixir 1.5.2
```

### Installer Node + npm

1. [Télécharger l'installateur en fonction de votre système](https://nodejs.org/en/download/)
2. Cliquer sur next, next, back, next ..., finish :laughing:
3. Tester : Ouvrir Node.js Command Prompt et lancer :
```bash
node -v
v8.9.1

npm -v
v5.5.1
```
