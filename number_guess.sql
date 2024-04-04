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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    num_guess integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (16, 10, 6);
INSERT INTO public.games VALUES (17, 533, 7);
INSERT INTO public.games VALUES (18, 34, 7);
INSERT INTO public.games VALUES (19, 592, 8);
INSERT INTO public.games VALUES (20, 254, 8);
INSERT INTO public.games VALUES (21, 108, 7);
INSERT INTO public.games VALUES (22, 918, 7);
INSERT INTO public.games VALUES (23, 812, 7);
INSERT INTO public.games VALUES (24, 510, 9);
INSERT INTO public.games VALUES (25, 556, 9);
INSERT INTO public.games VALUES (26, 851, 10);
INSERT INTO public.games VALUES (27, 507, 10);
INSERT INTO public.games VALUES (28, 512, 9);
INSERT INTO public.games VALUES (29, 862, 9);
INSERT INTO public.games VALUES (30, 95, 9);
INSERT INTO public.games VALUES (31, 531, 11);
INSERT INTO public.games VALUES (32, 323, 11);
INSERT INTO public.games VALUES (33, 960, 12);
INSERT INTO public.games VALUES (34, 753, 12);
INSERT INTO public.games VALUES (35, 415, 11);
INSERT INTO public.games VALUES (36, 932, 11);
INSERT INTO public.games VALUES (37, 156, 11);
INSERT INTO public.games VALUES (38, 8, 13);
INSERT INTO public.games VALUES (39, 377, 14);
INSERT INTO public.games VALUES (40, 495, 14);
INSERT INTO public.games VALUES (41, 127, 15);
INSERT INTO public.games VALUES (42, 404, 15);
INSERT INTO public.games VALUES (43, 734, 14);
INSERT INTO public.games VALUES (44, 494, 14);
INSERT INTO public.games VALUES (45, 499, 14);
INSERT INTO public.games VALUES (46, 19, 6);
INSERT INTO public.games VALUES (47, 253, 16);
INSERT INTO public.games VALUES (48, 976, 16);
INSERT INTO public.games VALUES (49, 393, 17);
INSERT INTO public.games VALUES (50, 942, 17);
INSERT INTO public.games VALUES (51, 122, 16);
INSERT INTO public.games VALUES (52, 809, 16);
INSERT INTO public.games VALUES (53, 417, 16);
INSERT INTO public.games VALUES (54, 773, 18);
INSERT INTO public.games VALUES (55, 557, 18);
INSERT INTO public.games VALUES (56, 603, 19);
INSERT INTO public.games VALUES (57, 617, 19);
INSERT INTO public.games VALUES (58, 915, 18);
INSERT INTO public.games VALUES (59, 162, 18);
INSERT INTO public.games VALUES (60, 368, 18);
INSERT INTO public.games VALUES (61, 326, 20);
INSERT INTO public.games VALUES (62, 335, 20);
INSERT INTO public.games VALUES (63, 179, 21);
INSERT INTO public.games VALUES (64, 112, 21);
INSERT INTO public.games VALUES (65, 238, 20);
INSERT INTO public.games VALUES (66, 782, 20);
INSERT INTO public.games VALUES (67, 508, 20);
INSERT INTO public.games VALUES (68, 277, 22);
INSERT INTO public.games VALUES (69, 392, 22);
INSERT INTO public.games VALUES (70, 864, 23);
INSERT INTO public.games VALUES (71, 576, 23);
INSERT INTO public.games VALUES (72, 527, 22);
INSERT INTO public.games VALUES (73, 229, 22);
INSERT INTO public.games VALUES (74, 597, 22);
INSERT INTO public.games VALUES (75, 884, 24);
INSERT INTO public.games VALUES (76, 216, 24);
INSERT INTO public.games VALUES (77, 950, 25);
INSERT INTO public.games VALUES (78, 950, 25);
INSERT INTO public.games VALUES (79, 264, 24);
INSERT INTO public.games VALUES (80, 750, 24);
INSERT INTO public.games VALUES (81, 924, 24);
INSERT INTO public.games VALUES (82, 770, 26);
INSERT INTO public.games VALUES (83, 226, 26);
INSERT INTO public.games VALUES (84, 169, 27);
INSERT INTO public.games VALUES (85, 283, 27);
INSERT INTO public.games VALUES (86, 948, 26);
INSERT INTO public.games VALUES (87, 801, 26);
INSERT INTO public.games VALUES (88, 488, 26);
INSERT INTO public.games VALUES (89, 279, 28);
INSERT INTO public.games VALUES (90, 610, 28);
INSERT INTO public.games VALUES (91, 653, 29);
INSERT INTO public.games VALUES (92, 614, 29);
INSERT INTO public.games VALUES (93, 956, 28);
INSERT INTO public.games VALUES (94, 367, 28);
INSERT INTO public.games VALUES (95, 636, 28);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (6, 'msweat254');
INSERT INTO public.users VALUES (7, 'user_1712259736770');
INSERT INTO public.users VALUES (8, 'user_1712259736769');
INSERT INTO public.users VALUES (9, 'user_1712259852289');
INSERT INTO public.users VALUES (10, 'user_1712259852288');
INSERT INTO public.users VALUES (11, 'user_1712259879942');
INSERT INTO public.users VALUES (12, 'user_1712259879941');
INSERT INTO public.users VALUES (13, 'msweat');
INSERT INTO public.users VALUES (14, 'user_1712259956219');
INSERT INTO public.users VALUES (15, 'user_1712259956218');
INSERT INTO public.users VALUES (16, 'user_1712260476488');
INSERT INTO public.users VALUES (17, 'user_1712260476487');
INSERT INTO public.users VALUES (18, 'user_1712260522253');
INSERT INTO public.users VALUES (19, 'user_1712260522252');
INSERT INTO public.users VALUES (20, 'user_1712260544273');
INSERT INTO public.users VALUES (21, 'user_1712260544272');
INSERT INTO public.users VALUES (22, 'user_1712260595250');
INSERT INTO public.users VALUES (23, 'user_1712260595249');
INSERT INTO public.users VALUES (24, 'user_1712260605866');
INSERT INTO public.users VALUES (25, 'user_1712260605865');
INSERT INTO public.users VALUES (26, 'user_1712260719589');
INSERT INTO public.users VALUES (27, 'user_1712260719588');
INSERT INTO public.users VALUES (28, 'user_1712260730870');
INSERT INTO public.users VALUES (29, 'user_1712260730869');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 95, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 29, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users user_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_unq UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

