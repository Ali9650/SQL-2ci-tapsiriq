Create DATABASE LibraryManagement 
USE LibraryManagement 
Create TABLE Libraries   (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Address NVARCHAR (100) NOT NULL
)

Create TABLE Books    (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Count INT,
LibraryId int FOREIGN KEY REFERENCES Libraries(Id)
)

Create TABLE Authors    (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Surname NVARCHAR (50) NOT NULL,
BookId int FOREIGN KEY REFERENCES Books(Id)
)

Create TABLE Genres     (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
BookId int FOREIGN KEY REFERENCES Books(Id),
AuthorId int FOREIGN KEY REFERENCES Authors(Id)
)

INSERT INTO Libraries (Name, Address)
VALUES ('Mirze Feteli Axundov', 'Sebail')


INSERT INTO Books (Name, Count, LibraryId)
VALUES ('Edebiyyat', 10, 1)

INSERT INTO Authors (Name, Surname, BookId)
VALUES ('Elxan', 'Rustemov', 1)

INSERT INTO Genres (Name, BookId, AuthorId)
VALUES ('Derslik', 1, 1)

SELECT * FROM Libraries
  SELECT * FROM Books
  SELECT * FROM Authors
  SELECT * FROM Genres