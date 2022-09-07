SELECT DISTINCT prod_id FROM elementyzamowienia;
/*SELECT * FROM klienci;*/
SELECT kl_id FROM klienci;
SELECT prod_nazwa FROM produkty ORDER BY prod_nazwa;
SELECT prod_nazwa FROM produkty ORDER BY prod_nazwa;
SELECT prod_id, prod_cena, prod_nazwa FROM produkty ORDER BY 2,3;
SELECT prod_id, prod_cena, prod_nazwa FROM produkty ORDER BY prod_cena DESC;
SELECT prod_id, prod_cena, prod_nazwa FROM produkty ORDER BY prod_cena DESC, prod_nazwa;
SELECT kl_nazwa FROM klienci ORDER BY kl_nazwa DESC;
SELECT kl_id, zam_numer FROM zamowienia ORDER BY kl_id, zam_data DESC;
SELECT ilosc, cena_elem FROM elementyzamowienia ORDER BY ilosc DESC, cena_elem DESC;
SELECT prod_nazwa, prod_cena FROM produkty WHERE prod_cena = 9.99;
SELECT prod_nazwa, prod_cena FROM produkty WHERE prod_cena <= 30 ORDER BY prod_cena DESC;
SELECT dost_id, prod_nazwa FROM produkty WHERE dost_id != 'DLL01';
SELECT prod_nazwa, prod_cena FROM produkty WHERE prod_cena BETWEEN 10 and 30;
SELECT prod_nazwa FROM produkty WHERE prod_cena IS NULL;
SELECT kl_nazwa FROM klienci WHERE kl_email IS NULL;

#4 rozdział zadania
SELECT prod_id, prod_nazwa FROM produkty WHERE prod_cena = 12.99;
SELECT prod_id, prod_nazwa FROM produkty WHERE prod_cena >= 15;
SELECT DISTINCT zam_numer FROM elementyzamowienia WHERE ilosc >= 100;
SELECT prod_nazwa, prod_cena FROM produkty WHERE prod_cena BETWEEN 20 AND 40 ORDER BY prod_cena;

#5 rozdział
SELECT prod_id, prod_cena, prod_nazwa FROM produkty WHERE dost_id = 'DLL01' AND prod_cena <= 10;
SELECT prod_id, prod_cena, prod_nazwa FROM produkty WHERE dost_id = 'DLL01' OR dost_id = 'BRS01';
SELECT prod_nazwa, prod_cena FROM produkty WHERE (dost_id = 'DLL01' OR dost_id = 'BRS01') AND prod_cena >= 50;
SELECT prod_nazwa, prod_cena FROM produkty WHERE dost_id IN ('DLL01', 'BRS01') ORDER BY prod_nazwa;
SELECT prod_nazwa FROM produkty WHERE NOT dost_id = 'DLL01' ORDER BY prod_nazwa;
SELECT prod_nazwa FROM produkty WHERE dost_id <> 'DLL01' ORDER BY prod_nazwa;

#5 rozdział zadania
SELECT dost_nazwa FROM dostawcy WHERE dost_kraj = 'Polska' AND dost_woj = 'MAZ';
SELECT prod_id, ilosc FROM elementyzamowienia WHERE prod_id IN ('BR01', 'BR02', 'BR03') AND ilosc >= 100;
SELECT prod_nazwa, prod_cena FROM produkty WHERE prod_cena >= 20 AND prod_cena <= 40 ORDER BY prod_cena;

#6 rozdział
SELECT prod_id, prod_nazwa FROM produkty WHERE prod_nazwa LIKE 'rybka%';
SELECT prod_id, prod_nazwa FROM produkty WHERE prod_nazwa LIKE '%szmacianka%';
SELECT prod_id, prod_nazwa FROM produkty WHERE prod_nazwa LIKE 'pm%';
SELECT prod_id, prod_nazwa FROM produkty WHERE prod_nazwa LIKE 'pluszowy miś __ cm';
SELECT prod_id, prod_nazwa FROM produkty WHERE prod_nazwa LIKE 'pluszowy miś % cm';
SELECT kl_kontakt FROM klienci WHERE (kl_kontakt LIKE 'J%' OR kl_kontakt LIKE 'M%');

#6 rozdział zadania
SELECT prod_nazwa, prod_opis FROM produkty WHERE prod_opis LIKE '%szmacianka%';
SELECT prod_nazwa, prod_opis FROM produkty WHERE NOT prod_opis LIKE '%szmacianka%' ORDER BY prod_nazwa;
SELECT prod_nazwa, prod_opis FROM produkty WHERE prod_opis LIKE '%szmacianka%' AND prod_opis LIKE '%rybka%';
SELECT prod_nazwa, prod_opis FROM produkty WHERE prod_opis LIKE '%rybka%szmacianka%';

#7 rozdział
SELECT concat(dost_nazwa,' (', dost_kraj, ')') FROM dostawcy ORDER BY dost_nazwa;
SELECT concat(RTrim(dost_nazwa),' (', RTrim(dost_kraj), ')') FROM dostawcy ORDER BY dost_nazwa;
SELECT concat(dost_nazwa,' (', dost_kraj, ')') AS dost_tytul FROM dostawcy ORDER BY dost_nazwa;
SELECT concat(RTrim(dost_nazwa),' (', RTrim(dost_kraj), ')') AS dost_tytul FROM dostawcy ORDER BY dost_nazwa;
SELECT prod_id, ilosc, cena_elem, cena_elem* ilosc AS wartosc FROM elementyzamowienia WHERE zam_numer = 20008;

#7 rozdział zadania
SELECT dost_id, dost_nazwa AS dnazwa, dost_adres AS dadres, dost_miasto AS dmiasto FROM dostawcy ORDER BY dost_nazwa;
SELECT prod_id, prod_cena, prod_cena * 0.9 AS cena_wyprz FROM produkty;

#8 rozdział
SELECT dost_nazwa, UPPER(dost_nazwa) AS 'dost_nazwa_duże' FROM dostawcy ORDER BY dost_nazwa;
SELECT kl_nazwa, kl_kontakt FROM klienci WHERE kl_kontakt = 'Michael Znany';
SELECT kl_nazwa, kl_kontakt FROM klienci WHERE SOUNDEX(kl_kontakt) = SOUNDEX('Michael Znany');
SELECT zam_numer FROM zamowienia WHERE YEAR(zam_data) = 2020;

#8 rozdział zadania
SELECT kl_id, kl_kontakt, UPPER(CONCAT(LEFT(kl_kontakt, 2), LEFT(kl_miasto, 3))) AS 'uzyt_login' FROM klienci;
SELECT zam_numer, zam_data FROM zamowienia WHERE YEAR(zam_data) = 2020 AND MONTH(zam_data) = 1 ORDER BY zam_data;

#9 rozdział
SELECT AVG(prod_cena) AS 'sr_cena' FROM produkty;
SELECT AVG(prod_cena) AS 'sr_cena' FROM produkty WHERE dost_id = 'DLL01';
SELECT COUNT(*) AS liczba_klientów FROM klienci;
SELECT COUNT(kl_email) AS 'liczba klientów' FROM klienci;
SELECT MAX(prod_cena) AS 'maks_cena' FROM produkty;
SELECT MIN(prod_cena) AS 'min_cena' FROM produkty;
SELECT SUM(ilosc) AS 'elementy_zamowienia' FROM elementyzamowienia WHERE zam_numer = 20005;
SELECT SUM(ilosc*cena_elem) AS 'laczna_cena' FROM elementyzamowienia WHERE zam_numer = 20005;
SELECT AVG(DISTINCT prod_cena) AS sr_cena FROM produkty WHERE dost_id = 'DLL01';
SELECT COUNT(*) AS liczba_elementow, MIN(prod_cena) AS 'cena_min', MAX(prod_cena) AS 'cena_max', AVG(prod_cena) AS 'cena_sr' FROM produkty;

#9 rozdział zadania
SELECT SUM(ilosc) AS 'sprzedane_pr' FROM elementyzamowienia;
SELECT SUM(ilosc) AS 'sprzedane_pr' FROM elementyzamowienia WHERE prod_id = 'BR01';
SELECT MAX(prod_cena) AS cena_max FROM produkty WHERE prod_cena <= 10;

#10 rozdział
SELECT COUNT(*) AS liczba_prod FROM produkty WHERE dost_id = 'DLL01';
SELECT dost_id, COUNT(*) AS liczba_prod FROM produkty GROUP BY dost_id;
SELECT kl_id, COUNT(*) AS zamowienia FROM zamowienia GROUP BY kl_id HAVING COUNT(*) >= 2;
SELECT dost_id, COUNT(*) AS liczba_prod FROM produkty WHERE prod_cena >= 10 GROUP BY dost_id HAVING COUNT(*) >=2;
SELECT zam_numer, COUNT(*) AS elementy FROM elementyzamowienia GROUP BY zam_numer HAVING COUNT(*) >= 3;
SELECT zam_numer, COUNT(*) AS elementy FROM elementyzamowienia GROUP BY zam_numer HAVING COUNT(*) >= 3 ORDER BY elementy, zam_numer;

#10 rozdział zadania
SELECT zam_numer, COUNT(*) AS zam_pozycje FROM elementyzamowienia GROUP BY zam_numer ORDER BY zam_pozycje;
SELECT dost_id, MIN(prod_cena) FROM produkty GROUP BY dost_id ORDER BY prod_cena;
SELECT zam_numer FROM elementyzamowienia GROUP BY zam_numer HAVING SUM(ilosc) >= 100 ORDER BY zam_numer;
SELECT zam_numer FROM elementyzamowienia GROUP BY zam_numer HAVING SUM(ilosc * cena_elem) >= 1000 ORDER BY zam_numer;

#11 rozdział
SELECT zam_numer FROM elementyzamowienia WHERE prod_id = 'RGAN01';
SELECT kl_id FROM zamowienia WHERE zam_numer IN (20007, 20008);
SELECT kl_id FROM zamowienia WHERE zam_numer IN (SELECT zam_numer FROM elementyzamowienia WHERE prod_id = 'RGAN01');
SELECT kl_nazwa, kl_kontakt FROM klienci WHERE kl_id IN ('1000000004', '1000000005');
SELECT kl_nazwa, kl_kontakt FROM klienci WHERE kl_id IN
 (SELECT kl_id FROM zamowienia WHERE zam_numer IN
 (SELECT zam_numer FROM elementyzamowienia WHERE prod_id = 'RGAN01'));
 SELECT COUNT(*) AS zamowienia FROM zamowienia WHERE kl_id = '1000000001';
 SELECT kl_nazwa, kl_woj, (SELECT COUNT(*) FROM zamowienia WHERE kl_id = klienci.kl_id) AS zamowienia FROM klienci ORDER BY kl_nazwa;
 SELECT kl_nazwa, kl_woj, (SELECT COUNT(*) FROM zamowienia WHERE kl_id = kl_id) AS zamowienia FROM klienci ORDER BY kl_nazwa; #BŁĄD
 
 #11 rozdział zadania
 SELECT kl_id FROM zamowienia WHERE zam_numer IN (SELECT zam_numer FROM elementyzamowienia WHERE cena_elem >= 10);
 SELECT kl_id, zam_data FROM zamowienia WHERE zam_numer IN (SELECT zam_numer FROM elementyzamowienia WHERE prod_id = 'BR01');
 SELECT kl_email FROM klienci
 WHERE kl_id IN (SELECT kl_id FROM zamowienia WHERE zam_numer IN
 (SELECT zam_numer FROM elementyzamowienia WHERE prod_id = 'BR01'));
 SELECT kl_id, (SELECT SUM(cena_elem * ilosc)
 FROM elementyzamowienia
 WHERE zamowienia.zam_numer = elementyzamowienia.zam_numer) AS wartosc_zam
 FROM zamowienia
 ORDER BY wartosc_zam DESC;
 SELECT prod_nazwa, (SELECT SUM(ilosc)
 FROM elementyzamowienia WHERE produkty.prod_id = elementyzamowienia.prod_id) AS sprzedano_sztuk
 FROM produkty;
 
 #12 rozdział
 SELECT dost_nazwa, prod_nazwa, prod_cena FROM dostawcy, produkty WHERE dostawcy.dost_id = produkty.dost_id;
 SELECT dost_nazwa, prod_nazwa, prod_cena FROM dostawcy, produkty;
 SELECT dost_nazwa, prod_nazwa, prod_cena FROM dostawcy INNER JOIN produkty ON dostawcy.dost_id = produkty.dost_id;
 SELECT prod_nazwa, dost_nazwa, prod_cena, ilosc
 FROM elementyzamowienia, dostawcy, produkty
 WHERE dostawcy. dost_id = produkty.dost_id 
 AND elementyzamowienia.prod_id = produkty.prod_id
 AND zam_numer = 20007;
 SELECT kl_nazwa, kl_kontakt
 FROM klienci
 WHERE kl_id IN 
 (SELECT kl_id FROM zamowienia
 WHERE zam_numer IN 
 (SELECT zam_numer
 FROM elementyzamowienia WHERE prod_id = 'RGAN01'));
 SELECT kl_nazwa, kl_kontakt 
 FROM klienci, zamowienia, elementyzamowienia
 WHERE klienci.kl_id = zamowienia.kl_id 
 AND elementyzamowienia.zam_numer = zamowienia.zam_numer
 AND prod_id = 'RGAN01';
 
 #12 rodzdział zadania
 SELECT kl_nazwa, zam_numer
 FROM klienci, zamowienia
 WHERE klienci.kl_id = zamowienia.kl_id
 ORDER BY kl_nazwa, zam_numer;
 SELECT kl_nazwa, zam_numer
 FROM klienci INNER JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id
 ORDER BY kl_nazwa, zam_numer;
 SELECT kl_nazwa, zam_numer, 
 (SELECT SUM(cena_elem * ilosc) FROM elementyzamowienia 
 WHERE elementyzamowienia.zam_numer = zamowienia.zam_numer) AS wartosc_zam
 FROM klienci, zamowienia
 WHERE klienci.kl_id = zamowienia.kl_id
 ORDER BY kl_nazwa, zam_numer;
 SELECT kl_id, zam_data 
 FROM zamowienia, elementyzamowienia
 WHERE zamowienia.zam_numer = elementyzamowienia.zam_numer
 AND elementyzamowienia.prod_id = 'BR01'
 ORDER BY zam_data;
 
 SELECT kl_nazwa, SUM(cena_elem * ilosc) AS wydatki_razem
 FROM klienci, zamowienia, elementyzamowienia
 WHERE klienci.kl_id = zamowienia.kl_id AND
 zamowienia.zam_numer = elementyzamowienia.zam_numer
 GROUP BY kl_nazwa HAVING SUM(cena_elem * ilosc) >= 1000
 ORDER BY kl_nazwa;
 
 #13 rozdział
 SELECT RTRIM(dost_nazwa) + ' (' + RTRIM(dost_kraj) +')' AS dost_tytul
 FROM dostawcy
 ORDER BY dost_nazwa;
 SELECT kl_nazwa, kl_kontakt FROM klienci AS K, zamowienia AS Z, elementyzamowienia AS E
 WHERE K.kl_id = Z.kl_id
 AND E.zam_numer = Z.zam_numer
 AND prod_id = 'RGAN01';
 SELECT kl_id, kl_nazwa, kl_kontakt
 FROM klienci
 WHERE kl_nazwa = (SELECT kl_nazwa 
					FROM klienci
                    WHERE kl_kontakt = 'Danuta Sroka');
SELECT k1.kl_id, k1.kl_nazwa, k1.kl_kontakt
FROM klienci AS k1, klienci AS k2
WHERE k1.kl_nazwa = k2.kl_nazwa
AND k2.kl_kontakt = 'Danuta Sroka';
SELECT K.*, Z.zam_numer, Z.zam_data, E.prod_id, E.ilosc, E.cena_elem
FROM klienci AS K, zamowienia AS Z, elementyzamowienia AS E
WHERE K.kl_id = Z.kl_id
AND E.zam_numer = Z.zam_numer 
AND prod_id = 'RGAN01';
SELECT klienci.kl_id, zamowienia.zam_numer
FROM klienci
INNER JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id;
SELECT klienci.kl_id, zamowienia.zam_numer
FROM klienci
LEFT OUTER JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id;
SELECT klienci.kl_id, zamowienia.zam_numer
FROM klienci
RIGHT OUTER JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id;
SELECT klienci.kl_id, COUNT(zamowienia.zam_numer) AS liczba_zam
FROM klienci
INNER JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id
GROUP BY klienci.kl_id;
SELECT klienci.kl_id, COUNT(zamowienia.zam_numer) AS liczba_zam
FROM klienci
LEFT OUTER JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id
GROUP BY klienci.kl_id;

#13 rozdział zadania
SELECT klienci.kl_nazwa, zamowienia.zam_numer
FROM klienci
INNER JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id
ORDER BY klienci.kl_nazwa;
SELECT klienci.kl_nazwa, zamowienia.zam_numer
FROM klienci
LEFT OUTER JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id
ORDER BY klienci.kl_nazwa;
SELECT produkty.prod_nazwa, elementyzamowienia.zam_numer
FROM produkty
LEFT OUTER JOIN elementyzamowienia ON produkty.prod_id = elementyzamowienia.prod_id
ORDER BY prod_nazwa;
SELECT produkty.prod_nazwa, COUNT(zam_numer) AS liczba_zam
FROM produkty
LEFT OUTER JOIN elementyzamowienia ON produkty.prod_id = elementyzamowienia.prod_id
GROUP BY prod_nazwa;
SELECT dostawcy.dost_id, COUNT(produkty.prod_id)
FROM dostawcy
LEFT OUTER JOIN produkty ON dostawcy.dost_id = produkty.dost_id
GROUP BY dostawcy.dost_id;

#14 rozdział
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_woj IN ('MAL', 'MAZ', 'WKP');
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_nazwa = ('Zabawa dla wszystkich');
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_woj IN ('MAL', 'MAZ', 'WKP')
UNION
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_nazwa = ('Zabawa dla wszystkich');
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_woj IN ('MAL', 'MAZ', 'WKP')
OR kl_nazwa = 'Zabawa dla wszystkich';
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_woj IN ('MAL', 'MAZ', 'WKP')
UNION ALL
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_nazwa = ('Zabawa dla wszystkich');
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_woj IN ('MAL', 'MAZ', 'WKP')
UNION ALL
SELECT kl_nazwa, kl_kontakt, kl_email
FROM klienci
WHERE kl_nazwa = ('Zabawa dla wszystkich')
ORDER BY kl_nazwa, kl_kontakt;

#14 rozdział zadania
SELECT prod_id, ilosc
FROM elementyzamowienia
WHERE ilosc = 100
UNION
SELECT prod_id, ilosc
FROM elementyzamowienia
WHERE prod_id LIKE 'BNBG%'
ORDER BY prod_id;
SELECT prod_id, ilosc
FROM elementyzamowienia
WHERE ilosc = 100 OR prod_id LIKE 'BNBG%'
ORDER BY prod_id;
SELECT prod_nazwa FROM produkty
UNION
SELECT kl_nazwa FROM klienci
ORDER BY prod_nazwa;

#15 rozdział
INSERT INTO klienci
VALUES('1000000006', 
'Zabawkolandia', 
'Miodowa 12',
'Katowice',
'SLK',
'41-200',
'Polska',
NULL,
NULL);
INSERT INTO klienci
(kl_id,
kl_nazwa,
kl_adres,
kl_miasto,
kl_woj,
kl_kod,
kl_kraj,
kl_kontakt,
kl_email)
VALUES
('1000000006',
'Zabawkolandia',
'Miodowa 6',
'Katowice',
'SLK',
'41-200',
'Polska',
NULL,
NULL);
INSERT INTO klienci (kl_id,
kl_kontakt,
kl_email,
kl_nazwa,
kl_adres,
kl_miasto,
kl_woj,
kl_kod,
kl_kraj)
SELECT kl_id,
kl_kontakt,
kl_email,
kl_nazwa,
kl_adres,
kl_miasto,
kl_woj,
kl_kod,
kl_kraj
FROM kliencinowi;
CREATE TABLE kopiaklienci AS SELECT * FROM klienci;
INSERT INTO klienci
(kl_id,
kl_nazwa,
kl_adres,
kl_miasto,
kl_woj,
kl_kod,
kl_kraj,
kl_kontakt,
kl_email)
VALUES 
('1000000027',
'Willi',
'Edelmana 32',
'Grzów Wlkp',
'LUB',
'41-200',
'Polska',
NULL,
NULL);
CREATE TABLE kopiazamowienia AS SELECT * FROM zamowienia;
CREATE TABLE kopiaelementyzamowienia AS SELECT * FROM elementyzamowienia;

#16 rozdział
UPDATE klienci 
SET kl_email = 'ms@skladzabawek.pl'
WHERE kl_id = '1000000005';
UPDATE klienci 
SET kl_kontakt = 'Marek Zatowski',
kl_email = 'ms@skladzabawek.pl'
WHERE kl_id = '1000000006';
UPDATE klienci 
SET kl_email = NULL
WHERE kl_id = '1000000005';
DELETE FROM klienci
WHERE kl_id = '1000000006';

#16 rozdział zadania
UPDATE dostawcy
SET dostawcy.dost_woj = UPPER(dostawcy.dost_woj);
UPDATE klienci
SET klienci.kl_woj = UPPER(klienci.kl_woj);
DELETE FROM klienci
WHERE kl_id = '1000000027';

#17 rozdział
ALTER TABLE dostawcy
ADD dost_telefon CHAR(20);
ALTER TABLE dostawcy
DROP COLUMN dost_telefon;
DROP TABLE kopiaklienci;

#17 rozdział zadania
ALTER TABLE dostawcy
ADD dost_witryna CHAR(100);
UPDATE dostawcy
SET dostawcy.dost_witryna = 'pornhub.pl';

#18 rozdział
SELECT kl_nazwa, kl_kontakt
FROM klienci, zamowienia, elementyzamowienia
WHERE klienci.kl_id = zamowienia.kl_id AND
elementyzamowienia.zam_numer = zamowienia.zam_numer
AND prod_id = 'RGAN01';
SELECT kl_nazwa, kl_kontakt
FROM produktyklientow
WHERE prod_id = "RGAN01";
CREATE VIEW produktyklientow AS
SELECT kl_nazwa, kl_kontakt, prod_id
FROM klienci, zamowienia, elementyzamowienia
WHERE klienci.kl_id = zamowienia.kl_id AND
elementyzamowienia.zam_numer = zamowienia.zam_numer;
SELECT kl_nazwa, kl_kontakt
FROM produktyklientow
WHERE prod_id = "RGAN01";
SELECT CONCAT(RTRIM(dost_nazwa) + ' (' + RTRIM(dost_kraj) + ')')
AS dost_tytul
FROM dostawcy
ORDER BY dost_nazwa;
CREATE VIEW lokalizacjaklientow AS
SELECT concat(RTrim(dost_nazwa),' (', RTrim(dost_kraj), ')') 
AS dost_tytul
FROM dostawcy;
SELECT * FROM lokalizacjaklientow;
CREATE VIEW adresyemailklientow AS 
SELECT kl_id, kl_nazwa, kl_email
FROM klienci
WHERE kl_email IS NOT NULL;
SELECT * FROM adresyemailklientow;
SELECT prod_id, ilosc, cena_elem, ilosc * cena_elem AS wartosc
FROM elementyzamowienia
WHERE zam_numer = 20008;
CREATE VIEW wartoscielementowzamowienia AS
SELECT zam_numer, prod_id, ilosc, cena_elem, ilosc * cena_elem AS wartosc
FROM elementyzamowienia;
SELECT * FROM wartoscielementowzamowienia
WHERE zam_numer = 20008;

#18 rozdział zadania
CREATE VIEW kliencizzamowieniami AS
SELECT klienci.kl_id, klienci.kl_nazwa, klienci.kl_adres, klienci.kl_miasto, klienci.kl_woj, klienci.kl_kod, klienci.kl_kraj, klienci.kl_kontakt, klienci.kl_email
FROM klienci
JOIN zamowienia ON klienci.kl_id = zamowienia.kl_id;
SELECT * FROM kliencizzamowieniami;
