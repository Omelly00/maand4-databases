DROP TABLE IF EXISTS inschrijvingen;
DROP TABLE IF EXISTS studenten;
DROP TABLE IF EXISTS trainingen;

CREATE TABLE studenten (
    id SERIAL PRIMARY KEY,
    naam VARCHAR(100) NOT NULL,
    leeftijd INT,
    stad VARCHAR(100)
);

CREATE TABLE trainingen (
    id SERIAL PRIMARY KEY,
    titel VARCHAR(100) NOT NULL,
    prijs NUMERIC(10, 2) NOT NULL,
    categorie VARCHAR(100)
);

CREATE TABLE inschrijvingen (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES studenten(id),
    training_id INT REFERENCES trainingen(id),
    inschrijfdatum DATE
);

INSERT INTO studenten (naam, leeftijd, stad) VALUES
('Mella', 34, 'Rotterdam'),
('Sara', 28, 'Amsterdam'),
('Youssef', 31, 'Utrecht'),
('Nina', 25, 'Rotterdam'),
('Bilal', 29, 'Den Haag');

INSERT INTO trainingen (titel, prijs, categorie) VALUES
('SQL Basis', 49.99, 'Databases'),
('Python Basis', 59.99, 'Programmeren'),
('Linux Fundamentals', 39.99, 'Linux'),
('Cloud Intro', 79.99, 'Cloud');

INSERT INTO inschrijvingen (student_id, training_id, inschrijfdatum) VALUES
(1, 1, '2026-05-01'),
(1, 2, '2026-05-02'),
(2, 1, '2026-05-03'),
(3, 3, '2026-05-04'),
(4, 1, '2026-05-05'),
(4, 4, '2026-05-06'),
(5, 2, '2026-05-07');
