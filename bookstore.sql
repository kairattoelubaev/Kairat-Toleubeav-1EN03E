-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 21 2016 г., 16:23
-- Версия сервера: 10.1.8-MariaDB
-- Версия PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookstore`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `year` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pic` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `details` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `name`, `year`, `category`, `pic`, `details`, `price`, `status`) VALUES
(15, 'adidas', '2009', 'shoes', 'butsy2.jpg', 'the best thing on the pitch that you have ever seen', '50', 'new'),
(16, 'nike', '2009', 'shoes', 'nike1.jpg', 'Kairat Toleubaev advice you to take this shoe only today there is a discount for 15 dollars', '25', 'special'),
(17, 'puma', '2010', 't-shirt', 'italy.jpg', 'Quality t-shirt of Italy squad.', '20', 'special'),
(20, 'joma', '2010', 'shoes', 'joma.jpg', 'Very good shoes.', '90', 'special');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `email` varchar(200) COLLATE utf8_bin NOT NULL,
  `phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `company` varchar(200) COLLATE utf8_bin NOT NULL,
  `message` varchar(1000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `company`, `message`) VALUES
(1, 'Daniel', 'danielh@bk.ru', '8701123456', 'New LIne', 'Just test message!'),
(2, 'Daniel', 'danielh@bk.ru', '8701123456', 'New LIne', 'Just test message2!'),
(3, 'Ð¼Ñƒ', 'Ñ„ÑÐ¶Ó˜@lclksad.ru', '68541', '', 'a;kscmaw'),
(4, '', '', '', '', ''),
(5, '', '', '', '', ''),
(6, '', '', '', '', ''),
(7, '', '', '', '', ''),
(8, 'medet', 'm@d.com', '777', '', 'jkasjasljaslkjaslkjjlas'),
(9, 'adi', 'asds@rq.ru', '777', '', 'tudju'),
(10, 'tgregerg', 'dcdsv@gfg.ru', '425424', '', 'ryrtytry'),
(11, 'tgregerg', 'dcdsv@gfg.ru', '425424', '', 'ryrtytry'),
(12, 'elzhan', 'gfeg@ff.ru', '257325', '', 'e chertila');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `phone` varchar(30) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `cart` varchar(1000) COLLATE utf8_bin NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `phone`, `address`, `status`, `cart`, `total`) VALUES
(3, 'admin', '123', 'no@mail.com', '877777777', 'unknown', 'admin', '', 0),
(5, 'danielh', '81dc9bdb52d04dc20036dbd8313ed055', 'daniel@mail.com', '8701123456', 'Kazakhstan', '', '&15&23&18', 20),
(6, 'daniel', 'c4ca4238a0b923820dcc509a6f75849b', '19danielh93@gmail.com', '87001234567', 'Kazakhstan', '', '&16', 12),
(7, 'univer', '202cb962ac59075b964b07152d234b70', 'asd@mail.com', '87770001235', 'Kazakhstan', '', '&22', 2),
(8, 'ðœðµð´ðµñ‚', '202cb962ac59075b964b07152d234b70', 'medet.tazhibay@gmail.com', '87085480565', 'almaty', '', '', 0),
(9, 'kairat', '321', 'kairagt@gmail.com', '87531', 'karagandaktl', '', '', 0),
(10, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '&15&15&15&16&15', 225),
(11, 'medet', '202cb962ac59075b964b07152d234b70', 'm@d.com', '777', 'almaty', '', '&15&16&20&16', 190),
(12, 'adi', '202cb962ac59075b964b07152d234b70', 'asds@rq.ru', '777', 'dsadasd', '', '', 0),
(13, 'ðµð»ð¶ð°ð¾', '81dc9bdb52d04dc20036dbd8313ed055', 'y@vk.com', '8701', 'ashdiuo', '', '', 0),
(14, 'kaira', 'ab79e3fc5146632b1d77c2137acf6036', 'kaira@', '123', 'unkw', 'admin', '', 0),
(15, 'kairat', '202cb962ac59075b964b07152d234b70', 'bdghd@dgh.tr', '2221', 'vvdfb', '', '&15&15', 100);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
