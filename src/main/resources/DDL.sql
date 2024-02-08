create schema librarymanagment;
CREATE TABLE librarymanagment.Teacher (
TeacherId INT PRIMARY KEY,
FirstName VARCHAR(255),
LastName VARCHAR(255),
Email VARCHAR(255),
ContactNumber VARCHAR(15)
);

CREATE TABLE librarymanagment.Student (
StudentId INT PRIMARY KEY,
FirstName VARCHAR(255),
LastName VARCHAR(255),
Email VARCHAR(255),
ContactNumber VARCHAR(15)
);

CREATE TABLE librarymanagment.Book (
BookId INT PRIMARY KEY,
Title VARCHAR(255),
Author VARCHAR(255),
ISBN VARCHAR(255),
AvailableQuantity INT,
TotalQuantity INT
);

CREATE TABLE librarymanagment.IssueRecord (
IssueId INT PRIMARY KEY,
UserId INT,
UserType VARCHAR(10),
BookId INT,
IssueDate DATETIME,
DueDate DATETIME,
ReturnDate DATETIME,
FOREIGN KEY (UserId) REFERENCES Teacher(TeacherId) ON DELETE CASCADE,
FOREIGN KEY (UserId) REFERENCES Student(StudentId) ON DELETE CASCADE,
FOREIGN KEY (BookId) REFERENCES Book(BookId)
);

CREATE TABLE librarymanagment.Librarian (
LibrarianId INT PRIMARY KEY,
Username VARCHAR(50) UNIQUE,
Password VARCHAR(255),
FirstName VARCHAR(255),
LastName VARCHAR(255),
Email VARCHAR(255),
ContactNumber VARCHAR(15)
);






