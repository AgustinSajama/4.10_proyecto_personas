SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE informacion_personas;
USE informacion_personas;

CREATE TABLE `personas` (
  `IDpersona` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `DNI` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `personas` (`IDpersona`, `Nombre`, `DNI`) VALUES
(1, 'Juan', '54865839'),
(2, 'Miguel', '14482950'),
(3, 'Santiago', '47294376'),
(4, 'Jorge', '28593407'),
(5, 'Ludmila', '39204486');

ALTER TABLE `personas`
  ADD PRIMARY KEY (`IDpersona`);

ALTER TABLE `personas`
  MODIFY `IDpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;