-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 20 2023 г., 11:04
-- Версия сервера: 5.7.39-log
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `magaz1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `imgprof`
--

CREATE TABLE `imgprof` (
  `id` int(255) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `imgprof`
--

INSERT INTO `imgprof` (`id`, `img`) VALUES
(1, 'prof.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `prodaves`
--

CREATE TABLE `prodaves` (
  `id_prodaves` int(100) NOT NULL,
  `telephone` int(100) NOT NULL,
  `adress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` int(100) NOT NULL,
  `login_prod` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_prod` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `prodaves`
--

INSERT INTO `prodaves` (`id_prodaves`, `telephone`, `adress`, `payment`, `login_prod`, `password_prod`) VALUES
(1, 564534, 'Залупина 2', 756546, 'prodaves', '123321');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(150) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(150) NOT NULL,
  `old_price` int(150) NOT NULL,
  `hit` int(150) NOT NULL,
  `sale` int(150) NOT NULL,
  `id_category` int(110) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `content`, `price`, `old_price`, `hit`, `sale`, `id_category`, `img`, `slug`) VALUES
(1, 'Кровать с подъёмным механизмом SOLANA', 'Кровать с подъёмным механизмом SOLANA', 36499, 40000, 1, 0, 1, '1.jpg', 3),
(2, 'Кровать с подъёмным механизмом SOLANA', 'Кровать с подъёмным механизмом SOLANA', 36499, 40000, 1, 0, 1, '2.jpg', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `proizvod`
--

CREATE TABLE `proizvod` (
  `id_proizvod` int(100) NOT NULL,
  `adress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_proizvod` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Расчетный счет` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `proizvod`
--

INSERT INTO `proizvod` (`id_proizvod`, `adress`, `name_proizvod`, `Расчетный счет`) VALUES
(1, 'Улица Кирова 26а', 'Neke', 56453424),
(2, 'Хлебозаводская 2', 'Toooopsi', 21334535);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `message`, `date`) VALUES
(10, 'Артур', 'hack1medait@gmail.com', 'Вау супер сайт', '2023-11-07 13:40:44'),
(11, 'Артур', 'hack1medait@gmail.com', 'Вау супер сайт', '2023-11-07 13:41:11'),
(12, 'Артур', 'hack1medait@gmail.com', 'Вау супер сайт', '2023-11-07 13:41:20'),
(13, 'Артур Хайруллин', 'hack1medait@gmail.com', 'Привет', '2023-11-07 13:41:38');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'hack1medait@gmail.com'),
(2, 'Artyr321', '202cb962ac59075b964b07152d234b70', 'hack12medait@gmail.com'),
(3, '123', '202cb962ac59075b964b07152d234b70', '123hack1medait@gmail.com'),
(4, 'admin1', '21232f297a57a5a743894a0e4a801fc3', 'hack1342medait@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `id_zakaz` int(100) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `buyer_id` int(100) NOT NULL,
  `proizvodit_id` int(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `tovar_i` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `imgprof`
--
ALTER TABLE `imgprof`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prodaves`
--
ALTER TABLE `prodaves`
  ADD PRIMARY KEY (`id_prodaves`),
  ADD KEY `id_prodaves` (`id_prodaves`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`id_proizvod`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id_zakaz`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `proizvodit_id` (`proizvodit_id`),
  ADD KEY `name` (`name`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `tovar_i` (`tovar_i`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `imgprof`
--
ALTER TABLE `imgprof`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `proizvod`
--
ALTER TABLE `proizvod`
  MODIFY `id_proizvod` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id_zakaz` int(100) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD CONSTRAINT `zakaz_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `zakaz_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `prodaves` (`id_prodaves`),
  ADD CONSTRAINT `zakaz_ibfk_3` FOREIGN KEY (`proizvodit_id`) REFERENCES `proizvod` (`id_proizvod`),
  ADD CONSTRAINT `zakaz_ibfk_4` FOREIGN KEY (`tovar_i`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `zakaz_ibfk_5` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
