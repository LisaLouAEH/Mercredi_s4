# Family_blog #
<hr/>

> C'est un super blog où ses utilisateurs pourront créer des articles, les commenter, leur attribuer une catégorie. Puis, étant donné que l'on est hype, les utilisateurs pourront liker les articles.

<hr/>

## De la reflection sur l'architecture aux dernières erreurs rencontrées:  

* 5 class => 5 categories réparties comme suis/  

L class **User** :   
----L champs :  
--------L id (integer primary key autoincrement)  
--------L name (string)  
--------L last_name (string)  
--------L email (string)  
  
L class **Article**:  
----L champs :  
--------L id (integer primary key autoincrement)  
--------L user_id (belongs_to user: index)  
--------L cat_id (belongs_to category: index)  
--------L titre (string)  
--------L content (text)  
  
L class **Category**:  
----L champs :  
--------L id (integer primary key autoincrement)  
--------L name (string)   
  
L class **Commentaire**:  
----L champs :  
--------L id (integer primary key autoincrement)  
--------L user_id (belongs_to user: index)  
--------L article_id (belongs_to article: index)  
--------L content (text)   
  
L class **Like**  
----L champs:  
--------L id (integer primary key autoincrement)  
--------L user_id (belongs_to user: index)  
--------L article_id (belongs_to article: index)  
  
* De plus les class category, user, et like sont en relation N-N alors que les autres sont en 1-N la structure est donc pensée pour avoir un minimum de tables afin d'approfondir les perspectives offerte par les BDD relationnelles.
  
* Un seed est rempli avec des instructions pour générer automatiquement des exemple de contenus (10 users, 10 articles, 5 catégories, et 15 commentaires).
Cependant cette méthode mets en valeurs l'inutilité de crée des colones spécifiques au stockage des informations sur les liaisons entre les tables. Je n'ai pas encore trouvé comment modifier des tables une fois qu'elle on été migrés pour retirer ces colones.

* j'ai manqué de temps pour achever ce projet... :(
