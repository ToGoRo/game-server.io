DROP TABLE IF EXISTS `net2ftp_log_access`;
CREATE TABLE `net2ftp_log_access` (`id` int(10) unsigned NOT NULL auto_increment,`date` date NOT NULL default '0000-00-00',`time` time NOT NULL default '00:00:00',`remote_addr` text NOT NULL,`remote_port` text NOT NULL,`http_user_agent` text NOT NULL,`page` text NOT NULL,`datatransfer` int(10) unsigned default '0',`executiontime` mediumint(8) unsigned default '0',`ftpserver` text NOT NULL,`username` text NOT NULL,`state` text NOT NULL,`state2` text NOT NULL,`screen` text NOT NULL,`directory` text NOT NULL,`entry` text NOT NULL,`http_referer` text NOT NULL,KEY `index1` (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `net2ftp_log_error`;
CREATE TABLE `net2ftp_log_error` (`date` date NOT NULL default '0000-00-00',`time` time NOT NULL default '00:00:00',`ftpserver` text NOT NULL,`username` text NOT NULL,`message` text NOT NULL,`backtrace` text NOT NULL,`state` text NOT NULL,`state2` text NOT NULL,`directory` text NOT NULL,`remote_addr` text NOT NULL,`remote_port` text NOT NULL,`http_user_agent` text NOT NULL,KEY `index1` (`date`,`time`,`ftpserver`(100),`username`(50))) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `net2ftp_log_consumption_ftpserver`;
CREATE TABLE `net2ftp_log_consumption_ftpserver`(`date` date NOT NULL default '0000-00-00',`ftpserver` varchar(255) NOT NULL default '0',`datatransfer` int(10) unsigned default '0',`executiontime` mediumint(8) unsigned default '0',PRIMARY KEY  (`date`,`ftpserver`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `net2ftp_log_consumption_ipaddress`;
CREATE TABLE `net2ftp_log_consumption_ipaddress`(`date` date NOT NULL default '0000-00-00',`ipaddress` varchar(15) NOT NULL default '0',`datatransfer` int(10) unsigned default '0',`executiontime` mediumint(8) unsigned default '0',PRIMARY KEY  (`date`,`ipaddress`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `net2ftp_users`;
CREATE TABLE `net2ftp_users` (`ftpserver` varchar(255) NOT NULL default '0',`username` text NOT NULL,`homedirectory` text NOT NULL,KEY `index1` (`ftpserver`,`username`(50))) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `net2ftp_log_status`;
CREATE TABLE `net2ftp_log_status` (`month` varchar(6) NOT NULL, `status` int(3) NOT NULL, `changelog` text NOT NULL, PRIMARY KEY (`month`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;