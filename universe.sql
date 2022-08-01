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
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    area numeric,
    description text,
    isinsolarsystem boolean,
    starid integer
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
-- Name: has_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.has_life (
    has_life_id integer NOT NULL,
    has_life boolean NOT NULL,
    galaxy_id integer,
    name character varying(50) NOT NULL
);


ALTER TABLE public.has_life OWNER TO freecodecamp;

--
-- Name: has_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.has_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.has_life_id_seq OWNER TO freecodecamp;

--
-- Name: has_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.has_life_id_seq OWNED BY public.has_life.has_life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age integer NOT NULL,
    area numeric,
    isinsolarsystem boolean,
    description text,
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
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    area numeric,
    description text,
    isinsolarsystem boolean,
    starid integer
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age integer NOT NULL,
    area numeric,
    isinsolarsystem boolean,
    description text,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: has_life has_life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life ALTER COLUMN has_life_id SET DEFAULT nextval('public.has_life_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'milky way', 9999, 0, 98789, 'our galaxy', true, 0);
INSERT INTO public.galaxy VALUES (2, 'galaxy 2', 945846, 4516516, 123124, 'Good galaxy', false, 2);
INSERT INTO public.galaxy VALUES (3, 'galaxy 3', 91846, 412316, 13453124, 'Bad galaxy', false, 3);
INSERT INTO public.galaxy VALUES (4, 'galaxy 4', 45632, 564, 45665, 'gaalaxy', false, 3);
INSERT INTO public.galaxy VALUES (5, 'galaxy 4', 45632, 564, 45665, 'gaalaxy', false, 3);
INSERT INTO public.galaxy VALUES (6, 'galaxy 4', 45632, 564, 45665, 'gaalaxy', false, 3);


--
-- Data for Name: has_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.has_life VALUES (1, true, 1, 'has life');
INSERT INTO public.has_life VALUES (2, true, 2, 'has life');
INSERT INTO public.has_life VALUES (3, false, 3, 'has life');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 321, 520, 416, true, 'our moon', 1);
INSERT INTO public.moon VALUES (2, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (3, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (4, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (5, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (6, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (7, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (8, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (9, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (10, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (11, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (12, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (13, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (14, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (15, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (16, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (17, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (18, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (19, 'new moon', 8541, 451, 5641, false, 'new moon', 2);
INSERT INTO public.moon VALUES (20, 'new moon', 8541, 451, 5641, false, 'new moon', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 100, 0, 500, 'Earth', true, 10);
INSERT INTO public.planet VALUES (2, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (3, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (4, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (5, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (6, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (7, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (8, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (9, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (10, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (11, 'Venus', 100, 200, 300, 'Venus', true, 12);
INSERT INTO public.planet VALUES (12, 'Venus', 100, 200, 300, 'Venus', true, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Polaar Star', 500, 300, 400, true, 'this is star', 1);
INSERT INTO public.star VALUES (3, 'Polaar Star', 500, 300, 400, true, 'this is star', 1);
INSERT INTO public.star VALUES (1, 'test', 654412, 651432, 456123, false, 'asfda', 3);
INSERT INTO public.star VALUES (4, 'test', 654412, 651432, 456123, false, 'asfda', 3);
INSERT INTO public.star VALUES (5, 'test', 654412, 651432, 456123, false, 'asfda', 3);
INSERT INTO public.star VALUES (6, 'test', 654412, 651432, 456123, false, 'asfda', 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: has_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.has_life_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: has_life has_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT has_life_pkey PRIMARY KEY (has_life_id);


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
-- Name: has_life uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT uniq UNIQUE (has_life_id);


--
-- Name: galaxy uniq1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniq1 UNIQUE (galaxy_id);


--
-- Name: planet uniq2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniq2 UNIQUE (planet_id);


--
-- Name: star uniq3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniq3 UNIQUE (star_id);


--
-- Name: moon uniq4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uniq4 UNIQUE (moon_id);


--
-- Name: has_life has_life_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT has_life_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxyid_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

