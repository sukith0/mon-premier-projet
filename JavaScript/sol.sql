/* se connecter en root 
ubuntu : sudo mysql
window (Mamp) : mysql localhost -u sol_admin -p (mdp : root)



créer une base de données vide
créer un utilisateur
donner droit admin*/;
CREATE DATABASE silence_on_lit;

SHOW DATABASES;

CREATE USER 'sol_admin'@'localhost' IDENTIFIED BY 'zizitop';

GRANT ALL ON silence_on_lit.* TO 'sol_admin'@'localhost';

/* entrer dans une base de données */

USE silence_on_lit

CREATE TABLE livres(
    id SMALLINT UNSIGNED NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL DEFAULT 'MEG rosscouy',
    editeur VARCHAR(255),
    synopsis TEXT,
    pages SMALLINT UNSIGNED NOT NULL,
    date_edition DATE,
    photo VARCHAR(255),
    genre VARCHAR(255) NOT NULL DEFAULT 'nc',
    langue VARCHAR(255) NOT NULL DEFAULT 'Français',
    lieu VARCHAR(255) NOT NULL DEFAULT 'Lille',
    is_illustre BOOLEAN NOT NULL DEFAULT FALSE
)ENGINE=innoDB;

SHOW TABLES;

DESCRIBE livres;

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES ('Voyagez Lisez Frissonnez', 'Olivier BAL', 'reccueil', 106, '2023-04-01');

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES  ('seuls', 'Gazzotti', 'BD', 56, '2000-01-01'),
            ('Marie claire ', 'Fabrice Gagnault', 'magazine', 276, '2020-11-01'),
            ('Changer l''eau des fleurs', 'Valérie Perrin', 'roman', 665, '2020-01-01'),
            ('Des vies en mieux', 'Anna Gavalda', 'roman', 441, '2015-07-01'),
            ('tentation', 'stephenie meyer', 'roman', 669, '2009-01-01');

            /*Olivier*/

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES ('La fille du train', 'Paula Hawkins', 'Roman', 453, '2016-07-01');

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES  ('Le grand nul part', 'James Ellroy', 'Polar', 635, '1998-08-01'),
            ('Les racines du mal', 'Maurice G. Dantec', 'Policier', 744, '1995-04-01'),
            ('Les égouts de Los Angeles', 'Mickael Connely', 'Thriller', 377, '1997-11-01'),
            ('Ubik', 'Philip K. Dick', 'Sciences-Fiction', 212, '1965-01-01'),
            ('Carbone Modifié', 'Richard Morgan', 'science fiction', 511, '2002-10-01');
            
/*Zae*/
INSERT INTO livres(titre, auteur, genre, pages, date_edition)
   VALUES   ('UN AN pour gagner UN MILLION', 'Ryan Daniel Moran', 'Création entreprise', 302, '2022-04-14');
 
INSERT INTO livres(titre, auteur, genre, pages, date_edition)
   VALUES   ('Les Fourmis', 'Bernard Werber', 'Science-fiction', 320, '1997-05-01'),
            ('Les égyptiennes', 'Christian Jacq', 'Roman historique', 334, '1999-09-01'),
            ('Et Après...', 'Guillaume Musso', 'Fiction psychologique', 376, '2013-10-03'),
            ('hésitation', 'Stephenie Meyer', 'Roman', 569, '2009-09-02'),
            ('Olé!San-Antonio', 'Fleuve Noir', 'Bande dessinée', 48, '1972-01-01');


/*Lyderic*/

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES('le livre des nombres', 'John h. Conway, Richard K.Guy', 'manuel', 310, '1998-04-01');
    
INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES('ces grandes gueules qui nous gouvernent', 'Rampal', 'BD', 128, '1987-03-01'),
        ('maman a tort', 'michel bussi', 'roman policier', 509, '2015-05-07'),
        ('de l''amour en autistan', 'josef schovanec', 'roman', 211, '2015-11-05'),
        ('quand nos souvenirs viendront danser', 'virginie gimaldi', 'roman', 344, '2019-05-02'),
        ('le petit singe qui faisait des manières', 'wasterlain', 'BD', 48, '1985-01-01');

/*Noémie*/
INSERT INTO livres(titre, auteur, genre, pages, date_edition)
      VALUES('Les Fourmies ' , 'Bernard Werber' , 'doccumentaire ', 312, '1993-04-01');

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
      VALUES("Je voudrais que quelqu'un m'attende quelque part " , "Anna Gavalda" , "roman     amour" , 156, "2005-01-15"),
            ('Les métamorphose ' , 'beatrice périgot' , ' roman FANTASTIQUE  ' ,471, '2005-07-01'),
            ('un appartement à paris ' , 'guillaume musso' , 'roman thriller ' , 471, '2015-03-01'),
            ("l''histoire des expression francaise " , 'Frederic gersal' , 'doccumentaire ', 98, '2018-11-26'),
            ('game over' , 'collectif' , 'BD ' , 45, '2011-11-01');

/*Matthew*/
INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES ('Quand nous étions orphelins', 'Kasuo Ishiguro', 'polar', 538, '2009-10-01');

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES ('Maigrir en se faisant plaisir', 'Gourmand', 'magazine', 99, '2005-06-09'),
            ('La civilisation du poisson rouge', 'Bruno Patino', 'roman', 161, '2020-04-01'),
            ('My Hero Acedemia', 'Kohei Horikoshi', 'shonen', 60, '2014-01-01'),
            ('Découvrir un sens à sa vie', 'Viktor E. Frankl', 'autobiographie', 177, '2013-01-01'),
            ('No Limits', 'Derib', 'BD', 26, '2000-01-01');

/*Matthieu*/
INSERT INTO livres(titre,auteur,genre,pages,date_edition)
       VALUES ('Et si c''etait vrais', 'Marc Hawkins', 'Roman', 250, '2003-05-07');



INSERT INTO livres(titre,auteur,genre,pages,date_edition)
      VALUES  ('Pourquoi pas ?', 'David NICHOLLS', 'Roman', 453, '2013-03-01'),
        ('Colline', 'Jean GIONO', 'Roman', 158, '2005-01-01'),
        ('Histoires macabres', 'Hitchcock', 'Receuil', 319, '1961-01-01'),
        ('La grande histoire des cités englouties', 'Collectif', 'Magazine', 98, '2020-03-01'),
        ('Trucs-en-vrac', 'Gotlib', 'BD', 48, '1977-01-01'),
        ('100 photo de Don McCullin pour la liberté de la presse', 'Reporters sans frontières', 'Album', 144, '2009-03-01');



/*Yanis*/

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES  ('Hésitation', 'Stephenie MEYER', 'Roman', 615, '2009-04-01');

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES ('l''âme du monde', 'Frédéric LENOIR', 'Roman', 151, '2014-08-01'),
            ('en attendant bojangles', 'Olivier BOURDEAUT', 'Roman', 158, '2015-01-01'),
            ('New York odyssée', 'Kristopher JANSMA', 'Roman', 603, '2018-01-01'),
            ('aâma', 'Fredrerik PEETERS', 'BD', 86, '2011-10-01'),
            ('biocontact', 'collectif', 'magasine', 97, '2020-11-01');

/*Amine*/
    INSERT INTO livres(titre, auteur,genre,pages,date_edition)
       VALUES
       ('la 5e vague','rick yangey','roman',458, '2000-01-01'),
       ('Dans les forets de siberie','Sylvain Tesson','roman',290, '2000-01-01'),
       ('le démon des maths','M.Esenberger','roman',268, '2000-01-01'),
       ('histoire universelle des chiffres','georges ifrah','roman',937, '2000-01-01'),
       ('elever son enfant autrement','Catherine Dumonteil-kermer','roman',343, '2000-01-01');

/*Mazigh*/

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES  ('Logicomix', 'Apostolos Doxiadis, Christos Papadimitriou,Alecos Papadatos, Annie Di Donna','BD',361,'2008-10-01'),
    
    INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES  ('La Valse lente des tortues', 'Katherine Pancol','Roman',752,'2008-02-01'),
            ('La liste de mes envies', 'Grégoire Delacourt','Roman',183,'2012-01-01'),
            ('Moi je', 'Aude Picault','BD',60,'2020-10-28'),
            ('Mon prof de Zumba', 'Tome Janry','BD',32,'2014-08-22'),
            ('Lanfeust des étoiles', 'Arleston, Tarquin','BD',48,'2008-01-01');


/*Thomas*/

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
    VALUES ( 'L''Des souris et des hommes', 'John Steinbeck', 'Roman', 174 , '2013-05-29');

 INSERT INTO livres(titre, auteur, genre, pages, date_edition) 
    VALUES ( 'L''Au fil des rues', 'Ravet Anceau', 'Roman', 217 , '2004-05-01'),
           ( 'L''Une femme', 'Annie Ernaux', 'Roman', 105 , '1986-04-20'),
           ( 'L''Le Robert & Collins Vocabulaire Anglais & Américain', 'Robert & Collins', 'Dictionnaire', 394 , '1997-06-01'),
           ( 'L''Histoire Universelle Des Chiffres', 'Robert Lafont', 'Apprentisage', 1041 , '1994-06-01'),
           ( 'Des Textes à l oeuve', 'Romain Lancrey-Javal', 'Apprentisage', 524 , '2000-03-01');

/*Dimitri*/
INSERT INTO livres(titre, auteur, genre, pages, date_edition)
      VALUES ("De l'amour en Autistan", 'Josef Schovanec','Roman',240,'2016-11-01');

INSERT INTO livres(titre, auteur, genre, pages, date_edition)
      VALUES ("Auprès de moi toujours", 'Kazuo Ishiguro','Roman',448,'2011-01-12'),
             ("Le diable vit à Notting hill", 'Rachel Johnson','Roman',384,'2011-05-04'),
             ("Coluche le pavé", 'Pierre Bénichou','Biographie',825,'2011-12-01'),
             ("La défaite du cancer", 'Dr Laurent Alexandre','Documents',350,'2014-10-01'),
             ("Les classiques de wolinski", 'Albin Michel','BD',72,'2003-06-01');


    CREATE TABLE genres (
        id TINYINT UNSIGNED NOT NULL  AUTO_INCREMENT PRIMARY KEY,
        nom VARCHAR(255) NOT NULL
    )ENGINE=innoDB;

    INSERT INTO genres(nom)
        VALUES  ('Non classé'),
                ('Roman'),
                ('BD'),
                ('Manga'),
                ('Roman policier'),
                ('Science-fiction'),
                ('Documentaire-éducatif'),
                ('Magazine'),
                ('Recueil'),
                ('Coaching-entrepreunariat')
    
    SELECT * FROM livres;
    SELECT genre, titre, auteur, DATE_FORMAT(date_edition, '%Y') AS 'Année d''édition' FROM livres WHERE genre='Roman' ORDER BY date_edition DESC /*asc ascendant*/;
    SELECT  titre, genre FROM livres 

    ALTER TABLE livres

    ADD COLUMN genre_id TINYINT UNSIGNED NOT NULL DEFAULT 1

    ALTER TABLE livres

    ADD FOREIGN KEY (genre_id) REFERENCES genres(id)

   UPDATE livres 
    SET genre_id = 2
    WHERE genre = "roman" OR genre = "Fiction psychologique" OR genre = "roman     amour" OR genre = "Roman historique";


UPDATE livres 
    SET genre_id = 3
    WHERE genre = "BD" OR genre = "Bande dessinée";

UPDATE livres 
    SET genre_id = 4
    WHERE genre = "shonen";

UPDATE livres 
    SET genre_id = 5
    WHERE genre = "Polar" OR genre = "Policier" OR genre = "roman policier" OR genre = "roman thriller" OR genre = "Thriller";

UPDATE livres 
    SET genre_id = 6
    WHERE genre = "science fiction" OR genre = "Science-fiction" OR genre = "Sciences-Fiction";

UPDATE livres 
    SET genre_id = 7
    WHERE genre = "Apprentisage" OR genre = "autobiographie" OR genre = "Biographie" OR genre = "Dictionnaire" OR genre = "doccumentaire" OR genre = "Documents" OR genre = "manuel";
    
UPDATE livres 
    SET genre_id = 8
    WHERE genre = "magasine" OR genre = "magazine" ;
    
UPDATE livres 
    SET genre_id = 9
    WHERE genre = "Album" OR genre = "reccueil" OR genre = "Biographie" OR genre = "Dictionnaire" OR genre = "doccumentaire" OR genre = "Receuil";

UPDATE livres 
    SET genre_id = 10
    WHERE genre = "Création entreprise";

    ALTER TABLE livres
    DROP genre


    SELECT livres.titre, livres.auteur, DATE_FORMAT(livres.date_edition, '%Y') AS 'Année' genres.nom
    FROM livres
    INNER JOIN genres ON livres.genre_id=genres.id;

    WHERE livres.genre_id=2
    ORDER BY livres.date_edition DESC;


    ORDER BY livre.date_edition DESC

    CREATE VIEW livres_vw AS (
    SELECT livres.titre, livres.auteur, Date_FORMAT(livres.date_edition, '%y')AS 'année', genres.nom


FROM livres
        INNER JOIN genres ON livres.genre_id = genres.id
        /*WHERE livres.genre_id = 5*/
        ORDER BY livres.date_edition DESC);
SELECT * FROM livres_vw;

CREATE TABLE utilisateurs (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_utilisateur VARCHAR(255) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    mail VARCHAR (255) NOT NULL UNIQUE,
    is_admin BOOLEAN NOT NULL DEFAULT FALSE
)ENGINE=innoDB;

INSERT INTO utilisateurs(nom_utilisateur, mot_de_passe, mail, is_admin)
        VALUES  ('zizitop', 'zizitop3000', 'romaindurix@hotmail.fr', flase),
                ('MattRiche', 'richou', 'legolmondu78@hotmail.fr', false),
                ('MattPauvre', 'pauvre', 'legigaggolmon77@hotmail.fr', ,false),
                ('alexandre', 'zizitop3000', 'alexandre@hotmail.fr', true);

ALTER TABLE livres
        ADD COLUMN utilisateur_id SMALLINT UNSIGNED;

ALTER TABLE livres
        ADD FOREIGN KEY (utilisateur_id) REFERENCES utilisateurs(id);

        UPDATE livres
        SET utilisateur_id=1
        WHERE id=5 OR id=27
        UPDATE livres
        SET utilisateur_id=2
        WHERE id=3 OR id=24 OR id=65
        UPDATE livres
        SET utilisateur_id=3
        WHERE id=2


SELECT livres.titre, utilisateurs.nom_utilisateur
    FROM livres
    INNER JOIN utilisateurs ON livres.utilisateur_id=utilisateurs.id
    ORDER BY livres.titre;

