CREATE DATABASE 'C:\Users\Lucio\Music\cartera_clientes.FDB' user 'SYSDBA' password 'masterkey';
CONNECT 'C:\Users\Lucio\Music\cartera_clientes.FDB'user 'SYSDBA' password 'masterkey';

CREATE TABLE cliente(
ID_CLIENTE INTEGER PRIMARY KEY,
NOMBRE_CLIENTE varchar(45),
CORREO varchar(40),
TELEFONO varchar(20),
DIRECCION varchar(50),
EDAD INTEGER,
RANGO varchar(20));

INSERT INTO cliente VALUES  
('1', 'Cliente1', 'cliente1@gmail.com', '9971200941', 'Calle 54 x 37 y 39', '20', 'Inicial');

INSERT INTO cliente VALUES  
('2', 'Fernando Valencia', 'ValenciaFernado@gmail.com', '9971458569', 'c.20 x 50', '46', 'MOROSO');

CREATE TABLE creditos(
ID_CREDITOS INTEGER PRIMARY KEY,
FECHA_OTORGAMIENTO date,
CANTIDAD_CREDITO float,
VIGENCIA date,
SALDO_RESTANTE float,
FK_ID_CLIENTE INTEGER,
FK_ID_EMPLEADO INTEGER);

INSERT INTO creditos VALUES  
('3', '31/05/2023 0:00:00', '5000', '31/08/2023 0:00:00', '0', '1', '1');

CREATE TABLE pagos(
ID_PAGO INTEGER PRIMARY KEY,
FECHA_PAGO date,
CANTIDAD_PAGO float,
FK_ID_CLIENTE INTEGER,
FK_ID_EMPLEADO INTEGER,
FK_ID_CREDITO INTEGER);

INSERT INTO pagos VALUES  
('2', '17/05/2023 0:00:00', '5000', '2', '1', '3');

INSERT INTO pagos VALUES  
('7', '31/05/2023 0:00:00', '2500', '1', '1', '3');

INSERT INTO pagos VALUES  
('8', '31/05/2023 0:00:00', '2500', '1', '1', '3');

INSERT INTO pagos VALUES  
('9', '02/06/2023 0:00:00', '500', '2', '2', '3');

CREATE TABLE usuarios(
ID_USUARIO INTEGER PRIMARY KEY,
USUARIO varchar(45),
PASSWORD varchar(20));

INSERT INTO usuarios VALUES  
('1', 'Administrador', 'admin123');

INSERT INTO usuarios VALUES  
('2', 'Lucio', '1234');
