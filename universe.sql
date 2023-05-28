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
    name character varying(20) NOT NULL,
    description text,
    galaxy_type character varying(50),
    nombre_of_stars integer
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
    name character varying(20) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    distance_from_earth numeric
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    star_id integer NOT NULL,
    planet_type character varying(50)
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(20) NOT NULL,
    nomber integer,
    description text,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_galaxy_id_seq OWNED BY public.solar_system.galaxy_id;


--
-- Name: solar_system_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_moon_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_moon_id_seq OWNED BY public.solar_system.moon_id;


--
-- Name: solar_system_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_planet_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_planet_id_seq OWNED BY public.solar_system.planet_id;


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: solar_system_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_star_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_star_id_seq OWNED BY public.solar_system.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_million_of_years numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_stra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_stra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_stra_id_seq OWNER TO freecodecamp;

--
-- Name: star_stra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_stra_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: solar_system galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN galaxy_id SET DEFAULT nextval('public.solar_system_galaxy_id_seq'::regclass);


--
-- Name: solar_system star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN star_id SET DEFAULT nextval('public.solar_system_star_id_seq'::regclass);


--
-- Name: solar_system planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN planet_id SET DEFAULT nextval('public.solar_system_planet_id_seq'::regclass);


--
-- Name: solar_system moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN moon_id SET DEFAULT nextval('public.solar_system_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_stra_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'spiral', 400);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Neighboring galaxy', 'spiral', 1000);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'Distinctive features', 'spiral', 300);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Small spiral galaxy', 'spiral', 40);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Hat-shaped galaxy', 'Eliptical', 100);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Radio galaxy', 'Lenticular', 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earths natural satellite', 1, 384.400);
INSERT INTO public.moon VALUES (2, 'Luna', 'Moon of Mars', 2, 384.400);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Moon of Mars', 2, 9.377);
INSERT INTO public.moon VALUES (4, 'Deimos', 'Moon of Jupiter', 3, 23.460);
INSERT INTO public.moon VALUES (5, 'Io', 'Moon of Jupiter', 3, 671.100);
INSERT INTO public.moon VALUES (6, 'Europa', 'Moon of Jupiter', 3, 1.070400);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Moon of Jupiter', 3, 1.882700);
INSERT INTO public.moon VALUES (8, 'Callisto', 'Moon of Saturn', 4, 1.221870);
INSERT INTO public.moon VALUES (9, 'Titan', 'Moon of Saturn', 4, 238.020);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Moon of Saturn', 4, 527.040);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Moon of Saturn', 4, 377.400);
INSERT INTO public.moon VALUES (12, 'Dion', 'Moon of Saturn', 4, 294.660);
INSERT INTO public.moon VALUES (13, 'Tethys', 'Moon of Neptune', 7, 345.760);
INSERT INTO public.moon VALUES (14, 'Triton', 'Moon of Pluto', 9, 17.536);
INSERT INTO public.moon VALUES (15, 'Charon', 'Moon of Neptune', 7, 384.400);
INSERT INTO public.moon VALUES (16, 'Nereid', 'Moon of Uranus', 8, 1.532400);
INSERT INTO public.moon VALUES (17, 'Oberon', 'Moon of Uranus', 8, 1.1299000);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Moon of Uranus', 8, 1.185000);
INSERT INTO public.moon VALUES (19, 'Umbriel', 'Moon of Uranus', 8, 1.169000);
INSERT INTO public.moon VALUES (20, 'Tetania', 'Moon of Uranus', 8, 1.168000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Blue planet with divers life forms', true, 1, 'Terrestrial');
INSERT INTO public.planet VALUES (2, 'Mars', 'Red planet with potential for life', false, 1, 'Terrestrial');
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Giant gas planet', false, 1, 'Gas Giant');
INSERT INTO public.planet VALUES (4, 'Starum', 'Known for its ring', false, 1, 'Gas Giant');
INSERT INTO public.planet VALUES (5, 'Venus', ' ', false, 1, 'Terrestrial');
INSERT INTO public.planet VALUES (6, 'Mercury', 'Closest planet to the Sun', false, 1, 'Terrestrial');
INSERT INTO public.planet VALUES (7, 'Neptune', 'Blue gas planet', false, 1, 'Gas Giant');
INSERT INTO public.planet VALUES (8, 'Uranus', 'tITLED ON ITS SIDE', false, 1, 'Gas Giant');
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet et the edge of the system', false, 1, 'Dwarf Planet');
INSERT INTO public.planet VALUES (10, 'Europa', 'Moon of Jupiter', false, 1, 'Moon');
INSERT INTO public.planet VALUES (11, 'Titan', 'Moon of Statuen', false, 1, 'Moon');
INSERT INTO public.planet VALUES (12, 'Ganymede', 'Moon of Jupiter', false, 1, 'Moon');


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Solar System', 1, 'Our home star system', 1, 1, 1, 1);
INSERT INTO public.solar_system VALUES (2, 'Andromeda', 2, 'Neighboring galaxys star system', 2, 2, 2, 2);
INSERT INTO public.solar_system VALUES (3, 'Alpha Centauri', 3, 'Closest star system to the Sun', 1, 2, 2, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our solar system star', true, 1, 4.600);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in the night', false, 1, 200);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Closest Known star to the sun', true, 1, 4.850);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant stars in the sky', true, 2, 8000);
INSERT INTO public.star VALUES (5, 'Vega', 'One of the brightest star in the sky', true, 2, 455);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'Closest star system to the sun', false, 1, 6.000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: solar_system_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_galaxy_id_seq', 1, false);


--
-- Name: solar_system_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_moon_id_seq', 1, false);


--
-- Name: solar_system_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_planet_id_seq', 1, false);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 4, true);


--
-- Name: solar_system_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_stra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_stra_id_seq', 6, true);


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
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: solar_system solar_system_solar_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_solar_system_id_key UNIQUE (solar_system_id);


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
-- Name: solar_system solar_system_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: solar_system solar_system_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: solar_system solar_system_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: solar_system solar_system_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

