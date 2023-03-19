create table Wydawnictwa(
	id integer primary key AUTO_INCREMENT,
	nazwa varchar(50) not null,
	miejscowosc varchar(50) not null,
	ulica varchar(50) not null,
	email varchar(50) not null,
	numer_telefonu varchar(12) not null);
	
create table Kategorie(
	id integer primary key AUTO_INCREMENT,
	nazwa varchar(50) not null);

create table Autorzy(
	id integer primary key AUTO_INCREMENT,
	imie varchar(50) not null,
	nazwisko varchar(50) not null,
	data_urodzenia date null,
	narodowosc varchar(50) null);

create table Lektorzy(
	id integer primary key AUTO_INCREMENT,
	imie varchar(50) not null,
	nazwisko varchar(50) not null);

create table Kody_rabatowe(
	id integer primary key AUTO_INCREMENT,
	kod varchar(50) not null,
	kwota numeric(5,2) not null,
	data_waznosci datetime not null);

create table Pozycje(
	id integer primary key AUTO_INCREMENT,
	ISBN varchar(50) not null,
	nazwa varchar(50) not null,
	kategoria integer not null,
	rodzaj varchar(50) not null check(
		rodzaj in ('K','E','A')),
	data_wydania date not null,
    wydawnictwo integer not null,
	cena numeric(5,2) not null,
	autor integer not null,
	liczba_stron integer not null,
	rodzaj_okladki varchar(50) null,
	rozmiar_pliku_PDF numeric(5,2) null,
	rozmiar_pliku_Mobi numeric(5,2) null,
	rozmiar_pliku_ePub numeric(5,2) null,
	rozmiar_pliku_MP3 numeric(5,2) null,
	czas_trwania time null,
    lektor integer null,
	foreign key(lektor) references Lektorzy(id),
    foreign key(kategoria) references Kategorie(id),
	foreign key(wydawnictwo) references Wydawnictwa(id),
    foreign key(autor) references Autorzy(id));

create table Uzytkownicy(
	id integer primary key AUTO_INCREMENT,
	email varchar(50) not null,
	haslo varchar(50) not null,
	imie varchar(50) null,
	nazwisko varchar(50) null,
	miejscowosc varchar(50) null,
	ulica varchar(50) null,
	numer_telefonu varchar(12) null);

create table Zamowienia(
	id integer primary key AUTO_INCREMENT,
	uzytkownik integer not null,
	data_zakupu datetime not null,
	wartosc numeric(6,2) not null,
	kod_rabatowy integer null,
    foreign key(uzytkownik) references Uzytkownicy(id),
	foreign key(kod_rabatowy) references Kody_rabatowe(id));

create table Historia_zamowien(
	id integer primary key AUTO_INCREMENT,
	zamowienie integer not null,
	status varchar(50) not null,
	data datetime not null,
	foreign key(zamowienie) references Zamowienia(id));

create table PozycjeWZamowieniu(
	numer_w_zamowieniu integer not null,
    pozycja integer not null,
    zamowienie integer not null,
	foreign key(pozycja) references Pozycje(id),
	foreign key(zamowienie) references Zamowienia(id),
	primary key(numer_w_zamowieniu, zamowienie));
