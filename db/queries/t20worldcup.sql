/*create database t20_world_cup;*/
/*use t20_world_cup*/
/*create table teams(id int AUTO_INCREMENT,
                   name varchar(30) not null unique,
                   country varchar(30) not null,
                   founded date,
                   primary key(id));*/
/*insert into teams (name, country, founded) values
                                                    ('Team A', 'USA', '1901-06-24'),
                                                    ('Team B', 'UK', '1895-07-25'),
                                                    ('Team C', 'Spain', '1920-08-26'),
                                                    ('Team D', 'Germany', '1887-09-27'),
                                                    ('Team E', 'Italy', '1905-10-28'),
                                                    ('Team F', 'France', '1899-11-29'),
                                                    ('Team G', 'Brazil', '1910-12-30'),
                                                    ('Team H', 'Argentina', '1913-01-31'),
                                                    ('Team I', 'Mexico', '1922-02-28'),
                                                    ('Team J', 'Netherlands', '1900-03-01');*/
/*Select name from teams;*/
/*select * from teams where name="Team E";*/
/*select * from teams where founded < '1910-12-30';*/
/*insert into teams (name,country,founded) values ('Team k', 'srilanka','1950-03-14');*/
/*update teams set country='Bangladesh' where name='Team G';*/
delete from teams where name="Bangladesh";                                             