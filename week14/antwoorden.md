SELECT 
    s.naam,
    t.titel
FROM inschrijvingen i
JOIN studenten s 
    ON i.student_id = s.id
JOIN trainingen t 
    ON i.training_id = t.id;

SELECT 
    s.naam,
    t.titel,
    i.inschrijfdatum
FROM inschrijvingen i
JOIN studenten s 
    ON i.student_id = s.id
JOIN trainingen t 
    ON i.training_id = t.id;

SELECT 
    s.naam,
    t.titel
FROM inschrijvingen i
JOIN studenten s 
    ON i.student_id = s.id
JOIN trainingen t 
    ON i.training_id = t.id
WHERE t.titel = 'SQL Basis';

SELECT 
    s.naam,
    s.stad,
    t.titel
FROM inschrijvingen i
JOIN studenten s 
    ON i.student_id = s.id
JOIN trainingen t 
    ON i.training_id = t.id
WHERE s.stad = 'Rotterdam';

SELECT COUNT(*) AS aantal_studenten
FROM studenten;

SELECT COUNT(*) AS aantal_inschrijvingen
FROM inschrijvingen;

SELECT AVG(prijs) AS gemiddelde_prijs
FROM trainingen;

SELECT 
    MIN(prijs) AS goedkoopste_prijs,
    MAX(prijs) AS duurste_prijs
FROM trainingen;

SELECT 
    t.titel,
    COUNT(i.id) AS aantal_inschrijvingen
FROM trainingen t
JOIN inschrijvingen i 
    ON t.id = i.training_id
GROUP BY t.titel;

SELECT 
    t.titel,
    SUM(t.prijs) AS omzet
FROM trainingen t
JOIN inschrijvingen i 
    ON t.id = i.training_id
GROUP BY t.titel;

SELECT 
    SUM(t.prijs) AS totale_omzet
FROM inschrijvingen i
JOIN trainingen t 
    ON i.training_id = t.id;

SELECT 
    t.titel,
    COUNT(i.id) AS aantal_inschrijvingen
FROM trainingen t
JOIN inschrijvingen i 
    ON t.id = i.training_id
GROUP BY t.titel
HAVING COUNT(i.id) > 1;

SELECT 
    t.titel,
    COUNT(i.id) AS aantal_inschrijvingen
FROM trainingen t
LEFT JOIN inschrijvingen i 
    ON t.id = i.training_id
GROUP BY t.titel
ORDER BY aantal_inschrijvingen DESC;

SELECT 
    t.titel,
    SUM(t.prijs) AS omzet
FROM trainingen t
JOIN inschrijvingen i 
    ON t.id = i.training_id
GROUP BY t.titel
ORDER BY omzet DESC;

SELECT 
    stad,
    COUNT(*) AS aantal_studenten
FROM studenten
GROUP BY stad
ORDER BY aantal_studenten DESC;

