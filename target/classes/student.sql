create database if not exists studreg;
use studreg;

create table if not exists student (
ID int NOT NULL PRIMARY KEY auto_increment,
firstName varchar(50),
lastName varchar(50),
sex varchar(1),
dob date,
email varchar(250) not null,
section varchar(100),
country varchar(100),
firstAttempt boolean,
subjects varchar(250),
department varchar(10),
UNIQUE(email)
);
