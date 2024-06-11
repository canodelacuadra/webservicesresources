DROP DATABASE IF EXISTS recursos_multimedia;
CREATE DATABASE recursos_multimedia;
USE recursos_multimedia; 
CREATE TABLE
    recursos_multimedia (
        id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(255) NOT NULL,
        descripcion VARCHAR(255) NOT NULL,
        tipo VARCHAR(255) NOT NULL,
        ruta VARCHAR(255) NOT NULL,
        geolocalizacion VARCHAR(255) NOT NULL,
        date TIMESTAMP,
        PRIMARY KEY (id)
    );
INSERT INTO recursos_multimedia (nombre, descripcion, tipo, ruta, geolocalizacion)
VALUES (
        'Imagen de prueba 3',
        'Descripcion de imagen de prueba  3',
        'imagen',
        '/ruta/a/la/imagen/de/prueba.jpg',
        '40.036218,-3.609064'
    ),  (
    'Vídeo de prueba',
    'Descripcion de video',
    'video',
    '/ruta/a/el/video/de/prueba.jpg',
     '40.036218,-3.609064'
),
    (
        'Audio de prueba',
        'audio',
        'Descripcion de audio',
        '/ruta/a/el/audio/de/prueba.jpg',
        '40.036218,-3.609064'
    );

