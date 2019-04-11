PGDMP                         v            BaseClinica    10.3    10.3 E    s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            v           1262    222540    BaseClinica    DATABASE     �   CREATE DATABASE "BaseClinica" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "BaseClinica";
             postgres    false                        2615    248712    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            w           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    248713    areas    TABLE     �   CREATE TABLE public.areas (
    codigo character varying(50) NOT NULL,
    nombre character varying(50),
    descripcion character varying
);
    DROP TABLE public.areas;
       public         postgres    false    7            �            1259    248719    camas    TABLE     �   CREATE TABLE public.camas (
    codigo character varying(50) NOT NULL,
    descripcion character varying(500),
    estado character varying,
    codigo_area character varying(50) NOT NULL
);
    DROP TABLE public.camas;
       public         postgres    false    7            �            1259    248725    camas_paciente    TABLE     �   CREATE TABLE public.camas_paciente (
    codigo_cama character varying(50) NOT NULL,
    cedula_paciente character varying(50) NOT NULL,
    fecha character varying(50) NOT NULL
);
 "   DROP TABLE public.camas_paciente;
       public         postgres    false    7            �            1259    248728    campania    TABLE     �   CREATE TABLE public.campania (
    codigo character varying(50) NOT NULL,
    nombre character varying(50),
    objetivo character varying(50),
    fecha character varying(50),
    cedula character varying(50) NOT NULL
);
    DROP TABLE public.campania;
       public         postgres    false    7            �            1259    248731    campanias_pacientes    TABLE     �   CREATE TABLE public.campanias_pacientes (
    codigo_campania character varying(50) NOT NULL,
    cedula_paciente character varying(50) NOT NULL
);
 '   DROP TABLE public.campanias_pacientes;
       public         postgres    false    7            �            1259    248734    causas    TABLE     �   CREATE TABLE public.causas (
    codigo character varying(50) NOT NULL,
    nombre character varying(50),
    descripcion character varying(300)
);
    DROP TABLE public.causas;
       public         postgres    false    7            �            1259    248737    causas_registro    TABLE     �   CREATE TABLE public.causas_registro (
    codigo_registro character varying(50) NOT NULL,
    codigo_causa character varying(50) NOT NULL
);
 #   DROP TABLE public.causas_registro;
       public         postgres    false    7            �            1259    248740    cita    TABLE       CREATE TABLE public.cita (
    codigo character varying(50) NOT NULL,
    fecha character varying(50),
    hora character varying(50),
    costo integer,
    descuento character varying(50),
    cedula character varying(50) NOT NULL,
    cedula_medico character varying(50) NOT NULL
);
    DROP TABLE public.cita;
       public         postgres    false    7            �            1259    248743 	   empleados    TABLE        CREATE TABLE public.empleados (
    cargo character varying(50),
    salario double precision,
    email character varying(50),
    cedula character varying(50) NOT NULL,
    codigo_area character varying(50) NOT NULL,
    cedula_jefe character varying
);
    DROP TABLE public.empleados;
       public         postgres    false    7            �            1259    248749 
   enfermeras    TABLE     }   CREATE TABLE public.enfermeras (
    "años_experiencia" character varying(50),
    cedula character varying(50) NOT NULL
);
    DROP TABLE public.enfermeras;
       public         postgres    false    7            �            1259    248752    habilidades    TABLE     q   CREATE TABLE public.habilidades (
    codigo character varying(50) NOT NULL,
    nombre character varying(50)
);
    DROP TABLE public.habilidades;
       public         postgres    false    7            �            1259    248755    habilidades_enfermeras    TABLE     �   CREATE TABLE public.habilidades_enfermeras (
    cedula character varying(50) NOT NULL,
    codigo_habilidad character varying(50) NOT NULL
);
 *   DROP TABLE public.habilidades_enfermeras;
       public         postgres    false    7            �            1259    248758 	   historias    TABLE     �   CREATE TABLE public.historias (
    codigo character varying NOT NULL,
    fecha_apertura character varying(50),
    cedula character varying(50) NOT NULL
);
    DROP TABLE public.historias;
       public         postgres    false    7            �            1259    248764    medicamentos    TABLE     �   CREATE TABLE public.medicamentos (
    codigo character varying(50) NOT NULL,
    nombre character varying(50),
    descripcion character varying(50),
    costo integer
);
     DROP TABLE public.medicamentos;
       public         postgres    false    7            �            1259    248767    medicos    TABLE     �   CREATE TABLE public.medicos (
    numero_licencia character varying(50) NOT NULL,
    especialidad character varying(50),
    universidad character varying(50),
    cedula character varying(50) NOT NULL
);
    DROP TABLE public.medicos;
       public         postgres    false    7            �            1259    248770    numero_cita    SEQUENCE     t   CREATE SEQUENCE public.numero_cita
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.numero_cita;
       public       postgres    false    7            �            1259    248772    numero_historia    SEQUENCE     x   CREATE SEQUENCE public.numero_historia
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.numero_historia;
       public       postgres    false    7            �            1259    248774    numero_registro    SEQUENCE     x   CREATE SEQUENCE public.numero_registro
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.numero_registro;
       public       postgres    false    7            �            1259    248776 	   pacientes    TABLE     �   CREATE TABLE public.pacientes (
    seguridad_social character varying(50) NOT NULL,
    fecha_nacimiento character varying(50),
    ocupacion character varying(50),
    cedula character varying(50) NOT NULL,
    campanias integer
);
    DROP TABLE public.pacientes;
       public         postgres    false    7            �            1259    248779    personas    TABLE       CREATE TABLE public.personas (
    cedula character varying(50) NOT NULL,
    nombre character varying(50),
    direccion character varying(50),
    telefono character varying(50),
    contrasena character varying(50),
    tipo_usuario character varying(50)
);
    DROP TABLE public.personas;
       public         postgres    false    7            �            1259    248782    registro    TABLE     �   CREATE TABLE public.registro (
    codigo character varying(50) NOT NULL,
    codigo_cita character varying(50) NOT NULL,
    codigo_historia character varying(50) NOT NULL
);
    DROP TABLE public.registro;
       public         postgres    false    7            �            1259    248785    registros_medicamentos    TABLE     �   CREATE TABLE public.registros_medicamentos (
    codigo_registro character varying(50),
    codigo_medicamento character varying(50)
);
 *   DROP TABLE public.registros_medicamentos;
       public         postgres    false    7            [          0    248713    areas 
   TABLE DATA               <   COPY public.areas (codigo, nombre, descripcion) FROM stdin;
    public       postgres    false    196   �K       \          0    248719    camas 
   TABLE DATA               I   COPY public.camas (codigo, descripcion, estado, codigo_area) FROM stdin;
    public       postgres    false    197   [L       ]          0    248725    camas_paciente 
   TABLE DATA               M   COPY public.camas_paciente (codigo_cama, cedula_paciente, fecha) FROM stdin;
    public       postgres    false    198   �L       ^          0    248728    campania 
   TABLE DATA               K   COPY public.campania (codigo, nombre, objetivo, fecha, cedula) FROM stdin;
    public       postgres    false    199   �L       _          0    248731    campanias_pacientes 
   TABLE DATA               O   COPY public.campanias_pacientes (codigo_campania, cedula_paciente) FROM stdin;
    public       postgres    false    200   gM       `          0    248734    causas 
   TABLE DATA               =   COPY public.causas (codigo, nombre, descripcion) FROM stdin;
    public       postgres    false    201   �M       a          0    248737    causas_registro 
   TABLE DATA               H   COPY public.causas_registro (codigo_registro, codigo_causa) FROM stdin;
    public       postgres    false    202   �M       b          0    248740    cita 
   TABLE DATA               \   COPY public.cita (codigo, fecha, hora, costo, descuento, cedula, cedula_medico) FROM stdin;
    public       postgres    false    203   N       c          0    248743 	   empleados 
   TABLE DATA               \   COPY public.empleados (cargo, salario, email, cedula, codigo_area, cedula_jefe) FROM stdin;
    public       postgres    false    204   \N       d          0    248749 
   enfermeras 
   TABLE DATA               A   COPY public.enfermeras ("años_experiencia", cedula) FROM stdin;
    public       postgres    false    205   �N       e          0    248752    habilidades 
   TABLE DATA               5   COPY public.habilidades (codigo, nombre) FROM stdin;
    public       postgres    false    206   O       f          0    248755    habilidades_enfermeras 
   TABLE DATA               J   COPY public.habilidades_enfermeras (cedula, codigo_habilidad) FROM stdin;
    public       postgres    false    207   YO       g          0    248758 	   historias 
   TABLE DATA               C   COPY public.historias (codigo, fecha_apertura, cedula) FROM stdin;
    public       postgres    false    208   �O       h          0    248764    medicamentos 
   TABLE DATA               J   COPY public.medicamentos (codigo, nombre, descripcion, costo) FROM stdin;
    public       postgres    false    209   �O       i          0    248767    medicos 
   TABLE DATA               U   COPY public.medicos (numero_licencia, especialidad, universidad, cedula) FROM stdin;
    public       postgres    false    210   -P       m          0    248776 	   pacientes 
   TABLE DATA               e   COPY public.pacientes (seguridad_social, fecha_nacimiento, ocupacion, cedula, campanias) FROM stdin;
    public       postgres    false    214   �P       n          0    248779    personas 
   TABLE DATA               a   COPY public.personas (cedula, nombre, direccion, telefono, contrasena, tipo_usuario) FROM stdin;
    public       postgres    false    215   �P       o          0    248782    registro 
   TABLE DATA               H   COPY public.registro (codigo, codigo_cita, codigo_historia) FROM stdin;
    public       postgres    false    216   R       p          0    248785    registros_medicamentos 
   TABLE DATA               U   COPY public.registros_medicamentos (codigo_registro, codigo_medicamento) FROM stdin;
    public       postgres    false    217   5R       x           0    0    numero_cita    SEQUENCE SET     :   SELECT pg_catalog.setval('public.numero_cita', 17, true);
            public       postgres    false    211            y           0    0    numero_historia    SEQUENCE SET     >   SELECT pg_catalog.setval('public.numero_historia', 15, true);
            public       postgres    false    212            z           0    0    numero_registro    SEQUENCE SET     >   SELECT pg_catalog.setval('public.numero_registro', 22, true);
            public       postgres    false    213            �
           2606    248789    areas areas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (codigo);
 :   ALTER TABLE ONLY public.areas DROP CONSTRAINT areas_pkey;
       public         postgres    false    196            �
           2606    248791 "   camas_paciente camas_paciente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.camas_paciente
    ADD CONSTRAINT camas_paciente_pkey PRIMARY KEY (codigo_cama, cedula_paciente, fecha);
 L   ALTER TABLE ONLY public.camas_paciente DROP CONSTRAINT camas_paciente_pkey;
       public         postgres    false    198    198    198            �
           2606    248793    camas camas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.camas
    ADD CONSTRAINT camas_pkey PRIMARY KEY (codigo);
 :   ALTER TABLE ONLY public.camas DROP CONSTRAINT camas_pkey;
       public         postgres    false    197            �
           2606    248795    campania campania_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.campania
    ADD CONSTRAINT campania_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.campania DROP CONSTRAINT campania_pkey;
       public         postgres    false    199            �
           2606    248797 ,   campanias_pacientes campanias_pacientes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.campanias_pacientes
    ADD CONSTRAINT campanias_pacientes_pkey PRIMARY KEY (codigo_campania, cedula_paciente);
 V   ALTER TABLE ONLY public.campanias_pacientes DROP CONSTRAINT campanias_pacientes_pkey;
       public         postgres    false    200    200            �
           2606    248799    causas causas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.causas
    ADD CONSTRAINT causas_pkey PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.causas DROP CONSTRAINT causas_pkey;
       public         postgres    false    201            �
           2606    248801 $   causas_registro causas_registro_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.causas_registro
    ADD CONSTRAINT causas_registro_pkey PRIMARY KEY (codigo_registro, codigo_causa);
 N   ALTER TABLE ONLY public.causas_registro DROP CONSTRAINT causas_registro_pkey;
       public         postgres    false    202    202            �
           2606    248803    cita cita_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT cita_pkey PRIMARY KEY (codigo);
 8   ALTER TABLE ONLY public.cita DROP CONSTRAINT cita_pkey;
       public         postgres    false    203            �
           2606    248805    empleados empleados_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (cedula);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public         postgres    false    204            �
           2606    248807    enfermeras enfermeras_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.enfermeras
    ADD CONSTRAINT enfermeras_pkey PRIMARY KEY (cedula);
 D   ALTER TABLE ONLY public.enfermeras DROP CONSTRAINT enfermeras_pkey;
       public         postgres    false    205            �
           2606    248809 2   habilidades_enfermeras habilidades_enfermeras_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.habilidades_enfermeras
    ADD CONSTRAINT habilidades_enfermeras_pkey PRIMARY KEY (cedula, codigo_habilidad);
 \   ALTER TABLE ONLY public.habilidades_enfermeras DROP CONSTRAINT habilidades_enfermeras_pkey;
       public         postgres    false    207    207            �
           2606    248811    habilidades habilidades_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_pkey PRIMARY KEY (codigo);
 F   ALTER TABLE ONLY public.habilidades DROP CONSTRAINT habilidades_pkey;
       public         postgres    false    206            �
           2606    248813    historias historias_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.historias
    ADD CONSTRAINT historias_pkey PRIMARY KEY (codigo);
 B   ALTER TABLE ONLY public.historias DROP CONSTRAINT historias_pkey;
       public         postgres    false    208            �
           2606    248815    medicamentos medicamentos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.medicamentos
    ADD CONSTRAINT medicamentos_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.medicamentos DROP CONSTRAINT medicamentos_pkey;
       public         postgres    false    209            �
           2606    248817    medicos medicos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT medicos_pkey PRIMARY KEY (numero_licencia);
 >   ALTER TABLE ONLY public.medicos DROP CONSTRAINT medicos_pkey;
       public         postgres    false    210            �
           2606    248819    pacientes pacientes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (seguridad_social);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public         postgres    false    214            �
           2606    248821    personas personas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (cedula);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public         postgres    false    215            �
           2606    248823    registro registro_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.registro DROP CONSTRAINT registro_pkey;
       public         postgres    false    216            [   r   x�˱1F�:���; Z����$K��ҍD�!���}�K�(�ޅ��|�&��2��d���7.���5ܡ�\C>�\|� Tzui��|/;4��)��)�y���b��v)p      \   T   x�3�tN�MT�+M-K�,)*M�400�2���$%� IC$J�3SRR�SRRs<B�`j��L��IN�+)�G(����� z%�      ]   /   x�3�442� N#C]S]C+0�3�2�415� *b���� �;�      ^   Y   x�300�t.�LI�K�W��KK�+I-�(���/����420��50�50T00�#=Nc#C�200B�wO�jN-2��������� X=!O      _   $   x�300�442� .#4���y�H�=... I�
y      `   /   x�300�t�L,*JM�NM.JM����200����,�G����� j�p      a      x�32�400�2QF\1z\\\ H�      b   J   x�}˱� ��=E �C0��).�E��4��]��"׫+�
��$Ά�%4W2ͯ��	RKv��=-�      c   {   x�e�1�0@��9��(��0�]�`�H$An���T�P#�xx�V��B������)l��ơ��Zt�f>ݠn	�����N�ݝ���q��$%��a�P;���Q��w�<�r9b����c�0�;�      d      x�3崴0� .SNs3S����� Q      e   6   x�300�t,��LN,R�̫LMN���K-�200�t.�L
�eޘ_����� h��      f      x���0�#NC.s3S�b���� k��      g   *   x�34�420��50�52�442� .CSdqS3����� �6	%      h   [   x����	�0 �s:E&�V�{�������|�V�����Q��eR�<p��$�j�n���Д�+a>�a�ޅb������X�s/�T-c      i   K   x�3624#N��Ң�����D�м̲Ĝ�TNc�,���1q:g���g�$�(8������&rq��qqq �T�      m   [   x�3426#NCKK3]CC]#S+0�3���KO��L-�W�,.I�M,�4�k1�215� �v�vC#��]sR�K���2��9���b���� F��      n     x�]�1n�0E��),Q;b���\������fNd	��&��r��aV�^A�yPW��@�dG��#ɫO�Ή�-P+�P��ԥkZ��s�>��xal�o&�T7(�4r5��#����m��b�' 4�)�����~��>M>�p�ݸ�8��B�?��`])V0��#{��n�.����h�D]h��[;�|���y�
t��yHs����GYHTl_�&O�?0[���_#��7��C��G��kJl[�a
1���?���9�ۋ���z�      o      x�32�44�44����� B�      p      x�32�44����� 
X�     