--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    has_life boolean,
    is_spherical boolean,
    description text
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
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    has_life boolean,
    is_spherical boolean,
    planet_id integer,
    description text
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
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    description text
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    description text NOT NULL,
    name character varying(30)
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer,
    description text
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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Nars', 148.6, 431, 1431, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Protonos', 155.6, 234, 1234, true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Tejandra', 566.3, 987, 1987, false, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'New Earth', 1440.8, 768, 1768, true, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Banderlaos', 213.4, 3213, 4213, false, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Derinoso', 214.6, 2131, 3131, true, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Wolf', 4500.0, 384400, 150, false, true, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Falcon', 3200.5, 384500, 150, false, true, 3, NULL);
INSERT INTO public.moon VALUES (3, 'Tiger', 4100.0, 78, 228, false, true, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Lion', 4100.0, 78, 228, false, true, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Elephant', 3500.0, 4, 4, false, true, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Whale', 3500.0, 4, 4, false, true, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Dolphin', 2500.2, 8, 8, false, true, 6, NULL);
INSERT INTO public.moon VALUES (8, 'Shark', 2500.2, 8, 8, false, true, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Eagle', 1500.0, 642, 642, false, false, 7, NULL);
INSERT INTO public.moon VALUES (10, 'Hawk', 1500.0, 642, 642, false, false, 7, NULL);
INSERT INTO public.moon VALUES (11, 'Owl', 4000.0, 25, 25, false, true, 8, NULL);
INSERT INTO public.moon VALUES (12, 'Raven', 4000.0, 25, 25, false, true, 8, NULL);
INSERT INTO public.moon VALUES (13, 'Panda', 8.0, 860, 860, false, true, 9, NULL);
INSERT INTO public.moon VALUES (14, 'Koala', 8.0, 860, 860, false, true, 9, NULL);
INSERT INTO public.moon VALUES (15, 'Fox', 4200.0, 490, 490, true, true, 10, NULL);
INSERT INTO public.moon VALUES (16, 'Lynx', 4200.0, 490, 490, false, true, 10, NULL);
INSERT INTO public.moon VALUES (17, 'Dragon', 7000.0, 150, 150, false, true, 11, NULL);
INSERT INTO public.moon VALUES (18, 'Phoenix', 7000.0, 150, 150, false, true, 11, NULL);
INSERT INTO public.moon VALUES (19, 'Turtle', 4300.0, 20, 20, true, true, 12, NULL);
INSERT INTO public.moon VALUES (20, 'Axolotl', 4300.0, 20, 20, false, true, 12, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Budha', 4503.0, 91, 58, false, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Shukra', 4503.0, 41, 108, false, true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Prithvi', 4543.0, 0, 150, true, true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mangala', 4603.0, 78, 228, false, true, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Brihaspati', 4850.0, 4, 4, false, true, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Shani', 242.0, 8, 8, false, true, 3, NULL);
INSERT INTO public.planet VALUES (7, 'Rahu', 10.2, 642, 642, false, false, 4, NULL);
INSERT INTO public.planet VALUES (8, 'Ketu', 455.3, 25, 25, false, false, 5, NULL);
INSERT INTO public.planet VALUES (9, 'Soma', 8.0, 860, 860, false, true, 6, NULL);
INSERT INTO public.planet VALUES (10, 'Indraloka', 4000.0, 490, 490, true, true, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Varunaloka', 7000.0, 150, 150, false, true, 3, NULL);
INSERT INTO public.planet VALUES (12, 'Vaikuntha', 4300.0, 20, 20, true, true, 5, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'gas', NULL);
INSERT INTO public.planet_types VALUES (2, 'rock', NULL);
INSERT INTO public.planet_types VALUES (3, 'ice', NULL);
INSERT INTO public.planet_types VALUES (4, 'dwarf', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solana', 4603.5, 0, 0, true, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 4850.0, 4, 4, false, true, 1, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 242.0, 8, 8, false, true, 1, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10.2, 642, 642, false, true, 2, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 455.3, 25, 25, false, true, 2, NULL);
INSERT INTO public.star VALUES (6, 'Rigel', 8.0, 860, 860, false, true, 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

