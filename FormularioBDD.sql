
/* CREACION DE TABLA DE DATOS ENCAMBEZADO FORMULARIO */
create table Datos_Principales_Formulario(
    Id NUMBER(10) primary key not null,
    Oficina_Registro VARCHAR2(100) not null,
    Uso_Inec NUMBER(6) not null,
    Oficina_No NUMBER(2) not null,
    Uso_Inec_Fecha VARCHAR2(20) not null,
    Provincia VARCHAR(20) not null,
    Canton VARCHAR2(20) not null,
    Parroquita_Urbana_o_Rural VARCHAR2(20) not null,
    Fecha_Incripcion VARCHAR2(20) not null,
    Acta_Incripcion NUMBER(15) not null
);

select * from Datos_Principales_Formulario
select * from Datos_Nacido_Vivo

/* CREAMOS SEQUENCIA PARA EL ID DEL FORMULARIO */
CREATE SEQUENCE Datos_Principales_sequence
  INCREMENT BY 1 MAXVALUE 5000 CYCLE; 

/* CREAMOS UN TRIGGER PARA QUE NOS ACTUALIZE CUANDO VAYAMOS A INGRESAR */
Create or replace TRIGGER Datos_Principales_Trigger
before insert on Datos_Principales_Formulario
for each row
begin
    select Datos_Principales_sequence.NEXTVAL
    into :new.Id
    from dual;
end;

/* TABLA DE DATOS DEL NACIDO */
CREATE TABLE Datos_Nacido_Vivo(
    Nombres VARCHAR(20) not null,
    Apellidos VARCHAR(20) not null,
    Cedula NUMBER(10) primary key not null,
    Sexo VARCHAR(20)not null,
    Fecha_Nacimiento VARCHAR(20) not null,
    Talla NUMBER(2) not null,
    Peso NUMBER(4) not null,
    Semanas_Gestacion NUMBER(2) not null,
    Tipo_Parto VARCHAR2(20) not null,
    Apgar_1 NUMBER(2) not null,
    Apgar_2 NUMBER(2) not null,
    Producto_Embarazo VARCHAR(20) not null,
    Lugar_nacimiento VARCHAR(20) not null,
    Uso_Inec_Centro_Salud NUMBER(7),
    Lugar_Centro_Salud VARCHAR(20) not null,
    Provincia_Centro_Salud VARCHAR(20) not null,
    Canton_Centro_Salud VARCHAR(20) not null,
    Parroquita_Urbana_o_Rural VARCHAR(20) not null,
    Localidad_Centro_Salud VARCHAR(20) not null,
    Dirreccion_Centro_Salud VARCHAR(50) not null,
    Telefono_Centro_Salud NUMBER(10) not null,
    Uso_Inec_DPA NUMBER(5),
    Uso_Inec_Localidad NUMBER(3),
    Asistencia_Nacido VARCHAR(20) not null
)

/* TABLA DATOS DE LA MADRE */

CREATE TABLE Datos_Madre(
   Nombre_Y_Apellidos VARCHAR(50) not null,
   Nacionalidad VARCHAR(20) not null,
   Uso_Inec_Codigo_Pais NUMBER(2),
   Cedula_o_Pasaporte NUMBER(13) primary key not null,
   Fecha_Nacimiento VARCHAR(20) not null,
   Edad NUMBER(2) not null,
   Numero_Control_Prenatal NUMBER(2) not null,
   Numero_Embarazos NUMBER(2) not null,
   Numero_Partos NUMBER(2) not null,
   Numero_Hijos NUMBER(2) not null,
   Numero_Hijos_NaViMu NUMBER(2) not null,
   Numero_Hijos_NaMu NUMBER(2) not null,
   Etnia VARCHAR(20) not null,
   Estado_Civil VARCHAR(20) not null,
   Sabe_Leer_Y_Escribir VARCHAR(4) not null,
   Nivel_Estudios VARCHAR(50) not null,
   Residencia_Provincia VARCHAR(20) not null,
   Residencia_Canton VARCHAR(20) not null,
   Residencia_Parroquia VARCHAR(20) not null,
   Residencia_Localidad VARCHAR(20) not null,
   Residencia_Direccion VARCHAR(20) not null,
   Uso_Inec_DPA NUMBER(5),
   Uso_Inec_Localidad NUMBER(3)
)


/* TABLA DE INFORMACION GENERAL */
CREATE TABLE Informacion_General(
    Nombre_Apellidos_Atendedor VARCHAR(50),
    Cedula_Atendedor  NUMBER(10) PRIMARY KEY,
    Telefono_Atendedor NUMBER(10),
    Firma_Sello_Atendedor VARCHAR(20),
    Uso_Inec_Codificador NUMBER(2),
    Observaciones VARCHAR(100)
)
    
    
    