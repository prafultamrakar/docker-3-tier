CREATE DATABASE IF NOT EXISTS `tools` DEFAULT CHARACTER SET utf8;
USE `tools`;

create table tools.coupon_invoice
(
	id int(11) unsigned auto_increment primary key,
	type enum('points', 'coupon') not null,
	invoice_nr varchar(20) not null,
	order_id int(11) unsigned not null,
	datetime datetime not null
);
