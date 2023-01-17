-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 17 2023 г., 19:11
-- Версия сервера: 8.0.29
-- Версия PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- База данных: `laravelpvp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cards`
--

CREATE TABLE `cards` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cards`
--

INSERT INTO `cards` (`id`, `name`, `list_id`, `created_at`, `updated_at`) VALUES
(2, 'Cortez Will', 3, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(3, 'Yasmeen Weimann II', 4, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(4, 'Reginald Bernhard', 3, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(5, 'Prof. Antonio Adams', 10, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(6, 'Prof. Amy Mueller IV', 4, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(7, 'Juana Frami', 5, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(8, 'Prof. Christiana Mohr', 10, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(9, 'Dr. Claudine Carter Jr.', 7, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(10, 'Alford Kihn V', 3, '2023-01-17 13:08:42', '2023-01-17 13:08:42'),
(11, 'Emily Kub MD', 10, '2023-01-17 13:08:42', '2023-01-17 13:08:42');

-- --------------------------------------------------------

--
-- Структура таблицы `desks`
--

CREATE TABLE `desks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `desks`
--

INSERT INTO `desks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(31, 'Bernita Mayert', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(32, 'Prof. Clyde Walter', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(33, 'Prof. Eriberto Dach', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(34, 'Adelle Reinger III', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(35, 'Makenzie Bradtke', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(36, 'Deshaun Reilly', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(37, 'Darby Hirthe', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(38, 'Haskell Upton', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(39, 'Dr. Hugh Muller IV', '2023-01-17 12:58:31', '2023-01-17 12:58:31'),
(40, 'Norwood Runolfsdottir', '2023-01-17 12:58:31', '2023-01-17 12:58:31');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lists`
--

CREATE TABLE `lists` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desk_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lists`
--

INSERT INTO `lists` (`id`, `name`, `desk_id`, `created_at`, `updated_at`) VALUES
(1, 'Arnoldo Huels', 39, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(2, 'Mr. Domenico Beatty', 39, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(3, 'Miss Nicole Robel', 35, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(4, 'Jean Heidenreich', 34, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(5, 'Buddy Goodwin', 32, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(6, 'Kali Hickle', 38, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(7, 'Dr. Royce Rutherford', 36, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(8, 'Kaleb Kihn', 35, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(9, 'Adeline Gerlach', 35, '2023-01-17 13:04:22', '2023-01-17 13:04:22'),
(10, 'Greyson Toy', 33, '2023-01-17 13:04:22', '2023-01-17 13:04:22');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_17_074931_create_desks_table', 1),
(6, '2023_01_17_075018_create_lists_table', 1),
(7, '2023_01_17_075102_create_cards_table', 1),
(8, '2023_01_17_075119_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `card_id`, `created_at`, `updated_at`) VALUES
(1, 'Roscoe Lebsack', 10, '2023-01-17 13:09:07', '2023-01-17 13:09:07'),
(2, 'Haylie Johnston', 3, '2023-01-17 13:09:07', '2023-01-17 13:09:07'),
(3, 'Lurline Doyle', 2, '2023-01-17 13:09:07', '2023-01-17 13:09:07'),
(5, 'Dr. Brendan Oberbrunner', 5, '2023-01-17 13:09:53', '2023-01-17 13:09:53'),
(6, 'Bailey Blick', 7, '2023-01-17 13:09:53', '2023-01-17 13:09:53'),
(7, 'Miss Alysson Conn', 4, '2023-01-17 13:09:53', '2023-01-17 13:09:53'),
(8, 'Katelin McClure', 2, '2023-01-17 13:09:53', '2023-01-17 13:09:53'),
(9, 'Dr. Roderick Yundt', 4, '2023-01-17 13:09:53', '2023-01-17 13:09:53'),
(10, 'Elmira Rosenbaum', 3, '2023-01-17 13:09:53', '2023-01-17 13:09:53'),
(11, 'Mr. Tavares Kub DDS', 3, '2023-01-17 13:09:53', '2023-01-17 13:09:53');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_list_id_foreign` (`list_id`);

--
-- Индексы таблицы `desks`
--
ALTER TABLE `desks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lists_desk_id_foreign` (`desk_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_card_id_foreign` (`card_id`);

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
-- AUTO_INCREMENT для таблицы `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `desks`
--
ALTER TABLE `desks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lists`
--
ALTER TABLE `lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_list_id_foreign` FOREIGN KEY (`list_id`) REFERENCES `lists` (`id`);

--
-- Ограничения внешнего ключа таблицы `lists`
--
ALTER TABLE `lists`
  ADD CONSTRAINT `lists_desk_id_foreign` FOREIGN KEY (`desk_id`) REFERENCES `desks` (`id`);

--
-- Ограничения внешнего ключа таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`);
COMMIT;
