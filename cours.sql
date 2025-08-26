# Dans le terminal de docker :

# Pour écrire en bash pour être en bash :
-- bash

# Pour la connection à mariadb :
-- mariadb -u root -p 

-- Sélection de la base de données :
USE ma_base_de_donnees;

-- Voir les tables dans la base de données : 

SHOW databases;

-- Création d'une table :
CREATE TABLE utilisateurs (
id INT AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(50),
age INT
);

-- Insertion de données :
INSERT INTO `user` (`nom`, `age`) 
VALUES ('Alice', 25);

INSERT INTO `user` (`nom`, `age`) 
VALUES ('Priscille', 25),
('Hafida', 25);

-- Mise à jour de données :
UPDATE `user` 
set `age`= 45
WHERE `id` = 1;

UPDATE `user` 
set `age`= 18
WHERE `nom` = 'Hafida';

-- Suppression de données :
DELETE FROM `user`
WHERE `id` = 1;

-- Sélection de toutes les colonnes de la table:
SELECT * FROM `user`;

-- Sélection de données avec un critère :
SELECT * FROM `user`
WHERE age > 19;

SELECT * FROM `user`
WHERE `nom` = 'Alice';

--Ajouter un champ^
ALTER TABLE `pseudo`
ADD id_user INT;

--Ajouter la Foreign KEY
ALTER TABLE `pseudo`
FOREIGN KEY (id_user) REFERENCES user(id);

--Jointure de deux tables
SELECT *
FROM `user`
INNER JOIN `pseudo` ON `user`.`id` = `pseudo`.`id_user`;