--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    nomor integer NOT NULL,
    nama_barang character varying,
    harga_satuan numeric
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: barang_nomor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_nomor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_nomor_seq OWNER TO postgres;

--
-- Name: barang_nomor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_nomor_seq OWNED BY public.barang.nomor;


--
-- Name: kasir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kasir (
    nomor integer NOT NULL,
    nama_kasir character varying
);


ALTER TABLE public.kasir OWNER TO postgres;

--
-- Name: kasir_nomor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kasir_nomor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kasir_nomor_seq OWNER TO postgres;

--
-- Name: kasir_nomor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kasir_nomor_seq OWNED BY public.kasir.nomor;


--
-- Name: member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.member (
    nomor integer NOT NULL,
    nama_member character varying,
    total_poin integer
);


ALTER TABLE public.member OWNER TO postgres;

--
-- Name: member_nomor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.member_nomor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_nomor_seq OWNER TO postgres;

--
-- Name: member_nomor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.member_nomor_seq OWNED BY public.member.nomor;


--
-- Name: barang nomor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN nomor SET DEFAULT nextval('public.barang_nomor_seq'::regclass);


--
-- Name: kasir nomor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kasir ALTER COLUMN nomor SET DEFAULT nextval('public.kasir_nomor_seq'::regclass);


--
-- Name: member nomor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member ALTER COLUMN nomor SET DEFAULT nextval('public.member_nomor_seq'::regclass);


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (nomor, nama_barang, harga_satuan) FROM stdin;
1	laptop hp	8000000
2	hp realme 6	3800000
3	vivo v25 5g	5999000
4	vivo v25e	4000000
5	vivo x80	11999000
6	vivo x80 pro	15999000
7	vivo v25 pro	5999000
8	vivo y01	1399000
9	vivo y 16	1799000
10	vivo y21	2699000
11	vivo y22	2399000
12	vivo y35	3399000
13	oppo reno8	4999000
14	oppo A77s	3499000
15	oppo A57	2399000
16	oppo A54	2799000
\.


--
-- Data for Name: kasir; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kasir (nomor, nama_kasir) FROM stdin;
1	Alex
2	Kevin
3	Angel
4	Brian
5	Robert
6	Celine
7	Carol
8	Andi
9	jack
10	Ariel
11	Jason
12	Jimmy
13	Aisyah
14	Aliyah
15	Andini
\.


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.member (nomor, nama_member, total_poin) FROM stdin;
1	Asep	95
2	Cecep	80
3	Maimunah	99
4	Mawar	70
5	Halimah	60
6	Siti	50
7	kamaruddin	75
8	Samsuddin jadab	20
9	Ririn	80
10	Rani	76
11	Suri	60
12	Rian	90
13	Irpan	40
14	Rahma	30
15	CR7	100
16	Messi	100
\.


--
-- Name: barang_nomor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_nomor_seq', 16, true);


--
-- Name: kasir_nomor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kasir_nomor_seq', 15, true);


--
-- Name: member_nomor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.member_nomor_seq', 16, true);


--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (nomor);


--
-- Name: kasir kasir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kasir
    ADD CONSTRAINT kasir_pkey PRIMARY KEY (nomor);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (nomor);


--
-- PostgreSQL database dump complete
--

