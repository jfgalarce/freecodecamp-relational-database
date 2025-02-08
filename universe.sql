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
    name character varying(100) NOT NULL,
    type integer NOT NULL,
    age integer NOT NULL,
    distance numeric(10,2) NOT NULL,
    description text,
    visible boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: masteroide; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.masteroide (
    masteroide_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type integer NOT NULL,
    age integer NOT NULL,
    distance numeric(10,2) NOT NULL,
    description text,
    visible boolean
);


ALTER TABLE public.masteroide OWNER TO freecodecamp;

--
-- Name: masteroide_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.masteroide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.masteroide_id_seq OWNER TO freecodecamp;

--
-- Name: masteroide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.masteroide_id_seq OWNED BY public.masteroide.masteroide_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type integer NOT NULL,
    age integer NOT NULL,
    distance numeric(10,2) NOT NULL,
    description text,
    visible boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type integer NOT NULL,
    age integer NOT NULL,
    distance numeric(10,2) NOT NULL,
    description text,
    visible boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type integer NOT NULL,
    age integer NOT NULL,
    distance numeric(10,2) NOT NULL,
    description text,
    visible boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: masteroide masteroide_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.masteroide ALTER COLUMN masteroide_id SET DEFAULT nextval('public.masteroide_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 92, 91, 85.99, 'galaxia andromeda', true);
INSERT INTO public.galaxy VALUES (2, 'via lactea', 25, 31, 11.54, 'nuestra galaxia', true);
INSERT INTO public.galaxy VALUES (3, 'marvel', 24, 7, 97.36, 'galaxia de marvle', false);
INSERT INTO public.galaxy VALUES (4, 'dc', 3, 77, 69.47, 'galaxia de detective comic', false);
INSERT INTO public.galaxy VALUES (5, 'media', 39, 68, 16.91, 'galaxia del señor de los anillso', false);
INSERT INTO public.galaxy VALUES (6, 'wargame', 40, 38, 4.94, 'galaxia de video juegos', false);


--
-- Data for Name: masteroide; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.masteroide VALUES (1, 'uno', 93, 18, 28.23, 'asteroide 1', true);
INSERT INTO public.masteroide VALUES (2, 'dos', 20, 64, 38.74, 'asteroide 2', true);
INSERT INTO public.masteroide VALUES (3, 'tres', 78, 48, 5.12, 'asteroide 3', true);
INSERT INTO public.masteroide VALUES (4, 'cuatro', 61, 50, 86.03, 'asteroide 4', true);
INSERT INTO public.masteroide VALUES (5, 'cinco', 25, 74, 27.12, 'asteroide 5', true);
INSERT INTO public.masteroide VALUES (6, 'seis', 23, 71, 26.98, 'asteroide 6', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 64, 77, 68.24, 'luna de la tierra', true, 1);
INSERT INTO public.moon VALUES (2, 'uno', 95, 23, 7.88, 'luna 1', true, 2);
INSERT INTO public.moon VALUES (3, 'tres', 92, 35, 79.21, 'luna 3', true, 3);
INSERT INTO public.moon VALUES (4, 'cuatro', 62, 58, 70.68, 'luna 4', true, 4);
INSERT INTO public.moon VALUES (5, 'cinco', 58, 46, 1.82, 'luna 5', true, 5);
INSERT INTO public.moon VALUES (6, 'seis 6', 36, 31, 38.78, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (7, 'seis 7', 3, 69, 10.48, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (8, 'seis 8', 24, 64, 88.73, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (9, 'seis 9', 18, 89, 89.14, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (10, 'seis 10', 90, 13, 17.56, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (11, 'seis 11', 86, 63, 21.18, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (12, 'seis 12', 59, 91, 90.57, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (13, 'seis 13', 35, 30, 61.19, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (14, 'seis 14', 100, 21, 24.19, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (15, 'seis 15', 67, 30, 50.00, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (16, 'seis 16', 45, 89, 36.41, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (17, 'seis 17', 28, 32, 7.63, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (18, 'seis 18', 63, 78, 1.53, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (19, 'seis 19', 85, 59, 7.52, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (20, 'seis 20', 67, 42, 35.68, 'luna 6', true, 6);
INSERT INTO public.moon VALUES (21, 'seis 21', 51, 55, 90.60, 'luna 6', true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', 52, 47, 7.92, 'planeta tierra', true, 1);
INSERT INTO public.planet VALUES (2, 'dos', 25, 68, 87.93, 'planeta 2', true, 2);
INSERT INTO public.planet VALUES (3, 'tres', 2, 97, 26.70, 'planet3', true, 3);
INSERT INTO public.planet VALUES (4, 'cuatro', 63, 37, 95.11, 'planeta cuatro', true, 4);
INSERT INTO public.planet VALUES (6, 'seis', 84, 51, 62.56, 'planeta 6', true, 6);
INSERT INTO public.planet VALUES (5, 'cinco5', 81, 41, 22.62, 'planeta 5', true, 5);
INSERT INTO public.planet VALUES (7, 'cinco7', 57, 63, 66.65, 'planeta 5', true, 1);
INSERT INTO public.planet VALUES (8, 'cinco8', 92, 101, 3.56, 'planeta 5', true, 1);
INSERT INTO public.planet VALUES (9, 'cinco9', 3, 63, 61.68, 'planeta 5', true, 1);
INSERT INTO public.planet VALUES (10, 'cinco10', 10, 46, 27.48, 'planeta 5', true, 1);
INSERT INTO public.planet VALUES (11, 'cinco11', 63, 2, 54.08, 'planeta 5', true, 1);
INSERT INTO public.planet VALUES (12, 'cinco12', 55, 60, 57.90, 'planeta 5', true, 1);
INSERT INTO public.planet VALUES (13, 'cinco13', 28, 96, 49.16, 'planeta 5', true, 1);
INSERT INTO public.planet VALUES (14, 'cinco14', 72, 97, 62.66, 'planeta 5', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'prime', 1, 20, 300.00, 'galaxy primary', true, 1);
INSERT INTO public.star VALUES (2, 'uno', 2, 3, 343.00, 'estella 1', true, 2);
INSERT INTO public.star VALUES (3, 'dos', 2, 3, 343.00, 'estella 2', true, 3);
INSERT INTO public.star VALUES (4, 'tres', 2, 3, 343.00, 'estella 4', true, 4);
INSERT INTO public.star VALUES (5, 'cuatro', 2, 3, 343.00, 'estella 4', true, 5);
INSERT INTO public.star VALUES (6, 'seis', 2, 3, 343.00, 'estella 6', true, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: masteroide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.masteroide_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: masteroide masteroide_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.masteroide
    ADD CONSTRAINT masteroide_pkey PRIMARY KEY (masteroide_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: masteroide unique_masteroide_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.masteroide
    ADD CONSTRAINT unique_masteroide_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

