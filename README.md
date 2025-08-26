#sql

services:

services : Définit les différents services (conteneurs) qui composent ton application.

mariadb:

mariadb : Nom du service pour la base de données MariaDB.

image: mariadb:latest

image: mariadb:latest : Spécifie l'image Docker à utiliser pour ce service. Ici, c'est l'image officielle de MariaDB avec le tag latest.

container_name: mariadb_alone

container_name: mariadb_alone : Définit un nom personnalisé pour le conteneur. Cela peut être utile pour identifier facilement le conteneur.

environment:
    MYSQL_ROOT_PASSWORD: rootpassword
    MYSQL_DATABASE: mydb
    MYSQL_USER: user
    MYSQL_PASSWORD: userpassword

environment : Définit les variables d'environnement pour configurer la base de données MariaDB. MYSQL_ROOT_PASSWORD : Mot de passe pour l'utilisateur root de la base de données. MYSQL_DATABASE : Nom de la base de données à créer. MYSQL_USER : Nom d'un utilisateur supplémentaire à créer. MYSQL_PASSWORD : Mot de passe pour cet utilisateur supplémentaire.

ports:
    - "3306:3306"

ports : Mappe le port 3306 du conteneur au port 3306 de l'hôte, permettant d'accéder à la base de données depuis l'extérieur du conteneur.

volumes:
    - mariadb_data:/var/lib/mysql

volumes : Définit un volume pour stocker les données de la base de données. Cela permet de persister les données même si le conteneur est supprimé ou recréé. mariadb_data:/var/lib/mysql : Monte le volume mariadb_data sur le chemin /var/lib/mysql dans le conteneur, où MariaDB stocke ses données.

volumes:
    mariadb_data:

volumes : Définit les volumes utilisés par les services. **mariad

