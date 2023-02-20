CREATE TABLE `users` (
  `uid` bigint NOT NULL,
  `username` varchar(45) NOT NULL,
  `opCount` int DEFAULT '0',
  `balance` double DEFAULT '0',
  `isAdmin` tinyint DEFAULT '0',
  `isTeamLead` tinyint DEFAULT '0',
  `isQuartermaster` tinyint DEFAULT '0',
  `isActive` tinyint DEFAULT '0',
  `isLocked` tinyint DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `itemtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `item` (
  `itemid` int NOT NULL AUTO_INCREMENT,
  `typeid` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `classname` varchar(45) NOT NULL,
  `price` float DEFAULT '0',
  `section` int DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `classname_UNIQUE` (`classname`),
  KEY `itemtype_idx` (`typeid`),
  CONSTRAINT `itemtype` FOREIGN KEY (`typeid`) REFERENCES `itemtype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `lockeritem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` bigint NOT NULL,
  `itemid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_idx` (`uid`),
  KEY `itemid_idx` (`itemid`),
  CONSTRAINT `itemid` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
