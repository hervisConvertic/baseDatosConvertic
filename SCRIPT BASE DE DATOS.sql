--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8
-- Dumped by pg_dump version 13.8

-- Started on 2023-03-15 20:18:45

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 213918)
-- Name: carrito_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrito_compra (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    id_producto_talla integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.carrito_compra OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 213916)
-- Name: carrito_compra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carrito_compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrito_compra_id_seq OWNER TO postgres;

--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 200
-- Name: carrito_compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carrito_compra_id_seq OWNED BY public.carrito_compra.id;


--
-- TOC entry 203 (class 1259 OID 213926)
-- Name: ciudades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciudades (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);


ALTER TABLE public.ciudades OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 213924)
-- Name: ciudades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ciudades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ciudades_id_seq OWNER TO postgres;

--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 202
-- Name: ciudades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ciudades_id_seq OWNED BY public.ciudades.id;


--
-- TOC entry 205 (class 1259 OID 213934)
-- Name: colores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colores (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);


ALTER TABLE public.colores OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 213932)
-- Name: colores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colores_id_seq OWNER TO postgres;

--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 204
-- Name: colores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colores_id_seq OWNED BY public.colores.id;


--
-- TOC entry 207 (class 1259 OID 213942)
-- Name: generos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.generos (
    id integer NOT NULL,
    descripcion character varying(255)
);


ALTER TABLE public.generos OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 213940)
-- Name: generos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.generos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generos_id_seq OWNER TO postgres;

--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 206
-- Name: generos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.generos_id_seq OWNED BY public.generos.id;


--
-- TOC entry 209 (class 1259 OID 213950)
-- Name: marcas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcas (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);


ALTER TABLE public.marcas OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 213948)
-- Name: marcas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marcas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marcas_id_seq OWNER TO postgres;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 208
-- Name: marcas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcas_id_seq OWNED BY public.marcas.id;


--
-- TOC entry 211 (class 1259 OID 213958)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    busqueda integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    imagen character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    precio double precision NOT NULL,
    id_color integer NOT NULL,
    id_genero integer NOT NULL,
    id_marca integer NOT NULL
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 213956)
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_seq OWNER TO postgres;

--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 210
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- TOC entry 213 (class 1259 OID 213970)
-- Name: productos_talla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos_talla (
    id integer NOT NULL,
    id_producto integer NOT NULL,
    id_talla integer NOT NULL,
    inventario integer NOT NULL
);


ALTER TABLE public.productos_talla OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 213968)
-- Name: productos_talla_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_talla_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_talla_id_seq OWNER TO postgres;

--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 212
-- Name: productos_talla_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_talla_id_seq OWNED BY public.productos_talla.id;


--
-- TOC entry 215 (class 1259 OID 213978)
-- Name: productos_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos_venta (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    id_producto_talla integer NOT NULL,
    id_venta integer NOT NULL
);


ALTER TABLE public.productos_venta OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 213976)
-- Name: productos_venta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_venta_id_seq OWNER TO postgres;

--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 214
-- Name: productos_venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_venta_id_seq OWNED BY public.productos_venta.id;


--
-- TOC entry 217 (class 1259 OID 213986)
-- Name: tallas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tallas (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);


ALTER TABLE public.tallas OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 213984)
-- Name: tallas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tallas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tallas_id_seq OWNER TO postgres;

--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 216
-- Name: tallas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tallas_id_seq OWNED BY public.tallas.id;


--
-- TOC entry 219 (class 1259 OID 213994)
-- Name: tipos_documento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_documento (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);


ALTER TABLE public.tipos_documento OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 213992)
-- Name: tipos_documento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_documento_id_seq OWNER TO postgres;

--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 218
-- Name: tipos_documento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_documento_id_seq OWNED BY public.tipos_documento.id;


--
-- TOC entry 221 (class 1259 OID 214002)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    apellido character varying(255) NOT NULL,
    contrasena character varying(255) NOT NULL,
    correo character varying(255) NOT NULL,
    documento character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    id_tipodocumento integer NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 214000)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 220
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 223 (class 1259 OID 214013)
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id integer NOT NULL,
    correo character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    fecha date NOT NULL,
    total double precision NOT NULL,
    id_ciudad integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 214011)
-- Name: ventas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ventas_id_seq OWNER TO postgres;

--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 222
-- Name: ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;


--
-- TOC entry 2919 (class 2604 OID 213921)
-- Name: carrito_compra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compra ALTER COLUMN id SET DEFAULT nextval('public.carrito_compra_id_seq'::regclass);


--
-- TOC entry 2920 (class 2604 OID 213929)
-- Name: ciudades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudades ALTER COLUMN id SET DEFAULT nextval('public.ciudades_id_seq'::regclass);


--
-- TOC entry 2921 (class 2604 OID 213937)
-- Name: colores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colores ALTER COLUMN id SET DEFAULT nextval('public.colores_id_seq'::regclass);


--
-- TOC entry 2922 (class 2604 OID 213945)
-- Name: generos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generos ALTER COLUMN id SET DEFAULT nextval('public.generos_id_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 213953)
-- Name: marcas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas ALTER COLUMN id SET DEFAULT nextval('public.marcas_id_seq'::regclass);


--
-- TOC entry 2924 (class 2604 OID 213961)
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- TOC entry 2925 (class 2604 OID 213973)
-- Name: productos_talla id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_talla ALTER COLUMN id SET DEFAULT nextval('public.productos_talla_id_seq'::regclass);


--
-- TOC entry 2926 (class 2604 OID 213981)
-- Name: productos_venta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_venta ALTER COLUMN id SET DEFAULT nextval('public.productos_venta_id_seq'::regclass);


--
-- TOC entry 2927 (class 2604 OID 213989)
-- Name: tallas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tallas ALTER COLUMN id SET DEFAULT nextval('public.tallas_id_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 213997)
-- Name: tipos_documento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_documento ALTER COLUMN id SET DEFAULT nextval('public.tipos_documento_id_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 214005)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 214016)
-- Name: ventas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id SET DEFAULT nextval('public.ventas_id_seq'::regclass);


--
-- TOC entry 3098 (class 0 OID 213918)
-- Dependencies: 201
-- Data for Name: carrito_compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrito_compra (id, cantidad, id_producto_talla, id_usuario) FROM stdin;
23	2	120	4
25	3	112	5
26	4	119	5
\.


--
-- TOC entry 3100 (class 0 OID 213926)
-- Dependencies: 203
-- Data for Name: ciudades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciudades (id, descripcion) FROM stdin;
1	Armenia
2	Barranquilla
3	Bogotá
4	Bucaramanga
5	Cali
6	Cartagena
7	Cúcuta
8	Ibagué
9	Manizales
10	Medellín
11	Pereira
12	Santa Marta
13	Villavicencio
14	Bello
15	Itagui
16	Envigado
\.


--
-- TOC entry 3102 (class 0 OID 213934)
-- Dependencies: 205
-- Data for Name: colores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colores (id, descripcion) FROM stdin;
1	rojo
2	amarillo
3	naranja
4	azul
5	verde
6	violeta
7	blanco
8	negro
9	cafe
10	gris
\.


--
-- TOC entry 3104 (class 0 OID 213942)
-- Dependencies: 207
-- Data for Name: generos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.generos (id, descripcion) FROM stdin;
1	hombre
2	mujer
\.


--
-- TOC entry 3106 (class 0 OID 213950)
-- Dependencies: 209
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcas (id, descripcion) FROM stdin;
1	adidas
2	nike
3	chanel
4	versace
5	dolce & gabbana
6	tommy hilfiger
7	calvin klein
8	caribu
9	arturo calle
10	tennis
\.


--
-- TOC entry 3108 (class 0 OID 213958)
-- Dependencies: 211
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id, busqueda, descripcion, imagen, nombre, precio, id_color, id_genero, id_marca) FROM stdin;
17	7	medias veladas con banda auto ajustable con costura invisible, compresión graduada, puntera costura reforzada.	mediasm.jpg	medias veladas	28000	8	2	4
15	4	falda ideal para utilizarla en actividades deportivas como gimnasio, aeróbicos, yoga o pilates.	faldam.jpg	falda	65000	8	2	2
19	7	saco peludo ideal para clima frío, invierno, confeccionado en Tela térmica	sacom.jpg	saco	130000	8	2	1
6	10	guantes semi-impermeables antideslizantes ajustables recubiertos en el interior en  material térmico	guantesh.jpg	guantes	22000	8	1	10
7	15	 gorra de malla unicolor, ideales para bordar o impresión en vinilo textil	gorrah.jpg	gorra	45000	8	1	7
11	1	bermuda en anti fluido, gruesa, excelente confección, cuatro bolsillos.	bermudah.jpg	bermuda	39000	4	1	9
21	65	vestido sin mangas, elegante y casual, con falda larga, ideal para fiestas y vacaciones.	vestidom.jpg	vestido	109000	8	2	1
4	48	pantaloneta deportiva o casual con bolsillos, forro interior,\r\nofrece gran comodidad.	pantalonetah.jpg	pantaloneta	35000	1	1	9
24	11	short, combina con todo, además tiene desgaste con rotos para dar una apariencia más atractiva.	shortm.jpg	short	94000	4	2	4
13	94	blusa de seda con estilo manga sisa, decorada en el frente y en el cuello, tiene botones dorados.	blusam.jpg	blusa	83000	3	2	4
14	6	jean clásico con bota recta, cinco bolsillos y color índigo oscuro es ideal para las mujeres más tradicionales.	jeanm.jpg	jean	95000	4	2	3
3	2	medias clásicas largas se envían colores surtidos al azar, se pueden escoger los colores.	mediash.jpg	medias	25000	8	1	10
5	78	chaqueta de escote simple, excelente etiqueta y forma, asegúra de que el escote sea recto.	chaquetah.jpg	chaqueta	85000	5	1	6
20	4	chaqueta de invierno impermeable con dos bolsillos laterales en el exterior y capota desmontable	chaquetam.jpg	chaqueta	190000	1	2	3
10	7	buzo elaborado en algodón perchado, de suave textura, estilo moderno, con capucha de cordón ajustable.	buzoh.jpg	buzo	105000	8	1	8
9	8	sudadera impermeable camuflada bota con resorte, material en náutica reforzada.	sudaderah.jpg	sudadera	65000	4	1	10
22	8	leggings en licra con diseño de vanguardia, ideal para actividades deportivas	leggingsm.jpg	leggings	77000	4	2	2
2	2	pantalón con material principal: en algodón 98% con 2% de elastómero tipo sketch\r\ncon cuatro cómodos bolsillos.	pantalonh.jpg	pantalón	75000	8	1	7
16	2	bufanda apta para actividades al aire libre, para protegerte del polvo, arena, viento, sol y humo.	bufandam.jpg	bufanda	60000	7	2	5
1	12	camisa dotación empresarial clásico, composición: 50% algodón y 50% poliéster.	camisah.jpg	camisa	50000	4	1	6
8	7	correa en cuero, adaptable y cómoda, combina con la mayoría de las prendas, garantía de un año.	correah.jpg	correa	38000	9	1	9
12	5	toalla de cuerpo 100% algodón, absorbe la humedad y su tela es térmica.	toallah.jpg	toalla	31000	1	1	6
18	3	gorro pesquero tipo Sombrero, ideal para días de sol, cómodo y versátil.	gorrom.jpg	gorro	67000	8	2	2
23	5	gabán largo combinado, con materiales de hilo y capota, excelente calidad y diseño	gabanm.jpg	gabán	150000	10	2	5
\.


--
-- TOC entry 3110 (class 0 OID 213970)
-- Dependencies: 213
-- Data for Name: productos_talla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos_talla (id, id_producto, id_talla, inventario) FROM stdin;
1	1	1	50
2	2	1	50
3	3	1	50
7	7	1	50
8	8	1	50
9	9	1	50
10	10	1	50
11	11	1	50
12	12	1	50
13	1	2	55
14	2	2	55
15	3	2	55
16	4	2	55
17	5	2	55
19	7	2	55
20	8	2	55
21	9	2	55
22	10	2	55
23	11	2	55
24	12	2	55
25	1	3	60
26	2	3	60
27	3	3	60
28	4	3	60
29	5	3	60
30	6	3	60
31	7	3	60
32	8	3	60
33	9	3	60
34	10	3	60
35	11	3	60
36	12	3	60
37	1	4	65
38	2	4	65
39	3	4	65
40	4	4	65
42	6	4	65
44	8	4	65
45	9	4	65
46	10	4	65
47	11	4	65
48	12	4	65
49	1	5	45
50	2	5	45
51	3	5	45
52	4	5	45
53	5	5	45
54	6	5	45
55	7	5	45
56	8	5	45
57	9	5	45
58	10	5	45
59	11	5	45
60	12	5	45
61	13	5	40
62	14	5	40
63	15	5	40
64	16	5	40
65	17	5	40
66	18	5	40
67	19	5	40
68	20	5	40
69	21	5	40
70	22	5	40
71	23	5	40
72	24	5	40
73	13	4	48
74	14	4	48
75	15	4	48
76	16	4	48
77	17	4	48
78	18	4	48
79	19	4	48
80	20	4	48
81	21	4	48
82	22	4	48
83	23	4	48
84	24	4	48
85	13	3	52
86	14	3	52
87	15	3	52
88	16	3	52
89	17	3	52
90	18	3	52
91	19	3	52
92	20	3	52
93	21	3	52
94	22	3	52
95	23	3	52
96	24	3	52
97	13	2	62
98	14	2	62
99	15	2	62
100	16	2	62
101	17	2	62
102	18	2	562
103	19	2	62
104	20	2	62
105	21	2	62
106	22	2	62
107	23	2	62
108	24	2	62
18	6	2	62
111	15	1	70
112	16	1	70
113	17	1	70
114	18	1	70
115	19	1	70
116	20	1	70
118	22	1	70
119	23	1	70
120	24	1	70
6	6	1	48
41	5	4	64
43	7	4	64
109	13	1	68
5	5	1	49
117	21	1	69
4	4	1	47
110	14	1	65
\.


--
-- TOC entry 3112 (class 0 OID 213978)
-- Dependencies: 215
-- Data for Name: productos_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos_venta (id, cantidad, id_producto_talla, id_venta) FROM stdin;
\.


--
-- TOC entry 3114 (class 0 OID 213986)
-- Dependencies: 217
-- Data for Name: tallas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tallas (id, descripcion) FROM stdin;
1	S
2	XS
3	M
4	L
5	XL
\.


--
-- TOC entry 3116 (class 0 OID 213994)
-- Dependencies: 219
-- Data for Name: tipos_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_documento (id, descripcion) FROM stdin;
1	cédula
2	cédula de extranjería
3	pasaporte
\.


--
-- TOC entry 3118 (class 0 OID 214002)
-- Dependencies: 221
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, apellido, contrasena, correo, documento, nombre, id_tipodocumento) FROM stdin;
1	toranzo	Pato123	patricio@gmail.com	123	patricio andres	1
2	Posada	Juang2023	juang@gmail.com	1452	Juan Gabriel	1
3	sierra	Diana2023	dianas@gmail.com	1234	diana milena	2
4	Velez	Carlos2023	carlosv@gmail.com	741	Carlos Antonio	2
5	perez	Lili123	liliana@gmai.com	4521	liliana	2
6	vargas	Diana2023	dianamarcela@gmail.com	12345	diana marcela	1
7	Romero	Diego30	diego@gmail.com	1234	Diego	1
\.


--
-- TOC entry 3120 (class 0 OID 214013)
-- Dependencies: 223
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id, correo, direccion, fecha, total, id_ciudad, id_usuario) FROM stdin;
\.


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 200
-- Name: carrito_compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carrito_compra_id_seq', 43, true);


--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 202
-- Name: ciudades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ciudades_id_seq', 16, true);


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 204
-- Name: colores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colores_id_seq', 10, true);


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 206
-- Name: generos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.generos_id_seq', 2, true);


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 208
-- Name: marcas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcas_id_seq', 10, true);


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 210
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_seq', 24, true);


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 212
-- Name: productos_talla_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_talla_id_seq', 120, true);


--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 214
-- Name: productos_venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_venta_id_seq', 1, false);


--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 216
-- Name: tallas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tallas_id_seq', 5, true);


--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 218
-- Name: tipos_documento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_documento_id_seq', 3, true);


--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 220
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 7, true);


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 222
-- Name: ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventas_id_seq', 1, false);


--
-- TOC entry 2932 (class 2606 OID 213923)
-- Name: carrito_compra carrito_compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compra
    ADD CONSTRAINT carrito_compra_pkey PRIMARY KEY (id);


--
-- TOC entry 2934 (class 2606 OID 213931)
-- Name: ciudades ciudades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_pkey PRIMARY KEY (id);


--
-- TOC entry 2936 (class 2606 OID 213939)
-- Name: colores colores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colores
    ADD CONSTRAINT colores_pkey PRIMARY KEY (id);


--
-- TOC entry 2938 (class 2606 OID 213947)
-- Name: generos generos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generos
    ADD CONSTRAINT generos_pkey PRIMARY KEY (id);


--
-- TOC entry 2940 (class 2606 OID 213955)
-- Name: marcas marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id);


--
-- TOC entry 2942 (class 2606 OID 213967)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- TOC entry 2944 (class 2606 OID 213975)
-- Name: productos_talla productos_talla_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_talla
    ADD CONSTRAINT productos_talla_pkey PRIMARY KEY (id);


--
-- TOC entry 2946 (class 2606 OID 213983)
-- Name: productos_venta productos_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_venta
    ADD CONSTRAINT productos_venta_pkey PRIMARY KEY (id);


--
-- TOC entry 2948 (class 2606 OID 213991)
-- Name: tallas tallas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tallas
    ADD CONSTRAINT tallas_pkey PRIMARY KEY (id);


--
-- TOC entry 2950 (class 2606 OID 213999)
-- Name: tipos_documento tipos_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_documento
    ADD CONSTRAINT tipos_documento_pkey PRIMARY KEY (id);


--
-- TOC entry 2952 (class 2606 OID 214010)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 2954 (class 2606 OID 214021)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 2955 (class 2606 OID 214022)
-- Name: carrito_compra fk2f5tq96cn4so2yc00ymrb61w0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compra
    ADD CONSTRAINT fk2f5tq96cn4so2yc00ymrb61w0 FOREIGN KEY (id_producto_talla) REFERENCES public.productos_talla(id);


--
-- TOC entry 2960 (class 2606 OID 214047)
-- Name: productos_talla fk52555n8cv8oyyvcgowsymy028; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_talla
    ADD CONSTRAINT fk52555n8cv8oyyvcgowsymy028 FOREIGN KEY (id_producto) REFERENCES public.productos(id);


--
-- TOC entry 2964 (class 2606 OID 214067)
-- Name: usuarios fk5kso75r73wx0dvqgr0wfv255n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk5kso75r73wx0dvqgr0wfv255n FOREIGN KEY (id_tipodocumento) REFERENCES public.tipos_documento(id);


--
-- TOC entry 2958 (class 2606 OID 214037)
-- Name: productos fk5qgwku4t5lxgm9pm94i18ekic; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk5qgwku4t5lxgm9pm94i18ekic FOREIGN KEY (id_genero) REFERENCES public.generos(id);


--
-- TOC entry 2965 (class 2606 OID 214072)
-- Name: ventas fk798y3fox8ws80jvfodf499dui; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk798y3fox8ws80jvfodf499dui FOREIGN KEY (id_ciudad) REFERENCES public.ciudades(id);


--
-- TOC entry 2959 (class 2606 OID 214042)
-- Name: productos fkc1mrc7r89nch4xtol227kdwce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fkc1mrc7r89nch4xtol227kdwce FOREIGN KEY (id_marca) REFERENCES public.marcas(id);


--
-- TOC entry 2957 (class 2606 OID 214032)
-- Name: productos fkktn6dkuejfda6sy8i5l16dpf1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fkktn6dkuejfda6sy8i5l16dpf1 FOREIGN KEY (id_color) REFERENCES public.colores(id);


--
-- TOC entry 2963 (class 2606 OID 214062)
-- Name: productos_venta fkl7u0ksfg8ffurhxkse553k0wm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_venta
    ADD CONSTRAINT fkl7u0ksfg8ffurhxkse553k0wm FOREIGN KEY (id_venta) REFERENCES public.ventas(id);


--
-- TOC entry 2966 (class 2606 OID 214077)
-- Name: ventas fkngvsjlvvv240ohesoj9e87s3h; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fkngvsjlvvv240ohesoj9e87s3h FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- TOC entry 2956 (class 2606 OID 214027)
-- Name: carrito_compra fkpiym7ips1bheli2q6oc0wpib1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compra
    ADD CONSTRAINT fkpiym7ips1bheli2q6oc0wpib1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- TOC entry 2962 (class 2606 OID 214057)
-- Name: productos_venta fkrw33agvoeui3gfadcl2naj8bm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_venta
    ADD CONSTRAINT fkrw33agvoeui3gfadcl2naj8bm FOREIGN KEY (id_producto_talla) REFERENCES public.productos_talla(id);


--
-- TOC entry 2961 (class 2606 OID 214052)
-- Name: productos_talla fksw1liy0vy32xdxmsuhslq8qow; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_talla
    ADD CONSTRAINT fksw1liy0vy32xdxmsuhslq8qow FOREIGN KEY (id_talla) REFERENCES public.tallas(id);


-- Completed on 2023-03-15 20:18:47

--
-- PostgreSQL database dump complete
--

