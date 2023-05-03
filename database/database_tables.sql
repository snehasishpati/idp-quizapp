use quiz_app;
CREATE TABLE `users` (
  `user_id` integer PRIMARY KEY AUTO_INCREMENT,
  `email_id` varchar(255) UNIQUE NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
);

CREATE TABLE `quiz` (
  `quiz_id` integer PRIMARY KEY AUTO_INCREMENT,
  `quiz_name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `is_open` boolean NOT NULL,
  `total_questions` integer NOT NULL
);

CREATE TABLE `questions` (
  `question_id` integer PRIMARY KEY AUTO_INCREMENT,
  `quiz_id` integer NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255),
  `option2` varchar(255),
  `option3` varchar(255),
  `option4` varchar(255),
  `correct_answer` varchar(255) NOT NULL
);

CREATE TABLE `quiz_attempts` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `quiz_id` integer NOT NULL,
  `user_id` integer NOT NULL,
  `total_correct` integer
);

ALTER TABLE `questions` ADD FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`);

ALTER TABLE `quiz_attempts` ADD FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`);

ALTER TABLE `quiz_attempts` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
