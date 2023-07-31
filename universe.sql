--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    description text,
    type character varying(30),
    magnitude numeric(4,1)
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
    rayon integer,
    revolution numeric(6,2),
    planet_id integer
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
    rayon integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    planet_cara_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_cara; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_cara (
    planet_cara_id integer NOT NULL,
    size character varying(30) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.planet_cara OWNER TO freecodecamp;

--
-- Name: planet_cara_planet_cara_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_cara_planet_cara_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_cara_planet_cara_id_seq OWNER TO freecodecamp;

--
-- Name: planet_cara_planet_cara_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_cara_planet_cara_id_seq OWNED BY public.planet_cara.planet_cara_id;


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
    type character varying(30),
    age_in_billion_years integer,
    galaxy_id integer NOT NULL
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
-- Name: planet_cara planet_cara_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_cara ALTER COLUMN planet_cara_id SET DEFAULT nextval('public.planet_cara_planet_cara_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Voie Lactée', 'Notre galaxie', 'Spirale Barrée', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromède', 'Galaxie aussi appelée M31', 'Spirale', 3.4);
INSERT INTO public.galaxy VALUES (3, 'Galaxie du Triangle', 'Aussi appelée M33', 'Spirale', 5.7);
INSERT INTO public.galaxy VALUES (4, 'M51', 'Située dans la constellation  du chien de chasse', 'Spirale', 8.4);
INSERT INTO public.galaxy VALUES (5, 'Galaxie du Moulinet', 'Galaxie aussi appelée M101', 'Spirale Intermédiaire', 7.9);
INSERT INTO public.galaxy VALUES (6, 'M32', 'Aussi appelée NGC 221', 'Spirale Compacte', 8.1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune', 1737, 27.32, 3);
INSERT INTO public.moon VALUES (2, 'Europe', 1561, 3.50, 5);
INSERT INTO public.moon VALUES (3, 'Io', 1821, 1.80, 5);
INSERT INTO public.moon VALUES (4, 'Ganymède', 2634, 7.50, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 2410, 17.00, 5);
INSERT INTO public.moon VALUES (6, 'Jupiter LXI', 1, 701.00, 5);
INSERT INTO public.moon VALUES (7, 'Amalthée', 84, 0.50, 5);
INSERT INTO public.moon VALUES (8, 'Himalia', 85, 248.00, 5);
INSERT INTO public.moon VALUES (9, 'Adrastée', 8, 0.30, 5);
INSERT INTO public.moon VALUES (10, 'Callichore', 1, 765.00, 5);
INSERT INTO public.moon VALUES (11, 'Cyllène', 1, 738.00, 5);
INSERT INTO public.moon VALUES (12, 'Jupiter LV', 1, 600.00, 5);
INSERT INTO public.moon VALUES (13, 'Philophrosyne', 667, 600.00, 5);
INSERT INTO public.moon VALUES (14, 'Euphorie', 1, 551.00, 5);
INSERT INTO public.moon VALUES (15, 'Jupiter LII', 1, 650.00, 5);
INSERT INTO public.moon VALUES (16, 'Harpalycé', 2, 650.00, 5);
INSERT INTO public.moon VALUES (17, 'Autonoé', 1, 650.00, 5);
INSERT INTO public.moon VALUES (18, 'Hermippé', 2, 650.00, 5);
INSERT INTO public.moon VALUES (19, 'Thébé', 49, 0.60, 5);
INSERT INTO public.moon VALUES (20, 'Mégaclité', 3, 792.44, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercure', 2440, false, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Vénus', 6052, false, true, 1, 1);
INSERT INTO public.planet VALUES (3, 'Terre', 6371, true, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 3390, false, true, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, false, true, 1, 2);
INSERT INTO public.planet VALUES (6, 'Saturne', 58232, false, true, 1, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 25559, false, true, 1, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 24764, false, true, 1, 2);
INSERT INTO public.planet VALUES (9, 'Pluton', 1188, false, true, 1, 3);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri B', 7000, false, true, 3, 1);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri D', NULL, false, true, 3, 1);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri C', NULL, false, true, 3, 1);


--
-- Data for Name: planet_cara; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_cara VALUES (1, 'Petite', 'Tellurique');
INSERT INTO public.planet_cara VALUES (2, 'Grande', 'Gazeuse');
INSERT INTO public.planet_cara VALUES (3, 'Très petit', 'Ni tellurique ni gazeux');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Soleil', 'Naine Jaune', 5, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Blanche', 0, 1);
INSERT INTO public.star VALUES (3, 'Proxima du Centaure', 'Naine Rouge', 5, 1);
INSERT INTO public.star VALUES (4, 'Etoile de Bernard', 'Naine Rouge', 10, 1);
INSERT INTO public.star VALUES (5, 'Bételgeuse', 'Naine Rouge', 10, 1);
INSERT INTO public.star VALUES (6, 'Lalande 21185', 'Naine Rouge', 8, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_cara_planet_cara_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_cara_planet_cara_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet_cara planet_cara_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_cara
    ADD CONSTRAINT planet_cara_name_unique UNIQUE (name);


--
-- Name: planet_cara planet_cara_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_cara
    ADD CONSTRAINT planet_cara_pkey PRIMARY KEY (planet_cara_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_cara_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_cara_id_fkey FOREIGN KEY (planet_cara_id) REFERENCES public.planet_cara(planet_cara_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

