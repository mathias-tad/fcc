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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(15) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (58, 2018, 'Final', 4, 2, 319, 320);
INSERT INTO public.games VALUES (59, 2018, 'Third Place', 2, 0, 321, 322);
INSERT INTO public.games VALUES (60, 2018, 'Semi-Final', 2, 1, 320, 322);
INSERT INTO public.games VALUES (61, 2018, 'Semi-Final', 1, 0, 319, 321);
INSERT INTO public.games VALUES (62, 2018, 'Quarter-Final', 3, 2, 320, 323);
INSERT INTO public.games VALUES (63, 2018, 'Quarter-Final', 2, 0, 322, 324);
INSERT INTO public.games VALUES (64, 2018, 'Quarter-Final', 2, 1, 321, 325);
INSERT INTO public.games VALUES (65, 2018, 'Quarter-Final', 2, 0, 319, 326);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 2, 1, 322, 327);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 1, 0, 324, 328);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 3, 2, 321, 329);
INSERT INTO public.games VALUES (69, 2018, 'Eighth-Final', 2, 0, 325, 330);
INSERT INTO public.games VALUES (70, 2018, 'Eighth-Final', 2, 1, 320, 331);
INSERT INTO public.games VALUES (71, 2018, 'Eighth-Final', 2, 1, 323, 332);
INSERT INTO public.games VALUES (72, 2018, 'Eighth-Final', 2, 1, 326, 333);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 4, 3, 319, 334);
INSERT INTO public.games VALUES (74, 2014, 'Final', 1, 0, 335, 334);
INSERT INTO public.games VALUES (75, 2014, 'Third Place', 3, 0, 336, 325);
INSERT INTO public.games VALUES (76, 2014, 'Semi-Final', 1, 0, 334, 336);
INSERT INTO public.games VALUES (77, 2014, 'Semi-Final', 7, 1, 335, 325);
INSERT INTO public.games VALUES (78, 2014, 'Quarter-Final', 1, 0, 336, 337);
INSERT INTO public.games VALUES (79, 2014, 'Quarter-Final', 1, 0, 334, 321);
INSERT INTO public.games VALUES (80, 2014, 'Quarter-Final', 2, 1, 325, 327);
INSERT INTO public.games VALUES (81, 2014, 'Quarter-Final', 1, 0, 335, 319);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 2, 1, 325, 338);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 2, 0, 327, 326);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 2, 0, 319, 339);
INSERT INTO public.games VALUES (85, 2014, 'Eighth-Final', 2, 1, 335, 340);
INSERT INTO public.games VALUES (86, 2014, 'Eighth-Final', 2, 1, 336, 330);
INSERT INTO public.games VALUES (87, 2014, 'Eighth-Final', 2, 1, 337, 341);
INSERT INTO public.games VALUES (88, 2014, 'Eighth-Final', 1, 0, 334, 328);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 2, 1, 321, 342);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (319, 'France');
INSERT INTO public.teams VALUES (320, 'Croatia');
INSERT INTO public.teams VALUES (321, 'Belgium');
INSERT INTO public.teams VALUES (322, 'England');
INSERT INTO public.teams VALUES (323, 'Russia');
INSERT INTO public.teams VALUES (324, 'Sweden');
INSERT INTO public.teams VALUES (325, 'Brazil');
INSERT INTO public.teams VALUES (326, 'Uruguay');
INSERT INTO public.teams VALUES (327, 'Colombia');
INSERT INTO public.teams VALUES (328, 'Switzerland');
INSERT INTO public.teams VALUES (329, 'Japan');
INSERT INTO public.teams VALUES (330, 'Mexico');
INSERT INTO public.teams VALUES (331, 'Denmark');
INSERT INTO public.teams VALUES (332, 'Spain');
INSERT INTO public.teams VALUES (333, 'Portugal');
INSERT INTO public.teams VALUES (334, 'Argentina');
INSERT INTO public.teams VALUES (335, 'Germany');
INSERT INTO public.teams VALUES (336, 'Netherlands');
INSERT INTO public.teams VALUES (337, 'Costa Rica');
INSERT INTO public.teams VALUES (338, 'Chile');
INSERT INTO public.teams VALUES (339, 'Nigeria');
INSERT INTO public.teams VALUES (340, 'Algeria');
INSERT INTO public.teams VALUES (341, 'Greece');
INSERT INTO public.teams VALUES (342, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 89, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 342, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

