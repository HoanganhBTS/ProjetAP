INSERT INTO `client` (`nom_utilisateur`,`password`,`nom`,`prenom`,`telephone_client`,`adresse_client`,`adressemail_client`,`date_client`)
VALUES
  ("Ben","BenMc","Benedict","Mckay","0949513766","Ap #523-8537 Mauris Road","non.bibendum@hotmail.com","2024-06-18"),
  ("Col","ColCo","Colin","Cole","0710233732","Ap #768-2705 Felis, Ave","risus.morbi@icloud.ca","2022-10-17"),
  ("Nay","NayHo","Nayda","Hogan","0288752747","Ap #554-5917 Enim. St.","magna.nam.ligula@hotmail.net","2023-07-15"),
  ("Myl","MylPo","Myles","Powell","0662840588","Ap #605-1663 Eu, Road","dictum.proin@outlook.couk","2024-02-13"),
  ("Chris","ChrisMe","Christine","Melendez","0320752476","Ap #661-6164 Natoque Ave","suspendisse@icloud.net","2023-11-24");


INSERT INTO `logement` (`lieu`,`prix_logement`,`taille_logement`,`type_logement`)
VALUES
  ("Ap #523-8537 Mauris Road",733,95,"A"),
  ("Ap #768-2705 Felis, Ave",855,30,"B"),
  ("Ap #554-5917 Enim. St.",680,9,"C"),
  ("Ap #605-1663 Eu, Road",107,56,"D"),
  ("Ap #661-6164 Natoque Ave",999,62,"A");

INSERT INTO `prestation`(`nom_prestation`,`prix_prestation`)
VALUES
  ("prestation2",230),
  ("prestation3",812),
  ("prestation4",830),
  ("prestation1",226),
  ("prestation2",21);

INSERT INTO `reservation` (`date_debut`,`date_fin`,`Prix_reservation`,`id_client`,`id_logement`,`validation_reservation`)
VALUES
  ("2023-09-05 ","2023-06-04 ",76,29,1,0),
  ("2023-01-14 ","2024-07-02 ",42,30,2,0),
  ("2024-02-07 ","2022-10-18 ",30,31,3,0),
  ("2024-09-22 ","2023-06-23 ",41,32,2,0),
  ("2023-06-05 ","2023-07-04 ",23,33,4,0);

INSERT INTO `contient` (`id_reservation`,`id_prestation`)
VALUES
  (11,3),
  (12,4),
  (13,2),
  (14,4),
  (15,1);