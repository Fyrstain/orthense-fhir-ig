Ce document décrit comment un client peut s'authentifier auprès d'Orthense Identity Server en utilisant le Client Credentials Flow d'OAuth 2.0. Le flux [OAuth2 Client Credentials](https://datatracker.ietf.org/doc/html/rfc6749#section-4.4) a été retenu afin d'authentifier les appels fait au serveur Orthense FHIR.

### Contexte

Les bénéfices du Client Credentials Flow sont les suivants:

1. Sécurisation des appels inter-API
   * Seules les applications clientes autorisées peuvent obtenir un token.
   * Les credentials (client_id et client_secret) ne transitent jamais dans le front-end ou un environnement non maîtrisé.

2. Authentification sans utilisateur humain
   * Pas besoin de login/mot de passe d'un utilisateur.
   * Idéal pour des communications machine-to-machine (M2M).

3. Contrôle précis des permissions
   * L’attribution de scopes permet de restreindre les accès (ex. scope implant pour limiter aux implants).
   * Possibilité de révoquer un client spécifique sans impacter les autres.

4. Gestion centralisée des accès
   * Orthense Identity Server contrôle et audite qui accède à quelles ressources.
   * Compatible avec des mécanismes avancés (logs, monitoring, règles de sécurité).

5. Standardisation et compatibilité
   * OAuth 2.0 est un standard éprouvé compatible avec la plupart des infrastructures modernes.
   * Facile à intégrer avec des API Gateway, des proxies et des solutions d’authentification existantes.

En résumé, ce flow garantit un accès sécurisé et contrôlé entre les API, tout en respectant les principes de sécurité, modularité et scalabilité.

### Obtention des identifiants client

Les informations d'identification nécessaires (`client_id` et `client_secret`) seront fournies par **Digikare**. L'URL du serveur d'identité sera également fournie par **Digikare**.

### Obtention d'un token d'accès

Seul le **Client Credentials Flow** est autorisé.

Une fois le `client_id` et le `client_secret` obtenus, le client doit envoyer une requête au serveur d'identité pour récupérer un token d'accès.

### Requête HTTP (exemple avec `curl`)
```sh
curl -X POST "<URL_DU_SERVEUR_IDENTITE>/connect/token" \
      *H "Content-Type: application/x-www-form-urlencoded" \
      *d "grant_type=client_credentials" \
      *d "client_id=<VOTRE_CLIENT_ID>" \
      *d "client_secret=<VOTRE_CLIENT_SECRET>" \
      *d "scope=implant"
```

### Réponse attendue
```json
{
  "access_token": "eyJhbGciOiJI...",
  "token_type": "Bearer",
  "expires_in": 3600
}
```

### 3. Utilisation du token pour appeler l'API Orthense

Une fois le token récupéré, il doit être inclus dans l'en-tête `Authorization` des requêtes envoyées à l'API Orthense.

#### Exemple d'appel API
```sh
curl -X GET "https://api.orthense.com/resource" \
      *H "Authorization: Bearer <VOTRE_ACCESS_TOKEN>"
```

### 4. Diagramme de séquence

<figure>
  {% include client-credential-flow.svg %}
</figure>
<br clear="all">

### Bonnes pratiques

- **Sécuriser les identifiants** : Ne jamais exposer `client_id` et `client_secret` dans du code côté client ou dans un dépôt public.
- **Gérer l'expiration du token** : Surveiller `expires_in` et rafraîchir le token si nécessaire.
- **Utiliser les scopes adéquats** : Dans un premier temps, le scope sera limité au domaine **implant**.
- **Limiter les accès** : Assurez-vous que seul le client prévu peut utiliser les credentials.

Ce guide vous permet d'intégrer l'authentification de manière sécurisée avec Orthense Identity Server.
