CREATE DATABASE NOMINA;
USE NOMINA;
CREATE TABLE PUESTOS_2356(
CODIGO_PUESTO VARCHAR(5) PRIMARY KEY,
NOMBRE_PUESTO VARCHAR(20) NOT NULL,
ESTATUS_PUESTO VARCHAR(1) NOT NULL
)ENGINE=INNODB default CHARSET=LATIN1;

CREATE TABLE DEPARTAMENTOS_2356(
CODIGO_DEPARTAMENTO VARCHAR(5) PRIMARY KEY,
NOMBRE_DEPARTAMENTO VARCHAR(20) NOT NULL,
ESTATUS_DEPARTAMENTO VARCHAR(1) NOT NULL
)ENGINE=INNODB default CHARSET=LATIN1;

CREATE TABLE EMPLEADO_2356(
CODIGO_EMPLEADO VARCHAR(5) PRIMARY KEY,
NOMBRE_EMPLEADO VARCHAR(50) NOT NULL,
CODIGO_PUESTO VARCHAR(5) NOT NULL,
CODIGO_DEPARTAMENTO VARCHAR(5) NOT NULL,
SUELDO_EMPLEADO FLOAT(10,2) NOT NULL,
ESTATUS_EMPLEADO VARCHAR(1) NOT NULL,
FOREIGN KEY (CODIGO_PUESTO) REFERENCES PUESTOS_2356(CODIGO_PUESTO),
FOREIGN KEY (CODIGO_DEPARTAMENTO) REFERENCES DEPARTAMENTOS_2356(CODIGO_DEPARTAMENTO)
)ENGINE=INNODB default CHARSET=LATIN1;

CREATE TABLE CONCEPTO_2356(
CODIGO_CONCEPTO VARCHAR(5) PRIMARY KEY,
NOMBRE_CONCEPTO VARCHAR(60) NOT NULL,
EFECTO_CONCEPTO VARCHAR(1) NOT NULL,
ESTATUS_CONCEPTO VARCHAR(1) NOT NULL
)ENGINE=INNODB default CHARSET=LATIN1;

CREATE TABLE NOMINAE_2356(
CODIGO_NOMINA VARCHAR(5) PRIMARY KEY,
FECHA_INICIAL_NOMINA DATE,
FECHA_FINAL_NOMINA date
)ENGINE=INNODB default CHARSET=LATIN1;

CREATE TABLE NOMINAD_2356(
CODIGO_NOMINA VARCHAR(5),
CODIGO_EMPLEADO VARCHAR(5),
CODIGO_CONCEPTO VARCHAR(5),
VALOR_NOMINAD FLOAT(10,2),
PRIMARY KEY (CODIGO_NOMINA, CODIGO_EMPLEADO, CODIGO_CONCEPTO),
FOREIGN KEY (CODIGO_NOMINA) REFERENCES NOMINAE_2356(CODIGO_NOMINA),
FOREIGN KEY (CODIGO_EMPLEADO) REFERENCES EMPLEADO_2356(CODIGO_EMPLEADO),
FOREIGN KEY (CODIGO_CONCEPTO) REFERENCES CONCEPTO_2356(CODIGO_CONCEPTO)
)ENGINE=INNODB default CHARSET=LATIN1;