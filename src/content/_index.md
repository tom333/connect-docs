---
title: ""
date: 2021-11-22T10:23:42+11:00
draft: false
---
## 1. Pourquoi NC Connect ?

NC CONNECT simplifie l’accès aux services publics numériques. Il permet de s’authentifier sur les téléservices de Nouvelle-Calédonie sans avoir à créer de nouveaux comptes.

Concrètement, NC CONNECT est un bouton qui s’affiche sur les interfaces des téléservices partenaires.

En production depuis novembre 2018, il recouvre actuellement plus de 100 000 comptes actifs. Les premiers services utilisateurs sont ma-sante.gouv.nc et impots.nc.

NC CONNECT a été conçu « pays » pour être utilisé par toutes les administrations en ajout ou remplacement des dispositifs d’authentification existants.

Depuis 2021, NC CONNECT gère l'identité des indidivus : nom, prénom, date de naissance, lieu de naissance et sexe.

En proposant NC CONNECT :
- vous facilitez l'accès à de nouveaux services en évitant la création d'identifiant dédiés ;
- vous pouvez pré-saisir les informations d'identité dans les formulaires administratifs ;
- vous offrez un dispositif sécurisé à vos utilisateurs.

## 2. Les limites actuelles de NC Connect
Limite fonctionnelle
Dans le cas d'un oubli de mot de passe au moment de la connexion, l'usager n'est pas renvoyé vers le téléservice appelant après la procédure. On parle de "cul-de-sac". L'usager doit lui-même retrouner sur le téléservice pour poursuivre.

🗣Des évolutions sont prévues en 2021 pour supprimer cette limite.

### Limite technique
Aucune limite constatée. En effet, les anciennes limites techniques liées à la compatibilité OpenIdConnect ont été réglées. NC Connect est compatible avec KeyCloak par exemple.

## 3. Comment ça marche ?
Un utilisateur se connecte avec le bouton NC Connect ;
NC Connect renvoie le sub (identifiant technique  unique), le login et l'adresse email de l’utilisateur ;
Le fournisseur de service (FS) utilise les informations fournies pour reconnaître l’utilisateur dans son système.

Votre service est-il éligible ?
L'accès à ce service n'est pour l'instant disponible que si vous êtes :
une administration ;
un établissement public ;
un organisme privé chargé d’une mission de service public.

## 4. Conditions d'utilisation
L'utilisation de NC CONNECT est gratuite. Elle est soumise à la signature d'une convention entre la Nouvelle-Calédonie et le fournisseur de service (hors phase de test, cf paragraphe 7).
Cette convention précise les conditions et responsabilités de chaque partie.
