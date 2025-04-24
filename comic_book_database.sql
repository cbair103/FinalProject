DROP DATABASE IF EXISTS comic_books;

CREATE DATABASE comic_books;

USE comic_books;

CREATE TABLE comicBooks{
	Publisher VarChar(100),
    Author VarChar(100),
    Illustrator VarChar(100),
    Issue VarChar(50),
    Variant VarChar(50),
    Location VarChar(100),
    Price int

};