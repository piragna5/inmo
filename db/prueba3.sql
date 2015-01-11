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
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `altura_m` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(45) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `ideal` varchar(45) default NULL,
  `estacionamiento` varchar(45) default NULL,
  `patio_maniobras` varchar(45) default NULL,
  `luz` varchar(45) default NULL,
  `agua` varchar(45) default NULL,
  `drenaje` varchar(45) default NULL,
  `vigilancia` varchar(45) default NULL,
  `montacarga` varchar(45) default NULL,
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
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` int(11) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` int(11) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `recamaras` int(11) default NULL,
  `banos` int(11) default NULL,
  `balcon` tinyint(1) default NULL,
  `patios` int(11) default NULL,
  `espacio_autos` int(11) default NULL,
  `condicion` varchar(45) default NULL,
  `precio` varchar(10) default NULL,
  `credito` tinyint(1) default NULL,
  `casascol` varchar(45) default NULL,
  `agua` varchar(45) default NULL,
  `drenaje` varchar(45) default NULL,
  `luz` varchar(45) default NULL,
  `linea_telefonica` varchar(45) default NULL,
  `internet` varchar(45) default NULL,
  `tv_cable` varchar(45) default NULL,
  `accesos` varchar(45) default NULL,
  `amueblada` varchar(45) default NULL,
  `cocina_equipada` varchar(45) default NULL,
  `closets` varchar(45) default NULL,
  `alberca` varchar(45) default NULL,
  `vista_panoramica` varchar(45) default NULL,
  `salon_juegos` varchar(45) default NULL,
  `vigilancia_privada` varchar(45) default NULL,
  `mantenimiento` varchar(45) default NULL,
  `zona_arbolada` varchar(45) default NULL,
  `escuelas_cercanas` varchar(45) default NULL,
  `gimnacios_cercanos` varchar(45) default NULL,
  `parques_cercanos` varchar(45) default NULL,
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
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `recamaras` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `espacio_autos` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(45) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `credito` varchar(45) default NULL,
  `contacto` varchar(45) default NULL,
  `piso_planta` varchar(45) default NULL,
  `elevador` varchar(45) default NULL,
  `linea_telefonica` varchar(45) default NULL,
  `drenaje` varchar(45) default NULL,
  `internet` varchar(45) default NULL,
  `tv_cable` varchar(45) default NULL,
  `agua` varchar(45) default NULL,
  `luz` varchar(45) default NULL,
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
  `id` varchar(20) NOT NULL,
  `idcasa` varchar(20) NOT NULL,
  `url` varchar(200) NOT NULL
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
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `espacio_autos` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(45) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `acondicionado_para` varchar(45) default NULL,
  `agua` varchar(45) default NULL,
  `luz` varchar(45) default NULL,
  `drenaje` varchar(45) default NULL,
  `linea_telefonica` varchar(45) default NULL,
  `internet` varchar(45) default NULL,
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
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(45) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `altura` varchar(45) default NULL,
  `ideal_para` varchar(45) default NULL,
  `oficina` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `patio_maniobras` varchar(45) default NULL,
  `equipado` varchar(45) default NULL,
  `agua` varchar(45) default NULL,
  `luz` varchar(45) default NULL,
  `drenaje` varchar(45) default NULL,
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
  `venta_renta` varchar(45) default NULL,
  `terrno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `espacio_autos` varchar(45) default NULL,
  `sala_juntas` varchar(45) default NULL,
  `numero_usuarios` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `recepcion` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(45) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `uso_suelo` varchar(45) default NULL,
  `piso_planta` varchar(45) default NULL,
  `elevador` varchar(45) default NULL,
  `internet` varchar(45) default NULL,
  `linea_telefonica` varchar(45) default NULL,
  `cafeteria` varchar(45) default NULL,
  `seguridad_privada` varchar(45) default NULL,
  `mantenimiento` varchar(45) default NULL,
  `aire_acondicionado` varchar(45) default NULL,
  `alarma` varchar(45) default NULL,
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
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` varchar(45) default NULL,
  `contruccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(45) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `recamaras` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `corrales` varchar(45) default NULL,
  `gallineros` varchar(45) default NULL,
  `caballerizas` varchar(45) default NULL,
  `invernaderos` varchar(45) default NULL,
  `bodegas` varchar(45) default NULL,
  `casas` varchar(45) default NULL,
  `agua` varchar(45) default NULL,
  `luz` varchar(45) default NULL,
  `drenaje` varchar(45) default NULL,
  `linea_telefonica` varchar(45) default NULL,
  `gimnasio` varchar(45) default NULL,
  `canchas_deportivas` varchar(45) default NULL,
  `alberca` varchar(45) default NULL,
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
  `venta_renta` varchar(45) default NULL,
  `terreno_m 2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` varchar(45) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `ideal` varchar(45) default NULL,
  `uso_suelo` varchar(45) default NULL,
  `agua` varchar(45) default NULL,
  `drenaje` varchar(45) default NULL,
  `luz` varchar(45) default NULL,
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
