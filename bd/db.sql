-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 08-Dez-2023 às 16:40
-- Versão do servidor: 5.7.33
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `d3f4ltco_mentesbrilhantes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(10) NOT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `data_coment` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `id_publicacao` int(10) DEFAULT NULL,
  `id_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `texto`, `data_coment`, `status`, `id_publicacao`, `id_usuario`) VALUES
(1, 'E é vegana!', '2023-12-04 11:10:04', b'1', 1, 2),
(2, 'Funcionou', '2023-12-04 13:42:02', b'1', 2, 2),
(3, 'comentario', '2023-12-06 01:31:22', b'1', 3, 1),
(4, 'ta testado', '2023-12-08 16:20:59', b'1', 2, 6),
(5, 'me da 100', '2023-12-08 16:21:17', b'1', 2, 6),
(6, 'me da 100', '2023-12-08 16:21:18', b'1', 2, 6),
(7, 'ta testado', '2023-12-08 16:33:17', b'1', 7, 11),
(8, '', '2023-12-08 16:33:39', b'1', 5, 11),
(9, 'gosto não. ', '2023-12-08 16:34:04', b'1', 1, 11),
(10, 'cara loco', '2023-12-08 16:34:47', b'1', 8, 13),
(11, '5678', '2023-12-08 16:38:12', b'1', 3, 12),
(12, 'cara foda', '2023-12-08 16:38:49', b'1', 4, 12),
(13, 'baitola', '2023-12-08 16:39:40', b'1', 6, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtida`
--

CREATE TABLE `curtida` (
  `id_curtida` int(10) NOT NULL,
  `id_usuario` int(10) DEFAULT NULL,
  `id_publicacao` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `interacoes`
--

CREATE TABLE `interacoes` (
  `id_iteracoes` int(10) NOT NULL,
  `seguidor` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacao`
--

CREATE TABLE `publicacao` (
  `id_publicacao` int(10) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_post` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `id_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `publicacao`
--

INSERT INTO `publicacao` (`id_publicacao`, `imagem`, `descricao`, `data_post`, `status`, `id_usuario`) VALUES
(1, NULL, 'Pipoca doce é bom!', '2023-12-04 11:09:19', b'1', 1),
(2, NULL, 'Teste', '2023-12-04 12:15:14', b'1', 3),
(3, NULL, 'teste 1234', '2023-12-06 01:31:15', b'1', 1),
(4, NULL, '', '2023-12-08 16:17:54', b'1', 6),
(5, NULL, 'Glub Glub', '2023-12-08 16:18:29', b'1', 6),
(6, NULL, 'hmmmmmm\r\n', '2023-12-08 16:20:51', b'1', 6),
(7, NULL, 'teste', '2023-12-08 16:32:57', b'1', 8),
(8, NULL, 'xiii jão falando sozinho', '2023-12-08 16:33:05', b'1', 11),
(9, NULL, 'onde eu vim para?', '2023-12-08 16:35:16', b'1', 13),
(10, NULL, 'pix porfa.', '2023-12-08 16:38:43', b'1', 9),
(11, '5f9b061ce5966bef2126c8d95b0bc896.jpg', ':)', '2023-12-08 16:39:19', b'1', 14),
(12, '5f9b061ce5966bef2126c8d95b0bc896.jpg', ':)', '2023-12-08 16:39:20', b'1', 14),
(13, '5f9b061ce5966bef2126c8d95b0bc896.jpg', ':)', '2023-12-08 16:39:57', b'1', 14),
(14, NULL, 'leandrinhaxit!', '2023-12-08 16:40:00', b'1', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `apelido` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `bio` varchar(255) NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `data_cad` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email`, `imagem`, `apelido`, `nome`, `bio`, `senha`, `data_cad`, `status`) VALUES
(1, 'leo@email.com', 'f32febeaf330ecf45f8973100babecee', 'Léo', 'Leonardo', '', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', '2023-12-04 11:05:38', b'1'),
(2, 'stefani@email.com', '04aada52627f887f2b5070ccb8be1d27', ' ', 'Stéfani ', 'Cheia.', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', '2023-12-04 11:09:00', b'1'),
(3, 'gabrielordine31@gmail.com', 'pessoas.jpg', 'Biel', 'Gabriel', '', '*15C813B9528C550878BA429B1D47C312740937E7', '2023-12-04 12:14:56', b'1'),
(4, 'mdesousasegnini@gmail.com', 'pessoas.jpg', 'dfadfd', 'clara', '', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', '2023-12-07 16:02:14', b'1'),
(5, 'analuisacristensen2@gmail.com', 'pessoas.jpg', 'Ana', 'Ana Luísa Rosa Cristensen', '', '*1F7C280841526073ABA8ACAAAE4024104FAD3F9C', '2023-12-08 00:34:31', b'1'),
(6, 'saulosilvapereira3@gmail.com', 'c17533c7ac06dac6cf5a8f7b0e110cc4', 'Bill', 'BaiacuNordestino', 'Baiacu\r\n', '*4BD0D612B32A048B6F1142CD5CBB04CD1253793D', '2023-12-08 16:15:35', b'1'),
(7, 'gabymariagomes2@gmail.com', 'fa9ec08f857913f446f81aefe91f6d59', 'natashinha Caldeirão', 'Natasha Caldeirão', 'Quem é você mana?\r\n', '*5E16536EF8F47E477C3475BED4512B0823A3A42C', '2023-12-08 16:26:44', b'1'),
(8, 'natybaratella05@gmail.com', '871cc4c5b0acbc96d422e30d0c060359', '.', 'gretchen', '', '*FB0AB166F03E4BBAFB9F0E84A36D5AAD04B1C3B0', '2023-12-08 16:29:42', b'1'),
(9, 'maria.ferreira1b3etec2021@gmail.com', 'b9fb9d37bdf15a699bc071ce49baea53', 'Grávida de Taubaté', 'Grávida de Taubaté', 'ajude com pix, vou ter quadrigemeas', '*48DF117258C9EC8C775C41EC15B917DF9CF13734', '2023-12-08 16:30:43', b'1'),
(10, 'mariajuliavicente53@gmail.com', 'pessoas.jpg', 'Maju', 'Maria Julia', '', '*B92047D9EA05D21DEACEF426EAB3C855765D8112', '2023-12-08 16:31:06', b'1'),
(11, 'kauagrau74@gmail.com', '9b087ac8cba5d94f5d653b6aa42bcc52', 'Bone', 'kauã Do Grau', '', '*1CF146ACEA2317AA8B112867CCCEDBBDA636A051', '2023-12-08 16:31:30', b'1'),
(12, 'ana.b.teixeiramedeiros@gmail.com', '70ed8db72750bd5799e5a9c9150afb9d', 'trixie', 'Ana Beatriz', 'quase natal, feliz navidad :D', '*8AC5085CD0B10DBB8E97F2AA3F53A85A868299A9', '2023-12-08 16:32:23', b'1'),
(13, 'wcauan5353@gmail.com', '3c146b671264fea48c91a0580d352e82', 'ShrekReverso', 'Seila', '', '*138B1744E9362C350419D8C4954629EEB86030AE', '2023-12-08 16:32:32', b'1'),
(14, 'Techxpdih@gmail.com', '5f9b061ce5966bef2126c8d95b0bc896', 'Faellds', 'Diego Raffael', 'ACRE', '*AD9BCC3A1EE06520DD6AE06B863A17B647A98753', '2023-12-08 16:33:37', b'1'),
(15, 'vitorlegramandi95@gmail.com', 'bed3a767644eaad3e44baaf741d963c9', 'xitado', 'vitor', 'curioso do aralho kkkkkkkkkkkkkkkkkkkkkkkkk', '*9C2A91948FA07F9C6EBD91851BCE01DDAB6665FA', '2023-12-08 16:33:52', b'1'),
(16, 'gabrielaugustodepaula05@gmail.com', 'pessoas.jpg', 'Romão', 'Gabriel Augusto', '', '*C2C37DB9BDC8C5DE3B3CF4957C9A8A42771CFEBB', '2023-12-08 16:33:52', b'1'),
(17, 'phsilvapereira9@gmail.com', 'pessoas.jpg', 'PH Pereira', 'Pedro Henrique da Silva Pereira', '', '*376F3BF6645096AA76AF83C01F57F5BE85C2AF30', '2023-12-08 16:34:37', b'1'),
(18, 'phsilvapereira9@gmail.com', 'pessoas.jpg', 'PH Pereira', 'Pedro Henrique da Silva Pereira', '', '*376F3BF6645096AA76AF83C01F57F5BE85C2AF30', '2023-12-08 16:35:17', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_interacoes`
--

CREATE TABLE `usuario_interacoes` (
  `id_iteracoes` int(10) DEFAULT NULL,
  `id_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_publicacao` (`id_publicacao`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `curtida`
--
ALTER TABLE `curtida`
  ADD PRIMARY KEY (`id_curtida`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_publicacao` (`id_publicacao`);

--
-- Índices para tabela `interacoes`
--
ALTER TABLE `interacoes`
  ADD PRIMARY KEY (`id_iteracoes`);

--
-- Índices para tabela `publicacao`
--
ALTER TABLE `publicacao`
  ADD PRIMARY KEY (`id_publicacao`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `usuario_interacoes`
--
ALTER TABLE `usuario_interacoes`
  ADD KEY `id_iteracoes` (`id_iteracoes`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `curtida`
--
ALTER TABLE `curtida`
  MODIFY `id_curtida` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `interacoes`
--
ALTER TABLE `interacoes`
  MODIFY `id_iteracoes` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `publicacao`
--
ALTER TABLE `publicacao`
  MODIFY `id_publicacao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_publicacao`) REFERENCES `publicacao` (`id_publicacao`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `curtida`
--
ALTER TABLE `curtida`
  ADD CONSTRAINT `curtida_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `curtida_ibfk_2` FOREIGN KEY (`id_publicacao`) REFERENCES `publicacao` (`id_publicacao`);

--
-- Limitadores para a tabela `publicacao`
--
ALTER TABLE `publicacao`
  ADD CONSTRAINT `publicacao_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `usuario_interacoes`
--
ALTER TABLE `usuario_interacoes`
  ADD CONSTRAINT `usuario_interacoes_ibfk_1` FOREIGN KEY (`id_iteracoes`) REFERENCES `interacoes` (`id_iteracoes`),
  ADD CONSTRAINT `usuario_interacoes_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
