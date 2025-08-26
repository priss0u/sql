/*
#Exercice 0 : Connection à la base de donnée
*/
 mariadb -u root -p 
/*
#Exercice 1 : Création d une base de données et de tables

    Créez une table nommée client avec les champs suivants :

    Id(clé primaire) INT AUTO_INCREMENT PRIMARY KEY,
    Nom ,
    Prénom ,
    Adresse email ,
    Date d inscription ;

    Insérez 2 clients dans la table pour tester.
    
*/
    CREATE TABLE `customer`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `lastname` VARCHAR(60),
    `firstname` VARCHAR(60),
    `mail` VARCHAR(20),
    `date` DATE
    );

    INSERT INTO `customer` (`lastname`, `firstname`, `mail`, `date` )
    VALUES 
    (`Mohamed`, `Ilyes`, `lepoles@truc.com`,2010-02-21);
    (`Kevin`, `Balamini`, `vrairajul@ola.com`, 2003-02-20);

    SELECT * FROM `customer`;

    ALTER TABLE `customer`
    CHANGE `prenom` `lastname` VARCHAR(100);

 --Exercice 2

 --  Créez une table nommée commande avec les champs suivants :
        Id (clé primaire).
        Id_client (clé étrangère).
        Date de la commande.
        Montant total.

    CREATE TABLE `command`(
    id INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY INT (1) REFERENCES user(id),
    order date DATE,
    total amount FLOAT

);

        

        


