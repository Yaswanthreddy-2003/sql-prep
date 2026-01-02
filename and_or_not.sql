USE SQL_PLACEMENTS;

CREATE TABLE CUSTOMERS(
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    contact_name VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50),
    age INT
);


INSERT INTO Customers (id, customer_name, contact_name, address, city, postal_code, country, age) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany', 52),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico', 39),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico', 44),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK', 58),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden', 46),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany', 50),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France', 35),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain', 40),
(9, 'Bon app''', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France', 55),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada', 48),
(11, 'B''s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK', 42),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina', 37),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico', 49),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland', 51),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil', 33),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK', 56),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany', 41),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France', 45),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK', 38),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria', 44),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil', 47),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain', 39),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France', 55),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden', 43),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany', 48),
(26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France', 36),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy', 50),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal', 53),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain', 42),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain', 39),
(31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil', 44),
(32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA', 46),
(33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela', 40),
(34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil', 38),
(35, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela', 43),
(36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA', 41),
(37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', NULL, 'Ireland', 52),
(38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK', 48),
(39, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany', 45),
(40, 'La corne d''abondance', 'Daniel Tonini', '67, avenue de l''Europe', 'Versailles', '78000', 'France', 49),
(41, 'La maison d''Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France', 51),
(42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada', 47),
(43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA', 44),
(44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany', 43),
(45, 'Let''s Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA', 53),
(46, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela', 39),
(47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela', 40),
(48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA', 47),
(49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy', 46),
(50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium', 50),
(51, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada', 54),
(52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '04179', 'Germany', 45),
(53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK', 49),
(54, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina', 41),
(55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA', 44),
(56, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany', 47),
(57, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France', 52),
(58, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '05033', 'Mexico', 43),
(59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria', 46),
(60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal', 49),
(61, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil', 45),
(62, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil', 50),
(63, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', '01307', 'Germany', 38),
(64, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina', 43),
(65, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA', 41),
(66, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy', 48),
(67, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil', 44),
(68, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland', 50),
(69, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', '28001', 'Spain', 43),
(70, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway', 46),
(71, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA', 52),
(72, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK', 50),
(73, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', '1734', 'Denmark', 39),
(74, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France', 44),
(75, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA', 48),
(76, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium', 45),
(77, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA', 43),
(78, 'The Cracker Box', 'Carmen Ledezma', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA', 41),
(79, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', '44087', 'Germany', 44),
(80, 'Tortuga Restaurante', 'Myrna Fitch', '89 Chiaroscuro Rd.', 'Buenos Aires', '1010', 'Argentina', 42),
(81, 'Trail''s Head Gourmet Provisioners', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA', 39),
(82, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'Sao Paulo', '05634-030', 'Brazil', 46),
(83, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', '8200', 'Denmark', 47),
(84, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France', 50),
(85, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l''Abbaye', 'Reims', '51100', 'France', 48),
(86, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland', 43),
(87, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil', 44),
(88, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S.', 'Seattle', '98128', 'USA', 47),
(89, 'Wilman Kala', 'Kari Kivelä', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland', 42),
(90, 'Wolski Zajazd', 'Zbigniew Krzykowski', 'ul. Filtrowa 68', 'Warszawa', '01-012', 'Poland', 45),
(91, 'Zaanse Snoepfabriek', 'Jan Pieter van der Zaan', 'Vermeerstraat 29', 'Zaandam', '1500', 'Netherlands', 40);

SELECT * FROM CUSTOMERS;

SELECT * FROM CUSTOMERS WHERE country='Spain' AND customer_name like 'G%';
--this query selects all customers from Spain whose names start with 'G'.
--AND operator requires both conditions to be true.

SELECT * FROM CUSTOMERS WHERE country='SPAIN' OR customer_name like 'G%';
--this query selects all customers from Spain or whose names start with 'G'.
--OR operator requires either condition to be true.

SELECT * FROM CUSTOMERS WHERE country='Brazil' AND city='Rio de Janeiro' AND age > 40;

SELECT * FROM CUSTOMERS WHERE country='Spain' AND (customer_name LIKE 'G%' OR customer_name LIKE 'R%'); 
--country should be Spain, and customer name should start with either 'G' or 'R'.

SELECT * FROM CUSTOMERS WHERE country='Spain' AND customer_name LIKE 'G%' OR customer_name LIKE 'R%'; 
--this query selects customers who are from spain and name starts with 'G' or any customer whose name starts with 'R'.

--NOT operator returns rows that  do not match speccified condition.

SELECT * FROM CUSTOMERS WHERE NOT country='Spain';

SELECT * FROM CUSTOMERS WHERE customer_name NOT LIKE 'A%' AND  customer_name NOT LIKE 'B%';

--NOT IN
--what if we want to select customers from specific countries?
SELECT * FROM CUSTOMERS WHERE country NOT IN ('Spain', 'Brazil', 'France');

SELECT * FROM CUSTOMERS WHERE country IN ('Spain', 'Brazil', 'France');

--NULL values
--a null value is a value that is unknown or missing that might or might not be added later.
--a null value is not equal to 0 or another value or another null value.
--because null is a unknown, an uknown cannot be compared to another unknown.
--therefore we cannot write queries like WHERE column_name = NULL or WHERE column_name != NULL.
--IS NULL checks if a column has a null value.
--IS NOT NULL checks if a column does not have a null value.

SELECT FIRST_NAME,DEPARTMENT FROM table_1 WHERE EMAIL_ADDRESS IS NULL;
SELECT FIRST_NAME,DEPARTMENT FROM table_1 WHERE EMAIL_ADDRESS IS NOT NULL;




