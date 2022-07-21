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
    size integer,
    weight numeric(3,1),
    info text,
    alive boolean
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
    name character varying(30),
    size integer,
    weight numeric(3,1),
    info text,
    alive boolean,
    planet_id integer NOT NULL
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
    name character varying(30),
    columnsize integer,
    weight numeric(3,1),
    info text,
    alive boolean,
    star_id integer NOT NULL
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
    name character varying(30),
    columnsize integer,
    weight numeric(3,1),
    info text,
    alive boolean,
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(30),
    alive boolean NOT NULL
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, '2', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, '3', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, '4', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, '5', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, '6', 6, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, '111', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, '222', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, '333', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, '444', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, '555', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, '66', 6, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, '77', 7, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, '888', 8, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, '9999', 9, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, '1000', 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, '1001', 11, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, '1002', 12, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, '1003', 13, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, '1004', 15, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (22, '1005', 14, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, '1006', 16, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (24, '100', 17, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (25, '1008', 18, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (26, '1009', 19, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (27, '1020', 20, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, '2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, '3', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, '4', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (7, '5', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, '6', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, '7', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (10, '8', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, '9', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (12, '10', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (13, '11', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (14, '12', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (15, '13', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (19, '14', NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (20, '15', NULL, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (21, '16', NULL, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (22, '17', NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (23, '18', NULL, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (26, '20', NULL, NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (27, '21', NULL, NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (28, '22', NULL, NULL, NULL, NULL, 22);
INSERT INTO public.moon VALUES (29, '23', NULL, NULL, NULL, NULL, 23);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, '1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, '2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, '3', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, '4', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (6, '5', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, '6', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (8, '7', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, '8', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, '9', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, '10', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, '11', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (13, '12', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (14, '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (15, '14', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (16, '15', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (17, '16', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (18, '17', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (20, '18', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (21, '19', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (22, '20', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (23, '21', NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, '2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, '3', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, '4', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, '5', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, '6', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, '1', true);
INSERT INTO public.universe VALUES (2, '2', true);
INSERT INTO public.universe VALUES (3, '3', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 27, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 27, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


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
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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

