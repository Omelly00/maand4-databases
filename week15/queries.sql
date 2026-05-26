-- Week 15 - Oefenqueries

-- 1. Toon alle klanten
SELECT * FROM klanten;

-- 2. Toon alle trainingen
SELECT * FROM trainingen;

-- 3. Toon alle bestellingen
SELECT * FROM bestellingen;

-- 4. Toon bestellingen met klantnaam en trainingnaam
SELECT
    bestellingen.id AS bestelling_id,
    klanten.naam AS klantnaam,
    trainingen.naam AS trainingnaam,
    trainingen.prijs,
    bestellingen.besteldatum
FROM bestellingen
JOIN klanten
    ON bestellingen.klant_id = klanten.id
JOIN trainingen
    ON bestellingen.training_id = trainingen.id;

-- 5. Toon totale omzet per training
SELECT
    trainingen.naam AS trainingnaam,
    SUM(trainingen.prijs) AS totale_omzet
FROM bestellingen
JOIN trainingen
    ON bestellingen.training_id = trainingen.id
GROUP BY trainingen.naam;
