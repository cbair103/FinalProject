DROP DATABASE IF EXISTS comic_books;

CREATE DATABASE comic_books;

USE comic_books;

CREATE TABLE comicBooks(
	Title VarChar(100),
	Publisher VarChar(100),
    Author VarChar(100),
    Illustrator VarChar(100),
    Issue VarChar(50),
    Location VarChar(100),
    Price VarChar(50)

);

INSERT INTO comicBooks (Title, Publisher, Author, Illustrator, Issue, Location, Price)
	VALUES("The Amazing Spider-Man", "Marvel Comics", "Stan Lee", "Jack Kirby, Steve Ditko", "1", "The Android's Dungeon & Baseball Card Shop", "336,000");
    
INSERT INTO comicBooks (Title, Publisher, Author, Illustrator, Issue, Location, Price)
	VALUES("X-Nation 2099", "Marvel Comics", "Terry Kavanagh and Ben Raab", "Eric Battle", "4", "The Comic Center of Pasadena", "12.99");
    
INSERT INTO comicBooks (Title, Publisher, Author, Illustrator, Issue, Location, Price)
	VALUES("Batman", "DC Comics", "Doug Moench", "Don Newton", "368", "The Comic Center of Pasadena", "125.00");
    
INSERT INTO comicBooks (Title, Publisher, Author, Illustrator, Issue, Location, Price)
	VALUES("Green Lantern: The Silver Age", "DC Comics", "Gardner Fox and John Broome", "Joe Giella", "3", "The Android's Dungeon & Baseball Card Shop", "32.98");
    
INSERT INTO comicBooks (Title, Publisher, Author, Illustrator, Issue, Location, Price)
	VALUES("Adventures of Superman", "DC Comics", "Marv Wolfman", "Jerry Ordway", "432", "The Comic Center of Pasadena", "5.99");

INSERT INTO comicBooks (Title, Publisher, Author, Illustrator, Issue, Location, Price)comicbooks
	VALUES("Invincible Ironman", "Marvel Comics", "Matt Fraction", "Jamie Mckelvie", "32", "The Android's Dungeon & Baseball Card Shop", "4.99");
    
