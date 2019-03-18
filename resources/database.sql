CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

 CREATE TABLE `dlcms_db`.`dlc_accounts`
             (
                          `account_number` VARCHAR(9) NOT NULL,
                          `account_name`   VARCHAR(255) NOT NULL,
                          `account_type`   VARCHAR(255) NOT NULL,
                          `valid_id`       VARCHAR(10) NOT NULL,
                          `telephone`      VARCHAR(10) NOT NULL,
                          `telephone_alt`  VARCHAR(10) NULL,
                          `fax`            VARCHAR(10) NULL,
                          `email_id`       VARCHAR(255) NOT NULL,
                          `add_number`     VARCHAR(255) NOT NULL,
                          `add_street`     VARCHAR(255) NOT NULL,
                          `add_city`       VARCHAR(255) NOT NULL,
                          `add_district`   VARCHAR(255) NOT NULL,
                          `route_code`     VARCHAR(255) NOT NULL,
                          `sub_date`       DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          `mod_date` TIMESTAMP ON
             UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                    PRIMARY KEY(`account_number` (9))
             )
             ENGINE = InnoDB;


