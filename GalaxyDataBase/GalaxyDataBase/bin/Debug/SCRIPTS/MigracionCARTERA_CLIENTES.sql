USE CARTERA_CLIENTES; 
CREATE TABLE CLIENTE(
ID_CLIENTE INT NOT NULL PRIMARY KEY,
NOMBRE_CLIENTE VARCHAR(45),
CORREO VARCHAR(40),
TELEFONO VARCHAR(20),
DIRECCION VARCHAR(50),
EDAD INT,
RANGO VARCHAR(20)
);
INSERT INTO CLIENTE VALUES  
('1', 'Cliente1', 'cliente1@gmail.com', '9971200941', 'Calle 54 x 37 y 39', '20', 'Inicial'),('2', 'Fernando Valencia', 'ValenciaFernado@gmail.com', '9971458569', 'c.20 x 50', '46', 'MOROSO');CREATE TABLE CREDITOS(
ID_CREDITOS INT NOT NULL PRIMARY KEY,
FECHA_OTORGAMIENTO DATE,
CANTIDAD_CREDITO FLOAT,
VIGENCIA DATE,
SALDO_RESTANTE FLOAT,
FK_ID_CLIENTE INT,
FK_ID_EMPLEADO INT
);
INSERT INTO CREDITOS VALUES  
('3', '31/05/2023 0:00:00', '5000', '31/08/0023 0:00:00', '0', '1', '1');CREATE TABLE PAGOS(
ID_PAGO INT NOT NULL PRIMARY KEY,
FECHA_PAGO DATE,
CANTIDAD_PAGO FLOAT,
FK_ID_CLIENTE INT,
FK_ID_EMPLEADO INT,
FK_ID_CREDITO INT
);
INSERT INTO PAGOS VALUES  
('2', '17/05/2023 0:00:00', '5000', '2', '1', '3');CREATE TABLE USUARIOS(
ID_USUARIO INT NOT NULL PRIMARY KEY,
USUARIO VARCHAR(45),
PASSWORD VARCHAR(20)
);
INSERT INTO USUARIOS VALUES  
('1', 'Administrador', 'admin123'),('2', 'Lucio', '1234');