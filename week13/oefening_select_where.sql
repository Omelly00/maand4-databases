-- Week 13 - SQL basis: SELECT en WHERE

-- Database aanmaken
CREATE DATABASE leerpad_week13;

-- Verbinden met database doe je in psql met:
-- \c leerpad_week13

-- Tabel aanmaken
CREATE TABLE studenten (
    id SERIAL PRIMARY KEY,
    naam VARCHAR(100),
    leeftijd INT,
    opleiding VARCHAR(100),
    actief BOOLEAN
);

-- Data toevoegen
INSERT INTO studenten (naam, leeftijd, opleiding, actief)
VALUES 
('Melvin', 34, 'Python', true),
('Sara', 28, 'SQL', true),
('Youssef', 31, 'Cloud', false),
('Amina', 25, 'Frontend', true),
('Kevin', 40, 'Databases', false);

-- Alle studenten tonen
SELECT * FROM studenten;

-- Alleen naam en opleiding tonen
SELECT naam, opleiding FROM studenten;

-- Studenten ouder dan 30 tonen
SELECT * FROM studenten
WHERE leeftijd > 30;

-- Studenten jonger dan 30 tonen
SELECT * FROM studenten
WHERE leeftijd < 30;

-- Alleen actieve studenten tonen
SELECT * FROM studenten
WHERE actief = true;

-- Alleen niet-actieve studenten tonen
SELECT * FROM studenten
WHERE actief = false;

-- Alleen studenten met opleiding SQL tonen
SELECT * FROM studenten
WHERE opleiding = 'SQL';

-- Studenten tonen die geen SQL volgen
SELECT * FROM studenten
WHERE opleiding <> 'SQL';
