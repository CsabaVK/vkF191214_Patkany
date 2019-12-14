create database tripat
use tripat

create table tricikli(
tricId int primary key identity(1, 1),
nagy bit,
szin varchar(20));

create table patkany(
patkanyId int primary key identity(1, 1),
nev varchar(30),
alfaj varchar(20));

create table kolcsonzes(
kolcsonId int primary key identity(1, 1),
datum datetime,
sofor int foreign key references patkany(patkanyId),
jarmu int foreign key references tricikli(tricId));

insert into tricikli (nagy, szin) values
(0, 'piros'),
(1, 'kék'),
(0, 'zöld'),
(0, 'kék'),
(1, 'zöld'),
(0, 'sárga'),
(0, 'piros');

insert into patkany (nev, alfaj) values
('Gut', 'házi patkány'),
('Bear', 'házi patkány'),
('Jerry', 'vándorpatkány'),
('Spring', 'cricetomys'),
('Snoopy', 'házi patkány'),
('Graye', 'vándorpatkány'),
('Antony', 'cricetomys');

insert into kolcsonzes (datum, sofor, jarmu) values
('2019-05-02', 1, 1),
('2019-05-03', 1, 2),
('2019-05-03', 3, 4),
('2019-05-03', 6, 5),
('2019-05-04', 2, 3),
('2019-05-04', 3, 4),
('2019-05-04', 4, 5),
('2019-05-05', 2, 1),
('2019-05-05', 6, 2),
('2019-05-05', 7, 3);

Data Source=(localdb)\MSSQLLocalDB;
Initial Catalog=tripat;

Integrated Security=True;
Connect Timeout=30;
Encrypt=False;
TrustServerCertificate=False;
ApplicationIntent=ReadWrite;
MultiSubnetFailover=False