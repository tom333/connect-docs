---
title: "Implémenter NC Connect sur son site"
date: 2021-11-22T10:32:49+11:00
draft: true
---

Pour implémenter NC Connect sur votre site, vous devez d'abord procéder à une intégration sur la plateforme NC CONNECT de test.
A cet effet, demandez une habilitation par email à l’adresse connect@gouv.nc  en indiquant les éléments suivants :

## DEMARCHE
**Nom de l’organisme**

**Description brève du service et de l’utilisation prévue**

Exemples : « faire un POC », « se connecter au portail de ma ville »...


## INFORMATIONS TECHNIQUES

**Nom de l’application**

Ex : impots.nc (affiché dans la mire de connexion en haut à gauche)

**URL de l’application**

https://www.impots.nc

**URL de redirection à la connexion**

URL vers laquelle l’utilisateur sera redirigé après s’être connecté ou une liste d’URLs de redirection

(Callback url: https://openid.net/specs/openid-connect-core-1_0.html#AuthResponse)

**URL de redirection à la déconnexion**

URL vers laquelle l’utilisateur sera redirigé quand il se déconnecte (par défaut, c’est l’url de l’application)

**Liste des scopes dont l’application a besoin**

Les scopes disponibles sont : "openid", "profile", "email", "birth", "identite_pivot"

[Détails ici ]({{< ref "details_scopes.md" >}})


**Le type d’authentification:**

Nc Connect autorise les types suivants : Authorization code flow, Implicite code flow, Hybrid code flow et Code Flow + PKCE (OAuth 2.1)


**Logo de l’application**

Image affichée sur la mire de connexion NC CONNECT (hauteur disponible sur la page = 55px).

## CONTACTS

**Nom et email du responsable de traitement** (facultatif si la demande concerne un POC)

https://www.cnil.fr/fr/definition/responsable-de-traitement

**Nom et email du responsable technique**

Cette personne recevra les accès techniques, il peut s’agir d’un prestataire. |


Une fois la demande validée, les informations suivantes vous seront retournées :
- ClientID
- ClientSecret
- URL de redirection (pour rappel, fournie lors de la demande)
- La documentation d’intégration
- Le kit graphique NC CONNECT
