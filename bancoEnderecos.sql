-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 13, 2016 at 02:44 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ceps`
--

-- --------------------------------------------------------

--
-- Table structure for table `bairro`
--

CREATE TABLE `bairro` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `id_cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bairro`
--

INSERT INTO `bairro` (`id`, `nome`, `id_cidade`) VALUES
(1, 'Santa Maria', 3),
(2, 'Canaã', 3),
(3, 'Natal', 3),
(4, 'Vila Santana', 2),
(5, 'Jardim dos Estados', 2),
(6, 'Parque Campolim', 2),
(7, 'Brás', 1),
(8, 'Brasilandia', 1),
(9, 'Centro', 4),
(10, 'Setor Central', 5),
(11, 'Comercio', 6),
(12, 'Centro', 7),
(13, 'Centro', 8),
(14, 'Centro Norte', 9),
(15, 'Aguas_Vermelhas', 2),
(16, 'Vila_Santana', 2),
(17, 'Jardim_dos_Estados', 2),
(18, 'Parque_Campolim', 2),
(19, 'Cajuru', 2),
(20, 'Aricanduva', 1),
(21, 'Bras', 1),
(22, 'Brasilandia', 1),
(23, 'Ferreira', 1),
(24, 'Cursino', 1),
(25, 'Santa_Maria', 3),
(26, 'Canaa', 3),
(27, 'Natal', 3),
(28, 'Curicica', 4),
(29, 'Barra_da_Tijuca', 4),
(30, 'Cosmos', 4),
(31, 'Vila_Sao_Joao', 5),
(32, 'Vila_Rosa', 5),
(33, 'Itatiaia', 5),
(34, 'Ganchinho', 7),
(35, 'Atuba', 7),
(36, 'Boqueirao', 7),
(37, 'Centro', 8),
(38, 'Andorinhas', 8),
(39, 'Bonfim', 8),
(40, 'Goiabeiras', 9),
(41, 'Cohab_Nova', 9),
(42, 'Quilombo', 9),
(43, 'Indubrasil', 10),
(44, 'Jacy', 10),
(45, 'Margarida', 10);

-- --------------------------------------------------------

--
-- Table structure for table `cidade`
--

CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `sigla_estado` varchar(4) NOT NULL,
  `cep_geral` varchar(9) NOT NULL,
  `populacao` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cidade`
--

INSERT INTO `cidade` (`id`, `nome`, `sigla_estado`, `cep_geral`, `populacao`) VALUES
(1, 'São Paulo', 'SP', '01000000', 11320),
(2, 'Sorocaba', 'SP', '18000000', 580),
(3, 'Ituiutaba', 'MG', '38000000', 102),
(4, 'Rio de Janeiro', 'RJ', '20000000', 6320),
(5, 'Goiania', 'GO', '74000000', 1296),
(6, 'Salvador', 'BA', '40000000', 2675),
(7, 'Curitiba', 'PR', '80000000', 1752),
(8, 'Vitoria', 'ES', '29000000', 211),
(9, 'Cuiaba', 'MT', '78000000', 580),
(10, 'Campo Grande', 'MS', '79000000', 774);

-- --------------------------------------------------------

--
-- Table structure for table `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `cep_geral` varchar(45) DEFAULT NULL,
  `id_cidade` varchar(45) DEFAULT NULL,
  `nome_rua` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `endereco`
--

INSERT INTO `endereco` (`id`, `numero`, `cep`, `cep_geral`, `id_cidade`, `nome_rua`) VALUES
(1, '569', '38304-262', NULL, '3', '5'),
(2, '190', '38303-321', NULL, '3', 'C19'),
(3, '1348', '38300-303', NULL, '3', '51'),
(4, '597', '38303-285', NULL, '3', 'C07'),
(5, '346', '38303-289', NULL, '3', 'C09'),
(6, '466', '18080-725', NULL, '2', 'Jeronimo Rosa'),
(7, '869', '18080-690', NULL, '2', 'Julio Ribeiro'),
(8, '723', '18046-065', NULL, '2', 'lituania'),
(9, '654', '18047-632', NULL, '2', 'Estela Campolim'),
(10, '123', '18046-640', NULL, '2', 'Messias Pereira de Paula'),
(11, '489', '03050-010', NULL, '1', 'Cavalheiro'),
(12, '583', '03013-040', NULL, '1', 'Sampson'),
(13, '276', '03012-060', NULL, '1', 'Rubino de Oliveira'),
(14, '197', '02845-160', NULL, '1', 'Jose Siqueira de Brito'),
(15, '1634', '02844-100', NULL, '1', 'Angaí '),
(16, '985', '20010-000', NULL, '4', 'Primeiro de Marco'),
(17, '721', '20010-020', NULL, '4', 'São Jose'),
(18, '1453', '20010-070', NULL, '4', 'Cais Pharoux'),
(19, '543', '20010-090', NULL, '4', 'Dom Manuel'),
(20, '655', '20010-100', NULL, '4', 'Jaco do Bandolim'),
(21, '512', '74005-010', NULL, '5', 'Goais'),
(22, '456', '74013-010', NULL, '5', '1'),
(23, '864', '74013-030', NULL, '5', '8'),
(24, '637', '74013-035', NULL, '5', 'Do Lazer'),
(25, '549', '74013-040', NULL, '5', '9'),
(26, '546', '40010-050', NULL, '6', 'Da Holanda'),
(27, '791', '40010-060', NULL, '6', 'Da Noruega'),
(28, '638', '40010-080', NULL, '6', 'Da Suecia'),
(29, '749', '40010-901', NULL, '6', 'Da França'),
(30, '236', '40010-902', NULL, '6', 'Dos Estados Unidos'),
(31, '798', '80010-000', NULL, '7', 'Jose Loureiro'),
(32, '467', '80010-010', NULL, '7', 'Marechal Deodoro'),
(33, '136', '80010-020', NULL, '7', 'Pedra Ivo'),
(34, '649', '80010-030', NULL, '7', 'Rui Barbosa'),
(35, '301', '80010-080', NULL, '7', 'Andre de Barros'),
(36, '893', '29010-030', NULL, '8', 'General Osorio'),
(37, '720', '29010-050', NULL, '8', 'Arariboia'),
(38, '913', '29010-090', NULL, '8', 'Da Alfandega'),
(39, '746', '29010-120', NULL, '8', 'Duque de Caxias'),
(40, '731', '29010-160', NULL, '8', 'João Aguirre'),
(41, '672', '78005-010', NULL, '9', 'Pedro Celestino'),
(42, '648', '78005-030', NULL, '9', 'Mato Grosso'),
(43, '974', '78005-050', NULL, '9', 'Sete de Setembro'),
(44, '1046', '78005-150', NULL, '9', 'Candido Mariano'),
(45, '1023', '78005-170', NULL, '9', 'Campo Grande'),
(46, '413', '79002-030', NULL, '10', 'João Rosa Pires'),
(47, '725', '79002-074', NULL, '10', 'Afonso Pena'),
(48, '349', '79002-560', NULL, '10', 'Euclides da cunha'),
(49, '345', '79002-820', NULL, '10', 'Fernando Correa da Costa'),
(50, '463', '79002-904', NULL, '10', 'Dom Aquino'),
(51, '1498', '38304-242', NULL, '3', '43'),
(52, '482', '01004-904', NULL, '1', 'Barão de Paranapiacaba');

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE `estado` (
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `sigla_pais` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estado`
--

INSERT INTO `estado` (`sigla`, `nome`, `sigla_pais`) VALUES
('BA', 'Bahia', 'BR'),
('ES', 'Espirito Santo', 'BR'),
('GO', 'Goais', 'BR'),
('MG', 'Minas Gerais', 'BR'),
('MS', 'Mato Grosso do Sul', 'BR'),
('MT', 'Mato Grosso', 'BR'),
('PR', 'Parana', 'BR'),
('RJ', 'Rio de Janeiro', 'BR'),
('RS', 'Rio Grande do sul', 'BR'),
('SP', 'São Paulo', 'BR');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`sigla`, `nome`) VALUES
('BR', 'Brasil');

-- --------------------------------------------------------

--
-- Table structure for table `regiao`
--

CREATE TABLE `regiao` (
  `cep` varchar(9) NOT NULL,
  `id_tipo_logradouro` int(11) NOT NULL,
  `cidade_id` int(11) NOT NULL,
  `lado` char(1) DEFAULT NULL,
  `nro_inicial` int(11) DEFAULT NULL,
  `nro_final` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regiao`
--

INSERT INTO `regiao` (`cep`, `id_tipo_logradouro`, `cidade_id`, `lado`, `nro_inicial`, `nro_final`) VALUES
('01004-904', 2, 1, NULL, NULL, NULL),
('02844-100', 2, 1, NULL, NULL, NULL),
('02845-160', 2, 1, NULL, NULL, NULL),
('03012-060', 2, 1, NULL, NULL, NULL),
('03013-040', 2, 1, NULL, NULL, NULL),
('03050-010', 2, 1, NULL, NULL, NULL),
('18046-065', 2, 2, NULL, NULL, NULL),
('18046-640', 2, 2, NULL, NULL, NULL),
('18047-632', 2, 2, NULL, NULL, NULL),
('18080-690', 2, 2, NULL, NULL, NULL),
('18080-725', 2, 2, NULL, NULL, NULL),
('20010-000', 2, 4, NULL, NULL, NULL),
('20010-020', 2, 4, NULL, NULL, NULL),
('20010-070', 2, 4, NULL, NULL, NULL),
('20010-090', 2, 4, NULL, NULL, NULL),
('20010-100', 2, 4, NULL, NULL, NULL),
('29010-030', 2, 8, NULL, NULL, NULL),
('29010-050', 2, 8, NULL, NULL, NULL),
('29010-090', 2, 8, NULL, NULL, NULL),
('29010-120', 2, 8, NULL, NULL, NULL),
('29010-160', 2, 8, NULL, NULL, NULL),
('38300-303', 1, 3, NULL, NULL, NULL),
('38303-285', 1, 3, NULL, NULL, NULL),
('38303-289', 1, 3, NULL, NULL, NULL),
('38303-321', 1, 3, NULL, NULL, NULL),
('38304-242', 1, 3, NULL, NULL, NULL),
('38304-262', 1, 3, NULL, NULL, NULL),
('40010-050', 2, 6, NULL, NULL, NULL),
('40010-060', 2, 6, NULL, NULL, NULL),
('40010-080', 2, 6, NULL, NULL, NULL),
('40010-901', 1, 6, NULL, NULL, NULL),
('40010-902', 1, 6, NULL, NULL, NULL),
('74005-010', 1, 5, NULL, NULL, NULL),
('74013-010', 2, 5, NULL, NULL, NULL),
('74013-030', 2, 5, NULL, NULL, NULL),
('74013-035', 2, 5, NULL, NULL, NULL),
('74013-040', 2, 5, NULL, NULL, NULL),
('78005-010', 2, 9, NULL, NULL, NULL),
('78005-030', 1, 9, NULL, NULL, NULL),
('78005-050', 2, 9, NULL, NULL, NULL),
('78005-150', 2, 9, NULL, NULL, NULL),
('78005-170', 2, 9, NULL, NULL, NULL),
('79002-030', 1, 10, NULL, NULL, NULL),
('79002-074', 1, 10, NULL, NULL, NULL),
('79002-560', 2, 10, NULL, NULL, NULL),
('79002-820', 1, 10, NULL, NULL, NULL),
('79002-904', 2, 10, NULL, NULL, NULL),
('80010-000', 2, 7, NULL, NULL, NULL),
('80010-010', 2, 7, NULL, NULL, NULL),
('80010-020', 2, 7, NULL, NULL, NULL),
('80010-030', 2, 7, NULL, NULL, NULL),
('80010-080', 2, 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_logradouro`
--

CREATE TABLE `tipo_logradouro` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_logradouro`
--

INSERT INTO `tipo_logradouro` (`id`, `descricao`) VALUES
(1, 'Av.'),
(2, 'Rua'),
(3, 'Rodovia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bairro_cidade1_idx` (`id_cidade`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cidade_estado1_idx` (`sigla_estado`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_endereco_regiao1_idx` (`cep`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`sigla`,`sigla_pais`),
  ADD KEY `fk_estado_pais_idx` (`sigla_pais`),
  ADD KEY `sigla_pais` (`sigla_pais`),
  ADD KEY `sigla_pais_2` (`sigla_pais`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`sigla`);

--
-- Indexes for table `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`cep`),
  ADD KEY `fk_logradouro_tipo_logradouro1_idx` (`id_tipo_logradouro`),
  ADD KEY `fk_regiao_cidade1_idx` (`cidade_id`);

--
-- Indexes for table `tipo_logradouro`
--
ALTER TABLE `tipo_logradouro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bairro`
--
ALTER TABLE `bairro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tipo_logradouro`
--
ALTER TABLE `tipo_logradouro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bairro`
--
ALTER TABLE `bairro`
  ADD CONSTRAINT `fk_bairro_cidade1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `fk_cidade_estado1` FOREIGN KEY (`sigla_estado`) REFERENCES `estado` (`sigla`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_endereco_regiao1` FOREIGN KEY (`cep`) REFERENCES `regiao` (`cep`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`sigla_pais`) REFERENCES `pais` (`sigla`),
  ADD CONSTRAINT `fk_estado_pais` FOREIGN KEY (`sigla_pais`) REFERENCES `pais` (`sigla`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `regiao`
--
ALTER TABLE `regiao`
  ADD CONSTRAINT `fk_logradouro_tipo_logradouro1` FOREIGN KEY (`id_tipo_logradouro`) REFERENCES `tipo_logradouro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_regiao_cidade1` FOREIGN KEY (`cidade_id`) REFERENCES `cidade` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
