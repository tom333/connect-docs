---
title: "Detail des scopes"
date: 2021-11-22T10:33:37+11:00
draft: false
---

Les scopes disponibles sont ceux définis à la fois par la spécification (https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims) et par France Connect (https://partenaires.franceconnect.gouv.fr/fcp/fournisseur-identite).
Ils sont composés des claims suivants :

{{< table style="table_bordered" >}}
|Scope|Claims| |
|-----|------|-|
|profile | given_name | |
| | family_name | |
| | preferred_username | |
| | birthdate | |
| | gender | |
| | verified |2 si le compte a une identité vérifiée, 1 sinon |
| email |email ||
||email_verified||
| birth | birthplace ||
|| birthcountry|Non géré pour le moment|
|identite_pivot |given_name||
| | family_name| |
| | preferred_username| |
| | gender| |
| | birthcountry| |
| | birthplace| |
| | birthdate| |
| | verified| 2 si le compte a une identité vérifiée, 1 sinon|



{{< /table >}}