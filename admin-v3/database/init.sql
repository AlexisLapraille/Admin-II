USE woodytoys
CREATE TABLE `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  `quantité` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE USER 'b2b'@10.2.0.1 IDENTIFIED BY 'password';
CREATE USER 'intranet'@10.2.0.1 IDENTIFIED BY 'password';

GRANT SELECT ON woodytoys.produit TO 'b2b'@10.2.0.1;
GRANT SELECT,INSERT ON woodytoys.produit TO 'intranet'@10.2.0.1;


INSERT INTO `produit` (`id`, `nom`, `prix`, `quantité`) VALUES
(1, 'jouet1', 100, 10),
(2, 'jouet2', 150, 15),
(3, 'jouet3', 200, 20);


--
-- mysql -u root -p
-- USE woodytoys;
-- SHOW TABLES;
-- SELECT * FROM produit;
-- UPDATE produit SET nom = 'jouet_updated' WHERE id = 1; (remettre comme avant : UPDATE produit SET nom = 'jouet1' WHERE id = 1;)
-- SELECT * FROM produit;
--