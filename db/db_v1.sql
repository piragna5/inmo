-- MySQL Script generated by MySQL Workbench
-- 01/03/15 23:32:14
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema prop
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `prop` ;

-- -----------------------------------------------------
-- Schema prop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `prop` ;

-- -----------------------------------------------------
-- Table `prop`.`casas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prop`.`casas` ;

CREATE TABLE IF NOT EXISTS `prop`.`casas` (
  `idcasa` INT NOT NULL,
  `terreno_m2` VARCHAR(45) NULL,
  `construccion_m2` VARCHAR(45) NULL,
  `precio` VARCHAR(10) NULL,
  `recamaras` INT NULL,
  `banos` INT NULL,
  `patios` INT NULL,
  `balcon` TINYINT(1) NULL,
  `espacio_autos` INT NULL,
  `direccion_calle` VARCHAR(45) NULL,
  `direccion_numero` INT NULL,
  `direccion_municipio` VARCHAR(45) NULL,
  `direccion_codigo_postal` INT NULL,
  `direccion_estado` VARCHAR(45) NULL,
  `direccion_pais` VARCHAR(45) NULL,
  `direccion_colonia` VARCHAR(45) NULL,
  `condicion` VARCHAR(45) NULL,
  `credito` TINYINT(1) NULL,
  `contacto_telefono` VARCHAR(45) NULL,
  `contacto_email` VARCHAR(45) NULL,
  `casascol` VARCHAR(45) NULL,
  PRIMARY KEY (`idcasa`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
