CREATE TABLE `post_report` (
  `post_id` bigint NOT NULL,
  `id_of_post` bigint NOT NULL,
  `reporter` varchar(255) DEFAULT NULL,
  KEY `FKeyehd7v09u9oxijrfvw1ufof` (`post_id`),
  CONSTRAINT `FKeyehd7v09u9oxijrfvw1ufof` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `files` (
  `id` varchar(255) NOT NULL,
  `data` longblob,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `fileurl` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6g4ifscitfdsrpe3l9gf6bcou` (`user_id`),
  CONSTRAINT `FKkw4jwo1uukj6uwrdxsv6u3qjt` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `followers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `following` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aboutme` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c1dkiawnlj6uoe6fnlwd6j83j` (`user_id`),
  CONSTRAINT `FKawh070wpue34wqvytjqr4hj5e` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `post` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_done` bit(1) NOT NULL,
  `target_date` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `post_comment` (
  `post_id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  KEY `FKna4y825fdc5hw8aow65ijexm0` (`post_id`),
  CONSTRAINT `FKna4y825fdc5hw8aow65ijexm0` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `post_like` (
  `post_id` bigint NOT NULL,
  `id` bigint DEFAULT NULL,
  `id_of_post` bigint NOT NULL,
  `liker` varchar(255) DEFAULT NULL,
  KEY `FKj7iy0k7n3d0vkh8o7ibjna884` (`post_id`),
  CONSTRAINT `FKj7iy0k7n3d0vkh8o7ibjna884` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



