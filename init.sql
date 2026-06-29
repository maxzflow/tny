CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `game_fillword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `puzzle` text,
  `answer` text,
  `timer` int(11) DEFAULT '60',
  `timer_format` varchar(50) DEFAULT 'seconds',
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `game_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `color1` varchar(50) DEFAULT NULL,
  `color2` varchar(50) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `grid_gap` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `game_guessword_v2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `puzzle` text,
  `answer` text,
  `timer` int(11) DEFAULT '60',
  `timer_format` varchar(50) DEFAULT 'digital',
  `is_timer_enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `game_guessword_v3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `puzzle` text,
  `answer` text,
  `timer` int(11) DEFAULT '60',
  `timer_format` varchar(50) DEFAULT 'digital',
  `is_timer_enabled` tinyint(1) DEFAULT '1',
  `font_size` decimal(4,1) DEFAULT '7.0',
  `line_height` decimal(4,1) DEFAULT '1.5',
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `game_timer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` int(11) DEFAULT '300',
  `end_message` text,
  `is_pulse` tinyint(1) DEFAULT '0',
  `time_format` varchar(50) DEFAULT 'mm:ss',
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `ad_presets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `ad_fonts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file_path` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `zifo_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `words` text,
  PRIMARY KEY (`id`)
);

-- Insert initial rows since some APIs use UPDATE WHERE id=1
INSERT IGNORE INTO `game_guessword_v2` (`id`) VALUES (1);
INSERT IGNORE INTO `game_guessword_v3` (`id`) VALUES (1);
INSERT IGNORE INTO `game_timer` (`id`) VALUES (1);
INSERT IGNORE INTO `game_theme` (`game_id`) VALUES (1);
INSERT IGNORE INTO `zifo_game` (`id`) VALUES (1);
-- For fillword we might need multiple rounds, let's insert 1 to 5
INSERT IGNORE INTO `game_fillword` (`id`) VALUES (1),(2),(3),(4),(5);
