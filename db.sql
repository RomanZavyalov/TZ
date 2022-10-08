-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 08 2022 г., 05:51
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `db_user`
--

CREATE TABLE `db_user` (
  `user_id` int(10) NOT NULL,
  `user_login` varchar(100) NOT NULL,
  `user_email` varchar(300) NOT NULL,
  `user_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `db_user`
--

INSERT INTO `db_user` (`user_id`, `user_login`, `user_email`, `user_password`) VALUES
(1, 'user123', 'email@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, '123', 'asd@asd.asd', '202cb962ac59075b964b07152d234b70'),
(3, 'UwU_2007', 'email@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'user', 'user@email.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `task_id` int(10) NOT NULL,
  `task_login_customer` varchar(200) NOT NULL,
  `task_email_customer` varchar(300) NOT NULL,
  `task_login_executor` varchar(200) NOT NULL,
  `task_email_executor` varchar(300) NOT NULL,
  `task_name` varchar(100) NOT NULL,
  `task_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`task_id`, `task_login_customer`, `task_email_customer`, `task_login_executor`, `task_email_executor`, `task_name`, `task_text`) VALUES
(1, 'User564', 'user@email.com', 'User', 'user@email.com', 'Техническое задание', 'Реализовать web-сервис: «Таск-менеджер».\r\n                    Необходимо предусмотреть систему авторизации.\r\n                    Минимальный набор полей - «имя пользователя, кто поставил задачу», «его e-mail», «имя пользователя, кому поставили задачу», «его e-mail», «название задачи», «текст задачи», «дата постановки задачи», «дедлайн задачи». \r\n                    Просмотр задач возможен только авторизированным пользователям.\r\n                    Задачи может создавать любой пользователь любому пользователю. \r\n                    Редактирование и удаление задач возможно только авторизованным пользователям (без разграничения по ролям). \r\n                    Всю информацию необходимо хранить в базе данных MySQL.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `db_user`
--
ALTER TABLE `db_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
