-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-10-2025 a las 03:57:59
-- Versión del servidor: 8.0.43-0ubuntu0.24.04.2
-- Versión de PHP: 8.3.6

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
-- Estructura de tabla para la tabla `flashcards`
--

CREATE TABLE `flashcards` (
  `id` int NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `contenido` varchar(1000) NOT NULL,
  `imgURL` text NOT NULL,
  `notas` varchar(100) NOT NULL,
  `autor` varchar(40) NOT NULL,
  `tipo` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `flashcards`
--

INSERT INTO `flashcards` (`id`, `titulo`, `contenido`, `imgURL`, `notas`, `autor`, `tipo`) VALUES
(16, 'FOTO SIN Tesis 👻', 'La fotosíntesis es un proceso biológico mediante el cual las plantas, algas y algunas bacterias transforman la energía de la luz solar en energía química. Este proceso ocurre en los cloroplastos, donde la clorofila captura la luz solar para convertir dióxido de carbono (CO₂) y agua (H₂O) en glucosa (C₆H₁₂O₆) y oxígeno (O₂). Gracias a la fotosíntesis, se mantiene el equilibrio del oxígeno en la atmósfera y se sustenta la vida en la Tierra.', 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Photosynthesis_equation.svg', 'El proceso opuesto es la respiración celular.', 'Pepe', 'CN'),
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
(27, 'El Realismo Literario', 'Movimiento literario del siglo XIX que buscaba representar la realidad de forma objetiva y detallada. Los autores realistas se interesaban por los problemas sociales, la vida cotidiana y los personajes comunes. Se oponía al Romanticismo, que se centraba en los sentimientos y la imaginación.', 'https://upload.wikimedia.org/wikipedia/commons/f/f7/Reading_books_illustration.png', 'Grandes autores: Gustave Flaubert y Benito Pérez Galdós.', 'Pepe', 'LL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ti` int NOT NULL,
  `rol` varchar(8) NOT NULL,
  `password` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `ti`, `rol`, `password`) VALUES
(1, 'David Arango Valencia', 1031941761, 'ALUMNO', 1031941761),
(2, 'Gerardo de Jesus Sanchez Cano', 123456789, 'DOCENTE', 123456789),
(3, 'Samuel Arango Valencia', 1031940652, 'ALUMNO', 1031940652),
(4, 'Dylan Chica Velasquez', 1040035271, 'ALUMNO', 1040035271),
(5, 'Melany Figueroa García ', 1011513502, 'ALUMNO', 1011513502);

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de la tabla `flashcards`
--
ALTER TABLE `flashcards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
