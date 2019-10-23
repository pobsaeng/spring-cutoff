CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(50) NOT NULL,
  password varchar(255) DEFAULT NULL,
  firstname varchar(255) DEFAULT NULL,
  lastname varchar(50) NOT NULL,
  created datetime DEFAULT NULL,
  PRIMARY KEY (id)
);

INTO user (id, username, password, firstname, lastname, created) VALUES(1,'pob','1234','Pob','Saeng','2018-06-03 19:42:56');
INTO user (id, username, password, firstname, lastname, created) VALUES(2,'saeng','1234','Kraipob','Saeng','2018-06-09 23:11:34');
