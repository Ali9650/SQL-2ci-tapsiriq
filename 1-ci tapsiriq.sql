Create DATABASE DrugstoreApp
USE DrugstoreApp
Create TABLE Owners  (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Surname NVARCHAR (50) NOT NULL
)

Create TABLE Drugstores   (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Address NVARCHAR (100) NOT NULL,
ContactNumber NVARCHAR (50) DEFAULT ('+994000000000'),
CreationDate DATETIME CHECK (CreationDate<GETDATE()) DEFAULT ('GETDATE()'),
OwnerId int FOREIGN KEY REFERENCES Owners(Id)
)

Create TABLE Druggists   (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Surname NVARCHAR (50) NOT NULL,
Age DATE,
Experience INT,
DrugstoreId int FOREIGN KEY REFERENCES Drugstores(Id)
)
 
 Create TABLE Drugs    (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Price decimal,
Count INT,
DrugstoreId int FOREIGN KEY REFERENCES Drugstores(Id)
)

INSERT INTO Owners (Name, Surname)
VALUES ('Ali', 'Cahangirov')


INSERT INTO Drugstores (Name, Address, ContactNumber, CreationDate, OwnerId)
VALUES ('Zeferan', 'Abseron', '+994504265002', '2024.06.12', 1)



INSERT INTO Druggists (Name, Surname, Age, Experience, DrugstoreId)
VALUES ('Cavid', 'Abbasli', '02.06.1996', 3, 1)



INSERT INTO Drugs (Name, Price, Count, DrugstoreId)
VALUES ('Paracetomol', 5, 1, 1)
Select * FROM Owners
Select * FROM Drugstores
Select * FROM Druggists
Select * FROM Drugs
