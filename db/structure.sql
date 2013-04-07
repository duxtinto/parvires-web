CREATE TABLE `camaras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `grupo_parlamentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partido_id` int(11) DEFAULT NULL,
  `camara_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombreCorto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `iniciativas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `legislatura_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `legislatura_politicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechaAlta` date DEFAULT NULL,
  `fechaBaja` date DEFAULT NULL,
  `enActivo` tinyint(1) DEFAULT NULL,
  `politico_id` int(11) DEFAULT NULL,
  `legislatura_id` int(11) DEFAULT NULL,
  `grupoParlamentario_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `legislaturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `camara_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `partidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `siglas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `politicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `pres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `resultado_politico_grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `votacion_id` int(11) DEFAULT NULL,
  `grupoParlamentario_id` int(11) DEFAULT NULL,
  `votos` text COLLATE utf8_unicode_ci COMMENT 'JSON Encoded field',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `resultado_politicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numVotan` int(11) DEFAULT NULL,
  `numNoVotan` int(11) DEFAULT NULL,
  `aFavor` int(11) DEFAULT NULL,
  `enContra` int(11) DEFAULT NULL,
  `abstencion` int(11) DEFAULT NULL,
  `votacion_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `resultado_votantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numVotan` int(11) DEFAULT NULL,
  `numNoVotan` int(11) DEFAULT NULL,
  `aFavor` int(11) DEFAULT NULL,
  `enContra` int(11) DEFAULT NULL,
  `abstencion` int(11) DEFAULT NULL,
  `votacion_web_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `sesiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `fecha` date DEFAULT NULL,
  `legislatura_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `votacion_webs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `votacion_id` int(11) DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) DEFAULT '1',
  `frontpage` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `votaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `fecha` date DEFAULT NULL,
  `sesion_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `frontpage` tinyint(1) DEFAULT '0',
  `iniciativa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `votantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `voto_politicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `politico_id` int(11) DEFAULT NULL,
  `votacion_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1401 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `voto_votantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `votante_id` int(11) DEFAULT NULL,
  `votacion_web_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20130217111625');

INSERT INTO schema_migrations (version) VALUES ('20130316105840');

INSERT INTO schema_migrations (version) VALUES ('20130317200628');

INSERT INTO schema_migrations (version) VALUES ('20130317205655');

INSERT INTO schema_migrations (version) VALUES ('20130317210602');

INSERT INTO schema_migrations (version) VALUES ('20130317211855');

INSERT INTO schema_migrations (version) VALUES ('20130317212548');

INSERT INTO schema_migrations (version) VALUES ('20130317213710');

INSERT INTO schema_migrations (version) VALUES ('20130317215409');

INSERT INTO schema_migrations (version) VALUES ('20130317215750');

INSERT INTO schema_migrations (version) VALUES ('20130323083102');

INSERT INTO schema_migrations (version) VALUES ('20130323083321');

INSERT INTO schema_migrations (version) VALUES ('20130323084148');

INSERT INTO schema_migrations (version) VALUES ('20130323084457');

INSERT INTO schema_migrations (version) VALUES ('20130323093559');

INSERT INTO schema_migrations (version) VALUES ('20130323104029');

INSERT INTO schema_migrations (version) VALUES ('20130323175528');

INSERT INTO schema_migrations (version) VALUES ('20130324224345');

INSERT INTO schema_migrations (version) VALUES ('20130326220214');

INSERT INTO schema_migrations (version) VALUES ('20130328135113');

INSERT INTO schema_migrations (version) VALUES ('20130328173655');

INSERT INTO schema_migrations (version) VALUES ('20130329044446');

INSERT INTO schema_migrations (version) VALUES ('20130329052640');

INSERT INTO schema_migrations (version) VALUES ('20130331202209');