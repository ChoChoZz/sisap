INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('1', 'Planteles');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('2', 'Usuarios');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('3', 'Red Social');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('4', 'Denuncia');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('5', 'Actividad');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('6', 'Protocolo');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('7', 'Procedimiento');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('8', 'Recurso');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('9', 'Archivo');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('10', 'Procedimiento');
INSERT INTO `sisap_v8`.`categoria` (`idCATEGORIA`, `descripcion`) VALUES ('11', 'Notificacion');




INSERT INTO `sisap_v8`.`prioridad` (`idPRIORIDAD`, `descripcion`) VALUES ('1', 'Alta');
INSERT INTO `sisap_v8`.`prioridad` (`idPRIORIDAD`, `descripcion`) VALUES ('2', 'Media');
INSERT INTO `sisap_v8`.`prioridad` (`idPRIORIDAD`, `descripcion`) VALUES ('3', 'Baja');




INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('1', 'Medio Superior');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('2', 'Superior');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('3', 'CENDI');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('4', 'Investigacion');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('5', 'Otro');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('6', 'Alumno');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('7', 'Docente');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('8', 'Personal IPN');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('9', 'Otro');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('10', 'Facebook');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('11', 'Twitter');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('12', 'Robo');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('13', 'Asalto');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('14', 'Agresion');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('15', 'Drogas');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('16', 'Alcohol');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('17', 'Porros');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('18', 'Otros');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('19', 'Patrulla');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('20', 'Policia');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('21', 'Ambulancia');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('22', 'Medico');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('23', 'PDF');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('24', 'Imagen');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('25', 'Otro');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('26', 'Alerta');
INSERT INTO `sisap_v8`.`tipo` (`idTIPO`, `descripcion`) VALUES ('27', 'Prevencion');

INSERT INTO `sisap_v8`.`clave` (`idCLAVE`, `numero_recursos`, `clave`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`) VALUES ('1', '3', 'A1', '1', '12');
INSERT INTO `sisap_v8`.`clave` (`idCLAVE`, `numero_recursos`, `clave`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`) VALUES ('2', '3', 'A2', '1', '13');
INSERT INTO `sisap_v8`.`clave` (`idCLAVE`, `numero_recursos`, `clave`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`) VALUES ('3', '2', 'M3', '2', '14');
INSERT INTO `sisap_v8`.`clave` (`idCLAVE`, `numero_recursos`, `clave`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`) VALUES ('4', '1', 'B4', '3', '15');
INSERT INTO `sisap_v8`.`clave` (`idCLAVE`, `numero_recursos`, `clave`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`) VALUES ('5', '3', 'A5', '1', '16');
INSERT INTO `sisap_v8`.`clave` (`idCLAVE`, `numero_recursos`, `clave`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`) VALUES ('6', '3', 'M6', '2', '17');
INSERT INTO `sisap_v8`.`clave` (`idCLAVE`, `numero_recursos`, `clave`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`) VALUES ('7', '2', 'B7', '3', '18');



INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('1', '1');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('1', '2');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('1', '3');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('1', '4');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('1', '5');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('2', '6');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('2', '7');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('2', '8');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('2', '9');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('3', '10');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('3', '11');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('4', '12');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('4', '13');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('4', '14');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('4', '15');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('4', '16');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('4', '17');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('4', '18');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('8', '19');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('8', '20');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('8', '21');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('8', '22');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('9', '23');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('9', '24');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('9', '25');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('11', '26');
INSERT INTO `sisap_v8`.`categoria_has_tipo` (`CATEGORIA_idCATEGORIA`, `TIPO_idTIPO`) VALUES ('11', '27');



INSERT INTO `sisap_v8`.`estado` (`idESTADO`, `descripcion`) VALUES ('1', 'No Disponible');
INSERT INTO `sisap_v8`.`estado` (`idESTADO`, `descripcion`) VALUES ('2', 'Disponible');
INSERT INTO `sisap_v8`.`estado` (`idESTADO`, `descripcion`) VALUES ('3', 'En proceso');
INSERT INTO `sisap_v8`.`estado` (`idESTADO`, `descripcion`) VALUES ('4', 'Atendido');
INSERT INTO `sisap_v8`.`estado` (`idESTADO`, `descripcion`) VALUES ('5', 'Aprobado');
INSERT INTO `sisap_v8`.`estado` (`idESTADO`, `descripcion`) VALUES ('6', 'No aprobado');
INSERT INTO `sisap_v8`.`estado` (`idESTADO`, `descripcion`) VALUES ('7', 'Cancelado');
INSERT INTO `sisap_v8`.`estado` (`idESTADO`, `descripcion`) VALUES ('8', 'Pendiente');


ALTER TABLE `sisap_v8`.`usuario` 
ADD COLUMN `email` VARCHAR(60) NOT NULL AFTER `PLANTEL_DIRECCION_idDIRECCION`;

ALTER TABLE `sisap_v8`.`usuario` 
CHANGE COLUMN `tipo_sangre` `tipo_sangre` VARCHAR(45) NOT NULL ;

