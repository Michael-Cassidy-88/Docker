--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Debian 13.7-1.pgdg110+1)
-- Dumped by pg_dump version 13.7 (Debian 13.7-1.pgdg110+1)

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

--
-- PostgreSQL database dump complete
--

--
-- Database "<database>" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Debian 13.7-1.pgdg110+1)
-- Dumped by pg_dump version 13.7 (Debian 13.7-1.pgdg110+1)

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

--
-- Name: <database>; Type: DATABASE; Schema: -; Owner: <username>
--

CREATE DATABASE <database> WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE <database> OWNER TO <username>;

\connect <database>

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

--
-- Data for Name: temperature_data; Type: TABLE DATA; Schema: public; Owner: <username>
--

COPY public.temperature_data (id, device, container, temperature, created_at) FROM stdin;
1	dev1	769e225a0451	5	2022-06-05 20:12:23.580162+00
2	dev1	769e225a0451	15	2022-06-05 20:12:53.544982+00
3	dev1	769e225a0451	-3	2022-06-05 20:13:23.544304+00
4	dev1	769e225a0451	-10	2022-06-05 20:13:53.542862+00
5	dev1	769e225a0451	-4	2022-06-05 20:14:23.542371+00
6	dev1	769e225a0451	-3	2022-06-05 20:14:53.543699+00
7	dev1	769e225a0451	6	2022-06-05 20:15:23.543771+00
8	dev1	769e225a0451	-10	2022-06-05 20:15:53.54527+00
9	dev1	769e225a0451	-6	2022-06-05 20:16:23.54455+00
10	dev1	769e225a0451	-4	2022-06-05 20:16:53.546115+00
11	dev1	769e225a0451	-3	2022-06-05 20:17:23.543515+00
12	dev1	769e225a0451	20	2022-06-05 20:17:53.544091+00
13	dev1	769e225a0451	18	2022-06-05 20:18:23.544279+00
14	dev1	769e225a0451	5	2022-06-05 20:18:53.548786+00
15	dev1	769e225a0451	10	2022-06-05 20:19:23.553599+00
16	dev1	769e225a0451	-5	2022-06-05 20:19:53.55865+00
17	dev1	769e225a0451	8	2022-06-05 20:20:23.55975+00
18	dev1	769e225a0451	10	2022-06-05 20:20:53.562931+00
19	dev1	769e225a0451	-8	2022-06-05 20:21:23.564478+00
20	dev1	769e225a0451	7	2022-06-05 20:21:53.56936+00
21	dev1	769e225a0451	6	2022-06-05 20:22:23.569873+00
22	dev1	769e225a0451	-8	2022-06-05 20:22:53.572283+00
23	dev1	769e225a0451	2	2022-06-05 20:23:23.57395+00
24	dev1	3acaec86af62	14	2022-06-05 20:26:16.391137+00
25	dev1	3acaec86af62	10	2022-06-05 20:26:46.32446+00
26	dev1	3acaec86af62	13	2022-06-05 20:27:16.322574+00
27	dev1	3acaec86af62	5	2022-06-05 20:27:46.300277+00
28	dev1	3acaec86af62	-3	2022-06-05 20:28:16.30078+00
29	dev1	3acaec86af62	-9	2022-06-05 20:28:46.299929+00
30	dev1	3acaec86af62	7	2022-06-05 20:29:16.304906+00
31	dev1	3acaec86af62	-6	2022-06-05 20:29:46.302892+00
32	dev1	3acaec86af62	11	2022-06-05 20:30:16.304384+00
33	dev1	3acaec86af62	-5	2022-06-05 20:30:46.303897+00
34	dev1	3acaec86af62	-5	2022-06-05 20:31:16.306516+00
35	dev1	3acaec86af62	-5	2022-06-05 20:31:46.304756+00
36	dev1	17756cdae40e	5	2022-06-05 20:32:29.889673+00
37	dev1	17756cdae40e	-3	2022-06-05 20:32:59.797376+00
38	dev1	17756cdae40e	13	2022-06-05 20:33:29.802994+00
39	dev1	17756cdae40e	8	2022-06-05 20:33:59.775682+00
40	dev1	17756cdae40e	14	2022-06-05 20:34:29.774651+00
41	dev1	17756cdae40e	12	2022-06-05 20:34:59.774735+00
42	dev1	17756cdae40e	-7	2022-06-05 20:35:29.774725+00
43	dev1	17756cdae40e	1	2022-06-05 20:35:59.773625+00
44	dev1	17756cdae40e	-9	2022-06-05 20:36:29.774474+00
45	dev1	17756cdae40e	14	2022-06-05 20:36:59.774555+00
46	dev1	17756cdae40e	0	2022-06-05 20:37:29.777183+00
47	dev1	17756cdae40e	20	2022-06-05 20:37:59.791185+00
48	dev1	17756cdae40e	15	2022-06-05 20:38:29.775015+00
49	dev1	17756cdae40e	-2	2022-06-05 20:38:59.774464+00
50	dev1	17756cdae40e	4	2022-06-05 20:39:29.773849+00
51	dev1	17756cdae40e	7	2022-06-05 20:39:59.775329+00
52	dev1	17756cdae40e	5	2022-06-05 20:40:29.774388+00
53	dev1	17756cdae40e	6	2022-06-05 20:40:59.77469+00
54	dev1	17756cdae40e	12	2022-06-05 20:41:29.777813+00
55	dev1	17756cdae40e	-10	2022-06-05 20:41:59.7837+00
56	dev1	17756cdae40e	5	2022-06-05 20:42:29.787123+00
57	dev1	17756cdae40e	-8	2022-06-05 20:42:59.788048+00
58	dev1	17756cdae40e	-9	2022-06-05 20:43:29.791856+00
59	dev1	17756cdae40e	0	2022-06-05 20:43:59.794676+00
60	dev1	17756cdae40e	17	2022-06-05 20:44:29.793179+00
61	dev1	17756cdae40e	-6	2022-06-05 20:44:59.796308+00
62	dev1	17756cdae40e	2	2022-06-05 20:45:29.798086+00
\.


--
-- Name: temp_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: <username>
--

SELECT pg_catalog.setval('public.temp_data_id_seq', 62, true);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Debian 13.7-1.pgdg110+1)
-- Dumped by pg_dump version 13.7 (Debian 13.7-1.pgdg110+1)

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

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

