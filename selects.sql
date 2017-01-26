


--select * from pracownicy, osoby where osoby.id = pracownicy.Id order by osoby.Nazwisko;
--select * from Wiezniowie, osoby where osoby.id = Wiezniowie.id;


-- liczba wiezniow w wiezieniu

/*
create view LiczbaWiezniowWWiezieniach
	as
select count(W.Id) as Liczba , SubQ.Typ,  SubQ.Nazwa from Wiezniowie as W ,( 
	select  Placowki.Id, Placowki.Nazwa, Typ_placowki.Nazwa as Typ
		from Typ_placowki, Placowki 
		where Typ_placowki.Id = Placowki.FK_ID_TYP_PLACOWKI
	) as SubQ
where W.FK_ID_PLACOWKI = SubQ.Id
group by SubQ.Nazwa, SubQ.Typ
with check option;
*/

/*
-- liczba w wiezieniach o typie placowki 1
select count(W.Id) from Wiezniowie as W
where W.FK_ID_PLACOWKI IN (select  Placowki.Id
		from Typ_placowki, Placowki 
		where Typ_placowki.Id = Placowki.FK_ID_TYP_PLACOWKI
		and Typ_placowki.id = 1
	);
	*/


-- wiezniowie z ponad 2016
/*
select Wiezniowie.id, Osoby.Nazwisko, Osoby.Imie, Wyroki.Data_zakonczenia from Wiezniowie,Osoby, Wyroki
where Wiezniowie.Id = Osoby.Id
and Wyroki.FK_ID_WIEZNIOWIE = Wiezniowie.Id
and Wyroki.Data_zakonczenia > '2016-01-01'
order by Nazwisko, Imie
*/

/*
-- liczba zakoñczonych wyroków w placówkach
select Placowki.Nazwa, count(Wyroki.id) from Wyroki, Placowki, Status_wyroku
where Wyroki.FK_ID_PLACOWKI = Placowki.Id
and Wyroki.FK_ID_STATUS = Status_wyroku.Id
and Status_wyroku.Nazwa = 'Zakonczony'
group by Placowki.Nazwa
*/
/*
create view LiczbaWykonanychCzynnosciPrzezPracownikow
	as
select Osoby.Imie, Osoby.Nazwisko, count(wyroki.id) as Wykonane_czynnosci from Pracownicy, Wydarzenia, Wyroki, Osoby
where Wyroki.Id = Wydarzenia.FK_ID_WYROKU and Wydarzenia.FK_ID_PRACOWNIKA = Pracownicy.Id and Pracownicy.Id = Osoby.Id
group by Osoby.Imie, Osoby.Nazwisko
with check option
*/