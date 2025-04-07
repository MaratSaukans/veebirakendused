-- SQL kommentaar
-- SQL Server Managment Stuudio
-- connect ti
--(localdb)\mssqllocaldb
--Authentification: Windows Auth - admini õigused localhostis
--Authentification: SQL Server Auth - varem loodud kasutajad
--New Query

CREATE DATABASE saukans;
--Object Explorer on vaja pidevalt uuendada käsitsil
use saukans;
--tabeli loomine
CREATE TABLE opilane(
opilandeID int Primary key identity (1,1),
eesnimi varchar(25),
perenimi varchar(30) Unique,
synniaeg date,
aadress TEXT,
opilaskodu bit
);
Select * from opilane;
--tabeli kustutamine
DROP table opilane;
--andmete lisamine tabelisse
Insert into opilane(eesnimi, perenimi, synniaeg, aadress, opilaskodu)
VALUES ('Mark', 'Levin', '2000-12-5', 'Tallinn', 1),
('Mati', 'Kask', '2000-12-5', 'Tallinn', 0),
('Peeter', 'Uus', '2000-10-5', 'Tallinn', 0);
