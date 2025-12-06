-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2025 a las 23:54:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  `comentador` varchar(100) NOT NULL,
  `tarjeta` varchar(100) NOT NULL,
  `autor_tarjeta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `comentador`, `tarjeta`, `autor_tarjeta`) VALUES
(12, 'hola, esto es una prueba del comentario', 'David Arango Valencia', 'tarjetas de prueba', 'David Arango Valencia'),
(13, 'Penes', 'Gerardo de Jesus Sanchez Cano', 'El Realismo Literario', 'Pepe'),
(14, 'Esto es una prueba ', 'Gerardo de Jesus Sanchez Cano', 'targeta de prueba', 'Gerardo de Jesus Sanchez Cano'),
(15, 'ay yayayyai', 'Dylan Chica Velasquez', 'prueba', 'Dylan Chica Velasquez'),
(16, 'WASA', 'Gerardo de Jesus Sanchez Cano', 'El Realismo Literario', 'Pepe'),
(17, 'hola este es un comentario', 'Gerardo de Jesus Sanchez Cano', 'Tarjeta de programación ', 'Gerardo de Jesus Sanchez Cano'),
(18, 'hola este es un comentariop del estudiante', 'David Arango Valencia', 'Tarjeta de programación ', 'Gerardo de Jesus Sanchez Cano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flashcards`
--

CREATE TABLE `flashcards` (
  `id` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `contenido` varchar(1000) NOT NULL,
  `imgURL` text NOT NULL,
  `notas` varchar(100) NOT NULL,
  `autor` varchar(40) NOT NULL,
  `tipo` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `flashcards`
--

INSERT INTO `flashcards` (`id`, `titulo`, `contenido`, `imgURL`, `notas`, `autor`, `tipo`) VALUES
(16, 'fotosíntesis', 'La fotosíntesis es un proceso biológico mediante el cual las plantas, algas y algunas bacterias transforman la energía de la luz solar en energía química. Este proceso ocurre en los cloroplastos, donde la clorofila captura la luz solar para convertir dióxido de carbono (CO₂) y agua (H₂O) en glucosa (C₆H₁₂O₆) y oxígeno (O₂). Gracias a la fotosíntesis, se mantiene el equilibrio del oxígeno en la atmósfera y se sustenta la vida en la Tierra.', 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Photosynthesis_equation.svg', 'El proceso opuesto es la respiración celular.', 'Pepe', 'CN'),
(17, 'Sistema Nervioso Humano', 'El sistema nervioso controla y coordina las funciones del cuerpo. Está formado por el sistema nervioso central (encéfalo y médula espinal) y el sistema nervioso periférico (nervios que conectan con el resto del cuerpo). Sus principales funciones son recibir estímulos, procesar información y generar respuestas adecuadas. Permite desde acciones simples como mover un músculo hasta procesos complejos como pensar o recordar.', 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Nervous_system_diagram.png', 'Las neuronas son las unidades básicas de transmisión de información.', 'Pepe', 'CN'),
(18, 'Ecosistemas', 'Un ecosistema es un conjunto de organismos vivos (biocenosis) y el entorno físico donde viven (biotopo), que interactúan entre sí. Los ecosistemas pueden ser terrestres o acuáticos, y dentro de ellos se establecen relaciones como la depredación, el mutualismo o la competencia. Cada organismo cumple un rol ecológico, y los ecosistemas mantienen su equilibrio gracias al flujo de energía y al ciclo de los nutrientes.', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Ecosystem_diagram.jpg', 'El equilibrio ecológico puede romperse por la contaminación o la deforestación.', 'Pepe', 'CN'),
(19, 'La Revolución Industrial', 'La Revolución Industrial fue un proceso de transformación económica, social y tecnológica que comenzó en Inglaterra en el siglo XVIII. Se caracterizó por el uso de nuevas máquinas, el desarrollo de fábricas y el crecimiento urbano. Esta revolución cambió radicalmente las formas de trabajo, la producción y la estructura social, dando origen al capitalismo moderno y a la sociedad industrial.', 'https://upload.wikimedia.org/wikipedia/commons/3/37/Powerloom_weaving_factory_1835.jpg', 'Introdujo la máquina de vapor y la producción en masa.', 'Pepe', 'CS'),
(20, 'La Independencia de América Latina', 'Fue un proceso histórico en el que los pueblos latinoamericanos se liberaron del dominio colonial español entre los siglos XVIII y XIX. Inspirados en las ideas de libertad y derechos humanos, surgieron líderes como Simón Bolívar, José de San Martín y Miguel Hidalgo. Las guerras de independencia transformaron el mapa político del continente, dando origen a las repúblicas modernas.', 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Battle_of_Ayacucho.png', 'En Colombia, la independencia se consolidó en la Batalla de Boyacá (1819).', 'Pepe', 'CS'),
(21, 'Globalización', 'La globalización es un proceso de interconexión económica, tecnológica, política y cultural entre los países del mundo. Implica la expansión del comercio internacional, el avance de las telecomunicaciones y la difusión cultural. Aunque facilita el acceso a bienes y conocimiento, también genera desigualdades y homogeneización cultural.', 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Globalization_internet_network.png', 'Internet es uno de los principales motores de la globalización moderna.', 'Pepe', 'CS'),
(22, 'El teorema de pitagoras', 'El teorema de Pitágoras establece que, en un triángulo rectángulo, el cuadrado de la hipotenusa (el lado opuesto al ángulo recto) es igual a la suma de los cuadrados de los catetos. Su fórmula es: a² + b² = c². Este teorema es fundamental en la geometría y se aplica en la arquitectura, navegación y física.', 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Pythagorean.svg', 'Funciona solo en triángulos rectángulos.', 'Pepe', 'M'),
(23, 'Funciones Matemáticas', 'Una función es una relación entre dos conjuntos en la que a cada valor del conjunto de entrada (dominio) le corresponde exactamente un valor del conjunto de salida (rango). Se representa como f(x). Las funciones pueden ser lineales, cuadráticas, exponenciales o trigonométricas. Su estudio permite modelar fenómenos naturales y resolver problemas en física o economía.', 'https://upload.wikimedia.org/wikipedia/commons/5/55/Linear_equation_graph.svg', 'La forma general de una función lineal es f(x) = mx + b.', 'Pepe', 'M'),
(24, 'Probabilidad', 'La probabilidad mide la posibilidad de que ocurra un evento. Se calcula dividiendo los casos favorables entre los casos posibles, siempre que todos sean igualmente probables. Se expresa con valores entre 0 (imposible) y 1 (seguro). Es una herramienta clave para la estadística, la ciencia de datos y la toma de decisiones bajo incertidumbre.', 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Probability_diagram.png', 'P(evento) = casos favorables / casos posibles.', 'Pepe', 'M'),
(25, 'Figuras Literarias', 'Son recursos del lenguaje que los autores usan para embellecer o dar expresividad a sus textos. Entre las más comunes están la metáfora (comparar sin usar “como”), la hipérbole (exageración), la anáfora (repetición al inicio de frases) y la personificación (atribuir cualidades humanas a objetos o animales). Su uso hace que los textos sean más artísticos y emotivos.', 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Book_and_pen.jpg', 'Usadas principalmente en poesía y literatura narrativa.', 'Pepe', 'LL'),
(26, 'Tipos de Narrador', 'El narrador es quien cuenta la historia en una obra literaria. Puede ser protagonista (cuenta en primera persona), testigo (observa los hechos) o omnisciente (conoce todo lo que ocurre y lo que piensan los personajes). El tipo de narrador influye en la perspectiva y la comprensión del lector.', 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Storytelling_illustration.jpg', 'El narrador omnisciente es el más común en novelas clásicas.', 'Pepe', 'LL'),
(27, 'El Realismo Literario', 'Movimiento literario del siglo XIX que buscaba representar la realidad de forma objetiva y detallada. Los autores realistas se interesaban por los problemas sociales, la vida cotidiana y los personajes comunes. Se oponía al Romanticismo, que se centraba en los sentimientos y la imaginación.', 'https://upload.wikimedia.org/wikipedia/commons/f/f7/Reading_books_illustration.png', 'Grandes autores: Gustave Flaubert y Benito Pérez Galdós.', 'Pepe', 'LL'),
(40, 'targeta de prueba', 'probando funciones', 'data:image/jpeg;base64,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', 'probando', 'Gerardo de Jesus Sanchez Cano', 'CN'),
(55, 'tarjetas de prueba', 'prueba', 'data:image/jpeg;base64,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', 'es una prueba', 'David Arango Valencia', 'CN'),
(57, 'Tarjeta de programación ', 'int: variable que almacena numeros.\r\nString: Variable que almacena cadena de caracteres.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLZhrx81T65friQZstcXUv_VCjMMFlP3y0uQ&s', 'Para el examen de noveno', 'Gerardo de Jesus Sanchez Cano', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rol` varchar(100) NOT NULL,
  `password` int(11) NOT NULL,
  `grado_tabla` varchar(10) NOT NULL,
  `materia_preferida` varchar(255) NOT NULL,
  `ti` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `rol`, `password`, `grado_tabla`, `materia_preferida`, `ti`) VALUES
(1, 'sofia usuga alvarez', 'ALUMNO', 2014, '5D', 'ed. Fisica ', 2014),
(2, 'julieta quintero londoño', 'ALUMNO', 1038873324, '5D', 'ed. Fisica ', 1038873324),
(3, 'jacob steven cardona colorado ', 'ALUMNO', 1195214849, '5D', 'artistica', 1195214849),
(4, 'josue urrego giraldo ', 'ALUMNO', 4561, '5D', 'español\r\n', 4561),
(5, 'emanuel Valencia Pamplona', 'ALUMNO', 1195214671, '5D', 'matematicas \r\n', 1195214671),
(6, 'matias mejia estrada \r\n', 'ALUMNO', 1195214594, '5D', 'español', 1195214594),
(7, 'samuel agudelo perez \r\n', 'ALUMNO', 1195214755, '5D', 'ed. Fisica \r\n', 1195214755),
(8, 'julieta montoya Gomez \r\n', 'ALUMNO', 1039469415, '5D', 'Ingles \r\n', 1039469415),
(9, 'valeria penagos soto\r\n', 'ALUMNO', 1195214857, '5D', 'Matematicas ', 1195214857),
(10, 'bryan stiven rodriguez buitrago\r\n', 'ALUMNO', 1031543981, '5D', 'ciencias naturales', 1031543981),
(11, 'jose manuel gomez cañas', 'ALUMNO', 1195214570, '5D', 'ed. fisica', 1195214570),
(12, 'susana mojica restrepo \r\n', 'ALUMNO', 1155714549, '5D', 'ed. fisica', 1155714549),
(13, 'mariangel mejia mesa\r\n', 'ALUMNO', 1021935535, '5D', 'matematicas \r\n', 1021935535),
(14, 'Salome Perez rueda', 'ALUMNO', 5678, '5D', 'ciencias naturales \r\n', 5678),
(15, 'emily velasquez Venegas \r\n', 'ALUMNO', 2117, '5D', 'ed. fisica', 2117),
(16, 'julieta Mejia jaramillo \r\n', 'ALUMNO', 1714, '5D', 'ed. fisica', 1714),
(17, 'mariana rojas vergara \r\n', 'ALUMNO', 1039739366, '5D', 'ingles', 1039739366),
(18, 'laura Rendon cardona \r\n', 'ALUMNO', 1011409629, '5D', 'ed. fisica', 1011409629),
(19, 'matias sanchez sanchez \r\n', 'ALUMNO', 2424, '5D', 'ed. fisica', 2424),
(20, 'Jeronimo Balvin valencia \r\n', 'ALUMNO', 1155714647, '5D', 'ed. fisica', 1155714647),
(21, 'gabriela restrepo', 'ALUMNO', 1000, '4B', 'ed. fisica', 1000),
(22, 'mauro gabriel\r\n', 'ALUMNO', 10000, '4B', 'ed. fisica', 10000),
(23, 'Jose parra\r\n', 'ALUMNO', 7472, '4B', 'matematicas', 7472),
(24, 'emmanuel grisales', 'ALUMNO', 5000, '4B', 'ed. fisica', 5000),
(25, 'michael ochoa', 'ALUMNO', 6700, '4B', 'ed. fisica', 6700),
(26, 'samuel laverde', 'ALUMNO', 8674, '4B', 'artistica', 8674),
(27, 'dylan restrepo\r\n', 'ALUMNO', 7910, '4B', 'artistica', 7910),
(28, 'Simon bedoya', 'ALUMNO', 1515, '4B', 'ed. fisica', 1515),
(29, 'miguel berrio', 'ALUMNO', 71096, '4B', 'matematicas', 71096),
(30, 'isabela gallego', 'ALUMNO', 10004007, '4B', 'artistica', 10004007),
(31, 'luciana Rendon', 'ALUMNO', 6678, '4B', 'matematicas', 6678),
(32, 'emiliana rios', 'ALUMNO', 1074399593, '5E', 'artistica', 1074399593),
(33, 'maximiliano gallego', 'ALUMNO', 1195214570, '5E', 'ed. fisica', 1195214570),
(34, 'celeste atenea vega', 'ALUMNO', 1017939659, '5E', 'ed. fisica', 1017939659),
(35, 'martin david zapata', 'ALUMNO', 1036647086, '5E', 'matematicas', 1036647086),
(36, 'ximena gomez', 'ALUMNO', 1155714203, '5E', 'sociales', 1155714203),
(37, 'zamanta vinazque', 'ALUMNO', 140575993, '5E', 'matematicas', 140575993),
(38, 'juan jose pelaes', 'ALUMNO', 103353614, '5E', 'sociales', 103353614),
(39, 'matias bedoya', 'ALUMNO', 828460056, '5E', 'matematicas', 828460056),
(40, 'emanuel piedrahita', 'ALUMNO', 1017957523, '5E', 'etica', 1017957523),
(41, 'alejandro valencia', 'ALUMNO', 1195214504, '5E', 'etica', 1195214504),
(42, 'nicolas vanegas', 'ALUMNO', 1037649940, '5E', 'ed. fisica', 1037649940),
(43, 'eliana orraldo', 'ALUMNO', 85319562, '5E', 'ed. fisica', 85319562),
(44, 'ana luisa tobon giraldo', 'ALUMNO', 1020122018, '5E', 'matematicas', 1020122018),
(45, 'sammy henao calderon', 'ALUMNO', 1032027091, '5E', 'español', 1032027091),
(46, 'eliana valencia', 'ALUMNO', 1155715039, '5E', 'artistica', 1155715039),
(47, 'maria jose gonzales castaño', 'ALUMNO', 1155714894, '5E', 'artistica', 1155714894),
(48, 'isaac zapata', 'ALUMNO', 140575484, '5E', 'ed. fisica', 140575484),
(49, 'thomas molina', 'ALUMNO', 131094098, '5E', 'ed. fisica', 131094098),
(50, 'matias rios', 'ALUMNO', 1038873654, '5E', 'matematicas', 1038873654),
(51, 'emily sanchez', 'ALUMNO', 145214554, '5E', 'geometria', 145214554),
(52, 'mariangel velazques', 'ALUMNO', 195214790, '5E', 'matematicas', 195214790),
(53, 'josue agudelo', 'ALUMNO', 120315851, '5E', 'ed. fisica', 120315851),
(54, 'simon jaramillo', 'ALUMNO', 1128281418, '5E', 'ed. fisica', 1128281418),
(55, 'samuel ramirez', 'ALUMNO', 1195214813, '5E', 'artistica', 1195214813),
(56, 'sofia valencia villa', 'ALUMNO', 95462, '5B', 'ed. fisica', 95462),
(57, 'valery henao gomez', 'ALUMNO', 62145, '5B', 'ed. fisica', 62145),
(58, 'dulce maria montoya vasco', 'ALUMNO', 1143965, '5B', 'ingles', 1143965),
(59, 'samuel arango oquendo', 'ALUMNO', 256974, '5B', 'matematicas', 256974),
(60, 'maria isabel bastidas delgado ', 'ALUMNO', 1195215181, '5B', 'matematicas', 1195215181),
(61, 'jeronimo tobon', 'ALUMNO', 65425528, '5B', 'ciencias naturales', 65425528),
(62, 'martin arango', 'ALUMNO', 165487, '5B', 'geometria', 165487),
(63, 'luciana betancur agudelo', 'ALUMNO', 478521, '5B', 'ciencias naturales', 478521),
(64, 'samuel marinez chantaca', 'ALUMNO', 984621, '5B', 'matematicas', 984621),
(65, 'emiliano gonzales yepes', 'estudiantes', 965482, '4B', 'matematicas', 965482),
(66, 'celeste perez yate', 'ALUMNO', 1035981890, '4B', 'ingles', 1035981890),
(67, 'celeste quiceno martinez', 'ALUMNO', 1195215293, '4B', 'ed. fisica', 1195215293),
(68, 'sofia arroyave vasquez', 'ALUMNO', 1195214878, '5B', 'ed. fisica', 1195214878),
(69, 'matias arias valencia', 'ALUMNO', 1155714490, '5B', 'ed. fisica ', 1155714490),
(70, 'antony vargas valencia', 'ALUMNO', 1195214408, '5B', 'ed. fisica', 1195214408),
(71, 'jeronimo ramirez rivas', 'ALUMNO', 1013463519, '9B', 'matematicas', 1013463519),
(72, 'felipe ortega', 'ALUMNO', 1046709798, '9B', 'matematicas', 1046709798),
(73, 'hellen guerra', 'ALUMNO', 1023528613, '11B', 'español', 1023528613),
(74, 'juan pablo sanchez', 'DOCENTE', 1234989476, 'NA', 'ed. fisica', 1234989476),
(75, 'isaac medina osorio', 'ALUMNO', 1028889328, '5A', 'ed. fisica', 1028889328),
(76, 'mariangel vargas vargas', 'estudiantes', 55448855, '4B', 'etica', 55448855),
(77, 'matthew andres reina', 'ALUMNO', 1224458, '4B', 'ciencias naturales', 1224458),
(78, 'mariana lopez', 'ALUMNO', 213584, '4B', 'ed. fisica', 213584),
(79, 'julieta jaramillo', 'ALUMNO', 5658852, '4B', 'ed. fisica', 5658852),
(80, 'maria jose cano', 'ALUMNO', 1023535775, '4B', 'artistica', 1023535775),
(81, 'mailyn cañas', 'ALUMNO', 5428751, '4B', 'etica', 5428751),
(82, 'miguel angel ospina', 'ALUMNO', 1036675909, '4B', 'matematicas', 1036675909),
(83, 'joshua gomez', 'ALUMNO', 52268822, '4B', 'matematicas', 52268822),
(84, 'rafaela ramirez', 'estudiantes', 1195215225, '4B', 'ingles', 1195215225),
(85, 'emiliano muñoz', 'ALUMNO', 1195215090, '4B', 'artistica', 1195215090),
(86, 'ashley valencia', 'ALUMNO', 1028140899, '11B', 'tecnologia', 1028140899),
(87, 'maria fernanda giraldo', 'ALUMNO', 1035977924, '11B', 'ed. fisica', 1035977924),
(88, 'mateo rodrigez', 'ALUMNO', 1025665334, '11B', 'ingles', 1025665334),
(89, 'juan jose castaño', 'ALUMNO', 1195213348, '11B', 'fisica', 1195213348),
(90, 'samantha restrepo', 'ALUMNO', 1155715197, '5D', 'fisica', 1155715197),
(91, 'miguel gutierrez ', 'ALUMNO', 1155715142, '5A', 'ed. fisica', 1155715142),
(92, 'thomas ramirez', 'ALUMNO', 1155714673, '5A', 'ed. fisica ', 1155714673),
(93, 'emanuel galvin alvarez\r\n', 'ALUMNO', 1195215612, '5C', 'Fisica\r\n', 1195215612),
(94, 'mariana zapata rodriguez \r\n', 'ALUMNO', 920, '5C', 'ed. fisica ', 920),
(95, 'jacobo suaza hoyos\r\n', 'ALUMNO', 456, '5C', 'ed. fisica', 456),
(96, 'alexander ascue munera', 'ALUMNO', 400, '5C', 'ed. fisica ', 400),
(97, 'mariangel muñon guevara\r\n', 'ALUMNO', 311, '5C', 'etica', 311),
(98, 'miguel angel estrada ortega \r\n', 'ALUMNO', 430, '5C', 'matematicas', 430),
(99, 'esteban corrales corrales\r\n', 'ALUMNO', 332, '5C', 'matematicas', 332),
(100, 'Emily paniagua cardenas\r\n', 'ALUMNO', 666, '5C', 'ed. fisica ', 666),
(101, 'Luciano ruiz corcho\r\n', 'ALUMNO', 888, '5C', 'artistica', 888),
(102, 'melanie londoño vargas\r\n', 'ALUMNO', 998, '5C', 'tecnologia ', 998),
(103, 'Ana sofia', 'ALUMNO', 11952, '11B', 'biologia', 11952),
(104, 'Jacobo', 'ALUMNO', 10369, '11D', 'proyecto ', 10369),
(105, 'Isabella', 'ALUMNO', 10320, '11A', 'biologia ', 10320),
(106, 'Salome', 'ALUMNO', 10349, '11A', 'matematicas', 10349),
(107, 'Miguel angel ', 'ALUMNO', 119525, '11A', 'español', 119525),
(108, 'Mariana', 'ALUMNO', 103708, '11A', 'biologia', 103708),
(109, 'Juan jose', 'ALUMNO', 11952, '11A', 'alimentos', 11952),
(110, 'Sofia', 'ALUMNO', 10236, '11A', 'alimentos', 10236),
(111, 'Sara', 'ALUMNO', 10236, '11A', 'alimentos', 10236),
(112, 'Maria isabel', 'ALUMNO', 10388, '11B', 'español', 10388),
(113, 'Helena', 'ALUMNO', 68413, '2D', 'artistica ', 68413),
(114, 'Nicolas', 'ALUMNO', 1023655574, '2D', 'matematicas', 1023655574),
(115, 'Isaac', 'ALUMNO', 35710, '2D', 'artistica', 35710),
(116, 'Juan Jose', 'ALUMNO', 95146, '2D', 'ed. fisica ', 95146),
(117, 'samantha chica', 'ALUMNO', 1035974747, '11D', 'quimica ', 1035974747),
(118, 'maria jose montoya ', 'ALUMNO', 1032014531, '11D', 'proyecto', 1032014531),
(119, 'salome palacio ', 'ALUMNO', 1021926685, '11D', 'español', 1021926685),
(120, 'alejandro forero', 'DOCENTE', 542398, 'NA', 'informatica', 542398),
(121, 'David Arango Valencia', 'DOCENTE', 1031941761, '11C', 'matematicas', 1031941761);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `flashcards`
--
ALTER TABLE `flashcards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `flashcards`
--
ALTER TABLE `flashcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
