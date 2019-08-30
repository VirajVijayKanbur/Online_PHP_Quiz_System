SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `admin` (
`email` varchar(50) NOT NULL,
`password` varchar(500) NOT NULL,
`role` varchar(10) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `admin` (`email`, `password`, `role`) VALUES ('viraj.k@hotmail.com', 'halliranga', 'admin');



CREATE TABLE `answer` (
`qid` text NOT NULL,
`ansid` text NOT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `answer` (`qid`, `ansid`) VALUES ('55892169bf6a7', '55892169d2efc'), ('5589216a3646e', '5589216a48722'), ('5589751a63091', '5589751a81bf4'), ('5589751ad32b8', '5589751adbdbd'), ('5589751b304ef', '5589751b3b04d'), ('5589751b749c9', '5589751b9a98c');


CREATE TABLE `feedback` (
`id` text NOT NULL,
`name` varchar(50) NOT NULL,
`email` varchar(50) NOT NULL,
`subject` varchar(500) NOT NULL,
`feedback` varchar(500) NOT NULL,
`date` date NOT NULL,
`time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `history` (
`email` varchar(50) NOT NULL,
`eid` text NOT NULL,
`score` int(11) NOT NULL,
`level` int(11) NOT NULL,
`sahi` int(11) NOT NULL,
`wrong` int(11) NOT NULL,
`date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `options` (
`qid` varchar(50) NOT NULL,
`option` varchar(5000) NOT NULL,
`optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES ('55892169bf6a7', '53.86', '55892169d2efc'),
('55892169bf6a7', '52.31', '55892169d2f05'),
('55892169bf6a7', '50', '55892169d2f09'),
('55892169bf6a7', '45.67', '55892169d2f0c'),
('5589216a3646e',  '1982', '5589216a48713'),
('5589216a3646e',  '1985', '5589216a4871a'),
('5589216a3646e',  '2011', '5589216a4871f'),
('5589216a3646e', '2007', '5589216a48722'),

('5589751a63091', 'Argentina', '5589751a81bd6'), ('5589751a63091', 'Brazil', '5589751a81be8'), ('5589751a63091', 'Uruguay', '5589751a81bf4'), ('5589751a63091', 'Italy', '5589751a81bfd'),

('5589751ad32b8', 'Manchester United', '5589751adbdbd'), ('5589751ad32b8', 'Sporting CP', '5589751adbdce'), ('5589751ad32b8', 'Real Madrid', '5589751adbdd8'), ('5589751ad32b8', 'Portugal', '5589751adbde2'),

('5589751b304ef', 'AC Milan', '5589751b3b04d'), ('5589751b304ef', 'Inter Milan', '5589751b3b05e'), ('5589751b304ef', 'Juventus', '5589751b3b069'), ('5589751b304ef', 'Real Madrid', '5589751b3b073'),

('5589751b749c9', 'Pele', '5589751b9a98c'),
('5589751b749c9', 'Diego Maradona', '5589751b9a9a5'), ('5589751b749c9', 'Zico', '5589751b9a9b7'), ('5589751b749c9', 'Lionel Messi', '5589751b9a9c9');


CREATE TABLE `questions` (
`eid` text NOT NULL,
`qid` text NOT NULL,
`qns` text NOT NULL,
`choice` int(10) NOT NULL,
`sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is Sachin Tendulkars test battting average?', 4, 1), ('558920ff906b8', '5589216a3646e', 'When did India win the World T20?', 4, 2),
 
('5589741f9ed52', '5589751a63091', 'Which team won the first World Cup?', 4, 1), ('5589741f9ed52', '5589751ad32b8', 'Which team did Cristiano Ronaldo win his first Balon Dor with?', 4, 2),
('5589741f9ed52', '5589751b304ef', 'Which team did Paolo Maldini play football for?', 4, 3), ('5589741f9ed52', '5589751b749c9', 'Who was the first teenager to score in a World cup final?', 4, 4);


CREATE TABLE `quiz` (
`eid` text NOT NULL,
`title` varchar(100) NOT NULL,
`sahi` int(11) NOT NULL,
`wrong` int(11) NOT NULL,
`total` int(11) NOT NULL,
`time` bigint(20) NOT NULL,
`intro` text NOT NULL,
`tag` varchar(100) NOT NULL,
`date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`) VALUES
('558920ff906b8', 'CRICKET', 2, 1, 2, 5, '', 'linux', '2019-02-23 20:47:56',
'dudesandler1999@gmail.com'),
('5589741f9ed52', 'FOOTBALL', 3, 1, 4, 10, '', 'linux', '2019-02-23 23:47:56',
'viraj.k@hotmail.com');


CREATE TABLE `rank` (
`email` varchar(50) NOT NULL,
`score` int(11) NOT NULL,
`time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `user` (
`name` varchar(50) NOT NULL,
`gender` varchar(5) NOT NULL,
`college` varchar(100) NOT NULL,
`email` varchar(50) NOT NULL,
 
`mob` bigint(20) NOT NULL,
`password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `admin`
ADD PRIMARY KEY (`email`);


ALTER TABLE `user`
ADD PRIMARY KEY (`email`); COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
