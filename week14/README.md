# Week 14 - Databases

## Onderwerpen

Deze week heb ik geoefend met:

- JOIN
- LEFT JOIN
- GROUP BY
- aggregaties
- COUNT
- SUM
- AVG
- MIN
- MAX
- HAVING
- ORDER BY

## Wat heb ik gebouwd?

Ik heb een kleine database gemaakt voor een trainingsplatform.

De database bestaat uit drie tabellen:

1. studenten
2. trainingen
3. inschrijvingen

Met deze tabellen heb ik geoefend met het combineren en samenvatten van data.

## Belangrijkste inzichten

Een JOIN gebruik je om gegevens uit meerdere tabellen samen te voegen.

GROUP BY gebruik je om data per groep samen te vatten.

Aggregaties gebruik je om berekeningen te maken, zoals:

- aantal rijen tellen
- bedragen optellen
- gemiddelde berekenen
- laagste waarde vinden
- hoogste waarde vinden

## Voorbeelden

Aantal inschrijvingen per training:

```sql
SELECT 
    t.titel,
    COUNT(i.id) AS aantal_inschrijvingen
FROM trainingen t
JOIN inschrijvingen i 
    ON t.id = i.training_id
GROUP BY t.titel;
