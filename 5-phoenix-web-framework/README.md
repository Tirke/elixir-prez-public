# TP Phoenix Web Framework

Pour ce dernier TP, l'objectif va être de créer un chat temps réel grâce à la puissance des channels du framework Phoenix.
Les channels reposent sur l'utilisation des websockets, outil moderne permettant de communiquer en temps réel avec un site web (sans recharge la page). Imaginez une queue de message ou producteur et consommateur peuvent interagir.

Ce chat sera architecturé en deux parties.
La première partie est le frontend constitué d'une Single Page App codée avec Vue.js. Cette application vous sera fournie car nous n'attendons pas de vous de connaître Vue.

La deuxième partie est une API (backend) que le frontend pourra consomée. En réalité, notre backend ne sera pas vraiment une API au sens classique comme le serait une API REST. Notre backend n'utilisera que certaines features de Phoenix comme les Channels et les Presences (si nous avons le temps).

## Lancement du frontend

Pour commencer ouvrez un terminal dans le repertoire du frontend qui se nomme `sid-chat`. Lancez npm (`npm i`) qui s'occupera de télécharger les paquets nécessaires pour faire fonctionner notre application.

```bash 
cd sid-chat
npm i
```

Nous pouvons maintenant lancer le serveur de dev.

```bash
npm run dev
```

L'application front est maintenant disponible à l'adresse [suivante](localhost:8080).


## Création et lancement du backend

Ouvrez un terminal dans votre repertoire de code habituel.
Même si cela n'a pas d'importance en soi, veuillez choisir un répertoire différent de sid-chat.
Vous pouvez par exemple utiliser le répertoire 5-phoenx-web-framework comme racine.


:warning: Linux Users Only :warning:

 
Si vous êtes sur Linux vérifiez que inotify-tools soit bien installé. MacOS et Windows vous pouvez ignorer cette partie.

Pour Debian/Ubuntu/Lubuntu

```bash
apt-get install inotify-tools
```

[Pour les autres distros Linux](https://github.com/rvoicilas/inotify-tools/wiki)

**Début tuto pour tout le monde**

Vérifions que hex est bien installé

```bash
mix local.hex
```


Récupérez l'archive permettant de bootstrap un project phoenix

```bash
mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
```


Nous créeons une nouvelle application Phoenix en mode API grâce aux deux paramètres `--no-brunch` et `--no-html`

```bash
 mix phx.new sid_chat_backend --no-brunch --no-html
```

Répondez Y quand l'installer vous demande si vous voulez fetch and install dependencies.

Vous pouvez suivre les consignes de l'outil pour la suite :

```bash
We are all set! Go into your application by running:

    $ cd sid_chat_backend

Then configure your database in config/dev.exs and run:
# Cette étape nécessite d'avoir une instance server de postgresql fonctionelle

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server
```

## A vous de jouer !

### Objectif principal


1. Faire marcher l'application, c'est-à-dire qu'il est possible de voir un message s'afficher dans le chat après envoi.

2. Ouvrez le chat dans plusieurs fenetres et vérifiez que le chat est bien en temps réel !

### Bonus

Bravo, vous êtes pas mauvais, mais en vrai c'était simple, 3/4 du code est déjà écrit par le framework.

Un dernier challenge vous attends, et vous allez devoir toucher à la fois au back et au front pour le réaliser.

1. Intégrer au front la possibilité de choisir un username à gauche de l'input de message.
Faire en sorte que le nom choisi soit visible dans vos messages.

2. Affichez, toujours sur la gauche du chat, la liste des utilisateurs connectés, en utilisant les Presences de Phoenix.


### :scream: :scream: :scream: A l'aide :scream: :scream: :scream:

[Documentation sur les channels](https://hexdocs.pm/phoenix/channels.html#content)

[Documentation sur les presences](https://hexdocs.pm/phoenix/presence.html#content)