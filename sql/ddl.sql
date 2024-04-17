--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

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
-- Name: cook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cook (
    user_id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    phone_number character varying(20) NOT NULL,
    date_of_birth date NOT NULL,
    years_of_experience integer DEFAULT 0,
    image_url character varying(255),
    job_title character varying(50) NOT NULL,
    CONSTRAINT cook_job_title_check CHECK (((job_title)::text = ANY ((ARRAY['Chef'::character varying, 'Assistant Chef'::character varying, 'Cook A'::character varying, 'Cook B'::character varying, 'Cook C'::character varying])::text[])))
);


ALTER TABLE public.cook OWNER TO postgres;

--
-- Name: cook_cuisine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cook_cuisine (
    cook_id integer NOT NULL,
    cuisine_id integer NOT NULL
);


ALTER TABLE public.cook_cuisine OWNER TO postgres;

--
-- Name: cuisine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuisine (
    id integer NOT NULL,
    nationality character varying(255) NOT NULL
);


ALTER TABLE public.cuisine OWNER TO postgres;

--
-- Name: cuisine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cuisine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cuisine_id_seq OWNER TO postgres;

--
-- Name: cuisine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cuisine_id_seq OWNED BY public.cuisine.id;


--
-- Name: foodcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.foodcategory (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    image_url character varying(255),
    description text NOT NULL
);


ALTER TABLE public.foodcategory OWNER TO postgres;

--
-- Name: foodcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.foodcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.foodcategory_id_seq OWNER TO postgres;

--
-- Name: foodcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.foodcategory_id_seq OWNED BY public.foodcategory.id;


--
-- Name: ingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredient (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    image_url character varying(255),
    caloriesper100 integer
);


ALTER TABLE public.ingredient OWNER TO postgres;

--
-- Name: ingredient_foodcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredient_foodcategory (
    ingredient_id integer NOT NULL,
    food_category_id integer NOT NULL
);


ALTER TABLE public.ingredient_foodcategory OWNER TO postgres;

--
-- Name: ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ingredient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredient_id_seq OWNER TO postgres;

--
-- Name: ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ingredient_id_seq OWNED BY public.ingredient.id;


--
-- Name: ingredient_recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredient_recipe (
    ingredient_id integer NOT NULL,
    recipe_id integer NOT NULL,
    quantity character varying(255) NOT NULL
);


ALTER TABLE public.ingredient_recipe OWNER TO postgres;

--
-- Name: label; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.label (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.label OWNER TO postgres;

--
-- Name: label_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.label_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.label_id_seq OWNER TO postgres;

--
-- Name: label_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.label_id_seq OWNED BY public.label.id;


--
-- Name: label_recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.label_recipe (
    label_id integer NOT NULL,
    recipe_id integer NOT NULL
);


ALTER TABLE public.label_recipe OWNER TO postgres;

--
-- Name: meal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meal (
    id integer NOT NULL,
    type character varying(255) NOT NULL
);


ALTER TABLE public.meal OWNER TO postgres;

--
-- Name: meal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meal_id_seq OWNER TO postgres;

--
-- Name: meal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meal_id_seq OWNED BY public.meal.id;


--
-- Name: meal_recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meal_recipe (
    meal_id integer NOT NULL,
    recipe_id integer NOT NULL
);


ALTER TABLE public.meal_recipe OWNER TO postgres;

--
-- Name: nutrionfacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nutrionfacts (
    recipe_id integer NOT NULL,
    sequence integer NOT NULL,
    fatperportion integer,
    proteinperportion integer,
    carbohydrateperportion integer
);


ALTER TABLE public.nutrionfacts OWNER TO postgres;

--
-- Name: recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipe (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    cuisine_id integer NOT NULL,
    description text,
    difficulty integer,
    ingredient_id integer NOT NULL,
    image_url character varying(255),
    CONSTRAINT recipe_difficulty_check CHECK (((difficulty >= 1) AND (difficulty <= 5)))
);


ALTER TABLE public.recipe OWNER TO postgres;

--
-- Name: recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_id_seq OWNER TO postgres;

--
-- Name: recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipe_id_seq OWNED BY public.recipe.id;


--
-- Name: recipestep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipestep (
    recipe_id integer NOT NULL,
    sequence integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.recipestep OWNER TO postgres;

--
-- Name: recipetip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipetip (
    recipe_id integer NOT NULL,
    sequence integer NOT NULL,
    instructions text NOT NULL
);


ALTER TABLE public.recipetip OWNER TO postgres;

--
-- Name: tool; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tool (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    image_url character varying(255),
    instructions text NOT NULL
);


ALTER TABLE public.tool OWNER TO postgres;

--
-- Name: tool_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tool_id_seq OWNER TO postgres;

--
-- Name: tool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tool_id_seq OWNED BY public.tool.id;


--
-- Name: tool_recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tool_recipe (
    tool_id integer NOT NULL,
    recipe_id integer NOT NULL
);


ALTER TABLE public.tool_recipe OWNER TO postgres;

--
-- Name: topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topic (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    image_url character varying(255),
    description text NOT NULL
);


ALTER TABLE public.topic OWNER TO postgres;

--
-- Name: topic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.topic_id_seq OWNER TO postgres;

--
-- Name: topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.topic_id_seq OWNED BY public.topic.id;


--
-- Name: topic_recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topic_recipe (
    topic_id integer NOT NULL,
    recipe_id integer NOT NULL
);


ALTER TABLE public.topic_recipe OWNER TO postgres;

--
-- Name: useraccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.useraccount (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    is_admin boolean NOT NULL
);


ALTER TABLE public.useraccount OWNER TO postgres;

--
-- Name: useraccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.useraccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.useraccount_id_seq OWNER TO postgres;

--
-- Name: useraccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.useraccount_id_seq OWNED BY public.useraccount.id;


--
-- Name: cuisine id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuisine ALTER COLUMN id SET DEFAULT nextval('public.cuisine_id_seq'::regclass);


--
-- Name: foodcategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foodcategory ALTER COLUMN id SET DEFAULT nextval('public.foodcategory_id_seq'::regclass);


--
-- Name: ingredient id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient ALTER COLUMN id SET DEFAULT nextval('public.ingredient_id_seq'::regclass);


--
-- Name: label id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label ALTER COLUMN id SET DEFAULT nextval('public.label_id_seq'::regclass);


--
-- Name: meal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal ALTER COLUMN id SET DEFAULT nextval('public.meal_id_seq'::regclass);


--
-- Name: recipe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe ALTER COLUMN id SET DEFAULT nextval('public.recipe_id_seq'::regclass);


--
-- Name: tool id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tool ALTER COLUMN id SET DEFAULT nextval('public.tool_id_seq'::regclass);


--
-- Name: topic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic ALTER COLUMN id SET DEFAULT nextval('public.topic_id_seq'::regclass);


--
-- Name: useraccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.useraccount ALTER COLUMN id SET DEFAULT nextval('public.useraccount_id_seq'::regclass);


--
-- Name: cook_cuisine cook_cuisine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cook_cuisine
    ADD CONSTRAINT cook_cuisine_pkey PRIMARY KEY (cook_id, cuisine_id);


--
-- Name: cook cook_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cook
    ADD CONSTRAINT cook_pkey PRIMARY KEY (user_id);


--
-- Name: cuisine cuisine_nationality_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuisine
    ADD CONSTRAINT cuisine_nationality_key UNIQUE (nationality);


--
-- Name: cuisine cuisine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuisine
    ADD CONSTRAINT cuisine_pkey PRIMARY KEY (id);


--
-- Name: foodcategory foodcategory_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foodcategory
    ADD CONSTRAINT foodcategory_name_key UNIQUE (name);


--
-- Name: foodcategory foodcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foodcategory
    ADD CONSTRAINT foodcategory_pkey PRIMARY KEY (id);


--
-- Name: ingredient_foodcategory ingredient_foodcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_foodcategory
    ADD CONSTRAINT ingredient_foodcategory_pkey PRIMARY KEY (ingredient_id, food_category_id);


--
-- Name: ingredient ingredient_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredient_name_key UNIQUE (name);


--
-- Name: ingredient ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredient_pkey PRIMARY KEY (id);


--
-- Name: ingredient_recipe ingredient_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_recipe
    ADD CONSTRAINT ingredient_recipe_pkey PRIMARY KEY (ingredient_id, recipe_id);


--
-- Name: label label_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT label_name_key UNIQUE (name);


--
-- Name: label label_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT label_pkey PRIMARY KEY (id);


--
-- Name: label_recipe label_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label_recipe
    ADD CONSTRAINT label_recipe_pkey PRIMARY KEY (label_id, recipe_id);


--
-- Name: meal meal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal
    ADD CONSTRAINT meal_pkey PRIMARY KEY (id);


--
-- Name: meal_recipe meal_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal_recipe
    ADD CONSTRAINT meal_recipe_pkey PRIMARY KEY (meal_id, recipe_id);


--
-- Name: meal meal_type_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal
    ADD CONSTRAINT meal_type_key UNIQUE (type);


--
-- Name: nutrionfacts nutrionfacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nutrionfacts
    ADD CONSTRAINT nutrionfacts_pkey PRIMARY KEY (recipe_id, sequence);


--
-- Name: recipe recipe_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_name_key UNIQUE (name);


--
-- Name: recipe recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (id);


--
-- Name: recipestep recipestep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipestep
    ADD CONSTRAINT recipestep_pkey PRIMARY KEY (recipe_id, sequence);


--
-- Name: recipetip recipetip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipetip
    ADD CONSTRAINT recipetip_pkey PRIMARY KEY (recipe_id, sequence);


--
-- Name: tool tool_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tool
    ADD CONSTRAINT tool_name_key UNIQUE (name);


--
-- Name: tool tool_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tool
    ADD CONSTRAINT tool_pkey PRIMARY KEY (id);


--
-- Name: tool_recipe tool_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tool_recipe
    ADD CONSTRAINT tool_recipe_pkey PRIMARY KEY (tool_id, recipe_id);


--
-- Name: topic topic_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic
    ADD CONSTRAINT topic_name_key UNIQUE (name);


--
-- Name: topic topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic
    ADD CONSTRAINT topic_pkey PRIMARY KEY (id);


--
-- Name: topic_recipe topic_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic_recipe
    ADD CONSTRAINT topic_recipe_pkey PRIMARY KEY (topic_id, recipe_id);


--
-- Name: useraccount useraccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.useraccount
    ADD CONSTRAINT useraccount_pkey PRIMARY KEY (id);


--
-- Name: useraccount useraccount_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.useraccount
    ADD CONSTRAINT useraccount_username_key UNIQUE (username);


--
-- Name: cook_cuisine cook_cuisine_cook_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cook_cuisine
    ADD CONSTRAINT cook_cuisine_cook_id_fkey FOREIGN KEY (cook_id) REFERENCES public.cook(user_id) ON DELETE CASCADE;


--
-- Name: cook_cuisine cook_cuisine_cuisine_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cook_cuisine
    ADD CONSTRAINT cook_cuisine_cuisine_id_fkey FOREIGN KEY (cuisine_id) REFERENCES public.cuisine(id) ON DELETE CASCADE;


--
-- Name: cook cook_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cook
    ADD CONSTRAINT cook_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.useraccount(id) ON DELETE CASCADE;


--
-- Name: ingredient_foodcategory ingredient_foodcategory_food_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_foodcategory
    ADD CONSTRAINT ingredient_foodcategory_food_category_id_fkey FOREIGN KEY (food_category_id) REFERENCES public.foodcategory(id) ON DELETE CASCADE;


--
-- Name: ingredient_foodcategory ingredient_foodcategory_ingredient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_foodcategory
    ADD CONSTRAINT ingredient_foodcategory_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredient(id) ON DELETE CASCADE;


--
-- Name: ingredient_recipe ingredient_recipe_ingredient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_recipe
    ADD CONSTRAINT ingredient_recipe_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredient(id) ON DELETE RESTRICT;


--
-- Name: ingredient_recipe ingredient_recipe_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_recipe
    ADD CONSTRAINT ingredient_recipe_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON DELETE CASCADE;


--
-- Name: label_recipe label_recipe_label_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label_recipe
    ADD CONSTRAINT label_recipe_label_id_fkey FOREIGN KEY (label_id) REFERENCES public.label(id) ON DELETE CASCADE;


--
-- Name: label_recipe label_recipe_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label_recipe
    ADD CONSTRAINT label_recipe_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON DELETE CASCADE;


--
-- Name: meal_recipe meal_recipe_meal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal_recipe
    ADD CONSTRAINT meal_recipe_meal_id_fkey FOREIGN KEY (meal_id) REFERENCES public.meal(id) ON DELETE CASCADE;


--
-- Name: meal_recipe meal_recipe_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal_recipe
    ADD CONSTRAINT meal_recipe_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON DELETE CASCADE;


--
-- Name: nutrionfacts nutrionfacts_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nutrionfacts
    ADD CONSTRAINT nutrionfacts_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON DELETE CASCADE;


--
-- Name: recipe recipe_cuisine_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_cuisine_id_fkey FOREIGN KEY (cuisine_id) REFERENCES public.cuisine(id) ON DELETE CASCADE;


--
-- Name: recipe recipe_ingredient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredient(id) ON DELETE RESTRICT;


--
-- Name: recipestep recipestep_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipestep
    ADD CONSTRAINT recipestep_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON DELETE CASCADE;


--
-- Name: recipetip recipetip_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipetip
    ADD CONSTRAINT recipetip_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON DELETE CASCADE;


--
-- Name: tool_recipe tool_recipe_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tool_recipe
    ADD CONSTRAINT tool_recipe_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON DELETE CASCADE;


--
-- Name: tool_recipe tool_recipe_tool_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tool_recipe
    ADD CONSTRAINT tool_recipe_tool_id_fkey FOREIGN KEY (tool_id) REFERENCES public.tool(id) ON DELETE CASCADE;


--
-- Name: topic_recipe topic_recipe_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic_recipe
    ADD CONSTRAINT topic_recipe_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON DELETE CASCADE;


--
-- Name: topic_recipe topic_recipe_topic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic_recipe
    ADD CONSTRAINT topic_recipe_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topic(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

