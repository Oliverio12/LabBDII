insert into Departamento.Departamentos values
--	ID_Departamento, Departamento, Pais 
	('AH', 'Ahuachapán', 'El Salvador'),
	('CA', 'Cabañas', 'El Salvador'),
	('CH', 'Chalatenango', 'El Salvador'),
	('CU', 'Cuscatlán', 'El Salvador'),
	('LL', 'La Libertad', 'El Salvador'),
	('LP', 'La Paz', 'El Salvador'),
	('LU', 'La Unión', 'El Salvador'),
	('MO', 'Morazán', 'El Salvador'),
	('SA', 'Santa Ana', 'El Salvador'),
	('SM', 'San Miguel', 'El Salvador'),
	('SS', 'San Salvador', 'El Salvador'),
	('SV', 'San Vicente', 'El Salvador'),
	('SO', 'Sonsonate', 'El Salvador'),
	('US', 'Usulután', 'El Salvador');
go

-- Municipios
insert into Departamento.Municipios values
--	ID_Municipio, Municipio, ID_Departamento
	('AHN', 'Ahuachapán Norte', 'AH'),
	('AHC', 'Ahuachapán Centro', 'AH'),
	('AHS', 'Ahuachapán Sur', 'AH'),
	('CAE', 'Cabañas Este', 'CA'),
	('CAO', 'Cabañas Oeste', 'CA'),
	('CHN', 'Chalatenango Norte', 'CH'),
	('CHC', 'Chalatenango Centro', 'CH'),
	('CHS', 'Chalatenango Sur', 'CH'),
	('CUN', 'Cuscatlán Norte', 'CU'),
	('CUS', 'Cuscatlán Sur', 'CU'),
	('LLN', 'La Libertad Norte', 'LL'),
	('LLC', 'La Libertad Centro', 'LL'),
	('LLO', 'La Libertad Oeste', 'LL'),
	('LLE', 'La Libertad Este', 'LL'),
	('LLS', 'La Libertad Sur', 'LL'),
	('LLT', 'La Libertad Costa', 'LL'),
	('LPO', 'La Paz Oeste', 'LP'),
	('LPC', 'La Paz Centro', 'LP'),
	('LPE', 'La Paz Este', 'LP'),
	('LUN', 'La Unión Norte', 'LU'),
	('LUS', 'La Unión Sur', 'LU'),
	('MON', 'Morazán Norte', 'MO'),
	('MOS', 'Morazán Sur', 'MO'),
	('SAN', 'Santa Ana Norte', 'SA'),
	('SAC', 'Santa Ana Centro', 'SA'),
	('SAE', 'Santa Ana Este', 'SA'),
	('SAO', 'Santa Ana Oeste', 'SA'),
	('SMN', 'San Miguel Norte', 'SM'),
	('SMC', 'San Miguel Centro', 'SM'),
	('SMO', 'San Miguel Oeste', 'SM'),
	('SSN', 'San Salvador Norte', 'SS'),
	('SSO', 'San Salvador Oeste', 'SS'),
	('SSE', 'San Salvador Este', 'SS'),
	('SSC', 'San Salvador Centro', 'SS'),
	('SSS', 'San Salvador Sur', 'SS'),
	('SVN', 'San Vicente Norte', 'SV'),
	('SVS', 'San Vicente Sur', 'SV'),
	('SON', 'Sonsonate Norte', 'SO'),
	('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO'),
	('USN', 'Usulután Norte', 'US'),
	('USE', 'Usulután Este', 'US'),
	('USO', 'Usulután Oeste', 'US');
go

-- Distritos
insert into Departamento.Distritos values
-- ID_Distrito, Distrito, ID_Municipio
-- Ahuachapan
	('AHN01', 'Atiquizaya', 'AHN'),
	('AHN02', 'El Refugio', 'AHN'),
	('AHN03', 'San Lorenzo', 'AHN'),
	('AHN04', 'Turín', 'AHN'),
	('AHC01', 'Ahuachapán', 'AHC'),
	('AHC02', 'Apaneca', 'AHC'),
	('AHC03', 'Concepción de Ataco', 'AHC'),
	('AHC04', 'Tacuba', 'AHC'),
	('AHS01', 'Guaymango', 'AHS'),
	('AHS02', 'Jujutla', 'AHS'),
	('AHS03', 'San Francisco Menéndez', 'AHS'),
	('AHS04', 'San Pedro Puxtla', 'AHS'),
-- Cabañas
	('CAE01', 'Sensuntepeque', 'CAE'),
	('CAE02', 'Victoria', 'CAE'),
	('CAE03', 'Dolores', 'CAE'),
	('CAE04', 'Guacotecti', 'CAE'),
	('CAE05', 'San Isidro', 'CAE'),
	('CAO01', 'Ilobasco', 'CAO'),
	('CAO02', 'Tejutepeque', 'CAO'),
	('CAO03', 'Jutiapa', 'CAO'),
	('CAO04', 'Cinquera', 'CAO'),
-- Chalatenango
	('CHN01', 'La Palma', 'CHN'),
	('CHN02', 'Citalá', 'CHN'),
	('CHN03', 'San Ignacio', 'CHN'),
	('CHC01', 'Nueva Concepción', 'CHC'),
	('CHC02', 'Tejutla', 'CHC'),
	('CHC03', 'La Reina', 'CHC'),
	('CHC04', 'Agua Caliente', 'CHC'),
	('CHC05', 'Dulce Nombre de María', 'CHC'),
	('CHC06', 'El Paraíso', 'CHC'),
	('CHC07', 'San Fernando', 'CHC'),
	('CHC08', 'San Francisco Morazán', 'CHC'),
	('CHC09', 'San Rafael', 'CHC'),
	('CHC10', 'Santa Rita', 'CHC'),
	('CHS01', 'Chalatenango', 'CHS'),
	('CHS02', 'Arcatao', 'CHS'),
	('CHS03', 'Azacualpa', 'CHS'),
	('CHS04', 'Comalapa', 'CHS'),
	('CHS05', 'Concepción Quezaltepeque', 'CHS'),
	('CHS06', 'El Carrizal', 'CHS'),
	('CHS07', 'La Laguna', 'CHS'),
	('CHS08', 'Las Vueltas', 'CHS'),
	('CHS09', 'Nombre de Jesús', 'CHS'),
	('CHS10', 'Nueva Trinidad', 'CHS'),
	('CHS11', 'Ojos de Agua', 'CHS'),
	('CHS12', 'Potonico', 'CHS'),
	('CHS13', 'San Antonio de La Cruz', 'CHS'),
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),
	('CHS15', 'San Francisco Lempa', 'CHS'),
	('CHS16', 'San Isidro Labrador', 'CHS'),
	('CHS17', 'San José Cancasque', 'CHS'),
	('CHS18', 'San Miguel de Mercedes', 'CHS'),
	('CHS19', 'San José Las Flores', 'CHS'),
	('CHS20', 'San Luis del Carmen', 'CHS'),
-- Cuscatlán
	('CUN01', 'Suchitoto', 'CUN'),
	('CUN02', 'San José Guayabal', 'CUN'),
	('CUN03', 'Oratorio de Concepción', 'CUN'),
	('CUN04', 'San Bartolomé Perulapía', 'CUN'),
	('CUN05', 'San Pedro Perulapán', 'CUN'),
	('CUS01', 'Cojutepeque', 'CUS'),
	('CUS02', 'San Rafael Cedros', 'CUS'),
	('CUS03', 'Candelaria', 'CUS'),
	('CUS04', 'Monte San Juan', 'CUS'),
	('CUS05', 'El Carmen', 'CUS'),
	('CUS06', 'San Cristobal', 'CUS'),
	('CUS07', 'Santa Cruz Michapa', 'CUS'),
	('CUS08', 'San Ramón', 'CUS'),
	('CUS09', 'El Rosario', 'CUS'),
	('CUS10', 'Santa Cruz Analquito', 'CUS'),
	('CUS11', 'Tenancingo', 'CUS'),
-- La Libertad
	('LLN01', 'Quezaltepeque', 'LLN'),
	('LLN02', 'San Matías', 'LLN'),
	('LLN03', 'San Pablo Tacachico', 'LLN'),
	('LLC01', 'San Juan Opico', 'LLC'),
	('LLC02', 'Ciudad Arce', 'LLC'),
	('LLO01', 'Colón', 'LLO'),
	('LLO02', 'Jayaque', 'LLO'),
	('LLO03', 'Sacacoyo', 'LLO'),
	('LLO04', 'Tepecoyo', 'LLO'),
	('LLO05', 'Talnique', 'LLO'),
	('LLE01', 'Antiguo Cuscatlán', 'LLE'),
	('LLE02', 'Huizúcar', 'LLE'),
	('LLE03', 'Nuevo Cuscatlán', 'LLE'),
	('LLE04', 'San José Villanueva', 'LLE'),
	('LLE05', 'Zaragoza', 'LLE'),
	('LLS01', 'Comasagua', 'LLS'),
	('LLS02', 'Santa Tecla', 'LLS'),
	('LLT01', 'Chiltiupán', 'LLT'),
	('LLT02', 'Jicalapa', 'LLT'),
	('LLT03', 'La Libertad', 'LLT'),
	('LLT04', 'Tamanique', 'LLT'),
	('LLT05', 'Teotepeque', 'LLT'),
-- La Paz
	('LPO01', 'Cuyultitan', 'LPO'),
	('LPO02', 'Olocuilta', 'LPO'),
	('LPO03', 'San Juan Talpa', 'LPO'),
	('LPO04', 'San Luis Talpa', 'LPO'),
	('LPO05', 'San Pedro Masahuat', 'LPO'),
	('LPO06', 'Tapalhuaca', 'LPO'),
	('LPO07', 'San Francisco Chinameca', 'LPO'),
	('LPC01', 'El Rosario', 'LPC'),
	('LPC02', 'Jerusalén', 'LPC'),
	('LPC03', 'Mercedes La Ceiba', 'LPC'),
	('LPC04', 'Paraíso de Osorio', 'LPC'),
	('LPC05', 'San Antonio Masahuat', 'LPC'),
	('LPC06', 'San Emigdio', 'LPC'),
	('LPC07', 'San Juan Tepezontes', 'LPC'),
	('LPC08', 'San Luís La Herradura', 'LPC'),
	('LPC09', 'San Miguel Tepezontes', 'LPC'),
	('LPC10', 'San Pedro Nonualco', 'LPC'),
	('LPC11', 'Santa María Ostuma', 'LPC'),
	('LPC12', 'Santiago Nonualco', 'LPC'),
	('LPE01', 'San Juan Nonualco', 'LPE'),
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),
	('LPE03', 'Zacatecoluca', 'LPE'),
-- La Unión
	('LUN01', 'Anamorós', 'LUN'),
	('LUN02', 'Bolivar', 'LUN'),
	('LUN03', 'Concepción de Oriente', 'LUN'),
	('LUN04', 'El Sauce', 'LUN'),
	('LUN05', 'Lislique', 'LUN'),
	('LUN06', 'Nueva Esparta', 'LUN'),
	('LUN07', 'Pasaquina', 'LUN'),
	('LUN08', 'Polorós', 'LUN'),
	('LUN09', 'San José La Fuente', 'LUN'),
	('LUN10', 'Santa Rosa de Lima', 'LUN'),
	('LUS01', 'Conchagua', 'LUS'),
	('LUS02', 'El Carmen', 'LUS'),
	('LUS03', 'Intipucá', 'LUS'),
	('LUS04', 'La Unión', 'LUS'),
	('LUS05', 'Meanguera del Golfo', 'LUS'),
	('LUS06', 'San Alejo', 'LUS'),
	('LUS07', 'Yayantique', 'LUS'),
	('LUS08', 'Yucuaiquín', 'LUS'),
-- Morazán
	('MON01', 'Arambala', 'MON'),
	('MON02', 'Cacaopera', 'MON'),
	('MON03', 'Corinto', 'MON'),
	('MON04', 'El Rosario', 'MON'),
	('MON05', 'Joateca', 'MON'),
	('MON06', 'Jocoaitique', 'MON'),
	('MON07', 'Meanguera', 'MON'),
	('MON08', 'Perquín', 'MON'),
	('MON09', 'San Fernando', 'MON'),
	('MON10', 'San Isidro', 'MON'),
	('MON11', 'Torola', 'MON'),
	('MOS01', 'Chilanga', 'MOS'),
	('MOS02', 'Delicias de Concepción', 'MOS'),
	('MOS03', 'El Divisadero', 'MOS'),
	('MOS04', 'Gualococti', 'MOS'),
	('MOS05', 'Guatajiagua', 'MOS'),
	('MOS06', 'Jocoro', 'MOS'),
	('MOS07', 'Lolotiquillo', 'MOS'),
	('MOS08', 'Osicala', 'MOS'),
	('MOS09', 'San Carlos', 'MOS'),
	('MOS10', 'San Francisco Gotera', 'MOS'),
	('MOS11', 'San Simón', 'MOS'),
	('MOS12', 'Sensembra', 'MOS'),
	('MOS13', 'Sociedad', 'MOS'),
	('MOS14', 'Yamabal', 'MOS'),
	('MOS15', 'Yoloaiquín', 'MOS'),
-- Santa Ana
	('SAN01', 'Masahuat', 'SAN'),
	('SAN02', 'Metapán', 'SAN'),
	('SAN03', 'Santa Rosa Guachipilín', 'SAN'),
	('SAN04', 'Texistepeque', 'SAN'),
	('SAC01', 'Santa Ana', 'SAC'),
	('SAE01', 'Coatepeque', 'SAE'),
	('SAE02', 'El Congo', 'SAE'),
	('SAO01', 'Candelaria de la Frontera', 'SAO'),
	('SAO02', 'Chalchuapa', 'SAO'),
	('SAO03', 'El Porvenir', 'SAO'),
	('SAO04', 'San Antonio Pajonal', 'SAO'),
	('SAO05', 'San Sebastián Salitrillo', 'SAO'),
	('SAO06', 'Santiago de La Frontera', 'SAO'),
-- San Miguel
	('SMN01', 'Ciudad Barrios', 'SMN'),
	('SMN02', 'Sesori', 'SMN'),
	('SMN03', 'Nuevo Edén de San Juan', 'SMN'),
	('SMN04', 'San Gerardo', 'SMN'),
	('SMN05', 'San Luis de La Reina', 'SMN'),
	('SMN06', 'Carolina', 'SMN'),
	('SMN07', 'San Antonio del Mosco', 'SMN'),
	('SMN08', 'Chapeltique', 'SMN'),
	('SMC01', 'San Miguel', 'SMC'),
	('SMC02', 'Comacarán', 'SMC'),
	('SMC03', 'Uluazapa', 'SMC'),
	('SMC04', 'Moncagua', 'SMC'),
	('SMC05', 'Quelepa', 'SMC'),
	('SMC06', 'Chirilagua', 'SMC'),
	('SMO01', 'Chinameca', 'SMO'),
	('SMO02', 'Nueva Guadalupe', 'SMO'),
	('SMO03', 'Lolotique', 'SMO'),
	('SMO04', 'San Jorge', 'SMO'),
	('SMO05', 'San Rafael Oriente', 'SMO'),
	('SMO06', 'El Tránsito', 'SMO'),
-- San Salvador
	('SSN01', 'Aguilares', 'SSN'),
	('SSN02', 'El Paisnal', 'SSN'),
	('SSN03', 'Guazapa', 'SSN'),
	('SSO01', 'Apopa', 'SSO'),
	('SSO02', 'Nejapa', 'SSO'),
	('SSE01', 'Ilopango', 'SSE'),
	('SSE02', 'San Martín', 'SSE'),
	('SSE03', 'Soyapango', 'SSE'),
	('SSE04', 'Tonacatepeque', 'SSE'),
	('SSC01', 'Ayutuxtepeque', 'SSC'),
	('SSC02', 'Mejicanos', 'SSC'),
	('SSC03', 'San Salvador', 'SSC'),
	('SSC04', 'Cuscatancingo', 'SSC'),
	('SSC05', 'Ciudad Delgado', 'SSC'),
	('SSS01', 'Panchimalco', 'SSS'),
	('SSS02', 'Rosario de Mora', 'SSS'),
	('SSS03', 'San Marcos', 'SSS'),
	('SSS04', 'Santo Tomás', 'SSS'),
	('SSS05', 'Santiago Texacuangos', 'SSS'),
-- San Vicente
	('SVN01', 'Apastepeque', 'SVN'),
	('SVN02', 'Santa Clara', 'SVN'),
	('SVN03', 'San Ildefonso', 'SVN'),
	('SVN04', 'San Esteban Catarina', 'SVN'),
	('SVN05', 'San Sebastián', 'SVN'),
	('SVN06', 'San Lorenzo', 'SVN'),
	('SVN07', 'Santo Domingo', 'SVN'),
	('SVS01', 'San Vicente', 'SVS'),
	('SVS02', 'Guadalupe', 'SVS'),
	('SVS03', 'Verapaz', 'SVS'),
	('SVS04', 'Tepetitán', 'SVS'),
	('SVS05', 'Tecoluca', 'SVS'),
	('SVS06', 'San Cayetano Istepeque', 'SVS'),
-- Sonsonate
	('SON01', 'Juayúa', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatitán', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzmán', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Julián', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuatán', 'SOE'),
	('SOO01', 'Acajutla', 'SOO'),
-- Usulután
	('USN01', 'Santiago de María', 'USN'),
	('USN02', 'Alegría', 'USN'),
	('USN03', 'Berlín', 'USN'),
	('USN04', 'Mercedes Umaña', 'USN'),
	('USN05', 'Jucuapa', 'USN'),
	('USN06', 'El triunfo', 'USN'),
	('USN07', 'Estanzuelas', 'USN'),
	('USN08', 'San Buenaventura', 'USN'),
	('USN09', 'Nueva Granada', 'USN'),
	('USE01', 'Usulután', 'USE'),
	('USE02', 'Jucuarán', 'USE'),
	('USE03', 'San Dionisio', 'USE'),
	('USE04', 'Concepción Batres', 'USE'),
	('USE05', 'Santa María', 'USE'),
	('USE06', 'Ozatlán', 'USE'),
	('USE07', 'Tecapán', 'USE'),
	('USE08', 'Santa Elena', 'USE'),
	('USE09', 'California', 'USE'),
	('USE10', 'Ereguayquín', 'USE'),
	('USO01', 'Jiquilisco', 'USO'),
	('USO02', 'Puerto El Triunfo', 'USO'),
	('USO03', 'San Agustín', 'USO'),
	('USO04', 'San Francisco Javier', 'USO');
go

-- Direcciones 
insert into Departamento.Direcciones values
-- Linea1, Linea2, ID_Distrito, CodigoPostal
	('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),  -- 1					
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'), -- 2
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'), -- 3
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'), -- 4
	('Col La Frontera, Calle 5, #5G', 'Km 10', 'AHS03', '02113'), -- 5
	('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 6
	('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SSC03', '01101'), -- 7
	('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'AHS01', '02114'),-- 8
	('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'LLO01', '01115'),-- 9
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305'),-- 10
	('Col El Bosque, Calle 10, #10N', 'Frente al jardín', 'SON02', '02321'),  -- 11
	('Barrio La Estación, Av 11, #11I', 'Cerca de la estación', 'SOE01', '02316'), -- 12
	('Res Las Olas, Av 12, #12A', 'Vista al mar', 'SOO01', '02312'), -- 13
	('Barrio La Plaza, Av 13, #13S', 'Al lado de la plaza', 'SOC01', '02311'), -- 14
	('Col La Montaña, Calle 14, #14G', 'Km 15', 'AHS03', '02123'), -- 15
	('Res Los Cerezos, Calle 15, #15A', 'Cerca de la municipalidad', 'SAC01', '02211'), -- 16
	('Res Las Cumbres, Av 16, #16S', 'Vista al valle', 'SSC03', '01111'), -- 17
	('Col Los Jazmines, Pje 25, #3-7', 'Cerca de la fuente', 'AHS01', '02124'),-- 18
	('Urb Los Tulipanes, Pol 26, #3-9', 'Casa blanca', 'LLO01', '01125'),-- 19
	('Caserio Las Orquídeas, 5ta Calle, #7', 'Casa amarilla', 'SON01', '02315');-- 20
go

-- EMPLEADOS
-- Cargos
insert into Persona.Cargos values
-- Cargo
	('SysAdmin'),
	('Gerente'),
	('Empleado'),
	('Bodegero'),
	('Administrador de Usuarios'),
    ('Supervisor de Turno');
go


-- Empleados
insert into Persona.Empleados values
-- DUI_Empleado, ISSS, Nombres, Apellidos, FechaNac, Telefono, Correo, ID_Cargo, ID_Direccion
	('04523695-5', '906325698', 'Juan Carlos', 'Rodas Gonzalez', '01-01-1995', '6532-4526', 'juan@hotmail.com', '1', '1'),
	('04321098-7', '963852741', 'Diego Franciso', 'Sanchez Castro', '02-02-1990', '7895-5698', 'diego@gmail.com', '2', '2'),
	('03210987-4', '321654987', 'Raul Edgardo', 'Del Valle Garcia', '03-03-1980', '6598-2548', 'raul@outlook.com', '3', '3'),
	('06789012-1', '951753258', 'Mary Carmen', 'Perez de Hernandez', '04-04-1985', '7965-2526', 'may@yahoo.com', '4', '4'),
	('06877852-9', '987654321','Rodrigo', 'Fernandez', '2000-04-22', '7063-6535', 'Rodrigo.fernandez@gmail.com', '1', '5'),
	('45886712-8', '885412369','Dennis', 'Navidad', '2000-07-02', '7956-7952', 'Dennis.Navidad@gmail.com', '1', '6'),
	('04523696-6', '906325699', 'María Luisa', 'Martinez Garcia', '02-02-1996', '6532-4527', 'maria@hotmail.com', '5', '7'),
    ('04523697-7', '906325700', 'Roberto Carlos', 'Perez Lopez', '03-03-1997', '6532-4528', 'roberto@hotmail.com', '6', '8'),
	('03322134-8', '754278785', 'Pedro Jose', 'Hernandez Mate', '02-11-1999', '7721-2442', 'Pedro@outlook.com', '3', '9'),
	('11425255-7', '245712483', 'Maria Paola', 'Del Carmen Solis', '03-03-1985', '7778-2224', 'Paola@outlook.com', '3', '10')
go

insert into Rol.Opciones values
-- NombreOpcion
	('Gestionar Empleados'), -- 1
	('Gestionar Departamentos'),  -- 2
	('Gestionar Municipios'), -- 3
	('Gestionar Distritos'), -- 4
	('Gestionar Direcciones'), -- 5
	('Gestionar Cargos'),-- 6
	('Gestionar Empleados'), -- 7
	('Gestionar Opciones'), -- 8
	('Gestionar Roles'), -- 9
	('Gestionar AsignacionRolesOpciones'), -- 10
	('Gestionar Usuarios'), -- 11
	('Gestionar Turnos'), -- 12
	('Gestionar Logins'), -- 13
	('Gestionar Grupos'), -- 14
	('Gestionar Productos'), -- 15
	('Gestionar Categoria'), -- 16
	('Gestionar Marca'), -- 17
	('Gestionar Descuento'), -- 18
	('Gestionar Inventario'), -- 19
	('Gestionar Pagos'), -- 20
	('Gestionar Compra'), -- 21
    ('Gestionar Venta'), -- 22
	('Gestionar Cliente'), -- 23
	('Gestinoar Metodos de pago'),--24
	('Gestionar Detalle Compra'), -- 25
	('Gestionar Detalle Venta') -- 26
go

insert into Rol.Roles values
-- NombreRol
	('SysAdmin'),
	('Gerente'),
	('Empleado'),
	('Bodegero'),
	('Administrador de Usuarios'),
    ('Supervisor de Turno');
go

select * from Rol.AsignacionRolesOpciones where Id_Rol = 3

insert into Rol.AsignacionRolesOpciones values
-- ID_Rol, ID_Opcion
	--SysAdmin Todos los permisos
	('1','1'),('1','2'),('1','3'),('1','4'),('1','5'),('1','6'),
	('1','7'),('1','8'),('1','9'),('1','10'),('1','11'),('1','12'),
	('1','13'),('1','14'),('1','15'),('1','16'),('1','17'),('1','18'),
	('1','19'),('1','20'),('1','21'),('1','22'),('1','23'),('1','24'),('1','25'),('1','26'),
	--Gerente
	('2','2'),('2','3'),('2','4'),('2','5'), --Departamentos y relaciones de estos
	('2','6'),--Cargos
	('2','7'),--Empleados
	('2','10'),--Asignacion
	('2','12'),--Turnos
	('2','14'),--Grupos
	('2','15'), --Productos
	('2','16'),--Categoria
	('2','17'),--Marca
	('2','18'),--Descuento
	('2','19'),--Inventario
	('2','20'),--Pagos
	('2','21'),--Compras
	('2','22'),--Venta
	('2','23'),--Cliente
	('2','24'),--Metodos de pago
	('2','25'),--Detalle de la compra
	('2','26'),--Detalle de la venta

	--Empleado
	('3','15'),--Productos
	('3','16'),--Categorias
	('3','17'),--Marca
	('3','18'),--Inventario
	('3','20'),--Pagos
	('3','22'),--Ventas
	('3','23'),--Clientes
	('3','24'),--Metodos de pago
	('2','26'),--Detalle de la venta

	--Bodegero
	('4','15'),--Productos
	('4','16'),--Categorias
	('4','17'),--Marca
	('4','19'),--Inventario
	('4','21'),--Compra
	('4','25'),--Detalle compra

	--Administrador De Usuarios
	('5','1'),-- Cuenta
	('5','11'),--Usuarios
	('5','12'),--Turnos
	('5','13'),--Logins
	('5','14'),--Grupos

	--Supervisor de turnos
	('6','12'),--Turnos
	('6','14');--Grupos
go

insert into Rol.Usuarios values
	-- ID_Empleado, ID_Rol, Usuario, Clave
	('1', '1', 'Juan123', 'pass123'), --Sysadmin
	('2','2','Francis22','geren123'),--Gerente
	('3','3','Raul55','emp24'),--Empleado
	('4','4','Carmen','bode32'),--Bodegero
	('5', '1', 'Rodrigo__Zavaleta12', 'Admin'),--Sysadmin
	('6', '1', 'Dennis__Godinez97', 'Admin123'),--Sysadmin
	('7','5','Luisa887','AdmUs'),--Administrador de Usuarios
	('8','6','Robert552','SupTu'),--Supervisor de turnos
	('9','3','Pedro0012','Eppm'),--Empleado
	('10','3','Solis1233','EEppmm')--Empleado
go


insert into Grupos.Grupo values
-- Turno
	('2','Matutino normal'), -- 1
	('1','Vespertino normal'), -- 2
	('3','Nocturno normal'), -- 3
	('4','Matutino a distancia'), -- 4
	('5','Vespertino a distancia'), -- 5
	('6','Nocturno a distancia'); -- 6
go

--insertando clientes
insert into Cliente.Clientes values
	('Carlos', 'Martinez', '12345678-9', '7231-2201', 'carlos.martinez@dominio.com', 11, 'carlosm', 'Carlos1234', GETDATE()),
	('Maria', 'Gonzalez', '23456789-0', '7382-0302', 'maria.gonzalez@dominio.com', 12, 'mariag', 'Maria5678', GETDATE()),
	('Juan', 'Rodriguez', '34567890-1', '7976-0453', 'juan.rodriguez@dominio.com', 13, 'juanr', 'Juan91011', GETDATE()),
	('Ana', 'Lopez', '45678901-2', '7321-0554', 'ana.lopez@dominio.com', 14, 'anal', 'Ana1213', GETDATE()),
	('Pedro', 'Perez', '56789012-3', '7442-1205', 'pedro.perez@dominio.com', 15, 'pedrop', 'Pedro1415', GETDATE()),
	('Laura', 'Sanchez', '67890123-4', '7012-5206', 'laura.sanchez@dominio.com', 16, 'lauras', 'Laura1617', GETDATE()),
	('Jose', 'Garcia', '78901234-5', '7020-7857', 'jose.garcia@dominio.com', 17, 'joseg', 'Jose1819', GETDATE()),
	('Sara', 'Diaz', '89012345-6', '7330-8888', 'sara.diaz@dominio.com', 18, 'sarad', 'Sara2021', GETDATE()),
	('Luis', 'Fernandez', '90123456-7', '7021-0409', 'luis.fernandez@dominio.com', 19, 'luisf', 'Luis2223', GETDATE()),
	('Marta', 'Ruiz', '01234567-8', '7052-0010', 'marta.ruiz@dominio.com', 20, 'martar', 'Marta2425', GETDATE());	
go


-- Insertar datos en la tabla Inventario
insert into Productos.Inventario values
	--Stock, Nombre_producto, Descripcion, Precio, Fecha_adquisicion, Fecha_ultima_actualizacion, Categoria, Proveedor
	(25, 'Teléfono Inteligente X', 'Smartphone 5G con pantalla de 6.5 pulgadas', 499.99, '2023-01-01', '2023-01-10', 'Smartphones', 'TechCorp'),
	(30, 'Laptop Gamer Y', 'Laptop con gráficos dedicados y 16GB RAM', 899.99, '2023-01-02', '2023-01-11', 'Computadoras', 'CompFast'),
	(15, 'Tableta Gráfica Z', 'Tableta gráfica con lápiz de 2048 niveles de presión', 199.99, '2023-01-03', '2023-01-12', 'Tabletas', 'DrawIt'),
	(40, 'Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación de ruido', 79.99, '2023-01-04', '2023-01-13', 'Audio', 'SoundWave'),
	(20, 'Smartwatch Fit', 'Reloj inteligente con monitor de ritmo cardíaco', 129.99, '2023-01-05', '2023-01-14', 'Wearables', 'GearUp'),
	(35, 'Cámara Digital D', 'Cámara con resolución de 20MP y zoom óptico 5X', 299.99, '2023-01-06', '2023-01-15', 'Cámaras', 'PicTech'),
	(50, 'Disco Duro Externo 1TB', 'Disco duro externo USB 3.0', 59.99, '2023-01-07', '2023-01-16', 'Almacenamiento', 'StoreSafe'),
	(60, 'Router WiFi 6', 'Router de alta velocidad con tecnología WiFi 6', 99.99, '2023-01-08', '2023-01-17', 'Redes', 'NetFlow'),
	(45, 'Teclado Mecánico', 'Teclado mecánico con iluminación RGB', 69.99, '2023-01-09', '2023-01-18', 'Periféricos', 'KeyMaster'),
	(70, 'Mouse Ergonómico', 'Mouse ergonómico con diseño vertical', 39.99, '2023-01-10', '2023-01-19', 'Periféricos', 'ClickEase');
go

-- Insertar datos en la tabla Marca
insert into Productos.Marca values
	--NombreMarca
	('TechCorp'),
	('CompFast'),
	('DrawIt'),
	('SoundWave'),
	('GearUp'),
	('PicTech'),
	('StoreSafe'),
	('NetFlow'),
	('KeyMaster'),
	('ClickEase');
go

-- Insertar datos en la tabla Categoria
insert into Productos.Categoria values
	--NombreCategoria
	('Smartphones'),
	('Computadoras'),
	('Tabletas'),
	('Audio'),
	('Wearables'),
	('Cámaras'),
	('Almacenamiento'),
	('Redes'),
	('Periféricos'),
	('Accesorios');
go

-- Insertar datos en la tabla Producto
insert into Productos.Producto values
	--NombreProducto, Descripcion, Precio, Id_Inventario, Id_Marca, Id_Categoria
	('Teléfono Inteligente X', 'Smartphone 5G con pantalla de 6.5 pulgadas', 499.99, '1', '1', '1'), --van en orden segun la categoria
	('Laptop Gamer Y', 'Laptop con gráficos dedicados y 16GB RAM', 899.99, '2', '2', '2'),
	('Tableta Gráfica Z', 'Tableta gráfica con lápiz de 2048 niveles de presión', 199.99, '3', '3', '3'),
	('Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación de ruido', 79.99, '4', '4', '4'),
	('Smartwatch Fit', 'Reloj inteligente con monitor de ritmo cardíaco', 129.99, '5', '5', '5'),
	('Cámara Digital D', 'Cámara con resolución de 20MP y zoom óptico 5X', 299.99, '6', '6', '6'),
	('Disco Duro Externo 1TB', 'Disco duro externo USB 3.0', 59.99, '7', '7', '7'),
	('Router WiFi 6', 'Router de alta velocidad con tecnología WiFi 6', 99.99, '8', '8', '8'),
	('Teclado Mecánico', 'Teclado mecánico con iluminación RGB', 69.99, '9', '9', '9'),
	('Mouse Ergonómico', 'Mouse ergonómico con diseño vertical', 39.99, '10', '10', '10');
go

-- Insertar datos en la tabla Descuento
insert into Productos.Descuento values
	--(Id_Producto, PorcentajeDescuento, FechaInicio, FechaFinal)
	(1, 10.00, '2023-11-25', '2023-11-30'),  -- Descuento del 10% para el Teléfono del 25 al 30 de noviembre
	(2, 15.00, '2023-11-25', '2023-11-30'),  -- Descuento del 15% para la Laptop Gamer del 25 al 30 de noviembre
	(3, 20.00, '2023-12-01', '2023-12-10'),  -- Descuento del 20% para la Tableta Gráfica del 1 al 10 de diciembre
	(4, 5.00, '2023-12-15', '2023-12-20'),   -- Descuento del 5% para los Auriculares Bluetooth del 15 al 20 de diciembre
	(5, 10.00, '2023-12-26', '2023-12-31'),  -- Descuento del 10% para el Smartwatch Fit del 26 al 31 de diciembre
	(6, 25.00, '2023-01-01', '2023-01-05'),  -- Descuento del 25% para la Cámara Digital D del 1 al 5 de enero
	(7, 30.00, '2023-01-10', '2023-01-15'),  -- Descuento del 30% para el Disco Duro Externo 1TB del 10 al 15 de enero
	(8, 20.00, '2023-02-01', '2023-02-05'),  -- Descuento del 20% para el Router WiFi 6 del 1 al 5 de febrero
	(9, 10.00, '2023-02-10', '2023-02-14'),  -- Descuento del 10% para el Teclado Mecánico del 10 al 14 de febrero
	(10, 15.00, '2023-02-20', '2023-02-25'); -- Descuento del 15% para el Mouse Ergonómico del 20 al 25 de febrero
go

-- Insertar datos en la tabla Ventas.Compra
insert into Ventas.Compra values
	--Proveedor, NombreCompra, Fecha_Compra, Total, Estado, Id_Empleado, DescripcionCompra
	('TechSupply', 'Compra Enero TechSupply', '2023-01-05', 1500.00, 'Comprado', 1, 'Compra de varios productos electrónicos'), -- 1
	('GadgetWholesale', 'Orden Enero GadgetWholesale', '2023-01-10', 1200.00, 'Pendiente', 1, 'Orden de compra para nuevos inventarios'), -- 2
	('ElectroMart', 'Reabastecimiento Enero ElectroMart', '2023-01-15', 800.00, 'Comprado', 1, 'Reabastecimiento de inventario'), -- 3
	('InnovaTech', 'Compra Febrero InnovaTech', '2023-02-05', 1800.00, 'Comprado', 1, 'Compra de gadgets innovadores'), -- 4
	('ElectroWholesale', 'Orden Febrero ElectroWholesale', '2023-02-10', 1600.00, 'Pendiente', 1, 'Orden de compra para reabastecimiento'), -- 5
	('GadgetStore', 'Compra Marzo GadgetStore', '2023-03-05', 1400.00, 'Comprado', 1, 'Compra de nuevos modelos de gadgets'), -- 6
	('TechBazaar', 'Orden Marzo TechBazaar', '2023-03-10', 1300.00, 'Pendiente', 1, 'Orden de compra para inventario de primavera'), -- 7
	('ElectroHub', 'Compra Abril ElectroHub', '2023-04-05', 1200.00, 'Comprado', 1, 'Compra de accesorios electrónicos'), -- 8
	('GadgetMart', 'Orden Abril GadgetMart', '2023-04-10', 1100.00, 'Pendiente', 1, 'Orden de compra para reabastecimiento mensual'), -- 9
	('TechCenter', 'Compra Mayo TechCenter', '2023-05-05', 1000.00, 'Comprado', 1, 'Compra de dispositivos tecnológicos'); -- 10
go
-- Insertar datos en la tabla Ventas.DetalleCompra
insert into Ventas.DetalleCompra values
	--Id_Compra, Cantidad, PrecioUnitario, EstadoCompra, Total
	(1, 10, 50.00, 'Comprado', 500.00), -- Detalle para la Compra 1
	(1, 5, 100.00, 'Comprado', 500.00), -- Detalle para la Compra 1
	(2, 8, 60.00, 'Pendiente', 480.00), -- Detalle para la Compra 2
	(2, 12, 40.00, 'Pendiente', 480.00), -- Detalle para la Compra 2
	(3, 16, 25.00, 'Comprado', 400.00), -- Detalle para la Compra 3
	(3, 10, 40.00, 'Comprado', 400.00), -- Detalle para la Compra 3
	(4, 9, 100.00, 'Comprado', 900.00), -- Detalle para la Compra 4
	(4, 10, 90.00, 'Comprado', 900.00), -- Detalle para la Compra 4
	(5, 8, 100.00, 'Pendiente', 800.00), -- Detalle para la Compra 5
	(5, 10, 80.00, 'Pendiente', 800.00), -- Detalle para la Compra 5
	(6, 7, 200.00, 'Comprado', 1400.00), -- Detalle para la Compra 6
	(7, 13, 100.00, 'Pendiente', 1300.00), -- Detalle para la Compra 7
	(8, 12, 100.00, 'Comprado', 1200.00), -- Detalle para la Compra 8
	(9, 11, 100.00, 'Pendiente', 1100.00), -- Detalle para la Compra 9
	(10, 10, 100.00, 'Comprado', 1000.00); -- Detalle para la Compra 10
go

-- Insertar datos en la tabla Ventas.MetodosPago
insert into Ventas.MetodosPago values
	--Metodo
	('Efectivo'),       -- 1
	('Tarjeta Debito'), -- 2
	('Credito'),        -- 3
	('ChivoWallet');    -- 4
go
-- Insertar datos en la tabla Ventas.Pagos
insert into Ventas.Pagos values
	--Id_MetodoPago, Monto, FechaPago
	(1, 500.00, '2023-01-05'),  -- Pago en efectivo
	(2, 480.00, '2023-01-10'),  -- Pago con tarjeta de débito
	(3, 400.00, '2023-01-15'),  -- Pago con tarjeta de crédito
	(1, 900.00, '2023-02-05'),  -- Pago en efectivo
	(4, 800.00, '2023-02-10'),  -- Pago con ChivoWallet
	(2, 1400.00, '2023-03-05'), -- Pago con tarjeta de débito
	(3, 1300.00, '2023-03-10'), -- Pago con tarjeta de crédito
	(1, 1200.00, '2023-04-05'), -- Pago en efectivo
	(4, 1100.00, '2023-04-10'), -- Pago con ChivoWallet
	(2, 1000.00, '2023-05-05'); -- Pago con tarjeta de débito
go

-- Insertar datos en la tabla Ventas.Venta
insert into Ventas.Venta values
--Id_Cliente, Id_Usuario, Id_Pago, FechaVenta
(1, 1, 1, '2023-01-05'),
(2, 2, 2, '2023-01-10'),
(3, 3, 3, '2023-01-15'),
(4, 4, 4, '2023-02-05'),
(5, 5, 5, '2023-02-10'),
(6, 6, 6, '2023-03-05'),
(7, 7, 7, '2023-03-10'),
(8, 8, 8, '2023-04-05'),
(9, 9, 9, '2023-04-10'),
(10, 10, 10, '2023-05-05');
go
-- Insertar datos en la tabla Cliente.CarritoCompras
insert into  Cliente.CarritoCompras values
--Id_Producto, Id_Venta, Cantidad, FechaAgregado
(1, 1, 2, '2023-01-05'),
(2, 2, 3, '2023-01-10'),
(3, 3, 4, '2023-01-15'),
(4, 4, 5, '2023-02-05'),
(5, 5, 6, '2023-02-10'),
(6, 6, 7, '2023-03-05'),
(7, 7, 8, '2023-03-10'),
(8, 8, 9, '2023-04-05'),
(9, 9, 10, '2023-04-10'),
(10, 10, 11, '2023-05-05');

-- Insertar datos en la tabla Ventas.DetalleVenta
insert into  Ventas.DetalleVenta values
--Id_Venta, Id_Carrito, Id_Producto, Cantidad, PrecioUnitario, Total
(1, 1, 1, 2, 200.00, 400.00),
(2, 2, 2, 3, 150.00, 450.00),
(3, 3, 3, 4, 100.00, 400.00),
(4, 4, 4, 5, 80.00, 400.00),
(5, 5, 5, 6, 70.00, 420.00),
(6, 6, 6, 7, 60.00, 420.00),
(7, 7, 7, 8, 50.00, 400.00),
(8, 8, 8, 9, 45.00, 405.00),
(9, 9, 9, 10, 40.00, 400.00),
(10, 10, 10, 11, 35.00, 385.00);


select * from Departamento.Departamentos --Listo
select * from Departamento.Municipios --Listo
select * from Departamento.Distritos --Listo
select * from Departamento.Direcciones --Listo
select * from Persona.Cargos --Listo
select * from Persona.Empleados --Listo
select * from Rol.Opciones --Listo
select * from Rol.Roles --Listo
select * from Rol.AsignacionRolesOpciones  --Listo
select * from Rol.Usuarios; --Listo
select * from Grupos.Grupo; --Listo
select * from Cliente.Clientes --Listo
select * from Productos.Inventario --Listo
select * from Productos.Categoria --Listo
select * from Productos.Marca --Listo
select * from Productos.Producto --Listo
select * from Productos.Descuento --Listo
select * from Ventas.Compra --Listo
select * from Ventas.DetalleCompra --Listo
select * from Ventas.MetodosPago --Listo
select * from Ventas.Pagos --Listo
select * from Ventas.Venta --Listo
select * from Ventas.DetalleVenta --Listo
select * from Cliente.CarritoCompras --Listo


