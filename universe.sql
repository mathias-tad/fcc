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
-- Name: astronounts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronounts (
    astronounts_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.astronounts OWNER TO freecodecamp;

--
-- Name: astronounts_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronounts_id_seq OWNER TO freecodecamp;

--
-- Name: astronounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronounts_id_seq OWNED BY public.astronounts.astronounts_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer,
    diameter integer,
    founded_by character varying(20)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mean_radius_km integer,
    planet_id integer,
    scientific_name character varying(20)
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
    name character varying(30) NOT NULL,
    diameter integer,
    has_moons boolean,
    star_id integer,
    gravity numeric(4,2)
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    has_planet boolean,
    galaxy_id integer
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
-- Name: astronounts astronounts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronounts ALTER COLUMN astronounts_id SET DEFAULT nextval('public.astronounts_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: astronounts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronounts VALUES (1, 'Neil A. Armstrong', 'Research pilot, astronaut, and first man to set foot on the moon during the Apollo 11 mission.');
INSERT INTO public.astronounts VALUES (2, 'LOREN W. ACTON (PH.D.)', 'PAYLOAD SPECIALIST');
INSERT INTO public.astronounts VALUES (3, '', '');
INSERT INTO public.astronounts VALUES (4, 'JAMES C. ADAMSON', 'Mission specialist on STS-28 and STS-43');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Large Magellenic Cloud', 100, NULL, 'NASA');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 250, NULL, 'Ethiopian prince');
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 170, NULL, '');
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 450, NULL, '');
INSERT INTO public.galaxy VALUES (5, 'Spiral', 270, NULL, '');
INSERT INTO public.galaxy VALUES (6, 'Backward', 190, NULL, '');
INSERT INTO public.galaxy VALUES (7, 'Bodes', 150, NULL, '');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1738, 3, 'I');
INSERT INTO public.moon VALUES (2, 'Phobos', 11, 5, 'I');
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 5, 'II');
INSERT INTO public.moon VALUES (4, 'Io', 1821, 6, 'I');
INSERT INTO public.moon VALUES (5, 'Europa', 1560, 6, 'II');
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634, 6, 'III');
INSERT INTO public.moon VALUES (7, 'Callisto', 2410, 6, 'IV');
INSERT INTO public.moon VALUES (8, 'Amalthea', 84, 6, 'V');
INSERT INTO public.moon VALUES (9, 'Himalia', 70, 6, 'VI');
INSERT INTO public.moon VALUES (10, 'Elara', 40, 6, 'VII');
INSERT INTO public.moon VALUES (11, 'Pasiphae', 29, 6, 'VIII');
INSERT INTO public.moon VALUES (12, 'Sinope', 18, 6, 'IX');
INSERT INTO public.moon VALUES (13, 'Lysithea', 21, 6, 'X');
INSERT INTO public.moon VALUES (14, 'Carme', 2, 6, 'XI');
INSERT INTO public.moon VALUES (15, 'Ananke', 14, 6, 'XII');
INSERT INTO public.moon VALUES (16, 'Leda', 11, 6, 'XIII');
INSERT INTO public.moon VALUES (17, 'Thebe', 49, 6, 'XIV');
INSERT INTO public.moon VALUES (18, 'Mimas', 14, 7, '1');
INSERT INTO public.moon VALUES (19, 'Enceladus', 252, 7, 'II');
INSERT INTO public.moon VALUES (20, 'Ariel', 579, 8, 'I');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, false, 4, 3.70);
INSERT INTO public.planet VALUES (2, 'Venus', 12104, false, 4, 8.90);
INSERT INTO public.planet VALUES (3, 'Earth', 12756, true, 4, 9.80);
INSERT INTO public.planet VALUES (4, 'Moon', 3475, false, 4, 1.60);
INSERT INTO public.planet VALUES (5, 'Mars', 6792, true, 4, 3.70);
INSERT INTO public.planet VALUES (6, 'Jupiter', 142984, true, 4, 23.10);
INSERT INTO public.planet VALUES (7, 'Saturn', 120536, true, 4, 9.00);
INSERT INTO public.planet VALUES (8, 'Uranus', 51118, true, 4, 8.70);
INSERT INTO public.planet VALUES (9, 'Neptun', 49528, true, 4, 11.00);
INSERT INTO public.planet VALUES (10, 'Pluto', 2376, true, 4, 0.70);
INSERT INTO public.planet VALUES (11, 'Hot Jupiter', 4879, false, 3, 3.70);
INSERT INTO public.planet VALUES (12, 'Neptunian', 12104, false, 2, 8.90);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', 1779, false, 1);
INSERT INTO public.star VALUES (2, 'Eridanus', 1900, true, 1);
INSERT INTO public.star VALUES (3, 'Scorpius', 4560, true, 2);
INSERT INTO public.star VALUES (4, 'Sun', 345, true, 4);
INSERT INTO public.star VALUES (5, 'Casiopia', 1900, true, 2);
INSERT INTO public.star VALUES (6, 'Andromeda', 4560, true, 2);


--
-- Name: astronounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronounts_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: astronounts astronounts_astronounts_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronounts
    ADD CONSTRAINT astronounts_astronounts_id_key UNIQUE (astronounts_id);


--
-- Name: astronounts astronounts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronounts
    ADD CONSTRAINT astronounts_pkey PRIMARY KEY (astronounts_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

