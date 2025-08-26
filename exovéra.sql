/*
#Exercice 0 : Connection à la base de donnée
*/
mariadb -u root -p 
USE mydatabase;

/*
#Exercice 1 : Création d une base de données et de tables

    Créez une table nommée client avec les champs suivants :
        Id(clé primaire).
        Nom.
        Prénom.
        Adresse email.
        Date d inscription.

    Insérez 2 clients dans la table pour tester.
    
*/
CREATE TABLE `customer` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `lastname` VARCHAR(100),
    `firstname` VARCHAR(100),
    `mail` VARCHAR(255),
    `date` Date
);

SHOW TABLES;

INSERT INTO `customer` (`lastname`, `firstname`, `mail`, `date`)
VALUES
('Doe', 'John', 'john.doe@example.com', '2023-01-15'),
('Smith', 'Jane', 'jane.smith@example.com', '2023-02-20');

SELECT * FROM `customer`;

ALTER TABLE `customer`
CHANGE `prenom` `lastname` VARCHAR(100);

/*
#Exercice 2 : Création d une base de données et de tables

    Créez une table nommée commande avec les champs suivants :
        Id (clé primaire).
        Id_client (clé étrangère).
        Date de la commande.
        Montant total.

    Insérez quelques valeurs dans la tables commande pour tester la configuration.
    Afficher toutes les commandes du client avec l'id 1
*/ 
CREATE TABLE `order` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `id_customer` INT,
    `date` Date, 
    `total` FLOAT,
    FOREIGN KEY (id_customer) REFERENCES customer(id)
);

SHOW TABLES;

INSERT INTO `order` (`id_customer`,`date`,`total`)
VALUES( 1,'2025-07-12',31.7),(2 ,'2025-04-24',182);

SELECT * FROM `order`;

SELECT *
FROM `customer`
INNER JOIN `order` ON `customer`.`id` = `order`.`id_customer`
WHERE `customer`.`id` = 1;


/*
#Exercice 3 : Modification des données dans une table
    Ajoutez une colonne dans la table Client pour stocker le numéro de téléphone des clients.
    Changez l’adresse email du client dont l’identifiant est 1.
    Modifiez la date d'inscription pour le client dont l’identifiant est 2.
    Vérifiez les modifications effectuées en consultant les données de la table Client.
*/

/*
#Exercice 4 :Suppression de champs et de données
    Supprimez la colonne Date d'inscription de la table Client.
    Supprimez tous les enregistrements dans la table Commande où le montant total est inférieur à 50 €.
    Vérifiez que les modifications ont été appliquées correctement en consultant les tables.
*/

/*
#Exercice 5 :Création, modification et suppression de données
    Créez une table nommée Livre avec les champs suivants :
        Id (clé primaire).
        Titre.
        Auteur.
        Année de publication.
        Nombre de pages.

    Insérez les données suivantes dans la table Livre :
        Livre 1 : "1984", George Orwell, 1949, 328 pages.
        Livre 2 : "Le Seigneur des Anneaux", J.R.R. Tolkien, 1954, 1178 pages.

    Modifiez l'année de publication du livre dont l'identifiant est 1 à 1950.

    Supprimez le livre dont le titre est "Le Seigneur des Anneaux".

    Vérifiez les résultats en consultant les données de la table Livre.
*/