-- Week 15 - Testdata toevoegen

INSERT INTO klanten (naam, email, stad)
VALUES
('Sara de Vries', 'sara@mail.nl', 'Rotterdam'),
('Mohamed Bakker', 'mo@mail.nl', 'Amsterdam'),
('Lina Jansen', 'lina@mail.nl', 'Utrecht');

INSERT INTO trainingen (naam, prijs, duur_maanden)
VALUES
('Python Basis', 49.00, 3),
('Linux Fundamentals', 39.00, 2),
('Cloud Starter', 59.00, 4);

INSERT INTO bestellingen (klant_id, training_id, besteldatum)
VALUES
(1, 1, '2026-05-26'),
(1, 2, '2026-05-26'),
(2, 3, '2026-05-27'),
(3, 1, '2026-05-28');
