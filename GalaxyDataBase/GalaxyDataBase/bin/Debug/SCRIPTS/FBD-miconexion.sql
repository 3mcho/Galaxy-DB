CREATE DATABASE 'C:\Users\Lucio\Desktop\miconexion.FDB' user 'SYSDBA' password 'masterkey';
CONNECT 'C:\Users\Lucio\Desktop\miconexion.FDB'user 'SYSDBA' password 'masterkey';

CREATE TABLE basesdedatos(
IDBASE INTEGER PRIMARY KEY,
RUTADB varchar(251),
ALIAS varchar(252),
HOST varchar(252),
USUARIO varchar(252),
PASS varchar(252),
PUERTO varchar(252));

INSERT INTO basesdedatos VALUES  
('9', 'C:UsersLucioDesktopPRUEBA.FDB', 'PRUEBA', 'localhost', 'SYSDBA', 'masterkey', '3050');

INSERT INTO basesdedatos VALUES  
('10', 'C:UsersLucioDesktopBASE.FDB', 'BASE', 'localhost', 'SYSDBA', 'masterkey', '3050');
