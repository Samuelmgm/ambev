-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 02:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taruma`
--

-- --------------------------------------------------------

--
-- Table structure for table `modelo`
--

CREATE TABLE `modelo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `chassi` varchar(255) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `combustivel` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `ano` date NOT NULL,
  `peso` varchar(255) DEFAULT NULL,
  `capacidade` varchar(255) DEFAULT NULL,
  `cipp` varchar(255) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `area` varchar(255) NOT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modelo`
--

INSERT INTO `modelo` (`id`, `modelo`, `placa`, `chassi`, `cor`, `combustivel`, `marca`, `ano`, `peso`, `capacidade`, `cipp`, `observacoes`, `area`, `estado`) VALUES
(1, '[value-1]', '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '2034-12-25', '[value-8]', '[value-9]', '[value-10]', '[value-11]', '', ''),
(2, 'carro', 'BGC5656', 'AAA', 'azul', 'gasolina', 'Volvo', '2023-12-30', '2000', '13000', 'sim', 'ele é grande', '', ''),
(3, '	BGC5656', 'fhgghfhAAA', 'verde', 'gasolina ', 'Volvo ', '2023-12-30', '2023-06-13', 'tttt', 'uuuu', 'sim', 'ele é grande', '', ''),
(4, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '0000-00-00', '[value-9]', '[value-10]', '[value-11]', '[value-12]', '', ''),
(8, '[value-2]', '[value-5]', '[value-5]', '[value-5]', '[value-6]', '[value-7]', '0000-00-00', '[value-9]', '[value-10]', '[value-11]', '[value-12]', '', ''),
(9, 'caminhonete', 'testeteste', '123teste', 'vermelho', 'Flex', 'Iveco', '0000-00-00', '10000', '50000', 'Sim', 'não poder ter condutor com menos de 30 anos', 'Distribuição', 'MG');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `prioridade` int(2) NOT NULL,
  `superior` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `senha`, `prioridade`, `superior`, `cargo`, `observacoes`) VALUES
(1, 'taruma', 'fd81e38f08b55b050283f9831b731243', 99, '', '', NULL),
(2, 'Roberto', '202cb962ac59075b964b07152d234b70', 1, 'taruma', 'Auxiliar', 'ele não pode dirigir a noite'),
(3, 'clara', '202cb962ac59075b964b07152d234b70', 5, 'taruma', 'Condutor', 'não tem carteira'),
(6, 'jessica', '202cb962ac59075b964b07152d234b70', 99, 'jessica', 'TI', 'tem cabelo'),
(7, 'samuelti', '202cb962ac59075b964b07152d234b70', 99, 'taruma', 'TI', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `vistoria`
--

CREATE TABLE `vistoria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carroceria` varchar(255) NOT NULL,
  `pneu` varchar(255) NOT NULL,
  `vidros` varchar(255) NOT NULL,
  `pintura` varchar(255) NOT NULL,
  `situacao` varchar(30) NOT NULL,
  `observacoes` varchar(255) NOT NULL,
  `dataatual` date NOT NULL,
  `dataprox` date NOT NULL,
  `placa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vistoria`
--

INSERT INTO `vistoria` (`id`, `carroceria`, `pneu`, `vidros`, `pintura`, `situacao`, `observacoes`, `dataatual`, `dataprox`, `placa`) VALUES
(1, 'Pessímo', 'Pessímo', 'Pessímo', 'Pessímo', 'Reprovado', 'azul', '2023-05-22', '2023-05-17', 'fhgghfhAAA'),
(2, 'Otimo', 'Bom', 'Regular', 'Ruim', 'Aprovado', 'teste', '2023-05-18', '2023-07-02', 'testeteste'),
(4, 'Otimo', 'Otimo', 'Otimo', 'Otimo', 'Aprovado', 'beleza', '2023-04-19', '2023-05-17', '[value-5]'),
(6, 'Pessímo', 'Pessímo', 'Pessímo', 'Pessímo', 'Reprovado', 'não jóia', '2023-05-19', '2023-06-18', '[value-2]'),
(8, 'Otimo', 'Otimo', 'Otimo', 'Otimo', 'Aprovado', 'Jóia', '2023-05-19', '2023-08-17', '[value-3]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD UNIQUE KEY `chassi` (`chassi`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `vistoria`
--
ALTER TABLE `vistoria`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `placa` (`placa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vistoria`
--
ALTER TABLE `vistoria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
