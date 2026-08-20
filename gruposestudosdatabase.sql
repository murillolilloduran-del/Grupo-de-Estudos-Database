-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/06/2026 às 15:26
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gruposestudoetec`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `rm` int(11) NOT NULL,
  `nome_aluno` varchar(50) NOT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`rm`, `nome_aluno`, `id_grupo`) VALUES
(1, 'João Silva', 1),
(2, 'Maria Souza', 1),
(3, 'Pedro Lima', 2),
(4, 'Ana Costa', 3),
(5, 'Lucas Ferreira', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo`
--

CREATE TABLE `grupo` (
  `ID` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `area_estudo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `grupo`
--

INSERT INTO `grupo` (`ID`, `nome`, `area_estudo`) VALUES
(1, 'Grupo A', 'Programação Web'),
(2, 'Grupo B', 'Banco de Dados'),
(3, 'Grupo C', 'Redes');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`rm`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Índices de tabela `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `rm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `grupo`
--
ALTER TABLE `grupo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
