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
    age_in_millions_of_years integer,
    has_life boolean,
    galaxy_type integer
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
-- Name: galaxy_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_stars (
    galaxy_id integer NOT NULL,
    star_id integer,
    galaxy_stars_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.galaxy_stars OWNER TO freecodecamp;

--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_stars_galaxy_stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_stars_galaxy_stars_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_stars_galaxy_stars_id_seq OWNED BY public.galaxy_stars.galaxy_stars_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    has_life boolean,
    moon_type integer
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
    size_in_km numeric(10,2),
    notes text,
    has_life boolean,
    star_id integer
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
    distance_from_earth integer,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: galaxy_stars galaxy_stars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars ALTER COLUMN galaxy_stars_id SET DEFAULT nextval('public.galaxy_stars_galaxy_stars_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Mushroom', 1000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Universe 7', 2000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Penguins', 1600, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'GOT', 1700, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'DC', 400, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'MARVEL', 1400, NULL, NULL);


--
-- Data for Name: galaxy_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_stars VALUES (1, 3, 1, NULL);
INSERT INTO public.galaxy_stars VALUES (1, 4, 2, NULL);
INSERT INTO public.galaxy_stars VALUES (5, 5, 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Cheese Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'CheeseMoon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'CakeMoon', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'ChocolateMoon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'CandyMoon', 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'GroundMoon', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'PlasticMoon', 6, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'ToyMoon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'LunaQueso', 8, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'LunaPastel', 9, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'LunaChocolate', 10, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'LunaDulce', 11, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'LunaTierra', 12, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'LunaPlastico', 1, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'LunaJuguete', 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'TechMoon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'LunaTecnologica', 4, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'SQLMoon', 5, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'LunaSQL', 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'MyMoon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'MiLuna', 8, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 2300.00, 'This is the only one with life there', true, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 2500.00, '', false, 6);
INSERT INTO public.planet VALUES (3, 'Mercury', 1240.00, 'Closest to the sun', false, 5);
INSERT INTO public.planet VALUES (4, 'Jupiter', 123123.00, 'The largest planet', false, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', 1234.00, '', false, 4);
INSERT INTO public.planet VALUES (6, 'Uranus', 12313.00, '', false, 5);
INSERT INTO public.planet VALUES (7, 'Penguins', 2314.00, '', false, 8);
INSERT INTO public.planet VALUES (8, 'Neptune', 1542.00, '', false, 6);
INSERT INTO public.planet VALUES (9, 'Pluto', 1444.00, '', false, 7);
INSERT INTO public.planet VALUES (10, 'Tierra', 4423.00, '', true, 5);
INSERT INTO public.planet VALUES (11, 'Marte', 4333.00, '', false, 3);
INSERT INTO public.planet VALUES (12, 'Pinguinos', 1222.00, 'Solo para pinguinos', true, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Mario Bros Star', 40000, false, 1);
INSERT INTO public.star VALUES (4, 'Luigi Star', 41000, true, 1);
INSERT INTO public.star VALUES (5, 'FLASH', 12319, true, 5);
INSERT INTO public.star VALUES (6, 'SPIDERMAN', 12312, false, 6);
INSERT INTO public.star VALUES (7, 'MISANDEY', 12312, true, 4);
INSERT INTO public.star VALUES (8, 'CLUB PENGUIN', 1222, true, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_stars_galaxy_stars_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: galaxy_stars galaxy_stars_galaxy_id_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_galaxy_id_star_id_key UNIQUE (galaxy_id, star_id);


--
-- Name: galaxy_stars galaxy_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_pkey PRIMARY KEY (galaxy_stars_id);


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


