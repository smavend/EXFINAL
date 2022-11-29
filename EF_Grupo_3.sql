-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ef_grupo_3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ef_grupo_3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ef_grupo_3` DEFAULT CHARACTER SET utf8 ;
USE `ef_grupo_3` ;

-- -----------------------------------------------------
-- Table `ef_grupo_3`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ef_grupo_3`.`usuarios` (
  `correo` VARCHAR(50) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `tipoUser` INT(1) NOT NULL,
  PRIMARY KEY (`correo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ef_grupo_3`.`credenciales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ef_grupo_3`.`credenciales` (
  `password` VARCHAR(550) NOT NULL,
  `admin` INT(1) NOT NULL,
  `correo` VARCHAR(50) NOT NULL,
  INDEX `fk_credenciales_usuarios_idx` (`correo` ASC) VISIBLE,
  PRIMARY KEY (`correo`),
  CONSTRAINT `fk_credenciales_usuarios`
    FOREIGN KEY (`correo`)
    REFERENCES `ef_grupo_3`.`usuarios` (`correo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ef_grupo_3`.`impresion3D`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ef_grupo_3`.`impresion3D` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `densidad` INT(1) NOT NULL,
  `grosor` INT(1) NOT NULL,
  `altura` INT(1) NOT NULL,
  `material` INT(1) NOT NULL,
  `url` VARCHAR(100) NOT NULL,
  `autoservicio` INT(1) NOT NULL,
  `valido` INT(1) NOT NULL,
  `fecha` DATETIME NOT NULL,
  `correo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_impresion3D_usuarios1_idx` (`correo` ASC) VISIBLE,
  CONSTRAINT `fk_impresion3D_usuarios1`
    FOREIGN KEY (`correo`)
    REFERENCES `ef_grupo_3`.`usuarios` (`correo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ef_grupo_3`.`corteLaser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ef_grupo_3`.`corteLaser` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `grosor` INT(1) NOT NULL,
  `material` INT(1) NOT NULL,
  `alto` INT(10) NOT NULL,
  `ancho` INT(10) NOT NULL,
  `url` VARCHAR(100) NOT NULL,
  `fecha` DATETIME NOT NULL,
  `valido` INT(1) NOT NULL,
  `correo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_corteLaser_usuarios1_idx` (`correo` ASC) VISIBLE,
  CONSTRAINT `fk_corteLaser_usuarios1`
    FOREIGN KEY (`correo`)
    REFERENCES `ef_grupo_3`.`usuarios` (`correo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ef_grupo_3`.`escaneo3D`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ef_grupo_3`.`escaneo3D` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `largo` DOUBLE NOT NULL,
  `ancho` DOUBLE NOT NULL,
  `altura` DOUBLE NOT NULL,
  `resolucion` INT(1) NOT NULL,
  `correo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_escaneo3D_usuarios1_idx` (`correo` ASC) VISIBLE,
  CONSTRAINT `fk_escaneo3D_usuarios1`
    FOREIGN KEY (`correo`)
    REFERENCES `ef_grupo_3`.`usuarios` (`correo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
