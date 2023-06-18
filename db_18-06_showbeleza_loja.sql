-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 18/06/2023 às 09:30
-- Versão do servidor: 10.3.39-MariaDB
-- Versão do PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `showbeleza_loja`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'ROGER', 'SOARES GUIMARÃES', 'REFERENCIA', 'RUA GILDO TORRES', 'JARDIM ESPERANÇA', 'CABO FRIO', '28920-280', 30, 458, '{\"3\":\"22\",\"9\":\"COMPLEMENTO\"}'),
(2, 11, 'Roger', 'Soares Guimarães', 'Referencia', 'Rua Gildo Torres de Oliveira', 'Jardim Esperança', 'Cabo Frio', '28920280', 30, 458, '{\"3\":\"22\",\"9\":\"Complemento\"}'),
(3, 12, 'Roger', 'Soares Guimarães', 'REFERENCIA', 'Rua Gildo Torres de Oliveira', 'Jardim Esperança', 'Cabo Frio', '28920280', 30, 458, '{\"3\":\"22\",\"9\":\"COMPLEMENTO\"}'),
(4, 13, 'Roger', 'Soares', '', 'Rua Gildo Torres', 'Jardim', 'Cabo Frio', '28920280', 30, 458, '{\"3\":\"22\",\"9\":\"\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'EROUSriqBMVliBSIELlKerO6bGpqMdeNjbSre0Pe5nJY3chZqOAeCmJO8jXiYJXQcvIdWKwImEESMkVH1hDbvqjDz5lyd27bWMfAkp6eFZbjtOKJeTKa3vf3fRm0s7t9Ofzj8qjaN5YSVuOKmRDQ2DGfdif5FeaGn1MemrLLo8OmmZ0UTzqpQkgc4hyuSqHpsEuEtVbl8TvAkQm0Qiw5YsKRgUD5O9XebF2KH0MQx2SbvD47Oy5dHSk4yrvG0Ctd', 1, '2022-08-19 21:44:29', '2022-08-19 21:44:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(99, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(110, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE `oc_cart` (
  `cart_id` int(10) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(24, 0, 12, '09056668808681b6b225406090', 50, 0, '[]', 1, '2023-06-12 11:30:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(586, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(585, NULL, 553, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(578, NULL, 553, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(579, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(580, NULL, 553, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(581, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(582, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(583, NULL, 553, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(584, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(574, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(575, NULL, 544, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(576, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(577, NULL, 542, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(564, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(565, NULL, 547, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(566, NULL, 553, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(567, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(568, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(569, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(570, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(571, NULL, 549, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(572, NULL, 550, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(573, NULL, 544, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(563, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(562, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(560, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(561, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(559, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(539, NULL, 0, 1, 1, 1, 1, '2023-06-17 00:48:54', '2023-06-17 00:48:54'),
(540, NULL, 0, 1, 1, 1, 1, '2023-06-17 00:48:54', '2023-06-17 00:48:54'),
(541, NULL, 0, 1, 1, 1, 1, '2023-06-17 00:48:54', '2023-06-17 00:48:54'),
(542, NULL, 0, 1, 1, 1, 1, '2023-06-17 00:48:54', '2023-06-17 00:48:54'),
(543, NULL, 0, 1, 1, 1, 1, '2023-06-17 00:48:54', '2023-06-17 00:48:54'),
(544, NULL, 0, 1, 1, 1, 1, '2023-06-17 00:48:54', '2023-06-17 00:48:54'),
(545, NULL, 0, 1, 1, 1, 1, '2023-06-17 00:48:54', '2023-06-17 00:48:54'),
(546, NULL, 0, 1, 1, 1, 1, '2023-06-17 00:48:54', '2023-06-17 00:48:54'),
(547, NULL, 0, 0, 1, 1, 1, '2023-06-17 00:49:44', '2023-06-17 00:49:44'),
(548, NULL, 0, 0, 1, 1, 1, '2023-06-17 00:49:44', '2023-06-17 00:49:44'),
(549, NULL, 0, 0, 1, 1, 1, '2023-06-17 00:49:44', '2023-06-17 00:49:44'),
(550, NULL, 0, 0, 1, 1, 1, '2023-06-17 00:49:44', '2023-06-17 00:49:44'),
(551, NULL, 0, 0, 1, 1, 1, '2023-06-17 00:49:44', '2023-06-17 00:49:44'),
(552, NULL, 0, 0, 1, 1, 1, '2023-06-17 00:49:44', '2023-06-17 00:49:44'),
(553, NULL, 0, 0, 1, 1, 1, '2023-06-17 00:49:44', '2023-06-17 00:49:44'),
(554, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(555, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(556, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(557, NULL, 542, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(558, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:10', '2023-06-17 00:52:10'),
(587, NULL, 545, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(588, NULL, 553, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(589, NULL, 544, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(590, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(591, NULL, 542, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(592, NULL, 553, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(593, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(594, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(595, NULL, 545, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(596, NULL, 553, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(597, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(598, NULL, 543, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(599, NULL, 552, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(600, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(601, NULL, 551, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(602, NULL, 545, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(603, NULL, 543, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(604, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(605, NULL, 543, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(606, NULL, 543, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(607, NULL, 543, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(608, NULL, 543, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(609, NULL, 545, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(610, NULL, 543, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(611, NULL, 543, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(612, NULL, 552, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(613, NULL, 552, 0, 1, 1, 1, '2023-06-17 00:52:45', '2023-06-17 00:52:45'),
(614, NULL, 552, 0, 1, 1, 1, '2023-06-17 00:52:50', '2023-06-17 00:52:50'),
(615, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:50', '2023-06-17 00:52:50'),
(616, NULL, 545, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(617, NULL, 552, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(618, NULL, 547, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(619, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(620, NULL, 552, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(621, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(622, NULL, 552, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(623, NULL, 545, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(624, NULL, 542, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(625, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(626, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(627, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(628, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(629, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(630, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(631, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(632, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(633, NULL, 547, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(634, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(635, NULL, 546, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(636, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(637, NULL, 545, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(638, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(639, NULL, 551, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(640, NULL, 551, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(641, NULL, 550, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(642, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(643, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:52:51', '2023-06-17 00:52:51'),
(644, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(645, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(646, NULL, 540, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(647, NULL, 541, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(648, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(649, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(650, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(651, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(652, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(653, NULL, 541, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(654, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26'),
(655, NULL, 539, 0, 1, 1, 1, '2023-06-17 00:53:26', '2023-06-17 00:53:26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(572, 2, 'BRONZEADORES', 'BRONZEADORES', 'BRONZEADORES', 'BRONZEADORES', 'BRONZEADORES'),
(588, 2, 'ESPONJA', 'ESPONJA', 'ESPONJA', 'ESPONJA', 'ESPONJA'),
(589, 2, 'LUVA', 'LUVA', 'LUVA', 'LUVA', 'LUVA'),
(573, 2, 'ALICATES', 'ALICATES', 'ALICATES', 'ALICATES', 'ALICATES'),
(574, 2, 'GELEIA E GELATINA', 'GELEIA E GELATINA', 'GELEIA E GELATINA', 'GELEIA E GELATINA', 'GELEIA,E,GELATINA'),
(586, 2, 'AGUA MICELAR', 'AGUA MICELAR', 'AGUA MICELAR', 'AGUA MICELAR', 'AGUA,MICELAR'),
(587, 2, 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS'),
(580, 2, 'LAPIS E DELINEADOR', 'LAPIS E DELINEADOR', 'LAPIS E DELINEADOR', 'LAPIS E DELINEADOR', 'LAPIS,E,DELINEADOR'),
(581, 2, 'GEL', 'GEL', 'GEL', 'GEL', 'GEL'),
(582, 2, 'CREME', 'CREME', 'CREME', 'CREME', 'CREME'),
(583, 2, 'OLHOS', 'OLHOS', 'OLHOS', 'OLHOS', 'OLHOS'),
(584, 2, 'MASCARA', 'MASCARA', 'MASCARA', 'MASCARA', 'MASCARA'),
(585, 2, 'POS COMPACTO, FACIAL E OUTROS', 'POS COMPACTO, FACIAL E OUTROS', 'POS COMPACTO, FACIAL E OUTROS', 'POS COMPACTO, FACIAL E OUTROS', 'POS,COMPACTO,,FACIAL,E,OUTROS'),
(575, 2, 'CAPA E AVENTAL', 'CAPA E AVENTAL', 'CAPA E AVENTAL', 'CAPA E AVENTAL', 'CAPA,E,AVENTAL'),
(576, 2, 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS'),
(577, 2, 'LENCOS E TOALHAS', 'LENCOS E TOALHAS', 'LENCOS E TOALHAS', 'LENCOS E TOALHAS', 'LENCOS,E,TOALHAS'),
(578, 2, 'BASE', 'BASE', 'BASE', 'BASE', 'BASE'),
(579, 2, 'LIXA', 'LIXA', 'LIXA', 'LIXA', 'LIXA'),
(570, 2, 'HIGIENIZANTE', 'HIGIENIZANTE', 'HIGIENIZANTE', 'HIGIENIZANTE', 'HIGIENIZANTE'),
(571, 2, 'APARELHO', 'APARELHO', 'APARELHO', 'APARELHO', 'APARELHO'),
(569, 2, 'PREPARACOES UNHAS ARTIFICIAIS', 'PREPARACOES UNHAS ARTIFICIAIS', 'PREPARACOES UNHAS ARTIFICIAIS', 'PREPARACOES UNHAS ARTIFICIAIS', 'PREPARACOES,UNHAS,ARTIFICIAIS'),
(560, 2, 'LOCAO', 'LOCAO', 'LOCAO', 'LOCAO', 'LOCAO'),
(561, 2, 'SELANTE', 'SELANTE', 'SELANTE', 'SELANTE', 'SELANTE'),
(562, 2, 'BANHO DE CREME', 'BANHO DE CREME', 'BANHO DE CREME', 'BANHO DE CREME', 'BANHO,DE,CREME'),
(563, 2, 'PROTETOR SOLAR', 'PROTETOR SOLAR', 'PROTETOR SOLAR', 'PROTETOR SOLAR', 'PROTETOR,SOLAR'),
(564, 2, 'FIXADOR', 'FIXADOR', 'FIXADOR', 'FIXADOR', 'FIXADOR'),
(565, 2, 'SABONETE', 'SABONETE', 'SABONETE', 'SABONETE', 'SABONETE'),
(566, 2, 'LABIAL', 'LABIAL', 'LABIAL', 'LABIAL', 'LABIAL'),
(567, 2, 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE'),
(568, 2, 'PRIMER', 'PRIMER', 'PRIMER', 'PRIMER', 'PRIMER'),
(539, 2, 'PREPARACOES CAPILARES', 'PREPARACOES CAPILARES', 'PREPARACOES CAPILARES', 'PREPARACOES CAPILARES', 'PREPARACOES,CAPILARES'),
(540, 2, 'MANICUROS E PEDICUROS', 'MANICUROS E PEDICUROS', 'MANICUROS E PEDICUROS', 'MANICUROS E PEDICUROS', 'MANICUROS,E,PEDICUROS'),
(541, 2, 'DESCOLORANTES', 'DESCOLORANTES', 'DESCOLORANTES', 'DESCOLORANTES', 'DESCOLORANTES'),
(542, 2, 'DESCARTAVEIS', 'DESCARTAVEIS', 'DESCARTAVEIS', 'DESCARTAVEIS', 'DESCARTAVEIS'),
(543, 2, 'PRODUTOS PARA DEPILACAO', 'PRODUTOS PARA DEPILACAO', 'PRODUTOS PARA DEPILACAO', 'PRODUTOS PARA DEPILACAO', 'PRODUTOS,PARA,DEPILACAO'),
(544, 2, 'PARA SALAO', 'PARA SALAO', 'PARA SALAO', 'PARA SALAO', 'PARA,SALAO'),
(545, 2, 'CUIDADOS COM O CORPO', 'CUIDADOS COM O CORPO', 'CUIDADOS COM O CORPO', 'CUIDADOS COM O CORPO', 'CUIDADOS,COM,O,CORPO'),
(546, 2, 'CUIDADO FACIAL', 'CUIDADO FACIAL', 'CUIDADO FACIAL', 'CUIDADO FACIAL', 'CUIDADO,FACIAL'),
(547, 2, 'HIGIENE', 'HIGIENE', 'HIGIENE', 'HIGIENE', 'HIGIENE'),
(548, 2, 'ACESSORIOS E ENFEITES', 'ACESSORIOS E ENFEITES', 'ACESSORIOS E ENFEITES', 'ACESSORIOS E ENFEITES', 'ACESSORIOS,E,ENFEITES'),
(549, 2, 'ELETRONICOS', 'ELETRONICOS', 'ELETRONICOS', 'ELETRONICOS', 'ELETRONICOS'),
(550, 2, 'PREPARACOES ANTISSOLARES', 'PREPARACOES ANTISSOLARES', 'PREPARACOES ANTISSOLARES', 'PREPARACOES ANTISSOLARES', 'PREPARACOES,ANTISSOLARES'),
(551, 2, 'DESODORANTES', 'DESODORANTES', 'DESODORANTES', 'DESODORANTES', 'DESODORANTES'),
(552, 2, 'PRODUTOS DE BELEZA', 'PRODUTOS DE BELEZA', 'PRODUTOS DE BELEZA', 'PRODUTOS DE BELEZA', 'PRODUTOS,DE,BELEZA'),
(553, 2, 'PRODUTOS DE MAQUIAGEM', 'PRODUTOS DE MAQUIAGEM', 'PRODUTOS DE MAQUIAGEM', 'PRODUTOS DE MAQUIAGEM', 'PRODUTOS,DE,MAQUIAGEM'),
(554, 2, 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS'),
(555, 2, 'BASE', 'BASE', 'BASE', 'BASE', 'BASE'),
(556, 2, 'KIT', 'KIT', 'KIT', 'KIT', 'KIT'),
(557, 2, 'ALGODAO E HASTES', 'ALGODAO E HASTES', 'ALGODAO E HASTES', 'ALGODAO E HASTES', 'ALGODAO,E,HASTES'),
(558, 2, 'NEUTRALIZANTE', 'NEUTRALIZANTE', 'NEUTRALIZANTE', 'NEUTRALIZANTE', 'NEUTRALIZANTE'),
(559, 2, 'MASCARA MATIZANTE', 'MASCARA MATIZANTE', 'MASCARA MATIZANTE', 'MASCARA MATIZANTE', 'MASCARA,MATIZANTE'),
(590, 2, 'PALITO', 'PALITO', 'PALITO', 'PALITO', 'PALITO'),
(591, 2, 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS'),
(592, 2, 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS'),
(593, 2, 'CREME', 'CREME', 'CREME', 'CREME', 'CREME'),
(594, 2, 'MANTEIGA', 'MANTEIGA', 'MANTEIGA', 'MANTEIGA', 'MANTEIGA'),
(595, 2, 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE'),
(596, 2, 'BLUSH', 'BLUSH', 'BLUSH', 'BLUSH', 'BLUSH'),
(597, 2, 'LOCAO', 'LOCAO', 'LOCAO', 'LOCAO', 'LOCAO'),
(598, 2, 'CERA', 'CERA', 'CERA', 'CERA', 'CERA'),
(599, 2, 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE'),
(600, 2, 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS'),
(601, 2, 'ROLL ON', 'ROLL ON', 'ROLL ON', 'ROLL ON', 'ROLL,ON'),
(602, 2, 'LOCAO', 'LOCAO', 'LOCAO', 'LOCAO', 'LOCAO'),
(603, 2, 'FOLHAS', 'FOLHAS', 'FOLHAS', 'FOLHAS', 'FOLHAS'),
(604, 2, 'MOUSSE', 'MOUSSE', 'MOUSSE', 'MOUSSE', 'MOUSSE'),
(605, 2, 'CREME', 'CREME', 'CREME', 'CREME', 'CREME'),
(606, 2, 'GEL', 'GEL', 'GEL', 'GEL', 'GEL'),
(607, 2, 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE'),
(608, 2, 'FLUIDO', 'FLUIDO', 'FLUIDO', 'FLUIDO', 'FLUIDO'),
(609, 2, 'GEL', 'GEL', 'GEL', 'GEL', 'GEL'),
(610, 2, 'REMOVEDOR', 'REMOVEDOR', 'REMOVEDOR', 'REMOVEDOR', 'REMOVEDOR'),
(611, 2, 'SERUM', 'SERUM', 'SERUM', 'SERUM', 'SERUM'),
(612, 2, 'GEL', 'GEL', 'GEL', 'GEL', 'GEL'),
(613, 2, 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS', 'DIVERSOS'),
(614, 2, 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE'),
(615, 2, 'SERUM', 'SERUM', 'SERUM', 'SERUM', 'SERUM'),
(616, 2, 'GELEIA E GELATINA', 'GELEIA E GELATINA', 'GELEIA E GELATINA', 'GELEIA E GELATINA', 'GELEIA,E,GELATINA'),
(617, 2, 'OLEOS', 'OLEOS', 'OLEOS', 'OLEOS', 'OLEOS'),
(618, 2, 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE', 'ESFOLIANTE'),
(619, 2, 'CREME PARA MASSAGEM', 'CREME PARA MASSAGEM', 'CREME PARA MASSAGEM', 'CREME PARA MASSAGEM', 'CREME,PARA,MASSAGEM'),
(620, 2, 'MASCARA', 'MASCARA', 'MASCARA', 'MASCARA', 'MASCARA'),
(621, 2, 'TONICO', 'TONICO', 'TONICO', 'TONICO', 'TONICO'),
(622, 2, 'AMOLECEDOR', 'AMOLECEDOR', 'AMOLECEDOR', 'AMOLECEDOR', 'AMOLECEDOR'),
(623, 2, 'BRONZEADORES', 'BRONZEADORES', 'BRONZEADORES', 'BRONZEADORES', 'BRONZEADORES'),
(624, 2, 'PAPEL HIGIENICO', 'PAPEL HIGIENICO', 'PAPEL HIGIENICO', 'PAPEL HIGIENICO', 'PAPEL,HIGIENICO'),
(625, 2, 'CREME MULTIFUNCIONAL', 'CREME MULTIFUNCIONAL', 'CREME MULTIFUNCIONAL', 'CREME MULTIFUNCIONAL', 'CREME,MULTIFUNCIONAL'),
(626, 2, 'SHAMPOO', 'SHAMPOO', 'SHAMPOO', 'SHAMPOO', 'SHAMPOO'),
(627, 2, 'ESMALTES', 'ESMALTES', 'ESMALTES', 'ESMALTES', 'ESMALTES'),
(628, 2, 'MOUSSE', 'MOUSSE', 'MOUSSE', 'MOUSSE', 'MOUSSE'),
(629, 2, 'COLORACAO', 'COLORACAO', 'COLORACAO', 'COLORACAO', 'COLORACAO'),
(630, 2, 'CONDICIONADORES', 'CONDICIONADORES', 'CONDICIONADORES', 'CONDICIONADORES', 'CONDICIONADORES'),
(631, 2, 'CREME PENTEAR', 'CREME PENTEAR', 'CREME PENTEAR', 'CREME PENTEAR', 'CREME,PENTEAR'),
(632, 2, 'ATIVADOR DE CACHOS', 'ATIVADOR DE CACHOS', 'ATIVADOR DE CACHOS', 'ATIVADOR DE CACHOS', 'ATIVADOR,DE,CACHOS'),
(633, 2, 'ESPONJA', 'ESPONJA', 'ESPONJA', 'ESPONJA', 'ESPONJA'),
(634, 2, 'FINALIZADOR', 'FINALIZADOR', 'FINALIZADOR', 'FINALIZADOR', 'FINALIZADOR'),
(635, 2, 'DEMAQUILANTE', 'DEMAQUILANTE', 'DEMAQUILANTE', 'DEMAQUILANTE', 'DEMAQUILANTE'),
(636, 2, 'FLUIDO', 'FLUIDO', 'FLUIDO', 'FLUIDO', 'FLUIDO'),
(637, 2, 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE', 'HIDRATANTE'),
(638, 2, 'UMIDIFICANTE', 'UMIDIFICANTE', 'UMIDIFICANTE', 'UMIDIFICANTE', 'UMIDIFICANTE'),
(639, 2, 'COLONIAS', 'COLONIAS', 'COLONIAS', 'COLONIAS', 'COLONIAS'),
(640, 2, 'AEROSOL', 'AEROSOL', 'AEROSOL', 'AEROSOL', 'AEROSOL'),
(641, 2, 'PROTETOR SOLAR', 'PROTETOR SOLAR', 'PROTETOR SOLAR', 'PROTETOR SOLAR', 'PROTETOR,SOLAR'),
(642, 2, 'ALISAMENTOS OU PERMANENTES', 'ALISAMENTOS OU PERMANENTES', 'ALISAMENTOS OU PERMANENTES', 'ALISAMENTOS OU PERMANENTES', 'ALISAMENTOS,OU,PERMANENTES'),
(643, 2, 'MASCARA', 'MASCARA', 'MASCARA', 'MASCARA', 'MASCARA'),
(644, 2, 'TONICO', 'TONICO', 'TONICO', 'TONICO', 'TONICO'),
(645, 2, 'OLEOS', 'OLEOS', 'OLEOS', 'OLEOS', 'OLEOS'),
(646, 2, 'REMOVEDOR DE ESMALTES', 'REMOVEDOR DE ESMALTES', 'REMOVEDOR DE ESMALTES', 'REMOVEDOR DE ESMALTES', 'REMOVEDOR,DE,ESMALTES'),
(647, 2, 'OXIDANTE', 'OXIDANTE', 'OXIDANTE', 'OXIDANTE', 'OXIDANTE'),
(648, 2, 'TRATAMENTO', 'TRATAMENTO', 'TRATAMENTO', 'TRATAMENTO', 'TRATAMENTO'),
(649, 2, 'TONALIZANTE', 'TONALIZANTE', 'TONALIZANTE', 'TONALIZANTE', 'TONALIZANTE'),
(650, 2, 'DEFRIZANTE', 'DEFRIZANTE', 'DEFRIZANTE', 'DEFRIZANTE', 'DEFRIZANTE'),
(651, 2, 'REPARADOR DE PONTAS', 'REPARADOR DE PONTAS', 'REPARADOR DE PONTAS', 'REPARADOR DE PONTAS', 'REPARADOR,DE,PONTAS'),
(652, 2, 'MASCARA TONALIZANTE', 'MASCARA TONALIZANTE', 'MASCARA TONALIZANTE', 'MASCARA TONALIZANTE', 'MASCARA,TONALIZANTE'),
(653, 2, 'PO CLAREADOR', 'PO CLAREADOR', 'PO CLAREADOR', 'PO CLAREADOR', 'PO,CLAREADOR'),
(654, 2, 'POMADA', 'POMADA', 'POMADA', 'POMADA', 'POMADA'),
(655, 2, 'SERUM', 'SERUM', 'SERUM', 'SERUM', 'SERUM');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(573, 573, 1),
(579, 540, 0),
(576, 576, 1),
(551, 551, 0),
(586, 586, 1),
(581, 581, 1),
(568, 540, 0),
(571, 571, 1),
(570, 570, 1),
(556, 539, 0),
(539, 539, 0),
(568, 568, 1),
(574, 539, 0),
(587, 587, 1),
(569, 540, 0),
(576, 539, 0),
(587, 545, 0),
(552, 552, 0),
(565, 565, 1),
(571, 549, 0),
(585, 553, 0),
(574, 574, 1),
(583, 553, 0),
(582, 582, 1),
(566, 566, 1),
(582, 546, 0),
(584, 584, 1),
(573, 544, 0),
(567, 546, 0),
(566, 553, 0),
(567, 567, 1),
(565, 547, 0),
(564, 564, 1),
(564, 539, 0),
(563, 563, 1),
(563, 539, 0),
(562, 562, 1),
(575, 575, 1),
(575, 544, 0),
(562, 539, 0),
(561, 561, 1),
(586, 546, 0),
(585, 585, 1),
(561, 539, 0),
(560, 560, 1),
(584, 546, 0),
(583, 583, 1),
(560, 539, 0),
(559, 559, 1),
(578, 578, 1),
(578, 553, 0),
(577, 577, 1),
(577, 542, 0),
(570, 540, 0),
(569, 569, 1),
(559, 539, 0),
(558, 558, 1),
(558, 539, 0),
(544, 544, 0),
(550, 550, 0),
(549, 549, 0),
(540, 540, 0),
(548, 548, 0),
(572, 572, 1),
(572, 550, 0),
(581, 539, 0),
(580, 580, 1),
(555, 555, 1),
(553, 553, 0),
(557, 557, 1),
(545, 545, 0),
(556, 556, 1),
(554, 554, 1),
(541, 541, 0),
(555, 540, 0),
(542, 542, 0),
(546, 546, 0),
(580, 553, 0),
(579, 579, 1),
(543, 543, 0),
(547, 547, 0),
(554, 540, 0),
(557, 542, 0),
(588, 553, 0),
(588, 588, 1),
(589, 544, 0),
(589, 589, 1),
(590, 540, 0),
(590, 590, 1),
(591, 542, 0),
(591, 591, 1),
(592, 553, 0),
(592, 592, 1),
(593, 539, 0),
(593, 593, 1),
(594, 539, 0),
(594, 594, 1),
(595, 545, 0),
(595, 595, 1),
(596, 553, 0),
(596, 596, 1),
(597, 546, 0),
(597, 597, 1),
(598, 543, 0),
(598, 598, 1),
(599, 552, 0),
(599, 599, 1),
(600, 546, 0),
(600, 600, 1),
(601, 551, 0),
(601, 601, 1),
(602, 545, 0),
(602, 602, 1),
(603, 543, 0),
(603, 603, 1),
(604, 546, 0),
(604, 604, 1),
(605, 543, 0),
(605, 605, 1),
(606, 543, 0),
(606, 606, 1),
(607, 543, 0),
(607, 607, 1),
(608, 543, 0),
(608, 608, 1),
(609, 545, 0),
(609, 609, 1),
(610, 543, 0),
(610, 610, 1),
(611, 543, 0),
(611, 611, 1),
(612, 552, 0),
(612, 612, 1),
(613, 552, 0),
(613, 613, 1),
(614, 552, 0),
(614, 614, 1),
(615, 546, 0),
(615, 615, 1),
(616, 545, 0),
(616, 616, 1),
(617, 552, 0),
(617, 617, 1),
(618, 547, 0),
(618, 618, 1),
(619, 539, 0),
(619, 619, 1),
(620, 552, 0),
(620, 620, 1),
(621, 546, 0),
(621, 621, 1),
(622, 552, 0),
(622, 622, 1),
(623, 545, 0),
(623, 623, 1),
(624, 542, 0),
(624, 624, 1),
(625, 539, 0),
(625, 625, 1),
(626, 539, 0),
(626, 626, 1),
(627, 540, 0),
(627, 627, 1),
(628, 539, 0),
(628, 628, 1),
(629, 539, 0),
(629, 629, 1),
(630, 539, 0),
(630, 630, 1),
(631, 539, 0),
(631, 631, 1),
(632, 539, 0),
(632, 632, 1),
(633, 547, 0),
(633, 633, 1),
(634, 539, 0),
(634, 634, 1),
(635, 546, 0),
(635, 635, 1),
(636, 539, 0),
(636, 636, 1),
(637, 545, 0),
(637, 637, 1),
(638, 539, 0),
(638, 638, 1),
(639, 551, 0),
(639, 639, 1),
(640, 551, 0),
(640, 640, 1),
(641, 550, 0),
(641, 641, 1),
(642, 539, 0),
(642, 642, 1),
(643, 539, 0),
(643, 643, 1),
(644, 539, 0),
(644, 644, 1),
(645, 539, 0),
(645, 645, 1),
(646, 540, 0),
(646, 646, 1),
(647, 541, 0),
(647, 647, 1),
(648, 539, 0),
(648, 648, 1),
(649, 539, 0),
(649, 649, 1),
(650, 539, 0),
(650, 650, 1),
(651, 539, 0),
(651, 651, 1),
(652, 539, 0),
(652, 652, 1),
(653, 541, 0),
(653, 653, 1),
(654, 539, 0),
(654, 654, 1),
(655, 539, 0),
(655, 655, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(539, 0),
(540, 0),
(541, 0),
(542, 0),
(543, 0),
(544, 0),
(545, 0),
(546, 0),
(547, 0),
(548, 0),
(549, 0),
(550, 0),
(551, 0),
(552, 0),
(553, 0),
(554, 0),
(555, 0),
(556, 0),
(557, 0),
(558, 0),
(559, 0),
(560, 0),
(561, 0),
(562, 0),
(563, 0),
(564, 0),
(565, 0),
(566, 0),
(567, 0),
(568, 0),
(569, 0),
(570, 0),
(571, 0),
(572, 0),
(573, 0),
(574, 0),
(575, 0),
(576, 0),
(577, 0),
(578, 0),
(579, 0),
(580, 0),
(581, 0),
(582, 0),
(583, 0),
(584, 0),
(585, 0),
(586, 0),
(587, 0),
(588, 0),
(589, 0),
(590, 0),
(591, 0),
(592, 0),
(593, 0),
(594, 0),
(595, 0),
(596, 0),
(597, 0),
(598, 0),
(599, 0),
(600, 0),
(601, 0),
(602, 0),
(603, 0),
(604, 0),
(605, 0),
(606, 0),
(607, 0),
(608, 0),
(609, 0),
(610, 0),
(611, 0),
(612, 0),
(613, 0),
(614, 0),
(615, 0),
(616, 0),
(617, 0),
(618, 0),
(619, 0),
(620, 0),
(621, 0),
(622, 0),
(623, 0),
(624, 0),
(625, 0),
(626, 0),
(627, 0),
(628, 0),
(629, 0),
(630, 0),
(631, 0),
(632, 0),
(633, 0),
(634, 0),
(635, 0),
(636, 0),
(637, 0),
(638, 0),
(639, 0),
(640, 0),
(641, 0),
(642, 0),
(643, 0),
(644, 0),
(645, 0),
(646, 0),
(647, 0),
(648, 0),
(649, 0),
(650, 0),
(651, 0),
(652, 0),
(653, 0),
(654, 0),
(655, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(30, 'Brazil', 'BR', 'BRA', '{firstname} {lastname}\r\n{custom_field_1} {custom_field_2}\r\n{company}\r\n{custom_field_4}\r\n{address_1}, {custom_field_3}\r\n{address_2}\r\n{custom_field_9}\r\n{postcode}\r\n {city} / {zone}\r\n{country}', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Real', 'BRL', 'R$', '', '2', 1.00000000, 1, '2022-08-19 22:23:49');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(2, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Pessoa Física', 'Pessoa Física'),
(2, 2, 'Pessoa Jurídica', 'Pessoa Jurídica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('187.45.191.26', 0, 'https://showbeleza.com.br/', 'http://showbeleza.com.br', '2023-06-18 09:07:48'),
('66.249.65.235', 0, 'https://www.showbeleza.com.br/fibra-de-vidro-com-100un', '', '2023-06-18 08:47:14'),
('66.249.65.236', 0, 'https://www.showbeleza.com.br/micellair-efeito-matte-nivea-200ml', '', '2023-06-18 08:41:53'),
('189.123.99.206', 0, 'https://showbeleza.com.br/', '', '2023-06-18 08:32:50'),
('40.77.167.194', 0, 'https://showbeleza.com.br/produtos-para-depilacao', '', '2023-06-18 09:29:39'),
('52.167.144.25', 0, 'https://showbeleza.com.br/produtos-para-depilacao', '', '2023-06-18 09:29:12'),
('66.249.65.224', 0, 'https://www.showbeleza.com.br/gloss', '', '2023-06-18 08:53:56'),
('40.77.167.146', 0, 'https://showbeleza.com.br/promocoes', '', '2023-06-18 09:29:35'),
('40.77.167.199', 0, 'https://showbeleza.com.br/apple-cinema-30-teste-2', '', '2023-06-18 09:29:29'),
('157.230.41.133', 0, 'https://showbeleza.com.br/view-source:', '', '2023-06-18 09:25:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_custom_field`
--

INSERT INTO `oc_custom_field` (`custom_field_id`, `type`, `value`, `validation`, `location`, `status`, `sort_order`) VALUES
(1, 'text', '', '', 'account', 1, 2),
(2, 'text', '', '', 'account', 1, 2),
(3, 'text', '', '', 'address', 1, 2),
(4, 'text', '', '', 'account', 1, 1),
(5, 'text', '', '', 'account', 1, 3),
(6, 'text', '', '', 'account', 1, 9),
(7, 'text', '', '', 'account', 1, 8),
(8, 'select', '', '', 'account', 1, 3),
(9, 'text', '', '', 'address', 1, 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_custom_field_customer_group`
--

INSERT INTO `oc_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 1),
(3, 2, 1),
(4, 2, 1),
(5, 2, 0),
(6, 1, 1),
(7, 1, 1),
(7, 2, 1),
(8, 1, 1),
(9, 2, 0),
(9, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_custom_field_description`
--

INSERT INTO `oc_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(1, 2, 'CPF'),
(2, 2, 'CNPJ'),
(3, 2, 'Número'),
(4, 2, 'Razão Social'),
(5, 2, 'Inscrição Estadual'),
(6, 2, 'Data de Nascimento'),
(7, 2, 'Celular'),
(8, 2, 'Sexo'),
(9, 2, 'Complemento');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_custom_field_value`
--

INSERT INTO `oc_custom_field_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES
(2, 8, 2),
(1, 8, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_custom_field_value_description`
--

INSERT INTO `oc_custom_field_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES
(2, 2, 8, 'F'),
(1, 2, 8, 'M');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturnHistory/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(49, 'payment', 'cartao'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(44, 'module', 'sendpulse'),
(45, 'module', 'parcelamento'),
(46, 'module', 'latest'),
(47, 'shipping', 'faixa_cep'),
(50, 'payment', 'cod');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(3, 0, '[ocmod.net] action-label_oc3x.ocmod.zip', '2023-06-12 15:42:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(19, 3, 'catalog/view/theme/default/stylesheet/action_label.css', '2023-06-12 15:42:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_googleshopping_category`
--

DROP TABLE IF EXISTS `oc_googleshopping_category`;
CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_googleshopping_product`
--

DROP TABLE IF EXISTS `oc_googleshopping_product`;
CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `conversions` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `conversion_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_googleshopping_product`
--

INSERT INTO `oc_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(1, 50, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_googleshopping_product_status`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_status`;
CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_googleshopping_product_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_target`;
CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `advertise_google_target_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_googleshopping_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_target`;
CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(2, 'Português', 'pt-br', 'pt-BR,pt_BR.UTF-8,pt_BR,pt-br,portuguese', 'pt-br.png', 'pt-br', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(74, 1, 'featured.28', 'content_top', 2),
(72, 3, 'category', 'column_left', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(55, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(54, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Centímetro', 'cm'),
(2, 2, 'Milímetro', 'mm'),
(3, 2, 'Polegada', 'in'),
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(8, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(3, 3, 'Стикер акции на изображении товара', 'action_label', 'https://ocmod.net', '1.2', 'https://ocmod.net', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>Стикер акции на изображении товара</name>\r\n    <code>action_label</code>\r\n    <version>1.2</version>\r\n    <author>https://ocmod.net</author>\r\n    <link>https://ocmod.net</link>\r\n\r\n    <!-- в списках товаров -->\r\n    <file path=\"catalog/controller/product/{category,search,manufacturer,special}*.php\">\r\n      <operation>\r\n        <search><![CDATA[\r\n          $this->load->model(\'tool/image\');\r\n        ]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n          $this->document->addStyle(\'catalog/view/theme/default/stylesheet/action_label.css\');\r\n        ]]></add>\r\n      </operation>\r\n      <operation>\r\n        <search><![CDATA[\r\n          $data[\'products\'][] = array(\r\n        ]]></search>\r\n        <add position=\"replace\"><![CDATA[\r\n          if ($special) {\r\n            $action_percent = 100-round($result[\'special\']/$result[\'price\']*100, 0);\r\n          } else {\r\n            $action_percent = \"0\";\r\n          }\r\n\r\n          $data[\'products\'][] = array(\r\n            \'action_percent\' => $action_percent,\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/view/theme/*/template/product/{category,search,manufacturer,special}*.twig\">\r\n      <operation>\r\n        <search><![CDATA[\r\n          <div class=\"image\">\r\n        ]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n          {% if  product.action_percent > 0 %}\r\n          <div class=\"action-label-category\"><b>{{ \"-\" ~ product.action_percent ~ \"%\" }}</b></div>\r\n          {% endif %}\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n    <!-- в модулях товаров -->\r\n    <file path=\"catalog/controller/extension/module/{bestseller,latest,special}.php\">\r\n      <operation>\r\n        <search><![CDATA[\r\n          $this->load->model(\'tool/image\');\r\n        ]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n          $this->document->addStyle(\'catalog/view/theme/default/stylesheet/action_label.css\');\r\n        ]]></add>\r\n      </operation>\r\n      <operation>\r\n        <search><![CDATA[\r\n          $data[\'products\'][] = array(\r\n        ]]></search>\r\n        <add position=\"replace\"><![CDATA[\r\n          if ($special) {\r\n            $action_percent = 100-round($result[\'special\']/$result[\'price\']*100, 0);\r\n          } else {\r\n            $action_percent = \"0\";\r\n          }\r\n\r\n          $data[\'products\'][] = array(\r\n            \'action_percent\' => $action_percent,\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/extension/module/featured.php\">\r\n      <operation>\r\n        <search><![CDATA[\r\n          $this->load->model(\'tool/image\');\r\n        ]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n          $this->document->addStyle(\'catalog/view/theme/default/stylesheet/action_label.css\');\r\n        ]]></add>\r\n      </operation>\r\n      <operation>\r\n        <search><![CDATA[\r\n          $data[\'products\'][] = array(\r\n        ]]></search>\r\n        <add position=\"replace\"><![CDATA[\r\n          if ($special) {\r\n            $action_percent = 100-round($product_info[\'special\']/$product_info[\'price\']*100, 0);\r\n          } else {\r\n            $action_percent = \"0\";\r\n          }\r\n\r\n          $data[\'products\'][] = array(\r\n            \'action_percent\' => $action_percent,\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/view/theme/*/template/extension/module/{bestseller,latest,special,featured}.twig\">\r\n      <operation>\r\n        <search><![CDATA[\r\n          <div class=\"image\">\r\n        ]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n          {% if  product.action_percent > 0 %}\r\n          <div class=\"action-label-category\"><b>{{ \"-\" ~ product.action_percent ~ \"%\" }}</b></div>\r\n          {% endif %}\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n    <!-- в товаре -->\r\n    <file path=\"catalog/controller/product/product.php\">\r\n      <operation>\r\n        <search><![CDATA[\r\n          public function index() {\r\n        ]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n          $this->document->addStyle(\'catalog/view/theme/default/stylesheet/action_label.css\');\r\n        ]]></add>\r\n      </operation>\r\n      <operation>\r\n        <search><![CDATA[\r\n          if ($this->config->get(\'config_tax\'))\r\n        ]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n          if ((float)$product_info[\'special\']) {\r\n            $data[\'action_percent\'] = 100-round($product_info[\'special\']/$product_info[\'price\']*100, 0);\r\n          } else {\r\n            $data[\'action_percent\']= false;\r\n          }\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/view/theme/*/template/product/product.twig\">\">\r\n      <operation>\r\n        <search><![CDATA[\r\n          {% if thumb or images %}\r\n        ]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n          {% if  action_percent %}\r\n          <div class=\"action-label-product\"><b>{{ \"-\" ~ action_percent ~ \"%\" }}</b></div>\r\n          {% endif %}\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n</modification>\r\n', 1, '2023-06-12 15:42:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"42\",\"50\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(32, 'Produtos novos', 'latest', '{\"name\":\"Produtos novos\",\"limit\":\"6\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(20, 2, 'Pago'),
(21, 2, 'Entregue'),
(22, 2, 'Aguardando pagamento'),
(23, 2, 'Cancelado'),
(24, 2, 'Processando');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(11) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(11) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(42, 'Product 15', '', '', '', '', '', '', '', 989, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, 100.0000, 400, 0, '2009-02-04', 0.50000000, 1, 1.00000000, 2.00000000, 3.00000000, 1, 1, 1, 0, 1, 61, '2009-02-03 21:07:37', '2022-08-21 15:16:08'),
(50, 'Product 15', '1234567890123', '', '', '', '', '', '', 987, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, 159.0000, 400, 0, '2009-02-04', 0.50000000, 1, 1.00000000, 2.00000000, 3.00000000, 1, 1, 1, 0, 1, 30, '2009-02-03 21:07:37', '2023-06-07 14:37:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(50, 2, 'Apple Cinema 30 teste 2', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', ''),
(42, 2, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2387, 50, 'catalog/demo/compaq_presario.jpg', 0),
(2366, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2390, 50, 'catalog/demo/canon_logo.jpg', 0),
(2389, 50, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2388, 50, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2365, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2364, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2363, 42, 'catalog/demo/hp_1.jpg', 0),
(2362, 42, 'catalog/demo/canon_logo.jpg', 0),
(2391, 50, 'catalog/demo/hp_1.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(11) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(548, 42, 1, 100),
(553, 50, 1, 100);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(445, 50, 1, 1, 119.9900, '2023-06-07', '2033-06-07'),
(444, 50, 2, 1, 119.9900, '2023-06-07', '2033-06-07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(50, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(42, 0),
(50, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(11) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 2, 'Reembolsado'),
(2, 2, 'Crédito Emitido'),
(3, 2, 'Envio de Substituição'),
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 2, 'Chegou quebrado'),
(2, 2, 'Produto trocado'),
(3, 2, 'Erro no pedido'),
(4, 2, 'Defeito, forneça detalhes'),
(5, 2, 'Outros, forneça detalhes'),
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 2, 'Pendente '),
(3, 2, 'Completa'),
(2, 2, 'Aguardando Produtos'),
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(849, 0, 2, 'product_id=50', 'apple-cinema-30-teste-2'),
(845, 0, 2, 'product_id=42', 'apple-cinema-30'),
(1394, 0, 2, 'category_id=611', 'serum'),
(1393, 0, 2, 'category_id=610', 'removedor'),
(1392, 0, 2, 'category_id=609', 'gel'),
(1391, 0, 2, 'category_id=608', 'fluido'),
(1390, 0, 2, 'category_id=607', 'esfoliante'),
(1389, 0, 2, 'category_id=606', 'gel'),
(1388, 0, 2, 'category_id=605', 'creme'),
(1387, 0, 2, 'category_id=604', 'mousse'),
(1383, 0, 2, 'category_id=600', 'diversos'),
(1384, 0, 2, 'category_id=601', 'roll-on'),
(1385, 0, 2, 'category_id=602', 'locao'),
(1386, 0, 2, 'category_id=603', 'folhas'),
(1015, 0, 2, 'category_id=232', 'descartaveis'),
(1011, 0, 2, 'category_id=228', 'acessorios-para-beleza'),
(1005, 0, 2, 'category_id=222', 'descartaveis'),
(1003, 0, 2, 'category_id=220', 'manicuros-e-pedicuros'),
(1002, 0, 2, 'category_id=219', 'preparacoes-capilares'),
(1380, 0, 2, 'category_id=597', 'locao'),
(1381, 0, 2, 'category_id=598', 'cera'),
(1382, 0, 2, 'category_id=599', 'hidratante'),
(1395, 0, 2, 'category_id=612', 'gel'),
(1396, 0, 2, 'category_id=613', 'diversos'),
(1017, 0, 2, 'category_id=234', 'preparacoes-capilares'),
(1016, 0, 2, 'category_id=233', 'produtos-para-maquiagem'),
(1004, 0, 2, 'category_id=221', 'descolorantes'),
(1010, 0, 2, 'category_id=227', 'higiene'),
(1006, 0, 2, 'category_id=223', 'produtos-para-depilacao'),
(1007, 0, 2, 'category_id=224', 'para-salao'),
(1008, 0, 2, 'category_id=225', 'cuidado-facial'),
(1009, 0, 2, 'category_id=226', 'produtos-de-maquiagem'),
(1370, 0, 2, 'category_id=587', 'diversos'),
(1368, 0, 2, 'category_id=585', 'pos-compacto-facial-e-outros'),
(1369, 0, 2, 'category_id=586', 'agua-micelar'),
(1364, 0, 2, 'category_id=581', 'gel'),
(1365, 0, 2, 'category_id=582', 'creme'),
(1366, 0, 2, 'category_id=583', 'olhos'),
(1367, 0, 2, 'category_id=584', 'mascara'),
(1363, 0, 2, 'category_id=580', 'lapis-e-delineador'),
(1362, 0, 2, 'category_id=579', 'lixa'),
(1361, 0, 2, 'category_id=578', 'base'),
(1358, 0, 2, 'category_id=575', 'capa-e-avental'),
(1359, 0, 2, 'category_id=576', 'diversos'),
(1360, 0, 2, 'category_id=577', 'lencos-e-toalhas'),
(1357, 0, 2, 'category_id=574', 'geleia-e-gelatina'),
(1356, 0, 2, 'category_id=573', 'alicates'),
(1355, 0, 2, 'category_id=572', 'bronzeadores'),
(1354, 0, 2, 'category_id=571', 'aparelho'),
(1353, 0, 2, 'category_id=570', 'higienizante'),
(1352, 0, 2, 'category_id=569', 'preparacoes-unhas-artificiais'),
(1346, 0, 2, 'category_id=563', 'protetor-solar'),
(1347, 0, 2, 'category_id=564', 'fixador'),
(1348, 0, 2, 'category_id=565', 'sabonete'),
(1349, 0, 2, 'category_id=566', 'labial'),
(1350, 0, 2, 'category_id=567', 'hidratante'),
(1351, 0, 2, 'category_id=568', 'primer'),
(1012, 0, 2, 'category_id=229', 'manicuros-e-pedicuros'),
(1013, 0, 2, 'category_id=230', 'para-salao'),
(1014, 0, 2, 'category_id=231', 'eletronicos'),
(1379, 0, 2, 'category_id=596', 'blush'),
(1371, 0, 2, 'category_id=588', 'esponja'),
(1372, 0, 2, 'category_id=589', 'luva'),
(1373, 0, 2, 'category_id=590', 'palito'),
(1374, 0, 2, 'category_id=591', 'diversos'),
(1375, 0, 2, 'category_id=592', 'diversos'),
(1376, 0, 2, 'category_id=593', 'creme'),
(1377, 0, 2, 'category_id=594', 'manteiga'),
(1343, 0, 2, 'category_id=560', 'locao'),
(1344, 0, 2, 'category_id=561', 'selante'),
(1341, 0, 2, 'category_id=558', 'neutralizante'),
(1337, 0, 2, 'category_id=554', 'diversos'),
(1338, 0, 2, 'category_id=555', 'base'),
(1339, 0, 2, 'category_id=556', 'kit'),
(1340, 0, 2, 'category_id=557', 'algodao-e-hastes'),
(1076, 0, 2, 'category_id=293', 'sabonete'),
(1077, 0, 2, 'category_id=294', 'labial'),
(1078, 0, 2, 'category_id=295', 'hidratante'),
(1079, 0, 2, 'category_id=296', 'primer'),
(1080, 0, 2, 'category_id=297', 'preparacoes-unhas-artificiais'),
(1081, 0, 2, 'category_id=298', 'higienizante'),
(1082, 0, 2, 'category_id=299', 'aparelho'),
(1083, 0, 2, 'category_id=300', 'bronzeadores'),
(1084, 0, 2, 'category_id=301', 'alicates'),
(1085, 0, 2, 'category_id=302', 'geleia-e-gelatina'),
(1086, 0, 2, 'category_id=303', 'capa-e-avental'),
(1087, 0, 2, 'category_id=304', 'reparador-de-pontas'),
(1088, 0, 2, 'category_id=305', 'fluido'),
(1089, 0, 2, 'category_id=306', 'coloracao'),
(1090, 0, 2, 'category_id=307', 'mascara-tonalizante'),
(1091, 0, 2, 'category_id=308', 'po-clareador'),
(1092, 0, 2, 'category_id=309', 'serum'),
(1093, 0, 2, 'category_id=310', 'umidificante'),
(1094, 0, 2, 'category_id=311', 'diversos'),
(1095, 0, 2, 'category_id=312', 'esmaltes'),
(1096, 0, 2, 'category_id=313', 'base'),
(1097, 0, 2, 'category_id=314', 'kit'),
(1098, 0, 2, 'category_id=315', 'algodao-e-hastes'),
(1099, 0, 2, 'category_id=316', 'neutralizante'),
(1100, 0, 2, 'category_id=317', 'mascara-matizante'),
(1101, 0, 2, 'category_id=318', 'selante'),
(1102, 0, 2, 'category_id=319', 'banho-de-creme'),
(1103, 0, 2, 'category_id=320', 'protetor-solar'),
(1104, 0, 2, 'category_id=321', 'fixador'),
(1105, 0, 2, 'category_id=322', 'spray-tonalizante'),
(1106, 0, 2, 'category_id=323', 'sabonete'),
(1107, 0, 2, 'category_id=324', 'labial'),
(1108, 0, 2, 'category_id=325', 'hidratante'),
(1109, 0, 2, 'category_id=326', 'primer'),
(1110, 0, 2, 'category_id=327', 'preparacoes-unhas-artificiais'),
(1111, 0, 2, 'category_id=328', 'higienizante'),
(1112, 0, 2, 'category_id=329', 'aparelho'),
(1113, 0, 2, 'category_id=330', 'bronzeadores'),
(1114, 0, 2, 'category_id=331', 'alicates'),
(1115, 0, 2, 'category_id=332', 'geleia-e-gelatina'),
(1116, 0, 2, 'category_id=333', 'capa-e-avental'),
(1117, 0, 2, 'category_id=334', 'diversos'),
(1118, 0, 2, 'category_id=335', 'lencos-e-toalhas'),
(1119, 0, 2, 'category_id=336', 'base'),
(1120, 0, 2, 'category_id=337', 'lixa'),
(1121, 0, 2, 'category_id=338', 'lapis-e-delineador'),
(1122, 0, 2, 'category_id=339', 'gel'),
(1123, 0, 2, 'category_id=340', 'corretivo'),
(1124, 0, 2, 'category_id=341', 'creme'),
(1125, 0, 2, 'category_id=342', 'olhos'),
(1126, 0, 2, 'category_id=343', 'mascara'),
(1127, 0, 2, 'category_id=344', 'pos-compacto-facial-e-outros'),
(1128, 0, 2, 'category_id=345', 'agua-micelar'),
(1129, 0, 2, 'category_id=346', 'esponja'),
(1130, 0, 2, 'category_id=347', 'luva'),
(1131, 0, 2, 'category_id=348', 'palito'),
(1132, 0, 2, 'category_id=349', 'diversos'),
(1133, 0, 2, 'category_id=350', 'touca-rede-e-gola'),
(1134, 0, 2, 'category_id=351', 'diversos'),
(1135, 0, 2, 'category_id=352', 'creme'),
(1136, 0, 2, 'category_id=353', 'manteiga'),
(1137, 0, 2, 'category_id=354', 'esfoliante'),
(1138, 0, 2, 'category_id=355', 'blush'),
(1139, 0, 2, 'category_id=356', 'locao'),
(1140, 0, 2, 'category_id=357', 'cera'),
(1141, 0, 2, 'category_id=358', 'hidratante'),
(1142, 0, 2, 'category_id=359', 'diversos'),
(1143, 0, 2, 'category_id=360', 'roll-on'),
(1144, 0, 2, 'category_id=361', 'folhas'),
(1145, 0, 2, 'category_id=362', 'mousse'),
(1146, 0, 2, 'category_id=363', 'demaquilante'),
(1378, 0, 2, 'category_id=595', 'esfoliante'),
(1345, 0, 2, 'category_id=562', 'banho-de-creme'),
(1342, 0, 2, 'category_id=559', 'mascara-matizante'),
(1336, 0, 2, 'category_id=553', 'produtos-de-maquiagem'),
(1332, 0, 2, 'category_id=549', 'eletronicos'),
(1333, 0, 2, 'category_id=550', 'preparacoes-antissolares'),
(1334, 0, 2, 'category_id=551', 'desodorantes'),
(1335, 0, 2, 'category_id=552', 'produtos-de-beleza'),
(1325, 0, 2, 'category_id=542', 'descartaveis'),
(1326, 0, 2, 'category_id=543', 'produtos-para-depilacao'),
(1327, 0, 2, 'category_id=544', 'para-salao'),
(1328, 0, 2, 'category_id=545', 'cuidados-com-o-corpo'),
(1329, 0, 2, 'category_id=546', 'cuidado-facial'),
(1330, 0, 2, 'category_id=547', 'higiene'),
(1331, 0, 2, 'category_id=548', 'acessorios-e-enfeites'),
(1322, 0, 2, 'category_id=539', 'preparacoes-capilares'),
(1323, 0, 2, 'category_id=540', 'manicuros-e-pedicuros'),
(1324, 0, 2, 'category_id=541', 'descolorantes'),
(1397, 0, 2, 'category_id=614', 'esfoliante'),
(1398, 0, 2, 'category_id=615', 'serum'),
(1399, 0, 2, 'category_id=616', 'geleia-e-gelatina'),
(1400, 0, 2, 'category_id=617', 'oleos'),
(1401, 0, 2, 'category_id=618', 'esfoliante'),
(1402, 0, 2, 'category_id=619', 'creme-para-massagem'),
(1403, 0, 2, 'category_id=620', 'mascara'),
(1404, 0, 2, 'category_id=621', 'tonico'),
(1405, 0, 2, 'category_id=622', 'amolecedor'),
(1406, 0, 2, 'category_id=623', 'bronzeadores'),
(1407, 0, 2, 'category_id=624', 'papel-higienico'),
(1408, 0, 2, 'category_id=625', 'creme-multifuncional'),
(1409, 0, 2, 'category_id=626', 'shampoo'),
(1410, 0, 2, 'category_id=627', 'esmaltes'),
(1411, 0, 2, 'category_id=628', 'mousse'),
(1412, 0, 2, 'category_id=629', 'coloracao'),
(1413, 0, 2, 'category_id=630', 'condicionadores'),
(1414, 0, 2, 'category_id=631', 'creme-pentear'),
(1415, 0, 2, 'category_id=632', 'ativador-de-cachos'),
(1416, 0, 2, 'category_id=633', 'esponja'),
(1417, 0, 2, 'category_id=634', 'finalizador'),
(1418, 0, 2, 'category_id=635', 'demaquilante'),
(1419, 0, 2, 'category_id=636', 'fluido'),
(1420, 0, 2, 'category_id=637', 'hidratante'),
(1421, 0, 2, 'category_id=638', 'umidificante'),
(1422, 0, 2, 'category_id=639', 'colonias'),
(1423, 0, 2, 'category_id=640', 'aerosol'),
(1424, 0, 2, 'category_id=641', 'protetor-solar'),
(1425, 0, 2, 'category_id=642', 'alisamentos-ou-permanentes'),
(1426, 0, 2, 'category_id=643', 'mascara'),
(1427, 0, 2, 'category_id=644', 'tonico'),
(1428, 0, 2, 'category_id=645', 'oleos'),
(1429, 0, 2, 'category_id=646', 'removedor-de-esmaltes'),
(1430, 0, 2, 'category_id=647', 'oxidante'),
(1431, 0, 2, 'category_id=648', 'tratamento'),
(1432, 0, 2, 'category_id=649', 'tonalizante'),
(1433, 0, 2, 'category_id=650', 'defrizante'),
(1434, 0, 2, 'category_id=651', 'reparador-de-pontas'),
(1435, 0, 2, 'category_id=652', 'mascara-tonalizante'),
(1436, 0, 2, 'category_id=653', 'po-clareador'),
(1437, 0, 2, 'category_id=654', 'pomada'),
(1438, 0, 2, 'category_id=655', 'serum');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('16ea87f8581037616c5963578a', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:22'),
('1859f43ecf5984e042cfe7aa3d', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:01:33'),
('19cafa816c27570077cdd11de7', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:49:02'),
('1aded286d52ade5270bfa9224a', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:17'),
('1b75d02c22d318f884b015c12d', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:20:53'),
('2335a10ceb7784ae0026c9f49e', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:08:39'),
('2d56d1e81b66907a5e6b82db46', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:23:10'),
('3088f6de3c9be7653bb9c2ddd4', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:19'),
('3617272e5e8dc1c9cc1368a63f', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:44:58'),
('40139d8022f69b0a5889269755', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:13'),
('42382fa252af0fe1c134fa7bd3', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:37:54'),
('485d7ffd5bc7916e6a27f8850f', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:36:19'),
('4b92ade769cf76ff7b10d1d122', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:55:06'),
('4ea550cf5822c0460ecd1528d0', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:20:33'),
('4f6e24950bc9b6b8177aed40f3', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:55:56'),
('4fdcb70480314819011bfec70b', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:15:26'),
('5674a9ce8a59a9010094d7068f', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:22'),
('56e4893e1a30da7d50f75f3074', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:23:25'),
('5a5749e72635bf5fb9948dcf1a', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:38:05'),
('5f71868d4260b25ce2d70a6679', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:17'),
('623c6838c4081b7d9257e38918', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:31:33'),
('6ad8163bbb1127ad9a9b0d0bb1', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:22'),
('6b5a3cbfe08b3c9e4b793480c9', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:31:49'),
('6d1aacc6176f9bf4f02de33f69', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:35'),
('74a074db2e6abdd9d21aa5a746', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:03:12'),
('778ee1df1356bf02ae443484e1', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:31:13'),
('7aa3534ac2f1ef66f1a373d750', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:10:08'),
('85bee77832eaa033e1d3d831a7', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:01:09'),
('8d1303e3e98586523e6e34c89c', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:47:58'),
('9211c0a41a9845e432fbc2bbf2', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:43:23'),
('9360b10b49552f4e05ae4831fa', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:37:09'),
('a0dc5c49af082623f04dab1592', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:48:39'),
('a6e46680f571cee1961ecdcd17', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:22'),
('ae92eb927630eb5689ed0f1bd1', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:29:01'),
('af7f20d354c765ea8de201a5bf', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:39'),
('b1987f9924cf1e81c1eae0d4b6', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:22'),
('b77634bf3bec3856eb4566f5c8', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:34:30'),
('bab520547c585c0f5c9b06f3b4', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:53:29'),
('c20d4321ceb1d48b7d45be3c53', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 07:52:13'),
('c304b673270d1ba596354fa294', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:56:50'),
('c9261c20efe76e2a05679edc1b', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:03:06'),
('cca9bcbc3ecfa7f297ccb26f76', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:49:05'),
('df923d2dc760a3d349ce97cf5f', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:49:03'),
('ed302e99735f50756f5fa402ad', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:11:14'),
('f2fa18df31d9ff1dc3c35dffba', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:17:20'),
('f308f4814646b85c0353155c5b', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:05:53'),
('fbf1074a537fd5ade125f64e71', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:06:18'),
('fc42d995b6d6452b830fbdd4fb', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 09:17:56'),
('fde81f7b0a224e95a685b32e77', '{\"language\":\"pt-br\",\"currency\":\"BRL\"}', '2023-06-18 08:34:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1412, 0, 'config', 'config_file_max_size', '300000', 0),
(1407, 0, 'config', 'config_compression', '0', 0),
(1408, 0, 'config', 'config_secure', '1', 0),
(1409, 0, 'config', 'config_password', '1', 0),
(1410, 0, 'config', 'config_shared', '0', 0),
(1411, 0, 'config', 'config_encryption', 'BjgBXhHEztR4fF6S2DggjS1h1fhW7hrnjpLe8G6ZoswJDd66PZxKMGTmYC4XyKeONc1XlWoECmF0bJxkxxvWik3QJrZYMLS770NcEi3ksZsKsDfiQJRLuRme8ZkTVmx5ZEOZapL5KlcA7ZDoUoAmUYlO4dP8k28UtcTaaGmUFuNPOwMrZxnJwd26RI0VauviienI8SHfpLFINbWTaclJ7ZFte7SRwdizcICUAKq9Gz2OqRAMjogkG5oqJbWUzmnuvJN1aFJ9XOy50Tb6RMi0AshLrDRu6tfF3sLUO62rhqQlUpwP3RR8ub3XMuMd45KVOxCpx3ZpnXSckVUJK6cMmzshOCHAofKCTjdhs92em8PTVEijoTkNKa1ZZBPFPbZfXgmPvdOb8lxNYdwv0X4syE3ujGRL7mRMPgSdoZQuF8u7MX1BMmMOFv9o5n9DIJmwIlOM9PWP4FbH0SspwsKkdVIu4nib4b9WkrNqw1tZuXRo7HN5u1ngjNhrcL2WOzj6jsJCkS81xIppqLSTSeJduIKme6vQvvd4nGbHiy5dSqy7cYnLSOCJHluPaoWNHvuoINtUv4m6IaEAVJxg69Zw62Alfhb0bzG0dq43H4W14jjJth1LSmKsY3fK3PWNmt3gitr50pCXilty8IQVB2iND5B8G1LZs3QtzBcANQenWupbD9Fn3pryAvxwNn8ylVoW50UT8uMwG2fbSlD5Dx9v3pqBo2G2hSALrRlccS2MeJORNKQtH4qhHuyJ6Vyu4tOUyzLoLwhA5z2hJDrY4QizjulgwtdNYrNaYPAj5lLLbdO2arMuDgLUfcM4bZUHJV0Acee24TAH6zZGqVsezu4Gb6HGmKrsKgXgvkUsj2vrRyrcVjU7XbQEt557tOAiSAlG9Ufictz8XXwuk1OTxtEnG8cNEOEegUAROTLaDC3HDNfRMG61Ux8I1hlISDdb5PctxIyeRmzPQ8SE0veXbWh1qcW2nV4DCkSvmgl28ZJ5jSFV7o9YTPST913jDEErLD3z', 0),
(1406, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1405, 0, 'config', 'config_seo_url', '1', 0),
(1404, 0, 'config', 'config_maintenance', '0', 0),
(1403, 0, 'config', 'config_mail_alert_email', '', 0),
(1402, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1401, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1400, 0, 'config', 'config_mail_smtp_port', '2525', 0),
(1399, 0, 'config', 'config_mail_smtp_password', 'AM2qNfPsPIopOrt', 0),
(1398, 0, 'config', 'config_mail_smtp_username', 'contato@rogerti.com.br', 0),
(1397, 0, 'config', 'config_mail_smtp_hostname', 'smtp-pulse.com', 0),
(1396, 0, 'config', 'config_mail_parameter', '', 0),
(1395, 0, 'config', 'config_mail_engine', 'smtp', 0),
(1394, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(94, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(96, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(1057, 0, 'payment_cartao', 'payment_cartao_status', '1', 0),
(1058, 0, 'payment_cartao', 'payment_cartao_sort_order', '1', 0),
(1055, 0, 'payment_cartao', 'payment_cartao_order_status_id', '1', 0),
(102, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(105, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(106, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(107, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(108, 0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(109, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(110, 0, 'total_tax', 'total_tax_status', '1', 0),
(111, 0, 'total_total', 'total_total_sort_order', '9', 0),
(112, 0, 'total_total', 'total_total_status', '1', 0),
(113, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(114, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(115, 0, 'total_credit', 'total_credit_status', '1', 0),
(116, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(117, 0, 'total_reward', 'total_reward_status', '1', 0),
(118, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(120, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(121, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(122, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(123, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(124, 0, 'module_category', 'module_category_status', '1', 0),
(125, 0, 'module_account', 'module_account_status', '1', 0),
(126, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(127, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(132, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(134, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(138, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(146, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(147, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(148, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(149, 0, 'theme_default', 'theme_default_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(158, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(159, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(160, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(161, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(167, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(168, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(175, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(177, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(179, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(181, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(183, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(185, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(187, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(188, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(189, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(190, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(191, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(193, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(195, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(197, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(198, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(199, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(1393, 0, 'config', 'config_logo', 'catalog/opencart-logo.png', 0),
(1392, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1391, 0, 'config', 'config_captcha', '', 0),
(1390, 0, 'config', 'config_return_status_id', '2', 0),
(1389, 0, 'config', 'config_return_id', '0', 0),
(1388, 0, 'config', 'config_affiliate_id', '4', 0),
(1387, 0, 'config', 'config_affiliate_commission', '5', 0),
(1385, 0, 'config', 'config_affiliate_approval', '0', 0),
(1386, 0, 'config', 'config_affiliate_auto', '0', 0),
(1384, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1382, 0, 'config', 'config_stock_warning', '1', 0),
(1383, 0, 'config', 'config_stock_checkout', '0', 0),
(1381, 0, 'config', 'config_stock_display', '1', 0),
(1380, 0, 'config', 'config_api_id', '1', 0),
(1378, 0, 'config', 'config_complete_status', '[\"21\"]', 1),
(1379, 0, 'config', 'config_fraud_status_id', '22', 0),
(1377, 0, 'config', 'config_processing_status', '[\"20\",\"24\"]', 1),
(1375, 0, 'config', 'config_checkout_id', '5', 0),
(1376, 0, 'config', 'config_order_status_id', '22', 0),
(1374, 0, 'config', 'config_checkout_guest', '1', 0),
(1373, 0, 'config', 'config_cart_weight', '0', 0),
(1371, 0, 'config', 'config_account_id', '3', 0),
(1372, 0, 'config', 'config_invoice_prefix', 'INV-2022-00', 0),
(1370, 0, 'config', 'config_login_attempts', '5', 0),
(1369, 0, 'config', 'config_customer_price', '0', 0),
(1155, 0, 'developer', 'developer_theme', '0', 0),
(1156, 0, 'developer', 'developer_sass', '0', 0),
(1152, 0, 'module_sendpulse', 'module_sendpulse_count', '1', 0),
(1151, 0, 'module_sendpulse', 'module_sendpulse_status', '1', 0),
(1150, 0, 'module_sendpulse', 'module_sendpulse_book_default', '2058579', 0),
(1149, 0, 'module_sendpulse', 'module_sendpulse_sender_default', 'Contato,contato@rogerti.com.br', 0),
(1148, 0, 'module_sendpulse', 'module_sendpulse_auto_add', '1', 0),
(1147, 0, 'module_sendpulse', 'module_sendpulse_sexo', '8', 0),
(1146, 0, 'module_sendpulse', 'module_sendpulse_celular', '7', 0),
(1145, 0, 'module_sendpulse', 'module_sendpulse_nascimento', '6', 0),
(1368, 0, 'config', 'config_customer_group_display', '[\"1\",\"2\"]', 1),
(1144, 0, 'module_sendpulse', 'module_sendpulse_secret', '6324468fba0b352c306364cf7465fdcb', 0),
(1143, 0, 'module_sendpulse', 'module_sendpulse_id', 'a4d469096a2c6205137f956d3dc0f127', 0),
(1367, 0, 'config', 'config_customer_group_id', '1', 0),
(1366, 0, 'config', 'config_customer_search', '1', 0),
(905, 0, 'module_parcelamento', 'module_parcelamento_tabela', '[{\"parcelas\":\"\",\"juros\":\"\"}]', 1),
(904, 0, 'module_parcelamento', 'module_parcelamento_view_container', '#parcelamento', 0),
(903, 0, 'module_parcelamento', 'module_parcelamento_options_container', '#product', 0),
(902, 0, 'module_parcelamento', 'module_parcelamento_texto_com_juros', 'com juros', 0),
(901, 0, 'module_parcelamento', 'module_parcelamento_texto_sem_juros', 'sem juros', 0),
(900, 0, 'module_parcelamento', 'module_parcelamento_layout_parcelas', '&lt;li style=&quot;margin: 0px; padding-bottom: 5px; font-family: sans-serif;&quot;&gt;Em até &lt;strong&gt;{parcelas}x de {parcela}&lt;/strong&gt; {juros}&lt;', 0),
(899, 0, 'module_parcelamento', 'module_parcelamento_layout_produto', '&lt;div style=&quot;padding: 10px 0px; font-size: 13px;&quot;&gt;\r\n  À vista &lt;span style=&quot;font-size: 20px;&quot;&gt;{vdesconto}&lt;/span&gt; &lt;b&gt;({desconto}% OFF)&lt;/b&gt;&lt;br /&gt;\r\n  &lt;i class=&quot;fa fa-barcode&quot;&gt;&lt;/i&gt; Economize &lt;b&gt;{veconomia}&lt;/b&gt; no boleto ou pix\r\n&lt;/div&gt;\r\n&lt;div style=&quot;border-top: 1px solid #e2e2e2; padding: 10px 0px; font-size: 13px;&quot;&gt;\r\n  {sjminimo}Em até &lt;b&gt;{sem_juros}x&lt;/b&gt; de &lt;b&gt;{sjuros}&lt;/b&gt; sem juros{/sjminimo}\r\n  {cjminimo}&lt;br /&gt;ou até &lt;b&gt;{parcelas}x&lt;/b&gt; de &lt;b&gt;{cjuros}&lt;/b&gt; com juros{/cjminimo} \r\n  &lt;a style=&quot;text-decoration: none; float: right;&quot; role=&quot;button&quot; data-toggle=&quot;collapse&quot; aria-expanded=&quot;false&quot; aria-controls=&quot;parcelas&quot; href=&quot;#parcelas&quot;&gt;&lt;i class=&quot;fa fa-credit-card&quot;&gt;&lt;/i&gt; Ver parcelas&lt;/a&gt;\r\n  &lt;div id=&quot;parcelas&quot; class=&quot;collapse&quot;&gt;\r\n    &lt;table class=&quot;table table-hover&quot;&gt;\r\n      &lt;thead&gt;\r\n        &lt;tr&gt;\r\n          &lt;th class=&quot;text-left&quot; style=&quot;font-size:14px;&quot;&gt;&lt;b&gt;Parcelas&lt;/b&gt;&lt;/th&gt;\r\n          &lt;th class=&quot;text-center&quot; style=&quot;font-size:14px;&quot;&gt;&lt;b&gt;Total&lt;/b&gt;&lt;/th&gt;\r\n        &lt;/tr&gt;\r\n      &lt;/thead&gt;\r\n      &lt;tbody&gt;\r\n      {demonstrativo}\r\n      &lt;/tbody&gt;\r\n    &lt;/table&gt;\r\n    &lt;p style=&quot;text-align: right;&quot;&gt;&lt;small&gt;Taxa de juros de {juros_mes}% ao mês.&lt;/small&gt;&lt;/p&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;', 0),
(893, 0, 'module_parcelamento', 'module_parcelamento_juros', '2.99', 0),
(894, 0, 'module_parcelamento', 'module_parcelamento_calculo_juros', 'simples', 0),
(895, 0, 'module_parcelamento', 'module_parcelamento_sem_juros', '6', 0),
(896, 0, 'module_parcelamento', 'module_parcelamento_minimo', '50', 0),
(897, 0, 'module_parcelamento', 'module_parcelamento_imagem', 'catalog/assets/cartao.png', 0),
(898, 0, 'module_parcelamento', 'module_parcelamento_layout_modulos', '&lt;p&gt;\r\nÀ vista &lt;b&gt;{vdesconto}&lt;/b&gt; ({desconto}% OFF)\r\n{sjminimo}&lt;br /&gt;&lt;i class=&quot;fa fa-credit-card&quot;&gt;&lt;/i&gt; ou {sem_juros}x de &lt;b&gt;{sjuros}&lt;/b&gt; sem juros{/sjminimo}\r\n&lt;/p&gt;', 0),
(890, 0, 'module_parcelamento', 'module_parcelamento_total', '50', 0),
(891, 0, 'module_parcelamento', 'module_parcelamento_desconto', '5.00', 0),
(892, 0, 'module_parcelamento', 'module_parcelamento_parcelas', '12', 0),
(889, 0, 'module_parcelamento', 'module_parcelamento_status', '1', 0),
(888, 0, 'module_parcelamento', 'module_parcelamento_customer_groups', '[\"1\",\"2\"]', 1),
(887, 0, 'module_parcelamento', 'module_parcelamento_stores', '[\"0\"]', 1),
(886, 0, 'module_parcelamento', 'module_parcelamento_currency_id', 'BRL', 0),
(885, 0, 'module_parcelamento', 'module_parcelamento_language_id', 'pt-br', 0),
(906, 0, 'shipping_faixa_cep', 'shipping_faixa_cep_group_title', 'Frete por Cep', 0),
(907, 0, 'shipping_faixa_cep', 'shipping_faixa_cep_status', '1', 0),
(908, 0, 'shipping_faixa_cep', 'shipping_faixa_cep_sort_order', '1', 0),
(909, 0, 'shipping_faixa_cep', 'shipping_faixa_cep_interval', '{\"qiiuj5ye6z\":{\"title\":\"Cabo Frio\",\"order_total\":\"\",\"cep\":\"28920000:28920999\",\"cost\":\"10.00\"},\"o0rga3q5du8\":{\"title\":\"S\\u00e3o Pedro\",\"order_total\":\"\",\"cep\":\"28941000:28941999\",\"cost\":\"5.00\"}}', 0),
(1365, 0, 'config', 'config_customer_activity', '1', 0),
(1364, 0, 'config', 'config_customer_online', '1', 0),
(1363, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1362, 0, 'config', 'config_tax_default', 'shipping', 0),
(1361, 0, 'config', 'config_tax', '0', 0),
(1360, 0, 'config', 'config_voucher_max', '1000', 0),
(1359, 0, 'config', 'config_voucher_min', '1', 0),
(1358, 0, 'config', 'config_review_guest', '1', 0),
(1357, 0, 'config', 'config_review_status', '1', 0),
(1356, 0, 'config', 'config_limit_admin', '20', 0),
(1355, 0, 'config', 'config_product_count', '0', 0),
(1354, 0, 'config', 'config_weight_class_id', '1', 0),
(1352, 0, 'config', 'config_currency_auto', '0', 0),
(1353, 0, 'config', 'config_length_class_id', '1', 0),
(1056, 0, 'payment_cartao', 'payment_cartao_geo_zone_id', '0', 0),
(1054, 0, 'payment_cartao', 'payment_cartao_total', '1', 0),
(1044, 0, 'payment_cod', 'payment_cod_total', '1', 0),
(1045, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(1046, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(1047, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(1048, 0, 'payment_cod', 'payment_cod_sort_order', '2', 0),
(1413, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1414, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1349, 0, 'config', 'config_language', 'pt-br', 0),
(1350, 0, 'config', 'config_admin_language', 'pt-br', 0),
(1351, 0, 'config', 'config_currency', 'BRL', 0),
(1348, 0, 'config', 'config_timezone', 'America/Sao_Paulo', 0),
(1347, 0, 'config', 'config_zone_id', '458', 0),
(1346, 0, 'config', 'config_country_id', '30', 0),
(1345, 0, 'config', 'config_comment', '', 0),
(1344, 0, 'config', 'config_open', '', 0),
(1343, 0, 'config', 'config_image', '', 0),
(1342, 0, 'config', 'config_fax', '', 0),
(1341, 0, 'config', 'config_telephone', '123456789', 0),
(1340, 0, 'config', 'config_email', 'contato@rogerti.com.br', 0),
(1339, 0, 'config', 'config_geocode', '', 0),
(1338, 0, 'config', 'config_address', 'Show Beleza', 0),
(1333, 0, 'config', 'config_meta_keyword', '', 0),
(1334, 0, 'config', 'config_theme', 'default', 0),
(1335, 0, 'config', 'config_layout_id', '4', 0),
(1336, 0, 'config', 'config_name', 'Show Beleza', 0),
(1337, 0, 'config', 'config_owner', 'Show Beleza', 0),
(1332, 0, 'config', 'config_meta_description', 'Show Beleza', 0),
(1331, 0, 'config', 'config_meta_title', 'Show Beleza', 0),
(1415, 0, 'config', 'config_error_display', '0', 0),
(1416, 0, 'config', 'config_error_log', '1', 0),
(1417, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_shipping_courier`
--

DROP TABLE IF EXISTS `oc_shipping_courier`;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', 494.9700),
(2, 'order_processing', 0.0000),
(3, 'order_complete', 0.0000),
(4, 'order_other', 0.0000),
(5, 'returns', 0.0000),
(6, 'product', 0.0000),
(7, 'review', 0.0000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'Em Estoque'),
(8, 2, 'Orçamento'),
(5, 2, 'Esgotado'),
(6, 2, '2 a 3 Dias'),
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', 20.0000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', 2.0000, 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'd7717fb3a56b2c6ecf8e163dadc35b526749f7dc', 'eqxrvgwPy', 'Administrador', 'Admin', 'rogersgti87@gmail.com', '', '', '189.84.253.239', 1, '2022-08-19 21:44:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrador', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/validacao\",\"extension\\/module\\/sendpulse\",\"extension\\/module\\/parcelamento\",\"extension\\/module\\/latest\",\"extension\\/shipping\\/faixa_cep\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cartao\",\"extension\\/payment\\/cod\",\"extension\\/module\\/validacao\",\"extension\\/module\\/validacao\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/validacao\",\"extension\\/module\\/sendpulse\",\"extension\\/module\\/parcelamento\",\"extension\\/module\\/latest\",\"extension\\/shipping\\/faixa_cep\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cartao\",\"extension\\/payment\\/cod\",\"extension\\/module\\/validacao\",\"extension\\/module\\/validacao\"]}'),
(10, 'Operacional', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Quilograma', 'kg'),
(2, 2, 'Grama', 'g'),
(5, 2, 'Libra', 'lb'),
(6, 2, 'Onça', 'oz'),
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Índices de tabela `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Índices de tabela `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Índices de tabela `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Índices de tabela `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Índices de tabela `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Índices de tabela `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Índices de tabela `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Índices de tabela `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Índices de tabela `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Índices de tabela `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Índices de tabela `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Índices de tabela `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Índices de tabela `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Índices de tabela `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Índices de tabela `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Índices de tabela `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Índices de tabela `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Índices de tabela `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Índices de tabela `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Índices de tabela `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Índices de tabela `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Índices de tabela `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Índices de tabela `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Índices de tabela `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Índices de tabela `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Índices de tabela `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Índices de tabela `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Índices de tabela `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Índices de tabela `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Índices de tabela `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Índices de tabela `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Índices de tabela `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Índices de tabela `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Índices de tabela `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Índices de tabela `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Índices de tabela `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Índices de tabela `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Índices de tabela `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Índices de tabela `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Índices de tabela `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Índices de tabela `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Índices de tabela `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Índices de tabela `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Índices de tabela `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Índices de tabela `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Índices de tabela `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Índices de tabela `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Índices de tabela `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Índices de tabela `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Índices de tabela `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Índices de tabela `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Índices de tabela `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Índices de tabela `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Índices de tabela `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Índices de tabela `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Índices de tabela `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Índices de tabela `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Índices de tabela `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Índices de tabela `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Índices de tabela `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Índices de tabela `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Índices de tabela `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Índices de tabela `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Índices de tabela `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Índices de tabela `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Índices de tabela `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Índices de tabela `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Índices de tabela `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Índices de tabela `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Índices de tabela `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Índices de tabela `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Índices de tabela `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Índices de tabela `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Índices de tabela `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Índices de tabela `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Índices de tabela `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Índices de tabela `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Índices de tabela `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Índices de tabela `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Índices de tabela `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Índices de tabela `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Índices de tabela `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Índices de tabela `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Índices de tabela `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Índices de tabela `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Índices de tabela `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Índices de tabela `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Índices de tabela `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Índices de tabela `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Índices de tabela `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Índices de tabela `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Índices de tabela `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Índices de tabela `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Índices de tabela `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Índices de tabela `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Índices de tabela `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Índices de tabela `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Índices de tabela `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Índices de tabela `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Índices de tabela `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Índices de tabela `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Índices de tabela `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Índices de tabela `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Índices de tabela `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Índices de tabela `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Índices de tabela `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Índices de tabela `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Índices de tabela `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Índices de tabela `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Índices de tabela `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Índices de tabela `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Índices de tabela `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Índices de tabela `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Índices de tabela `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Índices de tabela `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Índices de tabela `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Índices de tabela `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices de tabela `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Índices de tabela `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Índices de tabela `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Índices de tabela `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Índices de tabela `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Índices de tabela `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Índices de tabela `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Índices de tabela `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Índices de tabela `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT de tabela `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT de tabela `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de tabela `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT de tabela `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2392;

--
-- AUTO_INCREMENT de tabela `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT de tabela `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT de tabela `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT de tabela `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1439;

--
-- AUTO_INCREMENT de tabela `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1418;

--
-- AUTO_INCREMENT de tabela `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de tabela `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de tabela `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT de tabela `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
