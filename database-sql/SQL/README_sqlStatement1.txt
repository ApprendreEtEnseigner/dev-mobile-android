Dans ce défi, vous devez créer une simple instruction SELECT qui renverra toutes les colonnes de la table "products", et joindre la table "companies" afin de pouvoir renvoyer le nom de l'entreprise.
Schéma de la table "products":
- id
- name
- isbn
- company_id
- price

Schéma de la table "companies":
- id
- name

Vous devez renvoyer tous les champs du produit ainsi que le nom de l'entreprise en tant que "company_name".
NOTE: Votre solution doit utiliser du SQL pur. Ruby est utilisé dans les cas de test pour effectuer les tests réels.