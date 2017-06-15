-- CREATE VIEW KONTA_START AS SELECT LOGIN,PASSWORD,ACCOUNT_FUNCTION FROM ACCOUNT WHERE ACTIVE=1;

DELETE FROM WYPOZYCZALNIA.ACCOUNT;
DELETE FROM WYPOZYCZALNIA.ACCOUNT_FUNCTION;
DELETE FROM WYPOZYCZALNIA.EQUIPMENT;
DELETE FROM WYPOZYCZALNIA.EQUIPMENT_STATUS;
DELETE FROM WYPOZYCZALNIA.LICENSE_TYPE;
DELETE FROM WYPOZYCZALNIA.RESERV;
DELETE FROM WYPOZYCZALNIA.RESERV_STATUS;
DELETE FROM WYPOZYCZALNIA.USE_PLACE;

INSERT INTO WYPOZYCZALNIA.ACCOUNT (ID, ACCOUNT_FUNCTION, ACTIVE, EMAIL, LOGIN, NAME, PASSWORD, PHONE, SURNAME) 
VALUES (1, 'A', 'y', 'test@test.pl', 'admin', 'Przemek', 'admin', '111111111', 'Przyslo');

INSERT INTO WYPOZYCZALNIA.ACCOUNT (ID, ACCOUNT_FUNCTION, ACTIVE, EMAIL, LOGIN, NAME, PASSWORD, PHONE, SURNAME) 
VALUES (2, 'K', 'y', 'kierownik@kierownik.pl', 'kierownik', 'Jan', 'kierownik', '222222222', 'Tomaszak');

INSERT INTO WYPOZYCZALNIA.ACCOUNT (ID, ACCOUNT_FUNCTION, ACTIVE, EMAIL, LOGIN, NAME, PASSWORD, PHONE, SURNAME) 
VALUES (3, 'P', 'y', 'pracownik@pracownik.pl', 'pracownik', 'Zenon', 'pracownik', '333333333', 'Pasztet');

INSERT INTO WYPOZYCZALNIA.ACCOUNT_FUNCTION (ID, FUNCTION_NAME, ACCOUNT_ID) 
VALUES (1, 'Administrator', 1);

INSERT INTO WYPOZYCZALNIA.ACCOUNT_FUNCTION (ID, FUNCTION_NAME, ACCOUNT_ID) 
VALUES (2, 'Kierownik', 2);

INSERT INTO WYPOZYCZALNIA.ACCOUNT_FUNCTION (ID, FUNCTION_NAME, ACCOUNT_ID) 
VALUES (3, 'Pracownik', 3);

INSERT INTO WYPOZYCZALNIA.EQUIPMENT_STATUS (ID, EQUIPMENT_STATUS_NAME) 
VALUES (1, 'Sprawny');

INSERT INTO WYPOZYCZALNIA.EQUIPMENT_STATUS (ID, EQUIPMENT_STATUS_NAME) 
VALUES (2, 'W naprawie');

INSERT INTO WYPOZYCZALNIA.EQUIPMENT_STATUS (ID, EQUIPMENT_STATUS_NAME) 
VALUES (3, 'Niekompletny');

INSERT INTO WYPOZYCZALNIA.EQUIPMENT_STATUS (ID, EQUIPMENT_STATUS_NAME) 
VALUES (4, 'Uszkodzony');

INSERT INTO WYPOZYCZALNIA.USE_PLACE (ID, BUILDING, FLOOR, PLACE) 
VALUES (1, 'Budynek A', 1, 'sala208');

INSERT INTO WYPOZYCZALNIA.USE_PLACE (ID, BUILDING, FLOOR, PLACE) 
VALUES (2, 'Budynek A', 1, 'sala201');

INSERT INTO WYPOZYCZALNIA.USE_PLACE (ID, BUILDING, FLOOR, PLACE) 
VALUES (3, 'Budynek B', 0, 'sala516');

INSERT INTO WYPOZYCZALNIA.LICENSE_TYPE (ID, LICENSE_END, LICENSE_NAME, LICENSE_SERIAL, LICENSE_START) 
VALUES (1, '2017-11-01', 'OEM', 'asdfg-qwert', '2015-11-01');

INSERT INTO WYPOZYCZALNIA.LICENSE_TYPE (ID, LICENSE_END, LICENSE_NAME, LICENSE_SERIAL, LICENSE_START) 
VALUES (2, '2016-01-01', 'BOX', 'ghjkl-poi87', '2010-01-01');

INSERT INTO WYPOZYCZALNIA.LICENSE_TYPE (ID, LICENSE_END, LICENSE_NAME, LICENSE_SERIAL, LICENSE_START) 
VALUES (3, '2017-06-15', 'Educational', 'zxcvb-12345', '2019-01-01');

INSERT INTO WYPOZYCZALNIA.RESERV (ID, DESCRIPTION, RESERVATION_END, RESERVATION_MADE_DATE, RESERVATION_START, ACCOUNT_ID, RESERV_STATUS_ID) 
VALUES (1, 'Do celow szkoleniowych', '2017-09-01', '2017-06-01', '2017-07-01', 1, 1);

INSERT INTO WYPOZYCZALNIA.RESERV (ID, DESCRIPTION, RESERVATION_END, RESERVATION_MADE_DATE, RESERVATION_START, ACCOUNT_ID, RESERV_STATUS_ID) 
VALUES (2, 'Do celów prywatnych', '2017-12-01', '2017-06-15', '2017-07-15', 2, 2);

INSERT INTO WYPOZYCZALNIA.RESERV (ID, DESCRIPTION, RESERVATION_END, RESERVATION_MADE_DATE, RESERVATION_START, ACCOUNT_ID, RESERV_STATUS_ID) 
VALUES (3, 'Wyjazd sluzbowy', '2017-06-29', '2017-06-15', '2017-06-20', 3, 1);

INSERT INTO WYPOZYCZALNIA.RESERV_STATUS (ID, RESERVATION_STATUS_NAME) 
VALUES (1, 'Wyjazd sluzbowy', '2017-06-29', '2017-06-15', '2017-06-20', 3, 1);


INSERT INTO WYPOZYCZALNIA.EQUIPMENT (ID, NAME, RENT_PERMISSION, TYPE, EQUIPMENT_STATUS_ID, LICENSE_TYPE_ID, RESERV_ID, USE_PLACE_ID) 
VALUES (1, 'Komputer', 't', 'stacjonarny',1, 1, 1, 1);

-- INSERT INTO WYPOZYCZALNIA.EQUIPMENT (ID, NAME, RENT_PERMISSION, TYPE, EQUIPMENT_STATUS_ID, LICENSE_TYPE_ID, RESERV_ID, USE_PLACE_ID) 
-- VALUES (2, 'Laptop1', 't', 'przenosny',1, 2, 2, 2);
-- 
-- INSERT INTO WYPOZYCZALNIA.EQUIPMENT (ID, NAME, RENT_PERMISSION, TYPE, EQUIPMENT_STATUS_ID, LICENSE_TYPE_ID, RESERV_ID, USE_PLACE_ID) 
-- VALUES (3, 'Rzutnik', 'n', 'stacjonarny',1, 2, 2, 3);
-- INSERT INTO WYPOZYCZALNIA.DANEPERSONALNE (ID, EMAIL, IMIE, NAZWISKO, TELEFON) VALUES (2, 'prac@here.com', 'Stefan', 'Pracowniczy', '987654321');
-- INSERT INTO WYPOZYCZALNIA.DANEPRACOWNIK (ID, INTERCOM) VALUES (2, '14');

-- INSERT INTO WYPOZYCZALNIA.KONTO (ID, TYP, AKTYWNE, HASLO, LOGIN, POTWIERDZONE, WERSJA) VALUES (3, 'ADMIN', 1, 'hasadmin', 'admin', 1, 1);
-- INSERT INTO WYPOZYCZALNIA.DANEPERSONALNE (ID, EMAIL, IMIE, NAZWISKO, TELEFON) VALUES (3, 'admin@here.com', 'Zdzisław', 'Administratorski', '555666555');
-- INSERT INTO WYPOZYCZALNIA.DANEADMINISTRATOR (ID, ALARMNUMBER) VALUES (3, '13');
-- 
-- INSERT INTO WYPOZYCZALNIA.KATEGORIA (ID, NAZWA, OPIS, WERSJA) VALUES (1, 'Różności', 'Przyczłapka', 0);
-- INSERT INTO WYPOZYCZALNIA.KATEGORIA (ID, NAZWA, OPIS, WERSJA) VALUES (2, 'Edukacja', 'Produkty do użytku w szkołach', 0);
-- INSERT INTO WYPOZYCZALNIA.KATEGORIA (ID, NAZWA, OPIS, WERSJA) VALUES (3, 'RTV', 'Elektronika domowa', 0);
-- 
-- INSERT INTO WYPOZYCZALNIA.PRODUKT (ID, CENA, NAZWA, OPIS, STAN, WERSJA) VALUES (1, 10.00, 'Przyczłapka', 'Do bulbulatora', 7, 0);
-- INSERT INTO WYPOZYCZALNIA.PRODUKT (ID, CENA, NAZWA, OPIS, STAN, WERSJA) VALUES (2, 7.65, 'Bulbulator', 'Bez przyczłapek', 13, 0);
-- INSERT INTO WYPOZYCZALNIA.PRODUKT (ID, CENA, NAZWA, OPIS, STAN, WERSJA) VALUES (3, 2.99, 'Bateryjka', NULL, 118, 0);
-- INSERT INTO WYPOZYCZALNIA.PRODUKT (ID, CENA, NAZWA, OPIS, STAN, WERSJA) VALUES (4, 59.90, 'Globus', 'Z podświetleniem', 1, 0);
-- INSERT INTO WYPOZYCZALNIA.PRODUKT (ID, CENA, NAZWA, OPIS, STAN, WERSJA) VALUES (5, 12.00, 'Dzwonek ręczny', 'Drewno + mosiądz', 3, 0);
-- INSERT INTO WYPOZYCZALNIA.PRODUKT (ID, CENA, NAZWA, OPIS, STAN, WERSJA) VALUES (6, 265, 'Patefon', 'Typu korbotronik', 1, 0);
-- INSERT INTO WYPOZYCZALNIA.PRODUKT (ID, CENA, NAZWA, OPIS, STAN, WERSJA) VALUES (7, 25.55, 'Radio', 'Odbiera tylko słuszne stacje', 2, 0);
-- 
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (1, 1);
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (2, 1);
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (3, 1);
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (3, 3);
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (4, 1);
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (4, 2);
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (5, 2);
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (6, 3);
-- INSERT INTO WYPOZYCZALNIA.PRODUKTYKATEGORIE (PRODUKT_ID, KATEGORIA_ID) VALUES (7, 3);
