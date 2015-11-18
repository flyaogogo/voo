create database voosky ;

use voosky ;


drop table if exists user;
drop table if exists vs_admin;
drop table if exists vs_admin_log;
drop table if exists vs_nav;
drop table if exists vs_category;
drop table if exists vs_article;
drop table if exists vs_product;
drop table if exists vs_config;
drop table if exists vs_singlepage;
drop table if exists vs_show;
drop table if exists vs_backup;


create table user(
	id int(11) NOT NULL ,
	username varchar(30) NULL,
	password varchar(50) NULL,
	PRIMARY KEY (id)
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;


create table vs_admin(
	user_id	varchar(10) not null,
	user_name	varchar(50) not null,
	pwd	varchar(30) not null,
	user_email	varchar(50) null,
	add_time	varchar(25) not null,
	last_login_time	varchar(25) ,
	removed_time	varchar(25) ,
	user_state	int not null,
	last_login_ip varchar(15) ,
	PRIMARY KEY (user_id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;


create table vs_admin_log(
	log_id int not null,
	oper_model	varchar(50) not null,
	oper_user	varchar(50) not null,
	oper_note	varchar(254) not null,
	oper_time	varchar(25) not null,
	ip	varchar(15) not null,
	PRIMARY KEY (log_id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;


create table vs_nav(
	nav_id	int not null,
	module	varchar(50) not null,
	nav_name	varchar(50) not null,
	guide	varchar(254) ,
	module_url	varchar(254) not null,
	parent_id	int not null,
	vtype	varchar(15) not null,
	vsort	int	 not null,
	PRIMARY KEY (nav_id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;

create table vs_category(
	cat_id	varchar(10) not null,
	unique_name	varchar(50) not null,
	cat_name	varchar(50) not null,
	keywords	varchar(254) ,
	description	varchar(25) ,
	cate_status	varchar(10) not null,
	nav_id	int not null,
	PRIMARY KEY (cat_id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;



create table vs_article(
	id	int not null,
	cat_id	varchar(10) not null,
	title	varchar(254) not null,
	is_recommend	varchar(10) not null,
	content		Varchar(3000) ,
	thumb_url	Varchar(15) ,
	keywords	varchar(254) ,
	description	varchar(254) ,
	clicknum	int not null,
	add_time	varchar(25) not null,
	vsort		int,
	PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;


create table vs_product(
	id	int not null,
	cat_id	varchar(10) not null,
	title	varchar(254) not null,
	is_recommend	varchar(10) not null,
	price	decimal(10,2) not null,
	content		Varchar(3000) ,
	thumb_url	Varchar(15) ,
	keywords	varchar(254) ,
	description	varchar(254) ,
	clicknum	int not null,
	add_time	varchar(25) not null,
	vsort		int,
	PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;


create table vs_config(
	id int not null,
	name varchar(50) not null,
	value varchar(250) not null,
	vsort int not null,
	PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;


create table vs_singlepage(
	page_id		int not null,
	unique_name	varchar(50) not null,
	page_name varchar(50) not null,
	keywords varchar(254),
	description	varchar(254),
	nav_id int not null,
	PRIMARY KEY (page_id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;


create table vs_show(
	id int not null,
	show_name varchar(50) not null,
	show_link varchar(254) not null,
	show_img varchar(254) not null,
	vtype varchar(25) not null,
	vsort int,
	PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;


create table vs_backup(
	id int not null,
	file_name	varchar(50) not null,
	file_size	long not null,
	slave_time	varchar(25) not null,
	PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8	;
