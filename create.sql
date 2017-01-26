use Wiezienie
go

create table Osoby
	(Id int not null primary key check (Id >= 0),
	Nazwisko varchar(30) not null,
	Imie varchar(30) not null,
	Dowod_osobisty varchar(30) not null,
	Plec char(1) not null check(Plec = 'k' or Plec = 'm'),
	Pesel char(11) unique,
	);

create table Pracownicy
	(Id int not null primary key check (Id >= 0) references Osoby,
	Telefon varchar(9) check (ISNUMERIC(Telefon) = 1 or Telefon=''),
	Miasto varchar(30) not null,
	Adres varchar(30) not null,
	Stanowisko varchar(25) not null,
);

create table Typ_placowki
(Id int not null primary key check (Id >= 0),
Nazwa varchar(30) not null,
);

create table Placowki
	(Id int not null primary key check (Id >= 0),
	Nazwa varchar(1000),
	Adres varchar(1000),
	Miasto varchar(1000),
	FK_ID_TYP_PLACOWKI int check (FK_ID_TYP_PLACOWKI >= 0) references Typ_placowki
);


create table Wiezniowie
(
Id int not null primary key check (Id >= 0) references Osoby,
Uwagi varchar(1000),
FK_ID_PLACOWKI int check (FK_ID_PLACOWKI >= 0) references Placowki
);
	
create table Status_wyroku
(Id int not null primary key check (Id >= 0),
	Nazwa varchar(30) not null);
	
create table Wyroki
(
Id int not null primary key check (Id >= 0),
Uwagi varchar(1000),
Lata_wyroku int not null,
Data_rozpoczecia date not null,
Data_zakonczenia date,
FK_ID_WIEZNIOWIE int check (FK_ID_WIEZNIOWIE >= 0) references Wiezniowie,
FK_ID_PLACOWKI int check (FK_ID_PLACOWKI >= 0) references Placowki,
FK_ID_STATUS int check (FK_ID_STATUS >= 0) references Status_wyroku
);
	
create table Typ_wydarzenia
(Id int not null primary key check (Id >= 0),
	Nazwa varchar(30) not null,
	Opis varchar(2000) not null 
);

create table Wydarzenia
(Id int not null primary key check (Id >= 0),
	Informacje varchar(2000) not null ,
	Data date not null,
	FK_ID_WYROKU varchar(30) not null,
	FK_ID_PRACOWNIKA int check (FK_ID_PRACOWNIKA >= 0) references Pracownicy,
	FK_ID_TYPU_WYDARZENIA int check (FK_ID_TYPU_WYDARZENIA >= 0) references Typ_wydarzenia
);