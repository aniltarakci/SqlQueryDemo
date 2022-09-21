CREATE DATABASE ExampleDB;
USE ExampleDB;

CREATE TABLE Products(
ProductId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
CategoryId int NOT NULL FOREIGN KEY REFERENCES Categories(CategoryId),
ProductName varchar(255) NOT NULL,
UnitPrice decimal(18,2) NOT NULL,
UnitsInStock int NOT NULL
);

INSERT INTO Products (CategoryId, ProductName, UnitPrice, UnitsInStock)
VALUES ('1','Mavi Ti��rt','180','5000'),('2','Mavi �ort','150','1230'),('3','Mavi G�mlek','190','2500'),('4','Mavi Pantolon','250','5000');



CREATE TABLE Categories(
CategoryId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
CategoryName varchar(255) NOT NULL
);

INSERT INTO Categories (CategoryName)
VALUES ('Ti��rt'),('�ort'),('G�mlek'),('Pantolon');