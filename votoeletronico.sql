-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Abr-2021 às 18:11
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `votoeletronico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidato` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `listas` varchar(255) NOT NULL,
  `id_votacoes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id_eventos` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `instrucoes` varchar(255) NOT NULL,
  `opcoes_voto` int(2) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `id_votacoes` int(2) NOT NULL,
  `id_utilizador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

CREATE TABLE `utilizador` (
  `id_utilizador` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `n_documento` varchar(255) NOT NULL,
  `tipo_documento` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `utilizador`
--

INSERT INTO `utilizador` (`id_utilizador`, `nome`, `password`, `n_documento`, `tipo_documento`, `email`, `admin`) VALUES
(1, 'bruno carvalho', 'brunocarvalho', '14429261', 'cc', 'teste@teste.pt', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Índices para tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_eventos`);

--
-- Índices para tabela `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`id_utilizador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
