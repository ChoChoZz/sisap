SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema sisap_v8
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sisap_v8` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `sisap_v8` ;

-- -----------------------------------------------------
-- Table `sisap_v8`.`PLANTEL_has_RECURSO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`PLANTEL_has_RECURSO` (
  `PLANTEL_idPLANTEL` INT NOT NULL,
  `RECURSO_idRECURSO` INT NOT NULL,
  PRIMARY KEY (`PLANTEL_idPLANTEL`, `RECURSO_idRECURSO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`CATEGORIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`CATEGORIA` (
  `idCATEGORIA` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCATEGORIA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`TIPO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`TIPO` (
  `idTIPO` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `CATEGORIA_idCATEGORIA` INT NOT NULL,
  PRIMARY KEY (`idTIPO`, `CATEGORIA_idCATEGORIA`),
  INDEX `fk_TIPO_CATEGORIA1_idx` (`CATEGORIA_idCATEGORIA` ASC),
  CONSTRAINT `fk_TIPO_CATEGORIA1`
    FOREIGN KEY (`CATEGORIA_idCATEGORIA`)
    REFERENCES `sisap_v8`.`CATEGORIA` (`idCATEGORIA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`PROCEDIMIENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`PROCEDIMIENTO` (
  `idPROCEDIMIENTO` INT NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `fechaRegistro` DATE NOT NULL,
  `TIPO_idTIPO` INT NOT NULL,
  PRIMARY KEY (`idPROCEDIMIENTO`, `TIPO_idTIPO`),
  INDEX `fk_PROCEDIMIENTO_TIPO1_idx` (`TIPO_idTIPO` ASC),
  CONSTRAINT `fk_PROCEDIMIENTO_TIPO1`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`DIRECCION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`DIRECCION` (
  `idDIRECCION` INT NOT NULL,
  `calle` VARCHAR(45) NOT NULL,
  `colonia` VARCHAR(45) NOT NULL,
  `codigo_postal` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NULL,
  `estado` VARCHAR(45) NOT NULL,
  `numero_exterior` VARCHAR(45) NULL,
  `numero_interior` VARCHAR(45) NULL,
  PRIMARY KEY (`idDIRECCION`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`PLANTEL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`PLANTEL` (
  `idPLANTEL` INT NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `extension` VARCHAR(45) NULL,
  `DIRECCION_idDIRECCION` INT NOT NULL,
  `TIPO_idTIPO` INT NOT NULL,
  PRIMARY KEY (`idPLANTEL`, `DIRECCION_idDIRECCION`, `TIPO_idTIPO`),
  INDEX `fk_PLANTEL_DIRECCION1_idx` (`DIRECCION_idDIRECCION` ASC),
  INDEX `fk_PLANTEL_TIPO1_idx` (`TIPO_idTIPO` ASC),
  CONSTRAINT `fk_PLANTEL_DIRECCION1`
    FOREIGN KEY (`DIRECCION_idDIRECCION`)
    REFERENCES `sisap_v8`.`DIRECCION` (`idDIRECCION`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PLANTEL_TIPO1`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`PRIORIDAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`PRIORIDAD` (
  `idPRIORIDAD` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPRIORIDAD`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`CLAVE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`CLAVE` (
  `idCLAVE` INT NOT NULL,
  `numero_recursos` INT NOT NULL,
  `clave` VARCHAR(15) NOT NULL,
  `PRIORIDAD_idPRIORIDAD` INT NOT NULL,
  `TIPO_idTIPO` INT NOT NULL,
  PRIMARY KEY (`idCLAVE`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`),
  INDEX `fk_CLAVE_PRIORIDAD1_idx` (`PRIORIDAD_idPRIORIDAD` ASC),
  INDEX `fk_CLAVE_TIPO1_idx` (`TIPO_idTIPO` ASC),
  CONSTRAINT `fk_CLAVE_PRIORIDAD1`
    FOREIGN KEY (`PRIORIDAD_idPRIORIDAD`)
    REFERENCES `sisap_v8`.`PRIORIDAD` (`idPRIORIDAD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CLAVE_TIPO1`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`ESTADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`ESTADO` (
  `idESTADO` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idESTADO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`DENUNCIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`DENUNCIA` (
  `idDENUNCIA` INT NOT NULL,
  `fechaRegistro` DATE NOT NULL,
  `horaRegistro` VARCHAR(45) NOT NULL,
  `fechaFin` DATE NOT NULL,
  `ubicacion` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(150) NOT NULL,
  `TIPO_idTIPO` INT NOT NULL,
  `PRIORIDAD_idPRIORIDAD` INT NOT NULL,
  `CLAVE_idCLAVE` INT NOT NULL,
  `USUARIO_idUSUSARIO` INT NOT NULL,
  `ESTADO_idESTADO` INT NOT NULL,
  PRIMARY KEY (`idDENUNCIA`, `TIPO_idTIPO`, `PRIORIDAD_idPRIORIDAD`, `CLAVE_idCLAVE`, `USUARIO_idUSUSARIO`, `ESTADO_idESTADO`),
  INDEX `fk_DENUNCIA_TIPO_idx` (`TIPO_idTIPO` ASC),
  INDEX `fk_DENUNCIA_CLAVE1_idx` (`CLAVE_idCLAVE` ASC),
  INDEX `fk_DENUNCIA_ESTADO1_idx` (`ESTADO_idESTADO` ASC),
  CONSTRAINT `fk_DENUNCIA_TIPO`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DENUNCIA_CLAVE1`
    FOREIGN KEY (`CLAVE_idCLAVE`)
    REFERENCES `sisap_v8`.`CLAVE` (`idCLAVE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DENUNCIA_ESTADO1`
    FOREIGN KEY (`ESTADO_idESTADO`)
    REFERENCES `sisap_v8`.`ESTADO` (`idESTADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`ARCHIVO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`ARCHIVO` (
  `idARCHIVO` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `url` VARCHAR(45) NULL,
  `DENUNCIA_idDENUNCIA` INT NOT NULL,
  `DENUNCIA_TIPO_idTIPO` INT NOT NULL,
  PRIMARY KEY (`idARCHIVO`, `DENUNCIA_idDENUNCIA`, `DENUNCIA_TIPO_idTIPO`),
  INDEX `fk_ARCHIVO_DENUNCIA1_idx` (`DENUNCIA_idDENUNCIA` ASC, `DENUNCIA_TIPO_idTIPO` ASC),
  CONSTRAINT `fk_ARCHIVO_DENUNCIA1`
    FOREIGN KEY (`DENUNCIA_idDENUNCIA` , `DENUNCIA_TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`DENUNCIA` (`idDENUNCIA` , `TIPO_idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`RECURSO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`RECURSO` (
  `idRECURSO` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `TIPO_idTIPO` INT NOT NULL,
  `ESTADO_idESTADO` INT NOT NULL,
  PRIMARY KEY (`idRECURSO`, `TIPO_idTIPO`, `ESTADO_idESTADO`),
  INDEX `fk_RECURSO_TIPO1_idx` (`TIPO_idTIPO` ASC),
  INDEX `fk_RECURSO_ESTADO1_idx` (`ESTADO_idESTADO` ASC),
  CONSTRAINT `fk_RECURSO_TIPO1`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RECURSO_ESTADO1`
    FOREIGN KEY (`ESTADO_idESTADO`)
    REFERENCES `sisap_v8`.`ESTADO` (`idESTADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`NOTIFICACION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`NOTIFICACION` (
  `idNOTIFICACION` INT NOT NULL,
  `asunto` VARCHAR(200) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `TIPO_idTIPO` INT NOT NULL,
  PRIMARY KEY (`idNOTIFICACION`, `TIPO_idTIPO`),
  INDEX `fk_NOTIFICACION_TIPO1_idx` (`TIPO_idTIPO` ASC),
  CONSTRAINT `fk_NOTIFICACION_TIPO1`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`ACTIVIDAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`ACTIVIDAD` (
  `idACTIVIDAD` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `PRIORIDAD_idPRIORIDAD` INT NOT NULL,
  `TIPO_idTIPO` INT NOT NULL,
  PRIMARY KEY (`idACTIVIDAD`, `PRIORIDAD_idPRIORIDAD`, `TIPO_idTIPO`),
  INDEX `fk_ACTIVIDAD_PRIORIDAD1_idx` (`PRIORIDAD_idPRIORIDAD` ASC),
  INDEX `fk_ACTIVIDAD_TIPO1_idx` (`TIPO_idTIPO` ASC),
  CONSTRAINT `fk_ACTIVIDAD_PRIORIDAD1`
    FOREIGN KEY (`PRIORIDAD_idPRIORIDAD`)
    REFERENCES `sisap_v8`.`PRIORIDAD` (`idPRIORIDAD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ACTIVIDAD_TIPO1`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`MEDIO_DIFUSION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`MEDIO_DIFUSION` (
  `idMEDIO_DIFUSION` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMEDIO_DIFUSION`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`USUARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`USUARIO` (
  `idUSUARIO` INT NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `ap_paterno` VARCHAR(40) NOT NULL,
  `ap_materno` VARCHAR(40) NOT NULL,
  `edad` INT NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `tipo_sangre` INT NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  `status` TINYINT NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `movil` VARCHAR(45) NOT NULL,
  `PLANTEL_idPLANTEL` INT NOT NULL,
  `TIPO_idTIPO` INT NOT NULL,
  `DIRECCION_idDIRECCION` INT NOT NULL,
  `DENUNCIA_idDENUNCIA` INT NOT NULL,
  PRIMARY KEY (`idUSUARIO`, `PLANTEL_idPLANTEL`, `TIPO_idTIPO`, `DIRECCION_idDIRECCION`, `DENUNCIA_idDENUNCIA`),
  INDEX `fk_USUARIO_PLANTEL1_idx` (`PLANTEL_idPLANTEL` ASC),
  INDEX `fk_USUARIO_TIPO1_idx` (`TIPO_idTIPO` ASC),
  INDEX `fk_USUARIO_DIRECCION1_idx` (`DIRECCION_idDIRECCION` ASC),
  INDEX `fk_USUARIO_DENUNCIA1_idx` (`DENUNCIA_idDENUNCIA` ASC),
  CONSTRAINT `fk_USUARIO_PLANTEL1`
    FOREIGN KEY (`PLANTEL_idPLANTEL`)
    REFERENCES `sisap_v8`.`PLANTEL` (`idPLANTEL`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_USUARIO_TIPO1`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_USUARIO_DIRECCION1`
    FOREIGN KEY (`DIRECCION_idDIRECCION`)
    REFERENCES `sisap_v8`.`DIRECCION` (`idDIRECCION`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_USUARIO_DENUNCIA1`
    FOREIGN KEY (`DENUNCIA_idDENUNCIA`)
    REFERENCES `sisap_v8`.`DENUNCIA` (`idDENUNCIA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`PROTOCOLO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`PROTOCOLO` (
  `idPROTOCOLO` INT NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `version` VARCHAR(45) NULL,
  `objetivo` VARCHAR(100) NULL,
  `leyes` VARCHAR(500) NULL,
  `TIPO_idTIPO` INT NOT NULL,
  `PRIORIDAD_idPRIORIDAD` INT NOT NULL,
  `ESTADO_idESTADO` INT NOT NULL,
  PRIMARY KEY (`idPROTOCOLO`, `TIPO_idTIPO`, `PRIORIDAD_idPRIORIDAD`, `ESTADO_idESTADO`),
  INDEX `fk_PROTOCOLO_TIPO1_idx` (`TIPO_idTIPO` ASC),
  INDEX `fk_PROTOCOLO_PRIORIDAD1_idx` (`PRIORIDAD_idPRIORIDAD` ASC),
  INDEX `fk_PROTOCOLO_ESTADO1_idx` (`ESTADO_idESTADO` ASC),
  CONSTRAINT `fk_PROTOCOLO_TIPO1`
    FOREIGN KEY (`TIPO_idTIPO`)
    REFERENCES `sisap_v8`.`TIPO` (`idTIPO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROTOCOLO_PRIORIDAD1`
    FOREIGN KEY (`PRIORIDAD_idPRIORIDAD`)
    REFERENCES `sisap_v8`.`PRIORIDAD` (`idPRIORIDAD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROTOCOLO_ESTADO1`
    FOREIGN KEY (`ESTADO_idESTADO`)
    REFERENCES `sisap_v8`.`ESTADO` (`idESTADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`PROCEDIMIENTO_has_ACTIVIDAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`PROCEDIMIENTO_has_ACTIVIDAD` (
  `PROCEDIMIENTO_idPROCEDIMIENTO` INT NOT NULL,
  `ACTIVIDAD_idACTIVIDAD` INT NOT NULL,
  PRIMARY KEY (`PROCEDIMIENTO_idPROCEDIMIENTO`, `ACTIVIDAD_idACTIVIDAD`),
  INDEX `fk_PROCEDIMIENTO_has_ACTIVIDAD_ACTIVIDAD1_idx` (`ACTIVIDAD_idACTIVIDAD` ASC),
  INDEX `fk_PROCEDIMIENTO_has_ACTIVIDAD_PROCEDIMIENTO1_idx` (`PROCEDIMIENTO_idPROCEDIMIENTO` ASC),
  CONSTRAINT `fk_PROCEDIMIENTO_has_ACTIVIDAD_PROCEDIMIENTO1`
    FOREIGN KEY (`PROCEDIMIENTO_idPROCEDIMIENTO`)
    REFERENCES `sisap_v8`.`PROCEDIMIENTO` (`idPROCEDIMIENTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROCEDIMIENTO_has_ACTIVIDAD_ACTIVIDAD1`
    FOREIGN KEY (`ACTIVIDAD_idACTIVIDAD`)
    REFERENCES `sisap_v8`.`ACTIVIDAD` (`idACTIVIDAD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`PROTOCOLO_has_PROCEDIMIENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`PROTOCOLO_has_PROCEDIMIENTO` (
  `PROTOCOLO_idPROTOCOLO` INT NOT NULL,
  `PROCEDIMIENTO_idPROCEDIMIENTO` INT NOT NULL,
  PRIMARY KEY (`PROTOCOLO_idPROTOCOLO`, `PROCEDIMIENTO_idPROCEDIMIENTO`),
  INDEX `fk_PROTOCOLO_has_PROCEDIMIENTO_PROCEDIMIENTO1_idx` (`PROCEDIMIENTO_idPROCEDIMIENTO` ASC),
  INDEX `fk_PROTOCOLO_has_PROCEDIMIENTO_PROTOCOLO1_idx` (`PROTOCOLO_idPROTOCOLO` ASC),
  CONSTRAINT `fk_PROTOCOLO_has_PROCEDIMIENTO_PROTOCOLO1`
    FOREIGN KEY (`PROTOCOLO_idPROTOCOLO`)
    REFERENCES `sisap_v8`.`PROTOCOLO` (`idPROTOCOLO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROTOCOLO_has_PROCEDIMIENTO_PROCEDIMIENTO1`
    FOREIGN KEY (`PROCEDIMIENTO_idPROCEDIMIENTO`)
    REFERENCES `sisap_v8`.`PROCEDIMIENTO` (`idPROCEDIMIENTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisap_v8`.`NOTIFICACION_has_MEDIO_DIFUSION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sisap_v8`.`NOTIFICACION_has_MEDIO_DIFUSION` (
  `NOTIFICACION_idNOTIFICACION` INT NOT NULL,
  `MEDIO_DIFUSION_idMEDIO_DIFUSION` INT NOT NULL,
  PRIMARY KEY (`NOTIFICACION_idNOTIFICACION`, `MEDIO_DIFUSION_idMEDIO_DIFUSION`),
  INDEX `fk_NOTIFICACION_has_MEDIO_DIFUSION_MEDIO_DIFUSION1_idx` (`MEDIO_DIFUSION_idMEDIO_DIFUSION` ASC),
  INDEX `fk_NOTIFICACION_has_MEDIO_DIFUSION_NOTIFICACION1_idx` (`NOTIFICACION_idNOTIFICACION` ASC),
  CONSTRAINT `fk_NOTIFICACION_has_MEDIO_DIFUSION_NOTIFICACION1`
    FOREIGN KEY (`NOTIFICACION_idNOTIFICACION`)
    REFERENCES `sisap_v8`.`NOTIFICACION` (`idNOTIFICACION`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_NOTIFICACION_has_MEDIO_DIFUSION_MEDIO_DIFUSION1`
    FOREIGN KEY (`MEDIO_DIFUSION_idMEDIO_DIFUSION`)
    REFERENCES `sisap_v8`.`MEDIO_DIFUSION` (`idMEDIO_DIFUSION`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
