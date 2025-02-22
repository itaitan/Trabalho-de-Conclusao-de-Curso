toc.dat                                                                                             0000600 0004000 0002000 00000026500 13760461055 0014451 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       ,    +            
    x            Odonto    10.13    10.13 (               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                    1262    32977    Odonto    DATABASE        CREATE DATABASE "Odonto" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Odonto";
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                    0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                     3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                    0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         Λ            1259    33126    agenda    TABLE       CREATE TABLE public.agenda (
    id_agenda integer NOT NULL,
    fk_paci integer NOT NULL,
    fk_doutor integer NOT NULL,
    data date NOT NULL,
    hora character varying(10) NOT NULL,
    motivo character varying(100) NOT NULL,
    status character varying(25) NOT NULL
);
    DROP TABLE public.agenda;
       public         postgres    false    3         Κ            1259    33124    agenda_id_agenda_seq    SEQUENCE        CREATE SEQUENCE public.agenda_id_agenda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.agenda_id_agenda_seq;
       public       postgres    false    203    3                    0    0    agenda_id_agenda_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.agenda_id_agenda_seq OWNED BY public.agenda.id_agenda;
            public       postgres    false    202         Ι            1259    33108    doutores    TABLE     :  CREATE TABLE public.doutores (
    id_doutor integer NOT NULL,
    nome_doutor character varying(50) NOT NULL,
    cro_doutor character varying(20) NOT NULL,
    telefone1_doutor character varying(20) NOT NULL,
    telefone2_doutor character varying(20),
    especialidade_doutor character varying(30) NOT NULL
);
    DROP TABLE public.doutores;
       public         postgres    false    3         Θ            1259    33106    doutores_id_doutor_seq    SEQUENCE        CREATE SEQUENCE public.doutores_id_doutor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.doutores_id_doutor_seq;
       public       postgres    false    3    201                    0    0    doutores_id_doutor_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.doutores_id_doutor_seq OWNED BY public.doutores.id_doutor;
            public       postgres    false    200         Η            1259    33098 	   pacientes    TABLE       CREATE TABLE public.pacientes (
    id_paciente integer NOT NULL,
    nome_paciente character varying(50) NOT NULL,
    rg_paciente character varying(25) NOT NULL,
    cpf_paciente character varying(25) NOT NULL,
    telefone1_paciente character varying(20) NOT NULL,
    telefone2_paciente character varying(20),
    cep_paciente character varying(15),
    cidade_paciente character varying(25) NOT NULL,
    bairro_paciente character varying(25),
    rua_paciente character varying(40),
    complemento_paciente character varying(50)
);
    DROP TABLE public.pacientes;
       public         postgres    false    3         Ζ            1259    33096    pacientes_id_paciente_seq    SEQUENCE        CREATE SEQUENCE public.pacientes_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pacientes_id_paciente_seq;
       public       postgres    false    3    199                    0    0    pacientes_id_paciente_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pacientes_id_paciente_seq OWNED BY public.pacientes.id_paciente;
            public       postgres    false    198         Ε            1259    33013    users    TABLE     Θ   CREATE TABLE public.users (
    id_user integer NOT NULL,
    nome_user character varying(50) NOT NULL,
    login_user character varying(25) NOT NULL,
    senha_user character varying(25) NOT NULL
);
    DROP TABLE public.users;
       public         postgres    false    3         Δ            1259    33011    users_id_user_seq    SEQUENCE        CREATE SEQUENCE public.users_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_id_user_seq;
       public       postgres    false    3    197                    0    0    users_id_user_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;
            public       postgres    false    196         
           2604    33129    agenda id_agenda    DEFAULT     t   ALTER TABLE ONLY public.agenda ALTER COLUMN id_agenda SET DEFAULT nextval('public.agenda_id_agenda_seq'::regclass);
 ?   ALTER TABLE public.agenda ALTER COLUMN id_agenda DROP DEFAULT;
       public       postgres    false    202    203    203         
           2604    33111    doutores id_doutor    DEFAULT     x   ALTER TABLE ONLY public.doutores ALTER COLUMN id_doutor SET DEFAULT nextval('public.doutores_id_doutor_seq'::regclass);
 A   ALTER TABLE public.doutores ALTER COLUMN id_doutor DROP DEFAULT;
       public       postgres    false    200    201    201         
           2604    33101    pacientes id_paciente    DEFAULT     ~   ALTER TABLE ONLY public.pacientes ALTER COLUMN id_paciente SET DEFAULT nextval('public.pacientes_id_paciente_seq'::regclass);
 D   ALTER TABLE public.pacientes ALTER COLUMN id_paciente DROP DEFAULT;
       public       postgres    false    198    199    199         
           2604    33016    users id_user    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN id_user DROP DEFAULT;
       public       postgres    false    197    196    197                   0    33126    agenda 
   TABLE DATA               [   COPY public.agenda (id_agenda, fk_paci, fk_doutor, data, hora, motivo, status) FROM stdin;
    public       postgres    false    203       2834.dat           0    33108    doutores 
   TABLE DATA                  COPY public.doutores (id_doutor, nome_doutor, cro_doutor, telefone1_doutor, telefone2_doutor, especialidade_doutor) FROM stdin;
    public       postgres    false    201       2832.dat           0    33098 	   pacientes 
   TABLE DATA               Φ   COPY public.pacientes (id_paciente, nome_paciente, rg_paciente, cpf_paciente, telefone1_paciente, telefone2_paciente, cep_paciente, cidade_paciente, bairro_paciente, rua_paciente, complemento_paciente) FROM stdin;
    public       postgres    false    199       2830.dat           0    33013    users 
   TABLE DATA               K   COPY public.users (id_user, nome_user, login_user, senha_user) FROM stdin;
    public       postgres    false    197       2828.dat            0    0    agenda_id_agenda_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.agenda_id_agenda_seq', 17, true);
            public       postgres    false    202                     0    0    doutores_id_doutor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.doutores_id_doutor_seq', 7, true);
            public       postgres    false    200         !           0    0    pacientes_id_paciente_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pacientes_id_paciente_seq', 14, true);
            public       postgres    false    198         "           0    0    users_id_user_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_id_user_seq', 17, true);
            public       postgres    false    196         
           2606    33131    agenda agenda_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_pkey PRIMARY KEY (id_agenda);
 <   ALTER TABLE ONLY public.agenda DROP CONSTRAINT agenda_pkey;
       public         postgres    false    203         
           2606    33115 !   doutores doutores_nome_doutor_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.doutores
    ADD CONSTRAINT doutores_nome_doutor_key UNIQUE (nome_doutor);
 K   ALTER TABLE ONLY public.doutores DROP CONSTRAINT doutores_nome_doutor_key;
       public         postgres    false    201         
           2606    33113    doutores doutores_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.doutores
    ADD CONSTRAINT doutores_pkey PRIMARY KEY (id_doutor);
 @   ALTER TABLE ONLY public.doutores DROP CONSTRAINT doutores_pkey;
       public         postgres    false    201         
           2606    33105 %   pacientes pacientes_nome_paciente_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_nome_paciente_key UNIQUE (nome_paciente);
 O   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_nome_paciente_key;
       public         postgres    false    199         
           2606    33103    pacientes pacientes_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id_paciente);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public         postgres    false    199         
           2606    33018    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    197         
           2606    33137    agenda agenda_fk_doutor_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_fk_doutor_fkey FOREIGN KEY (fk_doutor) REFERENCES public.doutores(id_doutor);
 F   ALTER TABLE ONLY public.agenda DROP CONSTRAINT agenda_fk_doutor_fkey;
       public       postgres    false    203    201    2701         
           2606    33132    agenda agenda_fk_paci_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_fk_paci_fkey FOREIGN KEY (fk_paci) REFERENCES public.pacientes(id_paciente);
 D   ALTER TABLE ONLY public.agenda DROP CONSTRAINT agenda_fk_paci_fkey;
       public       postgres    false    203    2697    199                                                                                                                                                                                                        2834.dat                                                                                            0000600 0004000 0002000 00000001474 13760461055 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	3	2020-10-22	13:30	Retirada de Sizo	Concluido
3	1	1	2020-10-22	13:20	Retirar o Sizo e limpeza	Concluido
5	1	1	2020-10-24	12:00	 Primeiro	Concluido
4	1	1	2020-10-24	13:00	Segundo	Concluido
2	1	1	2020-10-31	00:00	Limpeza 	Concluido
6	6	3	2020-10-31	10:00	Avaliacao ortodontica	Concluido
7	1	3	2020-10-31	10:15	Limpeza de Dente	Concluido
9	4	3	2020-10-26	14:00	Profilaxia 	Concluido
10	4	3	2020-10-26	14:00	Profilaxia	Concluido
13	4	3	2020-11-02	13:00	                Retirar o Sizo	Concluido
11	4	1	2020-10-26	14:00	Profilaxia	Concluido
12	4	3	2020-10-26	14:00	Profilaxia	Concluido
8	4	3	2020-10-31	16:00	limpeza no dente	Concluido
14	6	6	2020-11-23	13:00	Sizo, carie	Concluido
16	4	6	2020-11-30	13:00	Limpeza 	Aberto
17	1	6	2020-11-30	13:01	1 minuto depois	Aberto
15	13	6	2020-11-30	13:00	Limpeza dentΓΒ‘ria 	Concluido
\.


                                                                                                                                                                                                    2832.dat                                                                                            0000600 0004000 0002000 00000000354 13760461055 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Xiva	5648-SP	(99)99999-9999	999999	Ortodontico
3	Carlos Alberto	5886-45SP	(11) 95566-7700	nao possui	Clinico Geral
2	Paulo Cassola	5648-SP	(11) 97469-1552	(11) 97469-1655	Estetica
6	felipeeeeeee	5648-SP		(11) 97469-1552	Estetica
\.


                                                                                                                                                                                                                                                                                    2830.dat                                                                                            0000600 0004000 0002000 00000001034 13760461055 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Paulo	00.000.000-00	399.028.318.93	(11)97469-1552	(11)97469-1655	08715-150	Mogi das Cruzes	Vila Natal	Prof Emilio Augusto Ferreira	N 16
1	Paulo Cassola	Nao sabe	399.028.318.93	(11)97469-1552	(11)97469-1655	08715-150	Mogi das Cruzes	Vila Natal	Prof Emilio Augusto Ferreira	N 167-A
6	Xiva Akemi	53.724.254-5	484.378.568-76	(11) 97469-1552	971312823	08715-150	Mogi das Cruzes	Vila Natal	Rua Prof Emilio Augusto Ferreira	N 167-A (Casa)
13	itaita	00.000.000-00	000.000.000-00	11987422886		08615060	Suzano	Vila Urupes	Rua Ipes	ap 233 1001
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    2828.dat                                                                                            0000600 0004000 0002000 00000000141 13760461055 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        15	Felipe Siqueira	lipe	lipe
16	Paulo	EXES	di
17	Itaitan	ita	ita
6	Paulo Cassola	Cassola	Pc
\.


                                                                                                                                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000024414 13760461055 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13
-- Dumped by pg_dump version 10.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.agenda DROP CONSTRAINT agenda_fk_paci_fkey;
ALTER TABLE ONLY public.agenda DROP CONSTRAINT agenda_fk_doutor_fkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_nome_paciente_key;
ALTER TABLE ONLY public.doutores DROP CONSTRAINT doutores_pkey;
ALTER TABLE ONLY public.doutores DROP CONSTRAINT doutores_nome_doutor_key;
ALTER TABLE ONLY public.agenda DROP CONSTRAINT agenda_pkey;
ALTER TABLE public.users ALTER COLUMN id_user DROP DEFAULT;
ALTER TABLE public.pacientes ALTER COLUMN id_paciente DROP DEFAULT;
ALTER TABLE public.doutores ALTER COLUMN id_doutor DROP DEFAULT;
ALTER TABLE public.agenda ALTER COLUMN id_agenda DROP DEFAULT;
DROP SEQUENCE public.users_id_user_seq;
DROP TABLE public.users;
DROP SEQUENCE public.pacientes_id_paciente_seq;
DROP TABLE public.pacientes;
DROP SEQUENCE public.doutores_id_doutor_seq;
DROP TABLE public.doutores;
DROP SEQUENCE public.agenda_id_agenda_seq;
DROP TABLE public.agenda;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agenda (
    id_agenda integer NOT NULL,
    fk_paci integer NOT NULL,
    fk_doutor integer NOT NULL,
    data date NOT NULL,
    hora character varying(10) NOT NULL,
    motivo character varying(100) NOT NULL,
    status character varying(25) NOT NULL
);


ALTER TABLE public.agenda OWNER TO postgres;

--
-- Name: agenda_id_agenda_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agenda_id_agenda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agenda_id_agenda_seq OWNER TO postgres;

--
-- Name: agenda_id_agenda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agenda_id_agenda_seq OWNED BY public.agenda.id_agenda;


--
-- Name: doutores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doutores (
    id_doutor integer NOT NULL,
    nome_doutor character varying(50) NOT NULL,
    cro_doutor character varying(20) NOT NULL,
    telefone1_doutor character varying(20) NOT NULL,
    telefone2_doutor character varying(20),
    especialidade_doutor character varying(30) NOT NULL
);


ALTER TABLE public.doutores OWNER TO postgres;

--
-- Name: doutores_id_doutor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doutores_id_doutor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doutores_id_doutor_seq OWNER TO postgres;

--
-- Name: doutores_id_doutor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doutores_id_doutor_seq OWNED BY public.doutores.id_doutor;


--
-- Name: pacientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pacientes (
    id_paciente integer NOT NULL,
    nome_paciente character varying(50) NOT NULL,
    rg_paciente character varying(25) NOT NULL,
    cpf_paciente character varying(25) NOT NULL,
    telefone1_paciente character varying(20) NOT NULL,
    telefone2_paciente character varying(20),
    cep_paciente character varying(15),
    cidade_paciente character varying(25) NOT NULL,
    bairro_paciente character varying(25),
    rua_paciente character varying(40),
    complemento_paciente character varying(50)
);


ALTER TABLE public.pacientes OWNER TO postgres;

--
-- Name: pacientes_id_paciente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pacientes_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pacientes_id_paciente_seq OWNER TO postgres;

--
-- Name: pacientes_id_paciente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pacientes_id_paciente_seq OWNED BY public.pacientes.id_paciente;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id_user integer NOT NULL,
    nome_user character varying(50) NOT NULL,
    login_user character varying(25) NOT NULL,
    senha_user character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_user_seq OWNER TO postgres;

--
-- Name: users_id_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;


--
-- Name: agenda id_agenda; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agenda ALTER COLUMN id_agenda SET DEFAULT nextval('public.agenda_id_agenda_seq'::regclass);


--
-- Name: doutores id_doutor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doutores ALTER COLUMN id_doutor SET DEFAULT nextval('public.doutores_id_doutor_seq'::regclass);


--
-- Name: pacientes id_paciente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes ALTER COLUMN id_paciente SET DEFAULT nextval('public.pacientes_id_paciente_seq'::regclass);


--
-- Name: users id_user; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);


--
-- Data for Name: agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agenda (id_agenda, fk_paci, fk_doutor, data, hora, motivo, status) FROM stdin;
\.
COPY public.agenda (id_agenda, fk_paci, fk_doutor, data, hora, motivo, status) FROM '$$PATH$$/2834.dat';

--
-- Data for Name: doutores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doutores (id_doutor, nome_doutor, cro_doutor, telefone1_doutor, telefone2_doutor, especialidade_doutor) FROM stdin;
\.
COPY public.doutores (id_doutor, nome_doutor, cro_doutor, telefone1_doutor, telefone2_doutor, especialidade_doutor) FROM '$$PATH$$/2832.dat';

--
-- Data for Name: pacientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pacientes (id_paciente, nome_paciente, rg_paciente, cpf_paciente, telefone1_paciente, telefone2_paciente, cep_paciente, cidade_paciente, bairro_paciente, rua_paciente, complemento_paciente) FROM stdin;
\.
COPY public.pacientes (id_paciente, nome_paciente, rg_paciente, cpf_paciente, telefone1_paciente, telefone2_paciente, cep_paciente, cidade_paciente, bairro_paciente, rua_paciente, complemento_paciente) FROM '$$PATH$$/2830.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id_user, nome_user, login_user, senha_user) FROM stdin;
\.
COPY public.users (id_user, nome_user, login_user, senha_user) FROM '$$PATH$$/2828.dat';

--
-- Name: agenda_id_agenda_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agenda_id_agenda_seq', 17, true);


--
-- Name: doutores_id_doutor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doutores_id_doutor_seq', 7, true);


--
-- Name: pacientes_id_paciente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pacientes_id_paciente_seq', 14, true);


--
-- Name: users_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_user_seq', 17, true);


--
-- Name: agenda agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_pkey PRIMARY KEY (id_agenda);


--
-- Name: doutores doutores_nome_doutor_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doutores
    ADD CONSTRAINT doutores_nome_doutor_key UNIQUE (nome_doutor);


--
-- Name: doutores doutores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doutores
    ADD CONSTRAINT doutores_pkey PRIMARY KEY (id_doutor);


--
-- Name: pacientes pacientes_nome_paciente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_nome_paciente_key UNIQUE (nome_paciente);


--
-- Name: pacientes pacientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id_paciente);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);


--
-- Name: agenda agenda_fk_doutor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_fk_doutor_fkey FOREIGN KEY (fk_doutor) REFERENCES public.doutores(id_doutor);


--
-- Name: agenda agenda_fk_paci_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_fk_paci_fkey FOREIGN KEY (fk_paci) REFERENCES public.pacientes(id_paciente);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    