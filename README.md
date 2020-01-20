# ODE Bootsrap Framework

Ce framework CSS Open Digitale Education intègre l'ensemble des composants CSS utilisés par nos ENT.

## Installation

Installer Git et lancer la commande suivante dans un terminal
```
git clone https://github.com/opendigitaleducation/ode-bootstrap.git
```

### Lancer le mode développeur

Lancer la commande suivante:
```
./build.sh install watch
```

Un serveur web démarre et l'URL s'affiche en console (généralement http://localhost:8080/doc).
Toutes les modifications sur le code source sont détectées et entrainent un rafraichissement de la page.

### Lancer un build

Lancer la commande suivante:
```
./build.sh install build
```

Le css minifié est généré dans le dossier "dist".

## Importer le framework dans un projet

Installer la dépendance NPM: 
```
npm i --save-dev ode-bootstrap
```

Importer le SASS dans le projet:
```
@import "node_modules/ode-bootstrap/scss/index";
```

## Documentation

Une documentation contenant l'ensemble de nos composants est disponible dans [ici](doc/index.html).

Voici la liste des variables personnalisables:

TODO

