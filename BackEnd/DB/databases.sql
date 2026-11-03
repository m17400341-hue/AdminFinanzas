CREATE DATABASE alien; 
USE alien; 
 
CREATE TABLE categorias ( 
    id_categoria INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(50) 
); 
 
CREATE TABLE gastos ( 
    id_gasto INT AUTO_INCREMENT PRIMARY KEY, 
    id_categoria INT, 
    descripcion VARCHAR(100), 
    monto DECIMAL(12,2), 
    fecha DATE, 
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria) 
); 
 
CREATE TABLE presupuestos ( 
    id_presupuesto INT AUTO_INCREMENT PRIMARY KEY, 
    mes INT, 
    años INT, 
    monto_limite DECIMAL(12,2) 
); 
 
CREATE TABLE aliens10 ( 
    id_alien INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(50), 
nombre_original VARCHAR(50), 
poder_principal VARCHAR(100) 
); 
INSERT INTO aliens10 
(nombre, nombre_original, poder_principal) VALUES ('Fuego', 'Heatblast', 'Control 
del fuego'), ('Bestia', 'Wildmutt', 'Olfato y sentidos mejorados'), ('Diamante', 
'Diamondhead', 'Control de cristales'), 
('XLR8', 'XLR8', 'Supervelocidad'), ('Materia Gris', 'Grey Matter', 'Inteligencia 
superior'), ('Cuatrobrazos', 'Four Arms', 'Fuerza sobrehumana'), ('Insectoide', 
'Stinkfly', 'Vuelo y disparo de sustancias'),('Acuático', 'Ripjaws', 'Adaptación 
acuática'), 
('Ultra T', 'Upgrade', 'Fusión y mejora tecnológica'), ('Fantasmático', 'Ghostfreak', 
'Intangibilidad e invisibilidad'); 
INSERT INTO categorias (nombre) 
VALUES('Alimentacion'),('Transporte'),('Ocio'),('Servicios'),('Ropa'),('Otros'); 
INSERT INTO gastos (descripcion, monto, fecha, id_categoria) VALUES ('Almuerzo', 
45000, '2026-10-27', 1), ('Transporte en bus', 8000, '2026-10-26', 2), ('Cine', 35000, 
'2026-10-25', 3), ('Factura de internet', 70000, '2026-10-24', 4); 
INSERT INTO presupuestos (mes, años, monto_limite) VALUES (10, 2026, 
2000000);