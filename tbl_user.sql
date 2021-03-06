-- MySQL Script generated by MySQL Workbench
-- Mon Dec 23 22:37:45 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BucketList
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BucketList
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BucketList` DEFAULT CHARACTER SET utf8 ;
USE `BucketList` ;

-- -----------------------------------------------------
-- Table `BucketList`.`tbl_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BucketList`.`tbl_user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(64) NOT NULL,
  `email` VARCHAR(120) NOT NULL,
  `user_password` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
