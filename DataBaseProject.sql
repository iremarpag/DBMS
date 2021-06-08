CREATE DATABASE SanalMarketDB;
 
USE `SanalMarketDB`;
 
CREATE TABLE Categories(
	`CategoryID` int AUTO_INCREMENT NOT NULL,
	`CategoryName` nchar(25) NOT NULL,
 CONSTRAINT `PK_Categories` PRIMARY KEY 
(
	`CategoryID` ASC
) 
);
CREATE TABLE Shippers(
    `ShipperID` int AUTO_INCREMENT NOT NULL,
    `CompanyName` nvarchar(50) NOT NULL,
    `Phone` nvarchar(50) NULL,
    `isDeleted` Tinyint NOT NULL,
 CONSTRAINT PK_Shippers PRIMARY KEY 
(
    `ShipperID` ASC
) 
);

CREATE TABLE Cities(
	`CityID` int NOT NULL,
	`CityName` nvarchar(50) NULL,
 CONSTRAINT `PK_Cities` PRIMARY KEY 
(
	`CityID` ASC
) 
);

CREATE TABLE Customers(
	`CustomerID` int AUTO_INCREMENT NOT NULL,
	`FirstName` nvarchar(50) NULL,
	`LastName` nvarchar(50) NULL,
	`CityID` int NULL,
	`RegisterDate` date NULL,
	`isDeleted` Tinyint NULL,
 CONSTRAINT `PK_Customers` PRIMARY KEY 
(
	`CustomerID` ASC
) 
);

CREATE TABLE Departments(
	`DepartmentID` int AUTO_INCREMENT NOT NULL,
	`DepartmentName` nvarchar(50) NULL,
 CONSTRAINT `PK_Departments` PRIMARY KEY 
(
	`DepartmentID` ASC
) 
);

CREATE TABLE Employees(
	`EmployeeID` int AUTO_INCREMENT NOT NULL,
	`FirstName` nvarchar(50) NOT NULL,
	`LastName` nvarchar(50) NOT NULL,
	`DepartmentID` int NOT NULL,
	`CityID` int NOT NULL,
	`Salary` int NOT NULL,
	`HireDate` int NOT NULL,
 CONSTRAINT `PK_Employees` PRIMARY KEY 
(
	`EmployeeID` ASC
) 
);

CREATE TABLE OrderDetails(
	`OrderID` int NOT NULL,
	`ProductID` int NOT NULL,
	`UnitPrice` int NOT NULL,
	`Quantity` int NOT NULL,
 CONSTRAINT `PK_OrderDetails` PRIMARY KEY 
(
	`OrderID` ASC,
	`ProductID` ASC
) 
);
CREATE TABLE Orders(
	`OrderID` int AUTO_INCREMENT NOT NULL,
	`OrderDate` int NOT NULL,
	`EmployeeID` int NOT NULL,
	`CustomerID` int NOT NULL,
    `ShipperID` int NOT NULL,
	`Freight` Decimal(20) NOT NULL,
	`isCompleted` Tinyint NULL,
 CONSTRAINT `PK_Orders` PRIMARY KEY 
(
	`OrderID` ASC
) 
);
CREATE TABLE ProductProperties(
	`ProductID` int NOT NULL,
	`PropertyID` int NOT NULL,
	`Value` nchar(10) NULL,
 CONSTRAINT `PK_ProductProperties` PRIMARY KEY 
(
	`ProductID` ASC,
	`PropertyID` ASC
) 
);
CREATE TABLE Products(
	`ProductID` int AUTO_INCREMENT NOT NULL,
	`ProductName` nvarchar(50) NOT NULL,
	`UnitPrice` Decimal(15,2) NOT NULL,
	`UnitsInStock` int NOT NULL,
	`BuyingPrice` Decimal(15,2) NOT NULL,
	`Description` nchar(100) NOT NULL,
	`CategoryID` int NOT NULL,
	`SupplierID` int NULL,
	`isDeleted` Tinyint NOT NULL,
 CONSTRAINT `PK_Products` PRIMARY KEY 
(
	`ProductID` ASC
) 
);

CREATE TABLE Properties(
	`PropertyID` int AUTO_INCREMENT NOT NULL,
	`PropertyName` nvarchar(50) NULL,
	`CategoryID` int NULL,
 CONSTRAINT `PK_Properties` PRIMARY KEY 
(
	`PropertyID` ASC
) 
);


CREATE TABLE Suppliers(
	`SupplierID` int AUTO_INCREMENT NOT NULL,
	`CompanyName` nvarchar(50) NOT NULL,
	`FirstName` nvarchar(50) NOT NULL,
	`LastName` nvarchar(50) NOT NULL,
	`Phone` nvarchar(50) NOT NULL,
	`Address` nvarchar(50) NOT NULL,
	`isDeleted` Tinyint NOT NULL,
 CONSTRAINT `PK_Suppliers` PRIMARY KEY 
(
	`SupplierID` ASC
) 
);


INSERT Departments (`DepartmentID`, `DepartmentName`) VALUES (1 , 'Pazarlama');
INSERT Departments (`DepartmentID`, `DepartmentName`) VALUES (2 , 'Teknoloji');
INSERT Departments (`DepartmentID`, `DepartmentName`) VALUES (3 , 'Muhasebe');
INSERT Departments (`DepartmentID`, `DepartmentName`) VALUES (4 , 'Satis');
INSERT Departments (`DepartmentID`, `DepartmentName`) VALUES (5 , 'Finans');


INSERT Categories (`CategoryID`, `CategoryName`) VALUES (1, N'Elektronik');
INSERT Categories (`CategoryID`, `CategoryName`) VALUES (2, N'Beyaz Eşya');
INSERT Categories (`CategoryID`, `CategoryName`) VALUES (3, N'Cep Telefonu');
INSERT Categories (`CategoryID`, `CategoryName`) VALUES (4, N'Bilgisayar');

INSERT Cities (`CityID`, `CityName`) VALUES (1, N'Adana');
INSERT Cities (`CityID`, `CityName`) VALUES (2, N'Adıyaman');
INSERT Cities (`CityID`, `CityName`) VALUES (3, N'Afyon');
INSERT Cities (`CityID`, `CityName`) VALUES (4, N'Ağrı');
INSERT Cities (`CityID`, `CityName`) VALUES (5, N'Amasya');
INSERT Cities (`CityID`, `CityName`) VALUES (6, N'Ankara');
INSERT Cities (`CityID`, `CityName`) VALUES (7, N'Antalya');
INSERT Cities (`CityID`, `CityName`) VALUES (8, N'Artvin');
INSERT Cities (`CityID`, `CityName`) VALUES (9, N'Aydın');
INSERT Cities (`CityID`, `CityName`) VALUES (10, N'Balıkesir');
INSERT Cities (`CityID`, `CityName`) VALUES (11, N'Bilecik');
INSERT Cities (`CityID`, `CityName`) VALUES (12, N'Bingöl');
INSERT Cities (`CityID`, `CityName`) VALUES (13, N'Bitlis');
INSERT Cities (`CityID`, `CityName`) VALUES (14, N'Bolu');
INSERT Cities (`CityID`, `CityName`) VALUES (15, N'Burdur');
INSERT Cities (`CityID`, `CityName`) VALUES (16, N'Bursa');
INSERT Cities (`CityID`, `CityName`) VALUES (17, N'Çanakkale');
INSERT Cities (`CityID`, `CityName`) VALUES (18, N'Çankırı');
INSERT Cities (`CityID`, `CityName`) VALUES (19, N'Çorum');
INSERT Cities (`CityID`, `CityName`) VALUES (20, N'Denizli');
INSERT Cities (`CityID`, `CityName`) VALUES (21, N'Diyarbakır');
INSERT Cities (`CityID`, `CityName`) VALUES (22, N'Edirne');
INSERT Cities (`CityID`, `CityName`) VALUES (23, N'Elazığ');
INSERT Cities (`CityID`, `CityName`) VALUES (24, N'Erzincan');
INSERT Cities (`CityID`, `CityName`) VALUES (25, N'Erzurum');
INSERT Cities (`CityID`, `CityName`) VALUES (26, N'Eskişehir');
INSERT Cities (`CityID`, `CityName`) VALUES (27, N'Gaziantep');
INSERT Cities (`CityID`, `CityName`) VALUES (28, N'Giresun');
INSERT Cities (`CityID`, `CityName`) VALUES (29, N'Gümüşhane');
INSERT Cities (`CityID`, `CityName`) VALUES (30, N'Hakkari');
INSERT Cities (`CityID`, `CityName`) VALUES (31, N'Hatay');
INSERT Cities (`CityID`, `CityName`) VALUES (32, N'Isparta');
INSERT Cities (`CityID`, `CityName`) VALUES (33, N'Mersin');
INSERT Cities (`CityID`, `CityName`) VALUES (34, N'İstanbul');
INSERT Cities (`CityID`, `CityName`) VALUES (35, N'İzmir');
INSERT Cities (`CityID`, `CityName`) VALUES (36, N'Kars');
INSERT Cities (`CityID`, `CityName`) VALUES (37, N'Kastamonu');
INSERT Cities (`CityID`, `CityName`) VALUES (38, N'Kayseri');
INSERT Cities (`CityID`, `CityName`) VALUES (39, N'Kırklareli');
INSERT Cities (`CityID`, `CityName`) VALUES (40, N'Kırşehir');
INSERT Cities (`CityID`, `CityName`) VALUES (41, N'Kocaeli');
INSERT Cities (`CityID`, `CityName`) VALUES (42, N'Konya');
INSERT Cities (`CityID`, `CityName`) VALUES (43, N'Kütahya');
INSERT Cities (`CityID`, `CityName`) VALUES (44, N'Malatya');
INSERT Cities (`CityID`, `CityName`) VALUES (45, N'Manisa');
INSERT Cities (`CityID`, `CityName`) VALUES (46, N'K.Maraş');
INSERT Cities (`CityID`, `CityName`) VALUES (47, N'Mardin');
INSERT Cities (`CityID`, `CityName`) VALUES (48, N'Muğla');
INSERT Cities (`CityID`, `CityName`) VALUES (49, N'Muş');
INSERT Cities (`CityID`, `CityName`) VALUES (50, N'Nevşehir');
INSERT Cities (`CityID`, `CityName`) VALUES (51, N'Niğde');
INSERT Cities (`CityID`, `CityName`) VALUES (52, N'Ordu');
INSERT Cities (`CityID`, `CityName`) VALUES (53, N'Rize');
INSERT Cities (`CityID`, `CityName`) VALUES (54, N'Sakarya');
INSERT Cities (`CityID`, `CityName`) VALUES (55, N'Samsun');
INSERT Cities (`CityID`, `CityName`) VALUES (56, N'Siirt');
INSERT Cities (`CityID`, `CityName`) VALUES (57, N'Sinop');
INSERT Cities (`CityID`, `CityName`) VALUES (58, N'Sivas');
INSERT Cities (`CityID`, `CityName`) VALUES (59, N'Tekirdağ');
INSERT Cities (`CityID`, `CityName`) VALUES (60, N'Tokat');
INSERT Cities (`CityID`, `CityName`) VALUES (61, N'Trabzon');
INSERT Cities (`CityID`, `CityName`) VALUES (62, N'Tunceli');
INSERT Cities (`CityID`, `CityName`) VALUES (63, N'Şanlıurfa');
INSERT Cities (`CityID`, `CityName`) VALUES (64, N'Uşak');
INSERT Cities (`CityID`, `CityName`) VALUES (65, N'Van');
INSERT Cities (`CityID`, `CityName`) VALUES (66, N'Yozgat');
INSERT Cities (`CityID`, `CityName`) VALUES (67, N'Zonguldak');
INSERT Cities (`CityID`, `CityName`) VALUES (68, N'Aksaray');
INSERT Cities (`CityID`, `CityName`) VALUES (69, N'Bayburt');
INSERT Cities (`CityID`, `CityName`) VALUES (70, N'Karaman');
INSERT Cities (`CityID`, `CityName`) VALUES (71, N'Kırıkkale');
INSERT Cities (`CityID`, `CityName`) VALUES (72, N'Batman');
INSERT Cities (`CityID`, `CityName`) VALUES (73, N'Şırnak');
INSERT Cities (`CityID`, `CityName`) VALUES (74, N'Bartın');
INSERT Cities (`CityID`, `CityName`) VALUES (75, N'Ardahan');
INSERT Cities (`CityID`, `CityName`) VALUES (76, N'Iğdır');
INSERT Cities (`CityID`, `CityName`) VALUES (77, N'Yalova');
INSERT Cities (`CityID`, `CityName`) VALUES (78, N'Karabük');
INSERT Cities (`CityID`, `CityName`) VALUES (79, N'Kilis');
INSERT Cities (`CityID`, `CityName`) VALUES (80, N'Osmaniye');
INSERT Cities (`CityID`, `CityName`) VALUES (81, N'Düzce');

INSERT Shippers (`ShipperID`, `CompanyName`,`Phone`,`isDeleted`) VALUES (1, N'Blaba', '42342342', '0');
INSERT Shippers (`ShipperID`, `CompanyName`,`Phone`,`isDeleted`) VALUES (2, N'xMas', '24321313', '0');
INSERT Shippers (`ShipperID`, `CompanyName`,`Phone`,`isDeleted`) VALUES (3, N'ShipperB', '12312314', '0');
INSERT Shippers (`ShipperID`, `CompanyName`,`Phone`,`isDeleted`) VALUES (4, N'ShipperC', '42342342', '0');

INSERT Customers(`CustomerID`,`FirstName`,`LastName`,`CityID`,`RegisterDate`,`isDeleted`) VALUES (798965465,'Ulaş','Uysal','35','02.01.2021',NULL);
INSERT Customers(`CustomerID`,`FirstName`,`LastName`,`CityID`,`RegisterDate`,`isDeleted`) VALUES (456798123,'Yiğithan','Sanlık','34','03.12.2021',NULL);
INSERT Customers(`CustomerID`,`FirstName`,`LastName`,`CityID`,`RegisterDate`,`isDeleted`) VALUES (987654321,'Ahmet Hakan','Hafif','63','11.04.2021',NULL);
INSERT Customers(`CustomerID`,`FirstName`,`LastName`,`CityID`,`RegisterDate`,`isDeleted`) VALUES (159756456,'Serhat','Yılmaz','16','06.05.2021',NULL);
INSERT Customers(`CustomerID`,`FirstName`,`LastName`,`CityID`,`RegisterDate`,`isDeleted`) VALUES (951895248,'Serap','Erten','53','10.05.2021',NULL);
INSERT Customers(`CustomerID`,`FirstName`,`LastName`,`CityID`,`RegisterDate`,`isDeleted`) VALUES (123756894,'Sevtap','Dinç','63','12.06.2021',NULL);
INSERT Customers(`CustomerID`,`FirstName`,`LastName`,`CityID`,`RegisterDate`,`isDeleted`) VALUES (456217486,'Ayşe','Elibol','7','11.11.2021',NULL);


INSERT Suppliers(`SupplierID`,`CompanyName`,`FirstName`,`LastName`,`Phone`,`Address`,`isDeleted`) VALUES (456264886,'Company A','Sedat','Yılmaz','5327894514','Kraşıyaka/İzmir',0);
INSERT Suppliers(`SupplierID`,`CompanyName`,`FirstName`,`LastName`,`Phone`,`Address`,`isDeleted`) VALUES (789542354,'Company B','Merih','Secen','5307895164','Nilufer/Bursa',0);
INSERT Suppliers(`SupplierID`,`CompanyName`,`FirstName`,`LastName`,`Phone`,`Address`,`isDeleted`) VALUES (532145687,'Arçelik','Seçil','Çetin','5357793829','Gebze/İstanbul',0);
INSERT Suppliers(`SupplierID`,`CompanyName`,`FirstName`,`LastName`,`Phone`,`Address`,`isDeleted`) VALUES (789562131,'Monster','İris','Dikmen','5385617327','Polatlı/Ankara',0);

INSERT Properties(`PropertyID`, `PropertyName`,`CategoryID`) VALUES ('101','Property A',1);
INSERT Properties(`PropertyID`, `PropertyName`,`CategoryID`) VALUES ('102','Property B',3);
INSERT Properties(`PropertyID`, `PropertyName`,`CategoryID`) VALUES ('103','Property C',1);
INSERT Properties(`PropertyID`, `PropertyName`,`CategoryID`) VALUES ('104','Buz Dolabı Deposu',2);
INSERT Properties(`PropertyID`, `PropertyName`,`CategoryID`) VALUES ('105','Bilgisyar Deposu',4);
INSERT Properties(`PropertyID`, `PropertyName`,`CategoryID`) VALUES ('106','Bulaşık Makinası Depobı',2);
INSERT Properties(`PropertyID`, `PropertyName`,`CategoryID`) VALUES ('107','Property D',3);


INSERT Products(`ProductID`, `ProductName`,`UnitPrice`,`UnitsInStock`,`BuyingPrice`,`Description`,`CategoryID`,`SupplierID`,`isDeleted`) VALUES ('1001','IPhone',12000,5000,8000,'A cell phone made by Appel INC.',3,456264886,0);
INSERT Products(`ProductID`, `ProductName`,`UnitPrice`,`UnitsInStock`,`BuyingPrice`,`Description`,`CategoryID`,`SupplierID`,`isDeleted`) VALUES ('1002','Samsung Cell Phone',10000,3200,6000,'A cell phone made by Samsung INC.',3,789542354,0);
INSERT Products(`ProductID`, `ProductName`,`UnitPrice`,`UnitsInStock`,`BuyingPrice`,`Description`,`CategoryID`,`SupplierID`,`isDeleted`) VALUES ('1003','Arçelik Refrigerator',7000,9800,6000,'A refrigerator made by Arçelik.',2,532145687,0);
INSERT Products(`ProductID`, `ProductName`,`UnitPrice`,`UnitsInStock`,`BuyingPrice`,`Description`,`CategoryID`,`SupplierID`,`isDeleted`) VALUES ('1004','Monster Laptop',14000,2000,10000,'A laptop made by Monster.',4,789562131,0);
INSERT Products(`ProductID`, `ProductName`,`UnitPrice`,`UnitsInStock`,`BuyingPrice`,`Description`,`CategoryID`,`SupplierID`,`isDeleted`) VALUES ('1005','Beats Headphones',2000,4000,1500,'Headphones made by Beats.',1,456264886,0);
INSERT Products(`ProductID`, `ProductName`,`UnitPrice`,`UnitsInStock`,`BuyingPrice`,`Description`,`CategoryID`,`SupplierID`,`isDeleted`) VALUES ('1006','JBL Clip 3',1000,5782,800,'Speakers made by JBL.',1,789542354,0);
INSERT Products(`ProductID`, `ProductName`,`UnitPrice`,`UnitsInStock`,`BuyingPrice`,`Description`,`CategoryID`,`SupplierID`,`isDeleted`) VALUES ('1007','Arçelik Washing Machine',8999,3546,7000,'Washing Machine made by Arçelik.',2,532145687,0);

INSERT ProductProperties(`ProductID`, `PropertyID`) VALUES ('1001','101');
INSERT ProductProperties(`ProductID`, `PropertyID`) VALUES ('1002','102');
INSERT ProductProperties(`ProductID`, `PropertyID`) VALUES ('1003','103');
INSERT ProductProperties(`ProductID`, `PropertyID`) VALUES ('1004','104');
INSERT ProductProperties(`ProductID`, `PropertyID`) VALUES ('1005','105');
INSERT ProductProperties(`ProductID`, `PropertyID`) VALUES ('1006','106');
INSERT ProductProperties(`ProductID`, `PropertyID`) VALUES ('1007','107');

INSERT Employees (`EmployeeID`, `FirstName`,`LastName`,`DepartmentID`,`CityID`,`Salary`,`HireDate`) VALUES (1, 'Ali','Veli',4,34,5000,2014);
INSERT Employees (`EmployeeID`, `FirstName`,`LastName`,`DepartmentID`,`CityID`,`Salary`,`HireDate`) VALUES (2, 'Kaan','Can',4,34,6000,2013);
INSERT Employees (`EmployeeID`, `FirstName`,`LastName`,`DepartmentID`,`CityID`,`Salary`,`HireDate`) VALUES (3, 'Cenk','Eren',4,6,7000,2013);
INSERT Employees (`EmployeeID`, `FirstName`,`LastName`,`DepartmentID`,`CityID`,`Salary`,`HireDate`) VALUES (4, 'Cihan','Kural',4,34,8000,2013);
INSERT Employees (`EmployeeID`, `FirstName`,`LastName`,`DepartmentID`,`CityID`,`Salary`,`HireDate`) VALUES (5, 'Ahmet','Oguz',4,6,9000,2012);


INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10248, 2010, 1, 798965465, 1,3,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10249, 2010, 2, 456217486, 1, 4,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10250, 2010, 3, 798965465, 1, 5,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10251, 2012, 3, 456217486, 1,6,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10252, 2016, 4, 456217486, 1, 3,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10253, 2010, 3, 123756894, 1, 4,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10254, 2018, 5, 123756894, 2,3,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10255, 2019, 3, 951895248, 2, 7,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10256, 2017, 4, 951895248, 2, 8,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10257, 2012, 5, 159756456, 2, 6,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10258, 2014, 1, 159756456, 3, 7,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10259, 2009, 4, 159756456, 3, 4,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10260, 2010, 4, 987654321, 3, 3,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10261, 2012, 4, 987654321, 3, 5,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10262, 2019, 3, 987654321, 3,7,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10263, 2020, 5, 456798123, 4, 8,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10264, 2020, 2, 456798123, 4, 5,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10265, 2014, 2, 456798123, 4, 3,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10266, 2016, 1, 798965465, 4, 2,1);
INSERT Orders (`OrderID`, `OrderDate`, `EmployeeID`, `CustomerID`, `ShipperID`, `Freight`, `isCompleted`) VALUES (10267, 2013, 5, 798965465, 4, 9,1);

INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10248, 1001, 10000, 2);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10249, 1001, 10000, 3);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10250, 1002, 9000, 4);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10251, 1002, 9000, 4);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10252, 1002, 9000, 4);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10253, 1006, 2000, 4);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10254, 1006, 2000, 3);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10255, 1006, 2000, 2);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10256, 1006, 2000, 1);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10257, 1006, 2000, 44);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10258, 1006, 2000, 43);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10259, 1006, 2000, 14);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10260, 1007, 10000, 24);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10261, 1007, 10000, 34);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10262, 1007, 10000, 14);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10263, 1007, 10000, 4);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10264, 1002, 9000, 1);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10265, 1003, 7000, 1);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10266, 1004, 150000, 2);
INSERT OrderDetails (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES (10267, 1005, 3000, 2);

-- 1	
SELECT ProductID,
	   ProductName,
       UnitPrice,
       UnitsInStock,
       BuyingPrice,
       ((UnitPrice*UnitsInStock)-(BuyingPrice*UnitsInStock)) AS TotalProfit
FROM   Products
ORDER BY TotalProfit DESC;
-- 2
SELECT *FROM Products
    ORDER BY  ABS(UnitPrice - (SELECT AVG(UnitPrice) FROM Products)) ASC LIMIT 3;
-- 3    
SELECT Categories.CategoryName, (count(*)) from Products, OrderDetails,Categories
where Products.ProductID = (OrderDetails.ProductID) and Products.CategoryID = Categories.CategoryID 
group by Categories.CategoryName
order by count(*) desc;

-- 4
SELECT p.ProductName, SUM(p.UnitsInStock)
FROM Products as p
GROUP BY p.ProductName
HAVING SUM(p.UnitsInStock) >= 5000
order by SUM(p.UnitsInStock) desc;

-- 5
SELECT SUM(Freight * d.Quantity)
From Orders as o, Customers as c, OrderDetails as d
Where c.CustomerID = 456798123 AND c.CustomerID = o.CustomerID AND o.OrderID = d.OrderID;
 
 -- 6
SELECT firstName, lastName
FROM Customers
WHERE firstName like 'S%';

-- 7
SELECT
     c.CategoryName,
     COUNT(*) as 'Number Of Products'
FROM Products p
INNER JOIN Categories c ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 8
SELECT
    e.CityID,
    COUNT(*) as 'Employee Cities'
FROM Employees e
GROUP BY e.CityID;

ALTER TABLE `Customers`  ADD  CONSTRAINT `FK_Customers_Cities` FOREIGN KEY(`CityID`)
REFERENCES Cities (`CityID`);
 
ALTER TABLE `Employees`  ADD  CONSTRAINT `FK_Employees_Cities` FOREIGN KEY(`CityID`)
REFERENCES Cities (`CityID`);
 
ALTER TABLE `Employees`  ADD  CONSTRAINT `FK_Employees_Departments` FOREIGN KEY(`DepartmentID`)
REFERENCES Departments (`DepartmentID`);
 
ALTER TABLE `OrderDetails`  ADD  CONSTRAINT `FK_OrderDetails_Orders` FOREIGN KEY(`OrderID`)
REFERENCES Orders (`OrderID`);
 
ALTER TABLE `OrderDetails`  ADD  CONSTRAINT `FK_OrderDetails_Products` FOREIGN KEY(`ProductID`)
REFERENCES Products (`ProductID`);
 
ALTER TABLE `Orders`  ADD  CONSTRAINT `FK_Orders_Customers` FOREIGN KEY(`CustomerID`)
REFERENCES Customers (`CustomerID`);
 
ALTER TABLE `Orders`  ADD  CONSTRAINT `FK_Orders_Employees` FOREIGN KEY(`EmployeeID`)
REFERENCES Employees (`EmployeeID`);
 
ALTER TABLE `Orders`  ADD  CONSTRAINT `FK_Orders_Shippers` FOREIGN KEY(`ShipperID`)
REFERENCES Shippers (`ShipperID`);
 
ALTER TABLE `ProductProperties`  ADD  CONSTRAINT `FK_ProductProperties_Products` FOREIGN KEY(`ProductID`)
REFERENCES Products (`ProductID`);
 
ALTER TABLE `ProductProperties`  ADD  CONSTRAINT `FK_ProductProperties_Properties` FOREIGN KEY(`PropertyID`)
REFERENCES Properties (`PropertyID`);
 
ALTER TABLE `Products`  ADD  CONSTRAINT `FK_Products_Categories` FOREIGN KEY(`CategoryID`)
REFERENCES Categories (`CategoryID`);
 
ALTER TABLE `Products`  ADD  CONSTRAINT `FK_Products_Suppliers` FOREIGN KEY(`SupplierID`)
REFERENCES Suppliers (`SupplierID`);
 
ALTER TABLE `Properties`  ADD  CONSTRAINT `FK_Properties_Categories` FOREIGN KEY(`CategoryID`)
REFERENCES Categories (`CategoryID`);
