Create DATABASE CodeAcademy
USE CodeAcademy
Create TABLE Groups  (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
BeginDate DATETIME,
EndDate DATETIME, 
LessonHours INT,
GroupTypeId int FOREIGN KEY REFERENCES GroupTypes(Id)
)

Create TABLE GroupTypes   (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL
)

Create TABLE Students    (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Surname NVARCHAR (50) NOT NULL,
BirthDate DATETIME,
RegistrationDate DATETIME,
PhoneNumber NVARCHAR (50) DEFAULT ('+994000000000'),
Email NVARCHAR (50) NOT NULL UNIQUE,
GroupId int FOREIGN KEY REFERENCES Groups(Id)
)

Create TABLE Topics    (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
LessonHours INT,
GroupTypeId int FOREIGN KEY REFERENCES GroupTypes(Id)
)
 
 Create TABLE Exercises     (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Grade decimal,
StudentId int FOREIGN KEY REFERENCES Students(Id),
TopicId int FOREIGN KEY REFERENCES Topics(Id),
ExerciseTypeId int FOREIGN KEY REFERENCES ExerciseTypes(Id)
)

Create TABLE ExerciseTypes     (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL
)

INSERT INTO GroupTypes (Name)
VALUES ('Programming')


INSERT INTO Groups (Name, BeginDate, EndDate, LessonHours, GroupTypeId)
VALUES ('PB401', '02.06.2023', '10.05.2024', 5, 1)

INSERT INTO Students (Name, Surname, BirthDate, RegistrationDate, PhoneNumber, Email, GroupId )
VALUES ('Ali', 'Cahangirov', '10.05.2000', '10.06.2022', '+994504265002', 'alik@gmail.com', 1)

INSERT INTO Topics (Name, LessonHours, GroupTypeId)
VALUES ('SQL', 5, 1) 

INSERT INTO ExerciseTypes (Name)
VALUES ('Quiz') 

INSERT INTO Exercises (Name, Grade, StudentId, TopicId, ExerciseTypeId)
VALUES ('SQL1', 95, 1, 1, 1 ) 

 SELECT * FROM GroupTypes
  SELECT * FROM Groups
  SELECT * FROM Students
  SELECT * FROM Topics
  SELECT * FROM ExerciseTypes
  SELECT * FROM Exercises