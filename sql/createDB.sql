drop database if exists systemMM;
create database systemMM;
use systemMM;

CREATE TABLE customers(
	customer_id INT auto_increment,
    customer_email varchar(50) NOT NULL,
    customer_name varchar(20) NOT NULL,
    customer_lastname VARCHAR(50) NOT NULL,
    customer_adress varchar(50) NOT NULL,
    customer_city varchar(50) NOT NULL,
    customer_zipcode varchar(50) NOT NULL,
    customer_orders int default 0,
    PRIMARY KEY (customer_id, customer_email)
);
CREATE TABLE products(
	product_id int PRIMARY KEY auto_increment,
    product_manufacturer VARCHAR(20) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_quantity INT,
    product_price DOUBLE(7,2),
    product_category VARCHAR(25),
    product_description TEXT
);

CREATE TABLE orders(
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id int NOT NULL,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE product_orders(
	order_id int,
    product_id int,
    quantity INT DEFAULT 1,
    PRIMARY KEY(order_id, product_id),
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

CREATE VIEW product_list_admin AS
SELECT
	product_id,
	product_manufacturer,
    product_category,
    product_name,
    product_quantity,
    product_price
FROM products
ORDER BY product_category desc;


-- Dummy Data to fill up the table
insert into customers (customer_email, customer_name, customer_lastname, customer_adress, customer_city, customer_zipcode)
	value 	('1email@email.dk','Casper','Sillemann','Gammel Jernbanevej 28st tv','København','2500'),
			('2email@email.dk','Freja','Orstrand','Gammel Jernbanevej 28st tv','København','2500'),
            ('3email@email.dk','Favou','Hebert','Sønderstræde 64','København V','1709'),
            ('4email@email.dk','Frankie','Rich','Kongshøj Allé 96','Kolding','6000'),
            ('5email@email.dk','Lorena','Reeves','Søndergade 69','Bredsten','7182'),
            ('6email@email.dk','Jaydan','Wiley','Mølleløkken 76','Odense C','5090'),
            ('7email@email.dk','Devin','Bowen','Hans Schacksvej 68','Skive','7800'),
            ('8email@email.dk','Conah','Beasley','Mikkelenborgvej 48','København K','1370'),
            ('9email@email.dk','Arnold','Holden','Pilekrogen 18','København K','1453'),
            ('10email@email.dk','Seth','Walmsley','Gartnervænget 72','Vils','7980');

INSERT INTO products (product_manufacturer, product_name, product_quantity,  product_price, product_category, product_description )
VALUES
	('Intel',			'NUC7I3BNH - Core i3 & 2.5" / M.2',					8,	1948,	'NUC',		'Intel NUC (The Next Unit of Computing), 2.4 GHz Intel Core i3-7100U Dual Core CPU (7. generations Core arkitektur - Baby Canyon), Uden RAM (SODIMM RAM DDR4-2133 - 2 x DIMM slots), Uden harddisk (OBS kræver M.2 2242 (42mm) / M.2 2280 (80mm) SSD & 1 x SATA-600 HDD / SSD), Indbygget Intel HD Graphics 620 grafikkort, 100/1000 MBIT netværk, Intel Dual-Band Wireless-AC 802.11ac trådløst netværk & Bluetooth 4.2, HDMI 2.0 / Mini DisplayPort 1.2 (via USB-C stik) tilslutning, 8 kanals surround lydkort'),
    ('Intel',			'NUC6CAYH - Celeron J3455',							12,	907,	'NUC',		'Intel NUC (The Next Unit of Computing), 1.5 GHz (2.3 GHz Turbo) Intel Celeron J3455 CPU, Uden RAM (SODIMM RAM DDR3L-1600 - 2 x DIMM slots), Uden harddisk (OBS kan opgraderes med 1 x M.2 2230 SSD & 1 x SATA-600 HDD / SSD), Indbygget Intel HD Graphics 500 grafikkort, 100/1000 MBIT netværk, Intel Dual-Band Wireless-AC 802.11ac trådløst netværk & Bluetooth 4.2, D-Sub / HDMI 2.0 tilslutning'),
    ('Intel',			'NUC7I5BNH - Core i5 & 2.5" / M.2',					6,	2636,	'NUC',		'Intel NUC (The Next Unit of Computing), 2.4 GHz (3.4 GHz Turbo) Intel Core i5-7260U Dual Core CPU (7. generations Core arkitektur - Baby Canyon), Uden RAM (SODIMM RAM DDR4-2133 - 2 x DIMM slots), Uden harddisk (OBS kræver M.2 2242 (42mm) / M.2 2280 (80mm) SSD - understøtter NVMe & 1 x SATA-600 HDD / SSD), Indbygget Intel Iris Plus Graphics 640 grafikkort, 100/1000 MBIT netværk, Intel Dual-Band Wireless-AC 802.11ac trådløst netværk & Bluetooth 4.2, HDMI 2.0 / Mini DisplayPort 1.2 (via USB-C stik) / ThunderBolt 3 (via USB-C stik) tilslutning, 8 kanals surround lydkort'),
    ('Intel',			'NUC7I7BNH - Core i7 & 2.5" / M.2',					2,	3367,	'NUC',		'Intel NUC (The Next Unit of Computing), 3.5 GHz (4 GHz Turbo) Intel Core i7-7567U Dual Core CPU (7. generations Core arkitektur - Kaby Lake ), Uden RAM (SODIMM RAM DDR4-2133 - 2 x DIMM slots), Uden harddisk (OBS kræver M.2 2242 (42mm) / M.2 2280 (80mm) SSD - understøtter NVMe & 1 x SATA-600 HDD / SSD), Indbygget Intel Iris Plus Graphics 650 grafikkort, 100/1000 MBIT netværk, Intel Dual-Band Wireless-AC 802.11ac trådløst netværk & Bluetooth 4.2, HDMI 2.0 / Mini DisplayPort 1.2 (via USB-C stik) / ThunderBolt 3 (via USB-C stik) tilslutning, 8 kanals surround lydkort'),
    ('Intel',			'NUC7I5BNK - Core i5 & M.2',						0,	2620,	'NUC',		'Intel NUC (The Next Unit of Computing), 2.4 GHz (3.4 GHz Turbo) Intel Core i5-7260U Dual Core CPU (7. generations Core arkitektur - Baby Canyon), Uden RAM (SODIMM RAM DDR4-2133 - 2 x DIMM slots), Uden harddisk (OBS kræver M.2 2242 (42mm) / M.2 2280 (80mm) SSD - understøtter NVMe), Indbygget Intel Iris Plus Graphics 640 grafikkort, 100/1000 MBIT netværk, Intel Dual-Band Wireless-AC 802.11ac trådløst netværk & Bluetooth 4.2, HDMI 2.0 / Mini DisplayPort 1.2 (via USB-C stik) / ThunderBolt 3 (via USB-C stik) tilslutning, 8 kanals surround lydkort'),
    ('LG',				'34" Skærm 34UM88C-P',								3,	4990,	'Skaerm',	'LED-skærm, 34", 3440 x 1440 QHD, 60 hz opdatering, IPS panel, Widescreen 21:9 format, 300 cd/m2, 5000000:1 kontrast (dynamisk), 5 ms responstid, betragtningsvinkel: 178° (Horisontal) / 178° (Vertikal), DisplayPort / HDMI tilslutning, indbygget 7 watt højttalere, sort'),
    ('Dell',			'38" Skærm UltraSharp U3818DW',						0,	9216,	'Skaerm',	'LED-skærm, kurvet, 38" (37.5 til at se), 3840 x 1600, IPS, 300 cd/m², 1000:1, 5 ms, 2xHDMI, DisplayPort, højtalere, sort'),
    ('Lenovo',			'24" Skærm ThinkVision LT2423',						15,	1082,	'Skaerm',	'LCD-skærm, 24", 1920 x 1080, TN, 250 cd/m2, 1000:1, 5 ms, højtalere, business-sort'),
    ('Acer',			'21" Skærm K222HQL',								0,	696,	'Skaerm',	'LED-skærm, 21.5", 1920 x 1080 FullHD, TN, 200 cd/m2, 5 ms, HDMI, DVI, VGA, sort'),
    ('Dell',			'27" Skærm P2717H',									15, 1849,	'Skaerm',	'LED-skærm, 27", 1920 x 1080, IPS, 300 cd/m2, 1000:1, 6 ms, HDMI, VGA, DisplayPort, sort'),
    ('Dell',			'27" Skærm UltraSharp U2717D',						4,	3346,	'Skaerm',	'LED-skærm, 27", 2560 x 1440 QHD, IPS, 350 cd/m2, 1000:1, 6 ms, HDMI (MHL), DisplayPort, Mini DisplayPort, sort, HDMI, DisplayPort, Mini DisplayPort, Mobile High-Definition Link (MHL)'),
    ('Dell',			'24" Skærm UltraSharp U2414H',						15, 1749,	'Skaerm',	'LED-skærm, 24", 1920 x 1080 FullHD, IPS, 250 cd/m2, 1000:1, 2000000:1 (dynamisk), 8 ms, DisplayPort, Mini DisplayPort, 2 x MHL, sort'),
    ('ASUS',			'24" Skærm VS247HR',								10, 953,	'Skaerm',	'LED-skærm, 23.6", 1920 x 1080 FullHD, 75 hz opdatering, TN panel, Widescreen 16:9 format, 250 cd/m2 brightness, 50000000:1 kontrast (dynamisk), 2 ms responstid, betragtningsvinkel: 170° (Horisontal) / 160° (Vertikal), D-Sub / DVI-D / HDMI tilslutning, sort'),
    ('Das Keyboard',	'4 Professional MX Brown - Nordisk',				0, 	1290,	'Tastatur', 'Tastatur med Cherry MX Brown Mechanical knapper, programmerbar taster, indbygget USB 3.0 hub og knapper til kontrol af lyd, USB tilslutning med 2 meter langt USB kabel, fuld n-key rollover, nordisk layout'),
    ('Logitech',		'K750 Wireless Solar KB BK - Nordisk',				15, 569,	'Tastatur', 'Tastatur, tynd profil med lave taster, trådløs - 2.4 GHz med op til 10 meters rækkevidde, med indbygget solopladning som giver op til 3 måneders batterilevetid i total mørke, sort, nordisk layout. Batteriskift hører fortiden til når du bruger Logitech Wireless Keyboard K750, der fungerer vha. solenergi. Det oplades så snart der er lys, så du kan roligt vinke farvel til batterier'),
    ('Logitech',		'K280e Corded Keyboard - Nordisk',					15, 169,	'Tastatur', 'Tastatur, tynd profil med lave taster, USB tilslutning med 1.5m kabel, nordisk layout. Det kabelforbundne K280e-tastatur fra Logitech giver dig erhvervskvalitet og værdi for pengene samt et holdbart og behageligt design der kan holde til årevis af krævende kontorarbejde'),
    ('Logitech',		'K740 Illuminated Keyboard - Nordisk',				0,	549,	'Tastatur', 'Tastatur, tynd profil med lave taster, hvid baggrundsbelysning, USB tilslutning med 1.8m kabel, sort, nordisk layout. Behagelig skriveoplevelse både dag og nat med Logitech Illuminated Keyboard K740. Bagbelysningen sikrer at hver enkelt tast er skarp, lyser og er nem at se og læse'),
    ('Logitech',		'M590 Silent - Graphite - Optisk - 7 knapper',		0,	269,	'Mus',		'Mus, optisk sensor, 7 knapper, 1000 dpi, trådløs - 2.4 GHz med op til 10 meters rækkevidde & Bluetooth, op til 24 måneders batterilevetid, USB modtager, kan bruges til højrehåndede, grafit sort. Shhh.... M590 Multi-Device Silent giver dig mulighed for at få dine opgaver af vejen med lydløs effektivitet. Med Logitech FLOW har musen en næsten magisk evne til at navigere problemfrit mellem to computere, og du kan kopiere/indsætte på tværs af computere. 90 % støjreduktion på klik sikrer dig, at du ikke forstyrrer nogen omkring dig.'),
    ('Logitech',		'M570 Wireless Trackball - Trackman - 5 knapper',	17, 599,	'Mus',		'Trackball mus, laser sensor, 7 knapper, 540 dpi, trådløs - 2.4 GHz med op til 10 meters rækkevidde, op til 18 måneders batterilevetid, kan bruges til højrehåndede, sort. Med Logitech Wireless Trackball M570 får du komfort af en helt anden verden. Den bliver på sin plads og understøtter hånden, så arbejdet bliver langt mere behageligt'),
    ('Logitech',		'M560 Wireless - Laser - 7 knapper',				17, 236,	'Mus',		'Mus, optisk sensor, 7 knapper, 1000 dpi, trådløs - 2.4 GHz med op til 10 meters rækkevidde, op til 18 måneders batterilevetid, kan bruges til højrehåndede, sort. Logitech Wireless Mouse M560 er designet til at være behagelig i timevis så du kan klare enhver opgave. Uanset hvad du foretager dig, er du altid kun ét klik væk fra Windows 8-programskifteren, amuletlinjen, skrivebordet og startskærmen'),
    ('Logitech',		'B100 Optical - 3 knapper',							15, 56,		'Mus',		'Mus, optisk sensor, 3 knapper, 800 dpi, USB tilslutning med 1.8 meter kabel, kan bruges til højre- og venstrehåndet, sort'),
    ('Logitech',		'M500 Corded - Laser - 7 knapper',					17, 219,	'Mus',		'Mus, laser sensor, 7 knapper, USB tilslutning, kan bruges til højrehåndede, sort / sølv. Den lynhurtige scrollefunktion i Logitech Corded Mouse M500 øger effektiviteten. Med den lynhurtige scrollefunktion kan du flyve gennem lange dokumenter og websider med en enkelt omdrejning af det næsten friktionsfri scrollehjul'),
    ('Logitech',		'MX Master 2S Wireless - Laser - 7 knapper',		15, 699,	'Mus',		'Mus, laser sensor, 7 knapper, 200 - 4000 indstillelig dpi, trådløs - 2.4 GHz med op til 10 meters rækkevidde & Bluetooth, indbygget genopladeligt batteri med op til 70 dages batterilevetid, USB modtager, kan bruges til højrehåndede, grafit sort. Logitechs topmodel er designet til dig, der bruger musen meget til arbejde eller leg - så du effektivt kan få alt fra hånden. MX Master 2S med Logitech Flow er en uovervindelig kombination, som giver dig mulighed for at arbejde effektivt på tværs af to computere med en mus og kopiere/indsætte på tværs af computerne. I kombination med andre avancerede funktioner og det imponerende design giver musen exceptionel komfort, kontrol, præcision og brugertilpasning.'),
    ('Logitech',		'M705 Marathon - Laser - 8 knapper',				17, 289,	'Mus',		'Mus, laser sensor, 8 knapper, 1000 dpi, trådløs - 2.4 GHz med op til 10 meters rækkevidde, op til 36 måneders batterilevetid, kan bruges til højrehåndede, sort / grå. Med Logitech Wireless Mouse M705 kan du arbejde videre... og videre. Den bruger langt mindre strøm end tilsvarende trådløse mus fra andre producenter, så du kan måske nøjes med at skifte batterier hvert tredje år'),
    ('WD',				'Green SSD M.2 - 120GB',							15, 323,	'SSD',		'SSD (Solid state drive), 120 GB, intern, Datahastighed: 545 MBps (læs) / 430 MBps (skriv), IOPS: op til 37000 (læs) / op til 63000 (skriv), M.2 2280 (80mm), SATA-600   NB! Leveres retail, dog, uden data- og strømkabler og mounting frame, se listen "Tilbehør".'),
    ('Samsung',		'960 EVO SSD M.2 2280 - 1TB',							15, 2999,	'SSD',		'SSD (Solid state drive), 1 TB, intern, Datahastighed: 3200 MBps (læs) / 1900 MBps (skriv), 1 GB LPDDR3 cache, IOPS: 380000 (læs) / 360000 (skriv), M.2 2280 (80mm) NVMe 1.2 (Non-Volatile Memory Express), 256-bit AES kryptering, TCG Opal Encryption - Samsung Polaris Controller'),
    ('Samsung',		'860 EVO 2.5" SSD - 1TB',								15, 2099,	'SSD',		'SSD (Solid state drive), 1 TB, intern, Datahastighed: 550 MBps (læs) / 520 MBps (skriv), IOPS: 98000 (læs) / 90000 (skriv), 1 GB LPDDR4 cache, 2.5", SATA-600 - Samsung 3-core MJX Controller   NB! Leveres retail, dog, uden data- og strømkabler og mounting frame, se listen "Tilbehør".'),
    ('Crucial',		'MX500 SSD 2.5" - 500GB',								15, 920,	'SSD',		'SSD (Solid state drive), 500 GB, intern, Datahastighed: 560 MBps (læs) / 500 MBps (skriv), IOPS: 95000 (læs) / 90000 (skriv), 2.5", SATA-600 - Silicon Motion SM2258 Controller   NB! Leveres retail, uden data- og strømkabler, se listen "Tilbehør".'),
    ('Samsung',		'960 EVO SSD M.2 2280 - 500GB', 						15, 1599,	'SSD',		'SSD (Solid state drive), 500 GB, intern, Datahastighed: 3200 MBps (læs) / 1800 MBps (skriv), 512 MB LPDDR3 cache, IOPS: 330000 (læs) / 330000 (skriv), M.2 2280 (80mm) NVMe 1.2 (Non-Volatile Memory Express), 256-bit AES kryptering, TCG Opal Encryption - Samsung Polaris Controller'),
    ('Kingston',		'SSDNow A400 SSD - 120GB', 							0, 	271,	'SSD',		'SSD (Solid state drive), 120 GB, intern, Datahastighed: 500 MBps (læs) / 320 MBps (skriv), IOPS: (læs) / (skriv), 2.5", SATA-600 - Phison S11 Controller   NB! Leveres retail, dog uden 3,5'' monteringsbeslag, data- og strømkabler, se listen "Tilbehør"'),
    ('Samsung',		'960 EVO SSD M.2 2280 - 250GB',							16, 899,	'SSD',		'SSD (Solid state drive), 250 GB, intern, Datahastighed: 3200 MBps (læs) / 1500 MBps (skriv), 512 MB LPDDR3 cache, IOPS: 330000 (læs) / 300000 (skriv), M.2 2280 (80mm) NVMe 1.2 (Non-Volatile Memory Express), 256-bit AES kryptering, TCG Opal Encryption - Samsung Polaris Controller'),
    ('Kingston',		'SSDNow A400 SSD - 240GB',							15, 446,	'SSD',		'SSD (Solid state drive), 240 GB, intern, Datahastighed: 500 MBps (læs) / 350 MBps (skriv), IOPS: (læs) / (skriv), 2.5", SATA-600 - Phison S11 Controller   NB! Leveres retail, dog uden 3,5'' monteringsbeslag, data- og strømkabler, se listen "Tilbehør"'),
    ('Samsung',		'860 EVO 2.5" SSD - 250GB',								17, 599,	'SSD',		'SSD (Solid state drive), 250 GB, intern, Datahastighed: 550 MBps (læs) / 520 MBps (skriv), IOPS: 98000 (læs) / 90000 (skriv), 512 MB LPDDR4 cache, 2.5", SATA-600 - Samsung 3-core MJX Controller   NB! Leveres retail, dog, uden data- og strømkabler og mounting frame, se listen "Tilbehør".'),
    ('Kingston',		'HyperX Impact DDR4-2133 DC 32GB',					0,	2789,	'RAM',		'Hukommelse (RAM), 32 GB: 2 x 16 GB (Dual Channel), SODIMM 260-pin (til bærbar), DDR4, 2133 MHz / PC4-17000, CL13-13-13, 1.2 V, ikke bufferet, Ikke-paritet'),
    ('Corsair',		'VS SO DDR4-2133 DC - 16GB',							0,	1552,	'RAM',		'Hukommelse (RAM), 16 GB: 2 x 8 GB (Dual Channel), SODIMM 260-pin (til bærbar), DDR4, 2133 MHz / PC4-17000, CL15-15-15-36, 1.2 V, ikke bufferet, Ikke-paritet'),
    ('Kingston',		'HyperX Impact DDR4-2133 DC 8GB',					1,	785,	'RAM',		'Hukommelse (RAM), 8 GB: 2 x 4 GB (Dual Channel), SODIMM 260-pin (til bærbar), DDR4, 2133 MHz / PC4-17000, CL13-13-13, 1.2 V, ikke bufferet, Ikke-paritet');
