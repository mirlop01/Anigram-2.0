/* 
 06/05/2018-12:31
*/

ALTER TABLE `woofs` ADD `Puntos` INT NOT NULL AFTER `IDMedia`;
ALTER TABLE `usuario` DROP `Nickname`;
ALTER TABLE `mascota` CHANGE `URLFoto` `URLFoto` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `media` CHANGE `URLImagen` `URLImagen` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `usuario` CHANGE `URLFoto` `URLFoto` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

/**-----------------------------**/
ALTER TABLE `usuario` CHANGE `Clave` `Clave` VARCHAR(255) NOT NULL;
ALTER TABLE `woofs` ADD `Fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `Puntos`;
ALTER TABLE `media` ADD `fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `URLImagen`;

/********************** SEMI NUEVO *******************/
ALTER TABLE `comentario` ADD `fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `Comentario`;

/******************** NUEVO ********************/ 
ALTER TABLE `usuario` ADD `IDMascotaPrincipal` INT NULL AFTER `Bio`;
ALTER TABLE `usuario` ADD CONSTRAINT `FK_MascotaPrincipal` FOREIGN KEY (`IDMascotaPrincipal`) REFERENCES `mascota`(`ID`) ON DELETE SET NULL ON UPDATE CASCADE;