---
title: "Flux OpenID Connect"
date: 2021-11-22T10:51:28+11:00
draft: false
---

Le protocole OpenID Connect définit un flux standard sur des endpoints et un mécanisme de découverte (cf. la spécification OpenID Connect Discovery) pour qu’un fournisseur de service puisse obtenir les informations sur ces endpoints.

Les endpoints fournis par NC Connect peuvent être obtenus à l’adresse :
https://connect-dev.gouv.nc/.well-known/openid-configuration


Exemple avec le “authorization code flow”
§3.1 Authentication using the Authorization Code Flow

1/ Lorsque l’internaute clique sur le bouton d’authentification, l’application cliente du fournisseur de service interroge le endpoint authorize(cf. §3.1.2.1 Authentication Request) :

URI
https://connect-dev.gouv.nc/v2/oauth/authorize
Method
GET
Data
scope=openid
response_type={fonction du type demandé}
client_id={client ID fourni en réponse à la demande d’intégration du service}
redirect_uri={URL de redirection fournie lors de la demande d’intégration du service}
Response
Si l’utilisateur est authentifié dans NC Connect, redirection vers la redirect_uri, sinon redirection vers la mire d’authentification :
https://connect-dev.gouv.nc/v2/login

Cet endpoint accepte notamment le paramètre “prompt”. Par exemple, si la valeur est “login”, alors la page de login est systématiquement affichée, même si l’utilisateur est déjà connecté.
2/ Au final, l’utilisateur est redirigé, avec un code d’autorisation, vers l’application du fournisseur de service via la redirect_uri (cf § 3.1.2.5. Successful Authentication Response).

3/ L’application (backend)  du fournisseur de service fait un appel vers le endpoint token de NC Connect avec le code d’autorisation reçu (cf § 3.1.3.1 Token Request).

Il authentifie la requête avec son clientID et son client secret en fonction de la méthode d’authentification retenue (client_secret_basic vs. client_secret_post, cf. § 9 Client Authentication et § 2.3 OAuth 2.0 [RFC6749]) :


Si le fournisseur de service utilise la méthode client_secret_basic :

URI
https://connect-dev.gouv.nc/v2/token
Method
POST
Data
grant_type=authorization_code
code={le code d’autorisation reçu}
redirect_uri={URL de redirection fournie lors de la demande d’intégration du service}
Header
Authorization : Basic  ClientID:client secret encodé en Base64
Response
Access Token  et ID Token (JWT)



Si le fournisseur de service utilise la méthode client_secret_post :

URI
https://connect-dev.gouv.nc/v2/token
Method
POST
Data
grant_type=authorization_code
code={le code d’autorisation reçu}
redirect_uri={URL de redirection fournie lors de la demande d’intégration du service}
client_id={client ID fourni en réponse à la demande d’intégration du service}
client_secret={client secret fourni en réponse à la demande d’intégration du service}
Response
Access Token et ID Token (JWT)




4/ Le fournisseur de service peut récupérer les informations de l’utilisateur connecté par appel au endpoint userinfo (cf § 5.3.1 UserInfo Request):

URI
https://connect-dev.gouv.nc/v2/userinfo
Method
GET
Header
'Authorization: Bearer '{+ Access Token}
Response
userinfo (exemple) :

{
  "iss": {Issuer Identifier},
  "sub": {User PPID},
  "login": {User login},
  "info": {
    "openid": {
      "Email": {User mail address}
    }
  }
}




