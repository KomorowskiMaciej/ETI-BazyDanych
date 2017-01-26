use Wiezienie;
set dateformat dmy;



/* Pracownicy */
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(0, 'Sztefan', 'Wons', 67101017630, 'AWN43433', 'M');
insert into Pracownicy
	(Id, Stanowisko, Telefon, Miasto, Adres)
	values(0, 'Naczelnik', 695123054, 'Gdansk', 'Policyjna 5')
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(1, 'Andrzej', 'Podwurski', 59032304752, 'AWN43433', 'M');
insert into Pracownicy
	(Id, Stanowisko, Telefon, Miasto, Adres)
	values(1, 'Kucharz', 795345320, 'Pcim', 'Grzybowa 2')
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(2, 'Artur', 'Konopka', 77070116791, 'AWN43433', 'M');
insert into Pracownicy
	(Id, Stanowisko, Telefon, Miasto, Adres)
	values(2, 'Kucharz', 546323054, 'Gdansk', 'Bombardierow 17/5')
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(3, 'Wojciech', 'Pikula', 66060619235, 'AWN43433', 'M');
insert into Pracownicy
	(Id, Stanowisko, Telefon, Miasto, Adres)
	values(3, 'Oficer Bloku A i B', 540323543, 'Pcim', 'Piwna 8')
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(4, 'Alojz', 'Malolepszy', 68112307079, 'AWN43433', 'M');
insert into Pracownicy
	(Id, Stanowisko, Telefon, Miasto, Adres)
	values(4, 'Oficer Bloku C i D', 653054341, 'Pcim', 'Kwiatowa 14')
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(5, 'Ryszard', 'Pomocny', 63113007072, 'AWN43433', 'M');
insert into Pracownicy
	(Id, Stanowisko, Telefon, Miasto, Adres)
	values(5, 'Lekarz', 651234341, 'Pcim Dolny', 'Weglowa 1')
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(6, 'Jan', 'Daca', 60021505555, 'AWN43433', 'M');
insert into Pracownicy
	(Id, Stanowisko, Miasto, Adres)
	values(6, 'Straznik', 'Gdansk', 'Kolorowa 1');


	insert into Typ_placowki
	(Id, Nazwa)
	values(1, 'Wiezienie typ 1');

		insert into Typ_placowki
	(Id, Nazwa)
	values(2, 'O z³agodzonym rygorze.');

		insert into Placowki
	(Id, FK_ID_TYP_PLACOWKI,Nazwa,Adres,Miasto)
	values(1, 1, 'Teczowo', 'Grzybowa 13', 'Torun');            
	
			insert into Placowki
	(Id, FK_ID_TYP_PLACOWKI,Nazwa,Adres,Miasto)
	values(2, 2, 'Piernikowo', 'Krasnoludkow 13', 'Gdansk');

			insert into Placowki
	(Id, FK_ID_TYP_PLACOWKI,Nazwa,Adres,Miasto)
	values(3, 2, 'Misiowo', 'Grunwaldzka 34', 'Radom');

			insert into Placowki
	(Id, FK_ID_TYP_PLACOWKI,Nazwa,Adres,Miasto)
	values(4, 1, 'Zabawowo', 'Trlalala 53/2', 'Pultusk');

	
	
	
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(8, 'Sztefan', 'Wons', 67101017631, 'AWN43433', 'M');
insert into Wiezniowie
	(Id, Uwagi, FK_ID_PLACOWKI)
	values(8, '', 1)
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(9, 'Andrzej', 'Podwurski', 59032304754, 'AWN43433', 'M');
insert into Wiezniowie
	(Id, Uwagi, FK_ID_PLACOWKI)
	values(9, '', 2)
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(10, 'Artur', 'Konopka', 77070116795, 'AWN43433', 'M');
insert into Wiezniowie
	(Id, Uwagi, FK_ID_PLACOWKI)
	values(10, '', 3)
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(11, 'Wojciech', 'Pikula', 66060612372, 'AWN43433', 'M');
insert into Wiezniowie
	(Id, Uwagi, FK_ID_PLACOWKI)
	values(11, '', 4)
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(12, 'Alojz', 'Malolepszy', 68112727079, 'AWN43433', 'M');
insert into Wiezniowie
	(Id, Uwagi, FK_ID_PLACOWKI)
	values(12, '', 2)
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(13, 'Ryszard', 'Pomocny', 63117007472, 'AWN43433', 'M');
insert into Wiezniowie
	(Id, Uwagi, FK_ID_PLACOWKI)
	values(13, '', 2)
insert into Osoby
	(Id, Imie, Nazwisko, Pesel, Dowod_osobisty, Plec)
	values(14, 'Jan', 'Daca', 60022305555, 'AWN43433', 'M');
insert into Wiezniowie
	(Id, Uwagi, FK_ID_PLACOWKI)
	values(14, '', 1);

	
insert into Status_wyroku
(Id, Nazwa)
		values(1, 'Rozpoczety');
		
insert into Status_wyroku
(Id, Nazwa)
		values(2, 'Zakonczony');
insert into Status_wyroku
(Id, Nazwa)
		values(3, 'Zawieszony');
		
insert into Wyroki
(Id,Uwagi,Lata_wyroku,Data_rozpoczecia,Data_zakonczenia,FK_ID_WIEZNIOWIE,FK_ID_PLACOWKI,FK_ID_STATUS)
values
(1, 'Brak.', 4, '28.11.2014','28.11.2018', 8, 1, 1),
(2, 'Brak.', 1, '28.11.2011','28.11.2012', 8, 2, 2),
(3, 'Brak.', 4, '28.11.2014','28.11.2020', 9, 3, 3),
(4, 'Brak.', 4, '28.11.2014','28.11.2018', 10, 4, 1),
(5, 'Brak.', 4, '28.11.2014','28.11.2018', 11, 2, 1),
(6, 'Lubi zolty kolor.', 4, '28.11.2014','28.11.2018', 12, 2, 1),
(7, 'Brak.', 4, '28.11.2014','28.11.2018', 13, 3, 1),		
(8, 'Brak.', 5, '28.11.2016','28.11.2021', 14, 4, 1),
(9, 'Brak.', 4, '28.11.2014','28.11.2015', 13, 1, 2);	



insert into Typ_wydarzenia
(Id,Nazwa,Opis)
values
(1, 'Przyjecie', 'Przyjecie wieznia.'),
(2, 'Wypisanie', 'Wypisanie wieznia.');

insert into Wydarzenia
(Id,Informacje,Data,FK_ID_WYROKU,FK_ID_PRACOWNIKA,FK_ID_TYPU_WYDARZENIA)
values
(1, 'Brak.', '28.11.2014', 1, 1, 1),
(2, 'Brak.', '28.11.2011', 1, 2, 1),
(3, 'Brak.', '28.11.2012', 1, 3, 2),
(4, 'Brak.', '28.11.2014', 1, 4, 1),
(5, 'Brak.', '28.11.2015', 1, 2, 2),
(6, 'Brak.', '28.11.2014', 1, 2, 1),
(7, 'Brak.', '28.11.2014', 1, 3, 1),
(8, 'Brak.', '28.11.2014', 1, 4, 1),
(9, 'Brak.', '28.11.2014', 1, 1, 1),
(10, 'Brak.', '28.11.2016', 1, 1, 1),
(11, 'Brak.', '28.11.2014', 1, 1, 1),
(12, 'Brak.', '28.11.2015', 1, 1, 2);
