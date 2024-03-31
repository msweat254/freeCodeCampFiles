--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    foreign_key_column integer NOT NULL,
    bool_1 boolean,
    bool_2 boolean,
    text_column text,
    numeric_column numeric,
    int_column integer,
    int_column_1 integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    foreign_key_column integer NOT NULL,
    bool_1 boolean,
    bool_2 boolean,
    text_column text,
    numeric_column numeric,
    int_column integer,
    int_column_1 integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    foreign_key_column integer NOT NULL,
    bool_1 boolean,
    bool_2 boolean,
    text_column text,
    numeric_column numeric,
    int_column integer,
    int_column_1 integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    foreign_key_column integer NOT NULL,
    bool_1 boolean,
    bool_2 boolean,
    text_column text,
    numeric_column numeric,
    int_column integer,
    int_column_1 integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: table_1; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_1 (
    table_1_id integer NOT NULL,
    colunmn_1 integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.table_1 OWNER TO freecodecamp;

--
-- Name: table_1_table_1_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_1_table_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_1_table_1_id_seq OWNER TO freecodecamp;

--
-- Name: table_1_table_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_1_table_1_id_seq OWNED BY public.table_1.table_1_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: table_1 table_1_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1 ALTER COLUMN table_1_id SET DEFAULT nextval('public.table_1_table_1_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Spiral', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Circle', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy Shape', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Other Shape', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Another Shape', 6, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Name1', 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Name2', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Name3', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Name4', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'Name5', 11, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'Name6', 12, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'Name7', 13, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'Name8', 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'Name9', 15, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'Name10', 16, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'Name11', 17, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'Name12', 18, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'Name13', 19, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'Name14', 20, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Milky Way', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Spiral', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Circle', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Galaxy Shape', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Other Shape', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Another Shape', 6, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'Name1', 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'Name2', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Name3', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'Name4', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'Name5', 11, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'Name6', 12, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'Name7', 13, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'Name8', 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'Name9', 15, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'Name10', 16, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'Name11', 17, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'Name12', 18, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (39, 'Name13', 19, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (40, 'Name14', 20, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Milky Way', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Spiral', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'Circle', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'Galaxy Shape', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'Other Shape', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'Another Shape', 6, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'Name1', 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'Name2', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'Name3', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'Name4', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'Name5', 11, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'Name6', 12, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (33, 'Name7', 13, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (34, 'Name8', 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (35, 'Name9', 15, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (36, 'Name10', 16, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (37, 'Name11', 17, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (38, 'Name12', 18, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (39, 'Name13', 19, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (40, 'Name14', 20, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Milky Way', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Spiral', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Circle', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Galaxy Shape', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Other Shape', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Another Shape', 6, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 'Name1', 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, 'Name2', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, 'Name3', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, 'Name4', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, 'Name5', 11, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 'Name6', 12, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 'Name7', 13, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (21, 'Name8', 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (22, 'Name9', 15, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (23, 'Name10', 16, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (24, 'Name11', 17, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (25, 'Name12', 18, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (26, 'Name13', 19, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (27, 'Name14', 20, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: table_1; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_1 VALUES (1, 1, 'Name1');
INSERT INTO public.table_1 VALUES (2, 2, 'Name2');
INSERT INTO public.table_1 VALUES (3, 3, 'Name3');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 40, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 27, true);


--
-- Name: table_1_table_1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_1_table_1_id_seq', 3, true);


--
-- Name: galaxy galaxy_foreign_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_foreign_key_column_key UNIQUE (foreign_key_column);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_foreign_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_foreign_key_column_key UNIQUE (foreign_key_column);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_foreign_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_foreign_key_column_key UNIQUE (foreign_key_column);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_foreign_key_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_foreign_key_column_key UNIQUE (foreign_key_column);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table_1 table_1_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1
    ADD CONSTRAINT table_1_name_key UNIQUE (name);


--
-- Name: table_1 table_1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_1
    ADD CONSTRAINT table_1_pkey PRIMARY KEY (table_1_id);


--
-- Name: moon moon_foreign_key_column_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_foreign_key_column_fkey FOREIGN KEY (foreign_key_column) REFERENCES public.planet(foreign_key_column);


--
-- Name: planet planet_foreign_key_column_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_foreign_key_column_fkey FOREIGN KEY (foreign_key_column) REFERENCES public.star(foreign_key_column);


--
-- Name: star star_foreign_key_column_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_foreign_key_column_fkey FOREIGN KEY (foreign_key_column) REFERENCES public.galaxy(foreign_key_column);


--
-- PostgreSQL database dump complete
--

