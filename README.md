# Préparation d'un poste de dev pour Linux

Ce script à pour vocation à installer et préparer une distribution Linux comme poste de développement.

## Installation

Ce script est à exécuter avec l'utilisateur courant du poste de dev.

```console
chmod +x setup.sh
./setup.sh
```

## Alias

Ce script installe par défaut plusieurs alias pour simplifier la vie du développeur.
En voici la liste :

| Alias  | Description                                                                                         |
|--------|-----------------------------------------------------------------------------------------------------|
| bashrc | Applique des permissions sur tous les .bashrc contenus dans .bashrc.d et recharge le fichier bashrc |
| brc    | Alias de bashrc                                                                                     |