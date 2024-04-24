-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 13 2023 г., 12:53
-- Версия сервера: 8.0.15
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `server`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adminka`
--

CREATE TABLE `adminka` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `adminka`
--

INSERT INTO `adminka` (`id`, `name`, `password`) VALUES
(1, 'admin', '555');

-- --------------------------------------------------------

--
-- Структура таблицы `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `diagnostics` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prodwarranty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `coments`
--

CREATE TABLE `coments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `problems` varchar(255) NOT NULL,
  `adres` varchar(255) NOT NULL,
  `categori` varchar(255) NOT NULL,
  `verification` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `coments`
--

INSERT INTO `coments` (`id`, `name`, `telephone`, `email`, `problems`, `adres`, `categori`, `verification`) VALUES
(5, 'Котов', '+7 656 565 23 41', 'mail@mail.ru', 'утонул пк', 'улица', 'Замена HDD/SSD', 1),
(6, 'sfsdfs', 'fdsfsdfsdfs', 'fsf@mail.ru', 'dsfsdf', 'dsfsdfs', 'Замена матрицы', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `master`
--

CREATE TABLE `master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `otzive`
--

CREATE TABLE `otzive` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `otzive`
--

INSERT INTO `otzive` (`id`, `name`, `text`) VALUES
(1, 'Денис ', 'Очень хочется поблагодарить Server за спасение ноутбука после падения. Не включался, думала, что уже на мусорку. Обратилась в сервис, в тот же день мастер приехал. И представляете, починил!!! я так счастлива. Спасибо'),
(2, 'Екатерина', 'Обзвонил 5 сервисов, и только в этом нужная деталь для ремонта ноута была в наличии. По телефону мне ответили на все вопросы, уточнили про поломку, отправили мастера! СЮДА.'),
(3, 'Александр', 'Этот сервисный центр помог найти довольно редкую запчасть на мой ноутбук HP. Безмерно благодарен, потому что до этого в трех сервисах отказали. Ремонт довольно быстрый, дали гарантию, очень круто!'),
(4, 'Анастасия', 'Прекрасный сервисный центр, обращалась за чисткой ноутбука уже не в первый раз. Всем довольна, мастера приятные люди. Рекомендую.'),
(5, 'Алексей', 'Требовалась замена матрицы на ноутбук. Хотелось оригинальную деталь, поэтому поиск сервиса немного затянулся. В этом гарантировали установку только оригинальных запчастей. Доверился.'),
(6, 'Иван', 'Обзвонил 5 сервисов, и только в этом нужная деталь для ремонта ноута была в наличии. По телефону мне ответили на все вопросы, уточнили про поломку, отправили мастера. Обслуживание и ремонт топ! Все сюда.'),
(8, 'Ирина', 'Обзвонил 5 сервисов, и только в этом нужная деталь для ремонта ноута была в наличии. По телефону мне ответили на все вопросы, уточнили про поломку, отправили мастера. Обслуживание и ремонт топ! Все сюда.'),
(9, '12', 'PhpStorm'),
(10, '1', 'God of War на пк 2022'),
(15, 'Face', 'Очень хочется поблагодарить Server за спасение ноутбука после падения. Не включался, думала, что уже на мусорку. Обратилась в сервис, в тот же день мастер приехал. И представляете, починил!!! я так счастлива. Спасибо'),
(16, 'katya', 'problema');

-- --------------------------------------------------------

--
-- Структура таблицы `registret`
--

CREATE TABLE `registret` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '12', '12@mail.ru', NULL, '$2y$10$gQA4ALG/f1Ps62BjmCK0Y.512KdmDdlgiaTjhxZvdhBxSYG7no3bu', NULL, '2022-11-23 15:37:49', '2022-11-23 15:37:49'),
(2, 'samat', 'samat@mail.ru', NULL, '$2y$10$RAY3cY9xbxuTWGkXxsagN.9hZLFG1JRjw7/T2w/qnz7x3pvibV1E6', 'BEl5pdQ0B7yB1o48IDqe3pywp2fHNLZUeJQ7LC4wPp5nCCpE1MmMLlTZ49KF', '2022-11-24 07:46:11', '2022-11-24 07:46:11'),
(3, 'логин', 'getop@mail.ru', NULL, '$2y$10$0uuQAH9/GjtbjiUCK0x6luNPUlK4J.lhzuoyluv6SS24Nuyh2oaJe', NULL, '2023-02-03 09:20:16', '2023-02-03 09:20:16'),
(4, 'name', 'name@mail.ru', NULL, '$2y$10$ZCOLRseZ91dvsmTdhc/n6urnqTGfjNCwjUoQUV0idizk8o4FBgQS2', NULL, '2023-02-03 09:24:35', '2023-02-03 09:24:35'),
(5, 'Катя', 'katya@mail.ru', NULL, '$2y$10$zbcHR86SKVUgWoGIiRkWbuxk2uLvkADY3/4tT5u8ZfWmS/itP3ztW', NULL, '2023-02-06 06:25:44', '2023-02-06 06:25:44'),
(6, 'dama', 'dama@mail.ru', NULL, '$2y$10$kqABvKpmU2YcCQAswhvE1uNBrHgtBMWIlZ/SGz5w2WwjDgmDnzb2i', NULL, '2023-02-08 08:12:49', '2023-02-08 08:12:49'),
(7, 'ka', 'ka@mail.ru', NULL, '$2y$10$LWytozPFQfvHEIDdDtJWi.tKVJhBY7EEF4IF1TMq5cxreBOmlBf9O', '5y5HHCdV9s6oR4vEdPMXiFdpSY9q1xUZFdD83pGsrztlxYtudGA5Rq5KjYUB', '2023-02-10 08:56:03', '2023-02-10 08:56:03');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adminka`
--
ALTER TABLE `adminka`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coments`
--
ALTER TABLE `coments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `otzive`
--
ALTER TABLE `otzive`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `registret`
--
ALTER TABLE `registret`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `adminka`
--
ALTER TABLE `adminka`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `coments`
--
ALTER TABLE `coments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `master`
--
ALTER TABLE `master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `otzive`
--
ALTER TABLE `otzive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `registret`
--
ALTER TABLE `registret`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`id`) REFERENCES `registret` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `application_ibfk_2` FOREIGN KEY (`id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `master`
--
ALTER TABLE `master`
  ADD CONSTRAINT `master_ibfk_1` FOREIGN KEY (`id`) REFERENCES `application` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
