CREATE TABLE `blog`.`posts_labels` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `post_id` INT NOT NULL,
  `label_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `posts_labels_post`
    FOREIGN KEY (`id`)
    REFERENCES `blog`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `posts_labels_labels`
    FOREIGN KEY (`id`)
    REFERENCES `blog`.`labels` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);