INSERT INTO Wydawnictwa 
	(nazwa, miejscowosc, ulica, email, numer_telefonu) 
VALUES 
	('Wydawnictwo ABC', 'Warszawa', 'Nowogrodzka 12', 'kontakt@abc.pl', '123-456-789'),
    ('Wydawnictwo XYZ', 'Kraków', 'Sławkowska 3', 'biuro@xyz.pl', '987-654-321'),
    ('Wydawnictwo DEF', 'Wrocław', 'Kwiska 10', 'biuro@def.pl', '111-111-111'),
    ('Wydawnictwo GHI', 'Poznań', 'Półwiejska 20', 'kontakt@ghi.pl', '222-222-222'),
    ('Wydawnictwo JKL', 'Gdańsk', 'Długa 30', 'kontakt@jkl.pl', '333-333-333'),
    ('Wydawnictwo MNO', 'Szczecin', 'Krzywoustego 40', 'biuro@mno.pl', '444-444-444'),
    ('Wydawnictwo PQR', 'Lublin', 'Krakowskie Przedmieście 50', 'kontakt@pqr.pl', '555-555-555'),
    ('Wydawnictwo STU', 'Białystok', 'Kościuszki 60', 'biuro@stu.pl', '666-666-666'),
    ('Wydawnictwo VWX', 'Bydgoszcz', 'Fordońska 70', 'kontakt@vwx.pl', '777-777-777'),
    ('Wydawnictwo YZ', 'Rzeszów', 'Rejtana 80', 'biuro@yz.pl', '888-888-888'),
    ('Wydawnictwo 123', 'Toruń', 'Sienkiewicza 90', 'kontakt@123.pl', '999-999-999'),
    ('Wydawnictwo 456', 'Kielce', 'Świętokrzyska 100', 'biuro@456.pl', '000-000-000');

INSERT INTO Kategorie 
	(nazwa) 
VALUES
	('Thriller'),
    ('Kryminał'),
    ('Literatura faktu'),
    ('Powieść obyczajowa'),
    ('Fantastyka'),
    ('Sci-fi'),
    ('Romans'),
    ('Komiks'),
    ('Poradnik'),
    ('Biografia');

INSERT INTO Autorzy
	(imie, nazwisko, data_urodzenia, narodowosc) 
VALUES
	('Adam', 'Mickiewicz', '1798-12-24', 'Polska'),
	('Juliusz', 'Słowacki', '1849-09-04', 'Polska'),
	('Henryk', 'Sienkiewicz', '1846-05-05', 'Polska'),
	('Bolesław', 'Prus', '1847-08-20', 'Polska'),
	('Maria', 'Konopnicka', '1842-07-23', 'Polska'),
	('Joanne', 'Murray', '1965-07-31', 'Wielka Brytannia');

INSERT INTO Lektorzy 
	(imie, nazwisko) 
VALUES 
	('Jan', 'Kowalski'),
	('Anna', 'Nowak'),
	('Tomasz', 'Wiśniewski'),
	('Barbara', 'Kowalczyk'),
	('Paweł', 'Mazur');
	
INSERT INTO Kody_Rabatowe
	(kod, kwota, data_waznosci)
VALUES 
	('RABAT10', 0, '2023-12-31 23:59:59'),
    ('QWERTY', 0, '2023-09-30 18:35:55'),
    ('RABAT50', 50.00, '2023-06-20 22:22:12');

INSERT INTO Pozycje 
	(ISBN, nazwa, kategoria, rodzaj, data_wydania, wydawnictwo, cena, autor, liczba_stron, rodzaj_okladki, rozmiar_pliku_PDF, rozmiar_pliku_Mobi, rozmiar_pliku_ePub, rozmiar_pliku_MP3, czas_trwania, lektor)
VALUES 
	('123-456-789', 'Złodziejka książek', 4, 'K', '2020-01-01', 2, 19.99, 1, 384, 'twarda', null, null, null, null, null, null),
    ('987-654-321', 'Morderstwo w Orient Expressie', 6, 'E', '2020-02-14', 4, 29.99, 6, 256, null, null, 28.95, 30.70, null, null, null),
    ('978-3-16-148410-0', 'Harry Potter i Kamień Filozoficzny', 1, 'K', '1997-06-26', 3, 34.99, 6, 340, 'miękka', null, null, null, null, null, null),
	('978-1-56619-909-4', 'Dziennik Anny Frank', 2, 'E', '1947-06-25', 2, 12.99, 2, 120, null, 39.23, 30.45, 45.55, null, null, null),
	('978-3-16-148410-0', 'Pan Tadeusz', 1, 'E', '1834-06-26', 1, 14.99, 1, 223, null, 20.3, 20.1, 20.2, null, null, null),
	('978-3-16-148411-7', 'Kordian', 1, 'K', '1834-06-26', 2, 29.99, 2, 249, 'miękka', null, null, null, null, null, null),
	('978-3-16-148412-4', 'Lalka', 1, 'A', '1834-06-26', 3, 19.99, 4, 315, null, null, null, null, 500, '45:39:49', 2);

INSERT INTO Uzytkownicy 
	(email, haslo, imie, nazwisko, miejscowosc, ulica, numer_telefonu)
VALUES
    ('jankowalski@example.com', '$2a$10$3xl8Wy7l6/cC6rTfT8MzW.ZvN.H/Nb/sD8xo/s49vh1SZSV7Zi9Gd', 'Jan', 'Kowalski', 'Warszawa', 'ul. Nowowiejska', '123-456-789'),
    ('annanowak@example.com', '$2a$12$DmssWJxWqHJ9znDifKD2w.cCXMn9O5uEXRG3pVxO6MJX28PWAqj72', 'Anna', 'Nowak', 'Poznań', 'ul. Paderewskiego', '987-654-321'),
    ('tomaswisnie@example.com', '$2a$12$gwcLRe10Bn5lbeUIkw7mLOybaZWOWY67UCsujpWkYWtG4V9.4cMO.', 'Tomasz', 'Wiśniewski', 'Kraków', 'ul. Planty', '561-238-981'),
    ('kowalczyk56@example.com', '$2a$12$4R5eFlSoK3v6qvh2lRXxgeCLM6zO11qZOCQpxiMhUaYihb.WZhr0W', 'Barbara', 'Kowalczyk', 'Gdańsk', 'ul. Piłsudskiego', '105-951-226'),
    ('mazur14pawel@example.com', '$2a$12$27O22a0FVV.cF1lS/Al3SuhNxCJ/lNSvDqbu82r.nrE7iR0m6GSrS', 'Paweł', 'Mazur', 'Wrocław', 'ul. Grunwaldzka', '989-371-645');

INSERT INTO Zamowienia 
	(uzytkownik, data_zakupu, wartosc, kod_rabatowy)
VALUES 
	(1, '2022-03-04 12:00:00', 34.99, null),
	(2, '2022-03-05 14:30:00', 49.98, 1),
    (1, '2022-04-13 11:30:00', 100.00, null),
    (5, '2022-04-21 14:10:23', 90.60, null),
    (2, '2022-06-03 21:36:24', 150.00, null),
    (4, '2022-06-23 08:21:23', 29.45, null),
    (1, '2022-07-01 22:39:24', 45.34, null),
    (4, '2022-08-29 23:34:52', 134.99, null),
    (3, '2022-11-20 12:49:34', 124.99, 2);

INSERT INTO PozycjeWZamowieniu(numer_w_zamowieniu, pozycja, zamowienie)
VALUES
    (1, 1, 1),
    (2, 5, 1),
    (1, 6, 2),
    (1, 7, 3),
    (2, 4, 3),
    (3, 1, 3),
    (1, 5, 4),
    (2, 3, 4),
    (1, 6, 5),
    (1, 7, 6),
    (2, 3, 6),
    (3, 1, 6),
    (1, 4, 7),
    (2, 3, 7),
    (1, 2, 8),
    (2, 1, 8),
    (3, 7, 8),
    (4, 6, 8),
    (1, 4, 9);

INSERT INTO Historia_Zamowien(zamowienie, status, data)
VALUES
    (1, 'Oczekujace', '2022-03-04 12:00:30'),
    (2, 'Oczekujace', '2022-03-05 14:30:22'),
    (1, 'Wysłane', '2022-03-05 15:22:34'),
    (2, 'Wysłane', '2022-03-06 17:24:19'),
    (1, 'Zrealizowane', '2022-03-07 11:34:25'),
    (2, 'Zrealizowane', '2022-03-07 19:33:34'),
    (3, 'Oczekujące', '2022-04-13 11:31:01'),
    (3, 'Wysłane', '2022-04-15 08:34:21'),
    (3, 'Zrealizowane', '2022-04-16 22:31:24'),
    (4, 'Oczekujące', '2022-04-21 14:10:59'),
    (4, 'Wysłane', '2022-04-22 15:33:01'),
    (4, 'Zrealizowane', '2022-04-24 20:10:24'),
    (5, 'Oczekujące', '2022-06-03 21:37:14'),
    (5, 'Wysłane', '2022-06-06 10:58:21'),
    (5, 'Zrealizowane', '2022-06-07 21:18:24'),
    (6, 'Oczekujące', '2022-06-23 08:21:58'),
    (6, 'Wysłane', '2022-06-23 17:34:20'),
    (6, 'Zrealizowane', '2022-06-24 07:34:03'),
    (7, 'Oczekujące', '2022-07-01 22:39:55'),
    (7, 'Wysłane', '2022-07-03 08:00:20'),
    (7, 'Zrealizowane', '2022-07-04 17:34:23'),
    (8, 'Oczekujące', '2022-08-29 23:35:32'),
    (8, 'Wysłane', '2022-08-30 09:30:10'),
    (8, 'Zrealizowane', '2022-09-01 14:34:10'),
    (9, 'Oczekujące', '2022-11-20 12:50:04'),
    (9, 'Wysłane', '2022-11-21 10:23:20'),
    (9, 'Zrealizowane', '2022-11-23 16:12:39');
