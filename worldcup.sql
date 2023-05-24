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
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL
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
    name character varying(60) NOT NULL
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

INSERT INTO public.games VALUES (62, 119, 118, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (63, 121, 120, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (64, 121, 119, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (65, 120, 118, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (66, 122, 119, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (67, 123, 121, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (68, 124, 120, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (69, 125, 118, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 126, 121, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (71, 127, 123, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (72, 128, 120, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (73, 129, 124, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 130, 119, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 131, 122, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 132, 125, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 133, 118, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 133, 134, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (79, 124, 135, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (80, 135, 133, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (81, 124, 134, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (82, 136, 135, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (83, 120, 133, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (84, 126, 124, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (85, 118, 134, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 137, 124, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (87, 125, 126, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (88, 138, 118, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (89, 139, 134, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 129, 135, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 140, 136, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 127, 133, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 141, 120, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (118, 'France');
INSERT INTO public.teams VALUES (119, 'Croatia');
INSERT INTO public.teams VALUES (120, 'Belgium');
INSERT INTO public.teams VALUES (121, 'England');
INSERT INTO public.teams VALUES (122, 'Russia');
INSERT INTO public.teams VALUES (123, 'Sweden');
INSERT INTO public.teams VALUES (124, 'Brazil');
INSERT INTO public.teams VALUES (125, 'Uruguay');
INSERT INTO public.teams VALUES (126, 'Colombia');
INSERT INTO public.teams VALUES (127, 'Switzerland');
INSERT INTO public.teams VALUES (128, 'Japan');
INSERT INTO public.teams VALUES (129, 'Mexico');
INSERT INTO public.teams VALUES (130, 'Denmark');
INSERT INTO public.teams VALUES (131, 'Spain');
INSERT INTO public.teams VALUES (132, 'Portugal');
INSERT INTO public.teams VALUES (133, 'Argentina');
INSERT INTO public.teams VALUES (134, 'Germany');
INSERT INTO public.teams VALUES (135, 'Netherlands');
INSERT INTO public.teams VALUES (136, 'Costa Rica');
INSERT INTO public.teams VALUES (137, 'Chile');
INSERT INTO public.teams VALUES (138, 'Nigeria');
INSERT INTO public.teams VALUES (139, 'Algeria');
INSERT INTO public.teams VALUES (140, 'Greece');
INSERT INTO public.teams VALUES (141, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 93, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 141, true);


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

