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
    name character varying(255) NOT NULL,
    area integer,
    age integer,
    distance_from_earth numeric(10,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    area integer,
    age integer,
    distance_from_earth numeric(10,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    description text NOT NULL,
    name character varying(255)
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    area integer,
    age integer,
    distance_from_earth numeric(10,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    area integer,
    age integer,
    distance_from_earth numeric(10,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 105700, 136000, 0.00, 'The galaxy that contains our Solar System', true, true, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 220000, 100000, 25370.00, 'Nearest spiral galaxy to the Milky Way', true, true, 2);
INSERT INTO public.galaxy VALUES ('Triangulum', 50000, 122000, 3000.00, 'A member of the Local Group of galaxies', true, false, 3);
INSERT INTO public.galaxy VALUES ('Whirlpool', 60000, 14000, 20000.00, 'Known for its distinctive spiral shape', true, false, 4);
INSERT INTO public.galaxy VALUES ('Sombrero', 49000, 930000, 290000.00, 'Notable for its bright nucleus and large central bulge', true, false, 5);
INSERT INTO public.galaxy VALUES ('Black Eye', 52000, 116000, 17000.00, 'Famous for the dark band of dust in front of the bright nucleus', true, false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 37000, 450000, 384400.00, 'The only natural satellite of Earth', true, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1548, 43534, 9376.00, 'The larger of the two moons of Mars', true, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 495, 43534, 23460.00, 'The smaller of the two moons of Mars', true, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 3453, 43534, 345.00, 'The most volcanically active body in the Solar System', true, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 345, 43534, 23423.00, 'Known for its smooth icy surface', true, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 87000, 43534, 563.00, 'The largest moon in the Solar System', true, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 72600, 43534, 62000.00, 'A heavily cratered moon of Jupiter', true, false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 8300, 43534, 1420.00, 'The largest moon of Saturn and the second-largest in the Solar System', true, false, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 2100, 43534, 1420.00, 'The second-largest moon of Saturn', true, false, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 200, 43534, 1400.00, 'Known for its two-tone coloration', true, false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 11200, 43534, 14200.00, 'The fourth-largest moon of Saturn', true, false, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 1400, 43534, 14200.00, 'The fifth-largest moon of Saturn', true, false, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', 50400, 43534, 14200.00, 'A moon of Saturn with geysers of water ice', true, false, 6);
INSERT INTO public.moon VALUES (14, 'Miranda', 69600, 43534, 287000.00, 'A moon of Uranus with extreme geological activity', true, false, 7);
INSERT INTO public.moon VALUES (15, 'Ariel', 67900, 43534, 287100.00, 'A moon of Uranus with a complex surface', true, false, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 597000, 43534, 287100.00, 'A dark moon of Uranus', true, false, 7);
INSERT INTO public.moon VALUES (17, 'Titania', 15000, 43534, 287000.00, 'The largest moon of Uranus', true, false, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 1523000, 43534, 287000.00, 'The second-largest moon of Uranus', true, false, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 2000, 43534, 440000.00, 'The largest moon of Neptune, known for its retrograde orbit', true, false, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 78600, 43534, 59000.00, 'The largest moon of the dwarf planet Pluto', true, false, 9);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'Detailed information about thl galaxy to the Milky Way.', 'Andromeda Galaxy');
INSERT INTO public.more_info VALUES (2, 'Comprehensive details on tth orbit in 1990.', 'Hubble Space Telescope');
INSERT INTO public.more_info VALUES (3, 'Information on the Great Rehere of Jupiter.', 'Great Red Spot');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 748000, 450000, 579000.00, 'The smallest planlar System', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4602000, 4500000, 10000.00, 'The hottestour Solar System', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 5101000, 4500000, 0.00, 'The only planet known to support life', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 144800, 4500000, 22000.00, 'Known as the Red Planet', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 61420000, 4500000, 770000.00, 'The largest our Solar System', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 42700000, 4500000, 142000.00, 'Known for its ring system', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 8083000, 4500000, 2871000.00, 'An ice gia sideways rotation', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 7618000, 4500000, 4495000.00, 'An ice giar its deep blue color', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Ceri b', 500000, 4500000, 41300.00, 'A potentleroxima Centauri', true, false, 4);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 490000, 4500000, 4000.00, 'A potentiin the TRAPPIST-1 system', true, false, 2);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 940000, 6000000, 140000.00, 'An exoplan a super-Earth', true, false, 3);
INSERT INTO public.planet VALUES (12, 'HD 189733 b', 740000, 450000, 193000.00, 'A gas giant wa cobalt blue color', true, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4368, 460000, 0.00, 'The star at the center of the Solar System', true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 1164, 300000, 8620000.00, 'The brightest star in the Earth night sky', true, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 118000, 800000, 642000.00, 'A red supergiant star nearing the end of its life', true, false, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 83440, 460000, 41300.00, 'The closest star system to the Solar System', true, false, 2);
INSERT INTO public.star VALUES (5, 'Vega', 203650, 45000, 257000.00, 'The fifth-brightest star in the night sky', true, false, 1);
INSERT INTO public.star VALUES (6, 'Polaris', 877600, 7000, 43300.00, 'The current northern pole star', true, false, 1);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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

