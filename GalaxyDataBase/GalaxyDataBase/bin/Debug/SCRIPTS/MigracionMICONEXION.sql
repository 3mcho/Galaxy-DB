USE MICONEXION; 
CREATE TABLE BASESDEDATOS(
IDBASE INT NOT NULL PRIMARY KEY,
RUTADB VARCHAR(251) NOT NULL,
ALIAS VARCHAR(252) NOT NULL,
HOST VARCHAR(252) NOT NULL,
USUARIO VARCHAR(252) NOT NULL,
PASS VARCHAR(252) NOT NULL,
PUERTO VARCHAR(252) NOT NULL
);
INSERT INTO BASESDEDATOS VALUES  
('10', 'C:\Users\Lucio\Desktop\BASE.FDB', 'BASE', 'localhost', 'SYSDBA', 'masterkey', '3050'),('11', 'C:\Users\DELL\Documents\Basess.FDB', 'Bases', 'localhost', 'masterkey', 'SYSDBA', '3050'),('12', 'C:\Users\DELL\Desktop\NUEVOS.FDB', 'NUEVOS', 'localhost', 'masterkey', 'SYSDBA', '3050'),('13', 'C:\Users\DELL\Desktop\Bases.FDB', 'Bases', 'localhost', 'masterkey', 'SYSDBA', '3050'),('9', 'C:\Users\Lucio\Desktop\PRUEBA.FDB', 'PRUEBA', 'localhost', 'SYSDBA', 'masterkey', '3050');