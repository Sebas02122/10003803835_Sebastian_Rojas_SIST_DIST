CREATE DATABASE PARCIAL1;

USE PARCIAL1;

CREATE TABLE administrador(
	id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_documento VARCHAR(30) NOT NULL,
    documento VARCHAR(14) NOT NULL UNIQUE,
    nombre_completo VARCHAR(70) NOT NULL,
    telefono VARCHAR(12) NOT NULL,
    correo VARCHAR(60) NOT NULL UNIQUE   
); 


CREATE TABLE usuario(
		id INT PRIMARY KEY AUTO_INCREMENT,
        codigo VARCHAR(30) NOT NULL,
        carrera ENUM ('Ing. Mecatronica', 'Ing. Industrial', 'Ing. Ambiental','Ing.Energia Renovable'),
        persona_id INT UNIQUE,
        CONSTRAINT fk_usuario_administrador_id_administrador_id FOREIGN KEY (administrador_id) REFERENCES administrador(id)
);

CREATE TABLE bibliotaca(
	id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_vinculacion VARCHAR(50) NOT NULL,
    Horario VARCHAR(200) NOT NULL,
    persona_id INT UNIQUE,
    CONSTRAINT fk_biblioteca_usuario_id_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuario(id)
    );
    CREATE TABLE libro(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(200) NOT NULL,
    autor TINYINT NOT NULL,
    tipo_editorial DECIMAL(3, 2) CHECK (editorial >= 0 AND editorial <= 5),
	numero_libro ENUM('1', '2', '3', '4', '5', '6', '7', '8', '9', '10')
); 
