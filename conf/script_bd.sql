CREATE TABLE `vendedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `usuário` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `ifc`.`vendedor` (`id`, `nome`, `usuário`, `senha`) VALUES ('1', 'Rodrigo', 'voigt0', '1234');
INSERT INTO `ifc`.`vendedor` (`id`, `nome`, `usuário`, `senha`) VALUES ('2', 'Renan', 'r3nan', '4321');
INSERT INTO `ifc`.`vendedor` (`id`, `nome`, `usuário`, `senha`) VALUES ('3', 'Gabriel', '0gab0', '2341');
INSERT INTO `ifc`.`vendedor` (`id`, `nome`, `usuário`, `senha`) VALUES ('4', 'Geraldo', 'gerald', '3412');
INSERT INTO `ifc`.`vendedor` (`id`, `nome`, `usuário`, `senha`) VALUES ('5', 'Fabio', 'fab1', '2143');

CREATE TABLE `atleta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `ifc`.`atleta` (`id`, `nome`, `peso`, `altura`) VALUES ('1', 'Rodrigo', '61', '1.83');
INSERT INTO `ifc`.`atleta` (`id`, `nome`, `peso`, `altura`) VALUES ('2', 'Célio', '63', '1.84');
INSERT INTO `ifc`.`atleta` (`id`, `nome`, `peso`, `altura`) VALUES ('3', 'Paulo', '72', '1.78');
INSERT INTO `ifc`.`atleta` (`id`, `nome`, `peso`, `altura`) VALUES ('4', 'César', '67', '1.56');
INSERT INTO `ifc`.`atleta` (`id`, `nome`, `peso`, `altura`) VALUES ('5', 'Julia', '58', '1.65');

CREATE TABLE `pessoa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `horaEntrada` time DEFAULT NULL,
  `horaSaida` time DEFAULT NULL,
    `idade` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `ifc`.`pessoa` (`id`, `nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('1', 'Rodrigo', '7:35:00', '17:15:00', '16');
INSERT INTO `ifc`.`pessoa` (`id`, `nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('2', 'Leandro', '7:32:47', '17:12:00', '17');
INSERT INTO `ifc`.`pessoa` (`id`, `nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('3', 'Marcos', '7:17:54', '17:17:54', '18');
INSERT INTO `ifc`.`pessoa` (`id`, `nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('4', 'Vinicius', '7:18:44', '17:18:54', '16');
INSERT INTO `ifc`.`pessoa` (`id`, `nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('5', 'Renam', '7:16:30', '17:20:00', '15');

CREATE TABLE `time` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `pontos` int DEFAULT NULL,
    `dataFundação` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `ifc`.`time` (`id`, `nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('1', 'Flamengo', 'Rio de Janeiro', '100', '1967-01-12');
INSERT INTO `ifc`.`time` (`id`, `nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('2', 'Grêmio', 'Pelotas', '78', '1978-04-11');
INSERT INTO `ifc`.`time` (`id`, `nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('3', 'São Paulo', 'São Paulo', '98', '1969-04-03');
INSERT INTO `ifc`.`time` (`id`, `nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('4', 'Palmeiras', 'Rio do Sul', '67', '1987-09-06');
INSERT INTO `ifc`.`time` (`id`, `nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('5', 'Bahia', 'Salvador', '89', '1956-10-10');
UPDATE `ifc`.`time` SET `dataFundação` = '1987-03-03' WHERE (`id` = '3');
UPDATE `ifc`.`time` SET `dataFundação` = '1985-07-07' WHERE (`id` = '5');

CREATE TABLE `peca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `fornecedor` varchar(45) DEFAULT NULL,
    `garantia` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `ifc`.`peca` (`id`, `descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('1', 'motor de arranque', '19', 'intel', '2022-01-01');
INSERT INTO `ifc`.`peca` (`id`, `descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('2', 'parachoque', '18', 'valve', '2023-06-12');
INSERT INTO `ifc`.`peca` (`id`, `descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('3', 'parafuso', '17.89', 'asus', '2022-05-05');
INSERT INTO `ifc`.`peca` (`id`, `descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('4', 'engrenagem', '16.99', 'acer', '2024-09-09');
INSERT INTO `ifc`.`peca` (`id`, `descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('5', 'retrovisor', '17.99', 'fiat', '2025-08-08');
