
create schema librarymanagment;
CREATE TABLE librarymanagment.Teacher (
TeacherId INT AUTO_INCREMENT  PRIMARY KEY,
FirstName VARCHAR(255),
LastName VARCHAR(255),
Email VARCHAR(255),
ContactNumber VARCHAR(15),
Faculty VARCHAR(15)
);

CREATE TABLE librarymanagment.Student (
StudentId  INT AUTO_INCREMENT  PRIMARY KEY,
FirstName VARCHAR(255),
LastName VARCHAR(255),
Email VARCHAR(255),
className VARCHAR(45),
Department VARCHAR(45),
ContactNumber VARCHAR(15),
Faculty VARCHAR(45)
);

CREATE TABLE librarymanagment.Book (
BookId INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(255),
Author VARCHAR(255),
Language VARCHAR(45),
Publisher VARCHAR(45),
PublisherCity VARCHAR(45),
PublicationDate VARCHAR(45),
ISBN VARCHAR(255),
AvailableQuantity INT,
TotalQuantity INT
);
CREATE TABLE `librarymanagment`.`bookhistory` (
		  `id` INT NOT NULL AUTO_INCREMENT,
		  `BookId` VARCHAR(45) NULL,
		  `StudentName` VARCHAR(45) NULL,
		  `IssueDate` VARCHAR(45) NULL,
		  `DueDate` VARCHAR(45) NULL,
		  `Status` VARCHAR(45) NULL,
		  PRIMARY KEY (`id`));
CREATE TABLE librarymanagment.IssueRecord (
IssueId INT AUTO_INCREMENT  PRIMARY KEY,
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
LibrarianId INT AUTO_INCREMENT  PRIMARY KEY,
Username VARCHAR(50) UNIQUE,
Password VARCHAR(255),
FirstName VARCHAR(255),
LastName VARCHAR(255),
Email VARCHAR(255),
ContactNumber VARCHAR(15)
);






