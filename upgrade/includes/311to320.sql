UPDATE `settings` SET `cmumversion`='3.2.0', `dbversion`='3.2.0' WHERE `id`=1;
ALTER TABLE `groups` ADD `enabled` tinyint(1) NULL DEFAULT '1' AFTER `comment`;
ALTER TABLE `settings` DROP `dbversion`;
ALTER TABLE `settings` ADD `autoupdcheck` TINYINT(1) NULL AFTER `soonexpusrorder`;
UPDATE `settings` SET `autoupdcheck`='0' WHERE `id`=1;
ALTER TABLE `log_activity` ADD `data` VARCHAR(50) NULL AFTER `userid`;
TRUNCATE TABLE `log_activity`;
ALTER TABLE `settings` ADD `usrorderby` VARCHAR(12) NULL AFTER `autoupdcheck`, ADD `usrorder` VARCHAR(4) NULL AFTER `usrorderby`;
UPDATE `settings` SET `usrorderby`='user',`usrorder`='asc' WHERE `id`=1;
ALTER TABLE `log_genxmlreq` CHANGE `ip` `ip` VARCHAR(45);
ALTER TABLE `log_login` CHANGE `ip` `ip` VARCHAR(45);