CREATE DATABASE 'C:\Users\Lucio\Music\HANAL.FDB' user 'SYSDBA' password 'masterkey';
CONNECT 'C:\Users\Lucio\Music\HANAL.FDB'user 'SYSDBA' password 'masterkey';

CREATE TABLE calificaciones_comercios(
IDCALIFICACION_COMERCIO INTEGER PRIMARY KEY,
IDCOMERCIO INTEGER,
IDUSUARIO INTEGER,
CALIFICACION INTEGER,
COMENTARIO varchar(254),
IDPEDIDO INTEGER,
TIPO_CALIFICACION varchar(254));

INSERT INTO calificaciones_comercios VALUES  
('15', '3', '21', '5', '', '2', 'POSITIVO');

INSERT INTO calificaciones_comercios VALUES  
('14', '3', '21', '2', 'B', '1', 'NEGATIVO');

INSERT INTO calificaciones_comercios VALUES  
('20', '3', '21', '4', 'verificar que se envíen todos los datos posibles en este comentario', '52', 'POSITIVO');

INSERT INTO calificaciones_comercios VALUES  
('13', '3', '21', '3', 'a', '2', 'NEGATIVO');

INSERT INTO calificaciones_comercios VALUES  
('16', '3', '21', '5', 'C', '2', 'POSITIVO');

INSERT INTO calificaciones_comercios VALUES  
('17', '3', '21', '5', 'C', '2', 'POSITIVO');

INSERT INTO calificaciones_comercios VALUES  
('18', '3', '21', '4', 'D', '3', 'NEUTRO');

INSERT INTO calificaciones_comercios VALUES  
('19', '3', '21', '3', 'E', '5', 'NEUTRO');

INSERT INTO calificaciones_comercios VALUES  
('21', '4', '21', '3', 'prueba de conexion new', '53', 'POSITIVO');

CREATE TABLE calificaciones_usuarios(
IDCALIFICACION_USUARIO INTEGER PRIMARY KEY,
IDCOMERCIO INTEGER,
IDUSUARIO INTEGER,
CALIFICACION INTEGER,
COMENTARIO varchar(254),
IDPEDIDO INTEGER,
TIPO_CALIFICACION varchar(254));

INSERT INTO calificaciones_usuarios VALUES  
('3', '3', '21', '3', 'prueba calificacion comentario', '5', 'POSITIVO');

INSERT INTO calificaciones_usuarios VALUES  
('4', '4', '21', '2', 'prueba de calificacion del usuario a b c d e f g h 1 2 3 4 5 6 7', '5', 'POSITIVO');

CREATE TABLE categorias(
IDCATEGORIA INTEGER PRIMARY KEY,
CATEGORIA varchar(254),
COMENTARIOS varchar(500));

INSERT INTO categorias VALUES  
('1', 'COMIDA RAPIDA', 'TODOS LOS ALIMENTOS DE COMIDA RAPIDA (HAMBURGUESAS, PIZZAS, HOT DOGS, ETC)');

INSERT INTO categorias VALUES  
('2', 'VERDURAS', 'TODOS LOS ALIMENTOS QUE CONTENGAN VERDURAS');

INSERT INTO categorias VALUES  
('3', 'CARNES', 'TODOS LOS ALIMENTOS QUE SE PREPAREN CON CARNE');

INSERT INTO categorias VALUES  
('4', 'FRUTAS', 'TODOS LOS ALIMENTOS QUE CONTENGAN FRUTAS');

INSERT INTO categorias VALUES  
('5', 'BEBIDAS', 'TODAS LAS BEBIDAS');

INSERT INTO categorias VALUES  
('6', 'POSTRES', 'TODOS LOS POSTRES');

CREATE TABLE comercios(
IDCOMERCIO INTEGER PRIMARY KEY,
NOMBRE_COMERCIO varchar(254),
estado_id INTEGER,
municipio_id INTEGER,
DIRECCION varchar(500),
CORREO varchar(50),
TELEFONO varchar(50),
SITIOWEB varchar(254),
ESTATUSCOMERCIO int(2));

INSERT INTO comercios VALUES  
('3', 'EL RINCON DE LA JEFA', '31', '2384', 'CALLE 30 X 51 Y 53 COL. MEJORADA', 'buconet@hotmail.com', '99999999999', '', '1');

INSERT INTO comercios VALUES  
('4', 'LA TRAGADERA', '31', '2384', 'CENTRO', 'CORREO@GMAIL.COM', '9971118771', 'www.tragadera.com', '1');

INSERT INTO comercios VALUES  
('11', 'Cabana', '31', '2344', 'centro cancun', 'cabanak@gmail.com', '997128373', 'cabana.com', '1');

INSERT INTO comercios VALUES  
('12', 'LA COMILONA', '31', '2331', 'CENTRO AKIL', 'comilona@gmail.com', '9992323', 'www.comilona.com', '0');

CREATE TABLE detalles_pedidos(
IDDETALLE_PEDIDO INTEGER PRIMARY KEY,
IDPEDIDO INTEGER,
IDPRODUCTO INTEGER,
PRECIO float,
CANTIDAD float,
IMPORTE_PRODUCTO float,
COMENTARIO varchar(254));

INSERT INTO detalles_pedidos VALUES  
('29', '46', '3', '10', '1', '10', '');

INSERT INTO detalles_pedidos VALUES  
('31', '46', '10', '12', '3', '36', '');

INSERT INTO detalles_pedidos VALUES  
('33', '46', '8', '12', '1', '12', '');

INSERT INTO detalles_pedidos VALUES  
('34', '46', '1', '8,99', '1', '8,99', '');

INSERT INTO detalles_pedidos VALUES  
('35', '52', '7', '120,5', '2', '241', 'comprobar edicion');

INSERT INTO detalles_pedidos VALUES  
('36', '52', '2', '10,5', '3', '31,5', 'comprobar edicion');

INSERT INTO detalles_pedidos VALUES  
('37', '52', '10', '12', '2', '24', '');

INSERT INTO detalles_pedidos VALUES  
('38', '53', '5', '70', '7', '490', 'editar');

INSERT INTO detalles_pedidos VALUES  
('46', '53', '5', '70', '1', '70', 'sin cebolla editado comprobar');

INSERT INTO detalles_pedidos VALUES  
('47', '56', '3', '10', '2', '20', 'el rincon de la jefa');

INSERT INTO detalles_pedidos VALUES  
('48', '56', '3', '10', '4', '40', 'prueba dos el rincon de la jef');

INSERT INTO detalles_pedidos VALUES  
('49', '56', '10', '12', '1', '12', '');

INSERT INTO detalles_pedidos VALUES  
('50', '62', '9', '120,5', '1', '120,5', '');

INSERT INTO detalles_pedidos VALUES  
('51', '62', '10', '12', '1', '12', '');

INSERT INTO detalles_pedidos VALUES  
('52', '62', '3', '10', '1', '10', '');

INSERT INTO detalles_pedidos VALUES  
('53', '62', '2', '10,5', '1', '10,5', '');

INSERT INTO detalles_pedidos VALUES  
('54', '63', '3', '10', '1', '10', '');

INSERT INTO detalles_pedidos VALUES  
('55', '63', '7', '120,5', '1', '120,5', '');

INSERT INTO detalles_pedidos VALUES  
('56', '64', '10', '12', '1', '12', '');

INSERT INTO detalles_pedidos VALUES  
('57', '65', '9', '120,5', '2', '241', '');

INSERT INTO detalles_pedidos VALUES  
('59', '67', '3', '10', '6', '60', 'dos son cebolla');

INSERT INTO detalles_pedidos VALUES  
('60', '67', '3', '10', '5', '50', 'dorado con todo');

INSERT INTO detalles_pedidos VALUES  
('61', '67', '3', '10', '5', '50', 'dorado con todo');

INSERT INTO detalles_pedidos VALUES  
('62', '69', '4', '10', '9', '90', '');

INSERT INTO detalles_pedidos VALUES  
('63', '69', '5', '70', '2', '140', '');

INSERT INTO detalles_pedidos VALUES  
('64', '72', '7', '120,5', '2', '241', 'dorada');

INSERT INTO detalles_pedidos VALUES  
('65', '72', '1', '8,99', '3', '26,97', 'sin cebolla');

INSERT INTO detalles_pedidos VALUES  
('66', '75', '10', '12', '1', '12', 'akil');

INSERT INTO detalles_pedidos VALUES  
('67', '75', '9', '120,5', '3', '361,5', 'prueba mensaje');

INSERT INTO detalles_pedidos VALUES  
('68', '76', '2', '10,5', '10', '105', 'dos sin cebolla');

INSERT INTO detalles_pedidos VALUES  
('69', '76', '7', '120,5', '1', '120,5', '');

INSERT INTO detalles_pedidos VALUES  
('70', '77', '9', '120,5', '2', '241', '');

INSERT INTO detalles_pedidos VALUES  
('71', '78', '1', '8,99', '1', '8,99', '');

INSERT INTO detalles_pedidos VALUES  
('72', '82', '9', '120,5', '1', '120,5', '');

INSERT INTO detalles_pedidos VALUES  
('73', '83', '10', '12', '3', '36', '');

INSERT INTO detalles_pedidos VALUES  
('74', '83', '9', '120,5', '1', '120,5', '');

INSERT INTO detalles_pedidos VALUES  
('75', '84', '10', '12', '5', '60', '');

INSERT INTO detalles_pedidos VALUES  
('76', '87', '10', '12', '1', '12', '');

INSERT INTO detalles_pedidos VALUES  
('77', '88', '10', '12', '1', '12', '');

INSERT INTO detalles_pedidos VALUES  
('78', '89', '3', '10', '10', '100', 'con mas carne');

INSERT INTO detalles_pedidos VALUES  
('79', '89', '1', '8,99', '5', '44,95', '');

INSERT INTO detalles_pedidos VALUES  
('81', '90', '10', '12', '1', '12', '');

INSERT INTO detalles_pedidos VALUES  
('84', '90', '2', '10,5', '2', '21', '');

INSERT INTO detalles_pedidos VALUES  
('85', '88', '9', '120,5', '1', '120,5', '');

INSERT INTO detalles_pedidos VALUES  
('86', '101', '9', '120,5', '1', '120,5', '');

INSERT INTO detalles_pedidos VALUES  
('87', '101', '2', '10,5', '3', '31,5', 'con mucha carne');

INSERT INTO detalles_pedidos VALUES  
('88', '102', '3', '10', '6', '60', 'sin cebolla ');

INSERT INTO detalles_pedidos VALUES  
('89', '102', '7', '120,5', '1', '120,5', '');

INSERT INTO detalles_pedidos VALUES  
('90', '102', '2', '10,5', '2', '21', '');

CREATE TABLE direcciones_usarios(
IDDIRECCION_USR INTEGER PRIMARY KEY,
IDUSUARIO INTEGER,
IDMUNICIPIO INTEGER,
CALLE varchar(30),
NOINT varchar(15),
NOEXT varchar(15),
CRUZAMIENTO1 varchar(15),
CRUZAMIENTO2 varchar(15),
COLONIA varchar(50),
CP varchar(5),
REFERENCIA1 varchar(254),
REFERENCIA2 varchar(254),
DIRECCION_PRINCIPAL varchar(2),
LATITUD varchar(250),
LONGITUD varchar(250));

INSERT INTO direcciones_usarios VALUES  
('14', '13', '1', 'g', 'g', 'g', 'g', 'f', 'h', 'v', 'a', 'a', 'SI', '20.2659138', '-89.3421779');

INSERT INTO direcciones_usarios VALUES  
('18', '6', '2384', '28', '', '221', '29', '31', 'San Román', '97860', 'rejas blancas', 'Enredaderas amarillas', 'SI', '20.39124876773902 ', '-89.53558020293713');

INSERT INTO direcciones_usarios VALUES  
('21', '6', '2331', 'hola', 'kk', 'k', 'k', 'k', 'xg', 'k', 'k', 'k', 'NO', '20.2659161', '-89.3421796');

INSERT INTO direcciones_usarios VALUES  
('22', '20', '1', 'a', 'b', 'c', 'd', 'e', '1', '2', '4', '4', 'SI', '20.2659277', '-89.3421868');

INSERT INTO direcciones_usarios VALUES  
('24', '6', '2331', 'calle 21', 's/n', 's/n', '12', '10', 'centro', '97990', 'centro', 'centro', 'NO', '20.2807655 ', '-89.3625551');

INSERT INTO direcciones_usarios VALUES  
('26', '7', '2331', 'akil', '9790', '12', '89', '12', 'centro', '97990', '1', '2', 'SI', '20.2659249', '-89.3421868');

INSERT INTO direcciones_usarios VALUES  
('27', '21', '2384', '21', 'SN', 'SN', '12', '10', 'centro', '97990', 'casa verde', '', 'SI', '20.267100859783056 ', '-89.34698134660721');

INSERT INTO direcciones_usarios VALUES  
('28', '21', '2329', 'q', 'q', 'q', 'q', 'q', 'a', 'a', 'a', 'a', 'NO', '20.265655640509014 ', '-89.34721268713473');

INSERT INTO direcciones_usarios VALUES  
('29', '21', '2331', 'centro', '12', '13', '12', '12', 'centro', '97990', '1', '2', 'NO', '20.2659278', '-89.3421868');

INSERT INTO direcciones_usarios VALUES  
('30', '22', '2331', '21', '2', '2', '2', '2', 'centro', '97990', '1', '1', 'SI', '20.2659017', '-89.3421683');

INSERT INTO direcciones_usarios VALUES  
('31', '23', '2384', '21', 'sn', 'sn', '21', '12', 'hidalgo', '97990', 'casa verde', '', 'SI', '20.2659161 ', '-89.3421753');

INSERT INTO direcciones_usarios VALUES  
('32', '25', '2384', '50', 'na', '69b', '39', '37', 'Arcadio Santoyo', '97889', 'techo forma de pirámide', 'techo forma de pirámide', 'SI', '20.313498606017582 ', '-89.41468164324759');

INSERT INTO direcciones_usarios VALUES  
('33', '21', '1', 'prueba1', '1', '2', '2', '2', '2', '2', '2', '2', 'NO', '20.26846460604012', '-89.34883911162616');

CREATE TABLE estados(
id INTEGER PRIMARY KEY,
clave varchar(2),
nombre varchar(45),
abrev varchar(16));

INSERT INTO estados VALUES  
('1', '01', 'AGUASCALIENTES', 'AGS.');

INSERT INTO estados VALUES  
('2', '02', 'BAJA CALIFORNIA', 'BC');

INSERT INTO estados VALUES  
('3', '03', 'BAJA CALIFORNIA SUR', 'BCS');

INSERT INTO estados VALUES  
('4', '04', 'CAMPECHE', 'CAMP.');

INSERT INTO estados VALUES  
('5', '05', 'COAHUILA DE ZARAGOZA', 'COAH.');

INSERT INTO estados VALUES  
('6', '06', 'COLIMA', 'COL.');

INSERT INTO estados VALUES  
('7', '07', 'CHIAPAS', 'CHIS.');

INSERT INTO estados VALUES  
('8', '08', 'CHIHUAHUA', 'CHIH.');

INSERT INTO estados VALUES  
('9', '09', 'DISTRITO FEDERAL', 'DF');

INSERT INTO estados VALUES  
('10', '10', 'DURANGO', 'DGO.');

INSERT INTO estados VALUES  
('11', '11', 'GUANAJUATO', 'GTO.');

INSERT INTO estados VALUES  
('12', '12', 'GUERRERO', 'GRO.');

INSERT INTO estados VALUES  
('13', '13', 'HIDALGO', 'HGO.');

INSERT INTO estados VALUES  
('14', '14', 'JALISCO', 'JAL.');

INSERT INTO estados VALUES  
('15', '15', 'ESTADO DE MEXICO', 'MEX.');

INSERT INTO estados VALUES  
('16', '16', 'MICHOACAN DE OCAMPO', 'MICH.');

INSERT INTO estados VALUES  
('17', '17', 'MORELOS', 'MOR.');

INSERT INTO estados VALUES  
('18', '18', 'NAYARIT', 'NAY.');

INSERT INTO estados VALUES  
('19', '19', 'NUEVO LEON', 'NL');

INSERT INTO estados VALUES  
('20', '20', 'OAXACA', 'OAX.');

INSERT INTO estados VALUES  
('21', '21', 'PUEBLA', 'PUE.');

INSERT INTO estados VALUES  
('22', '22', 'QUERETARO', 'QRO.');

INSERT INTO estados VALUES  
('23', '23', 'QUINTANA ROO', 'Q. ROO');

INSERT INTO estados VALUES  
('24', '24', 'SAN LUIS POTOSI', 'SLP');

INSERT INTO estados VALUES  
('25', '25', 'SINALOA', 'SIN.');

INSERT INTO estados VALUES  
('26', '26', 'SONORA', 'SON.');

INSERT INTO estados VALUES  
('27', '27', 'TABASCO', 'TAB.');

INSERT INTO estados VALUES  
('28', '28', 'TAMAULIPAS', 'TAMPS.');

INSERT INTO estados VALUES  
('29', '29', 'TLAXCALA', 'TLAX.');

INSERT INTO estados VALUES  
('30', '30', 'VERACRUZ DE IGNACIO DE LA LLAVE', 'VER.');

INSERT INTO estados VALUES  
('31', '31', 'YUCATAN', 'YUC.');

INSERT INTO estados VALUES  
('32', '32', 'ZACATECAS', 'ZAC.');

CREATE TABLE municipios(
id INTEGER PRIMARY KEY,
estado_id INTEGER,
clave varchar(3),
nombre_municipio varchar(50),
sigla varchar(4));

INSERT INTO municipios VALUES  
('1', '1', '001', 'AGUASCALIENTES', '');

INSERT INTO municipios VALUES  
('2', '1', '002', 'ASIENTOS', '');

INSERT INTO municipios VALUES  
('3', '1', '003', 'CALVILLO', '');

INSERT INTO municipios VALUES  
('4', '1', '004', 'COSIO', '');

INSERT INTO municipios VALUES  
('5', '1', '005', 'JESUS MARIA', '');

INSERT INTO municipios VALUES  
('6', '1', '006', 'PABELLON DE ARTEAGA', '');

INSERT INTO municipios VALUES  
('7', '1', '007', 'RINCON DE ROMOS', '');

INSERT INTO municipios VALUES  
('8', '1', '008', 'SAN JOSE DE GRACIA', '');

INSERT INTO municipios VALUES  
('9', '1', '009', 'TEPEZALA', '');

INSERT INTO municipios VALUES  
('10', '1', '010', 'EL LLANO', '');

INSERT INTO municipios VALUES  
('11', '1', '011', 'SAN FRANCISCO DE LOS ROMO', '');

INSERT INTO municipios VALUES  
('12', '2', '001', 'ENSENADA', '');

INSERT INTO municipios VALUES  
('13', '2', '002', 'MEXICALI', '');

INSERT INTO municipios VALUES  
('14', '2', '003', 'TECATE', '');

INSERT INTO municipios VALUES  
('15', '2', '004', 'TIJUANA', '');

INSERT INTO municipios VALUES  
('16', '2', '005', 'PLAYAS DE ROSARITO', '');

INSERT INTO municipios VALUES  
('17', '3', '001', 'COMONDU', '');

INSERT INTO municipios VALUES  
('18', '3', '002', 'MULEGE', '');

INSERT INTO municipios VALUES  
('19', '3', '003', 'LA PAZ', '');

INSERT INTO municipios VALUES  
('20', '3', '008', 'LOS CABOS', '');

INSERT INTO municipios VALUES  
('21', '3', '009', 'LORETO', '');

INSERT INTO municipios VALUES  
('22', '4', '001', 'CALKINI', '');

INSERT INTO municipios VALUES  
('23', '4', '002', 'CAMPECHE', '');

INSERT INTO municipios VALUES  
('24', '4', '003', 'CARMEN', '');

INSERT INTO municipios VALUES  
('25', '4', '004', 'CHAMPOTON', '');

INSERT INTO municipios VALUES  
('26', '4', '005', 'HECELCHAKAN', '');

INSERT INTO municipios VALUES  
('27', '4', '006', 'HOPELCHEN', '');

INSERT INTO municipios VALUES  
('28', '4', '007', 'PALIZADA', '');

INSERT INTO municipios VALUES  
('29', '4', '008', 'TENABO', '');

INSERT INTO municipios VALUES  
('30', '4', '009', 'ESCARCEGA', '');

INSERT INTO municipios VALUES  
('31', '4', '010', 'CALAKMUL', '');

INSERT INTO municipios VALUES  
('32', '4', '011', 'CANDELARIA', '');

INSERT INTO municipios VALUES  
('33', '5', '001', 'ABASOLO', '');

INSERT INTO municipios VALUES  
('34', '5', '002', 'ACUÑA', '');

INSERT INTO municipios VALUES  
('35', '5', '003', 'ALLENDE', '');

INSERT INTO municipios VALUES  
('36', '5', '004', 'ARTEAGA', '');

INSERT INTO municipios VALUES  
('37', '5', '005', 'CANDELA', '');

INSERT INTO municipios VALUES  
('38', '5', '006', 'CASTAÑOS', '');

INSERT INTO municipios VALUES  
('39', '5', '007', 'CUATRO CIENEGAS', '');

INSERT INTO municipios VALUES  
('40', '5', '008', 'ESCOBEDO', '');

INSERT INTO municipios VALUES  
('41', '5', '009', 'FRANCISCO I. MADERO', '');

INSERT INTO municipios VALUES  
('42', '5', '010', 'FRONTERA', '');

INSERT INTO municipios VALUES  
('43', '5', '011', 'GENERAL CEPEDA', '');

INSERT INTO municipios VALUES  
('44', '5', '012', 'GUERRERO', '');

INSERT INTO municipios VALUES  
('45', '5', '013', 'HIDALGO', '');

INSERT INTO municipios VALUES  
('46', '5', '014', 'JIMENEZ', '');

INSERT INTO municipios VALUES  
('47', '5', '015', 'JUAREZ', '');

INSERT INTO municipios VALUES  
('48', '5', '016', 'LAMADRID', '');

INSERT INTO municipios VALUES  
('49', '5', '017', 'MATAMOROS', '');

INSERT INTO municipios VALUES  
('50', '5', '018', 'MONCLOVA', '');

INSERT INTO municipios VALUES  
('51', '5', '019', 'MORELOS', '');

INSERT INTO municipios VALUES  
('52', '5', '020', 'MUZQUIZ', '');

INSERT INTO municipios VALUES  
('53', '5', '021', 'NADADORES', '');

INSERT INTO municipios VALUES  
('54', '5', '022', 'NAVA', '');

INSERT INTO municipios VALUES  
('55', '5', '023', 'OCAMPO', '');

INSERT INTO municipios VALUES  
('56', '5', '024', 'PARRAS', '');

INSERT INTO municipios VALUES  
('57', '5', '025', 'PIEDRAS NEGRAS', '');

INSERT INTO municipios VALUES  
('58', '5', '026', 'PROGRESO', '');

INSERT INTO municipios VALUES  
('59', '5', '027', 'RAMOS ARIZPE', '');

INSERT INTO municipios VALUES  
('60', '5', '028', 'SABINAS', '');

INSERT INTO municipios VALUES  
('61', '5', '029', 'SACRAMENTO', '');

INSERT INTO municipios VALUES  
('62', '5', '030', 'SALTILLO', '');

INSERT INTO municipios VALUES  
('63', '5', '031', 'SAN BUENAVENTURA', '');

INSERT INTO municipios VALUES  
('64', '5', '032', 'SAN JUAN DE SABINAS', '');

INSERT INTO municipios VALUES  
('65', '5', '033', 'SAN PEDRO', '');

INSERT INTO municipios VALUES  
('66', '5', '034', 'SIERRA MOJADA', '');

INSERT INTO municipios VALUES  
('67', '5', '035', 'TORREON', '');

INSERT INTO municipios VALUES  
('68', '5', '036', 'VIESCA', '');

INSERT INTO municipios VALUES  
('69', '5', '037', 'VILLA UNION', '');

INSERT INTO municipios VALUES  
('70', '5', '038', 'ZARAGOZA', '');

INSERT INTO municipios VALUES  
('71', '6', '001', 'ARMERIA', '');

INSERT INTO municipios VALUES  
('72', '6', '002', 'COLIMA', '');

INSERT INTO municipios VALUES  
('73', '6', '003', 'COMALA', '');

INSERT INTO municipios VALUES  
('74', '6', '004', 'COQUIMATLAN', '');

INSERT INTO municipios VALUES  
('75', '6', '005', 'CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('76', '6', '006', 'IXTLAHUACAN', '');

INSERT INTO municipios VALUES  
('77', '6', '007', 'MANZANILLO', '');

INSERT INTO municipios VALUES  
('78', '6', '008', 'MINATITLAN', '');

INSERT INTO municipios VALUES  
('79', '6', '009', 'TECOMAN', '');

INSERT INTO municipios VALUES  
('80', '6', '010', 'VILLA DE ALVAREZ', '');

INSERT INTO municipios VALUES  
('81', '7', '001', 'ACACOYAGUA', '');

INSERT INTO municipios VALUES  
('82', '7', '002', 'ACALA', '');

INSERT INTO municipios VALUES  
('83', '7', '003', 'ACAPETAHUA', '');

INSERT INTO municipios VALUES  
('84', '7', '004', 'ALTAMIRANO', '');

INSERT INTO municipios VALUES  
('85', '7', '005', 'AMATAN', '');

INSERT INTO municipios VALUES  
('86', '7', '006', 'AMATENANGO DE LA FRONTERA', '');

INSERT INTO municipios VALUES  
('87', '7', '007', 'AMATENANGO DEL VALLE', '');

INSERT INTO municipios VALUES  
('88', '7', '008', 'ANGEL ALBINO CORZO', '');

INSERT INTO municipios VALUES  
('89', '7', '009', 'ARRIAGA', '');

INSERT INTO municipios VALUES  
('90', '7', '010', 'BEJUCAL DE OCAMPO', '');

INSERT INTO municipios VALUES  
('91', '7', '011', 'BELLA VISTA', '');

INSERT INTO municipios VALUES  
('92', '7', '012', 'BERRIOZABAL', '');

INSERT INTO municipios VALUES  
('93', '7', '013', 'BOCHIL', '');

INSERT INTO municipios VALUES  
('94', '7', '014', 'EL BOSQUE', '');

INSERT INTO municipios VALUES  
('95', '7', '015', 'CACAHOATAN', '');

INSERT INTO municipios VALUES  
('96', '7', '016', 'CATAZAJA', '');

INSERT INTO municipios VALUES  
('97', '7', '017', 'CINTALAPA', '');

INSERT INTO municipios VALUES  
('98', '7', '018', 'COAPILLA', '');

INSERT INTO municipios VALUES  
('99', '7', '019', 'COMITAN DE DOMINGUEZ', '');

INSERT INTO municipios VALUES  
('100', '7', '020', 'LA CONCORDIA', '');

INSERT INTO municipios VALUES  
('101', '7', '021', 'COPAINALA', '');

INSERT INTO municipios VALUES  
('102', '7', '022', 'CHALCHIHUITAN', '');

INSERT INTO municipios VALUES  
('103', '7', '023', 'CHAMULA', '');

INSERT INTO municipios VALUES  
('104', '7', '024', 'CHANAL', '');

INSERT INTO municipios VALUES  
('105', '7', '025', 'CHAPULTENANGO', '');

INSERT INTO municipios VALUES  
('106', '7', '026', 'CHENALHO', '');

INSERT INTO municipios VALUES  
('107', '7', '027', 'CHIAPA DE CORZO', '');

INSERT INTO municipios VALUES  
('108', '7', '028', 'CHIAPILLA', '');

INSERT INTO municipios VALUES  
('109', '7', '029', 'CHICOASEN', '');

INSERT INTO municipios VALUES  
('110', '7', '030', 'CHICOMUSELO', '');

INSERT INTO municipios VALUES  
('111', '7', '031', 'CHILON', '');

INSERT INTO municipios VALUES  
('112', '7', '032', 'ESCUINTLA', '');

INSERT INTO municipios VALUES  
('113', '7', '033', 'FRANCISCO LEON', '');

INSERT INTO municipios VALUES  
('114', '7', '034', 'FRONTERA COMALAPA', '');

INSERT INTO municipios VALUES  
('115', '7', '035', 'FRONTERA HIDALGO', '');

INSERT INTO municipios VALUES  
('116', '7', '036', 'LA GRANDEZA', '');

INSERT INTO municipios VALUES  
('117', '7', '037', 'HUEHUETAN', '');

INSERT INTO municipios VALUES  
('118', '7', '038', 'HUIXTAN', '');

INSERT INTO municipios VALUES  
('119', '7', '039', 'HUITIUPAN', '');

INSERT INTO municipios VALUES  
('120', '7', '040', 'HUIXTLA', '');

INSERT INTO municipios VALUES  
('121', '7', '041', 'LA INDEPENDENCIA', '');

INSERT INTO municipios VALUES  
('122', '7', '042', 'IXHUATAN', '');

INSERT INTO municipios VALUES  
('123', '7', '043', 'IXTACOMITAN', '');

INSERT INTO municipios VALUES  
('124', '7', '044', 'IXTAPA', '');

INSERT INTO municipios VALUES  
('125', '7', '045', 'IXTAPANGAJOYA', '');

INSERT INTO municipios VALUES  
('126', '7', '046', 'JIQUIPILAS', '');

INSERT INTO municipios VALUES  
('127', '7', '047', 'JITOTOL', '');

INSERT INTO municipios VALUES  
('128', '7', '048', 'JUAREZ', '');

INSERT INTO municipios VALUES  
('129', '7', '049', 'LARRAINZAR', '');

INSERT INTO municipios VALUES  
('130', '7', '050', 'LA LIBERTAD', '');

INSERT INTO municipios VALUES  
('131', '7', '051', 'MAPASTEPEC', '');

INSERT INTO municipios VALUES  
('132', '7', '052', 'LAS MARGARITAS', '');

INSERT INTO municipios VALUES  
('133', '7', '053', 'MAZAPA DE MADERO', '');

INSERT INTO municipios VALUES  
('134', '7', '054', 'MAZATAN', '');

INSERT INTO municipios VALUES  
('135', '7', '055', 'METAPA', '');

INSERT INTO municipios VALUES  
('136', '7', '056', 'MITONTIC', '');

INSERT INTO municipios VALUES  
('137', '7', '057', 'MOTOZINTLA', '');

INSERT INTO municipios VALUES  
('138', '7', '058', 'NICOLAS RUIZ', '');

INSERT INTO municipios VALUES  
('139', '7', '059', 'OCOSINGO', '');

INSERT INTO municipios VALUES  
('140', '7', '060', 'OCOTEPEC', '');

INSERT INTO municipios VALUES  
('141', '7', '061', 'OCOZOCOAUTLA DE ESPINOSA', '');

INSERT INTO municipios VALUES  
('142', '7', '062', 'OSTUACAN', '');

INSERT INTO municipios VALUES  
('143', '7', '063', 'OSUMACINTA', '');

INSERT INTO municipios VALUES  
('144', '7', '064', 'OXCHUC', '');

INSERT INTO municipios VALUES  
('145', '7', '065', 'PALENQUE', '');

INSERT INTO municipios VALUES  
('146', '7', '066', 'PANTELHO', '');

INSERT INTO municipios VALUES  
('147', '7', '067', 'PANTEPEC', '');

INSERT INTO municipios VALUES  
('148', '7', '068', 'PICHUCALCO', '');

INSERT INTO municipios VALUES  
('149', '7', '069', 'PIJIJIAPAN', '');

INSERT INTO municipios VALUES  
('150', '7', '070', 'EL PORVENIR', '');

INSERT INTO municipios VALUES  
('151', '7', '071', 'VILLA COMALTITLAN', '');

INSERT INTO municipios VALUES  
('152', '7', '072', 'PUEBLO NUEVO SOLISTAHUACAN', '');

INSERT INTO municipios VALUES  
('153', '7', '073', 'RAYON', '');

INSERT INTO municipios VALUES  
('154', '7', '074', 'REFORMA', '');

INSERT INTO municipios VALUES  
('155', '7', '075', 'LAS ROSAS', '');

INSERT INTO municipios VALUES  
('156', '7', '076', 'SABANILLA', '');

INSERT INTO municipios VALUES  
('157', '7', '077', 'SALTO DE AGUA', '');

INSERT INTO municipios VALUES  
('158', '7', '078', 'SAN CRISTOBAL DE LAS CASAS', '');

INSERT INTO municipios VALUES  
('159', '7', '079', 'SAN FERNANDO', '');

INSERT INTO municipios VALUES  
('160', '7', '080', 'SILTEPEC', '');

INSERT INTO municipios VALUES  
('161', '7', '081', 'SIMOJOVEL', '');

INSERT INTO municipios VALUES  
('162', '7', '082', 'SITALA', '');

INSERT INTO municipios VALUES  
('163', '7', '083', 'SOCOLTENANGO', '');

INSERT INTO municipios VALUES  
('164', '7', '084', 'SOLOSUCHIAPA', '');

INSERT INTO municipios VALUES  
('165', '7', '085', 'SOYALO', '');

INSERT INTO municipios VALUES  
('166', '7', '086', 'SUCHIAPA', '');

INSERT INTO municipios VALUES  
('167', '7', '087', 'SUCHIATE', '');

INSERT INTO municipios VALUES  
('168', '7', '088', 'SUNUAPA', '');

INSERT INTO municipios VALUES  
('169', '7', '089', 'TAPACHULA', '');

INSERT INTO municipios VALUES  
('170', '7', '090', 'TAPALAPA', '');

INSERT INTO municipios VALUES  
('171', '7', '091', 'TAPILULA', '');

INSERT INTO municipios VALUES  
('172', '7', '092', 'TECPATAN', '');

INSERT INTO municipios VALUES  
('173', '7', '093', 'TENEJAPA', '');

INSERT INTO municipios VALUES  
('174', '7', '094', 'TEOPISCA', '');

INSERT INTO municipios VALUES  
('175', '7', '096', 'TILA', '');

INSERT INTO municipios VALUES  
('176', '7', '097', 'TONALA', '');

INSERT INTO municipios VALUES  
('177', '7', '098', 'TOTOLAPA', '');

INSERT INTO municipios VALUES  
('178', '7', '099', 'LA TRINITARIA', '');

INSERT INTO municipios VALUES  
('179', '7', '100', 'TUMBALA', '');

INSERT INTO municipios VALUES  
('180', '7', '101', 'TUXTLA GUTIERREZ', '');

INSERT INTO municipios VALUES  
('181', '7', '102', 'TUXTLA CHICO', '');

INSERT INTO municipios VALUES  
('182', '7', '103', 'TUZANTAN', '');

INSERT INTO municipios VALUES  
('183', '7', '104', 'TZIMOL', '');

INSERT INTO municipios VALUES  
('184', '7', '105', 'UNION JUAREZ', '');

INSERT INTO municipios VALUES  
('185', '7', '106', 'VENUSTIANO CARRANZA', '');

INSERT INTO municipios VALUES  
('186', '7', '107', 'VILLA CORZO', '');

INSERT INTO municipios VALUES  
('187', '7', '108', 'VILLAFLORES', '');

INSERT INTO municipios VALUES  
('188', '7', '109', 'YAJALON', '');

INSERT INTO municipios VALUES  
('189', '7', '110', 'SAN LUCAS', '');

INSERT INTO municipios VALUES  
('190', '7', '111', 'ZINACANTAN', '');

INSERT INTO municipios VALUES  
('191', '7', '112', 'SAN JUAN CANCUC', '');

INSERT INTO municipios VALUES  
('192', '7', '113', 'ALDAMA', '');

INSERT INTO municipios VALUES  
('193', '7', '114', 'BENEMERITO DE LAS AMERICAS', '');

INSERT INTO municipios VALUES  
('194', '7', '115', 'MARAVILLA TENEJAPA', '');

INSERT INTO municipios VALUES  
('195', '7', '116', 'MARQUES DE COMILLAS', '');

INSERT INTO municipios VALUES  
('196', '7', '117', 'MONTECRISTO DE GUERRERO', '');

INSERT INTO municipios VALUES  
('197', '7', '118', 'SAN ANDRES DURAZNAL', '');

INSERT INTO municipios VALUES  
('198', '7', '119', 'SANTIAGO EL PINAR', '');

INSERT INTO municipios VALUES  
('199', '8', '001', 'AHUMADA', '');

INSERT INTO municipios VALUES  
('200', '8', '002', 'ALDAMA', '');

INSERT INTO municipios VALUES  
('201', '8', '003', 'ALLENDE', '');

INSERT INTO municipios VALUES  
('202', '8', '004', 'AQUILES SERDAN', '');

INSERT INTO municipios VALUES  
('203', '8', '005', 'ASCENSION', '');

INSERT INTO municipios VALUES  
('204', '8', '006', 'BACHINIVA', '');

INSERT INTO municipios VALUES  
('205', '8', '007', 'BALLEZA', '');

INSERT INTO municipios VALUES  
('206', '8', '008', 'BATOPILAS', '');

INSERT INTO municipios VALUES  
('207', '8', '009', 'BOCOYNA', '');

INSERT INTO municipios VALUES  
('208', '8', '010', 'BUENAVENTURA', '');

INSERT INTO municipios VALUES  
('209', '8', '011', 'CAMARGO', '');

INSERT INTO municipios VALUES  
('210', '8', '012', 'CARICHI', '');

INSERT INTO municipios VALUES  
('211', '8', '013', 'CASAS GRANDES', '');

INSERT INTO municipios VALUES  
('212', '8', '014', 'CORONADO', '');

INSERT INTO municipios VALUES  
('213', '8', '015', 'COYAME DEL SOTOL', '');

INSERT INTO municipios VALUES  
('214', '8', '016', 'LA CRUZ', '');

INSERT INTO municipios VALUES  
('215', '8', '017', 'CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('216', '8', '018', 'CUSIHUIRIACHI', '');

INSERT INTO municipios VALUES  
('217', '8', '019', 'CHIHUAHUA', '');

INSERT INTO municipios VALUES  
('218', '8', '020', 'CHINIPAS', '');

INSERT INTO municipios VALUES  
('219', '8', '021', 'DELICIAS', '');

INSERT INTO municipios VALUES  
('220', '8', '022', 'DR. BELISARIO DOMINGUEZ', '');

INSERT INTO municipios VALUES  
('221', '8', '023', 'GALEANA', '');

INSERT INTO municipios VALUES  
('222', '8', '024', 'SANTA ISABEL', '');

INSERT INTO municipios VALUES  
('223', '8', '025', 'GOMEZ FARIAS', '');

INSERT INTO municipios VALUES  
('224', '8', '026', 'GRAN MORELOS', '');

INSERT INTO municipios VALUES  
('225', '8', '027', 'GUACHOCHI', '');

INSERT INTO municipios VALUES  
('226', '8', '028', 'GUADALUPE', '');

INSERT INTO municipios VALUES  
('227', '8', '029', 'GUADALUPE Y CALVO', '');

INSERT INTO municipios VALUES  
('228', '8', '030', 'GUAZAPARES', '');

INSERT INTO municipios VALUES  
('229', '8', '031', 'GUERRERO', '');

INSERT INTO municipios VALUES  
('230', '8', '032', 'HIDALGO DEL PARRAL', '');

INSERT INTO municipios VALUES  
('231', '8', '033', 'HUEJOTITAN', '');

INSERT INTO municipios VALUES  
('232', '8', '034', 'IGNACIO ZARAGOZA', '');

INSERT INTO municipios VALUES  
('233', '8', '035', 'JANOS', '');

INSERT INTO municipios VALUES  
('234', '8', '036', 'JIMENEZ', '');

INSERT INTO municipios VALUES  
('235', '8', '037', 'JUAREZ', '');

INSERT INTO municipios VALUES  
('236', '8', '038', 'JULIMES', '');

INSERT INTO municipios VALUES  
('237', '8', '039', 'LOPEZ', '');

INSERT INTO municipios VALUES  
('238', '8', '040', 'MADERA', '');

INSERT INTO municipios VALUES  
('239', '8', '041', 'MAGUARICHI', '');

INSERT INTO municipios VALUES  
('240', '8', '042', 'MANUEL BENAVIDES', '');

INSERT INTO municipios VALUES  
('241', '8', '043', 'MATACHI', '');

INSERT INTO municipios VALUES  
('242', '8', '044', 'MATAMOROS', '');

INSERT INTO municipios VALUES  
('243', '8', '045', 'MEOQUI', '');

INSERT INTO municipios VALUES  
('244', '8', '046', 'MORELOS', '');

INSERT INTO municipios VALUES  
('245', '8', '047', 'MORIS', '');

INSERT INTO municipios VALUES  
('246', '8', '048', 'NAMIQUIPA', '');

INSERT INTO municipios VALUES  
('247', '8', '049', 'NONOAVA', '');

INSERT INTO municipios VALUES  
('248', '8', '050', 'NUEVO CASAS GRANDES', '');

INSERT INTO municipios VALUES  
('249', '8', '051', 'OCAMPO', '');

INSERT INTO municipios VALUES  
('250', '8', '052', 'OJINAGA', '');

INSERT INTO municipios VALUES  
('251', '8', '053', 'PRAXEDIS G. GUERRERO', '');

INSERT INTO municipios VALUES  
('252', '8', '054', 'RIVA PALACIO', '');

INSERT INTO municipios VALUES  
('253', '8', '055', 'ROSALES', '');

INSERT INTO municipios VALUES  
('254', '8', '056', 'ROSARIO', '');

INSERT INTO municipios VALUES  
('255', '8', '057', 'SAN FRANCISCO DE BORJA', '');

INSERT INTO municipios VALUES  
('256', '8', '058', 'SAN FRANCISCO DE CONCHOS', '');

INSERT INTO municipios VALUES  
('257', '8', '059', 'SAN FRANCISCO DEL ORO', '');

INSERT INTO municipios VALUES  
('258', '8', '060', 'SANTA BARBARA', '');

INSERT INTO municipios VALUES  
('259', '8', '061', 'SATEVO', '');

INSERT INTO municipios VALUES  
('260', '8', '062', 'SAUCILLO', '');

INSERT INTO municipios VALUES  
('261', '8', '063', 'TEMOSACHIC', '');

INSERT INTO municipios VALUES  
('262', '8', '064', 'EL TULE', '');

INSERT INTO municipios VALUES  
('263', '8', '065', 'URIQUE', '');

INSERT INTO municipios VALUES  
('264', '8', '066', 'URUACHI', '');

INSERT INTO municipios VALUES  
('265', '8', '067', 'VALLE DE ZARAGOZA', '');

INSERT INTO municipios VALUES  
('266', '9', '002', 'AZCAPOTZALCO', '');

INSERT INTO municipios VALUES  
('267', '9', '003', 'COYOACAN', '');

INSERT INTO municipios VALUES  
('268', '9', '004', 'CUAJIMALPA DE MORELOS', '');

INSERT INTO municipios VALUES  
('269', '9', '005', 'GUSTAVO A. MADERO', '');

INSERT INTO municipios VALUES  
('270', '9', '006', 'IZTACALCO', '');

INSERT INTO municipios VALUES  
('271', '9', '007', 'IZTAPALAPA', '');

INSERT INTO municipios VALUES  
('272', '9', '008', 'LA MAGDALENA CONTRERAS', '');

INSERT INTO municipios VALUES  
('273', '9', '009', 'MILPA ALTA', '');

INSERT INTO municipios VALUES  
('274', '9', '010', 'ALVARO OBREGON', '');

INSERT INTO municipios VALUES  
('275', '9', '011', 'TLAHUAC', '');

INSERT INTO municipios VALUES  
('276', '9', '012', 'TLALPAN', '');

INSERT INTO municipios VALUES  
('277', '9', '013', 'XOCHIMILCO', '');

INSERT INTO municipios VALUES  
('278', '9', '014', 'BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('279', '9', '015', 'CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('280', '9', '016', 'MIGUEL HIDALGO', '');

INSERT INTO municipios VALUES  
('281', '9', '017', 'VENUSTIANO CARRANZA', '');

INSERT INTO municipios VALUES  
('282', '10', '001', 'CANATLAN', '');

INSERT INTO municipios VALUES  
('283', '10', '002', 'CANELAS', '');

INSERT INTO municipios VALUES  
('284', '10', '003', 'CONETO DE COMONFORT', '');

INSERT INTO municipios VALUES  
('285', '10', '004', 'CUENCAME', '');

INSERT INTO municipios VALUES  
('286', '10', '005', 'DURANGO', '');

INSERT INTO municipios VALUES  
('287', '10', '006', 'GENERAL SIMON BOLIVAR', '');

INSERT INTO municipios VALUES  
('288', '10', '007', 'GOMEZ PALACIO', '');

INSERT INTO municipios VALUES  
('289', '10', '008', 'GUADALUPE VICTORIA', '');

INSERT INTO municipios VALUES  
('290', '10', '009', 'GUANACEVI', '');

INSERT INTO municipios VALUES  
('291', '10', '010', 'HIDALGO', '');

INSERT INTO municipios VALUES  
('292', '10', '011', 'INDE', '');

INSERT INTO municipios VALUES  
('293', '10', '012', 'LERDO', '');

INSERT INTO municipios VALUES  
('294', '10', '013', 'MAPIMI', '');

INSERT INTO municipios VALUES  
('295', '10', '014', 'MEZQUITAL', '');

INSERT INTO municipios VALUES  
('296', '10', '015', 'NAZAS', '');

INSERT INTO municipios VALUES  
('297', '10', '016', 'NOMBRE DE DIOS', '');

INSERT INTO municipios VALUES  
('298', '10', '017', 'OCAMPO', '');

INSERT INTO municipios VALUES  
('299', '10', '018', 'EL ORO', '');

INSERT INTO municipios VALUES  
('300', '10', '019', 'OTAEZ', '');

INSERT INTO municipios VALUES  
('301', '10', '020', 'PANUCO DE CORONADO', '');

INSERT INTO municipios VALUES  
('302', '10', '021', 'PEÑON BLANCO', '');

INSERT INTO municipios VALUES  
('303', '10', '022', 'POANAS', '');

INSERT INTO municipios VALUES  
('304', '10', '023', 'PUEBLO NUEVO', '');

INSERT INTO municipios VALUES  
('305', '10', '024', 'RODEO', '');

INSERT INTO municipios VALUES  
('306', '10', '025', 'SAN BERNARDO', '');

INSERT INTO municipios VALUES  
('307', '10', '026', 'SAN DIMAS', '');

INSERT INTO municipios VALUES  
('308', '10', '027', 'SAN JUAN DE GUADALUPE', '');

INSERT INTO municipios VALUES  
('309', '10', '028', 'SAN JUAN DEL RIO', '');

INSERT INTO municipios VALUES  
('310', '10', '029', 'SAN LUIS DEL CORDERO', '');

INSERT INTO municipios VALUES  
('311', '10', '030', 'SAN PEDRO DEL GALLO', '');

INSERT INTO municipios VALUES  
('312', '10', '031', 'SANTA CLARA', '');

INSERT INTO municipios VALUES  
('313', '10', '032', 'SANTIAGO PAPASQUIARO', '');

INSERT INTO municipios VALUES  
('314', '10', '033', 'SUCHIL', '');

INSERT INTO municipios VALUES  
('315', '10', '034', 'TAMAZULA', '');

INSERT INTO municipios VALUES  
('316', '10', '035', 'TEPEHUANES', '');

INSERT INTO municipios VALUES  
('317', '10', '036', 'TLAHUALILO', '');

INSERT INTO municipios VALUES  
('318', '10', '037', 'TOPIA', '');

INSERT INTO municipios VALUES  
('319', '10', '038', 'VICENTE GUERRERO', '');

INSERT INTO municipios VALUES  
('320', '10', '039', 'NUEVO IDEAL', '');

INSERT INTO municipios VALUES  
('321', '11', '001', 'ABASOLO', '');

INSERT INTO municipios VALUES  
('322', '11', '002', 'ACAMBARO', '');

INSERT INTO municipios VALUES  
('323', '11', '003', 'SAN MIGUEL DE ALLENDE', '');

INSERT INTO municipios VALUES  
('324', '11', '004', 'APASEO EL ALTO', '');

INSERT INTO municipios VALUES  
('325', '11', '005', 'APASEO EL GRANDE', '');

INSERT INTO municipios VALUES  
('326', '11', '006', 'ATARJEA', '');

INSERT INTO municipios VALUES  
('327', '11', '007', 'CELAYA', '');

INSERT INTO municipios VALUES  
('328', '11', '008', 'MANUEL DOBLADO', '');

INSERT INTO municipios VALUES  
('329', '11', '009', 'COMONFORT', '');

INSERT INTO municipios VALUES  
('330', '11', '010', 'CORONEO', '');

INSERT INTO municipios VALUES  
('331', '11', '011', 'CORTAZAR', '');

INSERT INTO municipios VALUES  
('332', '11', '012', 'CUERAMARO', '');

INSERT INTO municipios VALUES  
('333', '11', '013', 'DOCTOR MORA', '');

INSERT INTO municipios VALUES  
('334', '11', '014', 'DOLORES HIDALGO CUNA DE LA INDEPENDENCIA NACIONAL', '');

INSERT INTO municipios VALUES  
('335', '11', '015', 'GUANAJUATO', '');

INSERT INTO municipios VALUES  
('336', '11', '016', 'HUANIMARO', '');

INSERT INTO municipios VALUES  
('337', '11', '017', 'IRAPUATO', '');

INSERT INTO municipios VALUES  
('338', '11', '018', 'JARAL DEL PROGRESO', '');

INSERT INTO municipios VALUES  
('339', '11', '019', 'JERECUARO', '');

INSERT INTO municipios VALUES  
('340', '11', '020', 'LEON', '');

INSERT INTO municipios VALUES  
('341', '11', '021', 'MOROLEON', '');

INSERT INTO municipios VALUES  
('342', '11', '022', 'OCAMPO', '');

INSERT INTO municipios VALUES  
('343', '11', '023', 'PENJAMO', '');

INSERT INTO municipios VALUES  
('344', '11', '024', 'PUEBLO NUEVO', '');

INSERT INTO municipios VALUES  
('345', '11', '025', 'PURISIMA DEL RINCON', '');

INSERT INTO municipios VALUES  
('346', '11', '026', 'ROMITA', '');

INSERT INTO municipios VALUES  
('347', '11', '027', 'SALAMANCA', '');

INSERT INTO municipios VALUES  
('348', '11', '028', 'SALVATIERRA', '');

INSERT INTO municipios VALUES  
('349', '11', '029', 'SAN DIEGO DE LA UNION', '');

INSERT INTO municipios VALUES  
('350', '11', '030', 'SAN FELIPE', '');

INSERT INTO municipios VALUES  
('351', '11', '031', 'SAN FRANCISCO DEL RINCON', '');

INSERT INTO municipios VALUES  
('352', '11', '032', 'SAN JOSE ITURBIDE', '');

INSERT INTO municipios VALUES  
('353', '11', '033', 'SAN LUIS DE LA PAZ', '');

INSERT INTO municipios VALUES  
('354', '11', '034', 'SANTA CATARINA', '');

INSERT INTO municipios VALUES  
('355', '11', '035', 'SANTA CRUZ DE JUVENTINO ROSAS', '');

INSERT INTO municipios VALUES  
('356', '11', '036', 'SANTIAGO MARAVATIO', '');

INSERT INTO municipios VALUES  
('357', '11', '037', 'SILAO', '');

INSERT INTO municipios VALUES  
('358', '11', '038', 'TARANDACUAO', '');

INSERT INTO municipios VALUES  
('359', '11', '039', 'TARIMORO', '');

INSERT INTO municipios VALUES  
('360', '11', '040', 'TIERRA BLANCA', '');

INSERT INTO municipios VALUES  
('361', '11', '041', 'URIANGATO', '');

INSERT INTO municipios VALUES  
('362', '11', '042', 'VALLE DE SANTIAGO', '');

INSERT INTO municipios VALUES  
('363', '11', '043', 'VICTORIA', '');

INSERT INTO municipios VALUES  
('364', '11', '044', 'VILLAGRAN', '');

INSERT INTO municipios VALUES  
('365', '11', '045', 'XICHU', '');

INSERT INTO municipios VALUES  
('366', '11', '046', 'YURIRIA', '');

INSERT INTO municipios VALUES  
('367', '12', '001', 'ACAPULCO DE JUAREZ', '');

INSERT INTO municipios VALUES  
('368', '12', '002', 'AHUACUOTZINGO', '');

INSERT INTO municipios VALUES  
('369', '12', '003', 'AJUCHITLAN DEL PROGRESO', '');

INSERT INTO municipios VALUES  
('370', '12', '004', 'ALCOZAUCA DE GUERRERO', '');

INSERT INTO municipios VALUES  
('371', '12', '005', 'ALPOYECA', '');

INSERT INTO municipios VALUES  
('372', '12', '006', 'APAXTLA', '');

INSERT INTO municipios VALUES  
('373', '12', '007', 'ARCELIA', '');

INSERT INTO municipios VALUES  
('374', '12', '008', 'ATENANGO DEL RIO', '');

INSERT INTO municipios VALUES  
('375', '12', '009', 'ATLAMAJALCINGO DEL MONTE', '');

INSERT INTO municipios VALUES  
('376', '12', '010', 'ATLIXTAC', '');

INSERT INTO municipios VALUES  
('377', '12', '011', 'ATOYAC DE ALVAREZ', '');

INSERT INTO municipios VALUES  
('378', '12', '012', 'AYUTLA DE LOS LIBRES', '');

INSERT INTO municipios VALUES  
('379', '12', '013', 'AZOYU', '');

INSERT INTO municipios VALUES  
('380', '12', '014', 'BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('381', '12', '015', 'BUENAVISTA DE CUELLAR', '');

INSERT INTO municipios VALUES  
('382', '12', '016', 'COAHUAYUTLA DE JOSE MARIA IZAZAGA', '');

INSERT INTO municipios VALUES  
('383', '12', '017', 'COCULA', '');

INSERT INTO municipios VALUES  
('384', '12', '018', 'COPALA', '');

INSERT INTO municipios VALUES  
('385', '12', '019', 'COPALILLO', '');

INSERT INTO municipios VALUES  
('386', '12', '020', 'COPANATOYAC', '');

INSERT INTO municipios VALUES  
('387', '12', '021', 'COYUCA DE BENITEZ', '');

INSERT INTO municipios VALUES  
('388', '12', '022', 'COYUCA DE CATALAN', '');

INSERT INTO municipios VALUES  
('389', '12', '023', 'CUAJINICUILAPA', '');

INSERT INTO municipios VALUES  
('390', '12', '024', 'CUALAC', '');

INSERT INTO municipios VALUES  
('391', '12', '025', 'CUAUTEPEC', '');

INSERT INTO municipios VALUES  
('392', '12', '026', 'CUETZALA DEL PROGRESO', '');

INSERT INTO municipios VALUES  
('393', '12', '027', 'CUTZAMALA DE PINZON', '');

INSERT INTO municipios VALUES  
('394', '12', '028', 'CHILAPA DE ALVAREZ', '');

INSERT INTO municipios VALUES  
('395', '12', '029', 'CHILPANCINGO DE LOS BRAVO', '');

INSERT INTO municipios VALUES  
('396', '12', '030', 'FLORENCIO VILLARREAL', '');

INSERT INTO municipios VALUES  
('397', '12', '031', 'GENERAL CANUTO A. NERI', '');

INSERT INTO municipios VALUES  
('398', '12', '032', 'GENERAL HELIODORO CASTILLO', '');

INSERT INTO municipios VALUES  
('399', '12', '033', 'HUAMUXTITLAN', '');

INSERT INTO municipios VALUES  
('400', '12', '034', 'HUITZUCO DE LOS FIGUEROA', '');

INSERT INTO municipios VALUES  
('401', '12', '035', 'IGUALA DE LA INDEPENDENCIA', '');

INSERT INTO municipios VALUES  
('402', '12', '036', 'IGUALAPA', '');

INSERT INTO municipios VALUES  
('403', '12', '037', 'IXCATEOPAN DE CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('404', '12', '038', 'ZIHUATANEJO DE AZUETA', '');

INSERT INTO municipios VALUES  
('405', '12', '039', 'JUAN R. ESCUDERO', '');

INSERT INTO municipios VALUES  
('406', '12', '040', 'LEONARDO BRAVO', '');

INSERT INTO municipios VALUES  
('407', '12', '041', 'MALINALTEPEC', '');

INSERT INTO municipios VALUES  
('408', '12', '042', 'MARTIR DE CUILAPAN', '');

INSERT INTO municipios VALUES  
('409', '12', '043', 'METLATONOC', '');

INSERT INTO municipios VALUES  
('410', '12', '044', 'MOCHITLAN', '');

INSERT INTO municipios VALUES  
('411', '12', '045', 'OLINALA', '');

INSERT INTO municipios VALUES  
('412', '12', '046', 'OMETEPEC', '');

INSERT INTO municipios VALUES  
('413', '12', '047', 'PEDRO ASCENCIO ALQUISIRAS', '');

INSERT INTO municipios VALUES  
('414', '12', '048', 'PETATLAN', '');

INSERT INTO municipios VALUES  
('415', '12', '049', 'PILCAYA', '');

INSERT INTO municipios VALUES  
('416', '12', '050', 'PUNGARABATO', '');

INSERT INTO municipios VALUES  
('417', '12', '051', 'QUECHULTENANGO', '');

INSERT INTO municipios VALUES  
('418', '12', '052', 'SAN LUIS ACATLAN', '');

INSERT INTO municipios VALUES  
('419', '12', '053', 'SAN MARCOS', '');

INSERT INTO municipios VALUES  
('420', '12', '054', 'SAN MIGUEL TOTOLAPAN', '');

INSERT INTO municipios VALUES  
('421', '12', '055', 'TAXCO DE ALARCON', '');

INSERT INTO municipios VALUES  
('422', '12', '056', 'TECOANAPA', '');

INSERT INTO municipios VALUES  
('423', '12', '057', 'TECPAN DE GALEANA', '');

INSERT INTO municipios VALUES  
('424', '12', '058', 'TELOLOAPAN', '');

INSERT INTO municipios VALUES  
('425', '12', '059', 'TEPECOACUILCO DE TRUJANO', '');

INSERT INTO municipios VALUES  
('426', '12', '060', 'TETIPAC', '');

INSERT INTO municipios VALUES  
('427', '12', '061', 'TIXTLA DE GUERRERO', '');

INSERT INTO municipios VALUES  
('428', '12', '062', 'TLACOACHISTLAHUACA', '');

INSERT INTO municipios VALUES  
('429', '12', '063', 'TLACOAPA', '');

INSERT INTO municipios VALUES  
('430', '12', '064', 'TLALCHAPA', '');

INSERT INTO municipios VALUES  
('431', '12', '065', 'TLALIXTAQUILLA DE MALDONADO', '');

INSERT INTO municipios VALUES  
('432', '12', '066', 'TLAPA DE COMONFORT', '');

INSERT INTO municipios VALUES  
('433', '12', '067', 'TLAPEHUALA', '');

INSERT INTO municipios VALUES  
('434', '12', '068', 'LA UNION DE ISIDORO MONTES DE OCA', '');

INSERT INTO municipios VALUES  
('435', '12', '069', 'XALPATLAHUAC', '');

INSERT INTO municipios VALUES  
('436', '12', '070', 'XOCHIHUEHUETLAN', '');

INSERT INTO municipios VALUES  
('437', '12', '071', 'XOCHISTLAHUACA', '');

INSERT INTO municipios VALUES  
('438', '12', '072', 'ZAPOTITLAN TABLAS', '');

INSERT INTO municipios VALUES  
('439', '12', '073', 'ZIRANDARO', '');

INSERT INTO municipios VALUES  
('440', '12', '074', 'ZITLALA', '');

INSERT INTO municipios VALUES  
('441', '12', '075', 'EDUARDO NERI', '');

INSERT INTO municipios VALUES  
('442', '12', '076', 'ACATEPEC', '');

INSERT INTO municipios VALUES  
('443', '12', '077', 'MARQUELIA', '');

INSERT INTO municipios VALUES  
('444', '12', '078', 'COCHOAPA EL GRANDE', '');

INSERT INTO municipios VALUES  
('445', '12', '079', 'JOSE JOAQUIN DE HERRERA', '');

INSERT INTO municipios VALUES  
('446', '12', '080', 'JUCHITAN', '');

INSERT INTO municipios VALUES  
('447', '12', '081', 'ILIATENCO', '');

INSERT INTO municipios VALUES  
('448', '13', '001', 'ACATLAN', '');

INSERT INTO municipios VALUES  
('449', '13', '002', 'ACAXOCHITLAN', '');

INSERT INTO municipios VALUES  
('450', '13', '003', 'ACTOPAN', '');

INSERT INTO municipios VALUES  
('451', '13', '004', 'AGUA BLANCA DE ITURBIDE', '');

INSERT INTO municipios VALUES  
('452', '13', '005', 'AJACUBA', '');

INSERT INTO municipios VALUES  
('453', '13', '006', 'ALFAJAYUCAN', '');

INSERT INTO municipios VALUES  
('454', '13', '007', 'ALMOLOYA', '');

INSERT INTO municipios VALUES  
('455', '13', '008', 'APAN', '');

INSERT INTO municipios VALUES  
('456', '13', '009', 'EL ARENAL', '');

INSERT INTO municipios VALUES  
('457', '13', '010', 'ATITALAQUIA', '');

INSERT INTO municipios VALUES  
('458', '13', '011', 'ATLAPEXCO', '');

INSERT INTO municipios VALUES  
('459', '13', '012', 'ATOTONILCO EL GRANDE', '');

INSERT INTO municipios VALUES  
('460', '13', '013', 'ATOTONILCO DE TULA', '');

INSERT INTO municipios VALUES  
('461', '13', '014', 'CALNALI', '');

INSERT INTO municipios VALUES  
('462', '13', '015', 'CARDONAL', '');

INSERT INTO municipios VALUES  
('463', '13', '016', 'CUAUTEPEC DE HINOJOSA', '');

INSERT INTO municipios VALUES  
('464', '13', '017', 'CHAPANTONGO', '');

INSERT INTO municipios VALUES  
('465', '13', '018', 'CHAPULHUACAN', '');

INSERT INTO municipios VALUES  
('466', '13', '019', 'CHILCUAUTLA', '');

INSERT INTO municipios VALUES  
('467', '13', '020', 'ELOXOCHITLAN', '');

INSERT INTO municipios VALUES  
('468', '13', '021', 'EMILIANO ZAPATA', '');

INSERT INTO municipios VALUES  
('469', '13', '022', 'EPAZOYUCAN', '');

INSERT INTO municipios VALUES  
('470', '13', '023', 'FRANCISCO I. MADERO', '');

INSERT INTO municipios VALUES  
('471', '13', '024', 'HUASCA DE OCAMPO', '');

INSERT INTO municipios VALUES  
('472', '13', '025', 'HUAUTLA', '');

INSERT INTO municipios VALUES  
('473', '13', '026', 'HUAZALINGO', '');

INSERT INTO municipios VALUES  
('474', '13', '027', 'HUEHUETLA', '');

INSERT INTO municipios VALUES  
('475', '13', '028', 'HUEJUTLA DE REYES', '');

INSERT INTO municipios VALUES  
('476', '13', '029', 'HUICHAPAN', '');

INSERT INTO municipios VALUES  
('477', '13', '030', 'IXMIQUILPAN', '');

INSERT INTO municipios VALUES  
('478', '13', '031', 'JACALA DE LEDEZMA', '');

INSERT INTO municipios VALUES  
('479', '13', '032', 'JALTOCAN', '');

INSERT INTO municipios VALUES  
('480', '13', '033', 'JUAREZ HIDALGO', '');

INSERT INTO municipios VALUES  
('481', '13', '034', 'LOLOTLA', '');

INSERT INTO municipios VALUES  
('482', '13', '035', 'METEPEC', '');

INSERT INTO municipios VALUES  
('483', '13', '036', 'SAN AGUSTIN METZQUITITLAN', '');

INSERT INTO municipios VALUES  
('484', '13', '037', 'METZTITLAN', '');

INSERT INTO municipios VALUES  
('485', '13', '038', 'MINERAL DEL CHICO', '');

INSERT INTO municipios VALUES  
('486', '13', '039', 'MINERAL DEL MONTE', '');

INSERT INTO municipios VALUES  
('487', '13', '040', 'LA MISION', '');

INSERT INTO municipios VALUES  
('488', '13', '041', 'MIXQUIAHUALA DE JUAREZ', '');

INSERT INTO municipios VALUES  
('489', '13', '042', 'MOLANGO DE ESCAMILLA', '');

INSERT INTO municipios VALUES  
('490', '13', '043', 'NICOLAS FLORES', '');

INSERT INTO municipios VALUES  
('491', '13', '044', 'NOPALA DE VILLAGRAN', '');

INSERT INTO municipios VALUES  
('492', '13', '045', 'OMITLAN DE JUAREZ', '');

INSERT INTO municipios VALUES  
('493', '13', '046', 'SAN FELIPE ORIZATLAN', '');

INSERT INTO municipios VALUES  
('494', '13', '047', 'PACULA', '');

INSERT INTO municipios VALUES  
('495', '13', '048', 'PACHUCA DE SOTO', '');

INSERT INTO municipios VALUES  
('496', '13', '049', 'PISAFLORES', '');

INSERT INTO municipios VALUES  
('497', '13', '050', 'PROGRESO DE OBREGON', '');

INSERT INTO municipios VALUES  
('498', '13', '051', 'MINERAL DE LA REFORMA', '');

INSERT INTO municipios VALUES  
('499', '13', '052', 'SAN AGUSTIN TLAXIACA', '');

INSERT INTO municipios VALUES  
('500', '13', '053', 'SAN BARTOLO TUTOTEPEC', '');

INSERT INTO municipios VALUES  
('501', '13', '054', 'SAN SALVADOR', '');

INSERT INTO municipios VALUES  
('502', '13', '055', 'SANTIAGO DE ANAYA', '');

INSERT INTO municipios VALUES  
('503', '13', '056', 'SANTIAGO TULANTEPEC DE LUGO GUERRERO', '');

INSERT INTO municipios VALUES  
('504', '13', '057', 'SINGUILUCAN', '');

INSERT INTO municipios VALUES  
('505', '13', '058', 'TASQUILLO', '');

INSERT INTO municipios VALUES  
('506', '13', '059', 'TECOZAUTLA', '');

INSERT INTO municipios VALUES  
('507', '13', '060', 'TENANGO DE DORIA', '');

INSERT INTO municipios VALUES  
('508', '13', '061', 'TEPEAPULCO', '');

INSERT INTO municipios VALUES  
('509', '13', '062', 'TEPEHUACAN DE GUERRERO', '');

INSERT INTO municipios VALUES  
('510', '13', '063', 'TEPEJI DEL RIO DE OCAMPO', '');

INSERT INTO municipios VALUES  
('511', '13', '064', 'TEPETITLAN', '');

INSERT INTO municipios VALUES  
('512', '13', '065', 'TETEPANGO', '');

INSERT INTO municipios VALUES  
('513', '13', '066', 'VILLA DE TEZONTEPEC', '');

INSERT INTO municipios VALUES  
('514', '13', '067', 'TEZONTEPEC DE ALDAMA', '');

INSERT INTO municipios VALUES  
('515', '13', '068', 'TIANGUISTENGO', '');

INSERT INTO municipios VALUES  
('516', '13', '069', 'TIZAYUCA', '');

INSERT INTO municipios VALUES  
('517', '13', '070', 'TLAHUELILPAN', '');

INSERT INTO municipios VALUES  
('518', '13', '071', 'TLAHUILTEPA', '');

INSERT INTO municipios VALUES  
('519', '13', '072', 'TLANALAPA', '');

INSERT INTO municipios VALUES  
('520', '13', '073', 'TLANCHINOL', '');

INSERT INTO municipios VALUES  
('521', '13', '074', 'TLAXCOAPAN', '');

INSERT INTO municipios VALUES  
('522', '13', '075', 'TOLCAYUCA', '');

INSERT INTO municipios VALUES  
('523', '13', '076', 'TULA DE ALLENDE', '');

INSERT INTO municipios VALUES  
('524', '13', '077', 'TULANCINGO DE BRAVO', '');

INSERT INTO municipios VALUES  
('525', '13', '078', 'XOCHIATIPAN', '');

INSERT INTO municipios VALUES  
('526', '13', '079', 'XOCHICOATLAN', '');

INSERT INTO municipios VALUES  
('527', '13', '080', 'YAHUALICA', '');

INSERT INTO municipios VALUES  
('528', '13', '081', 'ZACUALTIPAN DE ANGELES', '');

INSERT INTO municipios VALUES  
('529', '13', '082', 'ZAPOTLAN DE JUAREZ', '');

INSERT INTO municipios VALUES  
('530', '13', '083', 'ZEMPOALA', '');

INSERT INTO municipios VALUES  
('531', '13', '084', 'ZIMAPAN', '');

INSERT INTO municipios VALUES  
('532', '14', '001', 'ACATIC', '');

INSERT INTO municipios VALUES  
('533', '14', '002', 'ACATLAN DE JUAREZ', '');

INSERT INTO municipios VALUES  
('534', '14', '003', 'AHUALULCO DE MERCADO', '');

INSERT INTO municipios VALUES  
('535', '14', '004', 'AMACUECA', '');

INSERT INTO municipios VALUES  
('536', '14', '005', 'AMATITAN', '');

INSERT INTO municipios VALUES  
('537', '14', '006', 'AMECA', '');

INSERT INTO municipios VALUES  
('538', '14', '007', 'SAN JUANITO DE ESCOBEDO', '');

INSERT INTO municipios VALUES  
('539', '14', '008', 'ARANDAS', '');

INSERT INTO municipios VALUES  
('540', '14', '009', 'EL ARENAL', '');

INSERT INTO municipios VALUES  
('541', '14', '010', 'ATEMAJAC DE BRIZUELA', '');

INSERT INTO municipios VALUES  
('542', '14', '011', 'ATENGO', '');

INSERT INTO municipios VALUES  
('543', '14', '012', 'ATENGUILLO', '');

INSERT INTO municipios VALUES  
('544', '14', '013', 'ATOTONILCO EL ALTO', '');

INSERT INTO municipios VALUES  
('545', '14', '014', 'ATOYAC', '');

INSERT INTO municipios VALUES  
('546', '14', '015', 'AUTLAN DE NAVARRO', '');

INSERT INTO municipios VALUES  
('547', '14', '016', 'AYOTLAN', '');

INSERT INTO municipios VALUES  
('548', '14', '017', 'AYUTLA', '');

INSERT INTO municipios VALUES  
('549', '14', '018', 'LA BARCA', '');

INSERT INTO municipios VALUES  
('550', '14', '019', 'BOLAÑOS', '');

INSERT INTO municipios VALUES  
('551', '14', '020', 'CABO CORRIENTES', '');

INSERT INTO municipios VALUES  
('552', '14', '021', 'CASIMIRO CASTILLO', '');

INSERT INTO municipios VALUES  
('553', '14', '022', 'CIHUATLAN', '');

INSERT INTO municipios VALUES  
('554', '14', '023', 'ZAPOTLAN EL GRANDE', '');

INSERT INTO municipios VALUES  
('555', '14', '024', 'COCULA', '');

INSERT INTO municipios VALUES  
('556', '14', '025', 'COLOTLAN', '');

INSERT INTO municipios VALUES  
('557', '14', '026', 'CONCEPCION DE BUENOS AIRES', '');

INSERT INTO municipios VALUES  
('558', '14', '027', 'CUAUTITLAN DE GARCIA BARRAGAN', '');

INSERT INTO municipios VALUES  
('559', '14', '028', 'CUAUTLA', '');

INSERT INTO municipios VALUES  
('560', '14', '029', 'CUQUIO', '');

INSERT INTO municipios VALUES  
('561', '14', '030', 'CHAPALA', '');

INSERT INTO municipios VALUES  
('562', '14', '031', 'CHIMALTITAN', '');

INSERT INTO municipios VALUES  
('563', '14', '032', 'CHIQUILISTLAN', '');

INSERT INTO municipios VALUES  
('564', '14', '033', 'DEGOLLADO', '');

INSERT INTO municipios VALUES  
('565', '14', '034', 'EJUTLA', '');

INSERT INTO municipios VALUES  
('566', '14', '035', 'ENCARNACION DE DIAZ', '');

INSERT INTO municipios VALUES  
('567', '14', '036', 'ETZATLAN', '');

INSERT INTO municipios VALUES  
('568', '14', '037', 'EL GRULLO', '');

INSERT INTO municipios VALUES  
('569', '14', '038', 'GUACHINANGO', '');

INSERT INTO municipios VALUES  
('570', '14', '039', 'GUADALAJARA', '');

INSERT INTO municipios VALUES  
('571', '14', '040', 'HOSTOTIPAQUILLO', '');

INSERT INTO municipios VALUES  
('572', '14', '041', 'HUEJUCAR', '');

INSERT INTO municipios VALUES  
('573', '14', '042', 'HUEJUQUILLA EL ALTO', '');

INSERT INTO municipios VALUES  
('574', '14', '043', 'LA HUERTA', '');

INSERT INTO municipios VALUES  
('575', '14', '044', 'IXTLAHUACAN DE LOS MEMBRILLOS', '');

INSERT INTO municipios VALUES  
('576', '14', '045', 'IXTLAHUACAN DEL RIO', '');

INSERT INTO municipios VALUES  
('577', '14', '046', 'JALOSTOTITLAN', '');

INSERT INTO municipios VALUES  
('578', '14', '047', 'JAMAY', '');

INSERT INTO municipios VALUES  
('579', '14', '048', 'JESUS MARIA', '');

INSERT INTO municipios VALUES  
('580', '14', '049', 'JILOTLAN DE LOS DOLORES', '');

INSERT INTO municipios VALUES  
('581', '14', '050', 'JOCOTEPEC', '');

INSERT INTO municipios VALUES  
('582', '14', '051', 'JUANACATLAN', '');

INSERT INTO municipios VALUES  
('583', '14', '052', 'JUCHITLAN', '');

INSERT INTO municipios VALUES  
('584', '14', '053', 'LAGOS DE MORENO', '');

INSERT INTO municipios VALUES  
('585', '14', '054', 'EL LIMON', '');

INSERT INTO municipios VALUES  
('586', '14', '055', 'MAGDALENA', '');

INSERT INTO municipios VALUES  
('587', '14', '056', 'SANTA MARIA DEL ORO', '');

INSERT INTO municipios VALUES  
('588', '14', '057', 'LA MANZANILLA DE LA PAZ', '');

INSERT INTO municipios VALUES  
('589', '14', '058', 'MASCOTA', '');

INSERT INTO municipios VALUES  
('590', '14', '059', 'MAZAMITLA', '');

INSERT INTO municipios VALUES  
('591', '14', '060', 'MEXTICACAN', '');

INSERT INTO municipios VALUES  
('592', '14', '061', 'MEZQUITIC', '');

INSERT INTO municipios VALUES  
('593', '14', '062', 'MIXTLAN', '');

INSERT INTO municipios VALUES  
('594', '14', '063', 'OCOTLAN', '');

INSERT INTO municipios VALUES  
('595', '14', '064', 'OJUELOS DE JALISCO', '');

INSERT INTO municipios VALUES  
('596', '14', '065', 'PIHUAMO', '');

INSERT INTO municipios VALUES  
('597', '14', '066', 'PONCITLAN', '');

INSERT INTO municipios VALUES  
('598', '14', '067', 'PUERTO VALLARTA', '');

INSERT INTO municipios VALUES  
('599', '14', '068', 'VILLA PURIFICACION', '');

INSERT INTO municipios VALUES  
('600', '14', '069', 'QUITUPAN', '');

INSERT INTO municipios VALUES  
('601', '14', '070', 'EL SALTO', '');

INSERT INTO municipios VALUES  
('602', '14', '071', 'SAN CRISTOBAL DE LA BARRANCA', '');

INSERT INTO municipios VALUES  
('603', '14', '072', 'SAN DIEGO DE ALEJANDRIA', '');

INSERT INTO municipios VALUES  
('604', '14', '073', 'SAN JUAN DE LOS LAGOS', '');

INSERT INTO municipios VALUES  
('605', '14', '074', 'SAN JULIAN', '');

INSERT INTO municipios VALUES  
('606', '14', '075', 'SAN MARCOS', '');

INSERT INTO municipios VALUES  
('607', '14', '076', 'SAN MARTIN DE BOLAÑOS', '');

INSERT INTO municipios VALUES  
('608', '14', '077', 'SAN MARTIN HIDALGO', '');

INSERT INTO municipios VALUES  
('609', '14', '078', 'SAN MIGUEL EL ALTO', '');

INSERT INTO municipios VALUES  
('610', '14', '079', 'GOMEZ FARIAS', '');

INSERT INTO municipios VALUES  
('611', '14', '080', 'SAN SEBASTIAN DEL OESTE', '');

INSERT INTO municipios VALUES  
('612', '14', '081', 'SANTA MARIA DE LOS ANGELES', '');

INSERT INTO municipios VALUES  
('613', '14', '082', 'SAYULA', '');

INSERT INTO municipios VALUES  
('614', '14', '083', 'TALA', '');

INSERT INTO municipios VALUES  
('615', '14', '084', 'TALPA DE ALLENDE', '');

INSERT INTO municipios VALUES  
('616', '14', '085', 'TAMAZULA DE GORDIANO', '');

INSERT INTO municipios VALUES  
('617', '14', '086', 'TAPALPA', '');

INSERT INTO municipios VALUES  
('618', '14', '087', 'TECALITLAN', '');

INSERT INTO municipios VALUES  
('619', '14', '088', 'TECOLOTLAN', '');

INSERT INTO municipios VALUES  
('620', '14', '089', 'TECHALUTA DE MONTENEGRO', '');

INSERT INTO municipios VALUES  
('621', '14', '090', 'TENAMAXTLAN', '');

INSERT INTO municipios VALUES  
('622', '14', '091', 'TEOCALTICHE', '');

INSERT INTO municipios VALUES  
('623', '14', '092', 'TEOCUITATLAN DE CORONA', '');

INSERT INTO municipios VALUES  
('624', '14', '093', 'TEPATITLAN DE MORELOS', '');

INSERT INTO municipios VALUES  
('625', '14', '094', 'TEQUILA', '');

INSERT INTO municipios VALUES  
('626', '14', '095', 'TEUCHITLAN', '');

INSERT INTO municipios VALUES  
('627', '14', '096', 'TIZAPAN EL ALTO', '');

INSERT INTO municipios VALUES  
('628', '14', '097', 'TLAJOMULCO DE ZUÑIGA', '');

INSERT INTO municipios VALUES  
('629', '14', '098', 'SAN PEDRO TLAQUEPAQUE', '');

INSERT INTO municipios VALUES  
('630', '14', '099', 'TOLIMAN', '');

INSERT INTO municipios VALUES  
('631', '14', '100', 'TOMATLAN', '');

INSERT INTO municipios VALUES  
('632', '14', '101', 'TONALA', '');

INSERT INTO municipios VALUES  
('633', '14', '102', 'TONAYA', '');

INSERT INTO municipios VALUES  
('634', '14', '103', 'TONILA', '');

INSERT INTO municipios VALUES  
('635', '14', '104', 'TOTATICHE', '');

INSERT INTO municipios VALUES  
('636', '14', '105', 'TOTOTLAN', '');

INSERT INTO municipios VALUES  
('637', '14', '106', 'TUXCACUESCO', '');

INSERT INTO municipios VALUES  
('638', '14', '107', 'TUXCUECA', '');

INSERT INTO municipios VALUES  
('639', '14', '108', 'TUXPAN', '');

INSERT INTO municipios VALUES  
('640', '14', '109', 'UNION DE SAN ANTONIO', '');

INSERT INTO municipios VALUES  
('641', '14', '110', 'UNION DE TULA', '');

INSERT INTO municipios VALUES  
('642', '14', '111', 'VALLE DE GUADALUPE', '');

INSERT INTO municipios VALUES  
('643', '14', '112', 'VALLE DE JUAREZ', '');

INSERT INTO municipios VALUES  
('644', '14', '113', 'SAN GABRIEL', '');

INSERT INTO municipios VALUES  
('645', '14', '114', 'VILLA CORONA', '');

INSERT INTO municipios VALUES  
('646', '14', '115', 'VILLA GUERRERO', '');

INSERT INTO municipios VALUES  
('647', '14', '116', 'VILLA HIDALGO', '');

INSERT INTO municipios VALUES  
('648', '14', '117', 'CAÑADAS DE OBREGON', '');

INSERT INTO municipios VALUES  
('649', '14', '118', 'YAHUALICA DE GONZALEZ GALLO', '');

INSERT INTO municipios VALUES  
('650', '14', '119', 'ZACOALCO DE TORRES', '');

INSERT INTO municipios VALUES  
('651', '14', '120', 'ZAPOPAN', '');

INSERT INTO municipios VALUES  
('652', '14', '121', 'ZAPOTILTIC', '');

INSERT INTO municipios VALUES  
('653', '14', '122', 'ZAPOTITLAN DE VADILLO', '');

INSERT INTO municipios VALUES  
('654', '14', '123', 'ZAPOTLAN DEL REY', '');

INSERT INTO municipios VALUES  
('655', '14', '124', 'ZAPOTLANEJO', '');

INSERT INTO municipios VALUES  
('656', '14', '125', 'SAN IGNACIO CERRO GORDO', '');

INSERT INTO municipios VALUES  
('657', '15', '001', 'ACAMBAY', '');

INSERT INTO municipios VALUES  
('658', '15', '002', 'ACOLMAN', '');

INSERT INTO municipios VALUES  
('659', '15', '003', 'ACULCO', '');

INSERT INTO municipios VALUES  
('660', '15', '004', 'ALMOLOYA DE ALQUISIRAS', '');

INSERT INTO municipios VALUES  
('661', '15', '005', 'ALMOLOYA DE JUAREZ', '');

INSERT INTO municipios VALUES  
('662', '15', '006', 'ALMOLOYA DEL RIO', '');

INSERT INTO municipios VALUES  
('663', '15', '007', 'AMANALCO', '');

INSERT INTO municipios VALUES  
('664', '15', '008', 'AMATEPEC', '');

INSERT INTO municipios VALUES  
('665', '15', '009', 'AMECAMECA', '');

INSERT INTO municipios VALUES  
('666', '15', '010', 'APAXCO', '');

INSERT INTO municipios VALUES  
('667', '15', '011', 'ATENCO', '');

INSERT INTO municipios VALUES  
('668', '15', '012', 'ATIZAPAN', '');

INSERT INTO municipios VALUES  
('669', '15', '013', 'ATIZAPAN DE ZARAGOZA', '');

INSERT INTO municipios VALUES  
('670', '15', '014', 'ATLACOMULCO', '');

INSERT INTO municipios VALUES  
('671', '15', '015', 'ATLAUTLA', '');

INSERT INTO municipios VALUES  
('672', '15', '016', 'AXAPUSCO', '');

INSERT INTO municipios VALUES  
('673', '15', '017', 'AYAPANGO', '');

INSERT INTO municipios VALUES  
('674', '15', '018', 'CALIMAYA', '');

INSERT INTO municipios VALUES  
('675', '15', '019', 'CAPULHUAC', '');

INSERT INTO municipios VALUES  
('676', '15', '020', 'COACALCO DE BERRIOZABAL', '');

INSERT INTO municipios VALUES  
('677', '15', '021', 'COATEPEC HARINAS', '');

INSERT INTO municipios VALUES  
('678', '15', '022', 'COCOTITLAN', '');

INSERT INTO municipios VALUES  
('679', '15', '023', 'COYOTEPEC', '');

INSERT INTO municipios VALUES  
('680', '15', '024', 'CUAUTITLAN', '');

INSERT INTO municipios VALUES  
('681', '15', '025', 'CHALCO', '');

INSERT INTO municipios VALUES  
('682', '15', '026', 'CHAPA DE MOTA', '');

INSERT INTO municipios VALUES  
('683', '15', '027', 'CHAPULTEPEC', '');

INSERT INTO municipios VALUES  
('684', '15', '028', 'CHIAUTLA', '');

INSERT INTO municipios VALUES  
('685', '15', '029', 'CHICOLOAPAN', '');

INSERT INTO municipios VALUES  
('686', '15', '030', 'CHICONCUAC', '');

INSERT INTO municipios VALUES  
('687', '15', '031', 'CHIMALHUACAN', '');

INSERT INTO municipios VALUES  
('688', '15', '032', 'DONATO GUERRA', '');

INSERT INTO municipios VALUES  
('689', '15', '033', 'ECATEPEC DE MORELOS', '');

INSERT INTO municipios VALUES  
('690', '15', '034', 'ECATZINGO', '');

INSERT INTO municipios VALUES  
('691', '15', '035', 'HUEHUETOCA', '');

INSERT INTO municipios VALUES  
('692', '15', '036', 'HUEYPOXTLA', '');

INSERT INTO municipios VALUES  
('693', '15', '037', 'HUIXQUILUCAN', '');

INSERT INTO municipios VALUES  
('694', '15', '038', 'ISIDRO FABELA', '');

INSERT INTO municipios VALUES  
('695', '15', '039', 'IXTAPALUCA', '');

INSERT INTO municipios VALUES  
('696', '15', '040', 'IXTAPAN DE LA SAL', '');

INSERT INTO municipios VALUES  
('697', '15', '041', 'IXTAPAN DEL ORO', '');

INSERT INTO municipios VALUES  
('698', '15', '042', 'IXTLAHUACA', '');

INSERT INTO municipios VALUES  
('699', '15', '043', 'XALATLACO', '');

INSERT INTO municipios VALUES  
('700', '15', '044', 'JALTENCO', '');

INSERT INTO municipios VALUES  
('701', '15', '045', 'JILOTEPEC', '');

INSERT INTO municipios VALUES  
('702', '15', '046', 'JILOTZINGO', '');

INSERT INTO municipios VALUES  
('703', '15', '047', 'JIQUIPILCO', '');

INSERT INTO municipios VALUES  
('704', '15', '048', 'JOCOTITLAN', '');

INSERT INTO municipios VALUES  
('705', '15', '049', 'JOQUICINGO', '');

INSERT INTO municipios VALUES  
('706', '15', '050', 'JUCHITEPEC', '');

INSERT INTO municipios VALUES  
('707', '15', '051', 'LERMA', '');

INSERT INTO municipios VALUES  
('708', '15', '052', 'MALINALCO', '');

INSERT INTO municipios VALUES  
('709', '15', '053', 'MELCHOR OCAMPO', '');

INSERT INTO municipios VALUES  
('710', '15', '054', 'METEPEC', '');

INSERT INTO municipios VALUES  
('711', '15', '055', 'MEXICALTZINGO', '');

INSERT INTO municipios VALUES  
('712', '15', '056', 'MORELOS', '');

INSERT INTO municipios VALUES  
('713', '15', '057', 'NAUCALPAN DE JUAREZ', '');

INSERT INTO municipios VALUES  
('714', '15', '058', 'NEZAHUALCOYOTL', '');

INSERT INTO municipios VALUES  
('715', '15', '059', 'NEXTLALPAN', '');

INSERT INTO municipios VALUES  
('716', '15', '060', 'NICOLAS ROMERO', '');

INSERT INTO municipios VALUES  
('717', '15', '061', 'NOPALTEPEC', '');

INSERT INTO municipios VALUES  
('718', '15', '062', 'OCOYOACAC', '');

INSERT INTO municipios VALUES  
('719', '15', '063', 'OCUILAN', '');

INSERT INTO municipios VALUES  
('720', '15', '064', 'EL ORO', '');

INSERT INTO municipios VALUES  
('721', '15', '065', 'OTUMBA', '');

INSERT INTO municipios VALUES  
('722', '15', '066', 'OTZOLOAPAN', '');

INSERT INTO municipios VALUES  
('723', '15', '067', 'OTZOLOTEPEC', '');

INSERT INTO municipios VALUES  
('724', '15', '068', 'OZUMBA', '');

INSERT INTO municipios VALUES  
('725', '15', '069', 'PAPALOTLA', '');

INSERT INTO municipios VALUES  
('726', '15', '070', 'LA PAZ', '');

INSERT INTO municipios VALUES  
('727', '15', '071', 'POLOTITLAN', '');

INSERT INTO municipios VALUES  
('728', '15', '072', 'RAYON', '');

INSERT INTO municipios VALUES  
('729', '15', '073', 'SAN ANTONIO LA ISLA', '');

INSERT INTO municipios VALUES  
('730', '15', '074', 'SAN FELIPE DEL PROGRESO', '');

INSERT INTO municipios VALUES  
('731', '15', '075', 'SAN MARTIN DE LAS PIRAMIDES', '');

INSERT INTO municipios VALUES  
('732', '15', '076', 'SAN MATEO ATENCO', '');

INSERT INTO municipios VALUES  
('733', '15', '077', 'SAN SIMON DE GUERRERO', '');

INSERT INTO municipios VALUES  
('734', '15', '078', 'SANTO TOMAS', '');

INSERT INTO municipios VALUES  
('735', '15', '079', 'SOYANIQUILPAN DE JUAREZ', '');

INSERT INTO municipios VALUES  
('736', '15', '080', 'SULTEPEC', '');

INSERT INTO municipios VALUES  
('737', '15', '081', 'TECAMAC', '');

INSERT INTO municipios VALUES  
('738', '15', '082', 'TEJUPILCO', '');

INSERT INTO municipios VALUES  
('739', '15', '083', 'TEMAMATLA', '');

INSERT INTO municipios VALUES  
('740', '15', '084', 'TEMASCALAPA', '');

INSERT INTO municipios VALUES  
('741', '15', '085', 'TEMASCALCINGO', '');

INSERT INTO municipios VALUES  
('742', '15', '086', 'TEMASCALTEPEC', '');

INSERT INTO municipios VALUES  
('743', '15', '087', 'TEMOAYA', '');

INSERT INTO municipios VALUES  
('744', '15', '088', 'TENANCINGO', '');

INSERT INTO municipios VALUES  
('745', '15', '089', 'TENANGO DEL AIRE', '');

INSERT INTO municipios VALUES  
('746', '15', '090', 'TENANGO DEL VALLE', '');

INSERT INTO municipios VALUES  
('747', '15', '091', 'TEOLOYUCAN', '');

INSERT INTO municipios VALUES  
('748', '15', '092', 'TEOTIHUACAN', '');

INSERT INTO municipios VALUES  
('749', '15', '093', 'TEPETLAOXTOC', '');

INSERT INTO municipios VALUES  
('750', '15', '094', 'TEPETLIXPA', '');

INSERT INTO municipios VALUES  
('751', '15', '095', 'TEPOTZOTLAN', '');

INSERT INTO municipios VALUES  
('752', '15', '096', 'TEQUIXQUIAC', '');

INSERT INTO municipios VALUES  
('753', '15', '097', 'TEXCALTITLAN', '');

INSERT INTO municipios VALUES  
('754', '15', '098', 'TEXCALYACAC', '');

INSERT INTO municipios VALUES  
('755', '15', '099', 'TEXCOCO', '');

INSERT INTO municipios VALUES  
('756', '15', '100', 'TEZOYUCA', '');

INSERT INTO municipios VALUES  
('757', '15', '101', 'TIANGUISTENCO', '');

INSERT INTO municipios VALUES  
('758', '15', '102', 'TIMILPAN', '');

INSERT INTO municipios VALUES  
('759', '15', '103', 'TLALMANALCO', '');

INSERT INTO municipios VALUES  
('760', '15', '104', 'TLALNEPANTLA DE BAZ', '');

INSERT INTO municipios VALUES  
('761', '15', '105', 'TLATLAYA', '');

INSERT INTO municipios VALUES  
('762', '15', '106', 'TOLUCA', '');

INSERT INTO municipios VALUES  
('763', '15', '107', 'TONATICO', '');

INSERT INTO municipios VALUES  
('764', '15', '108', 'TULTEPEC', '');

INSERT INTO municipios VALUES  
('765', '15', '109', 'TULTITLAN', '');

INSERT INTO municipios VALUES  
('766', '15', '110', 'VALLE DE BRAVO', '');

INSERT INTO municipios VALUES  
('767', '15', '111', 'VILLA DE ALLENDE', '');

INSERT INTO municipios VALUES  
('768', '15', '112', 'VILLA DEL CARBON', '');

INSERT INTO municipios VALUES  
('769', '15', '113', 'VILLA GUERRERO', '');

INSERT INTO municipios VALUES  
('770', '15', '114', 'VILLA VICTORIA', '');

INSERT INTO municipios VALUES  
('771', '15', '115', 'XONACATLAN', '');

INSERT INTO municipios VALUES  
('772', '15', '116', 'ZACAZONAPAN', '');

INSERT INTO municipios VALUES  
('773', '15', '117', 'ZACUALPAN', '');

INSERT INTO municipios VALUES  
('774', '15', '118', 'ZINACANTEPEC', '');

INSERT INTO municipios VALUES  
('775', '15', '119', 'ZUMPAHUACAN', '');

INSERT INTO municipios VALUES  
('776', '15', '120', 'ZUMPANGO', '');

INSERT INTO municipios VALUES  
('777', '15', '121', 'CUAUTITLAN IZCALLI', '');

INSERT INTO municipios VALUES  
('778', '15', '122', 'VALLE DE CHALCO SOLIDARIDAD', '');

INSERT INTO municipios VALUES  
('779', '15', '123', 'LUVIANOS', '');

INSERT INTO municipios VALUES  
('780', '15', '124', 'SAN JOSE DEL RINCON', '');

INSERT INTO municipios VALUES  
('781', '15', '125', 'TONANITLA', '');

INSERT INTO municipios VALUES  
('782', '16', '001', 'ACUITZIO', '');

INSERT INTO municipios VALUES  
('783', '16', '002', 'AGUILILLA', '');

INSERT INTO municipios VALUES  
('784', '16', '003', 'ALVARO OBREGON', '');

INSERT INTO municipios VALUES  
('785', '16', '004', 'ANGAMACUTIRO', '');

INSERT INTO municipios VALUES  
('786', '16', '005', 'ANGANGUEO', '');

INSERT INTO municipios VALUES  
('787', '16', '006', 'APATZINGAN', '');

INSERT INTO municipios VALUES  
('788', '16', '007', 'APORO', '');

INSERT INTO municipios VALUES  
('789', '16', '008', 'AQUILA', '');

INSERT INTO municipios VALUES  
('790', '16', '009', 'ARIO', '');

INSERT INTO municipios VALUES  
('791', '16', '010', 'ARTEAGA', '');

INSERT INTO municipios VALUES  
('792', '16', '011', 'BRISEÑAS', '');

INSERT INTO municipios VALUES  
('793', '16', '012', 'BUENAVISTA', '');

INSERT INTO municipios VALUES  
('794', '16', '013', 'CARACUARO', '');

INSERT INTO municipios VALUES  
('795', '16', '014', 'COAHUAYANA', '');

INSERT INTO municipios VALUES  
('796', '16', '015', 'COALCOMAN DE VAZQUEZ PALLARES', '');

INSERT INTO municipios VALUES  
('797', '16', '016', 'COENEO', '');

INSERT INTO municipios VALUES  
('798', '16', '017', 'CONTEPEC', '');

INSERT INTO municipios VALUES  
('799', '16', '018', 'COPANDARO', '');

INSERT INTO municipios VALUES  
('800', '16', '019', 'COTIJA', '');

INSERT INTO municipios VALUES  
('801', '16', '020', 'CUITZEO', '');

INSERT INTO municipios VALUES  
('802', '16', '021', 'CHARAPAN', '');

INSERT INTO municipios VALUES  
('803', '16', '022', 'CHARO', '');

INSERT INTO municipios VALUES  
('804', '16', '023', 'CHAVINDA', '');

INSERT INTO municipios VALUES  
('805', '16', '024', 'CHERAN', '');

INSERT INTO municipios VALUES  
('806', '16', '025', 'CHILCHOTA', '');

INSERT INTO municipios VALUES  
('807', '16', '026', 'CHINICUILA', '');

INSERT INTO municipios VALUES  
('808', '16', '027', 'CHUCANDIRO', '');

INSERT INTO municipios VALUES  
('809', '16', '028', 'CHURINTZIO', '');

INSERT INTO municipios VALUES  
('810', '16', '029', 'CHURUMUCO', '');

INSERT INTO municipios VALUES  
('811', '16', '030', 'ECUANDUREO', '');

INSERT INTO municipios VALUES  
('812', '16', '031', 'EPITACIO HUERTA', '');

INSERT INTO municipios VALUES  
('813', '16', '032', 'ERONGARICUARO', '');

INSERT INTO municipios VALUES  
('814', '16', '033', 'GABRIEL ZAMORA', '');

INSERT INTO municipios VALUES  
('815', '16', '034', 'HIDALGO', '');

INSERT INTO municipios VALUES  
('816', '16', '035', 'LA HUACANA', '');

INSERT INTO municipios VALUES  
('817', '16', '036', 'HUANDACAREO', '');

INSERT INTO municipios VALUES  
('818', '16', '037', 'HUANIQUEO', '');

INSERT INTO municipios VALUES  
('819', '16', '038', 'HUETAMO', '');

INSERT INTO municipios VALUES  
('820', '16', '039', 'HUIRAMBA', '');

INSERT INTO municipios VALUES  
('821', '16', '040', 'INDAPARAPEO', '');

INSERT INTO municipios VALUES  
('822', '16', '041', 'IRIMBO', '');

INSERT INTO municipios VALUES  
('823', '16', '042', 'IXTLAN', '');

INSERT INTO municipios VALUES  
('824', '16', '043', 'JACONA', '');

INSERT INTO municipios VALUES  
('825', '16', '044', 'JIMENEZ', '');

INSERT INTO municipios VALUES  
('826', '16', '045', 'JIQUILPAN', '');

INSERT INTO municipios VALUES  
('827', '16', '046', 'JUAREZ', '');

INSERT INTO municipios VALUES  
('828', '16', '047', 'JUNGAPEO', '');

INSERT INTO municipios VALUES  
('829', '16', '048', 'LAGUNILLAS', '');

INSERT INTO municipios VALUES  
('830', '16', '049', 'MADERO', '');

INSERT INTO municipios VALUES  
('831', '16', '050', 'MARAVATIO', '');

INSERT INTO municipios VALUES  
('832', '16', '051', 'MARCOS CASTELLANOS', '');

INSERT INTO municipios VALUES  
('833', '16', '052', 'LAZARO CARDENAS', '');

INSERT INTO municipios VALUES  
('834', '16', '053', 'MORELIA', '');

INSERT INTO municipios VALUES  
('835', '16', '054', 'MORELOS', '');

INSERT INTO municipios VALUES  
('836', '16', '055', 'MUGICA', '');

INSERT INTO municipios VALUES  
('837', '16', '056', 'NAHUATZEN', '');

INSERT INTO municipios VALUES  
('838', '16', '057', 'NOCUPETARO', '');

INSERT INTO municipios VALUES  
('839', '16', '058', 'NUEVO PARANGARICUTIRO', '');

INSERT INTO municipios VALUES  
('840', '16', '059', 'NUEVO URECHO', '');

INSERT INTO municipios VALUES  
('841', '16', '060', 'NUMARAN', '');

INSERT INTO municipios VALUES  
('842', '16', '061', 'OCAMPO', '');

INSERT INTO municipios VALUES  
('843', '16', '062', 'PAJACUARAN', '');

INSERT INTO municipios VALUES  
('844', '16', '063', 'PANINDICUARO', '');

INSERT INTO municipios VALUES  
('845', '16', '064', 'PARACUARO', '');

INSERT INTO municipios VALUES  
('846', '16', '065', 'PARACHO', '');

INSERT INTO municipios VALUES  
('847', '16', '066', 'PATZCUARO', '');

INSERT INTO municipios VALUES  
('848', '16', '067', 'PENJAMILLO', '');

INSERT INTO municipios VALUES  
('849', '16', '068', 'PERIBAN', '');

INSERT INTO municipios VALUES  
('850', '16', '069', 'LA PIEDAD', '');

INSERT INTO municipios VALUES  
('851', '16', '070', 'PUREPERO', '');

INSERT INTO municipios VALUES  
('852', '16', '071', 'PURUANDIRO', '');

INSERT INTO municipios VALUES  
('853', '16', '072', 'QUERENDARO', '');

INSERT INTO municipios VALUES  
('854', '16', '073', 'QUIROGA', '');

INSERT INTO municipios VALUES  
('855', '16', '074', 'COJUMATLAN DE REGULES', '');

INSERT INTO municipios VALUES  
('856', '16', '075', 'LOS REYES', '');

INSERT INTO municipios VALUES  
('857', '16', '076', 'SAHUAYO', '');

INSERT INTO municipios VALUES  
('858', '16', '077', 'SAN LUCAS', '');

INSERT INTO municipios VALUES  
('859', '16', '078', 'SANTA ANA MAYA', '');

INSERT INTO municipios VALUES  
('860', '16', '079', 'SALVADOR ESCALANTE', '');

INSERT INTO municipios VALUES  
('861', '16', '080', 'SENGUIO', '');

INSERT INTO municipios VALUES  
('862', '16', '081', 'SUSUPUATO', '');

INSERT INTO municipios VALUES  
('863', '16', '082', 'TACAMBARO', '');

INSERT INTO municipios VALUES  
('864', '16', '083', 'TANCITARO', '');

INSERT INTO municipios VALUES  
('865', '16', '084', 'TANGAMANDAPIO', '');

INSERT INTO municipios VALUES  
('866', '16', '085', 'TANGANCICUARO', '');

INSERT INTO municipios VALUES  
('867', '16', '086', 'TANHUATO', '');

INSERT INTO municipios VALUES  
('868', '16', '087', 'TARETAN', '');

INSERT INTO municipios VALUES  
('869', '16', '088', 'TARIMBARO', '');

INSERT INTO municipios VALUES  
('870', '16', '089', 'TEPALCATEPEC', '');

INSERT INTO municipios VALUES  
('871', '16', '090', 'TINGAMBATO', '');

INSERT INTO municipios VALUES  
('872', '16', '091', 'TINGÜINDIN', '');

INSERT INTO municipios VALUES  
('873', '16', '092', 'TIQUICHEO DE NICOLAS ROMERO', '');

INSERT INTO municipios VALUES  
('874', '16', '093', 'TLALPUJAHUA', '');

INSERT INTO municipios VALUES  
('875', '16', '094', 'TLAZAZALCA', '');

INSERT INTO municipios VALUES  
('876', '16', '095', 'TOCUMBO', '');

INSERT INTO municipios VALUES  
('877', '16', '096', 'TUMBISCATIO', '');

INSERT INTO municipios VALUES  
('878', '16', '097', 'TURICATO', '');

INSERT INTO municipios VALUES  
('879', '16', '098', 'TUXPAN', '');

INSERT INTO municipios VALUES  
('880', '16', '099', 'TUZANTLA', '');

INSERT INTO municipios VALUES  
('881', '16', '100', 'TZINTZUNTZAN', '');

INSERT INTO municipios VALUES  
('882', '16', '101', 'TZITZIO', '');

INSERT INTO municipios VALUES  
('883', '16', '102', 'URUAPAN', '');

INSERT INTO municipios VALUES  
('884', '16', '103', 'VENUSTIANO CARRANZA', '');

INSERT INTO municipios VALUES  
('885', '16', '104', 'VILLAMAR', '');

INSERT INTO municipios VALUES  
('886', '16', '105', 'VISTA HERMOSA', '');

INSERT INTO municipios VALUES  
('887', '16', '106', 'YURECUARO', '');

INSERT INTO municipios VALUES  
('888', '16', '107', 'ZACAPU', '');

INSERT INTO municipios VALUES  
('889', '16', '108', 'ZAMORA', '');

INSERT INTO municipios VALUES  
('890', '16', '109', 'ZINAPARO', '');

INSERT INTO municipios VALUES  
('891', '16', '110', 'ZINAPECUARO', '');

INSERT INTO municipios VALUES  
('892', '16', '111', 'ZIRACUARETIRO', '');

INSERT INTO municipios VALUES  
('893', '16', '112', 'ZITACUARO', '');

INSERT INTO municipios VALUES  
('894', '16', '113', 'JOSE SIXTO VERDUZCO', '');

INSERT INTO municipios VALUES  
('895', '17', '001', 'AMACUZAC', '');

INSERT INTO municipios VALUES  
('896', '17', '002', 'ATLATLAHUCAN', '');

INSERT INTO municipios VALUES  
('897', '17', '003', 'AXOCHIAPAN', '');

INSERT INTO municipios VALUES  
('898', '17', '004', 'AYALA', '');

INSERT INTO municipios VALUES  
('899', '17', '005', 'COATLAN DEL RIO', '');

INSERT INTO municipios VALUES  
('900', '17', '006', 'CUAUTLA', '');

INSERT INTO municipios VALUES  
('901', '17', '007', 'CUERNAVACA', '');

INSERT INTO municipios VALUES  
('902', '17', '008', 'EMILIANO ZAPATA', '');

INSERT INTO municipios VALUES  
('903', '17', '009', 'HUITZILAC', '');

INSERT INTO municipios VALUES  
('904', '17', '010', 'JANTETELCO', '');

INSERT INTO municipios VALUES  
('905', '17', '011', 'JIUTEPEC', '');

INSERT INTO municipios VALUES  
('906', '17', '012', 'JOJUTLA', '');

INSERT INTO municipios VALUES  
('907', '17', '013', 'JONACATEPEC', '');

INSERT INTO municipios VALUES  
('908', '17', '014', 'MAZATEPEC', '');

INSERT INTO municipios VALUES  
('909', '17', '015', 'MIACATLAN', '');

INSERT INTO municipios VALUES  
('910', '17', '016', 'OCUITUCO', '');

INSERT INTO municipios VALUES  
('911', '17', '017', 'PUENTE DE IXTLA', '');

INSERT INTO municipios VALUES  
('912', '17', '018', 'TEMIXCO', '');

INSERT INTO municipios VALUES  
('913', '17', '019', 'TEPALCINGO', '');

INSERT INTO municipios VALUES  
('914', '17', '020', 'TEPOZTLAN', '');

INSERT INTO municipios VALUES  
('915', '17', '021', 'TETECALA', '');

INSERT INTO municipios VALUES  
('916', '17', '022', 'TETELA DEL VOLCAN', '');

INSERT INTO municipios VALUES  
('917', '17', '023', 'TLALNEPANTLA', '');

INSERT INTO municipios VALUES  
('918', '17', '024', 'TLALTIZAPAN DE ZAPATA', '');

INSERT INTO municipios VALUES  
('919', '17', '025', 'TLAQUILTENANGO', '');

INSERT INTO municipios VALUES  
('920', '17', '026', 'TLAYACAPAN', '');

INSERT INTO municipios VALUES  
('921', '17', '027', 'TOTOLAPAN', '');

INSERT INTO municipios VALUES  
('922', '17', '028', 'XOCHITEPEC', '');

INSERT INTO municipios VALUES  
('923', '17', '029', 'YAUTEPEC', '');

INSERT INTO municipios VALUES  
('924', '17', '030', 'YECAPIXTLA', '');

INSERT INTO municipios VALUES  
('925', '17', '031', 'ZACATEPEC', '');

INSERT INTO municipios VALUES  
('926', '17', '032', 'ZACUALPAN', '');

INSERT INTO municipios VALUES  
('927', '17', '033', 'TEMOAC', '');

INSERT INTO municipios VALUES  
('928', '18', '001', 'ACAPONETA', '');

INSERT INTO municipios VALUES  
('929', '18', '002', 'AHUACATLAN', '');

INSERT INTO municipios VALUES  
('930', '18', '003', 'AMATLAN DE CAÑAS', '');

INSERT INTO municipios VALUES  
('931', '18', '004', 'COMPOSTELA', '');

INSERT INTO municipios VALUES  
('932', '18', '005', 'HUAJICORI', '');

INSERT INTO municipios VALUES  
('933', '18', '006', 'IXTLAN DEL RIO', '');

INSERT INTO municipios VALUES  
('934', '18', '007', 'JALA', '');

INSERT INTO municipios VALUES  
('935', '18', '008', 'XALISCO', '');

INSERT INTO municipios VALUES  
('936', '18', '009', 'DEL NAYAR', '');

INSERT INTO municipios VALUES  
('937', '18', '010', 'ROSAMORADA', '');

INSERT INTO municipios VALUES  
('938', '18', '011', 'RUIZ', '');

INSERT INTO municipios VALUES  
('939', '18', '012', 'SAN BLAS', '');

INSERT INTO municipios VALUES  
('940', '18', '013', 'SAN PEDRO LAGUNILLAS', '');

INSERT INTO municipios VALUES  
('941', '18', '014', 'SANTA MARIA DEL ORO', '');

INSERT INTO municipios VALUES  
('942', '18', '015', 'SANTIAGO IXCUINTLA', '');

INSERT INTO municipios VALUES  
('943', '18', '016', 'TECUALA', '');

INSERT INTO municipios VALUES  
('944', '18', '017', 'TEPIC', '');

INSERT INTO municipios VALUES  
('945', '18', '018', 'TUXPAN', '');

INSERT INTO municipios VALUES  
('946', '18', '019', 'LA YESCA', '');

INSERT INTO municipios VALUES  
('947', '18', '020', 'BAHIA DE BANDERAS', '');

INSERT INTO municipios VALUES  
('948', '19', '001', 'ABASOLO', '');

INSERT INTO municipios VALUES  
('949', '19', '002', 'AGUALEGUAS', '');

INSERT INTO municipios VALUES  
('950', '19', '003', 'LOS ALDAMAS', '');

INSERT INTO municipios VALUES  
('951', '19', '004', 'ALLENDE', '');

INSERT INTO municipios VALUES  
('952', '19', '005', 'ANAHUAC', '');

INSERT INTO municipios VALUES  
('953', '19', '006', 'APODACA', '');

INSERT INTO municipios VALUES  
('954', '19', '007', 'ARAMBERRI', '');

INSERT INTO municipios VALUES  
('955', '19', '008', 'BUSTAMANTE', '');

INSERT INTO municipios VALUES  
('956', '19', '009', 'CADEREYTA JIMENEZ', '');

INSERT INTO municipios VALUES  
('957', '19', '010', 'EL CARMEN', '');

INSERT INTO municipios VALUES  
('958', '19', '011', 'CERRALVO', '');

INSERT INTO municipios VALUES  
('959', '19', '012', 'CIENEGA DE FLORES', '');

INSERT INTO municipios VALUES  
('960', '19', '013', 'CHINA', '');

INSERT INTO municipios VALUES  
('961', '19', '014', 'DOCTOR ARROYO', '');

INSERT INTO municipios VALUES  
('962', '19', '015', 'DOCTOR COSS', '');

INSERT INTO municipios VALUES  
('963', '19', '016', 'DOCTOR GONZALEZ', '');

INSERT INTO municipios VALUES  
('964', '19', '017', 'GALEANA', '');

INSERT INTO municipios VALUES  
('965', '19', '018', 'GARCIA', '');

INSERT INTO municipios VALUES  
('966', '19', '019', 'SAN PEDRO GARZA GARCIA', '');

INSERT INTO municipios VALUES  
('967', '19', '020', 'GENERAL BRAVO', '');

INSERT INTO municipios VALUES  
('968', '19', '021', 'GENERAL ESCOBEDO', '');

INSERT INTO municipios VALUES  
('969', '19', '022', 'GENERAL TERAN', '');

INSERT INTO municipios VALUES  
('970', '19', '023', 'GENERAL TREVIÑO', '');

INSERT INTO municipios VALUES  
('971', '19', '024', 'GENERAL ZARAGOZA', '');

INSERT INTO municipios VALUES  
('972', '19', '025', 'GENERAL ZUAZUA', '');

INSERT INTO municipios VALUES  
('973', '19', '026', 'GUADALUPE', '');

INSERT INTO municipios VALUES  
('974', '19', '027', 'LOS HERRERAS', '');

INSERT INTO municipios VALUES  
('975', '19', '028', 'HIGUERAS', '');

INSERT INTO municipios VALUES  
('976', '19', '029', 'HUALAHUISES', '');

INSERT INTO municipios VALUES  
('977', '19', '030', 'ITURBIDE', '');

INSERT INTO municipios VALUES  
('978', '19', '031', 'JUAREZ', '');

INSERT INTO municipios VALUES  
('979', '19', '032', 'LAMPAZOS DE NARANJO', '');

INSERT INTO municipios VALUES  
('980', '19', '033', 'LINARES', '');

INSERT INTO municipios VALUES  
('981', '19', '034', 'MARIN', '');

INSERT INTO municipios VALUES  
('982', '19', '035', 'MELCHOR OCAMPO', '');

INSERT INTO municipios VALUES  
('983', '19', '036', 'MIER Y NORIEGA', '');

INSERT INTO municipios VALUES  
('984', '19', '037', 'MINA', '');

INSERT INTO municipios VALUES  
('985', '19', '038', 'MONTEMORELOS', '');

INSERT INTO municipios VALUES  
('986', '19', '039', 'MONTERREY', '');

INSERT INTO municipios VALUES  
('987', '19', '040', 'PARAS', '');

INSERT INTO municipios VALUES  
('988', '19', '041', 'PESQUERIA', '');

INSERT INTO municipios VALUES  
('989', '19', '042', 'LOS RAMONES', '');

INSERT INTO municipios VALUES  
('990', '19', '043', 'RAYONES', '');

INSERT INTO municipios VALUES  
('991', '19', '044', 'SABINAS HIDALGO', '');

INSERT INTO municipios VALUES  
('992', '19', '045', 'SALINAS VICTORIA', '');

INSERT INTO municipios VALUES  
('993', '19', '046', 'SAN NICOLAS DE LOS GARZA', '');

INSERT INTO municipios VALUES  
('994', '19', '047', 'HIDALGO', '');

INSERT INTO municipios VALUES  
('995', '19', '048', 'SANTA CATARINA', '');

INSERT INTO municipios VALUES  
('996', '19', '049', 'SANTIAGO', '');

INSERT INTO municipios VALUES  
('997', '19', '050', 'VALLECILLO', '');

INSERT INTO municipios VALUES  
('998', '19', '051', 'VILLALDAMA', '');

INSERT INTO municipios VALUES  
('999', '20', '001', 'ABEJONES', '');

INSERT INTO municipios VALUES  
('1000', '20', '002', 'ACATLAN DE PEREZ FIGUEROA', '');

INSERT INTO municipios VALUES  
('1001', '20', '003', 'ASUNCION CACALOTEPEC', '');

INSERT INTO municipios VALUES  
('1002', '20', '004', 'ASUNCION CUYOTEPEJI', '');

INSERT INTO municipios VALUES  
('1003', '20', '005', 'ASUNCION IXTALTEPEC', '');

INSERT INTO municipios VALUES  
('1004', '20', '006', 'ASUNCION NOCHIXTLAN', '');

INSERT INTO municipios VALUES  
('1005', '20', '007', 'ASUNCION OCOTLAN', '');

INSERT INTO municipios VALUES  
('1006', '20', '008', 'ASUNCION TLACOLULITA', '');

INSERT INTO municipios VALUES  
('1007', '20', '009', 'AYOTZINTEPEC', '');

INSERT INTO municipios VALUES  
('1008', '20', '010', 'EL BARRIO DE LA SOLEDAD', '');

INSERT INTO municipios VALUES  
('1009', '20', '011', 'CALIHUALA', '');

INSERT INTO municipios VALUES  
('1010', '20', '012', 'CANDELARIA LOXICHA', '');

INSERT INTO municipios VALUES  
('1011', '20', '013', 'CIENEGA DE ZIMATLAN', '');

INSERT INTO municipios VALUES  
('1012', '20', '014', 'CIUDAD IXTEPEC', '');

INSERT INTO municipios VALUES  
('1013', '20', '015', 'COATECAS ALTAS', '');

INSERT INTO municipios VALUES  
('1014', '20', '016', 'COICOYAN DE LAS FLORES', '');

INSERT INTO municipios VALUES  
('1015', '20', '017', 'LA COMPAÑIA', '');

INSERT INTO municipios VALUES  
('1016', '20', '018', 'CONCEPCION BUENAVISTA', '');

INSERT INTO municipios VALUES  
('1017', '20', '019', 'CONCEPCION PAPALO', '');

INSERT INTO municipios VALUES  
('1018', '20', '020', 'CONSTANCIA DEL ROSARIO', '');

INSERT INTO municipios VALUES  
('1019', '20', '021', 'COSOLAPA', '');

INSERT INTO municipios VALUES  
('1020', '20', '022', 'COSOLTEPEC', '');

INSERT INTO municipios VALUES  
('1021', '20', '023', 'CUILAPAM DE GUERRERO', '');

INSERT INTO municipios VALUES  
('1022', '20', '024', 'CUYAMECALCO VILLA DE ZARAGOZA', '');

INSERT INTO municipios VALUES  
('1023', '20', '025', 'CHAHUITES', '');

INSERT INTO municipios VALUES  
('1024', '20', '026', 'CHALCATONGO DE HIDALGO', '');

INSERT INTO municipios VALUES  
('1025', '20', '027', 'CHIQUIHUITLAN DE BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('1026', '20', '028', 'HEROICA CIUDAD DE EJUTLA DE CRESPO', '');

INSERT INTO municipios VALUES  
('1027', '20', '029', 'ELOXOCHITLAN DE FLORES MAGON', '');

INSERT INTO municipios VALUES  
('1028', '20', '030', 'EL ESPINAL', '');

INSERT INTO municipios VALUES  
('1029', '20', '031', 'TAMAZULAPAM DEL ESPIRITU SANTO', '');

INSERT INTO municipios VALUES  
('1030', '20', '032', 'FRESNILLO DE TRUJANO', '');

INSERT INTO municipios VALUES  
('1031', '20', '033', 'GUADALUPE ETLA', '');

INSERT INTO municipios VALUES  
('1032', '20', '034', 'GUADALUPE DE RAMIREZ', '');

INSERT INTO municipios VALUES  
('1033', '20', '035', 'GUELATAO DE JUAREZ', '');

INSERT INTO municipios VALUES  
('1034', '20', '036', 'GUEVEA DE HUMBOLDT', '');

INSERT INTO municipios VALUES  
('1035', '20', '037', 'MESONES HIDALGO', '');

INSERT INTO municipios VALUES  
('1036', '20', '038', 'VILLA HIDALGO', '');

INSERT INTO municipios VALUES  
('1037', '20', '039', 'HEROICA CIUDAD DE HUAJUAPAN DE LEON', '');

INSERT INTO municipios VALUES  
('1038', '20', '040', 'HUAUTEPEC', '');

INSERT INTO municipios VALUES  
('1039', '20', '041', 'HUAUTLA DE JIMENEZ', '');

INSERT INTO municipios VALUES  
('1040', '20', '042', 'IXTLAN DE JUAREZ', '');

INSERT INTO municipios VALUES  
('1041', '20', '043', 'HEROICA CIUDAD DE JUCHITAN DE ZARAGOZA', '');

INSERT INTO municipios VALUES  
('1042', '20', '044', 'LOMA BONITA', '');

INSERT INTO municipios VALUES  
('1043', '20', '045', 'MAGDALENA APASCO', '');

INSERT INTO municipios VALUES  
('1044', '20', '046', 'MAGDALENA JALTEPEC', '');

INSERT INTO municipios VALUES  
('1045', '20', '047', 'SANTA MAGDALENA JICOTLAN', '');

INSERT INTO municipios VALUES  
('1046', '20', '048', 'MAGDALENA MIXTEPEC', '');

INSERT INTO municipios VALUES  
('1047', '20', '049', 'MAGDALENA OCOTLAN', '');

INSERT INTO municipios VALUES  
('1048', '20', '050', 'MAGDALENA PEÑASCO', '');

INSERT INTO municipios VALUES  
('1049', '20', '051', 'MAGDALENA TEITIPAC', '');

INSERT INTO municipios VALUES  
('1050', '20', '052', 'MAGDALENA TEQUISISTLAN', '');

INSERT INTO municipios VALUES  
('1051', '20', '053', 'MAGDALENA TLACOTEPEC', '');

INSERT INTO municipios VALUES  
('1052', '20', '054', 'MAGDALENA ZAHUATLAN', '');

INSERT INTO municipios VALUES  
('1053', '20', '055', 'MARISCALA DE JUAREZ', '');

INSERT INTO municipios VALUES  
('1054', '20', '056', 'MARTIRES DE TACUBAYA', '');

INSERT INTO municipios VALUES  
('1055', '20', '057', 'MATIAS ROMERO AVENDAÑO', '');

INSERT INTO municipios VALUES  
('1056', '20', '058', 'MAZATLAN VILLA DE FLORES', '');

INSERT INTO municipios VALUES  
('1057', '20', '059', 'MIAHUATLAN DE PORFIRIO DIAZ', '');

INSERT INTO municipios VALUES  
('1058', '20', '060', 'MIXISTLAN DE LA REFORMA', '');

INSERT INTO municipios VALUES  
('1059', '20', '061', 'MONJAS', '');

INSERT INTO municipios VALUES  
('1060', '20', '062', 'NATIVIDAD', '');

INSERT INTO municipios VALUES  
('1061', '20', '063', 'NAZARENO ETLA', '');

INSERT INTO municipios VALUES  
('1062', '20', '064', 'NEJAPA DE MADERO', '');

INSERT INTO municipios VALUES  
('1063', '20', '065', 'IXPANTEPEC NIEVES', '');

INSERT INTO municipios VALUES  
('1064', '20', '066', 'SANTIAGO NILTEPEC', '');

INSERT INTO municipios VALUES  
('1065', '20', '067', 'OAXACA DE JUAREZ', '');

INSERT INTO municipios VALUES  
('1066', '20', '068', 'OCOTLAN DE MORELOS', '');

INSERT INTO municipios VALUES  
('1067', '20', '069', 'LA PE', '');

INSERT INTO municipios VALUES  
('1068', '20', '070', 'PINOTEPA DE DON LUIS', '');

INSERT INTO municipios VALUES  
('1069', '20', '071', 'PLUMA HIDALGO', '');

INSERT INTO municipios VALUES  
('1070', '20', '072', 'SAN JOSE DEL PROGRESO', '');

INSERT INTO municipios VALUES  
('1071', '20', '073', 'PUTLA VILLA DE GUERRERO', '');

INSERT INTO municipios VALUES  
('1072', '20', '074', 'SANTA CATARINA QUIOQUITANI', '');

INSERT INTO municipios VALUES  
('1073', '20', '075', 'REFORMA DE PINEDA', '');

INSERT INTO municipios VALUES  
('1074', '20', '076', 'LA REFORMA', '');

INSERT INTO municipios VALUES  
('1075', '20', '077', 'REYES ETLA', '');

INSERT INTO municipios VALUES  
('1076', '20', '078', 'ROJAS DE CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('1077', '20', '079', 'SALINA CRUZ', '');

INSERT INTO municipios VALUES  
('1078', '20', '080', 'SAN AGUSTIN AMATENGO', '');

INSERT INTO municipios VALUES  
('1079', '20', '081', 'SAN AGUSTIN ATENANGO', '');

INSERT INTO municipios VALUES  
('1080', '20', '082', 'SAN AGUSTIN CHAYUCO', '');

INSERT INTO municipios VALUES  
('1081', '20', '083', 'SAN AGUSTIN DE LAS JUNTAS', '');

INSERT INTO municipios VALUES  
('1082', '20', '084', 'SAN AGUSTIN ETLA', '');

INSERT INTO municipios VALUES  
('1083', '20', '085', 'SAN AGUSTIN LOXICHA', '');

INSERT INTO municipios VALUES  
('1084', '20', '086', 'SAN AGUSTIN TLACOTEPEC', '');

INSERT INTO municipios VALUES  
('1085', '20', '087', 'SAN AGUSTIN YATARENI', '');

INSERT INTO municipios VALUES  
('1086', '20', '088', 'SAN ANDRES CABECERA NUEVA', '');

INSERT INTO municipios VALUES  
('1087', '20', '089', 'SAN ANDRES DINICUITI', '');

INSERT INTO municipios VALUES  
('1088', '20', '090', 'SAN ANDRES HUAXPALTEPEC', '');

INSERT INTO municipios VALUES  
('1089', '20', '091', 'SAN ANDRES HUAYAPAM', '');

INSERT INTO municipios VALUES  
('1090', '20', '092', 'SAN ANDRES IXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1091', '20', '093', 'SAN ANDRES LAGUNAS', '');

INSERT INTO municipios VALUES  
('1092', '20', '094', 'SAN ANDRES NUXIÑO', '');

INSERT INTO municipios VALUES  
('1093', '20', '095', 'SAN ANDRES PAXTLAN', '');

INSERT INTO municipios VALUES  
('1094', '20', '096', 'SAN ANDRES SINAXTLA', '');

INSERT INTO municipios VALUES  
('1095', '20', '097', 'SAN ANDRES SOLAGA', '');

INSERT INTO municipios VALUES  
('1096', '20', '098', 'SAN ANDRES TEOTILALPAM', '');

INSERT INTO municipios VALUES  
('1097', '20', '099', 'SAN ANDRES TEPETLAPA', '');

INSERT INTO municipios VALUES  
('1098', '20', '100', 'SAN ANDRES YAA', '');

INSERT INTO municipios VALUES  
('1099', '20', '101', 'SAN ANDRES ZABACHE', '');

INSERT INTO municipios VALUES  
('1100', '20', '102', 'SAN ANDRES ZAUTLA', '');

INSERT INTO municipios VALUES  
('1101', '20', '103', 'SAN ANTONINO CASTILLO VELASCO', '');

INSERT INTO municipios VALUES  
('1102', '20', '104', 'SAN ANTONINO EL ALTO', '');

INSERT INTO municipios VALUES  
('1103', '20', '105', 'SAN ANTONINO MONTE VERDE', '');

INSERT INTO municipios VALUES  
('1104', '20', '106', 'SAN ANTONIO ACUTLA', '');

INSERT INTO municipios VALUES  
('1105', '20', '107', 'SAN ANTONIO DE LA CAL', '');

INSERT INTO municipios VALUES  
('1106', '20', '108', 'SAN ANTONIO HUITEPEC', '');

INSERT INTO municipios VALUES  
('1107', '20', '109', 'SAN ANTONIO NANAHUATIPAM', '');

INSERT INTO municipios VALUES  
('1108', '20', '110', 'SAN ANTONIO SINICAHUA', '');

INSERT INTO municipios VALUES  
('1109', '20', '111', 'SAN ANTONIO TEPETLAPA', '');

INSERT INTO municipios VALUES  
('1110', '20', '112', 'SAN BALTAZAR CHICHICAPAM', '');

INSERT INTO municipios VALUES  
('1111', '20', '113', 'SAN BALTAZAR LOXICHA', '');

INSERT INTO municipios VALUES  
('1112', '20', '114', 'SAN BALTAZAR YATZACHI EL BAJO', '');

INSERT INTO municipios VALUES  
('1113', '20', '115', 'SAN BARTOLO COYOTEPEC', '');

INSERT INTO municipios VALUES  
('1114', '20', '116', 'SAN BARTOLOME AYAUTLA', '');

INSERT INTO municipios VALUES  
('1115', '20', '117', 'SAN BARTOLOME LOXICHA', '');

INSERT INTO municipios VALUES  
('1116', '20', '118', 'SAN BARTOLOME QUIALANA', '');

INSERT INTO municipios VALUES  
('1117', '20', '119', 'SAN BARTOLOME YUCUAÑE', '');

INSERT INTO municipios VALUES  
('1118', '20', '120', 'SAN BARTOLOME ZOOGOCHO', '');

INSERT INTO municipios VALUES  
('1119', '20', '121', 'SAN BARTOLO SOYALTEPEC', '');

INSERT INTO municipios VALUES  
('1120', '20', '122', 'SAN BARTOLO YAUTEPEC', '');

INSERT INTO municipios VALUES  
('1121', '20', '123', 'SAN BERNARDO MIXTEPEC', '');

INSERT INTO municipios VALUES  
('1122', '20', '124', 'SAN BLAS ATEMPA', '');

INSERT INTO municipios VALUES  
('1123', '20', '125', 'SAN CARLOS YAUTEPEC', '');

INSERT INTO municipios VALUES  
('1124', '20', '126', 'SAN CRISTOBAL AMATLAN', '');

INSERT INTO municipios VALUES  
('1125', '20', '127', 'SAN CRISTOBAL AMOLTEPEC', '');

INSERT INTO municipios VALUES  
('1126', '20', '128', 'SAN CRISTOBAL LACHIRIOAG', '');

INSERT INTO municipios VALUES  
('1127', '20', '129', 'SAN CRISTOBAL SUCHIXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1128', '20', '130', 'SAN DIONISIO DEL MAR', '');

INSERT INTO municipios VALUES  
('1129', '20', '131', 'SAN DIONISIO OCOTEPEC', '');

INSERT INTO municipios VALUES  
('1130', '20', '132', 'SAN DIONISIO OCOTLAN', '');

INSERT INTO municipios VALUES  
('1131', '20', '133', 'SAN ESTEBAN ATATLAHUCA', '');

INSERT INTO municipios VALUES  
('1132', '20', '134', 'SAN FELIPE JALAPA DE DIAZ', '');

INSERT INTO municipios VALUES  
('1133', '20', '135', 'SAN FELIPE TEJALAPAM', '');

INSERT INTO municipios VALUES  
('1134', '20', '136', 'SAN FELIPE USILA', '');

INSERT INTO municipios VALUES  
('1135', '20', '137', 'SAN FRANCISCO CAHUACUA', '');

INSERT INTO municipios VALUES  
('1136', '20', '138', 'SAN FRANCISCO CAJONOS', '');

INSERT INTO municipios VALUES  
('1137', '20', '139', 'SAN FRANCISCO CHAPULAPA', '');

INSERT INTO municipios VALUES  
('1138', '20', '140', 'SAN FRANCISCO CHINDUA', '');

INSERT INTO municipios VALUES  
('1139', '20', '141', 'SAN FRANCISCO DEL MAR', '');

INSERT INTO municipios VALUES  
('1140', '20', '142', 'SAN FRANCISCO HUEHUETLAN', '');

INSERT INTO municipios VALUES  
('1141', '20', '143', 'SAN FRANCISCO IXHUATAN', '');

INSERT INTO municipios VALUES  
('1142', '20', '144', 'SAN FRANCISCO JALTEPETONGO', '');

INSERT INTO municipios VALUES  
('1143', '20', '145', 'SAN FRANCISCO LACHIGOLO', '');

INSERT INTO municipios VALUES  
('1144', '20', '146', 'SAN FRANCISCO LOGUECHE', '');

INSERT INTO municipios VALUES  
('1145', '20', '147', 'SAN FRANCISCO NUXAÑO', '');

INSERT INTO municipios VALUES  
('1146', '20', '148', 'SAN FRANCISCO OZOLOTEPEC', '');

INSERT INTO municipios VALUES  
('1147', '20', '149', 'SAN FRANCISCO SOLA', '');

INSERT INTO municipios VALUES  
('1148', '20', '150', 'SAN FRANCISCO TELIXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1149', '20', '151', 'SAN FRANCISCO TEOPAN', '');

INSERT INTO municipios VALUES  
('1150', '20', '152', 'SAN FRANCISCO TLAPANCINGO', '');

INSERT INTO municipios VALUES  
('1151', '20', '153', 'SAN GABRIEL MIXTEPEC', '');

INSERT INTO municipios VALUES  
('1152', '20', '154', 'SAN ILDEFONSO AMATLAN', '');

INSERT INTO municipios VALUES  
('1153', '20', '155', 'SAN ILDEFONSO SOLA', '');

INSERT INTO municipios VALUES  
('1154', '20', '156', 'SAN ILDEFONSO VILLA ALTA', '');

INSERT INTO municipios VALUES  
('1155', '20', '157', 'SAN JACINTO AMILPAS', '');

INSERT INTO municipios VALUES  
('1156', '20', '158', 'SAN JACINTO TLACOTEPEC', '');

INSERT INTO municipios VALUES  
('1157', '20', '159', 'SAN JERONIMO COATLAN', '');

INSERT INTO municipios VALUES  
('1158', '20', '160', 'SAN JERONIMO SILACAYOAPILLA', '');

INSERT INTO municipios VALUES  
('1159', '20', '161', 'SAN JERONIMO SOSOLA', '');

INSERT INTO municipios VALUES  
('1160', '20', '162', 'SAN JERONIMO TAVICHE', '');

INSERT INTO municipios VALUES  
('1161', '20', '163', 'SAN JERONIMO TECOATL', '');

INSERT INTO municipios VALUES  
('1162', '20', '164', 'SAN JORGE NUCHITA', '');

INSERT INTO municipios VALUES  
('1163', '20', '165', 'SAN JOSE AYUQUILA', '');

INSERT INTO municipios VALUES  
('1164', '20', '166', 'SAN JOSE CHILTEPEC', '');

INSERT INTO municipios VALUES  
('1165', '20', '167', 'SAN JOSE DEL PEÑASCO', '');

INSERT INTO municipios VALUES  
('1166', '20', '168', 'SAN JOSE ESTANCIA GRANDE', '');

INSERT INTO municipios VALUES  
('1167', '20', '169', 'SAN JOSE INDEPENDENCIA', '');

INSERT INTO municipios VALUES  
('1168', '20', '170', 'SAN JOSE LACHIGUIRI', '');

INSERT INTO municipios VALUES  
('1169', '20', '171', 'SAN JOSE TENANGO', '');

INSERT INTO municipios VALUES  
('1170', '20', '172', 'SAN JUAN ACHIUTLA', '');

INSERT INTO municipios VALUES  
('1171', '20', '173', 'SAN JUAN ATEPEC', '');

INSERT INTO municipios VALUES  
('1172', '20', '174', 'ANIMAS TRUJANO', '');

INSERT INTO municipios VALUES  
('1173', '20', '175', 'SAN JUAN BAUTISTA ATATLAHUCA', '');

INSERT INTO municipios VALUES  
('1174', '20', '176', 'SAN JUAN BAUTISTA COIXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1175', '20', '177', 'SAN JUAN BAUTISTA CUICATLAN', '');

INSERT INTO municipios VALUES  
('1176', '20', '178', 'SAN JUAN BAUTISTA GUELACHE', '');

INSERT INTO municipios VALUES  
('1177', '20', '179', 'SAN JUAN BAUTISTA JAYACATLAN', '');

INSERT INTO municipios VALUES  
('1178', '20', '180', 'SAN JUAN BAUTISTA LO DE SOTO', '');

INSERT INTO municipios VALUES  
('1179', '20', '181', 'SAN JUAN BAUTISTA SUCHITEPEC', '');

INSERT INTO municipios VALUES  
('1180', '20', '182', 'SAN JUAN BAUTISTA TLACOATZINTEPEC', '');

INSERT INTO municipios VALUES  
('1181', '20', '183', 'SAN JUAN BAUTISTA TLACHICHILCO', '');

INSERT INTO municipios VALUES  
('1182', '20', '184', 'SAN JUAN BAUTISTA TUXTEPEC', '');

INSERT INTO municipios VALUES  
('1183', '20', '185', 'SAN JUAN CACAHUATEPEC', '');

INSERT INTO municipios VALUES  
('1184', '20', '186', 'SAN JUAN CIENEGUILLA', '');

INSERT INTO municipios VALUES  
('1185', '20', '187', 'SAN JUAN COATZOSPAM', '');

INSERT INTO municipios VALUES  
('1186', '20', '188', 'SAN JUAN COLORADO', '');

INSERT INTO municipios VALUES  
('1187', '20', '189', 'SAN JUAN COMALTEPEC', '');

INSERT INTO municipios VALUES  
('1188', '20', '190', 'SAN JUAN COTZOCON', '');

INSERT INTO municipios VALUES  
('1189', '20', '191', 'SAN JUAN CHICOMEZUCHIL', '');

INSERT INTO municipios VALUES  
('1190', '20', '192', 'SAN JUAN CHILATECA', '');

INSERT INTO municipios VALUES  
('1191', '20', '193', 'SAN JUAN DEL ESTADO', '');

INSERT INTO municipios VALUES  
('1192', '20', '194', 'SAN JUAN DEL RIO', '');

INSERT INTO municipios VALUES  
('1193', '20', '195', 'SAN JUAN DIUXI', '');

INSERT INTO municipios VALUES  
('1194', '20', '196', 'SAN JUAN EVANGELISTA ANALCO', '');

INSERT INTO municipios VALUES  
('1195', '20', '197', 'SAN JUAN GUELAVIA', '');

INSERT INTO municipios VALUES  
('1196', '20', '198', 'SAN JUAN GUICHICOVI', '');

INSERT INTO municipios VALUES  
('1197', '20', '199', 'SAN JUAN IHUALTEPEC', '');

INSERT INTO municipios VALUES  
('1198', '20', '200', 'SAN JUAN JUQUILA MIXES', '');

INSERT INTO municipios VALUES  
('1199', '20', '201', 'SAN JUAN JUQUILA VIJANOS', '');

INSERT INTO municipios VALUES  
('1200', '20', '202', 'SAN JUAN LACHAO', '');

INSERT INTO municipios VALUES  
('1201', '20', '203', 'SAN JUAN LACHIGALLA', '');

INSERT INTO municipios VALUES  
('1202', '20', '204', 'SAN JUAN LAJARCIA', '');

INSERT INTO municipios VALUES  
('1203', '20', '205', 'SAN JUAN LALANA', '');

INSERT INTO municipios VALUES  
('1204', '20', '206', 'SAN JUAN DE LOS CUES', '');

INSERT INTO municipios VALUES  
('1205', '20', '207', 'SAN JUAN MAZATLAN', '');

INSERT INTO municipios VALUES  
('1206', '20', '208', 'SAN JUAN MIXTEPEC -DTO. 08 -', '');

INSERT INTO municipios VALUES  
('1207', '20', '209', 'SAN JUAN MIXTEPEC -DTO. 26 -', '');

INSERT INTO municipios VALUES  
('1208', '20', '210', 'SAN JUAN ÑUMI', '');

INSERT INTO municipios VALUES  
('1209', '20', '211', 'SAN JUAN OZOLOTEPEC', '');

INSERT INTO municipios VALUES  
('1210', '20', '212', 'SAN JUAN PETLAPA', '');

INSERT INTO municipios VALUES  
('1211', '20', '213', 'SAN JUAN QUIAHIJE', '');

INSERT INTO municipios VALUES  
('1212', '20', '214', 'SAN JUAN QUIOTEPEC', '');

INSERT INTO municipios VALUES  
('1213', '20', '215', 'SAN JUAN SAYULTEPEC', '');

INSERT INTO municipios VALUES  
('1214', '20', '216', 'SAN JUAN TABAA', '');

INSERT INTO municipios VALUES  
('1215', '20', '217', 'SAN JUAN TAMAZOLA', '');

INSERT INTO municipios VALUES  
('1216', '20', '218', 'SAN JUAN TEITA', '');

INSERT INTO municipios VALUES  
('1217', '20', '219', 'SAN JUAN TEITIPAC', '');

INSERT INTO municipios VALUES  
('1218', '20', '220', 'SAN JUAN TEPEUXILA', '');

INSERT INTO municipios VALUES  
('1219', '20', '221', 'SAN JUAN TEPOSCOLULA', '');

INSERT INTO municipios VALUES  
('1220', '20', '222', 'SAN JUAN YAEE', '');

INSERT INTO municipios VALUES  
('1221', '20', '223', 'SAN JUAN YATZONA', '');

INSERT INTO municipios VALUES  
('1222', '20', '224', 'SAN JUAN YUCUITA', '');

INSERT INTO municipios VALUES  
('1223', '20', '225', 'SAN LORENZO', '');

INSERT INTO municipios VALUES  
('1224', '20', '226', 'SAN LORENZO ALBARRADAS', '');

INSERT INTO municipios VALUES  
('1225', '20', '227', 'SAN LORENZO CACAOTEPEC', '');

INSERT INTO municipios VALUES  
('1226', '20', '228', 'SAN LORENZO CUAUNECUILTITLA', '');

INSERT INTO municipios VALUES  
('1227', '20', '229', 'SAN LORENZO TEXMELUCAN', '');

INSERT INTO municipios VALUES  
('1228', '20', '230', 'SAN LORENZO VICTORIA', '');

INSERT INTO municipios VALUES  
('1229', '20', '231', 'SAN LUCAS CAMOTLAN', '');

INSERT INTO municipios VALUES  
('1230', '20', '232', 'SAN LUCAS OJITLAN', '');

INSERT INTO municipios VALUES  
('1231', '20', '233', 'SAN LUCAS QUIAVINI', '');

INSERT INTO municipios VALUES  
('1232', '20', '234', 'SAN LUCAS ZOQUIAPAM', '');

INSERT INTO municipios VALUES  
('1233', '20', '235', 'SAN LUIS AMATLAN', '');

INSERT INTO municipios VALUES  
('1234', '20', '236', 'SAN MARCIAL OZOLOTEPEC', '');

INSERT INTO municipios VALUES  
('1235', '20', '237', 'SAN MARCOS ARTEAGA', '');

INSERT INTO municipios VALUES  
('1236', '20', '238', 'SAN MARTIN DE LOS CANSECOS', '');

INSERT INTO municipios VALUES  
('1237', '20', '239', 'SAN MARTIN HUAMELULPAM', '');

INSERT INTO municipios VALUES  
('1238', '20', '240', 'SAN MARTIN ITUNYOSO', '');

INSERT INTO municipios VALUES  
('1239', '20', '241', 'SAN MARTIN LACHILA', '');

INSERT INTO municipios VALUES  
('1240', '20', '242', 'SAN MARTIN PERAS', '');

INSERT INTO municipios VALUES  
('1241', '20', '243', 'SAN MARTIN TILCAJETE', '');

INSERT INTO municipios VALUES  
('1242', '20', '244', 'SAN MARTIN TOXPALAN', '');

INSERT INTO municipios VALUES  
('1243', '20', '245', 'SAN MARTIN ZACATEPEC', '');

INSERT INTO municipios VALUES  
('1244', '20', '246', 'SAN MATEO CAJONOS', '');

INSERT INTO municipios VALUES  
('1245', '20', '247', 'CAPULALPAM DE MENDEZ', '');

INSERT INTO municipios VALUES  
('1246', '20', '248', 'SAN MATEO DEL MAR', '');

INSERT INTO municipios VALUES  
('1247', '20', '249', 'SAN MATEO YOLOXOCHITLAN', '');

INSERT INTO municipios VALUES  
('1248', '20', '250', 'SAN MATEO ETLATONGO', '');

INSERT INTO municipios VALUES  
('1249', '20', '251', 'SAN MATEO NEJAPAM', '');

INSERT INTO municipios VALUES  
('1250', '20', '252', 'SAN MATEO PEÑASCO', '');

INSERT INTO municipios VALUES  
('1251', '20', '253', 'SAN MATEO PIÑAS', '');

INSERT INTO municipios VALUES  
('1252', '20', '254', 'SAN MATEO RIO HONDO', '');

INSERT INTO municipios VALUES  
('1253', '20', '255', 'SAN MATEO SINDIHUI', '');

INSERT INTO municipios VALUES  
('1254', '20', '256', 'SAN MATEO TLAPILTEPEC', '');

INSERT INTO municipios VALUES  
('1255', '20', '257', 'SAN MELCHOR BETAZA', '');

INSERT INTO municipios VALUES  
('1256', '20', '258', 'SAN MIGUEL ACHIUTLA', '');

INSERT INTO municipios VALUES  
('1257', '20', '259', 'SAN MIGUEL AHUEHUETITLAN', '');

INSERT INTO municipios VALUES  
('1258', '20', '260', 'SAN MIGUEL ALOAPAM', '');

INSERT INTO municipios VALUES  
('1259', '20', '261', 'SAN MIGUEL AMATITLAN', '');

INSERT INTO municipios VALUES  
('1260', '20', '262', 'SAN MIGUEL AMATLAN', '');

INSERT INTO municipios VALUES  
('1261', '20', '263', 'SAN MIGUEL COATLAN', '');

INSERT INTO municipios VALUES  
('1262', '20', '264', 'SAN MIGUEL CHICAHUA', '');

INSERT INTO municipios VALUES  
('1263', '20', '265', 'SAN MIGUEL CHIMALAPA', '');

INSERT INTO municipios VALUES  
('1264', '20', '266', 'SAN MIGUEL DEL PUERTO', '');

INSERT INTO municipios VALUES  
('1265', '20', '267', 'SAN MIGUEL DEL RIO', '');

INSERT INTO municipios VALUES  
('1266', '20', '268', 'SAN MIGUEL EJUTLA', '');

INSERT INTO municipios VALUES  
('1267', '20', '269', 'SAN MIGUEL EL GRANDE', '');

INSERT INTO municipios VALUES  
('1268', '20', '270', 'SAN MIGUEL HUAUTLA', '');

INSERT INTO municipios VALUES  
('1269', '20', '271', 'SAN MIGUEL MIXTEPEC', '');

INSERT INTO municipios VALUES  
('1270', '20', '272', 'SAN MIGUEL PANIXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1271', '20', '273', 'SAN MIGUEL PERAS', '');

INSERT INTO municipios VALUES  
('1272', '20', '274', 'SAN MIGUEL PIEDRAS', '');

INSERT INTO municipios VALUES  
('1273', '20', '275', 'SAN MIGUEL QUETZALTEPEC', '');

INSERT INTO municipios VALUES  
('1274', '20', '276', 'SAN MIGUEL SANTA FLOR', '');

INSERT INTO municipios VALUES  
('1275', '20', '277', 'VILLA SOLA DE VEGA', '');

INSERT INTO municipios VALUES  
('1276', '20', '278', 'SAN MIGUEL SOYALTEPEC', '');

INSERT INTO municipios VALUES  
('1277', '20', '279', 'SAN MIGUEL SUCHIXTEPEC', '');

INSERT INTO municipios VALUES  
('1278', '20', '280', 'VILLA TALEA DE CASTRO', '');

INSERT INTO municipios VALUES  
('1279', '20', '281', 'SAN MIGUEL TECOMATLAN', '');

INSERT INTO municipios VALUES  
('1280', '20', '282', 'SAN MIGUEL TENANGO', '');

INSERT INTO municipios VALUES  
('1281', '20', '283', 'SAN MIGUEL TEQUIXTEPEC', '');

INSERT INTO municipios VALUES  
('1282', '20', '284', 'SAN MIGUEL TILQUIAPAM', '');

INSERT INTO municipios VALUES  
('1283', '20', '285', 'SAN MIGUEL TLACAMAMA', '');

INSERT INTO municipios VALUES  
('1284', '20', '286', 'SAN MIGUEL TLACOTEPEC', '');

INSERT INTO municipios VALUES  
('1285', '20', '287', 'SAN MIGUEL TULANCINGO', '');

INSERT INTO municipios VALUES  
('1286', '20', '288', 'SAN MIGUEL YOTAO', '');

INSERT INTO municipios VALUES  
('1287', '20', '289', 'SAN NICOLAS', '');

INSERT INTO municipios VALUES  
('1288', '20', '290', 'SAN NICOLAS HIDALGO', '');

INSERT INTO municipios VALUES  
('1289', '20', '291', 'SAN PABLO COATLAN', '');

INSERT INTO municipios VALUES  
('1290', '20', '292', 'SAN PABLO CUATRO VENADOS', '');

INSERT INTO municipios VALUES  
('1291', '20', '293', 'SAN PABLO ETLA', '');

INSERT INTO municipios VALUES  
('1292', '20', '294', 'SAN PABLO HUITZO', '');

INSERT INTO municipios VALUES  
('1293', '20', '295', 'SAN PABLO HUIXTEPEC', '');

INSERT INTO municipios VALUES  
('1294', '20', '296', 'SAN PABLO MACUILTIANGUIS', '');

INSERT INTO municipios VALUES  
('1295', '20', '297', 'SAN PABLO TIJALTEPEC', '');

INSERT INTO municipios VALUES  
('1296', '20', '298', 'SAN PABLO VILLA DE MITLA', '');

INSERT INTO municipios VALUES  
('1297', '20', '299', 'SAN PABLO YAGANIZA', '');

INSERT INTO municipios VALUES  
('1298', '20', '300', 'SAN PEDRO AMUZGOS', '');

INSERT INTO municipios VALUES  
('1299', '20', '301', 'SAN PEDRO APOSTOL', '');

INSERT INTO municipios VALUES  
('1300', '20', '302', 'SAN PEDRO ATOYAC', '');

INSERT INTO municipios VALUES  
('1301', '20', '303', 'SAN PEDRO CAJONOS', '');

INSERT INTO municipios VALUES  
('1302', '20', '304', 'SAN PEDRO COXCALTEPEC CANTAROS', '');

INSERT INTO municipios VALUES  
('1303', '20', '305', 'SAN PEDRO COMITANCILLO', '');

INSERT INTO municipios VALUES  
('1304', '20', '306', 'SAN PEDRO EL ALTO', '');

INSERT INTO municipios VALUES  
('1305', '20', '307', 'SAN PEDRO HUAMELULA', '');

INSERT INTO municipios VALUES  
('1306', '20', '308', 'SAN PEDRO HUILOTEPEC', '');

INSERT INTO municipios VALUES  
('1307', '20', '309', 'SAN PEDRO IXCATLAN', '');

INSERT INTO municipios VALUES  
('1308', '20', '310', 'SAN PEDRO IXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1309', '20', '311', 'SAN PEDRO JALTEPETONGO', '');

INSERT INTO municipios VALUES  
('1310', '20', '312', 'SAN PEDRO JICAYAN', '');

INSERT INTO municipios VALUES  
('1311', '20', '313', 'SAN PEDRO JOCOTIPAC', '');

INSERT INTO municipios VALUES  
('1312', '20', '314', 'SAN PEDRO JUCHATENGO', '');

INSERT INTO municipios VALUES  
('1313', '20', '315', 'SAN PEDRO MARTIR', '');

INSERT INTO municipios VALUES  
('1314', '20', '316', 'SAN PEDRO MARTIR QUIECHAPA', '');

INSERT INTO municipios VALUES  
('1315', '20', '317', 'SAN PEDRO MARTIR YUCUXACO', '');

INSERT INTO municipios VALUES  
('1316', '20', '318', 'SAN PEDRO MIXTEPEC -DTO. 22 -', '');

INSERT INTO municipios VALUES  
('1317', '20', '319', 'SAN PEDRO MIXTEPEC -DTO. 26 -', '');

INSERT INTO municipios VALUES  
('1318', '20', '320', 'SAN PEDRO MOLINOS', '');

INSERT INTO municipios VALUES  
('1319', '20', '321', 'SAN PEDRO NOPALA', '');

INSERT INTO municipios VALUES  
('1320', '20', '322', 'SAN PEDRO OCOPETATILLO', '');

INSERT INTO municipios VALUES  
('1321', '20', '323', 'SAN PEDRO OCOTEPEC', '');

INSERT INTO municipios VALUES  
('1322', '20', '324', 'SAN PEDRO POCHUTLA', '');

INSERT INTO municipios VALUES  
('1323', '20', '325', 'SAN PEDRO QUIATONI', '');

INSERT INTO municipios VALUES  
('1324', '20', '326', 'SAN PEDRO SOCHIAPAM', '');

INSERT INTO municipios VALUES  
('1325', '20', '327', 'SAN PEDRO TAPANATEPEC', '');

INSERT INTO municipios VALUES  
('1326', '20', '328', 'SAN PEDRO TAVICHE', '');

INSERT INTO municipios VALUES  
('1327', '20', '329', 'SAN PEDRO TEOZACOALCO', '');

INSERT INTO municipios VALUES  
('1328', '20', '330', 'SAN PEDRO TEUTILA', '');

INSERT INTO municipios VALUES  
('1329', '20', '331', 'SAN PEDRO TIDAA', '');

INSERT INTO municipios VALUES  
('1330', '20', '332', 'SAN PEDRO TOPILTEPEC', '');

INSERT INTO municipios VALUES  
('1331', '20', '333', 'SAN PEDRO TOTOLAPAM', '');

INSERT INTO municipios VALUES  
('1332', '20', '334', 'VILLA DE TUTUTEPEC DE MELCHOR OCAMPO', '');

INSERT INTO municipios VALUES  
('1333', '20', '335', 'SAN PEDRO YANERI', '');

INSERT INTO municipios VALUES  
('1334', '20', '336', 'SAN PEDRO YOLOX', '');

INSERT INTO municipios VALUES  
('1335', '20', '337', 'SAN PEDRO Y SAN PABLO AYUTLA', '');

INSERT INTO municipios VALUES  
('1336', '20', '338', 'VILLA DE ETLA', '');

INSERT INTO municipios VALUES  
('1337', '20', '339', 'SAN PEDRO Y SAN PABLO TEPOSCOLULA', '');

INSERT INTO municipios VALUES  
('1338', '20', '340', 'SAN PEDRO Y SAN PABLO TEQUIXTEPEC', '');

INSERT INTO municipios VALUES  
('1339', '20', '341', 'SAN PEDRO YUCUNAMA', '');

INSERT INTO municipios VALUES  
('1340', '20', '342', 'SAN RAYMUNDO JALPAN', '');

INSERT INTO municipios VALUES  
('1341', '20', '343', 'SAN SEBASTIAN ABASOLO', '');

INSERT INTO municipios VALUES  
('1342', '20', '344', 'SAN SEBASTIAN COATLAN', '');

INSERT INTO municipios VALUES  
('1343', '20', '345', 'SAN SEBASTIAN IXCAPA', '');

INSERT INTO municipios VALUES  
('1344', '20', '346', 'SAN SEBASTIAN NICANANDUTA', '');

INSERT INTO municipios VALUES  
('1345', '20', '347', 'SAN SEBASTIAN RIO HONDO', '');

INSERT INTO municipios VALUES  
('1346', '20', '348', 'SAN SEBASTIAN TECOMAXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1347', '20', '349', 'SAN SEBASTIAN TEITIPAC', '');

INSERT INTO municipios VALUES  
('1348', '20', '350', 'SAN SEBASTIAN TUTLA', '');

INSERT INTO municipios VALUES  
('1349', '20', '351', 'SAN SIMON ALMOLONGAS', '');

INSERT INTO municipios VALUES  
('1350', '20', '352', 'SAN SIMON ZAHUATLAN', '');

INSERT INTO municipios VALUES  
('1351', '20', '353', 'SANTA ANA', '');

INSERT INTO municipios VALUES  
('1352', '20', '354', 'SANTA ANA ATEIXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1353', '20', '355', 'SANTA ANA CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('1354', '20', '356', 'SANTA ANA DEL VALLE', '');

INSERT INTO municipios VALUES  
('1355', '20', '357', 'SANTA ANA TAVELA', '');

INSERT INTO municipios VALUES  
('1356', '20', '358', 'SANTA ANA TLAPACOYAN', '');

INSERT INTO municipios VALUES  
('1357', '20', '359', 'SANTA ANA YARENI', '');

INSERT INTO municipios VALUES  
('1358', '20', '360', 'SANTA ANA ZEGACHE', '');

INSERT INTO municipios VALUES  
('1359', '20', '361', 'SANTA CATALINA QUIERI', '');

INSERT INTO municipios VALUES  
('1360', '20', '362', 'SANTA CATARINA CUIXTLA', '');

INSERT INTO municipios VALUES  
('1361', '20', '363', 'SANTA CATARINA IXTEPEJI', '');

INSERT INTO municipios VALUES  
('1362', '20', '364', 'SANTA CATARINA JUQUILA', '');

INSERT INTO municipios VALUES  
('1363', '20', '365', 'SANTA CATARINA LACHATAO', '');

INSERT INTO municipios VALUES  
('1364', '20', '366', 'SANTA CATARINA LOXICHA', '');

INSERT INTO municipios VALUES  
('1365', '20', '367', 'SANTA CATARINA MECHOACAN', '');

INSERT INTO municipios VALUES  
('1366', '20', '368', 'SANTA CATARINA MINAS', '');

INSERT INTO municipios VALUES  
('1367', '20', '369', 'SANTA CATARINA QUIANE', '');

INSERT INTO municipios VALUES  
('1368', '20', '370', 'SANTA CATARINA TAYATA', '');

INSERT INTO municipios VALUES  
('1369', '20', '371', 'SANTA CATARINA TICUA', '');

INSERT INTO municipios VALUES  
('1370', '20', '372', 'SANTA CATARINA YOSONOTU', '');

INSERT INTO municipios VALUES  
('1371', '20', '373', 'SANTA CATARINA ZAPOQUILA', '');

INSERT INTO municipios VALUES  
('1372', '20', '374', 'SANTA CRUZ ACATEPEC', '');

INSERT INTO municipios VALUES  
('1373', '20', '375', 'SANTA CRUZ AMILPAS', '');

INSERT INTO municipios VALUES  
('1374', '20', '376', 'SANTA CRUZ DE BRAVO', '');

INSERT INTO municipios VALUES  
('1375', '20', '377', 'SANTA CRUZ ITUNDUJIA', '');

INSERT INTO municipios VALUES  
('1376', '20', '378', 'SANTA CRUZ MIXTEPEC', '');

INSERT INTO municipios VALUES  
('1377', '20', '379', 'SANTA CRUZ NUNDACO', '');

INSERT INTO municipios VALUES  
('1378', '20', '380', 'SANTA CRUZ PAPALUTLA', '');

INSERT INTO municipios VALUES  
('1379', '20', '381', 'SANTA CRUZ TACACHE DE MINA', '');

INSERT INTO municipios VALUES  
('1380', '20', '382', 'SANTA CRUZ TACAHUA', '');

INSERT INTO municipios VALUES  
('1381', '20', '383', 'SANTA CRUZ TAYATA', '');

INSERT INTO municipios VALUES  
('1382', '20', '384', 'SANTA CRUZ XITLA', '');

INSERT INTO municipios VALUES  
('1383', '20', '385', 'SANTA CRUZ XOXOCOTLAN', '');

INSERT INTO municipios VALUES  
('1384', '20', '386', 'SANTA CRUZ ZENZONTEPEC', '');

INSERT INTO municipios VALUES  
('1385', '20', '387', 'SANTA GERTRUDIS', '');

INSERT INTO municipios VALUES  
('1386', '20', '388', 'SANTA INES DEL MONTE', '');

INSERT INTO municipios VALUES  
('1387', '20', '389', 'SANTA INES YATZECHE', '');

INSERT INTO municipios VALUES  
('1388', '20', '390', 'SANTA LUCIA DEL CAMINO', '');

INSERT INTO municipios VALUES  
('1389', '20', '391', 'SANTA LUCIA MIAHUATLAN', '');

INSERT INTO municipios VALUES  
('1390', '20', '392', 'SANTA LUCIA MONTEVERDE', '');

INSERT INTO municipios VALUES  
('1391', '20', '393', 'SANTA LUCIA OCOTLAN', '');

INSERT INTO municipios VALUES  
('1392', '20', '394', 'SANTA MARIA ALOTEPEC', '');

INSERT INTO municipios VALUES  
('1393', '20', '395', 'SANTA MARIA APAZCO', '');

INSERT INTO municipios VALUES  
('1394', '20', '396', 'SANTA MARIA LA ASUNCION', '');

INSERT INTO municipios VALUES  
('1395', '20', '397', 'HEROICA CIUDAD DE TLAXIACO', '');

INSERT INTO municipios VALUES  
('1396', '20', '398', 'AYOQUEZCO DE ALDAMA', '');

INSERT INTO municipios VALUES  
('1397', '20', '399', 'SANTA MARIA ATZOMPA', '');

INSERT INTO municipios VALUES  
('1398', '20', '400', 'SANTA MARIA CAMOTLAN', '');

INSERT INTO municipios VALUES  
('1399', '20', '401', 'SANTA MARIA COLOTEPEC', '');

INSERT INTO municipios VALUES  
('1400', '20', '402', 'SANTA MARIA CORTIJO', '');

INSERT INTO municipios VALUES  
('1401', '20', '403', 'SANTA MARIA COYOTEPEC', '');

INSERT INTO municipios VALUES  
('1402', '20', '404', 'SANTA MARIA CHACHOAPAM', '');

INSERT INTO municipios VALUES  
('1403', '20', '405', 'VILLA DE CHILAPA DE DIAZ', '');

INSERT INTO municipios VALUES  
('1404', '20', '406', 'SANTA MARIA CHILCHOTLA', '');

INSERT INTO municipios VALUES  
('1405', '20', '407', 'SANTA MARIA CHIMALAPA', '');

INSERT INTO municipios VALUES  
('1406', '20', '408', 'SANTA MARIA DEL ROSARIO', '');

INSERT INTO municipios VALUES  
('1407', '20', '409', 'SANTA MARIA DEL TULE', '');

INSERT INTO municipios VALUES  
('1408', '20', '410', 'SANTA MARIA ECATEPEC', '');

INSERT INTO municipios VALUES  
('1409', '20', '411', 'SANTA MARIA GUELACE', '');

INSERT INTO municipios VALUES  
('1410', '20', '412', 'SANTA MARIA GUIENAGATI', '');

INSERT INTO municipios VALUES  
('1411', '20', '413', 'SANTA MARIA HUATULCO', '');

INSERT INTO municipios VALUES  
('1412', '20', '414', 'SANTA MARIA HUAZOLOTITLAN', '');

INSERT INTO municipios VALUES  
('1413', '20', '415', 'SANTA MARIA IPALAPA', '');

INSERT INTO municipios VALUES  
('1414', '20', '416', 'SANTA MARIA IXCATLAN', '');

INSERT INTO municipios VALUES  
('1415', '20', '417', 'SANTA MARIA JACATEPEC', '');

INSERT INTO municipios VALUES  
('1416', '20', '418', 'SANTA MARIA JALAPA DEL MARQUES', '');

INSERT INTO municipios VALUES  
('1417', '20', '419', 'SANTA MARIA JALTIANGUIS', '');

INSERT INTO municipios VALUES  
('1418', '20', '420', 'SANTA MARIA LACHIXIO', '');

INSERT INTO municipios VALUES  
('1419', '20', '421', 'SANTA MARIA MIXTEQUILLA', '');

INSERT INTO municipios VALUES  
('1420', '20', '422', 'SANTA MARIA NATIVITAS', '');

INSERT INTO municipios VALUES  
('1421', '20', '423', 'SANTA MARIA NDUAYACO', '');

INSERT INTO municipios VALUES  
('1422', '20', '424', 'SANTA MARIA OZOLOTEPEC', '');

INSERT INTO municipios VALUES  
('1423', '20', '425', 'SANTA MARIA PAPALO', '');

INSERT INTO municipios VALUES  
('1424', '20', '426', 'SANTA MARIA PEÑOLES', '');

INSERT INTO municipios VALUES  
('1425', '20', '427', 'SANTA MARIA PETAPA', '');

INSERT INTO municipios VALUES  
('1426', '20', '428', 'SANTA MARIA QUIEGOLANI', '');

INSERT INTO municipios VALUES  
('1427', '20', '429', 'SANTA MARIA SOLA', '');

INSERT INTO municipios VALUES  
('1428', '20', '430', 'SANTA MARIA TATALTEPEC', '');

INSERT INTO municipios VALUES  
('1429', '20', '431', 'SANTA MARIA TECOMAVACA', '');

INSERT INTO municipios VALUES  
('1430', '20', '432', 'SANTA MARIA TEMAXCALAPA', '');

INSERT INTO municipios VALUES  
('1431', '20', '433', 'SANTA MARIA TEMAXCALTEPEC', '');

INSERT INTO municipios VALUES  
('1432', '20', '434', 'SANTA MARIA TEOPOXCO', '');

INSERT INTO municipios VALUES  
('1433', '20', '435', 'SANTA MARIA TEPANTLALI', '');

INSERT INTO municipios VALUES  
('1434', '20', '436', 'SANTA MARIA TEXCATITLAN', '');

INSERT INTO municipios VALUES  
('1435', '20', '437', 'SANTA MARIA TLAHUITOLTEPEC', '');

INSERT INTO municipios VALUES  
('1436', '20', '438', 'SANTA MARIA TLALIXTAC', '');

INSERT INTO municipios VALUES  
('1437', '20', '439', 'SANTA MARIA TONAMECA', '');

INSERT INTO municipios VALUES  
('1438', '20', '440', 'SANTA MARIA TOTOLAPILLA', '');

INSERT INTO municipios VALUES  
('1439', '20', '441', 'SANTA MARIA XADANI', '');

INSERT INTO municipios VALUES  
('1440', '20', '442', 'SANTA MARIA YALINA', '');

INSERT INTO municipios VALUES  
('1441', '20', '443', 'SANTA MARIA YAVESIA', '');

INSERT INTO municipios VALUES  
('1442', '20', '444', 'SANTA MARIA YOLOTEPEC', '');

INSERT INTO municipios VALUES  
('1443', '20', '445', 'SANTA MARIA YOSOYUA', '');

INSERT INTO municipios VALUES  
('1444', '20', '446', 'SANTA MARIA YUCUHITI', '');

INSERT INTO municipios VALUES  
('1445', '20', '447', 'SANTA MARIA ZACATEPEC', '');

INSERT INTO municipios VALUES  
('1446', '20', '448', 'SANTA MARIA ZANIZA', '');

INSERT INTO municipios VALUES  
('1447', '20', '449', 'SANTA MARIA ZOQUITLAN', '');

INSERT INTO municipios VALUES  
('1448', '20', '450', 'SANTIAGO AMOLTEPEC', '');

INSERT INTO municipios VALUES  
('1449', '20', '451', 'SANTIAGO APOALA', '');

INSERT INTO municipios VALUES  
('1450', '20', '452', 'SANTIAGO APOSTOL', '');

INSERT INTO municipios VALUES  
('1451', '20', '453', 'SANTIAGO ASTATA', '');

INSERT INTO municipios VALUES  
('1452', '20', '454', 'SANTIAGO ATITLAN', '');

INSERT INTO municipios VALUES  
('1453', '20', '455', 'SANTIAGO AYUQUILILLA', '');

INSERT INTO municipios VALUES  
('1454', '20', '456', 'SANTIAGO CACALOXTEPEC', '');

INSERT INTO municipios VALUES  
('1455', '20', '457', 'SANTIAGO CAMOTLAN', '');

INSERT INTO municipios VALUES  
('1456', '20', '458', 'SANTIAGO COMALTEPEC', '');

INSERT INTO municipios VALUES  
('1457', '20', '459', 'SANTIAGO CHAZUMBA', '');

INSERT INTO municipios VALUES  
('1458', '20', '460', 'SANTIAGO CHOAPAM', '');

INSERT INTO municipios VALUES  
('1459', '20', '461', 'SANTIAGO DEL RIO', '');

INSERT INTO municipios VALUES  
('1460', '20', '462', 'SANTIAGO HUAJOLOTITLAN', '');

INSERT INTO municipios VALUES  
('1461', '20', '463', 'SANTIAGO HUAUCLILLA', '');

INSERT INTO municipios VALUES  
('1462', '20', '464', 'SANTIAGO IHUITLAN PLUMAS', '');

INSERT INTO municipios VALUES  
('1463', '20', '465', 'SANTIAGO IXCUINTEPEC', '');

INSERT INTO municipios VALUES  
('1464', '20', '466', 'SANTIAGO IXTAYUTLA', '');

INSERT INTO municipios VALUES  
('1465', '20', '467', 'SANTIAGO JAMILTEPEC', '');

INSERT INTO municipios VALUES  
('1466', '20', '468', 'SANTIAGO JOCOTEPEC', '');

INSERT INTO municipios VALUES  
('1467', '20', '469', 'SANTIAGO JUXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1468', '20', '470', 'SANTIAGO LACHIGUIRI', '');

INSERT INTO municipios VALUES  
('1469', '20', '471', 'SANTIAGO LALOPA', '');

INSERT INTO municipios VALUES  
('1470', '20', '472', 'SANTIAGO LAOLLAGA', '');

INSERT INTO municipios VALUES  
('1471', '20', '473', 'SANTIAGO LAXOPA', '');

INSERT INTO municipios VALUES  
('1472', '20', '474', 'SANTIAGO LLANO GRANDE', '');

INSERT INTO municipios VALUES  
('1473', '20', '475', 'SANTIAGO MATATLAN', '');

INSERT INTO municipios VALUES  
('1474', '20', '476', 'SANTIAGO MILTEPEC', '');

INSERT INTO municipios VALUES  
('1475', '20', '477', 'SANTIAGO MINAS', '');

INSERT INTO municipios VALUES  
('1476', '20', '478', 'SANTIAGO NACALTEPEC', '');

INSERT INTO municipios VALUES  
('1477', '20', '479', 'SANTIAGO NEJAPILLA', '');

INSERT INTO municipios VALUES  
('1478', '20', '480', 'SANTIAGO NUNDICHE', '');

INSERT INTO municipios VALUES  
('1479', '20', '481', 'SANTIAGO NUYOO', '');

INSERT INTO municipios VALUES  
('1480', '20', '482', 'SANTIAGO PINOTEPA NACIONAL', '');

INSERT INTO municipios VALUES  
('1481', '20', '483', 'SANTIAGO SUCHILQUITONGO', '');

INSERT INTO municipios VALUES  
('1482', '20', '484', 'SANTIAGO TAMAZOLA', '');

INSERT INTO municipios VALUES  
('1483', '20', '485', 'SANTIAGO TAPEXTLA', '');

INSERT INTO municipios VALUES  
('1484', '20', '486', 'VILLA TEJUPAM DE LA UNION', '');

INSERT INTO municipios VALUES  
('1485', '20', '487', 'SANTIAGO TENANGO', '');

INSERT INTO municipios VALUES  
('1486', '20', '488', 'SANTIAGO TEPETLAPA', '');

INSERT INTO municipios VALUES  
('1487', '20', '489', 'SANTIAGO TETEPEC', '');

INSERT INTO municipios VALUES  
('1488', '20', '490', 'SANTIAGO TEXCALCINGO', '');

INSERT INTO municipios VALUES  
('1489', '20', '491', 'SANTIAGO TEXTITLAN', '');

INSERT INTO municipios VALUES  
('1490', '20', '492', 'SANTIAGO TILANTONGO', '');

INSERT INTO municipios VALUES  
('1491', '20', '493', 'SANTIAGO TILLO', '');

INSERT INTO municipios VALUES  
('1492', '20', '494', 'SANTIAGO TLAZOYALTEPEC', '');

INSERT INTO municipios VALUES  
('1493', '20', '495', 'SANTIAGO XANICA', '');

INSERT INTO municipios VALUES  
('1494', '20', '496', 'SANTIAGO XIACUI', '');

INSERT INTO municipios VALUES  
('1495', '20', '497', 'SANTIAGO YAITEPEC', '');

INSERT INTO municipios VALUES  
('1496', '20', '498', 'SANTIAGO YAVEO', '');

INSERT INTO municipios VALUES  
('1497', '20', '499', 'SANTIAGO YOLOMECATL', '');

INSERT INTO municipios VALUES  
('1498', '20', '500', 'SANTIAGO YOSONDUA', '');

INSERT INTO municipios VALUES  
('1499', '20', '501', 'SANTIAGO YUCUYACHI', '');

INSERT INTO municipios VALUES  
('1500', '20', '502', 'SANTIAGO ZACATEPEC', '');

INSERT INTO municipios VALUES  
('1501', '20', '503', 'SANTIAGO ZOOCHILA', '');

INSERT INTO municipios VALUES  
('1502', '20', '504', 'NUEVO ZOQUIAPAM', '');

INSERT INTO municipios VALUES  
('1503', '20', '505', 'SANTO DOMINGO INGENIO', '');

INSERT INTO municipios VALUES  
('1504', '20', '506', 'SANTO DOMINGO ALBARRADAS', '');

INSERT INTO municipios VALUES  
('1505', '20', '507', 'SANTO DOMINGO ARMENTA', '');

INSERT INTO municipios VALUES  
('1506', '20', '508', 'SANTO DOMINGO CHIHUITAN', '');

INSERT INTO municipios VALUES  
('1507', '20', '509', 'SANTO DOMINGO DE MORELOS', '');

INSERT INTO municipios VALUES  
('1508', '20', '510', 'SANTO DOMINGO IXCATLAN', '');

INSERT INTO municipios VALUES  
('1509', '20', '511', 'SANTO DOMINGO NUXAA', '');

INSERT INTO municipios VALUES  
('1510', '20', '512', 'SANTO DOMINGO OZOLOTEPEC', '');

INSERT INTO municipios VALUES  
('1511', '20', '513', 'SANTO DOMINGO PETAPA', '');

INSERT INTO municipios VALUES  
('1512', '20', '514', 'SANTO DOMINGO ROAYAGA', '');

INSERT INTO municipios VALUES  
('1513', '20', '515', 'SANTO DOMINGO TEHUANTEPEC', '');

INSERT INTO municipios VALUES  
('1514', '20', '516', 'SANTO DOMINGO TEOJOMULCO', '');

INSERT INTO municipios VALUES  
('1515', '20', '517', 'SANTO DOMINGO TEPUXTEPEC', '');

INSERT INTO municipios VALUES  
('1516', '20', '518', 'SANTO DOMINGO TLATAYAPAM', '');

INSERT INTO municipios VALUES  
('1517', '20', '519', 'SANTO DOMINGO TOMALTEPEC', '');

INSERT INTO municipios VALUES  
('1518', '20', '520', 'SANTO DOMINGO TONALA', '');

INSERT INTO municipios VALUES  
('1519', '20', '521', 'SANTO DOMINGO TONALTEPEC', '');

INSERT INTO municipios VALUES  
('1520', '20', '522', 'SANTO DOMINGO XAGACIA', '');

INSERT INTO municipios VALUES  
('1521', '20', '523', 'SANTO DOMINGO YANHUITLAN', '');

INSERT INTO municipios VALUES  
('1522', '20', '524', 'SANTO DOMINGO YODOHINO', '');

INSERT INTO municipios VALUES  
('1523', '20', '525', 'SANTO DOMINGO ZANATEPEC', '');

INSERT INTO municipios VALUES  
('1524', '20', '526', 'SANTOS REYES NOPALA', '');

INSERT INTO municipios VALUES  
('1525', '20', '527', 'SANTOS REYES PAPALO', '');

INSERT INTO municipios VALUES  
('1526', '20', '528', 'SANTOS REYES TEPEJILLO', '');

INSERT INTO municipios VALUES  
('1527', '20', '529', 'SANTOS REYES YUCUNA', '');

INSERT INTO municipios VALUES  
('1528', '20', '530', 'SANTO TOMAS JALIEZA', '');

INSERT INTO municipios VALUES  
('1529', '20', '531', 'SANTO TOMAS MAZALTEPEC', '');

INSERT INTO municipios VALUES  
('1530', '20', '532', 'SANTO TOMAS OCOTEPEC', '');

INSERT INTO municipios VALUES  
('1531', '20', '533', 'SANTO TOMAS TAMAZULAPAN', '');

INSERT INTO municipios VALUES  
('1532', '20', '534', 'SAN VICENTE COATLAN', '');

INSERT INTO municipios VALUES  
('1533', '20', '535', 'SAN VICENTE LACHIXIO', '');

INSERT INTO municipios VALUES  
('1534', '20', '536', 'SAN VICENTE NUÑU', '');

INSERT INTO municipios VALUES  
('1535', '20', '537', 'SILACAYOAPAM', '');

INSERT INTO municipios VALUES  
('1536', '20', '538', 'SITIO DE XITLAPEHUA', '');

INSERT INTO municipios VALUES  
('1537', '20', '539', 'SOLEDAD ETLA', '');

INSERT INTO municipios VALUES  
('1538', '20', '540', 'VILLA DE TAMAZULAPAM DEL PROGRESO', '');

INSERT INTO municipios VALUES  
('1539', '20', '541', 'TANETZE DE ZARAGOZA', '');

INSERT INTO municipios VALUES  
('1540', '20', '542', 'TANICHE', '');

INSERT INTO municipios VALUES  
('1541', '20', '543', 'TATALTEPEC DE VALDES', '');

INSERT INTO municipios VALUES  
('1542', '20', '544', 'TEOCOCUILCO DE MARCOS PEREZ', '');

INSERT INTO municipios VALUES  
('1543', '20', '545', 'TEOTITLAN DE FLORES MAGON', '');

INSERT INTO municipios VALUES  
('1544', '20', '546', 'TEOTITLAN DEL VALLE', '');

INSERT INTO municipios VALUES  
('1545', '20', '547', 'TEOTONGO', '');

INSERT INTO municipios VALUES  
('1546', '20', '548', 'TEPELMEME VILLA DE MORELOS', '');

INSERT INTO municipios VALUES  
('1547', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1548', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1549', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1550', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1551', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1552', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1553', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1554', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1555', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1556', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1557', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1558', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1559', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1560', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1561', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1562', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1563', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1564', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1565', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1566', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1567', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1568', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1569', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1570', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1571', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1572', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1573', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1574', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1575', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1576', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1577', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1578', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1579', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1580', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1581', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1582', '20', '549', 'HEROICA VILLA TEZOATLAN DE SEGURA Y LUNA, CUNA DE ', '');

INSERT INTO municipios VALUES  
('1583', '20', '550', 'SAN JERONIMO TLACOCHAHUAYA', '');

INSERT INTO municipios VALUES  
('1584', '20', '551', 'TLACOLULA DE MATAMOROS', '');

INSERT INTO municipios VALUES  
('1585', '20', '552', 'TLACOTEPEC PLUMAS', '');

INSERT INTO municipios VALUES  
('1586', '20', '553', 'TLALIXTAC DE CABRERA', '');

INSERT INTO municipios VALUES  
('1587', '20', '554', 'TOTONTEPEC VILLA DE MORELOS', '');

INSERT INTO municipios VALUES  
('1588', '20', '555', 'TRINIDAD ZAACHILA', '');

INSERT INTO municipios VALUES  
('1589', '20', '556', 'LA TRINIDAD VISTA HERMOSA', '');

INSERT INTO municipios VALUES  
('1590', '20', '557', 'UNION HIDALGO', '');

INSERT INTO municipios VALUES  
('1591', '20', '558', 'VALERIO TRUJANO', '');

INSERT INTO municipios VALUES  
('1592', '20', '559', 'SAN JUAN BAUTISTA VALLE NACIONAL', '');

INSERT INTO municipios VALUES  
('1593', '20', '560', 'VILLA DIAZ ORDAZ', '');

INSERT INTO municipios VALUES  
('1594', '20', '561', 'YAXE', '');

INSERT INTO municipios VALUES  
('1595', '20', '562', 'MAGDALENA YODOCONO DE PORFIRIO DIAZ', '');

INSERT INTO municipios VALUES  
('1596', '20', '563', 'YOGANA', '');

INSERT INTO municipios VALUES  
('1597', '20', '564', 'YUTANDUCHI DE GUERRERO', '');

INSERT INTO municipios VALUES  
('1598', '20', '565', 'VILLA DE ZAACHILA', '');

INSERT INTO municipios VALUES  
('1599', '20', '566', 'SAN MATEO YUCUTINDO', '');

INSERT INTO municipios VALUES  
('1600', '20', '567', 'ZAPOTITLAN LAGUNAS', '');

INSERT INTO municipios VALUES  
('1601', '20', '568', 'ZAPOTITLAN PALMAS', '');

INSERT INTO municipios VALUES  
('1602', '20', '569', 'SANTA INES DE ZARAGOZA', '');

INSERT INTO municipios VALUES  
('1603', '20', '570', 'ZIMATLAN DE ALVAREZ', '');

INSERT INTO municipios VALUES  
('1604', '21', '001', 'ACAJETE', '');

INSERT INTO municipios VALUES  
('1605', '21', '002', 'ACATENO', '');

INSERT INTO municipios VALUES  
('1606', '21', '003', 'ACATLAN', '');

INSERT INTO municipios VALUES  
('1607', '21', '004', 'ACATZINGO', '');

INSERT INTO municipios VALUES  
('1608', '21', '005', 'ACTEOPAN', '');

INSERT INTO municipios VALUES  
('1609', '21', '006', 'AHUACATLAN', '');

INSERT INTO municipios VALUES  
('1610', '21', '007', 'AHUATLAN', '');

INSERT INTO municipios VALUES  
('1611', '21', '008', 'AHUAZOTEPEC', '');

INSERT INTO municipios VALUES  
('1612', '21', '009', 'AHUEHUETITLA', '');

INSERT INTO municipios VALUES  
('1613', '21', '010', 'AJALPAN', '');

INSERT INTO municipios VALUES  
('1614', '21', '011', 'ALBINO ZERTUCHE', '');

INSERT INTO municipios VALUES  
('1615', '21', '012', 'ALJOJUCA', '');

INSERT INTO municipios VALUES  
('1616', '21', '013', 'ALTEPEXI', '');

INSERT INTO municipios VALUES  
('1617', '21', '014', 'AMIXTLAN', '');

INSERT INTO municipios VALUES  
('1618', '21', '015', 'AMOZOC', '');

INSERT INTO municipios VALUES  
('1619', '21', '016', 'AQUIXTLA', '');

INSERT INTO municipios VALUES  
('1620', '21', '017', 'ATEMPAN', '');

INSERT INTO municipios VALUES  
('1621', '21', '018', 'ATEXCAL', '');

INSERT INTO municipios VALUES  
('1622', '21', '019', 'ATLIXCO', '');

INSERT INTO municipios VALUES  
('1623', '21', '020', 'ATOYATEMPAN', '');

INSERT INTO municipios VALUES  
('1624', '21', '021', 'ATZALA', '');

INSERT INTO municipios VALUES  
('1625', '21', '022', 'ATZITZIHUACAN', '');

INSERT INTO municipios VALUES  
('1626', '21', '023', 'ATZITZINTLA', '');

INSERT INTO municipios VALUES  
('1627', '21', '024', 'AXUTLA', '');

INSERT INTO municipios VALUES  
('1628', '21', '025', 'AYOTOXCO DE GUERRERO', '');

INSERT INTO municipios VALUES  
('1629', '21', '026', 'CALPAN', '');

INSERT INTO municipios VALUES  
('1630', '21', '027', 'CALTEPEC', '');

INSERT INTO municipios VALUES  
('1631', '21', '028', 'CAMOCUAUTLA', '');

INSERT INTO municipios VALUES  
('1632', '21', '029', 'CAXHUACAN', '');

INSERT INTO municipios VALUES  
('1633', '21', '030', 'COATEPEC', '');

INSERT INTO municipios VALUES  
('1634', '21', '031', 'COATZINGO', '');

INSERT INTO municipios VALUES  
('1635', '21', '032', 'COHETZALA', '');

INSERT INTO municipios VALUES  
('1636', '21', '033', 'COHUECAN', '');

INSERT INTO municipios VALUES  
('1637', '21', '034', 'CORONANGO', '');

INSERT INTO municipios VALUES  
('1638', '21', '035', 'COXCATLAN', '');

INSERT INTO municipios VALUES  
('1639', '21', '036', 'COYOMEAPAN', '');

INSERT INTO municipios VALUES  
('1640', '21', '037', 'COYOTEPEC', '');

INSERT INTO municipios VALUES  
('1641', '21', '038', 'CUAPIAXTLA DE MADERO', '');

INSERT INTO municipios VALUES  
('1642', '21', '039', 'CUAUTEMPAN', '');

INSERT INTO municipios VALUES  
('1643', '21', '040', 'CUAUTINCHAN', '');

INSERT INTO municipios VALUES  
('1644', '21', '041', 'CUAUTLANCINGO', '');

INSERT INTO municipios VALUES  
('1645', '21', '042', 'CUAYUCA DE ANDRADE', '');

INSERT INTO municipios VALUES  
('1646', '21', '043', 'CUETZALAN DEL PROGRESO', '');

INSERT INTO municipios VALUES  
('1647', '21', '044', 'CUYOACO', '');

INSERT INTO municipios VALUES  
('1648', '21', '045', 'CHALCHICOMULA DE SESMA', '');

INSERT INTO municipios VALUES  
('1649', '21', '046', 'CHAPULCO', '');

INSERT INTO municipios VALUES  
('1650', '21', '047', 'CHIAUTLA', '');

INSERT INTO municipios VALUES  
('1651', '21', '048', 'CHIAUTZINGO', '');

INSERT INTO municipios VALUES  
('1652', '21', '049', 'CHICONCUAUTLA', '');

INSERT INTO municipios VALUES  
('1653', '21', '050', 'CHICHIQUILA', '');

INSERT INTO municipios VALUES  
('1654', '21', '051', 'CHIETLA', '');

INSERT INTO municipios VALUES  
('1655', '21', '052', 'CHIGMECATITLAN', '');

INSERT INTO municipios VALUES  
('1656', '21', '053', 'CHIGNAHUAPAN', '');

INSERT INTO municipios VALUES  
('1657', '21', '054', 'CHIGNAUTLA', '');

INSERT INTO municipios VALUES  
('1658', '21', '055', 'CHILA', '');

INSERT INTO municipios VALUES  
('1659', '21', '056', 'CHILA DE LA SAL', '');

INSERT INTO municipios VALUES  
('1660', '21', '057', 'HONEY', '');

INSERT INTO municipios VALUES  
('1661', '21', '058', 'CHILCHOTLA', '');

INSERT INTO municipios VALUES  
('1662', '21', '059', 'CHINANTLA', '');

INSERT INTO municipios VALUES  
('1663', '21', '060', 'DOMINGO ARENAS', '');

INSERT INTO municipios VALUES  
('1664', '21', '061', 'ELOXOCHITLAN', '');

INSERT INTO municipios VALUES  
('1665', '21', '062', 'EPATLAN', '');

INSERT INTO municipios VALUES  
('1666', '21', '063', 'ESPERANZA', '');

INSERT INTO municipios VALUES  
('1667', '21', '064', 'FRANCISCO Z. MENA', '');

INSERT INTO municipios VALUES  
('1668', '21', '065', 'GENERAL FELIPE ANGELES', '');

INSERT INTO municipios VALUES  
('1669', '21', '066', 'GUADALUPE', '');

INSERT INTO municipios VALUES  
('1670', '21', '067', 'GUADALUPE VICTORIA', '');

INSERT INTO municipios VALUES  
('1671', '21', '068', 'HERMENEGILDO GALEANA', '');

INSERT INTO municipios VALUES  
('1672', '21', '069', 'HUAQUECHULA', '');

INSERT INTO municipios VALUES  
('1673', '21', '070', 'HUATLATLAUCA', '');

INSERT INTO municipios VALUES  
('1674', '21', '071', 'HUAUCHINANGO', '');

INSERT INTO municipios VALUES  
('1675', '21', '072', 'HUEHUETLA', '');

INSERT INTO municipios VALUES  
('1676', '21', '073', 'HUEHUETLAN EL CHICO', '');

INSERT INTO municipios VALUES  
('1677', '21', '074', 'HUEJOTZINGO', '');

INSERT INTO municipios VALUES  
('1678', '21', '075', 'HUEYAPAN', '');

INSERT INTO municipios VALUES  
('1679', '21', '076', 'HUEYTAMALCO', '');

INSERT INTO municipios VALUES  
('1680', '21', '077', 'HUEYTLALPAN', '');

INSERT INTO municipios VALUES  
('1681', '21', '078', 'HUITZILAN DE SERDAN', '');

INSERT INTO municipios VALUES  
('1682', '21', '079', 'HUITZILTEPEC', '');

INSERT INTO municipios VALUES  
('1683', '21', '080', 'ATLEQUIZAYAN', '');

INSERT INTO municipios VALUES  
('1684', '21', '081', 'IXCAMILPA DE GUERRERO', '');

INSERT INTO municipios VALUES  
('1685', '21', '082', 'IXCAQUIXTLA', '');

INSERT INTO municipios VALUES  
('1686', '21', '083', 'IXTACAMAXTITLAN', '');

INSERT INTO municipios VALUES  
('1687', '21', '084', 'IXTEPEC', '');

INSERT INTO municipios VALUES  
('1688', '21', '085', 'IZUCAR DE MATAMOROS', '');

INSERT INTO municipios VALUES  
('1689', '21', '086', 'JALPAN', '');

INSERT INTO municipios VALUES  
('1690', '21', '087', 'JOLALPAN', '');

INSERT INTO municipios VALUES  
('1691', '21', '088', 'JONOTLA', '');

INSERT INTO municipios VALUES  
('1692', '21', '089', 'JOPALA', '');

INSERT INTO municipios VALUES  
('1693', '21', '090', 'JUAN C. BONILLA', '');

INSERT INTO municipios VALUES  
('1694', '21', '091', 'JUAN GALINDO', '');

INSERT INTO municipios VALUES  
('1695', '21', '092', 'JUAN N. MENDEZ', '');

INSERT INTO municipios VALUES  
('1696', '21', '093', 'LAFRAGUA', '');

INSERT INTO municipios VALUES  
('1697', '21', '094', 'LIBRES', '');

INSERT INTO municipios VALUES  
('1698', '21', '095', 'LA MAGDALENA TLATLAUQUITEPEC', '');

INSERT INTO municipios VALUES  
('1699', '21', '096', 'MAZAPILTEPEC DE JUAREZ', '');

INSERT INTO municipios VALUES  
('1700', '21', '097', 'MIXTLA', '');

INSERT INTO municipios VALUES  
('1701', '21', '098', 'MOLCAXAC', '');

INSERT INTO municipios VALUES  
('1702', '21', '099', 'CAÑADA MORELOS', '');

INSERT INTO municipios VALUES  
('1703', '21', '100', 'NAUPAN', '');

INSERT INTO municipios VALUES  
('1704', '21', '101', 'NAUZONTLA', '');

INSERT INTO municipios VALUES  
('1705', '21', '102', 'NEALTICAN', '');

INSERT INTO municipios VALUES  
('1706', '21', '103', 'NICOLAS BRAVO', '');

INSERT INTO municipios VALUES  
('1707', '21', '104', 'NOPALUCAN', '');

INSERT INTO municipios VALUES  
('1708', '21', '105', 'OCOTEPEC', '');

INSERT INTO municipios VALUES  
('1709', '21', '106', 'OCOYUCAN', '');

INSERT INTO municipios VALUES  
('1710', '21', '107', 'OLINTLA', '');

INSERT INTO municipios VALUES  
('1711', '21', '108', 'ORIENTAL', '');

INSERT INTO municipios VALUES  
('1712', '21', '109', 'PAHUATLAN', '');

INSERT INTO municipios VALUES  
('1713', '21', '110', 'PALMAR DE BRAVO', '');

INSERT INTO municipios VALUES  
('1714', '21', '111', 'PANTEPEC', '');

INSERT INTO municipios VALUES  
('1715', '21', '112', 'PETLALCINGO', '');

INSERT INTO municipios VALUES  
('1716', '21', '113', 'PIAXTLA', '');

INSERT INTO municipios VALUES  
('1717', '21', '114', 'PUEBLA', '');

INSERT INTO municipios VALUES  
('1718', '21', '115', 'QUECHOLAC', '');

INSERT INTO municipios VALUES  
('1719', '21', '116', 'QUIMIXTLAN', '');

INSERT INTO municipios VALUES  
('1720', '21', '117', 'RAFAEL LARA GRAJALES', '');

INSERT INTO municipios VALUES  
('1721', '21', '118', 'LOS REYES DE JUAREZ', '');

INSERT INTO municipios VALUES  
('1722', '21', '119', 'SAN ANDRES CHOLULA', '');

INSERT INTO municipios VALUES  
('1723', '21', '120', 'SAN ANTONIO CAÑADA', '');

INSERT INTO municipios VALUES  
('1724', '21', '121', 'SAN DIEGO LA MESA TOCHIMILTZINGO', '');

INSERT INTO municipios VALUES  
('1725', '21', '122', 'SAN FELIPE TEOTLALCINGO', '');

INSERT INTO municipios VALUES  
('1726', '21', '123', 'SAN FELIPE TEPATLAN', '');

INSERT INTO municipios VALUES  
('1727', '21', '124', 'SAN GABRIEL CHILAC', '');

INSERT INTO municipios VALUES  
('1728', '21', '125', 'SAN GREGORIO ATZOMPA', '');

INSERT INTO municipios VALUES  
('1729', '21', '126', 'SAN JERONIMO TECUANIPAN', '');

INSERT INTO municipios VALUES  
('1730', '21', '127', 'SAN JERONIMO XAYACATLAN', '');

INSERT INTO municipios VALUES  
('1731', '21', '128', 'SAN JOSE CHIAPA', '');

INSERT INTO municipios VALUES  
('1732', '21', '129', 'SAN JOSE MIAHUATLAN', '');

INSERT INTO municipios VALUES  
('1733', '21', '130', 'SAN JUAN ATENCO', '');

INSERT INTO municipios VALUES  
('1734', '21', '131', 'SAN JUAN ATZOMPA', '');

INSERT INTO municipios VALUES  
('1735', '21', '132', 'SAN MARTIN TEXMELUCAN', '');

INSERT INTO municipios VALUES  
('1736', '21', '133', 'SAN MARTIN TOTOLTEPEC', '');

INSERT INTO municipios VALUES  
('1737', '21', '134', 'SAN MATIAS TLALANCALECA', '');

INSERT INTO municipios VALUES  
('1738', '21', '135', 'SAN MIGUEL IXITLAN', '');

INSERT INTO municipios VALUES  
('1739', '21', '136', 'SAN MIGUEL XOXTLA', '');

INSERT INTO municipios VALUES  
('1740', '21', '137', 'SAN NICOLAS BUENOS AIRES', '');

INSERT INTO municipios VALUES  
('1741', '21', '138', 'SAN NICOLAS DE LOS RANCHOS', '');

INSERT INTO municipios VALUES  
('1742', '21', '139', 'SAN PABLO ANICANO', '');

INSERT INTO municipios VALUES  
('1743', '21', '140', 'SAN PEDRO CHOLULA', '');

INSERT INTO municipios VALUES  
('1744', '21', '141', 'SAN PEDRO YELOIXTLAHUACA', '');

INSERT INTO municipios VALUES  
('1745', '21', '142', 'SAN SALVADOR EL SECO', '');

INSERT INTO municipios VALUES  
('1746', '21', '143', 'SAN SALVADOR EL VERDE', '');

INSERT INTO municipios VALUES  
('1747', '21', '144', 'SAN SALVADOR HUIXCOLOTLA', '');

INSERT INTO municipios VALUES  
('1748', '21', '145', 'SAN SEBASTIAN TLACOTEPEC', '');

INSERT INTO municipios VALUES  
('1749', '21', '146', 'SANTA CATARINA TLALTEMPAN', '');

INSERT INTO municipios VALUES  
('1750', '21', '147', 'SANTA INES AHUATEMPAN', '');

INSERT INTO municipios VALUES  
('1751', '21', '148', 'SANTA ISABEL CHOLULA', '');

INSERT INTO municipios VALUES  
('1752', '21', '149', 'SANTIAGO MIAHUATLAN', '');

INSERT INTO municipios VALUES  
('1753', '21', '150', 'HUEHUETLAN EL GRANDE', '');

INSERT INTO municipios VALUES  
('1754', '21', '151', 'SANTO TOMAS HUEYOTLIPAN', '');

INSERT INTO municipios VALUES  
('1755', '21', '152', 'SOLTEPEC', '');

INSERT INTO municipios VALUES  
('1756', '21', '153', 'TECALI DE HERRERA', '');

INSERT INTO municipios VALUES  
('1757', '21', '154', 'TECAMACHALCO', '');

INSERT INTO municipios VALUES  
('1758', '21', '155', 'TECOMATLAN', '');

INSERT INTO municipios VALUES  
('1759', '21', '156', 'TEHUACAN', '');

INSERT INTO municipios VALUES  
('1760', '21', '157', 'TEHUITZINGO', '');

INSERT INTO municipios VALUES  
('1761', '21', '158', 'TENAMPULCO', '');

INSERT INTO municipios VALUES  
('1762', '21', '159', 'TEOPANTLAN', '');

INSERT INTO municipios VALUES  
('1763', '21', '160', 'TEOTLALCO', '');

INSERT INTO municipios VALUES  
('1764', '21', '161', 'TEPANCO DE LOPEZ', '');

INSERT INTO municipios VALUES  
('1765', '21', '162', 'TEPANGO DE RODRIGUEZ', '');

INSERT INTO municipios VALUES  
('1766', '21', '163', 'TEPATLAXCO DE HIDALGO', '');

INSERT INTO municipios VALUES  
('1767', '21', '164', 'TEPEACA', '');

INSERT INTO municipios VALUES  
('1768', '21', '165', 'TEPEMAXALCO', '');

INSERT INTO municipios VALUES  
('1769', '21', '166', 'TEPEOJUMA', '');

INSERT INTO municipios VALUES  
('1770', '21', '167', 'TEPETZINTLA', '');

INSERT INTO municipios VALUES  
('1771', '21', '168', 'TEPEXCO', '');

INSERT INTO municipios VALUES  
('1772', '21', '169', 'TEPEXI DE RODRIGUEZ', '');

INSERT INTO municipios VALUES  
('1773', '21', '170', 'TEPEYAHUALCO', '');

INSERT INTO municipios VALUES  
('1774', '21', '171', 'TEPEYAHUALCO DE CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('1775', '21', '172', 'TETELA DE OCAMPO', '');

INSERT INTO municipios VALUES  
('1776', '21', '173', 'TETELES DE AVILA CASTILLO', '');

INSERT INTO municipios VALUES  
('1777', '21', '174', 'TEZIUTLAN', '');

INSERT INTO municipios VALUES  
('1778', '21', '175', 'TIANGUISMANALCO', '');

INSERT INTO municipios VALUES  
('1779', '21', '176', 'TILAPA', '');

INSERT INTO municipios VALUES  
('1780', '21', '177', 'TLACOTEPEC DE BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('1781', '21', '178', 'TLACUILOTEPEC', '');

INSERT INTO municipios VALUES  
('1782', '21', '179', 'TLACHICHUCA', '');

INSERT INTO municipios VALUES  
('1783', '21', '180', 'TLAHUAPAN', '');

INSERT INTO municipios VALUES  
('1784', '21', '181', 'TLALTENANGO', '');

INSERT INTO municipios VALUES  
('1785', '21', '182', 'TLANEPANTLA', '');

INSERT INTO municipios VALUES  
('1786', '21', '183', 'TLAOLA', '');

INSERT INTO municipios VALUES  
('1787', '21', '184', 'TLAPACOYA', '');

INSERT INTO municipios VALUES  
('1788', '21', '185', 'TLAPANALA', '');

INSERT INTO municipios VALUES  
('1789', '21', '186', 'TLATLAUQUITEPEC', '');

INSERT INTO municipios VALUES  
('1790', '21', '187', 'TLAXCO', '');

INSERT INTO municipios VALUES  
('1791', '21', '188', 'TOCHIMILCO', '');

INSERT INTO municipios VALUES  
('1792', '21', '189', 'TOCHTEPEC', '');

INSERT INTO municipios VALUES  
('1793', '21', '190', 'TOTOLTEPEC DE GUERRERO', '');

INSERT INTO municipios VALUES  
('1794', '21', '191', 'TULCINGO', '');

INSERT INTO municipios VALUES  
('1795', '21', '192', 'TUZAMAPAN DE GALEANA', '');

INSERT INTO municipios VALUES  
('1796', '21', '193', 'TZICATLACOYAN', '');

INSERT INTO municipios VALUES  
('1797', '21', '194', 'VENUSTIANO CARRANZA', '');

INSERT INTO municipios VALUES  
('1798', '21', '195', 'VICENTE GUERRERO', '');

INSERT INTO municipios VALUES  
('1799', '21', '196', 'XAYACATLAN DE BRAVO', '');

INSERT INTO municipios VALUES  
('1800', '21', '197', 'XICOTEPEC', '');

INSERT INTO municipios VALUES  
('1801', '21', '198', 'XICOTLAN', '');

INSERT INTO municipios VALUES  
('1802', '21', '199', 'XIUTETELCO', '');

INSERT INTO municipios VALUES  
('1803', '21', '200', 'XOCHIAPULCO', '');

INSERT INTO municipios VALUES  
('1804', '21', '201', 'XOCHILTEPEC', '');

INSERT INTO municipios VALUES  
('1805', '21', '202', 'XOCHITLAN DE VICENTE SUAREZ', '');

INSERT INTO municipios VALUES  
('1806', '21', '203', 'XOCHITLAN TODOS SANTOS', '');

INSERT INTO municipios VALUES  
('1807', '21', '204', 'YAONAHUAC', '');

INSERT INTO municipios VALUES  
('1808', '21', '205', 'YEHUALTEPEC', '');

INSERT INTO municipios VALUES  
('1809', '21', '206', 'ZACAPALA', '');

INSERT INTO municipios VALUES  
('1810', '21', '207', 'ZACAPOAXTLA', '');

INSERT INTO municipios VALUES  
('1811', '21', '208', 'ZACATLAN', '');

INSERT INTO municipios VALUES  
('1812', '21', '209', 'ZAPOTITLAN', '');

INSERT INTO municipios VALUES  
('1813', '21', '210', 'ZAPOTITLAN DE MENDEZ', '');

INSERT INTO municipios VALUES  
('1814', '21', '211', 'ZARAGOZA', '');

INSERT INTO municipios VALUES  
('1815', '21', '212', 'ZAUTLA', '');

INSERT INTO municipios VALUES  
('1816', '21', '213', 'ZIHUATEUTLA', '');

INSERT INTO municipios VALUES  
('1817', '21', '214', 'ZINACATEPEC', '');

INSERT INTO municipios VALUES  
('1818', '21', '215', 'ZONGOZOTLA', '');

INSERT INTO municipios VALUES  
('1819', '21', '216', 'ZOQUIAPAN', '');

INSERT INTO municipios VALUES  
('1820', '21', '217', 'ZOQUITLAN', '');

INSERT INTO municipios VALUES  
('1821', '22', '001', 'AMEALCO DE BONFIL', '');

INSERT INTO municipios VALUES  
('1822', '22', '002', 'PINAL DE AMOLES', '');

INSERT INTO municipios VALUES  
('1823', '22', '003', 'ARROYO SECO', '');

INSERT INTO municipios VALUES  
('1824', '22', '004', 'CADEREYTA DE MONTES', '');

INSERT INTO municipios VALUES  
('1825', '22', '005', 'COLON', '');

INSERT INTO municipios VALUES  
('1826', '22', '006', 'CORREGIDORA', '');

INSERT INTO municipios VALUES  
('1827', '22', '007', 'EZEQUIEL MONTES', '');

INSERT INTO municipios VALUES  
('1828', '22', '008', 'HUIMILPAN', '');

INSERT INTO municipios VALUES  
('1829', '22', '009', 'JALPAN DE SERRA', '');

INSERT INTO municipios VALUES  
('1830', '22', '010', 'LANDA DE MATAMOROS', '');

INSERT INTO municipios VALUES  
('1831', '22', '011', 'EL MARQUES', '');

INSERT INTO municipios VALUES  
('1832', '22', '012', 'PEDRO ESCOBEDO', '');

INSERT INTO municipios VALUES  
('1833', '22', '013', 'PEÑAMILLER', '');

INSERT INTO municipios VALUES  
('1834', '22', '014', 'QUERETARO', '');

INSERT INTO municipios VALUES  
('1835', '22', '015', 'SAN JOAQUIN', '');

INSERT INTO municipios VALUES  
('1836', '22', '016', 'SAN JUAN DEL RIO', '');

INSERT INTO municipios VALUES  
('1837', '22', '017', 'TEQUISQUIAPAN', '');

INSERT INTO municipios VALUES  
('1838', '22', '018', 'TOLIMAN', '');

INSERT INTO municipios VALUES  
('1839', '23', '001', 'COZUMEL', '');

INSERT INTO municipios VALUES  
('1840', '23', '002', 'FELIPE CARRILLO PUERTO', '');

INSERT INTO municipios VALUES  
('1841', '23', '003', 'ISLA MUJERES', '');

INSERT INTO municipios VALUES  
('1842', '23', '004', 'OTHON P. BLANCO', '');

INSERT INTO municipios VALUES  
('1843', '23', '005', 'BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('1844', '23', '006', 'JOSE MARIA MORELOS', '');

INSERT INTO municipios VALUES  
('1845', '23', '007', 'LAZARO CARDENAS', '');

INSERT INTO municipios VALUES  
('1846', '23', '008', 'SOLIDARIDAD', '');

INSERT INTO municipios VALUES  
('1847', '23', '009', 'TULUM', '');

INSERT INTO municipios VALUES  
('1848', '23', '010', 'BACALAR', '');

INSERT INTO municipios VALUES  
('1849', '24', '001', 'AHUALULCO', '');

INSERT INTO municipios VALUES  
('1850', '24', '002', 'ALAQUINES', '');

INSERT INTO municipios VALUES  
('1851', '24', '003', 'AQUISMON', '');

INSERT INTO municipios VALUES  
('1852', '24', '004', 'ARMADILLO DE LOS INFANTE', '');

INSERT INTO municipios VALUES  
('1853', '24', '005', 'CARDENAS', '');

INSERT INTO municipios VALUES  
('1854', '24', '006', 'CATORCE', '');

INSERT INTO municipios VALUES  
('1855', '24', '007', 'CEDRAL', '');

INSERT INTO municipios VALUES  
('1856', '24', '008', 'CERRITOS', '');

INSERT INTO municipios VALUES  
('1857', '24', '009', 'CERRO DE SAN PEDRO', '');

INSERT INTO municipios VALUES  
('1858', '24', '010', 'CIUDAD DEL MAIZ', '');

INSERT INTO municipios VALUES  
('1859', '24', '011', 'CIUDAD FERNANDEZ', '');

INSERT INTO municipios VALUES  
('1860', '24', '012', 'TANCANHUITZ', '');

INSERT INTO municipios VALUES  
('1861', '24', '013', 'CIUDAD VALLES', '');

INSERT INTO municipios VALUES  
('1862', '24', '014', 'COXCATLAN', '');

INSERT INTO municipios VALUES  
('1863', '24', '015', 'CHARCAS', '');

INSERT INTO municipios VALUES  
('1864', '24', '016', 'EBANO', '');

INSERT INTO municipios VALUES  
('1865', '24', '017', 'GUADALCAZAR', '');

INSERT INTO municipios VALUES  
('1866', '24', '018', 'HUEHUETLAN', '');

INSERT INTO municipios VALUES  
('1867', '24', '019', 'LAGUNILLAS', '');

INSERT INTO municipios VALUES  
('1868', '24', '020', 'MATEHUALA', '');

INSERT INTO municipios VALUES  
('1869', '24', '021', 'MEXQUITIC DE CARMONA', '');

INSERT INTO municipios VALUES  
('1870', '24', '022', 'MOCTEZUMA', '');

INSERT INTO municipios VALUES  
('1871', '24', '023', 'RAYON', '');

INSERT INTO municipios VALUES  
('1872', '24', '024', 'RIOVERDE', '');

INSERT INTO municipios VALUES  
('1873', '24', '025', 'SALINAS', '');

INSERT INTO municipios VALUES  
('1874', '24', '026', 'SAN ANTONIO', '');

INSERT INTO municipios VALUES  
('1875', '24', '027', 'SAN CIRO DE ACOSTA', '');

INSERT INTO municipios VALUES  
('1876', '24', '028', 'SAN LUIS POTOSI', '');

INSERT INTO municipios VALUES  
('1877', '24', '029', 'SAN MARTIN CHALCHICUAUTLA', '');

INSERT INTO municipios VALUES  
('1878', '24', '030', 'SAN NICOLAS TOLENTINO', '');

INSERT INTO municipios VALUES  
('1879', '24', '031', 'SANTA CATARINA', '');

INSERT INTO municipios VALUES  
('1880', '24', '032', 'SANTA MARIA DEL RIO', '');

INSERT INTO municipios VALUES  
('1881', '24', '033', 'SANTO DOMINGO', '');

INSERT INTO municipios VALUES  
('1882', '24', '034', 'SAN VICENTE TANCUAYALAB', '');

INSERT INTO municipios VALUES  
('1883', '24', '035', 'SOLEDAD DE GRACIANO SANCHEZ', '');

INSERT INTO municipios VALUES  
('1884', '24', '036', 'TAMASOPO', '');

INSERT INTO municipios VALUES  
('1885', '24', '037', 'TAMAZUNCHALE', '');

INSERT INTO municipios VALUES  
('1886', '24', '038', 'TAMPACAN', '');

INSERT INTO municipios VALUES  
('1887', '24', '039', 'TAMPAMOLON CORONA', '');

INSERT INTO municipios VALUES  
('1888', '24', '040', 'TAMUIN', '');

INSERT INTO municipios VALUES  
('1889', '24', '041', 'TANLAJAS', '');

INSERT INTO municipios VALUES  
('1890', '24', '042', 'TANQUIAN DE ESCOBEDO', '');

INSERT INTO municipios VALUES  
('1891', '24', '043', 'TIERRA NUEVA', '');

INSERT INTO municipios VALUES  
('1892', '24', '044', 'VANEGAS', '');

INSERT INTO municipios VALUES  
('1893', '24', '045', 'VENADO', '');

INSERT INTO municipios VALUES  
('1894', '24', '046', 'VILLA DE ARRIAGA', '');

INSERT INTO municipios VALUES  
('1895', '24', '047', 'VILLA DE GUADALUPE', '');

INSERT INTO municipios VALUES  
('1896', '24', '048', 'VILLA DE LA PAZ', '');

INSERT INTO municipios VALUES  
('1897', '24', '049', 'VILLA DE RAMOS', '');

INSERT INTO municipios VALUES  
('1898', '24', '050', 'VILLA DE REYES', '');

INSERT INTO municipios VALUES  
('1899', '24', '051', 'VILLA HIDALGO', '');

INSERT INTO municipios VALUES  
('1900', '24', '052', 'VILLA JUAREZ', '');

INSERT INTO municipios VALUES  
('1901', '24', '053', 'AXTLA DE TERRAZAS', '');

INSERT INTO municipios VALUES  
('1902', '24', '054', 'XILITLA', '');

INSERT INTO municipios VALUES  
('1903', '24', '055', 'ZARAGOZA', '');

INSERT INTO municipios VALUES  
('1904', '24', '056', 'VILLA DE ARISTA', '');

INSERT INTO municipios VALUES  
('1905', '24', '057', 'MATLAPA', '');

INSERT INTO municipios VALUES  
('1906', '24', '058', 'EL NARANJO', '');

INSERT INTO municipios VALUES  
('1907', '25', '001', 'AHOME', '');

INSERT INTO municipios VALUES  
('1908', '25', '002', 'ANGOSTURA', '');

INSERT INTO municipios VALUES  
('1909', '25', '003', 'BADIRAGUATO', '');

INSERT INTO municipios VALUES  
('1910', '25', '004', 'CONCORDIA', '');

INSERT INTO municipios VALUES  
('1911', '25', '005', 'COSALA', '');

INSERT INTO municipios VALUES  
('1912', '25', '006', 'CULIACAN', '');

INSERT INTO municipios VALUES  
('1913', '25', '007', 'CHOIX', '');

INSERT INTO municipios VALUES  
('1914', '25', '008', 'ELOTA', '');

INSERT INTO municipios VALUES  
('1915', '25', '009', 'ESCUINAPA', '');

INSERT INTO municipios VALUES  
('1916', '25', '010', 'EL FUERTE', '');

INSERT INTO municipios VALUES  
('1917', '25', '011', 'GUASAVE', '');

INSERT INTO municipios VALUES  
('1918', '25', '012', 'MAZATLAN', '');

INSERT INTO municipios VALUES  
('1919', '25', '013', 'MOCORITO', '');

INSERT INTO municipios VALUES  
('1920', '25', '014', 'ROSARIO', '');

INSERT INTO municipios VALUES  
('1921', '25', '015', 'SALVADOR ALVARADO', '');

INSERT INTO municipios VALUES  
('1922', '25', '016', 'SAN IGNACIO', '');

INSERT INTO municipios VALUES  
('1923', '25', '017', 'SINALOA', '');

INSERT INTO municipios VALUES  
('1924', '25', '018', 'NAVOLATO', '');

INSERT INTO municipios VALUES  
('1925', '26', '001', 'ACONCHI', '');

INSERT INTO municipios VALUES  
('1926', '26', '002', 'AGUA PRIETA', '');

INSERT INTO municipios VALUES  
('1927', '26', '003', 'ALAMOS', '');

INSERT INTO municipios VALUES  
('1928', '26', '004', 'ALTAR', '');

INSERT INTO municipios VALUES  
('1929', '26', '005', 'ARIVECHI', '');

INSERT INTO municipios VALUES  
('1930', '26', '006', 'ARIZPE', '');

INSERT INTO municipios VALUES  
('1931', '26', '007', 'ATIL', '');

INSERT INTO municipios VALUES  
('1932', '26', '008', 'BACADEHUACHI', '');

INSERT INTO municipios VALUES  
('1933', '26', '009', 'BACANORA', '');

INSERT INTO municipios VALUES  
('1934', '26', '010', 'BACERAC', '');

INSERT INTO municipios VALUES  
('1935', '26', '011', 'BACOACHI', '');

INSERT INTO municipios VALUES  
('1936', '26', '012', 'BACUM', '');

INSERT INTO municipios VALUES  
('1937', '26', '013', 'BANAMICHI', '');

INSERT INTO municipios VALUES  
('1938', '26', '014', 'BAVIACORA', '');

INSERT INTO municipios VALUES  
('1939', '26', '015', 'BAVISPE', '');

INSERT INTO municipios VALUES  
('1940', '26', '016', 'BENJAMIN HILL', '');

INSERT INTO municipios VALUES  
('1941', '26', '017', 'CABORCA', '');

INSERT INTO municipios VALUES  
('1942', '26', '018', 'CAJEME', '');

INSERT INTO municipios VALUES  
('1943', '26', '019', 'CANANEA', '');

INSERT INTO municipios VALUES  
('1944', '26', '020', 'CARBO', '');

INSERT INTO municipios VALUES  
('1945', '26', '021', 'LA COLORADA', '');

INSERT INTO municipios VALUES  
('1946', '26', '022', 'CUCURPE', '');

INSERT INTO municipios VALUES  
('1947', '26', '023', 'CUMPAS', '');

INSERT INTO municipios VALUES  
('1948', '26', '024', 'DIVISADEROS', '');

INSERT INTO municipios VALUES  
('1949', '26', '025', 'EMPALME', '');

INSERT INTO municipios VALUES  
('1950', '26', '026', 'ETCHOJOA', '');

INSERT INTO municipios VALUES  
('1951', '26', '027', 'FRONTERAS', '');

INSERT INTO municipios VALUES  
('1952', '26', '028', 'GRANADOS', '');

INSERT INTO municipios VALUES  
('1953', '26', '029', 'GUAYMAS', '');

INSERT INTO municipios VALUES  
('1954', '26', '030', 'HERMOSILLO', '');

INSERT INTO municipios VALUES  
('1955', '26', '031', 'HUACHINERA', '');

INSERT INTO municipios VALUES  
('1956', '26', '032', 'HUASABAS', '');

INSERT INTO municipios VALUES  
('1957', '26', '033', 'HUATABAMPO', '');

INSERT INTO municipios VALUES  
('1958', '26', '034', 'HUEPAC', '');

INSERT INTO municipios VALUES  
('1959', '26', '035', 'IMURIS', '');

INSERT INTO municipios VALUES  
('1960', '26', '036', 'MAGDALENA', '');

INSERT INTO municipios VALUES  
('1961', '26', '037', 'MAZATAN', '');

INSERT INTO municipios VALUES  
('1962', '26', '038', 'MOCTEZUMA', '');

INSERT INTO municipios VALUES  
('1963', '26', '039', 'NACO', '');

INSERT INTO municipios VALUES  
('1964', '26', '040', 'NACORI CHICO', '');

INSERT INTO municipios VALUES  
('1965', '26', '041', 'NACOZARI DE GARCIA', '');

INSERT INTO municipios VALUES  
('1966', '26', '042', 'NAVOJOA', '');

INSERT INTO municipios VALUES  
('1967', '26', '043', 'NOGALES', '');

INSERT INTO municipios VALUES  
('1968', '26', '044', 'ONAVAS', '');

INSERT INTO municipios VALUES  
('1969', '26', '045', 'OPODEPE', '');

INSERT INTO municipios VALUES  
('1970', '26', '046', 'OQUITOA', '');

INSERT INTO municipios VALUES  
('1971', '26', '047', 'PITIQUITO', '');

INSERT INTO municipios VALUES  
('1972', '26', '048', 'PUERTO PEÑASCO', '');

INSERT INTO municipios VALUES  
('1973', '26', '049', 'QUIRIEGO', '');

INSERT INTO municipios VALUES  
('1974', '26', '050', 'RAYON', '');

INSERT INTO municipios VALUES  
('1975', '26', '051', 'ROSARIO', '');

INSERT INTO municipios VALUES  
('1976', '26', '052', 'SAHUARIPA', '');

INSERT INTO municipios VALUES  
('1977', '26', '053', 'SAN FELIPE DE JESUS', '');

INSERT INTO municipios VALUES  
('1978', '26', '054', 'SAN JAVIER', '');

INSERT INTO municipios VALUES  
('1979', '26', '055', 'SAN LUIS RIO COLORADO', '');

INSERT INTO municipios VALUES  
('1980', '26', '056', 'SAN MIGUEL DE HORCASITAS', '');

INSERT INTO municipios VALUES  
('1981', '26', '057', 'SAN PEDRO DE LA CUEVA', '');

INSERT INTO municipios VALUES  
('1982', '26', '058', 'SANTA ANA', '');

INSERT INTO municipios VALUES  
('1983', '26', '059', 'SANTA CRUZ', '');

INSERT INTO municipios VALUES  
('1984', '26', '060', 'SARIC', '');

INSERT INTO municipios VALUES  
('1985', '26', '061', 'SOYOPA', '');

INSERT INTO municipios VALUES  
('1986', '26', '062', 'SUAQUI GRANDE', '');

INSERT INTO municipios VALUES  
('1987', '26', '063', 'TEPACHE', '');

INSERT INTO municipios VALUES  
('1988', '26', '064', 'TRINCHERAS', '');

INSERT INTO municipios VALUES  
('1989', '26', '065', 'TUBUTAMA', '');

INSERT INTO municipios VALUES  
('1990', '26', '066', 'URES', '');

INSERT INTO municipios VALUES  
('1991', '26', '067', 'VILLA HIDALGO', '');

INSERT INTO municipios VALUES  
('1992', '26', '068', 'VILLA PESQUEIRA', '');

INSERT INTO municipios VALUES  
('1993', '26', '069', 'YECORA', '');

INSERT INTO municipios VALUES  
('1994', '26', '070', 'GENERAL PLUTARCO ELIAS CALLES', '');

INSERT INTO municipios VALUES  
('1995', '26', '071', 'BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('1996', '26', '072', 'SAN IGNACIO RIO MUERTO', '');

INSERT INTO municipios VALUES  
('1997', '27', '001', 'BALANCAN', '');

INSERT INTO municipios VALUES  
('1998', '27', '002', 'CARDENAS', '');

INSERT INTO municipios VALUES  
('1999', '27', '003', 'CENTLA', '');

INSERT INTO municipios VALUES  
('2000', '27', '004', 'CENTRO', '');

INSERT INTO municipios VALUES  
('2001', '27', '005', 'COMALCALCO', '');

INSERT INTO municipios VALUES  
('2002', '27', '006', 'CUNDUACAN', '');

INSERT INTO municipios VALUES  
('2003', '27', '007', 'EMILIANO ZAPATA', '');

INSERT INTO municipios VALUES  
('2004', '27', '008', 'HUIMANGUILLO', '');

INSERT INTO municipios VALUES  
('2005', '27', '009', 'JALAPA', '');

INSERT INTO municipios VALUES  
('2006', '27', '010', 'JALPA DE MENDEZ', '');

INSERT INTO municipios VALUES  
('2007', '27', '011', 'JONUTA', '');

INSERT INTO municipios VALUES  
('2008', '27', '012', 'MACUSPANA', '');

INSERT INTO municipios VALUES  
('2009', '27', '013', 'NACAJUCA', '');

INSERT INTO municipios VALUES  
('2010', '27', '014', 'PARAISO', '');

INSERT INTO municipios VALUES  
('2011', '27', '015', 'TACOTALPA', '');

INSERT INTO municipios VALUES  
('2012', '27', '016', 'TEAPA', '');

INSERT INTO municipios VALUES  
('2013', '27', '017', 'TENOSIQUE', '');

INSERT INTO municipios VALUES  
('2014', '28', '001', 'ABASOLO', '');

INSERT INTO municipios VALUES  
('2015', '28', '002', 'ALDAMA', '');

INSERT INTO municipios VALUES  
('2016', '28', '003', 'ALTAMIRA', '');

INSERT INTO municipios VALUES  
('2017', '28', '004', 'ANTIGUO MORELOS', '');

INSERT INTO municipios VALUES  
('2018', '28', '005', 'BURGOS', '');

INSERT INTO municipios VALUES  
('2019', '28', '006', 'BUSTAMANTE', '');

INSERT INTO municipios VALUES  
('2020', '28', '007', 'CAMARGO', '');

INSERT INTO municipios VALUES  
('2021', '28', '008', 'CASAS', '');

INSERT INTO municipios VALUES  
('2022', '28', '009', 'CIUDAD MADERO', '');

INSERT INTO municipios VALUES  
('2023', '28', '010', 'CRUILLAS', '');

INSERT INTO municipios VALUES  
('2024', '28', '011', 'GOMEZ FARIAS', '');

INSERT INTO municipios VALUES  
('2025', '28', '012', 'GONZALEZ', '');

INSERT INTO municipios VALUES  
('2026', '28', '013', 'GÜEMEZ', '');

INSERT INTO municipios VALUES  
('2027', '28', '014', 'GUERRERO', '');

INSERT INTO municipios VALUES  
('2028', '28', '015', 'GUSTAVO DIAZ ORDAZ', '');

INSERT INTO municipios VALUES  
('2029', '28', '016', 'HIDALGO', '');

INSERT INTO municipios VALUES  
('2030', '28', '017', 'JAUMAVE', '');

INSERT INTO municipios VALUES  
('2031', '28', '018', 'JIMENEZ', '');

INSERT INTO municipios VALUES  
('2032', '28', '019', 'LLERA', '');

INSERT INTO municipios VALUES  
('2033', '28', '020', 'MAINERO', '');

INSERT INTO municipios VALUES  
('2034', '28', '021', 'EL MANTE', '');

INSERT INTO municipios VALUES  
('2035', '28', '022', 'MATAMOROS', '');

INSERT INTO municipios VALUES  
('2036', '28', '023', 'MENDEZ', '');

INSERT INTO municipios VALUES  
('2037', '28', '024', 'MIER', '');

INSERT INTO municipios VALUES  
('2038', '28', '025', 'MIGUEL ALEMAN', '');

INSERT INTO municipios VALUES  
('2039', '28', '026', 'MIQUIHUANA', '');

INSERT INTO municipios VALUES  
('2040', '28', '027', 'NUEVO LAREDO', '');

INSERT INTO municipios VALUES  
('2041', '28', '028', 'NUEVO MORELOS', '');

INSERT INTO municipios VALUES  
('2042', '28', '029', 'OCAMPO', '');

INSERT INTO municipios VALUES  
('2043', '28', '030', 'PADILLA', '');

INSERT INTO municipios VALUES  
('2044', '28', '031', 'PALMILLAS', '');

INSERT INTO municipios VALUES  
('2045', '28', '032', 'REYNOSA', '');

INSERT INTO municipios VALUES  
('2046', '28', '033', 'RIO BRAVO', '');

INSERT INTO municipios VALUES  
('2047', '28', '034', 'SAN CARLOS', '');

INSERT INTO municipios VALUES  
('2048', '28', '035', 'SAN FERNANDO', '');

INSERT INTO municipios VALUES  
('2049', '28', '036', 'SAN NICOLAS', '');

INSERT INTO municipios VALUES  
('2050', '28', '037', 'SOTO LA MARINA', '');

INSERT INTO municipios VALUES  
('2051', '28', '038', 'TAMPICO', '');

INSERT INTO municipios VALUES  
('2052', '28', '039', 'TULA', '');

INSERT INTO municipios VALUES  
('2053', '28', '040', 'VALLE HERMOSO', '');

INSERT INTO municipios VALUES  
('2054', '28', '041', 'VICTORIA', '');

INSERT INTO municipios VALUES  
('2055', '28', '042', 'VILLAGRAN', '');

INSERT INTO municipios VALUES  
('2056', '28', '043', 'XICOTENCATL', '');

INSERT INTO municipios VALUES  
('2057', '29', '001', 'AMAXAC DE GUERRERO', '');

INSERT INTO municipios VALUES  
('2058', '29', '002', 'APETATITLAN DE ANTONIO CARVAJAL', '');

INSERT INTO municipios VALUES  
('2059', '29', '003', 'ATLANGATEPEC', '');

INSERT INTO municipios VALUES  
('2060', '29', '004', 'ATLTZAYANCA', '');

INSERT INTO municipios VALUES  
('2061', '29', '005', 'APIZACO', '');

INSERT INTO municipios VALUES  
('2062', '29', '006', 'CALPULALPAN', '');

INSERT INTO municipios VALUES  
('2063', '29', '007', 'EL CARMEN TEQUEXQUITLA', '');

INSERT INTO municipios VALUES  
('2064', '29', '008', 'CUAPIAXTLA', '');

INSERT INTO municipios VALUES  
('2065', '29', '009', 'CUAXOMULCO', '');

INSERT INTO municipios VALUES  
('2066', '29', '010', 'CHIAUTEMPAN', '');

INSERT INTO municipios VALUES  
('2067', '29', '011', 'MUÑOZ DE DOMINGO ARENAS', '');

INSERT INTO municipios VALUES  
('2068', '29', '012', 'ESPAÑITA', '');

INSERT INTO municipios VALUES  
('2069', '29', '013', 'HUAMANTLA', '');

INSERT INTO municipios VALUES  
('2070', '29', '014', 'HUEYOTLIPAN', '');

INSERT INTO municipios VALUES  
('2071', '29', '015', 'IXTACUIXTLA DE MARIANO MATAMOROS', '');

INSERT INTO municipios VALUES  
('2072', '29', '016', 'IXTENCO', '');

INSERT INTO municipios VALUES  
('2073', '29', '017', 'MAZATECOCHCO DE JOSE MARIA MORELOS', '');

INSERT INTO municipios VALUES  
('2074', '29', '018', 'CONTLA DE JUAN CUAMATZI', '');

INSERT INTO municipios VALUES  
('2075', '29', '019', 'TEPETITLA DE LARDIZABAL', '');

INSERT INTO municipios VALUES  
('2076', '29', '020', 'SANCTORUM DE LAZARO CARDENAS', '');

INSERT INTO municipios VALUES  
('2077', '29', '021', 'NANACAMILPA DE MARIANO ARISTA', '');

INSERT INTO municipios VALUES  
('2078', '29', '022', 'ACUAMANALA DE MIGUEL HIDALGO', '');

INSERT INTO municipios VALUES  
('2079', '29', '023', 'NATIVITAS', '');

INSERT INTO municipios VALUES  
('2080', '29', '024', 'PANOTLA', '');

INSERT INTO municipios VALUES  
('2081', '29', '025', 'SAN PABLO DEL MONTE', '');

INSERT INTO municipios VALUES  
('2082', '29', '026', 'SANTA CRUZ TLAXCALA', '');

INSERT INTO municipios VALUES  
('2083', '29', '027', 'TENANCINGO', '');

INSERT INTO municipios VALUES  
('2084', '29', '028', 'TEOLOCHOLCO', '');

INSERT INTO municipios VALUES  
('2085', '29', '029', 'TEPEYANCO', '');

INSERT INTO municipios VALUES  
('2086', '29', '030', 'TERRENATE', '');

INSERT INTO municipios VALUES  
('2087', '29', '031', 'TETLA DE LA SOLIDARIDAD', '');

INSERT INTO municipios VALUES  
('2088', '29', '032', 'TETLATLAHUCA', '');

INSERT INTO municipios VALUES  
('2089', '29', '033', 'TLAXCALA', '');

INSERT INTO municipios VALUES  
('2090', '29', '034', 'TLAXCO', '');

INSERT INTO municipios VALUES  
('2091', '29', '035', 'TOCATLAN', '');

INSERT INTO municipios VALUES  
('2092', '29', '036', 'TOTOLAC', '');

INSERT INTO municipios VALUES  
('2093', '29', '037', 'ZILTLALTEPEC DE TRINIDAD SANCHEZ SANTOS', '');

INSERT INTO municipios VALUES  
('2094', '29', '038', 'TZOMPANTEPEC', '');

INSERT INTO municipios VALUES  
('2095', '29', '039', 'XALOZTOC', '');

INSERT INTO municipios VALUES  
('2096', '29', '040', 'XALTOCAN', '');

INSERT INTO municipios VALUES  
('2097', '29', '041', 'PAPALOTLA DE XICOHTENCATL', '');

INSERT INTO municipios VALUES  
('2098', '29', '042', 'XICOHTZINCO', '');

INSERT INTO municipios VALUES  
('2099', '29', '043', 'YAUHQUEMEHCAN', '');

INSERT INTO municipios VALUES  
('2100', '29', '044', 'ZACATELCO', '');

INSERT INTO municipios VALUES  
('2101', '29', '045', 'BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('2102', '29', '046', 'EMILIANO ZAPATA', '');

INSERT INTO municipios VALUES  
('2103', '29', '047', 'LAZARO CARDENAS', '');

INSERT INTO municipios VALUES  
('2104', '29', '048', 'LA MAGDALENA TLALTELULCO', '');

INSERT INTO municipios VALUES  
('2105', '29', '049', 'SAN DAMIAN TEXOLOC', '');

INSERT INTO municipios VALUES  
('2106', '29', '050', 'SAN FRANCISCO TETLANOHCAN', '');

INSERT INTO municipios VALUES  
('2107', '29', '051', 'SAN JERONIMO ZACUALPAN', '');

INSERT INTO municipios VALUES  
('2108', '29', '052', 'SAN JOSE TEACALCO', '');

INSERT INTO municipios VALUES  
('2109', '29', '053', 'SAN JUAN HUACTZINCO', '');

INSERT INTO municipios VALUES  
('2110', '29', '054', 'SAN LORENZO AXOCOMANITLA', '');

INSERT INTO municipios VALUES  
('2111', '29', '055', 'SAN LUCAS TECOPILCO', '');

INSERT INTO municipios VALUES  
('2112', '29', '056', 'SANTA ANA NOPALUCAN', '');

INSERT INTO municipios VALUES  
('2113', '29', '057', 'SANTA APOLONIA TEACALCO', '');

INSERT INTO municipios VALUES  
('2114', '29', '058', 'SANTA CATARINA AYOMETLA', '');

INSERT INTO municipios VALUES  
('2115', '29', '059', 'SANTA CRUZ QUILEHTLA', '');

INSERT INTO municipios VALUES  
('2116', '29', '060', 'SANTA ISABEL XILOXOXTLA', '');

INSERT INTO municipios VALUES  
('2117', '30', '001', 'ACAJETE', '');

INSERT INTO municipios VALUES  
('2118', '30', '002', 'ACATLAN', '');

INSERT INTO municipios VALUES  
('2119', '30', '003', 'ACAYUCAN', '');

INSERT INTO municipios VALUES  
('2120', '30', '004', 'ACTOPAN', '');

INSERT INTO municipios VALUES  
('2121', '30', '005', 'ACULA', '');

INSERT INTO municipios VALUES  
('2122', '30', '006', 'ACULTZINGO', '');

INSERT INTO municipios VALUES  
('2123', '30', '007', 'CAMARON DE TEJEDA', '');

INSERT INTO municipios VALUES  
('2124', '30', '008', 'ALPATLAHUAC', '');

INSERT INTO municipios VALUES  
('2125', '30', '009', 'ALTO LUCERO DE GUTIERREZ BARRIOS', '');

INSERT INTO municipios VALUES  
('2126', '30', '010', 'ALTOTONGA', '');

INSERT INTO municipios VALUES  
('2127', '30', '011', 'ALVARADO', '');

INSERT INTO municipios VALUES  
('2128', '30', '012', 'AMATITLAN', '');

INSERT INTO municipios VALUES  
('2129', '30', '013', 'NARANJOS AMATLAN', '');

INSERT INTO municipios VALUES  
('2130', '30', '014', 'AMATLAN DE LOS REYES', '');

INSERT INTO municipios VALUES  
('2131', '30', '015', 'ANGEL R. CABADA', '');

INSERT INTO municipios VALUES  
('2132', '30', '016', 'LA ANTIGUA', '');

INSERT INTO municipios VALUES  
('2133', '30', '017', 'APAZAPAN', '');

INSERT INTO municipios VALUES  
('2134', '30', '018', 'AQUILA', '');

INSERT INTO municipios VALUES  
('2135', '30', '019', 'ASTACINGA', '');

INSERT INTO municipios VALUES  
('2136', '30', '020', 'ATLAHUILCO', '');

INSERT INTO municipios VALUES  
('2137', '30', '021', 'ATOYAC', '');

INSERT INTO municipios VALUES  
('2138', '30', '022', 'ATZACAN', '');

INSERT INTO municipios VALUES  
('2139', '30', '023', 'ATZALAN', '');

INSERT INTO municipios VALUES  
('2140', '30', '024', 'TLALTETELA', '');

INSERT INTO municipios VALUES  
('2141', '30', '025', 'AYAHUALULCO', '');

INSERT INTO municipios VALUES  
('2142', '30', '026', 'BANDERILLA', '');

INSERT INTO municipios VALUES  
('2143', '30', '027', 'BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('2144', '30', '028', 'BOCA DEL RIO', '');

INSERT INTO municipios VALUES  
('2145', '30', '029', 'CALCAHUALCO', '');

INSERT INTO municipios VALUES  
('2146', '30', '030', 'CAMERINO Z. MENDOZA', '');

INSERT INTO municipios VALUES  
('2147', '30', '031', 'CARRILLO PUERTO', '');

INSERT INTO municipios VALUES  
('2148', '30', '032', 'CATEMACO', '');

INSERT INTO municipios VALUES  
('2149', '30', '033', 'CAZONES DE HERRERA', '');

INSERT INTO municipios VALUES  
('2150', '30', '034', 'CERRO AZUL', '');

INSERT INTO municipios VALUES  
('2151', '30', '035', 'CITLALTEPETL', '');

INSERT INTO municipios VALUES  
('2152', '30', '036', 'COACOATZINTLA', '');

INSERT INTO municipios VALUES  
('2153', '30', '037', 'COAHUITLAN', '');

INSERT INTO municipios VALUES  
('2154', '30', '038', 'COATEPEC', '');

INSERT INTO municipios VALUES  
('2155', '30', '039', 'COATZACOALCOS', '');

INSERT INTO municipios VALUES  
('2156', '30', '040', 'COATZINTLA', '');

INSERT INTO municipios VALUES  
('2157', '30', '041', 'COETZALA', '');

INSERT INTO municipios VALUES  
('2158', '30', '042', 'COLIPA', '');

INSERT INTO municipios VALUES  
('2159', '30', '043', 'COMAPA', '');

INSERT INTO municipios VALUES  
('2160', '30', '044', 'CORDOBA', '');

INSERT INTO municipios VALUES  
('2161', '30', '045', 'COSAMALOAPAN DE CARPIO', '');

INSERT INTO municipios VALUES  
('2162', '30', '046', 'COSAUTLAN DE CARVAJAL', '');

INSERT INTO municipios VALUES  
('2163', '30', '047', 'COSCOMATEPEC', '');

INSERT INTO municipios VALUES  
('2164', '30', '048', 'COSOLEACAQUE', '');

INSERT INTO municipios VALUES  
('2165', '30', '049', 'COTAXTLA', '');

INSERT INTO municipios VALUES  
('2166', '30', '050', 'COXQUIHUI', '');

INSERT INTO municipios VALUES  
('2167', '30', '051', 'COYUTLA', '');

INSERT INTO municipios VALUES  
('2168', '30', '052', 'CUICHAPA', '');

INSERT INTO municipios VALUES  
('2169', '30', '053', 'CUITLAHUAC', '');

INSERT INTO municipios VALUES  
('2170', '30', '054', 'CHACALTIANGUIS', '');

INSERT INTO municipios VALUES  
('2171', '30', '055', 'CHALMA', '');

INSERT INTO municipios VALUES  
('2172', '30', '056', 'CHICONAMEL', '');

INSERT INTO municipios VALUES  
('2173', '30', '057', 'CHICONQUIACO', '');

INSERT INTO municipios VALUES  
('2174', '30', '058', 'CHICONTEPEC', '');

INSERT INTO municipios VALUES  
('2175', '30', '059', 'CHINAMECA', '');

INSERT INTO municipios VALUES  
('2176', '30', '060', 'CHINAMPA DE GOROSTIZA', '');

INSERT INTO municipios VALUES  
('2177', '30', '061', 'LAS CHOAPAS', '');

INSERT INTO municipios VALUES  
('2178', '30', '062', 'CHOCAMAN', '');

INSERT INTO municipios VALUES  
('2179', '30', '063', 'CHONTLA', '');

INSERT INTO municipios VALUES  
('2180', '30', '064', 'CHUMATLAN', '');

INSERT INTO municipios VALUES  
('2181', '30', '065', 'EMILIANO ZAPATA', '');

INSERT INTO municipios VALUES  
('2182', '30', '066', 'ESPINAL', '');

INSERT INTO municipios VALUES  
('2183', '30', '067', 'FILOMENO MATA', '');

INSERT INTO municipios VALUES  
('2184', '30', '068', 'FORTIN', '');

INSERT INTO municipios VALUES  
('2185', '30', '069', 'GUTIERREZ ZAMORA', '');

INSERT INTO municipios VALUES  
('2186', '30', '070', 'HIDALGOTITLAN', '');

INSERT INTO municipios VALUES  
('2187', '30', '071', 'HUATUSCO', '');

INSERT INTO municipios VALUES  
('2188', '30', '072', 'HUAYACOCOTLA', '');

INSERT INTO municipios VALUES  
('2189', '30', '073', 'HUEYAPAN DE OCAMPO', '');

INSERT INTO municipios VALUES  
('2190', '30', '074', 'HUILOAPAN DE CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('2191', '30', '075', 'IGNACIO DE LA LLAVE', '');

INSERT INTO municipios VALUES  
('2192', '30', '076', 'ILAMATLAN', '');

INSERT INTO municipios VALUES  
('2193', '30', '077', 'ISLA', '');

INSERT INTO municipios VALUES  
('2194', '30', '078', 'IXCATEPEC', '');

INSERT INTO municipios VALUES  
('2195', '30', '079', 'IXHUACAN DE LOS REYES', '');

INSERT INTO municipios VALUES  
('2196', '30', '080', 'IXHUATLAN DEL CAFE', '');

INSERT INTO municipios VALUES  
('2197', '30', '081', 'IXHUATLANCILLO', '');

INSERT INTO municipios VALUES  
('2198', '30', '082', 'IXHUATLAN DEL SURESTE', '');

INSERT INTO municipios VALUES  
('2199', '30', '083', 'IXHUATLAN DE MADERO', '');

INSERT INTO municipios VALUES  
('2200', '30', '084', 'IXMATLAHUACAN', '');

INSERT INTO municipios VALUES  
('2201', '30', '085', 'IXTACZOQUITLAN', '');

INSERT INTO municipios VALUES  
('2202', '30', '086', 'JALACINGO', '');

INSERT INTO municipios VALUES  
('2203', '30', '087', 'XALAPA', '');

INSERT INTO municipios VALUES  
('2204', '30', '088', 'JALCOMULCO', '');

INSERT INTO municipios VALUES  
('2205', '30', '089', 'JALTIPAN', '');

INSERT INTO municipios VALUES  
('2206', '30', '090', 'JAMAPA', '');

INSERT INTO municipios VALUES  
('2207', '30', '091', 'JESUS CARRANZA', '');

INSERT INTO municipios VALUES  
('2208', '30', '092', 'XICO', '');

INSERT INTO municipios VALUES  
('2209', '30', '093', 'JILOTEPEC', '');

INSERT INTO municipios VALUES  
('2210', '30', '094', 'JUAN RODRIGUEZ CLARA', '');

INSERT INTO municipios VALUES  
('2211', '30', '095', 'JUCHIQUE DE FERRER', '');

INSERT INTO municipios VALUES  
('2212', '30', '096', 'LANDERO Y COSS', '');

INSERT INTO municipios VALUES  
('2213', '30', '097', 'LERDO DE TEJADA', '');

INSERT INTO municipios VALUES  
('2214', '30', '098', 'MAGDALENA', '');

INSERT INTO municipios VALUES  
('2215', '30', '099', 'MALTRATA', '');

INSERT INTO municipios VALUES  
('2216', '30', '100', 'MANLIO FABIO ALTAMIRANO', '');

INSERT INTO municipios VALUES  
('2217', '30', '101', 'MARIANO ESCOBEDO', '');

INSERT INTO municipios VALUES  
('2218', '30', '102', 'MARTINEZ DE LA TORRE', '');

INSERT INTO municipios VALUES  
('2219', '30', '103', 'MECATLAN', '');

INSERT INTO municipios VALUES  
('2220', '30', '104', 'MECAYAPAN', '');

INSERT INTO municipios VALUES  
('2221', '30', '105', 'MEDELLIN', '');

INSERT INTO municipios VALUES  
('2222', '30', '106', 'MIAHUATLAN', '');

INSERT INTO municipios VALUES  
('2223', '30', '107', 'LAS MINAS', '');

INSERT INTO municipios VALUES  
('2224', '30', '108', 'MINATITLAN', '');

INSERT INTO municipios VALUES  
('2225', '30', '109', 'MISANTLA', '');

INSERT INTO municipios VALUES  
('2226', '30', '110', 'MIXTLA DE ALTAMIRANO', '');

INSERT INTO municipios VALUES  
('2227', '30', '111', 'MOLOACAN', '');

INSERT INTO municipios VALUES  
('2228', '30', '112', 'NAOLINCO', '');

INSERT INTO municipios VALUES  
('2229', '30', '113', 'NARANJAL', '');

INSERT INTO municipios VALUES  
('2230', '30', '114', 'NAUTLA', '');

INSERT INTO municipios VALUES  
('2231', '30', '115', 'NOGALES', '');

INSERT INTO municipios VALUES  
('2232', '30', '116', 'OLUTA', '');

INSERT INTO municipios VALUES  
('2233', '30', '117', 'OMEALCA', '');

INSERT INTO municipios VALUES  
('2234', '30', '118', 'ORIZABA', '');

INSERT INTO municipios VALUES  
('2235', '30', '119', 'OTATITLAN', '');

INSERT INTO municipios VALUES  
('2236', '30', '120', 'OTEAPAN', '');

INSERT INTO municipios VALUES  
('2237', '30', '121', 'OZULUAMA DE MASCAREÑAS', '');

INSERT INTO municipios VALUES  
('2238', '30', '122', 'PAJAPAN', '');

INSERT INTO municipios VALUES  
('2239', '30', '123', 'PANUCO', '');

INSERT INTO municipios VALUES  
('2240', '30', '124', 'PAPANTLA', '');

INSERT INTO municipios VALUES  
('2241', '30', '125', 'PASO DEL MACHO', '');

INSERT INTO municipios VALUES  
('2242', '30', '126', 'PASO DE OVEJAS', '');

INSERT INTO municipios VALUES  
('2243', '30', '127', 'LA PERLA', '');

INSERT INTO municipios VALUES  
('2244', '30', '128', 'PEROTE', '');

INSERT INTO municipios VALUES  
('2245', '30', '129', 'PLATON SANCHEZ', '');

INSERT INTO municipios VALUES  
('2246', '30', '130', 'PLAYA VICENTE', '');

INSERT INTO municipios VALUES  
('2247', '30', '131', 'POZA RICA DE HIDALGO', '');

INSERT INTO municipios VALUES  
('2248', '30', '132', 'LAS VIGAS DE RAMIREZ', '');

INSERT INTO municipios VALUES  
('2249', '30', '133', 'PUEBLO VIEJO', '');

INSERT INTO municipios VALUES  
('2250', '30', '134', 'PUENTE NACIONAL', '');

INSERT INTO municipios VALUES  
('2251', '30', '135', 'RAFAEL DELGADO', '');

INSERT INTO municipios VALUES  
('2252', '30', '136', 'RAFAEL LUCIO', '');

INSERT INTO municipios VALUES  
('2253', '30', '137', 'LOS REYES', '');

INSERT INTO municipios VALUES  
('2254', '30', '138', 'RIO BLANCO', '');

INSERT INTO municipios VALUES  
('2255', '30', '139', 'SALTABARRANCA', '');

INSERT INTO municipios VALUES  
('2256', '30', '140', 'SAN ANDRES TENEJAPAN', '');

INSERT INTO municipios VALUES  
('2257', '30', '141', 'SAN ANDRES TUXTLA', '');

INSERT INTO municipios VALUES  
('2258', '30', '142', 'SAN JUAN EVANGELISTA', '');

INSERT INTO municipios VALUES  
('2259', '30', '143', 'SANTIAGO TUXTLA', '');

INSERT INTO municipios VALUES  
('2260', '30', '144', 'SAYULA DE ALEMAN', '');

INSERT INTO municipios VALUES  
('2261', '30', '145', 'SOCONUSCO', '');

INSERT INTO municipios VALUES  
('2262', '30', '146', 'SOCHIAPA', '');

INSERT INTO municipios VALUES  
('2263', '30', '147', 'SOLEDAD ATZOMPA', '');

INSERT INTO municipios VALUES  
('2264', '30', '148', 'SOLEDAD DE DOBLADO', '');

INSERT INTO municipios VALUES  
('2265', '30', '149', 'SOTEAPAN', '');

INSERT INTO municipios VALUES  
('2266', '30', '150', 'TAMALIN', '');

INSERT INTO municipios VALUES  
('2267', '30', '151', 'TAMIAHUA', '');

INSERT INTO municipios VALUES  
('2268', '30', '152', 'TAMPICO ALTO', '');

INSERT INTO municipios VALUES  
('2269', '30', '153', 'TANCOCO', '');

INSERT INTO municipios VALUES  
('2270', '30', '154', 'TANTIMA', '');

INSERT INTO municipios VALUES  
('2271', '30', '155', 'TANTOYUCA', '');

INSERT INTO municipios VALUES  
('2272', '30', '156', 'TATATILA', '');

INSERT INTO municipios VALUES  
('2273', '30', '157', 'CASTILLO DE TEAYO', '');

INSERT INTO municipios VALUES  
('2274', '30', '158', 'TECOLUTLA', '');

INSERT INTO municipios VALUES  
('2275', '30', '159', 'TEHUIPANGO', '');

INSERT INTO municipios VALUES  
('2276', '30', '160', 'ALAMO TEMAPACHE', '');

INSERT INTO municipios VALUES  
('2277', '30', '161', 'TEMPOAL', '');

INSERT INTO municipios VALUES  
('2278', '30', '162', 'TENAMPA', '');

INSERT INTO municipios VALUES  
('2279', '30', '163', 'TENOCHTITLAN', '');

INSERT INTO municipios VALUES  
('2280', '30', '164', 'TEOCELO', '');

INSERT INTO municipios VALUES  
('2281', '30', '165', 'TEPATLAXCO', '');

INSERT INTO municipios VALUES  
('2282', '30', '166', 'TEPETLAN', '');

INSERT INTO municipios VALUES  
('2283', '30', '167', 'TEPETZINTLA', '');

INSERT INTO municipios VALUES  
('2284', '30', '168', 'TEQUILA', '');

INSERT INTO municipios VALUES  
('2285', '30', '169', 'JOSE AZUETA', '');

INSERT INTO municipios VALUES  
('2286', '30', '170', 'TEXCATEPEC', '');

INSERT INTO municipios VALUES  
('2287', '30', '171', 'TEXHUACAN', '');

INSERT INTO municipios VALUES  
('2288', '30', '172', 'TEXISTEPEC', '');

INSERT INTO municipios VALUES  
('2289', '30', '173', 'TEZONAPA', '');

INSERT INTO municipios VALUES  
('2290', '30', '174', 'TIERRA BLANCA', '');

INSERT INTO municipios VALUES  
('2291', '30', '175', 'TIHUATLAN', '');

INSERT INTO municipios VALUES  
('2292', '30', '176', 'TLACOJALPAN', '');

INSERT INTO municipios VALUES  
('2293', '30', '177', 'TLACOLULAN', '');

INSERT INTO municipios VALUES  
('2294', '30', '178', 'TLACOTALPAN', '');

INSERT INTO municipios VALUES  
('2295', '30', '179', 'TLACOTEPEC DE MEJIA', '');

INSERT INTO municipios VALUES  
('2296', '30', '180', 'TLACHICHILCO', '');

INSERT INTO municipios VALUES  
('2297', '30', '181', 'TLALIXCOYAN', '');

INSERT INTO municipios VALUES  
('2298', '30', '182', 'TLALNELHUAYOCAN', '');

INSERT INTO municipios VALUES  
('2299', '30', '183', 'TLAPACOYAN', '');

INSERT INTO municipios VALUES  
('2300', '30', '184', 'TLAQUILPA', '');

INSERT INTO municipios VALUES  
('2301', '30', '185', 'TLILAPAN', '');

INSERT INTO municipios VALUES  
('2302', '30', '186', 'TOMATLAN', '');

INSERT INTO municipios VALUES  
('2303', '30', '187', 'TONAYAN', '');

INSERT INTO municipios VALUES  
('2304', '30', '188', 'TOTUTLA', '');

INSERT INTO municipios VALUES  
('2305', '30', '189', 'TUXPAN', '');

INSERT INTO municipios VALUES  
('2306', '30', '190', 'TUXTILLA', '');

INSERT INTO municipios VALUES  
('2307', '30', '191', 'URSULO GALVAN', '');

INSERT INTO municipios VALUES  
('2308', '30', '192', 'VEGA DE ALATORRE', '');

INSERT INTO municipios VALUES  
('2309', '30', '193', 'VERACRUZ', '');

INSERT INTO municipios VALUES  
('2310', '30', '194', 'VILLA ALDAMA', '');

INSERT INTO municipios VALUES  
('2311', '30', '195', 'XOXOCOTLA', '');

INSERT INTO municipios VALUES  
('2312', '30', '196', 'YANGA', '');

INSERT INTO municipios VALUES  
('2313', '30', '197', 'YECUATLA', '');

INSERT INTO municipios VALUES  
('2314', '30', '198', 'ZACUALPAN', '');

INSERT INTO municipios VALUES  
('2315', '30', '199', 'ZARAGOZA', '');

INSERT INTO municipios VALUES  
('2316', '30', '200', 'ZENTLA', '');

INSERT INTO municipios VALUES  
('2317', '30', '201', 'ZONGOLICA', '');

INSERT INTO municipios VALUES  
('2318', '30', '202', 'ZONTECOMATLAN DE LOPEZ Y FUENTES', '');

INSERT INTO municipios VALUES  
('2319', '30', '203', 'ZOZOCOLCO DE HIDALGO', '');

INSERT INTO municipios VALUES  
('2320', '30', '204', 'AGUA DULCE', '');

INSERT INTO municipios VALUES  
('2321', '30', '205', 'EL HIGO', '');

INSERT INTO municipios VALUES  
('2322', '30', '206', 'NANCHITAL DE LAZARO CARDENAS DEL RIO', '');

INSERT INTO municipios VALUES  
('2323', '30', '207', 'TRES VALLES', '');

INSERT INTO municipios VALUES  
('2324', '30', '208', 'CARLOS A. CARRILLO', '');

INSERT INTO municipios VALUES  
('2325', '30', '209', 'TATAHUICAPAN DE JUAREZ', '');

INSERT INTO municipios VALUES  
('2326', '30', '210', 'UXPANAPA', '');

INSERT INTO municipios VALUES  
('2327', '30', '211', 'SAN RAFAEL', '');

INSERT INTO municipios VALUES  
('2328', '30', '212', 'SANTIAGO SOCHIAPAN', '');

INSERT INTO municipios VALUES  
('2329', '31', '001', 'ABALA', '');

INSERT INTO municipios VALUES  
('2330', '31', '002', 'ACANCEH', '');

INSERT INTO municipios VALUES  
('2331', '31', '003', 'AKIL', '');

INSERT INTO municipios VALUES  
('2332', '31', '004', 'BACA', '');

INSERT INTO municipios VALUES  
('2333', '31', '005', 'BOKOBA', '');

INSERT INTO municipios VALUES  
('2334', '31', '006', 'BUCTZOTZ', '');

INSERT INTO municipios VALUES  
('2335', '31', '007', 'CACALCHEN', '');

INSERT INTO municipios VALUES  
('2336', '31', '008', 'CALOTMUL', '');

INSERT INTO municipios VALUES  
('2337', '31', '009', 'CANSAHCAB', '');

INSERT INTO municipios VALUES  
('2338', '31', '010', 'CANTAMAYEC', '');

INSERT INTO municipios VALUES  
('2339', '31', '011', 'CELESTUN', '');

INSERT INTO municipios VALUES  
('2340', '31', '012', 'CENOTILLO', '');

INSERT INTO municipios VALUES  
('2341', '31', '013', 'CONKAL', '');

INSERT INTO municipios VALUES  
('2342', '31', '014', 'CUNCUNUL', '');

INSERT INTO municipios VALUES  
('2343', '31', '015', 'CUZAMA', '');

INSERT INTO municipios VALUES  
('2344', '31', '016', 'CHACSINKIN', '');

INSERT INTO municipios VALUES  
('2345', '31', '017', 'CHANKOM', '');

INSERT INTO municipios VALUES  
('2346', '31', '018', 'CHAPAB', '');

INSERT INTO municipios VALUES  
('2347', '31', '019', 'CHEMAX', '');

INSERT INTO municipios VALUES  
('2348', '31', '020', 'CHICXULUB PUEBLO', '');

INSERT INTO municipios VALUES  
('2349', '31', '021', 'CHICHIMILA', '');

INSERT INTO municipios VALUES  
('2350', '31', '022', 'CHIKINDZONOT', '');

INSERT INTO municipios VALUES  
('2351', '31', '023', 'CHOCHOLA', '');

INSERT INTO municipios VALUES  
('2352', '31', '024', 'CHUMAYEL', '');

INSERT INTO municipios VALUES  
('2353', '31', '025', 'DZAN', '');

INSERT INTO municipios VALUES  
('2354', '31', '026', 'DZEMUL', '');

INSERT INTO municipios VALUES  
('2355', '31', '027', 'DZIDZANTUN', '');

INSERT INTO municipios VALUES  
('2356', '31', '028', 'DZILAM DE BRAVO', '');

INSERT INTO municipios VALUES  
('2357', '31', '029', 'DZILAM GONZALEZ', '');

INSERT INTO municipios VALUES  
('2358', '31', '030', 'DZITAS', '');

INSERT INTO municipios VALUES  
('2359', '31', '031', 'DZONCAUICH', '');

INSERT INTO municipios VALUES  
('2360', '31', '032', 'ESPITA', '');

INSERT INTO municipios VALUES  
('2361', '31', '033', 'HALACHO', '');

INSERT INTO municipios VALUES  
('2362', '31', '034', 'HOCABA', '');

INSERT INTO municipios VALUES  
('2363', '31', '035', 'HOCTUN', '');

INSERT INTO municipios VALUES  
('2364', '31', '036', 'HOMUN', '');

INSERT INTO municipios VALUES  
('2365', '31', '037', 'HUHI', '');

INSERT INTO municipios VALUES  
('2366', '31', '038', 'HUNUCMA', '');

INSERT INTO municipios VALUES  
('2367', '31', '039', 'IXIL', '');

INSERT INTO municipios VALUES  
('2368', '31', '040', 'IZAMAL', '');

INSERT INTO municipios VALUES  
('2369', '31', '041', 'KANASIN', '');

INSERT INTO municipios VALUES  
('2370', '31', '042', 'KANTUNIL', '');

INSERT INTO municipios VALUES  
('2371', '31', '043', 'KAUA', '');

INSERT INTO municipios VALUES  
('2372', '31', '044', 'KINCHIL', '');

INSERT INTO municipios VALUES  
('2373', '31', '045', 'KOPOMA', '');

INSERT INTO municipios VALUES  
('2374', '31', '046', 'MAMA', '');

INSERT INTO municipios VALUES  
('2375', '31', '047', 'MANI', '');

INSERT INTO municipios VALUES  
('2376', '31', '048', 'MAXCANU', '');

INSERT INTO municipios VALUES  
('2377', '31', '049', 'MAYAPAN', '');

INSERT INTO municipios VALUES  
('2378', '31', '050', 'MERIDA', '');

INSERT INTO municipios VALUES  
('2379', '31', '051', 'MOCOCHA', '');

INSERT INTO municipios VALUES  
('2380', '31', '052', 'MOTUL', '');

INSERT INTO municipios VALUES  
('2381', '31', '053', 'MUNA', '');

INSERT INTO municipios VALUES  
('2382', '31', '054', 'MUXUPIP', '');

INSERT INTO municipios VALUES  
('2383', '31', '055', 'OPICHEN', '');

INSERT INTO municipios VALUES  
('2384', '31', '056', 'OXKUTZCAB', '');

INSERT INTO municipios VALUES  
('2385', '31', '057', 'PANABA', '');

INSERT INTO municipios VALUES  
('2386', '31', '058', 'PETO', '');

INSERT INTO municipios VALUES  
('2387', '31', '059', 'PROGRESO', '');

INSERT INTO municipios VALUES  
('2388', '31', '060', 'QUINTANA ROO', '');

INSERT INTO municipios VALUES  
('2389', '31', '061', 'RIO LAGARTOS', '');

INSERT INTO municipios VALUES  
('2390', '31', '062', 'SACALUM', '');

INSERT INTO municipios VALUES  
('2391', '31', '063', 'SAMAHIL', '');

INSERT INTO municipios VALUES  
('2392', '31', '064', 'SANAHCAT', '');

INSERT INTO municipios VALUES  
('2393', '31', '065', 'SAN FELIPE', '');

INSERT INTO municipios VALUES  
('2394', '31', '066', 'SANTA ELENA', '');

INSERT INTO municipios VALUES  
('2395', '31', '067', 'SEYE', '');

INSERT INTO municipios VALUES  
('2396', '31', '068', 'SINANCHE', '');

INSERT INTO municipios VALUES  
('2397', '31', '069', 'SOTUTA', '');

INSERT INTO municipios VALUES  
('2398', '31', '070', 'SUCILA', '');

INSERT INTO municipios VALUES  
('2399', '31', '071', 'SUDZAL', '');

INSERT INTO municipios VALUES  
('2400', '31', '072', 'SUMA', '');

INSERT INTO municipios VALUES  
('2401', '31', '073', 'TAHDZIU', '');

INSERT INTO municipios VALUES  
('2402', '31', '074', 'TAHMEK', '');

INSERT INTO municipios VALUES  
('2403', '31', '075', 'TEABO', '');

INSERT INTO municipios VALUES  
('2404', '31', '076', 'TECOH', '');

INSERT INTO municipios VALUES  
('2405', '31', '077', 'TEKAL DE VENEGAS', '');

INSERT INTO municipios VALUES  
('2406', '31', '078', 'TEKANTO', '');

INSERT INTO municipios VALUES  
('2407', '31', '079', 'TEKAX', '');

INSERT INTO municipios VALUES  
('2408', '31', '080', 'TEKIT', '');

INSERT INTO municipios VALUES  
('2409', '31', '081', 'TEKOM', '');

INSERT INTO municipios VALUES  
('2410', '31', '082', 'TELCHAC PUEBLO', '');

INSERT INTO municipios VALUES  
('2411', '31', '083', 'TELCHAC PUERTO', '');

INSERT INTO municipios VALUES  
('2412', '31', '084', 'TEMAX', '');

INSERT INTO municipios VALUES  
('2413', '31', '085', 'TEMOZON', '');

INSERT INTO municipios VALUES  
('2414', '31', '086', 'TEPAKAN', '');

INSERT INTO municipios VALUES  
('2415', '31', '087', 'TETIZ', '');

INSERT INTO municipios VALUES  
('2416', '31', '088', 'TEYA', '');

INSERT INTO municipios VALUES  
('2417', '31', '089', 'TICUL', '');

INSERT INTO municipios VALUES  
('2418', '31', '090', 'TIMUCUY', '');

INSERT INTO municipios VALUES  
('2419', '31', '091', 'TINUM', '');

INSERT INTO municipios VALUES  
('2420', '31', '092', 'TIXCACALCUPUL', '');

INSERT INTO municipios VALUES  
('2421', '31', '093', 'TIXKOKOB', '');

INSERT INTO municipios VALUES  
('2422', '31', '094', 'TIXMEHUAC', '');

INSERT INTO municipios VALUES  
('2423', '31', '095', 'TIXPEHUAL', '');

INSERT INTO municipios VALUES  
('2424', '31', '096', 'TIZIMIN', '');

INSERT INTO municipios VALUES  
('2425', '31', '097', 'TUNKAS', '');

INSERT INTO municipios VALUES  
('2426', '31', '098', 'TZUCACAB', '');

INSERT INTO municipios VALUES  
('2427', '31', '099', 'UAYMA', '');

INSERT INTO municipios VALUES  
('2428', '31', '100', 'UCU', '');

INSERT INTO municipios VALUES  
('2429', '31', '101', 'UMAN', '');

INSERT INTO municipios VALUES  
('2430', '31', '102', 'VALLADOLID', '');

INSERT INTO municipios VALUES  
('2431', '31', '103', 'XOCCHEL', '');

INSERT INTO municipios VALUES  
('2432', '31', '104', 'YAXCABA', '');

INSERT INTO municipios VALUES  
('2433', '31', '105', 'YAXKUKUL', '');

INSERT INTO municipios VALUES  
('2434', '31', '106', 'YOBAIN', '');

INSERT INTO municipios VALUES  
('2435', '32', '001', 'APOZOL', '');

INSERT INTO municipios VALUES  
('2436', '32', '002', 'APULCO', '');

INSERT INTO municipios VALUES  
('2437', '32', '003', 'ATOLINGA', '');

INSERT INTO municipios VALUES  
('2438', '32', '004', 'BENITO JUAREZ', '');

INSERT INTO municipios VALUES  
('2439', '32', '005', 'CALERA', '');

INSERT INTO municipios VALUES  
('2440', '32', '006', 'CAÑITAS DE FELIPE PESCADOR', '');

INSERT INTO municipios VALUES  
('2441', '32', '007', 'CONCEPCION DEL ORO', '');

INSERT INTO municipios VALUES  
('2442', '32', '008', 'CUAUHTEMOC', '');

INSERT INTO municipios VALUES  
('2443', '32', '009', 'CHALCHIHUITES', '');

INSERT INTO municipios VALUES  
('2444', '32', '010', 'FRESNILLO', '');

INSERT INTO municipios VALUES  
('2445', '32', '011', 'TRINIDAD GARCIA DE LA CADENA', '');

INSERT INTO municipios VALUES  
('2446', '32', '012', 'GENARO CODINA', '');

INSERT INTO municipios VALUES  
('2447', '32', '013', 'GENERAL ENRIQUE ESTRADA', '');

INSERT INTO municipios VALUES  
('2448', '32', '014', 'GENERAL FRANCISCO R. MURGUIA', '');

INSERT INTO municipios VALUES  
('2449', '32', '015', 'EL PLATEADO DE JOAQUIN AMARO', '');

INSERT INTO municipios VALUES  
('2450', '32', '016', 'GENERAL PANFILO NATERA', '');

INSERT INTO municipios VALUES  
('2451', '32', '017', 'GUADALUPE', '');

INSERT INTO municipios VALUES  
('2452', '32', '018', 'HUANUSCO', '');

INSERT INTO municipios VALUES  
('2453', '32', '019', 'JALPA', '');

INSERT INTO municipios VALUES  
('2454', '32', '020', 'JEREZ', '');

INSERT INTO municipios VALUES  
('2455', '32', '021', 'JIMENEZ DEL TEUL', '');

INSERT INTO municipios VALUES  
('2456', '32', '022', 'JUAN ALDAMA', '');

INSERT INTO municipios VALUES  
('2457', '32', '023', 'JUCHIPILA', '');

INSERT INTO municipios VALUES  
('2458', '32', '024', 'LORETO', '');

INSERT INTO municipios VALUES  
('2459', '32', '025', 'LUIS MOYA', '');

INSERT INTO municipios VALUES  
('2460', '32', '026', 'MAZAPIL', '');

INSERT INTO municipios VALUES  
('2461', '32', '027', 'MELCHOR OCAMPO', '');

INSERT INTO municipios VALUES  
('2462', '32', '028', 'MEZQUITAL DEL ORO', '');

INSERT INTO municipios VALUES  
('2463', '32', '029', 'MIGUEL AUZA', '');

INSERT INTO municipios VALUES  
('2464', '32', '030', 'MOMAX', '');

INSERT INTO municipios VALUES  
('2465', '32', '031', 'MONTE ESCOBEDO', '');

INSERT INTO municipios VALUES  
('2466', '32', '032', 'MORELOS', '');

INSERT INTO municipios VALUES  
('2467', '32', '033', 'MOYAHUA DE ESTRADA', '');

INSERT INTO municipios VALUES  
('2468', '32', '034', 'NOCHISTLAN DE MEJIA', '');

INSERT INTO municipios VALUES  
('2469', '32', '035', 'NORIA DE ANGELES', '');

INSERT INTO municipios VALUES  
('2470', '32', '036', 'OJOCALIENTE', '');

INSERT INTO municipios VALUES  
('2471', '32', '037', 'PANUCO', '');

INSERT INTO municipios VALUES  
('2472', '32', '038', 'PINOS', '');

INSERT INTO municipios VALUES  
('2473', '32', '039', 'RIO GRANDE', '');

INSERT INTO municipios VALUES  
('2474', '32', '040', 'SAIN ALTO', '');

INSERT INTO municipios VALUES  
('2475', '32', '041', 'EL SALVADOR', '');

INSERT INTO municipios VALUES  
('2476', '32', '042', 'SOMBRERETE', '');

INSERT INTO municipios VALUES  
('2477', '32', '043', 'SUSTICACAN', '');

INSERT INTO municipios VALUES  
('2478', '32', '044', 'TABASCO', '');

INSERT INTO municipios VALUES  
('2479', '32', '045', 'TEPECHITLAN', '');

INSERT INTO municipios VALUES  
('2480', '32', '046', 'TEPETONGO', '');

INSERT INTO municipios VALUES  
('2481', '32', '047', 'TEUL DE GONZALEZ ORTEGA', '');

INSERT INTO municipios VALUES  
('2482', '32', '048', 'TLALTENANGO DE SANCHEZ ROMAN', '');

INSERT INTO municipios VALUES  
('2483', '32', '049', 'VALPARAISO', '');

INSERT INTO municipios VALUES  
('2484', '32', '050', 'VETAGRANDE', '');

INSERT INTO municipios VALUES  
('2485', '32', '051', 'VILLA DE COS', '');

INSERT INTO municipios VALUES  
('2486', '32', '052', 'VILLA GARCIA', '');

INSERT INTO municipios VALUES  
('2487', '32', '053', 'VILLA GONZALEZ ORTEGA', '');

INSERT INTO municipios VALUES  
('2488', '32', '054', 'VILLA HIDALGO', '');

INSERT INTO municipios VALUES  
('2489', '32', '055', 'VILLANUEVA', '');

INSERT INTO municipios VALUES  
('2490', '32', '056', 'ZACATECAS', '');

INSERT INTO municipios VALUES  
('2491', '32', '057', 'TRANCOSO', '');

INSERT INTO municipios VALUES  
('2492', '32', '058', 'SANTA MARIA DE LA PAZ', '');

CREATE TABLE pedidos(
IDPEDIDO INTEGER PRIMARY KEY,
IDUSUARIO INTEGER,
IDCOMERCIO INTEGER,
IMPORTE_PEDIDO float,
IMPORTE_LETRAS varchar(254),
PAGA_CON float,
CAMBIO_ESTIMADO float,
ESTATUS varchar(50),
IDDIRECCION_USR INTEGER);

INSERT INTO pedidos VALUES  
('1', '6', '3', '18', 'dieciocho', '18', '0', 'SOLICITADO', '3');

INSERT INTO pedidos VALUES  
('46', '21', '3', '66,99', 'SESENTA Y SEIS PESOS CON NOVENTA Y NUEVE  CENTAVOS', '70', '3,01', 'FINALIZADO', '27');

INSERT INTO pedidos VALUES  
('51', '21', '3', '0', '', '0', '0', 'FINALIZADO', '27');

INSERT INTO pedidos VALUES  
('52', '21', '3', '296,5', 'DOSCIENTOS NOVENTA Y SEIS PESOS CON CINCUENTA  CENTAVOS', '300', '3,5', 'CONFIRMADO', '27');

INSERT INTO pedidos VALUES  
('53', '21', '4', '560', 'QUINIENTOS SESENTA PESOS', '600', '40', 'CONFIRMADO', '27');

INSERT INTO pedidos VALUES  
('56', '21', '3', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('57', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('58', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('59', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('60', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('61', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('62', '21', '3', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('63', '21', '3', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('64', '21', '3', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('65', '21', '3', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('66', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('67', '25', '3', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('68', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('69', '25', '4', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('70', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('71', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('72', '25', '3', '267,97', 'DOSCIENTOS SESENTA Y SIETE PESOS CON NOVENTA Y SIETE  CENTAVOS', '300', '32,03', 'SOLICITADO', '32');

INSERT INTO pedidos VALUES  
('73', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('74', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('75', '21', '3', '373,5', 'TRESCIENTOS SETENTA Y TRES PESOS CON CINCUENTA  CENTAVOS', '1000', '626,5', 'SOLICITADO', '27');

INSERT INTO pedidos VALUES  
('76', '25', '3', '225,5', 'DOSCIENTOS VENTI CINCO PESOS CON CINCUENTA  CENTAVOS', '250', '24,5', 'SOLICITADO', '32');

INSERT INTO pedidos VALUES  
('77', '25', '3', '241', 'DOSCIENTOS CUARENTA Y UN PESOS', '300', '59', 'SOLICITADO', '32');

INSERT INTO pedidos VALUES  
('78', '23', '3', '8,99', 'OCHO PESOS CON NOVENTA Y NUEVE  CENTAVOS', '9', '0,01', 'SOLICITADO', '31');

INSERT INTO pedidos VALUES  
('79', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('80', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('81', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('82', '21', '3', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('83', '21', '3', '156,5', 'CIENTO CINCUENTA Y SEIS PESOS CON CINCUENTA  CENTAVOS', '160', '3,5', 'SOLICITADO', '28');

INSERT INTO pedidos VALUES  
('84', '21', '3', '60', 'SESENTA PESOS', '100', '40', 'SOLICITADO', '27');

INSERT INTO pedidos VALUES  
('85', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('86', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('87', '23', '3', '0', '', '0', '0', 'CANCELADO', '0');

INSERT INTO pedidos VALUES  
('88', '23', '3', '0', '', '0', '0', 'ABIERTO', '31');

INSERT INTO pedidos VALUES  
('89', '25', '3', '144,95', 'CIENTO CUARENTA Y CUATRO PESOS CON NOVENTA Y CINCO  CENTAVOS', '200', '55,05', 'SOLICITADO', '32');

INSERT INTO pedidos VALUES  
('90', '21', '3', '0', '', '0', '0', 'ABIERTO', '27');

INSERT INTO pedidos VALUES  
('91', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('92', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('93', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('94', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('95', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('96', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('97', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('98', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('99', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('100', '0', '0', '0', '', '0', '0', '', '0');

INSERT INTO pedidos VALUES  
('101', '25', '3', '0', '', '0', '0', 'ABIERTO', '32');

INSERT INTO pedidos VALUES  
('102', '6', '3', '201,5', 'DOSCIENTOS UN PESOS CON CINCUENTA  CENTAVOS', '250', '48,5', 'SOLICITADO', '18');

CREATE TABLE pedidos_enviados(
id_pedidoenviado INTEGER PRIMARY KEY,
idpedido INTEGER,
idrepartidor INTEGER,
comentarios varchar(254),
ESTATUS_ENVIO varchar(250));

INSERT INTO pedidos_enviados VALUES  
('1', '52', '1', 'modificar prueba uno', 'ENTREGADO');

CREATE TABLE productos(
IDPRODUCTO INTEGER PRIMARY KEY,
IDCOMERCIO INTEGER,
IDCATEGORIA INTEGER,
DESCRIPCION varchar(254),
PRECIO float);

INSERT INTO productos VALUES  
('1', '3', '3', 'TACOS AL PASTOR CON TORTILLA DE MAIZ', '8,99');

INSERT INTO productos VALUES  
('2', '3', '3', 'TACOS AL PASTOR CON TORTILLA DE HARINA', '10,5');

INSERT INTO productos VALUES  
('3', '3', '1', 'PANUCHOS CON CARNE DE POLLO', '10');

INSERT INTO productos VALUES  
('4', '4', '1', 'SALBUTES CON CARNE DE POLLO', '10');

INSERT INTO productos VALUES  
('5', '4', '3', 'NACHOS CON CARNE DE PASTOR', '70');

INSERT INTO productos VALUES  
('6', '12', '3', 'Tortas especiales', '12');

INSERT INTO productos VALUES  
('7', '3', '3', 'pizza', '120,5');

INSERT INTO productos VALUES  
('8', '3', '3', 'tacos', '12');

INSERT INTO productos VALUES  
('9', '3', '3', 'pizza', '120,5');

CREATE TABLE repartidores(
idrepartidor INTEGER PRIMARY KEY,
nombre varchar(254),
CORREO_REPARTIDOR varchar(254),
CONTRASENIA_REPARTIDOR varchar(254),
IDCOMERCIO INTEGER);

INSERT INTO repartidores VALUES  
('1', 'sergio tec', 'repartidor1@gmail.com', '1', '3');

CREATE TABLE usuarios(
IDUSUARIO INTEGER PRIMARY KEY,
APELLIDO_P varchar(20),
APELLIDO_M varchar(25),
NOMBRES varchar(25),
CORREO varchar(25),
CONTRASENIA varchar(25),
TELEFONO varchar(25));

INSERT INTO usuarios VALUES  
('3', 'uno', 'uno', 'prueba', 'pueba@gmail.com', '12', '9976451643');

INSERT INTO usuarios VALUES  
('6', 'tres', 'tres', 'prueba', 'pruebatres@gmail.com', '1', '99712546');

INSERT INTO usuarios VALUES  
('7', 'cuatro', 'cuatro', 'prueba', 'pruebacuatro@gmail.com', '1', '97990');

INSERT INTO usuarios VALUES  
('9', 'cincco', 'cinco', 'prueba', 'pruebacinco@gmail.com', '1', '968');

INSERT INTO usuarios VALUES  
('13', 'seis', 'seis', 'prueba', 'pruebaseis@gmail.com', '1', '99724');

INSERT INTO usuarios VALUES  
('15', 'siete', 'siete', 'prueva', 'pruebasiete@gmail.com', '1', '978');

INSERT INTO usuarios VALUES  
('16', 'prueb', 't', 'prueba', 'prueba@gmail.com', '1', '09464');

INSERT INTO usuarios VALUES  
('17', 'sk', 'sj', 'jssk', 'akil@gmail.com', '1', '79');

INSERT INTO usuarios VALUES  
('18', 'k', 'k', 'k', 'sergiotc@gmail.com', '1', '9');

INSERT INTO usuarios VALUES  
('19', 'k', 'k', 'k', 'sergiotccab@gmail.com', '1', '9');

INSERT INTO usuarios VALUES  
('20', 'jssn', 'na', 'uw', 'sdtca@gmail.com', '1', '978');

INSERT INTO usuarios VALUES  
('21', 'téc', 'cab', 'sergio', 'sergio1996@gmail.com', '1', '9971165830');

INSERT INTO usuarios VALUES  
('22', 'tec', 'tec', 'sergio', 'akileño@gmail.com', '1', '9971235');

INSERT INTO usuarios VALUES  
('23', 'téc', 'cab', 'sergio', 'resultado@gmail.com', '1234', '9971142135');

INSERT INTO usuarios VALUES  
('24', 'j', 'h', 'j', 'huguf@gmail.com', '1', '6');

INSERT INTO usuarios VALUES  
('25', 'Santamaría', 'Magaña', 'Jorge Ángel', 'isc.jsantamaria@gmail.com', 'admin', '9971118771');
