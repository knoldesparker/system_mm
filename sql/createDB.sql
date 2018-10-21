drop database if exists systemMM;
create database systemMM;
use systemMM;

CREATE TABLE customers(
	customer_id INT auto_increment primary key,
    customer_name varchar(20) NOT NULL,
    customer_lastname VARCHAR(50) NOT NULL,
    customer_adress varchar(50) NOT NULL,
    customer_city varchar(50) NOT NULL,
    customer_zipcode varchar(50) NOT NULL,
    customer_orders int default 0
);

-- Dummy Data to fill up the table
insert into customers (customer_name, customer_lastname, customer_adress, customer_city, customer_zipcode)
	value 	('Casper','Sillemann','Sønderstræde 64','København V','1709'),
			('Freja','Orstrand','Lumbyholmvej 26','Humble','5932'),
            ('Favou','Hebert','Sønderstræde 64','København V','1709'),
            ('Frankie','Rich','Kongshøj Allé 96','Kolding','6000'),
            ('Lorena','Reeves','Søndergade 69','Bredsten','7182'),
            ('Jaydan','Wiley','Mølleløkken 76','Odense C','5090'),
            ('Devin','Bowen','Hans Schacksvej 68','Skive','7800'),
            ('Conah','Beasley','Mikkelenborgvej 48','København K','1370'),
            ('Arnold','Holden','Pilekrogen 18','København K','1453'),
            ('Seth','Walmsley','Gartnervænget 72','Vils','7980');