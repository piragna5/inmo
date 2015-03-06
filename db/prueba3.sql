-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 10-01-2015 a las 13:27:58
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `prop`
-- 
CREATE DATABASE `prop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `prop`;

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `bodegas`
-- 

CREATE TABLE `bodegas` (
  `idbodega` varchar(20) NOT NULL,
  `venta_renta` ENUM('Venta', 'Renta') default 'Venta',
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `destacada` ENUM('Si', 'No') default 'No',
  `altura_m` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `ideal` varchar(45) default NULL,
  `estacionamiento` ENUM('Si', 'No') default 'No',
  `patio_maniobras` ENUM('Si', 'No') default 'No',
  `luz` ENUM('Si', 'No') default 'No',
  `agua` ENUM('Si', 'No') default 'No',
  `drenaje` ENUM('Si', 'No') default 'No',
  `vigilancia` ENUM('Si', 'No') default 'No',
  `montacarga` ENUM('Si', 'No') default 'No',
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idbodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `bodegas`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `casas`
-- 

CREATE TABLE `casas` (
  `idcasa` varchar(20) NOT NULL,
  `venta_renta` ENUM('Venta', 'Renta') default 'Venta',
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(10) default NULL,
  `destacada` ENUM('Si', 'No') default 'No',
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` int(11) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` int(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `recamaras` int(11) default NULL,
  `banos` int(11) default NULL,
  `balcon` ENUM('Si', 'No') default 'No',
  `mascotas` ENUM('Si', 'No') default 'No',
  `patios` int(11) default NULL,
  `espacio_autos` int(11) default NULL,
  `condicion` varchar(45) default NULL,
  `credito` ENUM('Si', 'No') default 'No',
  `agua` ENUM('Si', 'No') default 'No',
  `drenaje` ENUM('Si', 'No') default 'No',
  `luz` ENUM('Si', 'No') default 'No',
  `linea_telefonica` ENUM('Si', 'No') default 'No',
  `internet` ENUM('Si', 'No') default 'No',
  `tv_cable` ENUM('Si', 'No') default 'No',
  `accesos` varchar(45) default NULL,
  `amueblada` ENUM('Si', 'No') default 'No',
  `cocina_equipada` ENUM('Si', 'No') default 'No',
  `closets` ENUM('Si', 'No') default 'No',
  `alberca` ENUM('Si', 'No') default 'No',
  `vista_panoramica` ENUM('Si', 'No') default 'No',
  `salon_juegos` ENUM('Si', 'No') default 'No',
  `vigilancia_privada` ENUM('Si', 'No') default 'No',
  `mantenimiento` ENUM('Si', 'No') default 'No',
  `zona_arbolada` ENUM('Si', 'No') default 'No',
  `escuelas_cercanas` ENUM('Si', 'No') default 'No',
  `gimnacios_cercanos` ENUM('Si', 'No') default 'No',
  `parques_cercanos` ENUM('Si', 'No') default 'No',
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idcasa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `casas`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `departamentos`
-- 

CREATE TABLE `departamentos` (
  `iddepartamentos` varchar(20) NOT NULL,
  `venta_renta` ENUM('Venta', 'Renta') default 'Venta',
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `recamaras` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `espacio_autos` varchar(45) default NULL,
  `destacada` ENUM('Si', 'No') default 'No',
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `piso_planta` varchar(45) default NULL,
  `mascotas` ENUM('Si', 'No') default 'No',
  `credito` ENUM('Si', 'No') default 'No',
  `elevador` ENUM('Si', 'No') default 'No',
  `agua` ENUM('Si', 'No') default 'No',
  `drenaje` ENUM('Si', 'No') default 'No',
  `luz` ENUM('Si', 'No') default 'No',
  `linea_telefonica` ENUM('Si', 'No') default 'No',
  `internet` ENUM('Si', 'No') default 'No',
  `tv_cable` ENUM('Si', 'No') default 'No',
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`iddepartamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `departamentos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `images`
-- 

CREATE TABLE `images` (
  `id` int(11) NOT NULL auto_increment,
  `idcasa` varchar(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `images`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `locales`
-- 

CREATE TABLE `locales` (
  `idlocal` varchar(20) NOT NULL,
  `venta_renta` ENUM('Venta', 'Renta') default 'Venta',
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `espacio_autos` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `destacada` ENUM('Si', 'No') default 'No',
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `acondicionado_para` varchar(45) default NULL,
  `agua` ENUM('Si', 'No') default 'No',
  `drenaje` ENUM('Si', 'No') default 'No',
  `luz` ENUM('Si', 'No') default 'No',
  `linea_telefonica` ENUM('Si', 'No') default 'No',
  `internet` ENUM('Si', 'No') default 'No',
  `tv_cable` ENUM('Si', 'No') default 'No',
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idlocal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `locales`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nave_industrial`
-- 

CREATE TABLE `nave_industrial` (
  `idnave_industrial` varchar(20) NOT NULL,
  `venta_renta` ENUM('Venta', 'Renta') default 'Venta',
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `destacada` ENUM('Si', 'No') default 'No',
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `altura` varchar(45) default NULL,
  `ideal_para` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `oficina` ENUM('Si', 'No') default 'No',
  `patio_maniobras` ENUM('Si', 'No') default 'No',
  `equipado` ENUM('Si', 'No') default 'No',
  `agua` ENUM('Si', 'No') default 'No',
  `drenaje` ENUM('Si', 'No') default 'No',
  `luz` ENUM('Si', 'No') default 'No',
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idnave_industrial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nave_industrial`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `oficinas`
-- 

CREATE TABLE `oficinas` (
  `idoficina` varchar(20) NOT NULL,
  `venta_renta` ENUM('Venta', 'Renta') default 'Venta',
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `destacada` ENUM('Si', 'No') default 'No',
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `espacio_autos` varchar(45) default NULL,
  `piso_planta` varchar(45) default NULL,
  `numero_usuarios` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `sala_juntas` ENUM('Si', 'No') default 'No',
  `recepcion` ENUM('Si', 'No') default 'No',
  `elevador` ENUM('Si', 'No') default 'No',
  `internet` ENUM('Si', 'No') default 'No',
  `linea_telefonica` ENUM('Si', 'No') default 'No',
  `cafeteria` ENUM('Si', 'No') default 'No',
  `seguridad_privada` ENUM('Si', 'No') default 'No',
  `mantenimiento` ENUM('Si', 'No') default 'No',
  `aire_acondicionado` ENUM('Si', 'No') default 'No',
  `alarma` ENUM('Si', 'No') default 'No',
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idoficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `oficinas`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `rancho`
-- 

CREATE TABLE `rancho` (
  `idrancho` varchar(20) NOT NULL,
  `venta_renta` ENUM('Venta', 'Renta') default 'Venta',
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `destacada` ENUM('Si', 'No') default 'No',
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `casas` varchar(45) default NULL,
  `recamaras` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `corrales` ENUM('Si', 'No') default 'No',
  `gallineros` ENUM('Si', 'No') default 'No',
  `caballerizas` ENUM('Si', 'No') default 'No',
  `invernaderos` ENUM('Si', 'No') default 'No',
  `bodegas` ENUM('Si', 'No') default 'No',
  `agua` ENUM('Si', 'No') default 'No',
  `drenaje` ENUM('Si', 'No') default 'No',
  `luz` ENUM('Si', 'No') default 'No',
  `linea_telefonica` ENUM('Si', 'No') default 'No',
  `internet` ENUM('Si', 'No') default 'No',
  `tv_cable` ENUM('Si', 'No') default 'No',
  `gimnacios_cercanos` ENUM('Si', 'No') default 'No',
  `canchas_deportivas` ENUM('Si', 'No') default 'No',
  `alberca` ENUM('Si', 'No') default 'No',
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idrancho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `rancho`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `terrenos`
-- 

CREATE TABLE `terrenos` (
  `idterrenos` varchar(20) NOT NULL,
  `venta_renta` ENUM('Venta', 'Renta') default 'Venta',
  `terreno_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `destacada` ENUM('Si', 'No') default 'No',
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `ideal` varchar(45) default NULL,
  `uso_suelo` varchar(45) default NULL,
  `agua` ENUM('Si', 'No') default 'No',
  `drenaje` ENUM('Si', 'No') default 'No',
  `luz` ENUM('Si', 'No') default 'No',
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idterrenos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `terrenos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `id` tinyint(4) NOT NULL auto_increment,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 
INSERT INTO `usuarios` VALUES (1, 'piri', '827ccb0eea8a706c4c34a16891f84e7b');

CREATE TABLE `usuarios_amc` (
  `id` varchar(20) NOT NULL,
  `id_dispositivo` varchar(20) NOT NULL,
  `plataforma` varchar(10) NOT NULL,
  `version_so` varchar(10) NOT NULL,
  `is_tablet` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;


