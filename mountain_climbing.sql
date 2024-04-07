-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 06 2024 г., 01:57
-- Версия сервера: 8.0.35
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mountain_climbing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `climberclimbs`
--

CREATE TABLE `climberclimbs` (
  `climber_id` int NOT NULL,
  `climb_id` int NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `climberclimbs`
--

INSERT INTO `climberclimbs` (`climber_id`, `climb_id`, `record_ts`) VALUES
(1, 1, '2024-04-05 23:56:45'),
(2, 2, '2024-04-05 23:56:45'),
(3, 3, '2024-04-05 23:56:45'),
(4, 4, '2024-04-05 23:56:45'),
(5, 5, '2024-04-05 23:56:45'),
(6, 6, '2024-04-05 23:56:45'),
(7, 7, '2024-04-05 23:56:45'),
(8, 8, '2024-04-05 23:56:45'),
(9, 9, '2024-04-05 23:56:45'),
(10, 10, '2024-04-05 23:56:45');

-- --------------------------------------------------------

--
-- Структура таблицы `climberincidenttypes`
--

CREATE TABLE `climberincidenttypes` (
  `incident_id` int NOT NULL,
  `type_id` int NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `climberincidenttypes`
--

INSERT INTO `climberincidenttypes` (`incident_id`, `type_id`, `record_ts`) VALUES
(1, 1, '2024-04-05 23:56:17'),
(2, 2, '2024-04-05 23:56:17'),
(3, 3, '2024-04-05 23:56:17'),
(4, 4, '2024-04-05 23:56:17'),
(5, 5, '2024-04-05 23:56:17'),
(6, 6, '2024-04-05 23:56:17'),
(7, 7, '2024-04-05 23:56:17'),
(8, 8, '2024-04-05 23:56:17'),
(9, 9, '2024-04-05 23:56:17'),
(10, 10, '2024-04-05 23:56:17');

-- --------------------------------------------------------

--
-- Структура таблицы `climbers`
--

CREATE TABLE `climbers` (
  `climber_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `climbers`
--

INSERT INTO `climbers` (`climber_id`, `first_name`, `last_name`, `address`, `record_ts`) VALUES
(1, 'John', 'Doe', '123 Main St', '2024-04-05 23:42:38'),
(2, 'Jane', 'Smith', '456 Elm St', '2024-04-05 23:42:38'),
(3, 'Alice', 'Johnson', '789 Oak Ave', '2024-04-05 23:42:38'),
(4, 'Bob', 'Brown', '101 Pine Rd', '2024-04-05 23:42:38'),
(5, 'Eve', 'Davis', '202 Maple Ln', '2024-04-05 23:42:38'),
(6, 'Michael', 'Wilson', '303 Cedar St', '2024-04-05 23:42:38'),
(7, 'Sarah', 'Thompson', '404 Birch Ave', '2024-04-05 23:42:38'),
(8, 'David', 'Martinez', '505 Walnut Rd', '2024-04-05 23:42:38'),
(9, 'Laura', 'Rodriguez', '606 Cherry Ln', '2024-04-05 23:42:38'),
(10, 'William', 'Lopez', '707 Elm St', '2024-04-05 23:42:38');

-- --------------------------------------------------------

--
-- Структура таблицы `climbs`
--

CREATE TABLE `climbs` (
  `climb_id` int NOT NULL,
  `climber_id` int NOT NULL,
  `mountain_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Дамп данных таблицы `climbs`
--

INSERT INTO `climbs` (`climb_id`, `climber_id`, `mountain_id`, `start_date`, `end_date`, `record_ts`) VALUES
(1, 1, 1, '2024-03-01', '2024-03-10', '2024-04-05 23:42:38'),
(2, 2, 2, '2024-04-01', '2024-04-10', '2024-04-05 23:42:38'),
(3, 3, 3, '2024-05-01', '2024-05-10', '2024-04-05 23:42:38'),
(4, 4, 4, '2024-06-01', '2024-06-10', '2024-04-05 23:42:38'),
(5, 5, 5, '2024-07-01', '2024-07-10', '2024-04-05 23:42:38'),
(6, 6, 6, '2024-08-01', '2024-08-10', '2024-04-05 23:42:38'),
(7, 7, 7, '2024-09-01', '2024-09-10', '2024-04-05 23:42:38'),
(8, 8, 8, '2024-10-01', '2024-10-10', '2024-04-05 23:42:38'),
(9, 9, 9, '2024-11-01', '2024-11-10', '2024-04-05 23:42:38'),
(10, 10, 10, '2024-12-01', '2024-12-10', '2024-04-05 23:42:38');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `country_id` int NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `record_ts`) VALUES
(1, 'Nepal', '2024-04-05 23:42:38'),
(2, 'Tanzania', '2024-04-05 23:42:38'),
(3, 'Pakistan', '2024-04-05 23:42:38'),
(4, 'India', '2024-04-05 23:42:38'),
(5, 'USA', '2024-04-05 23:42:38'),
(6, 'Canada', '2024-04-05 23:42:38'),
(7, 'Russia', '2024-04-05 23:42:38'),
(8, 'Argentina', '2024-04-05 23:42:38'),
(9, 'Chile', '2024-04-05 23:42:38'),
(10, 'Brazil', '2024-04-05 23:42:38');

-- --------------------------------------------------------

--
-- Структура таблицы `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int NOT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `climber_id` int NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `equipment_name`, `climber_id`, `record_ts`) VALUES
(1, 'Harness', 1, '2024-04-05 23:42:38'),
(2, 'Rope', 2, '2024-04-05 23:42:38'),
(3, 'Crampons', 3, '2024-04-05 23:42:38'),
(4, 'Ice Axe', 4, '2024-04-05 23:42:38'),
(5, 'Helmet', 5, '2024-04-05 23:42:38'),
(6, 'Carabiners', 6, '2024-04-05 23:42:38'),
(7, 'Tent', 7, '2024-04-05 23:42:38'),
(8, 'Sleeping Bag', 8, '2024-04-05 23:42:38'),
(9, 'Stove', 9, '2024-04-05 23:42:38'),
(10, 'GPS', 10, '2024-04-05 23:42:38');

-- --------------------------------------------------------

--
-- Структура таблицы `incidents`
--

CREATE TABLE `incidents` (
  `incident_id` int NOT NULL,
  `climb_id` int NOT NULL,
  `description` text NOT NULL,
  `date` date DEFAULT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Дамп данных таблицы `incidents`
--

INSERT INTO `incidents` (`incident_id`, `climb_id`, `description`, `date`, `record_ts`) VALUES
(1, 1, 'None', '2000-01-01', '2024-04-05 23:56:17'),
(2, 2, 'Minor fall, no injuries', '2000-01-01', '2024-04-05 23:56:17'),
(3, 3, 'Lost equipment, no injuries', '2000-01-01', '2024-04-05 23:56:17'),
(4, 4, 'Sprained ankle, evacuated', '2024-06-10', '2024-04-05 23:56:17'),
(5, 5, 'Frostbite on fingers, treated on site', '2000-01-01', '2024-04-05 23:56:17'),
(6, 6, 'Avalanche danger, delayed descent', '2000-01-01', '2024-04-05 23:56:17'),
(7, 7, 'Rescue operation for injured climber', '2000-01-01', '2024-04-05 23:56:17'),
(8, 8, 'Equipment failure, retreat to base camp', '2000-01-01', '2024-04-05 23:56:17'),
(9, 9, 'Slippery conditions, cautious descent', '2000-01-01', '2024-04-05 23:56:17'),
(10, 10, 'Equipment malfunction, no injuries', '2000-01-01', '2024-04-05 23:56:17');

-- --------------------------------------------------------

--
-- Структура таблицы `incidenttypes`
--

CREATE TABLE `incidenttypes` (
  `type_id` int NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `incidenttypes`
--

INSERT INTO `incidenttypes` (`type_id`, `type_name`, `record_ts`) VALUES
(1, 'Fall', '2024-04-05 23:42:38'),
(2, 'Equipment Failure', '2024-04-05 23:42:38'),
(3, 'Weather Conditions', '2024-04-05 23:42:38'),
(4, 'Illness', '2024-04-05 23:42:38'),
(5, 'Avalanche', '2024-04-05 23:42:38'),
(6, 'Animal Encounter', '2024-04-05 23:42:38'),
(7, 'Navigation Error', '2024-04-05 23:42:38'),
(8, 'Fatigue', '2024-04-05 23:42:38'),
(9, 'Altitude Sickness', '2024-04-05 23:42:38'),
(10, 'Other', '2024-04-05 23:42:38');

-- --------------------------------------------------------

--
-- Структура таблицы `mountains`
--

CREATE TABLE `mountains` (
  `mountain_id` int NOT NULL,
  `mountain_name` varchar(255) NOT NULL,
  `height` int NOT NULL,
  `country` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `mountains`
--

INSERT INTO `mountains` (`mountain_id`, `mountain_name`, `height`, `country`, `region`, `record_ts`) VALUES
(1, 'Mount Everest', 8848, 'Nepal', 'Himalayas', '2024-04-05 23:42:38'),
(2, 'Mount Kilimanjaro', 5895, 'Tanzania', 'East Africa', '2024-04-05 23:42:38'),
(3, 'K2', 8611, 'Pakistan', 'Karakoram', '2024-04-05 23:42:38'),
(4, 'Kangchenjunga', 8586, 'Nepal', 'Himalayas', '2024-04-05 23:42:38'),
(5, 'Lhotse', 8516, 'Nepal', 'Himalayas', '2024-04-05 23:42:38'),
(6, 'Makalu', 8485, 'Nepal', 'Himalayas', '2024-04-05 23:42:38'),
(7, 'Cho Oyu', 8188, 'Nepal', 'Himalayas', '2024-04-05 23:42:38'),
(8, 'Dhaulagiri', 8167, 'Nepal', 'Himalayas', '2024-04-05 23:42:38'),
(9, 'Manaslu', 8163, 'Nepal', 'Himalayas', '2024-04-05 23:42:38'),
(10, 'Nanga Parbat', 8126, 'Pakistan', 'Himalayas', '2024-04-05 23:42:38');

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `region_id` int NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `country_id` int NOT NULL,
  `record_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`region_id`, `region_name`, `country_id`, `record_ts`) VALUES
(21, 'Himalayas', 1, '2024-04-05 23:42:38'),
(22, 'East Africa', 2, '2024-04-05 23:42:38'),
(23, 'Karakoram', 3, '2024-04-05 23:42:38'),
(24, 'Andes', 4, '2024-04-05 23:42:38'),
(25, 'Alaska', 5, '2024-04-05 23:42:38'),
(26, 'Caucasus', 6, '2024-04-05 23:42:38'),
(27, 'Patagonia', 7, '2024-04-05 23:42:38'),
(28, 'Rockies', 8, '2024-04-05 23:42:38'),
(29, 'Siberia', 9, '2024-04-05 23:42:38'),
(30, 'Antarctica', 10, '2024-04-05 23:42:38');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `climberclimbs`
--
ALTER TABLE `climberclimbs`
  ADD PRIMARY KEY (`climber_id`,`climb_id`),
  ADD KEY `climb_id` (`climb_id`);

--
-- Индексы таблицы `climberincidenttypes`
--
ALTER TABLE `climberincidenttypes`
  ADD PRIMARY KEY (`incident_id`,`type_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Индексы таблицы `climbers`
--
ALTER TABLE `climbers`
  ADD PRIMARY KEY (`climber_id`),
  ADD UNIQUE KEY `unique_climber` (`first_name`,`last_name`);

--
-- Индексы таблицы `climbs`
--
ALTER TABLE `climbs`
  ADD PRIMARY KEY (`climb_id`),
  ADD UNIQUE KEY `unique_climb` (`climber_id`,`mountain_id`,`start_date`),
  ADD KEY `mountain_id` (`mountain_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`),
  ADD KEY `climber_id` (`climber_id`);

--
-- Индексы таблицы `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `climb_id` (`climb_id`);

--
-- Индексы таблицы `incidenttypes`
--
ALTER TABLE `incidenttypes`
  ADD PRIMARY KEY (`type_id`);

--
-- Индексы таблицы `mountains`
--
ALTER TABLE `mountains`
  ADD PRIMARY KEY (`mountain_id`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `climbers`
--
ALTER TABLE `climbers`
  MODIFY `climber_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `climbs`
--
ALTER TABLE `climbs`
  MODIFY `climb_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `incidents`
--
ALTER TABLE `incidents`
  MODIFY `incident_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `incidenttypes`
--
ALTER TABLE `incidenttypes`
  MODIFY `type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `mountains`
--
ALTER TABLE `mountains`
  MODIFY `mountain_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `region_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `climberclimbs`
--
ALTER TABLE `climberclimbs`
  ADD CONSTRAINT `climberclimbs_ibfk_1` FOREIGN KEY (`climber_id`) REFERENCES `climbers` (`climber_id`),
  ADD CONSTRAINT `climberclimbs_ibfk_2` FOREIGN KEY (`climb_id`) REFERENCES `climbs` (`climb_id`);

--
-- Ограничения внешнего ключа таблицы `climberincidenttypes`
--
ALTER TABLE `climberincidenttypes`
  ADD CONSTRAINT `climberincidenttypes_ibfk_1` FOREIGN KEY (`incident_id`) REFERENCES `incidents` (`incident_id`),
  ADD CONSTRAINT `climberincidenttypes_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `incidenttypes` (`type_id`);

--
-- Ограничения внешнего ключа таблицы `climbs`
--
ALTER TABLE `climbs`
  ADD CONSTRAINT `climbs_ibfk_1` FOREIGN KEY (`climber_id`) REFERENCES `climbers` (`climber_id`),
  ADD CONSTRAINT `climbs_ibfk_2` FOREIGN KEY (`mountain_id`) REFERENCES `mountains` (`mountain_id`);

--
-- Ограничения внешнего ключа таблицы `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`climber_id`) REFERENCES `climbers` (`climber_id`);

--
-- Ограничения внешнего ключа таблицы `incidents`
--
ALTER TABLE `incidents`
  ADD CONSTRAINT `incidents_ibfk_1` FOREIGN KEY (`climb_id`) REFERENCES `climbs` (`climb_id`);

--
-- Ограничения внешнего ключа таблицы `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
