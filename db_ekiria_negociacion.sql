-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2022 a las 03:11:02
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ekiria_negociacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('57a2dcf9ed918ca5ae0efd22e6b060ceec89b558', '2022-02-15 02:08:37.335050', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add permiso', 6, 'add_permiso'),
(22, 'Can change permiso', 6, 'change_permiso'),
(23, 'Can delete permiso', 6, 'delete_permiso'),
(24, 'Can view permiso', 6, 'view_permiso'),
(25, 'Can add rol', 7, 'add_rol'),
(26, 'Can change rol', 7, 'change_rol'),
(27, 'Can delete rol', 7, 'delete_rol'),
(28, 'Can view rol', 7, 'view_rol'),
(29, 'Can add municipio', 8, 'add_municipio'),
(30, 'Can change municipio', 8, 'change_municipio'),
(31, 'Can delete municipio', 8, 'delete_municipio'),
(32, 'Can view municipio', 8, 'view_municipio'),
(33, 'Can add tipo documento', 9, 'add_tipodocumento'),
(34, 'Can change tipo documento', 9, 'change_tipodocumento'),
(35, 'Can delete tipo documento', 9, 'delete_tipodocumento'),
(36, 'Can view tipo documento', 9, 'view_tipodocumento'),
(37, 'Can add usuario', 10, 'add_usuario'),
(38, 'Can change usuario', 10, 'change_usuario'),
(39, 'Can delete usuario', 10, 'delete_usuario'),
(40, 'Can view usuario', 10, 'view_usuario'),
(41, 'Can add notificacion', 11, 'add_notificacion'),
(42, 'Can change notificacion', 11, 'change_notificacion'),
(43, 'Can delete notificacion', 11, 'delete_notificacion'),
(44, 'Can view notificacion', 11, 'view_notificacion'),
(45, 'Can add Token', 12, 'add_token'),
(46, 'Can change Token', 12, 'change_token'),
(47, 'Can delete Token', 12, 'delete_token'),
(48, 'Can view Token', 12, 'view_token'),
(49, 'Can add token', 13, 'add_tokenproxy'),
(50, 'Can change token', 13, 'change_tokenproxy'),
(51, 'Can delete token', 13, 'delete_tokenproxy'),
(52, 'Can view token', 13, 'view_tokenproxy'),
(53, 'Can add cita', 14, 'add_cita'),
(54, 'Can change cita', 14, 'change_cita'),
(55, 'Can delete cita', 14, 'delete_cita'),
(56, 'Can view cita', 14, 'view_cita'),
(57, 'Can add servicio', 15, 'add_servicio'),
(58, 'Can change servicio', 15, 'change_servicio'),
(59, 'Can delete servicio', 15, 'delete_servicio'),
(60, 'Can view servicio', 15, 'view_servicio'),
(61, 'Can add pedido_personalizado', 16, 'add_pedido_personalizado'),
(62, 'Can change pedido_personalizado', 16, 'change_pedido_personalizado'),
(63, 'Can delete pedido_personalizado', 16, 'delete_pedido_personalizado'),
(64, 'Can view pedido_personalizado', 16, 'view_pedido_personalizado'),
(65, 'Can add servicio_personalizado', 17, 'add_servicio_personalizado'),
(66, 'Can change servicio_personalizado', 17, 'change_servicio_personalizado'),
(67, 'Can delete servicio_personalizado', 17, 'delete_servicio_personalizado'),
(68, 'Can view servicio_personalizado', 17, 'view_servicio_personalizado'),
(69, 'Can add catalogo', 18, 'add_catalogo'),
(70, 'Can change catalogo', 18, 'change_catalogo'),
(71, 'Can delete catalogo', 18, 'delete_catalogo'),
(72, 'Can view catalogo', 18, 'view_catalogo'),
(73, 'Can add pedido', 19, 'add_pedido'),
(74, 'Can change pedido', 19, 'change_pedido'),
(75, 'Can delete pedido', 19, 'delete_pedido'),
(76, 'Can view pedido', 19, 'view_pedido'),
(77, 'Can add tipo_servicio', 20, 'add_tipo_servicio'),
(78, 'Can change tipo_servicio', 20, 'change_tipo_servicio'),
(79, 'Can delete tipo_servicio', 20, 'delete_tipo_servicio'),
(80, 'Can view tipo_servicio', 20, 'view_tipo_servicio'),
(81, 'Can add Tipo_producto', 21, 'add_tipo_producto'),
(82, 'Can change Tipo_producto', 21, 'change_tipo_producto'),
(83, 'Can delete Tipo_producto', 21, 'delete_tipo_producto'),
(84, 'Can view Tipo_producto', 21, 'view_tipo_producto'),
(85, 'Can add Proveedor', 22, 'add_proveedor'),
(86, 'Can change Proveedor', 22, 'change_proveedor'),
(87, 'Can delete Proveedor', 22, 'delete_proveedor'),
(88, 'Can view Proveedor', 22, 'view_proveedor'),
(89, 'Can add Compra', 23, 'add_compra'),
(90, 'Can change Compra', 23, 'change_compra'),
(91, 'Can delete Compra', 23, 'delete_compra'),
(92, 'Can view Compra', 23, 'view_compra'),
(93, 'Can add Producto', 24, 'add_producto'),
(94, 'Can change Producto', 24, 'change_producto'),
(95, 'Can delete Producto', 24, 'delete_producto'),
(96, 'Can view Producto', 24, 'view_producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `id_catalogo` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `servicio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id_cita` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `pedido_personalizado_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(12, 'authtoken', 'token'),
(13, 'authtoken', 'tokenproxy'),
(6, 'Configuracion', 'permiso'),
(7, 'Configuracion', 'rol'),
(4, 'contenttypes', 'contenttype'),
(23, 'Modulo_compras', 'compra'),
(24, 'Modulo_compras', 'producto'),
(22, 'Modulo_compras', 'proveedor'),
(21, 'Modulo_compras', 'tipo_producto'),
(5, 'sessions', 'session'),
(8, 'Usuarios', 'municipio'),
(11, 'Usuarios', 'notificacion'),
(9, 'Usuarios', 'tipodocumento'),
(10, 'Usuarios', 'usuario'),
(18, 'Ventas', 'catalogo'),
(14, 'Ventas', 'cita'),
(19, 'Ventas', 'pedido'),
(16, 'Ventas', 'pedido_personalizado'),
(15, 'Ventas', 'servicio'),
(17, 'Ventas', 'servicio_personalizado'),
(20, 'Ventas', 'tipo_servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Configuracion', '0001_initial', '2022-02-15 01:36:55.834920'),
(2, 'Usuarios', '0001_initial', '2022-02-15 01:36:56.108810'),
(3, 'contenttypes', '0001_initial', '2022-02-15 01:36:56.152055'),
(4, 'admin', '0001_initial', '2022-02-15 01:36:56.278880'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-02-15 01:36:56.290649'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-15 01:36:56.301682'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-02-15 01:36:56.367485'),
(8, 'auth', '0001_initial', '2022-02-15 01:36:56.637835'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-02-15 01:36:56.690009'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-02-15 01:36:56.700043'),
(11, 'auth', '0004_alter_user_username_opts', '2022-02-15 01:36:56.713087'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-02-15 01:36:56.723122'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-02-15 01:36:56.729141'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-02-15 01:36:56.744190'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-02-15 01:36:56.765260'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-02-15 01:36:56.782315'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-02-15 01:36:56.831477'),
(18, 'auth', '0011_update_proxy_permissions', '2022-02-15 01:36:56.860576'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-02-15 01:36:56.872614'),
(20, 'authtoken', '0001_initial', '2022-02-15 01:36:56.995022'),
(21, 'authtoken', '0002_auto_20160226_1747', '2022-02-15 01:36:57.052207'),
(22, 'authtoken', '0003_tokenproxy', '2022-02-15 01:36:57.059231'),
(23, 'sessions', '0001_initial', '2022-02-15 01:36:57.145517'),
(24, 'Ventas', '0001_initial', '2022-02-15 01:37:10.646747'),
(25, 'Modulo_compras', '0001_initial', '2022-02-15 01:37:31.078375');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_compras_compra`
--

CREATE TABLE `modulo_compras_compra` (
  `id_compras` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `proveedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_compras_compra_producto`
--

CREATE TABLE `modulo_compras_compra_producto` (
  `id` bigint(20) NOT NULL,
  `compra_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_compras_producto`
--

CREATE TABLE `modulo_compras_producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  `tipo_producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_compras_proveedor`
--

CREATE TABLE `modulo_compras_proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `celular` varchar(10) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulo_compras_proveedor`
--

INSERT INTO `modulo_compras_proveedor` (`id_proveedor`, `nombre`, `telefono`, `celular`, `descripcion`, `estado`) VALUES
(2, 'david', '3434', '34343', 'dfdsfdsfwds', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_compras_tipo_producto`
--

CREATE TABLE `modulo_compras_tipo_producto` (
  `id_tipo_producto` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL,
  `nom_municipio` varchar(60) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id_notificacion` int(11) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `usuario_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `total_pagar` int(11) NOT NULL,
  `fecha_cita` datetime(6) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_personalizados`
--

CREATE TABLE `pedidos_personalizados` (
  `id_pedido_personalizado` int(11) NOT NULL,
  `total_pagar` int(11) NOT NULL,
  `fecha_cita` datetime(6) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_personalizados_servicio_id`
--

CREATE TABLE `pedidos_personalizados_servicio_id` (
  `id` bigint(20) NOT NULL,
  `pedido_personalizado_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_personalizados_servicio_personalizado_id`
--

CREATE TABLE `pedidos_personalizados_servicio_personalizado_id` (
  `id` bigint(20) NOT NULL,
  `pedido_personalizado_id` int(11) NOT NULL,
  `servicio_personalizado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_servicio_id`
--

CREATE TABLE `pedidos_servicio_id` (
  `id` bigint(20) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `descripcion` longtext NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'ser admin', 'ninguna', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'admin', 'ninguna', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_permiso_id`
--

CREATE TABLE `roles_permiso_id` (
  `id` bigint(20) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `descripcion` longtext NOT NULL,
  `img_servicio` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `tipo_servicio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_personalizados`
--

CREATE TABLE `servicios_personalizados` (
  `id_servicio_personalizado` int(11) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `img_servicio` varchar(100) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `tipo_servicio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(11) NOT NULL,
  `nom_tipo_documento` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicios`
--

CREATE TABLE `tipo_servicios` (
  `id_tipo_servicio` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `celular` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `fec_nac` date NOT NULL,
  `num_documento` varchar(10) NOT NULL,
  `img_usuario` varchar(200) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `cod_postal` varchar(20) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  `administrador` tinyint(1) NOT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `tipo_documento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`password`, `last_login`, `id_usuario`, `username`, `nombres`, `apellidos`, `telefono`, `celular`, `email`, `fec_nac`, `num_documento`, `img_usuario`, `direccion`, `cod_postal`, `estado`, `administrador`, `municipio_id`, `rol_id`, `tipo_documento_id`) VALUES
('pbkdf2_sha256$260000$V4ar5k6loeQb1Zm8CU2lyv$ixPdcTnjaWgSy2/LEmuuPpDYpUuvMPac5ZgF+845HIM=', NULL, 2, 'admin', 'Admin', 'Admin', NULL, '123456789', 'admin@ekiria.com', '2022-02-14', '123456789', 'perfil/profile.jpg', 'quien sabe', '05002', 1, 1, NULL, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`id_catalogo`),
  ADD UNIQUE KEY `servicio_id` (`servicio_id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_cita`),
  ADD UNIQUE KEY `pedido_id` (`pedido_id`),
  ADD UNIQUE KEY `pedido_personalizado_id` (`pedido_personalizado_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_usuarios_id_usuario` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `modulo_compras_compra`
--
ALTER TABLE `modulo_compras_compra`
  ADD PRIMARY KEY (`id_compras`),
  ADD KEY `Modulo_compras_compr_proveedor_id_e7abde3f_fk_Modulo_co` (`proveedor_id`);

--
-- Indices de la tabla `modulo_compras_compra_producto`
--
ALTER TABLE `modulo_compras_compra_producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Modulo_compras_compra_pr_compra_id_producto_id_0cc658ad_uniq` (`compra_id`,`producto_id`),
  ADD KEY `Modulo_compras_compr_producto_id_e153011d_fk_Modulo_co` (`producto_id`);

--
-- Indices de la tabla `modulo_compras_producto`
--
ALTER TABLE `modulo_compras_producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `tipo_producto_id` (`tipo_producto_id`),
  ADD KEY `Modulo_compras_produ_proveedor_id_1234134d_fk_Modulo_co` (`proveedor_id`);

--
-- Indices de la tabla `modulo_compras_proveedor`
--
ALTER TABLE `modulo_compras_proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `modulo_compras_tipo_producto`
--
ALTER TABLE `modulo_compras_tipo_producto`
  ADD PRIMARY KEY (`id_tipo_producto`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id_municipio`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id_notificacion`),
  ADD KEY `notificaciones_usuario_id_id_9609a6ce_fk_usuarios_id_usuario` (`usuario_id_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `pedidos_personalizados`
--
ALTER TABLE `pedidos_personalizados`
  ADD PRIMARY KEY (`id_pedido_personalizado`);

--
-- Indices de la tabla `pedidos_personalizados_servicio_id`
--
ALTER TABLE `pedidos_personalizados_servicio_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedidos_personalizados_s_pedido_personalizado_id__4705c474_uniq` (`pedido_personalizado_id`,`servicio_id`),
  ADD KEY `pedidos_personalizad_servicio_id_4a79094c_fk_servicios` (`servicio_id`);

--
-- Indices de la tabla `pedidos_personalizados_servicio_personalizado_id`
--
ALTER TABLE `pedidos_personalizados_servicio_personalizado_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedidos_personalizados_s_pedido_personalizado_id__33bfacea_uniq` (`pedido_personalizado_id`,`servicio_personalizado_id`),
  ADD KEY `pedidos_personalizad_servicio_personaliza_baff78dc_fk_servicios` (`servicio_personalizado_id`);

--
-- Indices de la tabla `pedidos_servicio_id`
--
ALTER TABLE `pedidos_servicio_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedidos_servicio_id_pedido_id_servicio_id_11ef0a54_uniq` (`pedido_id`,`servicio_id`),
  ADD KEY `pedidos_servicio_id_servicio_id_7e1eb6fe_fk_servicios` (`servicio_id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `roles_permiso_id`
--
ALTER TABLE `roles_permiso_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_permiso_id_rol_id_permiso_id_9a9e4122_uniq` (`rol_id`,`permiso_id`),
  ADD KEY `roles_permiso_id_permiso_id_24cc36ab_fk_permisos_id_permiso` (`permiso_id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `servicios_tipo_servicio_id_dcbebe4e_fk_tipo_serv` (`tipo_servicio_id`);

--
-- Indices de la tabla `servicios_personalizados`
--
ALTER TABLE `servicios_personalizados`
  ADD PRIMARY KEY (`id_servicio_personalizado`),
  ADD KEY `servicios_personaliz_tipo_servicio_id_69af7dc9_fk_tipo_serv` (`tipo_servicio_id`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `tipo_servicios`
--
ALTER TABLE `tipo_servicios`
  ADD PRIMARY KEY (`id_tipo_servicio`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `usuarios_municipio_id_4800a7fd_fk_municipios_id_municipio` (`municipio_id`),
  ADD KEY `usuarios_rol_id_fa223853_fk_roles_id_rol` (`rol_id`),
  ADD KEY `usuarios_tipo_documento_id_8d277c36_fk_tipo_docu` (`tipo_documento_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `id_catalogo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id_cita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `modulo_compras_compra`
--
ALTER TABLE `modulo_compras_compra`
  MODIFY `id_compras` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulo_compras_compra_producto`
--
ALTER TABLE `modulo_compras_compra_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulo_compras_producto`
--
ALTER TABLE `modulo_compras_producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulo_compras_proveedor`
--
ALTER TABLE `modulo_compras_proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modulo_compras_tipo_producto`
--
ALTER TABLE `modulo_compras_tipo_producto`
  MODIFY `id_tipo_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id_notificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_personalizados`
--
ALTER TABLE `pedidos_personalizados`
  MODIFY `id_pedido_personalizado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_personalizados_servicio_id`
--
ALTER TABLE `pedidos_personalizados_servicio_id`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_personalizados_servicio_personalizado_id`
--
ALTER TABLE `pedidos_personalizados_servicio_personalizado_id`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_servicio_id`
--
ALTER TABLE `pedidos_servicio_id`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `roles_permiso_id`
--
ALTER TABLE `roles_permiso_id`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios_personalizados`
--
ALTER TABLE `servicios_personalizados`
  MODIFY `id_servicio_personalizado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_servicios`
--
ALTER TABLE `tipo_servicios`
  MODIFY `id_tipo_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_usuarios_id_usuario` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD CONSTRAINT `catalogo_servicio_id_f6f1a599_fk_servicios_id_servicio` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id_servicio`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_pedido_id_77b948c9_fk_pedidos_id_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id_pedido`),
  ADD CONSTRAINT `citas_pedido_personalizado_843702d2_fk_pedidos_p` FOREIGN KEY (`pedido_personalizado_id`) REFERENCES `pedidos_personalizados` (`id_pedido_personalizado`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_usuarios_id_usuario` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `modulo_compras_compra`
--
ALTER TABLE `modulo_compras_compra`
  ADD CONSTRAINT `Modulo_compras_compr_proveedor_id_e7abde3f_fk_Modulo_co` FOREIGN KEY (`proveedor_id`) REFERENCES `modulo_compras_proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `modulo_compras_compra_producto`
--
ALTER TABLE `modulo_compras_compra_producto`
  ADD CONSTRAINT `Modulo_compras_compr_compra_id_4ac0ff0a_fk_Modulo_co` FOREIGN KEY (`compra_id`) REFERENCES `modulo_compras_compra` (`id_compras`),
  ADD CONSTRAINT `Modulo_compras_compr_producto_id_e153011d_fk_Modulo_co` FOREIGN KEY (`producto_id`) REFERENCES `modulo_compras_producto` (`id_producto`);

--
-- Filtros para la tabla `modulo_compras_producto`
--
ALTER TABLE `modulo_compras_producto`
  ADD CONSTRAINT `Modulo_compras_produ_proveedor_id_1234134d_fk_Modulo_co` FOREIGN KEY (`proveedor_id`) REFERENCES `modulo_compras_proveedor` (`id_proveedor`),
  ADD CONSTRAINT `Modulo_compras_produ_tipo_producto_id_3531ede1_fk_Modulo_co` FOREIGN KEY (`tipo_producto_id`) REFERENCES `modulo_compras_tipo_producto` (`id_tipo_producto`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_usuario_id_id_9609a6ce_fk_usuarios_id_usuario` FOREIGN KEY (`usuario_id_id`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `pedidos_personalizados_servicio_id`
--
ALTER TABLE `pedidos_personalizados_servicio_id`
  ADD CONSTRAINT `pedidos_personalizad_pedido_personalizado_19cc47de_fk_pedidos_p` FOREIGN KEY (`pedido_personalizado_id`) REFERENCES `pedidos_personalizados` (`id_pedido_personalizado`),
  ADD CONSTRAINT `pedidos_personalizad_servicio_id_4a79094c_fk_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id_servicio`);

--
-- Filtros para la tabla `pedidos_personalizados_servicio_personalizado_id`
--
ALTER TABLE `pedidos_personalizados_servicio_personalizado_id`
  ADD CONSTRAINT `pedidos_personalizad_pedido_personalizado_f7d6d8ac_fk_pedidos_p` FOREIGN KEY (`pedido_personalizado_id`) REFERENCES `pedidos_personalizados` (`id_pedido_personalizado`),
  ADD CONSTRAINT `pedidos_personalizad_servicio_personaliza_baff78dc_fk_servicios` FOREIGN KEY (`servicio_personalizado_id`) REFERENCES `servicios_personalizados` (`id_servicio_personalizado`);

--
-- Filtros para la tabla `pedidos_servicio_id`
--
ALTER TABLE `pedidos_servicio_id`
  ADD CONSTRAINT `pedidos_servicio_id_pedido_id_7bb5a603_fk_pedidos_id_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id_pedido`),
  ADD CONSTRAINT `pedidos_servicio_id_servicio_id_7e1eb6fe_fk_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id_servicio`);

--
-- Filtros para la tabla `roles_permiso_id`
--
ALTER TABLE `roles_permiso_id`
  ADD CONSTRAINT `roles_permiso_id_permiso_id_24cc36ab_fk_permisos_id_permiso` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id_permiso`),
  ADD CONSTRAINT `roles_permiso_id_rol_id_64013b7b_fk_roles_id_rol` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_tipo_servicio_id_dcbebe4e_fk_tipo_serv` FOREIGN KEY (`tipo_servicio_id`) REFERENCES `tipo_servicios` (`id_tipo_servicio`);

--
-- Filtros para la tabla `servicios_personalizados`
--
ALTER TABLE `servicios_personalizados`
  ADD CONSTRAINT `servicios_personaliz_tipo_servicio_id_69af7dc9_fk_tipo_serv` FOREIGN KEY (`tipo_servicio_id`) REFERENCES `tipo_servicios` (`id_tipo_servicio`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_municipio_id_4800a7fd_fk_municipios_id_municipio` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id_municipio`),
  ADD CONSTRAINT `usuarios_rol_id_fa223853_fk_roles_id_rol` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `usuarios_tipo_documento_id_8d277c36_fk_tipo_docu` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id_tipo_documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
