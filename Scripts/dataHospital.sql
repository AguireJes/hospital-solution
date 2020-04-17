-- Script Tables    Version: 1.0

-- -----------------------------------------------------
-- Truncate tables
-- -----------------------------------------------------

truncate table hospital.barriada;
truncate table hospital.corregimiento;
truncate table hospital.distrito;
truncate table hospital.edificios;
truncate table hospital.login;
truncate table hospital.paises;
truncate table hospital.sexo;
truncate table hospital.sintomas;
truncate table hospital.tiposangre;
truncate table hospital.tipovivienda;


-- -----------------------------------------------------
-- Data for table `hospital`.`sintomas`
-- -----------------------------------------------------
START TRANSACTION;
USE `hospital`;
INSERT INTO `hospital`.`sintomas` (`idsintomas`, `descripcion`, `estado`) VALUES (DEFAULT, 'SECRECIONES NASALES', 'A');
INSERT INTO `hospital`.`sintomas` (`idsintomas`, `descripcion`, `estado`) VALUES (DEFAULT, 'DOLOR DE GARGANTA', 'A');
INSERT INTO `hospital`.`sintomas` (`idsintomas`, `descripcion`, `estado`) VALUES (DEFAULT, 'CANSANCIO', 'A');
INSERT INTO `hospital`.`sintomas` (`idsintomas`, `descripcion`, `estado`) VALUES (DEFAULT, 'TOS', 'A');
INSERT INTO `hospital`.`sintomas` (`idsintomas`, `descripcion`, `estado`) VALUES (DEFAULT, 'FIEBRE', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `hospital`.`tiposangre`
-- -----------------------------------------------------
START TRANSACTION;
USE `hospital`;
INSERT INTO `hospital`.`tiposangre` (`idtiposangre`, `sangre`) VALUES (DEFAULT, 'O+');
INSERT INTO `hospital`.`tiposangre` (`idtiposangre`, `sangre`) VALUES (DEFAULT, 'O-');
INSERT INTO `hospital`.`tiposangre` (`idtiposangre`, `sangre`) VALUES (DEFAULT, 'A+');
INSERT INTO `hospital`.`tiposangre` (`idtiposangre`, `sangre`) VALUES (DEFAULT, 'A-');
INSERT INTO `hospital`.`tiposangre` (`idtiposangre`, `sangre`) VALUES (DEFAULT, 'B+');
INSERT INTO `hospital`.`tiposangre` (`idtiposangre`, `sangre`) VALUES (DEFAULT, 'B-');
INSERT INTO `hospital`.`tiposangre` (`idtiposangre`, `sangre`) VALUES (DEFAULT, 'AB+');
INSERT INTO `hospital`.`tiposangre` (`idtiposangre`, `sangre`) VALUES (DEFAULT, 'AB-');

COMMIT;


-- -----------------------------------------------------
-- Data for table `hospital`.`sexo`
-- -----------------------------------------------------
START TRANSACTION;
USE `hospital`;
INSERT INTO `hospital`.`sexo` (`idsexo`, `descripcion`, `valor`) VALUES (DEFAULT, 'MASCULINO', 'M');
INSERT INTO `hospital`.`sexo` (`idsexo`, `descripcion`, `valor`) VALUES (DEFAULT, 'FEMENINO', 'F');

COMMIT;


-- -----------------------------------------------------
-- Data for table `hospital`.`tipovivienda`
-- -----------------------------------------------------
START TRANSACTION;
USE `hospital`;
INSERT INTO `hospital`.`tipovivienda` (`idtipovivienda`, `descripcion`) VALUES (DEFAULT, 'CASA');
INSERT INTO `hospital`.`tipovivienda` (`idtipovivienda`, `descripcion`) VALUES (DEFAULT, 'APARTAMENTO');

COMMIT;


-- -----------------------------------------------------
-- Data for table `hospital`.`login`
-- -----------------------------------------------------
START TRANSACTION;
USE `hospital`;
INSERT INTO `hospital`.`login` (`idlogin`, `username`, `password`) VALUES (DEFAULT, 'seguropanama', 'panama1');

COMMIT;


-- -----------------------------------------------------
-- Data for table `hospital`.`paises`
-- -----------------------------------------------------
START TRANSACTION;
USE `hospital`;
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'AFGANISTÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ALBANIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ALEMANIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ANDORRA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ANGOLA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ANTIGUA Y BARBUDA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ARABIA SAUDITA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ARGELIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ARGENTINA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ARMENIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'AUSTRALIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'AUSTRIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'AZERBAIYÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BAHAMAS');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BANGLADÉS');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BARBADOS');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BARÉIN');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BÉLGICA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BELICE');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BENÍN');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BIELORRUSIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BIRMANIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BOLIVIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BOSNIA-HERZEGOVINA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BOTSUANA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BRASIL');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BRUNÉI');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BULGARIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BURKINA FASO');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BURUNDI');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'BUTÁN');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CABO VERDE');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CAMBOYA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CAMERÚN');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CANADÁ');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CATAR');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CHAD');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CHILE');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CHINA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CHIPRE');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'COLOMBIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'COMORAS');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CONGO');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'COREA DEL NORTE');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'COREA DEL SUR');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'COSTA DE MARFIL');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'COSTA RICA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CROACIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'CUBA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'DINAMARCA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'DOMINICA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ECUADOR');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'EGIPTO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'EL SALVADOR'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'EMIRATOS ÁRABES UNIDOS');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ERITREA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ESLOVAQUIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ESLOVENIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ESPAÑA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ESTADOS UNIDOS'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ESTONIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ETIOPÍA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'FILIPINAS'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'FINLANDIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'FIYI'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'FRANCIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GABÓN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GAMBIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GEORGIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GHANA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GRANADA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GRECIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GUATEMALA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GUINEA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GUINEA ECUATORIAL'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GUINEA-BISÁU'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'GUYANA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'HAITÍ'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'HONDURAS'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'HUNGRÍA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'INDIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'INDONESIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'IRAK'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'IRÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'IRLANDA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ISLANDIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ISLAS MARSHALL'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ISLAS SALOMÓN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ISRAEL'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ITALIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'JAMAICA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'JAPÓN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'JORDANIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'KAZAJISTÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'KENIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'KIRGUISTÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'KIRIBATI'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'KOSOVO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'KUWAIT'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LAOS'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LESOTO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LETONIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LÍBANO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LIBERIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LIBIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LIECHTENSTEIN');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LITUANIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'LUXEMBURGO');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MACEDONIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MADAGASCAR');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MALASIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MALAUI');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MALDIVAS');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MALÍ');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MALTA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MARRUECOS'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MAURICIO');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MAURITANIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MÉXICO');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MICRONESIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MOLDAVIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MÓNACO');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MONGOLIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MONTENEGRO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'MOZAMBIQUE'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'NAMIBIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'NAURU'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'NEPAL'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'NICARAGUA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'NÍGER');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'NIGERIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'NORUEGA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'NUEVA ZELANDA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'OMÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PAÍSES BAJOS'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PAKISTÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PALAOS');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PALESTINA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PANAMÁ'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PAPÚA NUEVA GUINEA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PARAGUAY'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PERÚ'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'POLONIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'PORTUGAL'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'REINO UNIDO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'REPÚBLICA CENTROAFRICANA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'REPÚBLICA CHECA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'REPÚBLICA DEMOCRÁTICA DEL CONGO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'REPÚBLICA DOMINICANA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'RUANDA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'RUMANIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'RUSIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SAMOA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SAN CRISTÓBAL Y NIEVES'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SAN MARINO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SAN VICENTE Y LAS GRANADINAS'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SANTA LUCÍA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SANTO TOMÉ Y PRÍNCIPE'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SENEGAL');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SERBIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SEYCHELLES'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SIERRA LEONA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SINGAPUR');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SIRIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SOMALIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SRI LANKA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SUAZILANDIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SUDÁFRICA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SUDÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SUDÁN DEL SUR'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SUECIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SUIZA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'SURINAM'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TAILANDIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TAIWÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TANZANIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TAYIKISTÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TIMOR ORIENTAL'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TOGO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TONGA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TRINIDAD Y TOBAGO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TÚNEZ'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TURKMENISTÁN'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TURQUÍA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'TUVALU'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'UCRANIA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'UGANDA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'URUGUAY'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'UZBEKISTÁN');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'VANUATU'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'VATICANO'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'VENEZUELA'); 
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'VIETNAM');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'YEMEN');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'YIBUTI');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ZAMBIA');
INSERT INTO `hospital`.`paises` (`idpaises`, `pais`) VALUES (DEFAULT, 'ZIMBABUE');

COMMIT;

-- -----------------------------------------------------
-- Data for table `hospital`.`distrito`
-- -----------------------------------------------------
START TRANSACTION;
USE `hospital`;

INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'ALMIRANTE','BOCAS DE TORO');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'BOCAS DEL TORO','BOCAS DE TORO');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CHANGUINOLA','BOCAS DE TORO');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CHIRIQUÍ GRANDE','BOCAS DE TORO');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'ALANJE','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'BARÚ','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'BOQUERÓN','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'BOQUETE','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'BUGABA','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'DAVID','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'DOLEGA','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'GUALACA','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'REMEDIOS','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'RENACIMIENTO','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SAN FÉLIX','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SAN LORENZO','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'TIERRAS ALTAS','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'TOLÉ','CHIRIQUÍ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'AGUADULCE','COCLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'ANTÓN','COCLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'LA PINTADA','COCLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'NATÁ','COCLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'OLÁ','COCLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'PENONOMÉ','COCLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CHAGRES','COLÓN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'COLÓN','COLÓN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'DONOSO','COLÓN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'PORTOBELO','COLÓN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SANTA ISABEL','COLÓN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'OMAR TORRIJOS HERRERA','COLÓN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CHEPIGANA','DARIÉN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'PINOGANA','DARIÉN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SANTA FE','DARIÉN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'GUNA DE WARGANDÍ','DARIÉN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CHITRÉ','HERRERA');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'LAS MINAS','HERRERA');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'LOS POZOS','HERRERA');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'OCÚ','HERRERA');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'PARITA','HERRERA');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'PESÉ','HERRERA');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SANTA MARÍA','HERRERA');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'GUARARÉ','LOS SANTOS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'LAS TABLAS','LOS SANTOS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'LOS SANTOS','LOS SANTOS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'MACARACAS','LOS SANTOS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'PEDASÍ','LOS SANTOS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'POCRÍ','LOS SANTOS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'TONOSÍ','LOS SANTOS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'BALBOA','PANAMÁ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CHEPO','PANAMÁ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CHIMÁN','PANAMÁ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'PANAMÁ','PANAMÁ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SAN MIGUELITO','PANAMÁ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'TABOGA','PANAMÁ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'ARRAIJÁN','PANAMÁ OESTE');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CAPIRA','PANAMÁ OESTE');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CHAME','PANAMÁ OESTE');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'LA CHORRERA','PANAMÁ OESTE');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SAN CARLOS','PANAMÁ OESTE');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'ATALAYA','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CALOBRE','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CAÑAZAS','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'LA MESA','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'LAS PALMAS','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'MARIATO','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'MONTIJO','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'RÍO DE JESÚS','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SAN FRANCISCO','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SANTA FE','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SANTIAGO','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SONÁ','VERAGUAS');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'CÉMACO','EMBERÁ WOUNAAN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SAMBÚ','EMBERÁ WOUNAAN');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'BESIKÓ','NGÄBE BUGLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'JIRONDAI','NGÄBE BUGLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'KANKINTÚ','NGÄBE BUGLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'KUSAPÍN','NGÄBE BUGLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'MIRONÓ','NGÄBE BUGLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'MÜNA','NGÄBE BUGLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'NOLE DUIMA','NGÄBE BUGLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'ÑÜRÜM','NGÄBE BUGLÉ');
INSERT INTO `hospital`.`distrito` (`iddistrito`,`descripcion`,`provincia`) VALUES (DEFAULT,'SANTA CATALINA O CALOVÉBORA','NGÄBE BUGLÉ');

COMMIT;

-----------------------------------------------------
-- UPDATE paises riesgo
-- -----------------------------------------------------
UPDATE hospital.paises
set riesgo = 'S'
where idpaises in (39,90,59,60,3,145);

-- -----------------------------------------------------
-- Verificacion
-- -----------------------------------------------------

select * from hospital.barriada;
select * from hospital.corregimiento;
select * from hospital.distrito;
select * from hospital.edificios;
select * from hospital.login;
select * from hospital.paises;
select * from hospital.sexo;
select * from hospital.sintomas;
select * from hospital.tiposangre;
select * from hospital.tipovivienda;