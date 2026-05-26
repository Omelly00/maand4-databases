-- Week 15 - Database schema ontwerpen
-- Project: Training database

DROP TABLE IF EXISTS bestellingen;
DROP TABLE IF EXISTS trainingen;
DROP TABLE IF EXISTS klanten;

CREATE TABLE klanten (
    id SERIAL PRIMARY KEY,
    naam VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    stad VARCHAR(100)
);

CREATE TABLE trainingen (
    id SERIAL PRIMARY KEY,
    naam VARCHAR(100) NOT NULL,
    prijs NUMERIC(10,2) NOT NULL,
    duur_maanden INTEGER NOT NULL
);

CREATE TABLE bestellingen (
    id SERIAL PRIMARY KEY,
    klant_id INTEGER NOT NULL,
    training_id INTEGER NOT NULL,
    besteldatum DATE NOT NULL,

    CONSTRAINT fk_klant
        FOREIGN KEY (klant_id)
        REFERENCES klanten(id),

    CONSTRAINT fk_training
        FOREIGN KEY (training_id)
        REFERENCES trainingen(id)
);
