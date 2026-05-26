# Week 15 - PostgreSQL installeren en database schema ontwerpen

## Doel van deze week

In deze week heb ik geleerd hoe ik PostgreSQL installeer, een database aanmaak en een database schema ontwerp.

## Onderwerpen

- PostgreSQL installeren
- PostgreSQL starten en controleren
- Werken met psql
- Database aanmaken
- Tabellen ontwerpen
- Primary keys gebruiken
- Foreign keys gebruiken
- Relaties tussen tabellen maken
- SQL-bestanden uitvoeren
- Testdata toevoegen
- JOIN-query uitvoeren

## Project

Ik heb een kleine training-database gemaakt met drie tabellen:

1. klanten
2. trainingen
3. bestellingen

## Relaties

- Een klant kan meerdere bestellingen plaatsen.
- Een training kan meerdere keren besteld worden.
- Een bestelling hoort bij één klant en één training.

## Bestanden

- `schema.sql` - maakt de tabellen aan
- `data.sql` - voegt testdata toe
- `queries.sql` - bevat oefenqueries

## Belangrijkste leerpunten

Ik heb geleerd dat een database schema de bouwtekening van een database is.  
Een goed schema helpt om gegevens netjes op te slaan en later makkelijk op te vragen met SQL.
