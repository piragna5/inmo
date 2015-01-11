-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 07-01-2015 a las 19:30:51
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `prop`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `bodegas`
-- 

CREATE TABLE `bodegas` (
  `idbodega` int(11) NOT NULL,
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `altura_m` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` int(11) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` int(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `banos` int(11) default NULL,
  `ideal` varchar(45) default NULL,
  `estacionamiento` tinyint(1) default NULL,
  `patio_maniobras` tinyint(1) default NULL,
  `luz` tinyint(1) default NULL,
  `agua` tinyint(1) default NULL,
  `drenaje` tinyint(1) default NULL,
  `vigilancia` tinyint(1) default NULL,
  `montacarga` tinyint(1) default NULL,
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idbodega`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `bodegas`
-- 

INSERT INTO `bodegas` VALUES (2147483647, 'renta', '2000', '600', 'chida', '30', '300000', 'no', 12345, 'no', 'no', 'no', 12300, 'no', 'no', 'no', 'no', 3, 'no', 1, 1, 1, 1, 1, 1, 1, '987456', 'bicabeibcaeylbvile');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `casas`
-- 

CREATE TABLE `casas` (
  `idcasa` int(11) NOT NULL,
  `venta_renta` varchar(45) default NULL,
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
  `agua` tinyint(1) default NULL,
  `drenaje` tinyint(1) default NULL,
  `luz` tinyint(1) default NULL,
  `linea_telefonica` tinyint(1) default NULL,
  `internet` tinyint(1) default NULL,
  `tv_cable` tinyint(1) default NULL,
  `accesos` varchar(45) default NULL,
  `amueblada` tinyint(1) default NULL,
  `cocina_equipada` tinyint(1) default NULL,
  `closets` varchar(45) default NULL,
  `alberca` tinyint(1) default NULL,
  `vista_panoramica` tinyint(1) default NULL,
  `salon_juegos` tinyint(1) default NULL,
  `vigilancia_privada` tinyint(1) default NULL,
  `mantenimiento` tinyint(1) default NULL,
  `zona_arbolada` varchar(45) default NULL,
  `escuelas_cercanas` varchar(45) default NULL,
  `gimnacios_cercanos` varchar(45) default NULL,
  `parques_cercanos` varchar(45) default NULL,
  `contacto_telefono` int(15) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idcasa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `casas`
-- 

INSERT INTO `casas` VALUES (2147483647, 'venta', '100', '20', 'bonita', 'alemania', 20, 'no', 'no', 'no', 11111, 'no', 'no', 'no', 2, 1, 0, NULL, NULL, 'nueva', '200', NULL, NULL, 1, 1, 1, 0, 0, 0, '2', 0, 0, '2', 0, 1, 0, 0, 0, 'no', 'no', 'no', 'si', 123554555, '12545949466');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `departamentos`
-- 

CREATE TABLE `departamentos` (
  `iddepartamentos` int(11) NOT NULL,
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `recamaras` int(11) default NULL,
  `banos` int(11) default NULL,
  `espacio_autos` int(11) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` int(11) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` int(11) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `credito` tinyint(1) default NULL,
  `piso_planta` varchar(45) default NULL,
  `elevador` tinyint(1) default NULL,
  `linea_telefonica` tinyint(1) default NULL,
  `drenaje` tinyint(1) default NULL,
  `internet` tinyint(1) default NULL,
  `tv_cable` tinyint(1) default NULL,
  `agua` tinyint(1) default NULL,
  `luz` tinyint(1) default NULL,
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`iddepartamentos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `departamentos`
-- 

INSERT INTO `departamentos` VALUES (1340284289, NULL, '3', '3', '3', '3', 3, 3, 3, '3', 3, '3', '3', '3', 3, '3', '3', '3', '3', 3, '3', 3, 3, 3, 3, 3, 3, 3, '3', NULL);
INSERT INTO `departamentos` VALUES (1002294922, NULL, '111', '1', '1', '1', 1, 1, 1, '1', 1, '1', '1', '1', 1, '1', '1', '1', '1', 1, NULL, 1, 1, 1, 1, 1, 1, 1, '1', '1');
INSERT INTO `departamentos` VALUES (2147483647, NULL, '2', '2', '2', '2', 2, 2, 2, '2', 2, '2', '2', '2', 2, '2', '2', '2', '2', 2, '2', 2, 2, 2, 2, 2, 2, 2, '2', '2');
INSERT INTO `departamentos` VALUES (1596745172, 'venta', '1000', '230', 'chido', '250000', 3, 2, 1, 'xxxx', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, 1, 0, 0, 1, 1, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `locales`
-- 

CREATE TABLE `locales` (
  `idlocal` int(11) NOT NULL,
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
  `agua` tinyint(1) default NULL,
  `luz` tinyint(1) default NULL,
  `drenaje` tinyint(1) default NULL,
  `linea_telefonica` tinyint(1) default NULL,
  `internet` tinyint(1) default NULL,
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idlocal`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `locales`
-- 

INSERT INTO `locales` VALUES (2147483647, 'renta', '100', '30', 'bueno', '2000', '4', '3', 'no', '88', 'no', 'no', 'no', '12456', 'no', 'no', 'no', 'negocio', 1, 1, 1, 1, 1, '465116165161651', 'viuevuiehveuvev');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nave_industrial`
-- 

CREATE TABLE `nave_industrial` (
  `idnave_industrial` int(11) NOT NULL,
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` int(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `condicion` varchar(45) default NULL,
  `altura` varchar(45) default NULL,
  `ideal_para` varchar(45) default NULL,
  `oficina` tinyint(1) default NULL,
  `banos` varchar(45) default NULL,
  `patio_maniobras` tinyint(1) default NULL,
  `equipado` tinyint(1) default NULL,
  `agua` tinyint(1) default NULL,
  `luz` tinyint(1) default NULL,
  `drenaje` tinyint(1) default NULL,
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idnave_industrial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nave_industrial`
-- 

INSERT INTO `nave_industrial` VALUES (993216923, '600', '500', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 12596, 'no', 'no', 'no', 'no', 'no', 'no', 1, '7', 1, 0, 1, 1, 1, '98776156414', 'vsbvifvbfiejsvbsibvsuf');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `oficinas`
-- 

CREATE TABLE `oficinas` (
  `idoficina` int(11) NOT NULL,
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `espacio_autos` varchar(45) default NULL,
  `sala_juntas` varchar(45) default NULL,
  `numero_usuarios` varchar(45) default NULL,
  `banos` varchar(45) default NULL,
  `recepcion` tinyint(1) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` int(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `uso_suelo` varchar(45) default NULL,
  `piso_planta` varchar(45) default NULL,
  `elevador` tinyint(1) default NULL,
  `internet` tinyint(1) default NULL,
  `linea_telefonica` tinyint(1) default NULL,
  `cafeteria` tinyint(1) default NULL,
  `seguridad_privada` tinyint(1) default NULL,
  `mantenimiento` tinyint(1) default NULL,
  `aire_acondicionado` tinyint(1) default NULL,
  `alarma` tinyint(1) default NULL,
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idoficina`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `oficinas`
-- 

INSERT INTO `oficinas` VALUES (2147483647, 'renta', '300', '300', 'no', 'no', 'no', 'no', 'no', 'no', 1, '22', '22', 'no', 'no', 'no', 1245, 'no', 'no', 'no', 'no', 'no', 1, 1, 1, 1, 0, 0, 0, 0, '963258741', '12546qsqwcwdc');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `rancho`
-- 

CREATE TABLE `rancho` (
  `idrancho` int(11) NOT NULL,
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` varchar(45) default NULL,
  `construccion_m2` varchar(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` varchar(45) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` int(5) default NULL,
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
  `agua` tinyint(1) default NULL,
  `luz` tinyint(1) default NULL,
  `drenaje` tinyint(1) default NULL,
  `linea_telefonica` tinyint(1) default NULL,
  `gimnasio` tinyint(1) default NULL,
  `canchas_deportivas` tinyint(1) default NULL,
  `alberca` tinyint(1) default NULL,
  `contacto_telefono` varchar(45) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idrancho`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `rancho`
-- 

INSERT INTO `rancho` VALUES (2147483647, 'venta', '100000', '6000', 'ranchote', '125633300', 'no', 'no', 'no', 'no', 'no', 15478, 'no', 'no', 'no', 'n3', '10', '10', '12', '3', '1', '3', '1', 1, 1, 1, 1, 0, 0, 1, '116516516511', 'wbevwebcwiuwurn');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `terrenos`
-- 

CREATE TABLE `terrenos` (
  `idterrenos` int(11) NOT NULL,
  `venta_renta` varchar(45) default NULL,
  `terreno_m2` int(45) default NULL,
  `descripcion` varchar(45) default NULL,
  `precio` varchar(45) default NULL,
  `direccion_calle` varchar(45) default NULL,
  `direccion_numero` int(11) default NULL,
  `direccion_municipio` varchar(45) default NULL,
  `direccion_colonia` varchar(45) default NULL,
  `direccion_estado` varchar(45) default NULL,
  `direccion_codigo_postal` int(5) default NULL,
  `direccion_pais` varchar(45) default NULL,
  `direccion_latitud` varchar(45) default NULL,
  `direccion_longitud` varchar(45) default NULL,
  `ideal` varchar(45) default NULL,
  `uso_suelo` varchar(45) default NULL,
  `agua` tinyint(1) default NULL,
  `drenaje` tinyint(1) default NULL,
  `luz` tinyint(1) default NULL,
  `contacto_telefono` int(15) default NULL,
  `contacto_email` varchar(45) default NULL,
  PRIMARY KEY  (`idterrenos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `terrenos`
-- 

INSERT INTO `terrenos` VALUES (2147483647, 'venta', 300, 'no', '20000', 'no', 2, 'no', 'no', 'no', 12300, 'no', 'no', 'no', 'no', 'no', 1, 1, 0, 123456789, 'mamamamamamamama');
INSERT INTO `terrenos` VALUES (1203084901, 'no', 100000, 'no', 'no', 'no', 12345, 'nonn', 'no', 'no', 12345, 'no', 'no', 'no', 'no', 'no', 1, 0, 1, 123456, 'mmmmmmamamma');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES (1, 'piri', '827ccb0eea8a706c4c34a16891f84e7b');
