CREATE TABLE `blog`.`posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL,
  `publication_date` TIMESTAMP NULL,
  `content` TEXT NOT NULL,
  `status` CHAR(8) NULL DEFAULT 'activo',
  `user_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `blog`.`posts` 
ADD INDEX `posts_users_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `blog`.`posts` 
ADD CONSTRAINT `posts_users`
  FOREIGN KEY (`user_id`)
  REFERENCES `blog`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;

ALTER TABLE `blog`.`posts` 
ADD INDEX `posts_categories_idx` (`category_id` ASC) VISIBLE;
;
ALTER TABLE `blog`.`posts` 
ADD CONSTRAINT `posts_categories`
  FOREIGN KEY (`category_id`)
  REFERENCES `blog`.`categories` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;