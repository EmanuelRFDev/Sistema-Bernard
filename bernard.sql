-- Tabla `book`

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `edit` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ejemplares` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Tabla `lendings`

CREATE TABLE `lendings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_out` varchar(255) NOT NULL,
  `date_return` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Estructura de tabla para la tabla `users`

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name_p` varchar(30) NOT NULL,
  `last_name_m` varchar(30) NOT NULL,
  `domicilio` varchar(250) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `sanctions` int(11) DEFAULT '0',
  `sanc_money` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Indices de la tabla `books`

  ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);


-- Indices de la tabla `lendings`

  ALTER TABLE `lendings`
  ADD PRIMARY KEY (`id`);


-- Indices de la tabla `users`

  ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT  tabla `books`

  ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


-- AUTO_INCREMENT tabla `lendings`

  ALTER TABLE `lendings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


-- AUTO_INCREMENT tabla `users`

  ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  COMMIT;


