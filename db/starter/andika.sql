--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: binkie; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE binkie (
    word_id integer,
    stanza integer,
    loc character varying(5),
    "position" integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50),
    variant character varying(250),
    note text,
    root character varying(50),
    english character varying(250)
);


ALTER TABLE public.binkie OWNER TO kevin;

--
-- Name: jaafari; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE jaafari (
    poemline_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.jaafari OWNER TO kevin;

--
-- Name: jaafari_backup; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE jaafari_backup (
    word_id integer,
    stanza integer,
    pos character varying(5),
    location integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    lemma character varying(50),
    segment character varying(50),
    variant character varying(50),
    note text,
    root character varying(50),
    english character varying(100),
    word character varying(50)
);


ALTER TABLE public.jaafari_backup OWNER TO kevin;

--
-- Name: jaafari_notes; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE jaafari_notes (
    stanza integer,
    pos character varying(5),
    location integer,
    lemma character varying(50),
    segment character varying(50),
    variant character varying(50),
    note text,
    root character varying(50),
    english character varying(100)
);


ALTER TABLE public.jaafari_notes OWNER TO kevin;

--
-- Name: jaafari_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE jaafari_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jaafari_poemline_id_seq OWNER TO kevin;

--
-- Name: jaafari_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE jaafari_poemline_id_seq OWNED BY jaafari.poemline_id;


--
-- Name: jaafari_words; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE jaafari_words (
    word_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    location integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    lemma character varying(50) DEFAULT ''::character varying NOT NULL,
    segment character varying(50) DEFAULT ''::character varying NOT NULL,
    variant character varying(50) DEFAULT ''::character varying NOT NULL,
    note text DEFAULT ''::text NOT NULL,
    root character varying(50) DEFAULT ''::character varying NOT NULL,
    english character varying(100) DEFAULT ''::character varying NOT NULL,
    word character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.jaafari_words OWNER TO kevin;

--
-- Name: jaafari_words_word_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE jaafari_words_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jaafari_words_word_id_seq OWNER TO kevin;

--
-- Name: jaafari_words_word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE jaafari_words_word_id_seq OWNED BY jaafari_words.word_id;


--
-- Name: kiswahili; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE kiswahili (
    poemline_id integer NOT NULL,
    stanza integer,
    loc character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.kiswahili OWNER TO kevin;

--
-- Name: kiswahili_backup; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE kiswahili_backup (
    word_id integer,
    stanza integer,
    loc character varying(5),
    "position" integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50),
    variant character varying(250),
    note text,
    root character varying(50),
    english character varying(250)
);


ALTER TABLE public.kiswahili_backup OWNER TO kevin;

--
-- Name: kiswahili_mybackup; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE kiswahili_mybackup (
    word_id integer,
    stanza integer,
    loc character varying(5),
    "position" integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50),
    variant character varying(250),
    note text,
    root character varying(50),
    english character varying(250)
);


ALTER TABLE public.kiswahili_mybackup OWNER TO kevin;

--
-- Name: kiswahili_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE kiswahili_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kiswahili_poemline_id_seq OWNER TO kevin;

--
-- Name: kiswahili_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE kiswahili_poemline_id_seq OWNED BY kiswahili.poemline_id;


--
-- Name: kiswahili_words; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE kiswahili_words (
    word_id integer NOT NULL,
    stanza integer,
    loc character varying(5),
    "position" integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50) DEFAULT ''::character varying NOT NULL,
    variant character varying(250) DEFAULT ''::character varying NOT NULL,
    note text DEFAULT ''::text NOT NULL,
    root character varying(50) DEFAULT ''::character varying NOT NULL,
    english character varying(250) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.kiswahili_words OWNER TO kevin;

--
-- Name: kiswahili_words_word_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE kiswahili_words_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kiswahili_words_word_id_seq OWNER TO kevin;

--
-- Name: kiswahili_words_word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE kiswahili_words_word_id_seq OWNED BY kiswahili_words.word_id;


--
-- Name: machozi; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE machozi (
    poemline_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.machozi OWNER TO kevin;

--
-- Name: machozi_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE machozi_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.machozi_poemline_id_seq OWNER TO kevin;

--
-- Name: machozi_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE machozi_poemline_id_seq OWNED BY machozi.poemline_id;


--
-- Name: maisha; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE maisha (
    poemline_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.maisha OWNER TO kevin;

--
-- Name: maisha_ar; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE maisha_ar (
    poemline_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.maisha_ar OWNER TO kevin;

--
-- Name: maisha_ar_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE maisha_ar_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maisha_ar_poemline_id_seq OWNER TO kevin;

--
-- Name: maisha_ar_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE maisha_ar_poemline_id_seq OWNED BY maisha_ar.poemline_id;


--
-- Name: maisha_mume; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE maisha_mume (
    poemline_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.maisha_mume OWNER TO kevin;

--
-- Name: maisha_mume_backup; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE maisha_mume_backup (
    word_id integer,
    stanza integer,
    pos character varying(5),
    location integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    lemma character varying(50),
    segment character varying(50),
    variant character varying(50),
    note text,
    root character varying(50),
    english character varying(100),
    word character varying(50),
    arword character varying(50),
    clword character varying(50)
);


ALTER TABLE public.maisha_mume_backup OWNER TO kevin;

--
-- Name: maisha_mume_notes; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE maisha_mume_notes (
    stanza integer,
    pos character varying(5),
    location integer,
    lemma character varying(50),
    segment character varying(50),
    variant character varying(50),
    note text,
    root character varying(50),
    english character varying(100)
);


ALTER TABLE public.maisha_mume_notes OWNER TO kevin;

--
-- Name: maisha_mume_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE maisha_mume_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maisha_mume_poemline_id_seq OWNER TO kevin;

--
-- Name: maisha_mume_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE maisha_mume_poemline_id_seq OWNED BY maisha_mume.poemline_id;


--
-- Name: maisha_mume_words; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE maisha_mume_words (
    word_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    location integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    lemma character varying(50) DEFAULT ''::character varying NOT NULL,
    segment character varying(50) DEFAULT ''::character varying NOT NULL,
    variant character varying(50) DEFAULT ''::character varying NOT NULL,
    note text DEFAULT ''::text NOT NULL,
    root character varying(50) DEFAULT ''::character varying NOT NULL,
    english character varying(100) DEFAULT ''::character varying NOT NULL,
    word character varying(50) DEFAULT ''::character varying NOT NULL,
    arword character varying(50) DEFAULT ''::character varying NOT NULL,
    clword character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.maisha_mume_words OWNER TO kevin;

--
-- Name: maisha_mume_words_word_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE maisha_mume_words_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maisha_mume_words_word_id_seq OWNER TO kevin;

--
-- Name: maisha_mume_words_word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE maisha_mume_words_word_id_seq OWNED BY maisha_mume_words.word_id;


--
-- Name: maisha_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE maisha_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maisha_poemline_id_seq OWNER TO kevin;

--
-- Name: maisha_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE maisha_poemline_id_seq OWNED BY maisha.poemline_id;


--
-- Name: mykiswahili_words; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE mykiswahili_words (
    word_id integer,
    stanza integer,
    loc character varying(5),
    "position" integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50),
    variant character varying(50),
    note text,
    root character varying(50),
    english character varying(100)
);


ALTER TABLE public.mykiswahili_words OWNER TO kevin;

--
-- Name: ulimi; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE ulimi (
    poemline_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.ulimi OWNER TO kevin;

--
-- Name: ulimi_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE ulimi_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ulimi_poemline_id_seq OWNER TO kevin;

--
-- Name: ulimi_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE ulimi_poemline_id_seq OWNED BY ulimi.poemline_id;


--
-- Name: vita_vikuu; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu (
    poemline_id integer NOT NULL,
    stanza integer,
    loc character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.vita_vikuu OWNER TO kevin;

--
-- Name: vita_vikuu_backup; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_backup (
    word_id integer,
    stanza integer,
    loc character varying(5),
    "position" integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50),
    variant character varying(250),
    note text,
    root character varying(50),
    english character varying(250)
);


ALTER TABLE public.vita_vikuu_backup OWNER TO kevin;

--
-- Name: vita_vikuu_backup_orig; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_backup_orig (
    word_id integer,
    stanza integer,
    pos character varying(5),
    location integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    lemma character varying(50),
    segment character varying(50),
    variant character varying(50),
    note text,
    root character varying(50),
    english character varying(100),
    word character varying(50)
);


ALTER TABLE public.vita_vikuu_backup_orig OWNER TO kevin;

--
-- Name: vita_vikuu_notes; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_notes (
    stanza integer,
    loc character varying(5),
    "position" integer,
    edclose character varying(50),
    variant character varying(250),
    note text,
    root character varying(50),
    english character varying(250)
);


ALTER TABLE public.vita_vikuu_notes OWNER TO kevin;

--
-- Name: vita_vikuu_notes_orig; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_notes_orig (
    stanza integer,
    pos character varying(5),
    location integer,
    lemma character varying(50),
    segment character varying(50),
    variant character varying(50),
    note text,
    root character varying(50),
    english character varying(100)
);


ALTER TABLE public.vita_vikuu_notes_orig OWNER TO kevin;

--
-- Name: vita_vikuu_orig; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_orig (
    poemline_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.vita_vikuu_orig OWNER TO kevin;

--
-- Name: vita_vikuu_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE vita_vikuu_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vita_vikuu_poemline_id_seq OWNER TO kevin;

--
-- Name: vita_vikuu_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE vita_vikuu_poemline_id_seq OWNED BY vita_vikuu_orig.poemline_id;


--
-- Name: vita_vikuu_poemline_id_seq1; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE vita_vikuu_poemline_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vita_vikuu_poemline_id_seq1 OWNER TO kevin;

--
-- Name: vita_vikuu_poemline_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE vita_vikuu_poemline_id_seq1 OWNED BY vita_vikuu.poemline_id;


--
-- Name: vita_vikuu_words; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_words (
    word_id integer NOT NULL,
    stanza integer,
    loc character varying(5),
    "position" integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50) DEFAULT ''::character varying NOT NULL,
    variant character varying(250) DEFAULT ''::character varying NOT NULL,
    note text DEFAULT ''::text NOT NULL,
    root character varying(50) DEFAULT ''::character varying NOT NULL,
    english character varying(250) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.vita_vikuu_words OWNER TO kevin;

--
-- Name: vita_vikuu_words_orig; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_words_orig (
    word_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
    location integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    lemma character varying(50) DEFAULT ''::character varying NOT NULL,
    segment character varying(50) DEFAULT ''::character varying NOT NULL,
    variant character varying(50) DEFAULT ''::character varying NOT NULL,
    note text DEFAULT ''::text NOT NULL,
    root character varying(50) DEFAULT ''::character varying NOT NULL,
    english character varying(100) DEFAULT ''::character varying NOT NULL,
    word character varying(50) DEFAULT ''::character varying NOT NULL,
    arword character varying(50) DEFAULT ''::character varying NOT NULL,
    clword character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.vita_vikuu_words_orig OWNER TO kevin;

--
-- Name: vita_vikuu_words_word_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE vita_vikuu_words_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vita_vikuu_words_word_id_seq OWNER TO kevin;

--
-- Name: vita_vikuu_words_word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE vita_vikuu_words_word_id_seq OWNED BY vita_vikuu_words_orig.word_id;


--
-- Name: vita_vikuu_words_word_id_seq1; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE vita_vikuu_words_word_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vita_vikuu_words_word_id_seq1 OWNER TO kevin;

--
-- Name: vita_vikuu_words_word_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE vita_vikuu_words_word_id_seq1 OWNED BY vita_vikuu_words.word_id;


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY jaafari ALTER COLUMN poemline_id SET DEFAULT nextval('jaafari_poemline_id_seq'::regclass);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY jaafari_words ALTER COLUMN word_id SET DEFAULT nextval('jaafari_words_word_id_seq'::regclass);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY kiswahili ALTER COLUMN poemline_id SET DEFAULT nextval('kiswahili_poemline_id_seq'::regclass);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY kiswahili_words ALTER COLUMN word_id SET DEFAULT nextval('kiswahili_words_word_id_seq'::regclass);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY machozi ALTER COLUMN poemline_id SET DEFAULT nextval('machozi_poemline_id_seq'::regclass);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY maisha ALTER COLUMN poemline_id SET DEFAULT nextval('maisha_poemline_id_seq'::regclass);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY maisha_ar ALTER COLUMN poemline_id SET DEFAULT nextval('maisha_ar_poemline_id_seq'::regclass);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY maisha_mume ALTER COLUMN poemline_id SET DEFAULT nextval('maisha_mume_poemline_id_seq'::regclass);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY maisha_mume_words ALTER COLUMN word_id SET DEFAULT nextval('maisha_mume_words_word_id_seq'::regclass);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY ulimi ALTER COLUMN poemline_id SET DEFAULT nextval('ulimi_poemline_id_seq'::regclass);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY vita_vikuu ALTER COLUMN poemline_id SET DEFAULT nextval('vita_vikuu_poemline_id_seq1'::regclass);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY vita_vikuu_orig ALTER COLUMN poemline_id SET DEFAULT nextval('vita_vikuu_poemline_id_seq'::regclass);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY vita_vikuu_words ALTER COLUMN word_id SET DEFAULT nextval('vita_vikuu_words_word_id_seq1'::regclass);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY vita_vikuu_words_orig ALTER COLUMN word_id SET DEFAULT nextval('vita_vikuu_words_word_id_seq'::regclass);


--
-- Data for Name: binkie; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO binkie VALUES (203, 9, 'e', 1, 'ْنْجُوْرٗڠٖ', 'njūroge', 'Njoroge', 'njūroge', '', '\Eit{njoroge}: a name representing those who have their origins in the East African interior (the \Eit{bara}).', '', 'The author is Njoroge,');
INSERT INTO binkie VALUES (29, 2, 'b', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (155, 7, 'c', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but you have all despised me.');
INSERT INTO binkie VALUES (244, 11, 'c', 3, 'كِبْوٖزِ', 'kibwezi', 'Kibwezi', 'kibwezi', '', '', '', '');
INSERT INTO binkie VALUES (287, 13, 'c', 2, 'هَكُنَ', 'hakuna', 'hakuna', 'hakuna', '', '', '', '');
INSERT INTO binkie VALUES (290, 13, 'd', 2, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO binkie VALUES (374, 16, 'h', 5, 'زتَ', 'zṯa', 'zita', 'zṯa', '', '', '', '');
INSERT INTO binkie VALUES (30, 2, 'b', 3, 'أُسْوَاحِلِنِ', 'uswāḥilini', 'Uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO binkie VALUES (1, 1, 'a', 1, 'كُنْيَمَا', 'kunyamā', 'kunyamaa', 'kunyamā', '', '', '', 'I am weary of staying silent.');
INSERT INTO binkie VALUES (2, 1, 'a', 2, 'نِ', 'ni', '~', '~', '', '', '', '');
INSERT INTO binkie VALUES (3, 1, 'a', 3, 'مٖػوْكَ', 'mekʲūka', 'nimechoka', 'nimekʲūka', '', '', '', '');
INSERT INTO binkie VALUES (68, 3, 'f', 2, 'زِيُوْنْڠُوْزِ', 'ziyūngūzi', 'ziongozi', 'ziyūngūzi', '', '', '', '');
INSERT INTO binkie VALUES (4, 1, 'b', 1, 'تَانْيَامَا', 'ṯānyāmā', 't''anyamaa', 'ṯānyāmā', '', '', '', 'For how much longer am I to remain dumb?');
INSERT INTO binkie VALUES (5, 1, 'b', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO binkie VALUES (6, 1, 'b', 3, 'لِنِ', 'lini', 'lini', 'lini', '', '', '', '');
INSERT INTO binkie VALUES (48, 2, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbona', 'mbūna', '', '', '', '[O my children] why do you continue waging war on me? ');
INSERT INTO binkie VALUES (49, 2, 'h', 2, 'هُنِپِجَ', 'hunipija', 'hunipija', 'hunipija', '', '', '', '');
INSERT INTO binkie VALUES (7, 1, 'c', 1, 'وَنَنْڠُ', 'wanangu', 'wanangu', 'wanangu', '', '', '', 'My own children avoid me, ');
INSERT INTO binkie VALUES (8, 1, 'c', 2, 'هُنِئٖپُوْكَ', 'huniepūka', 'huniepuka', 'huniepūka', '', '', '', '');
INSERT INTO binkie VALUES (31, 2, 'c', 1, 'أَصِلِ', 'aṣili', 'asili', 'aṣili', '', '', '', 'are uninterested');
INSERT INTO binkie VALUES (32, 2, 'c', 2, 'هَوَنَ', 'hawana', 'hawana', 'hawana', '', '', '', '');
INSERT INTO binkie VALUES (33, 2, 'c', 3, 'هَامُ', 'hāmu', 'hamu', 'hāmu', '', '', '', '');
INSERT INTO binkie VALUES (9, 1, 'd', 1, 'كُوَأٗنَ', 'kuwaona', 'kuwaona', 'kuwaona', '', '', '', 'though I long to see them.');
INSERT INTO binkie VALUES (10, 1, 'd', 2, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO binkie VALUES (11, 1, 'd', 3, 'تَمَانِ', 'ṯamāni', 'natamani', 'naṯamāni', '', '', '', '');
INSERT INTO binkie VALUES (12, 1, 'e', 1, 'والُوْبَاكِ', 'wālūbāki', 'walobaki', 'wālūbāki', '', '', '', 'And those who remain to embrace me');
INSERT INTO binkie VALUES (13, 1, 'e', 2, 'كُنِشِكَ', 'kunishika', 'kunishika', 'kunishika', '', '', '', '');
INSERT INTO binkie VALUES (50, 2, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO binkie VALUES (14, 1, 'f', 1, 'سِوَنْڠُ', 'siwangu', 'siwangu', 'si wangu', '', '', '', 'are not my own, but are the offspring of others.');
INSERT INTO binkie VALUES (15, 1, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (16, 1, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (17, 1, 'f', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO binkie VALUES (34, 2, 'd', 1, 'يَا', 'yā', 'ya', 'yā', '', '', '', ' in knowing who I am, ');
INSERT INTO binkie VALUES (18, 1, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'What have I done to you?');
INSERT INTO binkie VALUES (19, 1, 'g', 2, 'نِ', 'ni', '~', '~', '', '', '', '');
INSERT INTO binkie VALUES (20, 1, 'g', 3, 'مٖوَتٖنْدَانِ', 'mewaṯenḏāni', 'nimewatendani', 'nimewaṯenḏāni', '', '', '', '');
INSERT INTO binkie VALUES (35, 2, 'd', 2, 'كُنِيُوَ', 'kuniyuwa', 'kuniyuwa', 'kuniyuwa', '', '', '', '');
INSERT INTO binkie VALUES (36, 2, 'd', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (37, 2, 'd', 4, 'نَانِ', 'nāni', 'nani', 'nāni', '', '', '', '');
INSERT INTO binkie VALUES (21, 1, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbona', 'mbūna', '', '', '', 'Why do you wage war on me? ');
INSERT INTO binkie VALUES (22, 1, 'h', 2, 'هُنِپِجَ', 'hunipija', 'wanipija', 'hunipija', '', '', '', '');
INSERT INTO binkie VALUES (23, 1, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO binkie VALUES (69, 3, 'f', 3, 'وَدِنِ', 'waḏini', 'wa dini', 'wa ḏini', '', '', '', '');
INSERT INTO binkie VALUES (24, 2, 'a', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My own flesh and blood,');
INSERT INTO binkie VALUES (25, 2, 'a', 2, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', '');
INSERT INTO binkie VALUES (26, 2, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (27, 2, 'a', 4, 'دَمُ', 'ḏamu', 'damu', 'ḏamu', '', '', '', '');
INSERT INTO binkie VALUES (38, 2, 'e', 1, 'وَمٖنَتِيَ', 'wamenaṯiya', 'wamenatia', 'wamenaṯiya', '', '', '', 'and have left me to other peoples,');
INSERT INTO binkie VALUES (61, 3, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and in the other islands [of the Swahili],');
INSERT INTO binkie VALUES (51, 3, 'a', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am your mother and am not yet infertile,');
INSERT INTO binkie VALUES (28, 2, 'b', 1, 'وَانَ', 'wāna', 'wana', 'wāna', '', '', '', 'the children of Swahililand,');
INSERT INTO binkie VALUES (39, 2, 'e', 2, 'قَؤُمُ', 'qaumu', 'kaumu', 'qaumu', '', '', '', '');
INSERT INTO binkie VALUES (52, 3, 'a', 2, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', '');
INSERT INTO binkie VALUES (53, 3, 'a', 3, 'سِتَاسَ', 'siṯāsa', 'sit''asa', 'siṯāsa', '', '', '', '');
INSERT INTO binkie VALUES (40, 2, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to the children of neighbours.');
INSERT INTO binkie VALUES (41, 2, 'f', 2, 'وَنَ', 'wana', 'wana', 'wana', '', '', '', '');
INSERT INTO binkie VALUES (42, 2, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (43, 2, 'f', 4, 'مَجِرَنِ', 'majirani', 'majirani', 'majirani', '', '', '', '');
INSERT INTO binkie VALUES (62, 3, 'd', 2, 'كُنْڠِنٖ', 'kungine', 'kungine', 'kungine', '', '', '', '');
INSERT INTO binkie VALUES (63, 3, 'd', 3, 'زِسِوَنِ', 'zisiwani', 'zisiwani', 'zisiwani', '', '', '', '');
INSERT INTO binkie VALUES (44, 2, 'g', 1, 'كُوْسَ', 'kūsa', 'kosa', 'kūsa', '', '', '', 'What kind of fault is my fault?');
INSERT INTO binkie VALUES (45, 2, 'g', 2, 'لَنْڠُ', 'langu', 'langu', 'langu', '', '', '', '');
INSERT INTO binkie VALUES (46, 2, 'g', 3, 'كُوْسَ', 'kūsa', 'kosa', 'kūsa', '', '', '', '');
INSERT INTO binkie VALUES (47, 2, 'g', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO binkie VALUES (54, 3, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor has my ability to reproduce diminished.');
INSERT INTO binkie VALUES (55, 3, 'b', 2, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO binkie VALUES (56, 3, 'b', 3, 'پُنْڠُوَنِ', 'punguwani', 'punguwani', 'punguwani', '', '', '', '');
INSERT INTO binkie VALUES (64, 3, 'e', 1, 'نِزٖ', 'nize', 'nizee', 'nize', '', '', '', 'to politicians');
INSERT INTO binkie VALUES (57, 3, 'c', 1, 'نِ', 'ni', '~', '~', '', '', '', 'I have given birth to children in Mambasa,');
INSERT INTO binkie VALUES (58, 3, 'c', 2, 'مٖزَا', 'mezā', 'nimezaa', 'nimezā', '', '', '', '');
INSERT INTO binkie VALUES (59, 3, 'c', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (60, 3, 'c', 4, 'مَمْبَاسَ', 'mambāsa', 'Mambasa', 'mambāsa', '', '', '', '');
INSERT INTO binkie VALUES (65, 3, 'e', 2, 'وَنَ', 'wana', '~', '~', '', '', '', '');
INSERT INTO binkie VALUES (66, 3, 'e', 3, 'سِيَاسَ', 'siyāsa', 'wanasiasa', 'wanasiyāsa', '', '', '', '');
INSERT INTO binkie VALUES (77, 3, 'h', 4, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO binkie VALUES (67, 3, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to religious leaders,');
INSERT INTO binkie VALUES (82, 4, 'b', 2, 'مْوٖنْڠٗ', 'mwengo', 'Mwengo', 'mwengo', '', '', '', '');
INSERT INTO binkie VALUES (74, 3, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to war heroes. ');
INSERT INTO binkie VALUES (75, 3, 'h', 2, 'مَاشُجَا', 'māshujā', 'mashujaa', 'māshujā', '', '', '', '');
INSERT INTO binkie VALUES (70, 3, 'g', 1, 'مَافُنْدِ', 'māfunḏi', 'mafundi', 'māfunḏi', '', '', '', 'to craftsmen in every field,');
INSERT INTO binkie VALUES (71, 3, 'g', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (72, 3, 'g', 3, 'كُلَ', 'kula', 'kula', 'kula', '', '', '', '');
INSERT INTO binkie VALUES (73, 3, 'g', 4, 'فَنِ', 'fani', 'fani', 'fani', '', '', '', '');
INSERT INTO binkie VALUES (76, 3, 'h', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (80, 4, 'a', 3, 'مُيَاكَ', 'muyāka', 'Muyaka', 'muyāka', '', 'Bwana Muyaka was the outstanding Swahili poet of 19th century Mombasa.  After his death many of his verses were recalled by Mu''allim Sikujua Abdallah al-Batawi (died 1890) and transcribed with annotations by W.E. Taylor (1856-1927). After Taylor’s death his papers were acquired by the library of the School of Oriental and African Studies (SOAS), London.', '', '');
INSERT INTO binkie VALUES (78, 4, 'a', 1, 'نْدِمِ', 'nḏimi', 'ndimi', 'nḏimi', '', '', '', 'I am the mother of Bwana Muyaka,');
INSERT INTO binkie VALUES (79, 4, 'a', 2, 'مَامَاكٖ', 'māmāke', 'mamake', 'māmāke', '', '', '', '');
INSERT INTO binkie VALUES (83, 4, 'b', 3, 'عَثْمَانِ', '''athmāni', 'Athumani', '''ath\In{u}māni', '', 'Mwengo Athmani: this 18th century poet from Pate composed the \FN{Utendi wa Tambuka} (\Eit{The Epic of Heraklios}).', '', '');
INSERT INTO binkie VALUES (85, 4, 'c', 2, 'زَهِدِ', 'zahiḏi', 'Zahidi', 'zahiḏi', '', 'Zahidi: see \textcite{Maawy1973}.', '', '');
INSERT INTO binkie VALUES (81, 4, 'b', 1, 'پِيَ', 'piya', 'pia', 'piya', '', '', '', 'and of Mwengo Athmani also,');
INSERT INTO binkie VALUES (86, 4, 'c', 3, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO binkie VALUES (88, 4, 'd', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO binkie VALUES (84, 4, 'c', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and of Zahidi too,');
INSERT INTO binkie VALUES (89, 4, 'd', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO binkie VALUES (90, 4, 'd', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO binkie VALUES (87, 4, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and many of his contemporaries,');
INSERT INTO binkie VALUES (156, 7, 'c', 2, 'مُمٖنِپُوْزَ', 'mumenipūza', 'mumenipuuza', 'mumenipūza', '', '', '', '');
INSERT INTO binkie VALUES (138, 6, 'd', 1, 'هَاوَكُكِرِ', 'hāwakukiri', 'hawakukiri', 'hāwakukiri', '', '', '', 'they did not submit to lower standards.');
INSERT INTO binkie VALUES (119, 5, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'These verses are of enduring worth and will never die.');
INSERT INTO binkie VALUES (91, 4, 'e', 1, 'عالى', '''ālı̄', 'Ali', '''ālı̄', '', '', '', 'Ali Koti and Mataka,');
INSERT INTO binkie VALUES (92, 4, 'e', 2, 'كُوْتِ', 'kūṯi', 'Koti', 'kūṯi', '', 'Ali Koti of Pate: see \textcite[pp.31-7]{Chiraghdin1987}.', '', '');
INSERT INTO binkie VALUES (93, 4, 'e', 3, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (94, 4, 'e', 4, 'مَتَاكَ', 'maṯāka', 'Mataka', 'maṯāka', '', 'Bwana Mataka’s full name is Muhammad bin Shee Mataka al-Famau (1825-1868). He was ruler of Siyu, as was his father. His mother was Mwana Kupona, famous for the poem of advice written to her daughter. Bwana Mataka died in Mombasa’s fort while imprisoned by the Busa‘idi.', '', '');
INSERT INTO binkie VALUES (120, 5, 'f', 2, 'هَزِفِ', 'hazifi', 'hazifi', 'hazifi', '', '', '', '');
INSERT INTO binkie VALUES (121, 5, 'f', 3, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO binkie VALUES (95, 4, 'f', 1, 'وٗتٖ', 'woṯe', 'wote', 'woṯe', '', '', '', 'all from just one century,');
INSERT INTO binkie VALUES (96, 4, 'f', 2, 'مْبوَا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO binkie VALUES (97, 4, 'f', 3, 'مُوْيَ', 'mūya', 'moya', 'mūya', '', '', '', '');
INSERT INTO binkie VALUES (98, 4, 'f', 4, 'قَرِنِ', 'qarini', 'karini', 'qarini', '', '', '', '');
INSERT INTO binkie VALUES (139, 6, 'd', 2, 'اُدُنِ', 'uḏuni', 'uduni', 'uḏuni', '', '', '', '');
INSERT INTO binkie VALUES (99, 4, 'g', 1, 'وَلِتُوْكَ', 'waliṯūka', 'walitoka', 'waliṯūka', '', '', '', 'they emerged from my womb,');
INSERT INTO binkie VALUES (100, 4, 'g', 2, 'مَاتُوْمبونِ', 'māṯūmbūni', 'mtumboni', 'māṯūmbūni', '', '', '', '');
INSERT INTO binkie VALUES (122, 5, 'g', 1, 'وَالُوْزِتُنْڠَ', 'wālūziṯunga', 'walozitunga', 'wālūziṯunga', '', '', '', 'Who were those who composed them?');
INSERT INTO binkie VALUES (123, 5, 'g', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (101, 4, 'h', 1, 'وَ', 'wa', '~', '~', '', '', '', 'and shone like stars.');
INSERT INTO binkie VALUES (102, 4, 'h', 2, 'كَوَا', 'kawā', 'wakawaa', 'wakawā', '', '', '', '');
INSERT INTO binkie VALUES (103, 4, 'h', 3, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', '');
INSERT INTO binkie VALUES (104, 4, 'h', 4, 'نْيوتَ', 'nı̄ūṯa', 'nyota', 'nı̄ūṯa', '', '', '', '');
INSERT INTO binkie VALUES (124, 5, 'g', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO binkie VALUES (105, 5, 'a', 1, 'اِنْكِشَافِ', 'inkishāfi', 'Inkishafi', 'inkishāfi', '', 'The \FN{Inkishafi}, according to W.E. Taylor \parencite[pp96-105]{Stigand1915}, is ``a great, if not the greatest, religious classic of [the Swahili-speaking peoples]''''. The poem, concerned with the decay of Pate (formerly a flourishing town in northern Swahililand), may remind some readers of Thomas Gray''s \Eit{Elegy written in an English churchyard} (London 1751).', '', 'Look at Inkishafi.');
INSERT INTO binkie VALUES (106, 5, 'a', 2, 'نْڠَلِيَ', 'ngaliya', 'angalia', 'ngaliya', '', '', '', '');
INSERT INTO binkie VALUES (107, 5, 'b', 1, 'أُكِسٗوْمٖ', 'ukisōme', 'ukisome', 'ukisōme', '', '', '', 'Read it attentively');
INSERT INTO binkie VALUES (108, 5, 'b', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (109, 5, 'b', 3, 'كِدَنِ', 'kiḏani', 'kidani', 'kiḏani', '', '', '', '');
INSERT INTO binkie VALUES (140, 6, 'e', 1, 'نْنَابَهَانِ', 'nnābahāni', 'Nabahani', 'nnābahāni', '', 'In an unpublished commendation from 12 June 1974 J.W.T. Allen writes about Ahmad Sheikh Nabhany: ``I am privileged to have a wide circle of friends and acquaintances among Swahili scholars of Swahili. I have some knowledge of their rating of themselves and I can name perhaps half a dozen (still living) who are always referred to as the most learned. To me they are walking dictionaries and mines of information and Ahmed is unquestionably one of them. He comes of a family of scholars whose discipline is as tough as any degree course in the world. They have no time for false scholarship or dilettantism. That this profound learning is almost wholly disregarded by those who have been highly educated in the western tradition affects almost everything written today in or about Swahili. When I want to know some word or something about Swahili, I do not go to professors, but to one of the \textit{bingwa} known to me. One of these could give a much greater detail of assessment, but of course his opinion would not carry the weight of one who can put some totally irrelevant letters after his name''''. For a biography see \textcite{Said2012}.', '', 'al-Nabhany reproves,');
INSERT INTO binkie VALUES (125, 5, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'They were my children who have passed on. ');
INSERT INTO binkie VALUES (110, 5, 'c', 1, 'نْدِپُوْ', 'nḏipuu', 'ndipo', 'nḏipuu', '', '', '', 'and then you will understand,');
INSERT INTO binkie VALUES (111, 5, 'c', 2, 'تَاكَاپُوْ', 'ṯākāpuu', 'takapo', 'ṯākāpuu', '', '', '', '');
INSERT INTO binkie VALUES (112, 5, 'c', 3, 'كْوٖلٖيَ', 'kweleya', 'kwelea', 'kweleya', '', '', '', '');
INSERT INTO binkie VALUES (126, 5, 'h', 2, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', '');
INSERT INTO binkie VALUES (127, 5, 'h', 3, 'وَالُوْپِتَ', 'wālūpiṯa', 'walopita', 'wālūpiṯa', '', '', '', '');
INSERT INTO binkie VALUES (113, 5, 'd', 1, 'نِ', 'ni', '~', '~', '', '', '', 'my dear friend, ');
INSERT INTO binkie VALUES (114, 5, 'd', 2, 'كْوَامْبِيَاءٗ', 'kwāmbiyao', 'nikwambiyao', 'nikwāmbiyao', '', '', '', '');
INSERT INTO binkie VALUES (115, 5, 'd', 3, 'مْوٖنْدانِ', 'mwenḏāni', 'mwendani', 'mwenḏāni', '', '', '', '');
INSERT INTO binkie VALUES (116, 5, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'what I am telling you.');
INSERT INTO binkie VALUES (117, 5, 'e', 2, 'تُوْنْڠٗ', 'ṯūngo', 't''ungo', 'ṯūngo', '', '', '', '');
INSERT INTO binkie VALUES (118, 5, 'e', 3, 'زِمٖسَلِيَ', 'zimesaliya', 'zimesalia', 'zimesaliya', '', '', '', '');
INSERT INTO binkie VALUES (141, 6, 'e', 2, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO binkie VALUES (149, 7, 'a', 1, 'بَادٗ', 'bāḏo', 'bado', 'bāḏo', '', '', '', 'I am still able to give birth.');
INSERT INTO binkie VALUES (128, 6, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And the Bard of Mambasa,');
INSERT INTO binkie VALUES (129, 6, 'a', 2, 'مَالٖنْڠَ', 'mālenga', 'Malenga', 'mālenga', '', 'The Bard of Mambasa refers to Ustadh Ahmad Nassir Juma Bhalo, see \textcite{Chiraghdin1971}.', '', '');
INSERT INTO binkie VALUES (130, 6, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (131, 6, 'a', 4, 'مْڤِتَ', 'mviṯa', 'Mvita', 'mviṯa', '', '', '', '');
INSERT INTO binkie VALUES (150, 7, 'a', 2, 'كُزَا', 'kuzā', 'kuzaa', 'kuzā', '', '', '', '');
INSERT INTO binkie VALUES (142, 6, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but to what effect?');
INSERT INTO binkie VALUES (143, 6, 'f', 2, 'هُفَلِييانِ', 'hufalı̄yāni', 'hufaliyani', 'hufalı̄yāni', '', '', '', '');
INSERT INTO binkie VALUES (132, 6, 'b', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and Chiraghdin too,');
INSERT INTO binkie VALUES (133, 6, 'b', 2, 'پِيَ', 'piya', 'pia', 'piya', '', '', '', '');
INSERT INTO binkie VALUES (134, 6, 'b', 3, 'ػِرَاڠُ', 'kʲirāgu', '~', '~', '', '', '', '');
INSERT INTO binkie VALUES (135, 6, 'b', 4, 'دِنِ', 'ḏini', 'Chiraghudini', 'kʲirāguḏini', '', 'Shihabdin Chiraghdin (1934-1976). See the biography by his daughter -- \textcite{Chiraghdin2012}.', '', '');
INSERT INTO binkie VALUES (136, 6, 'c', 1, 'نْيايُو', 'nyāyuu', 'nyayo', 'nyāyuu', '', '', '', 'they followed in my footsteps,');
INSERT INTO binkie VALUES (137, 6, 'c', 2, 'ولِزِفُوَتَ', 'ūlizifuwaṯa', 'walizifuata', 'ūlizifuwaṯa', '', '', '', '');
INSERT INTO binkie VALUES (151, 7, 'a', 3, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO binkie VALUES (152, 7, 'a', 4, 'وٖزَ', 'weza', 'naweza', 'naweza', '', '', '', '');
INSERT INTO binkie VALUES (144, 6, 'g', 1, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', 'He remains alone in the field,');
INSERT INTO binkie VALUES (145, 6, 'g', 2, 'پْوٖكٖ', 'pweke', 'pweke', 'pweke', '', '', '', '');
INSERT INTO binkie VALUES (146, 6, 'g', 3, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO binkie VALUES (367, 16, 'g', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (159, 7, 'e', 1, 'وَنْڠِنٖ', 'wangine', 'wangine', 'wangine', '', '', '', 'now others have come forward');
INSERT INTO binkie VALUES (147, 6, 'h', 1, 'اِنْڠَا', 'ingā', 'ingawa', 'ingā', '', '', '', 'yet he stays strong.');
INSERT INTO binkie VALUES (148, 6, 'h', 2, 'اَمٖئِكِتَ', 'ameikiṯa', 'ameikita', 'ameikiṯa', '', '', '', '');
INSERT INTO binkie VALUES (160, 7, 'e', 2, 'مٖئِتُوكٖزَ', 'meiṯūkeza', 'meitokeza', 'meiṯūkeza', '', '', '', '');
INSERT INTO binkie VALUES (153, 7, 'b', 1, 'سِيَاكُوْمَ', 'siyākūma', 'siyakoma', 'siyākūma', '', '', '', 'I have not yet reached the limit,');
INSERT INTO binkie VALUES (154, 7, 'b', 2, 'اُكِنڠُوْنِ', 'ukingūni', 'ukingoni', 'ukingūni', '', '', '', '');
INSERT INTO binkie VALUES (157, 7, 'd', 1, 'مُمٖئِتٗوَ', 'mumeiṯowa', 'mumeitowa', 'mumeiṯowa', '', '', '', 'You have left me high and dry,');
INSERT INTO binkie VALUES (158, 7, 'd', 2, 'فُوٗنِ', 'fuwoni', 'fuoni', 'fuwoni', '', '', '', '');
INSERT INTO binkie VALUES (162, 7, 'f', 2, 'كَانُوْنِ', 'kānūni', 'kanuni', 'kānūni', '', '', '', '');
INSERT INTO binkie VALUES (163, 7, 'g', 1, 'مُسَمِيَاتِ', 'musamiyāṯi', 'musamiati', 'musamiyāṯi', '', '', '', 'compiling standardized dictionaries.');
INSERT INTO binkie VALUES (161, 7, 'f', 1, 'كُنِپانْڠِيَ', 'kunipāngiya', 'kunipangia', 'kunipāngiya', '', '', '', 'to regulate me,');
INSERT INTO binkie VALUES (166, 7, 'h', 2, 'مُلِپُوْنِوَتَ', 'mulipūniwaṯa', 'muliponiwata', 'mulipūniwaṯa', '', '', '', '');
INSERT INTO binkie VALUES (168, 8, 'a', 2, 'كِسِكِتِكَ', 'kisikiṯika', 'kisikitika', 'kisikiṯika', '', '', '', '');
INSERT INTO binkie VALUES (164, 7, 'g', 2, 'كُبُوْنِ', 'kubūni', 'kubuni', 'kubūni', '', 'For almost a century the principal publisher of standardized Swahili dictionaries has been the Oxford University Press (OUP). Clearly OUP has to be profitable, and profitable is what, over the years, their dictionaries of standardized Swahili have been. However, if one considers excellence in research and scholarship not one of the OUP’s standardized Swahili lexicons can begin to compare with the Oxford English Dictionary (`more than 600,000 words over a thousand years''). Fortunately for Swahili and for Swahili studies there exists the monumental \Eit{Dictionnaire swahili-français}, compiled by Charles Sacleux \parencite{Sacleux1939}. Sacleux’s chef d’oeuvre (`unprecedented in historical depth, dialectological detail and philological knowledge'') can now be accessed electronically, courtesy of \Eit{Swahili Forum} (\url{uni-leipzig.de/~afrika/swafo/index.php/sacleux}). Heartfelt thanks are due to Thilo Schadeberg and Ridder Samsom.', '', '');
INSERT INTO binkie VALUES (165, 7, 'h', 1, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO binkie VALUES (170, 8, 'b', 2, 'جَرِدَنِ', 'jariḏani', 'jaridani', 'jariḏani', '', '', '', '');
INSERT INTO binkie VALUES (167, 8, 'a', 1, 'هُلِيَ', 'huliya', 'hulia', 'huliya', '', '', '', 'I weep and lament');
INSERT INTO binkie VALUES (172, 8, 'c', 2, 'وَنَاءُ', 'wanau', '~', '~', '', '', '', '');
INSERT INTO binkie VALUES (169, 8, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the learned journals,');
INSERT INTO binkie VALUES (173, 8, 'c', 3, 'اَنْدِكَ', 'anḏika', 'wanaoandika', 'wanauanḏika', '', '', '', '');
INSERT INTO binkie VALUES (171, 8, 'c', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'for many of those who contribute ');
INSERT INTO binkie VALUES (232, 10, 'g', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My children, you have missed your opportunity.');
INSERT INTO binkie VALUES (220, 10, 'c', 1, 'هُوٗنَ', 'huwona', 'huona', 'huwona', '', '', '', 'I feel exceedingly bitter');
INSERT INTO binkie VALUES (174, 8, 'd', 1, 'سِوَنَانْڠُ', 'siwanāngu', 'si wanangu', 'si wanāngu', '', '', '', 'are not my children, they are strangers [to me].');
INSERT INTO binkie VALUES (175, 8, 'd', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (176, 8, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO binkie VALUES (204, 9, 'e', 2, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', '');
INSERT INTO binkie VALUES (177, 8, 'e', 1, 'اِذَاعَانِ', 'idhā''āni', 'idhaani', 'idhā''āni', '', '', '', 'It is much the same with the media. ');
INSERT INTO binkie VALUES (178, 8, 'e', 2, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO binkie VALUES (205, 9, 'e', 3, 'كَتِبُ', 'kaṯibu', 'katibu', 'kaṯibu', '', '', '', '');
INSERT INTO binkie VALUES (221, 10, 'c', 2, 'اُتُنْڠُ', 'uṯungu', 'utungu', 'uṯungu', '', '', '', '');
INSERT INTO binkie VALUES (179, 8, 'f', 1, 'وَپٖكَ', 'wapeka', 'wapeka', 'wapeka', '', '', '', 'Who are the ones who send in their compositions? ');
INSERT INTO binkie VALUES (180, 8, 'f', 2, 'تُنْڠٗ', 'ṯungo', 't''ungo', 'ṯungo', '', '', '', '');
INSERT INTO binkie VALUES (181, 8, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (182, 8, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO binkie VALUES (222, 10, 'c', 3, 'مْنُو', 'mnuu', 'mno', 'mnuu', '', '', '', '');
INSERT INTO binkie VALUES (206, 9, 'f', 1, 'اَشِشِيٖؤٗ', 'ashishiyeo', 'ashishiyeo', 'ashishiyeo', '', '', '', 'he is the helmsman. ');
INSERT INTO binkie VALUES (207, 9, 'f', 2, 'سُكَانِ', 'sukāni', 'sukani', 'sukāni', '', '', '', '');
INSERT INTO binkie VALUES (183, 8, 'g', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'Many do not come from the coast,');
INSERT INTO binkie VALUES (184, 8, 'g', 2, 'هَاوَتُوْك', 'hāwaṯūk', 'hawatoki', 'hāwaṯūk', '', '', '', '');
INSERT INTO binkie VALUES (185, 8, 'g', 3, 'پْوان', 'pwān', 'p''wani', 'pwān', '', '', '', '');
INSERT INTO binkie VALUES (186, 8, 'h', 1, 'لِػَ', 'likʲa', 'licha', 'likʲa', '', '', '', 'although they may have a Mambasa address.');
INSERT INTO binkie VALUES (187, 8, 'h', 2, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', '');
INSERT INTO binkie VALUES (188, 8, 'h', 3, 'مْبوا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO binkie VALUES (189, 8, 'h', 4, 'مْڤِتَ', 'mviṯa', 'Mvita', 'mviṯa', '', '', '', '');
INSERT INTO binkie VALUES (190, 9, 'a', 1, 'اَنڠَلِيَ', 'angaliya', 'angalia', 'angaliya', '', '', '', 'Look at the textbooks');
INSERT INTO binkie VALUES (191, 9, 'a', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (192, 9, 'a', 3, 'زِتَابُ', 'ziṯābu', 'zitabu', 'ziṯābu', '', '', '', '');
INSERT INTO binkie VALUES (233, 10, 'g', 2, 'مُمٖئِخِنِ', 'mumeikhini', 'mumeihini', 'mumeikhini', '', '', '', '');
INSERT INTO binkie VALUES (208, 9, 'g', 1, 'ػَارٗ', 'kʲāro', 'Charo', 'kʲāro', '', '\Eit{charo}: a name representing those who have their origins in the coastal hinterland (the \Eit{nyika}).', '', 'Charo and his colleagues');
INSERT INTO binkie VALUES (193, 9, 'b', 1, 'زِسُوْمٖشْوَاءٗ', 'zisūmeshwao', 'zisumeshwao', 'zisūmeshwao', '', '', '', 'which are studied at our schools.');
INSERT INTO binkie VALUES (194, 9, 'b', 2, 'شُلٖنِ', 'shuleni', 'shuleni', 'shuleni', '', '', '', '');
INSERT INTO binkie VALUES (209, 9, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (210, 9, 'g', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO binkie VALUES (211, 9, 'g', 4, 'وٖنْدانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO binkie VALUES (195, 9, 'c', 1, 'هَازَانْدِكْوِ', 'hāzānḏikwi', 'hazandikwi', 'hāzānḏikwi', '', '', '', 'They are written neither by Rajabu,');
INSERT INTO binkie VALUES (196, 9, 'c', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (197, 9, 'c', 3, 'رَجَبُ', 'rajabu', 'Rajabu', 'rajabu', '', '', '', '');
INSERT INTO binkie VALUES (198, 9, 'd', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'nor by Sudi nor by Shani.');
INSERT INTO binkie VALUES (199, 9, 'd', 2, 'سُوْدِ', 'sūḏi', 'Sudi', 'sūḏi', '', '', '', '');
INSERT INTO binkie VALUES (200, 9, 'd', 3, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', '');
INSERT INTO binkie VALUES (201, 9, 'd', 4, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO binkie VALUES (202, 9, 'd', 5, 'شَانِ', 'shāni', 'Shani', 'shāni', '', '', '', '');
INSERT INTO binkie VALUES (223, 10, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that I do not see you all there.');
INSERT INTO binkie VALUES (212, 9, 'h', 1, 'نَاءٗ', 'nao', 'nao', 'nao', '', '', '', 'follow. ');
INSERT INTO binkie VALUES (213, 9, 'h', 2, 'نْيُوْمَ', 'nyūma', 'nyuma', 'nyūma', '', '', '', '');
INSERT INTO binkie VALUES (214, 9, 'h', 3, 'هُفُوَتَ', 'hufuwaṯa', 'hufuata', 'hufuwaṯa', '', '', '', '');
INSERT INTO binkie VALUES (224, 10, 'd', 2, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO binkie VALUES (225, 10, 'd', 3, 'سِوَأٗنِ', 'siwaoni', 'siwaoni', 'siwaoni', '', '', '', '');
INSERT INTO binkie VALUES (215, 10, 'a', 1, 'هُوَلِكْوَا', 'huwalikwā', 'hualikwa', 'huwalikwā', '', '', '', 'When I am invited to conferences,');
INSERT INTO binkie VALUES (216, 10, 'a', 2, 'كُوْنْڠَمَانٗ', 'kūngamāno', 'kongamano', 'kūngamāno', '', '', '', '');
INSERT INTO binkie VALUES (217, 10, 'b', 1, 'ػٖنْدَ', 'kʲenḏa', 'chenda', 'kʲenḏa', '', '', '', 'I turn back before I arrive.');
INSERT INTO binkie VALUES (218, 10, 'b', 2, 'هُرُدِ', 'huruḏi', 'hurudi', 'huruḏi', '', '', '', '');
INSERT INTO binkie VALUES (219, 10, 'b', 3, 'نْدِيَانِ', 'nḏiyāni', 'ndiani', 'nḏiyāni', '', '', '', '');
INSERT INTO binkie VALUES (240, 11, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the results of the school exams.');
INSERT INTO binkie VALUES (234, 10, 'h', 1, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', 'You have abandoned your own mother. ');
INSERT INTO binkie VALUES (235, 10, 'h', 2, 'مُمٖنِوَتَ', 'mumeniwaṯa', 'mumeniwata', 'mumeniwaṯa', '', '', '', '');
INSERT INTO binkie VALUES (226, 10, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'I bite my fingers in frustration,');
INSERT INTO binkie VALUES (227, 10, 'e', 2, 'هُزِاُمَ', 'huziuma', 'huziuma', 'huziuma', '', '', '', '');
INSERT INTO binkie VALUES (228, 10, 'e', 3, 'زِتَانِ', 'ziṯāni', 'zitano', 'ziṯāni', '', 'These words echo the words of the \FN{Inkishafi}: ``\Eit{wakauma zanda na kuiyuta}''''. Readers unfamiliar with this Swahili gesture of regret could consult \textcite{Eastman1985}.', '', '');
INSERT INTO binkie VALUES (229, 10, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but what can I do?');
INSERT INTO binkie VALUES (230, 10, 'f', 2, 'نِتٖنْدٖ', 'niṯenḏe', 'nitende', 'niṯenḏe', '', '', '', '');
INSERT INTO binkie VALUES (231, 10, 'f', 3, 'نْنِ', 'nni', 'nini', 'nni', '', '', '', '');
INSERT INTO binkie VALUES (241, 11, 'b', 2, 'مِتِحَانِ', 'miṯiḥāni', 'mitihani', 'miṯiḥāni', '', '', '', '');
INSERT INTO binkie VALUES (236, 11, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And I shed tears');
INSERT INTO binkie VALUES (237, 11, 'a', 2, 'هُلِيَ', 'huliya', 'hulia', 'huliya', '', '', '', '');
INSERT INTO binkie VALUES (238, 11, 'a', 3, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO binkie VALUES (239, 11, 'a', 4, 'مَاتُوْزِ', 'māṯūzi', 'matozi', 'māṯūzi', '', '', '', '');
INSERT INTO binkie VALUES (246, 11, 'd', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (242, 11, 'c', 1, 'وَنَفُنْدِ', 'wanafunḏi', 'wanafundi', 'wanafunḏi', '', '', '', 'Students from Kibwezi, ');
INSERT INTO binkie VALUES (243, 11, 'c', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO binkie VALUES (247, 11, 'd', 3, 'كِسُومُ', 'kisūmu', 'Kisumu', 'kisūmu', '', 'Kibwezi and Kisumu are places in the East African interior.', '', '');
INSERT INTO binkie VALUES (250, 11, 'e', 2, 'وَنَاءٗ', 'wanao', 'wanao', 'wanao', '', '', '', '');
INSERT INTO binkie VALUES (253, 11, 'f', 2, 'كِلٖلٖنِ', 'kileleni', 'kileleni', 'kileleni', '', '', '', '');
INSERT INTO binkie VALUES (255, 11, 'g', 2, 'كْوٖتُ', 'kweṯu', 'kwetu', 'kweṯu', '', '', '', '');
INSERT INTO binkie VALUES (245, 11, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and from Kisumu by the lake,');
INSERT INTO binkie VALUES (248, 11, 'd', 4, 'زِوَنِ', 'ziwani', 'ziwani', 'ziwani', '', 'The lake is Lake Nyanza, also known as Lake Victoria.', '', '');
INSERT INTO binkie VALUES (249, 11, 'e', 1, 'نْدِوٗ', 'nḏiwo', 'ndiwo', 'nḏiwo', '', '', '', 'they are the ones who are ahead,');
INSERT INTO binkie VALUES (251, 11, 'e', 3, 'بَارِزِ', 'bārizi', 'barizi', 'bārizi', '', '', '', '');
INSERT INTO binkie VALUES (252, 11, 'f', 1, 'وَلِيُوكُوْ', 'waliyūkuu', 'waliyukuu', 'waliyūkuu', '', '', '', 'who are at the top;');
INSERT INTO binkie VALUES (256, 11, 'g', 3, 'پْوانِ', 'pwāni', 'p''wani', 'pwāni', '', '', '', '');
INSERT INTO binkie VALUES (258, 11, 'h', 2, 'تِنِ', 'ṯini', 't''ini', 'ṯini', '', '', '', '');
INSERT INTO binkie VALUES (254, 11, 'g', 1, 'مُلُوْتُوْكَ', 'mulūṯūka', 'mulotoka', 'mulūṯūka', '', '', '', 'and you, students from the coast,');
INSERT INTO binkie VALUES (259, 11, 'h', 3, 'هُكُوْكُوْتَ', 'hukūkūṯa', 'hukokota', 'hukūkūṯa', '', 'Over the years young people on Lamu Island (and indeed elsewhere in northern Swahililand) have received a raw deal in their primary and secondary education. They have `lagged far behind'' their counterparts from the interior, and so Mother Swahili grieves for her marginalised children.', '', '');
INSERT INTO binkie VALUES (257, 11, 'h', 1, 'مُكُوْ', 'mukuu', 'muko', 'mukuu', '', '', '', 'you lag far behind.');
INSERT INTO binkie VALUES (288, 13, 'c', 3, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO binkie VALUES (260, 12, 'a', 1, 'وَفَانْيَاءٗ', 'wafānyao', 'wafanyao', 'wafānyao', '', '', '', 'Amongst those who are researching');
INSERT INTO binkie VALUES (261, 12, 'a', 2, 'اُتَفِتِ', 'uṯafiṯi', 'utafiti', 'uṯafiṯi', '', '', '', '');
INSERT INTO binkie VALUES (262, 12, 'b', 1, 'وَ', 'wa', 'wa', 'wa', '', '', '', 'for degrees at the universities,');
INSERT INTO binkie VALUES (263, 12, 'b', 2, 'أُزَمِلِ', 'uzamili', 'uzamili', 'uzamili', '', '', '', '');
INSERT INTO binkie VALUES (264, 12, 'b', 3, 'ػُوٗنِ', 'kʲuwoni', 'chuwoni', 'kʲuwoni', '', '', '', '');
INSERT INTO binkie VALUES (306, 14, 'a', 3, 'تَارُدِ', 'ṯāruḏi', 'tarudi', 'ṯāruḏi', '', '', '', '');
INSERT INTO binkie VALUES (265, 12, 'c', 1, 'وَسْوَاهِلِ', 'waswāhili', 'Waswahili', 'waswāhili', '', '', '', 'Swahili students are few');
INSERT INTO binkie VALUES (266, 12, 'c', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (267, 12, 'c', 3, 'كَاتِتِ', 'kāṯiṯi', 'katiti', 'kāṯiṯi', '', '', '', '');
INSERT INTO binkie VALUES (289, 13, 'd', 1, 'نَحَؤُ', 'naḥau', 'nahau', 'naḥau', '', '', '', 'while grammatical [Swahili] is what I desire!');
INSERT INTO binkie VALUES (268, 12, 'd', 1, 'اَوْ', 'aw', 'au', 'aw', '', '', '', ' or non-existent.');
INSERT INTO binkie VALUES (269, 12, 'd', 2, 'هَوَپَاتِكَانِ', 'hawapāṯikāni', 'hawapatikani', 'hawapāṯikāni', '', '', '', '');
INSERT INTO binkie VALUES (291, 13, 'd', 3, 'ئِتَمَانِ', 'iṯamāni', 'naitamani', 'naiṯamāni', '', '', '', '');
INSERT INTO binkie VALUES (270, 12, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'Who is to be blamed?');
INSERT INTO binkie VALUES (271, 12, 'e', 2, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO binkie VALUES (272, 12, 'e', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (273, 12, 'e', 4, 'مْلَئِتِ', 'mlaiṯi', 'mlaiti', 'mlaiṯi', '', '', '', '');
INSERT INTO binkie VALUES (324, 14, 'h', 3, 'كُوَپَاتَ', 'kuwapāṯa', 'kuwapata', 'kuwapāṯa', '', '', '', '');
INSERT INTO binkie VALUES (274, 12, 'f', 1, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', 'Whose fault is it?');
INSERT INTO binkie VALUES (275, 12, 'f', 2, 'مَاكُوْسَ', 'mākūsa', 'makosa', 'mākūsa', '', '', '', '');
INSERT INTO binkie VALUES (276, 12, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (277, 12, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO binkie VALUES (317, 14, 'f', 1, 'وَنِيُوَاءٗ', 'waniyuwao', 'waniyuwao', 'waniyuwao', '', '', '', 'who know me well,');
INSERT INTO binkie VALUES (292, 13, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'Even [their speech] is wanting in flavour,');
INSERT INTO binkie VALUES (278, 12, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'You esteem me not at all,');
INSERT INTO binkie VALUES (279, 12, 'g', 2, 'هَامُنِثَمِنِ', 'hāmunithamini', 'hamunithamini', 'hāmunithamini', '', '', '', '');
INSERT INTO binkie VALUES (293, 13, 'e', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO binkie VALUES (294, 13, 'e', 3, 'لَذَ', 'ladha', 'ladha', 'ladha', '', '', '', '');
INSERT INTO binkie VALUES (280, 12, 'h', 1, 'مْڠِنٖ', 'mgine', 'mngine', 'mgine', '', '', '', 'yet you have not replaced me by another.');
INSERT INTO binkie VALUES (281, 12, 'h', 2, 'هَامُكُپَاتَ', 'hāmukupāṯa', 'hamukupata', 'hāmukupāṯa', '', '', '', '');
INSERT INTO binkie VALUES (295, 13, 'e', 4, 'هَيَانَ', 'hayāna', 'hayana', 'hayāna', '', '', '', '');
INSERT INTO binkie VALUES (282, 13, 'a', 1, 'كِوَسِكِيَ', 'kiwasikiya', 'kiwasikiya', 'kiwasikiya', '', '', '', 'When I hear those who are not mother-tongue speakers speaking,');
INSERT INTO binkie VALUES (283, 13, 'a', 2, 'هُنِيْنَ', 'hunı̄na', 'hunena', 'hunı̄na', '', '', '', '');
INSERT INTO binkie VALUES (284, 13, 'b', 1, 'هُنِأٗنْڠُوْنْڠَ', 'huniongūnga', 'huniungonga', 'huniongūnga', '', '', '', 'I feel sick at heart.');
INSERT INTO binkie VALUES (285, 13, 'b', 2, 'مُويُوْنِ', 'mūyūni', 'moyoni', 'mūyūni', '', '', '', '');
INSERT INTO binkie VALUES (307, 14, 'b', 1, 'اَيْ', 'ay', 'ae', 'ay', '', '', '', 'were he to come back to the world,');
INSERT INTO binkie VALUES (308, 14, 'b', 2, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO binkie VALUES (309, 14, 'b', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniani', 'ḏuniyāni', '', '', '', '');
INSERT INTO binkie VALUES (286, 13, 'c', 1, 'صَرْفَ', 'ṣarfa', 'sarufi', 'ṣarfa', '', '', '', 'Inflection is no longer employed,');
INSERT INTO binkie VALUES (296, 13, 'f', 1, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', 'like a plug of tobacco in one’s mouth.');
INSERT INTO binkie VALUES (297, 13, 'f', 2, 'مَشَاپُوْ', 'mashāpuu', 'mashapu', 'mashāpuu', '', '', '', '');
INSERT INTO binkie VALUES (298, 13, 'f', 3, 'كَانْوَانِ', 'kānwāni', 'kanwani', 'kānwāni', '', '', '', '');
INSERT INTO binkie VALUES (318, 14, 'f', 2, 'يَقِيْنِ', 'yaqı̄ni', 'yakini', 'yaqı̄ni', '', '', '', '');
INSERT INTO binkie VALUES (299, 13, 'g', 1, 'سِئٖلٖوِ', 'sielewi', 'sielewi', 'sielewi', '', '', '', 'I do not understand what they are saying.');
INSERT INTO binkie VALUES (300, 13, 'g', 2, 'هُنٖنَانِ', 'hunenāni', 'hunenani', 'hunenāni', '', '', '', '');
INSERT INTO binkie VALUES (310, 14, 'c', 1, 'موَانَانْڠُ', 'mwānāngu', 'mwanangu', 'mwānāngu', '', '', '', 'it would be necessary, my child,');
INSERT INTO binkie VALUES (311, 14, 'c', 2, 'اِتَمْبِدِ', 'iṯambiḏi', 'itambidi', 'iṯambiḏi', '', '', '', '');
INSERT INTO binkie VALUES (301, 13, 'h', 1, 'هُئِمْبَ', 'huimba', 'huimba', 'huimba', '', '', '', 'Are they singing? Are they complaining? ');
INSERT INTO binkie VALUES (302, 13, 'h', 2, 'اَوْ', 'aw', 'au', 'aw', '', '', '', '');
INSERT INTO binkie VALUES (303, 13, 'h', 3, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO binkie VALUES (304, 14, 'a', 1, 'لَوْ', 'law', 'lau', 'law', '', '', '', 'Were Bwana Muyaka to return,');
INSERT INTO binkie VALUES (305, 14, 'a', 2, 'مُيَاكَ', 'muyāka', 'Muyaka', 'muyāka', '', '', '', '');
INSERT INTO binkie VALUES (312, 14, 'd', 1, 'كْوٖنٖنْدَ', 'kwenenḏa', 'kwenenda', 'kwenenḏa', '', '', '', 'for him to go to a court of law,');
INSERT INTO binkie VALUES (313, 14, 'd', 2, 'مَحَكَمَانِ', 'maḥakamāni', 'mahakamani', 'maḥakamāni', '', '', '', '');
INSERT INTO binkie VALUES (334, 15, 'd', 2, 'هَمُنِثَمِنِ', 'hamunithamini', 'hamunithamini', 'hamunithamini', '', '', '', '');
INSERT INTO binkie VALUES (319, 14, 'g', 1, 'نْيُوْتٖ', 'nyūṯe', 'nyote', 'nyūṯe', '', '', '', 'and all of you would go to prison');
INSERT INTO binkie VALUES (314, 14, 'e', 1, 'اَئٖتٖ', 'aeṯe', 'aete', 'aeṯe', '', '', '', 'and he would need to call witnesses');
INSERT INTO binkie VALUES (315, 14, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (316, 14, 'e', 3, 'مَشَهِدِ', 'mashahiḏi', 'mashahidi', 'mashahiḏi', '', '', '', '');
INSERT INTO binkie VALUES (320, 14, 'g', 2, 'مْوٖنْدٖ', 'mwenḏe', 'mwende', 'mwenḏe', '', '', '', '');
INSERT INTO binkie VALUES (321, 14, 'g', 3, 'ڠٖرٖزَنِ', 'gerezani', 'gerezani', 'gerezani', '', '', '', '');
INSERT INTO binkie VALUES (331, 15, 'c', 1, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', 'It irritates you not at all');
INSERT INTO binkie VALUES (328, 15, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor self-confidence.');
INSERT INTO binkie VALUES (329, 15, 'b', 2, 'هَامُوْنَ', 'hāmūna', 'hamuna', 'hāmūna', '', '', '', '');
INSERT INTO binkie VALUES (322, 14, 'h', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'for the offence which you have committed against me. ');
INSERT INTO binkie VALUES (323, 14, 'h', 2, 'حَتِيَ', 'ḥaṯiya', 'hatia', 'ḥaṯiya', '', '', '', '');
INSERT INTO binkie VALUES (325, 15, 'a', 1, 'وَاللّٰهِ', 'wallähi', 'wallahi', 'wallähi', '', '', '', 'Truly you have neither zeal');
INSERT INTO binkie VALUES (326, 15, 'a', 2, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', '');
INSERT INTO binkie VALUES (327, 15, 'a', 3, 'غٖيْرَ', 'ḡēra', 'ghera', 'ḡēra', '', '', '', '');
INSERT INTO binkie VALUES (332, 15, 'c', 2, 'لَكُوَكٖرَ', 'lakuwakera', 'la kuwakera', 'la kuwakera', '', '', '', '');
INSERT INTO binkie VALUES (330, 15, 'b', 3, 'اِمَانِ', 'imāni', 'imani', 'imāni', '', '', '', '');
INSERT INTO binkie VALUES (336, 15, 'e', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (333, 15, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that you do not esteem me.');
INSERT INTO binkie VALUES (337, 15, 'e', 3, 'كَامَ', 'kāma', 'kama', 'kāma', '', '', '', '');
INSERT INTO binkie VALUES (338, 15, 'e', 4, 'مْپِوِرِ', 'mpiwiri', 'mpwira', 'mpiwiri', '', '', '', '');
INSERT INTO binkie VALUES (340, 15, 'f', 2, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO binkie VALUES (335, 15, 'e', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am just like a ball');
INSERT INTO binkie VALUES (342, 15, 'g', 2, 'تٖكٖنْدِيَانَ', 'ṯekenḏiyāna', 'teke ndiani', 'ṯeke nḏiyāni', '', '', '', '');
INSERT INTO binkie VALUES (339, 15, 'f', 1, 'هُتٖزٖوَ', 'huṯezewa', 'hutezewa', 'huṯezewa', '', '', '', 'in the play-ground,');
INSERT INTO binkie VALUES (341, 15, 'g', 1, 'هِپِجْوَا', 'hipijwā', 'hipijwa', 'hipijwā', '', '', '', 'I am given a kick');
INSERT INTO binkie VALUES (343, 15, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'by anyone who passes by in the street.');
INSERT INTO binkie VALUES (344, 15, 'h', 2, 'كُلَ', 'kula', 'kula', 'kula', '', '', '', '');
INSERT INTO binkie VALUES (345, 15, 'h', 3, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', '');
INSERT INTO binkie VALUES (346, 15, 'h', 4, 'كُپِتَ', 'kupiṯa', 'kupita', 'kupiṯa', '', '', '', '');
INSERT INTO binkie VALUES (420, 18, 'g', 3, 'كْوَاءٗ', 'kwao', 'kwao', 'kwao', '', '', '', '');
INSERT INTO binkie VALUES (392, 17, 'f', 1, 'اَلُوْنَانْدِكَ', 'alūnānḏika', 'alonandika', 'alūnānḏika', '', '', '', 'And who are they who wrote me down?');
INSERT INTO binkie VALUES (347, 16, 'a', 1, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', 'Even in the field of Swahili prosody,');
INSERT INTO binkie VALUES (348, 16, 'a', 2, 'كْوٖنْيٖ', 'kwenye', 'kwenye', 'kwenye', '', '', '', '');
INSERT INTO binkie VALUES (349, 16, 'a', 3, 'اُشَعِرِ', 'usha''iri', 'ushairi', 'usha''iri', '', '', '', '');
INSERT INTO binkie VALUES (393, 17, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (375, 17, 'a', 1, 'هَمْبِوَ', 'hambiwa', 'hambiwa', 'hambiwa', '', '', '', 'I am told that I belong to nobody in particular.');
INSERT INTO binkie VALUES (376, 17, 'a', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO binkie VALUES (350, 16, 'b', 1, 'وَاسُوْ', 'wāsuu', 'waso', 'wāsuu', '', '', '', 'those who are not mine have invented');
INSERT INTO binkie VALUES (351, 16, 'b', 2, 'وَنْڠُ', 'wangu', 'wangu', 'wangu', '', '', '', '');
INSERT INTO binkie VALUES (352, 16, 'b', 3, 'وَمٖبُوْنِ', 'wamebūni', 'wamebuni', 'wamebūni', '', '', '', '');
INSERT INTO binkie VALUES (377, 17, 'a', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO binkie VALUES (353, 16, 'c', 1, 'زِلِزٗ', 'zilizo', 'zilizo', 'zilizo', '', '', '', 'free verse,');
INSERT INTO binkie VALUES (354, 16, 'c', 2, 'حُرُ', 'ḥuru', 'huru', 'ḥuru', '', '', '', '');
INSERT INTO binkie VALUES (355, 16, 'c', 3, 'بَحَارِ', 'baḥāri', 'bahari', 'baḥāri', '', '', '', '');
INSERT INTO binkie VALUES (394, 17, 'f', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO binkie VALUES (356, 16, 'd', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'imitating foreigners.');
INSERT INTO binkie VALUES (357, 16, 'd', 2, 'كُوٗلٖزَ', 'kuwoleza', 'kuoleza', 'kuwoleza', '', '', '', '');
INSERT INTO binkie VALUES (358, 16, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO binkie VALUES (359, 16, 'e', 1, 'ممِ', 'mmi', 'mimi', 'mmi', '', '', '', 'For myself, I cannot accept that.');
INSERT INTO binkie VALUES (360, 16, 'e', 2, 'هَايُو', 'hāyuu', 'hayo', 'hāyuu', '', '', '', '');
INSERT INTO binkie VALUES (361, 16, 'e', 3, 'سِيَاكِرِ', 'siyākiri', 'siyakiri', 'siyākiri', '', '', '', '');
INSERT INTO binkie VALUES (378, 17, 'b', 1, 'هِنِ', 'hini', 'hini', 'hini', '', '', '', 'How extraordinary!');
INSERT INTO binkie VALUES (379, 17, 'b', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO binkie VALUES (380, 17, 'b', 3, 'عَجَابُ', '''ajābu', 'ajabu', '''ajābu', '', '', '', '');
INSERT INTO binkie VALUES (362, 16, 'f', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'That is not Swahili poetry.');
INSERT INTO binkie VALUES (363, 16, 'f', 2, 'مَاشَعِرِ', 'māsha''iri', 'mashairi', 'māsha''iri', '', '', '', '');
INSERT INTO binkie VALUES (364, 16, 'f', 3, 'كِفَنِ', 'kifani', 'kifani', 'kifani', '', '', '', '');
INSERT INTO binkie VALUES (381, 17, 'b', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO binkie VALUES (404, 18, 'b', 1, 'سِدَلِلِ', 'siḏalili', 'si dalili', 'si ḏalili', '', '', '', 'is not of itself proof of origins,');
INSERT INTO binkie VALUES (365, 16, 'g', 1, 'هَاىُوْ', 'hāyuu', 'hayo', 'hāyuu', '', '', '', 'What is the point of it all?');
INSERT INTO binkie VALUES (366, 16, 'g', 2, 'ىُوْت', 'yūṯ', 'yote', 'yūṯ', '', '', '', '');
INSERT INTO binkie VALUES (368, 16, 'g', 4, 'كْوا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO binkie VALUES (369, 16, 'g', 5, 'نْن', 'nn', 'nini', 'nn', '', '', '', '');
INSERT INTO binkie VALUES (405, 18, 'b', 2, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO binkie VALUES (382, 17, 'c', 1, 'هُوَاءٖ', 'huwae', 'huwae', 'huwae', '', '', '', 'How can I be rootless below ground');
INSERT INTO binkie VALUES (383, 17, 'c', 2, 'كاكُوْسَ', 'kākūsa', 'kakosa', 'kākūsa', '', '', '', '');
INSERT INTO binkie VALUES (395, 17, 'g', 1, 'كِوَ', 'kiwa', 'kiwa', 'kiwa', '', '', '', 'If I do not hail from Swahililand,');
INSERT INTO binkie VALUES (370, 16, 'h', 1, 'هزٗ', 'hzo', 'hizo', 'hzo', '', '', '', 'These are preparations for war.');
INSERT INTO binkie VALUES (371, 16, 'h', 2, 'ن', 'n', 'ni', 'n', '', '', '', '');
INSERT INTO binkie VALUES (372, 16, 'h', 3, 'مْبنُ', 'mbnu', 'mbinu', 'mbnu', '', '', '', '');
INSERT INTO binkie VALUES (373, 16, 'h', 4, 'زَا', 'zā', 'za', 'zā', '', '', '', '');
INSERT INTO binkie VALUES (384, 17, 'c', 3, 'شِنَ', 'shina', 'shina', 'shina', '', '', '', '');
INSERT INTO binkie VALUES (396, 17, 'g', 2, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO binkie VALUES (397, 17, 'g', 3, 'اُسْوَاحِلِنِ', 'uswāḥilini', 'Uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO binkie VALUES (385, 17, 'd', 1, 'كَاوَ', 'kāwa', 'kawa', 'kāwa', '', '', '', 'and yet have branches above?');
INSERT INTO binkie VALUES (386, 17, 'd', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (387, 17, 'd', 3, 'تَانْدُ', 'ṯānḏu', 'tandu', 'ṯānḏu', '', '', '', '');
INSERT INTO binkie VALUES (388, 17, 'd', 4, 'يَانْڠَانِ', 'yāngāni', 'yangani', 'yāngāni', '', '', '', '');
INSERT INTO binkie VALUES (389, 17, 'e', 1, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', 'Who gave me my name?');
INSERT INTO binkie VALUES (390, 17, 'e', 2, 'اَلُوْنِپَ', 'alūnipa', 'alonipa', 'alūnipa', '', '', '', '');
INSERT INTO binkie VALUES (391, 17, 'e', 3, 'ئِنَ', 'ina', 'ina', 'ina', '', '', '', '');
INSERT INTO binkie VALUES (415, 18, 'f', 1, 'پٖمْبٖ', 'pembe', 'pembe', 'pembe', '', '', '', 'in all corners of the world,');
INSERT INTO binkie VALUES (416, 18, 'f', 2, 'زٗتٖ', 'zoṯe', 'zote', 'zoṯe', '', '', '', '');
INSERT INTO binkie VALUES (417, 18, 'f', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniani', 'ḏuniyāni', '', '', '', '');
INSERT INTO binkie VALUES (398, 17, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'then whence do I come? ');
INSERT INTO binkie VALUES (399, 17, 'h', 2, 'وَپِ', 'wapi', 'wapi', 'wapi', '', '', '', '');
INSERT INTO binkie VALUES (400, 17, 'h', 3, 'نَالِپُوپَاتَ', 'nālipūpāṯa', 'nalipopata', 'nālipūpāṯa', '', '', '', '');
INSERT INTO binkie VALUES (406, 18, 'c', 1, 'يَاكُوَ', 'yākuwa', 'yakuwa', 'yākuwa', '', '', '', 'or that I have no owner.');
INSERT INTO binkie VALUES (407, 18, 'c', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO binkie VALUES (408, 18, 'c', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO binkie VALUES (401, 18, 'a', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'That many speak me, [Swahili],');
INSERT INTO binkie VALUES (402, 18, 'a', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO binkie VALUES (403, 18, 'a', 3, 'هُنِنٖنَ', 'huninena', 'huninena', 'huninena', '', '', '', '');
INSERT INTO binkie VALUES (411, 18, 'e', 1, 'هُنٖنوَا', 'hunenwā', 'hunenwa', 'hunenwā', '', '', '', 'It is spoken by very many,');
INSERT INTO binkie VALUES (412, 18, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (413, 18, 'e', 3, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO binkie VALUES (409, 18, 'd', 1, 'كِنْڠٖرٖزَ', 'kingereza', 'Kiingereza', 'kingereza', '', '', '', 'What of the English language?');
INSERT INTO binkie VALUES (410, 18, 'd', 2, 'هَامُوٗنِ', 'hāmuwoni', 'hamuoni', 'hāmuwoni', '', '', '', '');
INSERT INTO binkie VALUES (414, 18, 'e', 4, 'سَانَ', 'sāna', 'sana', 'sāna', '', '', '', '');
INSERT INTO binkie VALUES (422, 18, 'h', 1, 'مِزِيٖ', 'miziye', 'miziye', 'miziye', '', '', '', 'its roots have not been severed. ');
INSERT INTO binkie VALUES (421, 18, 'g', 4, 'سِنَانِ', 'sināni', 'sinani', 'sināni', '', '', '', '');
INSERT INTO binkie VALUES (418, 18, 'g', 1, 'كِنَ', 'kina', 'kina', 'kina', '', '', '', 'yet the language remains firmly established in its homeland,');
INSERT INTO binkie VALUES (419, 18, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO binkie VALUES (423, 18, 'h', 2, 'هَئِكُكَاتَ', 'haikukāṯa', 'haikukata', 'haikukāṯa', '', '', '', '');


--
-- Data for Name: jaafari; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO jaafari VALUES (1, 1, 'a', 'بِسْمِ اللّٰهِ إِخْوَانِ ', 'bismi llähi iẖwāni', 'bismi llahi ihwani', '');
INSERT INTO jaafari VALUES (2, 1, 'b', ' پَمْوٖ نَ رَحْمٰنِ', 'pamwe na raḥmäni', 'pamwe na rahmani', '');
INSERT INTO jaafari VALUES (3, 1, 'c', 'نَ الرَّحِيْمُ يُوَنِ ', 'na rraḥı̄mu yuwani', 'na rrahimu yuwani', '');
INSERT INTO jaafari VALUES (4, 1, 'd', ' نْدِيٗ يَلٗأَنْدَمِيَ', 'nḏiyo yaloanḏamiya', 'ndiyo yaloandamiya', '');
INSERT INTO jaafari VALUES (5, 2, 'a', 'پُلِكَنِ نْدُزَنْڠُ ', 'pulikani nḏuzangu', 'pulikani nduzangu', '');
INSERT INTO jaafari VALUES (6, 2, 'b', ' كهٖنْدَ مَتٖمْبٖزِ يَنْڠُ', 'kʿenḏa maṯembezi yangu', 'kenda matembezi yangu', '');
INSERT INTO jaafari VALUES (7, 2, 'c', 'نِوَپٖ خَبَرِ زَنْڠُ ', 'niwape ẖabari zangu', 'niwape habari zangu', '');
INSERT INTO jaafari VALUES (8, 2, 'd', ' قِصَ چَلٗنِجِرِيَ', 'qiṣa chalonijiriya', 'qisa chalonijiriya', '');
INSERT INTO jaafari VALUES (9, 3, 'a', 'نِلِ نٖنْدَءٗ نْدِيَنِ ', 'nili nenḏao nḏiyani', 'nili nendao ndiyani', '');
INSERT INTO jaafari VALUES (10, 3, 'b', 'كْوَلِ نَ مْٹُ چُمْبَنِ', 'kwali na mţu chumbani', 'kwali na mtu chumbani', '');
INSERT INTO jaafari VALUES (11, 3, 'c', 'مٗيٗ أُكَمْتَمَنِ ', 'moyo ukamṯamani', 'moyo ukamtamani', '');
INSERT INTO jaafari VALUES (12, 3, 'd', ' كْوَ حَلَالِ كُرِضِيَ', 'kwa ḥalāli kuriḍiya', 'kwa halali kuridhiya', '');
INSERT INTO jaafari VALUES (13, 4, 'a', 'نَمَهَرِيٖ يُوَنِ ', 'namahariye yuwani', 'namahariye yuwani', '');
INSERT INTO jaafari VALUES (14, 4, 'b', ' نَلٗمْپَ زَيْدَنِ', 'nalompa zayḏani', 'nalompa zaydani', '');
INSERT INTO jaafari VALUES (15, 4, 'c', 'نَلِنَ پٖٹٖ چَنْدَنِ ', 'nalina peţe chanḏani', 'nalina pete chandani', '');
INSERT INTO jaafari VALUES (16, 4, 'd', ' هَوَهِ كُمْڤَلِيَ', 'hawahi kumvaliya', 'hawahi kumvaliya', '');
INSERT INTO jaafari VALUES (17, 5, 'a', 'عَلى كُتٗكَ كْوَكٖ ', '''alı̄ kuṯoka kwake', '''ali kutoka kwake', '');
INSERT INTO jaafari VALUES (18, 5, 'b', ' أُنَ رُبَ مٗيٗ وَكٖ', 'una ruba moyo wake', 'una ruba moyo wake', '');
INSERT INTO jaafari VALUES (19, 5, 'c', 'أَكٖنْدَ كْوَ مْكٖ وَكٖ ', 'akenḏa kwa mke wake', 'akenda kwa mke wake', '');
INSERT INTO jaafari VALUES (20, 5, 'd', ' مْكٗنٗ هُمْفُمْبِيَ', 'mkono humfumbiya', 'mkono humfumbiya', '');
INSERT INTO jaafari VALUES (21, 6, 'a', 'مْوَنَ بِنْتِ رَسُوْلِ ', 'mwana binṯi rasūli', 'mwana binti rasuli', '');
INSERT INTO jaafari VALUES (22, 6, 'b', ' يَلِ هَيَتَأَمَلِ', 'yali hayaṯaamali', 'yali hayataamali', '');
INSERT INTO jaafari VALUES (23, 6, 'c', 'كَنٖنْدَ مْوٖنْيٖ عقِلِ ', 'kanenḏa mwenye ''qili', 'kanenda mwenye ''qili', '');
INSERT INTO jaafari VALUES (24, 6, 'd', ' خَبَرِ أكَمْوَمْبِيَ', 'ẖabari kamwambiya', 'habari kamwambiya', '');
INSERT INTO jaafari VALUES (25, 7, 'a', 'أَكٖنٖنْدَءٖ كِزٖيْ ', 'akenenḏae kizee', 'akenendae kizee', '');
INSERT INTO jaafari VALUES (26, 7, 'b', ' فَاطِمَه أكَمْوَمْبِيٖ', 'fāṭimah kamwambiye', 'fatimah kamwambiye', '');
INSERT INTO jaafari VALUES (27, 7, 'c', 'شٖيْحٖ عَليْ أُوٗزٖيْ ', 'shēḥe ''alı̄ uwozee', 'shehe ''ali uwozee', '');
INSERT INTO jaafari VALUES (28, 7, 'd', ' خَبَرِ هُكِسِكِيَ', 'ẖabari hukisikiya', 'habari hukisikiya', '');
INSERT INTO jaafari VALUES (29, 8, 'a', 'أَكَفَنْيَ مْشَوَشَ ', 'akafanya mshawasha', 'akafanya mshawasha', '');
INSERT INTO jaafari VALUES (30, 8, 'b', ' فَاطِمَه كَمْكَنُشَ', 'fāṭimah kamkanusha', 'fatimah kamkanusha', '');
INSERT INTO jaafari VALUES (31, 8, 'c', 'عَلَامَ كَمُؤٗنٖشَ ', '''alāma kamuonesha', '''alama kamuonesha', '');
INSERT INTO jaafari VALUES (32, 8, 'd', ' أُتُنْڠُ أَكَمْٹِيَ', 'uṯungu akamţiya', 'utungu akamtiya', '');
INSERT INTO jaafari VALUES (33, 9, 'a', '9', '9', '9', '');


--
-- Data for Name: jaafari_backup; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO jaafari_backup VALUES (31, 3, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (32, 3, 'd', 2, 'حَلَالِ', 'ḥalāli', 'halali', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (33, 3, 'd', 3, 'كُرِضِيَ', 'kuriḍiya', 'kuridhiya', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (1, 1, 'a', 1, 'بِسْمِ', 'bismi', 'bismi', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (2, 1, 'a', 2, 'اللّٰهِ', 'llähi', 'llahi', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (3, 1, 'a', 3, 'إِخْوَانِ', 'iẖwāni', 'ihwani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (52, 5, 'c', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (4, 1, 'b', 1, 'پَمْوٖ', 'pamwe', 'pamwe', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (5, 1, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (6, 1, 'b', 3, 'رَحْمٰنِ', 'raḥmäni', 'rahmani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (53, 5, 'c', 4, 'وَكٖ', 'wake', 'wake', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (34, 4, 'a', 1, 'نَمَهَرِيٖ', 'namahariye', 'namahariye', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (35, 4, 'a', 2, 'يُوَنِ', 'yuwani', 'yuwani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (7, 1, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (8, 1, 'c', 2, 'الرَّحِيْمُ', 'rraḥı̄mu', 'rrahimu', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (9, 1, 'c', 3, 'يُوَنِ', 'yuwani', 'yuwani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (10, 1, 'd', 1, 'نْدِيٗ', 'nḏiyo', 'ndiyo', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (11, 1, 'd', 2, 'يَلٗأَنْدَمِيَ', 'yaloanḏamiya', 'yaloandamiya', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (12, 2, 'a', 1, 'پُلِكَنِ', 'pulikani', 'pulikani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (13, 2, 'a', 2, 'نْدُزَنْڠُ', 'nḏuzangu', 'nduzangu', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (36, 4, 'b', 1, 'نَلٗمْپَ', 'nalompa', 'nalompa', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (37, 4, 'b', 2, 'زَيْدَنِ', 'zayḏani', 'zaydani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (14, 2, 'b', 1, 'كهٖنْدَ', 'kʿenḏa', 'kenda', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (15, 2, 'b', 2, 'مَتٖمْبٖزِ', 'maṯembezi', 'matembezi', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (16, 2, 'b', 3, 'يَنْڠُ', 'yangu', 'yangu', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (65, 6, 'd', 2, 'أكَمْوَمْبِيَ', 'kamwambiya', 'kamwambiya', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (17, 2, 'c', 1, 'نِوَپٖ', 'niwape', 'niwape', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (18, 2, 'c', 2, 'خَبَرِ', 'ẖabari', 'habari', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (19, 2, 'c', 3, 'زَنْڠُ', 'zangu', 'zangu', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (54, 5, 'd', 1, 'مْكٗنٗ', 'mkono', 'mkono', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (20, 2, 'd', 1, 'قِصَ', 'qiṣa', 'qisa', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (21, 2, 'd', 2, 'چَلٗنِجِرِيَ', 'chalonijiriya', 'chalonijiriya', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (38, 4, 'c', 1, 'نَلِنَ', 'nalina', 'nalina', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (39, 4, 'c', 2, 'پٖٹٖ', 'peţe', 'pete', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (40, 4, 'c', 3, 'چَنْدَنِ', 'chanḏani', 'chandani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (22, 3, 'a', 1, 'نِلِ', 'nili', 'nili', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (23, 3, 'a', 2, 'نٖنْدَءٗ', 'nenḏao', 'nendao', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (24, 3, 'a', 3, 'نْدِيَنِ', 'nḏiyani', 'ndiyani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (55, 5, 'd', 2, 'هُمْفُمْبِيَ', 'humfumbiya', 'humfumbiya', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (25, 3, 'b', 1, 'كْوَلِ', 'kwali', 'kwali', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (26, 3, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (27, 3, 'b', 3, 'مْٹُ', 'mţu', 'mtu', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (28, 3, 'b', 4, 'چُمْبَنِ', 'chumbani', 'chumbani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (41, 4, 'd', 1, 'هَوَهِ', 'hawahi', 'hawahi', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (42, 4, 'd', 2, 'كُمْڤَلِيَ', 'kumvaliya', 'kumvaliya', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (29, 3, 'c', 1, 'مٗيٗ', 'moyo', 'moyo', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (30, 3, 'c', 2, 'أُكَمْتَمَنِ', 'ukamṯamani', 'ukamtamani', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (80, 8, 'c', 2, 'كَمُؤٗنٖشَ', 'kamuonesha', 'kamuonesha', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (77, 8, 'b', 1, 'فَاطِمَه', 'fāṭimah', 'fatimah', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (56, 6, 'a', 1, 'مْوَنَ', 'mwana', 'mwana', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (43, 5, 'a', 1, 'عَلى', '''alı̄', '''ali', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (44, 5, 'a', 2, 'كُتٗكَ', 'kuṯoka', 'kutoka', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (45, 5, 'a', 3, 'كْوَكٖ', 'kwake', 'kwake', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (57, 6, 'a', 2, 'بِنْتِ', 'binṯi', 'binti', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (58, 6, 'a', 3, 'رَسُوْلِ', 'rasūli', 'rasuli', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (46, 5, 'b', 1, 'أُنَ', 'una', 'una', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (47, 5, 'b', 2, 'رُبَ', 'ruba', 'ruba', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (48, 5, 'b', 3, 'مٗيٗ', 'moyo', 'moyo', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (49, 5, 'b', 4, 'وَكٖ', 'wake', 'wake', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (66, 7, 'a', 1, 'أَكٖنٖنْدَءٖ', 'akenenḏae', 'akenendae', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (67, 7, 'a', 2, 'كِزٖيْ', 'kizee', 'kizee', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (50, 5, 'c', 1, 'أَكٖنْدَ', 'akenḏa', 'akenda', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (51, 5, 'c', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (59, 6, 'b', 1, 'يَلِ', 'yali', 'yali', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (60, 6, 'b', 2, 'هَيَتَأَمَلِ', 'hayaṯaamali', 'hayataamali', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (73, 7, 'd', 1, 'خَبَرِ', 'ẖabari', 'habari', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (74, 7, 'd', 2, 'هُكِسِكِيَ', 'hukisikiya', 'hukisikiya', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (68, 7, 'b', 1, 'فَاطِمَه', 'fāṭimah', 'fatimah', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (61, 6, 'c', 1, 'كَنٖنْدَ', 'kanenḏa', 'kanenda', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (62, 6, 'c', 2, 'مْوٖنْيٖ', 'mwenye', 'mwenye', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (63, 6, 'c', 3, 'عقِلِ', '''qili', '''qili', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (69, 7, 'b', 2, 'أكَمْوَمْبِيٖ', 'kamwambiye', 'kamwambiye', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (64, 6, 'd', 1, 'خَبَرِ', 'ẖabari', 'habari', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (78, 8, 'b', 2, 'كَمْكَنُشَ', 'kamkanusha', 'kamkanusha', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (70, 7, 'c', 1, 'شٖيْحٖ', 'shēḥe', 'shehe', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (71, 7, 'c', 2, 'عَليْ', '''alı̄', '''ali', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (72, 7, 'c', 3, 'أُوٗزٖيْ', 'uwozee', 'uwozee', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (75, 8, 'a', 1, 'أَكَفَنْيَ', 'akafanya', 'akafanya', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (76, 8, 'a', 2, 'مْشَوَشَ', 'mshawasha', 'mshawasha', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (81, 8, 'd', 1, 'أُتُنْڠُ', 'uṯungu', 'utungu', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (79, 8, 'c', 1, 'عَلَامَ', '''alāma', '''alama', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (83, 9, 'a', 1, '9', '9', '9', '', '', '', '', '', '', '');
INSERT INTO jaafari_backup VALUES (82, 8, 'd', 2, 'أَكَمْٹِيَ', 'akamţiya', 'akamtiya', '', '', '', '', '', '', '');


--
-- Data for Name: jaafari_notes; Type: TABLE DATA; Schema: public; Owner: kevin
--



--
-- Name: jaafari_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_poemline_id_seq', 33, true);


--
-- Data for Name: jaafari_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO jaafari_words VALUES (31, 3, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa');
INSERT INTO jaafari_words VALUES (32, 3, 'd', 2, 'حَلَالِ', 'ḥalāli', 'halali', '', '', '', '', '', '', 'ḥalāli');
INSERT INTO jaafari_words VALUES (33, 3, 'd', 3, 'كُرِضِيَ', 'kuriḍiya', 'kuridhiya', '', '', '', '', '', '', 'kuriḍiya');
INSERT INTO jaafari_words VALUES (1, 1, 'a', 1, 'بِسْمِ', 'bismi', 'bismi', '', '', '', '', '', '', 'bismi');
INSERT INTO jaafari_words VALUES (2, 1, 'a', 2, 'اللّٰهِ', 'llähi', 'llahi', '', '', '', '', '', '', 'llähi');
INSERT INTO jaafari_words VALUES (3, 1, 'a', 3, 'إِخْوَانِ', 'iẖwāni', 'ihwani', '', '', '', '', '', '', 'iẖwāni');
INSERT INTO jaafari_words VALUES (52, 5, 'c', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke');
INSERT INTO jaafari_words VALUES (4, 1, 'b', 1, 'پَمْوٖ', 'pamwe', 'pamwe', '', '', '', '', '', '', 'pamwe');
INSERT INTO jaafari_words VALUES (5, 1, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na');
INSERT INTO jaafari_words VALUES (6, 1, 'b', 3, 'رَحْمٰنِ', 'raḥmäni', 'rahmani', '', '', '', '', '', '', 'raḥmäni');
INSERT INTO jaafari_words VALUES (53, 5, 'c', 4, 'وَكٖ', 'wake', 'wake', '', '', '', '', '', '', 'wake');
INSERT INTO jaafari_words VALUES (34, 4, 'a', 1, 'نَمَهَرِيٖ', 'namahariye', 'namahariye', '', '', '', '', '', '', 'namahariye');
INSERT INTO jaafari_words VALUES (35, 4, 'a', 2, 'يُوَنِ', 'yuwani', 'yuwani', '', '', '', '', '', '', 'yuwani');
INSERT INTO jaafari_words VALUES (7, 1, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na');
INSERT INTO jaafari_words VALUES (8, 1, 'c', 2, 'الرَّحِيْمُ', 'rraḥı̄mu', 'rrahimu', '', '', '', '', '', '', 'rraḥı̄mu');
INSERT INTO jaafari_words VALUES (9, 1, 'c', 3, 'يُوَنِ', 'yuwani', 'yuwani', '', '', '', '', '', '', 'yuwani');
INSERT INTO jaafari_words VALUES (10, 1, 'd', 1, 'نْدِيٗ', 'nḏiyo', 'ndiyo', '', '', '', '', '', '', 'nḏiyo');
INSERT INTO jaafari_words VALUES (11, 1, 'd', 2, 'يَلٗأَنْدَمِيَ', 'yaloanḏamiya', 'yaloandamiya', '', '', '', '', '', '', 'yaloanḏamiya');
INSERT INTO jaafari_words VALUES (12, 2, 'a', 1, 'پُلِكَنِ', 'pulikani', 'pulikani', '', '', '', '', '', '', 'pulikani');
INSERT INTO jaafari_words VALUES (13, 2, 'a', 2, 'نْدُزَنْڠُ', 'nḏuzangu', 'nduzangu', '', '', '', '', '', '', 'nḏuzangu');
INSERT INTO jaafari_words VALUES (36, 4, 'b', 1, 'نَلٗمْپَ', 'nalompa', 'nalompa', '', '', '', '', '', '', 'nalompa');
INSERT INTO jaafari_words VALUES (37, 4, 'b', 2, 'زَيْدَنِ', 'zayḏani', 'zaydani', '', '', '', '', '', '', 'zayḏani');
INSERT INTO jaafari_words VALUES (14, 2, 'b', 1, 'كهٖنْدَ', 'kʿenḏa', 'kenda', '', '', '', '', '', '', 'kʿenḏa');
INSERT INTO jaafari_words VALUES (15, 2, 'b', 2, 'مَتٖمْبٖزِ', 'maṯembezi', 'matembezi', '', '', '', '', '', '', 'maṯembezi');
INSERT INTO jaafari_words VALUES (16, 2, 'b', 3, 'يَنْڠُ', 'yangu', 'yangu', '', '', '', '', '', '', 'yangu');
INSERT INTO jaafari_words VALUES (65, 6, 'd', 2, 'أكَمْوَمْبِيَ', 'kamwambiya', 'kamwambiya', '', '', '', '', '', '', 'kamwambiya');
INSERT INTO jaafari_words VALUES (17, 2, 'c', 1, 'نِوَپٖ', 'niwape', 'niwape', '', '', '', '', '', '', 'niwape');
INSERT INTO jaafari_words VALUES (18, 2, 'c', 2, 'خَبَرِ', 'ẖabari', 'habari', '', '', '', '', '', '', 'ẖabari');
INSERT INTO jaafari_words VALUES (19, 2, 'c', 3, 'زَنْڠُ', 'zangu', 'zangu', '', '', '', '', '', '', 'zangu');
INSERT INTO jaafari_words VALUES (54, 5, 'd', 1, 'مْكٗنٗ', 'mkono', 'mkono', '', '', '', '', '', '', 'mkono');
INSERT INTO jaafari_words VALUES (20, 2, 'd', 1, 'قِصَ', 'qiṣa', 'qisa', '', '', '', '', '', '', 'qiṣa');
INSERT INTO jaafari_words VALUES (21, 2, 'd', 2, 'چَلٗنِجِرِيَ', 'chalonijiriya', 'chalonijiriya', '', '', '', '', '', '', 'chalonijiriya');
INSERT INTO jaafari_words VALUES (38, 4, 'c', 1, 'نَلِنَ', 'nalina', 'nalina', '', '', '', '', '', '', 'nalina');
INSERT INTO jaafari_words VALUES (39, 4, 'c', 2, 'پٖٹٖ', 'peţe', 'pete', '', '', '', '', '', '', 'peţe');
INSERT INTO jaafari_words VALUES (40, 4, 'c', 3, 'چَنْدَنِ', 'chanḏani', 'chandani', '', '', '', '', '', '', 'chanḏani');
INSERT INTO jaafari_words VALUES (22, 3, 'a', 1, 'نِلِ', 'nili', 'nili', '', '', '', '', '', '', 'nili');
INSERT INTO jaafari_words VALUES (23, 3, 'a', 2, 'نٖنْدَءٗ', 'nenḏao', 'nendao', '', '', '', '', '', '', 'nenḏao');
INSERT INTO jaafari_words VALUES (24, 3, 'a', 3, 'نْدِيَنِ', 'nḏiyani', 'ndiyani', '', '', '', '', '', '', 'nḏiyani');
INSERT INTO jaafari_words VALUES (55, 5, 'd', 2, 'هُمْفُمْبِيَ', 'humfumbiya', 'humfumbiya', '', '', '', '', '', '', 'humfumbiya');
INSERT INTO jaafari_words VALUES (25, 3, 'b', 1, 'كْوَلِ', 'kwali', 'kwali', '', '', '', '', '', '', 'kwali');
INSERT INTO jaafari_words VALUES (26, 3, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na');
INSERT INTO jaafari_words VALUES (27, 3, 'b', 3, 'مْٹُ', 'mţu', 'mtu', '', '', '', '', '', '', 'mţu');
INSERT INTO jaafari_words VALUES (28, 3, 'b', 4, 'چُمْبَنِ', 'chumbani', 'chumbani', '', '', '', '', '', '', 'chumbani');
INSERT INTO jaafari_words VALUES (41, 4, 'd', 1, 'هَوَهِ', 'hawahi', 'hawahi', '', '', '', '', '', '', 'hawahi');
INSERT INTO jaafari_words VALUES (42, 4, 'd', 2, 'كُمْڤَلِيَ', 'kumvaliya', 'kumvaliya', '', '', '', '', '', '', 'kumvaliya');
INSERT INTO jaafari_words VALUES (29, 3, 'c', 1, 'مٗيٗ', 'moyo', 'moyo', '', '', '', '', '', '', 'moyo');
INSERT INTO jaafari_words VALUES (30, 3, 'c', 2, 'أُكَمْتَمَنِ', 'ukamṯamani', 'ukamtamani', '', '', '', '', '', '', 'ukamṯamani');
INSERT INTO jaafari_words VALUES (80, 8, 'c', 2, 'كَمُؤٗنٖشَ', 'kamuonesha', 'kamuonesha', '', '', '', '', '', '', 'kamuonesha');
INSERT INTO jaafari_words VALUES (77, 8, 'b', 1, 'فَاطِمَه', 'fāṭimah', 'fatimah', '', '', '', '', '', '', 'fāṭimah');
INSERT INTO jaafari_words VALUES (56, 6, 'a', 1, 'مْوَنَ', 'mwana', 'mwana', '', '', '', '', '', '', 'mwana');
INSERT INTO jaafari_words VALUES (43, 5, 'a', 1, 'عَلى', '''alı̄', '''ali', '', '', '', '', '', '', '''alı̄');
INSERT INTO jaafari_words VALUES (44, 5, 'a', 2, 'كُتٗكَ', 'kuṯoka', 'kutoka', '', '', '', '', '', '', 'kuṯoka');
INSERT INTO jaafari_words VALUES (45, 5, 'a', 3, 'كْوَكٖ', 'kwake', 'kwake', '', '', '', '', '', '', 'kwake');
INSERT INTO jaafari_words VALUES (57, 6, 'a', 2, 'بِنْتِ', 'binṯi', 'binti', '', '', '', '', '', '', 'binṯi');
INSERT INTO jaafari_words VALUES (58, 6, 'a', 3, 'رَسُوْلِ', 'rasūli', 'rasuli', '', '', '', '', '', '', 'rasūli');
INSERT INTO jaafari_words VALUES (46, 5, 'b', 1, 'أُنَ', 'una', 'una', '', '', '', '', '', '', 'una');
INSERT INTO jaafari_words VALUES (47, 5, 'b', 2, 'رُبَ', 'ruba', 'ruba', '', '', '', '', '', '', 'ruba');
INSERT INTO jaafari_words VALUES (48, 5, 'b', 3, 'مٗيٗ', 'moyo', 'moyo', '', '', '', '', '', '', 'moyo');
INSERT INTO jaafari_words VALUES (49, 5, 'b', 4, 'وَكٖ', 'wake', 'wake', '', '', '', '', '', '', 'wake');
INSERT INTO jaafari_words VALUES (66, 7, 'a', 1, 'أَكٖنٖنْدَءٖ', 'akenenḏae', 'akenendae', '', '', '', '', '', '', 'akenenḏae');
INSERT INTO jaafari_words VALUES (67, 7, 'a', 2, 'كِزٖيْ', 'kizee', 'kizee', '', '', '', '', '', '', 'kizee');
INSERT INTO jaafari_words VALUES (50, 5, 'c', 1, 'أَكٖنْدَ', 'akenḏa', 'akenda', '', '', '', '', '', '', 'akenḏa');
INSERT INTO jaafari_words VALUES (51, 5, 'c', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa');
INSERT INTO jaafari_words VALUES (59, 6, 'b', 1, 'يَلِ', 'yali', 'yali', '', '', '', '', '', '', 'yali');
INSERT INTO jaafari_words VALUES (60, 6, 'b', 2, 'هَيَتَأَمَلِ', 'hayaṯaamali', 'hayataamali', '', '', '', '', '', '', 'hayaṯaamali');
INSERT INTO jaafari_words VALUES (73, 7, 'd', 1, 'خَبَرِ', 'ẖabari', 'habari', '', '', '', '', '', '', 'ẖabari');
INSERT INTO jaafari_words VALUES (74, 7, 'd', 2, 'هُكِسِكِيَ', 'hukisikiya', 'hukisikiya', '', '', '', '', '', '', 'hukisikiya');
INSERT INTO jaafari_words VALUES (68, 7, 'b', 1, 'فَاطِمَه', 'fāṭimah', 'fatimah', '', '', '', '', '', '', 'fāṭimah');
INSERT INTO jaafari_words VALUES (61, 6, 'c', 1, 'كَنٖنْدَ', 'kanenḏa', 'kanenda', '', '', '', '', '', '', 'kanenḏa');
INSERT INTO jaafari_words VALUES (62, 6, 'c', 2, 'مْوٖنْيٖ', 'mwenye', 'mwenye', '', '', '', '', '', '', 'mwenye');
INSERT INTO jaafari_words VALUES (63, 6, 'c', 3, 'عقِلِ', '''qili', '''qili', '', '', '', '', '', '', '''qili');
INSERT INTO jaafari_words VALUES (69, 7, 'b', 2, 'أكَمْوَمْبِيٖ', 'kamwambiye', 'kamwambiye', '', '', '', '', '', '', 'kamwambiye');
INSERT INTO jaafari_words VALUES (64, 6, 'd', 1, 'خَبَرِ', 'ẖabari', 'habari', '', '', '', '', '', '', 'ẖabari');
INSERT INTO jaafari_words VALUES (78, 8, 'b', 2, 'كَمْكَنُشَ', 'kamkanusha', 'kamkanusha', '', '', '', '', '', '', 'kamkanusha');
INSERT INTO jaafari_words VALUES (70, 7, 'c', 1, 'شٖيْحٖ', 'shēḥe', 'shehe', '', '', '', '', '', '', 'shēḥe');
INSERT INTO jaafari_words VALUES (71, 7, 'c', 2, 'عَليْ', '''alı̄', '''ali', '', '', '', '', '', '', '''alı̄');
INSERT INTO jaafari_words VALUES (72, 7, 'c', 3, 'أُوٗزٖيْ', 'uwozee', 'uwozee', '', '', '', '', '', '', 'uwozee');
INSERT INTO jaafari_words VALUES (75, 8, 'a', 1, 'أَكَفَنْيَ', 'akafanya', 'akafanya', '', '', '', '', '', '', 'akafanya');
INSERT INTO jaafari_words VALUES (76, 8, 'a', 2, 'مْشَوَشَ', 'mshawasha', 'mshawasha', '', '', '', '', '', '', 'mshawasha');
INSERT INTO jaafari_words VALUES (81, 8, 'd', 1, 'أُتُنْڠُ', 'uṯungu', 'utungu', '', '', '', '', '', '', 'uṯungu');
INSERT INTO jaafari_words VALUES (79, 8, 'c', 1, 'عَلَامَ', '''alāma', '''alama', '', '', '', '', '', '', '''alāma');
INSERT INTO jaafari_words VALUES (83, 9, 'a', 1, '9', '9', '9', '', '', '', '', '', '', '9');
INSERT INTO jaafari_words VALUES (82, 8, 'd', 2, 'أَكَمْٹِيَ', 'akamţiya', 'akamtiya', '', '', '', '', '', '', 'akamţiya');


--
-- Name: jaafari_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_words_word_id_seq', 83, true);


--
-- Data for Name: kiswahili; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO kiswahili VALUES (1, 1, 'a', 'كُنْيَمَا نِ مٖػوْكَ', 'kunyamā ni mekʲūka', 'kunyama ni mechuka', '');
INSERT INTO kiswahili VALUES (2, 1, 'b', 'تَانْيَامَا حَتَ لِنِ', 'ṯānyāmā ḥaṯa lini', 'tanyama hata lini', '');
INSERT INTO kiswahili VALUES (6, 1, 'f', 'سِوَنْڠُ نِ وَ وٖنْدَانِ', 'siwangu ni wa wenḏāni', 'siwangu ni wa wendani', '');
INSERT INTO kiswahili VALUES (7, 1, 'g', 'مِمِ نِ مٖوَتٖنْدَانِ', 'mimi ni mewaṯenḏāni', 'mimi ni mewatendani', '');
INSERT INTO kiswahili VALUES (8, 1, 'h', 'مْبُوْنَ هُنِپِجَ زِتَ', 'mbūna hunipija ziṯa', 'mbuna hunipija zita', '');
INSERT INTO kiswahili VALUES (9, 2, 'a', 'وَنَانْڠُ مِمِ وَ دَمُ', 'wanāngu mimi wa ḏamu', 'wanangu mimi wa damu', '');
INSERT INTO kiswahili VALUES (10, 2, 'b', 'وَانَ وَ أُسْوَاحِلِنِ', 'wāna wa uswāḥilini', 'wana wa uswahilini', '');
INSERT INTO kiswahili VALUES (11, 2, 'c', 'أَصِلِ هَوَنَ هَامُ', 'aṣili hawana hāmu', 'asili hawana hamu', '');
INSERT INTO kiswahili VALUES (12, 2, 'd', 'يَا كُنِيُوَ نِ نَانِ', 'yā kuniyuwa ni nāni', 'ya kuniyuwa ni nani', '');
INSERT INTO kiswahili VALUES (13, 2, 'e', 'وَمٖنَتِيَ قَؤُمُ', 'wamenaṯiya qaumu', 'wamenatiya qaumu', '');
INSERT INTO kiswahili VALUES (14, 2, 'f', 'نَ وَنَ وَ مَجِرَنِ', 'na wana wa majirani', 'na wana wa majirani', '');
INSERT INTO kiswahili VALUES (15, 2, 'g', 'كُوْسَ لَنْڠُ كُوْسَ ڠَانِ', 'kūsa langu kūsa gāni', 'kusa langu kusa gani', '');
INSERT INTO kiswahili VALUES (16, 2, 'h', 'مْبُوْنَ هُنِپِجَ زِتَ', 'mbūna hunipija ziṯa', 'mbuna hunipija zita', '');
INSERT INTO kiswahili VALUES (17, 3, 'a', 'مِمِ مَامٖنُ سِتَاسَ', 'mimi māmenu siṯāsa', 'mimi mamenu sitasa', '');
INSERT INTO kiswahili VALUES (18, 3, 'b', 'وَلَ سِنَ پُنْڠُوَنِ', 'wala sina punguwani', 'wala sina punguwani', '');
INSERT INTO kiswahili VALUES (19, 3, 'c', 'نِ مٖزَا وَ مَمْبَاسَ', 'ni mezā wa mambāsa', 'ni meza wa mambasa', '');
INSERT INTO kiswahili VALUES (20, 3, 'd', 'نَ كُنْڠِنٖ زِسِوَنِ', 'na kungine zisiwani', 'na kungine zisiwani', '');
INSERT INTO kiswahili VALUES (21, 3, 'e', 'نِزٖ وَنَ سِيَاسَ', 'nize wana siyāsa', 'nize wana siyasa', '');
INSERT INTO kiswahili VALUES (22, 3, 'f', 'نَ زِيُوْنْڠُوْزِ وَدِنِ', 'na ziyūngūzi waḏini', 'na ziyunguzi wadini', '');
INSERT INTO kiswahili VALUES (23, 3, 'g', 'مَافُنْدِ وَ كُلَ فَنِ', 'māfunḏi wa kula fani', 'mafundi wa kula fani', '');
INSERT INTO kiswahili VALUES (24, 3, 'h', 'نَ مَاشُجَا وَ زِتَ', 'na māshujā wa ziṯa', 'na mashuja wa zita', '');
INSERT INTO kiswahili VALUES (25, 4, 'a', 'نْدِمِ مَامَاكٖ مُيَاكَ', 'nḏimi māmāke muyāka', 'ndimi mamake muyaka', '');
INSERT INTO kiswahili VALUES (26, 4, 'b', 'پِيَ مْوٖنْڠٗ عَثْمَانِ', 'piya mwengo ''athmāni', 'piya mwengo ''athmani', '');
INSERT INTO kiswahili VALUES (27, 4, 'c', 'نَ زَهِدِ كَذَلِكَ', 'na zahiḏi kadhalika', 'na zahidi kadhalika', '');
INSERT INTO kiswahili VALUES (28, 4, 'd', 'نَ وٖنْڠِ وَاكٖ وٖنْدَانِ', 'na wengi wāke wenḏāni', 'na wengi wake wendani', '');
INSERT INTO kiswahili VALUES (29, 4, 'e', 'عالى كُوْتِ نَ مَتَاكَ', '''ālı̄ kūṯi na maṯāka', '''ali kuti na mataka', '');
INSERT INTO kiswahili VALUES (30, 4, 'f', 'وٗتٖ مْبوَا مُوْيَ قَرِنِ', 'woṯe mbwā mūya qarini', 'wote mbwa muya qarini', '');
INSERT INTO kiswahili VALUES (31, 4, 'g', 'وَلِتُوْكَ مَاتُوْمبونِ', 'waliṯūka māṯūmbūni', 'walituka matumbuni', '');
INSERT INTO kiswahili VALUES (32, 4, 'h', 'وَ كَوَا كَمَ نْيوتَ', 'wa kawā kama nı̄ūṯa', 'wa kawa kama niuta', '');
INSERT INTO kiswahili VALUES (33, 5, 'a', 'اِنْكِشَافِ نْڠَلِيَ', 'inkishāfi ngaliya', 'inkishafi ngaliya', '');
INSERT INTO kiswahili VALUES (34, 5, 'b', 'أُكِسٗوْمٖ نَ كِدَنِ', 'ukisōme na kiḏani', 'ukisome na kidani', '');
INSERT INTO kiswahili VALUES (35, 5, 'c', 'نْدِپُوْ تَاكَاپُوْ كْوٖلٖيَ', 'nḏipuu ṯākāpuu kweleya', 'ndipuu takapuu kweleya', '');
INSERT INTO kiswahili VALUES (36, 5, 'd', 'نِ كْوَامْبِيَاءٗ مْوٖنْدانِ', 'ni kwāmbiyao mwenḏāni', 'ni kwambiyao mwendani', '');
INSERT INTO kiswahili VALUES (37, 5, 'e', 'نِ تُوْنْڠٗ زِمٖسَلِيَ', 'ni ṯūngo zimesaliya', 'ni tungo zimesaliya', '');
INSERT INTO kiswahili VALUES (38, 5, 'f', 'نَ هَزِفِ اَصِلَانِ', 'na hazifi aṣilāni', 'na hazifi asilani', '');
INSERT INTO kiswahili VALUES (39, 5, 'g', 'وَالُوْزِتُنْڠَ نِ نْيَانِ', 'wālūziṯunga ni nyāni', 'waluzitunga ni nyani', '');
INSERT INTO kiswahili VALUES (40, 5, 'h', 'نِ وَنَانْڠُ وَالُوْپِتَ', 'ni wanāngu wālūpiṯa', 'ni wanangu walupita', '');
INSERT INTO kiswahili VALUES (41, 6, 'a', 'نَ مَالٖنْڠَ وَ مْڤِتَ', 'na mālenga wa mviṯa', 'na malenga wa mvita', '');
INSERT INTO kiswahili VALUES (42, 6, 'b', 'نَ پِيَ ػِرَاڠُ دِنِ', 'na piya kʲirāgu ḏini', 'na piya chiragu dini', '');
INSERT INTO kiswahili VALUES (43, 6, 'c', 'نْيايُو ولِزِفُوَتَ', 'nyāyuu ūlizifuwaṯa', 'nyayuu ulizifuwata', '');
INSERT INTO kiswahili VALUES (44, 6, 'd', 'هَاوَكُكِرِ اُدُنِ', 'hāwakukiri uḏuni', 'hawakukiri uduni', '');
INSERT INTO kiswahili VALUES (45, 6, 'e', 'نْنَابَهَانِ هُتٖتَ', 'nnābahāni huṯeṯa', 'nnabahani huteta', '');
INSERT INTO kiswahili VALUES (46, 6, 'f', 'لَكِنِ هُفَلِييانِ', 'lakini hufalı̄yāni', 'lakini hufaliyani', '');
INSERT INTO kiswahili VALUES (47, 6, 'g', 'نْدِيٖ پْوٖكٖ اُوَنْدَانِ', 'nḏiye pweke uwanḏāni', 'ndiye pweke uwandani', '');
INSERT INTO kiswahili VALUES (48, 6, 'h', 'اِنْڠَا اَمٖئِكِتَ', 'ingā ameikiṯa', 'inga ameikita', '');
INSERT INTO kiswahili VALUES (49, 7, 'a', 'بَادٗ كُزَا نَ وٖزَ', 'bāḏo kuzā na weza', 'bado kuza na weza', '');
INSERT INTO kiswahili VALUES (50, 7, 'b', 'سِيَاكُوْمَ اُكِنڠُوْنِ', 'siyākūma ukingūni', 'siyakuma ukinguni', '');
INSERT INTO kiswahili VALUES (51, 7, 'c', 'لَكِنِ مُمٖنِپُوْزَ', 'lakini mumenipūza', 'lakini mumenipuza', '');
INSERT INTO kiswahili VALUES (52, 7, 'd', 'مُمٖئِتٗوَ فُوٗنِ', 'mumeiṯowa fuwoni', 'mumeitowa fuwoni', '');
INSERT INTO kiswahili VALUES (53, 7, 'e', 'وَنْڠِنٖ مٖئِتُوكٖزَ', 'wangine meiṯūkeza', 'wangine meitukeza', '');
INSERT INTO kiswahili VALUES (54, 7, 'f', 'كُنِپانْڠِيَ كَانُوْنِ', 'kunipāngiya kānūni', 'kunipangiya kanuni', '');
INSERT INTO kiswahili VALUES (55, 7, 'g', 'مُسَمِيَاتِ كُبُوْنِ', 'musamiyāṯi kubūni', 'musamiyati kubuni', '');
INSERT INTO kiswahili VALUES (56, 7, 'h', 'نْيِنْيِ مُلِپُوْنِوَتَ', 'nyinyi mulipūniwaṯa', 'nyinyi mulipuniwata', '');
INSERT INTO kiswahili VALUES (57, 8, 'a', 'هُلِيَ كِسِكِتِكَ', 'huliya kisikiṯika', 'huliya kisikitika', '');
INSERT INTO kiswahili VALUES (58, 8, 'b', 'ػَنْڠَلِيَ جَرِدَنِ', 'kʲangaliya jariḏani', 'changaliya jaridani', '');
INSERT INTO kiswahili VALUES (59, 8, 'c', 'وٖنْڠِ وَنَاءُ اَنْدِكَ', 'wengi wanau anḏika', 'wengi wanau andika', '');
INSERT INTO kiswahili VALUES (60, 8, 'd', 'سِوَنَانْڠُ نِ وَڠٖنِ', 'siwanāngu ni wageni', 'siwanangu ni wageni', '');
INSERT INTO kiswahili VALUES (61, 8, 'e', 'اِذَاعَانِ كَذَلِكَ', 'idhā''āni kadhalika', 'idha''ani kadhalika', '');
INSERT INTO kiswahili VALUES (62, 8, 'f', 'وَپٖكَ تُنْڠٗ نِ نْيَانِ', 'wapeka ṯungo ni nyāni', 'wapeka tungo ni nyani', '');
INSERT INTO kiswahili VALUES (63, 8, 'g', 'وٖنْڠِ هَاوَتُوْك پْوان', 'wengi hāwaṯūk pwān', 'wengi hawatuk pwan', '');
INSERT INTO kiswahili VALUES (64, 8, 'h', 'لِػَ كُوَ مْبوا مْڤِتَ', 'likʲa kuwa mbwā mviṯa', 'licha kuwa mbwa mvita', '');
INSERT INTO kiswahili VALUES (5, 1, 'e', 'والُوْبَاكِ كُنِشِكَ', 'wālūbāki kunishika', 'walubaki kunishika', '');
INSERT INTO kiswahili VALUES (4, 1, 'd', 'كُوَأٗنَ نَ تَمَانِ', 'kuwaona na ṯamāni', 'kuwaona na tamani', 'binkie');
INSERT INTO kiswahili VALUES (65, 9, 'a', 'اَنڠَلِيَ نَ زِتَابُ', 'angaliya na ziṯābu', 'angaliya na zitabu', '');
INSERT INTO kiswahili VALUES (66, 9, 'b', 'زِسُوْمٖشْوَاءٗ شُلٖنِ', 'zisūmeshwao shuleni', 'zisumeshwao shuleni', '');
INSERT INTO kiswahili VALUES (67, 9, 'c', 'هَازَانْدِكْوِ نَ رَجَبُ', 'hāzānḏikwi na rajabu', 'hazandikwi na rajabu', '');
INSERT INTO kiswahili VALUES (68, 9, 'd', 'سِ سُوْدِ وَلَ سِ شَانِ', 'si sūḏi wala si shāni', 'si sudi wala si shani', '');
INSERT INTO kiswahili VALUES (69, 9, 'e', 'ْنْجُوْرٗڠٖ نْدِيٖ كَتِبُ', 'njūroge nḏiye kaṯibu', 'njuroge ndiye katibu', '');
INSERT INTO kiswahili VALUES (70, 9, 'f', 'اَشِشِيٖؤٗ سُكَانِ', 'ashishiyeo sukāni', 'ashishiyeo sukani', '');
INSERT INTO kiswahili VALUES (71, 9, 'g', 'ػَارٗ نَ وَاكٖ وٖنْدانِ', 'kʲāro na wāke wenḏāni', 'charo na wake wendani', '');
INSERT INTO kiswahili VALUES (72, 9, 'h', 'نَاءٗ نْيُوْمَ هُفُوَتَ', 'nao nyūma hufuwaṯa', 'nao nyuma hufuwata', '');
INSERT INTO kiswahili VALUES (73, 10, 'a', 'هُوَلِكْوَا كُوْنْڠَمَانٗ', 'huwalikwā kūngamāno', 'huwalikwa kungamano', '');
INSERT INTO kiswahili VALUES (74, 10, 'b', 'ػٖنْدَ هُرُدِ نْدِيَانِ', 'kʲenḏa huruḏi nḏiyāni', 'chenda hurudi ndiyani', '');
INSERT INTO kiswahili VALUES (75, 10, 'c', 'هُوٗنَ اُتُنْڠُ مْنُو', 'huwona uṯungu mnuu', 'huwona utungu mnuu', '');
INSERT INTO kiswahili VALUES (76, 10, 'd', 'كُوَ نْيِنْيِ سِوَأٗنِ', 'kuwa nyinyi siwaoni', 'kuwa nyinyi siwaoni', '');
INSERT INTO kiswahili VALUES (77, 10, 'e', 'نَ هُزِاُمَ زِتَانِ', 'na huziuma ziṯāni', 'na huziuma zitani', '');
INSERT INTO kiswahili VALUES (78, 10, 'f', 'لَكِنِ نِتٖنْدٖ نْنِ', 'lakini niṯenḏe nni', 'lakini nitende nni', '');
INSERT INTO kiswahili VALUES (79, 10, 'g', 'وَنَانْڠُ مُمٖئِخِنِ', 'wanāngu mumeikhini', 'wanangu mumeihini', '');
INSERT INTO kiswahili VALUES (80, 10, 'h', 'مَامٖنُ مُمٖنِوَتَ', 'māmenu mumeniwaṯa', 'mamenu mumeniwata', '');
INSERT INTO kiswahili VALUES (81, 11, 'a', 'نَ هُلِيَ كْوَا مَاتُوْزِ', 'na huliya kwā māṯūzi', 'na huliya kwa matuzi', '');
INSERT INTO kiswahili VALUES (82, 11, 'b', 'ػَنْڠَلِيَ مِتِحَانِ', 'kʲangaliya miṯiḥāni', 'changaliya mitihani', '');
INSERT INTO kiswahili VALUES (83, 11, 'c', 'وَنَفُنْدِ وَ كِبْوٖزِ', 'wanafunḏi wa kibwezi', 'wanafundi wa kibwezi', '');
INSERT INTO kiswahili VALUES (84, 11, 'd', 'نَ وَ كِسُومُ زِوَنِ', 'na wa kisūmu ziwani', 'na wa kisumu ziwani', '');
INSERT INTO kiswahili VALUES (85, 11, 'e', 'نْدِوٗ وَنَاءٗ بَارِزِ', 'nḏiwo wanao bārizi', 'ndiwo wanao barizi', '');
INSERT INTO kiswahili VALUES (86, 11, 'f', 'وَلِيُوكُوْ كِلٖلٖنِ', 'waliyūkuu kileleni', 'waliyukuu kileleni', '');
INSERT INTO kiswahili VALUES (87, 11, 'g', 'مُلُوْتُوْكَ كْوٖتُ پْوانِ', 'mulūṯūka kweṯu pwāni', 'mulutuka kwetu pwani', '');
INSERT INTO kiswahili VALUES (88, 11, 'h', 'مُكُوْ تِنِ هُكُوْكُوْتَ', 'mukuu ṯini hukūkūṯa', 'mukuu tini hukukuta', '');
INSERT INTO kiswahili VALUES (89, 12, 'a', 'وَفَانْيَاءٗ اُتَفِتِ', 'wafānyao uṯafiṯi', 'wafanyao utafiti', '');
INSERT INTO kiswahili VALUES (90, 12, 'b', 'وَ أُزَمِلِ ػُوٗنِ', 'wa uzamili kʲuwoni', 'wa uzamili chuwoni', '');
INSERT INTO kiswahili VALUES (91, 12, 'c', 'وَسْوَاهِلِ نِ كَاتِتِ', 'waswāhili ni kāṯiṯi', 'waswahili ni katiti', '');
INSERT INTO kiswahili VALUES (92, 12, 'd', 'اَوْ هَوَپَاتِكَانِ', 'aw hawapāṯikāni', 'au hawapatikani', '');
INSERT INTO kiswahili VALUES (93, 12, 'e', 'نِ نْيَانِ نِ مْلَئِتِ', 'ni nyāni ni mlaiṯi', 'ni nyani ni mlaiti', '');
INSERT INTO kiswahili VALUES (94, 12, 'f', 'مْوٖنْيٖ مَاكُوْسَ نِ نْيَانِ', 'mwenye mākūsa ni nyāni', 'mwenye makusa ni nyani', '');
INSERT INTO kiswahili VALUES (95, 12, 'g', 'مِمِ هَامُنِثَمِنِ', 'mimi hāmunithamini', 'mimi hamunithamini', '');
INSERT INTO kiswahili VALUES (96, 12, 'h', 'مْڠِنٖ هَامُكُپَاتَ', 'mgine hāmukupāṯa', 'mgine hamukupata', '');
INSERT INTO kiswahili VALUES (97, 13, 'a', 'كِوَسِكِيَ هُنِيْنَ', 'kiwasikiya hunı̄na', 'kiwasikiya hunina', '');
INSERT INTO kiswahili VALUES (98, 13, 'b', 'هُنِأٗنْڠُوْنْڠَ مُويُوْنِ', 'huniongūnga mūyūni', 'huniongunga muyuni', '');
INSERT INTO kiswahili VALUES (99, 13, 'c', 'صَرْفَ هَكُنَ تٖنَ', 'ṣarfa hakuna ṯena', 'sarfa hakuna tena', '');
INSERT INTO kiswahili VALUES (100, 13, 'd', 'نَحَؤُ نَ ئِتَمَانِ', 'naḥau na iṯamāni', 'nahau na itamani', '');
INSERT INTO kiswahili VALUES (101, 13, 'e', 'نَ حَتَ لَذَ هَيَانَ', 'na ḥaṯa ladha hayāna', 'na hata ladha hayana', '');
INSERT INTO kiswahili VALUES (102, 13, 'f', 'كَمَ مَشَاپُوْ كَانْوَانِ', 'kama mashāpuu kānwāni', 'kama mashapuu kanwani', '');
INSERT INTO kiswahili VALUES (103, 13, 'g', 'سِئٖلٖوِ هُنٖنَانِ', 'sielewi hunenāni', 'sielewi hunenani', '');
INSERT INTO kiswahili VALUES (104, 13, 'h', 'هُئِمْبَ اَوْ هُتٖتَ', 'huimba aw huṯeṯa', 'huimba au huteta', '');
INSERT INTO kiswahili VALUES (105, 14, 'a', 'لَوْ مُيَاكَ تَارُدِ', 'law muyāka ṯāruḏi', 'lau muyaka tarudi', '');
INSERT INTO kiswahili VALUES (106, 14, 'b', 'اَيْ تٖنَ دُنِيَانِ', 'ay ṯena ḏuniyāni', 'ay tena duniyani', '');
INSERT INTO kiswahili VALUES (107, 14, 'c', 'موَانَانْڠُ اِتَمْبِدِ', 'mwānāngu iṯambiḏi', 'mwanangu itambidi', '');
INSERT INTO kiswahili VALUES (108, 14, 'd', 'كْوٖنٖنْدَ مَحَكَمَانِ', 'kwenenḏa maḥakamāni', 'kwenenda mahakamani', '');
INSERT INTO kiswahili VALUES (109, 14, 'e', 'اَئٖتٖ نَ مَشَهِدِ', 'aeṯe na mashahiḏi', 'aete na mashahidi', '');
INSERT INTO kiswahili VALUES (110, 14, 'f', 'وَنِيُوَاءٗ يَقِيْنِ', 'waniyuwao yaqı̄ni', 'waniyuwao yaqini', '');
INSERT INTO kiswahili VALUES (111, 14, 'g', 'نْيُوْتٖ مْوٖنْدٖ ڠٖرٖزَنِ', 'nyūṯe mwenḏe gerezani', 'nyute mwende gerezani', '');
INSERT INTO kiswahili VALUES (112, 14, 'h', 'كْوَا حَتِيَ كُوَپَاتَ', 'kwā ḥaṯiya kuwapāṯa', 'kwa hatiya kuwapata', '');
INSERT INTO kiswahili VALUES (113, 15, 'a', 'وَاللّٰهِ هَمُنَ غٖيْرَ', 'wallähi hamuna ḡēra', 'wallahi hamuna ghera', '');
INSERT INTO kiswahili VALUES (114, 15, 'b', 'وَلَ هَامُوْنَ اِمَانِ', 'wala hāmūna imāni', 'wala hamuna imani', '');
INSERT INTO kiswahili VALUES (115, 15, 'c', 'هَمُنَ لَكُوَكٖرَ', 'hamuna lakuwakera', 'hamuna lakuwakera', '');
INSERT INTO kiswahili VALUES (116, 15, 'd', 'كُوَ هَمُنِثَمِنِ', 'kuwa hamunithamini', 'kuwa hamunithamini', '');
INSERT INTO kiswahili VALUES (117, 15, 'e', 'مِمِ نِ كَامَ مْپِوِرِ', 'mimi ni kāma mpiwiri', 'mimi ni kama mpiwiri', '');
INSERT INTO kiswahili VALUES (118, 15, 'f', 'هُتٖزٖوَ اُوَنْدَانِ', 'huṯezewa uwanḏāni', 'hutezewa uwandani', '');
INSERT INTO kiswahili VALUES (119, 15, 'g', 'هِپِجْوَا تٖكٖنْدِيَانَ', 'hipijwā ṯekenḏiyāna', 'hipijwa tekendiyana', '');
INSERT INTO kiswahili VALUES (120, 15, 'h', 'نَ كُلَ مْوٖنْيٖ كُپِتَ', 'na kula mwenye kupiṯa', 'na kula mwenye kupita', '');
INSERT INTO kiswahili VALUES (121, 16, 'a', 'حَتَ كْوٖنْيٖ اُشَعِرِ', 'ḥaṯa kwenye usha''iri', 'hata kwenye usha''iri', '');
INSERT INTO kiswahili VALUES (122, 16, 'b', 'وَاسُوْ وَنْڠُ وَمٖبُوْنِ', 'wāsuu wangu wamebūni', 'wasuu wangu wamebuni', '');
INSERT INTO kiswahili VALUES (123, 16, 'c', 'زِلِزٗ حُرُ بَحَارِ', 'zilizo ḥuru baḥāri', 'zilizo huru bahari', '');
INSERT INTO kiswahili VALUES (124, 16, 'd', 'كْوَا كُوٗلٖزَ وَڠٖنِ', 'kwā kuwoleza wageni', 'kwa kuwoleza wageni', '');
INSERT INTO kiswahili VALUES (125, 16, 'e', 'ممِ هَايُو سِيَاكِرِ', 'mmi hāyuu siyākiri', 'mmi hayuu siyakiri', '');
INSERT INTO kiswahili VALUES (126, 16, 'f', 'سِ مَاشَعِرِ كِفَنِ', 'si māsha''iri kifani', 'si masha''iri kifani', '');
INSERT INTO kiswahili VALUES (127, 16, 'g', 'هَاىُوْ ىُوْت نِ كْوا نْن', 'hāyuu yūṯ ni kwā nn', 'hayuu yut ni kwa nn', '');
INSERT INTO kiswahili VALUES (128, 16, 'h', 'هزٗ ن مْبنُ زَا زتَ', 'hzo n mbnu zā zṯa', 'hzo n mbnu za zta', '');
INSERT INTO kiswahili VALUES (129, 17, 'a', 'هَمْبِوَ مْوٖنْيٖوٖ سِنَ', 'hambiwa mwenyewe sina', 'hambiwa mwenyewe sina', '');
INSERT INTO kiswahili VALUES (130, 17, 'b', 'هِنِ نِ عَجَابُ ڠَانِ', 'hini ni ''ajābu gāni', 'hini ni ''ajabu gani', '');
INSERT INTO kiswahili VALUES (131, 17, 'c', 'هُوَاءٖ كاكُوْسَ شِنَ', 'huwae kākūsa shina', 'huwae kakusa shina', '');
INSERT INTO kiswahili VALUES (132, 17, 'd', 'كَاوَ نَ تَانْدُ يَانْڠَانِ', 'kāwa na ṯānḏu yāngāni', 'kawa na tandu yangani', '');
INSERT INTO kiswahili VALUES (133, 17, 'e', 'نْيَانِ اَلُوْنِپَ ئِنَ', 'nyāni alūnipa ina', 'nyani alunipa ina', '');
INSERT INTO kiswahili VALUES (134, 17, 'f', 'اَلُوْنَانْدِكَ نِ نْيَانِ', 'alūnānḏika ni nyāni', 'alunandika ni nyani', '');
INSERT INTO kiswahili VALUES (135, 17, 'g', 'كِوَ سِ اُسْوَاحِلِنِ', 'kiwa si uswāḥilini', 'kiwa si uswahilini', '');
INSERT INTO kiswahili VALUES (136, 17, 'h', 'نِ وَپِ نَالِپُوپَاتَ', 'ni wapi nālipūpāṯa', 'ni wapi nalipupata', '');
INSERT INTO kiswahili VALUES (137, 18, 'a', 'كُوَ وٖنْڠِ هُنِنٖنَ', 'kuwa wengi huninena', 'kuwa wengi huninena', '');
INSERT INTO kiswahili VALUES (138, 18, 'b', 'سِدَلِلِ اَصِلَانِ', 'siḏalili aṣilāni', 'sidalili asilani', '');
INSERT INTO kiswahili VALUES (139, 18, 'c', 'يَاكُوَ مْوٖنْيٖوٖ سِنَ', 'yākuwa mwenyewe sina', 'yakuwa mwenyewe sina', '');
INSERT INTO kiswahili VALUES (140, 18, 'd', 'كِنْڠٖرٖزَ هَامُوٗنِ', 'kingereza hāmuwoni', 'kingereza hamuwoni', '');
INSERT INTO kiswahili VALUES (141, 18, 'e', 'هُنٖنوَا نَ وٖنْڠِ سَانَ', 'hunenwā na wengi sāna', 'hunenwa na wengi sana', '');
INSERT INTO kiswahili VALUES (142, 18, 'f', 'پٖمْبٖ زٗتٖ دُنِيَانِ', 'pembe zoṯe ḏuniyāni', 'pembe zote duniyani', '');
INSERT INTO kiswahili VALUES (143, 18, 'g', 'كِنَ نَ كْوَاءٗ سِنَانِ', 'kina na kwao sināni', 'kina na kwao sinani', '');
INSERT INTO kiswahili VALUES (144, 18, 'h', 'مِزِيٖ هَئِكُكَاتَ', 'miziye haikukāṯa', 'miziye haikukata', '');
INSERT INTO kiswahili VALUES (3, 1, 'c', 'وَنَنْڠُ هُنِئٖپُوْكَ', 'wanangu huniepūka', 'wanangu huniepuka', '');


--
-- Data for Name: kiswahili_backup; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO kiswahili_backup VALUES (2, 1, 'a', 2, 'نِ', 'ni', '~', '~', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (10, 1, 'd', 2, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (91, 4, 'e', 1, 'عالى', '''ālı̄', 'Ali', '''ālı̄', '', '', '', 'Ali Koti and Mataka,');
INSERT INTO kiswahili_backup VALUES (175, 8, 'd', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (260, 12, 'a', 1, 'وَفَانْيَاءٗ', 'wafānyao', 'wafanyao', 'wafānyao', '', '', '', 'Amongst those who are researching');
INSERT INTO kiswahili_backup VALUES (1, 1, 'a', 1, 'كُنْيَمَا', 'kunyamā', 'kunyamaa', 'kunyamā', '', '', '', 'I am weary of staying silent.');
INSERT INTO kiswahili_backup VALUES (3, 1, 'a', 3, 'مٖػوْكَ', 'mekʲūka', 'nimechoka', 'nimekʲūka', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (4, 1, 'b', 1, 'تَانْيَامَا', 'ṯānyāmā', 't''anyamaa', 'ṯānyāmā', '', '', '', 'For how much longer am I to remain dumb?');
INSERT INTO kiswahili_backup VALUES (5, 1, 'b', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (6, 1, 'b', 3, 'لِنِ', 'lini', 'lini', 'lini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (7, 1, 'c', 1, 'وَنَنْڠُ', 'wanangu', 'wanangu', 'wanangu', '', '', '', 'My own children avoid me, ');
INSERT INTO kiswahili_backup VALUES (8, 1, 'c', 2, 'هُنِئٖپُوْكَ', 'huniepūka', 'huniepuka', 'huniepūka', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (344, 15, 'h', 2, 'كُلَ', 'kula', 'kula', 'kula', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (9, 1, 'd', 1, 'كُوَأٗنَ', 'kuwaona', 'kuwaona', 'kuwaona', '', '', '', 'though I long to see them.');
INSERT INTO kiswahili_backup VALUES (11, 1, 'd', 3, 'تَمَانِ', 'ṯamāni', 'natamani', 'naṯamāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (12, 1, 'e', 1, 'والُوْبَاكِ', 'wālūbāki', 'walobaki', 'wālūbāki', '', '', '', 'And those who remain to embrace me');
INSERT INTO kiswahili_backup VALUES (13, 1, 'e', 2, 'كُنِشِكَ', 'kunishika', 'kunishika', 'kunishika', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (14, 1, 'f', 1, 'سِوَنْڠُ', 'siwangu', 'siwangu', 'si wangu', '', '', '', 'are not my own, but are the offspring of others.');
INSERT INTO kiswahili_backup VALUES (15, 1, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (16, 1, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (17, 1, 'f', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (18, 1, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'What have I done to you?');
INSERT INTO kiswahili_backup VALUES (19, 1, 'g', 2, 'نِ', 'ni', '~', '~', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (20, 1, 'g', 3, 'مٖوَتٖنْدَانِ', 'mewaṯenḏāni', 'nimewatendani', 'nimewaṯenḏāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (21, 1, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbona', 'mbūna', '', '', '', 'Why do you wage war on me? ');
INSERT INTO kiswahili_backup VALUES (22, 1, 'h', 2, 'هُنِپِجَ', 'hunipija', 'wanipija', 'hunipija', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (23, 1, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (24, 2, 'a', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My own flesh and blood,');
INSERT INTO kiswahili_backup VALUES (25, 2, 'a', 2, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (26, 2, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (27, 2, 'a', 4, 'دَمُ', 'ḏamu', 'damu', 'ḏamu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (28, 2, 'b', 1, 'وَانَ', 'wāna', 'wana', 'wāna', '', '', '', 'the children of Swahililand,');
INSERT INTO kiswahili_backup VALUES (29, 2, 'b', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (30, 2, 'b', 3, 'أُسْوَاحِلِنِ', 'uswāḥilini', 'Uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (31, 2, 'c', 1, 'أَصِلِ', 'aṣili', 'asili', 'aṣili', '', '', '', 'are uninterested');
INSERT INTO kiswahili_backup VALUES (32, 2, 'c', 2, 'هَوَنَ', 'hawana', 'hawana', 'hawana', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (33, 2, 'c', 3, 'هَامُ', 'hāmu', 'hamu', 'hāmu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (34, 2, 'd', 1, 'يَا', 'yā', 'ya', 'yā', '', '', '', ' in knowing who I am, ');
INSERT INTO kiswahili_backup VALUES (35, 2, 'd', 2, 'كُنِيُوَ', 'kuniyuwa', 'kuniyuwa', 'kuniyuwa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (36, 2, 'd', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (37, 2, 'd', 4, 'نَانِ', 'nāni', 'nani', 'nāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (38, 2, 'e', 1, 'وَمٖنَتِيَ', 'wamenaṯiya', 'wamenatia', 'wamenaṯiya', '', '', '', 'and have left me to other peoples,');
INSERT INTO kiswahili_backup VALUES (39, 2, 'e', 2, 'قَؤُمُ', 'qaumu', 'kaumu', 'qaumu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (40, 2, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to the children of neighbours.');
INSERT INTO kiswahili_backup VALUES (41, 2, 'f', 2, 'وَنَ', 'wana', 'wana', 'wana', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (42, 2, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (43, 2, 'f', 4, 'مَجِرَنِ', 'majirani', 'majirani', 'majirani', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (44, 2, 'g', 1, 'كُوْسَ', 'kūsa', 'kosa', 'kūsa', '', '', '', 'What kind of fault is my fault?');
INSERT INTO kiswahili_backup VALUES (45, 2, 'g', 2, 'لَنْڠُ', 'langu', 'langu', 'langu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (46, 2, 'g', 3, 'كُوْسَ', 'kūsa', 'kosa', 'kūsa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (47, 2, 'g', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (48, 2, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbona', 'mbūna', '', '', '', '[O my children] why do you continue waging war on me? ');
INSERT INTO kiswahili_backup VALUES (49, 2, 'h', 2, 'هُنِپِجَ', 'hunipija', 'hunipija', 'hunipija', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (50, 2, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (51, 3, 'a', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am your mother and am not yet infertile,');
INSERT INTO kiswahili_backup VALUES (52, 3, 'a', 2, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (53, 3, 'a', 3, 'سِتَاسَ', 'siṯāsa', 'sit''asa', 'siṯāsa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (54, 3, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor has my ability to reproduce diminished.');
INSERT INTO kiswahili_backup VALUES (55, 3, 'b', 2, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (56, 3, 'b', 3, 'پُنْڠُوَنِ', 'punguwani', 'punguwani', 'punguwani', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (57, 3, 'c', 1, 'نِ', 'ni', '~', '~', '', '', '', 'I have given birth to children in Mambasa,');
INSERT INTO kiswahili_backup VALUES (58, 3, 'c', 2, 'مٖزَا', 'mezā', 'nimezaa', 'nimezā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (59, 3, 'c', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (60, 3, 'c', 4, 'مَمْبَاسَ', 'mambāsa', 'Mambasa', 'mambāsa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (61, 3, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and in the other islands [of the Swahili],');
INSERT INTO kiswahili_backup VALUES (62, 3, 'd', 2, 'كُنْڠِنٖ', 'kungine', 'kungine', 'kungine', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (63, 3, 'd', 3, 'زِسِوَنِ', 'zisiwani', 'zisiwani', 'zisiwani', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (64, 3, 'e', 1, 'نِزٖ', 'nize', 'nizee', 'nize', '', '', '', 'to politicians');
INSERT INTO kiswahili_backup VALUES (65, 3, 'e', 2, 'وَنَ', 'wana', '~', '~', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (66, 3, 'e', 3, 'سِيَاسَ', 'siyāsa', 'wanasiasa', 'wanasiyāsa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (67, 3, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to religious leaders,');
INSERT INTO kiswahili_backup VALUES (68, 3, 'f', 2, 'زِيُوْنْڠُوْزِ', 'ziyūngūzi', 'ziongozi', 'ziyūngūzi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (69, 3, 'f', 3, 'وَدِنِ', 'waḏini', 'wa dini', 'wa ḏini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (70, 3, 'g', 1, 'مَافُنْدِ', 'māfunḏi', 'mafundi', 'māfunḏi', '', '', '', 'to craftsmen in every field,');
INSERT INTO kiswahili_backup VALUES (71, 3, 'g', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (72, 3, 'g', 3, 'كُلَ', 'kula', 'kula', 'kula', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (73, 3, 'g', 4, 'فَنِ', 'fani', 'fani', 'fani', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (74, 3, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to war heroes. ');
INSERT INTO kiswahili_backup VALUES (75, 3, 'h', 2, 'مَاشُجَا', 'māshujā', 'mashujaa', 'māshujā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (76, 3, 'h', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (77, 3, 'h', 4, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (78, 4, 'a', 1, 'نْدِمِ', 'nḏimi', 'ndimi', 'nḏimi', '', '', '', 'I am the mother of Bwana Muyaka,');
INSERT INTO kiswahili_backup VALUES (79, 4, 'a', 2, 'مَامَاكٖ', 'māmāke', 'mamake', 'māmāke', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (80, 4, 'a', 3, 'مُيَاكَ', 'muyāka', 'Muyaka', 'muyāka', '', 'Bwana Muyaka was the outstanding Swahili poet of 19th century Mombasa.  After his death many of his verses were recalled by Mu''allim Sikujua Abdallah al-Batawi (died 1890) and transcribed with annotations by W.E. Taylor (1856-1927). After Taylor’s death his papers were acquired by the library of the School of Oriental and African Studies (SOAS), London.', '', '');
INSERT INTO kiswahili_backup VALUES (81, 4, 'b', 1, 'پِيَ', 'piya', 'pia', 'piya', '', '', '', 'and of Mwengo Athmani also,');
INSERT INTO kiswahili_backup VALUES (82, 4, 'b', 2, 'مْوٖنْڠٗ', 'mwengo', 'Mwengo', 'mwengo', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (83, 4, 'b', 3, 'عَثْمَانِ', '''athmāni', 'Athumani', '''ath\In{u}māni', '', 'Mwengo Athmani: this 18th century poet from Pate composed the \FN{Utendi wa Tambuka} (\Eit{The Epic of Heraklios}).', '', '');
INSERT INTO kiswahili_backup VALUES (84, 4, 'c', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and of Zahidi too,');
INSERT INTO kiswahili_backup VALUES (85, 4, 'c', 2, 'زَهِدِ', 'zahiḏi', 'Zahidi', 'zahiḏi', '', 'Zahidi: see \textcite{Maawy1973}.', '', '');
INSERT INTO kiswahili_backup VALUES (86, 4, 'c', 3, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (87, 4, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and many of his contemporaries,');
INSERT INTO kiswahili_backup VALUES (88, 4, 'd', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (89, 4, 'd', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (90, 4, 'd', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (92, 4, 'e', 2, 'كُوْتِ', 'kūṯi', 'Koti', 'kūṯi', '', 'Ali Koti of Pate: see \textcite[pp.31-7]{Chiraghdin1987}.', '', '');
INSERT INTO kiswahili_backup VALUES (93, 4, 'e', 3, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (94, 4, 'e', 4, 'مَتَاكَ', 'maṯāka', 'Mataka', 'maṯāka', '', 'Bwana Mataka’s full name is Muhammad bin Shee Mataka al-Famau (1825-1868). He was ruler of Siyu, as was his father. His mother was Mwana Kupona, famous for the poem of advice written to her daughter. Bwana Mataka died in Mombasa’s fort while imprisoned by the Busa‘idi.', '', '');
INSERT INTO kiswahili_backup VALUES (95, 4, 'f', 1, 'وٗتٖ', 'woṯe', 'wote', 'woṯe', '', '', '', 'all from just one century,');
INSERT INTO kiswahili_backup VALUES (96, 4, 'f', 2, 'مْبوَا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (97, 4, 'f', 3, 'مُوْيَ', 'mūya', 'moya', 'mūya', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (98, 4, 'f', 4, 'قَرِنِ', 'qarini', 'karini', 'qarini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (99, 4, 'g', 1, 'وَلِتُوْكَ', 'waliṯūka', 'walitoka', 'waliṯūka', '', '', '', 'they emerged from my womb,');
INSERT INTO kiswahili_backup VALUES (100, 4, 'g', 2, 'مَاتُوْمبونِ', 'māṯūmbūni', 'mtumboni', 'māṯūmbūni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (101, 4, 'h', 1, 'وَ', 'wa', '~', '~', '', '', '', 'and shone like stars.');
INSERT INTO kiswahili_backup VALUES (102, 4, 'h', 2, 'كَوَا', 'kawā', 'wakawaa', 'wakawā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (103, 4, 'h', 3, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (104, 4, 'h', 4, 'نْيوتَ', 'nı̄ūṯa', 'nyota', 'nı̄ūṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (105, 5, 'a', 1, 'اِنْكِشَافِ', 'inkishāfi', 'Inkishafi', 'inkishāfi', '', 'The \FN{Inkishafi}, according to W.E. Taylor \parencite[pp96-105]{Stigand1915}, is ``a great, if not the greatest, religious classic of [the Swahili-speaking peoples]''''. The poem, concerned with the decay of Pate (formerly a flourishing town in northern Swahililand), may remind some readers of Thomas Gray''s \Eit{Elegy written in an English churchyard} (London 1751).', '', 'Look at Inkishafi.');
INSERT INTO kiswahili_backup VALUES (106, 5, 'a', 2, 'نْڠَلِيَ', 'ngaliya', 'angalia', 'ngaliya', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (107, 5, 'b', 1, 'أُكِسٗوْمٖ', 'ukisōme', 'ukisome', 'ukisōme', '', '', '', 'Read it attentively');
INSERT INTO kiswahili_backup VALUES (108, 5, 'b', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (109, 5, 'b', 3, 'كِدَنِ', 'kiḏani', 'kidani', 'kiḏani', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (110, 5, 'c', 1, 'نْدِپُوْ', 'nḏipuu', 'ndipo', 'nḏipuu', '', '', '', 'and then you will understand,');
INSERT INTO kiswahili_backup VALUES (111, 5, 'c', 2, 'تَاكَاپُوْ', 'ṯākāpuu', 'takapo', 'ṯākāpuu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (112, 5, 'c', 3, 'كْوٖلٖيَ', 'kweleya', 'kwelea', 'kweleya', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (113, 5, 'd', 1, 'نِ', 'ni', '~', '~', '', '', '', 'my dear friend, ');
INSERT INTO kiswahili_backup VALUES (114, 5, 'd', 2, 'كْوَامْبِيَاءٗ', 'kwāmbiyao', 'nikwambiyao', 'nikwāmbiyao', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (115, 5, 'd', 3, 'مْوٖنْدانِ', 'mwenḏāni', 'mwendani', 'mwenḏāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (116, 5, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'what I am telling you.');
INSERT INTO kiswahili_backup VALUES (117, 5, 'e', 2, 'تُوْنْڠٗ', 'ṯūngo', 't''ungo', 'ṯūngo', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (118, 5, 'e', 3, 'زِمٖسَلِيَ', 'zimesaliya', 'zimesalia', 'zimesaliya', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (119, 5, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'These verses are of enduring worth and will never die.');
INSERT INTO kiswahili_backup VALUES (120, 5, 'f', 2, 'هَزِفِ', 'hazifi', 'hazifi', 'hazifi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (121, 5, 'f', 3, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (122, 5, 'g', 1, 'وَالُوْزِتُنْڠَ', 'wālūziṯunga', 'walozitunga', 'wālūziṯunga', '', '', '', 'Who were those who composed them?');
INSERT INTO kiswahili_backup VALUES (123, 5, 'g', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (124, 5, 'g', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (125, 5, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'They were my children who have passed on. ');
INSERT INTO kiswahili_backup VALUES (126, 5, 'h', 2, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (127, 5, 'h', 3, 'وَالُوْپِتَ', 'wālūpiṯa', 'walopita', 'wālūpiṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (128, 6, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And the Bard of Mambasa,');
INSERT INTO kiswahili_backup VALUES (129, 6, 'a', 2, 'مَالٖنْڠَ', 'mālenga', 'Malenga', 'mālenga', '', 'The Bard of Mambasa refers to Ustadh Ahmad Nassir Juma Bhalo, see \textcite{Chiraghdin1971}.', '', '');
INSERT INTO kiswahili_backup VALUES (130, 6, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (131, 6, 'a', 4, 'مْڤِتَ', 'mviṯa', 'Mvita', 'mviṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (132, 6, 'b', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and Chiraghdin too,');
INSERT INTO kiswahili_backup VALUES (133, 6, 'b', 2, 'پِيَ', 'piya', 'pia', 'piya', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (134, 6, 'b', 3, 'ػِرَاڠُ', 'kʲirāgu', '~', '~', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (135, 6, 'b', 4, 'دِنِ', 'ḏini', 'Chiraghudini', 'kʲirāguḏini', '', 'Shihabdin Chiraghdin (1934-1976). See the biography by his daughter -- \textcite{Chiraghdin2012}.', '', '');
INSERT INTO kiswahili_backup VALUES (136, 6, 'c', 1, 'نْيايُو', 'nyāyuu', 'nyayo', 'nyāyuu', '', '', '', 'they followed in my footsteps,');
INSERT INTO kiswahili_backup VALUES (137, 6, 'c', 2, 'ولِزِفُوَتَ', 'ūlizifuwaṯa', 'walizifuata', 'ūlizifuwaṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (138, 6, 'd', 1, 'هَاوَكُكِرِ', 'hāwakukiri', 'hawakukiri', 'hāwakukiri', '', '', '', 'they did not submit to lower standards.');
INSERT INTO kiswahili_backup VALUES (139, 6, 'd', 2, 'اُدُنِ', 'uḏuni', 'uduni', 'uḏuni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (140, 6, 'e', 1, 'نْنَابَهَانِ', 'nnābahāni', 'Nabahani', 'nnābahāni', '', 'In an unpublished commendation from 12 June 1974 J.W.T. Allen writes about Ahmad Sheikh Nabhany: ``I am privileged to have a wide circle of friends and acquaintances among Swahili scholars of Swahili. I have some knowledge of their rating of themselves and I can name perhaps half a dozen (still living) who are always referred to as the most learned. To me they are walking dictionaries and mines of information and Ahmed is unquestionably one of them. He comes of a family of scholars whose discipline is as tough as any degree course in the world. They have no time for false scholarship or dilettantism. That this profound learning is almost wholly disregarded by those who have been highly educated in the western tradition affects almost everything written today in or about Swahili. When I want to know some word or something about Swahili, I do not go to professors, but to one of the \textit{bingwa} known to me. One of these could give a much greater detail of assessment, but of course his opinion would not carry the weight of one who can put some totally irrelevant letters after his name''''. For a biography see \textcite{Said2012}.', '', 'al-Nabhany reproves,');
INSERT INTO kiswahili_backup VALUES (141, 6, 'e', 2, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (142, 6, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but to what effect?');
INSERT INTO kiswahili_backup VALUES (143, 6, 'f', 2, 'هُفَلِييانِ', 'hufalı̄yāni', 'hufaliyani', 'hufalı̄yāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (144, 6, 'g', 1, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', 'He remains alone in the field,');
INSERT INTO kiswahili_backup VALUES (145, 6, 'g', 2, 'پْوٖكٖ', 'pweke', 'pweke', 'pweke', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (146, 6, 'g', 3, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (147, 6, 'h', 1, 'اِنْڠَا', 'ingā', 'ingawa', 'ingā', '', '', '', 'yet he stays strong.');
INSERT INTO kiswahili_backup VALUES (148, 6, 'h', 2, 'اَمٖئِكِتَ', 'ameikiṯa', 'ameikita', 'ameikiṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (149, 7, 'a', 1, 'بَادٗ', 'bāḏo', 'bado', 'bāḏo', '', '', '', 'I am still able to give birth.');
INSERT INTO kiswahili_backup VALUES (150, 7, 'a', 2, 'كُزَا', 'kuzā', 'kuzaa', 'kuzā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (151, 7, 'a', 3, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (152, 7, 'a', 4, 'وٖزَ', 'weza', 'naweza', 'naweza', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (153, 7, 'b', 1, 'سِيَاكُوْمَ', 'siyākūma', 'siyakoma', 'siyākūma', '', '', '', 'I have not yet reached the limit,');
INSERT INTO kiswahili_backup VALUES (154, 7, 'b', 2, 'اُكِنڠُوْنِ', 'ukingūni', 'ukingoni', 'ukingūni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (155, 7, 'c', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but you have all despised me.');
INSERT INTO kiswahili_backup VALUES (156, 7, 'c', 2, 'مُمٖنِپُوْزَ', 'mumenipūza', 'mumenipuuza', 'mumenipūza', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (157, 7, 'd', 1, 'مُمٖئِتٗوَ', 'mumeiṯowa', 'mumeitowa', 'mumeiṯowa', '', '', '', 'You have left me high and dry,');
INSERT INTO kiswahili_backup VALUES (158, 7, 'd', 2, 'فُوٗنِ', 'fuwoni', 'fuoni', 'fuwoni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (159, 7, 'e', 1, 'وَنْڠِنٖ', 'wangine', 'wangine', 'wangine', '', '', '', 'now others have come forward');
INSERT INTO kiswahili_backup VALUES (160, 7, 'e', 2, 'مٖئِتُوكٖزَ', 'meiṯūkeza', 'meitokeza', 'meiṯūkeza', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (161, 7, 'f', 1, 'كُنِپانْڠِيَ', 'kunipāngiya', 'kunipangia', 'kunipāngiya', '', '', '', 'to regulate me,');
INSERT INTO kiswahili_backup VALUES (162, 7, 'f', 2, 'كَانُوْنِ', 'kānūni', 'kanuni', 'kānūni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (163, 7, 'g', 1, 'مُسَمِيَاتِ', 'musamiyāṯi', 'musamiati', 'musamiyāṯi', '', '', '', 'compiling standardized dictionaries.');
INSERT INTO kiswahili_backup VALUES (164, 7, 'g', 2, 'كُبُوْنِ', 'kubūni', 'kubuni', 'kubūni', '', 'For almost a century the principal publisher of standardized Swahili dictionaries has been the Oxford University Press (OUP). Clearly OUP has to be profitable, and profitable is what, over the years, their dictionaries of standardized Swahili have been. However, if one considers excellence in research and scholarship not one of the OUP’s standardized Swahili lexicons can begin to compare with the Oxford English Dictionary (`more than 600,000 words over a thousand years''). Fortunately for Swahili and for Swahili studies there exists the monumental \Eit{Dictionnaire swahili-français}, compiled by Charles Sacleux \parencite{Sacleux1939}. Sacleux’s chef d’oeuvre (`unprecedented in historical depth, dialectological detail and philological knowledge'') can now be accessed electronically, courtesy of \Eit{Swahili Forum} (\url{uni-leipzig.de/~afrika/swafo/index.php/sacleux}). Heartfelt thanks are due to Thilo Schadeberg and Ridder Samsom.', '', '');
INSERT INTO kiswahili_backup VALUES (165, 7, 'h', 1, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (166, 7, 'h', 2, 'مُلِپُوْنِوَتَ', 'mulipūniwaṯa', 'muliponiwata', 'mulipūniwaṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (167, 8, 'a', 1, 'هُلِيَ', 'huliya', 'hulia', 'huliya', '', '', '', 'I weep and lament');
INSERT INTO kiswahili_backup VALUES (168, 8, 'a', 2, 'كِسِكِتِكَ', 'kisikiṯika', 'kisikitika', 'kisikiṯika', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (169, 8, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the learned journals,');
INSERT INTO kiswahili_backup VALUES (170, 8, 'b', 2, 'جَرِدَنِ', 'jariḏani', 'jaridani', 'jariḏani', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (171, 8, 'c', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'for many of those who contribute ');
INSERT INTO kiswahili_backup VALUES (172, 8, 'c', 2, 'وَنَاءُ', 'wanau', '~', '~', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (173, 8, 'c', 3, 'اَنْدِكَ', 'anḏika', 'wanaoandika', 'wanauanḏika', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (174, 8, 'd', 1, 'سِوَنَانْڠُ', 'siwanāngu', 'si wanangu', 'si wanāngu', '', '', '', 'are not my children, they are strangers [to me].');
INSERT INTO kiswahili_backup VALUES (176, 8, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (177, 8, 'e', 1, 'اِذَاعَانِ', 'idhā''āni', 'idhaani', 'idhā''āni', '', '', '', 'It is much the same with the media. ');
INSERT INTO kiswahili_backup VALUES (178, 8, 'e', 2, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (179, 8, 'f', 1, 'وَپٖكَ', 'wapeka', 'wapeka', 'wapeka', '', '', '', 'Who are the ones who send in their compositions? ');
INSERT INTO kiswahili_backup VALUES (180, 8, 'f', 2, 'تُنْڠٗ', 'ṯungo', 't''ungo', 'ṯungo', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (181, 8, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (182, 8, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (183, 8, 'g', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'Many do not come from the coast,');
INSERT INTO kiswahili_backup VALUES (184, 8, 'g', 2, 'هَاوَتُوْك', 'hāwaṯūk', 'hawatoki', 'hāwaṯūk', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (185, 8, 'g', 3, 'پْوان', 'pwān', 'p''wani', 'pwān', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (186, 8, 'h', 1, 'لِػَ', 'likʲa', 'licha', 'likʲa', '', '', '', 'although they may have a Mambasa address.');
INSERT INTO kiswahili_backup VALUES (187, 8, 'h', 2, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (188, 8, 'h', 3, 'مْبوا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (189, 8, 'h', 4, 'مْڤِتَ', 'mviṯa', 'Mvita', 'mviṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (190, 9, 'a', 1, 'اَنڠَلِيَ', 'angaliya', 'angalia', 'angaliya', '', '', '', 'Look at the textbooks');
INSERT INTO kiswahili_backup VALUES (191, 9, 'a', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (192, 9, 'a', 3, 'زِتَابُ', 'ziṯābu', 'zitabu', 'ziṯābu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (193, 9, 'b', 1, 'زِسُوْمٖشْوَاءٗ', 'zisūmeshwao', 'zisumeshwao', 'zisūmeshwao', '', '', '', 'which are studied at our schools.');
INSERT INTO kiswahili_backup VALUES (194, 9, 'b', 2, 'شُلٖنِ', 'shuleni', 'shuleni', 'shuleni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (195, 9, 'c', 1, 'هَازَانْدِكْوِ', 'hāzānḏikwi', 'hazandikwi', 'hāzānḏikwi', '', '', '', 'They are written neither by Rajabu,');
INSERT INTO kiswahili_backup VALUES (196, 9, 'c', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (197, 9, 'c', 3, 'رَجَبُ', 'rajabu', 'Rajabu', 'rajabu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (198, 9, 'd', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'nor by Sudi nor by Shani.');
INSERT INTO kiswahili_backup VALUES (199, 9, 'd', 2, 'سُوْدِ', 'sūḏi', 'Sudi', 'sūḏi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (200, 9, 'd', 3, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (201, 9, 'd', 4, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (202, 9, 'd', 5, 'شَانِ', 'shāni', 'Shani', 'shāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (203, 9, 'e', 1, 'ْنْجُوْرٗڠٖ', 'njūroge', 'njoroge', 'njūroge', '', '\Eit{njoroge}: a name representing those who have their origins in the East African interior (the \Eit{bara}).', '', 'The author is Njoroge,');
INSERT INTO kiswahili_backup VALUES (204, 9, 'e', 2, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (205, 9, 'e', 3, 'كَتِبُ', 'kaṯibu', 'katibu', 'kaṯibu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (206, 9, 'f', 1, 'اَشِشِيٖؤٗ', 'ashishiyeo', 'ashishiyeo', 'ashishiyeo', '', '', '', 'he is the helmsman. ');
INSERT INTO kiswahili_backup VALUES (207, 9, 'f', 2, 'سُكَانِ', 'sukāni', 'sukani', 'sukāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (208, 9, 'g', 1, 'ػَارٗ', 'kʲāro', 'Charo', 'kʲāro', '', '\Eit{charo}: a name representing those who have their origins in the coastal hinterland (the \Eit{nyika}).', '', 'Charo and his colleagues');
INSERT INTO kiswahili_backup VALUES (209, 9, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (210, 9, 'g', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (211, 9, 'g', 4, 'وٖنْدانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (212, 9, 'h', 1, 'نَاءٗ', 'nao', 'nao', 'nao', '', '', '', 'follow. ');
INSERT INTO kiswahili_backup VALUES (213, 9, 'h', 2, 'نْيُوْمَ', 'nyūma', 'nyuma', 'nyūma', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (214, 9, 'h', 3, 'هُفُوَتَ', 'hufuwaṯa', 'hufuata', 'hufuwaṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (215, 10, 'a', 1, 'هُوَلِكْوَا', 'huwalikwā', 'hualikwa', 'huwalikwā', '', '', '', 'When I am invited to conferences,');
INSERT INTO kiswahili_backup VALUES (216, 10, 'a', 2, 'كُوْنْڠَمَانٗ', 'kūngamāno', 'kongamano', 'kūngamāno', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (217, 10, 'b', 1, 'ػٖنْدَ', 'kʲenḏa', 'chenda', 'kʲenḏa', '', '', '', 'I turn back before I arrive.');
INSERT INTO kiswahili_backup VALUES (218, 10, 'b', 2, 'هُرُدِ', 'huruḏi', 'hurudi', 'huruḏi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (219, 10, 'b', 3, 'نْدِيَانِ', 'nḏiyāni', 'ndiani', 'nḏiyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (220, 10, 'c', 1, 'هُوٗنَ', 'huwona', 'huona', 'huwona', '', '', '', 'I feel exceedingly bitter');
INSERT INTO kiswahili_backup VALUES (221, 10, 'c', 2, 'اُتُنْڠُ', 'uṯungu', 'utungu', 'uṯungu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (222, 10, 'c', 3, 'مْنُو', 'mnuu', 'mno', 'mnuu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (223, 10, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that I do not see you all there.');
INSERT INTO kiswahili_backup VALUES (224, 10, 'd', 2, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (225, 10, 'd', 3, 'سِوَأٗنِ', 'siwaoni', 'siwaoni', 'siwaoni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (226, 10, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'I bite my fingers in frustration,');
INSERT INTO kiswahili_backup VALUES (227, 10, 'e', 2, 'هُزِاُمَ', 'huziuma', 'huziuma', 'huziuma', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (228, 10, 'e', 3, 'زِتَانِ', 'ziṯāni', 'zitano', 'ziṯāni', '', 'These words echo the words of the \FN{Inkishafi}: ``\Eit{wakauma zanda na kuiyuta}''''. Readers unfamiliar with this Swahili gesture of regret could consult \textcite{Eastman1985}.', '', '');
INSERT INTO kiswahili_backup VALUES (229, 10, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but what can I do?');
INSERT INTO kiswahili_backup VALUES (230, 10, 'f', 2, 'نِتٖنْدٖ', 'niṯenḏe', 'nitende', 'niṯenḏe', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (231, 10, 'f', 3, 'نْنِ', 'nni', 'nini', 'nni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (232, 10, 'g', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My children, you have missed your opportunity.');
INSERT INTO kiswahili_backup VALUES (233, 10, 'g', 2, 'مُمٖئِخِنِ', 'mumeikhini', 'mumeihini', 'mumeikhini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (234, 10, 'h', 1, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', 'You have abandoned your own mother. ');
INSERT INTO kiswahili_backup VALUES (235, 10, 'h', 2, 'مُمٖنِوَتَ', 'mumeniwaṯa', 'mumeniwata', 'mumeniwaṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (236, 11, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And I shed tears');
INSERT INTO kiswahili_backup VALUES (237, 11, 'a', 2, 'هُلِيَ', 'huliya', 'hulia', 'huliya', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (238, 11, 'a', 3, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (239, 11, 'a', 4, 'مَاتُوْزِ', 'māṯūzi', 'matozi', 'māṯūzi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (240, 11, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the results of the school exams.');
INSERT INTO kiswahili_backup VALUES (241, 11, 'b', 2, 'مِتِحَانِ', 'miṯiḥāni', 'mitihani', 'miṯiḥāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (242, 11, 'c', 1, 'وَنَفُنْدِ', 'wanafunḏi', 'wanafundi', 'wanafunḏi', '', '', '', 'Students from Kibwezi, ');
INSERT INTO kiswahili_backup VALUES (243, 11, 'c', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (244, 11, 'c', 3, 'كِبْوٖزِ', 'kibwezi', 'Kibwezi', 'kibwezi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (245, 11, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and from Kisumu by the lake,');
INSERT INTO kiswahili_backup VALUES (246, 11, 'd', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (247, 11, 'd', 3, 'كِسُومُ', 'kisūmu', 'Kisumu', 'kisūmu', '', 'Kibwezi and Kisumu are places in the East African interior.', '', '');
INSERT INTO kiswahili_backup VALUES (248, 11, 'd', 4, 'زِوَنِ', 'ziwani', 'ziwani', 'ziwani', '', 'The lake is Lake Nyanza, also known as Lake Victoria.', '', '');
INSERT INTO kiswahili_backup VALUES (249, 11, 'e', 1, 'نْدِوٗ', 'nḏiwo', 'ndiwo', 'nḏiwo', '', '', '', 'they are the ones who are ahead,');
INSERT INTO kiswahili_backup VALUES (250, 11, 'e', 2, 'وَنَاءٗ', 'wanao', 'wanao', 'wanao', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (251, 11, 'e', 3, 'بَارِزِ', 'bārizi', 'barizi', 'bārizi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (252, 11, 'f', 1, 'وَلِيُوكُوْ', 'waliyūkuu', 'waliyukuu', 'waliyūkuu', '', '', '', 'who are at the top;');
INSERT INTO kiswahili_backup VALUES (253, 11, 'f', 2, 'كِلٖلٖنِ', 'kileleni', 'kileleni', 'kileleni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (254, 11, 'g', 1, 'مُلُوْتُوْكَ', 'mulūṯūka', 'mulotoka', 'mulūṯūka', '', '', '', 'and you, students from the coast,');
INSERT INTO kiswahili_backup VALUES (255, 11, 'g', 2, 'كْوٖتُ', 'kweṯu', 'kwetu', 'kweṯu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (256, 11, 'g', 3, 'پْوانِ', 'pwāni', 'p''wani', 'pwāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (257, 11, 'h', 1, 'مُكُوْ', 'mukuu', 'muko', 'mukuu', '', '', '', 'you lag far behind.');
INSERT INTO kiswahili_backup VALUES (258, 11, 'h', 2, 'تِنِ', 'ṯini', 't''ini', 'ṯini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (259, 11, 'h', 3, 'هُكُوْكُوْتَ', 'hukūkūṯa', 'hukokota', 'hukūkūṯa', '', 'Over the years young people on Lamu Island (and indeed elsewhere in northern Swahililand) have received a raw deal in their primary and secondary education. They have `lagged far behind'' their counterparts from the interior, and so Mother Swahili grieves for her marginalised children.', '', '');
INSERT INTO kiswahili_backup VALUES (261, 12, 'a', 2, 'اُتَفِتِ', 'uṯafiṯi', 'utafiti', 'uṯafiṯi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (262, 12, 'b', 1, 'وَ', 'wa', 'wa', 'wa', '', '', '', 'for degrees at the universities,');
INSERT INTO kiswahili_backup VALUES (263, 12, 'b', 2, 'أُزَمِلِ', 'uzamili', 'uzamili', 'uzamili', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (264, 12, 'b', 3, 'ػُوٗنِ', 'kʲuwoni', 'chuwoni', 'kʲuwoni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (265, 12, 'c', 1, 'وَسْوَاهِلِ', 'waswāhili', 'Waswahili', 'waswāhili', '', '', '', 'Swahili students are few');
INSERT INTO kiswahili_backup VALUES (266, 12, 'c', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (267, 12, 'c', 3, 'كَاتِتِ', 'kāṯiṯi', 'katiti', 'kāṯiṯi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (268, 12, 'd', 1, 'اَوْ', 'aw', 'au', 'aw', '', '', '', ' or non-existent.');
INSERT INTO kiswahili_backup VALUES (269, 12, 'd', 2, 'هَوَپَاتِكَانِ', 'hawapāṯikāni', 'hawapatikani', 'hawapāṯikāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (270, 12, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'Who is to be blamed?');
INSERT INTO kiswahili_backup VALUES (271, 12, 'e', 2, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (272, 12, 'e', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (273, 12, 'e', 4, 'مْلَئِتِ', 'mlaiṯi', 'mlaiti', 'mlaiṯi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (274, 12, 'f', 1, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', 'Whose fault is it?');
INSERT INTO kiswahili_backup VALUES (275, 12, 'f', 2, 'مَاكُوْسَ', 'mākūsa', 'makosa', 'mākūsa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (276, 12, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (277, 12, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (278, 12, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'You esteem me not at all,');
INSERT INTO kiswahili_backup VALUES (279, 12, 'g', 2, 'هَامُنِثَمِنِ', 'hāmunithamini', 'hamunithamini', 'hāmunithamini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (280, 12, 'h', 1, 'مْڠِنٖ', 'mgine', 'mngine', 'mgine', '', '', '', 'yet you have not replaced me by another.');
INSERT INTO kiswahili_backup VALUES (281, 12, 'h', 2, 'هَامُكُپَاتَ', 'hāmukupāṯa', 'hamukupata', 'hāmukupāṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (282, 13, 'a', 1, 'كِوَسِكِيَ', 'kiwasikiya', 'kiwasikiya', 'kiwasikiya', '', '', '', 'When I hear those who are not mother-tongue speakers speaking,');
INSERT INTO kiswahili_backup VALUES (283, 13, 'a', 2, 'هُنِيْنَ', 'hunı̄na', 'hunena', 'hunı̄na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (284, 13, 'b', 1, 'هُنِأٗنْڠُوْنْڠَ', 'huniongūnga', 'huniungonga', 'huniongūnga', '', '', '', 'I feel sick at heart.');
INSERT INTO kiswahili_backup VALUES (285, 13, 'b', 2, 'مُويُوْنِ', 'mūyūni', 'moyoni', 'mūyūni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (286, 13, 'c', 1, 'صَرْفَ', 'ṣarfa', 'sarufi', 'ṣarfa', '', '', '', 'Inflection is no longer employed,');
INSERT INTO kiswahili_backup VALUES (287, 13, 'c', 2, 'هَكُنَ', 'hakuna', 'hakuna', 'hakuna', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (288, 13, 'c', 3, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (289, 13, 'd', 1, 'نَحَؤُ', 'naḥau', 'nahau', 'naḥau', '', '', '', 'while grammatical [Swahili] is what I desire!');
INSERT INTO kiswahili_backup VALUES (290, 13, 'd', 2, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (291, 13, 'd', 3, 'ئِتَمَانِ', 'iṯamāni', 'naitamani', 'naiṯamāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (292, 13, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'Even [their speech] is wanting in flavour,');
INSERT INTO kiswahili_backup VALUES (293, 13, 'e', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (294, 13, 'e', 3, 'لَذَ', 'ladha', 'ladha', 'ladha', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (295, 13, 'e', 4, 'هَيَانَ', 'hayāna', 'hayana', 'hayāna', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (296, 13, 'f', 1, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', 'like a plug of tobacco in one’s mouth.');
INSERT INTO kiswahili_backup VALUES (297, 13, 'f', 2, 'مَشَاپُوْ', 'mashāpuu', 'mashapu', 'mashāpuu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (298, 13, 'f', 3, 'كَانْوَانِ', 'kānwāni', 'kanwani', 'kānwāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (299, 13, 'g', 1, 'سِئٖلٖوِ', 'sielewi', 'sielewi', 'sielewi', '', '', '', 'I do not understand what they are saying.');
INSERT INTO kiswahili_backup VALUES (300, 13, 'g', 2, 'هُنٖنَانِ', 'hunenāni', 'hunenani', 'hunenāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (301, 13, 'h', 1, 'هُئِمْبَ', 'huimba', 'huimba', 'huimba', '', '', '', 'Are they singing? Are they complaining? ');
INSERT INTO kiswahili_backup VALUES (302, 13, 'h', 2, 'اَوْ', 'aw', 'au', 'aw', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (303, 13, 'h', 3, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (304, 14, 'a', 1, 'لَوْ', 'law', 'lau', 'law', '', '', '', 'Were Bwana Muyaka to return,');
INSERT INTO kiswahili_backup VALUES (305, 14, 'a', 2, 'مُيَاكَ', 'muyāka', 'Muyaka', 'muyāka', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (306, 14, 'a', 3, 'تَارُدِ', 'ṯāruḏi', 'tarudi', 'ṯāruḏi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (307, 14, 'b', 1, 'اَيْ', 'ay', 'ae', 'ay', '', '', '', 'were he to come back to the world,');
INSERT INTO kiswahili_backup VALUES (308, 14, 'b', 2, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (309, 14, 'b', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniani', 'ḏuniyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (310, 14, 'c', 1, 'موَانَانْڠُ', 'mwānāngu', 'mwanangu', 'mwānāngu', '', '', '', 'it would be necessary, my child,');
INSERT INTO kiswahili_backup VALUES (311, 14, 'c', 2, 'اِتَمْبِدِ', 'iṯambiḏi', 'itambidi', 'iṯambiḏi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (312, 14, 'd', 1, 'كْوٖنٖنْدَ', 'kwenenḏa', 'kwenenda', 'kwenenḏa', '', '', '', 'for him to go to a court of law,');
INSERT INTO kiswahili_backup VALUES (313, 14, 'd', 2, 'مَحَكَمَانِ', 'maḥakamāni', 'mahakamani', 'maḥakamāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (314, 14, 'e', 1, 'اَئٖتٖ', 'aeṯe', 'aete', 'aeṯe', '', '', '', 'and he would need to call witnesses');
INSERT INTO kiswahili_backup VALUES (315, 14, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (316, 14, 'e', 3, 'مَشَهِدِ', 'mashahiḏi', 'mashahidi', 'mashahiḏi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (317, 14, 'f', 1, 'وَنِيُوَاءٗ', 'waniyuwao', 'waniyuwao', 'waniyuwao', '', '', '', 'who know me well,');
INSERT INTO kiswahili_backup VALUES (318, 14, 'f', 2, 'يَقِيْنِ', 'yaqı̄ni', 'yakini', 'yaqı̄ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (319, 14, 'g', 1, 'نْيُوْتٖ', 'nyūṯe', 'nyote', 'nyūṯe', '', '', '', 'and all of you would go to prison');
INSERT INTO kiswahili_backup VALUES (320, 14, 'g', 2, 'مْوٖنْدٖ', 'mwenḏe', 'mwende', 'mwenḏe', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (321, 14, 'g', 3, 'ڠٖرٖزَنِ', 'gerezani', 'gerezani', 'gerezani', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (322, 14, 'h', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'for the offence which you have committed against me. ');
INSERT INTO kiswahili_backup VALUES (323, 14, 'h', 2, 'حَتِيَ', 'ḥaṯiya', 'hatia', 'ḥaṯiya', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (324, 14, 'h', 3, 'كُوَپَاتَ', 'kuwapāṯa', 'kuwapata', 'kuwapāṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (325, 15, 'a', 1, 'وَاللّٰهِ', 'wallähi', 'wallahi', 'wallähi', '', '', '', 'Truly you have neither zeal');
INSERT INTO kiswahili_backup VALUES (326, 15, 'a', 2, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (327, 15, 'a', 3, 'غٖيْرَ', 'ḡēra', 'ghera', 'ḡēra', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (328, 15, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor self-confidence.');
INSERT INTO kiswahili_backup VALUES (329, 15, 'b', 2, 'هَامُوْنَ', 'hāmūna', 'hamuna', 'hāmūna', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (330, 15, 'b', 3, 'اِمَانِ', 'imāni', 'imani', 'imāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (331, 15, 'c', 1, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', 'It irritates you not at all');
INSERT INTO kiswahili_backup VALUES (332, 15, 'c', 2, 'لَكُوَكٖرَ', 'lakuwakera', 'la kuwakera', 'la kuwakera', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (333, 15, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that you do not esteem me.');
INSERT INTO kiswahili_backup VALUES (334, 15, 'd', 2, 'هَمُنِثَمِنِ', 'hamunithamini', 'hamunithamini', 'hamunithamini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (335, 15, 'e', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am just like a ball');
INSERT INTO kiswahili_backup VALUES (336, 15, 'e', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (337, 15, 'e', 3, 'كَامَ', 'kāma', 'kama', 'kāma', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (338, 15, 'e', 4, 'مْپِوِرِ', 'mpiwiri', 'mpwira', 'mpiwiri', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (339, 15, 'f', 1, 'هُتٖزٖوَ', 'huṯezewa', 'hutezewa', 'huṯezewa', '', '', '', 'in the play-ground,');
INSERT INTO kiswahili_backup VALUES (340, 15, 'f', 2, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (341, 15, 'g', 1, 'هِپِجْوَا', 'hipijwā', 'hipijwa', 'hipijwā', '', '', '', 'I am given a kick');
INSERT INTO kiswahili_backup VALUES (342, 15, 'g', 2, 'تٖكٖنْدِيَانَ', 'ṯekenḏiyāna', 'teke ndiani', 'ṯeke nḏiyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (343, 15, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'by anyone who passes by in the street.');
INSERT INTO kiswahili_backup VALUES (345, 15, 'h', 3, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (346, 15, 'h', 4, 'كُپِتَ', 'kupiṯa', 'kupita', 'kupiṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (347, 16, 'a', 1, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', 'Even in the field of Swahili prosody,');
INSERT INTO kiswahili_backup VALUES (348, 16, 'a', 2, 'كْوٖنْيٖ', 'kwenye', 'kwenye', 'kwenye', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (349, 16, 'a', 3, 'اُشَعِرِ', 'usha''iri', 'ushairi', 'usha''iri', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (350, 16, 'b', 1, 'وَاسُوْ', 'wāsuu', 'waso', 'wāsuu', '', '', '', 'those who are not mine have invented');
INSERT INTO kiswahili_backup VALUES (351, 16, 'b', 2, 'وَنْڠُ', 'wangu', 'wangu', 'wangu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (352, 16, 'b', 3, 'وَمٖبُوْنِ', 'wamebūni', 'wamebuni', 'wamebūni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (353, 16, 'c', 1, 'زِلِزٗ', 'zilizo', 'zilizo', 'zilizo', '', '', '', 'free verse,');
INSERT INTO kiswahili_backup VALUES (354, 16, 'c', 2, 'حُرُ', 'ḥuru', 'huru', 'ḥuru', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (355, 16, 'c', 3, 'بَحَارِ', 'baḥāri', 'bahari', 'baḥāri', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (356, 16, 'd', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'imitating foreigners.');
INSERT INTO kiswahili_backup VALUES (357, 16, 'd', 2, 'كُوٗلٖزَ', 'kuwoleza', 'kuoleza', 'kuwoleza', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (358, 16, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (359, 16, 'e', 1, 'ممِ', 'mmi', 'mimi', 'mmi', '', '', '', 'For myself, I cannot accept that.');
INSERT INTO kiswahili_backup VALUES (360, 16, 'e', 2, 'هَايُو', 'hāyuu', 'hayo', 'hāyuu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (361, 16, 'e', 3, 'سِيَاكِرِ', 'siyākiri', 'siyakiri', 'siyākiri', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (362, 16, 'f', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'That is not Swahili poetry.');
INSERT INTO kiswahili_backup VALUES (363, 16, 'f', 2, 'مَاشَعِرِ', 'māsha''iri', 'mashairi', 'māsha''iri', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (364, 16, 'f', 3, 'كِفَنِ', 'kifani', 'kifani', 'kifani', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (365, 16, 'g', 1, 'هَاىُوْ', 'hāyuu', 'hayo', 'hāyuu', '', '', '', 'What is the point of it all?');
INSERT INTO kiswahili_backup VALUES (366, 16, 'g', 2, 'ىُوْت', 'yūṯ', 'yote', 'yūṯ', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (367, 16, 'g', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (368, 16, 'g', 4, 'كْوا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (369, 16, 'g', 5, 'نْن', 'nn', 'nini', 'nn', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (370, 16, 'h', 1, 'هزٗ', 'hzo', 'hizo', 'hzo', '', '', '', 'These are preparations for war.');
INSERT INTO kiswahili_backup VALUES (371, 16, 'h', 2, 'ن', 'n', 'ni', 'n', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (372, 16, 'h', 3, 'مْبنُ', 'mbnu', 'mbinu', 'mbnu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (373, 16, 'h', 4, 'زَا', 'zā', 'za', 'zā', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (374, 16, 'h', 5, 'زتَ', 'zṯa', 'zita', 'zṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (375, 17, 'a', 1, 'هَمْبِوَ', 'hambiwa', 'hambiwa', 'hambiwa', '', '', '', 'I am told that I belong to nobody in particular.');
INSERT INTO kiswahili_backup VALUES (376, 17, 'a', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (377, 17, 'a', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (378, 17, 'b', 1, 'هِنِ', 'hini', 'hini', 'hini', '', '', '', 'How extraordinary!');
INSERT INTO kiswahili_backup VALUES (379, 17, 'b', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (380, 17, 'b', 3, 'عَجَابُ', '''ajābu', 'ajabu', '''ajābu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (381, 17, 'b', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (382, 17, 'c', 1, 'هُوَاءٖ', 'huwae', 'huwae', 'huwae', '', '', '', 'How can I be rootless below ground');
INSERT INTO kiswahili_backup VALUES (383, 17, 'c', 2, 'كاكُوْسَ', 'kākūsa', 'kakosa', 'kākūsa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (384, 17, 'c', 3, 'شِنَ', 'shina', 'shina', 'shina', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (385, 17, 'd', 1, 'كَاوَ', 'kāwa', 'kawa', 'kāwa', '', '', '', 'and yet have branches above?');
INSERT INTO kiswahili_backup VALUES (386, 17, 'd', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (387, 17, 'd', 3, 'تَانْدُ', 'ṯānḏu', 'tandu', 'ṯānḏu', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (388, 17, 'd', 4, 'يَانْڠَانِ', 'yāngāni', 'yangani', 'yāngāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (389, 17, 'e', 1, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', 'Who gave me my name?');
INSERT INTO kiswahili_backup VALUES (390, 17, 'e', 2, 'اَلُوْنِپَ', 'alūnipa', 'alonipa', 'alūnipa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (391, 17, 'e', 3, 'ئِنَ', 'ina', 'ina', 'ina', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (392, 17, 'f', 1, 'اَلُوْنَانْدِكَ', 'alūnānḏika', 'alonandika', 'alūnānḏika', '', '', '', 'And who are they who wrote me down?');
INSERT INTO kiswahili_backup VALUES (393, 17, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (394, 17, 'f', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (395, 17, 'g', 1, 'كِوَ', 'kiwa', 'kiwa', 'kiwa', '', '', '', 'If I do not hail from Swahililand,');
INSERT INTO kiswahili_backup VALUES (396, 17, 'g', 2, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (397, 17, 'g', 3, 'اُسْوَاحِلِنِ', 'uswāḥilini', 'Uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (398, 17, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'then whence do I come? ');
INSERT INTO kiswahili_backup VALUES (399, 17, 'h', 2, 'وَپِ', 'wapi', 'wapi', 'wapi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (400, 17, 'h', 3, 'نَالِپُوپَاتَ', 'nālipūpāṯa', 'nalipopata', 'nālipūpāṯa', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (401, 18, 'a', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'That many speak me, [Swahili],');
INSERT INTO kiswahili_backup VALUES (402, 18, 'a', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (403, 18, 'a', 3, 'هُنِنٖنَ', 'huninena', 'huninena', 'huninena', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (404, 18, 'b', 1, 'سِدَلِلِ', 'siḏalili', 'si dalili', 'si ḏalili', '', '', '', 'is not of itself proof of origins,');
INSERT INTO kiswahili_backup VALUES (405, 18, 'b', 2, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (406, 18, 'c', 1, 'يَاكُوَ', 'yākuwa', 'yakuwa', 'yākuwa', '', '', '', 'or that I have no owner.');
INSERT INTO kiswahili_backup VALUES (407, 18, 'c', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (408, 18, 'c', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (409, 18, 'd', 1, 'كِنْڠٖرٖزَ', 'kingereza', 'Kiingereza', 'kingereza', '', '', '', 'What of the English language?');
INSERT INTO kiswahili_backup VALUES (410, 18, 'd', 2, 'هَامُوٗنِ', 'hāmuwoni', 'hamuoni', 'hāmuwoni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (411, 18, 'e', 1, 'هُنٖنوَا', 'hunenwā', 'hunenwa', 'hunenwā', '', '', '', 'It is spoken by very many,');
INSERT INTO kiswahili_backup VALUES (412, 18, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (413, 18, 'e', 3, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (414, 18, 'e', 4, 'سَانَ', 'sāna', 'sana', 'sāna', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (415, 18, 'f', 1, 'پٖمْبٖ', 'pembe', 'pembe', 'pembe', '', '', '', 'in all corners of the world,');
INSERT INTO kiswahili_backup VALUES (416, 18, 'f', 2, 'زٗتٖ', 'zoṯe', 'zote', 'zoṯe', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (417, 18, 'f', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniani', 'ḏuniyāni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (418, 18, 'g', 1, 'كِنَ', 'kina', 'kina', 'kina', '', '', '', 'yet the language remains firmly established in its homeland,');
INSERT INTO kiswahili_backup VALUES (419, 18, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (420, 18, 'g', 3, 'كْوَاءٗ', 'kwao', 'kwao', 'kwao', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (421, 18, 'g', 4, 'سِنَانِ', 'sināni', 'sinani', 'sināni', '', '', '', '');
INSERT INTO kiswahili_backup VALUES (422, 18, 'h', 1, 'مِزِيٖ', 'miziye', 'miziye', 'miziye', '', '', '', 'its roots have not been severed. ');
INSERT INTO kiswahili_backup VALUES (423, 18, 'h', 2, 'هَئِكُكَاتَ', 'haikukāṯa', 'haikukata', 'haikukāṯa', '', '', '', '');


--
-- Data for Name: kiswahili_mybackup; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO kiswahili_mybackup VALUES (30, 2, 'b', 3, 'أُسْوَاحِلِنِ', 'uswāḥilini', 'uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (31, 2, 'c', 1, 'أَصِلِ', 'aṣili', 'asili', 'aṣili', '', '', '', 'are uninterested');
INSERT INTO kiswahili_mybackup VALUES (2, 1, 'a', 2, 'نِ', 'ni', 'ni', '~', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (3, 1, 'a', 3, 'مٖػوْكَ', 'mekʲūka', 'mechuka', 'nimekʲūka', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (4, 1, 'b', 1, 'تَانْيَامَا', 'ṯānyāmā', 'tanyama', 'ṯānyāmā', '', '', '', 'For how much longer am I to remain dumb?');
INSERT INTO kiswahili_mybackup VALUES (69, 3, 'f', 3, 'وَدِنِ', 'waḏini', 'wadini', 'wa ḏini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (5, 1, 'b', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (6, 1, 'b', 3, 'لِنِ', 'lini', 'lini', 'lini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (7, 1, 'c', 1, 'وَنَنْڠُ', 'wanangu', 'wanangu', 'wanangu', '', '', '', 'My own children avoid me, ');
INSERT INTO kiswahili_mybackup VALUES (49, 2, 'h', 2, 'هُنِپِجَ', 'hunipija', 'hunipija', 'hunipija', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (50, 2, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (8, 1, 'c', 2, 'هُنِئٖپُوْكَ', 'huniepūka', 'huniepuka', 'huniepūka', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (9, 1, 'd', 1, 'كُوَأٗنَ', 'kuwaona', 'kuwaona', 'kuwaona', '', '', '', 'though I long to see them.');
INSERT INTO kiswahili_mybackup VALUES (32, 2, 'c', 2, 'هَوَنَ', 'hawana', 'hawana', 'hawana', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (33, 2, 'c', 3, 'هَامُ', 'hāmu', 'hamu', 'hāmu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (34, 2, 'd', 1, 'يَا', 'yā', 'ya', 'yā', '', '', '', ' in knowing who I am, ');
INSERT INTO kiswahili_mybackup VALUES (10, 1, 'd', 2, 'نَ', 'na', 'na', '~', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (11, 1, 'd', 3, 'تَمَانِ', 'ṯamāni', 'tamani', 'naṯamāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (13, 1, 'e', 2, 'كُنِشِكَ', 'kunishika', 'kunishika', 'kunishika', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (14, 1, 'f', 1, 'سِوَنْڠُ', 'siwangu', 'siwangu', 'si wangu', '', '', '', 'are not my own, but are the offspring of others.');
INSERT INTO kiswahili_mybackup VALUES (15, 1, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (51, 3, 'a', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am your mother and am not yet infertile,');
INSERT INTO kiswahili_mybackup VALUES (16, 1, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (17, 1, 'f', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (18, 1, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'What have I done to you?');
INSERT INTO kiswahili_mybackup VALUES (19, 1, 'g', 2, 'نِ', 'ni', 'ni', '~', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (35, 2, 'd', 2, 'كُنِيُوَ', 'kuniyuwa', 'kuniyuwa', 'kuniyuwa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (20, 1, 'g', 3, 'مٖوَتٖنْدَانِ', 'mewaṯenḏāni', 'mewatendani', 'nimewaṯenḏāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (21, 1, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbuna', 'mbūna', '', '', '', 'Why do you wage war on me? ');
INSERT INTO kiswahili_mybackup VALUES (22, 1, 'h', 2, 'هُنِپِجَ', 'hunipija', 'hunipija', 'hunipija', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (36, 2, 'd', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (37, 2, 'd', 4, 'نَانِ', 'nāni', 'nani', 'nāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (38, 2, 'e', 1, 'وَمٖنَتِيَ', 'wamenaṯiya', 'wamenatiya', 'wamenaṯiya', '', '', '', 'and have left me to other peoples,');
INSERT INTO kiswahili_mybackup VALUES (23, 1, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (24, 2, 'a', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My own flesh and blood,');
INSERT INTO kiswahili_mybackup VALUES (25, 2, 'a', 2, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (71, 3, 'g', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (26, 2, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (27, 2, 'a', 4, 'دَمُ', 'ḏamu', 'damu', 'ḏamu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (29, 2, 'b', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (39, 2, 'e', 2, 'قَؤُمُ', 'qaumu', 'qaumu', 'qaumu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (40, 2, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to the children of neighbours.');
INSERT INTO kiswahili_mybackup VALUES (62, 3, 'd', 2, 'كُنْڠِنٖ', 'kungine', 'kungine', 'kungine', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (52, 3, 'a', 2, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (41, 2, 'f', 2, 'وَنَ', 'wana', 'wana', 'wana', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (42, 2, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (53, 3, 'a', 3, 'سِتَاسَ', 'siṯāsa', 'sitasa', 'siṯāsa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (54, 3, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor has my ability to reproduce diminished.');
INSERT INTO kiswahili_mybackup VALUES (44, 2, 'g', 1, 'كُوْسَ', 'kūsa', 'kusa', 'kūsa', '', '', '', 'What kind of fault is my fault?');
INSERT INTO kiswahili_mybackup VALUES (45, 2, 'g', 2, 'لَنْڠُ', 'langu', 'langu', 'langu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (46, 2, 'g', 3, 'كُوْسَ', 'kūsa', 'kusa', 'kūsa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (47, 2, 'g', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (63, 3, 'd', 3, 'زِسِوَنِ', 'zisiwani', 'zisiwani', 'zisiwani', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (64, 3, 'e', 1, 'نِزٖ', 'nize', 'nize', 'nize', '', '', '', 'to politicians');
INSERT INTO kiswahili_mybackup VALUES (55, 3, 'b', 2, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (56, 3, 'b', 3, 'پُنْڠُوَنِ', 'punguwani', 'punguwani', 'punguwani', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (57, 3, 'c', 1, 'نِ', 'ni', 'ni', '~', '', '', '', 'I have given birth to children in Mambasa,');
INSERT INTO kiswahili_mybackup VALUES (58, 3, 'c', 2, 'مٖزَا', 'mezā', 'meza', 'nimezā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (59, 3, 'c', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (60, 3, 'c', 4, 'مَمْبَاسَ', 'mambāsa', 'mambasa', 'mambāsa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (65, 3, 'e', 2, 'وَنَ', 'wana', 'wana', '~', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (66, 3, 'e', 3, 'سِيَاسَ', 'siyāsa', 'siyasa', 'wanasiyāsa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (67, 3, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to religious leaders,');
INSERT INTO kiswahili_mybackup VALUES (68, 3, 'f', 2, 'زِيُوْنْڠُوْزِ', 'ziyūngūzi', 'ziyunguzi', 'ziyūngūzi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (72, 3, 'g', 3, 'كُلَ', 'kula', 'kula', 'kula', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (73, 3, 'g', 4, 'فَنِ', 'fani', 'fani', 'fani', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (74, 3, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to war heroes. ');
INSERT INTO kiswahili_mybackup VALUES (75, 3, 'h', 2, 'مَاشُجَا', 'māshujā', 'mashuja', 'māshujā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (78, 4, 'a', 1, 'نْدِمِ', 'nḏimi', 'ndimi', 'nḏimi', '', '', '', 'I am the mother of Bwana Muyaka,');
INSERT INTO kiswahili_mybackup VALUES (76, 3, 'h', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (77, 3, 'h', 4, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (79, 4, 'a', 2, 'مَامَاكٖ', 'māmāke', 'mamake', 'māmāke', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (81, 4, 'b', 1, 'پِيَ', 'piya', 'piya', 'piya', '', '', '', 'and of Mwengo Athmani also,');
INSERT INTO kiswahili_mybackup VALUES (82, 4, 'b', 2, 'مْوٖنْڠٗ', 'mwengo', 'mwengo', 'mwengo', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (84, 4, 'c', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and of Zahidi too,');
INSERT INTO kiswahili_mybackup VALUES (86, 4, 'c', 3, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (87, 4, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and many of his contemporaries,');
INSERT INTO kiswahili_mybackup VALUES (88, 4, 'd', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (89, 4, 'd', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (90, 4, 'd', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (156, 7, 'c', 2, 'مُمٖنِپُوْزَ', 'mumenipūza', 'mumenipuza', 'mumenipūza', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (158, 7, 'd', 2, 'فُوٗنِ', 'fuwoni', 'fuwoni', 'fuwoni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (139, 6, 'd', 2, 'اُدُنِ', 'uḏuni', 'uduni', 'uḏuni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (120, 5, 'f', 2, 'هَزِفِ', 'hazifi', 'hazifi', 'hazifi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (93, 4, 'e', 3, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (95, 4, 'f', 1, 'وٗتٖ', 'woṯe', 'wote', 'woṯe', '', '', '', 'all from just one century,');
INSERT INTO kiswahili_mybackup VALUES (96, 4, 'f', 2, 'مْبوَا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (97, 4, 'f', 3, 'مُوْيَ', 'mūya', 'muya', 'mūya', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (121, 5, 'f', 3, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (122, 5, 'g', 1, 'وَالُوْزِتُنْڠَ', 'wālūziṯunga', 'waluzitunga', 'wālūziṯunga', '', '', '', 'Who were those who composed them?');
INSERT INTO kiswahili_mybackup VALUES (98, 4, 'f', 4, 'قَرِنِ', 'qarini', 'qarini', 'qarini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (99, 4, 'g', 1, 'وَلِتُوْكَ', 'waliṯūka', 'walituka', 'waliṯūka', '', '', '', 'they emerged from my womb,');
INSERT INTO kiswahili_mybackup VALUES (100, 4, 'g', 2, 'مَاتُوْمبونِ', 'māṯūmbūni', 'matumbuni', 'māṯūmbūni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (101, 4, 'h', 1, 'وَ', 'wa', 'wa', '~', '', '', '', 'and shone like stars.');
INSERT INTO kiswahili_mybackup VALUES (141, 6, 'e', 2, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (102, 4, 'h', 2, 'كَوَا', 'kawā', 'kawa', 'wakawā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (103, 4, 'h', 3, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (123, 5, 'g', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (124, 5, 'g', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (104, 4, 'h', 4, 'نْيوتَ', 'nı̄ūṯa', 'niuta', 'nı̄ūṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (106, 5, 'a', 2, 'نْڠَلِيَ', 'ngaliya', 'ngaliya', 'ngaliya', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (107, 5, 'b', 1, 'أُكِسٗوْمٖ', 'ukisōme', 'ukisome', 'ukisōme', '', '', '', 'Read it attentively');
INSERT INTO kiswahili_mybackup VALUES (108, 5, 'b', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (125, 5, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'They were my children who have passed on. ');
INSERT INTO kiswahili_mybackup VALUES (109, 5, 'b', 3, 'كِدَنِ', 'kiḏani', 'kidani', 'kiḏani', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (110, 5, 'c', 1, 'نْدِپُوْ', 'nḏipuu', 'ndipuu', 'nḏipuu', '', '', '', 'and then you will understand,');
INSERT INTO kiswahili_mybackup VALUES (111, 5, 'c', 2, 'تَاكَاپُوْ', 'ṯākāpuu', 'takapuu', 'ṯākāpuu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (112, 5, 'c', 3, 'كْوٖلٖيَ', 'kweleya', 'kweleya', 'kweleya', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (113, 5, 'd', 1, 'نِ', 'ni', 'ni', '~', '', '', '', 'my dear friend, ');
INSERT INTO kiswahili_mybackup VALUES (142, 6, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but to what effect?');
INSERT INTO kiswahili_mybackup VALUES (126, 5, 'h', 2, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (114, 5, 'd', 2, 'كْوَامْبِيَاءٗ', 'kwāmbiyao', 'kwambiyao', 'nikwāmbiyao', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (115, 5, 'd', 3, 'مْوٖنْدانِ', 'mwenḏāni', 'mwendani', 'mwenḏāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (116, 5, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'what I am telling you.');
INSERT INTO kiswahili_mybackup VALUES (127, 5, 'h', 3, 'وَالُوْپِتَ', 'wālūpiṯa', 'walupita', 'wālūpiṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (128, 6, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And the Bard of Mambasa,');
INSERT INTO kiswahili_mybackup VALUES (117, 5, 'e', 2, 'تُوْنْڠٗ', 'ṯūngo', 'tungo', 'ṯūngo', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (118, 5, 'e', 3, 'زِمٖسَلِيَ', 'zimesaliya', 'zimesaliya', 'zimesaliya', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (119, 5, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'These verses are of enduring worth and will never die.');
INSERT INTO kiswahili_mybackup VALUES (130, 6, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (131, 6, 'a', 4, 'مْڤِتَ', 'mviṯa', 'mvita', 'mviṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (132, 6, 'b', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and Chiraghdin too,');
INSERT INTO kiswahili_mybackup VALUES (143, 6, 'f', 2, 'هُفَلِييانِ', 'hufalı̄yāni', 'hufaliyani', 'hufalı̄yāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (150, 7, 'a', 2, 'كُزَا', 'kuzā', 'kuza', 'kuzā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (133, 6, 'b', 2, 'پِيَ', 'piya', 'piya', 'piya', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (134, 6, 'b', 3, 'ػِرَاڠُ', 'kʲirāgu', 'chiragu', '~', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (136, 6, 'c', 1, 'نْيايُو', 'nyāyuu', 'nyayuu', 'nyāyuu', '', '', '', 'they followed in my footsteps,');
INSERT INTO kiswahili_mybackup VALUES (137, 6, 'c', 2, 'ولِزِفُوَتَ', 'ūlizifuwaṯa', 'ulizifuwata', 'ūlizifuwaṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (151, 7, 'a', 3, 'نَ', 'na', 'na', '~', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (144, 6, 'g', 1, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', 'He remains alone in the field,');
INSERT INTO kiswahili_mybackup VALUES (145, 6, 'g', 2, 'پْوٖكٖ', 'pweke', 'pweke', 'pweke', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (138, 6, 'd', 1, 'هَاوَكُكِرِ', 'hāwakukiri', 'hawakukiri', 'hāwakukiri', '', '', '', 'they did not submit to lower standards.');
INSERT INTO kiswahili_mybackup VALUES (146, 6, 'g', 3, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (147, 6, 'h', 1, 'اِنْڠَا', 'ingā', 'inga', 'ingā', '', '', '', 'yet he stays strong.');
INSERT INTO kiswahili_mybackup VALUES (148, 6, 'h', 2, 'اَمٖئِكِتَ', 'ameikiṯa', 'ameikita', 'ameikiṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (149, 7, 'a', 1, 'بَادٗ', 'bāḏo', 'bado', 'bāḏo', '', '', '', 'I am still able to give birth.');
INSERT INTO kiswahili_mybackup VALUES (152, 7, 'a', 4, 'وٖزَ', 'weza', 'weza', 'naweza', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (153, 7, 'b', 1, 'سِيَاكُوْمَ', 'siyākūma', 'siyakuma', 'siyākūma', '', '', '', 'I have not yet reached the limit,');
INSERT INTO kiswahili_mybackup VALUES (154, 7, 'b', 2, 'اُكِنڠُوْنِ', 'ukingūni', 'ukinguni', 'ukingūni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (155, 7, 'c', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but you have all despised me.');
INSERT INTO kiswahili_mybackup VALUES (159, 7, 'e', 1, 'وَنْڠِنٖ', 'wangine', 'wangine', 'wangine', '', '', '', 'now others have come forward');
INSERT INTO kiswahili_mybackup VALUES (160, 7, 'e', 2, 'مٖئِتُوكٖزَ', 'meiṯūkeza', 'meitukeza', 'meiṯūkeza', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (161, 7, 'f', 1, 'كُنِپانْڠِيَ', 'kunipāngiya', 'kunipangiya', 'kunipāngiya', '', '', '', 'to regulate me,');
INSERT INTO kiswahili_mybackup VALUES (162, 7, 'f', 2, 'كَانُوْنِ', 'kānūni', 'kanuni', 'kānūni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (163, 7, 'g', 1, 'مُسَمِيَاتِ', 'musamiyāṯi', 'musamiyati', 'musamiyāṯi', '', '', '', 'compiling standardized dictionaries.');
INSERT INTO kiswahili_mybackup VALUES (165, 7, 'h', 1, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (166, 7, 'h', 2, 'مُلِپُوْنِوَتَ', 'mulipūniwaṯa', 'mulipuniwata', 'mulipūniwaṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (167, 8, 'a', 1, 'هُلِيَ', 'huliya', 'huliya', 'huliya', '', '', '', 'I weep and lament');
INSERT INTO kiswahili_mybackup VALUES (168, 8, 'a', 2, 'كِسِكِتِكَ', 'kisikiṯika', 'kisikitika', 'kisikiṯika', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (169, 8, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the learned journals,');
INSERT INTO kiswahili_mybackup VALUES (170, 8, 'b', 2, 'جَرِدَنِ', 'jariḏani', 'jaridani', 'jariḏani', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (171, 8, 'c', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'for many of those who contribute ');
INSERT INTO kiswahili_mybackup VALUES (172, 8, 'c', 2, 'وَنَاءُ', 'wanau', 'wanau', '~', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (173, 8, 'c', 3, 'اَنْدِكَ', 'anḏika', 'andika', 'wanauanḏika', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (91, 4, 'e', 1, 'عالى', '''ālı̄', '''ali', '''ālı̄', '', '', '', 'Ali Koti and Mataka,');
INSERT INTO kiswahili_mybackup VALUES (246, 11, 'd', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (233, 10, 'g', 2, 'مُمٖئِخِنِ', 'mumeikhini', 'mumeihini', 'mumeikhini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (221, 10, 'c', 2, 'اُتُنْڠُ', 'uṯungu', 'utungu', 'uṯungu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (175, 8, 'd', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (176, 8, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (177, 8, 'e', 1, 'اِذَاعَانِ', 'idhā''āni', 'idha''ani', 'idhā''āni', '', '', '', 'It is much the same with the media. ');
INSERT INTO kiswahili_mybackup VALUES (204, 9, 'e', 2, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (205, 9, 'e', 3, 'كَتِبُ', 'kaṯibu', 'katibu', 'kaṯibu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (178, 8, 'e', 2, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (179, 8, 'f', 1, 'وَپٖكَ', 'wapeka', 'wapeka', 'wapeka', '', '', '', 'Who are the ones who send in their compositions? ');
INSERT INTO kiswahili_mybackup VALUES (207, 9, 'f', 2, 'سُكَانِ', 'sukāni', 'sukani', 'sukāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (222, 10, 'c', 3, 'مْنُو', 'mnuu', 'mnuu', 'mnuu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (180, 8, 'f', 2, 'تُنْڠٗ', 'ṯungo', 'tungo', 'ṯungo', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (181, 8, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (182, 8, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (183, 8, 'g', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'Many do not come from the coast,');
INSERT INTO kiswahili_mybackup VALUES (223, 10, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that I do not see you all there.');
INSERT INTO kiswahili_mybackup VALUES (209, 9, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (210, 9, 'g', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (184, 8, 'g', 2, 'هَاوَتُوْك', 'hāwaṯūk', 'hawatuk', 'hāwaṯūk', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (185, 8, 'g', 3, 'پْوان', 'pwān', 'pwan', 'pwān', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (187, 8, 'h', 2, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (188, 8, 'h', 3, 'مْبوا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (189, 8, 'h', 4, 'مْڤِتَ', 'mviṯa', 'mvita', 'mviṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (190, 9, 'a', 1, 'اَنڠَلِيَ', 'angaliya', 'angaliya', 'angaliya', '', '', '', 'Look at the textbooks');
INSERT INTO kiswahili_mybackup VALUES (191, 9, 'a', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (192, 9, 'a', 3, 'زِتَابُ', 'ziṯābu', 'zitabu', 'ziṯābu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (193, 9, 'b', 1, 'زِسُوْمٖشْوَاءٗ', 'zisūmeshwao', 'zisumeshwao', 'zisūmeshwao', '', '', '', 'which are studied at our schools.');
INSERT INTO kiswahili_mybackup VALUES (194, 9, 'b', 2, 'شُلٖنِ', 'shuleni', 'shuleni', 'shuleni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (234, 10, 'h', 1, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', 'You have abandoned your own mother. ');
INSERT INTO kiswahili_mybackup VALUES (211, 9, 'g', 4, 'وٖنْدانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (196, 9, 'c', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (197, 9, 'c', 3, 'رَجَبُ', 'rajabu', 'rajabu', 'rajabu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (212, 9, 'h', 1, 'نَاءٗ', 'nao', 'nao', 'nao', '', '', '', 'follow. ');
INSERT INTO kiswahili_mybackup VALUES (213, 9, 'h', 2, 'نْيُوْمَ', 'nyūma', 'nyuma', 'nyūma', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (214, 9, 'h', 3, 'هُفُوَتَ', 'hufuwaṯa', 'hufuwata', 'hufuwaṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (198, 9, 'd', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'nor by Sudi nor by Shani.');
INSERT INTO kiswahili_mybackup VALUES (199, 9, 'd', 2, 'سُوْدِ', 'sūḏi', 'sudi', 'sūḏi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (200, 9, 'd', 3, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (201, 9, 'd', 4, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (202, 9, 'd', 5, 'شَانِ', 'shāni', 'shani', 'shāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (203, 9, 'e', 1, 'ْنْجُوْرٗڠٖ', 'njūroge', 'njuroge', 'njūroge', '', '\Eit{njoroge}: a name representing those who have their origins in the East African interior (the \Eit{bara}).', '', 'The author is Njoroge,');
INSERT INTO kiswahili_mybackup VALUES (215, 10, 'a', 1, 'هُوَلِكْوَا', 'huwalikwā', 'huwalikwa', 'huwalikwā', '', '', '', 'When I am invited to conferences,');
INSERT INTO kiswahili_mybackup VALUES (216, 10, 'a', 2, 'كُوْنْڠَمَانٗ', 'kūngamāno', 'kungamano', 'kūngamāno', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (224, 10, 'd', 2, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (217, 10, 'b', 1, 'ػٖنْدَ', 'kʲenḏa', 'chenda', 'kʲenḏa', '', '', '', 'I turn back before I arrive.');
INSERT INTO kiswahili_mybackup VALUES (218, 10, 'b', 2, 'هُرُدِ', 'huruḏi', 'hurudi', 'huruḏi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (219, 10, 'b', 3, 'نْدِيَانِ', 'nḏiyāni', 'ndiyani', 'nḏiyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (225, 10, 'd', 3, 'سِوَأٗنِ', 'siwaoni', 'siwaoni', 'siwaoni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (226, 10, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'I bite my fingers in frustration,');
INSERT INTO kiswahili_mybackup VALUES (220, 10, 'c', 1, 'هُوٗنَ', 'huwona', 'huwona', 'huwona', '', '', '', 'I feel exceedingly bitter');
INSERT INTO kiswahili_mybackup VALUES (227, 10, 'e', 2, 'هُزِاُمَ', 'huziuma', 'huziuma', 'huziuma', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (229, 10, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but what can I do?');
INSERT INTO kiswahili_mybackup VALUES (230, 10, 'f', 2, 'نِتٖنْدٖ', 'niṯenḏe', 'nitende', 'niṯenḏe', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (231, 10, 'f', 3, 'نْنِ', 'nni', 'nni', 'nni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (242, 11, 'c', 1, 'وَنَفُنْدِ', 'wanafunḏi', 'wanafundi', 'wanafunḏi', '', '', '', 'Students from Kibwezi, ');
INSERT INTO kiswahili_mybackup VALUES (235, 10, 'h', 2, 'مُمٖنِوَتَ', 'mumeniwaṯa', 'mumeniwata', 'mumeniwaṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (243, 11, 'c', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (232, 10, 'g', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My children, you have missed your opportunity.');
INSERT INTO kiswahili_mybackup VALUES (244, 11, 'c', 3, 'كِبْوٖزِ', 'kibwezi', 'kibwezi', 'kibwezi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (245, 11, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and from Kisumu by the lake,');
INSERT INTO kiswahili_mybackup VALUES (248, 11, 'd', 4, 'زِوَنِ', 'ziwani', 'ziwani', 'ziwani', '', 'The lake is Lake Nyanza, also known as Lake Victoria.', '', '');
INSERT INTO kiswahili_mybackup VALUES (249, 11, 'e', 1, 'نْدِوٗ', 'nḏiwo', 'ndiwo', 'nḏiwo', '', '', '', 'they are the ones who are ahead,');
INSERT INTO kiswahili_mybackup VALUES (250, 11, 'e', 2, 'وَنَاءٗ', 'wanao', 'wanao', 'wanao', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (251, 11, 'e', 3, 'بَارِزِ', 'bārizi', 'barizi', 'bārizi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (252, 11, 'f', 1, 'وَلِيُوكُوْ', 'waliyūkuu', 'waliyukuu', 'waliyūkuu', '', '', '', 'who are at the top;');
INSERT INTO kiswahili_mybackup VALUES (253, 11, 'f', 2, 'كِلٖلٖنِ', 'kileleni', 'kileleni', 'kileleni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (254, 11, 'g', 1, 'مُلُوْتُوْكَ', 'mulūṯūka', 'mulutuka', 'mulūṯūka', '', '', '', 'and you, students from the coast,');
INSERT INTO kiswahili_mybackup VALUES (255, 11, 'g', 2, 'كْوٖتُ', 'kweṯu', 'kwetu', 'kweṯu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (256, 11, 'g', 3, 'پْوانِ', 'pwāni', 'pwani', 'pwāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (257, 11, 'h', 1, 'مُكُوْ', 'mukuu', 'mukuu', 'mukuu', '', '', '', 'you lag far behind.');
INSERT INTO kiswahili_mybackup VALUES (258, 11, 'h', 2, 'تِنِ', 'ṯini', 'tini', 'ṯini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (247, 11, 'd', 3, 'كِسُومُ', 'kisūmu', 'kisumu', 'kisūmu', '', 'Kibwezi and Kisumu are places in the East African interior.', '', '');
INSERT INTO kiswahili_mybackup VALUES (288, 13, 'c', 3, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (289, 13, 'd', 1, 'نَحَؤُ', 'naḥau', 'nahau', 'naḥau', '', '', '', 'while grammatical [Swahili] is what I desire!');
INSERT INTO kiswahili_mybackup VALUES (261, 12, 'a', 2, 'اُتَفِتِ', 'uṯafiṯi', 'utafiti', 'uṯafiṯi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (262, 12, 'b', 1, 'وَ', 'wa', 'wa', 'wa', '', '', '', 'for degrees at the universities,');
INSERT INTO kiswahili_mybackup VALUES (264, 12, 'b', 3, 'ػُوٗنِ', 'kʲuwoni', 'chuwoni', 'kʲuwoni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (265, 12, 'c', 1, 'وَسْوَاهِلِ', 'waswāhili', 'waswahili', 'waswāhili', '', '', '', 'Swahili students are few');
INSERT INTO kiswahili_mybackup VALUES (266, 12, 'c', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (307, 14, 'b', 1, 'اَيْ', 'ay', 'ay', 'ay', '', '', '', 'were he to come back to the world,');
INSERT INTO kiswahili_mybackup VALUES (267, 12, 'c', 3, 'كَاتِتِ', 'kāṯiṯi', 'katiti', 'kāṯiṯi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (268, 12, 'd', 1, 'اَوْ', 'aw', 'au', 'aw', '', '', '', ' or non-existent.');
INSERT INTO kiswahili_mybackup VALUES (270, 12, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'Who is to be blamed?');
INSERT INTO kiswahili_mybackup VALUES (290, 13, 'd', 2, 'نَ', 'na', 'na', '~', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (291, 13, 'd', 3, 'ئِتَمَانِ', 'iṯamāni', 'itamani', 'naiṯamāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (271, 12, 'e', 2, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (272, 12, 'e', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (292, 13, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'Even [their speech] is wanting in flavour,');
INSERT INTO kiswahili_mybackup VALUES (273, 12, 'e', 4, 'مْلَئِتِ', 'mlaiṯi', 'mlaiti', 'mlaiṯi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (274, 12, 'f', 1, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', 'Whose fault is it?');
INSERT INTO kiswahili_mybackup VALUES (275, 12, 'f', 2, 'مَاكُوْسَ', 'mākūsa', 'makusa', 'mākūsa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (276, 12, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (325, 15, 'a', 1, 'وَاللّٰهِ', 'wallähi', 'wallahi', 'wallähi', '', '', '', 'Truly you have neither zeal');
INSERT INTO kiswahili_mybackup VALUES (277, 12, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (278, 12, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'You esteem me not at all,');
INSERT INTO kiswahili_mybackup VALUES (279, 12, 'g', 2, 'هَامُنِثَمِنِ', 'hāmunithamini', 'hamunithamini', 'hāmunithamini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (280, 12, 'h', 1, 'مْڠِنٖ', 'mgine', 'mgine', 'mgine', '', '', '', 'yet you have not replaced me by another.');
INSERT INTO kiswahili_mybackup VALUES (318, 14, 'f', 2, 'يَقِيْنِ', 'yaqı̄ni', 'yaqini', 'yaqı̄ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (293, 13, 'e', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (281, 12, 'h', 2, 'هَامُكُپَاتَ', 'hāmukupāṯa', 'hamukupata', 'hāmukupāṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (283, 13, 'a', 2, 'هُنِيْنَ', 'hunı̄na', 'hunina', 'hunı̄na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (294, 13, 'e', 3, 'لَذَ', 'ladha', 'ladha', 'ladha', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (295, 13, 'e', 4, 'هَيَانَ', 'hayāna', 'hayana', 'hayāna', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (284, 13, 'b', 1, 'هُنِأٗنْڠُوْنْڠَ', 'huniongūnga', 'huniongunga', 'huniongūnga', '', '', '', 'I feel sick at heart.');
INSERT INTO kiswahili_mybackup VALUES (285, 13, 'b', 2, 'مُويُوْنِ', 'mūyūni', 'muyuni', 'mūyūni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (297, 13, 'f', 2, 'مَشَاپُوْ', 'mashāpuu', 'mashapuu', 'mashāpuu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (286, 13, 'c', 1, 'صَرْفَ', 'ṣarfa', 'sarfa', 'ṣarfa', '', '', '', 'Inflection is no longer employed,');
INSERT INTO kiswahili_mybackup VALUES (287, 13, 'c', 2, 'هَكُنَ', 'hakuna', 'hakuna', 'hakuna', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (298, 13, 'f', 3, 'كَانْوَانِ', 'kānwāni', 'kanwani', 'kānwāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (299, 13, 'g', 1, 'سِئٖلٖوِ', 'sielewi', 'sielewi', 'sielewi', '', '', '', 'I do not understand what they are saying.');
INSERT INTO kiswahili_mybackup VALUES (308, 14, 'b', 2, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (309, 14, 'b', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniyani', 'ḏuniyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (311, 14, 'c', 2, 'اِتَمْبِدِ', 'iṯambiḏi', 'itambidi', 'iṯambiḏi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (300, 13, 'g', 2, 'هُنٖنَانِ', 'hunenāni', 'hunenani', 'hunenāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (301, 13, 'h', 1, 'هُئِمْبَ', 'huimba', 'huimba', 'huimba', '', '', '', 'Are they singing? Are they complaining? ');
INSERT INTO kiswahili_mybackup VALUES (302, 13, 'h', 2, 'اَوْ', 'aw', 'au', 'aw', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (303, 13, 'h', 3, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (319, 14, 'g', 1, 'نْيُوْتٖ', 'nyūṯe', 'nyute', 'nyūṯe', '', '', '', 'and all of you would go to prison');
INSERT INTO kiswahili_mybackup VALUES (304, 14, 'a', 1, 'لَوْ', 'law', 'lau', 'law', '', '', '', 'Were Bwana Muyaka to return,');
INSERT INTO kiswahili_mybackup VALUES (306, 14, 'a', 3, 'تَارُدِ', 'ṯāruḏi', 'tarudi', 'ṯāruḏi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (312, 14, 'd', 1, 'كْوٖنٖنْدَ', 'kwenenḏa', 'kwenenda', 'kwenenḏa', '', '', '', 'for him to go to a court of law,');
INSERT INTO kiswahili_mybackup VALUES (313, 14, 'd', 2, 'مَحَكَمَانِ', 'maḥakamāni', 'mahakamani', 'maḥakamāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (314, 14, 'e', 1, 'اَئٖتٖ', 'aeṯe', 'aete', 'aeṯe', '', '', '', 'and he would need to call witnesses');
INSERT INTO kiswahili_mybackup VALUES (315, 14, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (316, 14, 'e', 3, 'مَشَهِدِ', 'mashahiḏi', 'mashahidi', 'mashahiḏi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (317, 14, 'f', 1, 'وَنِيُوَاءٗ', 'waniyuwao', 'waniyuwao', 'waniyuwao', '', '', '', 'who know me well,');
INSERT INTO kiswahili_mybackup VALUES (320, 14, 'g', 2, 'مْوٖنْدٖ', 'mwenḏe', 'mwende', 'mwenḏe', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (321, 14, 'g', 3, 'ڠٖرٖزَنِ', 'gerezani', 'gerezani', 'gerezani', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (323, 14, 'h', 2, 'حَتِيَ', 'ḥaṯiya', 'hatiya', 'ḥaṯiya', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (335, 15, 'e', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am just like a ball');
INSERT INTO kiswahili_mybackup VALUES (324, 14, 'h', 3, 'كُوَپَاتَ', 'kuwapāṯa', 'kuwapata', 'kuwapāṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (326, 15, 'a', 2, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (327, 15, 'a', 3, 'غٖيْرَ', 'ḡēra', 'ghera', 'ḡēra', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (328, 15, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor self-confidence.');
INSERT INTO kiswahili_mybackup VALUES (329, 15, 'b', 2, 'هَامُوْنَ', 'hāmūna', 'hamuna', 'hāmūna', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (330, 15, 'b', 3, 'اِمَانِ', 'imāni', 'imani', 'imāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (332, 15, 'c', 2, 'لَكُوَكٖرَ', 'lakuwakera', 'lakuwakera', 'la kuwakera', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (331, 15, 'c', 1, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', 'It irritates you not at all');
INSERT INTO kiswahili_mybackup VALUES (333, 15, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that you do not esteem me.');
INSERT INTO kiswahili_mybackup VALUES (336, 15, 'e', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (337, 15, 'e', 3, 'كَامَ', 'kāma', 'kama', 'kāma', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (338, 15, 'e', 4, 'مْپِوِرِ', 'mpiwiri', 'mpiwiri', 'mpiwiri', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (339, 15, 'f', 1, 'هُتٖزٖوَ', 'huṯezewa', 'hutezewa', 'huṯezewa', '', '', '', 'in the play-ground,');
INSERT INTO kiswahili_mybackup VALUES (340, 15, 'f', 2, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (341, 15, 'g', 1, 'هِپِجْوَا', 'hipijwā', 'hipijwa', 'hipijwā', '', '', '', 'I am given a kick');
INSERT INTO kiswahili_mybackup VALUES (342, 15, 'g', 2, 'تٖكٖنْدِيَانَ', 'ṯekenḏiyāna', 'tekendiyana', 'ṯeke nḏiyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (343, 15, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'by anyone who passes by in the street.');
INSERT INTO kiswahili_mybackup VALUES (260, 12, 'a', 1, 'وَفَانْيَاءٗ', 'wafānyao', 'wafanyao', 'wafānyao', '', '', '', 'Amongst those who are researching');
INSERT INTO kiswahili_mybackup VALUES (375, 17, 'a', 1, 'هَمْبِوَ', 'hambiwa', 'hambiwa', 'hambiwa', '', '', '', 'I am told that I belong to nobody in particular.');
INSERT INTO kiswahili_mybackup VALUES (345, 15, 'h', 3, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (346, 15, 'h', 4, 'كُپِتَ', 'kupiṯa', 'kupita', 'kupiṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (348, 16, 'a', 2, 'كْوٖنْيٖ', 'kwenye', 'kwenye', 'kwenye', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (421, 18, 'g', 4, 'سِنَانِ', 'sināni', 'sinani', 'sināni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (393, 17, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (349, 16, 'a', 3, 'اُشَعِرِ', 'usha''iri', 'usha''iri', 'usha''iri', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (350, 16, 'b', 1, 'وَاسُوْ', 'wāsuu', 'wasuu', 'wāsuu', '', '', '', 'those who are not mine have invented');
INSERT INTO kiswahili_mybackup VALUES (351, 16, 'b', 2, 'وَنْڠُ', 'wangu', 'wangu', 'wangu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (394, 17, 'f', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (377, 17, 'a', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (378, 17, 'b', 1, 'هِنِ', 'hini', 'hini', 'hini', '', '', '', 'How extraordinary!');
INSERT INTO kiswahili_mybackup VALUES (352, 16, 'b', 3, 'وَمٖبُوْنِ', 'wamebūni', 'wamebuni', 'wamebūni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (353, 16, 'c', 1, 'زِلِزٗ', 'zilizo', 'zilizo', 'zilizo', '', '', '', 'free verse,');
INSERT INTO kiswahili_mybackup VALUES (354, 16, 'c', 2, 'حُرُ', 'ḥuru', 'huru', 'ḥuru', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (379, 17, 'b', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (355, 16, 'c', 3, 'بَحَارِ', 'baḥāri', 'bahari', 'baḥāri', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (356, 16, 'd', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'imitating foreigners.');
INSERT INTO kiswahili_mybackup VALUES (357, 16, 'd', 2, 'كُوٗلٖزَ', 'kuwoleza', 'kuwoleza', 'kuwoleza', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (395, 17, 'g', 1, 'كِوَ', 'kiwa', 'kiwa', 'kiwa', '', '', '', 'If I do not hail from Swahililand,');
INSERT INTO kiswahili_mybackup VALUES (358, 16, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (359, 16, 'e', 1, 'ممِ', 'mmi', 'mmi', 'mmi', '', '', '', 'For myself, I cannot accept that.');
INSERT INTO kiswahili_mybackup VALUES (361, 16, 'e', 3, 'سِيَاكِرِ', 'siyākiri', 'siyakiri', 'siyākiri', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (362, 16, 'f', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'That is not Swahili poetry.');
INSERT INTO kiswahili_mybackup VALUES (363, 16, 'f', 2, 'مَاشَعِرِ', 'māsha''iri', 'masha''iri', 'māsha''iri', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (364, 16, 'f', 3, 'كِفَنِ', 'kifani', 'kifani', 'kifani', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (380, 17, 'b', 3, 'عَجَابُ', '''ajābu', '''ajabu', '''ajābu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (381, 17, 'b', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (382, 17, 'c', 1, 'هُوَاءٖ', 'huwae', 'huwae', 'huwae', '', '', '', 'How can I be rootless below ground');
INSERT INTO kiswahili_mybackup VALUES (365, 16, 'g', 1, 'هَاىُوْ', 'hāyuu', 'hayuu', 'hāyuu', '', '', '', 'What is the point of it all?');
INSERT INTO kiswahili_mybackup VALUES (366, 16, 'g', 2, 'ىُوْت', 'yūṯ', 'yut', 'yūṯ', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (367, 16, 'g', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (383, 17, 'c', 2, 'كاكُوْسَ', 'kākūsa', 'kakusa', 'kākūsa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (405, 18, 'b', 2, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (368, 16, 'g', 4, 'كْوا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (369, 16, 'g', 5, 'نْن', 'nn', 'nn', 'nn', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (370, 16, 'h', 1, 'هزٗ', 'hzo', 'hzo', 'hzo', '', '', '', 'These are preparations for war.');
INSERT INTO kiswahili_mybackup VALUES (371, 16, 'h', 2, 'ن', 'n', 'n', 'n', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (373, 16, 'h', 4, 'زَا', 'zā', 'za', 'zā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (407, 18, 'c', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (384, 17, 'c', 3, 'شِنَ', 'shina', 'shina', 'shina', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (385, 17, 'd', 1, 'كَاوَ', 'kāwa', 'kawa', 'kāwa', '', '', '', 'and yet have branches above?');
INSERT INTO kiswahili_mybackup VALUES (396, 17, 'g', 2, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (374, 16, 'h', 5, 'زتَ', 'zṯa', 'zta', 'zṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (386, 17, 'd', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (387, 17, 'd', 3, 'تَانْدُ', 'ṯānḏu', 'tandu', 'ṯānḏu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (388, 17, 'd', 4, 'يَانْڠَانِ', 'yāngāni', 'yangani', 'yāngāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (389, 17, 'e', 1, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', 'Who gave me my name?');
INSERT INTO kiswahili_mybackup VALUES (397, 17, 'g', 3, 'اُسْوَاحِلِنِ', 'uswāḥilini', 'uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (398, 17, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'then whence do I come? ');
INSERT INTO kiswahili_mybackup VALUES (390, 17, 'e', 2, 'اَلُوْنِپَ', 'alūnipa', 'alunipa', 'alūnipa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (391, 17, 'e', 3, 'ئِنَ', 'ina', 'ina', 'ina', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (399, 17, 'h', 2, 'وَپِ', 'wapi', 'wapi', 'wapi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (400, 17, 'h', 3, 'نَالِپُوپَاتَ', 'nālipūpāṯa', 'nalipupata', 'nālipūpāṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (401, 18, 'a', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'That many speak me, [Swahili],');
INSERT INTO kiswahili_mybackup VALUES (402, 18, 'a', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (403, 18, 'a', 3, 'هُنِنٖنَ', 'huninena', 'huninena', 'huninena', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (416, 18, 'f', 2, 'زٗتٖ', 'zoṯe', 'zote', 'zoṯe', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (417, 18, 'f', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniyani', 'ḏuniyāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (419, 18, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (404, 18, 'b', 1, 'سِدَلِلِ', 'siḏalili', 'sidalili', 'si ḏalili', '', '', '', 'is not of itself proof of origins,');
INSERT INTO kiswahili_mybackup VALUES (408, 18, 'c', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (409, 18, 'd', 1, 'كِنْڠٖرٖزَ', 'kingereza', 'kingereza', 'kingereza', '', '', '', 'What of the English language?');
INSERT INTO kiswahili_mybackup VALUES (410, 18, 'd', 2, 'هَامُوٗنِ', 'hāmuwoni', 'hamuwoni', 'hāmuwoni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (411, 18, 'e', 1, 'هُنٖنوَا', 'hunenwā', 'hunenwa', 'hunenwā', '', '', '', 'It is spoken by very many,');
INSERT INTO kiswahili_mybackup VALUES (412, 18, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (413, 18, 'e', 3, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (414, 18, 'e', 4, 'سَانَ', 'sāna', 'sana', 'sāna', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (415, 18, 'f', 1, 'پٖمْبٖ', 'pembe', 'pembe', 'pembe', '', '', '', 'in all corners of the world,');
INSERT INTO kiswahili_mybackup VALUES (420, 18, 'g', 3, 'كْوَاءٗ', 'kwao', 'kwao', 'kwao', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (422, 18, 'h', 1, 'مِزِيٖ', 'miziye', 'miziye', 'miziye', '', '', '', 'its roots have not been severed. ');
INSERT INTO kiswahili_mybackup VALUES (423, 18, 'h', 2, 'هَئِكُكَاتَ', 'haikukāṯa', 'haikukata', 'haikukāṯa', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (12, 1, 'e', 1, 'والُوْبَاكِ', 'wālūbāki', 'walubaki', 'wālūbāki', '', '', '', 'And those who remain to embrace me');
INSERT INTO kiswahili_mybackup VALUES (1, 1, 'a', 1, 'كُنْيَمَا', 'kunyamā', 'kunyama', 'kunyamā', '', '', '', 'I am weary of staying silent.');
INSERT INTO kiswahili_mybackup VALUES (28, 2, 'b', 1, 'وَانَ', 'wāna', 'wana', 'wāna', '', '', '', 'the children of Swahililand,');
INSERT INTO kiswahili_mybackup VALUES (43, 2, 'f', 4, 'مَجِرَنِ', 'majirani', 'majirani', 'majirani', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (48, 2, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbuna', 'mbūna', '', '', '', '[O my children] why do you continue waging war on me? ');
INSERT INTO kiswahili_mybackup VALUES (61, 3, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and in the other islands [of the Swahili],');
INSERT INTO kiswahili_mybackup VALUES (70, 3, 'g', 1, 'مَافُنْدِ', 'māfunḏi', 'mafundi', 'māfunḏi', '', '', '', 'to craftsmen in every field,');
INSERT INTO kiswahili_mybackup VALUES (344, 15, 'h', 2, 'كُلَ', 'kula', 'kula', 'kula', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (157, 7, 'd', 1, 'مُمٖئِتٗوَ', 'mumeiṯowa', 'mumeitowa', 'mumeiṯowa', '', '', '', 'You have left me high and dry,');
INSERT INTO kiswahili_mybackup VALUES (174, 8, 'd', 1, 'سِوَنَانْڠُ', 'siwanāngu', 'siwanangu', 'si wanāngu', '', '', '', 'are not my children, they are strangers [to me].');
INSERT INTO kiswahili_mybackup VALUES (186, 8, 'h', 1, 'لِػَ', 'likʲa', 'licha', 'likʲa', '', '', '', 'although they may have a Mambasa address.');
INSERT INTO kiswahili_mybackup VALUES (195, 9, 'c', 1, 'هَازَانْدِكْوِ', 'hāzānḏikwi', 'hazandikwi', 'hāzānḏikwi', '', '', '', 'They are written neither by Rajabu,');
INSERT INTO kiswahili_mybackup VALUES (206, 9, 'f', 1, 'اَشِشِيٖؤٗ', 'ashishiyeo', 'ashishiyeo', 'ashishiyeo', '', '', '', 'he is the helmsman. ');
INSERT INTO kiswahili_mybackup VALUES (236, 11, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And I shed tears');
INSERT INTO kiswahili_mybackup VALUES (237, 11, 'a', 2, 'هُلِيَ', 'huliya', 'huliya', 'huliya', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (238, 11, 'a', 3, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (239, 11, 'a', 4, 'مَاتُوْزِ', 'māṯūzi', 'matuzi', 'māṯūzi', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (240, 11, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the results of the school exams.');
INSERT INTO kiswahili_mybackup VALUES (241, 11, 'b', 2, 'مِتِحَانِ', 'miṯiḥāni', 'mitihani', 'miṯiḥāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (263, 12, 'b', 2, 'أُزَمِلِ', 'uzamili', 'uzamili', 'uzamili', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (269, 12, 'd', 2, 'هَوَپَاتِكَانِ', 'hawapāṯikāni', 'hawapatikani', 'hawapāṯikāni', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (282, 13, 'a', 1, 'كِوَسِكِيَ', 'kiwasikiya', 'kiwasikiya', 'kiwasikiya', '', '', '', 'When I hear those who are not mother-tongue speakers speaking,');
INSERT INTO kiswahili_mybackup VALUES (296, 13, 'f', 1, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', 'like a plug of tobacco in one’s mouth.');
INSERT INTO kiswahili_mybackup VALUES (305, 14, 'a', 2, 'مُيَاكَ', 'muyāka', 'muyaka', 'muyāka', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (310, 14, 'c', 1, 'موَانَانْڠُ', 'mwānāngu', 'mwanangu', 'mwānāngu', '', '', '', 'it would be necessary, my child,');
INSERT INTO kiswahili_mybackup VALUES (322, 14, 'h', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'for the offence which you have committed against me. ');
INSERT INTO kiswahili_mybackup VALUES (334, 15, 'd', 2, 'هَمُنِثَمِنِ', 'hamunithamini', 'hamunithamini', 'hamunithamini', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (347, 16, 'a', 1, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', 'Even in the field of Swahili prosody,');
INSERT INTO kiswahili_mybackup VALUES (360, 16, 'e', 2, 'هَايُو', 'hāyuu', 'hayuu', 'hāyuu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (372, 16, 'h', 3, 'مْبنُ', 'mbnu', 'mbnu', 'mbnu', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (376, 17, 'a', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO kiswahili_mybackup VALUES (392, 17, 'f', 1, 'اَلُوْنَانْدِكَ', 'alūnānḏika', 'alunandika', 'alūnānḏika', '', '', '', 'And who are they who wrote me down?');
INSERT INTO kiswahili_mybackup VALUES (406, 18, 'c', 1, 'يَاكُوَ', 'yākuwa', 'yakuwa', 'yākuwa', '', '', '', 'or that I have no owner.');
INSERT INTO kiswahili_mybackup VALUES (228, 10, 'e', 3, 'زِتَانِ', 'ziṯāni', 'zitani', 'ziṯāni', '', 'These words echo the words of the \FN{Inkishafi}: ``\Eit{wakauma zanda na kuiyuta}''''. Readers unfamiliar with this Swahili gesture of regret could consult \textcite{Eastman1985}.', '', '');
INSERT INTO kiswahili_mybackup VALUES (129, 6, 'a', 2, 'مَالٖنْڠَ', 'mālenga', 'malenga', 'mālenga', '', 'The Bard of Mambasa refers to Ustadh Ahmad Nassir Juma Bhalo, see \textcite{Chiraghdin1971}.', '', '');
INSERT INTO kiswahili_mybackup VALUES (135, 6, 'b', 4, 'دِنِ', 'ḏini', 'dini', 'kʲirāguḏini', '', 'Shihabdin Chiraghdin (1934-1976). See the biography by his daughter -- \textcite{Chiraghdin2012}.', '', '');
INSERT INTO kiswahili_mybackup VALUES (80, 4, 'a', 3, 'مُيَاكَ', 'muyāka', 'muyaka', 'muyāka', '', 'Bwana Muyaka was the outstanding Swahili poet of 19th century Mombasa.  After his death many of his verses were recalled by Mu''allim Sikujua Abdallah al-Batawi (died 1890) and transcribed with annotations by W.E. Taylor (1856-1927). After Taylor’s death his papers were acquired by the library of the School of Oriental and African Studies (SOAS), London.', '', '');
INSERT INTO kiswahili_mybackup VALUES (94, 4, 'e', 4, 'مَتَاكَ', 'maṯāka', 'mataka', 'maṯāka', '', 'Bwana Mataka’s full name is Muhammad bin Shee Mataka al-Famau (1825-1868). He was ruler of Siyu, as was his father. His mother was Mwana Kupona, famous for the poem of advice written to her daughter. Bwana Mataka died in Mombasa’s fort while imprisoned by the Busa‘idi.', '', '');
INSERT INTO kiswahili_mybackup VALUES (208, 9, 'g', 1, 'ػَارٗ', 'kʲāro', 'charo', 'kʲāro', '', '\Eit{charo}: a name representing those who have their origins in the coastal hinterland (the \Eit{nyika}).', '', 'Charo and his colleagues');
INSERT INTO kiswahili_mybackup VALUES (259, 11, 'h', 3, 'هُكُوْكُوْتَ', 'hukūkūṯa', 'hukukuta', 'hukūkūṯa', '', 'Over the years young people on Lamu Island (and indeed elsewhere in northern Swahililand) have received a raw deal in their primary and secondary education. They have `lagged far behind'' their counterparts from the interior, and so Mother Swahili grieves for her marginalised children.', '', '');
INSERT INTO kiswahili_mybackup VALUES (418, 18, 'g', 1, 'كِنَ', 'kina', 'kina', 'kina', '', '', '', 'yet the language remains firmly established in its homeland,');
INSERT INTO kiswahili_mybackup VALUES (83, 4, 'b', 3, 'عَثْمَانِ', '''athmāni', '''athmani', '''ath\In{u}māni', '', 'Mwengo Athmani: this 18th century poet from Pate composed the \FN{Utendi wa Tambuka} (\Eit{The Epic of Heraklios}).', '', '');
INSERT INTO kiswahili_mybackup VALUES (92, 4, 'e', 2, 'كُوْتِ', 'kūṯi', 'kuti', 'kūṯi', '', 'Ali Koti of Pate: see \textcite[pp.31-7]{Chiraghdin1987}.', '', '');
INSERT INTO kiswahili_mybackup VALUES (105, 5, 'a', 1, 'اِنْكِشَافِ', 'inkishāfi', 'inkishafi', 'inkishāfi', '', 'The \FN{Inkishafi}, according to W.E. Taylor \parencite[pp96-105]{Stigand1915}, is ``a great, if not the greatest, religious classic of [the Swahili-speaking peoples]''''. The poem, concerned with the decay of Pate (formerly a flourishing town in northern Swahililand), may remind some readers of Thomas Gray''s \Eit{Elegy written in an English churchyard} (London 1751).', '', 'Look at Inkishafi.');
INSERT INTO kiswahili_mybackup VALUES (140, 6, 'e', 1, 'نْنَابَهَانِ', 'nnābahāni', 'nnabahani', 'nnābahāni', '', 'In an unpublished commendation from 12 June 1974 J.W.T. Allen writes about Ahmad Sheikh Nabhany: ``I am privileged to have a wide circle of friends and acquaintances among Swahili scholars of Swahili. I have some knowledge of their rating of themselves and I can name perhaps half a dozen (still living) who are always referred to as the most learned. To me they are walking dictionaries and mines of information and Ahmed is unquestionably one of them. He comes of a family of scholars whose discipline is as tough as any degree course in the world. They have no time for false scholarship or dilettantism. That this profound learning is almost wholly disregarded by those who have been highly educated in the western tradition affects almost everything written today in or about Swahili. When I want to know some word or something about Swahili, I do not go to professors, but to one of the \textit{bingwa} known to me. One of these could give a much greater detail of assessment, but of course his opinion would not carry the weight of one who can put some totally irrelevant letters after his name''''. For a biography see \textcite{Said2012}.', '', 'al-Nabhany reproves,');
INSERT INTO kiswahili_mybackup VALUES (164, 7, 'g', 2, 'كُبُوْنِ', 'kubūni', 'kubuni', 'kubūni', '', 'For almost a century the principal publisher of standardized Swahili dictionaries has been the Oxford University Press (OUP). Clearly OUP has to be profitable, and profitable is what, over the years, their dictionaries of standardized Swahili have been. However, if one considers excellence in research and scholarship not one of the OUP’s standardized Swahili lexicons can begin to compare with the Oxford English Dictionary (`more than 600,000 words over a thousand years''). Fortunately for Swahili and for Swahili studies there exists the monumental \Eit{Dictionnaire swahili-français}, compiled by Charles Sacleux \parencite{Sacleux1939}. Sacleux’s chef d’oeuvre (`unprecedented in historical depth, dialectological detail and philological knowledge'') can now be accessed electronically, courtesy of \Eit{Swahili Forum} (\url{uni-leipzig.de/~afrika/swafo/index.php/sacleux}). Heartfelt thanks are due to Thilo Schadeberg and Ridder Samsom.', '', '');
INSERT INTO kiswahili_mybackup VALUES (85, 4, 'c', 2, 'زَهِدِ', 'zahiḏi', 'zahidi', 'zahiḏi', '', 'Zahidi: see \textcite{Maawy1973}.', '', '');


--
-- Name: kiswahili_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('kiswahili_poemline_id_seq', 144, true);


--
-- Data for Name: kiswahili_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO kiswahili_words VALUES (203, 9, 'e', 1, 'ْنْجُوْرٗڠٖ', 'njūroge', 'Njoroge', 'njūroge', '', '\Eit{njoroge}: a name representing those who have their origins in the East African interior (the \Eit{bara}).', '', 'The author is Njoroge,');
INSERT INTO kiswahili_words VALUES (29, 2, 'b', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (155, 7, 'c', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but you have all despised me.');
INSERT INTO kiswahili_words VALUES (244, 11, 'c', 3, 'كِبْوٖزِ', 'kibwezi', 'Kibwezi', 'kibwezi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (287, 13, 'c', 2, 'هَكُنَ', 'hakuna', 'hakuna', 'hakuna', '', '', '', '');
INSERT INTO kiswahili_words VALUES (290, 13, 'd', 2, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO kiswahili_words VALUES (374, 16, 'h', 5, 'زتَ', 'zṯa', 'zita', 'zṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (30, 2, 'b', 3, 'أُسْوَاحِلِنِ', 'uswāḥilini', 'Uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (1, 1, 'a', 1, 'كُنْيَمَا', 'kunyamā', 'kunyamaa', 'kunyamā', '', '', '', 'I am weary of staying silent.');
INSERT INTO kiswahili_words VALUES (2, 1, 'a', 2, 'نِ', 'ni', '~', '~', '', '', '', '');
INSERT INTO kiswahili_words VALUES (3, 1, 'a', 3, 'مٖػوْكَ', 'mekʲūka', 'nimechoka', 'nimekʲūka', '', '', '', '');
INSERT INTO kiswahili_words VALUES (68, 3, 'f', 2, 'زِيُوْنْڠُوْزِ', 'ziyūngūzi', 'ziongozi', 'ziyūngūzi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (4, 1, 'b', 1, 'تَانْيَامَا', 'ṯānyāmā', 't''anyamaa', 'ṯānyāmā', '', '', '', 'For how much longer am I to remain dumb?');
INSERT INTO kiswahili_words VALUES (5, 1, 'b', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (6, 1, 'b', 3, 'لِنِ', 'lini', 'lini', 'lini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (48, 2, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbona', 'mbūna', '', '', '', '[O my children] why do you continue waging war on me? ');
INSERT INTO kiswahili_words VALUES (49, 2, 'h', 2, 'هُنِپِجَ', 'hunipija', 'hunipija', 'hunipija', '', '', '', '');
INSERT INTO kiswahili_words VALUES (7, 1, 'c', 1, 'وَنَنْڠُ', 'wanangu', 'wanangu', 'wanangu', '', '', '', 'My own children avoid me, ');
INSERT INTO kiswahili_words VALUES (8, 1, 'c', 2, 'هُنِئٖپُوْكَ', 'huniepūka', 'huniepuka', 'huniepūka', '', '', '', '');
INSERT INTO kiswahili_words VALUES (31, 2, 'c', 1, 'أَصِلِ', 'aṣili', 'asili', 'aṣili', '', '', '', 'are uninterested');
INSERT INTO kiswahili_words VALUES (32, 2, 'c', 2, 'هَوَنَ', 'hawana', 'hawana', 'hawana', '', '', '', '');
INSERT INTO kiswahili_words VALUES (33, 2, 'c', 3, 'هَامُ', 'hāmu', 'hamu', 'hāmu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (9, 1, 'd', 1, 'كُوَأٗنَ', 'kuwaona', 'kuwaona', 'kuwaona', '', '', '', 'though I long to see them.');
INSERT INTO kiswahili_words VALUES (10, 1, 'd', 2, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO kiswahili_words VALUES (11, 1, 'd', 3, 'تَمَانِ', 'ṯamāni', 'natamani', 'naṯamāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (12, 1, 'e', 1, 'والُوْبَاكِ', 'wālūbāki', 'walobaki', 'wālūbāki', '', '', '', 'And those who remain to embrace me');
INSERT INTO kiswahili_words VALUES (13, 1, 'e', 2, 'كُنِشِكَ', 'kunishika', 'kunishika', 'kunishika', '', '', '', '');
INSERT INTO kiswahili_words VALUES (50, 2, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (14, 1, 'f', 1, 'سِوَنْڠُ', 'siwangu', 'siwangu', 'si wangu', '', '', '', 'are not my own, but are the offspring of others.');
INSERT INTO kiswahili_words VALUES (15, 1, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (16, 1, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (17, 1, 'f', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (34, 2, 'd', 1, 'يَا', 'yā', 'ya', 'yā', '', '', '', ' in knowing who I am, ');
INSERT INTO kiswahili_words VALUES (18, 1, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'What have I done to you?');
INSERT INTO kiswahili_words VALUES (19, 1, 'g', 2, 'نِ', 'ni', '~', '~', '', '', '', '');
INSERT INTO kiswahili_words VALUES (20, 1, 'g', 3, 'مٖوَتٖنْدَانِ', 'mewaṯenḏāni', 'nimewatendani', 'nimewaṯenḏāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (35, 2, 'd', 2, 'كُنِيُوَ', 'kuniyuwa', 'kuniyuwa', 'kuniyuwa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (36, 2, 'd', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (37, 2, 'd', 4, 'نَانِ', 'nāni', 'nani', 'nāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (21, 1, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbona', 'mbūna', '', '', '', 'Why do you wage war on me? ');
INSERT INTO kiswahili_words VALUES (22, 1, 'h', 2, 'هُنِپِجَ', 'hunipija', 'wanipija', 'hunipija', '', '', '', '');
INSERT INTO kiswahili_words VALUES (23, 1, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (69, 3, 'f', 3, 'وَدِنِ', 'waḏini', 'wa dini', 'wa ḏini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (24, 2, 'a', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My own flesh and blood,');
INSERT INTO kiswahili_words VALUES (25, 2, 'a', 2, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (26, 2, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (27, 2, 'a', 4, 'دَمُ', 'ḏamu', 'damu', 'ḏamu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (38, 2, 'e', 1, 'وَمٖنَتِيَ', 'wamenaṯiya', 'wamenatia', 'wamenaṯiya', '', '', '', 'and have left me to other peoples,');
INSERT INTO kiswahili_words VALUES (61, 3, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and in the other islands [of the Swahili],');
INSERT INTO kiswahili_words VALUES (51, 3, 'a', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am your mother and am not yet infertile,');
INSERT INTO kiswahili_words VALUES (28, 2, 'b', 1, 'وَانَ', 'wāna', 'wana', 'wāna', '', '', '', 'the children of Swahililand,');
INSERT INTO kiswahili_words VALUES (39, 2, 'e', 2, 'قَؤُمُ', 'qaumu', 'kaumu', 'qaumu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (52, 3, 'a', 2, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (53, 3, 'a', 3, 'سِتَاسَ', 'siṯāsa', 'sit''asa', 'siṯāsa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (40, 2, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to the children of neighbours.');
INSERT INTO kiswahili_words VALUES (41, 2, 'f', 2, 'وَنَ', 'wana', 'wana', 'wana', '', '', '', '');
INSERT INTO kiswahili_words VALUES (42, 2, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (43, 2, 'f', 4, 'مَجِرَنِ', 'majirani', 'majirani', 'majirani', '', '', '', '');
INSERT INTO kiswahili_words VALUES (62, 3, 'd', 2, 'كُنْڠِنٖ', 'kungine', 'kungine', 'kungine', '', '', '', '');
INSERT INTO kiswahili_words VALUES (63, 3, 'd', 3, 'زِسِوَنِ', 'zisiwani', 'zisiwani', 'zisiwani', '', '', '', '');
INSERT INTO kiswahili_words VALUES (44, 2, 'g', 1, 'كُوْسَ', 'kūsa', 'kosa', 'kūsa', '', '', '', 'What kind of fault is my fault?');
INSERT INTO kiswahili_words VALUES (45, 2, 'g', 2, 'لَنْڠُ', 'langu', 'langu', 'langu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (46, 2, 'g', 3, 'كُوْسَ', 'kūsa', 'kosa', 'kūsa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (47, 2, 'g', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (54, 3, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor has my ability to reproduce diminished.');
INSERT INTO kiswahili_words VALUES (55, 3, 'b', 2, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_words VALUES (56, 3, 'b', 3, 'پُنْڠُوَنِ', 'punguwani', 'punguwani', 'punguwani', '', '', '', '');
INSERT INTO kiswahili_words VALUES (64, 3, 'e', 1, 'نِزٖ', 'nize', 'nizee', 'nize', '', '', '', 'to politicians');
INSERT INTO kiswahili_words VALUES (57, 3, 'c', 1, 'نِ', 'ni', '~', '~', '', '', '', 'I have given birth to children in Mambasa,');
INSERT INTO kiswahili_words VALUES (58, 3, 'c', 2, 'مٖزَا', 'mezā', 'nimezaa', 'nimezā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (59, 3, 'c', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (60, 3, 'c', 4, 'مَمْبَاسَ', 'mambāsa', 'Mambasa', 'mambāsa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (65, 3, 'e', 2, 'وَنَ', 'wana', '~', '~', '', '', '', '');
INSERT INTO kiswahili_words VALUES (66, 3, 'e', 3, 'سِيَاسَ', 'siyāsa', 'wanasiasa', 'wanasiyāsa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (77, 3, 'h', 4, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (67, 3, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to religious leaders,');
INSERT INTO kiswahili_words VALUES (82, 4, 'b', 2, 'مْوٖنْڠٗ', 'mwengo', 'Mwengo', 'mwengo', '', '', '', '');
INSERT INTO kiswahili_words VALUES (74, 3, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to war heroes. ');
INSERT INTO kiswahili_words VALUES (75, 3, 'h', 2, 'مَاشُجَا', 'māshujā', 'mashujaa', 'māshujā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (70, 3, 'g', 1, 'مَافُنْدِ', 'māfunḏi', 'mafundi', 'māfunḏi', '', '', '', 'to craftsmen in every field,');
INSERT INTO kiswahili_words VALUES (71, 3, 'g', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (72, 3, 'g', 3, 'كُلَ', 'kula', 'kula', 'kula', '', '', '', '');
INSERT INTO kiswahili_words VALUES (73, 3, 'g', 4, 'فَنِ', 'fani', 'fani', 'fani', '', '', '', '');
INSERT INTO kiswahili_words VALUES (76, 3, 'h', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (80, 4, 'a', 3, 'مُيَاكَ', 'muyāka', 'Muyaka', 'muyāka', '', 'Bwana Muyaka was the outstanding Swahili poet of 19th century Mombasa.  After his death many of his verses were recalled by Mu''allim Sikujua Abdallah al-Batawi (died 1890) and transcribed with annotations by W.E. Taylor (1856-1927). After Taylor’s death his papers were acquired by the library of the School of Oriental and African Studies (SOAS), London.', '', '');
INSERT INTO kiswahili_words VALUES (78, 4, 'a', 1, 'نْدِمِ', 'nḏimi', 'ndimi', 'nḏimi', '', '', '', 'I am the mother of Bwana Muyaka,');
INSERT INTO kiswahili_words VALUES (79, 4, 'a', 2, 'مَامَاكٖ', 'māmāke', 'mamake', 'māmāke', '', '', '', '');
INSERT INTO kiswahili_words VALUES (83, 4, 'b', 3, 'عَثْمَانِ', '''athmāni', 'Athumani', '''ath\In{u}māni', '', 'Mwengo Athmani: this 18th century poet from Pate composed the \FN{Utendi wa Tambuka} (\Eit{The Epic of Heraklios}).', '', '');
INSERT INTO kiswahili_words VALUES (85, 4, 'c', 2, 'زَهِدِ', 'zahiḏi', 'Zahidi', 'zahiḏi', '', 'Zahidi: see \textcite{Maawy1973}.', '', '');
INSERT INTO kiswahili_words VALUES (81, 4, 'b', 1, 'پِيَ', 'piya', 'pia', 'piya', '', '', '', 'and of Mwengo Athmani also,');
INSERT INTO kiswahili_words VALUES (86, 4, 'c', 3, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO kiswahili_words VALUES (88, 4, 'd', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (84, 4, 'c', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and of Zahidi too,');
INSERT INTO kiswahili_words VALUES (89, 4, 'd', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO kiswahili_words VALUES (90, 4, 'd', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (87, 4, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and many of his contemporaries,');
INSERT INTO kiswahili_words VALUES (156, 7, 'c', 2, 'مُمٖنِپُوْزَ', 'mumenipūza', 'mumenipuuza', 'mumenipūza', '', '', '', '');
INSERT INTO kiswahili_words VALUES (138, 6, 'd', 1, 'هَاوَكُكِرِ', 'hāwakukiri', 'hawakukiri', 'hāwakukiri', '', '', '', 'they did not submit to lower standards.');
INSERT INTO kiswahili_words VALUES (119, 5, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'These verses are of enduring worth and will never die.');
INSERT INTO kiswahili_words VALUES (91, 4, 'e', 1, 'عالى', '''ālı̄', 'Ali', '''ālı̄', '', '', '', 'Ali Koti and Mataka,');
INSERT INTO kiswahili_words VALUES (92, 4, 'e', 2, 'كُوْتِ', 'kūṯi', 'Koti', 'kūṯi', '', 'Ali Koti of Pate: see \textcite[pp.31-7]{Chiraghdin1987}.', '', '');
INSERT INTO kiswahili_words VALUES (93, 4, 'e', 3, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (94, 4, 'e', 4, 'مَتَاكَ', 'maṯāka', 'Mataka', 'maṯāka', '', 'Bwana Mataka’s full name is Muhammad bin Shee Mataka al-Famau (1825-1868). He was ruler of Siyu, as was his father. His mother was Mwana Kupona, famous for the poem of advice written to her daughter. Bwana Mataka died in Mombasa’s fort while imprisoned by the Busa‘idi.', '', '');
INSERT INTO kiswahili_words VALUES (120, 5, 'f', 2, 'هَزِفِ', 'hazifi', 'hazifi', 'hazifi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (121, 5, 'f', 3, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (95, 4, 'f', 1, 'وٗتٖ', 'woṯe', 'wote', 'woṯe', '', '', '', 'all from just one century,');
INSERT INTO kiswahili_words VALUES (96, 4, 'f', 2, 'مْبوَا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (97, 4, 'f', 3, 'مُوْيَ', 'mūya', 'moya', 'mūya', '', '', '', '');
INSERT INTO kiswahili_words VALUES (98, 4, 'f', 4, 'قَرِنِ', 'qarini', 'karini', 'qarini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (139, 6, 'd', 2, 'اُدُنِ', 'uḏuni', 'uduni', 'uḏuni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (99, 4, 'g', 1, 'وَلِتُوْكَ', 'waliṯūka', 'walitoka', 'waliṯūka', '', '', '', 'they emerged from my womb,');
INSERT INTO kiswahili_words VALUES (100, 4, 'g', 2, 'مَاتُوْمبونِ', 'māṯūmbūni', 'mtumboni', 'māṯūmbūni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (122, 5, 'g', 1, 'وَالُوْزِتُنْڠَ', 'wālūziṯunga', 'walozitunga', 'wālūziṯunga', '', '', '', 'Who were those who composed them?');
INSERT INTO kiswahili_words VALUES (123, 5, 'g', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (101, 4, 'h', 1, 'وَ', 'wa', '~', '~', '', '', '', 'and shone like stars.');
INSERT INTO kiswahili_words VALUES (102, 4, 'h', 2, 'كَوَا', 'kawā', 'wakawaa', 'wakawā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (103, 4, 'h', 3, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', '');
INSERT INTO kiswahili_words VALUES (104, 4, 'h', 4, 'نْيوتَ', 'nı̄ūṯa', 'nyota', 'nı̄ūṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (124, 5, 'g', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (105, 5, 'a', 1, 'اِنْكِشَافِ', 'inkishāfi', 'Inkishafi', 'inkishāfi', '', 'The \FN{Inkishafi}, according to W.E. Taylor \parencite[pp96-105]{Stigand1915}, is ``a great, if not the greatest, religious classic of [the Swahili-speaking peoples]''''. The poem, concerned with the decay of Pate (formerly a flourishing town in northern Swahililand), may remind some readers of Thomas Gray''s \Eit{Elegy written in an English churchyard} (London 1751).', '', 'Look at Inkishafi.');
INSERT INTO kiswahili_words VALUES (106, 5, 'a', 2, 'نْڠَلِيَ', 'ngaliya', 'angalia', 'ngaliya', '', '', '', '');
INSERT INTO kiswahili_words VALUES (107, 5, 'b', 1, 'أُكِسٗوْمٖ', 'ukisōme', 'ukisome', 'ukisōme', '', '', '', 'Read it attentively');
INSERT INTO kiswahili_words VALUES (108, 5, 'b', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (109, 5, 'b', 3, 'كِدَنِ', 'kiḏani', 'kidani', 'kiḏani', '', '', '', '');
INSERT INTO kiswahili_words VALUES (140, 6, 'e', 1, 'نْنَابَهَانِ', 'nnābahāni', 'Nabahani', 'nnābahāni', '', 'In an unpublished commendation from 12 June 1974 J.W.T. Allen writes about Ahmad Sheikh Nabhany: ``I am privileged to have a wide circle of friends and acquaintances among Swahili scholars of Swahili. I have some knowledge of their rating of themselves and I can name perhaps half a dozen (still living) who are always referred to as the most learned. To me they are walking dictionaries and mines of information and Ahmed is unquestionably one of them. He comes of a family of scholars whose discipline is as tough as any degree course in the world. They have no time for false scholarship or dilettantism. That this profound learning is almost wholly disregarded by those who have been highly educated in the western tradition affects almost everything written today in or about Swahili. When I want to know some word or something about Swahili, I do not go to professors, but to one of the \textit{bingwa} known to me. One of these could give a much greater detail of assessment, but of course his opinion would not carry the weight of one who can put some totally irrelevant letters after his name''''. For a biography see \textcite{Said2012}.', '', 'al-Nabhany reproves,');
INSERT INTO kiswahili_words VALUES (125, 5, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'They were my children who have passed on. ');
INSERT INTO kiswahili_words VALUES (110, 5, 'c', 1, 'نْدِپُوْ', 'nḏipuu', 'ndipo', 'nḏipuu', '', '', '', 'and then you will understand,');
INSERT INTO kiswahili_words VALUES (111, 5, 'c', 2, 'تَاكَاپُوْ', 'ṯākāpuu', 'takapo', 'ṯākāpuu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (112, 5, 'c', 3, 'كْوٖلٖيَ', 'kweleya', 'kwelea', 'kweleya', '', '', '', '');
INSERT INTO kiswahili_words VALUES (126, 5, 'h', 2, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (127, 5, 'h', 3, 'وَالُوْپِتَ', 'wālūpiṯa', 'walopita', 'wālūpiṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (113, 5, 'd', 1, 'نِ', 'ni', '~', '~', '', '', '', 'my dear friend, ');
INSERT INTO kiswahili_words VALUES (114, 5, 'd', 2, 'كْوَامْبِيَاءٗ', 'kwāmbiyao', 'nikwambiyao', 'nikwāmbiyao', '', '', '', '');
INSERT INTO kiswahili_words VALUES (115, 5, 'd', 3, 'مْوٖنْدانِ', 'mwenḏāni', 'mwendani', 'mwenḏāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (116, 5, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'what I am telling you.');
INSERT INTO kiswahili_words VALUES (117, 5, 'e', 2, 'تُوْنْڠٗ', 'ṯūngo', 't''ungo', 'ṯūngo', '', '', '', '');
INSERT INTO kiswahili_words VALUES (118, 5, 'e', 3, 'زِمٖسَلِيَ', 'zimesaliya', 'zimesalia', 'zimesaliya', '', '', '', '');
INSERT INTO kiswahili_words VALUES (141, 6, 'e', 2, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (149, 7, 'a', 1, 'بَادٗ', 'bāḏo', 'bado', 'bāḏo', '', '', '', 'I am still able to give birth.');
INSERT INTO kiswahili_words VALUES (128, 6, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And the Bard of Mambasa,');
INSERT INTO kiswahili_words VALUES (129, 6, 'a', 2, 'مَالٖنْڠَ', 'mālenga', 'Malenga', 'mālenga', '', 'The Bard of Mambasa refers to Ustadh Ahmad Nassir Juma Bhalo, see \textcite{Chiraghdin1971}.', '', '');
INSERT INTO kiswahili_words VALUES (130, 6, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (131, 6, 'a', 4, 'مْڤِتَ', 'mviṯa', 'Mvita', 'mviṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (150, 7, 'a', 2, 'كُزَا', 'kuzā', 'kuzaa', 'kuzā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (142, 6, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but to what effect?');
INSERT INTO kiswahili_words VALUES (143, 6, 'f', 2, 'هُفَلِييانِ', 'hufalı̄yāni', 'hufaliyani', 'hufalı̄yāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (132, 6, 'b', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and Chiraghdin too,');
INSERT INTO kiswahili_words VALUES (133, 6, 'b', 2, 'پِيَ', 'piya', 'pia', 'piya', '', '', '', '');
INSERT INTO kiswahili_words VALUES (134, 6, 'b', 3, 'ػِرَاڠُ', 'kʲirāgu', '~', '~', '', '', '', '');
INSERT INTO kiswahili_words VALUES (135, 6, 'b', 4, 'دِنِ', 'ḏini', 'Chiraghudini', 'kʲirāguḏini', '', 'Shihabdin Chiraghdin (1934-1976). See the biography by his daughter -- \textcite{Chiraghdin2012}.', '', '');
INSERT INTO kiswahili_words VALUES (136, 6, 'c', 1, 'نْيايُو', 'nyāyuu', 'nyayo', 'nyāyuu', '', '', '', 'they followed in my footsteps,');
INSERT INTO kiswahili_words VALUES (137, 6, 'c', 2, 'ولِزِفُوَتَ', 'ūlizifuwaṯa', 'walizifuata', 'ūlizifuwaṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (151, 7, 'a', 3, 'نَ', 'na', '~', '~', '', '', '', '');
INSERT INTO kiswahili_words VALUES (152, 7, 'a', 4, 'وٖزَ', 'weza', 'naweza', 'naweza', '', '', '', '');
INSERT INTO kiswahili_words VALUES (144, 6, 'g', 1, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', 'He remains alone in the field,');
INSERT INTO kiswahili_words VALUES (145, 6, 'g', 2, 'پْوٖكٖ', 'pweke', 'pweke', 'pweke', '', '', '', '');
INSERT INTO kiswahili_words VALUES (146, 6, 'g', 3, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (367, 16, 'g', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (159, 7, 'e', 1, 'وَنْڠِنٖ', 'wangine', 'wangine', 'wangine', '', '', '', 'now others have come forward');
INSERT INTO kiswahili_words VALUES (147, 6, 'h', 1, 'اِنْڠَا', 'ingā', 'ingawa', 'ingā', '', '', '', 'yet he stays strong.');
INSERT INTO kiswahili_words VALUES (148, 6, 'h', 2, 'اَمٖئِكِتَ', 'ameikiṯa', 'ameikita', 'ameikiṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (160, 7, 'e', 2, 'مٖئِتُوكٖزَ', 'meiṯūkeza', 'meitokeza', 'meiṯūkeza', '', '', '', '');
INSERT INTO kiswahili_words VALUES (153, 7, 'b', 1, 'سِيَاكُوْمَ', 'siyākūma', 'siyakoma', 'siyākūma', '', '', '', 'I have not yet reached the limit,');
INSERT INTO kiswahili_words VALUES (154, 7, 'b', 2, 'اُكِنڠُوْنِ', 'ukingūni', 'ukingoni', 'ukingūni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (157, 7, 'd', 1, 'مُمٖئِتٗوَ', 'mumeiṯowa', 'mumeitowa', 'mumeiṯowa', '', '', '', 'You have left me high and dry,');
INSERT INTO kiswahili_words VALUES (158, 7, 'd', 2, 'فُوٗنِ', 'fuwoni', 'fuoni', 'fuwoni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (162, 7, 'f', 2, 'كَانُوْنِ', 'kānūni', 'kanuni', 'kānūni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (163, 7, 'g', 1, 'مُسَمِيَاتِ', 'musamiyāṯi', 'musamiati', 'musamiyāṯi', '', '', '', 'compiling standardized dictionaries.');
INSERT INTO kiswahili_words VALUES (161, 7, 'f', 1, 'كُنِپانْڠِيَ', 'kunipāngiya', 'kunipangia', 'kunipāngiya', '', '', '', 'to regulate me,');
INSERT INTO kiswahili_words VALUES (166, 7, 'h', 2, 'مُلِپُوْنِوَتَ', 'mulipūniwaṯa', 'muliponiwata', 'mulipūniwaṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (168, 8, 'a', 2, 'كِسِكِتِكَ', 'kisikiṯika', 'kisikitika', 'kisikiṯika', '', '', '', '');
INSERT INTO kiswahili_words VALUES (164, 7, 'g', 2, 'كُبُوْنِ', 'kubūni', 'kubuni', 'kubūni', '', 'For almost a century the principal publisher of standardized Swahili dictionaries has been the Oxford University Press (OUP). Clearly OUP has to be profitable, and profitable is what, over the years, their dictionaries of standardized Swahili have been. However, if one considers excellence in research and scholarship not one of the OUP’s standardized Swahili lexicons can begin to compare with the Oxford English Dictionary (`more than 600,000 words over a thousand years''). Fortunately for Swahili and for Swahili studies there exists the monumental \Eit{Dictionnaire swahili-français}, compiled by Charles Sacleux \parencite{Sacleux1939}. Sacleux’s chef d’oeuvre (`unprecedented in historical depth, dialectological detail and philological knowledge'') can now be accessed electronically, courtesy of \Eit{Swahili Forum} (\url{uni-leipzig.de/~afrika/swafo/index.php/sacleux}). Heartfelt thanks are due to Thilo Schadeberg and Ridder Samsom.', '', '');
INSERT INTO kiswahili_words VALUES (165, 7, 'h', 1, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (170, 8, 'b', 2, 'جَرِدَنِ', 'jariḏani', 'jaridani', 'jariḏani', '', '', '', '');
INSERT INTO kiswahili_words VALUES (167, 8, 'a', 1, 'هُلِيَ', 'huliya', 'hulia', 'huliya', '', '', '', 'I weep and lament');
INSERT INTO kiswahili_words VALUES (172, 8, 'c', 2, 'وَنَاءُ', 'wanau', '~', '~', '', '', '', '');
INSERT INTO kiswahili_words VALUES (169, 8, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the learned journals,');
INSERT INTO kiswahili_words VALUES (173, 8, 'c', 3, 'اَنْدِكَ', 'anḏika', 'wanaoandika', 'wanauanḏika', '', '', '', '');
INSERT INTO kiswahili_words VALUES (171, 8, 'c', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'for many of those who contribute ');
INSERT INTO kiswahili_words VALUES (232, 10, 'g', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My children, you have missed your opportunity.');
INSERT INTO kiswahili_words VALUES (220, 10, 'c', 1, 'هُوٗنَ', 'huwona', 'huona', 'huwona', '', '', '', 'I feel exceedingly bitter');
INSERT INTO kiswahili_words VALUES (174, 8, 'd', 1, 'سِوَنَانْڠُ', 'siwanāngu', 'si wanangu', 'si wanāngu', '', '', '', 'are not my children, they are strangers [to me].');
INSERT INTO kiswahili_words VALUES (175, 8, 'd', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (176, 8, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (204, 9, 'e', 2, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', '');
INSERT INTO kiswahili_words VALUES (177, 8, 'e', 1, 'اِذَاعَانِ', 'idhā''āni', 'idhaani', 'idhā''āni', '', '', '', 'It is much the same with the media. ');
INSERT INTO kiswahili_words VALUES (178, 8, 'e', 2, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO kiswahili_words VALUES (205, 9, 'e', 3, 'كَتِبُ', 'kaṯibu', 'katibu', 'kaṯibu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (221, 10, 'c', 2, 'اُتُنْڠُ', 'uṯungu', 'utungu', 'uṯungu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (179, 8, 'f', 1, 'وَپٖكَ', 'wapeka', 'wapeka', 'wapeka', '', '', '', 'Who are the ones who send in their compositions? ');
INSERT INTO kiswahili_words VALUES (180, 8, 'f', 2, 'تُنْڠٗ', 'ṯungo', 't''ungo', 'ṯungo', '', '', '', '');
INSERT INTO kiswahili_words VALUES (181, 8, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (182, 8, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (222, 10, 'c', 3, 'مْنُو', 'mnuu', 'mno', 'mnuu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (206, 9, 'f', 1, 'اَشِشِيٖؤٗ', 'ashishiyeo', 'ashishiyeo', 'ashishiyeo', '', '', '', 'he is the helmsman. ');
INSERT INTO kiswahili_words VALUES (207, 9, 'f', 2, 'سُكَانِ', 'sukāni', 'sukani', 'sukāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (183, 8, 'g', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'Many do not come from the coast,');
INSERT INTO kiswahili_words VALUES (184, 8, 'g', 2, 'هَاوَتُوْك', 'hāwaṯūk', 'hawatoki', 'hāwaṯūk', '', '', '', '');
INSERT INTO kiswahili_words VALUES (185, 8, 'g', 3, 'پْوان', 'pwān', 'p''wani', 'pwān', '', '', '', '');
INSERT INTO kiswahili_words VALUES (186, 8, 'h', 1, 'لِػَ', 'likʲa', 'licha', 'likʲa', '', '', '', 'although they may have a Mambasa address.');
INSERT INTO kiswahili_words VALUES (187, 8, 'h', 2, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (188, 8, 'h', 3, 'مْبوا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (189, 8, 'h', 4, 'مْڤِتَ', 'mviṯa', 'Mvita', 'mviṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (190, 9, 'a', 1, 'اَنڠَلِيَ', 'angaliya', 'angalia', 'angaliya', '', '', '', 'Look at the textbooks');
INSERT INTO kiswahili_words VALUES (191, 9, 'a', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (192, 9, 'a', 3, 'زِتَابُ', 'ziṯābu', 'zitabu', 'ziṯābu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (233, 10, 'g', 2, 'مُمٖئِخِنِ', 'mumeikhini', 'mumeihini', 'mumeikhini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (208, 9, 'g', 1, 'ػَارٗ', 'kʲāro', 'Charo', 'kʲāro', '', '\Eit{charo}: a name representing those who have their origins in the coastal hinterland (the \Eit{nyika}).', '', 'Charo and his colleagues');
INSERT INTO kiswahili_words VALUES (193, 9, 'b', 1, 'زِسُوْمٖشْوَاءٗ', 'zisūmeshwao', 'zisumeshwao', 'zisūmeshwao', '', '', '', 'which are studied at our schools.');
INSERT INTO kiswahili_words VALUES (194, 9, 'b', 2, 'شُلٖنِ', 'shuleni', 'shuleni', 'shuleni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (209, 9, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (210, 9, 'g', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO kiswahili_words VALUES (211, 9, 'g', 4, 'وٖنْدانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (195, 9, 'c', 1, 'هَازَانْدِكْوِ', 'hāzānḏikwi', 'hazandikwi', 'hāzānḏikwi', '', '', '', 'They are written neither by Rajabu,');
INSERT INTO kiswahili_words VALUES (196, 9, 'c', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (197, 9, 'c', 3, 'رَجَبُ', 'rajabu', 'Rajabu', 'rajabu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (198, 9, 'd', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'nor by Sudi nor by Shani.');
INSERT INTO kiswahili_words VALUES (199, 9, 'd', 2, 'سُوْدِ', 'sūḏi', 'Sudi', 'sūḏi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (200, 9, 'd', 3, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', '');
INSERT INTO kiswahili_words VALUES (201, 9, 'd', 4, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO kiswahili_words VALUES (202, 9, 'd', 5, 'شَانِ', 'shāni', 'Shani', 'shāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (223, 10, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that I do not see you all there.');
INSERT INTO kiswahili_words VALUES (212, 9, 'h', 1, 'نَاءٗ', 'nao', 'nao', 'nao', '', '', '', 'follow. ');
INSERT INTO kiswahili_words VALUES (213, 9, 'h', 2, 'نْيُوْمَ', 'nyūma', 'nyuma', 'nyūma', '', '', '', '');
INSERT INTO kiswahili_words VALUES (214, 9, 'h', 3, 'هُفُوَتَ', 'hufuwaṯa', 'hufuata', 'hufuwaṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (224, 10, 'd', 2, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (225, 10, 'd', 3, 'سِوَأٗنِ', 'siwaoni', 'siwaoni', 'siwaoni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (215, 10, 'a', 1, 'هُوَلِكْوَا', 'huwalikwā', 'hualikwa', 'huwalikwā', '', '', '', 'When I am invited to conferences,');
INSERT INTO kiswahili_words VALUES (216, 10, 'a', 2, 'كُوْنْڠَمَانٗ', 'kūngamāno', 'kongamano', 'kūngamāno', '', '', '', '');
INSERT INTO kiswahili_words VALUES (217, 10, 'b', 1, 'ػٖنْدَ', 'kʲenḏa', 'chenda', 'kʲenḏa', '', '', '', 'I turn back before I arrive.');
INSERT INTO kiswahili_words VALUES (218, 10, 'b', 2, 'هُرُدِ', 'huruḏi', 'hurudi', 'huruḏi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (219, 10, 'b', 3, 'نْدِيَانِ', 'nḏiyāni', 'ndiani', 'nḏiyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (240, 11, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the results of the school exams.');
INSERT INTO kiswahili_words VALUES (234, 10, 'h', 1, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', 'You have abandoned your own mother. ');
INSERT INTO kiswahili_words VALUES (235, 10, 'h', 2, 'مُمٖنِوَتَ', 'mumeniwaṯa', 'mumeniwata', 'mumeniwaṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (226, 10, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'I bite my fingers in frustration,');
INSERT INTO kiswahili_words VALUES (227, 10, 'e', 2, 'هُزِاُمَ', 'huziuma', 'huziuma', 'huziuma', '', '', '', '');
INSERT INTO kiswahili_words VALUES (228, 10, 'e', 3, 'زِتَانِ', 'ziṯāni', 'zitano', 'ziṯāni', '', 'These words echo the words of the \FN{Inkishafi}: ``\Eit{wakauma zanda na kuiyuta}''''. Readers unfamiliar with this Swahili gesture of regret could consult \textcite{Eastman1985}.', '', '');
INSERT INTO kiswahili_words VALUES (229, 10, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but what can I do?');
INSERT INTO kiswahili_words VALUES (230, 10, 'f', 2, 'نِتٖنْدٖ', 'niṯenḏe', 'nitende', 'niṯenḏe', '', '', '', '');
INSERT INTO kiswahili_words VALUES (231, 10, 'f', 3, 'نْنِ', 'nni', 'nini', 'nni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (241, 11, 'b', 2, 'مِتِحَانِ', 'miṯiḥāni', 'mitihani', 'miṯiḥāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (236, 11, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And I shed tears');
INSERT INTO kiswahili_words VALUES (237, 11, 'a', 2, 'هُلِيَ', 'huliya', 'hulia', 'huliya', '', '', '', '');
INSERT INTO kiswahili_words VALUES (238, 11, 'a', 3, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (239, 11, 'a', 4, 'مَاتُوْزِ', 'māṯūzi', 'matozi', 'māṯūzi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (246, 11, 'd', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (242, 11, 'c', 1, 'وَنَفُنْدِ', 'wanafunḏi', 'wanafundi', 'wanafunḏi', '', '', '', 'Students from Kibwezi, ');
INSERT INTO kiswahili_words VALUES (243, 11, 'c', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (247, 11, 'd', 3, 'كِسُومُ', 'kisūmu', 'Kisumu', 'kisūmu', '', 'Kibwezi and Kisumu are places in the East African interior.', '', '');
INSERT INTO kiswahili_words VALUES (250, 11, 'e', 2, 'وَنَاءٗ', 'wanao', 'wanao', 'wanao', '', '', '', '');
INSERT INTO kiswahili_words VALUES (253, 11, 'f', 2, 'كِلٖلٖنِ', 'kileleni', 'kileleni', 'kileleni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (255, 11, 'g', 2, 'كْوٖتُ', 'kweṯu', 'kwetu', 'kweṯu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (245, 11, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and from Kisumu by the lake,');
INSERT INTO kiswahili_words VALUES (248, 11, 'd', 4, 'زِوَنِ', 'ziwani', 'ziwani', 'ziwani', '', 'The lake is Lake Nyanza, also known as Lake Victoria.', '', '');
INSERT INTO kiswahili_words VALUES (249, 11, 'e', 1, 'نْدِوٗ', 'nḏiwo', 'ndiwo', 'nḏiwo', '', '', '', 'they are the ones who are ahead,');
INSERT INTO kiswahili_words VALUES (251, 11, 'e', 3, 'بَارِزِ', 'bārizi', 'barizi', 'bārizi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (252, 11, 'f', 1, 'وَلِيُوكُوْ', 'waliyūkuu', 'waliyukuu', 'waliyūkuu', '', '', '', 'who are at the top;');
INSERT INTO kiswahili_words VALUES (256, 11, 'g', 3, 'پْوانِ', 'pwāni', 'p''wani', 'pwāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (258, 11, 'h', 2, 'تِنِ', 'ṯini', 't''ini', 'ṯini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (254, 11, 'g', 1, 'مُلُوْتُوْكَ', 'mulūṯūka', 'mulotoka', 'mulūṯūka', '', '', '', 'and you, students from the coast,');
INSERT INTO kiswahili_words VALUES (259, 11, 'h', 3, 'هُكُوْكُوْتَ', 'hukūkūṯa', 'hukokota', 'hukūkūṯa', '', 'Over the years young people on Lamu Island (and indeed elsewhere in northern Swahililand) have received a raw deal in their primary and secondary education. They have `lagged far behind'' their counterparts from the interior, and so Mother Swahili grieves for her marginalised children.', '', '');
INSERT INTO kiswahili_words VALUES (257, 11, 'h', 1, 'مُكُوْ', 'mukuu', 'muko', 'mukuu', '', '', '', 'you lag far behind.');
INSERT INTO kiswahili_words VALUES (288, 13, 'c', 3, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO kiswahili_words VALUES (260, 12, 'a', 1, 'وَفَانْيَاءٗ', 'wafānyao', 'wafanyao', 'wafānyao', '', '', '', 'Amongst those who are researching');
INSERT INTO kiswahili_words VALUES (261, 12, 'a', 2, 'اُتَفِتِ', 'uṯafiṯi', 'utafiti', 'uṯafiṯi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (262, 12, 'b', 1, 'وَ', 'wa', 'wa', 'wa', '', '', '', 'for degrees at the universities,');
INSERT INTO kiswahili_words VALUES (263, 12, 'b', 2, 'أُزَمِلِ', 'uzamili', 'uzamili', 'uzamili', '', '', '', '');
INSERT INTO kiswahili_words VALUES (264, 12, 'b', 3, 'ػُوٗنِ', 'kʲuwoni', 'chuwoni', 'kʲuwoni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (306, 14, 'a', 3, 'تَارُدِ', 'ṯāruḏi', 'tarudi', 'ṯāruḏi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (265, 12, 'c', 1, 'وَسْوَاهِلِ', 'waswāhili', 'Waswahili', 'waswāhili', '', '', '', 'Swahili students are few');
INSERT INTO kiswahili_words VALUES (266, 12, 'c', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (267, 12, 'c', 3, 'كَاتِتِ', 'kāṯiṯi', 'katiti', 'kāṯiṯi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (289, 13, 'd', 1, 'نَحَؤُ', 'naḥau', 'nahau', 'naḥau', '', '', '', 'while grammatical [Swahili] is what I desire!');
INSERT INTO kiswahili_words VALUES (268, 12, 'd', 1, 'اَوْ', 'aw', 'au', 'aw', '', '', '', ' or non-existent.');
INSERT INTO kiswahili_words VALUES (269, 12, 'd', 2, 'هَوَپَاتِكَانِ', 'hawapāṯikāni', 'hawapatikani', 'hawapāṯikāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (291, 13, 'd', 3, 'ئِتَمَانِ', 'iṯamāni', 'naitamani', 'naiṯamāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (270, 12, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'Who is to be blamed?');
INSERT INTO kiswahili_words VALUES (271, 12, 'e', 2, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (272, 12, 'e', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (273, 12, 'e', 4, 'مْلَئِتِ', 'mlaiṯi', 'mlaiti', 'mlaiṯi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (324, 14, 'h', 3, 'كُوَپَاتَ', 'kuwapāṯa', 'kuwapata', 'kuwapāṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (274, 12, 'f', 1, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', 'Whose fault is it?');
INSERT INTO kiswahili_words VALUES (275, 12, 'f', 2, 'مَاكُوْسَ', 'mākūsa', 'makosa', 'mākūsa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (276, 12, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (277, 12, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (317, 14, 'f', 1, 'وَنِيُوَاءٗ', 'waniyuwao', 'waniyuwao', 'waniyuwao', '', '', '', 'who know me well,');
INSERT INTO kiswahili_words VALUES (292, 13, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'Even [their speech] is wanting in flavour,');
INSERT INTO kiswahili_words VALUES (278, 12, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'You esteem me not at all,');
INSERT INTO kiswahili_words VALUES (279, 12, 'g', 2, 'هَامُنِثَمِنِ', 'hāmunithamini', 'hamunithamini', 'hāmunithamini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (293, 13, 'e', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (294, 13, 'e', 3, 'لَذَ', 'ladha', 'ladha', 'ladha', '', '', '', '');
INSERT INTO kiswahili_words VALUES (280, 12, 'h', 1, 'مْڠِنٖ', 'mgine', 'mngine', 'mgine', '', '', '', 'yet you have not replaced me by another.');
INSERT INTO kiswahili_words VALUES (281, 12, 'h', 2, 'هَامُكُپَاتَ', 'hāmukupāṯa', 'hamukupata', 'hāmukupāṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (295, 13, 'e', 4, 'هَيَانَ', 'hayāna', 'hayana', 'hayāna', '', '', '', '');
INSERT INTO kiswahili_words VALUES (282, 13, 'a', 1, 'كِوَسِكِيَ', 'kiwasikiya', 'kiwasikiya', 'kiwasikiya', '', '', '', 'When I hear those who are not mother-tongue speakers speaking,');
INSERT INTO kiswahili_words VALUES (283, 13, 'a', 2, 'هُنِيْنَ', 'hunı̄na', 'hunena', 'hunı̄na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (284, 13, 'b', 1, 'هُنِأٗنْڠُوْنْڠَ', 'huniongūnga', 'huniungonga', 'huniongūnga', '', '', '', 'I feel sick at heart.');
INSERT INTO kiswahili_words VALUES (285, 13, 'b', 2, 'مُويُوْنِ', 'mūyūni', 'moyoni', 'mūyūni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (307, 14, 'b', 1, 'اَيْ', 'ay', 'ae', 'ay', '', '', '', 'were he to come back to the world,');
INSERT INTO kiswahili_words VALUES (308, 14, 'b', 2, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO kiswahili_words VALUES (309, 14, 'b', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniani', 'ḏuniyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (286, 13, 'c', 1, 'صَرْفَ', 'ṣarfa', 'sarufi', 'ṣarfa', '', '', '', 'Inflection is no longer employed,');
INSERT INTO kiswahili_words VALUES (296, 13, 'f', 1, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', 'like a plug of tobacco in one’s mouth.');
INSERT INTO kiswahili_words VALUES (297, 13, 'f', 2, 'مَشَاپُوْ', 'mashāpuu', 'mashapu', 'mashāpuu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (298, 13, 'f', 3, 'كَانْوَانِ', 'kānwāni', 'kanwani', 'kānwāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (318, 14, 'f', 2, 'يَقِيْنِ', 'yaqı̄ni', 'yakini', 'yaqı̄ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (299, 13, 'g', 1, 'سِئٖلٖوِ', 'sielewi', 'sielewi', 'sielewi', '', '', '', 'I do not understand what they are saying.');
INSERT INTO kiswahili_words VALUES (300, 13, 'g', 2, 'هُنٖنَانِ', 'hunenāni', 'hunenani', 'hunenāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (310, 14, 'c', 1, 'موَانَانْڠُ', 'mwānāngu', 'mwanangu', 'mwānāngu', '', '', '', 'it would be necessary, my child,');
INSERT INTO kiswahili_words VALUES (311, 14, 'c', 2, 'اِتَمْبِدِ', 'iṯambiḏi', 'itambidi', 'iṯambiḏi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (301, 13, 'h', 1, 'هُئِمْبَ', 'huimba', 'huimba', 'huimba', '', '', '', 'Are they singing? Are they complaining? ');
INSERT INTO kiswahili_words VALUES (302, 13, 'h', 2, 'اَوْ', 'aw', 'au', 'aw', '', '', '', '');
INSERT INTO kiswahili_words VALUES (303, 13, 'h', 3, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (304, 14, 'a', 1, 'لَوْ', 'law', 'lau', 'law', '', '', '', 'Were Bwana Muyaka to return,');
INSERT INTO kiswahili_words VALUES (305, 14, 'a', 2, 'مُيَاكَ', 'muyāka', 'Muyaka', 'muyāka', '', '', '', '');
INSERT INTO kiswahili_words VALUES (312, 14, 'd', 1, 'كْوٖنٖنْدَ', 'kwenenḏa', 'kwenenda', 'kwenenḏa', '', '', '', 'for him to go to a court of law,');
INSERT INTO kiswahili_words VALUES (313, 14, 'd', 2, 'مَحَكَمَانِ', 'maḥakamāni', 'mahakamani', 'maḥakamāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (334, 15, 'd', 2, 'هَمُنِثَمِنِ', 'hamunithamini', 'hamunithamini', 'hamunithamini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (319, 14, 'g', 1, 'نْيُوْتٖ', 'nyūṯe', 'nyote', 'nyūṯe', '', '', '', 'and all of you would go to prison');
INSERT INTO kiswahili_words VALUES (314, 14, 'e', 1, 'اَئٖتٖ', 'aeṯe', 'aete', 'aeṯe', '', '', '', 'and he would need to call witnesses');
INSERT INTO kiswahili_words VALUES (315, 14, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (316, 14, 'e', 3, 'مَشَهِدِ', 'mashahiḏi', 'mashahidi', 'mashahiḏi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (320, 14, 'g', 2, 'مْوٖنْدٖ', 'mwenḏe', 'mwende', 'mwenḏe', '', '', '', '');
INSERT INTO kiswahili_words VALUES (321, 14, 'g', 3, 'ڠٖرٖزَنِ', 'gerezani', 'gerezani', 'gerezani', '', '', '', '');
INSERT INTO kiswahili_words VALUES (331, 15, 'c', 1, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', 'It irritates you not at all');
INSERT INTO kiswahili_words VALUES (328, 15, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor self-confidence.');
INSERT INTO kiswahili_words VALUES (329, 15, 'b', 2, 'هَامُوْنَ', 'hāmūna', 'hamuna', 'hāmūna', '', '', '', '');
INSERT INTO kiswahili_words VALUES (322, 14, 'h', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'for the offence which you have committed against me. ');
INSERT INTO kiswahili_words VALUES (323, 14, 'h', 2, 'حَتِيَ', 'ḥaṯiya', 'hatia', 'ḥaṯiya', '', '', '', '');
INSERT INTO kiswahili_words VALUES (325, 15, 'a', 1, 'وَاللّٰهِ', 'wallähi', 'wallahi', 'wallähi', '', '', '', 'Truly you have neither zeal');
INSERT INTO kiswahili_words VALUES (326, 15, 'a', 2, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', '');
INSERT INTO kiswahili_words VALUES (327, 15, 'a', 3, 'غٖيْرَ', 'ḡēra', 'ghera', 'ḡēra', '', '', '', '');
INSERT INTO kiswahili_words VALUES (332, 15, 'c', 2, 'لَكُوَكٖرَ', 'lakuwakera', 'la kuwakera', 'la kuwakera', '', '', '', '');
INSERT INTO kiswahili_words VALUES (330, 15, 'b', 3, 'اِمَانِ', 'imāni', 'imani', 'imāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (336, 15, 'e', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (333, 15, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that you do not esteem me.');
INSERT INTO kiswahili_words VALUES (337, 15, 'e', 3, 'كَامَ', 'kāma', 'kama', 'kāma', '', '', '', '');
INSERT INTO kiswahili_words VALUES (338, 15, 'e', 4, 'مْپِوِرِ', 'mpiwiri', 'mpwira', 'mpiwiri', '', '', '', '');
INSERT INTO kiswahili_words VALUES (340, 15, 'f', 2, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (335, 15, 'e', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am just like a ball');
INSERT INTO kiswahili_words VALUES (342, 15, 'g', 2, 'تٖكٖنْدِيَانَ', 'ṯekenḏiyāna', 'teke ndiani', 'ṯeke nḏiyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (339, 15, 'f', 1, 'هُتٖزٖوَ', 'huṯezewa', 'hutezewa', 'huṯezewa', '', '', '', 'in the play-ground,');
INSERT INTO kiswahili_words VALUES (341, 15, 'g', 1, 'هِپِجْوَا', 'hipijwā', 'hipijwa', 'hipijwā', '', '', '', 'I am given a kick');
INSERT INTO kiswahili_words VALUES (343, 15, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'by anyone who passes by in the street.');
INSERT INTO kiswahili_words VALUES (344, 15, 'h', 2, 'كُلَ', 'kula', 'kula', 'kula', '', '', '', '');
INSERT INTO kiswahili_words VALUES (345, 15, 'h', 3, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', '');
INSERT INTO kiswahili_words VALUES (346, 15, 'h', 4, 'كُپِتَ', 'kupiṯa', 'kupita', 'kupiṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (420, 18, 'g', 3, 'كْوَاءٗ', 'kwao', 'kwao', 'kwao', '', '', '', '');
INSERT INTO kiswahili_words VALUES (392, 17, 'f', 1, 'اَلُوْنَانْدِكَ', 'alūnānḏika', 'alonandika', 'alūnānḏika', '', '', '', 'And who are they who wrote me down?');
INSERT INTO kiswahili_words VALUES (347, 16, 'a', 1, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', 'Even in the field of Swahili prosody,');
INSERT INTO kiswahili_words VALUES (348, 16, 'a', 2, 'كْوٖنْيٖ', 'kwenye', 'kwenye', 'kwenye', '', '', '', '');
INSERT INTO kiswahili_words VALUES (349, 16, 'a', 3, 'اُشَعِرِ', 'usha''iri', 'ushairi', 'usha''iri', '', '', '', '');
INSERT INTO kiswahili_words VALUES (393, 17, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (375, 17, 'a', 1, 'هَمْبِوَ', 'hambiwa', 'hambiwa', 'hambiwa', '', '', '', 'I am told that I belong to nobody in particular.');
INSERT INTO kiswahili_words VALUES (376, 17, 'a', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO kiswahili_words VALUES (350, 16, 'b', 1, 'وَاسُوْ', 'wāsuu', 'waso', 'wāsuu', '', '', '', 'those who are not mine have invented');
INSERT INTO kiswahili_words VALUES (351, 16, 'b', 2, 'وَنْڠُ', 'wangu', 'wangu', 'wangu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (352, 16, 'b', 3, 'وَمٖبُوْنِ', 'wamebūni', 'wamebuni', 'wamebūni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (377, 17, 'a', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_words VALUES (353, 16, 'c', 1, 'زِلِزٗ', 'zilizo', 'zilizo', 'zilizo', '', '', '', 'free verse,');
INSERT INTO kiswahili_words VALUES (354, 16, 'c', 2, 'حُرُ', 'ḥuru', 'huru', 'ḥuru', '', '', '', '');
INSERT INTO kiswahili_words VALUES (355, 16, 'c', 3, 'بَحَارِ', 'baḥāri', 'bahari', 'baḥāri', '', '', '', '');
INSERT INTO kiswahili_words VALUES (394, 17, 'f', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (356, 16, 'd', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'imitating foreigners.');
INSERT INTO kiswahili_words VALUES (357, 16, 'd', 2, 'كُوٗلٖزَ', 'kuwoleza', 'kuoleza', 'kuwoleza', '', '', '', '');
INSERT INTO kiswahili_words VALUES (358, 16, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (359, 16, 'e', 1, 'ممِ', 'mmi', 'mimi', 'mmi', '', '', '', 'For myself, I cannot accept that.');
INSERT INTO kiswahili_words VALUES (360, 16, 'e', 2, 'هَايُو', 'hāyuu', 'hayo', 'hāyuu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (361, 16, 'e', 3, 'سِيَاكِرِ', 'siyākiri', 'siyakiri', 'siyākiri', '', '', '', '');
INSERT INTO kiswahili_words VALUES (378, 17, 'b', 1, 'هِنِ', 'hini', 'hini', 'hini', '', '', '', 'How extraordinary!');
INSERT INTO kiswahili_words VALUES (379, 17, 'b', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (380, 17, 'b', 3, 'عَجَابُ', '''ajābu', 'ajabu', '''ajābu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (362, 16, 'f', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'That is not Swahili poetry.');
INSERT INTO kiswahili_words VALUES (363, 16, 'f', 2, 'مَاشَعِرِ', 'māsha''iri', 'mashairi', 'māsha''iri', '', '', '', '');
INSERT INTO kiswahili_words VALUES (364, 16, 'f', 3, 'كِفَنِ', 'kifani', 'kifani', 'kifani', '', '', '', '');
INSERT INTO kiswahili_words VALUES (381, 17, 'b', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (404, 18, 'b', 1, 'سِدَلِلِ', 'siḏalili', 'si dalili', 'si ḏalili', '', '', '', 'is not of itself proof of origins,');
INSERT INTO kiswahili_words VALUES (365, 16, 'g', 1, 'هَاىُوْ', 'hāyuu', 'hayo', 'hāyuu', '', '', '', 'What is the point of it all?');
INSERT INTO kiswahili_words VALUES (366, 16, 'g', 2, 'ىُوْت', 'yūṯ', 'yote', 'yūṯ', '', '', '', '');
INSERT INTO kiswahili_words VALUES (368, 16, 'g', 4, 'كْوا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (369, 16, 'g', 5, 'نْن', 'nn', 'nini', 'nn', '', '', '', '');
INSERT INTO kiswahili_words VALUES (405, 18, 'b', 2, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (382, 17, 'c', 1, 'هُوَاءٖ', 'huwae', 'huwae', 'huwae', '', '', '', 'How can I be rootless below ground');
INSERT INTO kiswahili_words VALUES (383, 17, 'c', 2, 'كاكُوْسَ', 'kākūsa', 'kakosa', 'kākūsa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (395, 17, 'g', 1, 'كِوَ', 'kiwa', 'kiwa', 'kiwa', '', '', '', 'If I do not hail from Swahililand,');
INSERT INTO kiswahili_words VALUES (370, 16, 'h', 1, 'هزٗ', 'hzo', 'hizo', 'hzo', '', '', '', 'These are preparations for war.');
INSERT INTO kiswahili_words VALUES (371, 16, 'h', 2, 'ن', 'n', 'ni', 'n', '', '', '', '');
INSERT INTO kiswahili_words VALUES (372, 16, 'h', 3, 'مْبنُ', 'mbnu', 'mbinu', 'mbnu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (373, 16, 'h', 4, 'زَا', 'zā', 'za', 'zā', '', '', '', '');
INSERT INTO kiswahili_words VALUES (384, 17, 'c', 3, 'شِنَ', 'shina', 'shina', 'shina', '', '', '', '');
INSERT INTO kiswahili_words VALUES (396, 17, 'g', 2, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO kiswahili_words VALUES (397, 17, 'g', 3, 'اُسْوَاحِلِنِ', 'uswāḥilini', 'Uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO kiswahili_words VALUES (385, 17, 'd', 1, 'كَاوَ', 'kāwa', 'kawa', 'kāwa', '', '', '', 'and yet have branches above?');
INSERT INTO kiswahili_words VALUES (386, 17, 'd', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (387, 17, 'd', 3, 'تَانْدُ', 'ṯānḏu', 'tandu', 'ṯānḏu', '', '', '', '');
INSERT INTO kiswahili_words VALUES (388, 17, 'd', 4, 'يَانْڠَانِ', 'yāngāni', 'yangani', 'yāngāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (389, 17, 'e', 1, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', 'Who gave me my name?');
INSERT INTO kiswahili_words VALUES (390, 17, 'e', 2, 'اَلُوْنِپَ', 'alūnipa', 'alonipa', 'alūnipa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (391, 17, 'e', 3, 'ئِنَ', 'ina', 'ina', 'ina', '', '', '', '');
INSERT INTO kiswahili_words VALUES (415, 18, 'f', 1, 'پٖمْبٖ', 'pembe', 'pembe', 'pembe', '', '', '', 'in all corners of the world,');
INSERT INTO kiswahili_words VALUES (416, 18, 'f', 2, 'زٗتٖ', 'zoṯe', 'zote', 'zoṯe', '', '', '', '');
INSERT INTO kiswahili_words VALUES (417, 18, 'f', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniani', 'ḏuniyāni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (398, 17, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'then whence do I come? ');
INSERT INTO kiswahili_words VALUES (399, 17, 'h', 2, 'وَپِ', 'wapi', 'wapi', 'wapi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (400, 17, 'h', 3, 'نَالِپُوپَاتَ', 'nālipūpāṯa', 'nalipopata', 'nālipūpāṯa', '', '', '', '');
INSERT INTO kiswahili_words VALUES (406, 18, 'c', 1, 'يَاكُوَ', 'yākuwa', 'yakuwa', 'yākuwa', '', '', '', 'or that I have no owner.');
INSERT INTO kiswahili_words VALUES (407, 18, 'c', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO kiswahili_words VALUES (408, 18, 'c', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO kiswahili_words VALUES (401, 18, 'a', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'That many speak me, [Swahili],');
INSERT INTO kiswahili_words VALUES (402, 18, 'a', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (403, 18, 'a', 3, 'هُنِنٖنَ', 'huninena', 'huninena', 'huninena', '', '', '', '');
INSERT INTO kiswahili_words VALUES (411, 18, 'e', 1, 'هُنٖنوَا', 'hunenwā', 'hunenwa', 'hunenwā', '', '', '', 'It is spoken by very many,');
INSERT INTO kiswahili_words VALUES (412, 18, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (413, 18, 'e', 3, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO kiswahili_words VALUES (409, 18, 'd', 1, 'كِنْڠٖرٖزَ', 'kingereza', 'Kiingereza', 'kingereza', '', '', '', 'What of the English language?');
INSERT INTO kiswahili_words VALUES (410, 18, 'd', 2, 'هَامُوٗنِ', 'hāmuwoni', 'hamuoni', 'hāmuwoni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (414, 18, 'e', 4, 'سَانَ', 'sāna', 'sana', 'sāna', '', '', '', '');
INSERT INTO kiswahili_words VALUES (422, 18, 'h', 1, 'مِزِيٖ', 'miziye', 'miziye', 'miziye', '', '', '', 'its roots have not been severed. ');
INSERT INTO kiswahili_words VALUES (421, 18, 'g', 4, 'سِنَانِ', 'sināni', 'sinani', 'sināni', '', '', '', '');
INSERT INTO kiswahili_words VALUES (418, 18, 'g', 1, 'كِنَ', 'kina', 'kina', 'kina', '', '', '', 'yet the language remains firmly established in its homeland,');
INSERT INTO kiswahili_words VALUES (419, 18, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO kiswahili_words VALUES (423, 18, 'h', 2, 'هَئِكُكَاتَ', 'haikukāṯa', 'haikukata', 'haikukāṯa', '', '', '', '');


--
-- Name: kiswahili_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('kiswahili_words_word_id_seq', 423, true);


--
-- Data for Name: machozi; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO machozi VALUES (1, 1, 'a', 'مَچٗوزِ يَ هُوبَ', '', 'machozi ya huba', '');
INSERT INTO machozi VALUES (2, 1, 'b', 'يَمٖنِدٗنْدٗوكَ', '', 'yamenidondoka', '');
INSERT INTO machozi VALUES (3, 1, 'c', 'سِيلِ نِكَشِيبَ', '', 'sili nikashiba', '');
INSERT INTO machozi VALUES (4, 1, 'd', 'نِكَفُرَهِيكَ', '', 'nikafurahika', '');
INSERT INTO machozi VALUES (5, 1, 'e', 'وَانْڠُ مَهَبُوبَ', '', 'wangu mahabuba', '');
INSERT INTO machozi VALUES (6, 1, 'f', 'أَمٖشَنِتٗوكَ', '', 'ameshanitoka', '');
INSERT INTO machozi VALUES (7, 2, 'a', 'أَمٖشَنِتٗوكَ', '', 'ameshanitoka', '');
INSERT INTO machozi VALUES (8, 2, 'b', 'مْپٖنْزِ جَمَانِ', '', 'mpenzi jamani', '');
INSERT INTO machozi VALUES (9, 2, 'c', 'مْسِيتُ وَ نْيِيكَ', '', 'msitu wa nyika', '');
INSERT INTO machozi VALUES (10, 2, 'd', 'چٗوزِ كِفُؤَانِ', '', 'chozi kifuani', '');
INSERT INTO machozi VALUES (11, 2, 'e', 'نِنَهَنْڠَئِيكَ', '', 'ninahangaika', '');
INSERT INTO machozi VALUES (12, 2, 'f', 'وَالَ سِمُؤٗونِ', '', 'wala simuoni', '');
INSERT INTO machozi VALUES (13, 3, 'a', 'وَالَ سِمُؤٗونِ', '', 'wala simuoni', '');
INSERT INTO machozi VALUES (14, 3, 'b', 'سِجُئِ أَلِيكٗ', '', 'sijui aliko', '');
INSERT INTO machozi VALUES (15, 3, 'c', 'أَنِيپَ مَشَاكَ', '', 'anipa mashaka', '');
INSERT INTO machozi VALUES (16, 3, 'd', 'نَ مَسِكِتِيكٗ', '', 'na masikitiko', '');
INSERT INTO machozi VALUES (17, 3, 'e', 'سَؤُوتِ نَغَانِ', '', 'sauti naghani', '');
INSERT INTO machozi VALUES (18, 3, 'f', 'أَجُئٖ نِلِيكٗ', '', 'ajue niliko', '');


--
-- Name: machozi_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('machozi_poemline_id_seq', 18, true);


--
-- Data for Name: maisha; Type: TABLE DATA; Schema: public; Owner: kevin
--



--
-- Data for Name: maisha_ar; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO maisha_ar VALUES (1, 1, 'a', 'كْوَ إِينَ لَ رَهَمَانِ', 'kwa ı̄na la rahamāni', 'kwa ina la rahamani', '');
INSERT INTO maisha_ar VALUES (2, 1, 'b', 'نَأَنْدَ نُذُومَ هِينِ', 'naanḏa nudhūma hı̄ni', 'naanda nudhuma hini', '');
INSERT INTO maisha_ar VALUES (3, 1, 'c', 'إِينَ يَ پِيلِ رَمَانِ', 'ı̄na ya pı̄li ramāni', 'ina ya pili ramani', '');
INSERT INTO maisha_ar VALUES (4, 1, 'd', 'نَمْوَنْدِكِيَ يَهَايَ', 'namwanḏikiya yahāya', 'namwandikiya yahaya', '');
INSERT INTO maisha_ar VALUES (5, 2, 'a', 'كْوٖينْيٖ رَمَانِ يَ كْوَانْدَ', 'kwēnye ramāni ya kwānḏa', 'kwenye ramani ya kwanda', '');
INSERT INTO maisha_ar VALUES (6, 2, 'b', 'بَنَاتِ نَلِوَفُونْدَ', 'banāṯi naliwafūnḏa', 'banati naliwafunda', '');
INSERT INTO maisha_ar VALUES (7, 2, 'c', 'نَ هِينِ نِمٖئُِونْدَ', 'na hı̄ni nimeiūnḏa', 'na hini nimeiunda', '');
INSERT INTO maisha_ar VALUES (8, 2, 'd', 'وَڤُلَانَ كُوَمْبِيَ', 'wavulāna kuwambiya', 'wavulana kuwambiya', '');
INSERT INTO maisha_ar VALUES (9, 3, 'a', 'نَ أَسِيلِ يَ كْوَنْدِيكَ', 'na ası̄li ya kwanḏı̄ka', 'na asili ya kwandika', '');
INSERT INTO maisha_ar VALUES (10, 3, 'b', 'نَهِيسِ وَانَ وَتَاكَ', 'nahı̄si wāna waṯāka', 'nahisi wana wataka', '');
INSERT INTO maisha_ar VALUES (11, 3, 'c', 'بَابَ پِيَ كَذَلِيكَ', 'bāba piya kadhalı̄ka', 'baba piya kadhalika', '');
INSERT INTO maisha_ar VALUES (12, 3, 'd', 'مِيمِ أَلِنَنْدِكِيَ', 'mı̄mi alinanḏikiya', 'mimi alinandikiya', '');
INSERT INTO maisha_ar VALUES (13, 4, 'a', 'بَابَ بوَانَ أَهمَادِ', 'bāba bwāna ahmāḏi', 'baba bwana ahmadi', '');
INSERT INTO maisha_ar VALUES (14, 4, 'b', 'أَتَمْجَازِ وَدُودِ', 'aṯamjāzi waḏūḏi', 'atamjazi wadudi', '');
INSERT INTO maisha_ar VALUES (15, 4, 'c', 'كْوَانِ أَلِجِتَهِيدِ', 'kwāni alijiṯahı̄ḏi', 'kwani alijitahidi', '');
INSERT INTO maisha_ar VALUES (16, 4, 'd', 'كُنَنْدِكِيَ وَسِيَ', 'kunanḏikiya wasiya', 'kunandikiya wasiya', '');
INSERT INTO maisha_ar VALUES (17, 5, 'a', 'هَاپٗ زَمَانِ زَ يَانَ', 'hāpo zamāni za yāna', 'hapo zamani za yana', '');
INSERT INTO maisha_ar VALUES (18, 5, 'b', 'نْدِيٗ لَ وَسِيَ يِينَ', 'nḏiyo la wasiya ı̄ı̄na', 'ndiyo la wasiya yina', '');
INSERT INTO maisha_ar VALUES (19, 5, 'c', 'أَلٗنَنْدِكِئَ بوَانَ', 'alonanḏikia bwāna', 'alonandikia bwana', '');
INSERT INTO maisha_ar VALUES (20, 5, 'd', 'بَبَانْڠُ كَنِوَتِيَ', 'babāngu kaniwaṯiya', 'babangu kaniwatiya', '');
INSERT INTO maisha_ar VALUES (21, 6, 'a', 'نَامِ كَتِيكَ رَمَانِ', 'nāmi kaṯı̄ka ramāni', 'nami katika ramani', '');
INSERT INTO maisha_ar VALUES (22, 6, 'b', 'تَيِپِينْدَ كُبَئِينِ', 'ṯayipı̄nḏa kubaı̄ni', 'tayipinda kubaini', '');
INSERT INTO maisha_ar VALUES (23, 6, 'c', 'يَالٖ نِنَيٗؤَمِينِ', 'yāle ninayoamı̄ni', 'yale ninayoamini', '');
INSERT INTO maisha_ar VALUES (24, 6, 'd', 'يَوٖيزَ كُسَئِدِيَ', 'yawēza kusaiḏiya', 'yaweza kusaidiya', '');
INSERT INTO maisha_ar VALUES (25, 7, 'a', 'تَنٖينَ نَلٗيَتُومَ', 'ṯanēna naloyaṯūma', 'tanena naloyatuma', '');
INSERT INTO maisha_ar VALUES (26, 7, 'b', 'نَ يَالٖ نِلٗيَسٗومَ', 'na yāle niloyasōma', 'na yale niloyasoma', '');
INSERT INTO maisha_ar VALUES (27, 7, 'c', 'تَزِتَايَ نَ هٖكِيمَ', 'ṯaziṯāya na hekı̄ma', 'tazitaya na hekima', '');
INSERT INTO maisha_ar VALUES (28, 7, 'd', 'كْوَ وَاتُ نِلٗپٗكٖيَ', 'kwa wāṯu nilopokeya', 'kwa watu nilopokeya', '');


--
-- Name: maisha_ar_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('maisha_ar_poemline_id_seq', 28, true);


--
-- Data for Name: maisha_mume; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO maisha_mume VALUES (1, 1, 'a', 'كْوَ إِينَ لَ رَهَمَانِ ', 'kwa ı̄na la rahamāni', 'kwa ina la rahamani', '');
INSERT INTO maisha_mume VALUES (2, 1, 'b', ' نَأَنْدَ نُذُومَ هِينِ ', 'naanḏa nudhūma hı̄ni', 'naanda nudhuma hini', '');
INSERT INTO maisha_mume VALUES (3, 1, 'c', 'إِينَ يَ پِيلِ رَمَانِ ', 'ı̄na ya pı̄li ramāni', 'ina ya pili ramani', '');
INSERT INTO maisha_mume VALUES (4, 1, 'd', ' نَمْوَنْدِكِيَ يَهَايَ', 'namwanḏikiya yahāya', 'namwandikiya yahaya', '');
INSERT INTO maisha_mume VALUES (5, 2, 'a', 'كْوٖينْيٖ رَمَانِ يَ كْوَانْدَ ', 'kwēnye ramāni ya kwānḏa', 'kwenye ramani ya kwanda', '');
INSERT INTO maisha_mume VALUES (6, 2, 'b', ' بَنَاتِ نَلِوَفُونْدَ ', 'banāṯi naliwafūnḏa', 'banati naliwafunda', '');
INSERT INTO maisha_mume VALUES (7, 2, 'c', 'نَ هِينِ نِمٖئُِونْدَ ', 'na hı̄ni nimeiūnḏa', 'na hini nimeiunda', '');
INSERT INTO maisha_mume VALUES (8, 2, 'd', ' وَڤُلَانَ كُوَمْبِيَ', 'wavulāna kuwambiya', 'wavulana kuwambiya', '');
INSERT INTO maisha_mume VALUES (9, 3, 'a', 'نَ أَسِيلِ يَ كْوَنْدِيكَ ', 'na ası̄li ya kwanḏı̄ka', 'na asili ya kwandika', '');
INSERT INTO maisha_mume VALUES (10, 3, 'b', ' نَهِيسِ وَانَ وَتَاكَ ', 'nahı̄si wāna waṯāka', 'nahisi wana wataka', '');
INSERT INTO maisha_mume VALUES (11, 3, 'c', 'بَابَ پِيَ كَذَلِيكَ ', 'bāba piya kadhalı̄ka', 'baba piya kadhalika', '');
INSERT INTO maisha_mume VALUES (12, 3, 'd', ' مِيمِ أَلِنَنْدِكِيَ', 'mı̄mi alinanḏikiya', 'mimi alinandikiya', '');
INSERT INTO maisha_mume VALUES (13, 4, 'a', 'بَابَ بوَانَ أَهمَادِ ', 'bāba bwāna ahmāḏi', 'baba bwana ahmadi', '');
INSERT INTO maisha_mume VALUES (14, 4, 'b', ' أَتَمْجَازِ وَدُودِ ', 'aṯamjāzi waḏūḏi', 'atamjazi wadudi', '');
INSERT INTO maisha_mume VALUES (15, 4, 'c', 'كْوَانِ أَلِجِتَهِيدِ ', 'kwāni alijiṯahı̄ḏi', 'kwani alijitahidi', '');
INSERT INTO maisha_mume VALUES (16, 4, 'd', ' كُنَنْدِكِيَ وَسِيَ', 'kunanḏikiya wasiya', 'kunandikiya wasiya', '');
INSERT INTO maisha_mume VALUES (17, 5, 'a', 'هَاپٗ زَمَانِ زَ يَانَ ', 'hāpo zamāni za yāna', 'hapo zamani za yana', '');
INSERT INTO maisha_mume VALUES (18, 5, 'b', ' نْدِيٗ لَ وَسِيَ يِينَ ', 'nḏiyo la wasiya ı̄ı̄na', 'ndiyo la wasiya yina', '');
INSERT INTO maisha_mume VALUES (19, 5, 'c', 'أَلٗنَنْدِكِئَ بوَانَ ', 'alonanḏikia bwāna', 'alonandikia bwana', '');
INSERT INTO maisha_mume VALUES (20, 5, 'd', ' بَبَانْڠُ كَنِوَتِيَ', 'babāngu kaniwaṯiya', 'babangu kaniwatiya', '');
INSERT INTO maisha_mume VALUES (21, 6, 'a', 'نَامِ كَتِيكَ رَمَانِ ', 'nāmi kaṯı̄ka ramāni', 'nami katika ramani', '');
INSERT INTO maisha_mume VALUES (22, 6, 'b', ' تَيِپِينْدَ كُبَئِينِ ', 'ṯayipı̄nḏa kubaı̄ni', 'tayipinda kubaini', '');
INSERT INTO maisha_mume VALUES (23, 6, 'c', 'يَالٖ نِنَيٗؤَمِينِ ', 'yāle ninayoamı̄ni', 'yale ninayoamini', '');
INSERT INTO maisha_mume VALUES (24, 6, 'd', ' يَوٖيزَ كُسَئِدِيَ', 'yawēza kusaiḏiya', 'yaweza kusaidiya', '');
INSERT INTO maisha_mume VALUES (25, 7, 'a', 'تَنٖينَ نَلٗيَتُومَ ', 'ṯanēna naloyaṯūma', 'tanena naloyatuma', '');
INSERT INTO maisha_mume VALUES (26, 7, 'b', ' نَ يَالٖ نِلٗيَسٗومَ ', 'na yāle niloyasōma', 'na yale niloyasoma', '');
INSERT INTO maisha_mume VALUES (27, 7, 'c', 'تَزِتَايَ نَ هٖكِيمَ ', 'ṯaziṯāya na hekı̄ma', 'tazitaya na hekima', '');
INSERT INTO maisha_mume VALUES (28, 7, 'd', ' كْوَ وَاتُ نِلٗپٗكٖيَ', 'kwa wāṯu nilopokeya', 'kwa watu nilopokeya', '');
INSERT INTO maisha_mume VALUES (29, 8, 'a', 'يَالٖ نِتَيَكُسَانْيَ ', 'yāle niṯayakusānya', 'yale nitayakusanya', '');
INSERT INTO maisha_mume VALUES (30, 8, 'b', ' مْبَالِ مْبَالِ كُتَنْڠَانْيَ ', 'mbāli mbāli kuṯangānya', 'mbali mbali kutanganya', '');
INSERT INTO maisha_mume VALUES (31, 8, 'c', 'لٖينْڠٗ لَانْڠُ نِ كُفَانْيَ ', 'lēngo lāngu ni kufānya', 'lengo langu ni kufanya', '');
INSERT INTO maisha_mume VALUES (32, 8, 'd', ' كَامَ لَ مَئِيشَ بٗويَ', 'kāma la maı̄sha bōya', 'kama la maisha boya', '');
INSERT INTO maisha_mume VALUES (33, 9, 'a', 'بٗويَ هِيلِ لَ مَئِيشَ ', 'bōya hı̄li la maı̄sha', 'boya hili la maisha', '');
INSERT INTO maisha_mume VALUES (34, 9, 'b', ' كَاتُ هَلِتٗزَمِيشَ ', 'kāṯu haliṯozamı̄sha', 'katu halitozamisha', '');
INSERT INTO maisha_mume VALUES (35, 9, 'c', 'أَشِكَاءٗ تَمْڤُوشَ ', 'ashikāo ṯamvūsha', 'ashikao tamvusha', '');
INSERT INTO maisha_mume VALUES (36, 9, 'd', ' بَنْدَارِ تَسِكِلِيَ', 'banḏāri ṯasikiliya', 'bandari tasikiliya', '');
INSERT INTO maisha_mume VALUES (37, 10, 'a', 'مْوَنَانْڠُ أُكِئَزِيمُ ', 'mwanāngu ukiazı̄mu', 'mwanangu ukiazimu', '');
INSERT INTO maisha_mume VALUES (38, 10, 'b', ' كُؤٗوَ كْوَانْدَ فَهَامُ ', 'kuowa kwānḏa fahāmu', 'kuowa kwanda fahamu', '');
INSERT INTO maisha_mume VALUES (39, 10, 'c', 'كُتٖؤُوَ نِ مُهِيمُ ', 'kuṯeuwa ni muhı̄mu', 'kuteuwa ni muhimu', '');
INSERT INTO maisha_mume VALUES (40, 10, 'd', ' نِ أَامرِ يَ شَرِيَ', 'ni āmri ya shariya', 'ni amri ya shariya', '');
INSERT INTO maisha_mume VALUES (41, 11, 'a', 'مْتُومِ أَلِبَئِينِ ', 'mṯūmi alibaı̄ni', 'mtumi alibaini', '');
INSERT INTO maisha_mume VALUES (42, 11, 'b', ' أَكَتوَمْبِيَ أٗوَانِ ', 'akaṯwambiya owāni', 'akatwambiya owani', '');
INSERT INTO maisha_mume VALUES (43, 11, 'c', 'مْوَنَامْكٖ مْوٖينْيٖ دِينِ ', 'mwanāmke mwēnye ḏı̄ni', 'mwanamke mwenye dini', '');
INSERT INTO maisha_mume VALUES (44, 11, 'd', ' مُونْڠُ تَوَبَرِكِيَ', 'mūngu ṯawabarikiya', 'mungu tawabarikiya', '');
INSERT INTO maisha_mume VALUES (45, 12, 'a', 'مْوَنَانْڠُ سِتَاكٖ مْكٖ ', 'mwanāngu siṯāke mke', 'mwanangu sitake mke', '');
INSERT INTO maisha_mume VALUES (46, 12, 'b', ' كْوَ وٖيمَ وَ أُومْبٗ لَاكٖ ', 'kwa wēma wa ūmbo lāke', 'kwa wema wa umbo lake', '');
INSERT INTO maisha_mume VALUES (47, 12, 'c', 'نَسَابَ نَ پَاتٗ لَاكٖ ', 'nasāba na pāṯo lāke', 'nasaba na pato lake', '');
INSERT INTO maisha_mume VALUES (48, 12, 'd', ' مَيُتٗونِ أُتَنْڠِيَ', 'mayuṯōni uṯangiya', 'mayutoni utangiya', '');
INSERT INTO maisha_mume VALUES (49, 13, 'a', 'وَالَ دِينِ هَئِنٖينِ ', 'wāla ḏı̄ni hainēni', 'wala dini haineni', '');
INSERT INTO maisha_mume VALUES (50, 13, 'b', ' أٗوَ شُڠُؤُ لَ أُونِ ', 'owa shuguu la ūni', 'owa shuguu la uni', '');
INSERT INTO maisha_mume VALUES (51, 13, 'c', 'كِشُونَ كِيلٗ نَ دِينِ ', 'kishūna kı̄lo na ḏı̄ni', 'kishuna kilo na dini', '');
INSERT INTO maisha_mume VALUES (52, 13, 'd', ' كُكِؤٗوَ سِ هَتِيَ', 'kukiowa si haṯiya', 'kukiowa si hatiya', '');
INSERT INTO maisha_mume VALUES (53, 14, 'a', 'مْوٖينْيٖ نَسَابَ تُكُوفُ ', 'mwēnye nasāba ṯukūfu', 'mwenye nasaba tukufu', '');
INSERT INTO maisha_mume VALUES (54, 14, 'b', ' نَ كْوَ مٗولَ مْتِئِيفُ ', 'na kwa mōla mṯiı̄fu', 'na kwa mola mtiifu', '');
INSERT INTO maisha_mume VALUES (55, 14, 'c', 'هَاوِ مْتُ مٖخَلِيفُ ', 'hāwi mṯu meẖalı̄fu', 'hawi mtu mehalifu', '');
INSERT INTO maisha_mume VALUES (56, 14, 'd', ' كَامَ هُويٗ كُزٖنْڠٖيَ', 'kāma hūyo kuzengeya', 'kama huyo kuzengeya', '');
INSERT INTO maisha_mume VALUES (57, 15, 'a', 'نَ مْكٖ أَالٗ نَ چَاكٖ ', 'na mke ālo na chāke', 'na mke alo na chake', '');
INSERT INTO maisha_mume VALUES (58, 15, 'b', ' سِكْوَمْبِئِ سِمْتَاكٖ ', 'sikwambii simṯāke', 'sikwambii simtake', '');
INSERT INTO maisha_mume VALUES (59, 15, 'c', 'بٗورَ أَاوٖ دِينِ يَاكٖ ', 'bōra āwe ḏı̄ni yāke', 'bora awe dini yake', '');
INSERT INTO maisha_mume VALUES (60, 15, 'd', ' مٖشِيكَ هَكُمْبِرِيَ', 'meshı̄ka hakumbiriya', 'meshika hakumbiriya', '');
INSERT INTO maisha_mume VALUES (61, 16, 'a', 'دِينِ نِ كَامَ بُرٖيكِ ', 'ḏı̄ni ni kāma burēki', 'dini ni kama bureki', '');
INSERT INTO maisha_mume VALUES (62, 16, 'b', ' هُمزِوِيَ هَتٗوكِ ', 'humziwiya haṯōki', 'humziwiya hatoki', '');
INSERT INTO maisha_mume VALUES (63, 16, 'c', 'مِپَكَانِ نَ هَرُوكِ ', 'mipakāni na harūki', 'mipakani na haruki', '');
INSERT INTO maisha_mume VALUES (64, 16, 'd', ' أَكِيوَ تَئِتُمِيَ', 'akı̄wa ṯaiṯumiya', 'akiwa taitumiya', '');
INSERT INTO maisha_mume VALUES (65, 17, 'a', 'نَ دِينِ هُمزِوِيزَ ', 'na ḏı̄ni humziwı̄za', 'na dini humziwiza', '');
INSERT INTO maisha_mume VALUES (66, 17, 'b', ' كُتٖينْدَ يَسٗپٖنْدٖيزَ ', 'kuṯēnḏa yasopenḏēza', 'kutenda yasopendeza', '');
INSERT INTO maisha_mume VALUES (67, 17, 'c', 'نَ نْدِيپٗ كَكُهِمِيزَ ', 'na nḏı̄po kakuhimı̄za', 'na ndipo kakuhimiza', '');
INSERT INTO maisha_mume VALUES (68, 17, 'd', ' مْوٖينْيٖ دِينِ كْوَنْڠَلِيَ', 'mwēnye ḏı̄ni kwangaliya', 'mwenye dini kwangaliya', '');
INSERT INTO maisha_mume VALUES (69, 18, 'a', 'دِينِ نِنَيٗئِنٖينَ ', 'ḏı̄ni ninayoinēna', 'dini ninayoinena', '');
INSERT INTO maisha_mume VALUES (70, 18, 'b', ' سِكُوَ نَايٗ نِ إِينَ ', 'sikuwa nāyo ni ı̄na', 'sikuwa nayo ni ina', '');
INSERT INTO maisha_mume VALUES (71, 18, 'c', 'دِينِ نِ كْوَنْدَامَ سَانَ ', 'ḏı̄ni ni kwanḏāma sāna', 'dini ni kwandama sana', '');
INSERT INTO maisha_mume VALUES (72, 18, 'd', ' أَامرِ زَاكٖ جَلِيَ', 'āmri zāke jaliya', 'amri zake jaliya', '');
INSERT INTO maisha_mume VALUES (73, 19, 'a', 'نِ دِينِ كْوٖينْيٖ مَئِيشَ ', 'ni ḏı̄ni kwēnye maı̄sha', 'ni dini kwenye maisha', '');
INSERT INTO maisha_mume VALUES (74, 19, 'b', ' مْتُ إِيوٖ هُمْوٖنْدٖيشَ ', 'mṯu ı̄we humwenḏēsha', 'mtu iwe humwendesha', '');
INSERT INTO maisha_mume VALUES (75, 19, 'c', 'سِ دِينِ يَ كُؤٗنٖيشَ ', 'si ḏı̄ni ya kuonēsha', 'si dini ya kuonesha', '');
INSERT INTO maisha_mume VALUES (76, 19, 'd', ' وَاتُ كُوَهَدَلِيَ', 'wāṯu kuwahaḏaliya', 'watu kuwahadaliya', '');
INSERT INTO maisha_mume VALUES (77, 20, 'a', 'نِ دِينِ إِلِيٗ نْدَانِ ', 'ni ḏı̄ni iliyo nḏāni', 'ni dini iliyo ndani', '');
INSERT INTO maisha_mume VALUES (78, 20, 'b', ' إِلِيٗكِيتَ مٗيٗونِ ', 'iliyokı̄ṯa moyōni', 'iliyokita moyoni', '');
INSERT INTO maisha_mume VALUES (79, 20, 'c', 'نْدِيٗ هُوَ نِ سُكَانِ ', 'nḏiyo huwa ni sukāni', 'ndiyo huwa ni sukani', '');
INSERT INTO maisha_mume VALUES (80, 20, 'd', ' يَ كُمُؤٗنْڠٗوزَ نْدِيَ', 'ya kumuongōza nḏiya', 'ya kumuongoza ndiya', '');
INSERT INTO maisha_mume VALUES (81, 21, 'a', 'نِ أُكِيسَ كُؤَمُوَ ', 'ni ukı̄sa kuamuwa', 'ni ukisa kuamuwa', '');
INSERT INTO maisha_mume VALUES (82, 21, 'b', ' نِ فُلَانِ تَمُؤٗوَ ', 'ni fulāni ṯamuowa', 'ni fulani tamuowa', '');
INSERT INTO maisha_mume VALUES (83, 21, 'c', 'فَانْيَ مَامْبٗ سَوَسَاوَ ', 'fānya māmbo sawasāwa', 'fanya mambo sawasawa', '');
INSERT INTO maisha_mume VALUES (84, 21, 'd', ' سَنْدَامٖ يَ جٗونْڠٗ نْدِيَ', 'sanḏāme ya jōngo nḏiya', 'sandame ya jongo ndiya', '');
INSERT INTO maisha_mume VALUES (85, 22, 'a', 'أُسِفَانْيٖ يَ شٖشٖيڠِ ', 'usifānye ya sheshēgi', 'usifanye ya sheshegi', '');
INSERT INTO maisha_mume VALUES (86, 22, 'b', ' كَامَ وَاتُ وٖينْيٖ ڠٗوڠِ ', 'kāma wāṯu wēnye gōgi', 'kama watu wenye gogi', '');
INSERT INTO maisha_mume VALUES (87, 22, 'c', 'سِئِپٖيكٖ زِڠِزَاڠِ ', 'siipēke zigizāgi', 'siipeke zigizagi', '');
INSERT INTO maisha_mume VALUES (88, 22, 'd', ' هَرُوسِ نِمٖكْوَمْبِيَ', 'harūsi nimekwambiya', 'harusi nimekwambiya', '');
INSERT INTO maisha_mume VALUES (89, 23, 'a', 'كُولَ إِكِيوَ نِ پٖيسِ ', 'kūla ikı̄wa ni pēsi', 'kula ikiwa ni pesi', '');
INSERT INTO maisha_mume VALUES (90, 23, 'b', ' هُوَ نِ بٗورَ هَرُوسِ ', 'huwa ni bōra harūsi', 'huwa ni bora harusi', '');
INSERT INTO maisha_mume VALUES (91, 23, 'c', 'فَانْيَ مَامْبٗ يَ كِئَاسِ ', 'fānya māmbo ya kiāsi', 'fanya mambo ya kiasi', '');
INSERT INTO maisha_mume VALUES (92, 23, 'd', ' كْوَ غَرَامَ نْڠٗومَ پِيَ', 'kwa ḡarāma ngōma piya', 'kwa gharama ngoma piya', '');
INSERT INTO maisha_mume VALUES (93, 24, 'a', 'مَكُوبوَ أُسِيَتَاكٖ ', 'makūbwa usiyaṯāke', 'makubwa usiyatake', '');
INSERT INTO maisha_mume VALUES (94, 24, 'b', ' نَ مِپَاكَ أُسِرُوكٖ ', 'na mipāka usirūke', 'na mipaka usiruke', '');
INSERT INTO maisha_mume VALUES (95, 24, 'c', 'پِيَ أُپَانْدٖ وَ مْكٖ ', 'piya upānḏe wa mke', 'piya upande wa mke', '');
INSERT INTO maisha_mume VALUES (96, 24, 'd', ' وَئِلٖيزٖ كَامَ هَايَ', 'wailēze kāma hāya', 'waileze kama haya', '');
INSERT INTO maisha_mume VALUES (97, 25, 'a', 'زِكِيوَ نْيِينْڠِ غَرَامَ ', 'zikı̄wa nı̄ı̄ngi ḡarāma', 'zikiwa nyingi gharama', '');
INSERT INTO maisha_mume VALUES (98, 25, 'b', ' نَ مَيُوتٗ نِ لَزِيمَ ', 'na mayūṯo ni lazı̄ma', 'na mayuto ni lazima', '');
INSERT INTO maisha_mume VALUES (99, 25, 'c', 'نْڠٗومَ زِكِيسَ كُكٗومَ ', 'ngōma zikı̄sa kukōma', 'ngoma zikisa kukoma', '');
INSERT INTO maisha_mume VALUES (100, 25, 'd', ' نِ لَوَامَ هُسَلِيَ', 'ni lawāma husaliya', 'ni lawama husaliya', '');
INSERT INTO maisha_mume VALUES (101, 26, 'a', 'فَانْيَ مَامْبٗ يَ كَدِيرِ ', 'fānya māmbo ya kaḏı̄ri', 'fanya mambo ya kadiri', '');
INSERT INTO maisha_mume VALUES (102, 26, 'b', ' سِتَاكٖ مْنٗ فَخَارِ ', 'siṯāke mno faẖāri', 'sitake mno fahari', '');
INSERT INTO maisha_mume VALUES (103, 26, 'c', 'نَكُؤُسِيَ سِكِيرِ ', 'nakuusiya sikı̄ri', 'nakuusiya sikiri', '');
INSERT INTO maisha_mume VALUES (104, 26, 'd', ' هَفُولَ زَ مَأَسِيَ', 'hafūla za maasiya', 'hafula za maasiya', '');
INSERT INTO maisha_mume VALUES (105, 27, 'a', 'هَفُولَ زَ إِسِرَافُ ', 'hafūla za isirāfu', 'hafula za isirafu', '');
INSERT INTO maisha_mume VALUES (106, 27, 'b', ' نَ زَ مَڠٗومَ مَچَافُ ', 'na za magōma machāfu', 'na za magoma machafu', '');
INSERT INTO maisha_mume VALUES (107, 27, 'c', 'نَ كُوَ تُوتُ كْوَ أُوفُ ', 'na kuwa ṯūṯu kwa ūfu', 'na kuwa tutu kwa ufu', '');
INSERT INTO maisha_mume VALUES (108, 27, 'd', ' دِينِ هَايٗ هُزُوِيَ', 'ḏı̄ni hāyo huzuwiya', 'dini hayo huzuwiya', '');
INSERT INTO maisha_mume VALUES (109, 28, 'a', 'مِيلَ يٖيتُ أُسِوَاتٖ ', 'mı̄la yēṯu usiwāṯe', 'mila yetu usiwate', '');
INSERT INTO maisha_mume VALUES (110, 28, 'b', ' مْفَانٗ كُڤِيشَ پٖيتٖ ', 'mfāno kuvı̄sha pēṯe', 'mfano kuvisha pete', '');
INSERT INTO maisha_mume VALUES (111, 28, 'c', 'سِ يٖيتُ أُسِفُؤَاتٖ ', 'si yēṯu usifuāṯe', 'si yetu usifuate', '');
INSERT INTO maisha_mume VALUES (112, 28, 'd', ' وٖينْڠِ وَنْڠَكَزَنِيَ', 'wēngi wangakazaniya', 'wengi wangakazaniya', '');
INSERT INTO maisha_mume VALUES (113, 29, 'a', 'نِ مِيلَ يَ كِنَسَارَ ', 'ni mı̄la ya kinasāra', 'ni mila ya kinasara', '');
INSERT INTO maisha_mume VALUES (114, 29, 'b', ' كُئِوَاتَ نْدِؤٗ بٗورَ ', 'kuiwāṯa nḏio bōra', 'kuiwata ndio bora', '');
INSERT INTO maisha_mume VALUES (115, 29, 'c', 'وَنْڠَاوَ وَتَكُكٖيرَ ', 'wangāwa waṯakukēra', 'wangawa watakukera', '');
INSERT INTO maisha_mume VALUES (116, 29, 'd', ' وَاجَ كْوَ كُتٗئٖلٖيَ', 'wāja kwa kuṯoeleya', 'waja kwa kutoeleya', '');
INSERT INTO maisha_mume VALUES (117, 30, 'a', 'نَ كْوٖينْدَ كُوپَ مْكٗونٗ ', 'na kwēnḏa kūpa mkōno', 'na kwenda kupa mkono', '');
INSERT INTO maisha_mume VALUES (118, 30, 'b', ' أُسِكِيرِ تَنْڠَمَانٗ ', 'usikı̄ri ṯangamāno', 'usikiri tangamano', '');
INSERT INTO maisha_mume VALUES (119, 30, 'c', 'هَاتَ أَالٗ نْدُويٗ مْنٗ ', 'hāṯa ālo nḏūyo mno', 'hata alo nduyo mno', '');
INSERT INTO maisha_mume VALUES (120, 30, 'd', ' سِمُؤَاتٖ نَاوٖ كُويَ', 'simuāṯe nāwe kūya', 'simuate nawe kuya', '');
INSERT INTO maisha_mume VALUES (121, 31, 'a', 'نْيُومْبَ يَاكٗ سِئَسِيسِ ', 'nyūmba yāko siası̄si', 'nyumba yako siasisi', '');
INSERT INTO maisha_mume VALUES (122, 31, 'b', ' كْوَ مْسِينْڠِ وَ مَأَسِ ', 'kwa msı̄ngi wa maasi', 'kwa msingi wa maasi', '');
INSERT INTO maisha_mume VALUES (123, 31, 'c', 'تَئِڤُتِيَ نُهُوسِ ', 'ṯaivuṯiya nuhūsi', 'taivutiya nuhusi', '');
INSERT INTO maisha_mume VALUES (124, 31, 'd', ' نَ أُكٗرٗوفِ كُنْڠِيَ', 'na ukorōfi kungiya', 'na ukorofi kungiya', '');
INSERT INTO maisha_mume VALUES (125, 32, 'a', 'نَ مَأَسِ نِنٖنَايٗ ', 'na maasi ninenāyo', 'na maasi ninenayo', '');
INSERT INTO maisha_mume VALUES (126, 32, 'b', ' نِ كُولَ مَامْبٗ أَمْبَايٗ ', 'ni kūla māmbo ambāyo', 'ni kula mambo ambayo', '');
INSERT INTO maisha_mume VALUES (127, 32, 'c', 'مٗولَ أَيَتُكِئَايٗ ', 'mōla ayaṯukiāyo', 'mola ayatukiayo', '');
INSERT INTO maisha_mume VALUES (128, 32, 'd', ' نَ كُولَ أَلٗزِوِيَ', 'na kūla aloziwiya', 'na kula aloziwiya', '');
INSERT INTO maisha_mume VALUES (129, 33, 'a', 'مٗويَ مٗويَ سِتٗوٖيزَ ', 'mōya mōya siṯowēza', 'moya moya sitoweza', '');
INSERT INTO maisha_mume VALUES (130, 33, 'b', ' كُتٗنْدٗوَ كُكْوٖلٖيزَ ', 'kuṯonḏowa kukwelēza', 'kutondowa kukweleza', '');
INSERT INTO maisha_mume VALUES (131, 33, 'c', 'نِمٖكُوپَ مُؤَنْڠَازَ ', 'nimekūpa muangāza', 'nimekupa muangaza', '');
INSERT INTO maisha_mume VALUES (132, 33, 'd', ' وَ نْدِيَ كُفُؤَتِيَ', 'wa nḏiya kufuaṯiya', 'wa ndiya kufuatiya', '');
INSERT INTO maisha_mume VALUES (133, 34, 'a', 'نِمٖكُوپَ نِ كِيَاسِ ', 'nimekūpa ni kiyāsi', 'nimekupa ni kiyasi', '');
INSERT INTO maisha_mume VALUES (134, 34, 'b', ' كِتُميِئٖ نَاوٖ بَاسِ ', 'kiṯumyie nāwe bāsi', 'kitumyie nawe basi', '');
INSERT INTO maisha_mume VALUES (135, 34, 'c', 'كْوَ مَنْڠِنٖيٗ كُكِيسِ ', 'kwa mangineyo kukı̄si', 'kwa mangineyo kukisi', '');
INSERT INTO maisha_mume VALUES (136, 34, 'd', ' كْوَ مِزَانِ كُتُمِيَ', 'kwa mizāni kuṯumiya', 'kwa mizani kutumiya', '');
INSERT INTO maisha_mume VALUES (137, 35, 'a', 'نْيُومْبَ نْجٖيمَ نِ مْسِنْجِ ', 'nyūmba njēma ni msinji', 'nyumba njema ni msinji', '');
INSERT INTO maisha_mume VALUES (138, 35, 'b', ' تَامُ يَ چَاءِ سِ رَنْجِ ', 'ṯāmu ya chāi si ranji', 'tamu ya chai si ranji', '');
INSERT INTO maisha_mume VALUES (139, 35, 'c', 'وٖينْڠِ مٖتِلِيوَ تَنْجِ ', 'wēngi meṯilı̄wa ṯanji', 'wengi metiliwa tanji', '');
INSERT INTO maisha_mume VALUES (140, 35, 'd', ' كْوَ فَخَارِ كُزٖنْڠٖيَ', 'kwa faẖāri kuzengeya', 'kwa fahari kuzengeya', '');
INSERT INTO maisha_mume VALUES (141, 36, 'a', 'كِيوَ نِ لَزِيمَ سَانَ ', 'kı̄wa ni lazı̄ma sāna', 'kiwa ni lazima sana', '');
INSERT INTO maisha_mume VALUES (142, 36, 'b', ' هِيلٗ لَ كُؤَنْدَمَانَ ', 'hı̄lo la kuanḏamāna', 'hilo la kuandamana', '');
INSERT INTO maisha_mume VALUES (143, 36, 'c', 'شٖمٖڠِيٗ مْڤُلَانَ ', 'shemegiyo mvulāna', 'shemegiyo mvulana', '');
INSERT INTO maisha_mume VALUES (144, 36, 'd', ' أَنْدَمَنَانِ پَمٗويَ', 'anḏamanāni pamōya', 'andamanani pamoya', '');
INSERT INTO maisha_mume VALUES (145, 37, 'a', 'أَوْ مْوٖنْڠِينٖ يٗيٗوتٖ ', 'aw mwengı̄ne yoyōṯe', 'au mwengine yoyote', '');
INSERT INTO maisha_mume VALUES (146, 37, 'b', ' مَهَرِيمُ نَ فُؤَاتٖ ', 'maharı̄mu na fuāṯe', 'maharimu na fuate', '');
INSERT INTO maisha_mume VALUES (147, 37, 'c', 'أَجِنَابُ سِمُؤَاتٖ ', 'ajinābu simuāṯe', 'ajinabu simuate', '');
INSERT INTO maisha_mume VALUES (148, 37, 'd', ' مْكٖؤٗ كُمْوَنْڠَلِيَ', 'mkeo kumwangaliya', 'mkeo kumwangaliya', '');
INSERT INTO maisha_mume VALUES (149, 38, 'a', 'رَفِيكِ سِمُؤَامْنِ ', 'rafı̄ki simuāmni', 'rafiki simuamni', '');
INSERT INTO maisha_mume VALUES (150, 38, 'b', ' أُكَمْتِيَ نْيُمْبَانِ ', 'ukamṯiya nyumbāni', 'ukamtiya nyumbani', '');
INSERT INTO maisha_mume VALUES (151, 38, 'c', 'إِيلَ ذَرُورَ فُلَانِ ', 'ı̄la dharūra fulāni', 'ila dharura fulani', '');
INSERT INTO maisha_mume VALUES (152, 38, 'd', ' سِكُويٖ إِكِتٗكٖيَ', 'sikūye ikiṯokeya', 'sikuye ikitokeya', '');
INSERT INTO maisha_mume VALUES (153, 39, 'a', 'رَفِيكِ أُسِملِيچٖ ', 'rafı̄ki usimlı̄che', 'rafiki usimliche', '');
INSERT INTO maisha_mume VALUES (154, 39, 'b', ' نِ زَئِيدِ هُويٗ مْچٖ ', 'ni zaı̄ḏi hūyo mche', 'ni zaidi huyo mche', '');
INSERT INTO maisha_mume VALUES (155, 39, 'c', 'كْوَ وَاءٗ مَامْبٗ يَ چٖيچٖ ', 'kwa wāo māmbo ya chēche', 'kwa wao mambo ya cheche', '');
INSERT INTO maisha_mume VALUES (156, 39, 'd', ' هُوَ أُسٗلِذَنِيَ', 'huwa usolidhaniya', 'huwa usolidhaniya', '');
INSERT INTO maisha_mume VALUES (157, 40, 'a', 'زِزِينِ كُتِيَ سِيمْبَ ', 'zizı̄ni kuṯiya sı̄mba', 'zizini kutiya simba', '');
INSERT INTO maisha_mume VALUES (158, 40, 'b', ' نِ كَامَ مٗوتٗ نَ پَامْبَ ', 'ni kāma mōṯo na pāmba', 'ni kama moto na pamba', '');
INSERT INTO maisha_mume VALUES (159, 40, 'c', 'مَارَ مٗويَ هُزِسُومْبَ ', 'māra mōya huzisūmba', 'mara moya huzisumba', '');
INSERT INTO maisha_mume VALUES (160, 40, 'd', ' نَ يِيڤُ لِكَسَلِيَ', 'na ı̄ı̄vu likasaliya', 'na yivu likasaliya', '');
INSERT INTO maisha_mume VALUES (161, 41, 'a', 'رَفِيكِ كِنْڠِيَ نْدَانِ ', 'rafı̄ki kingiya nḏāni', 'rafiki kingiya ndani', '');
INSERT INTO maisha_mume VALUES (162, 41, 'b', ' سِكُويٖ أُكَتَمَانِ ', 'sikūye ukaṯamāni', 'sikuye ukatamani', '');
INSERT INTO maisha_mume VALUES (163, 41, 'c', 'سَامْبٖ أٗونَ نِ نْيُمْبَانِ ', 'sāmbe ōna ni nyumbāni', 'sambe ona ni nyumbani', '');
INSERT INTO maisha_mume VALUES (164, 41, 'd', ' هٖئٖ أُتَيِتٗنْڠٖيَ', 'hee uṯayiṯongeya', 'hee utayitongeya', '');
INSERT INTO maisha_mume VALUES (165, 42, 'a', 'هِيٗ كْوٖيتُ سِيٗ مِيلَ ', 'hiyo kwēṯu siyo mı̄la', 'hiyo kwetu siyo mila', '');
INSERT INTO maisha_mume VALUES (166, 42, 'b', ' كُنْڠِيَ كُولَ مَهَالَ ', 'kungiya kūla mahāla', 'kungiya kula mahala', '');
INSERT INTO maisha_mume VALUES (167, 42, 'c', 'پَاسِ هٗودِ نَ سُمِيلَ ', 'pāsi hōḏi na sumı̄la', 'pasi hodi na sumila', '');
INSERT INTO maisha_mume VALUES (168, 42, 'd', ' سِيٗ يٖيتُ مَزٗوٖيَ', 'siyo yēṯu mazoweya', 'siyo yetu mazoweya', '');
INSERT INTO maisha_mume VALUES (169, 43, 'a', 'يَلِنَكَازِ مَدَاكَ ', 'yalinakāzi maḏāka', 'yalinakazi madaka', '');
INSERT INTO maisha_mume VALUES (170, 43, 'b', ' نِ وَڠٖينِ كُوَدَاكَ ', 'ni wagēni kuwaḏāka', 'ni wageni kuwadaka', '');
INSERT INTO maisha_mume VALUES (171, 43, 'c', 'مَدَاكَ نِ كُوَوٖيكَ ', 'maḏāka ni kuwawēka', 'madaka ni kuwaweka', '');
INSERT INTO maisha_mume VALUES (172, 43, 'd', ' نَ نْدَانِ كُتٗتُنْڠِيَ', 'na nḏāni kuṯoṯungiya', 'na ndani kutotungiya', '');
INSERT INTO maisha_mume VALUES (173, 44, 'a', 'إِيلَ أَاوٖ نِ مْڠٖينِ ', 'ı̄la āwe ni mgēni', 'ila awe ni mgeni', '');
INSERT INTO maisha_mume VALUES (174, 44, 'b', ' وَ كُشُكِيَ نْيُمْبَانِ ', 'wa kushukiya nyumbāni', 'wa kushukiya nyumbani', '');
INSERT INTO maisha_mume VALUES (175, 44, 'c', 'هُنْڠِيَ نَ هَمُؤٗونِ ', 'hungiya na hamuōni', 'hungiya na hamuoni', '');
INSERT INTO maisha_mume VALUES (176, 44, 'd', ' أَلِيٗ نْدَانِ ممٗويَ', 'aliyo nḏāni mmōya', 'aliyo ndani mmoya', '');
INSERT INTO maisha_mume VALUES (177, 45, 'a', 'نَ أُچٖينْدَ سَفَرِينِ ', 'na uchēnḏa safarı̄ni', 'na uchenda safarini', '');
INSERT INTO maisha_mume VALUES (178, 45, 'b', ' كَشُكِيٖ هٗتٖلِينِ ', 'kashukiye hoṯelı̄ni', 'kashukiye hotelini', '');
INSERT INTO maisha_mume VALUES (179, 45, 'c', 'سِپٖينْدٖ سَانَ نْيُمْبَانِ ', 'sipēnḏe sāna nyumbāni', 'sipende sana nyumbani', '');
INSERT INTO maisha_mume VALUES (180, 45, 'd', ' إِيلَ نِ كُپِيتَ نْدِيَ', 'ı̄la ni kupı̄ṯa nḏiya', 'ila ni kupita ndiya', '');
INSERT INTO maisha_mume VALUES (181, 46, 'a', 'أُكِمْوٖنْدٖيَ نْيُمْبَانِ ', 'ukimwenḏeya nyumbāni', 'ukimwendeya nyumbani', '');
INSERT INTO maisha_mume VALUES (182, 46, 'b', ' مْوٖينْيٖ تٗوتٗ مَسِكَانِ ', 'mwēnye ṯōṯo masikāni', 'mwenye toto masikani', '');
INSERT INTO maisha_mume VALUES (183, 46, 'c', 'أَوْ أَالٗ مَسِكِينِ ', 'aw ālo masikı̄ni', 'au alo masikini', '');
INSERT INTO maisha_mume VALUES (184, 46, 'd', ' تَأَبُونِ هُمْتِيَ', 'ṯaabūni humṯiya', 'taabuni humtiya', '');
INSERT INTO maisha_mume VALUES (185, 47, 'a', 'نَ إِوَاپٗ هُونَ بُودِ ', 'na iwāpo hūna būḏi', 'na iwapo huna budi', '');
INSERT INTO maisha_mume VALUES (186, 47, 'b', ' هُكُفَانْيَ كْوَ كَسِيدِ ', 'hukufānya kwa kası̄ḏi', 'hukufanya kwa kasidi', '');
INSERT INTO maisha_mume VALUES (187, 47, 'c', 'سِيكُ تَاتُ أُسِزِيدِ ', 'sı̄ku ṯāṯu usizı̄ḏi', 'siku tatu usizidi', '');
INSERT INTO maisha_mume VALUES (188, 47, 'd', ' سِؤٗنْڠٖيزٖ هَاتَ مٗويَ', 'siongēze hāṯa mōya', 'siongeze hata moya', '');
INSERT INTO maisha_mume VALUES (189, 48, 'a', 'نَ هِيلٗ وٖيوٖ سِتٖينْدٖ ', 'na hı̄lo wēwe siṯēnḏe', 'na hilo wewe sitende', '');
INSERT INTO maisha_mume VALUES (190, 48, 'b', ' إِيلَ مَامْبٗ يَكُشِينْدٖ ', 'ı̄la māmbo yakushı̄nḏe', 'ila mambo yakushinde', '');
INSERT INTO maisha_mume VALUES (191, 48, 'c', 'مْتٖرٖيمْكٗ سِپٖينْدٖ ', 'mṯerēmko sipēnḏe', 'mteremko sipende', '');
INSERT INTO maisha_mume VALUES (192, 48, 'd', ' نْيٗونْڠٗ هُكُتُمْبُكِيَ', 'nyōngo hukuṯumbukiya', 'nyongo hukutumbukiya', '');
INSERT INTO maisha_mume VALUES (193, 49, 'a', 'لٗجِينْڠِ كِيوَ هَپَانَ ', 'lojı̄ngi kı̄wa hapāna', 'lojingi kiwa hapana', '');
INSERT INTO maisha_mume VALUES (194, 49, 'b', ' أَوْ مْفُكٗونِ هُونَ ', 'aw mfukōni hūna', 'au mfukoni huna', '');
INSERT INTO maisha_mume VALUES (195, 49, 'c', 'نٖينْدَ كْوَ هَذَارِ سَانَ ', 'nēnḏa kwa hadhāri sāna', 'nenda kwa hadhari sana', '');
INSERT INTO maisha_mume VALUES (196, 49, 'd', ' كَامَ كُپٗتٖيَ نْدِيَ', 'kāma kupoṯeya nḏiya', 'kama kupoteya ndiya', '');
INSERT INTO maisha_mume VALUES (197, 50, 'a', 'كِيوَ مْتُ مٖكْوَلِيكَ ', 'kı̄wa mṯu mekwalı̄ka', 'kiwa mtu mekwalika', '');
INSERT INTO maisha_mume VALUES (198, 50, 'b', ' نِ وَجِيبُ كُئِتِيكَ ', 'ni wajı̄bu kuiṯı̄ka', 'ni wajibu kuitika', '');
INSERT INTO maisha_mume VALUES (199, 50, 'c', 'شُغُولِ كِمَلِزِيكَ ', 'shuḡūli kimalizı̄ka', 'shughuli kimalizika', '');
INSERT INTO maisha_mume VALUES (200, 50, 'd', ' مُسِوٖيكٖ مَزٗوٖيَ', 'musiwēke mazoweya', 'musiweke mazoweya', '');
INSERT INTO maisha_mume VALUES (201, 51, 'a', 'نَ وٖيوٖ كْوَاكٗ نْيُمْبَانِ ', 'na wēwe kwāko nyumbāni', 'na wewe kwako nyumbani', '');
INSERT INTO maisha_mume VALUES (202, 51, 'b', ' سِئِفَانْيٖ مْنٗ دُونِ ', 'siifānye mno ḏūni', 'siifanye mno duni', '');
INSERT INTO maisha_mume VALUES (203, 51, 'c', 'كُوَ مْتُ وَسِتَانِ ', 'kuwa mṯu wasiṯāni', 'kuwa mtu wasitani', '');
INSERT INTO maisha_mume VALUES (204, 51, 'd', ' كْوَ مَپَامْبٗ كُيِتِيَ', 'kwa mapāmbo kuyiṯiya', 'kwa mapambo kuyitiya', '');
INSERT INTO maisha_mume VALUES (205, 52, 'a', 'مْتِلِيٖ مْكٖ وَاكٗ ', 'mṯiliye mke wāko', 'mtiliye mke wako', '');
INSERT INTO maisha_mume VALUES (206, 52, 'b', ' زِيتُ كْوَ كَدِيرِ يَاكٗ ', 'zı̄ṯu kwa kaḏı̄ri yāko', 'zitu kwa kadiri yako', '');
INSERT INTO maisha_mume VALUES (207, 52, 'c', 'إِكِيوَ نَفَاسِ إِيكٗ ', 'ikı̄wa nafāsi ı̄ko', 'ikiwa nafasi iko', '');
INSERT INTO maisha_mume VALUES (208, 52, 'd', ' سِبَانٖ أُكَزِوِيَ', 'sibāne ukaziwiya', 'sibane ukaziwiya', '');
INSERT INTO maisha_mume VALUES (209, 53, 'a', 'إِيوٖ مَرِدَادِ نْيُومْبَ ', 'ı̄we mariḏāḏi nyūmba', 'iwe maridadi nyumba', '');
INSERT INTO maisha_mume VALUES (210, 53, 'b', ' نَ كْوَ زِيتُ كُئِپَامْبَ ', 'na kwa zı̄ṯu kuipāmba', 'na kwa zitu kuipamba', '');
INSERT INTO maisha_mume VALUES (211, 53, 'c', 'فٖشٖينِ أَمْبَازٗ كْوَامْبَ ', 'feshēni ambāzo kwāmba', 'fesheni ambazo kwamba', '');
INSERT INTO maisha_mume VALUES (212, 53, 'd', ' كَامَ يٖيٖ هُتُمِيَ', 'kāma yeye huṯumiya', 'kama yeye hutumiya', '');
INSERT INTO maisha_mume VALUES (213, 54, 'a', 'مْتِلِيٖ كُولَ كِيتُ ', 'mṯiliye kūla kı̄ṯu', 'mtiliye kula kitu', '');
INSERT INTO maisha_mume VALUES (214, 54, 'b', ' أَاوٖ كَامَ وٖينْدٖ وَاتُ ', 'āwe kāma wēnḏe wāṯu', 'awe kama wende watu', '');
INSERT INTO maisha_mume VALUES (215, 54, 'c', 'سِمْوَمْبِيٖ مِيمِ كْوٖيتُ ', 'simwambiye mı̄mi kwēṯu', 'simwambiye mimi kwetu', '');
INSERT INTO maisha_mume VALUES (216, 54, 'd', ' هَايَ سِكُيَزٗوٖيَ', 'hāya sikuyazoweya', 'haya sikuyazoweya', '');
INSERT INTO maisha_mume VALUES (217, 55, 'a', 'أَكِيوَ مْبوَ مِنَزِينِ ', 'akı̄wa mbwa minazı̄ni', 'akiwa mbwa minazini', '');
INSERT INTO maisha_mume VALUES (218, 55, 'b', ' أُكِمُئٖيتَ مُيِينِ ', 'ukimuēṯa muyı̄ni', 'ukimueta muyini', '');
INSERT INTO maisha_mume VALUES (219, 55, 'c', 'سِمُوَاتٖ كُتَمَانِ ', 'simuwāṯe kuṯamāni', 'simuwate kutamani', '');
INSERT INTO maisha_mume VALUES (220, 55, 'd', ' زَ وٖينْدٖ كِشُهُدِيَ', 'za wēnḏe kishuhuḏiya', 'za wende kishuhudiya', '');
INSERT INTO maisha_mume VALUES (221, 56, 'a', 'أُكِيوَ أُمٖئَمُوَ ', 'ukı̄wa umeamuwa', 'ukiwa umeamuwa', '');
INSERT INTO maisha_mume VALUES (222, 56, 'b', ' مُيِينِ كُمْتُكُوَ ', 'muyı̄ni kumṯukuwa', 'muyini kumtukuwa', '');
INSERT INTO maisha_mume VALUES (223, 56, 'c', 'مْفَنْيِئٖ سَوَسَاوَ ', 'mfanyie sawasāwa', 'mfanyie sawasawa', '');
INSERT INTO maisha_mume VALUES (224, 56, 'd', ' سَامْبٖ سِ يَ كْوٖينُ هَايَ', 'sāmbe si ya kwēnu hāya', 'sambe si ya kwenu haya', '');
INSERT INTO maisha_mume VALUES (225, 57, 'a', 'سِمْوَمْبِيٖ زِيتُ هِيزِ ', 'simwambiye zı̄ṯu hı̄zi', 'simwambiye zitu hizi', '');
INSERT INTO maisha_mume VALUES (226, 57, 'b', ' كْوٖينُ كُپَاتَ هُوٖيزِ ', 'kwēnu kupāṯa huwēzi', 'kwenu kupata huwezi', '');
INSERT INTO maisha_mume VALUES (227, 57, 'c', 'كْوٖينُ نِ كَامَ كِزِيزِ ', 'kwēnu ni kāma kizı̄zi', 'kwenu ni kama kizizi', '');
INSERT INTO maisha_mume VALUES (228, 57, 'd', ' هُكُؤٗونَ مَزُلِيَ', 'hukuōna mazuliya', 'hukuona mazuliya', '');
INSERT INTO maisha_mume VALUES (229, 58, 'a', 'نَ چَكُولَ كَذَلِيكَ ', 'na chakūla kadhalı̄ka', 'na chakula kadhalika', '');
INSERT INTO maisha_mume VALUES (230, 58, 'b', ' مْپٖ أَنَچٗكِتَاكَ ', 'mpe anachokiṯāka', 'mpe anachokitaka', '');
INSERT INTO maisha_mume VALUES (231, 58, 'c', 'أَمْبَاچٗ تَفُرَهِيكَ ', 'ambācho ṯafurahı̄ka', 'ambacho tafurahika', '');
INSERT INTO maisha_mume VALUES (232, 58, 'd', ' مْوٖنْيٖيوٖ مٖكِزٗوٖيَ', 'mwenyēwe mekizoweya', 'mwenyewe mekizoweya', '');
INSERT INTO maisha_mume VALUES (233, 59, 'a', 'أَكِپٖينْدَ بِرِيَانِ ', 'akipēnḏa biriyāni', 'akipenda biriyani', '');
INSERT INTO maisha_mume VALUES (234, 59, 'b', ' مْپٖ مْوَانَ سِمْخِينِ ', 'mpe mwāna simẖı̄ni', 'mpe mwana simhini', '');
INSERT INTO maisha_mume VALUES (235, 59, 'c', 'مَأَدَامُ مْفُكٗونِ ', 'maaḏāmu mfukōni', 'maadamu mfukoni', '');
INSERT INTO maisha_mume VALUES (236, 59, 'd', ' أَكِيبَ إِمٖسَلِيَ', 'akı̄ba imesaliya', 'akiba imesaliya', '');
INSERT INTO maisha_mume VALUES (237, 60, 'a', 'سِيكُ أَكِتَاكَ سِيمَ ', 'sı̄ku akiṯāka sı̄ma', 'siku akitaka sima', '');
INSERT INTO maisha_mume VALUES (238, 60, 'b', ' سِمْوَمْبِيٖ إٖيوٖ مَامَ ', 'simwambiye ēwe māma', 'simwambiye ewe mama', '');
INSERT INTO maisha_mume VALUES (239, 60, 'c', 'كُولَ مْتٖئٖ لَزِيمَ ', 'kūla mṯee lazı̄ma', 'kula mtee lazima', '');
INSERT INTO maisha_mume VALUES (240, 60, 'd', ' مِيمِ سِتَاكِ أُذِيَ', 'mı̄mi siṯāki udhiya', 'mimi sitaki udhiya', '');
INSERT INTO maisha_mume VALUES (241, 61, 'a', 'مُؤَتِيَ نَ خِيَارِ ', 'muaṯiya na ẖiyāri', 'muatiya na hiyari', '');
INSERT INTO maisha_mume VALUES (242, 61, 'b', ' أَپٖنْدَاچٗ أَخِتَارِ ', 'apenḏācho aẖiṯāri', 'apendacho ahitari', '');
INSERT INTO maisha_mume VALUES (243, 61, 'c', 'سِمْكَازٖ سِ أُزُورِ ', 'simkāze si uzūri', 'simkaze si uzuri', '');
INSERT INTO maisha_mume VALUES (244, 61, 'd', ' مَشَرُوتِ كُمْوٖكٖيَ', 'masharūṯi kumwekeya', 'masharuti kumwekeya', '');
INSERT INTO maisha_mume VALUES (245, 62, 'a', 'إِيلَ كِلِيچٗ هَرَامُ ', 'ı̄la kilı̄cho harāmu', 'ila kilicho haramu', '');
INSERT INTO maisha_mume VALUES (246, 62, 'b', ' هِيلٗ سِكِيرِ فَهَامُ ', 'hı̄lo sikı̄ri fahāmu', 'hilo sikiri fahamu', '');
INSERT INTO maisha_mume VALUES (247, 62, 'c', 'هَرَامُ نَ كُولَ سُومُ ', 'harāmu na kūla sūmu', 'haramu na kula sumu', '');
INSERT INTO maisha_mume VALUES (248, 62, 'd', ' شَرِيَ إِمٖزِوِيَ', 'shariya imeziwiya', 'shariya imeziwiya', '');
INSERT INTO maisha_mume VALUES (249, 63, 'a', 'أَامَ كُهُوسُ مَڤَازِ ', 'āma kuhūsu mavāzi', 'ama kuhusu mavazi', '');
INSERT INTO maisha_mume VALUES (250, 63, 'b', ' يَ كَايٖ نَ سِيكُ هِيزِ ', 'ya kāye na sı̄ku hı̄zi', 'ya kaye na siku hizi', '');
INSERT INTO maisha_mume VALUES (251, 63, 'c', 'سِكِيرِ يَ كْوٖينْدَ وَازِ ', 'sikı̄ri ya kwēnḏa wāzi', 'sikiri ya kwenda wazi', '');
INSERT INTO maisha_mume VALUES (252, 63, 'd', ' مِشٗونٗ يَاسٗ نَ هَايَ', 'mishōno yāso na hāya', 'mishono yaso na haya', '');
INSERT INTO maisha_mume VALUES (253, 64, 'a', 'كْوٖيتُ سِيسِ إِسِلَامُ ', 'kwēṯu sı̄si isilāmu', 'kwetu sisi isilamu', '');
INSERT INTO maisha_mume VALUES (254, 64, 'b', ' مَڤَازِ كِيتُ مُهِيمُ ', 'mavāzi kı̄ṯu muhı̄mu', 'mavazi kitu muhimu', '');
INSERT INTO maisha_mume VALUES (255, 64, 'c', 'نَ سِيسِ يَتُلَزِيمُ ', 'na sı̄si yaṯulazı̄mu', 'na sisi yatulazimu', '');
INSERT INTO maisha_mume VALUES (256, 64, 'd', ' يَ زِپِيمٗ كْوَنْڠَلِيَ', 'ya zipı̄mo kwangaliya', 'ya zipimo kwangaliya', '');
INSERT INTO maisha_mume VALUES (257, 65, 'a', 'مْپٖ مْوٖنْيٖيوٖ نَفَاسِ ', 'mpe mwenyēwe nafāsi', 'mpe mwenyewe nafasi', '');
INSERT INTO maisha_mume VALUES (258, 65, 'b', ' يَ كُتٖؤُوَ لِبَاسِ ', 'ya kuṯeuwa libāsi', 'ya kuteuwa libasi', '');
INSERT INTO maisha_mume VALUES (259, 65, 'c', 'لَاكٗ وٖيوٖ نِ فُلُوسِ ', 'lāko wēwe ni fulūsi', 'lako wewe ni fulusi', '');
INSERT INTO maisha_mume VALUES (260, 65, 'd', ' تٗوَ زَ كُنُنُلِيَ', 'ṯowa za kununuliya', 'towa za kununuliya', '');
INSERT INTO maisha_mume VALUES (261, 66, 'a', 'مْپٖ يَاكٗ مَشَرُوتِ ', 'mpe yāko masharūṯi', 'mpe yako masharuti', '');
INSERT INTO maisha_mume VALUES (262, 66, 'b', ' زَ مْشٗونٗ كُذِبِيتِ ', 'za mshōno kudhibı̄ṯi', 'za mshono kudhibiti', '');
INSERT INTO maisha_mume VALUES (263, 66, 'c', 'أَكِخَلِيفُ مٖهِيتِ ', 'akiẖalı̄fu mehı̄ṯi', 'akihalifu mehiti', '');
INSERT INTO maisha_mume VALUES (264, 66, 'd', ' نِ هَاكِ كُمزِوِيَ', 'ni hāki kumziwiya', 'ni haki kumziwiya', '');
INSERT INTO maisha_mume VALUES (265, 67, 'a', 'أَامَ كِتَمْبَاءَ ڠَانِ ', 'āma kiṯambāa gāni', 'ama kitambaa gani', '');
INSERT INTO maisha_mume VALUES (266, 67, 'b', ' كِكُؤُلِيزَ مْوٖنْدَانِ ', 'kikuulı̄za mwenḏāni', 'kikuuliza mwendani', '');
INSERT INTO maisha_mume VALUES (267, 67, 'c', 'أَوْ نِ إِيپِ لَؤُونِ ', 'aw ni ı̄pi laūni', 'au ni ipi launi', '');
INSERT INTO maisha_mume VALUES (268, 67, 'd', ' وٖيوٖ وَئِفُرَهِيَ', 'wēwe waifurahiya', 'wewe waifurahiya', '');
INSERT INTO maisha_mume VALUES (269, 68, 'a', 'هَاپٗ مَكٗوسَ هَپَانَ ', 'hāpo makōsa hapāna', 'hapo makosa hapana', '');
INSERT INTO maisha_mume VALUES (270, 68, 'b', ' كِكُؤُلِيزَ كُنٖينَ ', 'kikuulı̄za kunēna', 'kikuuliza kunena', '');
INSERT INTO maisha_mume VALUES (271, 68, 'c', 'رَانْڠِ هِينِ نَئِٗونَ ', 'rāngi hı̄ni naiōna', 'rangi hini naiona', '');
INSERT INTO maisha_mume VALUES (272, 68, 'd', ' مَتٗونِ إِمٖنِنْڠِيَ', 'maṯōni imeningiya', 'matoni imeningiya', '');
INSERT INTO maisha_mume VALUES (273, 69, 'a', 'أَامَ كِيوَ نِ تَمَاشَ ', 'āma kı̄wa ni ṯamāsha', 'ama kiwa ni tamasha', '');
INSERT INTO maisha_mume VALUES (274, 69, 'b', ' وَتَاكَ مْفُرَهِيشَ ', 'waṯāka mfurahı̄sha', 'wataka mfurahisha', '');
INSERT INTO maisha_mume VALUES (275, 69, 'c', 'سِ هَاجَ كُمُؤٗنٖيشَ ', 'si hāja kumuonēsha', 'si haja kumuonesha', '');
INSERT INTO maisha_mume VALUES (276, 69, 'd', ' مَؤٗنِيٖ كْوَنْڠَلِيَ', 'maoniye kwangaliya', 'maoniye kwangaliya', '');
INSERT INTO maisha_mume VALUES (277, 70, 'a', 'كَاتَ أُتَكَچٗپٖينْدَ ', 'kāṯa uṯakachopēnḏa', 'kata utakachopenda', '');
INSERT INTO maisha_mume VALUES (278, 70, 'b', ' أُمْتُنُكِيٖ نْيٗونْدَ ', 'umṯunukiye nyōnḏa', 'umtunukiye nyonda', '');
INSERT INTO maisha_mume VALUES (279, 70, 'c', 'نَاوٖ هِيلِ أُكِتٖينْدَ ', 'nāwe hı̄li ukiṯēnḏa', 'nawe hili ukitenda', '');
INSERT INTO maisha_mume VALUES (280, 70, 'd', ' چٗچٗوتٖ تَكٗنْڠٗوٖيَ', 'chochōṯe ṯakongoweya', 'chochote takongoweya', '');
INSERT INTO maisha_mume VALUES (281, 71, 'a', 'مْكٖ وَاكٗ سِمْذِيكِ ', 'mke wāko simdhı̄ki', 'mke wako simdhiki', '');
INSERT INTO maisha_mume VALUES (282, 71, 'b', ' سِمْوَمْبِيٖ سِينَ هِيكِ ', 'simwambiye sı̄na hı̄ki', 'simwambiye sina hiki', '');
INSERT INTO maisha_mume VALUES (283, 71, 'c', 'نَ نْيِينْڠِ مْنٗ سِتَاكِ ', 'na nı̄ı̄ngi mno siṯāki', 'na nyingi mno sitaki', '');
INSERT INTO maisha_mume VALUES (284, 71, 'd', ' سِزٗوٖيٖ كُتُمِيَ', 'sizoweye kuṯumiya', 'sizoweye kutumiya', '');
INSERT INTO maisha_mume VALUES (285, 72, 'a', 'مْپٖ كْوَ يَاكٗ كَدِيرِ ', 'mpe kwa yāko kaḏı̄ri', 'mpe kwa yako kadiri', '');
INSERT INTO maisha_mume VALUES (286, 72, 'b', ' أُسِفَانْيٖ تَقتِيرِ ', 'usifānye ṯaqṯı̄ri', 'usifanye taqtiri', '');
INSERT INTO maisha_mume VALUES (287, 72, 'c', 'نِ توَبِيَ سِ نْزُورِ ', 'ni ṯwabiya si nzūri', 'ni twabiya si nzuri', '');
INSERT INTO maisha_mume VALUES (288, 72, 'd', ' أُبَخِيلِ كْوٖينْيٖ هَايَ', 'ubaẖı̄li kwēnye hāya', 'ubahili kwenye haya', '');
INSERT INTO maisha_mume VALUES (289, 73, 'a', 'نَ وٖيوٖ أُپَانْدٖ وَاكٗ ', 'na wēwe upānḏe wāko', 'na wewe upande wako', '');
INSERT INTO maisha_mume VALUES (290, 73, 'b', ' إِپَامْبٖ كِيَاسِ چَاكٗ ', 'ipāmbe kiyāsi chāko', 'ipambe kiyasi chako', '');
INSERT INTO maisha_mume VALUES (291, 73, 'c', 'بٗورَ أُسِڤُونْدٖ مِيكٗ ', 'bōra usivūnḏe mı̄ko', 'bora usivunde miko', '');
INSERT INTO maisha_mume VALUES (292, 73, 'd', ' خَتِيَانِ أُكَنْڠِيَ', 'ẖaṯiyāni ukangiya', 'hatiyani ukangiya', '');
INSERT INTO maisha_mume VALUES (293, 74, 'a', 'كُوَ مْتُ مَرِدَادِ ', 'kuwa mṯu mariḏāḏi', 'kuwa mtu maridadi', '');
INSERT INTO maisha_mume VALUES (294, 74, 'b', ' أُتُونْڠٖ يَاكٗ جَسَادِ ', 'uṯūnge yāko jasāḏi', 'utunge yako jasadi', '');
INSERT INTO maisha_mume VALUES (295, 74, 'c', 'هَاتَ كُفُكِيزَ أُودِ ', 'hāṯa kufukı̄za ūḏi', 'hata kufukiza udi', '');
INSERT INTO maisha_mume VALUES (296, 74, 'd', ' أُكِوٖيزَ سِ خَتِيَ', 'ukiwēza si ẖaṯiya', 'ukiweza si hatiya', '');
INSERT INTO maisha_mume VALUES (297, 75, 'a', 'إِوٖيكٖ أُوٖ نَذِيفُ ', 'iwēke uwe nadhı̄fu', 'iweke uwe nadhifu', '');
INSERT INTO maisha_mume VALUES (298, 75, 'b', ' سِؤٗنٖكَانٖ مْچَافُ ', 'sionekāne mchāfu', 'sionekane mchafu', '');
INSERT INTO maisha_mume VALUES (299, 75, 'c', 'هِينِ نِ سُوننَ تُكُوفُ ', 'hı̄ni ni sūnna ṯukūfu', 'hini ni sunna tukufu', '');
INSERT INTO maisha_mume VALUES (300, 75, 'd', ' يَ تُومْوَ وٖيتُ نَبِيَ', 'ya ṯūmwa wēṯu nabiya', 'ya tumwa wetu nabiya', '');
INSERT INTO maisha_mume VALUES (301, 76, 'a', 'كِيوَ نْيٖئٖ أُمٖوٖيكَ ', 'kı̄wa nyee umewēka', 'kiwa nyee umeweka', '');
INSERT INTO maisha_mume VALUES (302, 76, 'b', ' زَنْڠَلِيٖ كَذَلِيكَ ', 'zangaliye kadhalı̄ka', 'zangaliye kadhalika', '');
INSERT INTO maisha_mume VALUES (303, 76, 'c', 'سِوَاتٖ كُسٗكٗتٖيكَ ', 'siwāṯe kusokoṯēka', 'siwate kusokoteka', '');
INSERT INTO maisha_mume VALUES (304, 76, 'd', ' شُنْڠُرُورُ كُسَلِيَ', 'shungurūru kusaliya', 'shungururu kusaliya', '');
INSERT INTO maisha_mume VALUES (305, 77, 'a', 'إِكِيوَ وَفُرَهِيكَ ', 'ikı̄wa wafurahı̄ka', 'ikiwa wafurahika', '');
INSERT INTO maisha_mume VALUES (306, 77, 'b', ' مْكٖؤٗ أَكِپَمْبِيكَ ', 'mkeo akipambı̄ka', 'mkeo akipambika', '');
INSERT INTO maisha_mume VALUES (307, 77, 'c', 'يُوَ نَيٖيٖ هُتَاكَ ', 'yuwa nayeye huṯāka', 'yuwa nayeye hutaka', '');
INSERT INTO maisha_mume VALUES (308, 77, 'd', ' نَاوٖ أُوٖ هُڤُتِيَ', 'nāwe uwe huvuṯiya', 'nawe uwe huvutiya', '');
INSERT INTO maisha_mume VALUES (309, 78, 'a', 'هِيٗ نَايٖ نْدَاكٖ هَاكِ ', 'hiyo nāye nḏāke hāki', 'hiyo naye ndake haki', '');
INSERT INTO maisha_mume VALUES (310, 78, 'b', ' تَكُوَ هَفُرَهِيكِ ', 'ṯakuwa hafurahı̄ki', 'takuwa hafurahiki', '');
INSERT INTO maisha_mume VALUES (311, 78, 'c', 'إِوَاپٗ هُشُغُلِيكِ ', 'iwāpo hushuḡulı̄ki', 'iwapo hushughuliki', '');
INSERT INTO maisha_mume VALUES (312, 78, 'd', ' مُئِلِؤٗ كْوَنْڠَلِيَ', 'muilio kwangaliya', 'muilio kwangaliya', '');
INSERT INTO maisha_mume VALUES (313, 79, 'a', 'نَايٖ پِيَ هُتَمَانِ ', 'nāye piya huṯamāni', 'naye piya hutamani', '');
INSERT INTO maisha_mume VALUES (314, 79, 'b', ' أَكِكُؤٗونَ نْدِئَانِ ', 'akikuōna nḏiāni', 'akikuona ndiani', '');
INSERT INTO maisha_mume VALUES (315, 79, 'c', 'أُوٖ نَاوٖ هِسَبُونِ ', 'uwe nāwe hisabūni', 'uwe nawe hisabuni', '');
INSERT INTO maisha_mume VALUES (316, 79, 'd', ' پٖينْيٖ وَاتُ أُتَنْڠِيَ', 'pēnye wāṯu uṯangiya', 'penye watu utangiya', '');
INSERT INTO maisha_mume VALUES (317, 80, 'a', 'أَوْ كِيوَ يَاكٗ كَازِ ', 'aw kı̄wa yāko kāzi', 'au kiwa yako kazi', '');
INSERT INTO maisha_mume VALUES (318, 80, 'b', ' كُتٖينْدَ هَايَ هُوٖيزِ ', 'kuṯēnḏa hāya huwēzi', 'kutenda haya huwezi', '');
INSERT INTO maisha_mume VALUES (319, 80, 'c', 'وِسَاپٗ ڤُوَ مَڠٗوزِ ', 'wisāpo vuwa magōzi', 'wisapo vuwa magozi', '');
INSERT INTO maisha_mume VALUES (320, 80, 'd', ' سِڤَاءٖ كُتٖمْبٖلٖيَ', 'sivāe kuṯembeleya', 'sivae kutembeleya', '');
INSERT INTO maisha_mume VALUES (321, 81, 'a', 'سِتٖمْبٖئٖ نَ مَڠوَانْدَ ', 'siṯembee na magwānḏa', 'sitembee na magwanda', '');
INSERT INTO maisha_mume VALUES (322, 81, 'b', ' وَالَ هَرُوفُ زَ ن’ڠٗونْدَ ', 'wāla harūfu za n’gōnḏa', 'wala harufu za n’gonda', '');
INSERT INTO maisha_mume VALUES (323, 81, 'c', 'فَهَامُ وَاتُ هُتُونْدَ ', 'fahāmu wāṯu huṯūnḏa', 'fahamu watu hutunda', '');
INSERT INTO maisha_mume VALUES (324, 81, 'd', ' نَ أَكِلِينِ هُتِيَ', 'na akilı̄ni huṯiya', 'na akilini hutiya', '');
INSERT INTO maisha_mume VALUES (325, 82, 'a', 'نَ كَذَلِيكَ أُلِيمِ ', 'na kadhalı̄ka ulı̄mi', 'na kadhalika ulimi', '');
INSERT INTO maisha_mume VALUES (326, 82, 'b', ' إِپِينْدٖ أُوٖ هُسٖيمِ ', 'ipı̄nḏe uwe husēmi', 'ipinde uwe husemi', '');
INSERT INTO maisha_mume VALUES (327, 82, 'c', 'يَالٗ مَاوِ هُؤَتَامِ ', 'yālo māwi huaṯāmi', 'yalo mawi huatami', '');
INSERT INTO maisha_mume VALUES (328, 82, 'd', ' مْكٖ وَاكٗ كُمْوَمْبِيَ', 'mke wāko kumwambiya', 'mke wako kumwambiya', '');
INSERT INTO maisha_mume VALUES (329, 83, 'a', 'مْنٗ سَانَ جِتَهِيدِ ', 'mno sāna jiṯahı̄ḏi', 'mno sana jitahidi', '');
INSERT INTO maisha_mume VALUES (330, 83, 'b', ' كْوَ مَنٖينٗ مَرِدَادِ ', 'kwa manēno mariḏāḏi', 'kwa maneno maridadi', '');
INSERT INTO maisha_mume VALUES (331, 83, 'c', 'وَاكٖ هُتَاكَ زَئِيدِ ', 'wāke huṯāka zaı̄ḏi', 'wake hutaka zaidi', '');
INSERT INTO maisha_mume VALUES (332, 83, 'd', ' يَالٗ تَامُ كُسِكِيَ', 'yālo ṯāmu kusikiya', 'yalo tamu kusikiya', '');
INSERT INTO maisha_mume VALUES (333, 84, 'a', 'نٖينَ نَايٖ كْوَ ذِهَاكَ ', 'nēna nāye kwa dhihāka', 'nena naye kwa dhihaka', '');
INSERT INTO maisha_mume VALUES (334, 84, 'b', ' أَفُرَاهِ أَكِچٖيكَ ', 'afurāhi akichēka', 'afurahi akicheka', '');
INSERT INTO maisha_mume VALUES (335, 84, 'c', 'مْوَنَامْكٖ هُؤُذِيكَ ', 'mwanāmke huudhı̄ka', 'mwanamke huudhika', '');
INSERT INTO maisha_mume VALUES (336, 84, 'd', ' مْنٗ كُمْنْيَمَلِيَ', 'mno kumnyamaliya', 'mno kumnyamaliya', '');
INSERT INTO maisha_mume VALUES (337, 85, 'a', 'مْفَنْيِئٖ نَ أُبِيشِ ', 'mfanyie na ubı̄shi', 'mfanyie na ubishi', '');
INSERT INTO maisha_mume VALUES (338, 85, 'b', ' كْوَ مَنٖينٗ يَاسٗ غَاشِ ', 'kwa manēno yāso ḡāshi', 'kwa maneno yaso ghashi', '');
INSERT INTO maisha_mume VALUES (339, 85, 'c', 'نَ كْوَاكٖ كُوَ مْتٖيشِ ', 'na kwāke kuwa mṯēshi', 'na kwake kuwa mteshi', '');
INSERT INTO maisha_mume VALUES (340, 85, 'd', ' بِيلَ يَ كُپِنْدُكِيَ', 'bı̄la ya kupinḏukiya', 'bila ya kupindukiya', '');
INSERT INTO maisha_mume VALUES (341, 86, 'a', 'مْوَنَامْكٖ أَهِتَاجِ ', 'mwanāmke ahiṯāji', 'mwanamke ahitaji', '');
INSERT INTO maisha_mume VALUES (342, 86, 'b', ' كُڤِيشْوَ لَاسِ فَتَاجِ ', 'kuvı̄shwa lāsi faṯāji', 'kuvishwa lasi fataji', '');
INSERT INTO maisha_mume VALUES (343, 86, 'c', 'كْوَ هِيلٗ كُوَ مْپَاجِ ', 'kwa hı̄lo kuwa mpāji', 'kwa hilo kuwa mpaji', '');
INSERT INTO maisha_mume VALUES (344, 86, 'd', ' أُسِچٗوكٖ كُمْوَمْبِيَ', 'usichōke kumwambiya', 'usichoke kumwambiya', '');
INSERT INTO maisha_mume VALUES (345, 87, 'a', 'مْوَمْبِيٖ كُولَ نَامْنَ ', 'mwambiye kūla nāmna', 'mwambiye kula namna', '');
INSERT INTO maisha_mume VALUES (346, 87, 'b', ' سِيفَ زَاكٖ تٖينَ سَانَ ', 'sı̄fa zāke ṯēna sāna', 'sifa zake tena sana', '');
INSERT INTO maisha_mume VALUES (347, 87, 'c', 'مْفَانٗ أُكِمُؤٗونَ ', 'mfāno ukimuōna', 'mfano ukimuona', '');
INSERT INTO maisha_mume VALUES (348, 87, 'd', ' نْيٖئٖ مٖفُونْڠَ أُپِيَ', 'nyee mefūnga upiya', 'nyee mefunga upiya', '');
INSERT INTO maisha_mume VALUES (349, 88, 'a', 'كِيوَ مٖسُوكَ مِكِيلِ ', 'kı̄wa mesūka mikı̄li', 'kiwa mesuka mikili', '');
INSERT INTO maisha_mume VALUES (350, 88, 'b', ' أَوْ كُرُونِ مَوِيلِ ', 'aw kurūni mawı̄li', 'au kuruni mawili', '');
INSERT INTO maisha_mume VALUES (351, 88, 'c', 'سِلِوَاتٖ يَامْبٗ هِيلِ ', 'siliwāṯe yāmbo hı̄li', 'siliwate yambo hili', '');
INSERT INTO maisha_mume VALUES (352, 88, 'd', ' بِيلَ يَ كُلِتُمِيَ', 'bı̄la ya kuliṯumiya', 'bila ya kulitumiya', '');
INSERT INTO maisha_mume VALUES (353, 89, 'a', 'مْوَمْبِيٖ أُمٖپٖنْدٖيزَ ', 'mwambiye umepenḏēza', 'mwambiye umependeza', '');
INSERT INTO maisha_mume VALUES (354, 89, 'b', ' كْوَ نْيٖئٖ كُزِتٖنْڠٖيزَ ', 'kwa nyee kuziṯengēza', 'kwa nyee kuzitengeza', '');
INSERT INTO maisha_mume VALUES (355, 89, 'c', 'سِينَ بُودِ تَكُتُنْزَ ', 'sı̄na būḏi ṯakuṯunza', 'sina budi takutunza', '');
INSERT INTO maisha_mume VALUES (356, 89, 'd', ' أُمْشُومُ مَارَ مٗويَ', 'umshūmu māra mōya', 'umshumu mara moya', '');
INSERT INTO maisha_mume VALUES (357, 90, 'a', 'كِيوَ أَمٖتِيَ وَانْدَ ', 'kı̄wa ameṯiya wānḏa', 'kiwa ametiya wanda', '');
INSERT INTO maisha_mume VALUES (358, 90, 'b', ' مْوَمْبِيٖ مْنٗ نَپٖينْدَ ', 'mwambiye mno napēnḏa', 'mwambiye mno napenda', '');
INSERT INTO maisha_mume VALUES (359, 90, 'c', 'سِئِفَانْيٖ هُكُتُونْدَ ', 'siifānye hukuṯūnḏa', 'siifanye hukutunda', '');
INSERT INTO maisha_mume VALUES (360, 90, 'd', ' أَوْ هُكُمْوَنْڠَلِيَ', 'aw hukumwangaliya', 'au hukumwangaliya', '');
INSERT INTO maisha_mume VALUES (361, 91, 'a', 'كِجِفُونْڠَ أَسُمِينِ ', 'kijifūnga asumı̄ni', 'kijifunga asumini', '');
INSERT INTO maisha_mume VALUES (362, 91, 'b', ' أَوْ كِكُوبَ كِتوَانِ ', 'aw kikūba kiṯwāni', 'au kikuba kitwani', '');
INSERT INTO maisha_mume VALUES (363, 91, 'c', 'سِچٖلٖيوٖ كُبَئِينِ ', 'sichelēwe kubaı̄ni', 'sichelewe kubaini', '');
INSERT INTO maisha_mume VALUES (364, 91, 'd', ' نٖينٗ لٖيمَ كُمْوَمْبِيَ', 'nēno lēma kumwambiya', 'neno lema kumwambiya', '');
INSERT INTO maisha_mume VALUES (365, 92, 'a', 'يَأَنِ كُولَ وَكَاتِ ', 'yaani kūla wakāṯi', 'yaani kula wakati', '');
INSERT INTO maisha_mume VALUES (366, 92, 'b', ' مْوَمْبِيٖ كِيتُ كَتِيتِ ', 'mwambiye kı̄ṯu kaṯı̄ṯi', 'mwambiye kitu katiti', '');
INSERT INTO maisha_mume VALUES (367, 92, 'c', 'نَ كَامَ بُوبوِ سِكٖيتِ ', 'na kāma būbwi sikēṯi', 'na kama bubwi siketi', '');
INSERT INTO maisha_mume VALUES (368, 92, 'd', ' أَوْ دُوكٗ تٗونْڠٗ پِيَ', 'aw ḏūko ṯōngo piya', 'au duko tongo piya', '');
INSERT INTO maisha_mume VALUES (369, 93, 'a', 'پِيَ مْپٖ شُكُرَانِ ', 'piya mpe shukurāni', 'piya mpe shukurani', '');
INSERT INTO maisha_mume VALUES (370, 93, 'b', ' كْوَ شُغُولِ زَ نْيُمْبَانِ ', 'kwa shuḡūli za nyumbāni', 'kwa shughuli za nyumbani', '');
INSERT INTO maisha_mume VALUES (371, 93, 'c', 'مْفَانٗ پِلَاءُ هِينِ ', 'mfāno pilāu hı̄ni', 'mfano pilau hini', '');
INSERT INTO maisha_mume VALUES (372, 93, 'd', ' مْنٗ أُمٖئِپَتِيَ', 'mno umeipaṯiya', 'mno umeipatiya', '');
INSERT INTO maisha_mume VALUES (373, 94, 'a', 'أُسِچٗوكٖ كُمْسِيفُ ', 'usichōke kumsı̄fu', 'usichoke kumsifu', '');
INSERT INTO maisha_mume VALUES (374, 94, 'b', ' كْوَ نْيُومْبَ كُوَ نَذِيفُ ', 'kwa nyūmba kuwa nadhı̄fu', 'kwa nyumba kuwa nadhifu', '');
INSERT INTO maisha_mume VALUES (375, 94, 'c', 'نَ أُكِؤٗونَ أُچَافُ ', 'na ukiōna uchāfu', 'na ukiona uchafu', '');
INSERT INTO maisha_mume VALUES (376, 94, 'd', ' أُسِيوٖ تَمُؤُكِيَ', 'usı̄we ṯamuukiya', 'usiwe tamuukiya', '');
INSERT INTO maisha_mume VALUES (377, 95, 'a', 'نَ فَرَاغَ أُكِپَاتَ ', 'na farāḡa ukipāṯa', 'na faragha ukipata', '');
INSERT INTO maisha_mume VALUES (378, 95, 'b', ' مْبٖئٖ يَاكٗ كِكُپِيتَ ', 'mbee yāko kikupı̄ṯa', 'mbee yako kikupita', '');
INSERT INTO maisha_mume VALUES (379, 95, 'c', 'أُسِيوٖ أُتَمُؤَاتَ ', 'usı̄we uṯamuāṯa', 'usiwe utamuata', '');
INSERT INTO maisha_mume VALUES (380, 95, 'd', ' مْكٗونٗ كُمْپٖكٖيَ', 'mkōno kumpekeya', 'mkono kumpekeya', '');
INSERT INTO maisha_mume VALUES (381, 96, 'a', 'مْشِيكٖ وَاكٖ مْكٗونٗ ', 'mshı̄ke wāke mkōno', 'mshike wake mkono', '');
INSERT INTO maisha_mume VALUES (382, 96, 'b', ' وَالَ سِمْكَازٖ مْنٗ ', 'wāla simkāze mno', 'wala simkaze mno', '');
INSERT INTO maisha_mume VALUES (383, 96, 'c', 'هُتٗوشَ نُكُوتَ تَانٗ ', 'huṯōsha nukūṯa ṯāno', 'hutosha nukuta tano', '');
INSERT INTO maisha_mume VALUES (384, 96, 'd', ' أُجُومْبٖ كُمْپٖكٖيَ', 'ujūmbe kumpekeya', 'ujumbe kumpekeya', '');
INSERT INTO maisha_mume VALUES (385, 97, 'a', 'كِيوَ أَمٖكُكَبِيلِ ', 'kı̄wa amekukabı̄li', 'kiwa amekukabili', '');
INSERT INTO maisha_mume VALUES (386, 97, 'b', ' سِئِتِيٖ مَشُغُولِ ', 'siiṯiye mashuḡūli', 'siitiye mashughuli', '');
INSERT INTO maisha_mume VALUES (387, 97, 'c', 'إِنُوَ يَاكٗ مَوِيلِ ', 'inuwa yāko mawı̄li', 'inuwa yako mawili', '');
INSERT INTO maisha_mume VALUES (388, 97, 'd', ' نَ يَاكٖ كُمْوٖلٖكٖيَ', 'na yāke kumwelekeya', 'na yake kumwelekeya', '');
INSERT INTO maisha_mume VALUES (389, 98, 'a', 'وَاتَ مَاتٗ يَفُمَانٖ ', 'wāṯa māṯo yafumāne', 'wata mato yafumane', '');
INSERT INTO maisha_mume VALUES (390, 98, 'b', ' كَتِيتِ يَنْڠَلِيَانٖ ', 'kaṯı̄ṯi yangaliyāne', 'katiti yangaliyane', '');
INSERT INTO maisha_mume VALUES (391, 98, 'c', 'كْوَ أُلِيمِ أُسِنٖينٖ ', 'kwa ulı̄mi usinēne', 'kwa ulimi usinene', '');
INSERT INTO maisha_mume VALUES (392, 98, 'd', ' لُوغَ يَ مَاتٗ تُمِيَ', 'lūḡa ya māṯo ṯumiya', 'lugha ya mato tumiya', '');
INSERT INTO maisha_mume VALUES (393, 99, 'a', 'مَاتٗ يَانَ لُوغَ تَامُ ', 'māṯo yāna lūḡa ṯāmu', 'mato yana lugha tamu', '');
INSERT INTO maisha_mume VALUES (394, 99, 'b', ' هُنٖينَ مُكَفَهَامُ ', 'hunēna mukafahāmu', 'hunena mukafahamu', '');
INSERT INTO maisha_mume VALUES (395, 99, 'c', 'مَاتٗ كِؤُونْڠٗ مُهِيمُ ', 'māṯo kiūngo muhı̄mu', 'mato kiungo muhimu', '');
INSERT INTO maisha_mume VALUES (396, 99, 'd', ' چَ هُوبَ كُپَلِلِيَ', 'cha hūba kupaliliya', 'cha huba kupaliliya', '');
INSERT INTO maisha_mume VALUES (397, 100, 'a', 'مَاتٗ يَانَ كُؤُ سِيرِ ', 'māṯo yāna kuu sı̄ri', 'mato yana kuu siri', '');
INSERT INTO maisha_mume VALUES (398, 100, 'b', ' نَ مَارَ هُكُؤَذِيرِ ', 'na māra hukuadhı̄ri', 'na mara hukuadhiri', '');
INSERT INTO maisha_mume VALUES (399, 100, 'c', 'كَكُتٗلٖيَ خَبَارِ ', 'kakuṯoleya ẖabāri', 'kakutoleya habari', '');
INSERT INTO maisha_mume VALUES (400, 100, 'd', ' مٗيٗونِ أُلٗزِوِيَ', 'moyōni uloziwiya', 'moyoni uloziwiya', '');
INSERT INTO maisha_mume VALUES (401, 101, 'a', 'هِيلِ نِمٖنٖينَ سَانَ ', 'hı̄li nimenēna sāna', 'hili nimenena sana', '');
INSERT INTO maisha_mume VALUES (402, 101, 'b', ' نِ مُهِيمُ نَلِؤٗونَ ', 'ni muhı̄mu naliōna', 'ni muhimu naliona', '');
INSERT INTO maisha_mume VALUES (403, 101, 'c', 'وَالَ غَرَامَ هَلِينَ ', 'wāla ḡarāma halı̄na', 'wala gharama halina', '');
INSERT INTO maisha_mume VALUES (404, 101, 'd', ' نَ سِ كَازِ كُتُمِيَ', 'na si kāzi kuṯumiya', 'na si kazi kutumiya', '');
INSERT INTO maisha_mume VALUES (405, 102, 'a', 'وَلَكِينِ سِ سَهَالِ ', 'walakı̄ni si sahāli', 'walakini si sahali', '');
INSERT INTO maisha_mume VALUES (406, 102, 'b', ' كْوَ كُلَّ أَالٗ مْڤُولِ ', 'kwa kulla ālo mvūli', 'kwa kulla alo mvuli', '');
INSERT INTO maisha_mume VALUES (407, 102, 'c', 'كْوَ وَنْڠِينٖ نِ ثَكِيلِ ', 'kwa wangı̄ne ni thakı̄li', 'kwa wangine ni thakili', '');
INSERT INTO maisha_mume VALUES (408, 102, 'd', ' كَاتُ هَوَكُزٗوٖيَ', 'kāṯu hawakuzoweya', 'katu hawakuzoweya', '');
INSERT INTO maisha_mume VALUES (409, 103, 'a', 'مْبِينُ هِيزِ إِزٗئٖيزٖ ', 'mbı̄nu hı̄zi izoēze', 'mbinu hizi izoeze', '');
INSERT INTO maisha_mume VALUES (410, 103, 'b', ' زِتُمِيٖ سِزِپُوزٖ ', 'ziṯumiye sizipūze', 'zitumiye sizipuze', '');
INSERT INTO maisha_mume VALUES (411, 103, 'c', 'أُتَؤٗونَ فَئِدَازٖ ', 'uṯaōna faiḏāze', 'utaona faidaze', '');
INSERT INTO maisha_mume VALUES (412, 103, 'd', ' مْوٖنْيٖيوٖ تَشُهُدِيَ', 'mwenyēwe ṯashuhuḏiya', 'mwenyewe tashuhudiya', '');
INSERT INTO maisha_mume VALUES (413, 104, 'a', 'مَامْبٗ هَيَانَ غَرَامَ ', 'māmbo hayāna ḡarāma', 'mambo hayana gharama', '');
INSERT INTO maisha_mume VALUES (414, 104, 'b', ' كْوَنْڠَلِيَ نَ كُسٖيمَ ', 'kwangaliya na kusēma', 'kwangaliya na kusema', '');
INSERT INTO maisha_mume VALUES (415, 104, 'c', 'نَ مْتُ مْكٖ دَئِيمَ ', 'na mṯu mke ḏaı̄ma', 'na mtu mke daima', '');
INSERT INTO maisha_mume VALUES (416, 104, 'd', ' كَامَ هَايَ هُزٖنْڠٖيَ', 'kāma hāya huzengeya', 'kama haya huzengeya', '');
INSERT INTO maisha_mume VALUES (417, 105, 'a', 'مْكٖ هُوَ أُونَ مْوَاكٗ ', 'mke huwa ūna mwāko', 'mke huwa una mwako', '');
INSERT INTO maisha_mume VALUES (418, 105, 'b', ' كُيُوَ مَؤٗونِ يَاكٗ ', 'kuyuwa maōni yāko', 'kuyuwa maoni yako', '');
INSERT INTO maisha_mume VALUES (419, 105, 'c', 'كُسِكِيَ نٖينٗ لَاكٗ ', 'kusikiya nēno lāko', 'kusikiya neno lako', '');
INSERT INTO maisha_mume VALUES (420, 105, 'd', ' نِ هَاجَ أَهِتَجِيَ', 'ni hāja ahiṯajiya', 'ni haja ahitajiya', '');
INSERT INTO maisha_mume VALUES (421, 106, 'a', 'يُوَ هَتٗشٖيكِ مْكٖ ', 'yuwa haṯoshēki mke', 'yuwa hatosheki mke', '');
INSERT INTO maisha_mume VALUES (422, 106, 'b', ' كُڤَاءَ نَ كُولَ كْوَاكٖ ', 'kuvāa na kūla kwāke', 'kuvaa na kula kwake', '');
INSERT INTO maisha_mume VALUES (423, 106, 'c', 'أَتَاكَ نَ أُوتُ وَاكٖ ', 'aṯāka na ūṯu wāke', 'ataka na utu wake', '');
INSERT INTO maisha_mume VALUES (424, 106, 'd', ' نَ هِشِيمَ كُمْوٖكٖيَ', 'na hishı̄ma kumwekeya', 'na hishima kumwekeya', '');
INSERT INTO maisha_mume VALUES (425, 107, 'a', 'كُولَ أَالٗ مْتُ مْكٖ ', 'kūla ālo mṯu mke', 'kula alo mtu mke', '');
INSERT INTO maisha_mume VALUES (426, 107, 'b', ' هِيلِ نْدِيلٗ أُومْبٗ لَاكٖ ', 'hı̄li nḏı̄lo ūmbo lāke', 'hili ndilo umbo lake', '');
INSERT INTO maisha_mume VALUES (427, 107, 'c', 'لَ مَپَامْبٗ هِيلٗ كْوَاكٖ ', 'la mapāmbo hı̄lo kwāke', 'la mapambo hilo kwake', '');
INSERT INTO maisha_mume VALUES (428, 107, 'd', ' نِ يَامْبٗ مٖيَزٗوٖيَ', 'ni yāmbo meyazoweya', 'ni yambo meyazoweya', '');
INSERT INTO maisha_mume VALUES (429, 108, 'a', 'هُتٗكٖيَ كْوَ نَدِيرَ ', 'huṯokeya kwa naḏı̄ra', 'hutokeya kwa nadira', '');
INSERT INTO maisha_mume VALUES (430, 108, 'b', ' كْوَ هِيلِ وَسٗئِكٖيرَ ', 'kwa hı̄li wasoikēra', 'kwa hili wasoikera', '');
INSERT INTO maisha_mume VALUES (431, 108, 'c', 'هِينَ هَپٖينْدِ كُچٗورَ ', 'hı̄na hapēnḏi kuchōra', 'hina hapendi kuchora', '');
INSERT INTO maisha_mume VALUES (432, 108, 'd', ' نَ وَالَ وَانْدَ كُتِيَ', 'na wāla wānḏa kuṯiya', 'na wala wanda kutiya', '');
INSERT INTO maisha_mume VALUES (433, 109, 'a', 'هَانَ هَايٗ مَشُغُولِ ', 'hāna hāyo mashuḡūli', 'hana hayo mashughuli', '');
INSERT INTO maisha_mume VALUES (434, 109, 'b', ' نِ كَامَ مْتُ مْڤُولِ ', 'ni kāma mṯu mvūli', 'ni kama mtu mvuli', '');
INSERT INTO maisha_mume VALUES (435, 109, 'c', 'يَ أُرٖيمْبٗ هَيَجَالِ ', 'ya urēmbo hayajāli', 'ya urembo hayajali', '');
INSERT INTO maisha_mume VALUES (436, 109, 'd', ' وَالَ هَكُيَزٗوٖيَ', 'wāla hakuyazoweya', 'wala hakuyazoweya', '');
INSERT INTO maisha_mume VALUES (437, 110, 'a', 'كِيوَ نَاوٖ وَاكٗ مْكٖ ', 'kı̄wa nāwe wāko mke', 'kiwa nawe wako mke', '');
INSERT INTO maisha_mume VALUES (438, 110, 'b', ' هِيلٗ سِ شُغُولِ يَاكٖ ', 'hı̄lo si shuḡūli yāke', 'hilo si shughuli yake', '');
INSERT INTO maisha_mume VALUES (439, 110, 'c', 'بَاسِ نَاوٖ سِسُمْبُوكٖ ', 'bāsi nāwe sisumbūke', 'basi nawe sisumbuke', '');
INSERT INTO maisha_mume VALUES (440, 110, 'd', ' مَشُغُولِ كُيِتِيَ', 'mashuḡūli kuyiṯiya', 'mashughuli kuyitiya', '');
INSERT INTO maisha_mume VALUES (441, 111, 'a', 'نَ لٖنْڠِينٖ لَ ذَرُورَ ', 'na lengı̄ne la dharūra', 'na lengine la dharura', '');
INSERT INTO maisha_mume VALUES (442, 111, 'b', ' إِفُونْدٖ مْنٗ سُبِيرَ ', 'ifūnḏe mno subı̄ra', 'ifunde mno subira', '');
INSERT INTO maisha_mume VALUES (443, 111, 'c', 'كُونَ مَامْبٗ يَ كُكٖيرَ ', 'kūna māmbo ya kukēra', 'kuna mambo ya kukera', '');
INSERT INTO maisha_mume VALUES (444, 111, 'd', ' مَئِشَانِ يَتٗكٖيَ', 'maishāni yaṯokeya', 'maishani yatokeya', '');
INSERT INTO maisha_mume VALUES (445, 112, 'a', 'هَكُونَ مَئِيشَ تَامُ ', 'hakūna maı̄sha ṯāmu', 'hakuna maisha tamu', '');
INSERT INTO maisha_mume VALUES (446, 112, 'b', ' يٖينْيٖ رَاهَ يَ كُدُومُ ', 'yēnye rāha ya kuḏūmu', 'yenye raha ya kudumu', '');
INSERT INTO maisha_mume VALUES (447, 112, 'c', 'مَامْبٗ تَكُوَ مَڠُومُ ', 'māmbo ṯakuwa magūmu', 'mambo takuwa magumu', '');
INSERT INTO maisha_mume VALUES (448, 112, 'd', ' كِيوَ هُتٗڤُمِلِيَ', 'kı̄wa huṯovumiliya', 'kiwa hutovumiliya', '');
INSERT INTO maisha_mume VALUES (449, 113, 'a', 'كُونَ تَامُ نَ أُتُونْڠُ ', 'kūna ṯāmu na uṯūngu', 'kuna tamu na utungu', '');
INSERT INTO maisha_mume VALUES (450, 113, 'b', ' كْوٖينْيٖ هُؤُ أُلِمْوٖينْڠُ ', 'kwēnye huu ulimwēngu', 'kwenye huu ulimwengu', '');
INSERT INTO maisha_mume VALUES (451, 113, 'c', 'يَلِئَانْدَ هَايَ تَانْڠُ ', 'yaliānḏa hāya ṯāngu', 'yalianda haya tangu', '');
INSERT INTO maisha_mume VALUES (452, 113, 'd', ' يَلِپٗؤُمْبوَ دُنِيَ', 'yalipoumbwa ḏuniya', 'yalipoumbwa duniya', '');
INSERT INTO maisha_mume VALUES (453, 114, 'a', 'هِينِ نْدِينٗ كَوَئِيدَ ', 'hı̄ni nḏı̄no kawaı̄ḏa', 'hini ndino kawaida', '');
INSERT INTO maisha_mume VALUES (454, 114, 'b', ' كُونَ رَاهَ كُونَ شِيدَ ', 'kūna rāha kūna shı̄ḏa', 'kuna raha kuna shida', '');
INSERT INTO maisha_mume VALUES (455, 114, 'c', 'نْدِيٗ يَ مَئِيشَ أَادَ ', 'nḏiyo ya maı̄sha āḏa', 'ndiyo ya maisha ada', '');
INSERT INTO maisha_mume VALUES (456, 114, 'd', ' نَ وَاتُ هُوَپِتِيَ', 'na wāṯu huwapiṯiya', 'na watu huwapitiya', '');
INSERT INTO maisha_mume VALUES (457, 115, 'a', 'بَاسِ نَ كْوَاكٗ نْيُمْبَانِ ', 'bāsi na kwāko nyumbāni', 'basi na kwako nyumbani', '');
INSERT INTO maisha_mume VALUES (458, 115, 'b', ' سِؤٗوتٖ كُوَ پٖپٗونِ ', 'siōṯe kuwa pepōni', 'siote kuwa peponi', '');
INSERT INTO maisha_mume VALUES (459, 115, 'c', 'مَأَدَامُ هَاپٗ نْدَانِ ', 'maaḏāmu hāpo nḏāni', 'maadamu hapo ndani', '');
INSERT INTO maisha_mume VALUES (460, 115, 'd', ' سِ وٖيوٖ پوٖيكٖ ممٗويَ', 'si wēwe pwēke mmōya', 'si wewe pweke mmoya', '');
INSERT INTO maisha_mume VALUES (461, 116, 'a', 'مْكٖ وَاكٗ سِ كِڤُولِ ', 'mke wāko si kivūli', 'mke wako si kivuli', '');
INSERT INTO maisha_mume VALUES (462, 116, 'b', ' بَالِ نِ مْتُ وَ پِيلِ ', 'bāli ni mṯu wa pı̄li', 'bali ni mtu wa pili', '');
INSERT INTO maisha_mume VALUES (463, 116, 'c', 'أُونَ نَ يَاكٖ أَكِيلِ ', 'ūna na yāke akı̄li', 'una na yake akili', '');
INSERT INTO maisha_mume VALUES (464, 116, 'd', ' أُونَ نَ أَلٗزٗوٖيَ', 'ūna na alozoweya', 'una na alozoweya', '');
INSERT INTO maisha_mume VALUES (465, 117, 'a', 'أُسِتَاكٖ كْوَ لَزِيمَ ', 'usiṯāke kwa lazı̄ma', 'usitake kwa lazima', '');
INSERT INTO maisha_mume VALUES (466, 117, 'b', ' كُولَ يَامْبٗ أُكِسٖيمَ ', 'kūla yāmbo ukisēma', 'kula yambo ukisema', '');
INSERT INTO maisha_mume VALUES (467, 117, 'c', 'أَلِكُبَالِ دَئِيمَ ', 'alikubāli ḏaı̄ma', 'alikubali daima', '');
INSERT INTO maisha_mume VALUES (468, 117, 'd', ' پَاپٗ هَاپٗ كُرِذِيَ', 'pāpo hāpo kuridhiya', 'papo hapo kuridhiya', '');
INSERT INTO maisha_mume VALUES (469, 118, 'a', 'مُؤَتِيٖ مَكَوَانْدَ ', 'muaṯiye makawānḏa', 'muatiye makawanda', '');
INSERT INTO maisha_mume VALUES (470, 118, 'b', ' أَنٖينٖ أَنٗلِپٖينْدَ ', 'anēne anolipēnḏa', 'anene anolipenda', '');
INSERT INTO maisha_mume VALUES (471, 118, 'c', 'نَ كْوَ هُوجَ كِكُشِينْدَ ', 'na kwa hūja kikushı̄nḏa', 'na kwa huja kikushinda', '');
INSERT INTO maisha_mume VALUES (472, 118, 'd', ' سِيوٖ ڤِيتٗ تَتُمِيَ', 'sı̄we vı̄ṯo ṯaṯumiya', 'siwe vito tatumiya', '');
INSERT INTO maisha_mume VALUES (473, 119, 'a', 'أُكِؤٗونَ سَاوَ نْدَاكٖ ', 'ukiōna sāwa nḏāke', 'ukiona sawa ndake', '');
INSERT INTO maisha_mume VALUES (474, 119, 'b', ' إِكُبَالِ أُرِذِيكٖ ', 'ikubāli uridhı̄ke', 'ikubali uridhike', '');
INSERT INTO maisha_mume VALUES (475, 119, 'c', 'نَ وَالَ سِكَسِرِيكٖ ', 'na wāla sikasirı̄ke', 'na wala sikasirike', '');
INSERT INTO maisha_mume VALUES (476, 119, 'd', ' مْدٗومٗ كُمْفُنْڠِيَ', 'mḏōmo kumfungiya', 'mdomo kumfungiya', '');
INSERT INTO maisha_mume VALUES (477, 120, 'a', 'كُبَالِ مٖزٗلِنٖينَ ', 'kubāli mezolinēna', 'kubali mezolinena', '');
INSERT INTO maisha_mume VALUES (478, 120, 'b', ' أُمُؤُونْڠٖ تٖينَ سَانَ ', 'umuūnge ṯēna sāna', 'umuunge tena sana', '');
INSERT INTO maisha_mume VALUES (479, 120, 'c', 'نَ فَئِيدَ أُتَؤٗونَ ', 'na faı̄ḏa uṯaōna', 'na faida utaona', '');
INSERT INTO maisha_mume VALUES (480, 120, 'd', ' مَامْبٗ تَأَنْدَامَ نْدِيَ', 'māmbo ṯaanḏāma nḏiya', 'mambo taandama ndiya', '');
INSERT INTO maisha_mume VALUES (481, 121, 'a', 'نَ يٖيٖ كِكَسِرِيكَ ', 'na yeye kikasirı̄ka', 'na yeye kikasirika', '');
INSERT INTO maisha_mume VALUES (482, 121, 'b', ' وٖيوٖ أُسِپَانْدٖ شُوكَ ', 'wēwe usipānḏe shūka', 'wewe usipande shuka', '');
INSERT INTO maisha_mume VALUES (483, 121, 'c', 'نَ أَكِزِيدِ أٗنْدٗوكَ ', 'na akizı̄ḏi onḏōka', 'na akizidi ondoka', '');
INSERT INTO maisha_mume VALUES (484, 121, 'd', ' كِشِنْدوَ كُڤُمِيليَ', 'kishinḏwa kuvumı̄lya', 'kishindwa kuvumilya', '');
INSERT INTO maisha_mume VALUES (485, 122, 'a', 'مْوَنَانْڠُ مٗوتٗ تِزَامَ ', 'mwanāngu mōṯo ṯizāma', 'mwanangu moto tizama', '');
INSERT INTO maisha_mume VALUES (486, 122, 'b', ' هَؤُزِنْيِيكِ دَئِيمَ ', 'hauzinı̄ı̄ki ḏaı̄ma', 'hauzinyiki daima', '');
INSERT INTO maisha_mume VALUES (487, 122, 'c', 'بَالِ هُزِيدِ رٗرٗومَ ', 'bāli huzı̄ḏi rorōma', 'bali huzidi roroma', '');
INSERT INTO maisha_mume VALUES (488, 122, 'd', ' كُونِ أُكِؤُتِلِيَ', 'kūni ukiuṯiliya', 'kuni ukiutiliya', '');
INSERT INTO maisha_mume VALUES (489, 123, 'a', 'مٗوتٗ كِتٗتِيوَ كُونِ ', 'mōṯo kiṯoṯı̄wa kūni', 'moto kitotiwa kuni', '');
INSERT INTO maisha_mume VALUES (490, 123, 'b', ' أُتَزِنْيِيكَ مْوٖنْدَانِ ', 'uṯazinı̄ı̄ka mwenḏāni', 'utazinyika mwendani', '');
INSERT INTO maisha_mume VALUES (491, 123, 'c', 'نَ أُتٖيسِ وَ نْيُمْبَانِ ', 'na uṯēsi wa nyumbāni', 'na utesi wa nyumbani', '');
INSERT INTO maisha_mume VALUES (492, 123, 'd', ' كُنِيزٖ نِ نٖينٗ بَايَ', 'kunı̄ze ni nēno bāya', 'kunize ni neno baya', '');
INSERT INTO maisha_mume VALUES (493, 124, 'a', 'زِوِيَ وَاكٗ أُلِيمِ ', 'ziwiya wāko ulı̄mi', 'ziwiya wako ulimi', '');
INSERT INTO maisha_mume VALUES (494, 124, 'b', ' سِيوٖ نَ مْوِينْڠِ أُسٖيمِ ', 'sı̄we na mwı̄ngi usēmi', 'siwe na mwingi usemi', '');
INSERT INTO maisha_mume VALUES (495, 124, 'c', 'أُكِنٖينَ هَيَكٗومِ ', 'ukinēna hayakōmi', 'ukinena hayakomi', '');
INSERT INTO maisha_mume VALUES (496, 124, 'd', ' مَنٖينٗ هُئٖنْدٖلٖيَ', 'manēno huenḏeleya', 'maneno huendeleya', '');
INSERT INTO maisha_mume VALUES (497, 125, 'a', 'زِيدِ نَ كُئِكُكُوسَ ', 'zı̄ḏi na kuikukūsa', 'zidi na kuikukusa', '');
INSERT INTO maisha_mume VALUES (498, 125, 'b', ' أُلِيمِ كُتٗتَپَاسَ ', 'ulı̄mi kuṯoṯapāsa', 'ulimi kutotapasa', '');
INSERT INTO maisha_mume VALUES (686, 172, 'b', ' أُوَاتٖ كُملَؤُومُ ', 'uwāṯe kumlaūmu', 'uwate kumlaumu', '');
INSERT INTO maisha_mume VALUES (499, 125, 'c', 'زِيتَ زٖينُ زِتَكْوِيسَ ', 'zı̄ṯa zēnu ziṯakwı̄sa', 'zita zenu zitakwisa', '');
INSERT INTO maisha_mume VALUES (500, 125, 'd', ' مٗوتٗ مَايِ هُتَتِيَ', 'mōṯo māyi huṯaṯiya', 'moto mayi hutatiya', '');
INSERT INTO maisha_mume VALUES (501, 126, 'a', 'نَ أَالٗ مُومٖ هٗدَارِ ', 'na ālo mūme hoḏāri', 'na alo mume hodari', '');
INSERT INTO maisha_mume VALUES (502, 126, 'b', ' كِشِنْدوَ يٖيٖ هُكِيرِ ', 'kishinḏwa yeye hukı̄ri', 'kishindwa yeye hukiri', '');
INSERT INTO maisha_mume VALUES (503, 126, 'c', 'إِيلِ كْوٖپُوكَ دٗثَارِ ', 'ı̄li kwepūka ḏothāri', 'ili kwepuka dothari', '');
INSERT INTO maisha_mume VALUES (504, 126, 'd', ' يَ أُوفَ سِينِ كُتِيَ', 'ya ūfa sı̄ni kuṯiya', 'ya ufa sini kutiya', '');
INSERT INTO maisha_mume VALUES (505, 127, 'a', 'سِينِ إِكِنْڠِيَ أُوفَ ', 'sı̄ni ikingiya ūfa', 'sini ikingiya ufa', '');
INSERT INTO maisha_mume VALUES (506, 127, 'b', ' هُپُنْڠُوَ زَاكٖ سِيفَ ', 'hupunguwa zāke sı̄fa', 'hupunguwa zake sifa', '');
INSERT INTO maisha_mume VALUES (507, 127, 'c', 'نَ مَهَابَ نَايٗ هُوفَ ', 'na mahāba nāyo hūfa', 'na mahaba nayo hufa', '');
INSERT INTO maisha_mume VALUES (508, 127, 'd', ' أُكِيوَ مْوِينْڠِ أُذِيَ', 'ukı̄wa mwı̄ngi udhiya', 'ukiwa mwingi udhiya', '');
INSERT INTO maisha_mume VALUES (509, 128, 'a', 'هَكُونَ كَاتُ هَكُونَ ', 'hakūna kāṯu hakūna', 'hakuna katu hakuna', '');
INSERT INTO maisha_mume VALUES (510, 128, 'b', ' كِؤُومْبٖ كَمِيلِ سَانَ ', 'kiūmbe kamı̄li sāna', 'kiumbe kamili sana', '');
INSERT INTO maisha_mume VALUES (511, 128, 'c', 'نَ وَاتُ هُتُكُوَانَ ', 'na wāṯu huṯukuwāna', 'na watu hutukuwana', '');
INSERT INTO maisha_mume VALUES (512, 128, 'd', ' نْدِيپٗ وَئِيشِ پَمٗويَ', 'nḏı̄po waı̄shi pamōya', 'ndipo waishi pamoya', '');
INSERT INTO maisha_mume VALUES (513, 129, 'a', 'كِيوَ لَزِيمَ وَتَاكَ ', 'kı̄wa lazı̄ma waṯāka', 'kiwa lazima wataka', '');
INSERT INTO maisha_mume VALUES (514, 129, 'b', ' مْكٖ أَلٗكَمِلِيكَ ', 'mke alokamilı̄ka', 'mke alokamilika', '');
INSERT INTO maisha_mume VALUES (515, 129, 'c', 'جُوَ نَ وٖيوٖ هَكِيكَ ', 'juwa na wēwe hakı̄ka', 'juwa na wewe hakika', '');
INSERT INTO maisha_mume VALUES (516, 129, 'd', ' تَكُبِيدِ كُتِمِيَ', 'ṯakubı̄ḏi kuṯimiya', 'takubidi kutimiya', '');
INSERT INTO maisha_mume VALUES (517, 130, 'a', 'أَاسٗ تَاءَ نِ تٗمٗومٗ ', 'āso ṯāa ni ṯomōmo', 'aso taa ni tomomo', '');
INSERT INTO maisha_mume VALUES (518, 130, 'b', ' هُونُ نِ كْوٖيلِ مْسٖيمٗ ', 'hūnu ni kwēli msēmo', 'hunu ni kweli msemo', '');
INSERT INTO maisha_mume VALUES (519, 130, 'c', 'وَاتُ هُپِتَانَ زِيمٗ ', 'wāṯu hupiṯāna zı̄mo', 'watu hupitana zimo', '');
INSERT INTO maisha_mume VALUES (520, 130, 'd', ' هُزِدِيَانَ توَبِيَ', 'huziḏiyāna ṯwabiya', 'huzidiyana twabiya', '');
INSERT INTO maisha_mume VALUES (521, 131, 'a', 'مْكٖ كِكُكَسِرِيشَ ', 'mke kikukasirı̄sha', 'mke kikukasirisha', '');
INSERT INTO maisha_mume VALUES (522, 131, 'b', ' جَرِيبُ كُيِكُمْبُوشَ ', 'jarı̄bu kuyikumbūsha', 'jaribu kuyikumbusha', '');
INSERT INTO maisha_mume VALUES (523, 131, 'c', 'پِيَ هُكُفُرَهِيشَ ', 'piya hukufurahı̄sha', 'piya hukufurahisha', '');
INSERT INTO maisha_mume VALUES (524, 131, 'd', ' مٖزَانِ هِينِ تُمِيَ', 'mezāni hı̄ni ṯumiya', 'mezani hini tumiya', '');
INSERT INTO maisha_mume VALUES (525, 132, 'a', 'أُسِيَؤٗونٖ يَ جٗونْڠٗ ', 'usiyaōne ya jōngo', 'usiyaone ya jongo', '');
INSERT INTO maisha_mume VALUES (526, 132, 'b', ' كْوَ مٖيمَ أُكَاوَ تٗونْڠٗ ', 'kwa mēma ukāwa ṯōngo', 'kwa mema ukawa tongo', '');
INSERT INTO maisha_mume VALUES (527, 132, 'c', 'سَنْڠَلِيٖ پٖينْيٖ پٖينْڠٗ ', 'sangaliye pēnye pēngo', 'sangaliye penye pengo', '');
INSERT INTO maisha_mume VALUES (528, 132, 'd', ' كَوَاتَ پَلٗتِمِيَ', 'kawāṯa paloṯimiya', 'kawata palotimiya', '');
INSERT INTO maisha_mume VALUES (529, 133, 'a', 'هُونَ بُودِ كُپُؤُوزَ ', 'hūna būḏi kupuūza', 'huna budi kupuuza', '');
INSERT INTO maisha_mume VALUES (530, 133, 'b', ' نَ مَنْڠِينٖ كُيَمِيزَ ', 'na mangı̄ne kuyamı̄za', 'na mangine kuyamiza', '');
INSERT INTO maisha_mume VALUES (531, 133, 'c', 'نْدِيپٗ مُوٖيزٖ كُفُوزَ ', 'nḏı̄po muwēze kufūza', 'ndipo muweze kufuza', '');
INSERT INTO maisha_mume VALUES (532, 133, 'd', ' نَ مَئِيشَ كْوٖنْدٖلٖيَ', 'na maı̄sha kwenḏeleya', 'na maisha kwendeleya', '');
INSERT INTO maisha_mume VALUES (533, 134, 'a', 'مْكٖ كِتٖينْدَ مَكٗوسَ ', 'mke kiṯēnḏa makōsa', 'mke kitenda makosa', '');
INSERT INTO maisha_mume VALUES (534, 134, 'b', ' كُمْوَمْبِيَ يَكُپَاسَ ', 'kumwambiya yakupāsa', 'kumwambiya yakupasa', '');
INSERT INTO maisha_mume VALUES (535, 134, 'c', 'كْوَ هِشِيمَ نَ سِيَاسَ ', 'kwa hishı̄ma na siyāsa', 'kwa hishima na siyasa', '');
INSERT INTO maisha_mume VALUES (536, 134, 'd', ' نَ هِكِيمَ كُتُمِيَ', 'na hikı̄ma kuṯumiya', 'na hikima kutumiya', '');
INSERT INTO maisha_mume VALUES (537, 135, 'a', 'كٗوسَ كُلِسَهِهِيشَ ', 'kōsa kulisahihı̄sha', 'kosa kulisahihisha', '');
INSERT INTO maisha_mume VALUES (538, 135, 'b', ' پٖينْيٖ وَاتُ هُجٖرٖيشَ ', 'pēnye wāṯu hujerēsha', 'penye watu hujeresha', '');
INSERT INTO maisha_mume VALUES (539, 135, 'c', 'إِپِينْدٖ كُپُرُكُوشَ ', 'ipı̄nḏe kupurukūsha', 'ipinde kupurukusha', '');
INSERT INTO maisha_mume VALUES (540, 135, 'd', ' فَرَاغَ كُئِزٖنْڠٖيَ', 'farāḡa kuizengeya', 'faragha kuizengeya', '');
INSERT INTO maisha_mume VALUES (541, 136, 'a', 'سِمْوَمْبِيٖ پٖينْيٖ وَاتُ ', 'simwambiye pēnye wāṯu', 'simwambiye penye watu', '');
INSERT INTO maisha_mume VALUES (542, 136, 'b', ' هَؤُكِيرِ وَاكٖ أُوتُ ', 'haukı̄ri wāke ūṯu', 'haukiri wake utu', '');
INSERT INTO maisha_mume VALUES (543, 136, 'c', 'وَالَ هُتٖنْڠٖيزِ كِيتُ ', 'wāla huṯengēzi kı̄ṯu', 'wala hutengezi kitu', '');
INSERT INTO maisha_mume VALUES (544, 136, 'd', ' بَالِ نِ كِنْيُومٖ هُويَ', 'bāli ni kinyūme hūya', 'bali ni kinyume huya', '');
INSERT INTO maisha_mume VALUES (545, 137, 'a', 'كُمْسِيفُ نِ أُزُورِ ', 'kumsı̄fu ni uzūri', 'kumsifu ni uzuri', '');
INSERT INTO maisha_mume VALUES (546, 137, 'b', ' پٖينْيٖ وَاتُ نَ ذَهِيرِ ', 'pēnye wāṯu na dhahı̄ri', 'penye watu na dhahiri', '');
INSERT INTO maisha_mume VALUES (547, 137, 'c', 'كُلَؤُومُ نِ كْوَ سِيرِ ', 'kulaūmu ni kwa sı̄ri', 'kulaumu ni kwa siri', '');
INSERT INTO maisha_mume VALUES (548, 137, 'd', ' نْدِيپٗ أَتَكُسِكِيَ', 'nḏı̄po aṯakusikiya', 'ndipo atakusikiya', '');
INSERT INTO maisha_mume VALUES (549, 138, 'a', 'مْوَنَأَدَامُ كُكٗوسَ ', 'mwanaaḏāmu kukōsa', 'mwanaadamu kukosa', '');
INSERT INTO maisha_mume VALUES (550, 138, 'b', ' نِ يَامْبٗ لِمٖتُپَاسَ ', 'ni yāmbo limeṯupāsa', 'ni yambo limetupasa', '');
INSERT INTO maisha_mume VALUES (551, 138, 'c', 'نِ سَاوَ كُيِكُكُوسَ ', 'ni sāwa kuyikukūsa', 'ni sawa kuyikukusa', '');
INSERT INTO maisha_mume VALUES (552, 138, 'd', ' مَنْڠِينٖ كُڤُمِلِيَ', 'mangı̄ne kuvumiliya', 'mangine kuvumiliya', '');
INSERT INTO maisha_mume VALUES (553, 139, 'a', 'لِسَمٖيهٖ كٗوسَ دٗوڠٗ ', 'lisamēhe kōsa ḏōgo', 'lisamehe kosa dogo', '');
INSERT INTO maisha_mume VALUES (554, 139, 'b', ' كٗوسَ لِكِيوَ مزِيڠٗ ', 'kōsa likı̄wa mzı̄go', 'kosa likiwa mzigo', '');
INSERT INTO maisha_mume VALUES (555, 139, 'c', 'هَلِپٖلٖيكِ كِشٗوڠٗ ', 'halipelēki kishōgo', 'halipeleki kishogo', '');
INSERT INTO maisha_mume VALUES (556, 139, 'd', ' زٖنْڠٖيَ نْيٖنْڠِينٖ نْدِيَ', 'zengeya nyengı̄ne nḏiya', 'zengeya nyengine ndiya', '');
INSERT INTO maisha_mume VALUES (557, 140, 'a', 'تَفَؤُوتِ زَ نْيُمْبَانِ ', 'ṯafaūṯi za nyumbāni', 'tafauti za nyumbani', '');
INSERT INTO maisha_mume VALUES (558, 140, 'b', ' زِيوٖ نِ سِيرِ زَ نْدَانِ ', 'zı̄we ni sı̄ri za nḏāni', 'ziwe ni siri za ndani', '');
INSERT INTO maisha_mume VALUES (559, 140, 'c', 'سِزِتٗوٖ هَذِرَانِ ', 'siziṯowe hadhirāni', 'sizitowe hadhirani', '');
INSERT INTO maisha_mume VALUES (560, 140, 'd', ' وَاتُ وَكَزِسِكِيَ', 'wāṯu wakazisikiya', 'watu wakazisikiya', '');
INSERT INTO maisha_mume VALUES (561, 141, 'a', 'سِيرِ زَ نْدَانِ زِبَانٖ ', 'sı̄ri za nḏāni zibāne', 'siri za ndani zibane', '');
INSERT INTO maisha_mume VALUES (562, 141, 'b', ' أُسِمْوَمْبِيٖ مْنْڠِينٖ ', 'usimwambiye mngı̄ne', 'usimwambiye mngine', '');
INSERT INTO maisha_mume VALUES (563, 141, 'c', 'وٖيوٖ نَ يٖيٖ مُنٖينٖ ', 'wēwe na yeye munēne', 'wewe na yeye munene', '');
INSERT INTO maisha_mume VALUES (564, 141, 'd', ' سُلُهِيشٗ كُزٖنْڠٖيَ', 'suluhı̄sho kuzengeya', 'suluhisho kuzengeya', '');
INSERT INTO maisha_mume VALUES (565, 142, 'a', 'إِيلَ مُكِكٗوسَ بُودِ ', 'ı̄la mukikōsa būḏi', 'ila mukikosa budi', '');
INSERT INTO maisha_mume VALUES (566, 142, 'b', ' كُنٖينَ إِكَوَبِيدِ ', 'kunēna ikawabı̄ḏi', 'kunena ikawabidi', '');
INSERT INTO maisha_mume VALUES (567, 142, 'c', 'وَزٖئٖ وَوَسَئِيدِ ', 'wazee wawasaı̄ḏi', 'wazee wawasaidi', '');
INSERT INTO maisha_mume VALUES (568, 142, 'd', ' هَاپٗ هَئِيوِ هَتِيَ', 'hāpo haı̄wi haṯiya', 'hapo haiwi hatiya', '');
INSERT INTO maisha_mume VALUES (569, 143, 'a', 'تَفَؤُوتِ إِكِزُوكَ ', 'ṯafaūṯi ikizūka', 'tafauti ikizuka', '');
INSERT INTO maisha_mume VALUES (570, 143, 'b', ' نِ مِكٗونٗ كُيَنْدِيكَ ', 'ni mikōno kuyanḏı̄ka', 'ni mikono kuyandika', '');
INSERT INTO maisha_mume VALUES (571, 143, 'c', 'يُؤَ نْدٖ إِكِتٗوكَ ', 'yua nḏe ikiṯōka', 'yua nde ikitoka', '');
INSERT INTO maisha_mume VALUES (572, 143, 'd', ' هُزُوَ نْيِينْڠِ بَلَايَ', 'huzuwa nı̄ı̄ngi balāya', 'huzuwa nyingi balaya', '');
INSERT INTO maisha_mume VALUES (573, 144, 'a', 'خُسُوسوَ سِيرِ زَ سِيرِ ', 'ẖusūswa sı̄ri za sı̄ri', 'hususwa siri za siri', '');
INSERT INTO maisha_mume VALUES (574, 144, 'b', ' كُنٖينَ نِ كُؤَذِيرِ ', 'kunēna ni kuadhı̄ri', 'kunena ni kuadhiri', '');
INSERT INTO maisha_mume VALUES (575, 144, 'c', 'إِيلَ إِيوٖ دَكِتَارِ ', 'ı̄la ı̄we ḏakiṯāri', 'ila iwe dakitari', '');
INSERT INTO maisha_mume VALUES (576, 144, 'd', ' سُؤَالِ مٖوَتَئِيَ', 'suāli mewaṯaiya', 'suali mewataiya', '');
INSERT INTO maisha_mume VALUES (577, 145, 'a', 'مَامْبٗ يَ تِينِ كْوَ تِينِ ', 'māmbo ya ṯı̄ni kwa ṯı̄ni', 'mambo ya tini kwa tini', '');
INSERT INTO maisha_mume VALUES (578, 145, 'b', ' يَاوٖ نِ نْدَانِ كْوَ نْدَانِ ', 'yāwe ni nḏāni kwa nḏāni', 'yawe ni ndani kwa ndani', '');
INSERT INTO maisha_mume VALUES (579, 145, 'c', 'هَايٗ مُوٖ هَمُنٖينِ ', 'hāyo muwe hamunēni', 'hayo muwe hamuneni', '');
INSERT INTO maisha_mume VALUES (580, 145, 'd', ' إِيلَ يَكِوَئِمٖيَ', 'ı̄la yakiwaimeya', 'ila yakiwaimeya', '');
INSERT INTO maisha_mume VALUES (581, 146, 'a', 'كِيوَ مْنٗ مٖوَڠَانْيَ ', 'kı̄wa mno mewagānya', 'kiwa mno mewaganya', '');
INSERT INTO maisha_mume VALUES (582, 146, 'b', ' مُكَشِنْدوَ لَ كُفَانْيَ ', 'mukashinḏwa la kufānya', 'mukashindwa la kufanya', '');
INSERT INTO maisha_mume VALUES (583, 146, 'c', 'كْوَ هَاپٗ سِتٗوَكَانْيَ ', 'kwa hāpo siṯowakānya', 'kwa hapo sitowakanya', '');
INSERT INTO maisha_mume VALUES (584, 146, 'd', ' أُشَؤُورِ كُزٖنْڠٖيَ', 'ushaūri kuzengeya', 'ushauri kuzengeya', '');
INSERT INTO maisha_mume VALUES (585, 147, 'a', 'نِ بٗورَ أُوٖ هٗدَارِ ', 'ni bōra uwe hoḏāri', 'ni bora uwe hodari', '');
INSERT INTO maisha_mume VALUES (586, 147, 'b', ' نَ كُشِنْدوَ أُسِكِيرِ ', 'na kushinḏwa usikı̄ri', 'na kushindwa usikiri', '');
INSERT INTO maisha_mume VALUES (587, 147, 'c', 'وَالَ أُسِتَهَيَارِ ', 'wāla usiṯahayāri', 'wala usitahayari', '');
INSERT INTO maisha_mume VALUES (588, 147, 'd', ' كْوَ هَلَالِ كُتُمِيَ', 'kwa halāli kuṯumiya', 'kwa halali kutumiya', '');
INSERT INTO maisha_mume VALUES (589, 148, 'a', 'نِ هِيكٗ هِيكٗ كِتٖينْدٗ ', 'ni hı̄ko hı̄ko kiṯēnḏo', 'ni hiko hiko kitendo', '');
INSERT INTO maisha_mume VALUES (590, 148, 'b', ' كِيوَ وَ هَلَالِ مْوٖينْدٗ ', 'kı̄wa wa halāli mwēnḏo', 'kiwa wa halali mwendo', '');
INSERT INTO maisha_mume VALUES (591, 148, 'c', 'هَرَامُ إِوٖيكٖ كَانْدٗ ', 'harāmu iwēke kānḏo', 'haramu iweke kando', '');
INSERT INTO maisha_mume VALUES (592, 148, 'd', ' كَاتُ كُتٗكَرِبِيَ', 'kāṯu kuṯokaribiya', 'katu kutokaribiya', '');
INSERT INTO maisha_mume VALUES (593, 149, 'a', 'وَ هَرَامُ سِمْڠُوسٖ ', 'wa harāmu simgūse', 'wa haramu simguse', '');
INSERT INTO maisha_mume VALUES (594, 149, 'b', ' كِمُؤٗونَ إِڠٖڠٖيسٖ ', 'kimuōna igegēse', 'kimuona igegese', '');
INSERT INTO maisha_mume VALUES (595, 149, 'c', 'هَاتَ نْيَنْڠوَانِ مْپِيسٖ ', 'hāṯa nyangwāni mpı̄se', 'hata nyangwani mpise', '');
INSERT INTO maisha_mume VALUES (596, 149, 'd', ' سَنْدَمَانٖ نَايٖ نْدِيَ', 'sanḏamāne nāye nḏiya', 'sandamane naye ndiya', '');
INSERT INTO maisha_mume VALUES (597, 150, 'a', 'أُسٖينْدٖ هَاتَ كَرِيبُ ', 'usēnḏe hāṯa karı̄bu', 'usende hata karibu', '');
INSERT INTO maisha_mume VALUES (598, 150, 'b', ' إٖپُوكَ هِيزٗ إِقَابُ ', 'epūka hı̄zo iqābu', 'epuka hizo iqabu', '');
INSERT INTO maisha_mume VALUES (599, 150, 'c', 'أُتَپَاتَ نَ ثَوَابُ ', 'uṯapāṯa na thawābu', 'utapata na thawabu', '');
INSERT INTO maisha_mume VALUES (600, 150, 'd', ' مْكٖؤٗ كُمْنْڠِلِيَ', 'mkeo kumngiliya', 'mkeo kumngiliya', '');
INSERT INTO maisha_mume VALUES (601, 151, 'a', 'إٖلٖيوَ سَانَ إٖلٖيوَ ', 'elēwa sāna elēwa', 'elewa sana elewa', '');
INSERT INTO maisha_mume VALUES (602, 151, 'b', ' نِ جُكُومُ أُمٖپٗوَ ', 'ni jukūmu umepowa', 'ni jukumu umepowa', '');
INSERT INTO maisha_mume VALUES (603, 151, 'c', 'مْكٖؤٗ كُمْوِيسَ نْڠٗوَ ', 'mkeo kumwı̄sa ngowa', 'mkeo kumwisa ngowa', '');
INSERT INTO maisha_mume VALUES (604, 151, 'd', ' كْوَ هَايَ نِمٖزٗتَايَ', 'kwa hāya nimezoṯāya', 'kwa haya nimezotaya', '');
INSERT INTO maisha_mume VALUES (605, 152, 'a', 'مْكٖؤٗ مْتٗشٖلٖيزٖ ', 'mkeo mṯoshelēze', 'mkeo mtosheleze', '');
INSERT INTO maisha_mume VALUES (606, 152, 'b', ' هَاجَ يَاكٖ أَمَلِيزٖ ', 'hāja yāke amalı̄ze', 'haja yake amalize', '');
INSERT INTO maisha_mume VALUES (607, 152, 'c', 'نَ شَؤُوكُ أَسِسَازٖ ', 'na shaūku asisāze', 'na shauku asisaze', '');
INSERT INTO maisha_mume VALUES (608, 152, 'd', ' مْپَارٗ أُكَمْوَتِيَ', 'mpāro ukamwaṯiya', 'mparo ukamwatiya', '');
INSERT INTO maisha_mume VALUES (609, 153, 'a', 'أٗنْڠٖيزَ وَاكٗ أُيُوزِ ', 'ongēza wāko uyūzi', 'ongeza wako uyuzi', '');
INSERT INTO maisha_mume VALUES (610, 153, 'b', ' وَ كُفَانْيَ هِيٗ كَازِ ', 'wa kufānya hiyo kāzi', 'wa kufanya hiyo kazi', '');
INSERT INTO maisha_mume VALUES (611, 153, 'c', 'مْوٖينْدٗ كِيوَ هَمَلِيزِ ', 'mwēnḏo kı̄wa hamalı̄zi', 'mwendo kiwa hamalizi', '');
INSERT INTO maisha_mume VALUES (612, 153, 'd', ' فَهَامُ وَمْكٗسٖيَ', 'fahāmu wamkoseya', 'fahamu wamkoseya', '');
INSERT INTO maisha_mume VALUES (613, 154, 'a', 'هُوَ نِ كُؤُ ذُلُومَ ', 'huwa ni kuu dhulūma', 'huwa ni kuu dhuluma', '');
INSERT INTO maisha_mume VALUES (614, 154, 'b', ' وٖيوٖ أُكِسَكُكٗومَ ', 'wēwe ukisakukōma', 'wewe ukisakukoma', '');
INSERT INTO maisha_mume VALUES (615, 154, 'c', 'هُتَاكِ ڠٖؤُوكَ نْيُومَ ', 'huṯāki geūka nyūma', 'hutaki geuka nyuma', '');
INSERT INTO maisha_mume VALUES (616, 154, 'd', ' نَ يٖيٖ كُمْنْڠٗجٖيَ', 'na yeye kumngojeya', 'na yeye kumngojeya', '');
INSERT INTO maisha_mume VALUES (617, 155, 'a', 'سِمَلِيزٖ يَاكٗ هَاجَ ', 'simalı̄ze yāko hāja', 'simalize yako haja', '');
INSERT INTO maisha_mume VALUES (618, 155, 'b', ' مْنْڠٗوجٖ مْوِيسٖ پَمٗوجَ ', 'mngōje mwı̄se pamōja', 'mngoje mwise pamoja', '');
INSERT INTO maisha_mume VALUES (619, 155, 'c', 'هِيلِ هَتَاكِ ممٗوجَ ', 'hı̄li haṯāki mmōja', 'hili hataki mmoja', '');
INSERT INTO maisha_mume VALUES (620, 155, 'd', ' نِ نْيٗوتٖ هُلِزٖنْڠٖيَ', 'ni nyōṯe hulizengeya', 'ni nyote hulizengeya', '');
INSERT INTO maisha_mume VALUES (621, 156, 'a', 'أَنْڠَلِيَ أُفِكِيرِ ', 'angaliya ufikı̄ri', 'angaliya ufikiri', '');
INSERT INTO maisha_mume VALUES (622, 156, 'b', ' كِيوَ مْوٖينْدٗ تَغَئِيرِ ', 'kı̄wa mwēnḏo ṯaḡaı̄ri', 'kiwa mwendo taghairi', '');
INSERT INTO maisha_mume VALUES (623, 156, 'c', 'نَ وٖيوٖ پٖينْيٖ بَنْدَارِ ', 'na wēwe pēnye banḏāri', 'na wewe penye bandari', '');
INSERT INTO maisha_mume VALUES (624, 156, 'd', ' بَادٗ نَانْڠَ هُجَتِيَ', 'bāḏo nānga hujaṯiya', 'bado nanga hujatiya', '');
INSERT INTO maisha_mume VALUES (625, 157, 'a', 'أُتَكُوَ هَالِ ڠَانِ ', 'uṯakuwa hāli gāni', 'utakuwa hali gani', '');
INSERT INTO maisha_mume VALUES (626, 157, 'b', ' أُسِنْڠِيزِ هُُؤٗونِ ', 'usingı̄zi huuōni', 'usingizi huuoni', '');
INSERT INTO maisha_mume VALUES (627, 157, 'c', 'هَالِ هِيٗ أُبَئِينِ ', 'hāli hiyo ubaı̄ni', 'hali hiyo ubaini', '');
INSERT INTO maisha_mume VALUES (628, 157, 'd', ' نَ مْوٖينْدٗ هُمُئِلِيَ', 'na mwēnḏo humuiliya', 'na mwendo humuiliya', '');
INSERT INTO maisha_mume VALUES (629, 158, 'a', 'أَتَكُوَ نَ مْتَارٗ ', 'aṯakuwa na mṯāro', 'atakuwa na mtaro', '');
INSERT INTO maisha_mume VALUES (630, 158, 'b', ' نَ ذِيكِ مْنٗ نَ كٖيرٗ ', 'na dhı̄ki mno na kēro', 'na dhiki mno na kero', '');
INSERT INTO maisha_mume VALUES (631, 158, 'c', 'نَ هَسِيرَ نَ مْفُورٗ ', 'na hası̄ra na mfūro', 'na hasira na mfuro', '');
INSERT INTO maisha_mume VALUES (632, 158, 'd', ' كِيوَ هُتٗمرِذِيَ', 'kı̄wa huṯomridhiya', 'kiwa hutomridhiya', '');
INSERT INTO maisha_mume VALUES (633, 159, 'a', 'نْيُومْبَ نْيِينْڠِ هُڤُنْدِيكَ ', 'nyūmba nı̄ı̄ngi huvunḏı̄ka', 'nyumba nyingi huvundika', '');
INSERT INTO maisha_mume VALUES (634, 159, 'b', ' زِكِكٗوسَ مُؤَفَاكَ ', 'zikikōsa muafāka', 'zikikosa muafaka', '');
INSERT INTO maisha_mume VALUES (635, 159, 'c', 'كْوَ نْڠٗونٗ كُتٗتٗشٖيكَ ', 'kwa ngōno kuṯoṯoshēka', 'kwa ngono kutotosheka', '');
INSERT INTO maisha_mume VALUES (636, 159, 'd', ' مْكٖ نَ مُومٖ پَمٗويَ', 'mke na mūme pamōya', 'mke na mume pamoya', '');
INSERT INTO maisha_mume VALUES (637, 160, 'a', 'كْوَ هِيلِ مُكِتٗشَانَ ', 'kwa hı̄li mukiṯoshāna', 'kwa hili mukitoshana', '');
INSERT INTO maisha_mume VALUES (638, 160, 'b', ' مٖينْڠِ هُڤُمِلِيَانَ ', 'mēngi huvumiliyāna', 'mengi huvumiliyana', '');
INSERT INTO maisha_mume VALUES (639, 160, 'c', 'مْنٗ هُكٗرٗفِشَانَ ', 'mno hukorofishāna', 'mno hukorofishana', '');
INSERT INTO maisha_mume VALUES (640, 160, 'd', ' هِيلِ لِسِپٗتِمِيَ', 'hı̄li lisipoṯimiya', 'hili lisipotimiya', '');
INSERT INTO maisha_mume VALUES (641, 161, 'a', 'نَ لِنْڠِينٖ كَذَلِيكَ ', 'na lingı̄ne kadhalı̄ka', 'na lingine kadhalika', '');
INSERT INTO maisha_mume VALUES (642, 161, 'b', ' أَمْبَالٗ كْوَاكٗ نَتَاكَ ', 'ambālo kwāko naṯāka', 'ambalo kwako nataka', '');
INSERT INTO maisha_mume VALUES (643, 161, 'c', 'نِ مْكٖؤٗ كِؤُذِيكَ ', 'ni mkeo kiudhı̄ka', 'ni mkeo kiudhika', '');
INSERT INTO maisha_mume VALUES (644, 161, 'd', ' أُسِيوٖ تَمْفُرِيَ', 'usı̄we ṯamfuriya', 'usiwe tamfuriya', '');
INSERT INTO maisha_mume VALUES (645, 162, 'a', 'پَنْڠِينٖ أُتَمُؤٗونَ ', 'pangı̄ne uṯamuōna', 'pangine utamuona', '');
INSERT INTO maisha_mume VALUES (646, 162, 'b', ' هُفُورَ سَبَابُ هَانَ ', 'hufūra sabābu hāna', 'hufura sababu hana', '');
INSERT INTO maisha_mume VALUES (647, 162, 'c', 'مُئٖلٖيوٖ تٖينَ سَانَ ', 'muelēwe ṯēna sāna', 'muelewe tena sana', '');
INSERT INTO maisha_mume VALUES (648, 162, 'd', ' نَ مْنٗ كُمُيُلِيَ', 'na mno kumuyuliya', 'na mno kumuyuliya', '');
INSERT INTO maisha_mume VALUES (649, 163, 'a', 'إِفَهَامُ تَفَؤُوتِ ', 'ifahāmu ṯafaūṯi', 'ifahamu tafauti', '');
INSERT INTO maisha_mume VALUES (650, 163, 'b', ' وَلِيٗ نَايٗ بَنَاتِ ', 'waliyo nāyo banāṯi', 'waliyo nayo banati', '');
INSERT INTO maisha_mume VALUES (651, 163, 'c', 'هَوٖيزِ كُئِذِبِيتِ ', 'hawēzi kuidhibı̄ṯi', 'hawezi kuidhibiti', '');
INSERT INTO maisha_mume VALUES (652, 163, 'd', ' هَالِ إِنَپٗوَدِيَ', 'hāli inapowaḏiya', 'hali inapowadiya', '');
INSERT INTO maisha_mume VALUES (653, 164, 'a', 'مْكٖ سِ كِؤُومْبٖ دُوفُ ', 'mke si kiūmbe ḏūfu', 'mke si kiumbe dufu', '');
INSERT INTO maisha_mume VALUES (654, 164, 'b', ' وَلَكِينِ نِ ذَئِيفُ ', 'walakı̄ni ni dhaı̄fu', 'walakini ni dhaifu', '');
INSERT INTO maisha_mume VALUES (655, 164, 'c', 'مٗويٗ وَاكٖ نِ خَفِيفُ ', 'mōyo wāke ni ẖafı̄fu', 'moyo wake ni hafifu', '');
INSERT INTO maisha_mume VALUES (656, 164, 'd', ' هُشِنْدوَ كُڤُمِلِيَ', 'hushinḏwa kuvumiliya', 'hushindwa kuvumiliya', '');
INSERT INTO maisha_mume VALUES (657, 165, 'a', 'وَنَوَاكٖ وَانَ أُومْبٗ ', 'wanawāke wāna ūmbo', 'wanawake wana umbo', '');
INSERT INTO maisha_mume VALUES (658, 165, 'b', ' هُؤَثِرِيكَ كْوَ مَامْبٗ ', 'huathirı̄ka kwa māmbo', 'huathirika kwa mambo', '');
INSERT INTO maisha_mume VALUES (659, 165, 'c', 'كَتِيتِ يَكٖينْدَ كٗومْبٗ ', 'kaṯı̄ṯi yakēnḏa kōmbo', 'katiti yakenda kombo', '');
INSERT INTO maisha_mume VALUES (660, 165, 'd', ' وَاسِ وَاسِ هُمْتِيَ', 'wāsi wāsi humṯiya', 'wasi wasi humtiya', '');
INSERT INTO maisha_mume VALUES (661, 166, 'a', 'كَتِيكَ سِيكُ زَ أَادَ ', 'kaṯı̄ka sı̄ku za āḏa', 'katika siku za ada', '');
INSERT INTO maisha_mume VALUES (662, 166, 'b', ' يَ مْوٖيزِ هُپَاتَ شِيدَ ', 'ya mwēzi hupāṯa shı̄ḏa', 'ya mwezi hupata shida', '');
INSERT INTO maisha_mume VALUES (663, 166, 'c', 'نْدِيپٗ هَاتَ نَ إِبَادَ ', 'nḏı̄po hāṯa na ibāḏa', 'ndipo hata na ibada', '');
INSERT INTO maisha_mume VALUES (664, 166, 'd', ' مُونْڠُ كَوَپُنْڠُزِيَ', 'mūngu kawapunguziya', 'mungu kawapunguziya', '');
INSERT INTO maisha_mume VALUES (665, 167, 'a', 'مْنٗ هُوَ يَ ثَقِيلِ ', 'mno huwa ya thaqı̄li', 'mno huwa ya thaqili', '');
INSERT INTO maisha_mume VALUES (666, 167, 'b', ' نَ هُبَدِلِيكَ هَالِ ', 'na hubaḏilı̄ka hāli', 'na hubadilika hali', '');
INSERT INTO maisha_mume VALUES (667, 167, 'c', 'نَ چٗوتٖ كِوِلِوِيلِ ', 'na chōṯe kiwiliwı̄li', 'na chote kiwiliwili', '');
INSERT INTO maisha_mume VALUES (668, 167, 'd', ' هُوَ كَتِيكَ أُذِيَ', 'huwa kaṯı̄ka udhiya', 'huwa katika udhiya', '');
INSERT INTO maisha_mume VALUES (669, 168, 'a', 'هُوَ سَانَ نِ وَيَاڤُ ', 'huwa sāna ni wayāvu', 'huwa sana ni wayavu', '');
INSERT INTO maisha_mume VALUES (670, 168, 'b', ' هُكٗوسَ أُڤِمِلِيڤُ ', 'hukōsa uvimilı̄vu', 'hukosa uvimilivu', '');
INSERT INTO maisha_mume VALUES (671, 168, 'c', 'هُوَ كَامَ إِيڤُ إِيڤُ ', 'huwa kāma ı̄vu ı̄vu', 'huwa kama ivu ivu', '');
INSERT INTO maisha_mume VALUES (672, 168, 'd', ' كُتُمْبُوكَ هُزٖنْڠٖيَ', 'kuṯumbūka huzengeya', 'kutumbuka huzengeya', '');
INSERT INTO maisha_mume VALUES (673, 169, 'a', 'هُوَ مْنٗ نِ وَكَالِ ', 'huwa mno ni wakāli', 'huwa mno ni wakali', '');
INSERT INTO maisha_mume VALUES (674, 169, 'b', ' نَذَانِ هَاتَ أَكِيلِ ', 'nadhāni hāṯa akı̄li', 'nadhani hata akili', '');
INSERT INTO maisha_mume VALUES (675, 169, 'c', 'هَئِيوِ سَاوَ كَمِيلِ ', 'haı̄wi sāwa kamı̄li', 'haiwi sawa kamili', '');
INSERT INTO maisha_mume VALUES (676, 169, 'd', ' نَ پُنْڠُوَانِ هُنْڠِيَ', 'na punguwāni hungiya', 'na punguwani hungiya', '');
INSERT INTO maisha_mume VALUES (677, 170, 'a', 'كُولَ مَارَ تَمُؤٗونَ ', 'kūla māra ṯamuōna', 'kula mara tamuona', '');
INSERT INTO maisha_mume VALUES (678, 170, 'b', ' هُوَرُكِيَ زِجَانَ ', 'huwarukiya zijāna', 'huwarukiya zijana', '');
INSERT INTO maisha_mume VALUES (679, 170, 'c', 'نَ كْوَ أُكَالِ هُنٖينَ ', 'na kwa ukāli hunēna', 'na kwa ukali hunena', '');
INSERT INTO maisha_mume VALUES (680, 170, 'd', ' كِنْيُومٖ چَ مَزٗوٖيَ', 'kinyūme cha mazoweya', 'kinyume cha mazoweya', '');
INSERT INTO maisha_mume VALUES (681, 171, 'a', 'نِ مُهِيمُ كُولَ مُومٖ ', 'ni muhı̄mu kūla mūme', 'ni muhimu kula mume', '');
INSERT INTO maisha_mume VALUES (682, 171, 'b', ' مْكٖ وَاكٖ أَمْسٗومٖ ', 'mke wāke amsōme', 'mke wake amsome', '');
INSERT INTO maisha_mume VALUES (683, 171, 'c', 'كْوَ زِپِيمٗ أَمْپِيمٖ ', 'kwa zipı̄mo ampı̄me', 'kwa zipimo ampime', '');
INSERT INTO maisha_mume VALUES (684, 171, 'd', ' سِيكُ زِكِكَرِبِيَ', 'sı̄ku zikikaribiya', 'siku zikikaribiya', '');
INSERT INTO maisha_mume VALUES (685, 172, 'a', 'أُكِيسَ كُمْفَهَامُ ', 'ukı̄sa kumfahāmu', 'ukisa kumfahamu', '');
INSERT INTO maisha_mume VALUES (687, 172, 'c', 'هِيلِ مْنٗ نِ مُهِيمُ ', 'hı̄li mno ni muhı̄mu', 'hili mno ni muhimu', '');
INSERT INTO maisha_mume VALUES (688, 172, 'd', ' يَتَاكَ كُلِزٗوٖيَ', 'yaṯāka kulizoweya', 'yataka kulizoweya', '');
INSERT INTO maisha_mume VALUES (689, 173, 'a', 'كُونَ نَ مُودَ وَ مِيمْبَ ', 'kūna na mūḏa wa mı̄mba', 'kuna na muda wa mimba', '');
INSERT INTO maisha_mume VALUES (690, 173, 'b', ' مَارَ كْوَ مَارَ هُڤِيمْبَ ', 'māra kwa māra huvı̄mba', 'mara kwa mara huvimba', '');
INSERT INTO maisha_mume VALUES (691, 173, 'c', 'أُكَؤٗونَ كَانَ كْوَامْبَ ', 'ukaōna kāna kwāmba', 'ukaona kana kwamba', '');
INSERT INTO maisha_mume VALUES (692, 173, 'd', ' مٖكُوَ هُكُزٖنْڠٖيَ', 'mekuwa hukuzengeya', 'mekuwa hukuzengeya', '');
INSERT INTO maisha_mume VALUES (693, 174, 'a', 'كُكٗوسَ يَامْبٗ كَتِيتِ ', 'kukōsa yāmbo kaṯı̄ṯi', 'kukosa yambo katiti', '');
INSERT INTO maisha_mume VALUES (694, 174, 'b', ' هُوَ وٖيوٖ أُمٖهِيتِ ', 'huwa wēwe umehı̄ṯi', 'huwa wewe umehiti', '');
INSERT INTO maisha_mume VALUES (695, 174, 'c', 'أَنْڠَلِيَ كِبِرِيتِ ', 'angaliya kibirı̄ṯi', 'angaliya kibiriti', '');
INSERT INTO maisha_mume VALUES (696, 174, 'd', ' كِدَرِيكَ تٖيتٖ هُويَ', 'kiḏarı̄ka ṯēṯe hūya', 'kidarika tete huya', '');
INSERT INTO maisha_mume VALUES (697, 175, 'a', 'مَارَ نْيَامَ هَئِتَاكِ ', 'māra nyāma haiṯāki', 'mara nyama haitaki', '');
INSERT INTO maisha_mume VALUES (698, 175, 'b', ' أَتَاكَ نْسِ وَ سِيكِ ', 'aṯāka nsi wa sı̄ki', 'ataka nsi wa siki', '');
INSERT INTO maisha_mume VALUES (699, 175, 'c', 'أَلَاچٗ هَكِمْشِيكِ ', 'alācho hakimshı̄ki', 'alacho hakimshiki', '');
INSERT INTO maisha_mume VALUES (700, 175, 'd', ' أَكِتِيَاچٗ هُمْوَايَ', 'akiṯiyācho humwāya', 'akitiyacho humwaya', '');
INSERT INTO maisha_mume VALUES (701, 176, 'a', 'زِئٖلٖيوٖ سِيكُ هِيزِ ', 'zielēwe sı̄ku hı̄zi', 'zielewe siku hizi', '');
INSERT INTO maisha_mume VALUES (702, 176, 'b', ' مِيمْبَ نَ سِيكُ زَ مْوٖيزِ ', 'mı̄mba na sı̄ku za mwēzi', 'mimba na siku za mwezi', '');
INSERT INTO maisha_mume VALUES (703, 176, 'c', 'كِيوَ هُمْبٖمْبٖلٖيزِ ', 'kı̄wa humbembelēzi', 'kiwa humbembelezi', '');
INSERT INTO maisha_mume VALUES (704, 176, 'd', ' تَؤٗونَ وَمُؤٗنٖيَ', 'ṯaōna wamuoneya', 'taona wamuoneya', '');
INSERT INTO maisha_mume VALUES (705, 177, 'a', 'مْپٖيمْبٖ كَامَ كِجَانَ ', 'mpēmbe kāma kijāna', 'mpembe kama kijana', '');
INSERT INTO maisha_mume VALUES (706, 177, 'b', ' تٖينَ أَلِيٗ مْنُونَ ', 'ṯēna aliyo mnūna', 'tena aliyo mnuna', '');
INSERT INTO maisha_mume VALUES (707, 177, 'c', 'نْدِيپٗ مُتَسِكِزَانَ ', 'nḏı̄po muṯasikizāna', 'ndipo mutasikizana', '');
INSERT INTO maisha_mume VALUES (708, 177, 'd', ' نَ يَدُومُ مَزٗوٖيَ', 'na yaḏūmu mazoweya', 'na yadumu mazoweya', '');
INSERT INTO maisha_mume VALUES (709, 178, 'a', 'شَرُوتِ أُوٖ مْوٖرٖيڤُ ', 'sharūṯi uwe mwerēvu', 'sharuti uwe mwerevu', '');
INSERT INTO maisha_mume VALUES (710, 178, 'b', ' نَ مْنٗ مْڤُمِلِيڤُ ', 'na mno mvumilı̄vu', 'na mno mvumilivu', '');
INSERT INTO maisha_mume VALUES (711, 178, 'c', 'أُسِفُرِيشٖ مَشَاڤُ ', 'usifurı̄she mashāvu', 'usifurishe mashavu', '');
INSERT INTO maisha_mume VALUES (712, 178, 'd', ' كِيوَ نَايٖ مٖتٖتٖيَ', 'kı̄wa nāye meṯeṯeya', 'kiwa naye meteteya', '');
INSERT INTO maisha_mume VALUES (713, 179, 'a', 'كُونَ مَامْبٗ يَ أُمِيتٗ ', 'kūna māmbo ya umı̄ṯo', 'kuna mambo ya umito', '');
INSERT INTO maisha_mume VALUES (714, 179, 'b', ' نِ مَكُؤُ سِ مَتٗوتٗ ', 'ni makuu si maṯōṯo', 'ni makuu si matoto', '');
INSERT INTO maisha_mume VALUES (715, 179, 'c', 'وٖنْڠِينٖ هُولَ تٗتٗوتٗ ', 'wengı̄ne hūla ṯoṯōṯo', 'wengine hula tototo', '');
INSERT INTO maisha_mume VALUES (716, 179, 'd', ' نَ مْتَانْڠَ هُبُڠِيَ', 'na mṯānga hubugiya', 'na mtanga hubugiya', '');
INSERT INTO maisha_mume VALUES (717, 180, 'a', 'نِ مَامْبٗ يَ مِؤُجِيزَ ', 'ni māmbo ya miujı̄za', 'ni mambo ya miujiza', '');
INSERT INTO maisha_mume VALUES (718, 180, 'b', ' زَاءٗ هَالِ هُڠٖؤُوزَ ', 'zāo hāli hugeūza', 'zao hali hugeuza', '');
INSERT INTO maisha_mume VALUES (719, 180, 'c', 'كِيوَ هُتٗبٖمْبٖلٖيزَ ', 'kı̄wa huṯobembelēza', 'kiwa hutobembeleza', '');
INSERT INTO maisha_mume VALUES (720, 180, 'd', ' مَارَ تَؤٗونَ هُلِيَ', 'māra ṯaōna huliya', 'mara taona huliya', '');
INSERT INTO maisha_mume VALUES (721, 181, 'a', 'مْوَنَامْكٖ كْوَ تَأَبُ ', 'mwanāmke kwa ṯaabu', 'mwanamke kwa taabu', '');
INSERT INTO maisha_mume VALUES (722, 181, 'b', ' مَارَ هُفَانْيَ غَذَابُ ', 'māra hufānya ḡadhābu', 'mara hufanya ghadhabu', '');
INSERT INTO maisha_mume VALUES (723, 181, 'c', 'هَاتَ أَالٗ تَرَتِيبُ ', 'hāṯa ālo ṯaraṯı̄bu', 'hata alo taratibu', '');
INSERT INTO maisha_mume VALUES (724, 181, 'd', ' هُبَدِلِيكَ توَبِيَ', 'hubaḏilı̄ka ṯwabiya', 'hubadilika twabiya', '');
INSERT INTO maisha_mume VALUES (725, 182, 'a', 'نٖينٗ لٗلٗوتٖ أَوٖيزَ ', 'nēno lolōṯe awēza', 'neno lolote aweza', '');
INSERT INTO maisha_mume VALUES (726, 182, 'b', ' هَجَالِ كُڤُرِمِيزَ ', 'hajāli kuvurimı̄za', 'hajali kuvurimiza', '');
INSERT INTO maisha_mume VALUES (727, 182, 'c', 'نِ شَرُوتِ كُئِكَازَ ', 'ni sharūṯi kuikāza', 'ni sharuti kuikaza', '');
INSERT INTO maisha_mume VALUES (728, 182, 'd', ' مِزَانِ كُتٗپٗتٖيَ', 'mizāni kuṯopoṯeya', 'mizani kutopoteya', '');
INSERT INTO maisha_mume VALUES (729, 183, 'a', 'مَارَ أَوٖيزَ تَلَاكَ ', 'māra awēza ṯalāka', 'mara aweza talaka', '');
INSERT INTO maisha_mume VALUES (730, 183, 'b', ' أَكَكْوَمْبِيَ نَتَاكَ ', 'akakwambiya naṯāka', 'akakwambiya nataka', '');
INSERT INTO maisha_mume VALUES (731, 183, 'c', 'نَاوٖ أُكِكَسِرِيكَ ', 'nāwe ukikasirı̄ka', 'nawe ukikasirika', '');
INSERT INTO maisha_mume VALUES (732, 183, 'd', ' مَيُوتٗ يَتَسَلِيَ', 'mayūṯo yaṯasaliya', 'mayuto yatasaliya', '');
INSERT INTO maisha_mume VALUES (733, 184, 'a', 'أَكِكْوَمْبِيَ نِوَاتَ ', 'akikwambiya niwāṯa', 'akikwambiya niwata', '');
INSERT INTO maisha_mume VALUES (734, 184, 'b', ' سِيوٖ نَايٖ مُتَتٖيتَ ', 'sı̄we nāye muṯaṯēṯa', 'siwe naye mutateta', '');
INSERT INTO maisha_mume VALUES (735, 184, 'c', 'نِ كِوِينْڠُ كِتَپِيتَ ', 'ni kiwı̄ngu kiṯapı̄ṯa', 'ni kiwingu kitapita', '');
INSERT INTO maisha_mume VALUES (736, 184, 'd', ' هَكِوٖيزِ كُسَلِيَ', 'hakiwēzi kusaliya', 'hakiwezi kusaliya', '');
INSERT INTO maisha_mume VALUES (737, 185, 'a', 'توَلَاكَ سِئِتٖلٖيزٖ ', 'ṯwalāka siiṯelēze', 'twalaka siiteleze', '');
INSERT INTO maisha_mume VALUES (738, 185, 'b', ' أَئِتَكَاپٗ مْپُوزٖ ', 'aiṯakāpo mpūze', 'aitakapo mpuze', '');
INSERT INTO maisha_mume VALUES (739, 185, 'c', 'وَالَ سِئِتٖنْدٖكٖيزٖ ', 'wāla siiṯenḏekēze', 'wala siitendekeze', '');
INSERT INTO maisha_mume VALUES (740, 185, 'd', ' لَاكٖ كُمْتِمِزِيَ', 'lāke kumṯimiziya', 'lake kumtimiziya', '');
INSERT INTO maisha_mume VALUES (741, 186, 'a', 'توَلَاكَ مُونْڠُ مٖوٖيكَ ', 'ṯwalāka mūngu mewēka', 'twalaka mungu meweka', '');
INSERT INTO maisha_mume VALUES (742, 186, 'b', ' كْوَ ذَرُورَ كُتُمِيكَ ', 'kwa dharūra kuṯumı̄ka', 'kwa dharura kutumika', '');
INSERT INTO maisha_mume VALUES (743, 186, 'c', 'إِوَاپٗ مُمٖذِكِيكَ ', 'iwāpo mumedhikı̄ka', 'iwapo mumedhikika', '');
INSERT INTO maisha_mume VALUES (744, 186, 'd', ' مُمٖكٗوسَ زٗوتٖ نْدِيَ', 'mumekōsa zōṯe nḏiya', 'mumekosa zote ndiya', '');
INSERT INTO maisha_mume VALUES (745, 187, 'a', 'كُشَلِيكِ مُشِنْدوَاپٗ ', 'kushalı̄ki mushinḏwāpo', 'kushaliki mushindwapo', '');
INSERT INTO maisha_mume VALUES (746, 187, 'b', ' توَلَاكَ هُوَ نِ هَاپٗ ', 'ṯwalāka huwa ni hāpo', 'twalaka huwa ni hapo', '');
INSERT INTO maisha_mume VALUES (747, 187, 'c', 'نَ مُودَ أُئِتٗوَاپٗ ', 'na mūḏa uiṯowāpo', 'na muda uitowapo', '');
INSERT INTO maisha_mume VALUES (748, 187, 'd', ' أُسِئِزِدِيشٖ مٗويَ', 'usiiziḏı̄she mōya', 'usiizidishe moya', '');
INSERT INTO maisha_mume VALUES (749, 188, 'a', 'تِمِيزَ نَ مَشَرُوتِ ', 'ṯimı̄za na masharūṯi', 'timiza na masharuti', '');
INSERT INTO maisha_mume VALUES (750, 188, 'b', ' يَ هَالِ پِيَ وَكَاتِ ', 'ya hāli piya wakāṯi', 'ya hali piya wakati', '');
INSERT INTO maisha_mume VALUES (751, 188, 'c', 'نَ هُكُومُ زِتَفِيتِ ', 'na hukūmu ziṯafı̄ṯi', 'na hukumu zitafiti', '');
INSERT INTO maisha_mume VALUES (752, 188, 'd', ' كَبُولَ يَ كُتُمِيَ', 'kabūla ya kuṯumiya', 'kabula ya kutumiya', '');
INSERT INTO maisha_mume VALUES (753, 189, 'a', 'كُونَ وَاتُ هُوَتَانَ ', 'kūna wāṯu huwaṯāna', 'kuna watu huwatana', '');
INSERT INTO maisha_mume VALUES (754, 189, 'b', ' كِيسَ مَارَ هُوَؤٗونَ ', 'kı̄sa māra huwaōna', 'kisa mara huwaona', '');
INSERT INTO maisha_mume VALUES (755, 189, 'c', 'كْوَ هَرَامُ وَتَكَانَ ', 'kwa harāmu waṯakāna', 'kwa haramu watakana', '');
INSERT INTO maisha_mume VALUES (756, 189, 'd', ' زِپٖنْڠٖئٖ هُزٖنْڠٖيَ', 'zipengee huzengeya', 'zipengee huzengeya', '');
INSERT INTO maisha_mume VALUES (757, 190, 'a', 'هُزٖنْڠٖيَ مُهَلِيلِ ', 'huzengeya muhalı̄li', 'huzengeya muhalili', '');
INSERT INTO maisha_mume VALUES (758, 190, 'b', ' فِكِرِيَ يَامْبٗ هِيلِ ', 'fikiriya yāmbo hı̄li', 'fikiriya yambo hili', '');
INSERT INTO maisha_mume VALUES (759, 190, 'c', 'لَ كُؤَزِيمَ فَهَالِ ', 'la kuazı̄ma fahāli', 'la kuazima fahali', '');
INSERT INTO maisha_mume VALUES (760, 190, 'd', ' مْكٖ كْوٖينْدَ مْپٖكٖيَ', 'mke kwēnḏa mpekeya', 'mke kwenda mpekeya', '');
INSERT INTO maisha_mume VALUES (761, 191, 'a', 'نَ لَنْڠِينٖ كَذَلِيكَ ', 'na langı̄ne kadhalı̄ka', 'na langine kadhalika', '');
INSERT INTO maisha_mume VALUES (762, 191, 'b', ' نِ كْوَ ممٗويَ تٗشٖيكَ ', 'ni kwa mmōya ṯoshēka', 'ni kwa mmoya tosheka', '');
INSERT INTO maisha_mume VALUES (763, 191, 'c', 'إِيلَ كِيوَ مٖذِكِيكَ ', 'ı̄la kı̄wa medhikı̄ka', 'ila kiwa medhikika', '');
INSERT INTO maisha_mume VALUES (764, 191, 'd', ' هَئِكُپِينْڠَ شَرِيَ', 'haikupı̄nga shariya', 'haikupinga shariya', '');
INSERT INTO maisha_mume VALUES (765, 192, 'a', 'مْكٖ سِؤٗوٖ وَ پِيلِ ', 'mke siowe wa pı̄li', 'mke siowe wa pili', '');
INSERT INTO maisha_mume VALUES (766, 192, 'b', ' نِ أُذِيَ كْوٖيلِ كْوٖيلِ ', 'ni udhiya kwēli kwēli', 'ni udhiya kweli kweli', '');
INSERT INTO maisha_mume VALUES (767, 192, 'c', 'نَ إِنْڠَاوَ نِ هَلَالِ ', 'na ingāwa ni halāli', 'na ingawa ni halali', '');
INSERT INTO maisha_mume VALUES (768, 192, 'd', ' نِ أُزِيتٗ كُتُمِيَ', 'ni uzı̄ṯo kuṯumiya', 'ni uzito kutumiya', '');
INSERT INTO maisha_mume VALUES (769, 193, 'a', 'نَ وَنَوَاكٖ سِ سَاوَ ', 'na wanawāke si sāwa', 'na wanawake si sawa', '');
INSERT INTO maisha_mume VALUES (770, 193, 'b', ' كْوَ وٖنْڠِنٖؤٗ نِ دَاوَ ', 'kwa wengineo ni ḏāwa', 'kwa wengineo ni dawa', '');
INSERT INTO maisha_mume VALUES (771, 193, 'c', 'أُتَئِيُوتَ كُزَاوَ ', 'uṯaiyūṯa kuzāwa', 'utaiyuta kuzawa', '');
INSERT INTO maisha_mume VALUES (772, 193, 'd', ' نِمٖكْوَمْبِيَ يَهَايَ', 'nimekwambiya yahāya', 'nimekwambiya yahaya', '');
INSERT INTO maisha_mume VALUES (773, 194, 'a', 'كُونَ وَنَاءٗ رِذِيكَ ', 'kūna wanāo ridhı̄ka', 'kuna wanao ridhika', '');
INSERT INTO maisha_mume VALUES (774, 194, 'b', ' وَنْڠَاوَ وَنُن’ڠُنِيكَ ', 'wangāwa wanun’gunı̄ka', 'wangawa wanun’gunika', '');
INSERT INTO maisha_mume VALUES (775, 194, 'c', 'كُونَ وَنْڠِينٖ هُوَاكَ ', 'kūna wangı̄ne huwāka', 'kuna wangine huwaka', '');
INSERT INTO maisha_mume VALUES (776, 194, 'd', ' فُنُونُ وَكِسِكِيَ', 'funūnu wakisikiya', 'fununu wakisikiya', '');
INSERT INTO maisha_mume VALUES (777, 195, 'a', 'كُؤٗنْڠٖيزَ سِ هَرَامُ ', 'kuongēza si harāmu', 'kuongeza si haramu', '');
INSERT INTO maisha_mume VALUES (778, 195, 'b', ' وَلَكِينِ أُفَهَامُ ', 'walakı̄ni ufahāmu', 'walakini ufahamu', '');
INSERT INTO maisha_mume VALUES (779, 195, 'c', 'نِ كُؤُ مْنٗ جُكُومُ ', 'ni kuu mno jukūmu', 'ni kuu mno jukumu', '');
INSERT INTO maisha_mume VALUES (780, 195, 'd', ' مْبَالِ نَ وَاكٖ أُذِيَ', 'mbāli na wāke udhiya', 'mbali na wake udhiya', '');
INSERT INTO maisha_mume VALUES (781, 196, 'a', 'إِكِيوَ سَبَابُ إِيكٗ ', 'ikı̄wa sabābu ı̄ko', 'ikiwa sababu iko', '');
INSERT INTO maisha_mume VALUES (782, 196, 'b', ' كْوَ مْفَانٗ مْكٖ وَاكٗ ', 'kwa mfāno mke wāko', 'kwa mfano mke wako', '');
INSERT INTO maisha_mume VALUES (783, 196, 'c', 'مٖپٗوَ مِكَالِ مِيكٗ ', 'mepowa mikāli mı̄ko', 'mepowa mikali miko', '');
INSERT INTO maisha_mume VALUES (784, 196, 'd', ' كْوَ ذَرُورَ زَ أَفِيَ', 'kwa dharūra za afiya', 'kwa dharura za afiya', '');
INSERT INTO maisha_mume VALUES (785, 197, 'a', 'لَبُودَ هَانَ كِزَازِ ', 'labūḏa hāna kizāzi', 'labuda hana kizazi', '');
INSERT INTO maisha_mume VALUES (786, 197, 'b', ' لَ كُزَاءَ هَلِوٖيزِ ', 'la kuzāa haliwēzi', 'la kuzaa haliwezi', '');
INSERT INTO maisha_mume VALUES (787, 197, 'c', 'نَاوٖ وَتَاكَ پُمْبَازِ ', 'nāwe waṯāka pumbāzi', 'nawe wataka pumbazi', '');
INSERT INTO maisha_mume VALUES (788, 197, 'd', ' يَاپٗ نِ مْوَانَ ممٗويَ', 'yāpo ni mwāna mmōya', 'yapo ni mwana mmoya', '');
INSERT INTO maisha_mume VALUES (789, 198, 'a', 'أَوْ يَالٖ مَشُغُولِ ', 'aw yāle mashuḡūli', 'au yale mashughuli', '');
INSERT INTO maisha_mume VALUES (790, 198, 'b', ' يٖيٖ هُمْپَ ثَقِيلِ ', 'yeye humpa thaqı̄li', 'yeye humpa thaqili', '');
INSERT INTO maisha_mume VALUES (791, 198, 'c', 'نَاوٖ كُسِتَهَمِيلِ ', 'nāwe kusiṯahamı̄li', 'nawe kusitahamili', '');
INSERT INTO maisha_mume VALUES (792, 198, 'd', ' هُلِوٖيزِ هِيلٗ پِيَ', 'huliwēzi hı̄lo piya', 'huliwezi hilo piya', '');
INSERT INTO maisha_mume VALUES (793, 199, 'a', 'كْوَ ذَرُورَ زِيسٗ بُودِ ', 'kwa dharūra zı̄so būḏi', 'kwa dharura ziso budi', '');
INSERT INTO maisha_mume VALUES (794, 199, 'b', ' أُسِتٖينْدٖ كْوَ كَسِيدِ ', 'usiṯēnḏe kwa kası̄ḏi', 'usitende kwa kasidi', '');
INSERT INTO maisha_mume VALUES (795, 199, 'c', 'كُئٖنْڠٖيزَ وَ زَئِيدِ ', 'kuengēza wa zaı̄ḏi', 'kuengeza wa zaidi', '');
INSERT INTO maisha_mume VALUES (796, 199, 'd', ' كِتٗشٖلٖيزَ ممٗويَ', 'kiṯoshelēza mmōya', 'kitosheleza mmoya', '');
INSERT INTO maisha_mume VALUES (797, 200, 'a', 'كْوَ ممٗويَ كُتٗشٖيكَ ', 'kwa mmōya kuṯoshēka', 'kwa mmoya kutosheka', '');
INSERT INTO maisha_mume VALUES (798, 200, 'b', ' نْدِيٗ بٗورَ بِيلَ شَاكَ ', 'nḏiyo bōra bı̄la shāka', 'ndiyo bora bila shaka', '');
INSERT INTO maisha_mume VALUES (799, 200, 'c', 'كُئٖنْڠٖيزَ أُكِتَاكَ ', 'kuengēza ukiṯāka', 'kuengeza ukitaka', '');
INSERT INTO maisha_mume VALUES (800, 200, 'd', ' نِ كَامَ نِلٗكْوَمْبِيَ', 'ni kāma nilokwambiya', 'ni kama nilokwambiya', '');
INSERT INTO maisha_mume VALUES (801, 201, 'a', 'أُسِيوٖ كِرُوكَ مْتٗ ', 'usı̄we kirūka mṯo', 'usiwe kiruka mto', '');
INSERT INTO maisha_mume VALUES (802, 201, 'b', ' خَاسَ كِيوَ نَ وَتٗوتٗ ', 'ẖāsa kı̄wa na waṯōṯo', 'hasa kiwa na watoto', '');
INSERT INTO maisha_mume VALUES (803, 201, 'c', 'كُونَ هِسَابُ مزِيتٗ ', 'kūna hisābu mzı̄ṯo', 'kuna hisabu mzito', '');
INSERT INTO maisha_mume VALUES (804, 201, 'd', ' أَخٖيرَ تَكُنْڠٗجٖيَ', 'aẖēra ṯakungojeya', 'ahera takungojeya', '');
INSERT INTO maisha_mume VALUES (805, 202, 'a', 'أُسِئِفَانْيَ چَ نْيُوكِ ', 'usiifānya cha nyūki', 'usiifanya cha nyuki', '');
INSERT INTO maisha_mume VALUES (806, 202, 'b', ' هُتُوِ نَ هُدِرِيكِ ', 'huṯuwi na huḏirı̄ki', 'hutuwi na hudiriki', '');
INSERT INTO maisha_mume VALUES (807, 202, 'c', 'أُكِشِيكْوَ هُشِكِيكِ ', 'ukishı̄kwa hushikı̄ki', 'ukishikwa hushikiki', '');
INSERT INTO maisha_mume VALUES (808, 202, 'd', ' مَارَ هُوَ أُمٖتٖيَ', 'māra huwa umeṯeya', 'mara huwa umeteya', '');
INSERT INTO maisha_mume VALUES (809, 203, 'a', 'كِيوَ أُمٖپٖينْدَ تُونْدَ ', 'kı̄wa umepēnḏa ṯūnḏa', 'kiwa umependa tunda', '');
INSERT INTO maisha_mume VALUES (810, 203, 'b', ' هُونَ بُودِ نَ كُپٖينْدَ ', 'hūna būḏi na kupēnḏa', 'huna budi na kupenda', '');
INSERT INTO maisha_mume VALUES (811, 203, 'c', 'مْتِ وَاكٖ تَانْڠُ كْوَانْدَ ', 'mṯi wāke ṯāngu kwānḏa', 'mti wake tangu kwanda', '');
INSERT INTO maisha_mume VALUES (812, 203, 'd', ' وَزٖئٖ وَلِتوَمْبِيَ', 'wazee waliṯwambiya', 'wazee walitwambiya', '');
INSERT INTO maisha_mume VALUES (813, 204, 'a', 'نَاوٖ كِمْپٖينْدَ مْكٖ ', 'nāwe kimpēnḏa mke', 'nawe kimpenda mke', '');
INSERT INTO maisha_mume VALUES (814, 204, 'b', ' وَپٖينْدٖ وَزٖئٖ وَاكٖ ', 'wapēnḏe wazee wāke', 'wapende wazee wake', '');
INSERT INTO maisha_mume VALUES (815, 204, 'c', 'وَاكْوٖ مْبوَاكٗ سِئٖپُوكٖ ', 'wākwe mbwāko siepūke', 'wakwe mbwako siepuke', '');
INSERT INTO maisha_mume VALUES (816, 204, 'd', ' نَ هِشِيمَ كُوٖكٖيَ', 'na hishı̄ma kuwekeya', 'na hishima kuwekeya', '');
INSERT INTO maisha_mume VALUES (817, 205, 'a', 'مُهِشِيمُ وَاكٖ مَامَ ', 'muhishı̄mu wāke māma', 'muhishimu wake mama', '');
INSERT INTO maisha_mume VALUES (818, 205, 'b', ' پِيَ بَبَاكٖ دَئِيمَ ', 'piya babāke ḏaı̄ma', 'piya babake daima', '');
INSERT INTO maisha_mume VALUES (819, 205, 'c', 'كُوَذَرَاءُ سِ وٖيمَ ', 'kuwadharāu si wēma', 'kuwadharau si wema', '');
INSERT INTO maisha_mume VALUES (820, 205, 'd', ' تٗونٗ نَاوٖ تَمْتِيَ', 'ṯōno nāwe ṯamṯiya', 'tono nawe tamtiya', '');
INSERT INTO maisha_mume VALUES (821, 206, 'a', 'كْوَ أُؤٗوڤُ سِوَنٖينٖ ', 'kwa uōvu siwanēne', 'kwa uovu siwanene', '');
INSERT INTO maisha_mume VALUES (822, 206, 'b', ' إِتُونْڠٖ سِوَتُكَانٖ ', 'iṯūnge siwaṯukāne', 'itunge siwatukane', '');
INSERT INTO maisha_mume VALUES (823, 206, 'c', 'هَاتَ كَامَ هُويٗ مْوَانٖ ', 'hāṯa kāma hūyo mwāne', 'hata kama huyo mwane', '');
INSERT INTO maisha_mume VALUES (824, 206, 'd', ' هِشِيمَ مٖوَڤُنْدِيَ', 'hishı̄ma mewavunḏiya', 'hishima mewavundiya', '');
INSERT INTO maisha_mume VALUES (825, 207, 'a', 'وٖيوٖ كَاتُ سِسُبُوتُ ', 'wēwe kāṯu sisubūṯu', 'wewe katu sisubutu', '');
INSERT INTO maisha_mume VALUES (826, 207, 'b', ' كُذَرَاءُ هَاءٗ وَاتُ ', 'kudharāu hāo wāṯu', 'kudharau hao watu', '');
INSERT INTO maisha_mume VALUES (827, 207, 'c', 'هَاتَ كَامَ أُتُكُوتُ ', 'hāṯa kāma uṯukūṯu', 'hata kama utukutu', '');
INSERT INTO maisha_mume VALUES (828, 207, 'd', ' كْوَاءٗ أُمٖشُهُدِيَ', 'kwāo umeshuhuḏiya', 'kwao umeshuhudiya', '');
INSERT INTO maisha_mume VALUES (829, 208, 'a', 'كِيوَ نِ وَاتُ مَتَاتَ ', 'kı̄wa ni wāṯu maṯāṯa', 'kiwa ni watu matata', '');
INSERT INTO maisha_mume VALUES (830, 208, 'b', ' سِؤٗ نَاءٗ أُتَتٖيتَ ', 'sio nāo uṯaṯēṯa', 'sio nao utateta', '');
INSERT INTO maisha_mume VALUES (831, 208, 'c', 'خٖيرِ مْبَالِ كُئِڤُوتَ ', 'ẖēri mbāli kuivūṯa', 'heri mbali kuivuta', '');
INSERT INTO maisha_mume VALUES (832, 208, 'd', ' نَ مَامْبٗ كُؤَنْڠَلِيَ', 'na māmbo kuangaliya', 'na mambo kuangaliya', '');
INSERT INTO maisha_mume VALUES (833, 209, 'a', 'أُكِيوَ أُونَ نَفَاسِ ', 'ukı̄wa ūna nafāsi', 'ukiwa una nafasi', '');
INSERT INTO maisha_mume VALUES (834, 209, 'b', ' لَ كُوَاپَ سِكُوَاسِ ', 'la kuwāpa sikuwāsi', 'la kuwapa sikuwasi', '');
INSERT INTO maisha_mume VALUES (835, 209, 'c', 'إِيلَ فَانْيَ كْوَ كِئَاسِ ', 'ı̄la fānya kwa kiāsi', 'ila fanya kwa kiasi', '');
INSERT INTO maisha_mume VALUES (836, 209, 'd', ' سِيٖ دٖيوٖ كَكُتِيَ', 'siye ḏēwe kakuṯiya', 'siye dewe kakutiya', '');
INSERT INTO maisha_mume VALUES (837, 210, 'a', 'كُونَ وَاكْوٖ وَ وَنْڠِينٖ ', 'kūna wākwe wa wangı̄ne', 'kuna wakwe wa wangine', '');
INSERT INTO maisha_mume VALUES (838, 210, 'b', ' كْوَ كُپَاتَ وَدٖنْڠٖينٖ ', 'kwa kupāṯa waḏengēne', 'kwa kupata wadengene', '');
INSERT INTO maisha_mume VALUES (839, 210, 'c', 'كِيوَ نَاءٗ أُپٖمْبٖينٖ ', 'kı̄wa nāo upembēne', 'kiwa nao upembene', '');
INSERT INTO maisha_mume VALUES (840, 210, 'd', ' هَذَارِ نَكُؤُسِيَ', 'hadhāri nakuusiya', 'hadhari nakuusiya', '');
INSERT INTO maisha_mume VALUES (841, 211, 'a', 'وَنْڠِينٖ نِ وَاتُ سَانَ ', 'wangı̄ne ni wāṯu sāna', 'wangine ni watu sana', '');
INSERT INTO maisha_mume VALUES (842, 211, 'b', ' كَاتُ هَوَكُدَنْڠَانَ ', 'kāṯu hawakuḏangāna', 'katu hawakudangana', '');
INSERT INTO maisha_mume VALUES (843, 211, 'c', 'هَاتَ كِيوَ هَاجَ أُونَ ', 'hāṯa kı̄wa hāja ūna', 'hata kiwa haja una', '');
INSERT INTO maisha_mume VALUES (844, 211, 'd', ' هَأَنْدَامِ كُكْوَمْبِيَ', 'haanḏāmi kukwambiya', 'haandami kukwambiya', '');
INSERT INTO maisha_mume VALUES (845, 212, 'a', 'هَنَانْدِ هَاتَ نْيُمْبَانِ ', 'hanānḏi hāṯa nyumbāni', 'hanandi hata nyumbani', '');
INSERT INTO maisha_mume VALUES (846, 212, 'b', ' كْوَ مْوَنَاوٖ كَتَمَانِ ', 'kwa mwanāwe kaṯamāni', 'kwa mwanawe katamani', '');
INSERT INTO maisha_mume VALUES (847, 212, 'c', 'كُوچَ وَاتُ وَسِذَانِ ', 'kūcha wāṯu wasidhāni', 'kucha watu wasidhani', '');
INSERT INTO maisha_mume VALUES (848, 212, 'd', ' أَمٖكْوٖينْدَ كُتَوِيَ', 'amekwēnḏa kuṯawiya', 'amekwenda kutawiya', '');
INSERT INTO maisha_mume VALUES (849, 213, 'a', 'نْدِيَانِ مُكِكُتَانَ ', 'nḏiyāni mukikuṯāna', 'ndiyani mukikutana', '');
INSERT INTO maisha_mume VALUES (850, 213, 'b', ' هُوَ نَ هَرَاكَ سَانَ ', 'huwa na harāka sāna', 'huwa na haraka sana', '');
INSERT INTO maisha_mume VALUES (851, 213, 'c', 'هَمَكِنِيكِ كُنٖينَ ', 'hamakinı̄ki kunēna', 'hamakiniki kunena', '');
INSERT INTO maisha_mume VALUES (852, 213, 'd', ' كْوَ لِيلٗ كُلِكِمْبِيَ', 'kwa lı̄lo kulikimbiya', 'kwa lilo kulikimbiya', '');
INSERT INTO maisha_mume VALUES (853, 214, 'a', 'وَكِيوَ وَاكْوٖ وَ وَاكٗ ', 'wakı̄wa wākwe wa wāko', 'wakiwa wakwe wa wako', '');
INSERT INTO maisha_mume VALUES (854, 214, 'b', ' كْوَاءٗ هِيزِ سِيفَ زِيكٗ ', 'kwāo hı̄zi sı̄fa zı̄ko', 'kwao hizi sifa ziko', '');
INSERT INTO maisha_mume VALUES (855, 214, 'c', 'بَاسِ نِ بَهَاتِ يَاكٗ ', 'bāsi ni bahāṯi yāko', 'basi ni bahati yako', '');
INSERT INTO maisha_mume VALUES (856, 214, 'd', ' نِ هَاپٗ پَ كُزِوِيَ', 'ni hāpo pa kuziwiya', 'ni hapo pa kuziwiya', '');
INSERT INTO maisha_mume VALUES (857, 215, 'a', 'أَامَ وَكْوٖؤٗ وَكِيوَ ', 'āma wakweo wakı̄wa', 'ama wakweo wakiwa', '');
INSERT INTO maisha_mume VALUES (858, 215, 'b', ' نِ وَ كُپٖينْدَ كُپٗوَ ', 'ni wa kupēnḏa kupowa', 'ni wa kupenda kupowa', '');
INSERT INTO maisha_mume VALUES (859, 215, 'c', 'كُوَاپَ هُكُزُوِيوَ ', 'kuwāpa hukuzūı̄wa', 'kuwapa hukuzuwiwa', '');
INSERT INTO maisha_mume VALUES (860, 215, 'd', ' مْكٗونٗ كُوَنْيٗشٖيَ', 'mkōno kuwanyosheya', 'mkono kuwanyosheya', '');
INSERT INTO maisha_mume VALUES (861, 216, 'a', 'أُسِوٖيكٖ كَامَ أَادَ ', 'usiwēke kāma āḏa', 'usiweke kama ada', '');
INSERT INTO maisha_mume VALUES (862, 216, 'b', ' كِيسَ تَكْوٖتٖيَ شِيدَ ', 'kı̄sa ṯakweṯeya shı̄ḏa', 'kisa takweteya shida', '');
INSERT INTO maisha_mume VALUES (863, 216, 'c', 'إِيلَ وَاوٖ سِ لَبُودَ ', 'ı̄la wāwe si labūḏa', 'ila wawe si labuda', '');
INSERT INTO maisha_mume VALUES (864, 216, 'd', ' نِ وَاتُ وَهِتَجِيَ', 'ni wāṯu wahiṯajiya', 'ni watu wahitajiya', '');
INSERT INTO maisha_mume VALUES (865, 217, 'a', 'وَكِيوَ نِ وَهِتَاجِ ', 'wakı̄wa ni wahiṯāji', 'wakiwa ni wahitaji', '');
INSERT INTO maisha_mume VALUES (866, 217, 'b', ' سِوَنْڠٗوجٖ كُتَرَاجِ ', 'siwangōje kuṯarāji', 'siwangoje kutaraji', '');
INSERT INTO maisha_mume VALUES (867, 217, 'c', 'وَكِيوَ كْوَاكٗ هَوَاجِ ', 'wakı̄wa kwāko hawāji', 'wakiwa kwako hawaji', '');
INSERT INTO maisha_mume VALUES (868, 217, 'd', ' نِ سَاوَ كُوَپٖكٖيَ', 'ni sāwa kuwapekeya', 'ni sawa kuwapekeya', '');
INSERT INTO maisha_mume VALUES (869, 218, 'a', 'أُكِيوَ أُمٖوَؤٗونَ ', 'ukı̄wa umewaōna', 'ukiwa umewaona', '');
INSERT INTO maisha_mume VALUES (870, 218, 'b', ' سِ وَاتُ وٖينْيٖ مَأَنَ ', 'si wāṯu wēnye maana', 'si watu wenye maana', '');
INSERT INTO maisha_mume VALUES (871, 218, 'c', 'نِ وَالٖ وَ كُدَنْڠَانَ ', 'ni wāle wa kuḏangāna', 'ni wale wa kudangana', '');
INSERT INTO maisha_mume VALUES (872, 218, 'd', ' وَ كُپٖينْدَ كُپَپِيَ', 'wa kupēnḏa kupapiya', 'wa kupenda kupapiya', '');
INSERT INTO maisha_mume VALUES (873, 219, 'a', 'زِوِيَ سِتٗوٖ چَاكٗ ', 'ziwiya siṯowe chāko', 'ziwiya sitowe chako', '');
INSERT INTO maisha_mume VALUES (874, 219, 'b', ' نَ مْوَمْبِيَ مْكٖ وَاكٗ ', 'na mwambiya mke wāko', 'na mwambiya mke wako', '');
INSERT INTO maisha_mume VALUES (875, 219, 'c', 'إِيلَ هُتٗوفُ سُمْبُوكٗ ', 'ı̄la huṯōfu sumbūko', 'ila hutofu sumbuko', '');
INSERT INTO maisha_mume VALUES (876, 219, 'd', ' بِرِيكَ مْبٗوڤُ كُتِيَ', 'birı̄ka mbōvu kuṯiya', 'birika mbovu kutiya', '');
INSERT INTO maisha_mume VALUES (877, 220, 'a', 'أَامَ وَسِؤٗ وَزَازِ ', 'āma wasio wazāzi', 'ama wasio wazazi', '');
INSERT INTO maisha_mume VALUES (878, 220, 'b', ' وَجٗومْبَ نَ مَشَنْڠَازِ ', 'wajōmba na mashangāzi', 'wajomba na mashangazi', '');
INSERT INTO maisha_mume VALUES (879, 220, 'c', 'هَاپٗ كُونَ نْڠُومُ كَازِ ', 'hāpo kūna ngūmu kāzi', 'hapo kuna ngumu kazi', '');
INSERT INTO maisha_mume VALUES (880, 220, 'd', ' كْوَ يٖيتُ هِينِ دُنِيَ', 'kwa yēṯu hı̄ni ḏuniya', 'kwa yetu hini duniya', '');
INSERT INTO maisha_mume VALUES (881, 221, 'a', 'كْوَانْدَ أُسِوَتَپِيٖ ', 'kwānḏa usiwaṯapiye', 'kwanda usiwatapiye', '');
INSERT INTO maisha_mume VALUES (882, 221, 'b', ' كٖيتِ مْبَالِ وَنْڠَلِيٖ ', 'kēṯi mbāli wangaliye', 'keti mbali wangaliye', '');
INSERT INTO maisha_mume VALUES (883, 221, 'c', 'أُكِيَؤٗونَ مَمْبٗويٖ ', 'ukiyaōna mambōye', 'ukiyaona mamboye', '');
INSERT INTO maisha_mume VALUES (884, 221, 'd', ' نْدِيَ هَيَكْوٖكٖلٖيَ', 'nḏiya hayakwekeleya', 'ndiya hayakwekeleya', '');
INSERT INTO maisha_mume VALUES (885, 222, 'a', 'أُسٖينْدٖ سَانَ كَرِيبُ ', 'usēnḏe sāna karı̄bu', 'usende sana karibu', '');
INSERT INTO maisha_mume VALUES (886, 222, 'b', ' تَئِڤُتِيَ تَأَبُ ', 'ṯaivuṯiya ṯaabu', 'taivutiya taabu', '');
INSERT INTO maisha_mume VALUES (887, 222, 'c', 'نِ وٖينْڠِ وَ كُهَرِيبُ ', 'ni wēngi wa kuharı̄bu', 'ni wengi wa kuharibu', '');
INSERT INTO maisha_mume VALUES (888, 222, 'd', ' كَتِيكَ نِمٖزٗتَايَ', 'kaṯı̄ka nimezoṯāya', 'katika nimezotaya', '');
INSERT INTO maisha_mume VALUES (889, 223, 'a', 'أَامَ مَشٖمٖيڠِ زَاكٗ ', 'āma mashemēgi zāko', 'ama mashemegi zako', '');
INSERT INTO maisha_mume VALUES (890, 223, 'b', ' دَادَ زَاكٖ مْكٖ وَاكٗ ', 'ḏāḏa zāke mke wāko', 'dada zake mke wako', '');
INSERT INTO maisha_mume VALUES (891, 223, 'c', 'مْوَنَانْڠُ سِڤُونْدٖ مِيكٗ ', 'mwanāngu sivūnḏe mı̄ko', 'mwanangu sivunde miko', '');
INSERT INTO maisha_mume VALUES (892, 223, 'd', ' إِلٗوٖيكْوَ نَ شَرِيَ', 'ilowēkwa na shariya', 'ilowekwa na shariya', '');
INSERT INTO maisha_mume VALUES (893, 224, 'a', 'أُسِؤٗنْدٗوٖ مِپَاكَ ', 'usionḏowe mipāka', 'usiondowe mipaka', '');
INSERT INTO maisha_mume VALUES (894, 224, 'b', ' كْوَ مزَاهَ نَ ذِهَاكَ ', 'kwa mzāha na dhihāka', 'kwa mzaha na dhihaka', '');
INSERT INTO maisha_mume VALUES (895, 224, 'c', 'مَارَ مَامْبٗ هُڠٖؤُوكَ ', 'māra māmbo hugeūka', 'mara mambo hugeuka', '');
INSERT INTO maisha_mume VALUES (896, 224, 'd', ' كِزَأَزَاءَ كِكَايَ', 'kizaazāa kikāya', 'kizaazaa kikaya', '');
INSERT INTO maisha_mume VALUES (897, 225, 'a', 'خٖيرِ وَمْبِيوٖ مُؤٗوڤُ ', 'ẖēri wambı̄we muōvu', 'heri wambiwe muovu', '');
INSERT INTO maisha_mume VALUES (898, 225, 'b', ' كُلِيكٗ كُپَاتَ كٗوڤُ ', 'kulı̄ko kupāṯa kōvu', 'kuliko kupata kovu', '');
INSERT INTO maisha_mume VALUES (899, 225, 'c', 'خٖيرِ وَامْبٖ أُونَ وِيڤُ ', 'ẖēri wāmbe ūna wı̄vu', 'heri wambe una wivu', '');
INSERT INTO maisha_mume VALUES (900, 225, 'd', ' كُلِيكٗ كُكُڤُنْدِيَ', 'kulı̄ko kukuvunḏiya', 'kuliko kukuvundiya', '');
INSERT INTO maisha_mume VALUES (901, 226, 'a', 'وِيڤُ نِ كَامَ كِؤُونْڠٗ ', 'wı̄vu ni kāma kiūngo', 'wivu ni kama kiungo', '');
INSERT INTO maisha_mume VALUES (902, 226, 'b', ' أُكِزِيدِ نِ تٖوٖينْڠٗ ', 'ukizı̄ḏi ni ṯewēngo', 'ukizidi ni tewengo', '');
INSERT INTO maisha_mume VALUES (903, 226, 'c', 'پِيَ كُيِفَانْيَ تٗونْڠٗ ', 'piya kuyifānya ṯōngo', 'piya kuyifanya tongo', '');
INSERT INTO maisha_mume VALUES (904, 226, 'd', ' أُدُيُثِينِ هُنْڠِيَ', 'uḏuyuthı̄ni hungiya', 'uduyuthini hungiya', '');
INSERT INTO maisha_mume VALUES (905, 227, 'a', 'نَ كُؤُكٗوسَ كَبِيسَ ', 'na kuukōsa kabı̄sa', 'na kuukosa kabisa', '');
INSERT INTO maisha_mume VALUES (906, 227, 'b', ' إِنْڠَاوَ نْدِيٗ كِسَاسَ ', 'ingāwa nḏiyo kisāsa', 'ingawa ndiyo kisasa', '');
INSERT INTO maisha_mume VALUES (907, 227, 'c', 'هِيٗ سِ نْجٖيمَ سِيَاسَ ', 'hiyo si njēma siyāsa', 'hiyo si njema siyasa', '');
INSERT INTO maisha_mume VALUES (908, 227, 'd', ' يَ نْيُمْبَانِ كُتُمِيَ', 'ya nyumbāni kuṯumiya', 'ya nyumbani kutumiya', '');
INSERT INTO maisha_mume VALUES (909, 228, 'a', 'نِ لَزِيمَ كُوَ نَاءٗ ', 'ni lazı̄ma kuwa nāo', 'ni lazima kuwa nao', '');
INSERT INTO maisha_mume VALUES (910, 228, 'b', ' كْوَ أَلِيٗ نِ مْكٖؤٗ ', 'kwa aliyo ni mkeo', 'kwa aliyo ni mkeo', '');
INSERT INTO maisha_mume VALUES (911, 228, 'c', 'كِكُزُمْبُوَ هُنَاءٗ ', 'kikuzumbuwa hunāo', 'kikuzumbuwa hunao', '');
INSERT INTO maisha_mume VALUES (912, 228, 'd', ' مَتٗونِ هُتٗمْنْڠِيَ', 'maṯōni huṯomngiya', 'matoni hutomngiya', '');
INSERT INTO maisha_mume VALUES (913, 229, 'a', 'كُوَ نَاءٗ وَ كَدِيرِ ', 'kuwa nāo wa kaḏı̄ri', 'kuwa nao wa kadiri', '');
INSERT INTO maisha_mume VALUES (914, 229, 'b', ' هِيٗ نْدِيٗ دَسِتُورِ ', 'hiyo nḏiyo ḏasiṯūri', 'hiyo ndiyo dasituri', '');
INSERT INTO maisha_mume VALUES (915, 229, 'c', 'نَ كْوَ مْكٖ نِ فَخَارِ ', 'na kwa mke ni faẖāri', 'na kwa mke ni fahari', '');
INSERT INTO maisha_mume VALUES (916, 229, 'd', ' كْوَ وٖينْدٖ تَيِڤُنِيَ', 'kwa wēnḏe ṯayivuniya', 'kwa wende tayivuniya', '');
INSERT INTO maisha_mume VALUES (917, 230, 'a', 'نَ فُفنُونُ أُكِپَاتَ ', 'na fufnūnu ukipāṯa', 'na fufnunu ukipata', '');
INSERT INTO maisha_mume VALUES (918, 230, 'b', ' كُوَ مْكٖ نِ مْتَاتَ ', 'kuwa mke ni mṯāṯa', 'kuwa mke ni mtata', '');
INSERT INTO maisha_mume VALUES (919, 230, 'c', 'سِئِنُوكٖ نَ كُتٖيتَ ', 'siinūke na kuṯēṯa', 'siinuke na kuteta', '');
INSERT INTO maisha_mume VALUES (920, 230, 'd', ' كْوَانْدَ زِيدِ كْوَنْڠَلِيَ', 'kwānḏa zı̄ḏi kwangaliya', 'kwanda zidi kwangaliya', '');
INSERT INTO maisha_mume VALUES (921, 231, 'a', 'سِمْتُكُلِيٖ ذَانَ ', 'simṯukuliye dhāna', 'simtukuliye dhana', '');
INSERT INTO maisha_mume VALUES (922, 231, 'b', ' كْوَ كُوَ وَاجَ هُنٖينَ ', 'kwa kuwa wāja hunēna', 'kwa kuwa waja hunena', '');
INSERT INTO maisha_mume VALUES (923, 231, 'c', 'هِيلٗ نِ خَتَارِ سَانَ ', 'hı̄lo ni ẖaṯāri sāna', 'hilo ni hatari sana', '');
INSERT INTO maisha_mume VALUES (924, 231, 'd', ' مَيُتٗونِ تَكُتِيَ', 'mayuṯōni ṯakuṯiya', 'mayutoni takutiya', '');
INSERT INTO maisha_mume VALUES (925, 232, 'a', 'إِزِوِيٖ أُسُبِيرِ ', 'iziwiye usubı̄ri', 'iziwiye usubiri', '');
INSERT INTO maisha_mume VALUES (926, 232, 'b', ' أُهَكِكِيشٖ خَبَارِ ', 'uhakikı̄she ẖabāri', 'uhakikishe habari', '');
INSERT INTO maisha_mume VALUES (927, 232, 'c', 'تٖينَ أُفَانْيٖ كْوَ سِيرِ ', 'ṯēna ufānye kwa sı̄ri', 'tena ufanye kwa siri', '');
INSERT INTO maisha_mume VALUES (928, 232, 'd', ' پَاسِ نَ كُپِيجَ مْبِيَ', 'pāsi na kupı̄ja mbiya', 'pasi na kupija mbiya', '');
INSERT INTO maisha_mume VALUES (929, 233, 'a', 'إِكِيوَ أُمٖتٗشٖيكَ ', 'ikı̄wa umeṯoshēka', 'ikiwa umetosheka', '');
INSERT INTO maisha_mume VALUES (930, 233, 'b', ' هِيلٗ نِ يَامْبٗ هَكِيكَ ', 'hı̄lo ni yāmbo hakı̄ka', 'hilo ni yambo hakika', '');
INSERT INTO maisha_mume VALUES (931, 233, 'c', 'كْوَ تَرَتِيبُ إٖپُوكَ ', 'kwa ṯaraṯı̄bu epūka', 'kwa taratibu epuka', '');
INSERT INTO maisha_mume VALUES (932, 233, 'd', ' بِيلَ سَبَابُ كُتَايَ', 'bı̄la sabābu kuṯāya', 'bila sababu kutaya', '');
INSERT INTO maisha_mume VALUES (933, 234, 'a', 'سِتَايٖ يَاكٗ سَبَابُ ', 'siṯāye yāko sabābu', 'sitaye yako sababu', '');
INSERT INTO maisha_mume VALUES (934, 234, 'b', ' أُتَزِيدِ كُهَرِيبُ ', 'uṯazı̄ḏi kuharı̄bu', 'utazidi kuharibu', '');
INSERT INTO maisha_mume VALUES (935, 234, 'c', 'زِتَتَنْڠَاءَ أَئِيبُ ', 'ziṯaṯangāa aı̄bu', 'zitatangaa aibu', '');
INSERT INTO maisha_mume VALUES (936, 234, 'd', ' نَ سِ وٖيمَ كُئٖنٖيَ', 'na si wēma kueneya', 'na si wema kueneya', '');
INSERT INTO maisha_mume VALUES (937, 235, 'a', 'نَ هِيلٗ كِيسَ كُتٖينْدَ ', 'na hı̄lo kı̄sa kuṯēnḏa', 'na hilo kisa kutenda', '');
INSERT INTO maisha_mume VALUES (938, 235, 'b', ' هُونَ بُودِ كُئِپِينْدَ ', 'hūna būḏi kuipı̄nḏa', 'huna budi kuipinda', '');
INSERT INTO maisha_mume VALUES (939, 235, 'c', 'هَاتَ كَامَ أُونَ نْيٗونْدَ ', 'hāṯa kāma ūna nyōnḏa', 'hata kama una nyonda', '');
INSERT INTO maisha_mume VALUES (940, 235, 'd', ' سِيوٖ نْيُومَ تَرٖجٖيَ', 'sı̄we nyūma ṯarejeya', 'siwe nyuma tarejeya', '');
INSERT INTO maisha_mume VALUES (941, 236, 'a', 'إِپِينْدٖ إِپِينْدٖ مْنٗ ', 'ipı̄nḏe ipı̄nḏe mno', 'ipinde ipinde mno', '');
INSERT INTO maisha_mume VALUES (942, 236, 'b', ' سِبَدِيلِ لَاكٗ نٖينٗ ', 'sibaḏı̄li lāko nēno', 'sibadili lako neno', '');
INSERT INTO maisha_mume VALUES (943, 236, 'c', 'مْوِيسٗ تَپَاتَ أُسٗونٗ ', 'mwı̄so ṯapāṯa usōno', 'mwiso tapata usono', '');
INSERT INTO maisha_mume VALUES (944, 236, 'd', ' يَتَتٗوكَ مَزٗوٖيَ', 'yaṯaṯōka mazoweya', 'yatatoka mazoweya', '');
INSERT INTO maisha_mume VALUES (945, 237, 'a', 'أُتَسُكِكَسُكِيكَ ', 'uṯasukikasukı̄ka', 'utasukikasukika', '');
INSERT INTO maisha_mume VALUES (946, 237, 'b', ' كِيوَ مٗويٗ وَمْتَاكَ ', 'kı̄wa mōyo wamṯāka', 'kiwa moyo wamtaka', '');
INSERT INTO maisha_mume VALUES (947, 237, 'c', 'فَهَامُ تَفٖذٖهٖيكَ ', 'fahāmu ṯafedhehēka', 'fahamu tafedheheka', '');
INSERT INTO maisha_mume VALUES (948, 237, 'd', ' كِيوَ هُتٗئِزِوِيَ', 'kı̄wa huṯoiziwiya', 'kiwa hutoiziwiya', '');
INSERT INTO maisha_mume VALUES (949, 238, 'a', 'إِزِوِيٖ إِكُكُوسٖ ', 'iziwiye ikukūse', 'iziwiye ikukuse', '');
INSERT INTO maisha_mume VALUES (950, 238, 'b', ' مْپَاكَ مَهَابَ يٖيسٖ ', 'mpāka mahāba yēse', 'mpaka mahaba yese', '');
INSERT INTO maisha_mume VALUES (951, 238, 'c', 'پٖنْيٖينْيٖ أُسِيَپِيسٖ ', 'penyēnye usiyapı̄se', 'penyenye usiyapise', '');
INSERT INTO maisha_mume VALUES (952, 238, 'd', ' مٗيٗونِ كَكُرُدِيَ', 'moyōni kakuruḏiya', 'moyoni kakurudiya', '');
INSERT INTO maisha_mume VALUES (953, 239, 'a', 'مْوِسٗوٖ يَتَؤٗنْدٗوكَ ', 'mwisowe yaṯaonḏōka', 'mwisowe yataondoka', '');
INSERT INTO maisha_mume VALUES (954, 239, 'b', ' نَ وٖيوٖ أُتَأَفِيكَ ', 'na wēwe uṯaafı̄ka', 'na wewe utaafika', '');
INSERT INTO maisha_mume VALUES (955, 239, 'c', 'كُلِيكٗ كُفٖذٖهٖيكَ ', 'kulı̄ko kufedhehēka', 'kuliko kufedheheka', '');
INSERT INTO maisha_mume VALUES (956, 239, 'd', ' نَ إِزَرَانِ كُنْڠِيَ', 'na izarāni kungiya', 'na izarani kungiya', '');
INSERT INTO maisha_mume VALUES (957, 240, 'a', 'لَكِينِ نَكُكُمْبُوشَ ', 'lakı̄ni nakukumbūsha', 'lakini nakukumbusha', '');
INSERT INTO maisha_mume VALUES (958, 240, 'b', ' كِيسوَ چَ نَانَ أَئِيشَ ', 'kı̄swa cha nāna aı̄sha', 'kiswa cha nana aisha', '');
INSERT INTO maisha_mume VALUES (959, 240, 'c', 'ڤُرُمَاءِ وَلِزُوشَ ', 'vurumāi walizūsha', 'vurumai walizusha', '');
INSERT INTO maisha_mume VALUES (960, 240, 'd', ' مَاوِ وَكَمزُلِيَ', 'māwi wakamzuliya', 'mawi wakamzuliya', '');
INSERT INTO maisha_mume VALUES (961, 241, 'a', 'وَلِؤٗنٖينَ نِ وٖينْڠِ ', 'walionēna ni wēngi', 'walionena ni wengi', '');
INSERT INTO maisha_mume VALUES (962, 241, 'b', ' وَكَفَانْيَ نَ مَڠٖينْڠِ ', 'wakafānya na magēngi', 'wakafanya na magengi', '');
INSERT INTO maisha_mume VALUES (963, 241, 'c', 'نَ زِكَاءٗ زَ مِتِينْڠِ ', 'na zikāo za miṯı̄ngi', 'na zikao za mitingi', '');
INSERT INTO maisha_mume VALUES (964, 241, 'd', ' مَدِينَ زِكَئِنٖيَ', 'maḏı̄na zikaineya', 'madina zikaineya', '');
INSERT INTO maisha_mume VALUES (965, 242, 'a', 'كْوَ يَامْبٗ لِيسٗ أَسِيلِ ', 'kwa yāmbo lı̄so ası̄li', 'kwa yambo liso asili', '');
INSERT INTO maisha_mume VALUES (966, 242, 'b', ' كْوَ مْكٖ وَاكٖ رَسُولِ ', 'kwa mke wāke rasūli', 'kwa mke wake rasuli', '');
INSERT INTO maisha_mume VALUES (967, 242, 'c', 'كَاتُ هَلِكُوَ كْوٖيلِ ', 'kāṯu halikuwa kwēli', 'katu halikuwa kweli', '');
INSERT INTO maisha_mume VALUES (968, 242, 'd', ' نِ أُڤُومِ وَلِتِيَ', 'ni uvūmi waliṯiya', 'ni uvumi walitiya', '');
INSERT INTO maisha_mume VALUES (969, 243, 'a', 'مْوَنْڠَلِيٖ نَ مْتُومِ ', 'mwangaliye na mṯūmi', 'mwangaliye na mtumi', '');
INSERT INTO maisha_mume VALUES (970, 243, 'b', ' أَلِكُوَ هَأَتَامِ ', 'alikuwa haaṯāmi', 'alikuwa haatami', '');
INSERT INTO maisha_mume VALUES (971, 243, 'c', 'أَلِزِوِيَ أُلِيمِ ', 'aliziwiya ulı̄mi', 'aliziwiya ulimi', '');
INSERT INTO maisha_mume VALUES (972, 243, 'd', ' مْپَاكَ وَهَايِ كُويَ', 'mpāka wahāyi kūya', 'mpaka wahayi kuya', '');
INSERT INTO maisha_mume VALUES (973, 244, 'a', 'يَتَاكَ مْنٗ هَذَارِ ', 'yaṯāka mno hadhāri', 'yataka mno hadhari', '');
INSERT INTO maisha_mume VALUES (974, 244, 'b', ' كَتِيكَ هِيزٗ خَبَارِ ', 'kaṯı̄ka hı̄zo ẖabāri', 'katika hizo habari', '');
INSERT INTO maisha_mume VALUES (975, 244, 'c', 'سِيوٖ مْپٖيسِ كُكِيرِ ', 'sı̄we mpēsi kukı̄ri', 'siwe mpesi kukiri', '');
INSERT INTO maisha_mume VALUES (976, 244, 'd', ' يَامْبٗ أُكِلِسِكِيَ', 'yāmbo ukilisikiya', 'yambo ukilisikiya', '');
INSERT INTO maisha_mume VALUES (977, 245, 'a', 'تَفِيتِ تَفِيتِ سَانَ ', 'ṯafı̄ṯi ṯafı̄ṯi sāna', 'tafiti tafiti sana', '');
INSERT INTO maisha_mume VALUES (978, 245, 'b', ' هَاتَ شَاكَ أُوٖ هُونَ ', 'hāṯa shāka uwe hūna', 'hata shaka uwe huna', '');
INSERT INTO maisha_mume VALUES (979, 245, 'c', 'نْدِيپٗ هَاپٗ لَاكٗ نٖينَ ', 'nḏı̄po hāpo lāko nēna', 'ndipo hapo lako nena', '');
INSERT INTO maisha_mume VALUES (980, 245, 'd', ' بِيلَ سَبَابُ كُتَايَ', 'bı̄la sabābu kuṯāya', 'bila sababu kutaya', '');
INSERT INTO maisha_mume VALUES (981, 246, 'a', 'هَاپَ سَاسَ نِتَكٗومَ ', 'hāpa sāsa niṯakōma', 'hapa sasa nitakoma', '');
INSERT INTO maisha_mume VALUES (982, 246, 'b', ' وَالَ يٗوتٖ سِكُسٖيمَ ', 'wāla yōṯe sikusēma', 'wala yote sikusema', '');
INSERT INTO maisha_mume VALUES (983, 246, 'c', 'لَكِينِ أُكِئَنْدَامَ ', 'lakı̄ni ukianḏāma', 'lakini ukiandama', '');
INSERT INTO maisha_mume VALUES (984, 246, 'd', ' هَايَ تَكُسَئِدِيَ', 'hāya ṯakusaiḏiya', 'haya takusaidiya', '');
INSERT INTO maisha_mume VALUES (985, 247, 'a', 'نِيَ نَ يَانْڠُ ذَمِيرِ ', 'niya na yāngu dhamı̄ri', 'niya na yangu dhamiri', '');
INSERT INTO maisha_mume VALUES (986, 247, 'b', ' كْوَنْدِيكَ كْوَ مَشَئِيرِ ', 'kwanḏı̄ka kwa mashaı̄ri', 'kwandika kwa mashairi', '');
INSERT INTO maisha_mume VALUES (987, 247, 'c', 'نِ كُئٖنٖيزَ خَبَارِ ', 'ni kuenēza ẖabāri', 'ni kueneza habari', '');
INSERT INTO maisha_mume VALUES (988, 247, 'd', ' كْوَ وٖينْيٖ كُيَسِكِيَ', 'kwa wēnye kuyasikiya', 'kwa wenye kuyasikiya', '');
INSERT INTO maisha_mume VALUES (989, 248, 'a', 'نِ سَهَالِ كُسِكِيزَ ', 'ni sahāli kusikı̄za', 'ni sahali kusikiza', '');
INSERT INTO maisha_mume VALUES (990, 248, 'b', ' كَسٖيتِ مٗويَ هُوٖيزَ ', 'kasēṯi mōya huwēza', 'kaseti moya huweza', '');
INSERT INTO maisha_mume VALUES (991, 248, 'c', 'وٖينْڠِ وَكَپُلِكِيزَ ', 'wēngi wakapulikı̄za', 'wengi wakapulikiza', '');
INSERT INTO maisha_mume VALUES (992, 248, 'd', ' وَكَسِكِيزَ پَمٗويَ', 'wakasikı̄za pamōya', 'wakasikiza pamoya', '');
INSERT INTO maisha_mume VALUES (993, 249, 'a', 'لَاءُ كَامَ نِ كِتَابُ ', 'lāu kāma ni kiṯābu', 'lau kama ni kitabu', '');
INSERT INTO maisha_mume VALUES (994, 249, 'b', ' وَسٗمَاجِ نِ هُبُوبُ ', 'wasomāji ni hubūbu', 'wasomaji ni hububu', '');
INSERT INTO maisha_mume VALUES (995, 249, 'c', 'وٖينْڠِ هُؤٗونَ تَأَبُ ', 'wēngi huōna ṯaabu', 'wengi huona taabu', '');
INSERT INTO maisha_mume VALUES (996, 249, 'd', ' كُسِكِيزَ مٖزٗوٖيَ', 'kusikı̄za mezoweya', 'kusikiza mezoweya', '');
INSERT INTO maisha_mume VALUES (997, 250, 'a', 'كَؤُولِ يَانْڠُ تَمَاتِ ', 'kaūli yāngu ṯamāṯi', 'kauli yangu tamati', '');
INSERT INTO maisha_mume VALUES (998, 250, 'b', ' نِ زٖينُ هِيزِ بَئِيتِ ', 'ni zēnu hı̄zi baı̄ṯi', 'ni zenu hizi baiti', '');
INSERT INTO maisha_mume VALUES (999, 250, 'c', 'وَڤُلَانَ مَبَنَاتِ ', 'wavulāna mabanāṯi', 'wavulana mabanati', '');
INSERT INTO maisha_mume VALUES (1000, 250, 'd', ' نْيٗوتٖ نَوَكُسُدِيَ', 'nyōṯe nawakusuḏiya', 'nyote nawakusudiya', '');


--
-- Data for Name: maisha_mume_backup; Type: TABLE DATA; Schema: public; Owner: kevin
--



--
-- Data for Name: maisha_mume_notes; Type: TABLE DATA; Schema: public; Owner: kevin
--



--
-- Name: maisha_mume_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('maisha_mume_poemline_id_seq', 1000, true);


--
-- Data for Name: maisha_mume_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO maisha_mume_words VALUES (1, 1, 'a', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (141, 13, 'b', 3, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (253, 22, 'b', 1, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (422, 35, 'c', 3, 'تَنْجِ', 'ṯanji', 'tanji', '', '', '', '', '', '', 'ṯanji', 'تَنْجِ', 'ṯanji');
INSERT INTO maisha_mume_words VALUES (513, 43, 'c', 1, 'مَدَاكَ', 'maḏāka', 'madaka', '', '', '', '', '', '', 'maḏāka', 'مَدَاكَ', 'maḏāka');
INSERT INTO maisha_mume_words VALUES (557, 47, 'a', 4, 'بُودِ', 'būḏi', 'budi', '', '', '', '', '', '', 'būḏi', 'بُودِ', 'būḏi');
INSERT INTO maisha_mume_words VALUES (649, 54, 'd', 1, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (803, 68, 'b', 2, 'كُنٖينَ', 'kunēna', 'kunena', '', '', '', '', '', '', 'kunēna', 'كُنٖينَ', 'kunēna');
INSERT INTO maisha_mume_words VALUES (835, 71, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (922, 79, 'a', 3, 'هُتَمَانِ', 'huṯamāni', 'hutamani', '', '', '', '', '', '', 'huṯamāni', 'هُتَمَانِ', 'huṯamāni');
INSERT INTO maisha_mume_words VALUES (1037, 88, 'd', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1187, 102, 'a', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (1135, 97, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1280, 109, 'b', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (1380, 116, 'd', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1292, 110, 'b', 1, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (1437, 122, 'a', 2, 'مٗوتٗ', 'mōṯo', 'moto', '', '', '', '', '', '', 'mōṯo', 'مٗوتٗ', 'mōṯo');
INSERT INTO maisha_mume_words VALUES (1530, 129, 'd', 2, 'كُتِمِيَ', 'kuṯimiya', 'kutimiya', '', '', '', '', '', '', 'kuṯimiya', 'كُتِمِيَ', 'kuṯimiya');
INSERT INTO maisha_mume_words VALUES (1620, 137, 'c', 3, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1621, 137, 'c', 4, 'سِيرِ', 'sı̄ri', 'siri', '', '', '', '', '', '', 'sı̄ri', 'سِيرِ', 'sı̄ri');
INSERT INTO maisha_mume_words VALUES (1690, 144, 'a', 1, 'خُسُوسوَ', 'ẖusūswa', 'hususwa', '', '', '', '', '', '', 'ẖusūswa', 'خُسُوسوَ', 'ẖusūswa');
INSERT INTO maisha_mume_words VALUES (1753, 149, 'a', 1, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (1846, 157, 'a', 2, 'هَالِ', 'hāli', 'hali', '', '', '', '', '', '', 'hāli', 'هَالِ', 'hāli');
INSERT INTO maisha_mume_words VALUES (1968, 167, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2093, 178, 'a', 2, 'أُوٖ', 'uwe', 'uwe', '', '', '', '', '', '', 'uwe', 'أُوٖ', 'uwe');
INSERT INTO maisha_mume_words VALUES (2155, 183, 'c', 1, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (2276, 194, 'b', 1, 'وَنْڠَاوَ', 'wangāwa', 'wangawa', '', '', '', '', '', '', 'wangāwa', 'وَنْڠَاوَ', 'wangāwa');
INSERT INTO maisha_mume_words VALUES (2308, 196, 'd', 3, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (2429, 207, 'a', 1, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (1963, 167, 'a', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (2521, 214, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2583, 219, 'c', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (2593, 220, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2674, 227, 'b', 1, 'إِنْڠَاوَ', 'ingāwa', 'ingawa', '', '', '', '', '', '', 'ingāwa', 'إِنْڠَاوَ', 'ingāwa');
INSERT INTO maisha_mume_words VALUES (2829, 240, 'c', 1, 'ڤُرُمَاءِ', 'vurumāi', 'vurumai', '', '', '', '', '', '', 'vurumāi', 'ڤُرُمَاءِ', 'vurumāi');
INSERT INTO maisha_mume_words VALUES (2910, 247, 'b', 3, 'مَشَئِيرِ', 'mashaı̄ri', 'mashairi', '', '', '', '', '', '', 'mashaı̄ri', 'مَشَئِيرِ', 'mashaı̄ri');
INSERT INTO maisha_mume_words VALUES (62, 6, 'b', 2, 'كُبَئِينِ', 'kubaı̄ni', 'kubaini', '', '', '', '', '', '', 'kubaı̄ni', 'كُبَئِينِ', 'kubaı̄ni');
INSERT INTO maisha_mume_words VALUES (3, 1, 'a', 3, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (276, 23, 'd', 4, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (370, 31, 'b', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (1293, 110, 'b', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (1160, 99, 'd', 2, 'هُوبَ', 'hūba', 'huba', '', '', '', '', '', '', 'hūba', 'هُوبَ', 'hūba');
INSERT INTO maisha_mume_words VALUES (2820, 239, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (32, 3, 'c', 1, 'بَابَ', 'bāba', 'baba', '', '', '', '', '', '', 'bāba', 'بَابَ', 'bāba');
INSERT INTO maisha_mume_words VALUES (2, 1, 'a', 2, 'إِينَ', 'ı̄na', 'ina', '', '', '', '', '', '', 'ı̄na', 'إِينَ', 'ı̄na');
INSERT INTO maisha_mume_words VALUES (4, 1, 'a', 4, 'رَهَمَانِ', 'rahamāni', 'rahamani', '', '', '', '', '', '', 'rahamāni', 'رَهَمَانِ', 'rahamāni');
INSERT INTO maisha_mume_words VALUES (33, 3, 'c', 2, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (34, 3, 'c', 3, 'كَذَلِيكَ', 'kadhalı̄ka', 'kadhalika', '', '', '', '', '', '', 'kadhalı̄ka', 'كَذَلِيكَ', 'kadhalı̄ka');
INSERT INTO maisha_mume_words VALUES (5, 1, 'b', 1, 'نَأَنْدَ', 'naanḏa', 'naanda', '', '', '', '', '', '', 'naanḏa', 'نَأَنْدَ', 'naanḏa');
INSERT INTO maisha_mume_words VALUES (6, 1, 'b', 2, 'نُذُومَ', 'nudhūma', 'nudhuma', '', '', '', '', '', '', 'nudhūma', 'نُذُومَ', 'nudhūma');
INSERT INTO maisha_mume_words VALUES (7, 1, 'b', 3, 'هِينِ', 'hı̄ni', 'hini', '', '', '', '', '', '', 'hı̄ni', 'هِينِ', 'hı̄ni');
INSERT INTO maisha_mume_words VALUES (74, 7, 'c', 3, 'هٖكِيمَ', 'hekı̄ma', 'hekima', '', '', '', '', '', '', 'hekı̄ma', 'هٖكِيمَ', 'hekı̄ma');
INSERT INTO maisha_mume_words VALUES (50, 5, 'b', 1, 'نْدِيٗ', 'nḏiyo', 'ndiyo', '', '', '', '', '', '', 'nḏiyo', 'نْدِيٗ', 'nḏiyo');
INSERT INTO maisha_mume_words VALUES (35, 3, 'd', 1, 'مِيمِ', 'mı̄mi', 'mimi', '', '', '', '', '', '', 'mı̄mi', 'مِيمِ', 'mı̄mi');
INSERT INTO maisha_mume_words VALUES (8, 1, 'c', 1, 'إِينَ', 'ı̄na', 'ina', '', '', '', '', '', '', 'ı̄na', 'إِينَ', 'ı̄na');
INSERT INTO maisha_mume_words VALUES (9, 1, 'c', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (10, 1, 'c', 3, 'پِيلِ', 'pı̄li', 'pili', '', '', '', '', '', '', 'pı̄li', 'پِيلِ', 'pı̄li');
INSERT INTO maisha_mume_words VALUES (11, 1, 'c', 4, 'رَمَانِ', 'ramāni', 'ramani', '', '', '', '', '', '', 'ramāni', 'رَمَانِ', 'ramāni');
INSERT INTO maisha_mume_words VALUES (2911, 247, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (51, 5, 'b', 2, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (811, 69, 'a', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1353, 115, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2145, 182, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2248, 192, 'a', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2456, 209, 'b', 1, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (2628, 223, 'b', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (36, 3, 'd', 2, 'أَلِنَنْدِكِيَ', 'alinanḏikiya', 'alinandikiya', '', '', '', '', '', '', 'alinanḏikiya', 'أَلِنَنْدِكِيَ', 'alinanḏikiya');
INSERT INTO maisha_mume_words VALUES (12, 1, 'd', 1, 'نَمْوَنْدِكِيَ', 'namwanḏikiya', 'namwandikiya', '', '', '', '', '', '', 'namwanḏikiya', 'نَمْوَنْدِكِيَ', 'namwanḏikiya');
INSERT INTO maisha_mume_words VALUES (13, 1, 'd', 2, 'يَهَايَ', 'yahāya', 'yahaya', '', '', '', '', '', '', 'yahāya', 'يَهَايَ', 'yahāya');
INSERT INTO maisha_mume_words VALUES (52, 5, 'b', 3, 'وَسِيَ', 'wasiya', 'wasiya', '', '', '', '', '', '', 'wasiya', 'وَسِيَ', 'wasiya');
INSERT INTO maisha_mume_words VALUES (14, 2, 'a', 1, 'كْوٖينْيٖ', 'kwēnye', 'kwenye', '', '', '', '', '', '', 'kwēnye', 'كْوٖينْيٖ', 'kwēnye');
INSERT INTO maisha_mume_words VALUES (15, 2, 'a', 2, 'رَمَانِ', 'ramāni', 'ramani', '', '', '', '', '', '', 'ramāni', 'رَمَانِ', 'ramāni');
INSERT INTO maisha_mume_words VALUES (16, 2, 'a', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (17, 2, 'a', 4, 'كْوَانْدَ', 'kwānḏa', 'kwanda', '', '', '', '', '', '', 'kwānḏa', 'كْوَانْدَ', 'kwānḏa');
INSERT INTO maisha_mume_words VALUES (53, 5, 'b', 4, 'يِينَ', 'ı̄ı̄na', 'yina', '', '', '', '', '', '', 'ı̄ı̄na', 'يِينَ', 'ı̄ı̄na');
INSERT INTO maisha_mume_words VALUES (37, 4, 'a', 1, 'بَابَ', 'bāba', 'baba', '', '', '', '', '', '', 'bāba', 'بَابَ', 'bāba');
INSERT INTO maisha_mume_words VALUES (18, 2, 'b', 1, 'بَنَاتِ', 'banāṯi', 'banati', '', '', '', '', '', '', 'banāṯi', 'بَنَاتِ', 'banāṯi');
INSERT INTO maisha_mume_words VALUES (19, 2, 'b', 2, 'نَلِوَفُونْدَ', 'naliwafūnḏa', 'naliwafunda', '', '', '', '', '', '', 'naliwafūnḏa', 'نَلِوَفُونْدَ', 'naliwafūnḏa');
INSERT INTO maisha_mume_words VALUES (38, 4, 'a', 2, 'بوَانَ', 'bwāna', 'bwana', '', '', '', '', '', '', 'bwāna', 'بوَانَ', 'bwāna');
INSERT INTO maisha_mume_words VALUES (39, 4, 'a', 3, 'أَهمَادِ', 'ahmāḏi', 'ahmadi', '', '', '', '', '', '', 'ahmāḏi', 'أَهمَادِ', 'ahmāḏi');
INSERT INTO maisha_mume_words VALUES (20, 2, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (21, 2, 'c', 2, 'هِينِ', 'hı̄ni', 'hini', '', '', '', '', '', '', 'hı̄ni', 'هِينِ', 'hı̄ni');
INSERT INTO maisha_mume_words VALUES (22, 2, 'c', 3, 'نِمٖئُِونْدَ', 'nimeiūnḏa', 'nimeiunda', '', '', '', '', '', '', 'nimeiūnḏa', 'نِمٖئُِونْدَ', 'nimeiūnḏa');
INSERT INTO maisha_mume_words VALUES (23, 2, 'd', 1, 'وَڤُلَانَ', 'wavulāna', 'wavulana', '', '', '', '', '', '', 'wavulāna', 'وَڤُلَانَ', 'wavulāna');
INSERT INTO maisha_mume_words VALUES (24, 2, 'd', 2, 'كُوَمْبِيَ', 'kuwambiya', 'kuwambiya', '', '', '', '', '', '', 'kuwambiya', 'كُوَمْبِيَ', 'kuwambiya');
INSERT INTO maisha_mume_words VALUES (40, 4, 'b', 1, 'أَتَمْجَازِ', 'aṯamjāzi', 'atamjazi', '', '', '', '', '', '', 'aṯamjāzi', 'أَتَمْجَازِ', 'aṯamjāzi');
INSERT INTO maisha_mume_words VALUES (41, 4, 'b', 2, 'وَدُودِ', 'waḏūḏi', 'wadudi', '', '', '', '', '', '', 'waḏūḏi', 'وَدُودِ', 'waḏūḏi');
INSERT INTO maisha_mume_words VALUES (25, 3, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (26, 3, 'a', 2, 'أَسِيلِ', 'ası̄li', 'asili', '', '', '', '', '', '', 'ası̄li', 'أَسِيلِ', 'ası̄li');
INSERT INTO maisha_mume_words VALUES (27, 3, 'a', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (28, 3, 'a', 4, 'كْوَنْدِيكَ', 'kwanḏı̄ka', 'kwandika', '', '', '', '', '', '', 'kwanḏı̄ka', 'كْوَنْدِيكَ', 'kwanḏı̄ka');
INSERT INTO maisha_mume_words VALUES (63, 6, 'c', 1, 'يَالٖ', 'yāle', 'yale', '', '', '', '', '', '', 'yāle', 'يَالٖ', 'yāle');
INSERT INTO maisha_mume_words VALUES (29, 3, 'b', 1, 'نَهِيسِ', 'nahı̄si', 'nahisi', '', '', '', '', '', '', 'nahı̄si', 'نَهِيسِ', 'nahı̄si');
INSERT INTO maisha_mume_words VALUES (30, 3, 'b', 2, 'وَانَ', 'wāna', 'wana', '', '', '', '', '', '', 'wāna', 'وَانَ', 'wāna');
INSERT INTO maisha_mume_words VALUES (31, 3, 'b', 3, 'وَتَاكَ', 'waṯāka', 'wataka', '', '', '', '', '', '', 'waṯāka', 'وَتَاكَ', 'waṯāka');
INSERT INTO maisha_mume_words VALUES (42, 4, 'c', 1, 'كْوَانِ', 'kwāni', 'kwani', '', '', '', '', '', '', 'kwāni', 'كْوَانِ', 'kwāni');
INSERT INTO maisha_mume_words VALUES (43, 4, 'c', 2, 'أَلِجِتَهِيدِ', 'alijiṯahı̄ḏi', 'alijitahidi', '', '', '', '', '', '', 'alijiṯahı̄ḏi', 'أَلِجِتَهِيدِ', 'alijiṯahı̄ḏi');
INSERT INTO maisha_mume_words VALUES (54, 5, 'c', 1, 'أَلٗنَنْدِكِئَ', 'alonanḏikia', 'alonandikia', '', '', '', '', '', '', 'alonanḏikia', 'أَلٗنَنْدِكِئَ', 'alonanḏikia');
INSERT INTO maisha_mume_words VALUES (55, 5, 'c', 2, 'بوَانَ', 'bwāna', 'bwana', '', '', '', '', '', '', 'bwāna', 'بوَانَ', 'bwāna');
INSERT INTO maisha_mume_words VALUES (44, 4, 'd', 1, 'كُنَنْدِكِيَ', 'kunanḏikiya', 'kunandikiya', '', '', '', '', '', '', 'kunanḏikiya', 'كُنَنْدِكِيَ', 'kunanḏikiya');
INSERT INTO maisha_mume_words VALUES (45, 4, 'd', 2, 'وَسِيَ', 'wasiya', 'wasiya', '', '', '', '', '', '', 'wasiya', 'وَسِيَ', 'wasiya');
INSERT INTO maisha_mume_words VALUES (64, 6, 'c', 2, 'نِنَيٗؤَمِينِ', 'ninayoamı̄ni', 'ninayoamini', '', '', '', '', '', '', 'ninayoamı̄ni', 'نِنَيٗؤَمِينِ', 'ninayoamı̄ni');
INSERT INTO maisha_mume_words VALUES (46, 5, 'a', 1, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (47, 5, 'a', 2, 'زَمَانِ', 'zamāni', 'zamani', '', '', '', '', '', '', 'zamāni', 'زَمَانِ', 'zamāni');
INSERT INTO maisha_mume_words VALUES (48, 5, 'a', 3, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (49, 5, 'a', 4, 'يَانَ', 'yāna', 'yana', '', '', '', '', '', '', 'yāna', 'يَانَ', 'yāna');
INSERT INTO maisha_mume_words VALUES (56, 5, 'd', 1, 'بَبَانْڠُ', 'babāngu', 'babangu', '', '', '', '', '', '', 'babāngu', 'بَبَانْڠُ', 'babāngu');
INSERT INTO maisha_mume_words VALUES (57, 5, 'd', 2, 'كَنِوَتِيَ', 'kaniwaṯiya', 'kaniwatiya', '', '', '', '', '', '', 'kaniwaṯiya', 'كَنِوَتِيَ', 'kaniwaṯiya');
INSERT INTO maisha_mume_words VALUES (69, 7, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (58, 6, 'a', 1, 'نَامِ', 'nāmi', 'nami', '', '', '', '', '', '', 'nāmi', 'نَامِ', 'nāmi');
INSERT INTO maisha_mume_words VALUES (59, 6, 'a', 2, 'كَتِيكَ', 'kaṯı̄ka', 'katika', '', '', '', '', '', '', 'kaṯı̄ka', 'كَتِيكَ', 'kaṯı̄ka');
INSERT INTO maisha_mume_words VALUES (60, 6, 'a', 3, 'رَمَانِ', 'ramāni', 'ramani', '', '', '', '', '', '', 'ramāni', 'رَمَانِ', 'ramāni');
INSERT INTO maisha_mume_words VALUES (65, 6, 'd', 1, 'يَوٖيزَ', 'yawēza', 'yaweza', '', '', '', '', '', '', 'yawēza', 'يَوٖيزَ', 'yawēza');
INSERT INTO maisha_mume_words VALUES (70, 7, 'b', 2, 'يَالٖ', 'yāle', 'yale', '', '', '', '', '', '', 'yāle', 'يَالٖ', 'yāle');
INSERT INTO maisha_mume_words VALUES (61, 6, 'b', 1, 'تَيِپِينْدَ', 'ṯayipı̄nḏa', 'tayipinda', '', '', '', '', '', '', 'ṯayipı̄nḏa', 'تَيِپِينْدَ', 'ṯayipı̄nḏa');
INSERT INTO maisha_mume_words VALUES (66, 6, 'd', 2, 'كُسَئِدِيَ', 'kusaiḏiya', 'kusaidiya', '', '', '', '', '', '', 'kusaiḏiya', 'كُسَئِدِيَ', 'kusaiḏiya');
INSERT INTO maisha_mume_words VALUES (2927, 249, 'a', 1, 'لَاءُ', 'lāu', 'lau', '', '', '', '', '', '', 'lāu', 'لَاءُ', 'lāu');
INSERT INTO maisha_mume_words VALUES (71, 7, 'b', 3, 'نِلٗيَسٗومَ', 'niloyasōma', 'niloyasoma', '', '', '', '', '', '', 'niloyasōma', 'نِلٗيَسٗومَ', 'niloyasōma');
INSERT INTO maisha_mume_words VALUES (67, 7, 'a', 1, 'تَنٖينَ', 'ṯanēna', 'tanena', '', '', '', '', '', '', 'ṯanēna', 'تَنٖينَ', 'ṯanēna');
INSERT INTO maisha_mume_words VALUES (68, 7, 'a', 2, 'نَلٗيَتُومَ', 'naloyaṯūma', 'naloyatuma', '', '', '', '', '', '', 'naloyaṯūma', 'نَلٗيَتُومَ', 'naloyaṯūma');
INSERT INTO maisha_mume_words VALUES (81, 8, 'b', 2, 'مْبَالِ', 'mbāli', 'mbali', '', '', '', '', '', '', 'mbāli', 'مْبَالِ', 'mbāli');
INSERT INTO maisha_mume_words VALUES (82, 8, 'b', 3, 'كُتَنْڠَانْيَ', 'kuṯangānya', 'kutanganya', '', '', '', '', '', '', 'kuṯangānya', 'كُتَنْڠَانْيَ', 'kuṯangānya');
INSERT INTO maisha_mume_words VALUES (72, 7, 'c', 1, 'تَزِتَايَ', 'ṯaziṯāya', 'tazitaya', '', '', '', '', '', '', 'ṯaziṯāya', 'تَزِتَايَ', 'ṯaziṯāya');
INSERT INTO maisha_mume_words VALUES (73, 7, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (78, 8, 'a', 1, 'يَالٖ', 'yāle', 'yale', '', '', '', '', '', '', 'yāle', 'يَالٖ', 'yāle');
INSERT INTO maisha_mume_words VALUES (79, 8, 'a', 2, 'نِتَيَكُسَانْيَ', 'niṯayakusānya', 'nitayakusanya', '', '', '', '', '', '', 'niṯayakusānya', 'نِتَيَكُسَانْيَ', 'niṯayakusānya');
INSERT INTO maisha_mume_words VALUES (75, 7, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (76, 7, 'd', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (77, 7, 'd', 3, 'نِلٗپٗكٖيَ', 'nilopokeya', 'nilopokeya', '', '', '', '', '', '', 'nilopokeya', 'نِلٗپٗكٖيَ', 'nilopokeya');
INSERT INTO maisha_mume_words VALUES (84, 8, 'c', 2, 'لَانْڠُ', 'lāngu', 'langu', '', '', '', '', '', '', 'lāngu', 'لَانْڠُ', 'lāngu');
INSERT INTO maisha_mume_words VALUES (80, 8, 'b', 1, 'مْبَالِ', 'mbāli', 'mbali', '', '', '', '', '', '', 'mbāli', 'مْبَالِ', 'mbāli');
INSERT INTO maisha_mume_words VALUES (85, 8, 'c', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (86, 8, 'c', 4, 'كُفَانْيَ', 'kufānya', 'kufanya', '', '', '', '', '', '', 'kufānya', 'كُفَانْيَ', 'kufānya');
INSERT INTO maisha_mume_words VALUES (88, 8, 'd', 2, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (83, 8, 'c', 1, 'لٖينْڠٗ', 'lēngo', 'lengo', '', '', '', '', '', '', 'lēngo', 'لٖينْڠٗ', 'lēngo');
INSERT INTO maisha_mume_words VALUES (89, 8, 'd', 3, 'مَئِيشَ', 'maı̄sha', 'maisha', '', '', '', '', '', '', 'maı̄sha', 'مَئِيشَ', 'maı̄sha');
INSERT INTO maisha_mume_words VALUES (90, 8, 'd', 4, 'بٗويَ', 'bōya', 'boya', '', '', '', '', '', '', 'bōya', 'بٗويَ', 'bōya');
INSERT INTO maisha_mume_words VALUES (87, 8, 'd', 1, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (91, 9, 'a', 1, 'بٗويَ', 'bōya', 'boya', '', '', '', '', '', '', 'bōya', 'بٗويَ', 'bōya');
INSERT INTO maisha_mume_words VALUES (142, 13, 'b', 4, 'أُونِ', 'ūni', 'uni', '', '', '', '', '', '', 'ūni', 'أُونِ', 'ūni');
INSERT INTO maisha_mume_words VALUES (92, 9, 'a', 2, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (93, 9, 'a', 3, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (94, 9, 'a', 4, 'مَئِيشَ', 'maı̄sha', 'maisha', '', '', '', '', '', '', 'maı̄sha', 'مَئِيشَ', 'maı̄sha');
INSERT INTO maisha_mume_words VALUES (122, 12, 'a', 1, 'مْوَنَانْڠُ', 'mwanāngu', 'mwanangu', '', '', '', '', '', '', 'mwanāngu', 'مْوَنَانْڠُ', 'mwanāngu');
INSERT INTO maisha_mume_words VALUES (123, 12, 'a', 2, 'سِتَاكٖ', 'siṯāke', 'sitake', '', '', '', '', '', '', 'siṯāke', 'سِتَاكٖ', 'siṯāke');
INSERT INTO maisha_mume_words VALUES (95, 9, 'b', 1, 'كَاتُ', 'kāṯu', 'katu', '', '', '', '', '', '', 'kāṯu', 'كَاتُ', 'kāṯu');
INSERT INTO maisha_mume_words VALUES (96, 9, 'b', 2, 'هَلِتٗزَمِيشَ', 'haliṯozamı̄sha', 'halitozamisha', '', '', '', '', '', '', 'haliṯozamı̄sha', 'هَلِتٗزَمِيشَ', 'haliṯozamı̄sha');
INSERT INTO maisha_mume_words VALUES (124, 12, 'a', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (97, 9, 'c', 1, 'أَشِكَاءٗ', 'ashikāo', 'ashikao', '', '', '', '', '', '', 'ashikāo', 'أَشِكَاءٗ', 'ashikāo');
INSERT INTO maisha_mume_words VALUES (98, 9, 'c', 2, 'تَمْڤُوشَ', 'ṯamvūsha', 'tamvusha', '', '', '', '', '', '', 'ṯamvūsha', 'تَمْڤُوشَ', 'ṯamvūsha');
INSERT INTO maisha_mume_words VALUES (99, 9, 'd', 1, 'بَنْدَارِ', 'banḏāri', 'bandari', '', '', '', '', '', '', 'banḏāri', 'بَنْدَارِ', 'banḏāri');
INSERT INTO maisha_mume_words VALUES (100, 9, 'd', 2, 'تَسِكِلِيَ', 'ṯasikiliya', 'tasikiliya', '', '', '', '', '', '', 'ṯasikiliya', 'تَسِكِلِيَ', 'ṯasikiliya');
INSERT INTO maisha_mume_words VALUES (101, 10, 'a', 1, 'مْوَنَانْڠُ', 'mwanāngu', 'mwanangu', '', '', '', '', '', '', 'mwanāngu', 'مْوَنَانْڠُ', 'mwanāngu');
INSERT INTO maisha_mume_words VALUES (102, 10, 'a', 2, 'أُكِئَزِيمُ', 'ukiazı̄mu', 'ukiazimu', '', '', '', '', '', '', 'ukiazı̄mu', 'أُكِئَزِيمُ', 'ukiazı̄mu');
INSERT INTO maisha_mume_words VALUES (103, 10, 'b', 1, 'كُؤٗوَ', 'kuowa', 'kuowa', '', '', '', '', '', '', 'kuowa', 'كُؤٗوَ', 'kuowa');
INSERT INTO maisha_mume_words VALUES (104, 10, 'b', 2, 'كْوَانْدَ', 'kwānḏa', 'kwanda', '', '', '', '', '', '', 'kwānḏa', 'كْوَانْدَ', 'kwānḏa');
INSERT INTO maisha_mume_words VALUES (105, 10, 'b', 3, 'فَهَامُ', 'fahāmu', 'fahamu', '', '', '', '', '', '', 'fahāmu', 'فَهَامُ', 'fahāmu');
INSERT INTO maisha_mume_words VALUES (162, 14, 'd', 3, 'كُزٖنْڠٖيَ', 'kuzengeya', 'kuzengeya', '', '', '', '', '', '', 'kuzengeya', 'كُزٖنْڠٖيَ', 'kuzengeya');
INSERT INTO maisha_mume_words VALUES (125, 12, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (106, 10, 'c', 1, 'كُتٖؤُوَ', 'kuṯeuwa', 'kuteuwa', '', '', '', '', '', '', 'kuṯeuwa', 'كُتٖؤُوَ', 'kuṯeuwa');
INSERT INTO maisha_mume_words VALUES (107, 10, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (108, 10, 'c', 3, 'مُهِيمُ', 'muhı̄mu', 'muhimu', '', '', '', '', '', '', 'muhı̄mu', 'مُهِيمُ', 'muhı̄mu');
INSERT INTO maisha_mume_words VALUES (126, 12, 'b', 2, 'وٖيمَ', 'wēma', 'wema', '', '', '', '', '', '', 'wēma', 'وٖيمَ', 'wēma');
INSERT INTO maisha_mume_words VALUES (127, 12, 'b', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (128, 12, 'b', 4, 'أُومْبٗ', 'ūmbo', 'umbo', '', '', '', '', '', '', 'ūmbo', 'أُومْبٗ', 'ūmbo');
INSERT INTO maisha_mume_words VALUES (129, 12, 'b', 5, 'لَاكٖ', 'lāke', 'lake', '', '', '', '', '', '', 'lāke', 'لَاكٖ', 'lāke');
INSERT INTO maisha_mume_words VALUES (109, 10, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (110, 10, 'd', 2, 'أَامرِ', 'āmri', 'amri', '', '', '', '', '', '', 'āmri', 'أَامرِ', 'āmri');
INSERT INTO maisha_mume_words VALUES (111, 10, 'd', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (112, 10, 'd', 4, 'شَرِيَ', 'shariya', 'shariya', '', '', '', '', '', '', 'shariya', 'شَرِيَ', 'shariya');
INSERT INTO maisha_mume_words VALUES (113, 11, 'a', 1, 'مْتُومِ', 'mṯūmi', 'mtumi', '', '', '', '', '', '', 'mṯūmi', 'مْتُومِ', 'mṯūmi');
INSERT INTO maisha_mume_words VALUES (114, 11, 'a', 2, 'أَلِبَئِينِ', 'alibaı̄ni', 'alibaini', '', '', '', '', '', '', 'alibaı̄ni', 'أَلِبَئِينِ', 'alibaı̄ni');
INSERT INTO maisha_mume_words VALUES (115, 11, 'b', 1, 'أَكَتوَمْبِيَ', 'akaṯwambiya', 'akatwambiya', '', '', '', '', '', '', 'akaṯwambiya', 'أَكَتوَمْبِيَ', 'akaṯwambiya');
INSERT INTO maisha_mume_words VALUES (116, 11, 'b', 2, 'أٗوَانِ', 'owāni', 'owani', '', '', '', '', '', '', 'owāni', 'أٗوَانِ', 'owāni');
INSERT INTO maisha_mume_words VALUES (153, 14, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (154, 14, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (143, 13, 'c', 1, 'كِشُونَ', 'kishūna', 'kishuna', '', '', '', '', '', '', 'kishūna', 'كِشُونَ', 'kishūna');
INSERT INTO maisha_mume_words VALUES (117, 11, 'c', 1, 'مْوَنَامْكٖ', 'mwanāmke', 'mwanamke', '', '', '', '', '', '', 'mwanāmke', 'مْوَنَامْكٖ', 'mwanāmke');
INSERT INTO maisha_mume_words VALUES (118, 11, 'c', 2, 'مْوٖينْيٖ', 'mwēnye', 'mwenye', '', '', '', '', '', '', 'mwēnye', 'مْوٖينْيٖ', 'mwēnye');
INSERT INTO maisha_mume_words VALUES (119, 11, 'c', 3, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (144, 13, 'c', 2, 'كِيلٗ', 'kı̄lo', 'kilo', '', '', '', '', '', '', 'kı̄lo', 'كِيلٗ', 'kı̄lo');
INSERT INTO maisha_mume_words VALUES (130, 12, 'c', 1, 'نَسَابَ', 'nasāba', 'nasaba', '', '', '', '', '', '', 'nasāba', 'نَسَابَ', 'nasāba');
INSERT INTO maisha_mume_words VALUES (120, 11, 'd', 1, 'مُونْڠُ', 'mūngu', 'mungu', '', '', '', '', '', '', 'mūngu', 'مُونْڠُ', 'mūngu');
INSERT INTO maisha_mume_words VALUES (121, 11, 'd', 2, 'تَوَبَرِكِيَ', 'ṯawabarikiya', 'tawabarikiya', '', '', '', '', '', '', 'ṯawabarikiya', 'تَوَبَرِكِيَ', 'ṯawabarikiya');
INSERT INTO maisha_mume_words VALUES (131, 12, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (132, 12, 'c', 3, 'پَاتٗ', 'pāṯo', 'pato', '', '', '', '', '', '', 'pāṯo', 'پَاتٗ', 'pāṯo');
INSERT INTO maisha_mume_words VALUES (133, 12, 'c', 4, 'لَاكٖ', 'lāke', 'lake', '', '', '', '', '', '', 'lāke', 'لَاكٖ', 'lāke');
INSERT INTO maisha_mume_words VALUES (145, 13, 'c', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (146, 13, 'c', 4, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (134, 12, 'd', 1, 'مَيُتٗونِ', 'mayuṯōni', 'mayutoni', '', '', '', '', '', '', 'mayuṯōni', 'مَيُتٗونِ', 'mayuṯōni');
INSERT INTO maisha_mume_words VALUES (135, 12, 'd', 2, 'أُتَنْڠِيَ', 'uṯangiya', 'utangiya', '', '', '', '', '', '', 'uṯangiya', 'أُتَنْڠِيَ', 'uṯangiya');
INSERT INTO maisha_mume_words VALUES (136, 13, 'a', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (137, 13, 'a', 2, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (138, 13, 'a', 3, 'هَئِنٖينِ', 'hainēni', 'haineni', '', '', '', '', '', '', 'hainēni', 'هَئِنٖينِ', 'hainēni');
INSERT INTO maisha_mume_words VALUES (155, 14, 'b', 3, 'مٗولَ', 'mōla', 'mola', '', '', '', '', '', '', 'mōla', 'مٗولَ', 'mōla');
INSERT INTO maisha_mume_words VALUES (156, 14, 'b', 4, 'مْتِئِيفُ', 'mṯiı̄fu', 'mtiifu', '', '', '', '', '', '', 'mṯiı̄fu', 'مْتِئِيفُ', 'mṯiı̄fu');
INSERT INTO maisha_mume_words VALUES (139, 13, 'b', 1, 'أٗوَ', 'owa', 'owa', '', '', '', '', '', '', 'owa', 'أٗوَ', 'owa');
INSERT INTO maisha_mume_words VALUES (140, 13, 'b', 2, 'شُڠُؤُ', 'shuguu', 'shuguu', '', '', '', '', '', '', 'shuguu', 'شُڠُؤُ', 'shuguu');
INSERT INTO maisha_mume_words VALUES (147, 13, 'd', 1, 'كُكِؤٗوَ', 'kukiowa', 'kukiowa', '', '', '', '', '', '', 'kukiowa', 'كُكِؤٗوَ', 'kukiowa');
INSERT INTO maisha_mume_words VALUES (148, 13, 'd', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (149, 13, 'd', 3, 'هَتِيَ', 'haṯiya', 'hatiya', '', '', '', '', '', '', 'haṯiya', 'هَتِيَ', 'haṯiya');
INSERT INTO maisha_mume_words VALUES (150, 14, 'a', 1, 'مْوٖينْيٖ', 'mwēnye', 'mwenye', '', '', '', '', '', '', 'mwēnye', 'مْوٖينْيٖ', 'mwēnye');
INSERT INTO maisha_mume_words VALUES (151, 14, 'a', 2, 'نَسَابَ', 'nasāba', 'nasaba', '', '', '', '', '', '', 'nasāba', 'نَسَابَ', 'nasāba');
INSERT INTO maisha_mume_words VALUES (152, 14, 'a', 3, 'تُكُوفُ', 'ṯukūfu', 'tukufu', '', '', '', '', '', '', 'ṯukūfu', 'تُكُوفُ', 'ṯukūfu');
INSERT INTO maisha_mume_words VALUES (171, 15, 'c', 2, 'أَاوٖ', 'āwe', 'awe', '', '', '', '', '', '', 'āwe', 'أَاوٖ', 'āwe');
INSERT INTO maisha_mume_words VALUES (157, 14, 'c', 1, 'هَاوِ', 'hāwi', 'hawi', '', '', '', '', '', '', 'hāwi', 'هَاوِ', 'hāwi');
INSERT INTO maisha_mume_words VALUES (158, 14, 'c', 2, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (159, 14, 'c', 3, 'مٖخَلِيفُ', 'meẖalı̄fu', 'mehalifu', '', '', '', '', '', '', 'meẖalı̄fu', 'مٖخَلِيفُ', 'meẖalı̄fu');
INSERT INTO maisha_mume_words VALUES (175, 15, 'd', 2, 'هَكُمْبِرِيَ', 'hakumbiriya', 'hakumbiriya', '', '', '', '', '', '', 'hakumbiriya', 'هَكُمْبِرِيَ', 'hakumbiriya');
INSERT INTO maisha_mume_words VALUES (168, 15, 'b', 1, 'سِكْوَمْبِئِ', 'sikwambii', 'sikwambii', '', '', '', '', '', '', 'sikwambii', 'سِكْوَمْبِئِ', 'sikwambii');
INSERT INTO maisha_mume_words VALUES (169, 15, 'b', 2, 'سِمْتَاكٖ', 'simṯāke', 'simtake', '', '', '', '', '', '', 'simṯāke', 'سِمْتَاكٖ', 'simṯāke');
INSERT INTO maisha_mume_words VALUES (160, 14, 'd', 1, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (161, 14, 'd', 2, 'هُويٗ', 'hūyo', 'huyo', '', '', '', '', '', '', 'hūyo', 'هُويٗ', 'hūyo');
INSERT INTO maisha_mume_words VALUES (163, 15, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (164, 15, 'a', 2, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (165, 15, 'a', 3, 'أَالٗ', 'ālo', 'alo', '', '', '', '', '', '', 'ālo', 'أَالٗ', 'ālo');
INSERT INTO maisha_mume_words VALUES (166, 15, 'a', 4, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (167, 15, 'a', 5, 'چَاكٖ', 'chāke', 'chake', '', '', '', '', '', '', 'chāke', 'چَاكٖ', 'chāke');
INSERT INTO maisha_mume_words VALUES (177, 16, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (174, 15, 'd', 1, 'مٖشِيكَ', 'meshı̄ka', 'meshika', '', '', '', '', '', '', 'meshı̄ka', 'مٖشِيكَ', 'meshı̄ka');
INSERT INTO maisha_mume_words VALUES (170, 15, 'c', 1, 'بٗورَ', 'bōra', 'bora', '', '', '', '', '', '', 'bōra', 'بٗورَ', 'bōra');
INSERT INTO maisha_mume_words VALUES (172, 15, 'c', 3, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (173, 15, 'c', 4, 'يَاكٖ', 'yāke', 'yake', '', '', '', '', '', '', 'yāke', 'يَاكٖ', 'yāke');
INSERT INTO maisha_mume_words VALUES (178, 16, 'a', 3, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (179, 16, 'a', 4, 'بُرٖيكِ', 'burēki', 'bureki', '', '', '', '', '', '', 'burēki', 'بُرٖيكِ', 'burēki');
INSERT INTO maisha_mume_words VALUES (181, 16, 'b', 2, 'هَتٗوكِ', 'haṯōki', 'hatoki', '', '', '', '', '', '', 'haṯōki', 'هَتٗوكِ', 'haṯōki');
INSERT INTO maisha_mume_words VALUES (176, 16, 'a', 1, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (183, 16, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (180, 16, 'b', 1, 'هُمزِوِيَ', 'humziwiya', 'humziwiya', '', '', '', '', '', '', 'humziwiya', 'هُمزِوِيَ', 'humziwiya');
INSERT INTO maisha_mume_words VALUES (184, 16, 'c', 3, 'هَرُوكِ', 'harūki', 'haruki', '', '', '', '', '', '', 'harūki', 'هَرُوكِ', 'harūki');
INSERT INTO maisha_mume_words VALUES (182, 16, 'c', 1, 'مِپَكَانِ', 'mipakāni', 'mipakani', '', '', '', '', '', '', 'mipakāni', 'مِپَكَانِ', 'mipakāni');
INSERT INTO maisha_mume_words VALUES (234, 20, 'd', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (185, 16, 'd', 1, 'أَكِيوَ', 'akı̄wa', 'akiwa', '', '', '', '', '', '', 'akı̄wa', 'أَكِيوَ', 'akı̄wa');
INSERT INTO maisha_mume_words VALUES (186, 16, 'd', 2, 'تَئِتُمِيَ', 'ṯaiṯumiya', 'taitumiya', '', '', '', '', '', '', 'ṯaiṯumiya', 'تَئِتُمِيَ', 'ṯaiṯumiya');
INSERT INTO maisha_mume_words VALUES (235, 20, 'd', 2, 'كُمُؤٗنْڠٗوزَ', 'kumuongōza', 'kumuongoza', '', '', '', '', '', '', 'kumuongōza', 'كُمُؤٗنْڠٗوزَ', 'kumuongōza');
INSERT INTO maisha_mume_words VALUES (215, 19, 'b', 1, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (216, 19, 'b', 2, 'إِيوٖ', 'ı̄we', 'iwe', '', '', '', '', '', '', 'ı̄we', 'إِيوٖ', 'ı̄we');
INSERT INTO maisha_mume_words VALUES (187, 17, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (188, 17, 'a', 2, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (189, 17, 'a', 3, 'هُمزِوِيزَ', 'humziwı̄za', 'humziwiza', '', '', '', '', '', '', 'humziwı̄za', 'هُمزِوِيزَ', 'humziwı̄za');
INSERT INTO maisha_mume_words VALUES (217, 19, 'b', 3, 'هُمْوٖنْدٖيشَ', 'humwenḏēsha', 'humwendesha', '', '', '', '', '', '', 'humwenḏēsha', 'هُمْوٖنْدٖيشَ', 'humwenḏēsha');
INSERT INTO maisha_mume_words VALUES (190, 17, 'b', 1, 'كُتٖينْدَ', 'kuṯēnḏa', 'kutenda', '', '', '', '', '', '', 'kuṯēnḏa', 'كُتٖينْدَ', 'kuṯēnḏa');
INSERT INTO maisha_mume_words VALUES (191, 17, 'b', 2, 'يَسٗپٖنْدٖيزَ', 'yasopenḏēza', 'yasopendeza', '', '', '', '', '', '', 'yasopenḏēza', 'يَسٗپٖنْدٖيزَ', 'yasopenḏēza');
INSERT INTO maisha_mume_words VALUES (192, 17, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (193, 17, 'c', 2, 'نْدِيپٗ', 'nḏı̄po', 'ndipo', '', '', '', '', '', '', 'nḏı̄po', 'نْدِيپٗ', 'nḏı̄po');
INSERT INTO maisha_mume_words VALUES (194, 17, 'c', 3, 'كَكُهِمِيزَ', 'kakuhimı̄za', 'kakuhimiza', '', '', '', '', '', '', 'kakuhimı̄za', 'كَكُهِمِيزَ', 'kakuhimı̄za');
INSERT INTO maisha_mume_words VALUES (236, 20, 'd', 3, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (195, 17, 'd', 1, 'مْوٖينْيٖ', 'mwēnye', 'mwenye', '', '', '', '', '', '', 'mwēnye', 'مْوٖينْيٖ', 'mwēnye');
INSERT INTO maisha_mume_words VALUES (196, 17, 'd', 2, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (197, 17, 'd', 3, 'كْوَنْڠَلِيَ', 'kwangaliya', 'kwangaliya', '', '', '', '', '', '', 'kwangaliya', 'كْوَنْڠَلِيَ', 'kwangaliya');
INSERT INTO maisha_mume_words VALUES (218, 19, 'c', 1, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (198, 18, 'a', 1, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (199, 18, 'a', 2, 'نِنَيٗئِنٖينَ', 'ninayoinēna', 'ninayoinena', '', '', '', '', '', '', 'ninayoinēna', 'نِنَيٗئِنٖينَ', 'ninayoinēna');
INSERT INTO maisha_mume_words VALUES (219, 19, 'c', 2, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (220, 19, 'c', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (221, 19, 'c', 4, 'كُؤٗنٖيشَ', 'kuonēsha', 'kuonesha', '', '', '', '', '', '', 'kuonēsha', 'كُؤٗنٖيشَ', 'kuonēsha');
INSERT INTO maisha_mume_words VALUES (200, 18, 'b', 1, 'سِكُوَ', 'sikuwa', 'sikuwa', '', '', '', '', '', '', 'sikuwa', 'سِكُوَ', 'sikuwa');
INSERT INTO maisha_mume_words VALUES (201, 18, 'b', 2, 'نَايٗ', 'nāyo', 'nayo', '', '', '', '', '', '', 'nāyo', 'نَايٗ', 'nāyo');
INSERT INTO maisha_mume_words VALUES (202, 18, 'b', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (203, 18, 'b', 4, 'إِينَ', 'ı̄na', 'ina', '', '', '', '', '', '', 'ı̄na', 'إِينَ', 'ı̄na');
INSERT INTO maisha_mume_words VALUES (254, 22, 'b', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (246, 21, 'd', 1, 'سَنْدَامٖ', 'sanḏāme', 'sandame', '', '', '', '', '', '', 'sanḏāme', 'سَنْدَامٖ', 'sanḏāme');
INSERT INTO maisha_mume_words VALUES (222, 19, 'd', 1, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (204, 18, 'c', 1, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (205, 18, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (206, 18, 'c', 3, 'كْوَنْدَامَ', 'kwanḏāma', 'kwandama', '', '', '', '', '', '', 'kwanḏāma', 'كْوَنْدَامَ', 'kwanḏāma');
INSERT INTO maisha_mume_words VALUES (207, 18, 'c', 4, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (223, 19, 'd', 2, 'كُوَهَدَلِيَ', 'kuwahaḏaliya', 'kuwahadaliya', '', '', '', '', '', '', 'kuwahaḏaliya', 'كُوَهَدَلِيَ', 'kuwahaḏaliya');
INSERT INTO maisha_mume_words VALUES (208, 18, 'd', 1, 'أَامرِ', 'āmri', 'amri', '', '', '', '', '', '', 'āmri', 'أَامرِ', 'āmri');
INSERT INTO maisha_mume_words VALUES (209, 18, 'd', 2, 'زَاكٖ', 'zāke', 'zake', '', '', '', '', '', '', 'zāke', 'زَاكٖ', 'zāke');
INSERT INTO maisha_mume_words VALUES (210, 18, 'd', 3, 'جَلِيَ', 'jaliya', 'jaliya', '', '', '', '', '', '', 'jaliya', 'جَلِيَ', 'jaliya');
INSERT INTO maisha_mume_words VALUES (247, 21, 'd', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (237, 21, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (211, 19, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (212, 19, 'a', 2, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (213, 19, 'a', 3, 'كْوٖينْيٖ', 'kwēnye', 'kwenye', '', '', '', '', '', '', 'kwēnye', 'كْوٖينْيٖ', 'kwēnye');
INSERT INTO maisha_mume_words VALUES (214, 19, 'a', 4, 'مَئِيشَ', 'maı̄sha', 'maisha', '', '', '', '', '', '', 'maı̄sha', 'مَئِيشَ', 'maı̄sha');
INSERT INTO maisha_mume_words VALUES (238, 21, 'a', 2, 'أُكِيسَ', 'ukı̄sa', 'ukisa', '', '', '', '', '', '', 'ukı̄sa', 'أُكِيسَ', 'ukı̄sa');
INSERT INTO maisha_mume_words VALUES (239, 21, 'a', 3, 'كُؤَمُوَ', 'kuamuwa', 'kuamuwa', '', '', '', '', '', '', 'kuamuwa', 'كُؤَمُوَ', 'kuamuwa');
INSERT INTO maisha_mume_words VALUES (224, 20, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (225, 20, 'a', 2, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (226, 20, 'a', 3, 'إِلِيٗ', 'iliyo', 'iliyo', '', '', '', '', '', '', 'iliyo', 'إِلِيٗ', 'iliyo');
INSERT INTO maisha_mume_words VALUES (227, 20, 'a', 4, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (228, 20, 'b', 1, 'إِلِيٗكِيتَ', 'iliyokı̄ṯa', 'iliyokita', '', '', '', '', '', '', 'iliyokı̄ṯa', 'إِلِيٗكِيتَ', 'iliyokı̄ṯa');
INSERT INTO maisha_mume_words VALUES (229, 20, 'b', 2, 'مٗيٗونِ', 'moyōni', 'moyoni', '', '', '', '', '', '', 'moyōni', 'مٗيٗونِ', 'moyōni');
INSERT INTO maisha_mume_words VALUES (248, 21, 'd', 3, 'جٗونْڠٗ', 'jōngo', 'jongo', '', '', '', '', '', '', 'jōngo', 'جٗونْڠٗ', 'jōngo');
INSERT INTO maisha_mume_words VALUES (249, 21, 'd', 4, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (230, 20, 'c', 1, 'نْدِيٗ', 'nḏiyo', 'ndiyo', '', '', '', '', '', '', 'nḏiyo', 'نْدِيٗ', 'nḏiyo');
INSERT INTO maisha_mume_words VALUES (231, 20, 'c', 2, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (232, 20, 'c', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (233, 20, 'c', 4, 'سُكَانِ', 'sukāni', 'sukani', '', '', '', '', '', '', 'sukāni', 'سُكَانِ', 'sukāni');
INSERT INTO maisha_mume_words VALUES (240, 21, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (241, 21, 'b', 2, 'فُلَانِ', 'fulāni', 'fulani', '', '', '', '', '', '', 'fulāni', 'فُلَانِ', 'fulāni');
INSERT INTO maisha_mume_words VALUES (242, 21, 'b', 3, 'تَمُؤٗوَ', 'ṯamuowa', 'tamuowa', '', '', '', '', '', '', 'ṯamuowa', 'تَمُؤٗوَ', 'ṯamuowa');
INSERT INTO maisha_mume_words VALUES (255, 22, 'b', 3, 'وٖينْيٖ', 'wēnye', 'wenye', '', '', '', '', '', '', 'wēnye', 'وٖينْيٖ', 'wēnye');
INSERT INTO maisha_mume_words VALUES (256, 22, 'b', 4, 'ڠٗوڠِ', 'gōgi', 'gogi', '', '', '', '', '', '', 'gōgi', 'ڠٗوڠِ', 'gōgi');
INSERT INTO maisha_mume_words VALUES (243, 21, 'c', 1, 'فَانْيَ', 'fānya', 'fanya', '', '', '', '', '', '', 'fānya', 'فَانْيَ', 'fānya');
INSERT INTO maisha_mume_words VALUES (244, 21, 'c', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (245, 21, 'c', 3, 'سَوَسَاوَ', 'sawasāwa', 'sawasawa', '', '', '', '', '', '', 'sawasāwa', 'سَوَسَاوَ', 'sawasāwa');
INSERT INTO maisha_mume_words VALUES (259, 22, 'd', 1, 'هَرُوسِ', 'harūsi', 'harusi', '', '', '', '', '', '', 'harūsi', 'هَرُوسِ', 'harūsi');
INSERT INTO maisha_mume_words VALUES (250, 22, 'a', 1, 'أُسِفَانْيٖ', 'usifānye', 'usifanye', '', '', '', '', '', '', 'usifānye', 'أُسِفَانْيٖ', 'usifānye');
INSERT INTO maisha_mume_words VALUES (251, 22, 'a', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (252, 22, 'a', 3, 'شٖشٖيڠِ', 'sheshēgi', 'sheshegi', '', '', '', '', '', '', 'sheshēgi', 'شٖشٖيڠِ', 'sheshēgi');
INSERT INTO maisha_mume_words VALUES (260, 22, 'd', 2, 'نِمٖكْوَمْبِيَ', 'nimekwambiya', 'nimekwambiya', '', '', '', '', '', '', 'nimekwambiya', 'نِمٖكْوَمْبِيَ', 'nimekwambiya');
INSERT INTO maisha_mume_words VALUES (257, 22, 'c', 1, 'سِئِپٖيكٖ', 'siipēke', 'siipeke', '', '', '', '', '', '', 'siipēke', 'سِئِپٖيكٖ', 'siipēke');
INSERT INTO maisha_mume_words VALUES (258, 22, 'c', 2, 'زِڠِزَاڠِ', 'zigizāgi', 'zigizagi', '', '', '', '', '', '', 'zigizāgi', 'زِڠِزَاڠِ', 'zigizāgi');
INSERT INTO maisha_mume_words VALUES (261, 23, 'a', 1, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (262, 23, 'a', 2, 'إِكِيوَ', 'ikı̄wa', 'ikiwa', '', '', '', '', '', '', 'ikı̄wa', 'إِكِيوَ', 'ikı̄wa');
INSERT INTO maisha_mume_words VALUES (266, 23, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (268, 23, 'b', 4, 'هَرُوسِ', 'harūsi', 'harusi', '', '', '', '', '', '', 'harūsi', 'هَرُوسِ', 'harūsi');
INSERT INTO maisha_mume_words VALUES (270, 23, 'c', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (263, 23, 'a', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (264, 23, 'a', 4, 'پٖيسِ', 'pēsi', 'pesi', '', '', '', '', '', '', 'pēsi', 'پٖيسِ', 'pēsi');
INSERT INTO maisha_mume_words VALUES (265, 23, 'b', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (267, 23, 'b', 3, 'بٗورَ', 'bōra', 'bora', '', '', '', '', '', '', 'bōra', 'بٗورَ', 'bōra');
INSERT INTO maisha_mume_words VALUES (271, 23, 'c', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (272, 23, 'c', 4, 'كِئَاسِ', 'kiāsi', 'kiasi', '', '', '', '', '', '', 'kiāsi', 'كِئَاسِ', 'kiāsi');
INSERT INTO maisha_mume_words VALUES (274, 23, 'd', 2, 'غَرَامَ', 'ḡarāma', 'gharama', '', '', '', '', '', '', 'ḡarāma', 'غَرَامَ', 'ḡarāma');
INSERT INTO maisha_mume_words VALUES (269, 23, 'c', 1, 'فَانْيَ', 'fānya', 'fanya', '', '', '', '', '', '', 'fānya', 'فَانْيَ', 'fānya');
INSERT INTO maisha_mume_words VALUES (275, 23, 'd', 3, 'نْڠٗومَ', 'ngōma', 'ngoma', '', '', '', '', '', '', 'ngōma', 'نْڠٗومَ', 'ngōma');
INSERT INTO maisha_mume_words VALUES (273, 23, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (277, 24, 'a', 1, 'مَكُوبوَ', 'makūbwa', 'makubwa', '', '', '', '', '', '', 'makūbwa', 'مَكُوبوَ', 'makūbwa');
INSERT INTO maisha_mume_words VALUES (1754, 149, 'a', 2, 'هَرَامُ', 'harāmu', 'haramu', '', '', '', '', '', '', 'harāmu', 'هَرَامُ', 'harāmu');
INSERT INTO maisha_mume_words VALUES (278, 24, 'a', 2, 'أُسِيَتَاكٖ', 'usiyaṯāke', 'usiyatake', '', '', '', '', '', '', 'usiyaṯāke', 'أُسِيَتَاكٖ', 'usiyaṯāke');
INSERT INTO maisha_mume_words VALUES (310, 26, 'c', 2, 'سِكِيرِ', 'sikı̄ri', 'sikiri', '', '', '', '', '', '', 'sikı̄ri', 'سِكِيرِ', 'sikı̄ri');
INSERT INTO maisha_mume_words VALUES (279, 24, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (280, 24, 'b', 2, 'مِپَاكَ', 'mipāka', 'mipaka', '', '', '', '', '', '', 'mipāka', 'مِپَاكَ', 'mipāka');
INSERT INTO maisha_mume_words VALUES (281, 24, 'b', 3, 'أُسِرُوكٖ', 'usirūke', 'usiruke', '', '', '', '', '', '', 'usirūke', 'أُسِرُوكٖ', 'usirūke');
INSERT INTO maisha_mume_words VALUES (329, 28, 'a', 1, 'مِيلَ', 'mı̄la', 'mila', '', '', '', '', '', '', 'mı̄la', 'مِيلَ', 'mı̄la');
INSERT INTO maisha_mume_words VALUES (330, 28, 'a', 2, 'يٖيتُ', 'yēṯu', 'yetu', '', '', '', '', '', '', 'yēṯu', 'يٖيتُ', 'yēṯu');
INSERT INTO maisha_mume_words VALUES (331, 28, 'a', 3, 'أُسِوَاتٖ', 'usiwāṯe', 'usiwate', '', '', '', '', '', '', 'usiwāṯe', 'أُسِوَاتٖ', 'usiwāṯe');
INSERT INTO maisha_mume_words VALUES (282, 24, 'c', 1, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (283, 24, 'c', 2, 'أُپَانْدٖ', 'upānḏe', 'upande', '', '', '', '', '', '', 'upānḏe', 'أُپَانْدٖ', 'upānḏe');
INSERT INTO maisha_mume_words VALUES (284, 24, 'c', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (285, 24, 'c', 4, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (311, 26, 'd', 1, 'هَفُولَ', 'hafūla', 'hafula', '', '', '', '', '', '', 'hafūla', 'هَفُولَ', 'hafūla');
INSERT INTO maisha_mume_words VALUES (312, 26, 'd', 2, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (313, 26, 'd', 3, 'مَأَسِيَ', 'maasiya', 'maasiya', '', '', '', '', '', '', 'maasiya', 'مَأَسِيَ', 'maasiya');
INSERT INTO maisha_mume_words VALUES (286, 24, 'd', 1, 'وَئِلٖيزٖ', 'wailēze', 'waileze', '', '', '', '', '', '', 'wailēze', 'وَئِلٖيزٖ', 'wailēze');
INSERT INTO maisha_mume_words VALUES (287, 24, 'd', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (288, 24, 'd', 3, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (289, 25, 'a', 1, 'زِكِيوَ', 'zikı̄wa', 'zikiwa', '', '', '', '', '', '', 'zikı̄wa', 'زِكِيوَ', 'zikı̄wa');
INSERT INTO maisha_mume_words VALUES (290, 25, 'a', 2, 'نْيِينْڠِ', 'nı̄ı̄ngi', 'nyingi', '', '', '', '', '', '', 'nı̄ı̄ngi', 'نْيِينْڠِ', 'nı̄ı̄ngi');
INSERT INTO maisha_mume_words VALUES (291, 25, 'a', 3, 'غَرَامَ', 'ḡarāma', 'gharama', '', '', '', '', '', '', 'ḡarāma', 'غَرَامَ', 'ḡarāma');
INSERT INTO maisha_mume_words VALUES (314, 27, 'a', 1, 'هَفُولَ', 'hafūla', 'hafula', '', '', '', '', '', '', 'hafūla', 'هَفُولَ', 'hafūla');
INSERT INTO maisha_mume_words VALUES (292, 25, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (293, 25, 'b', 2, 'مَيُوتٗ', 'mayūṯo', 'mayuto', '', '', '', '', '', '', 'mayūṯo', 'مَيُوتٗ', 'mayūṯo');
INSERT INTO maisha_mume_words VALUES (294, 25, 'b', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (295, 25, 'b', 4, 'لَزِيمَ', 'lazı̄ma', 'lazima', '', '', '', '', '', '', 'lazı̄ma', 'لَزِيمَ', 'lazı̄ma');
INSERT INTO maisha_mume_words VALUES (315, 27, 'a', 2, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (316, 27, 'a', 3, 'إِسِرَافُ', 'isirāfu', 'isirafu', '', '', '', '', '', '', 'isirāfu', 'إِسِرَافُ', 'isirāfu');
INSERT INTO maisha_mume_words VALUES (296, 25, 'c', 1, 'نْڠٗومَ', 'ngōma', 'ngoma', '', '', '', '', '', '', 'ngōma', 'نْڠٗومَ', 'ngōma');
INSERT INTO maisha_mume_words VALUES (297, 25, 'c', 2, 'زِكِيسَ', 'zikı̄sa', 'zikisa', '', '', '', '', '', '', 'zikı̄sa', 'زِكِيسَ', 'zikı̄sa');
INSERT INTO maisha_mume_words VALUES (298, 25, 'c', 3, 'كُكٗومَ', 'kukōma', 'kukoma', '', '', '', '', '', '', 'kukōma', 'كُكٗومَ', 'kukōma');
INSERT INTO maisha_mume_words VALUES (299, 25, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (300, 25, 'd', 2, 'لَوَامَ', 'lawāma', 'lawama', '', '', '', '', '', '', 'lawāma', 'لَوَامَ', 'lawāma');
INSERT INTO maisha_mume_words VALUES (301, 25, 'd', 3, 'هُسَلِيَ', 'husaliya', 'husaliya', '', '', '', '', '', '', 'husaliya', 'هُسَلِيَ', 'husaliya');
INSERT INTO maisha_mume_words VALUES (341, 29, 'a', 2, 'مِيلَ', 'mı̄la', 'mila', '', '', '', '', '', '', 'mı̄la', 'مِيلَ', 'mı̄la');
INSERT INTO maisha_mume_words VALUES (342, 29, 'a', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (343, 29, 'a', 4, 'كِنَسَارَ', 'kinasāra', 'kinasara', '', '', '', '', '', '', 'kinasāra', 'كِنَسَارَ', 'kinasāra');
INSERT INTO maisha_mume_words VALUES (332, 28, 'b', 1, 'مْفَانٗ', 'mfāno', 'mfano', '', '', '', '', '', '', 'mfāno', 'مْفَانٗ', 'mfāno');
INSERT INTO maisha_mume_words VALUES (302, 26, 'a', 1, 'فَانْيَ', 'fānya', 'fanya', '', '', '', '', '', '', 'fānya', 'فَانْيَ', 'fānya');
INSERT INTO maisha_mume_words VALUES (303, 26, 'a', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (304, 26, 'a', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (305, 26, 'a', 4, 'كَدِيرِ', 'kaḏı̄ri', 'kadiri', '', '', '', '', '', '', 'kaḏı̄ri', 'كَدِيرِ', 'kaḏı̄ri');
INSERT INTO maisha_mume_words VALUES (317, 27, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (318, 27, 'b', 2, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (319, 27, 'b', 3, 'مَڠٗومَ', 'magōma', 'magoma', '', '', '', '', '', '', 'magōma', 'مَڠٗومَ', 'magōma');
INSERT INTO maisha_mume_words VALUES (306, 26, 'b', 1, 'سِتَاكٖ', 'siṯāke', 'sitake', '', '', '', '', '', '', 'siṯāke', 'سِتَاكٖ', 'siṯāke');
INSERT INTO maisha_mume_words VALUES (307, 26, 'b', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (308, 26, 'b', 3, 'فَخَارِ', 'faẖāri', 'fahari', '', '', '', '', '', '', 'faẖāri', 'فَخَارِ', 'faẖāri');
INSERT INTO maisha_mume_words VALUES (320, 27, 'b', 4, 'مَچَافُ', 'machāfu', 'machafu', '', '', '', '', '', '', 'machāfu', 'مَچَافُ', 'machāfu');
INSERT INTO maisha_mume_words VALUES (333, 28, 'b', 2, 'كُڤِيشَ', 'kuvı̄sha', 'kuvisha', '', '', '', '', '', '', 'kuvı̄sha', 'كُڤِيشَ', 'kuvı̄sha');
INSERT INTO maisha_mume_words VALUES (309, 26, 'c', 1, 'نَكُؤُسِيَ', 'nakuusiya', 'nakuusiya', '', '', '', '', '', '', 'nakuusiya', 'نَكُؤُسِيَ', 'nakuusiya');
INSERT INTO maisha_mume_words VALUES (334, 28, 'b', 3, 'پٖيتٖ', 'pēṯe', 'pete', '', '', '', '', '', '', 'pēṯe', 'پٖيتٖ', 'pēṯe');
INSERT INTO maisha_mume_words VALUES (321, 27, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (322, 27, 'c', 2, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (323, 27, 'c', 3, 'تُوتُ', 'ṯūṯu', 'tutu', '', '', '', '', '', '', 'ṯūṯu', 'تُوتُ', 'ṯūṯu');
INSERT INTO maisha_mume_words VALUES (324, 27, 'c', 4, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (325, 27, 'c', 5, 'أُوفُ', 'ūfu', 'ufu', '', '', '', '', '', '', 'ūfu', 'أُوفُ', 'ūfu');
INSERT INTO maisha_mume_words VALUES (335, 28, 'c', 1, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (326, 27, 'd', 1, 'دِينِ', 'ḏı̄ni', 'dini', '', '', '', '', '', '', 'ḏı̄ni', 'دِينِ', 'ḏı̄ni');
INSERT INTO maisha_mume_words VALUES (327, 27, 'd', 2, 'هَايٗ', 'hāyo', 'hayo', '', '', '', '', '', '', 'hāyo', 'هَايٗ', 'hāyo');
INSERT INTO maisha_mume_words VALUES (328, 27, 'd', 3, 'هُزُوِيَ', 'huzuwiya', 'huzuwiya', '', '', '', '', '', '', 'huzuwiya', 'هُزُوِيَ', 'huzuwiya');
INSERT INTO maisha_mume_words VALUES (354, 30, 'a', 3, 'كُوپَ', 'kūpa', 'kupa', '', '', '', '', '', '', 'kūpa', 'كُوپَ', 'kūpa');
INSERT INTO maisha_mume_words VALUES (355, 30, 'a', 4, 'مْكٗونٗ', 'mkōno', 'mkono', '', '', '', '', '', '', 'mkōno', 'مْكٗونٗ', 'mkōno');
INSERT INTO maisha_mume_words VALUES (349, 29, 'd', 1, 'وَاجَ', 'wāja', 'waja', '', '', '', '', '', '', 'wāja', 'وَاجَ', 'wāja');
INSERT INTO maisha_mume_words VALUES (336, 28, 'c', 2, 'يٖيتُ', 'yēṯu', 'yetu', '', '', '', '', '', '', 'yēṯu', 'يٖيتُ', 'yēṯu');
INSERT INTO maisha_mume_words VALUES (337, 28, 'c', 3, 'أُسِفُؤَاتٖ', 'usifuāṯe', 'usifuate', '', '', '', '', '', '', 'usifuāṯe', 'أُسِفُؤَاتٖ', 'usifuāṯe');
INSERT INTO maisha_mume_words VALUES (344, 29, 'b', 1, 'كُئِوَاتَ', 'kuiwāṯa', 'kuiwata', '', '', '', '', '', '', 'kuiwāṯa', 'كُئِوَاتَ', 'kuiwāṯa');
INSERT INTO maisha_mume_words VALUES (345, 29, 'b', 2, 'نْدِؤٗ', 'nḏio', 'ndio', '', '', '', '', '', '', 'nḏio', 'نْدِؤٗ', 'nḏio');
INSERT INTO maisha_mume_words VALUES (338, 28, 'd', 1, 'وٖينْڠِ', 'wēngi', 'wengi', '', '', '', '', '', '', 'wēngi', 'وٖينْڠِ', 'wēngi');
INSERT INTO maisha_mume_words VALUES (339, 28, 'd', 2, 'وَنْڠَكَزَنِيَ', 'wangakazaniya', 'wangakazaniya', '', '', '', '', '', '', 'wangakazaniya', 'وَنْڠَكَزَنِيَ', 'wangakazaniya');
INSERT INTO maisha_mume_words VALUES (346, 29, 'b', 3, 'بٗورَ', 'bōra', 'bora', '', '', '', '', '', '', 'bōra', 'بٗورَ', 'bōra');
INSERT INTO maisha_mume_words VALUES (350, 29, 'd', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (351, 29, 'd', 3, 'كُتٗئٖلٖيَ', 'kuṯoeleya', 'kutoeleya', '', '', '', '', '', '', 'kuṯoeleya', 'كُتٗئٖلٖيَ', 'kuṯoeleya');
INSERT INTO maisha_mume_words VALUES (340, 29, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (347, 29, 'c', 1, 'وَنْڠَاوَ', 'wangāwa', 'wangawa', '', '', '', '', '', '', 'wangāwa', 'وَنْڠَاوَ', 'wangāwa');
INSERT INTO maisha_mume_words VALUES (348, 29, 'c', 2, 'وَتَكُكٖيرَ', 'waṯakukēra', 'watakukera', '', '', '', '', '', '', 'waṯakukēra', 'وَتَكُكٖيرَ', 'waṯakukēra');
INSERT INTO maisha_mume_words VALUES (360, 30, 'c', 3, 'نْدُويٗ', 'nḏūyo', 'nduyo', '', '', '', '', '', '', 'nḏūyo', 'نْدُويٗ', 'nḏūyo');
INSERT INTO maisha_mume_words VALUES (361, 30, 'c', 4, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (363, 30, 'd', 2, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (352, 30, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (353, 30, 'a', 2, 'كْوٖينْدَ', 'kwēnḏa', 'kwenda', '', '', '', '', '', '', 'kwēnḏa', 'كْوٖينْدَ', 'kwēnḏa');
INSERT INTO maisha_mume_words VALUES (364, 30, 'd', 3, 'كُويَ', 'kūya', 'kuya', '', '', '', '', '', '', 'kūya', 'كُويَ', 'kūya');
INSERT INTO maisha_mume_words VALUES (356, 30, 'b', 1, 'أُسِكِيرِ', 'usikı̄ri', 'usikiri', '', '', '', '', '', '', 'usikı̄ri', 'أُسِكِيرِ', 'usikı̄ri');
INSERT INTO maisha_mume_words VALUES (357, 30, 'b', 2, 'تَنْڠَمَانٗ', 'ṯangamāno', 'tangamano', '', '', '', '', '', '', 'ṯangamāno', 'تَنْڠَمَانٗ', 'ṯangamāno');
INSERT INTO maisha_mume_words VALUES (358, 30, 'c', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (359, 30, 'c', 2, 'أَالٗ', 'ālo', 'alo', '', '', '', '', '', '', 'ālo', 'أَالٗ', 'ālo');
INSERT INTO maisha_mume_words VALUES (366, 31, 'a', 2, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (362, 30, 'd', 1, 'سِمُؤَاتٖ', 'simuāṯe', 'simuate', '', '', '', '', '', '', 'simuāṯe', 'سِمُؤَاتٖ', 'simuāṯe');
INSERT INTO maisha_mume_words VALUES (367, 31, 'a', 3, 'سِئَسِيسِ', 'siası̄si', 'siasisi', '', '', '', '', '', '', 'siası̄si', 'سِئَسِيسِ', 'siası̄si');
INSERT INTO maisha_mume_words VALUES (369, 31, 'b', 2, 'مْسِينْڠِ', 'msı̄ngi', 'msingi', '', '', '', '', '', '', 'msı̄ngi', 'مْسِينْڠِ', 'msı̄ngi');
INSERT INTO maisha_mume_words VALUES (365, 31, 'a', 1, 'نْيُومْبَ', 'nyūmba', 'nyumba', '', '', '', '', '', '', 'nyūmba', 'نْيُومْبَ', 'nyūmba');
INSERT INTO maisha_mume_words VALUES (371, 31, 'b', 4, 'مَأَسِ', 'maasi', 'maasi', '', '', '', '', '', '', 'maasi', 'مَأَسِ', 'maasi');
INSERT INTO maisha_mume_words VALUES (1325, 112, 'd', 2, 'هُتٗڤُمِلِيَ', 'huṯovumiliya', 'hutovumiliya', '', '', '', '', '', '', 'huṯovumiliya', 'هُتٗڤُمِلِيَ', 'huṯovumiliya');
INSERT INTO maisha_mume_words VALUES (368, 31, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (372, 31, 'c', 1, 'تَئِڤُتِيَ', 'ṯaivuṯiya', 'taivutiya', '', '', '', '', '', '', 'ṯaivuṯiya', 'تَئِڤُتِيَ', 'ṯaivuṯiya');
INSERT INTO maisha_mume_words VALUES (373, 31, 'c', 2, 'نُهُوسِ', 'nuhūsi', 'nuhusi', '', '', '', '', '', '', 'nuhūsi', 'نُهُوسِ', 'nuhūsi');
INSERT INTO maisha_mume_words VALUES (402, 34, 'b', 1, 'كِتُميِئٖ', 'kiṯumyie', 'kitumyie', '', '', '', '', '', '', 'kiṯumyie', 'كِتُميِئٖ', 'kiṯumyie');
INSERT INTO maisha_mume_words VALUES (403, 34, 'b', 2, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (374, 31, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (375, 31, 'd', 2, 'أُكٗرٗوفِ', 'ukorōfi', 'ukorofi', '', '', '', '', '', '', 'ukorōfi', 'أُكٗرٗوفِ', 'ukorōfi');
INSERT INTO maisha_mume_words VALUES (376, 31, 'd', 3, 'كُنْڠِيَ', 'kungiya', 'kungiya', '', '', '', '', '', '', 'kungiya', 'كُنْڠِيَ', 'kungiya');
INSERT INTO maisha_mume_words VALUES (404, 34, 'b', 3, 'بَاسِ', 'bāsi', 'basi', '', '', '', '', '', '', 'bāsi', 'بَاسِ', 'bāsi');
INSERT INTO maisha_mume_words VALUES (377, 32, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (378, 32, 'a', 2, 'مَأَسِ', 'maasi', 'maasi', '', '', '', '', '', '', 'maasi', 'مَأَسِ', 'maasi');
INSERT INTO maisha_mume_words VALUES (379, 32, 'a', 3, 'نِنٖنَايٗ', 'ninenāyo', 'ninenayo', '', '', '', '', '', '', 'ninenāyo', 'نِنٖنَايٗ', 'ninenāyo');
INSERT INTO maisha_mume_words VALUES (449, 38, 'b', 1, 'أُكَمْتِيَ', 'ukamṯiya', 'ukamtiya', '', '', '', '', '', '', 'ukamṯiya', 'أُكَمْتِيَ', 'ukamṯiya');
INSERT INTO maisha_mume_words VALUES (450, 38, 'b', 2, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (380, 32, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (381, 32, 'b', 2, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (382, 32, 'b', 3, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (383, 32, 'b', 4, 'أَمْبَايٗ', 'ambāyo', 'ambayo', '', '', '', '', '', '', 'ambāyo', 'أَمْبَايٗ', 'ambāyo');
INSERT INTO maisha_mume_words VALUES (405, 34, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (406, 34, 'c', 2, 'مَنْڠِنٖيٗ', 'mangineyo', 'mangineyo', '', '', '', '', '', '', 'mangineyo', 'مَنْڠِنٖيٗ', 'mangineyo');
INSERT INTO maisha_mume_words VALUES (384, 32, 'c', 1, 'مٗولَ', 'mōla', 'mola', '', '', '', '', '', '', 'mōla', 'مٗولَ', 'mōla');
INSERT INTO maisha_mume_words VALUES (385, 32, 'c', 2, 'أَيَتُكِئَايٗ', 'ayaṯukiāyo', 'ayatukiayo', '', '', '', '', '', '', 'ayaṯukiāyo', 'أَيَتُكِئَايٗ', 'ayaṯukiāyo');
INSERT INTO maisha_mume_words VALUES (462, 39, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (407, 34, 'c', 3, 'كُكِيسِ', 'kukı̄si', 'kukisi', '', '', '', '', '', '', 'kukı̄si', 'كُكِيسِ', 'kukı̄si');
INSERT INTO maisha_mume_words VALUES (386, 32, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (387, 32, 'd', 2, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (388, 32, 'd', 3, 'أَلٗزِوِيَ', 'aloziwiya', 'aloziwiya', '', '', '', '', '', '', 'aloziwiya', 'أَلٗزِوِيَ', 'aloziwiya');
INSERT INTO maisha_mume_words VALUES (435, 36, 'd', 1, 'أَنْدَمَنَانِ', 'anḏamanāni', 'andamanani', '', '', '', '', '', '', 'anḏamanāni', 'أَنْدَمَنَانِ', 'anḏamanāni');
INSERT INTO maisha_mume_words VALUES (423, 35, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (389, 33, 'a', 1, 'مٗويَ', 'mōya', 'moya', '', '', '', '', '', '', 'mōya', 'مٗويَ', 'mōya');
INSERT INTO maisha_mume_words VALUES (390, 33, 'a', 2, 'مٗويَ', 'mōya', 'moya', '', '', '', '', '', '', 'mōya', 'مٗويَ', 'mōya');
INSERT INTO maisha_mume_words VALUES (391, 33, 'a', 3, 'سِتٗوٖيزَ', 'siṯowēza', 'sitoweza', '', '', '', '', '', '', 'siṯowēza', 'سِتٗوٖيزَ', 'siṯowēza');
INSERT INTO maisha_mume_words VALUES (424, 35, 'd', 2, 'فَخَارِ', 'faẖāri', 'fahari', '', '', '', '', '', '', 'faẖāri', 'فَخَارِ', 'faẖāri');
INSERT INTO maisha_mume_words VALUES (408, 34, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (392, 33, 'b', 1, 'كُتٗنْدٗوَ', 'kuṯonḏowa', 'kutondowa', '', '', '', '', '', '', 'kuṯonḏowa', 'كُتٗنْدٗوَ', 'kuṯonḏowa');
INSERT INTO maisha_mume_words VALUES (393, 33, 'b', 2, 'كُكْوٖلٖيزَ', 'kukwelēza', 'kukweleza', '', '', '', '', '', '', 'kukwelēza', 'كُكْوٖلٖيزَ', 'kukwelēza');
INSERT INTO maisha_mume_words VALUES (409, 34, 'd', 2, 'مِزَانِ', 'mizāni', 'mizani', '', '', '', '', '', '', 'mizāni', 'مِزَانِ', 'mizāni');
INSERT INTO maisha_mume_words VALUES (410, 34, 'd', 3, 'كُتُمِيَ', 'kuṯumiya', 'kutumiya', '', '', '', '', '', '', 'kuṯumiya', 'كُتُمِيَ', 'kuṯumiya');
INSERT INTO maisha_mume_words VALUES (394, 33, 'c', 1, 'نِمٖكُوپَ', 'nimekūpa', 'nimekupa', '', '', '', '', '', '', 'nimekūpa', 'نِمٖكُوپَ', 'nimekūpa');
INSERT INTO maisha_mume_words VALUES (481, 40, 'd', 2, 'يِيڤُ', 'ı̄ı̄vu', 'yivu', '', '', '', '', '', '', 'ı̄ı̄vu', 'يِيڤُ', 'ı̄ı̄vu');
INSERT INTO maisha_mume_words VALUES (395, 33, 'c', 2, 'مُؤَنْڠَازَ', 'muangāza', 'muangaza', '', '', '', '', '', '', 'muangāza', 'مُؤَنْڠَازَ', 'muangāza');
INSERT INTO maisha_mume_words VALUES (396, 33, 'd', 1, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (397, 33, 'd', 2, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (398, 33, 'd', 3, 'كُفُؤَتِيَ', 'kufuaṯiya', 'kufuatiya', '', '', '', '', '', '', 'kufuaṯiya', 'كُفُؤَتِيَ', 'kufuaṯiya');
INSERT INTO maisha_mume_words VALUES (425, 35, 'd', 3, 'كُزٖنْڠٖيَ', 'kuzengeya', 'kuzengeya', '', '', '', '', '', '', 'kuzengeya', 'كُزٖنْڠٖيَ', 'kuzengeya');
INSERT INTO maisha_mume_words VALUES (399, 34, 'a', 1, 'نِمٖكُوپَ', 'nimekūpa', 'nimekupa', '', '', '', '', '', '', 'nimekūpa', 'نِمٖكُوپَ', 'nimekūpa');
INSERT INTO maisha_mume_words VALUES (400, 34, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (401, 34, 'a', 3, 'كِيَاسِ', 'kiyāsi', 'kiyasi', '', '', '', '', '', '', 'kiyāsi', 'كِيَاسِ', 'kiyāsi');
INSERT INTO maisha_mume_words VALUES (411, 35, 'a', 1, 'نْيُومْبَ', 'nyūmba', 'nyumba', '', '', '', '', '', '', 'nyūmba', 'نْيُومْبَ', 'nyūmba');
INSERT INTO maisha_mume_words VALUES (412, 35, 'a', 2, 'نْجٖيمَ', 'njēma', 'njema', '', '', '', '', '', '', 'njēma', 'نْجٖيمَ', 'njēma');
INSERT INTO maisha_mume_words VALUES (413, 35, 'a', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (414, 35, 'a', 4, 'مْسِنْجِ', 'msinji', 'msinji', '', '', '', '', '', '', 'msinji', 'مْسِنْجِ', 'msinji');
INSERT INTO maisha_mume_words VALUES (436, 36, 'd', 2, 'پَمٗويَ', 'pamōya', 'pamoya', '', '', '', '', '', '', 'pamōya', 'پَمٗويَ', 'pamōya');
INSERT INTO maisha_mume_words VALUES (415, 35, 'b', 1, 'تَامُ', 'ṯāmu', 'tamu', '', '', '', '', '', '', 'ṯāmu', 'تَامُ', 'ṯāmu');
INSERT INTO maisha_mume_words VALUES (416, 35, 'b', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (417, 35, 'b', 3, 'چَاءِ', 'chāi', 'chai', '', '', '', '', '', '', 'chāi', 'چَاءِ', 'chāi');
INSERT INTO maisha_mume_words VALUES (418, 35, 'b', 4, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (419, 35, 'b', 5, 'رَنْجِ', 'ranji', 'ranji', '', '', '', '', '', '', 'ranji', 'رَنْجِ', 'ranji');
INSERT INTO maisha_mume_words VALUES (426, 36, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (427, 36, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (443, 37, 'c', 1, 'أَجِنَابُ', 'ajinābu', 'ajinabu', '', '', '', '', '', '', 'ajinābu', 'أَجِنَابُ', 'ajinābu');
INSERT INTO maisha_mume_words VALUES (420, 35, 'c', 1, 'وٖينْڠِ', 'wēngi', 'wengi', '', '', '', '', '', '', 'wēngi', 'وٖينْڠِ', 'wēngi');
INSERT INTO maisha_mume_words VALUES (421, 35, 'c', 2, 'مٖتِلِيوَ', 'meṯilı̄wa', 'metiliwa', '', '', '', '', '', '', 'meṯilı̄wa', 'مٖتِلِيوَ', 'meṯilı̄wa');
INSERT INTO maisha_mume_words VALUES (428, 36, 'a', 3, 'لَزِيمَ', 'lazı̄ma', 'lazima', '', '', '', '', '', '', 'lazı̄ma', 'لَزِيمَ', 'lazı̄ma');
INSERT INTO maisha_mume_words VALUES (429, 36, 'a', 4, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (444, 37, 'c', 2, 'سِمُؤَاتٖ', 'simuāṯe', 'simuate', '', '', '', '', '', '', 'simuāṯe', 'سِمُؤَاتٖ', 'simuāṯe');
INSERT INTO maisha_mume_words VALUES (437, 37, 'a', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (430, 36, 'b', 1, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (431, 36, 'b', 2, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (432, 36, 'b', 3, 'كُؤَنْدَمَانَ', 'kuanḏamāna', 'kuandamana', '', '', '', '', '', '', 'kuanḏamāna', 'كُؤَنْدَمَانَ', 'kuanḏamāna');
INSERT INTO maisha_mume_words VALUES (2126, 180, 'd', 1, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (438, 37, 'a', 2, 'مْوٖنْڠِينٖ', 'mwengı̄ne', 'mwengine', '', '', '', '', '', '', 'mwengı̄ne', 'مْوٖنْڠِينٖ', 'mwengı̄ne');
INSERT INTO maisha_mume_words VALUES (439, 37, 'a', 3, 'يٗيٗوتٖ', 'yoyōṯe', 'yoyote', '', '', '', '', '', '', 'yoyōṯe', 'يٗيٗوتٖ', 'yoyōṯe');
INSERT INTO maisha_mume_words VALUES (433, 36, 'c', 1, 'شٖمٖڠِيٗ', 'shemegiyo', 'shemegiyo', '', '', '', '', '', '', 'shemegiyo', 'شٖمٖڠِيٗ', 'shemegiyo');
INSERT INTO maisha_mume_words VALUES (434, 36, 'c', 2, 'مْڤُلَانَ', 'mvulāna', 'mvulana', '', '', '', '', '', '', 'mvulāna', 'مْڤُلَانَ', 'mvulāna');
INSERT INTO maisha_mume_words VALUES (447, 38, 'a', 1, 'رَفِيكِ', 'rafı̄ki', 'rafiki', '', '', '', '', '', '', 'rafı̄ki', 'رَفِيكِ', 'rafı̄ki');
INSERT INTO maisha_mume_words VALUES (448, 38, 'a', 2, 'سِمُؤَامْنِ', 'simuāmni', 'simuamni', '', '', '', '', '', '', 'simuāmni', 'سِمُؤَامْنِ', 'simuāmni');
INSERT INTO maisha_mume_words VALUES (440, 37, 'b', 1, 'مَهَرِيمُ', 'maharı̄mu', 'maharimu', '', '', '', '', '', '', 'maharı̄mu', 'مَهَرِيمُ', 'maharı̄mu');
INSERT INTO maisha_mume_words VALUES (441, 37, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (442, 37, 'b', 3, 'فُؤَاتٖ', 'fuāṯe', 'fuate', '', '', '', '', '', '', 'fuāṯe', 'فُؤَاتٖ', 'fuāṯe');
INSERT INTO maisha_mume_words VALUES (445, 37, 'd', 1, 'مْكٖؤٗ', 'mkeo', 'mkeo', '', '', '', '', '', '', 'mkeo', 'مْكٖؤٗ', 'mkeo');
INSERT INTO maisha_mume_words VALUES (446, 37, 'd', 2, 'كُمْوَنْڠَلِيَ', 'kumwangaliya', 'kumwangaliya', '', '', '', '', '', '', 'kumwangaliya', 'كُمْوَنْڠَلِيَ', 'kumwangaliya');
INSERT INTO maisha_mume_words VALUES (453, 38, 'c', 3, 'فُلَانِ', 'fulāni', 'fulani', '', '', '', '', '', '', 'fulāni', 'فُلَانِ', 'fulāni');
INSERT INTO maisha_mume_words VALUES (455, 38, 'd', 2, 'إِكِتٗكٖيَ', 'ikiṯokeya', 'ikitokeya', '', '', '', '', '', '', 'ikiṯokeya', 'إِكِتٗكٖيَ', 'ikiṯokeya');
INSERT INTO maisha_mume_words VALUES (451, 38, 'c', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (452, 38, 'c', 2, 'ذَرُورَ', 'dharūra', 'dharura', '', '', '', '', '', '', 'dharūra', 'ذَرُورَ', 'dharūra');
INSERT INTO maisha_mume_words VALUES (457, 39, 'a', 2, 'أُسِملِيچٖ', 'usimlı̄che', 'usimliche', '', '', '', '', '', '', 'usimlı̄che', 'أُسِملِيچٖ', 'usimlı̄che');
INSERT INTO maisha_mume_words VALUES (454, 38, 'd', 1, 'سِكُويٖ', 'sikūye', 'sikuye', '', '', '', '', '', '', 'sikūye', 'سِكُويٖ', 'sikūye');
INSERT INTO maisha_mume_words VALUES (459, 39, 'b', 2, 'زَئِيدِ', 'zaı̄ḏi', 'zaidi', '', '', '', '', '', '', 'zaı̄ḏi', 'زَئِيدِ', 'zaı̄ḏi');
INSERT INTO maisha_mume_words VALUES (456, 39, 'a', 1, 'رَفِيكِ', 'rafı̄ki', 'rafiki', '', '', '', '', '', '', 'rafı̄ki', 'رَفِيكِ', 'rafı̄ki');
INSERT INTO maisha_mume_words VALUES (460, 39, 'b', 3, 'هُويٗ', 'hūyo', 'huyo', '', '', '', '', '', '', 'hūyo', 'هُويٗ', 'hūyo');
INSERT INTO maisha_mume_words VALUES (461, 39, 'b', 4, 'مْچٖ', 'mche', 'mche', '', '', '', '', '', '', 'mche', 'مْچٖ', 'mche');
INSERT INTO maisha_mume_words VALUES (463, 39, 'c', 2, 'وَاءٗ', 'wāo', 'wao', '', '', '', '', '', '', 'wāo', 'وَاءٗ', 'wāo');
INSERT INTO maisha_mume_words VALUES (458, 39, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (514, 43, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (515, 43, 'c', 3, 'كُوَوٖيكَ', 'kuwawēka', 'kuwaweka', '', '', '', '', '', '', 'kuwawēka', 'كُوَوٖيكَ', 'kuwawēka');
INSERT INTO maisha_mume_words VALUES (464, 39, 'c', 3, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (465, 39, 'c', 4, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (466, 39, 'c', 5, 'چٖيچٖ', 'chēche', 'cheche', '', '', '', '', '', '', 'chēche', 'چٖيچٖ', 'chēche');
INSERT INTO maisha_mume_words VALUES (494, 42, 'a', 1, 'هِيٗ', 'hiyo', 'hiyo', '', '', '', '', '', '', 'hiyo', 'هِيٗ', 'hiyo');
INSERT INTO maisha_mume_words VALUES (495, 42, 'a', 2, 'كْوٖيتُ', 'kwēṯu', 'kwetu', '', '', '', '', '', '', 'kwēṯu', 'كْوٖيتُ', 'kwēṯu');
INSERT INTO maisha_mume_words VALUES (467, 39, 'd', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (468, 39, 'd', 2, 'أُسٗلِذَنِيَ', 'usolidhaniya', 'usolidhaniya', '', '', '', '', '', '', 'usolidhaniya', 'أُسٗلِذَنِيَ', 'usolidhaniya');
INSERT INTO maisha_mume_words VALUES (496, 42, 'a', 3, 'سِيٗ', 'siyo', 'siyo', '', '', '', '', '', '', 'siyo', 'سِيٗ', 'siyo');
INSERT INTO maisha_mume_words VALUES (497, 42, 'a', 4, 'مِيلَ', 'mı̄la', 'mila', '', '', '', '', '', '', 'mı̄la', 'مِيلَ', 'mı̄la');
INSERT INTO maisha_mume_words VALUES (469, 40, 'a', 1, 'زِزِينِ', 'zizı̄ni', 'zizini', '', '', '', '', '', '', 'zizı̄ni', 'زِزِينِ', 'zizı̄ni');
INSERT INTO maisha_mume_words VALUES (470, 40, 'a', 2, 'كُتِيَ', 'kuṯiya', 'kutiya', '', '', '', '', '', '', 'kuṯiya', 'كُتِيَ', 'kuṯiya');
INSERT INTO maisha_mume_words VALUES (471, 40, 'a', 3, 'سِيمْبَ', 'sı̄mba', 'simba', '', '', '', '', '', '', 'sı̄mba', 'سِيمْبَ', 'sı̄mba');
INSERT INTO maisha_mume_words VALUES (472, 40, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (473, 40, 'b', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (474, 40, 'b', 3, 'مٗوتٗ', 'mōṯo', 'moto', '', '', '', '', '', '', 'mōṯo', 'مٗوتٗ', 'mōṯo');
INSERT INTO maisha_mume_words VALUES (475, 40, 'b', 4, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (476, 40, 'b', 5, 'پَامْبَ', 'pāmba', 'pamba', '', '', '', '', '', '', 'pāmba', 'پَامْبَ', 'pāmba');
INSERT INTO maisha_mume_words VALUES (498, 42, 'b', 1, 'كُنْڠِيَ', 'kungiya', 'kungiya', '', '', '', '', '', '', 'kungiya', 'كُنْڠِيَ', 'kungiya');
INSERT INTO maisha_mume_words VALUES (499, 42, 'b', 2, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (500, 42, 'b', 3, 'مَهَالَ', 'mahāla', 'mahala', '', '', '', '', '', '', 'mahāla', 'مَهَالَ', 'mahāla');
INSERT INTO maisha_mume_words VALUES (477, 40, 'c', 1, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (478, 40, 'c', 2, 'مٗويَ', 'mōya', 'moya', '', '', '', '', '', '', 'mōya', 'مٗويَ', 'mōya');
INSERT INTO maisha_mume_words VALUES (479, 40, 'c', 3, 'هُزِسُومْبَ', 'huzisūmba', 'huzisumba', '', '', '', '', '', '', 'huzisūmba', 'هُزِسُومْبَ', 'huzisūmba');
INSERT INTO maisha_mume_words VALUES (480, 40, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (482, 40, 'd', 3, 'لِكَسَلِيَ', 'likasaliya', 'likasaliya', '', '', '', '', '', '', 'likasaliya', 'لِكَسَلِيَ', 'likasaliya');
INSERT INTO maisha_mume_words VALUES (543, 45, 'd', 4, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (526, 44, 'c', 1, 'هُنْڠِيَ', 'hungiya', 'hungiya', '', '', '', '', '', '', 'hungiya', 'هُنْڠِيَ', 'hungiya');
INSERT INTO maisha_mume_words VALUES (483, 41, 'a', 1, 'رَفِيكِ', 'rafı̄ki', 'rafiki', '', '', '', '', '', '', 'rafı̄ki', 'رَفِيكِ', 'rafı̄ki');
INSERT INTO maisha_mume_words VALUES (484, 41, 'a', 2, 'كِنْڠِيَ', 'kingiya', 'kingiya', '', '', '', '', '', '', 'kingiya', 'كِنْڠِيَ', 'kingiya');
INSERT INTO maisha_mume_words VALUES (485, 41, 'a', 3, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (527, 44, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (516, 43, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (486, 41, 'b', 1, 'سِكُويٖ', 'sikūye', 'sikuye', '', '', '', '', '', '', 'sikūye', 'سِكُويٖ', 'sikūye');
INSERT INTO maisha_mume_words VALUES (487, 41, 'b', 2, 'أُكَتَمَانِ', 'ukaṯamāni', 'ukatamani', '', '', '', '', '', '', 'ukaṯamāni', 'أُكَتَمَانِ', 'ukaṯamāni');
INSERT INTO maisha_mume_words VALUES (501, 42, 'c', 1, 'پَاسِ', 'pāsi', 'pasi', '', '', '', '', '', '', 'pāsi', 'پَاسِ', 'pāsi');
INSERT INTO maisha_mume_words VALUES (502, 42, 'c', 2, 'هٗودِ', 'hōḏi', 'hodi', '', '', '', '', '', '', 'hōḏi', 'هٗودِ', 'hōḏi');
INSERT INTO maisha_mume_words VALUES (503, 42, 'c', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (504, 42, 'c', 4, 'سُمِيلَ', 'sumı̄la', 'sumila', '', '', '', '', '', '', 'sumı̄la', 'سُمِيلَ', 'sumı̄la');
INSERT INTO maisha_mume_words VALUES (488, 41, 'c', 1, 'سَامْبٖ', 'sāmbe', 'sambe', '', '', '', '', '', '', 'sāmbe', 'سَامْبٖ', 'sāmbe');
INSERT INTO maisha_mume_words VALUES (489, 41, 'c', 2, 'أٗونَ', 'ōna', 'ona', '', '', '', '', '', '', 'ōna', 'أٗونَ', 'ōna');
INSERT INTO maisha_mume_words VALUES (490, 41, 'c', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (491, 41, 'c', 4, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (492, 41, 'd', 1, 'هٖئٖ', 'hee', 'hee', '', '', '', '', '', '', 'hee', 'هٖئٖ', 'hee');
INSERT INTO maisha_mume_words VALUES (493, 41, 'd', 2, 'أُتَيِتٗنْڠٖيَ', 'uṯayiṯongeya', 'utayitongeya', '', '', '', '', '', '', 'uṯayiṯongeya', 'أُتَيِتٗنْڠٖيَ', 'uṯayiṯongeya');
INSERT INTO maisha_mume_words VALUES (517, 43, 'd', 2, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (518, 43, 'd', 3, 'كُتٗتُنْڠِيَ', 'kuṯoṯungiya', 'kutotungiya', '', '', '', '', '', '', 'kuṯoṯungiya', 'كُتٗتُنْڠِيَ', 'kuṯoṯungiya');
INSERT INTO maisha_mume_words VALUES (505, 42, 'd', 1, 'سِيٗ', 'siyo', 'siyo', '', '', '', '', '', '', 'siyo', 'سِيٗ', 'siyo');
INSERT INTO maisha_mume_words VALUES (506, 42, 'd', 2, 'يٖيتُ', 'yēṯu', 'yetu', '', '', '', '', '', '', 'yēṯu', 'يٖيتُ', 'yēṯu');
INSERT INTO maisha_mume_words VALUES (507, 42, 'd', 3, 'مَزٗوٖيَ', 'mazoweya', 'mazoweya', '', '', '', '', '', '', 'mazoweya', 'مَزٗوٖيَ', 'mazoweya');
INSERT INTO maisha_mume_words VALUES (508, 43, 'a', 1, 'يَلِنَكَازِ', 'yalinakāzi', 'yalinakazi', '', '', '', '', '', '', 'yalinakāzi', 'يَلِنَكَازِ', 'yalinakāzi');
INSERT INTO maisha_mume_words VALUES (509, 43, 'a', 2, 'مَدَاكَ', 'maḏāka', 'madaka', '', '', '', '', '', '', 'maḏāka', 'مَدَاكَ', 'maḏāka');
INSERT INTO maisha_mume_words VALUES (528, 44, 'c', 3, 'هَمُؤٗونِ', 'hamuōni', 'hamuoni', '', '', '', '', '', '', 'hamuōni', 'هَمُؤٗونِ', 'hamuōni');
INSERT INTO maisha_mume_words VALUES (510, 43, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (511, 43, 'b', 2, 'وَڠٖينِ', 'wagēni', 'wageni', '', '', '', '', '', '', 'wagēni', 'وَڠٖينِ', 'wagēni');
INSERT INTO maisha_mume_words VALUES (512, 43, 'b', 3, 'كُوَدَاكَ', 'kuwaḏāka', 'kuwadaka', '', '', '', '', '', '', 'kuwaḏāka', 'كُوَدَاكَ', 'kuwaḏāka');
INSERT INTO maisha_mume_words VALUES (535, 45, 'b', 1, 'كَشُكِيٖ', 'kashukiye', 'kashukiye', '', '', '', '', '', '', 'kashukiye', 'كَشُكِيٖ', 'kashukiye');
INSERT INTO maisha_mume_words VALUES (536, 45, 'b', 2, 'هٗتٖلِينِ', 'hoṯelı̄ni', 'hotelini', '', '', '', '', '', '', 'hoṯelı̄ni', 'هٗتٖلِينِ', 'hoṯelı̄ni');
INSERT INTO maisha_mume_words VALUES (519, 44, 'a', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (520, 44, 'a', 2, 'أَاوٖ', 'āwe', 'awe', '', '', '', '', '', '', 'āwe', 'أَاوٖ', 'āwe');
INSERT INTO maisha_mume_words VALUES (521, 44, 'a', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (522, 44, 'a', 4, 'مْڠٖينِ', 'mgēni', 'mgeni', '', '', '', '', '', '', 'mgēni', 'مْڠٖينِ', 'mgēni');
INSERT INTO maisha_mume_words VALUES (529, 44, 'd', 1, 'أَلِيٗ', 'aliyo', 'aliyo', '', '', '', '', '', '', 'aliyo', 'أَلِيٗ', 'aliyo');
INSERT INTO maisha_mume_words VALUES (530, 44, 'd', 2, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (531, 44, 'd', 3, 'ممٗويَ', 'mmōya', 'mmoya', '', '', '', '', '', '', 'mmōya', 'ممٗويَ', 'mmōya');
INSERT INTO maisha_mume_words VALUES (523, 44, 'b', 1, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (524, 44, 'b', 2, 'كُشُكِيَ', 'kushukiya', 'kushukiya', '', '', '', '', '', '', 'kushukiya', 'كُشُكِيَ', 'kushukiya');
INSERT INTO maisha_mume_words VALUES (525, 44, 'b', 3, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (545, 46, 'a', 2, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (532, 45, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (533, 45, 'a', 2, 'أُچٖينْدَ', 'uchēnḏa', 'uchenda', '', '', '', '', '', '', 'uchēnḏa', 'أُچٖينْدَ', 'uchēnḏa');
INSERT INTO maisha_mume_words VALUES (534, 45, 'a', 3, 'سَفَرِينِ', 'safarı̄ni', 'safarini', '', '', '', '', '', '', 'safarı̄ni', 'سَفَرِينِ', 'safarı̄ni');
INSERT INTO maisha_mume_words VALUES (540, 45, 'd', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (537, 45, 'c', 1, 'سِپٖينْدٖ', 'sipēnḏe', 'sipende', '', '', '', '', '', '', 'sipēnḏe', 'سِپٖينْدٖ', 'sipēnḏe');
INSERT INTO maisha_mume_words VALUES (538, 45, 'c', 2, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (539, 45, 'c', 3, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (541, 45, 'd', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (542, 45, 'd', 3, 'كُپِيتَ', 'kupı̄ṯa', 'kupita', '', '', '', '', '', '', 'kupı̄ṯa', 'كُپِيتَ', 'kupı̄ṯa');
INSERT INTO maisha_mume_words VALUES (547, 46, 'b', 2, 'تٗوتٗ', 'ṯōṯo', 'toto', '', '', '', '', '', '', 'ṯōṯo', 'تٗوتٗ', 'ṯōṯo');
INSERT INTO maisha_mume_words VALUES (544, 46, 'a', 1, 'أُكِمْوٖنْدٖيَ', 'ukimwenḏeya', 'ukimwendeya', '', '', '', '', '', '', 'ukimwenḏeya', 'أُكِمْوٖنْدٖيَ', 'ukimwenḏeya');
INSERT INTO maisha_mume_words VALUES (548, 46, 'b', 3, 'مَسِكَانِ', 'masikāni', 'masikani', '', '', '', '', '', '', 'masikāni', 'مَسِكَانِ', 'masikāni');
INSERT INTO maisha_mume_words VALUES (550, 46, 'c', 2, 'أَالٗ', 'ālo', 'alo', '', '', '', '', '', '', 'ālo', 'أَالٗ', 'ālo');
INSERT INTO maisha_mume_words VALUES (546, 46, 'b', 1, 'مْوٖينْيٖ', 'mwēnye', 'mwenye', '', '', '', '', '', '', 'mwēnye', 'مْوٖينْيٖ', 'mwēnye');
INSERT INTO maisha_mume_words VALUES (551, 46, 'c', 3, 'مَسِكِينِ', 'masikı̄ni', 'masikini', '', '', '', '', '', '', 'masikı̄ni', 'مَسِكِينِ', 'masikı̄ni');
INSERT INTO maisha_mume_words VALUES (553, 46, 'd', 2, 'هُمْتِيَ', 'humṯiya', 'humtiya', '', '', '', '', '', '', 'humṯiya', 'هُمْتِيَ', 'humṯiya');
INSERT INTO maisha_mume_words VALUES (549, 46, 'c', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (555, 47, 'a', 2, 'إِوَاپٗ', 'iwāpo', 'iwapo', '', '', '', '', '', '', 'iwāpo', 'إِوَاپٗ', 'iwāpo');
INSERT INTO maisha_mume_words VALUES (552, 46, 'd', 1, 'تَأَبُونِ', 'ṯaabūni', 'taabuni', '', '', '', '', '', '', 'ṯaabūni', 'تَأَبُونِ', 'ṯaabūni');
INSERT INTO maisha_mume_words VALUES (556, 47, 'a', 3, 'هُونَ', 'hūna', 'huna', '', '', '', '', '', '', 'hūna', 'هُونَ', 'hūna');
INSERT INTO maisha_mume_words VALUES (554, 47, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (606, 51, 'b', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (607, 51, 'b', 3, 'دُونِ', 'ḏūni', 'duni', '', '', '', '', '', '', 'ḏūni', 'دُونِ', 'ḏūni');
INSERT INTO maisha_mume_words VALUES (558, 47, 'b', 1, 'هُكُفَانْيَ', 'hukufānya', 'hukufanya', '', '', '', '', '', '', 'hukufānya', 'هُكُفَانْيَ', 'hukufānya');
INSERT INTO maisha_mume_words VALUES (559, 47, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (560, 47, 'b', 3, 'كَسِيدِ', 'kası̄ḏi', 'kasidi', '', '', '', '', '', '', 'kası̄ḏi', 'كَسِيدِ', 'kası̄ḏi');
INSERT INTO maisha_mume_words VALUES (588, 49, 'd', 1, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (589, 49, 'd', 2, 'كُپٗتٖيَ', 'kupoṯeya', 'kupoteya', '', '', '', '', '', '', 'kupoṯeya', 'كُپٗتٖيَ', 'kupoṯeya');
INSERT INTO maisha_mume_words VALUES (590, 49, 'd', 3, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (561, 47, 'c', 1, 'سِيكُ', 'sı̄ku', 'siku', '', '', '', '', '', '', 'sı̄ku', 'سِيكُ', 'sı̄ku');
INSERT INTO maisha_mume_words VALUES (562, 47, 'c', 2, 'تَاتُ', 'ṯāṯu', 'tatu', '', '', '', '', '', '', 'ṯāṯu', 'تَاتُ', 'ṯāṯu');
INSERT INTO maisha_mume_words VALUES (563, 47, 'c', 3, 'أُسِزِيدِ', 'usizı̄ḏi', 'usizidi', '', '', '', '', '', '', 'usizı̄ḏi', 'أُسِزِيدِ', 'usizı̄ḏi');
INSERT INTO maisha_mume_words VALUES (564, 47, 'd', 1, 'سِؤٗنْڠٖيزٖ', 'siongēze', 'siongeze', '', '', '', '', '', '', 'siongēze', 'سِؤٗنْڠٖيزٖ', 'siongēze');
INSERT INTO maisha_mume_words VALUES (565, 47, 'd', 2, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (566, 47, 'd', 3, 'مٗويَ', 'mōya', 'moya', '', '', '', '', '', '', 'mōya', 'مٗويَ', 'mōya');
INSERT INTO maisha_mume_words VALUES (617, 52, 'b', 1, 'زِيتُ', 'zı̄ṯu', 'zitu', '', '', '', '', '', '', 'zı̄ṯu', 'زِيتُ', 'zı̄ṯu');
INSERT INTO maisha_mume_words VALUES (591, 50, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (567, 48, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (568, 48, 'a', 2, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (569, 48, 'a', 3, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (570, 48, 'a', 4, 'سِتٖينْدٖ', 'siṯēnḏe', 'sitende', '', '', '', '', '', '', 'siṯēnḏe', 'سِتٖينْدٖ', 'siṯēnḏe');
INSERT INTO maisha_mume_words VALUES (592, 50, 'a', 2, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (593, 50, 'a', 3, 'مٖكْوَلِيكَ', 'mekwalı̄ka', 'mekwalika', '', '', '', '', '', '', 'mekwalı̄ka', 'مٖكْوَلِيكَ', 'mekwalı̄ka');
INSERT INTO maisha_mume_words VALUES (571, 48, 'b', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (572, 48, 'b', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (573, 48, 'b', 3, 'يَكُشِينْدٖ', 'yakushı̄nḏe', 'yakushinde', '', '', '', '', '', '', 'yakushı̄nḏe', 'يَكُشِينْدٖ', 'yakushı̄nḏe');
INSERT INTO maisha_mume_words VALUES (574, 48, 'c', 1, 'مْتٖرٖيمْكٗ', 'mṯerēmko', 'mteremko', '', '', '', '', '', '', 'mṯerēmko', 'مْتٖرٖيمْكٗ', 'mṯerēmko');
INSERT INTO maisha_mume_words VALUES (575, 48, 'c', 2, 'سِپٖينْدٖ', 'sipēnḏe', 'sipende', '', '', '', '', '', '', 'sipēnḏe', 'سِپٖينْدٖ', 'sipēnḏe');
INSERT INTO maisha_mume_words VALUES (618, 52, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (619, 52, 'b', 3, 'كَدِيرِ', 'kaḏı̄ri', 'kadiri', '', '', '', '', '', '', 'kaḏı̄ri', 'كَدِيرِ', 'kaḏı̄ri');
INSERT INTO maisha_mume_words VALUES (576, 48, 'd', 1, 'نْيٗونْڠٗ', 'nyōngo', 'nyongo', '', '', '', '', '', '', 'nyōngo', 'نْيٗونْڠٗ', 'nyōngo');
INSERT INTO maisha_mume_words VALUES (577, 48, 'd', 2, 'هُكُتُمْبُكِيَ', 'hukuṯumbukiya', 'hukutumbukiya', '', '', '', '', '', '', 'hukuṯumbukiya', 'هُكُتُمْبُكِيَ', 'hukuṯumbukiya');
INSERT INTO maisha_mume_words VALUES (608, 51, 'c', 1, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (594, 50, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (595, 50, 'b', 2, 'وَجِيبُ', 'wajı̄bu', 'wajibu', '', '', '', '', '', '', 'wajı̄bu', 'وَجِيبُ', 'wajı̄bu');
INSERT INTO maisha_mume_words VALUES (578, 49, 'a', 1, 'لٗجِينْڠِ', 'lojı̄ngi', 'lojingi', '', '', '', '', '', '', 'lojı̄ngi', 'لٗجِينْڠِ', 'lojı̄ngi');
INSERT INTO maisha_mume_words VALUES (579, 49, 'a', 2, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (580, 49, 'a', 3, 'هَپَانَ', 'hapāna', 'hapana', '', '', '', '', '', '', 'hapāna', 'هَپَانَ', 'hapāna');
INSERT INTO maisha_mume_words VALUES (596, 50, 'b', 3, 'كُئِتِيكَ', 'kuiṯı̄ka', 'kuitika', '', '', '', '', '', '', 'kuiṯı̄ka', 'كُئِتِيكَ', 'kuiṯı̄ka');
INSERT INTO maisha_mume_words VALUES (581, 49, 'b', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (582, 49, 'b', 2, 'مْفُكٗونِ', 'mfukōni', 'mfukoni', '', '', '', '', '', '', 'mfukōni', 'مْفُكٗونِ', 'mfukōni');
INSERT INTO maisha_mume_words VALUES (583, 49, 'b', 3, 'هُونَ', 'hūna', 'huna', '', '', '', '', '', '', 'hūna', 'هُونَ', 'hūna');
INSERT INTO maisha_mume_words VALUES (609, 51, 'c', 2, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (610, 51, 'c', 3, 'وَسِتَانِ', 'wasiṯāni', 'wasitani', '', '', '', '', '', '', 'wasiṯāni', 'وَسِتَانِ', 'wasiṯāni');
INSERT INTO maisha_mume_words VALUES (597, 50, 'c', 1, 'شُغُولِ', 'shuḡūli', 'shughuli', '', '', '', '', '', '', 'shuḡūli', 'شُغُولِ', 'shuḡūli');
INSERT INTO maisha_mume_words VALUES (598, 50, 'c', 2, 'كِمَلِزِيكَ', 'kimalizı̄ka', 'kimalizika', '', '', '', '', '', '', 'kimalizı̄ka', 'كِمَلِزِيكَ', 'kimalizı̄ka');
INSERT INTO maisha_mume_words VALUES (584, 49, 'c', 1, 'نٖينْدَ', 'nēnḏa', 'nenda', '', '', '', '', '', '', 'nēnḏa', 'نٖينْدَ', 'nēnḏa');
INSERT INTO maisha_mume_words VALUES (585, 49, 'c', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (586, 49, 'c', 3, 'هَذَارِ', 'hadhāri', 'hadhari', '', '', '', '', '', '', 'hadhāri', 'هَذَارِ', 'hadhāri');
INSERT INTO maisha_mume_words VALUES (587, 49, 'c', 4, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (599, 50, 'd', 1, 'مُسِوٖيكٖ', 'musiwēke', 'musiweke', '', '', '', '', '', '', 'musiwēke', 'مُسِوٖيكٖ', 'musiwēke');
INSERT INTO maisha_mume_words VALUES (600, 50, 'd', 2, 'مَزٗوٖيَ', 'mazoweya', 'mazoweya', '', '', '', '', '', '', 'mazoweya', 'مَزٗوٖيَ', 'mazoweya');
INSERT INTO maisha_mume_words VALUES (620, 52, 'b', 4, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (601, 51, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (602, 51, 'a', 2, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (603, 51, 'a', 3, 'كْوَاكٗ', 'kwāko', 'kwako', '', '', '', '', '', '', 'kwāko', 'كْوَاكٗ', 'kwāko');
INSERT INTO maisha_mume_words VALUES (604, 51, 'a', 4, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (611, 51, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (629, 53, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (605, 51, 'b', 1, 'سِئِفَانْيٖ', 'siifānye', 'siifanye', '', '', '', '', '', '', 'siifānye', 'سِئِفَانْيٖ', 'siifānye');
INSERT INTO maisha_mume_words VALUES (612, 51, 'd', 2, 'مَپَامْبٗ', 'mapāmbo', 'mapambo', '', '', '', '', '', '', 'mapāmbo', 'مَپَامْبٗ', 'mapāmbo');
INSERT INTO maisha_mume_words VALUES (613, 51, 'd', 3, 'كُيِتِيَ', 'kuyiṯiya', 'kuyitiya', '', '', '', '', '', '', 'kuyiṯiya', 'كُيِتِيَ', 'kuyiṯiya');
INSERT INTO maisha_mume_words VALUES (630, 53, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (631, 53, 'b', 3, 'زِيتُ', 'zı̄ṯu', 'zitu', '', '', '', '', '', '', 'zı̄ṯu', 'زِيتُ', 'zı̄ṯu');
INSERT INTO maisha_mume_words VALUES (621, 52, 'c', 1, 'إِكِيوَ', 'ikı̄wa', 'ikiwa', '', '', '', '', '', '', 'ikı̄wa', 'إِكِيوَ', 'ikı̄wa');
INSERT INTO maisha_mume_words VALUES (614, 52, 'a', 1, 'مْتِلِيٖ', 'mṯiliye', 'mtiliye', '', '', '', '', '', '', 'mṯiliye', 'مْتِلِيٖ', 'mṯiliye');
INSERT INTO maisha_mume_words VALUES (615, 52, 'a', 2, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (616, 52, 'a', 3, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (626, 53, 'a', 1, 'إِيوٖ', 'ı̄we', 'iwe', '', '', '', '', '', '', 'ı̄we', 'إِيوٖ', 'ı̄we');
INSERT INTO maisha_mume_words VALUES (627, 53, 'a', 2, 'مَرِدَادِ', 'mariḏāḏi', 'maridadi', '', '', '', '', '', '', 'mariḏāḏi', 'مَرِدَادِ', 'mariḏāḏi');
INSERT INTO maisha_mume_words VALUES (628, 53, 'a', 3, 'نْيُومْبَ', 'nyūmba', 'nyumba', '', '', '', '', '', '', 'nyūmba', 'نْيُومْبَ', 'nyūmba');
INSERT INTO maisha_mume_words VALUES (622, 52, 'c', 2, 'نَفَاسِ', 'nafāsi', 'nafasi', '', '', '', '', '', '', 'nafāsi', 'نَفَاسِ', 'nafāsi');
INSERT INTO maisha_mume_words VALUES (623, 52, 'c', 3, 'إِيكٗ', 'ı̄ko', 'iko', '', '', '', '', '', '', 'ı̄ko', 'إِيكٗ', 'ı̄ko');
INSERT INTO maisha_mume_words VALUES (624, 52, 'd', 1, 'سِبَانٖ', 'sibāne', 'sibane', '', '', '', '', '', '', 'sibāne', 'سِبَانٖ', 'sibāne');
INSERT INTO maisha_mume_words VALUES (625, 52, 'd', 2, 'أُكَزِوِيَ', 'ukaziwiya', 'ukaziwiya', '', '', '', '', '', '', 'ukaziwiya', 'أُكَزِوِيَ', 'ukaziwiya');
INSERT INTO maisha_mume_words VALUES (640, 54, 'a', 2, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (633, 53, 'c', 1, 'فٖشٖينِ', 'feshēni', 'fesheni', '', '', '', '', '', '', 'feshēni', 'فٖشٖينِ', 'feshēni');
INSERT INTO maisha_mume_words VALUES (634, 53, 'c', 2, 'أَمْبَازٗ', 'ambāzo', 'ambazo', '', '', '', '', '', '', 'ambāzo', 'أَمْبَازٗ', 'ambāzo');
INSERT INTO maisha_mume_words VALUES (635, 53, 'c', 3, 'كْوَامْبَ', 'kwāmba', 'kwamba', '', '', '', '', '', '', 'kwāmba', 'كْوَامْبَ', 'kwāmba');
INSERT INTO maisha_mume_words VALUES (632, 53, 'b', 4, 'كُئِپَامْبَ', 'kuipāmba', 'kuipamba', '', '', '', '', '', '', 'kuipāmba', 'كُئِپَامْبَ', 'kuipāmba');
INSERT INTO maisha_mume_words VALUES (641, 54, 'a', 3, 'كِيتُ', 'kı̄ṯu', 'kitu', '', '', '', '', '', '', 'kı̄ṯu', 'كِيتُ', 'kı̄ṯu');
INSERT INTO maisha_mume_words VALUES (643, 54, 'b', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (636, 53, 'd', 1, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (637, 53, 'd', 2, 'يٖيٖ', 'yeye', 'yeye', '', '', '', '', '', '', 'yeye', 'يٖيٖ', 'yeye');
INSERT INTO maisha_mume_words VALUES (638, 53, 'd', 3, 'هُتُمِيَ', 'huṯumiya', 'hutumiya', '', '', '', '', '', '', 'huṯumiya', 'هُتُمِيَ', 'huṯumiya');
INSERT INTO maisha_mume_words VALUES (639, 54, 'a', 1, 'مْتِلِيٖ', 'mṯiliye', 'mtiliye', '', '', '', '', '', '', 'mṯiliye', 'مْتِلِيٖ', 'mṯiliye');
INSERT INTO maisha_mume_words VALUES (644, 54, 'b', 3, 'وٖينْدٖ', 'wēnḏe', 'wende', '', '', '', '', '', '', 'wēnḏe', 'وٖينْدٖ', 'wēnḏe');
INSERT INTO maisha_mume_words VALUES (645, 54, 'b', 4, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (647, 54, 'c', 2, 'مِيمِ', 'mı̄mi', 'mimi', '', '', '', '', '', '', 'mı̄mi', 'مِيمِ', 'mı̄mi');
INSERT INTO maisha_mume_words VALUES (642, 54, 'b', 1, 'أَاوٖ', 'āwe', 'awe', '', '', '', '', '', '', 'āwe', 'أَاوٖ', 'āwe');
INSERT INTO maisha_mume_words VALUES (790, 67, 'a', 3, 'ڠَانِ', 'gāni', 'gani', '', '', '', '', '', '', 'gāni', 'ڠَانِ', 'gāni');
INSERT INTO maisha_mume_words VALUES (648, 54, 'c', 3, 'كْوٖيتُ', 'kwēṯu', 'kwetu', '', '', '', '', '', '', 'kwēṯu', 'كْوٖيتُ', 'kwēṯu');
INSERT INTO maisha_mume_words VALUES (646, 54, 'c', 1, 'سِمْوَمْبِيٖ', 'simwambiye', 'simwambiye', '', '', '', '', '', '', 'simwambiye', 'سِمْوَمْبِيٖ', 'simwambiye');
INSERT INTO maisha_mume_words VALUES (650, 54, 'd', 2, 'سِكُيَزٗوٖيَ', 'sikuyazoweya', 'sikuyazoweya', '', '', '', '', '', '', 'sikuyazoweya', 'سِكُيَزٗوٖيَ', 'sikuyazoweya');
INSERT INTO maisha_mume_words VALUES (709, 60, 'c', 2, 'مْتٖئٖ', 'mṯee', 'mtee', '', '', '', '', '', '', 'mṯee', 'مْتٖئٖ', 'mṯee');
INSERT INTO maisha_mume_words VALUES (678, 57, 'c', 1, 'كْوٖينُ', 'kwēnu', 'kwenu', '', '', '', '', '', '', 'kwēnu', 'كْوٖينُ', 'kwēnu');
INSERT INTO maisha_mume_words VALUES (679, 57, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (651, 55, 'a', 1, 'أَكِيوَ', 'akı̄wa', 'akiwa', '', '', '', '', '', '', 'akı̄wa', 'أَكِيوَ', 'akı̄wa');
INSERT INTO maisha_mume_words VALUES (652, 55, 'a', 2, 'مْبوَ', 'mbwa', 'mbwa', '', '', '', '', '', '', 'mbwa', 'مْبوَ', 'mbwa');
INSERT INTO maisha_mume_words VALUES (653, 55, 'a', 3, 'مِنَزِينِ', 'minazı̄ni', 'minazini', '', '', '', '', '', '', 'minazı̄ni', 'مِنَزِينِ', 'minazı̄ni');
INSERT INTO maisha_mume_words VALUES (680, 57, 'c', 3, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (681, 57, 'c', 4, 'كِزِيزِ', 'kizı̄zi', 'kizizi', '', '', '', '', '', '', 'kizı̄zi', 'كِزِيزِ', 'kizı̄zi');
INSERT INTO maisha_mume_words VALUES (654, 55, 'b', 1, 'أُكِمُئٖيتَ', 'ukimuēṯa', 'ukimueta', '', '', '', '', '', '', 'ukimuēṯa', 'أُكِمُئٖيتَ', 'ukimuēṯa');
INSERT INTO maisha_mume_words VALUES (655, 55, 'b', 2, 'مُيِينِ', 'muyı̄ni', 'muyini', '', '', '', '', '', '', 'muyı̄ni', 'مُيِينِ', 'muyı̄ni');
INSERT INTO maisha_mume_words VALUES (656, 55, 'c', 1, 'سِمُوَاتٖ', 'simuwāṯe', 'simuwate', '', '', '', '', '', '', 'simuwāṯe', 'سِمُوَاتٖ', 'simuwāṯe');
INSERT INTO maisha_mume_words VALUES (657, 55, 'c', 2, 'كُتَمَانِ', 'kuṯamāni', 'kutamani', '', '', '', '', '', '', 'kuṯamāni', 'كُتَمَانِ', 'kuṯamāni');
INSERT INTO maisha_mume_words VALUES (710, 60, 'c', 3, 'لَزِيمَ', 'lazı̄ma', 'lazima', '', '', '', '', '', '', 'lazı̄ma', 'لَزِيمَ', 'lazı̄ma');
INSERT INTO maisha_mume_words VALUES (698, 59, 'c', 1, 'مَأَدَامُ', 'maaḏāmu', 'maadamu', '', '', '', '', '', '', 'maaḏāmu', 'مَأَدَامُ', 'maaḏāmu');
INSERT INTO maisha_mume_words VALUES (682, 57, 'd', 1, 'هُكُؤٗونَ', 'hukuōna', 'hukuona', '', '', '', '', '', '', 'hukuōna', 'هُكُؤٗونَ', 'hukuōna');
INSERT INTO maisha_mume_words VALUES (658, 55, 'd', 1, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (659, 55, 'd', 2, 'وٖينْدٖ', 'wēnḏe', 'wende', '', '', '', '', '', '', 'wēnḏe', 'وٖينْدٖ', 'wēnḏe');
INSERT INTO maisha_mume_words VALUES (660, 55, 'd', 3, 'كِشُهُدِيَ', 'kishuhuḏiya', 'kishuhudiya', '', '', '', '', '', '', 'kishuhuḏiya', 'كِشُهُدِيَ', 'kishuhuḏiya');
INSERT INTO maisha_mume_words VALUES (683, 57, 'd', 2, 'مَزُلِيَ', 'mazuliya', 'mazuliya', '', '', '', '', '', '', 'mazuliya', 'مَزُلِيَ', 'mazuliya');
INSERT INTO maisha_mume_words VALUES (661, 56, 'a', 1, 'أُكِيوَ', 'ukı̄wa', 'ukiwa', '', '', '', '', '', '', 'ukı̄wa', 'أُكِيوَ', 'ukı̄wa');
INSERT INTO maisha_mume_words VALUES (662, 56, 'a', 2, 'أُمٖئَمُوَ', 'umeamuwa', 'umeamuwa', '', '', '', '', '', '', 'umeamuwa', 'أُمٖئَمُوَ', 'umeamuwa');
INSERT INTO maisha_mume_words VALUES (663, 56, 'b', 1, 'مُيِينِ', 'muyı̄ni', 'muyini', '', '', '', '', '', '', 'muyı̄ni', 'مُيِينِ', 'muyı̄ni');
INSERT INTO maisha_mume_words VALUES (664, 56, 'b', 2, 'كُمْتُكُوَ', 'kumṯukuwa', 'kumtukuwa', '', '', '', '', '', '', 'kumṯukuwa', 'كُمْتُكُوَ', 'kumṯukuwa');
INSERT INTO maisha_mume_words VALUES (699, 59, 'c', 2, 'مْفُكٗونِ', 'mfukōni', 'mfukoni', '', '', '', '', '', '', 'mfukōni', 'مْفُكٗونِ', 'mfukōni');
INSERT INTO maisha_mume_words VALUES (665, 56, 'c', 1, 'مْفَنْيِئٖ', 'mfanyie', 'mfanyie', '', '', '', '', '', '', 'mfanyie', 'مْفَنْيِئٖ', 'mfanyie');
INSERT INTO maisha_mume_words VALUES (666, 56, 'c', 2, 'سَوَسَاوَ', 'sawasāwa', 'sawasawa', '', '', '', '', '', '', 'sawasāwa', 'سَوَسَاوَ', 'sawasāwa');
INSERT INTO maisha_mume_words VALUES (684, 58, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (685, 58, 'a', 2, 'چَكُولَ', 'chakūla', 'chakula', '', '', '', '', '', '', 'chakūla', 'چَكُولَ', 'chakūla');
INSERT INTO maisha_mume_words VALUES (745, 63, 'c', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (686, 58, 'a', 3, 'كَذَلِيكَ', 'kadhalı̄ka', 'kadhalika', '', '', '', '', '', '', 'kadhalı̄ka', 'كَذَلِيكَ', 'kadhalı̄ka');
INSERT INTO maisha_mume_words VALUES (667, 56, 'd', 1, 'سَامْبٖ', 'sāmbe', 'sambe', '', '', '', '', '', '', 'sāmbe', 'سَامْبٖ', 'sāmbe');
INSERT INTO maisha_mume_words VALUES (668, 56, 'd', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (669, 56, 'd', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (670, 56, 'd', 4, 'كْوٖينُ', 'kwēnu', 'kwenu', '', '', '', '', '', '', 'kwēnu', 'كْوٖينُ', 'kwēnu');
INSERT INTO maisha_mume_words VALUES (671, 56, 'd', 5, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (672, 57, 'a', 1, 'سِمْوَمْبِيٖ', 'simwambiye', 'simwambiye', '', '', '', '', '', '', 'simwambiye', 'سِمْوَمْبِيٖ', 'simwambiye');
INSERT INTO maisha_mume_words VALUES (673, 57, 'a', 2, 'زِيتُ', 'zı̄ṯu', 'zitu', '', '', '', '', '', '', 'zı̄ṯu', 'زِيتُ', 'zı̄ṯu');
INSERT INTO maisha_mume_words VALUES (674, 57, 'a', 3, 'هِيزِ', 'hı̄zi', 'hizi', '', '', '', '', '', '', 'hı̄zi', 'هِيزِ', 'hı̄zi');
INSERT INTO maisha_mume_words VALUES (687, 58, 'b', 1, 'مْپٖ', 'mpe', 'mpe', '', '', '', '', '', '', 'mpe', 'مْپٖ', 'mpe');
INSERT INTO maisha_mume_words VALUES (688, 58, 'b', 2, 'أَنَچٗكِتَاكَ', 'anachokiṯāka', 'anachokitaka', '', '', '', '', '', '', 'anachokiṯāka', 'أَنَچٗكِتَاكَ', 'anachokiṯāka');
INSERT INTO maisha_mume_words VALUES (675, 57, 'b', 1, 'كْوٖينُ', 'kwēnu', 'kwenu', '', '', '', '', '', '', 'kwēnu', 'كْوٖينُ', 'kwēnu');
INSERT INTO maisha_mume_words VALUES (676, 57, 'b', 2, 'كُپَاتَ', 'kupāṯa', 'kupata', '', '', '', '', '', '', 'kupāṯa', 'كُپَاتَ', 'kupāṯa');
INSERT INTO maisha_mume_words VALUES (677, 57, 'b', 3, 'هُوٖيزِ', 'huwēzi', 'huwezi', '', '', '', '', '', '', 'huwēzi', 'هُوٖيزِ', 'huwēzi');
INSERT INTO maisha_mume_words VALUES (700, 59, 'd', 1, 'أَكِيبَ', 'akı̄ba', 'akiba', '', '', '', '', '', '', 'akı̄ba', 'أَكِيبَ', 'akı̄ba');
INSERT INTO maisha_mume_words VALUES (701, 59, 'd', 2, 'إِمٖسَلِيَ', 'imesaliya', 'imesaliya', '', '', '', '', '', '', 'imesaliya', 'إِمٖسَلِيَ', 'imesaliya');
INSERT INTO maisha_mume_words VALUES (689, 58, 'c', 1, 'أَمْبَاچٗ', 'ambācho', 'ambacho', '', '', '', '', '', '', 'ambācho', 'أَمْبَاچٗ', 'ambācho');
INSERT INTO maisha_mume_words VALUES (690, 58, 'c', 2, 'تَفُرَهِيكَ', 'ṯafurahı̄ka', 'tafurahika', '', '', '', '', '', '', 'ṯafurahı̄ka', 'تَفُرَهِيكَ', 'ṯafurahı̄ka');
INSERT INTO maisha_mume_words VALUES (728, 62, 'b', 2, 'سِكِيرِ', 'sikı̄ri', 'sikiri', '', '', '', '', '', '', 'sikı̄ri', 'سِكِيرِ', 'sikı̄ri');
INSERT INTO maisha_mume_words VALUES (691, 58, 'd', 1, 'مْوٖنْيٖيوٖ', 'mwenyēwe', 'mwenyewe', '', '', '', '', '', '', 'mwenyēwe', 'مْوٖنْيٖيوٖ', 'mwenyēwe');
INSERT INTO maisha_mume_words VALUES (692, 58, 'd', 2, 'مٖكِزٗوٖيَ', 'mekizoweya', 'mekizoweya', '', '', '', '', '', '', 'mekizoweya', 'مٖكِزٗوٖيَ', 'mekizoweya');
INSERT INTO maisha_mume_words VALUES (717, 61, 'b', 1, 'أَپٖنْدَاچٗ', 'apenḏācho', 'apendacho', '', '', '', '', '', '', 'apenḏācho', 'أَپٖنْدَاچٗ', 'apenḏācho');
INSERT INTO maisha_mume_words VALUES (702, 60, 'a', 1, 'سِيكُ', 'sı̄ku', 'siku', '', '', '', '', '', '', 'sı̄ku', 'سِيكُ', 'sı̄ku');
INSERT INTO maisha_mume_words VALUES (693, 59, 'a', 1, 'أَكِپٖينْدَ', 'akipēnḏa', 'akipenda', '', '', '', '', '', '', 'akipēnḏa', 'أَكِپٖينْدَ', 'akipēnḏa');
INSERT INTO maisha_mume_words VALUES (694, 59, 'a', 2, 'بِرِيَانِ', 'biriyāni', 'biriyani', '', '', '', '', '', '', 'biriyāni', 'بِرِيَانِ', 'biriyāni');
INSERT INTO maisha_mume_words VALUES (703, 60, 'a', 2, 'أَكِتَاكَ', 'akiṯāka', 'akitaka', '', '', '', '', '', '', 'akiṯāka', 'أَكِتَاكَ', 'akiṯāka');
INSERT INTO maisha_mume_words VALUES (704, 60, 'a', 3, 'سِيمَ', 'sı̄ma', 'sima', '', '', '', '', '', '', 'sı̄ma', 'سِيمَ', 'sı̄ma');
INSERT INTO maisha_mume_words VALUES (695, 59, 'b', 1, 'مْپٖ', 'mpe', 'mpe', '', '', '', '', '', '', 'mpe', 'مْپٖ', 'mpe');
INSERT INTO maisha_mume_words VALUES (696, 59, 'b', 2, 'مْوَانَ', 'mwāna', 'mwana', '', '', '', '', '', '', 'mwāna', 'مْوَانَ', 'mwāna');
INSERT INTO maisha_mume_words VALUES (697, 59, 'b', 3, 'سِمْخِينِ', 'simẖı̄ni', 'simhini', '', '', '', '', '', '', 'simẖı̄ni', 'سِمْخِينِ', 'simẖı̄ni');
INSERT INTO maisha_mume_words VALUES (718, 61, 'b', 2, 'أَخِتَارِ', 'aẖiṯāri', 'ahitari', '', '', '', '', '', '', 'aẖiṯāri', 'أَخِتَارِ', 'aẖiṯāri');
INSERT INTO maisha_mume_words VALUES (711, 60, 'd', 1, 'مِيمِ', 'mı̄mi', 'mimi', '', '', '', '', '', '', 'mı̄mi', 'مِيمِ', 'mı̄mi');
INSERT INTO maisha_mume_words VALUES (712, 60, 'd', 2, 'سِتَاكِ', 'siṯāki', 'sitaki', '', '', '', '', '', '', 'siṯāki', 'سِتَاكِ', 'siṯāki');
INSERT INTO maisha_mume_words VALUES (705, 60, 'b', 1, 'سِمْوَمْبِيٖ', 'simwambiye', 'simwambiye', '', '', '', '', '', '', 'simwambiye', 'سِمْوَمْبِيٖ', 'simwambiye');
INSERT INTO maisha_mume_words VALUES (706, 60, 'b', 2, 'إٖيوٖ', 'ēwe', 'ewe', '', '', '', '', '', '', 'ēwe', 'إٖيوٖ', 'ēwe');
INSERT INTO maisha_mume_words VALUES (707, 60, 'b', 3, 'مَامَ', 'māma', 'mama', '', '', '', '', '', '', 'māma', 'مَامَ', 'māma');
INSERT INTO maisha_mume_words VALUES (713, 60, 'd', 3, 'أُذِيَ', 'udhiya', 'udhiya', '', '', '', '', '', '', 'udhiya', 'أُذِيَ', 'udhiya');
INSERT INTO maisha_mume_words VALUES (708, 60, 'c', 1, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (729, 62, 'b', 3, 'فَهَامُ', 'fahāmu', 'fahamu', '', '', '', '', '', '', 'fahāmu', 'فَهَامُ', 'fahāmu');
INSERT INTO maisha_mume_words VALUES (722, 61, 'd', 1, 'مَشَرُوتِ', 'masharūṯi', 'masharuti', '', '', '', '', '', '', 'masharūṯi', 'مَشَرُوتِ', 'masharūṯi');
INSERT INTO maisha_mume_words VALUES (714, 61, 'a', 1, 'مُؤَتِيَ', 'muaṯiya', 'muatiya', '', '', '', '', '', '', 'muaṯiya', 'مُؤَتِيَ', 'muaṯiya');
INSERT INTO maisha_mume_words VALUES (715, 61, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (883, 75, 'c', 1, 'هِينِ', 'hı̄ni', 'hini', '', '', '', '', '', '', 'hı̄ni', 'هِينِ', 'hı̄ni');
INSERT INTO maisha_mume_words VALUES (716, 61, 'a', 3, 'خِيَارِ', 'ẖiyāri', 'hiyari', '', '', '', '', '', '', 'ẖiyāri', 'خِيَارِ', 'ẖiyāri');
INSERT INTO maisha_mume_words VALUES (723, 61, 'd', 2, 'كُمْوٖكٖيَ', 'kumwekeya', 'kumwekeya', '', '', '', '', '', '', 'kumwekeya', 'كُمْوٖكٖيَ', 'kumwekeya');
INSERT INTO maisha_mume_words VALUES (719, 61, 'c', 1, 'سِمْكَازٖ', 'simkāze', 'simkaze', '', '', '', '', '', '', 'simkāze', 'سِمْكَازٖ', 'simkāze');
INSERT INTO maisha_mume_words VALUES (720, 61, 'c', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (721, 61, 'c', 3, 'أُزُورِ', 'uzūri', 'uzuri', '', '', '', '', '', '', 'uzūri', 'أُزُورِ', 'uzūri');
INSERT INTO maisha_mume_words VALUES (731, 62, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (724, 62, 'a', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (725, 62, 'a', 2, 'كِلِيچٗ', 'kilı̄cho', 'kilicho', '', '', '', '', '', '', 'kilı̄cho', 'كِلِيچٗ', 'kilı̄cho');
INSERT INTO maisha_mume_words VALUES (726, 62, 'a', 3, 'هَرَامُ', 'harāmu', 'haramu', '', '', '', '', '', '', 'harāmu', 'هَرَامُ', 'harāmu');
INSERT INTO maisha_mume_words VALUES (727, 62, 'b', 1, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (732, 62, 'c', 3, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (733, 62, 'c', 4, 'سُومُ', 'sūmu', 'sumu', '', '', '', '', '', '', 'sūmu', 'سُومُ', 'sūmu');
INSERT INTO maisha_mume_words VALUES (735, 62, 'd', 2, 'إِمٖزِوِيَ', 'imeziwiya', 'imeziwiya', '', '', '', '', '', '', 'imeziwiya', 'إِمٖزِوِيَ', 'imeziwiya');
INSERT INTO maisha_mume_words VALUES (730, 62, 'c', 1, 'هَرَامُ', 'harāmu', 'haramu', '', '', '', '', '', '', 'harāmu', 'هَرَامُ', 'harāmu');
INSERT INTO maisha_mume_words VALUES (737, 63, 'a', 2, 'كُهُوسُ', 'kuhūsu', 'kuhusu', '', '', '', '', '', '', 'kuhūsu', 'كُهُوسُ', 'kuhūsu');
INSERT INTO maisha_mume_words VALUES (734, 62, 'd', 1, 'شَرِيَ', 'shariya', 'shariya', '', '', '', '', '', '', 'shariya', 'شَرِيَ', 'shariya');
INSERT INTO maisha_mume_words VALUES (738, 63, 'a', 3, 'مَڤَازِ', 'mavāzi', 'mavazi', '', '', '', '', '', '', 'mavāzi', 'مَڤَازِ', 'mavāzi');
INSERT INTO maisha_mume_words VALUES (736, 63, 'a', 1, 'أَامَ', 'āma', 'ama', '', '', '', '', '', '', 'āma', 'أَامَ', 'āma');
INSERT INTO maisha_mume_words VALUES (770, 65, 'c', 1, 'لَاكٗ', 'lāko', 'lako', '', '', '', '', '', '', 'lāko', 'لَاكٗ', 'lāko');
INSERT INTO maisha_mume_words VALUES (771, 65, 'c', 2, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (739, 63, 'b', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (740, 63, 'b', 2, 'كَايٖ', 'kāye', 'kaye', '', '', '', '', '', '', 'kāye', 'كَايٖ', 'kāye');
INSERT INTO maisha_mume_words VALUES (741, 63, 'b', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (742, 63, 'b', 4, 'سِيكُ', 'sı̄ku', 'siku', '', '', '', '', '', '', 'sı̄ku', 'سِيكُ', 'sı̄ku');
INSERT INTO maisha_mume_words VALUES (743, 63, 'b', 5, 'هِيزِ', 'hı̄zi', 'hizi', '', '', '', '', '', '', 'hı̄zi', 'هِيزِ', 'hı̄zi');
INSERT INTO maisha_mume_words VALUES (772, 65, 'c', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (773, 65, 'c', 4, 'فُلُوسِ', 'fulūsi', 'fulusi', '', '', '', '', '', '', 'fulūsi', 'فُلُوسِ', 'fulūsi');
INSERT INTO maisha_mume_words VALUES (744, 63, 'c', 1, 'سِكِيرِ', 'sikı̄ri', 'sikiri', '', '', '', '', '', '', 'sikı̄ri', 'سِكِيرِ', 'sikı̄ri');
INSERT INTO maisha_mume_words VALUES (746, 63, 'c', 3, 'كْوٖينْدَ', 'kwēnḏa', 'kwenda', '', '', '', '', '', '', 'kwēnḏa', 'كْوٖينْدَ', 'kwēnḏa');
INSERT INTO maisha_mume_words VALUES (747, 63, 'c', 4, 'وَازِ', 'wāzi', 'wazi', '', '', '', '', '', '', 'wāzi', 'وَازِ', 'wāzi');
INSERT INTO maisha_mume_words VALUES (791, 67, 'b', 1, 'كِكُؤُلِيزَ', 'kikuulı̄za', 'kikuuliza', '', '', '', '', '', '', 'kikuulı̄za', 'كِكُؤُلِيزَ', 'kikuulı̄za');
INSERT INTO maisha_mume_words VALUES (792, 67, 'b', 2, 'مْوٖنْدَانِ', 'mwenḏāni', 'mwendani', '', '', '', '', '', '', 'mwenḏāni', 'مْوٖنْدَانِ', 'mwenḏāni');
INSERT INTO maisha_mume_words VALUES (748, 63, 'd', 1, 'مِشٗونٗ', 'mishōno', 'mishono', '', '', '', '', '', '', 'mishōno', 'مِشٗونٗ', 'mishōno');
INSERT INTO maisha_mume_words VALUES (749, 63, 'd', 2, 'يَاسٗ', 'yāso', 'yaso', '', '', '', '', '', '', 'yāso', 'يَاسٗ', 'yāso');
INSERT INTO maisha_mume_words VALUES (750, 63, 'd', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (751, 63, 'd', 4, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (774, 65, 'd', 1, 'تٗوَ', 'ṯowa', 'towa', '', '', '', '', '', '', 'ṯowa', 'تٗوَ', 'ṯowa');
INSERT INTO maisha_mume_words VALUES (775, 65, 'd', 2, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (776, 65, 'd', 3, 'كُنُنُلِيَ', 'kununuliya', 'kununuliya', '', '', '', '', '', '', 'kununuliya', 'كُنُنُلِيَ', 'kununuliya');
INSERT INTO maisha_mume_words VALUES (752, 64, 'a', 1, 'كْوٖيتُ', 'kwēṯu', 'kwetu', '', '', '', '', '', '', 'kwēṯu', 'كْوٖيتُ', 'kwēṯu');
INSERT INTO maisha_mume_words VALUES (753, 64, 'a', 2, 'سِيسِ', 'sı̄si', 'sisi', '', '', '', '', '', '', 'sı̄si', 'سِيسِ', 'sı̄si');
INSERT INTO maisha_mume_words VALUES (754, 64, 'a', 3, 'إِسِلَامُ', 'isilāmu', 'isilamu', '', '', '', '', '', '', 'isilāmu', 'إِسِلَامُ', 'isilāmu');
INSERT INTO maisha_mume_words VALUES (755, 64, 'b', 1, 'مَڤَازِ', 'mavāzi', 'mavazi', '', '', '', '', '', '', 'mavāzi', 'مَڤَازِ', 'mavāzi');
INSERT INTO maisha_mume_words VALUES (756, 64, 'b', 2, 'كِيتُ', 'kı̄ṯu', 'kitu', '', '', '', '', '', '', 'kı̄ṯu', 'كِيتُ', 'kı̄ṯu');
INSERT INTO maisha_mume_words VALUES (757, 64, 'b', 3, 'مُهِيمُ', 'muhı̄mu', 'muhimu', '', '', '', '', '', '', 'muhı̄mu', 'مُهِيمُ', 'muhı̄mu');
INSERT INTO maisha_mume_words VALUES (758, 64, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (759, 64, 'c', 2, 'سِيسِ', 'sı̄si', 'sisi', '', '', '', '', '', '', 'sı̄si', 'سِيسِ', 'sı̄si');
INSERT INTO maisha_mume_words VALUES (760, 64, 'c', 3, 'يَتُلَزِيمُ', 'yaṯulazı̄mu', 'yatulazimu', '', '', '', '', '', '', 'yaṯulazı̄mu', 'يَتُلَزِيمُ', 'yaṯulazı̄mu');
INSERT INTO maisha_mume_words VALUES (777, 66, 'a', 1, 'مْپٖ', 'mpe', 'mpe', '', '', '', '', '', '', 'mpe', 'مْپٖ', 'mpe');
INSERT INTO maisha_mume_words VALUES (778, 66, 'a', 2, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (779, 66, 'a', 3, 'مَشَرُوتِ', 'masharūṯi', 'masharuti', '', '', '', '', '', '', 'masharūṯi', 'مَشَرُوتِ', 'masharūṯi');
INSERT INTO maisha_mume_words VALUES (761, 64, 'd', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (762, 64, 'd', 2, 'زِپِيمٗ', 'zipı̄mo', 'zipimo', '', '', '', '', '', '', 'zipı̄mo', 'زِپِيمٗ', 'zipı̄mo');
INSERT INTO maisha_mume_words VALUES (763, 64, 'd', 3, 'كْوَنْڠَلِيَ', 'kwangaliya', 'kwangaliya', '', '', '', '', '', '', 'kwangaliya', 'كْوَنْڠَلِيَ', 'kwangaliya');
INSERT INTO maisha_mume_words VALUES (764, 65, 'a', 1, 'مْپٖ', 'mpe', 'mpe', '', '', '', '', '', '', 'mpe', 'مْپٖ', 'mpe');
INSERT INTO maisha_mume_words VALUES (765, 65, 'a', 2, 'مْوٖنْيٖيوٖ', 'mwenyēwe', 'mwenyewe', '', '', '', '', '', '', 'mwenyēwe', 'مْوٖنْيٖيوٖ', 'mwenyēwe');
INSERT INTO maisha_mume_words VALUES (766, 65, 'a', 3, 'نَفَاسِ', 'nafāsi', 'nafasi', '', '', '', '', '', '', 'nafāsi', 'نَفَاسِ', 'nafāsi');
INSERT INTO maisha_mume_words VALUES (767, 65, 'b', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (768, 65, 'b', 2, 'كُتٖؤُوَ', 'kuṯeuwa', 'kuteuwa', '', '', '', '', '', '', 'kuṯeuwa', 'كُتٖؤُوَ', 'kuṯeuwa');
INSERT INTO maisha_mume_words VALUES (769, 65, 'b', 3, 'لِبَاسِ', 'libāsi', 'libasi', '', '', '', '', '', '', 'libāsi', 'لِبَاسِ', 'libāsi');
INSERT INTO maisha_mume_words VALUES (821, 70, 'a', 2, 'أُتَكَچٗپٖينْدَ', 'uṯakachopēnḏa', 'utakachopenda', '', '', '', '', '', '', 'uṯakachopēnḏa', 'أُتَكَچٗپٖينْدَ', 'uṯakachopēnḏa');
INSERT INTO maisha_mume_words VALUES (809, 69, 'a', 1, 'أَامَ', 'āma', 'ama', '', '', '', '', '', '', 'āma', 'أَامَ', 'āma');
INSERT INTO maisha_mume_words VALUES (793, 67, 'c', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (780, 66, 'b', 1, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (781, 66, 'b', 2, 'مْشٗونٗ', 'mshōno', 'mshono', '', '', '', '', '', '', 'mshōno', 'مْشٗونٗ', 'mshōno');
INSERT INTO maisha_mume_words VALUES (782, 66, 'b', 3, 'كُذِبِيتِ', 'kudhibı̄ṯi', 'kudhibiti', '', '', '', '', '', '', 'kudhibı̄ṯi', 'كُذِبِيتِ', 'kudhibı̄ṯi');
INSERT INTO maisha_mume_words VALUES (794, 67, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (795, 67, 'c', 3, 'إِيپِ', 'ı̄pi', 'ipi', '', '', '', '', '', '', 'ı̄pi', 'إِيپِ', 'ı̄pi');
INSERT INTO maisha_mume_words VALUES (783, 66, 'c', 1, 'أَكِخَلِيفُ', 'akiẖalı̄fu', 'akihalifu', '', '', '', '', '', '', 'akiẖalı̄fu', 'أَكِخَلِيفُ', 'akiẖalı̄fu');
INSERT INTO maisha_mume_words VALUES (784, 66, 'c', 2, 'مٖهِيتِ', 'mehı̄ṯi', 'mehiti', '', '', '', '', '', '', 'mehı̄ṯi', 'مٖهِيتِ', 'mehı̄ṯi');
INSERT INTO maisha_mume_words VALUES (796, 67, 'c', 4, 'لَؤُونِ', 'laūni', 'launi', '', '', '', '', '', '', 'laūni', 'لَؤُونِ', 'laūni');
INSERT INTO maisha_mume_words VALUES (785, 66, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (786, 66, 'd', 2, 'هَاكِ', 'hāki', 'haki', '', '', '', '', '', '', 'hāki', 'هَاكِ', 'hāki');
INSERT INTO maisha_mume_words VALUES (787, 66, 'd', 3, 'كُمزِوِيَ', 'kumziwiya', 'kumziwiya', '', '', '', '', '', '', 'kumziwiya', 'كُمزِوِيَ', 'kumziwiya');
INSERT INTO maisha_mume_words VALUES (810, 69, 'a', 2, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (804, 68, 'c', 1, 'رَانْڠِ', 'rāngi', 'rangi', '', '', '', '', '', '', 'rāngi', 'رَانْڠِ', 'rāngi');
INSERT INTO maisha_mume_words VALUES (797, 67, 'd', 1, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (788, 67, 'a', 1, 'أَامَ', 'āma', 'ama', '', '', '', '', '', '', 'āma', 'أَامَ', 'āma');
INSERT INTO maisha_mume_words VALUES (789, 67, 'a', 2, 'كِتَمْبَاءَ', 'kiṯambāa', 'kitambaa', '', '', '', '', '', '', 'kiṯambāa', 'كِتَمْبَاءَ', 'kiṯambāa');
INSERT INTO maisha_mume_words VALUES (798, 67, 'd', 2, 'وَئِفُرَهِيَ', 'waifurahiya', 'waifurahiya', '', '', '', '', '', '', 'waifurahiya', 'وَئِفُرَهِيَ', 'waifurahiya');
INSERT INTO maisha_mume_words VALUES (805, 68, 'c', 2, 'هِينِ', 'hı̄ni', 'hini', '', '', '', '', '', '', 'hı̄ni', 'هِينِ', 'hı̄ni');
INSERT INTO maisha_mume_words VALUES (806, 68, 'c', 3, 'نَئِٗونَ', 'naiōna', 'naiona', '', '', '', '', '', '', 'naiōna', 'نَئِٗونَ', 'naiōna');
INSERT INTO maisha_mume_words VALUES (799, 68, 'a', 1, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (800, 68, 'a', 2, 'مَكٗوسَ', 'makōsa', 'makosa', '', '', '', '', '', '', 'makōsa', 'مَكٗوسَ', 'makōsa');
INSERT INTO maisha_mume_words VALUES (801, 68, 'a', 3, 'هَپَانَ', 'hapāna', 'hapana', '', '', '', '', '', '', 'hapāna', 'هَپَانَ', 'hapāna');
INSERT INTO maisha_mume_words VALUES (802, 68, 'b', 1, 'كِكُؤُلِيزَ', 'kikuulı̄za', 'kikuuliza', '', '', '', '', '', '', 'kikuulı̄za', 'كِكُؤُلِيزَ', 'kikuulı̄za');
INSERT INTO maisha_mume_words VALUES (812, 69, 'a', 4, 'تَمَاشَ', 'ṯamāsha', 'tamasha', '', '', '', '', '', '', 'ṯamāsha', 'تَمَاشَ', 'ṯamāsha');
INSERT INTO maisha_mume_words VALUES (807, 68, 'd', 1, 'مَتٗونِ', 'maṯōni', 'matoni', '', '', '', '', '', '', 'maṯōni', 'مَتٗونِ', 'maṯōni');
INSERT INTO maisha_mume_words VALUES (808, 68, 'd', 2, 'إِمٖنِنْڠِيَ', 'imeningiya', 'imeningiya', '', '', '', '', '', '', 'imeningiya', 'إِمٖنِنْڠِيَ', 'imeningiya');
INSERT INTO maisha_mume_words VALUES (823, 70, 'b', 2, 'نْيٗونْدَ', 'nyōnḏa', 'nyonda', '', '', '', '', '', '', 'nyōnḏa', 'نْيٗونْدَ', 'nyōnḏa');
INSERT INTO maisha_mume_words VALUES (818, 69, 'd', 1, 'مَؤٗنِيٖ', 'maoniye', 'maoniye', '', '', '', '', '', '', 'maoniye', 'مَؤٗنِيٖ', 'maoniye');
INSERT INTO maisha_mume_words VALUES (815, 69, 'c', 1, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (816, 69, 'c', 2, 'هَاجَ', 'hāja', 'haja', '', '', '', '', '', '', 'hāja', 'هَاجَ', 'hāja');
INSERT INTO maisha_mume_words VALUES (817, 69, 'c', 3, 'كُمُؤٗنٖيشَ', 'kumuonēsha', 'kumuonesha', '', '', '', '', '', '', 'kumuonēsha', 'كُمُؤٗنٖيشَ', 'kumuonēsha');
INSERT INTO maisha_mume_words VALUES (813, 69, 'b', 1, 'وَتَاكَ', 'waṯāka', 'wataka', '', '', '', '', '', '', 'waṯāka', 'وَتَاكَ', 'waṯāka');
INSERT INTO maisha_mume_words VALUES (814, 69, 'b', 2, 'مْفُرَهِيشَ', 'mfurahı̄sha', 'mfurahisha', '', '', '', '', '', '', 'mfurahı̄sha', 'مْفُرَهِيشَ', 'mfurahı̄sha');
INSERT INTO maisha_mume_words VALUES (819, 69, 'd', 2, 'كْوَنْڠَلِيَ', 'kwangaliya', 'kwangaliya', '', '', '', '', '', '', 'kwangaliya', 'كْوَنْڠَلِيَ', 'kwangaliya');
INSERT INTO maisha_mume_words VALUES (820, 70, 'a', 1, 'كَاتَ', 'kāṯa', 'kata', '', '', '', '', '', '', 'kāṯa', 'كَاتَ', 'kāṯa');
INSERT INTO maisha_mume_words VALUES (825, 70, 'c', 2, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (822, 70, 'b', 1, 'أُمْتُنُكِيٖ', 'umṯunukiye', 'umtunukiye', '', '', '', '', '', '', 'umṯunukiye', 'أُمْتُنُكِيٖ', 'umṯunukiye');
INSERT INTO maisha_mume_words VALUES (826, 70, 'c', 3, 'أُكِتٖينْدَ', 'ukiṯēnḏa', 'ukitenda', '', '', '', '', '', '', 'ukiṯēnḏa', 'أُكِتٖينْدَ', 'ukiṯēnḏa');
INSERT INTO maisha_mume_words VALUES (828, 70, 'd', 2, 'تَكٗنْڠٗوٖيَ', 'ṯakongoweya', 'takongoweya', '', '', '', '', '', '', 'ṯakongoweya', 'تَكٗنْڠٗوٖيَ', 'ṯakongoweya');
INSERT INTO maisha_mume_words VALUES (824, 70, 'c', 1, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (830, 71, 'a', 2, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (827, 70, 'd', 1, 'چٗچٗوتٖ', 'chochōṯe', 'chochote', '', '', '', '', '', '', 'chochōṯe', 'چٗچٗوتٖ', 'chochōṯe');
INSERT INTO maisha_mume_words VALUES (829, 71, 'a', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (831, 71, 'a', 3, 'سِمْذِيكِ', 'simdhı̄ki', 'simdhiki', '', '', '', '', '', '', 'simdhı̄ki', 'سِمْذِيكِ', 'simdhı̄ki');
INSERT INTO maisha_mume_words VALUES (900, 77, 'a', 1, 'إِكِيوَ', 'ikı̄wa', 'ikiwa', '', '', '', '', '', '', 'ikı̄wa', 'إِكِيوَ', 'ikı̄wa');
INSERT INTO maisha_mume_words VALUES (861, 73, 'c', 1, 'بٗورَ', 'bōra', 'bora', '', '', '', '', '', '', 'bōra', 'بٗورَ', 'bōra');
INSERT INTO maisha_mume_words VALUES (862, 73, 'c', 2, 'أُسِڤُونْدٖ', 'usivūnḏe', 'usivunde', '', '', '', '', '', '', 'usivūnḏe', 'أُسِڤُونْدٖ', 'usivūnḏe');
INSERT INTO maisha_mume_words VALUES (832, 71, 'b', 1, 'سِمْوَمْبِيٖ', 'simwambiye', 'simwambiye', '', '', '', '', '', '', 'simwambiye', 'سِمْوَمْبِيٖ', 'simwambiye');
INSERT INTO maisha_mume_words VALUES (833, 71, 'b', 2, 'سِينَ', 'sı̄na', 'sina', '', '', '', '', '', '', 'sı̄na', 'سِينَ', 'sı̄na');
INSERT INTO maisha_mume_words VALUES (834, 71, 'b', 3, 'هِيكِ', 'hı̄ki', 'hiki', '', '', '', '', '', '', 'hı̄ki', 'هِيكِ', 'hı̄ki');
INSERT INTO maisha_mume_words VALUES (863, 73, 'c', 3, 'مِيكٗ', 'mı̄ko', 'miko', '', '', '', '', '', '', 'mı̄ko', 'مِيكٗ', 'mı̄ko');
INSERT INTO maisha_mume_words VALUES (901, 77, 'a', 2, 'وَفُرَهِيكَ', 'wafurahı̄ka', 'wafurahika', '', '', '', '', '', '', 'wafurahı̄ka', 'وَفُرَهِيكَ', 'wafurahı̄ka');
INSERT INTO maisha_mume_words VALUES (836, 71, 'c', 2, 'نْيِينْڠِ', 'nı̄ı̄ngi', 'nyingi', '', '', '', '', '', '', 'nı̄ı̄ngi', 'نْيِينْڠِ', 'nı̄ı̄ngi');
INSERT INTO maisha_mume_words VALUES (837, 71, 'c', 3, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (838, 71, 'c', 4, 'سِتَاكِ', 'siṯāki', 'sitaki', '', '', '', '', '', '', 'siṯāki', 'سِتَاكِ', 'siṯāki');
INSERT INTO maisha_mume_words VALUES (881, 75, 'b', 1, 'سِؤٗنٖكَانٖ', 'sionekāne', 'sionekane', '', '', '', '', '', '', 'sionekāne', 'سِؤٗنٖكَانٖ', 'sionekāne');
INSERT INTO maisha_mume_words VALUES (864, 73, 'd', 1, 'خَتِيَانِ', 'ẖaṯiyāni', 'hatiyani', '', '', '', '', '', '', 'ẖaṯiyāni', 'خَتِيَانِ', 'ẖaṯiyāni');
INSERT INTO maisha_mume_words VALUES (839, 71, 'd', 1, 'سِزٗوٖيٖ', 'sizoweye', 'sizoweye', '', '', '', '', '', '', 'sizoweye', 'سِزٗوٖيٖ', 'sizoweye');
INSERT INTO maisha_mume_words VALUES (840, 71, 'd', 2, 'كُتُمِيَ', 'kuṯumiya', 'kutumiya', '', '', '', '', '', '', 'kuṯumiya', 'كُتُمِيَ', 'kuṯumiya');
INSERT INTO maisha_mume_words VALUES (865, 73, 'd', 2, 'أُكَنْڠِيَ', 'ukangiya', 'ukangiya', '', '', '', '', '', '', 'ukangiya', 'أُكَنْڠِيَ', 'ukangiya');
INSERT INTO maisha_mume_words VALUES (841, 72, 'a', 1, 'مْپٖ', 'mpe', 'mpe', '', '', '', '', '', '', 'mpe', 'مْپٖ', 'mpe');
INSERT INTO maisha_mume_words VALUES (842, 72, 'a', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (843, 72, 'a', 3, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (844, 72, 'a', 4, 'كَدِيرِ', 'kaḏı̄ri', 'kadiri', '', '', '', '', '', '', 'kaḏı̄ri', 'كَدِيرِ', 'kaḏı̄ri');
INSERT INTO maisha_mume_words VALUES (882, 75, 'b', 2, 'مْچَافُ', 'mchāfu', 'mchafu', '', '', '', '', '', '', 'mchāfu', 'مْچَافُ', 'mchāfu');
INSERT INTO maisha_mume_words VALUES (845, 72, 'b', 1, 'أُسِفَانْيٖ', 'usifānye', 'usifanye', '', '', '', '', '', '', 'usifānye', 'أُسِفَانْيٖ', 'usifānye');
INSERT INTO maisha_mume_words VALUES (846, 72, 'b', 2, 'تَقتِيرِ', 'ṯaqṯı̄ri', 'taqtiri', '', '', '', '', '', '', 'ṯaqṯı̄ri', 'تَقتِيرِ', 'ṯaqṯı̄ri');
INSERT INTO maisha_mume_words VALUES (866, 74, 'a', 1, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (867, 74, 'a', 2, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (868, 74, 'a', 3, 'مَرِدَادِ', 'mariḏāḏi', 'maridadi', '', '', '', '', '', '', 'mariḏāḏi', 'مَرِدَادِ', 'mariḏāḏi');
INSERT INTO maisha_mume_words VALUES (847, 72, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (848, 72, 'c', 2, 'توَبِيَ', 'ṯwabiya', 'twabiya', '', '', '', '', '', '', 'ṯwabiya', 'توَبِيَ', 'ṯwabiya');
INSERT INTO maisha_mume_words VALUES (849, 72, 'c', 3, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (850, 72, 'c', 4, 'نْزُورِ', 'nzūri', 'nzuri', '', '', '', '', '', '', 'nzūri', 'نْزُورِ', 'nzūri');
INSERT INTO maisha_mume_words VALUES (851, 72, 'd', 1, 'أُبَخِيلِ', 'ubaẖı̄li', 'ubahili', '', '', '', '', '', '', 'ubaẖı̄li', 'أُبَخِيلِ', 'ubaẖı̄li');
INSERT INTO maisha_mume_words VALUES (852, 72, 'd', 2, 'كْوٖينْيٖ', 'kwēnye', 'kwenye', '', '', '', '', '', '', 'kwēnye', 'كْوٖينْيٖ', 'kwēnye');
INSERT INTO maisha_mume_words VALUES (853, 72, 'd', 3, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (894, 76, 'b', 1, 'زَنْڠَلِيٖ', 'zangaliye', 'zangaliye', '', '', '', '', '', '', 'zangaliye', 'زَنْڠَلِيٖ', 'zangaliye');
INSERT INTO maisha_mume_words VALUES (869, 74, 'b', 1, 'أُتُونْڠٖ', 'uṯūnge', 'utunge', '', '', '', '', '', '', 'uṯūnge', 'أُتُونْڠٖ', 'uṯūnge');
INSERT INTO maisha_mume_words VALUES (854, 73, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (855, 73, 'a', 2, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (856, 73, 'a', 3, 'أُپَانْدٖ', 'upānḏe', 'upande', '', '', '', '', '', '', 'upānḏe', 'أُپَانْدٖ', 'upānḏe');
INSERT INTO maisha_mume_words VALUES (857, 73, 'a', 4, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (870, 74, 'b', 2, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (871, 74, 'b', 3, 'جَسَادِ', 'jasāḏi', 'jasadi', '', '', '', '', '', '', 'jasāḏi', 'جَسَادِ', 'jasāḏi');
INSERT INTO maisha_mume_words VALUES (858, 73, 'b', 1, 'إِپَامْبٖ', 'ipāmbe', 'ipambe', '', '', '', '', '', '', 'ipāmbe', 'إِپَامْبٖ', 'ipāmbe');
INSERT INTO maisha_mume_words VALUES (859, 73, 'b', 2, 'كِيَاسِ', 'kiyāsi', 'kiyasi', '', '', '', '', '', '', 'kiyāsi', 'كِيَاسِ', 'kiyāsi');
INSERT INTO maisha_mume_words VALUES (860, 73, 'b', 3, 'چَاكٗ', 'chāko', 'chako', '', '', '', '', '', '', 'chāko', 'چَاكٗ', 'chāko');
INSERT INTO maisha_mume_words VALUES (895, 76, 'b', 2, 'كَذَلِيكَ', 'kadhalı̄ka', 'kadhalika', '', '', '', '', '', '', 'kadhalı̄ka', 'كَذَلِيكَ', 'kadhalı̄ka');
INSERT INTO maisha_mume_words VALUES (884, 75, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (872, 74, 'c', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (873, 74, 'c', 2, 'كُفُكِيزَ', 'kufukı̄za', 'kufukiza', '', '', '', '', '', '', 'kufukı̄za', 'كُفُكِيزَ', 'kufukı̄za');
INSERT INTO maisha_mume_words VALUES (874, 74, 'c', 3, 'أُودِ', 'ūḏi', 'udi', '', '', '', '', '', '', 'ūḏi', 'أُودِ', 'ūḏi');
INSERT INTO maisha_mume_words VALUES (885, 75, 'c', 3, 'سُوننَ', 'sūnna', 'sunna', '', '', '', '', '', '', 'sūnna', 'سُوننَ', 'sūnna');
INSERT INTO maisha_mume_words VALUES (886, 75, 'c', 4, 'تُكُوفُ', 'ṯukūfu', 'tukufu', '', '', '', '', '', '', 'ṯukūfu', 'تُكُوفُ', 'ṯukūfu');
INSERT INTO maisha_mume_words VALUES (875, 74, 'd', 1, 'أُكِوٖيزَ', 'ukiwēza', 'ukiweza', '', '', '', '', '', '', 'ukiwēza', 'أُكِوٖيزَ', 'ukiwēza');
INSERT INTO maisha_mume_words VALUES (876, 74, 'd', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (877, 74, 'd', 3, 'خَتِيَ', 'ẖaṯiya', 'hatiya', '', '', '', '', '', '', 'ẖaṯiya', 'خَتِيَ', 'ẖaṯiya');
INSERT INTO maisha_mume_words VALUES (878, 75, 'a', 1, 'إِوٖيكٖ', 'iwēke', 'iweke', '', '', '', '', '', '', 'iwēke', 'إِوٖيكٖ', 'iwēke');
INSERT INTO maisha_mume_words VALUES (879, 75, 'a', 2, 'أُوٖ', 'uwe', 'uwe', '', '', '', '', '', '', 'uwe', 'أُوٖ', 'uwe');
INSERT INTO maisha_mume_words VALUES (880, 75, 'a', 3, 'نَذِيفُ', 'nadhı̄fu', 'nadhifu', '', '', '', '', '', '', 'nadhı̄fu', 'نَذِيفُ', 'nadhı̄fu');
INSERT INTO maisha_mume_words VALUES (896, 76, 'c', 1, 'سِوَاتٖ', 'siwāṯe', 'siwate', '', '', '', '', '', '', 'siwāṯe', 'سِوَاتٖ', 'siwāṯe');
INSERT INTO maisha_mume_words VALUES (897, 76, 'c', 2, 'كُسٗكٗتٖيكَ', 'kusokoṯēka', 'kusokoteka', '', '', '', '', '', '', 'kusokoṯēka', 'كُسٗكٗتٖيكَ', 'kusokoṯēka');
INSERT INTO maisha_mume_words VALUES (887, 75, 'd', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (888, 75, 'd', 2, 'تُومْوَ', 'ṯūmwa', 'tumwa', '', '', '', '', '', '', 'ṯūmwa', 'تُومْوَ', 'ṯūmwa');
INSERT INTO maisha_mume_words VALUES (889, 75, 'd', 3, 'وٖيتُ', 'wēṯu', 'wetu', '', '', '', '', '', '', 'wēṯu', 'وٖيتُ', 'wēṯu');
INSERT INTO maisha_mume_words VALUES (890, 75, 'd', 4, 'نَبِيَ', 'nabiya', 'nabiya', '', '', '', '', '', '', 'nabiya', 'نَبِيَ', 'nabiya');
INSERT INTO maisha_mume_words VALUES (904, 77, 'c', 1, 'يُوَ', 'yuwa', 'yuwa', '', '', '', '', '', '', 'yuwa', 'يُوَ', 'yuwa');
INSERT INTO maisha_mume_words VALUES (891, 76, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (892, 76, 'a', 2, 'نْيٖئٖ', 'nyee', 'nyee', '', '', '', '', '', '', 'nyee', 'نْيٖئٖ', 'nyee');
INSERT INTO maisha_mume_words VALUES (893, 76, 'a', 3, 'أُمٖوٖيكَ', 'umewēka', 'umeweka', '', '', '', '', '', '', 'umewēka', 'أُمٖوٖيكَ', 'umewēka');
INSERT INTO maisha_mume_words VALUES (905, 77, 'c', 2, 'نَيٖيٖ', 'nayeye', 'nayeye', '', '', '', '', '', '', 'nayeye', 'نَيٖيٖ', 'nayeye');
INSERT INTO maisha_mume_words VALUES (898, 76, 'd', 1, 'شُنْڠُرُورُ', 'shungurūru', 'shungururu', '', '', '', '', '', '', 'shungurūru', 'شُنْڠُرُورُ', 'shungurūru');
INSERT INTO maisha_mume_words VALUES (899, 76, 'd', 2, 'كُسَلِيَ', 'kusaliya', 'kusaliya', '', '', '', '', '', '', 'kusaliya', 'كُسَلِيَ', 'kusaliya');
INSERT INTO maisha_mume_words VALUES (906, 77, 'c', 3, 'هُتَاكَ', 'huṯāka', 'hutaka', '', '', '', '', '', '', 'huṯāka', 'هُتَاكَ', 'huṯāka');
INSERT INTO maisha_mume_words VALUES (902, 77, 'b', 1, 'مْكٖؤٗ', 'mkeo', 'mkeo', '', '', '', '', '', '', 'mkeo', 'مْكٖؤٗ', 'mkeo');
INSERT INTO maisha_mume_words VALUES (903, 77, 'b', 2, 'أَكِپَمْبِيكَ', 'akipambı̄ka', 'akipambika', '', '', '', '', '', '', 'akipambı̄ka', 'أَكِپَمْبِيكَ', 'akipambı̄ka');
INSERT INTO maisha_mume_words VALUES (907, 77, 'd', 1, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (908, 77, 'd', 2, 'أُوٖ', 'uwe', 'uwe', '', '', '', '', '', '', 'uwe', 'أُوٖ', 'uwe');
INSERT INTO maisha_mume_words VALUES (909, 77, 'd', 3, 'هُڤُتِيَ', 'huvuṯiya', 'huvutiya', '', '', '', '', '', '', 'huvuṯiya', 'هُڤُتِيَ', 'huvuṯiya');
INSERT INTO maisha_mume_words VALUES (912, 78, 'a', 3, 'نْدَاكٖ', 'nḏāke', 'ndake', '', '', '', '', '', '', 'nḏāke', 'نْدَاكٖ', 'nḏāke');
INSERT INTO maisha_mume_words VALUES (913, 78, 'a', 4, 'هَاكِ', 'hāki', 'haki', '', '', '', '', '', '', 'hāki', 'هَاكِ', 'hāki');
INSERT INTO maisha_mume_words VALUES (915, 78, 'b', 2, 'هَفُرَهِيكِ', 'hafurahı̄ki', 'hafurahiki', '', '', '', '', '', '', 'hafurahı̄ki', 'هَفُرَهِيكِ', 'hafurahı̄ki');
INSERT INTO maisha_mume_words VALUES (910, 78, 'a', 1, 'هِيٗ', 'hiyo', 'hiyo', '', '', '', '', '', '', 'hiyo', 'هِيٗ', 'hiyo');
INSERT INTO maisha_mume_words VALUES (911, 78, 'a', 2, 'نَايٖ', 'nāye', 'naye', '', '', '', '', '', '', 'nāye', 'نَايٖ', 'nāye');
INSERT INTO maisha_mume_words VALUES (917, 78, 'c', 2, 'هُشُغُلِيكِ', 'hushuḡulı̄ki', 'hushughuliki', '', '', '', '', '', '', 'hushuḡulı̄ki', 'هُشُغُلِيكِ', 'hushuḡulı̄ki');
INSERT INTO maisha_mume_words VALUES (914, 78, 'b', 1, 'تَكُوَ', 'ṯakuwa', 'takuwa', '', '', '', '', '', '', 'ṯakuwa', 'تَكُوَ', 'ṯakuwa');
INSERT INTO maisha_mume_words VALUES (919, 78, 'd', 2, 'كْوَنْڠَلِيَ', 'kwangaliya', 'kwangaliya', '', '', '', '', '', '', 'kwangaliya', 'كْوَنْڠَلِيَ', 'kwangaliya');
INSERT INTO maisha_mume_words VALUES (916, 78, 'c', 1, 'إِوَاپٗ', 'iwāpo', 'iwapo', '', '', '', '', '', '', 'iwāpo', 'إِوَاپٗ', 'iwāpo');
INSERT INTO maisha_mume_words VALUES (921, 79, 'a', 2, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (918, 78, 'd', 1, 'مُئِلِؤٗ', 'muilio', 'muilio', '', '', '', '', '', '', 'muilio', 'مُئِلِؤٗ', 'muilio');
INSERT INTO maisha_mume_words VALUES (920, 79, 'a', 1, 'نَايٖ', 'nāye', 'naye', '', '', '', '', '', '', 'nāye', 'نَايٖ', 'nāye');
INSERT INTO maisha_mume_words VALUES (971, 83, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (972, 83, 'b', 2, 'مَنٖينٗ', 'manēno', 'maneno', '', '', '', '', '', '', 'manēno', 'مَنٖينٗ', 'manēno');
INSERT INTO maisha_mume_words VALUES (923, 79, 'b', 1, 'أَكِكُؤٗونَ', 'akikuōna', 'akikuona', '', '', '', '', '', '', 'akikuōna', 'أَكِكُؤٗونَ', 'akikuōna');
INSERT INTO maisha_mume_words VALUES (924, 79, 'b', 2, 'نْدِئَانِ', 'nḏiāni', 'ndiani', '', '', '', '', '', '', 'nḏiāni', 'نْدِئَانِ', 'nḏiāni');
INSERT INTO maisha_mume_words VALUES (973, 83, 'b', 3, 'مَرِدَادِ', 'mariḏāḏi', 'maridadi', '', '', '', '', '', '', 'mariḏāḏi', 'مَرِدَادِ', 'mariḏāḏi');
INSERT INTO maisha_mume_words VALUES (953, 81, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (954, 81, 'd', 2, 'أَكِلِينِ', 'akilı̄ni', 'akilini', '', '', '', '', '', '', 'akilı̄ni', 'أَكِلِينِ', 'akilı̄ni');
INSERT INTO maisha_mume_words VALUES (925, 79, 'c', 1, 'أُوٖ', 'uwe', 'uwe', '', '', '', '', '', '', 'uwe', 'أُوٖ', 'uwe');
INSERT INTO maisha_mume_words VALUES (926, 79, 'c', 2, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (927, 79, 'c', 3, 'هِسَبُونِ', 'hisabūni', 'hisabuni', '', '', '', '', '', '', 'hisabūni', 'هِسَبُونِ', 'hisabūni');
INSERT INTO maisha_mume_words VALUES (955, 81, 'd', 3, 'هُتِيَ', 'huṯiya', 'hutiya', '', '', '', '', '', '', 'huṯiya', 'هُتِيَ', 'huṯiya');
INSERT INTO maisha_mume_words VALUES (928, 79, 'd', 1, 'پٖينْيٖ', 'pēnye', 'penye', '', '', '', '', '', '', 'pēnye', 'پٖينْيٖ', 'pēnye');
INSERT INTO maisha_mume_words VALUES (929, 79, 'd', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (930, 79, 'd', 3, 'أُتَنْڠِيَ', 'uṯangiya', 'utangiya', '', '', '', '', '', '', 'uṯangiya', 'أُتَنْڠِيَ', 'uṯangiya');
INSERT INTO maisha_mume_words VALUES (931, 80, 'a', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (932, 80, 'a', 2, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (933, 80, 'a', 3, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (934, 80, 'a', 4, 'كَازِ', 'kāzi', 'kazi', '', '', '', '', '', '', 'kāzi', 'كَازِ', 'kāzi');
INSERT INTO maisha_mume_words VALUES (956, 82, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (957, 82, 'a', 2, 'كَذَلِيكَ', 'kadhalı̄ka', 'kadhalika', '', '', '', '', '', '', 'kadhalı̄ka', 'كَذَلِيكَ', 'kadhalı̄ka');
INSERT INTO maisha_mume_words VALUES (958, 82, 'a', 3, 'أُلِيمِ', 'ulı̄mi', 'ulimi', '', '', '', '', '', '', 'ulı̄mi', 'أُلِيمِ', 'ulı̄mi');
INSERT INTO maisha_mume_words VALUES (935, 80, 'b', 1, 'كُتٖينْدَ', 'kuṯēnḏa', 'kutenda', '', '', '', '', '', '', 'kuṯēnḏa', 'كُتٖينْدَ', 'kuṯēnḏa');
INSERT INTO maisha_mume_words VALUES (936, 80, 'b', 2, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (937, 80, 'b', 3, 'هُوٖيزِ', 'huwēzi', 'huwezi', '', '', '', '', '', '', 'huwēzi', 'هُوٖيزِ', 'huwēzi');
INSERT INTO maisha_mume_words VALUES (938, 80, 'c', 1, 'وِسَاپٗ', 'wisāpo', 'wisapo', '', '', '', '', '', '', 'wisāpo', 'وِسَاپٗ', 'wisāpo');
INSERT INTO maisha_mume_words VALUES (939, 80, 'c', 2, 'ڤُوَ', 'vuwa', 'vuwa', '', '', '', '', '', '', 'vuwa', 'ڤُوَ', 'vuwa');
INSERT INTO maisha_mume_words VALUES (940, 80, 'c', 3, 'مَڠٗوزِ', 'magōzi', 'magozi', '', '', '', '', '', '', 'magōzi', 'مَڠٗوزِ', 'magōzi');
INSERT INTO maisha_mume_words VALUES (984, 84, 'b', 1, 'أَفُرَاهِ', 'afurāhi', 'afurahi', '', '', '', '', '', '', 'afurāhi', 'أَفُرَاهِ', 'afurāhi');
INSERT INTO maisha_mume_words VALUES (985, 84, 'b', 2, 'أَكِچٖيكَ', 'akichēka', 'akicheka', '', '', '', '', '', '', 'akichēka', 'أَكِچٖيكَ', 'akichēka');
INSERT INTO maisha_mume_words VALUES (941, 80, 'd', 1, 'سِڤَاءٖ', 'sivāe', 'sivae', '', '', '', '', '', '', 'sivāe', 'سِڤَاءٖ', 'sivāe');
INSERT INTO maisha_mume_words VALUES (942, 80, 'd', 2, 'كُتٖمْبٖلٖيَ', 'kuṯembeleya', 'kutembeleya', '', '', '', '', '', '', 'kuṯembeleya', 'كُتٖمْبٖلٖيَ', 'kuṯembeleya');
INSERT INTO maisha_mume_words VALUES (959, 82, 'b', 1, 'إِپِينْدٖ', 'ipı̄nḏe', 'ipinde', '', '', '', '', '', '', 'ipı̄nḏe', 'إِپِينْدٖ', 'ipı̄nḏe');
INSERT INTO maisha_mume_words VALUES (960, 82, 'b', 2, 'أُوٖ', 'uwe', 'uwe', '', '', '', '', '', '', 'uwe', 'أُوٖ', 'uwe');
INSERT INTO maisha_mume_words VALUES (943, 81, 'a', 1, 'سِتٖمْبٖئٖ', 'siṯembee', 'sitembee', '', '', '', '', '', '', 'siṯembee', 'سِتٖمْبٖئٖ', 'siṯembee');
INSERT INTO maisha_mume_words VALUES (944, 81, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (945, 81, 'a', 3, 'مَڠوَانْدَ', 'magwānḏa', 'magwanda', '', '', '', '', '', '', 'magwānḏa', 'مَڠوَانْدَ', 'magwānḏa');
INSERT INTO maisha_mume_words VALUES (961, 82, 'b', 3, 'هُسٖيمِ', 'husēmi', 'husemi', '', '', '', '', '', '', 'husēmi', 'هُسٖيمِ', 'husēmi');
INSERT INTO maisha_mume_words VALUES (946, 81, 'b', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (947, 81, 'b', 2, 'هَرُوفُ', 'harūfu', 'harufu', '', '', '', '', '', '', 'harūfu', 'هَرُوفُ', 'harūfu');
INSERT INTO maisha_mume_words VALUES (948, 81, 'b', 3, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (949, 81, 'b', 4, 'ن’ڠٗونْدَ', 'n’gōnḏa', 'n’gonda', '', '', '', '', '', '', 'n’gōnḏa', 'ن’ڠٗونْدَ', 'n’gōnḏa');
INSERT INTO maisha_mume_words VALUES (974, 83, 'c', 1, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (1048, 89, 'd', 2, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (975, 83, 'c', 2, 'هُتَاكَ', 'huṯāka', 'hutaka', '', '', '', '', '', '', 'huṯāka', 'هُتَاكَ', 'huṯāka');
INSERT INTO maisha_mume_words VALUES (976, 83, 'c', 3, 'زَئِيدِ', 'zaı̄ḏi', 'zaidi', '', '', '', '', '', '', 'zaı̄ḏi', 'زَئِيدِ', 'zaı̄ḏi');
INSERT INTO maisha_mume_words VALUES (950, 81, 'c', 1, 'فَهَامُ', 'fahāmu', 'fahamu', '', '', '', '', '', '', 'fahāmu', 'فَهَامُ', 'fahāmu');
INSERT INTO maisha_mume_words VALUES (951, 81, 'c', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (952, 81, 'c', 3, 'هُتُونْدَ', 'huṯūnḏa', 'hutunda', '', '', '', '', '', '', 'huṯūnḏa', 'هُتُونْدَ', 'huṯūnḏa');
INSERT INTO maisha_mume_words VALUES (962, 82, 'c', 1, 'يَالٗ', 'yālo', 'yalo', '', '', '', '', '', '', 'yālo', 'يَالٗ', 'yālo');
INSERT INTO maisha_mume_words VALUES (963, 82, 'c', 2, 'مَاوِ', 'māwi', 'mawi', '', '', '', '', '', '', 'māwi', 'مَاوِ', 'māwi');
INSERT INTO maisha_mume_words VALUES (964, 82, 'c', 3, 'هُؤَتَامِ', 'huaṯāmi', 'huatami', '', '', '', '', '', '', 'huaṯāmi', 'هُؤَتَامِ', 'huaṯāmi');
INSERT INTO maisha_mume_words VALUES (965, 82, 'd', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (966, 82, 'd', 2, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (967, 82, 'd', 3, 'كُمْوَمْبِيَ', 'kumwambiya', 'kumwambiya', '', '', '', '', '', '', 'kumwambiya', 'كُمْوَمْبِيَ', 'kumwambiya');
INSERT INTO maisha_mume_words VALUES (992, 85, 'a', 3, 'أُبِيشِ', 'ubı̄shi', 'ubishi', '', '', '', '', '', '', 'ubı̄shi', 'أُبِيشِ', 'ubı̄shi');
INSERT INTO maisha_mume_words VALUES (968, 83, 'a', 1, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (969, 83, 'a', 2, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (970, 83, 'a', 3, 'جِتَهِيدِ', 'jiṯahı̄ḏi', 'jitahidi', '', '', '', '', '', '', 'jiṯahı̄ḏi', 'جِتَهِيدِ', 'jiṯahı̄ḏi');
INSERT INTO maisha_mume_words VALUES (986, 84, 'c', 1, 'مْوَنَامْكٖ', 'mwanāmke', 'mwanamke', '', '', '', '', '', '', 'mwanāmke', 'مْوَنَامْكٖ', 'mwanāmke');
INSERT INTO maisha_mume_words VALUES (987, 84, 'c', 2, 'هُؤُذِيكَ', 'huudhı̄ka', 'huudhika', '', '', '', '', '', '', 'huudhı̄ka', 'هُؤُذِيكَ', 'huudhı̄ka');
INSERT INTO maisha_mume_words VALUES (977, 83, 'd', 1, 'يَالٗ', 'yālo', 'yalo', '', '', '', '', '', '', 'yālo', 'يَالٗ', 'yālo');
INSERT INTO maisha_mume_words VALUES (978, 83, 'd', 2, 'تَامُ', 'ṯāmu', 'tamu', '', '', '', '', '', '', 'ṯāmu', 'تَامُ', 'ṯāmu');
INSERT INTO maisha_mume_words VALUES (979, 83, 'd', 3, 'كُسِكِيَ', 'kusikiya', 'kusikiya', '', '', '', '', '', '', 'kusikiya', 'كُسِكِيَ', 'kusikiya');
INSERT INTO maisha_mume_words VALUES (988, 84, 'd', 1, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (980, 84, 'a', 1, 'نٖينَ', 'nēna', 'nena', '', '', '', '', '', '', 'nēna', 'نٖينَ', 'nēna');
INSERT INTO maisha_mume_words VALUES (981, 84, 'a', 2, 'نَايٖ', 'nāye', 'naye', '', '', '', '', '', '', 'nāye', 'نَايٖ', 'nāye');
INSERT INTO maisha_mume_words VALUES (982, 84, 'a', 3, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (983, 84, 'a', 4, 'ذِهَاكَ', 'dhihāka', 'dhihaka', '', '', '', '', '', '', 'dhihāka', 'ذِهَاكَ', 'dhihāka');
INSERT INTO maisha_mume_words VALUES (1000, 85, 'c', 4, 'مْتٖيشِ', 'mṯēshi', 'mteshi', '', '', '', '', '', '', 'mṯēshi', 'مْتٖيشِ', 'mṯēshi');
INSERT INTO maisha_mume_words VALUES (989, 84, 'd', 2, 'كُمْنْيَمَلِيَ', 'kumnyamaliya', 'kumnyamaliya', '', '', '', '', '', '', 'kumnyamaliya', 'كُمْنْيَمَلِيَ', 'kumnyamaliya');
INSERT INTO maisha_mume_words VALUES (1001, 85, 'd', 1, 'بِيلَ', 'bı̄la', 'bila', '', '', '', '', '', '', 'bı̄la', 'بِيلَ', 'bı̄la');
INSERT INTO maisha_mume_words VALUES (990, 85, 'a', 1, 'مْفَنْيِئٖ', 'mfanyie', 'mfanyie', '', '', '', '', '', '', 'mfanyie', 'مْفَنْيِئٖ', 'mfanyie');
INSERT INTO maisha_mume_words VALUES (991, 85, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (997, 85, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (993, 85, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (994, 85, 'b', 2, 'مَنٖينٗ', 'manēno', 'maneno', '', '', '', '', '', '', 'manēno', 'مَنٖينٗ', 'manēno');
INSERT INTO maisha_mume_words VALUES (995, 85, 'b', 3, 'يَاسٗ', 'yāso', 'yaso', '', '', '', '', '', '', 'yāso', 'يَاسٗ', 'yāso');
INSERT INTO maisha_mume_words VALUES (996, 85, 'b', 4, 'غَاشِ', 'ḡāshi', 'ghashi', '', '', '', '', '', '', 'ḡāshi', 'غَاشِ', 'ḡāshi');
INSERT INTO maisha_mume_words VALUES (998, 85, 'c', 2, 'كْوَاكٖ', 'kwāke', 'kwake', '', '', '', '', '', '', 'kwāke', 'كْوَاكٖ', 'kwāke');
INSERT INTO maisha_mume_words VALUES (999, 85, 'c', 3, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (1005, 86, 'a', 2, 'أَهِتَاجِ', 'ahiṯāji', 'ahitaji', '', '', '', '', '', '', 'ahiṯāji', 'أَهِتَاجِ', 'ahiṯāji');
INSERT INTO maisha_mume_words VALUES (1007, 86, 'b', 2, 'لَاسِ', 'lāsi', 'lasi', '', '', '', '', '', '', 'lāsi', 'لَاسِ', 'lāsi');
INSERT INTO maisha_mume_words VALUES (1004, 86, 'a', 1, 'مْوَنَامْكٖ', 'mwanāmke', 'mwanamke', '', '', '', '', '', '', 'mwanāmke', 'مْوَنَامْكٖ', 'mwanāmke');
INSERT INTO maisha_mume_words VALUES (1002, 85, 'd', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1003, 85, 'd', 3, 'كُپِنْدُكِيَ', 'kupinḏukiya', 'kupindukiya', '', '', '', '', '', '', 'kupinḏukiya', 'كُپِنْدُكِيَ', 'kupinḏukiya');
INSERT INTO maisha_mume_words VALUES (1008, 86, 'b', 3, 'فَتَاجِ', 'faṯāji', 'fataji', '', '', '', '', '', '', 'faṯāji', 'فَتَاجِ', 'faṯāji');
INSERT INTO maisha_mume_words VALUES (1010, 86, 'c', 2, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (1006, 86, 'b', 1, 'كُڤِيشْوَ', 'kuvı̄shwa', 'kuvishwa', '', '', '', '', '', '', 'kuvı̄shwa', 'كُڤِيشْوَ', 'kuvı̄shwa');
INSERT INTO maisha_mume_words VALUES (1011, 86, 'c', 3, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (1012, 86, 'c', 4, 'مْپَاجِ', 'mpāji', 'mpaji', '', '', '', '', '', '', 'mpāji', 'مْپَاجِ', 'mpāji');
INSERT INTO maisha_mume_words VALUES (1009, 86, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1013, 86, 'd', 1, 'أُسِچٗوكٖ', 'usichōke', 'usichoke', '', '', '', '', '', '', 'usichōke', 'أُسِچٗوكٖ', 'usichōke');
INSERT INTO maisha_mume_words VALUES (1073, 92, 'b', 1, 'مْوَمْبِيٖ', 'mwambiye', 'mwambiye', '', '', '', '', '', '', 'mwambiye', 'مْوَمْبِيٖ', 'mwambiye');
INSERT INTO maisha_mume_words VALUES (1014, 86, 'd', 2, 'كُمْوَمْبِيَ', 'kumwambiya', 'kumwambiya', '', '', '', '', '', '', 'kumwambiya', 'كُمْوَمْبِيَ', 'kumwambiya');
INSERT INTO maisha_mume_words VALUES (1074, 92, 'b', 2, 'كِيتُ', 'kı̄ṯu', 'kitu', '', '', '', '', '', '', 'kı̄ṯu', 'كِيتُ', 'kı̄ṯu');
INSERT INTO maisha_mume_words VALUES (1062, 91, 'b', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (1044, 89, 'c', 1, 'سِينَ', 'sı̄na', 'sina', '', '', '', '', '', '', 'sı̄na', 'سِينَ', 'sı̄na');
INSERT INTO maisha_mume_words VALUES (1015, 87, 'a', 1, 'مْوَمْبِيٖ', 'mwambiye', 'mwambiye', '', '', '', '', '', '', 'mwambiye', 'مْوَمْبِيٖ', 'mwambiye');
INSERT INTO maisha_mume_words VALUES (1016, 87, 'a', 2, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (1017, 87, 'a', 3, 'نَامْنَ', 'nāmna', 'namna', '', '', '', '', '', '', 'nāmna', 'نَامْنَ', 'nāmna');
INSERT INTO maisha_mume_words VALUES (1045, 89, 'c', 2, 'بُودِ', 'būḏi', 'budi', '', '', '', '', '', '', 'būḏi', 'بُودِ', 'būḏi');
INSERT INTO maisha_mume_words VALUES (1046, 89, 'c', 3, 'تَكُتُنْزَ', 'ṯakuṯunza', 'takutunza', '', '', '', '', '', '', 'ṯakuṯunza', 'تَكُتُنْزَ', 'ṯakuṯunza');
INSERT INTO maisha_mume_words VALUES (1018, 87, 'b', 1, 'سِيفَ', 'sı̄fa', 'sifa', '', '', '', '', '', '', 'sı̄fa', 'سِيفَ', 'sı̄fa');
INSERT INTO maisha_mume_words VALUES (1019, 87, 'b', 2, 'زَاكٖ', 'zāke', 'zake', '', '', '', '', '', '', 'zāke', 'زَاكٖ', 'zāke');
INSERT INTO maisha_mume_words VALUES (1020, 87, 'b', 3, 'تٖينَ', 'ṯēna', 'tena', '', '', '', '', '', '', 'ṯēna', 'تٖينَ', 'ṯēna');
INSERT INTO maisha_mume_words VALUES (1021, 87, 'b', 4, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (1063, 91, 'b', 2, 'كِكُوبَ', 'kikūba', 'kikuba', '', '', '', '', '', '', 'kikūba', 'كِكُوبَ', 'kikūba');
INSERT INTO maisha_mume_words VALUES (1022, 87, 'c', 1, 'مْفَانٗ', 'mfāno', 'mfano', '', '', '', '', '', '', 'mfāno', 'مْفَانٗ', 'mfāno');
INSERT INTO maisha_mume_words VALUES (1023, 87, 'c', 2, 'أُكِمُؤٗونَ', 'ukimuōna', 'ukimuona', '', '', '', '', '', '', 'ukimuōna', 'أُكِمُؤٗونَ', 'ukimuōna');
INSERT INTO maisha_mume_words VALUES (1064, 91, 'b', 3, 'كِتوَانِ', 'kiṯwāni', 'kitwani', '', '', '', '', '', '', 'kiṯwāni', 'كِتوَانِ', 'kiṯwāni');
INSERT INTO maisha_mume_words VALUES (1047, 89, 'd', 1, 'أُمْشُومُ', 'umshūmu', 'umshumu', '', '', '', '', '', '', 'umshūmu', 'أُمْشُومُ', 'umshūmu');
INSERT INTO maisha_mume_words VALUES (1024, 87, 'd', 1, 'نْيٖئٖ', 'nyee', 'nyee', '', '', '', '', '', '', 'nyee', 'نْيٖئٖ', 'nyee');
INSERT INTO maisha_mume_words VALUES (1025, 87, 'd', 2, 'مٖفُونْڠَ', 'mefūnga', 'mefunga', '', '', '', '', '', '', 'mefūnga', 'مٖفُونْڠَ', 'mefūnga');
INSERT INTO maisha_mume_words VALUES (1026, 87, 'd', 3, 'أُپِيَ', 'upiya', 'upiya', '', '', '', '', '', '', 'upiya', 'أُپِيَ', 'upiya');
INSERT INTO maisha_mume_words VALUES (1049, 89, 'd', 3, 'مٗويَ', 'mōya', 'moya', '', '', '', '', '', '', 'mōya', 'مٗويَ', 'mōya');
INSERT INTO maisha_mume_words VALUES (1027, 88, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1028, 88, 'a', 2, 'مٖسُوكَ', 'mesūka', 'mesuka', '', '', '', '', '', '', 'mesūka', 'مٖسُوكَ', 'mesūka');
INSERT INTO maisha_mume_words VALUES (1029, 88, 'a', 3, 'مِكِيلِ', 'mikı̄li', 'mikili', '', '', '', '', '', '', 'mikı̄li', 'مِكِيلِ', 'mikı̄li');
INSERT INTO maisha_mume_words VALUES (1030, 88, 'b', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (1031, 88, 'b', 2, 'كُرُونِ', 'kurūni', 'kuruni', '', '', '', '', '', '', 'kurūni', 'كُرُونِ', 'kurūni');
INSERT INTO maisha_mume_words VALUES (1032, 88, 'b', 3, 'مَوِيلِ', 'mawı̄li', 'mawili', '', '', '', '', '', '', 'mawı̄li', 'مَوِيلِ', 'mawı̄li');
INSERT INTO maisha_mume_words VALUES (1075, 92, 'b', 3, 'كَتِيتِ', 'kaṯı̄ṯi', 'katiti', '', '', '', '', '', '', 'kaṯı̄ṯi', 'كَتِيتِ', 'kaṯı̄ṯi');
INSERT INTO maisha_mume_words VALUES (1050, 90, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1033, 88, 'c', 1, 'سِلِوَاتٖ', 'siliwāṯe', 'siliwate', '', '', '', '', '', '', 'siliwāṯe', 'سِلِوَاتٖ', 'siliwāṯe');
INSERT INTO maisha_mume_words VALUES (1034, 88, 'c', 2, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (1035, 88, 'c', 3, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (1051, 90, 'a', 2, 'أَمٖتِيَ', 'ameṯiya', 'ametiya', '', '', '', '', '', '', 'ameṯiya', 'أَمٖتِيَ', 'ameṯiya');
INSERT INTO maisha_mume_words VALUES (1052, 90, 'a', 3, 'وَانْدَ', 'wānḏa', 'wanda', '', '', '', '', '', '', 'wānḏa', 'وَانْدَ', 'wānḏa');
INSERT INTO maisha_mume_words VALUES (1036, 88, 'd', 1, 'بِيلَ', 'bı̄la', 'bila', '', '', '', '', '', '', 'bı̄la', 'بِيلَ', 'bı̄la');
INSERT INTO maisha_mume_words VALUES (1038, 88, 'd', 3, 'كُلِتُمِيَ', 'kuliṯumiya', 'kulitumiya', '', '', '', '', '', '', 'kuliṯumiya', 'كُلِتُمِيَ', 'kuliṯumiya');
INSERT INTO maisha_mume_words VALUES (1039, 89, 'a', 1, 'مْوَمْبِيٖ', 'mwambiye', 'mwambiye', '', '', '', '', '', '', 'mwambiye', 'مْوَمْبِيٖ', 'mwambiye');
INSERT INTO maisha_mume_words VALUES (1040, 89, 'a', 2, 'أُمٖپٖنْدٖيزَ', 'umepenḏēza', 'umependeza', '', '', '', '', '', '', 'umepenḏēza', 'أُمٖپٖنْدٖيزَ', 'umepenḏēza');
INSERT INTO maisha_mume_words VALUES (1065, 91, 'c', 1, 'سِچٖلٖيوٖ', 'sichelēwe', 'sichelewe', '', '', '', '', '', '', 'sichelēwe', 'سِچٖلٖيوٖ', 'sichelēwe');
INSERT INTO maisha_mume_words VALUES (1066, 91, 'c', 2, 'كُبَئِينِ', 'kubaı̄ni', 'kubaini', '', '', '', '', '', '', 'kubaı̄ni', 'كُبَئِينِ', 'kubaı̄ni');
INSERT INTO maisha_mume_words VALUES (1041, 89, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1042, 89, 'b', 2, 'نْيٖئٖ', 'nyee', 'nyee', '', '', '', '', '', '', 'nyee', 'نْيٖئٖ', 'nyee');
INSERT INTO maisha_mume_words VALUES (1043, 89, 'b', 3, 'كُزِتٖنْڠٖيزَ', 'kuziṯengēza', 'kuzitengeza', '', '', '', '', '', '', 'kuziṯengēza', 'كُزِتٖنْڠٖيزَ', 'kuziṯengēza');
INSERT INTO maisha_mume_words VALUES (1053, 90, 'b', 1, 'مْوَمْبِيٖ', 'mwambiye', 'mwambiye', '', '', '', '', '', '', 'mwambiye', 'مْوَمْبِيٖ', 'mwambiye');
INSERT INTO maisha_mume_words VALUES (1054, 90, 'b', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1055, 90, 'b', 3, 'نَپٖينْدَ', 'napēnḏa', 'napenda', '', '', '', '', '', '', 'napēnḏa', 'نَپٖينْدَ', 'napēnḏa');
INSERT INTO maisha_mume_words VALUES (1056, 90, 'c', 1, 'سِئِفَانْيٖ', 'siifānye', 'siifanye', '', '', '', '', '', '', 'siifānye', 'سِئِفَانْيٖ', 'siifānye');
INSERT INTO maisha_mume_words VALUES (1057, 90, 'c', 2, 'هُكُتُونْدَ', 'hukuṯūnḏa', 'hukutunda', '', '', '', '', '', '', 'hukuṯūnḏa', 'هُكُتُونْدَ', 'hukuṯūnḏa');
INSERT INTO maisha_mume_words VALUES (1058, 90, 'd', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (1059, 90, 'd', 2, 'هُكُمْوَنْڠَلِيَ', 'hukumwangaliya', 'hukumwangaliya', '', '', '', '', '', '', 'hukumwangaliya', 'هُكُمْوَنْڠَلِيَ', 'hukumwangaliya');
INSERT INTO maisha_mume_words VALUES (1067, 91, 'd', 1, 'نٖينٗ', 'nēno', 'neno', '', '', '', '', '', '', 'nēno', 'نٖينٗ', 'nēno');
INSERT INTO maisha_mume_words VALUES (1060, 91, 'a', 1, 'كِجِفُونْڠَ', 'kijifūnga', 'kijifunga', '', '', '', '', '', '', 'kijifūnga', 'كِجِفُونْڠَ', 'kijifūnga');
INSERT INTO maisha_mume_words VALUES (1061, 91, 'a', 2, 'أَسُمِينِ', 'asumı̄ni', 'asumini', '', '', '', '', '', '', 'asumı̄ni', 'أَسُمِينِ', 'asumı̄ni');
INSERT INTO maisha_mume_words VALUES (1081, 92, 'd', 2, 'دُوكٗ', 'ḏūko', 'duko', '', '', '', '', '', '', 'ḏūko', 'دُوكٗ', 'ḏūko');
INSERT INTO maisha_mume_words VALUES (1068, 91, 'd', 2, 'لٖيمَ', 'lēma', 'lema', '', '', '', '', '', '', 'lēma', 'لٖيمَ', 'lēma');
INSERT INTO maisha_mume_words VALUES (1069, 91, 'd', 3, 'كُمْوَمْبِيَ', 'kumwambiya', 'kumwambiya', '', '', '', '', '', '', 'kumwambiya', 'كُمْوَمْبِيَ', 'kumwambiya');
INSERT INTO maisha_mume_words VALUES (1082, 92, 'd', 3, 'تٗونْڠٗ', 'ṯōngo', 'tongo', '', '', '', '', '', '', 'ṯōngo', 'تٗونْڠٗ', 'ṯōngo');
INSERT INTO maisha_mume_words VALUES (1083, 92, 'd', 4, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (1070, 92, 'a', 1, 'يَأَنِ', 'yaani', 'yaani', '', '', '', '', '', '', 'yaani', 'يَأَنِ', 'yaani');
INSERT INTO maisha_mume_words VALUES (1071, 92, 'a', 2, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (1072, 92, 'a', 3, 'وَكَاتِ', 'wakāṯi', 'wakati', '', '', '', '', '', '', 'wakāṯi', 'وَكَاتِ', 'wakāṯi');
INSERT INTO maisha_mume_words VALUES (1093, 93, 'c', 3, 'هِينِ', 'hı̄ni', 'hini', '', '', '', '', '', '', 'hı̄ni', 'هِينِ', 'hı̄ni');
INSERT INTO maisha_mume_words VALUES (1076, 92, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1077, 92, 'c', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (1078, 92, 'c', 3, 'بُوبوِ', 'būbwi', 'bubwi', '', '', '', '', '', '', 'būbwi', 'بُوبوِ', 'būbwi');
INSERT INTO maisha_mume_words VALUES (1079, 92, 'c', 4, 'سِكٖيتِ', 'sikēṯi', 'siketi', '', '', '', '', '', '', 'sikēṯi', 'سِكٖيتِ', 'sikēṯi');
INSERT INTO maisha_mume_words VALUES (1097, 94, 'a', 2, 'كُمْسِيفُ', 'kumsı̄fu', 'kumsifu', '', '', '', '', '', '', 'kumsı̄fu', 'كُمْسِيفُ', 'kumsı̄fu');
INSERT INTO maisha_mume_words VALUES (1091, 93, 'c', 1, 'مْفَانٗ', 'mfāno', 'mfano', '', '', '', '', '', '', 'mfāno', 'مْفَانٗ', 'mfāno');
INSERT INTO maisha_mume_words VALUES (1087, 93, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1080, 92, 'd', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (1088, 93, 'b', 2, 'شُغُولِ', 'shuḡūli', 'shughuli', '', '', '', '', '', '', 'shuḡūli', 'شُغُولِ', 'shuḡūli');
INSERT INTO maisha_mume_words VALUES (1084, 93, 'a', 1, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (1085, 93, 'a', 2, 'مْپٖ', 'mpe', 'mpe', '', '', '', '', '', '', 'mpe', 'مْپٖ', 'mpe');
INSERT INTO maisha_mume_words VALUES (1086, 93, 'a', 3, 'شُكُرَانِ', 'shukurāni', 'shukurani', '', '', '', '', '', '', 'shukurāni', 'شُكُرَانِ', 'shukurāni');
INSERT INTO maisha_mume_words VALUES (1089, 93, 'b', 3, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (1090, 93, 'b', 4, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (1092, 93, 'c', 2, 'پِلَاءُ', 'pilāu', 'pilau', '', '', '', '', '', '', 'pilāu', 'پِلَاءُ', 'pilāu');
INSERT INTO maisha_mume_words VALUES (1095, 93, 'd', 2, 'أُمٖئِپَتِيَ', 'umeipaṯiya', 'umeipatiya', '', '', '', '', '', '', 'umeipaṯiya', 'أُمٖئِپَتِيَ', 'umeipaṯiya');
INSERT INTO maisha_mume_words VALUES (1094, 93, 'd', 1, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1099, 94, 'b', 2, 'نْيُومْبَ', 'nyūmba', 'nyumba', '', '', '', '', '', '', 'nyūmba', 'نْيُومْبَ', 'nyūmba');
INSERT INTO maisha_mume_words VALUES (1096, 94, 'a', 1, 'أُسِچٗوكٖ', 'usichōke', 'usichoke', '', '', '', '', '', '', 'usichōke', 'أُسِچٗوكٖ', 'usichōke');
INSERT INTO maisha_mume_words VALUES (1100, 94, 'b', 3, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (1101, 94, 'b', 4, 'نَذِيفُ', 'nadhı̄fu', 'nadhifu', '', '', '', '', '', '', 'nadhı̄fu', 'نَذِيفُ', 'nadhı̄fu');
INSERT INTO maisha_mume_words VALUES (1103, 94, 'c', 2, 'أُكِؤٗونَ', 'ukiōna', 'ukiona', '', '', '', '', '', '', 'ukiōna', 'أُكِؤٗونَ', 'ukiōna');
INSERT INTO maisha_mume_words VALUES (1098, 94, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1104, 94, 'c', 3, 'أُچَافُ', 'uchāfu', 'uchafu', '', '', '', '', '', '', 'uchāfu', 'أُچَافُ', 'uchāfu');
INSERT INTO maisha_mume_words VALUES (1102, 94, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1328, 113, 'a', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1154, 99, 'b', 1, 'هُنٖينَ', 'hunēna', 'hunena', '', '', '', '', '', '', 'hunēna', 'هُنٖينَ', 'hunēna');
INSERT INTO maisha_mume_words VALUES (1105, 94, 'd', 1, 'أُسِيوٖ', 'usı̄we', 'usiwe', '', '', '', '', '', '', 'usı̄we', 'أُسِيوٖ', 'usı̄we');
INSERT INTO maisha_mume_words VALUES (1106, 94, 'd', 2, 'تَمُؤُكِيَ', 'ṯamuukiya', 'tamuukiya', '', '', '', '', '', '', 'ṯamuukiya', 'تَمُؤُكِيَ', 'ṯamuukiya');
INSERT INTO maisha_mume_words VALUES (1155, 99, 'b', 2, 'مُكَفَهَامُ', 'mukafahāmu', 'mukafahamu', '', '', '', '', '', '', 'mukafahāmu', 'مُكَفَهَامُ', 'mukafahāmu');
INSERT INTO maisha_mume_words VALUES (1136, 97, 'd', 2, 'يَاكٖ', 'yāke', 'yake', '', '', '', '', '', '', 'yāke', 'يَاكٖ', 'yāke');
INSERT INTO maisha_mume_words VALUES (1107, 95, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1108, 95, 'a', 2, 'فَرَاغَ', 'farāḡa', 'faragha', '', '', '', '', '', '', 'farāḡa', 'فَرَاغَ', 'farāḡa');
INSERT INTO maisha_mume_words VALUES (1379, 116, 'd', 1, 'أُونَ', 'ūna', 'una', '', '', '', '', '', '', 'ūna', 'أُونَ', 'ūna');
INSERT INTO maisha_mume_words VALUES (1109, 95, 'a', 3, 'أُكِپَاتَ', 'ukipāṯa', 'ukipata', '', '', '', '', '', '', 'ukipāṯa', 'أُكِپَاتَ', 'ukipāṯa');
INSERT INTO maisha_mume_words VALUES (1137, 97, 'd', 3, 'كُمْوٖلٖكٖيَ', 'kumwelekeya', 'kumwelekeya', '', '', '', '', '', '', 'kumwelekeya', 'كُمْوٖلٖكٖيَ', 'kumwelekeya');
INSERT INTO maisha_mume_words VALUES (1110, 95, 'b', 1, 'مْبٖئٖ', 'mbee', 'mbee', '', '', '', '', '', '', 'mbee', 'مْبٖئٖ', 'mbee');
INSERT INTO maisha_mume_words VALUES (1111, 95, 'b', 2, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (1112, 95, 'b', 3, 'كِكُپِيتَ', 'kikupı̄ṯa', 'kikupita', '', '', '', '', '', '', 'kikupı̄ṯa', 'كِكُپِيتَ', 'kikupı̄ṯa');
INSERT INTO maisha_mume_words VALUES (1113, 95, 'c', 1, 'أُسِيوٖ', 'usı̄we', 'usiwe', '', '', '', '', '', '', 'usı̄we', 'أُسِيوٖ', 'usı̄we');
INSERT INTO maisha_mume_words VALUES (1114, 95, 'c', 2, 'أُتَمُؤَاتَ', 'uṯamuāṯa', 'utamuata', '', '', '', '', '', '', 'uṯamuāṯa', 'أُتَمُؤَاتَ', 'uṯamuāṯa');
INSERT INTO maisha_mume_words VALUES (1115, 95, 'd', 1, 'مْكٗونٗ', 'mkōno', 'mkono', '', '', '', '', '', '', 'mkōno', 'مْكٗونٗ', 'mkōno');
INSERT INTO maisha_mume_words VALUES (1116, 95, 'd', 2, 'كُمْپٖكٖيَ', 'kumpekeya', 'kumpekeya', '', '', '', '', '', '', 'kumpekeya', 'كُمْپٖكٖيَ', 'kumpekeya');
INSERT INTO maisha_mume_words VALUES (1138, 98, 'a', 1, 'وَاتَ', 'wāṯa', 'wata', '', '', '', '', '', '', 'wāṯa', 'وَاتَ', 'wāṯa');
INSERT INTO maisha_mume_words VALUES (1139, 98, 'a', 2, 'مَاتٗ', 'māṯo', 'mato', '', '', '', '', '', '', 'māṯo', 'مَاتٗ', 'māṯo');
INSERT INTO maisha_mume_words VALUES (1140, 98, 'a', 3, 'يَفُمَانٖ', 'yafumāne', 'yafumane', '', '', '', '', '', '', 'yafumāne', 'يَفُمَانٖ', 'yafumāne');
INSERT INTO maisha_mume_words VALUES (1117, 96, 'a', 1, 'مْشِيكٖ', 'mshı̄ke', 'mshike', '', '', '', '', '', '', 'mshı̄ke', 'مْشِيكٖ', 'mshı̄ke');
INSERT INTO maisha_mume_words VALUES (1118, 96, 'a', 2, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (1119, 96, 'a', 3, 'مْكٗونٗ', 'mkōno', 'mkono', '', '', '', '', '', '', 'mkōno', 'مْكٗونٗ', 'mkōno');
INSERT INTO maisha_mume_words VALUES (1173, 101, 'a', 1, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (1120, 96, 'b', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (1121, 96, 'b', 2, 'سِمْكَازٖ', 'simkāze', 'simkaze', '', '', '', '', '', '', 'simkāze', 'سِمْكَازٖ', 'simkāze');
INSERT INTO maisha_mume_words VALUES (1122, 96, 'b', 3, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1166, 100, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1141, 98, 'b', 1, 'كَتِيتِ', 'kaṯı̄ṯi', 'katiti', '', '', '', '', '', '', 'kaṯı̄ṯi', 'كَتِيتِ', 'kaṯı̄ṯi');
INSERT INTO maisha_mume_words VALUES (1142, 98, 'b', 2, 'يَنْڠَلِيَانٖ', 'yangaliyāne', 'yangaliyane', '', '', '', '', '', '', 'yangaliyāne', 'يَنْڠَلِيَانٖ', 'yangaliyāne');
INSERT INTO maisha_mume_words VALUES (1123, 96, 'c', 1, 'هُتٗوشَ', 'huṯōsha', 'hutosha', '', '', '', '', '', '', 'huṯōsha', 'هُتٗوشَ', 'huṯōsha');
INSERT INTO maisha_mume_words VALUES (1124, 96, 'c', 2, 'نُكُوتَ', 'nukūṯa', 'nukuta', '', '', '', '', '', '', 'nukūṯa', 'نُكُوتَ', 'nukūṯa');
INSERT INTO maisha_mume_words VALUES (1125, 96, 'c', 3, 'تَانٗ', 'ṯāno', 'tano', '', '', '', '', '', '', 'ṯāno', 'تَانٗ', 'ṯāno');
INSERT INTO maisha_mume_words VALUES (1126, 96, 'd', 1, 'أُجُومْبٖ', 'ujūmbe', 'ujumbe', '', '', '', '', '', '', 'ujūmbe', 'أُجُومْبٖ', 'ujūmbe');
INSERT INTO maisha_mume_words VALUES (1127, 96, 'd', 2, 'كُمْپٖكٖيَ', 'kumpekeya', 'kumpekeya', '', '', '', '', '', '', 'kumpekeya', 'كُمْپٖكٖيَ', 'kumpekeya');
INSERT INTO maisha_mume_words VALUES (1167, 100, 'b', 2, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (1128, 97, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1129, 97, 'a', 2, 'أَمٖكُكَبِيلِ', 'amekukabı̄li', 'amekukabili', '', '', '', '', '', '', 'amekukabı̄li', 'أَمٖكُكَبِيلِ', 'amekukabı̄li');
INSERT INTO maisha_mume_words VALUES (1156, 99, 'c', 1, 'مَاتٗ', 'māṯo', 'mato', '', '', '', '', '', '', 'māṯo', 'مَاتٗ', 'māṯo');
INSERT INTO maisha_mume_words VALUES (1157, 99, 'c', 2, 'كِؤُونْڠٗ', 'kiūngo', 'kiungo', '', '', '', '', '', '', 'kiūngo', 'كِؤُونْڠٗ', 'kiūngo');
INSERT INTO maisha_mume_words VALUES (1130, 97, 'b', 1, 'سِئِتِيٖ', 'siiṯiye', 'siitiye', '', '', '', '', '', '', 'siiṯiye', 'سِئِتِيٖ', 'siiṯiye');
INSERT INTO maisha_mume_words VALUES (1131, 97, 'b', 2, 'مَشُغُولِ', 'mashuḡūli', 'mashughuli', '', '', '', '', '', '', 'mashuḡūli', 'مَشُغُولِ', 'mashuḡūli');
INSERT INTO maisha_mume_words VALUES (1143, 98, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1144, 98, 'c', 2, 'أُلِيمِ', 'ulı̄mi', 'ulimi', '', '', '', '', '', '', 'ulı̄mi', 'أُلِيمِ', 'ulı̄mi');
INSERT INTO maisha_mume_words VALUES (1145, 98, 'c', 3, 'أُسِنٖينٖ', 'usinēne', 'usinene', '', '', '', '', '', '', 'usinēne', 'أُسِنٖينٖ', 'usinēne');
INSERT INTO maisha_mume_words VALUES (1132, 97, 'c', 1, 'إِنُوَ', 'inuwa', 'inuwa', '', '', '', '', '', '', 'inuwa', 'إِنُوَ', 'inuwa');
INSERT INTO maisha_mume_words VALUES (1133, 97, 'c', 2, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (1134, 97, 'c', 3, 'مَوِيلِ', 'mawı̄li', 'mawili', '', '', '', '', '', '', 'mawı̄li', 'مَوِيلِ', 'mawı̄li');
INSERT INTO maisha_mume_words VALUES (1158, 99, 'c', 3, 'مُهِيمُ', 'muhı̄mu', 'muhimu', '', '', '', '', '', '', 'muhı̄mu', 'مُهِيمُ', 'muhı̄mu');
INSERT INTO maisha_mume_words VALUES (1146, 98, 'd', 1, 'لُوغَ', 'lūḡa', 'lugha', '', '', '', '', '', '', 'lūḡa', 'لُوغَ', 'lūḡa');
INSERT INTO maisha_mume_words VALUES (1147, 98, 'd', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1148, 98, 'd', 3, 'مَاتٗ', 'māṯo', 'mato', '', '', '', '', '', '', 'māṯo', 'مَاتٗ', 'māṯo');
INSERT INTO maisha_mume_words VALUES (1149, 98, 'd', 4, 'تُمِيَ', 'ṯumiya', 'tumiya', '', '', '', '', '', '', 'ṯumiya', 'تُمِيَ', 'ṯumiya');
INSERT INTO maisha_mume_words VALUES (1168, 100, 'b', 3, 'هُكُؤَذِيرِ', 'hukuadhı̄ri', 'hukuadhiri', '', '', '', '', '', '', 'hukuadhı̄ri', 'هُكُؤَذِيرِ', 'hukuadhı̄ri');
INSERT INTO maisha_mume_words VALUES (1159, 99, 'd', 1, 'چَ', 'cha', 'cha', '', '', '', '', '', '', 'cha', 'چَ', 'cha');
INSERT INTO maisha_mume_words VALUES (1150, 99, 'a', 1, 'مَاتٗ', 'māṯo', 'mato', '', '', '', '', '', '', 'māṯo', 'مَاتٗ', 'māṯo');
INSERT INTO maisha_mume_words VALUES (1151, 99, 'a', 2, 'يَانَ', 'yāna', 'yana', '', '', '', '', '', '', 'yāna', 'يَانَ', 'yāna');
INSERT INTO maisha_mume_words VALUES (1152, 99, 'a', 3, 'لُوغَ', 'lūḡa', 'lugha', '', '', '', '', '', '', 'lūḡa', 'لُوغَ', 'lūḡa');
INSERT INTO maisha_mume_words VALUES (1153, 99, 'a', 4, 'تَامُ', 'ṯāmu', 'tamu', '', '', '', '', '', '', 'ṯāmu', 'تَامُ', 'ṯāmu');
INSERT INTO maisha_mume_words VALUES (2413, 205, 'c', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (1174, 101, 'a', 2, 'نِمٖنٖينَ', 'nimenēna', 'nimenena', '', '', '', '', '', '', 'nimenēna', 'نِمٖنٖينَ', 'nimenēna');
INSERT INTO maisha_mume_words VALUES (1161, 99, 'd', 3, 'كُپَلِلِيَ', 'kupaliliya', 'kupaliliya', '', '', '', '', '', '', 'kupaliliya', 'كُپَلِلِيَ', 'kupaliliya');
INSERT INTO maisha_mume_words VALUES (1175, 101, 'a', 3, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (1169, 100, 'c', 1, 'كَكُتٗلٖيَ', 'kakuṯoleya', 'kakutoleya', '', '', '', '', '', '', 'kakuṯoleya', 'كَكُتٗلٖيَ', 'kakuṯoleya');
INSERT INTO maisha_mume_words VALUES (1170, 100, 'c', 2, 'خَبَارِ', 'ẖabāri', 'habari', '', '', '', '', '', '', 'ẖabāri', 'خَبَارِ', 'ẖabāri');
INSERT INTO maisha_mume_words VALUES (1162, 100, 'a', 1, 'مَاتٗ', 'māṯo', 'mato', '', '', '', '', '', '', 'māṯo', 'مَاتٗ', 'māṯo');
INSERT INTO maisha_mume_words VALUES (1163, 100, 'a', 2, 'يَانَ', 'yāna', 'yana', '', '', '', '', '', '', 'yāna', 'يَانَ', 'yāna');
INSERT INTO maisha_mume_words VALUES (1164, 100, 'a', 3, 'كُؤُ', 'kuu', 'kuu', '', '', '', '', '', '', 'kuu', 'كُؤُ', 'kuu');
INSERT INTO maisha_mume_words VALUES (1165, 100, 'a', 4, 'سِيرِ', 'sı̄ri', 'siri', '', '', '', '', '', '', 'sı̄ri', 'سِيرِ', 'sı̄ri');
INSERT INTO maisha_mume_words VALUES (1171, 100, 'd', 1, 'مٗيٗونِ', 'moyōni', 'moyoni', '', '', '', '', '', '', 'moyōni', 'مٗيٗونِ', 'moyōni');
INSERT INTO maisha_mume_words VALUES (1172, 100, 'd', 2, 'أُلٗزِوِيَ', 'uloziwiya', 'uloziwiya', '', '', '', '', '', '', 'uloziwiya', 'أُلٗزِوِيَ', 'uloziwiya');
INSERT INTO maisha_mume_words VALUES (1188, 102, 'a', 3, 'سَهَالِ', 'sahāli', 'sahali', '', '', '', '', '', '', 'sahāli', 'سَهَالِ', 'sahāli');
INSERT INTO maisha_mume_words VALUES (1190, 102, 'b', 2, 'كُلَّ', 'kulla', 'kulla', '', '', '', '', '', '', 'kulla', 'كُلَّ', 'kulla');
INSERT INTO maisha_mume_words VALUES (1179, 101, 'c', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (1180, 101, 'c', 2, 'غَرَامَ', 'ḡarāma', 'gharama', '', '', '', '', '', '', 'ḡarāma', 'غَرَامَ', 'ḡarāma');
INSERT INTO maisha_mume_words VALUES (1181, 101, 'c', 3, 'هَلِينَ', 'halı̄na', 'halina', '', '', '', '', '', '', 'halı̄na', 'هَلِينَ', 'halı̄na');
INSERT INTO maisha_mume_words VALUES (1176, 101, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1177, 101, 'b', 2, 'مُهِيمُ', 'muhı̄mu', 'muhimu', '', '', '', '', '', '', 'muhı̄mu', 'مُهِيمُ', 'muhı̄mu');
INSERT INTO maisha_mume_words VALUES (1178, 101, 'b', 3, 'نَلِؤٗونَ', 'naliōna', 'naliona', '', '', '', '', '', '', 'naliōna', 'نَلِؤٗونَ', 'naliōna');
INSERT INTO maisha_mume_words VALUES (1186, 102, 'a', 1, 'وَلَكِينِ', 'walakı̄ni', 'walakini', '', '', '', '', '', '', 'walakı̄ni', 'وَلَكِينِ', 'walakı̄ni');
INSERT INTO maisha_mume_words VALUES (1182, 101, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1183, 101, 'd', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (1184, 101, 'd', 3, 'كَازِ', 'kāzi', 'kazi', '', '', '', '', '', '', 'kāzi', 'كَازِ', 'kāzi');
INSERT INTO maisha_mume_words VALUES (1185, 101, 'd', 4, 'كُتُمِيَ', 'kuṯumiya', 'kutumiya', '', '', '', '', '', '', 'kuṯumiya', 'كُتُمِيَ', 'kuṯumiya');
INSERT INTO maisha_mume_words VALUES (1191, 102, 'b', 3, 'أَالٗ', 'ālo', 'alo', '', '', '', '', '', '', 'ālo', 'أَالٗ', 'ālo');
INSERT INTO maisha_mume_words VALUES (1192, 102, 'b', 4, 'مْڤُولِ', 'mvūli', 'mvuli', '', '', '', '', '', '', 'mvūli', 'مْڤُولِ', 'mvūli');
INSERT INTO maisha_mume_words VALUES (1194, 102, 'c', 2, 'وَنْڠِينٖ', 'wangı̄ne', 'wangine', '', '', '', '', '', '', 'wangı̄ne', 'وَنْڠِينٖ', 'wangı̄ne');
INSERT INTO maisha_mume_words VALUES (1189, 102, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1195, 102, 'c', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1196, 102, 'c', 4, 'ثَكِيلِ', 'thakı̄li', 'thakili', '', '', '', '', '', '', 'thakı̄li', 'ثَكِيلِ', 'thakı̄li');
INSERT INTO maisha_mume_words VALUES (1193, 102, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1197, 102, 'd', 1, 'كَاتُ', 'kāṯu', 'katu', '', '', '', '', '', '', 'kāṯu', 'كَاتُ', 'kāṯu');
INSERT INTO maisha_mume_words VALUES (1198, 102, 'd', 2, 'هَوَكُزٗوٖيَ', 'hawakuzoweya', 'hawakuzoweya', '', '', '', '', '', '', 'hawakuzoweya', 'هَوَكُزٗوٖيَ', 'hawakuzoweya');
INSERT INTO maisha_mume_words VALUES (1272, 108, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1260, 107, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1228, 105, 'c', 1, 'كُسِكِيَ', 'kusikiya', 'kusikiya', '', '', '', '', '', '', 'kusikiya', 'كُسِكِيَ', 'kusikiya');
INSERT INTO maisha_mume_words VALUES (1199, 103, 'a', 1, 'مْبِينُ', 'mbı̄nu', 'mbinu', '', '', '', '', '', '', 'mbı̄nu', 'مْبِينُ', 'mbı̄nu');
INSERT INTO maisha_mume_words VALUES (1200, 103, 'a', 2, 'هِيزِ', 'hı̄zi', 'hizi', '', '', '', '', '', '', 'hı̄zi', 'هِيزِ', 'hı̄zi');
INSERT INTO maisha_mume_words VALUES (1201, 103, 'a', 3, 'إِزٗئٖيزٖ', 'izoēze', 'izoeze', '', '', '', '', '', '', 'izoēze', 'إِزٗئٖيزٖ', 'izoēze');
INSERT INTO maisha_mume_words VALUES (1229, 105, 'c', 2, 'نٖينٗ', 'nēno', 'neno', '', '', '', '', '', '', 'nēno', 'نٖينٗ', 'nēno');
INSERT INTO maisha_mume_words VALUES (1230, 105, 'c', 3, 'لَاكٗ', 'lāko', 'lako', '', '', '', '', '', '', 'lāko', 'لَاكٗ', 'lāko');
INSERT INTO maisha_mume_words VALUES (1202, 103, 'b', 1, 'زِتُمِيٖ', 'ziṯumiye', 'zitumiye', '', '', '', '', '', '', 'ziṯumiye', 'زِتُمِيٖ', 'ziṯumiye');
INSERT INTO maisha_mume_words VALUES (1203, 103, 'b', 2, 'سِزِپُوزٖ', 'sizipūze', 'sizipuze', '', '', '', '', '', '', 'sizipūze', 'سِزِپُوزٖ', 'sizipūze');
INSERT INTO maisha_mume_words VALUES (1204, 103, 'c', 1, 'أُتَؤٗونَ', 'uṯaōna', 'utaona', '', '', '', '', '', '', 'uṯaōna', 'أُتَؤٗونَ', 'uṯaōna');
INSERT INTO maisha_mume_words VALUES (1205, 103, 'c', 2, 'فَئِدَازٖ', 'faiḏāze', 'faidaze', '', '', '', '', '', '', 'faiḏāze', 'فَئِدَازٖ', 'faiḏāze');
INSERT INTO maisha_mume_words VALUES (1261, 107, 'd', 2, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (1206, 103, 'd', 1, 'مْوٖنْيٖيوٖ', 'mwenyēwe', 'mwenyewe', '', '', '', '', '', '', 'mwenyēwe', 'مْوٖنْيٖيوٖ', 'mwenyēwe');
INSERT INTO maisha_mume_words VALUES (1207, 103, 'd', 2, 'تَشُهُدِيَ', 'ṯashuhuḏiya', 'tashuhudiya', '', '', '', '', '', '', 'ṯashuhuḏiya', 'تَشُهُدِيَ', 'ṯashuhuḏiya');
INSERT INTO maisha_mume_words VALUES (1248, 107, 'a', 1, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (1249, 107, 'a', 2, 'أَالٗ', 'ālo', 'alo', '', '', '', '', '', '', 'ālo', 'أَالٗ', 'ālo');
INSERT INTO maisha_mume_words VALUES (1231, 105, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1208, 104, 'a', 1, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (1209, 104, 'a', 2, 'هَيَانَ', 'hayāna', 'hayana', '', '', '', '', '', '', 'hayāna', 'هَيَانَ', 'hayāna');
INSERT INTO maisha_mume_words VALUES (1210, 104, 'a', 3, 'غَرَامَ', 'ḡarāma', 'gharama', '', '', '', '', '', '', 'ḡarāma', 'غَرَامَ', 'ḡarāma');
INSERT INTO maisha_mume_words VALUES (1232, 105, 'd', 2, 'هَاجَ', 'hāja', 'haja', '', '', '', '', '', '', 'hāja', 'هَاجَ', 'hāja');
INSERT INTO maisha_mume_words VALUES (1233, 105, 'd', 3, 'أَهِتَجِيَ', 'ahiṯajiya', 'ahitajiya', '', '', '', '', '', '', 'ahiṯajiya', 'أَهِتَجِيَ', 'ahiṯajiya');
INSERT INTO maisha_mume_words VALUES (1211, 104, 'b', 1, 'كْوَنْڠَلِيَ', 'kwangaliya', 'kwangaliya', '', '', '', '', '', '', 'kwangaliya', 'كْوَنْڠَلِيَ', 'kwangaliya');
INSERT INTO maisha_mume_words VALUES (1212, 104, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1213, 104, 'b', 3, 'كُسٖيمَ', 'kusēma', 'kusema', '', '', '', '', '', '', 'kusēma', 'كُسٖيمَ', 'kusēma');
INSERT INTO maisha_mume_words VALUES (1250, 107, 'a', 3, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (1251, 107, 'a', 4, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1214, 104, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1215, 104, 'c', 2, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (1216, 104, 'c', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1217, 104, 'c', 4, 'دَئِيمَ', 'ḏaı̄ma', 'daima', '', '', '', '', '', '', 'ḏaı̄ma', 'دَئِيمَ', 'ḏaı̄ma');
INSERT INTO maisha_mume_words VALUES (1234, 106, 'a', 1, 'يُوَ', 'yuwa', 'yuwa', '', '', '', '', '', '', 'yuwa', 'يُوَ', 'yuwa');
INSERT INTO maisha_mume_words VALUES (1235, 106, 'a', 2, 'هَتٗشٖيكِ', 'haṯoshēki', 'hatosheki', '', '', '', '', '', '', 'haṯoshēki', 'هَتٗشٖيكِ', 'haṯoshēki');
INSERT INTO maisha_mume_words VALUES (1218, 104, 'd', 1, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (1219, 104, 'd', 2, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (1220, 104, 'd', 3, 'هُزٖنْڠٖيَ', 'huzengeya', 'huzengeya', '', '', '', '', '', '', 'huzengeya', 'هُزٖنْڠٖيَ', 'huzengeya');
INSERT INTO maisha_mume_words VALUES (1236, 106, 'a', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1221, 105, 'a', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1222, 105, 'a', 2, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (1223, 105, 'a', 3, 'أُونَ', 'ūna', 'una', '', '', '', '', '', '', 'ūna', 'أُونَ', 'ūna');
INSERT INTO maisha_mume_words VALUES (1224, 105, 'a', 4, 'مْوَاكٗ', 'mwāko', 'mwako', '', '', '', '', '', '', 'mwāko', 'مْوَاكٗ', 'mwāko');
INSERT INTO maisha_mume_words VALUES (1225, 105, 'b', 1, 'كُيُوَ', 'kuyuwa', 'kuyuwa', '', '', '', '', '', '', 'kuyuwa', 'كُيُوَ', 'kuyuwa');
INSERT INTO maisha_mume_words VALUES (1226, 105, 'b', 2, 'مَؤٗونِ', 'maōni', 'maoni', '', '', '', '', '', '', 'maōni', 'مَؤٗونِ', 'maōni');
INSERT INTO maisha_mume_words VALUES (1227, 105, 'b', 3, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (1262, 107, 'd', 3, 'مٖيَزٗوٖيَ', 'meyazoweya', 'meyazoweya', '', '', '', '', '', '', 'meyazoweya', 'مٖيَزٗوٖيَ', 'meyazoweya');
INSERT INTO maisha_mume_words VALUES (1237, 106, 'b', 1, 'كُڤَاءَ', 'kuvāa', 'kuvaa', '', '', '', '', '', '', 'kuvāa', 'كُڤَاءَ', 'kuvāa');
INSERT INTO maisha_mume_words VALUES (1238, 106, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1239, 106, 'b', 3, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (1240, 106, 'b', 4, 'كْوَاكٖ', 'kwāke', 'kwake', '', '', '', '', '', '', 'kwāke', 'كْوَاكٖ', 'kwāke');
INSERT INTO maisha_mume_words VALUES (1252, 107, 'b', 1, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (1241, 106, 'c', 1, 'أَتَاكَ', 'aṯāka', 'ataka', '', '', '', '', '', '', 'aṯāka', 'أَتَاكَ', 'aṯāka');
INSERT INTO maisha_mume_words VALUES (1242, 106, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1243, 106, 'c', 3, 'أُوتُ', 'ūṯu', 'utu', '', '', '', '', '', '', 'ūṯu', 'أُوتُ', 'ūṯu');
INSERT INTO maisha_mume_words VALUES (1244, 106, 'c', 4, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (1253, 107, 'b', 2, 'نْدِيلٗ', 'nḏı̄lo', 'ndilo', '', '', '', '', '', '', 'nḏı̄lo', 'نْدِيلٗ', 'nḏı̄lo');
INSERT INTO maisha_mume_words VALUES (1254, 107, 'b', 3, 'أُومْبٗ', 'ūmbo', 'umbo', '', '', '', '', '', '', 'ūmbo', 'أُومْبٗ', 'ūmbo');
INSERT INTO maisha_mume_words VALUES (1255, 107, 'b', 4, 'لَاكٖ', 'lāke', 'lake', '', '', '', '', '', '', 'lāke', 'لَاكٖ', 'lāke');
INSERT INTO maisha_mume_words VALUES (1245, 106, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1246, 106, 'd', 2, 'هِشِيمَ', 'hishı̄ma', 'hishima', '', '', '', '', '', '', 'hishı̄ma', 'هِشِيمَ', 'hishı̄ma');
INSERT INTO maisha_mume_words VALUES (1247, 106, 'd', 3, 'كُمْوٖكٖيَ', 'kumwekeya', 'kumwekeya', '', '', '', '', '', '', 'kumwekeya', 'كُمْوٖكٖيَ', 'kumwekeya');
INSERT INTO maisha_mume_words VALUES (1273, 108, 'd', 2, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (1269, 108, 'c', 1, 'هِينَ', 'hı̄na', 'hina', '', '', '', '', '', '', 'hı̄na', 'هِينَ', 'hı̄na');
INSERT INTO maisha_mume_words VALUES (1270, 108, 'c', 2, 'هَپٖينْدِ', 'hapēnḏi', 'hapendi', '', '', '', '', '', '', 'hapēnḏi', 'هَپٖينْدِ', 'hapēnḏi');
INSERT INTO maisha_mume_words VALUES (1263, 108, 'a', 1, 'هُتٗكٖيَ', 'huṯokeya', 'hutokeya', '', '', '', '', '', '', 'huṯokeya', 'هُتٗكٖيَ', 'huṯokeya');
INSERT INTO maisha_mume_words VALUES (1256, 107, 'c', 1, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (1257, 107, 'c', 2, 'مَپَامْبٗ', 'mapāmbo', 'mapambo', '', '', '', '', '', '', 'mapāmbo', 'مَپَامْبٗ', 'mapāmbo');
INSERT INTO maisha_mume_words VALUES (1258, 107, 'c', 3, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (1259, 107, 'c', 4, 'كْوَاكٖ', 'kwāke', 'kwake', '', '', '', '', '', '', 'kwāke', 'كْوَاكٖ', 'kwāke');
INSERT INTO maisha_mume_words VALUES (1271, 108, 'c', 3, 'كُچٗورَ', 'kuchōra', 'kuchora', '', '', '', '', '', '', 'kuchōra', 'كُچٗورَ', 'kuchōra');
INSERT INTO maisha_mume_words VALUES (1264, 108, 'a', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1265, 108, 'a', 3, 'نَدِيرَ', 'naḏı̄ra', 'nadira', '', '', '', '', '', '', 'naḏı̄ra', 'نَدِيرَ', 'naḏı̄ra');
INSERT INTO maisha_mume_words VALUES (1266, 108, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1267, 108, 'b', 2, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (1268, 108, 'b', 3, 'وَسٗئِكٖيرَ', 'wasoikēra', 'wasoikera', '', '', '', '', '', '', 'wasoikēra', 'وَسٗئِكٖيرَ', 'wasoikēra');
INSERT INTO maisha_mume_words VALUES (1281, 109, 'b', 3, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (1276, 109, 'a', 1, 'هَانَ', 'hāna', 'hana', '', '', '', '', '', '', 'hāna', 'هَانَ', 'hāna');
INSERT INTO maisha_mume_words VALUES (1277, 109, 'a', 2, 'هَايٗ', 'hāyo', 'hayo', '', '', '', '', '', '', 'hāyo', 'هَايٗ', 'hāyo');
INSERT INTO maisha_mume_words VALUES (1274, 108, 'd', 3, 'وَانْدَ', 'wānḏa', 'wanda', '', '', '', '', '', '', 'wānḏa', 'وَانْدَ', 'wānḏa');
INSERT INTO maisha_mume_words VALUES (1275, 108, 'd', 4, 'كُتِيَ', 'kuṯiya', 'kutiya', '', '', '', '', '', '', 'kuṯiya', 'كُتِيَ', 'kuṯiya');
INSERT INTO maisha_mume_words VALUES (1282, 109, 'b', 4, 'مْڤُولِ', 'mvūli', 'mvuli', '', '', '', '', '', '', 'mvūli', 'مْڤُولِ', 'mvūli');
INSERT INTO maisha_mume_words VALUES (1278, 109, 'a', 3, 'مَشُغُولِ', 'mashuḡūli', 'mashughuli', '', '', '', '', '', '', 'mashuḡūli', 'مَشُغُولِ', 'mashuḡūli');
INSERT INTO maisha_mume_words VALUES (1284, 109, 'c', 2, 'أُرٖيمْبٗ', 'urēmbo', 'urembo', '', '', '', '', '', '', 'urēmbo', 'أُرٖيمْبٗ', 'urēmbo');
INSERT INTO maisha_mume_words VALUES (1279, 109, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1285, 109, 'c', 3, 'هَيَجَالِ', 'hayajāli', 'hayajali', '', '', '', '', '', '', 'hayajāli', 'هَيَجَالِ', 'hayajāli');
INSERT INTO maisha_mume_words VALUES (1287, 109, 'd', 2, 'هَكُيَزٗوٖيَ', 'hakuyazoweya', 'hakuyazoweya', '', '', '', '', '', '', 'hakuyazoweya', 'هَكُيَزٗوٖيَ', 'hakuyazoweya');
INSERT INTO maisha_mume_words VALUES (1283, 109, 'c', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1289, 110, 'a', 2, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (1286, 109, 'd', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (1290, 110, 'a', 3, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (1291, 110, 'a', 4, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1288, 110, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1294, 110, 'b', 3, 'شُغُولِ', 'shuḡūli', 'shughuli', '', '', '', '', '', '', 'shuḡūli', 'شُغُولِ', 'shuḡūli');
INSERT INTO maisha_mume_words VALUES (1295, 110, 'b', 4, 'يَاكٖ', 'yāke', 'yake', '', '', '', '', '', '', 'yāke', 'يَاكٖ', 'yāke');
INSERT INTO maisha_mume_words VALUES (1324, 112, 'd', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1326, 113, 'a', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (1327, 113, 'a', 2, 'تَامُ', 'ṯāmu', 'tamu', '', '', '', '', '', '', 'ṯāmu', 'تَامُ', 'ṯāmu');
INSERT INTO maisha_mume_words VALUES (1296, 110, 'c', 1, 'بَاسِ', 'bāsi', 'basi', '', '', '', '', '', '', 'bāsi', 'بَاسِ', 'bāsi');
INSERT INTO maisha_mume_words VALUES (1297, 110, 'c', 2, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (1298, 110, 'c', 3, 'سِسُمْبُوكٖ', 'sisumbūke', 'sisumbuke', '', '', '', '', '', '', 'sisumbūke', 'سِسُمْبُوكٖ', 'sisumbūke');
INSERT INTO maisha_mume_words VALUES (1329, 113, 'a', 4, 'أُتُونْڠُ', 'uṯūngu', 'utungu', '', '', '', '', '', '', 'uṯūngu', 'أُتُونْڠُ', 'uṯūngu');
INSERT INTO maisha_mume_words VALUES (1299, 110, 'd', 1, 'مَشُغُولِ', 'mashuḡūli', 'mashughuli', '', '', '', '', '', '', 'mashuḡūli', 'مَشُغُولِ', 'mashuḡūli');
INSERT INTO maisha_mume_words VALUES (1300, 110, 'd', 2, 'كُيِتِيَ', 'kuyiṯiya', 'kuyitiya', '', '', '', '', '', '', 'kuyiṯiya', 'كُيِتِيَ', 'kuyiṯiya');
INSERT INTO maisha_mume_words VALUES (1345, 114, 'c', 1, 'نْدِيٗ', 'nḏiyo', 'ndiyo', '', '', '', '', '', '', 'nḏiyo', 'نْدِيٗ', 'nḏiyo');
INSERT INTO maisha_mume_words VALUES (1346, 114, 'c', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1301, 111, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1302, 111, 'a', 2, 'لٖنْڠِينٖ', 'lengı̄ne', 'lengine', '', '', '', '', '', '', 'lengı̄ne', 'لٖنْڠِينٖ', 'lengı̄ne');
INSERT INTO maisha_mume_words VALUES (1303, 111, 'a', 3, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (1304, 111, 'a', 4, 'ذَرُورَ', 'dharūra', 'dharura', '', '', '', '', '', '', 'dharūra', 'ذَرُورَ', 'dharūra');
INSERT INTO maisha_mume_words VALUES (1347, 114, 'c', 3, 'مَئِيشَ', 'maı̄sha', 'maisha', '', '', '', '', '', '', 'maı̄sha', 'مَئِيشَ', 'maı̄sha');
INSERT INTO maisha_mume_words VALUES (1330, 113, 'b', 1, 'كْوٖينْيٖ', 'kwēnye', 'kwenye', '', '', '', '', '', '', 'kwēnye', 'كْوٖينْيٖ', 'kwēnye');
INSERT INTO maisha_mume_words VALUES (1331, 113, 'b', 2, 'هُؤُ', 'huu', 'huu', '', '', '', '', '', '', 'huu', 'هُؤُ', 'huu');
INSERT INTO maisha_mume_words VALUES (1305, 111, 'b', 1, 'إِفُونْدٖ', 'ifūnḏe', 'ifunde', '', '', '', '', '', '', 'ifūnḏe', 'إِفُونْدٖ', 'ifūnḏe');
INSERT INTO maisha_mume_words VALUES (1306, 111, 'b', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1307, 111, 'b', 3, 'سُبِيرَ', 'subı̄ra', 'subira', '', '', '', '', '', '', 'subı̄ra', 'سُبِيرَ', 'subı̄ra');
INSERT INTO maisha_mume_words VALUES (1332, 113, 'b', 3, 'أُلِمْوٖينْڠُ', 'ulimwēngu', 'ulimwengu', '', '', '', '', '', '', 'ulimwēngu', 'أُلِمْوٖينْڠُ', 'ulimwēngu');
INSERT INTO maisha_mume_words VALUES (1308, 111, 'c', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (1309, 111, 'c', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (1310, 111, 'c', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1311, 111, 'c', 4, 'كُكٖيرَ', 'kukēra', 'kukera', '', '', '', '', '', '', 'kukēra', 'كُكٖيرَ', 'kukēra');
INSERT INTO maisha_mume_words VALUES (1348, 114, 'c', 4, 'أَادَ', 'āḏa', 'ada', '', '', '', '', '', '', 'āḏa', 'أَادَ', 'āḏa');
INSERT INTO maisha_mume_words VALUES (1312, 111, 'd', 1, 'مَئِشَانِ', 'maishāni', 'maishani', '', '', '', '', '', '', 'maishāni', 'مَئِشَانِ', 'maishāni');
INSERT INTO maisha_mume_words VALUES (1313, 111, 'd', 2, 'يَتٗكٖيَ', 'yaṯokeya', 'yatokeya', '', '', '', '', '', '', 'yaṯokeya', 'يَتٗكٖيَ', 'yaṯokeya');
INSERT INTO maisha_mume_words VALUES (1333, 113, 'c', 1, 'يَلِئَانْدَ', 'yaliānḏa', 'yalianda', '', '', '', '', '', '', 'yaliānḏa', 'يَلِئَانْدَ', 'yaliānḏa');
INSERT INTO maisha_mume_words VALUES (1334, 113, 'c', 2, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (1314, 112, 'a', 1, 'هَكُونَ', 'hakūna', 'hakuna', '', '', '', '', '', '', 'hakūna', 'هَكُونَ', 'hakūna');
INSERT INTO maisha_mume_words VALUES (2625, 223, 'a', 3, 'زَاكٗ', 'zāko', 'zako', '', '', '', '', '', '', 'zāko', 'زَاكٗ', 'zāko');
INSERT INTO maisha_mume_words VALUES (1315, 112, 'a', 2, 'مَئِيشَ', 'maı̄sha', 'maisha', '', '', '', '', '', '', 'maı̄sha', 'مَئِيشَ', 'maı̄sha');
INSERT INTO maisha_mume_words VALUES (1316, 112, 'a', 3, 'تَامُ', 'ṯāmu', 'tamu', '', '', '', '', '', '', 'ṯāmu', 'تَامُ', 'ṯāmu');
INSERT INTO maisha_mume_words VALUES (1335, 113, 'c', 3, 'تَانْڠُ', 'ṯāngu', 'tangu', '', '', '', '', '', '', 'ṯāngu', 'تَانْڠُ', 'ṯāngu');
INSERT INTO maisha_mume_words VALUES (1317, 112, 'b', 1, 'يٖينْيٖ', 'yēnye', 'yenye', '', '', '', '', '', '', 'yēnye', 'يٖينْيٖ', 'yēnye');
INSERT INTO maisha_mume_words VALUES (1318, 112, 'b', 2, 'رَاهَ', 'rāha', 'raha', '', '', '', '', '', '', 'rāha', 'رَاهَ', 'rāha');
INSERT INTO maisha_mume_words VALUES (1319, 112, 'b', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1320, 112, 'b', 4, 'كُدُومُ', 'kuḏūmu', 'kudumu', '', '', '', '', '', '', 'kuḏūmu', 'كُدُومُ', 'kuḏūmu');
INSERT INTO maisha_mume_words VALUES (1381, 116, 'd', 3, 'أَلٗزٗوٖيَ', 'alozoweya', 'alozoweya', '', '', '', '', '', '', 'alozoweya', 'أَلٗزٗوٖيَ', 'alozoweya');
INSERT INTO maisha_mume_words VALUES (1336, 113, 'd', 1, 'يَلِپٗؤُمْبوَ', 'yalipoumbwa', 'yalipoumbwa', '', '', '', '', '', '', 'yalipoumbwa', 'يَلِپٗؤُمْبوَ', 'yalipoumbwa');
INSERT INTO maisha_mume_words VALUES (1383, 117, 'a', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1321, 112, 'c', 1, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (1322, 112, 'c', 2, 'تَكُوَ', 'ṯakuwa', 'takuwa', '', '', '', '', '', '', 'ṯakuwa', 'تَكُوَ', 'ṯakuwa');
INSERT INTO maisha_mume_words VALUES (1323, 112, 'c', 3, 'مَڠُومُ', 'magūmu', 'magumu', '', '', '', '', '', '', 'magūmu', 'مَڠُومُ', 'magūmu');
INSERT INTO maisha_mume_words VALUES (1337, 113, 'd', 2, 'دُنِيَ', 'ḏuniya', 'duniya', '', '', '', '', '', '', 'ḏuniya', 'دُنِيَ', 'ḏuniya');
INSERT INTO maisha_mume_words VALUES (1359, 115, 'c', 1, 'مَأَدَامُ', 'maaḏāmu', 'maadamu', '', '', '', '', '', '', 'maaḏāmu', 'مَأَدَامُ', 'maaḏāmu');
INSERT INTO maisha_mume_words VALUES (1349, 114, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1350, 114, 'd', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (1338, 114, 'a', 1, 'هِينِ', 'hı̄ni', 'hini', '', '', '', '', '', '', 'hı̄ni', 'هِينِ', 'hı̄ni');
INSERT INTO maisha_mume_words VALUES (1339, 114, 'a', 2, 'نْدِينٗ', 'nḏı̄no', 'ndino', '', '', '', '', '', '', 'nḏı̄no', 'نْدِينٗ', 'nḏı̄no');
INSERT INTO maisha_mume_words VALUES (1340, 114, 'a', 3, 'كَوَئِيدَ', 'kawaı̄ḏa', 'kawaida', '', '', '', '', '', '', 'kawaı̄ḏa', 'كَوَئِيدَ', 'kawaı̄ḏa');
INSERT INTO maisha_mume_words VALUES (1351, 114, 'd', 3, 'هُوَپِتِيَ', 'huwapiṯiya', 'huwapitiya', '', '', '', '', '', '', 'huwapiṯiya', 'هُوَپِتِيَ', 'huwapiṯiya');
INSERT INTO maisha_mume_words VALUES (1341, 114, 'b', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (1342, 114, 'b', 2, 'رَاهَ', 'rāha', 'raha', '', '', '', '', '', '', 'rāha', 'رَاهَ', 'rāha');
INSERT INTO maisha_mume_words VALUES (1343, 114, 'b', 3, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (1344, 114, 'b', 4, 'شِيدَ', 'shı̄ḏa', 'shida', '', '', '', '', '', '', 'shı̄ḏa', 'شِيدَ', 'shı̄ḏa');
INSERT INTO maisha_mume_words VALUES (1360, 115, 'c', 2, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (1361, 115, 'c', 3, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (1352, 115, 'a', 1, 'بَاسِ', 'bāsi', 'basi', '', '', '', '', '', '', 'bāsi', 'بَاسِ', 'bāsi');
INSERT INTO maisha_mume_words VALUES (1354, 115, 'a', 3, 'كْوَاكٗ', 'kwāko', 'kwako', '', '', '', '', '', '', 'kwāko', 'كْوَاكٗ', 'kwāko');
INSERT INTO maisha_mume_words VALUES (1355, 115, 'a', 4, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (1366, 116, 'a', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1367, 116, 'a', 2, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (1368, 116, 'a', 3, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (1356, 115, 'b', 1, 'سِؤٗوتٖ', 'siōṯe', 'siote', '', '', '', '', '', '', 'siōṯe', 'سِؤٗوتٖ', 'siōṯe');
INSERT INTO maisha_mume_words VALUES (1357, 115, 'b', 2, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (1358, 115, 'b', 3, 'پٖپٗونِ', 'pepōni', 'peponi', '', '', '', '', '', '', 'pepōni', 'پٖپٗونِ', 'pepōni');
INSERT INTO maisha_mume_words VALUES (1362, 115, 'd', 1, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (1363, 115, 'd', 2, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (1364, 115, 'd', 3, 'پوٖيكٖ', 'pwēke', 'pweke', '', '', '', '', '', '', 'pwēke', 'پوٖيكٖ', 'pwēke');
INSERT INTO maisha_mume_words VALUES (1365, 115, 'd', 4, 'ممٗويَ', 'mmōya', 'mmoya', '', '', '', '', '', '', 'mmōya', 'ممٗويَ', 'mmōya');
INSERT INTO maisha_mume_words VALUES (1369, 116, 'a', 4, 'كِڤُولِ', 'kivūli', 'kivuli', '', '', '', '', '', '', 'kivūli', 'كِڤُولِ', 'kivūli');
INSERT INTO maisha_mume_words VALUES (1375, 116, 'c', 1, 'أُونَ', 'ūna', 'una', '', '', '', '', '', '', 'ūna', 'أُونَ', 'ūna');
INSERT INTO maisha_mume_words VALUES (1370, 116, 'b', 1, 'بَالِ', 'bāli', 'bali', '', '', '', '', '', '', 'bāli', 'بَالِ', 'bāli');
INSERT INTO maisha_mume_words VALUES (1371, 116, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1372, 116, 'b', 3, 'مْتُ', 'mṯu', 'mtu', '', '', '', '', '', '', 'mṯu', 'مْتُ', 'mṯu');
INSERT INTO maisha_mume_words VALUES (1373, 116, 'b', 4, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (1374, 116, 'b', 5, 'پِيلِ', 'pı̄li', 'pili', '', '', '', '', '', '', 'pı̄li', 'پِيلِ', 'pı̄li');
INSERT INTO maisha_mume_words VALUES (1376, 116, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1377, 116, 'c', 3, 'يَاكٖ', 'yāke', 'yake', '', '', '', '', '', '', 'yāke', 'يَاكٖ', 'yāke');
INSERT INTO maisha_mume_words VALUES (1378, 116, 'c', 4, 'أَكِيلِ', 'akı̄li', 'akili', '', '', '', '', '', '', 'akı̄li', 'أَكِيلِ', 'akı̄li');
INSERT INTO maisha_mume_words VALUES (1384, 117, 'a', 3, 'لَزِيمَ', 'lazı̄ma', 'lazima', '', '', '', '', '', '', 'lazı̄ma', 'لَزِيمَ', 'lazı̄ma');
INSERT INTO maisha_mume_words VALUES (1386, 117, 'b', 2, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (1382, 117, 'a', 1, 'أُسِتَاكٖ', 'usiṯāke', 'usitake', '', '', '', '', '', '', 'usiṯāke', 'أُسِتَاكٖ', 'usiṯāke');
INSERT INTO maisha_mume_words VALUES (1387, 117, 'b', 3, 'أُكِسٖيمَ', 'ukisēma', 'ukisema', '', '', '', '', '', '', 'ukisēma', 'أُكِسٖيمَ', 'ukisēma');
INSERT INTO maisha_mume_words VALUES (1389, 117, 'c', 2, 'دَئِيمَ', 'ḏaı̄ma', 'daima', '', '', '', '', '', '', 'ḏaı̄ma', 'دَئِيمَ', 'ḏaı̄ma');
INSERT INTO maisha_mume_words VALUES (1385, 117, 'b', 1, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (1388, 117, 'c', 1, 'أَلِكُبَالِ', 'alikubāli', 'alikubali', '', '', '', '', '', '', 'alikubāli', 'أَلِكُبَالِ', 'alikubāli');
INSERT INTO maisha_mume_words VALUES (1438, 122, 'a', 3, 'تِزَامَ', 'ṯizāma', 'tizama', '', '', '', '', '', '', 'ṯizāma', 'تِزَامَ', 'ṯizāma');
INSERT INTO maisha_mume_words VALUES (1390, 117, 'd', 1, 'پَاپٗ', 'pāpo', 'papo', '', '', '', '', '', '', 'pāpo', 'پَاپٗ', 'pāpo');
INSERT INTO maisha_mume_words VALUES (1391, 117, 'd', 2, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (1392, 117, 'd', 3, 'كُرِذِيَ', 'kuridhiya', 'kuridhiya', '', '', '', '', '', '', 'kuridhiya', 'كُرِذِيَ', 'kuridhiya');
INSERT INTO maisha_mume_words VALUES (1419, 120, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1420, 120, 'c', 2, 'فَئِيدَ', 'faı̄ḏa', 'faida', '', '', '', '', '', '', 'faı̄ḏa', 'فَئِيدَ', 'faı̄ḏa');
INSERT INTO maisha_mume_words VALUES (1393, 118, 'a', 1, 'مُؤَتِيٖ', 'muaṯiye', 'muatiye', '', '', '', '', '', '', 'muaṯiye', 'مُؤَتِيٖ', 'muaṯiye');
INSERT INTO maisha_mume_words VALUES (1394, 118, 'a', 2, 'مَكَوَانْدَ', 'makawānḏa', 'makawanda', '', '', '', '', '', '', 'makawānḏa', 'مَكَوَانْدَ', 'makawānḏa');
INSERT INTO maisha_mume_words VALUES (2414, 205, 'c', 3, 'وٖيمَ', 'wēma', 'wema', '', '', '', '', '', '', 'wēma', 'وٖيمَ', 'wēma');
INSERT INTO maisha_mume_words VALUES (1421, 120, 'c', 3, 'أُتَؤٗونَ', 'uṯaōna', 'utaona', '', '', '', '', '', '', 'uṯaōna', 'أُتَؤٗونَ', 'uṯaōna');
INSERT INTO maisha_mume_words VALUES (1395, 118, 'b', 1, 'أَنٖينٖ', 'anēne', 'anene', '', '', '', '', '', '', 'anēne', 'أَنٖينٖ', 'anēne');
INSERT INTO maisha_mume_words VALUES (1396, 118, 'b', 2, 'أَنٗلِپٖينْدَ', 'anolipēnḏa', 'anolipenda', '', '', '', '', '', '', 'anolipēnḏa', 'أَنٗلِپٖينْدَ', 'anolipēnḏa');
INSERT INTO maisha_mume_words VALUES (1455, 123, 'd', 1, 'كُنِيزٖ', 'kunı̄ze', 'kunize', '', '', '', '', '', '', 'kunı̄ze', 'كُنِيزٖ', 'kunı̄ze');
INSERT INTO maisha_mume_words VALUES (1397, 118, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1398, 118, 'c', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1399, 118, 'c', 3, 'هُوجَ', 'hūja', 'huja', '', '', '', '', '', '', 'hūja', 'هُوجَ', 'hūja');
INSERT INTO maisha_mume_words VALUES (2613, 222, 'a', 2, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (1400, 118, 'c', 4, 'كِكُشِينْدَ', 'kikushı̄nḏa', 'kikushinda', '', '', '', '', '', '', 'kikushı̄nḏa', 'كِكُشِينْدَ', 'kikushı̄nḏa');
INSERT INTO maisha_mume_words VALUES (1449, 123, 'b', 1, 'أُتَزِنْيِيكَ', 'uṯazinı̄ı̄ka', 'utazinyika', '', '', '', '', '', '', 'uṯazinı̄ı̄ka', 'أُتَزِنْيِيكَ', 'uṯazinı̄ı̄ka');
INSERT INTO maisha_mume_words VALUES (1422, 120, 'd', 1, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (1423, 120, 'd', 2, 'تَأَنْدَامَ', 'ṯaanḏāma', 'taandama', '', '', '', '', '', '', 'ṯaanḏāma', 'تَأَنْدَامَ', 'ṯaanḏāma');
INSERT INTO maisha_mume_words VALUES (1401, 118, 'd', 1, 'سِيوٖ', 'sı̄we', 'siwe', '', '', '', '', '', '', 'sı̄we', 'سِيوٖ', 'sı̄we');
INSERT INTO maisha_mume_words VALUES (1402, 118, 'd', 2, 'ڤِيتٗ', 'vı̄ṯo', 'vito', '', '', '', '', '', '', 'vı̄ṯo', 'ڤِيتٗ', 'vı̄ṯo');
INSERT INTO maisha_mume_words VALUES (1403, 118, 'd', 3, 'تَتُمِيَ', 'ṯaṯumiya', 'tatumiya', '', '', '', '', '', '', 'ṯaṯumiya', 'تَتُمِيَ', 'ṯaṯumiya');
INSERT INTO maisha_mume_words VALUES (1424, 120, 'd', 3, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (1404, 119, 'a', 1, 'أُكِؤٗونَ', 'ukiōna', 'ukiona', '', '', '', '', '', '', 'ukiōna', 'أُكِؤٗونَ', 'ukiōna');
INSERT INTO maisha_mume_words VALUES (1405, 119, 'a', 2, 'سَاوَ', 'sāwa', 'sawa', '', '', '', '', '', '', 'sāwa', 'سَاوَ', 'sāwa');
INSERT INTO maisha_mume_words VALUES (1406, 119, 'a', 3, 'نْدَاكٖ', 'nḏāke', 'ndake', '', '', '', '', '', '', 'nḏāke', 'نْدَاكٖ', 'nḏāke');
INSERT INTO maisha_mume_words VALUES (1439, 122, 'b', 1, 'هَؤُزِنْيِيكِ', 'hauzinı̄ı̄ki', 'hauzinyiki', '', '', '', '', '', '', 'hauzinı̄ı̄ki', 'هَؤُزِنْيِيكِ', 'hauzinı̄ı̄ki');
INSERT INTO maisha_mume_words VALUES (1407, 119, 'b', 1, 'إِكُبَالِ', 'ikubāli', 'ikubali', '', '', '', '', '', '', 'ikubāli', 'إِكُبَالِ', 'ikubāli');
INSERT INTO maisha_mume_words VALUES (1408, 119, 'b', 2, 'أُرِذِيكٖ', 'uridhı̄ke', 'uridhike', '', '', '', '', '', '', 'uridhı̄ke', 'أُرِذِيكٖ', 'uridhı̄ke');
INSERT INTO maisha_mume_words VALUES (1440, 122, 'b', 2, 'دَئِيمَ', 'ḏaı̄ma', 'daima', '', '', '', '', '', '', 'ḏaı̄ma', 'دَئِيمَ', 'ḏaı̄ma');
INSERT INTO maisha_mume_words VALUES (1425, 121, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1409, 119, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1410, 119, 'c', 2, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (1411, 119, 'c', 3, 'سِكَسِرِيكٖ', 'sikasirı̄ke', 'sikasirike', '', '', '', '', '', '', 'sikasirı̄ke', 'سِكَسِرِيكٖ', 'sikasirı̄ke');
INSERT INTO maisha_mume_words VALUES (1426, 121, 'a', 2, 'يٖيٖ', 'yeye', 'yeye', '', '', '', '', '', '', 'yeye', 'يٖيٖ', 'yeye');
INSERT INTO maisha_mume_words VALUES (1427, 121, 'a', 3, 'كِكَسِرِيكَ', 'kikasirı̄ka', 'kikasirika', '', '', '', '', '', '', 'kikasirı̄ka', 'كِكَسِرِيكَ', 'kikasirı̄ka');
INSERT INTO maisha_mume_words VALUES (1412, 119, 'd', 1, 'مْدٗومٗ', 'mḏōmo', 'mdomo', '', '', '', '', '', '', 'mḏōmo', 'مْدٗومٗ', 'mḏōmo');
INSERT INTO maisha_mume_words VALUES (1413, 119, 'd', 2, 'كُمْفُنْڠِيَ', 'kumfungiya', 'kumfungiya', '', '', '', '', '', '', 'kumfungiya', 'كُمْفُنْڠِيَ', 'kumfungiya');
INSERT INTO maisha_mume_words VALUES (1414, 120, 'a', 1, 'كُبَالِ', 'kubāli', 'kubali', '', '', '', '', '', '', 'kubāli', 'كُبَالِ', 'kubāli');
INSERT INTO maisha_mume_words VALUES (1415, 120, 'a', 2, 'مٖزٗلِنٖينَ', 'mezolinēna', 'mezolinena', '', '', '', '', '', '', 'mezolinēna', 'مٖزٗلِنٖينَ', 'mezolinēna');
INSERT INTO maisha_mume_words VALUES (1416, 120, 'b', 1, 'أُمُؤُونْڠٖ', 'umuūnge', 'umuunge', '', '', '', '', '', '', 'umuūnge', 'أُمُؤُونْڠٖ', 'umuūnge');
INSERT INTO maisha_mume_words VALUES (1417, 120, 'b', 2, 'تٖينَ', 'ṯēna', 'tena', '', '', '', '', '', '', 'ṯēna', 'تٖينَ', 'ṯēna');
INSERT INTO maisha_mume_words VALUES (1418, 120, 'b', 3, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (1450, 123, 'b', 2, 'مْوٖنْدَانِ', 'mwenḏāni', 'mwendani', '', '', '', '', '', '', 'mwenḏāni', 'مْوٖنْدَانِ', 'mwenḏāni');
INSERT INTO maisha_mume_words VALUES (1428, 121, 'b', 1, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (1429, 121, 'b', 2, 'أُسِپَانْدٖ', 'usipānḏe', 'usipande', '', '', '', '', '', '', 'usipānḏe', 'أُسِپَانْدٖ', 'usipānḏe');
INSERT INTO maisha_mume_words VALUES (1430, 121, 'b', 3, 'شُوكَ', 'shūka', 'shuka', '', '', '', '', '', '', 'shūka', 'شُوكَ', 'shūka');
INSERT INTO maisha_mume_words VALUES (1441, 122, 'c', 1, 'بَالِ', 'bāli', 'bali', '', '', '', '', '', '', 'bāli', 'بَالِ', 'bāli');
INSERT INTO maisha_mume_words VALUES (1431, 121, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1432, 121, 'c', 2, 'أَكِزِيدِ', 'akizı̄ḏi', 'akizidi', '', '', '', '', '', '', 'akizı̄ḏi', 'أَكِزِيدِ', 'akizı̄ḏi');
INSERT INTO maisha_mume_words VALUES (1433, 121, 'c', 3, 'أٗنْدٗوكَ', 'onḏōka', 'ondoka', '', '', '', '', '', '', 'onḏōka', 'أٗنْدٗوكَ', 'onḏōka');
INSERT INTO maisha_mume_words VALUES (1442, 122, 'c', 2, 'هُزِيدِ', 'huzı̄ḏi', 'huzidi', '', '', '', '', '', '', 'huzı̄ḏi', 'هُزِيدِ', 'huzı̄ḏi');
INSERT INTO maisha_mume_words VALUES (1443, 122, 'c', 3, 'رٗرٗومَ', 'rorōma', 'roroma', '', '', '', '', '', '', 'rorōma', 'رٗرٗومَ', 'rorōma');
INSERT INTO maisha_mume_words VALUES (1434, 121, 'd', 1, 'كِشِنْدوَ', 'kishinḏwa', 'kishindwa', '', '', '', '', '', '', 'kishinḏwa', 'كِشِنْدوَ', 'kishinḏwa');
INSERT INTO maisha_mume_words VALUES (1435, 121, 'd', 2, 'كُڤُمِيليَ', 'kuvumı̄lya', 'kuvumilya', '', '', '', '', '', '', 'kuvumı̄lya', 'كُڤُمِيليَ', 'kuvumı̄lya');
INSERT INTO maisha_mume_words VALUES (1436, 122, 'a', 1, 'مْوَنَانْڠُ', 'mwanāngu', 'mwanangu', '', '', '', '', '', '', 'mwanāngu', 'مْوَنَانْڠُ', 'mwanāngu');
INSERT INTO maisha_mume_words VALUES (1456, 123, 'd', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1457, 123, 'd', 3, 'نٖينٗ', 'nēno', 'neno', '', '', '', '', '', '', 'nēno', 'نٖينٗ', 'nēno');
INSERT INTO maisha_mume_words VALUES (1444, 122, 'd', 1, 'كُونِ', 'kūni', 'kuni', '', '', '', '', '', '', 'kūni', 'كُونِ', 'kūni');
INSERT INTO maisha_mume_words VALUES (1445, 122, 'd', 2, 'أُكِؤُتِلِيَ', 'ukiuṯiliya', 'ukiutiliya', '', '', '', '', '', '', 'ukiuṯiliya', 'أُكِؤُتِلِيَ', 'ukiuṯiliya');
INSERT INTO maisha_mume_words VALUES (1458, 123, 'd', 4, 'بَايَ', 'bāya', 'baya', '', '', '', '', '', '', 'bāya', 'بَايَ', 'bāya');
INSERT INTO maisha_mume_words VALUES (1451, 123, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1446, 123, 'a', 1, 'مٗوتٗ', 'mōṯo', 'moto', '', '', '', '', '', '', 'mōṯo', 'مٗوتٗ', 'mōṯo');
INSERT INTO maisha_mume_words VALUES (1447, 123, 'a', 2, 'كِتٗتِيوَ', 'kiṯoṯı̄wa', 'kitotiwa', '', '', '', '', '', '', 'kiṯoṯı̄wa', 'كِتٗتِيوَ', 'kiṯoṯı̄wa');
INSERT INTO maisha_mume_words VALUES (1448, 123, 'a', 3, 'كُونِ', 'kūni', 'kuni', '', '', '', '', '', '', 'kūni', 'كُونِ', 'kūni');
INSERT INTO maisha_mume_words VALUES (1452, 123, 'c', 2, 'أُتٖيسِ', 'uṯēsi', 'utesi', '', '', '', '', '', '', 'uṯēsi', 'أُتٖيسِ', 'uṯēsi');
INSERT INTO maisha_mume_words VALUES (1453, 123, 'c', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (1454, 123, 'c', 4, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (1465, 124, 'b', 4, 'أُسٖيمِ', 'usēmi', 'usemi', '', '', '', '', '', '', 'usēmi', 'أُسٖيمِ', 'usēmi');
INSERT INTO maisha_mume_words VALUES (1467, 124, 'c', 2, 'هَيَكٗومِ', 'hayakōmi', 'hayakomi', '', '', '', '', '', '', 'hayakōmi', 'هَيَكٗومِ', 'hayakōmi');
INSERT INTO maisha_mume_words VALUES (1462, 124, 'b', 1, 'سِيوٖ', 'sı̄we', 'siwe', '', '', '', '', '', '', 'sı̄we', 'سِيوٖ', 'sı̄we');
INSERT INTO maisha_mume_words VALUES (1463, 124, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1464, 124, 'b', 3, 'مْوِينْڠِ', 'mwı̄ngi', 'mwingi', '', '', '', '', '', '', 'mwı̄ngi', 'مْوِينْڠِ', 'mwı̄ngi');
INSERT INTO maisha_mume_words VALUES (1459, 124, 'a', 1, 'زِوِيَ', 'ziwiya', 'ziwiya', '', '', '', '', '', '', 'ziwiya', 'زِوِيَ', 'ziwiya');
INSERT INTO maisha_mume_words VALUES (1460, 124, 'a', 2, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (1461, 124, 'a', 3, 'أُلِيمِ', 'ulı̄mi', 'ulimi', '', '', '', '', '', '', 'ulı̄mi', 'أُلِيمِ', 'ulı̄mi');
INSERT INTO maisha_mume_words VALUES (1471, 125, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1466, 124, 'c', 1, 'أُكِنٖينَ', 'ukinēna', 'ukinena', '', '', '', '', '', '', 'ukinēna', 'أُكِنٖينَ', 'ukinēna');
INSERT INTO maisha_mume_words VALUES (1469, 124, 'd', 2, 'هُئٖنْدٖلٖيَ', 'huenḏeleya', 'huendeleya', '', '', '', '', '', '', 'huenḏeleya', 'هُئٖنْدٖلٖيَ', 'huenḏeleya');
INSERT INTO maisha_mume_words VALUES (1468, 124, 'd', 1, 'مَنٖينٗ', 'manēno', 'maneno', '', '', '', '', '', '', 'manēno', 'مَنٖينٗ', 'manēno');
INSERT INTO maisha_mume_words VALUES (1472, 125, 'a', 3, 'كُئِكُكُوسَ', 'kuikukūsa', 'kuikukusa', '', '', '', '', '', '', 'kuikukūsa', 'كُئِكُكُوسَ', 'kuikukūsa');
INSERT INTO maisha_mume_words VALUES (1474, 125, 'b', 2, 'كُتٗتَپَاسَ', 'kuṯoṯapāsa', 'kutotapasa', '', '', '', '', '', '', 'kuṯoṯapāsa', 'كُتٗتَپَاسَ', 'kuṯoṯapāsa');
INSERT INTO maisha_mume_words VALUES (1470, 125, 'a', 1, 'زِيدِ', 'zı̄ḏi', 'zidi', '', '', '', '', '', '', 'zı̄ḏi', 'زِيدِ', 'zı̄ḏi');
INSERT INTO maisha_mume_words VALUES (1476, 125, 'c', 2, 'زٖينُ', 'zēnu', 'zenu', '', '', '', '', '', '', 'zēnu', 'زٖينُ', 'zēnu');
INSERT INTO maisha_mume_words VALUES (1473, 125, 'b', 1, 'أُلِيمِ', 'ulı̄mi', 'ulimi', '', '', '', '', '', '', 'ulı̄mi', 'أُلِيمِ', 'ulı̄mi');
INSERT INTO maisha_mume_words VALUES (1477, 125, 'c', 3, 'زِتَكْوِيسَ', 'ziṯakwı̄sa', 'zitakwisa', '', '', '', '', '', '', 'ziṯakwı̄sa', 'زِتَكْوِيسَ', 'ziṯakwı̄sa');
INSERT INTO maisha_mume_words VALUES (1475, 125, 'c', 1, 'زِيتَ', 'zı̄ṯa', 'zita', '', '', '', '', '', '', 'zı̄ṯa', 'زِيتَ', 'zı̄ṯa');
INSERT INTO maisha_mume_words VALUES (1478, 125, 'd', 1, 'مٗوتٗ', 'mōṯo', 'moto', '', '', '', '', '', '', 'mōṯo', 'مٗوتٗ', 'mōṯo');
INSERT INTO maisha_mume_words VALUES (1479, 125, 'd', 2, 'مَايِ', 'māyi', 'mayi', '', '', '', '', '', '', 'māyi', 'مَايِ', 'māyi');
INSERT INTO maisha_mume_words VALUES (1480, 125, 'd', 3, 'هُتَتِيَ', 'huṯaṯiya', 'hutatiya', '', '', '', '', '', '', 'huṯaṯiya', 'هُتَتِيَ', 'huṯaṯiya');
INSERT INTO maisha_mume_words VALUES (1511, 128, 'b', 1, 'كِؤُومْبٖ', 'kiūmbe', 'kiumbe', '', '', '', '', '', '', 'kiūmbe', 'كِؤُومْبٖ', 'kiūmbe');
INSERT INTO maisha_mume_words VALUES (1512, 128, 'b', 2, 'كَمِيلِ', 'kamı̄li', 'kamili', '', '', '', '', '', '', 'kamı̄li', 'كَمِيلِ', 'kamı̄li');
INSERT INTO maisha_mume_words VALUES (1481, 126, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1482, 126, 'a', 2, 'أَالٗ', 'ālo', 'alo', '', '', '', '', '', '', 'ālo', 'أَالٗ', 'ālo');
INSERT INTO maisha_mume_words VALUES (1483, 126, 'a', 3, 'مُومٖ', 'mūme', 'mume', '', '', '', '', '', '', 'mūme', 'مُومٖ', 'mūme');
INSERT INTO maisha_mume_words VALUES (1484, 126, 'a', 4, 'هٗدَارِ', 'hoḏāri', 'hodari', '', '', '', '', '', '', 'hoḏāri', 'هٗدَارِ', 'hoḏāri');
INSERT INTO maisha_mume_words VALUES (1513, 128, 'b', 3, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (1485, 126, 'b', 1, 'كِشِنْدوَ', 'kishinḏwa', 'kishindwa', '', '', '', '', '', '', 'kishinḏwa', 'كِشِنْدوَ', 'kishinḏwa');
INSERT INTO maisha_mume_words VALUES (1486, 126, 'b', 2, 'يٖيٖ', 'yeye', 'yeye', '', '', '', '', '', '', 'yeye', 'يٖيٖ', 'yeye');
INSERT INTO maisha_mume_words VALUES (1487, 126, 'b', 3, 'هُكِيرِ', 'hukı̄ri', 'hukiri', '', '', '', '', '', '', 'hukı̄ri', 'هُكِيرِ', 'hukı̄ri');
INSERT INTO maisha_mume_words VALUES (1488, 126, 'c', 1, 'إِيلِ', 'ı̄li', 'ili', '', '', '', '', '', '', 'ı̄li', 'إِيلِ', 'ı̄li');
INSERT INTO maisha_mume_words VALUES (1489, 126, 'c', 2, 'كْوٖپُوكَ', 'kwepūka', 'kwepuka', '', '', '', '', '', '', 'kwepūka', 'كْوٖپُوكَ', 'kwepūka');
INSERT INTO maisha_mume_words VALUES (1490, 126, 'c', 3, 'دٗثَارِ', 'ḏothāri', 'dothari', '', '', '', '', '', '', 'ḏothāri', 'دٗثَارِ', 'ḏothāri');
INSERT INTO maisha_mume_words VALUES (1542, 130, 'd', 1, 'هُزِدِيَانَ', 'huziḏiyāna', 'huzidiyana', '', '', '', '', '', '', 'huziḏiyāna', 'هُزِدِيَانَ', 'huziḏiyāna');
INSERT INTO maisha_mume_words VALUES (1514, 128, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1515, 128, 'c', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (1516, 128, 'c', 3, 'هُتُكُوَانَ', 'huṯukuwāna', 'hutukuwana', '', '', '', '', '', '', 'huṯukuwāna', 'هُتُكُوَانَ', 'huṯukuwāna');
INSERT INTO maisha_mume_words VALUES (1491, 126, 'd', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1492, 126, 'd', 2, 'أُوفَ', 'ūfa', 'ufa', '', '', '', '', '', '', 'ūfa', 'أُوفَ', 'ūfa');
INSERT INTO maisha_mume_words VALUES (1493, 126, 'd', 3, 'سِينِ', 'sı̄ni', 'sini', '', '', '', '', '', '', 'sı̄ni', 'سِينِ', 'sı̄ni');
INSERT INTO maisha_mume_words VALUES (1494, 126, 'd', 4, 'كُتِيَ', 'kuṯiya', 'kutiya', '', '', '', '', '', '', 'kuṯiya', 'كُتِيَ', 'kuṯiya');
INSERT INTO maisha_mume_words VALUES (1495, 127, 'a', 1, 'سِينِ', 'sı̄ni', 'sini', '', '', '', '', '', '', 'sı̄ni', 'سِينِ', 'sı̄ni');
INSERT INTO maisha_mume_words VALUES (1496, 127, 'a', 2, 'إِكِنْڠِيَ', 'ikingiya', 'ikingiya', '', '', '', '', '', '', 'ikingiya', 'إِكِنْڠِيَ', 'ikingiya');
INSERT INTO maisha_mume_words VALUES (1497, 127, 'a', 3, 'أُوفَ', 'ūfa', 'ufa', '', '', '', '', '', '', 'ūfa', 'أُوفَ', 'ūfa');
INSERT INTO maisha_mume_words VALUES (1543, 130, 'd', 2, 'توَبِيَ', 'ṯwabiya', 'twabiya', '', '', '', '', '', '', 'ṯwabiya', 'توَبِيَ', 'ṯwabiya');
INSERT INTO maisha_mume_words VALUES (1498, 127, 'b', 1, 'هُپُنْڠُوَ', 'hupunguwa', 'hupunguwa', '', '', '', '', '', '', 'hupunguwa', 'هُپُنْڠُوَ', 'hupunguwa');
INSERT INTO maisha_mume_words VALUES (1499, 127, 'b', 2, 'زَاكٖ', 'zāke', 'zake', '', '', '', '', '', '', 'zāke', 'زَاكٖ', 'zāke');
INSERT INTO maisha_mume_words VALUES (1500, 127, 'b', 3, 'سِيفَ', 'sı̄fa', 'sifa', '', '', '', '', '', '', 'sı̄fa', 'سِيفَ', 'sı̄fa');
INSERT INTO maisha_mume_words VALUES (1517, 128, 'd', 1, 'نْدِيپٗ', 'nḏı̄po', 'ndipo', '', '', '', '', '', '', 'nḏı̄po', 'نْدِيپٗ', 'nḏı̄po');
INSERT INTO maisha_mume_words VALUES (1518, 128, 'd', 2, 'وَئِيشِ', 'waı̄shi', 'waishi', '', '', '', '', '', '', 'waı̄shi', 'وَئِيشِ', 'waı̄shi');
INSERT INTO maisha_mume_words VALUES (1519, 128, 'd', 3, 'پَمٗويَ', 'pamōya', 'pamoya', '', '', '', '', '', '', 'pamōya', 'پَمٗويَ', 'pamōya');
INSERT INTO maisha_mume_words VALUES (1501, 127, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1502, 127, 'c', 2, 'مَهَابَ', 'mahāba', 'mahaba', '', '', '', '', '', '', 'mahāba', 'مَهَابَ', 'mahāba');
INSERT INTO maisha_mume_words VALUES (1503, 127, 'c', 3, 'نَايٗ', 'nāyo', 'nayo', '', '', '', '', '', '', 'nāyo', 'نَايٗ', 'nāyo');
INSERT INTO maisha_mume_words VALUES (1504, 127, 'c', 4, 'هُوفَ', 'hūfa', 'hufa', '', '', '', '', '', '', 'hūfa', 'هُوفَ', 'hūfa');
INSERT INTO maisha_mume_words VALUES (1531, 130, 'a', 1, 'أَاسٗ', 'āso', 'aso', '', '', '', '', '', '', 'āso', 'أَاسٗ', 'āso');
INSERT INTO maisha_mume_words VALUES (1505, 127, 'd', 1, 'أُكِيوَ', 'ukı̄wa', 'ukiwa', '', '', '', '', '', '', 'ukı̄wa', 'أُكِيوَ', 'ukı̄wa');
INSERT INTO maisha_mume_words VALUES (1506, 127, 'd', 2, 'مْوِينْڠِ', 'mwı̄ngi', 'mwingi', '', '', '', '', '', '', 'mwı̄ngi', 'مْوِينْڠِ', 'mwı̄ngi');
INSERT INTO maisha_mume_words VALUES (1507, 127, 'd', 3, 'أُذِيَ', 'udhiya', 'udhiya', '', '', '', '', '', '', 'udhiya', 'أُذِيَ', 'udhiya');
INSERT INTO maisha_mume_words VALUES (1532, 130, 'a', 2, 'تَاءَ', 'ṯāa', 'taa', '', '', '', '', '', '', 'ṯāa', 'تَاءَ', 'ṯāa');
INSERT INTO maisha_mume_words VALUES (1533, 130, 'a', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1520, 129, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1508, 128, 'a', 1, 'هَكُونَ', 'hakūna', 'hakuna', '', '', '', '', '', '', 'hakūna', 'هَكُونَ', 'hakūna');
INSERT INTO maisha_mume_words VALUES (1509, 128, 'a', 2, 'كَاتُ', 'kāṯu', 'katu', '', '', '', '', '', '', 'kāṯu', 'كَاتُ', 'kāṯu');
INSERT INTO maisha_mume_words VALUES (1510, 128, 'a', 3, 'هَكُونَ', 'hakūna', 'hakuna', '', '', '', '', '', '', 'hakūna', 'هَكُونَ', 'hakūna');
INSERT INTO maisha_mume_words VALUES (1521, 129, 'a', 2, 'لَزِيمَ', 'lazı̄ma', 'lazima', '', '', '', '', '', '', 'lazı̄ma', 'لَزِيمَ', 'lazı̄ma');
INSERT INTO maisha_mume_words VALUES (1522, 129, 'a', 3, 'وَتَاكَ', 'waṯāka', 'wataka', '', '', '', '', '', '', 'waṯāka', 'وَتَاكَ', 'waṯāka');
INSERT INTO maisha_mume_words VALUES (1534, 130, 'a', 4, 'تٗمٗومٗ', 'ṯomōmo', 'tomomo', '', '', '', '', '', '', 'ṯomōmo', 'تٗمٗومٗ', 'ṯomōmo');
INSERT INTO maisha_mume_words VALUES (1523, 129, 'b', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1524, 129, 'b', 2, 'أَلٗكَمِلِيكَ', 'alokamilı̄ka', 'alokamilika', '', '', '', '', '', '', 'alokamilı̄ka', 'أَلٗكَمِلِيكَ', 'alokamilı̄ka');
INSERT INTO maisha_mume_words VALUES (1554, 132, 'a', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1525, 129, 'c', 1, 'جُوَ', 'juwa', 'juwa', '', '', '', '', '', '', 'juwa', 'جُوَ', 'juwa');
INSERT INTO maisha_mume_words VALUES (1526, 129, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1527, 129, 'c', 3, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (1528, 129, 'c', 4, 'هَكِيكَ', 'hakı̄ka', 'hakika', '', '', '', '', '', '', 'hakı̄ka', 'هَكِيكَ', 'hakı̄ka');
INSERT INTO maisha_mume_words VALUES (1555, 132, 'a', 3, 'جٗونْڠٗ', 'jōngo', 'jongo', '', '', '', '', '', '', 'jōngo', 'جٗونْڠٗ', 'jōngo');
INSERT INTO maisha_mume_words VALUES (1544, 131, 'a', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1529, 129, 'd', 1, 'تَكُبِيدِ', 'ṯakubı̄ḏi', 'takubidi', '', '', '', '', '', '', 'ṯakubı̄ḏi', 'تَكُبِيدِ', 'ṯakubı̄ḏi');
INSERT INTO maisha_mume_words VALUES (1545, 131, 'a', 2, 'كِكُكَسِرِيشَ', 'kikukasirı̄sha', 'kikukasirisha', '', '', '', '', '', '', 'kikukasirı̄sha', 'كِكُكَسِرِيشَ', 'kikukasirı̄sha');
INSERT INTO maisha_mume_words VALUES (1535, 130, 'b', 1, 'هُونُ', 'hūnu', 'hunu', '', '', '', '', '', '', 'hūnu', 'هُونُ', 'hūnu');
INSERT INTO maisha_mume_words VALUES (1536, 130, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1537, 130, 'b', 3, 'كْوٖيلِ', 'kwēli', 'kweli', '', '', '', '', '', '', 'kwēli', 'كْوٖيلِ', 'kwēli');
INSERT INTO maisha_mume_words VALUES (1538, 130, 'b', 4, 'مْسٖيمٗ', 'msēmo', 'msemo', '', '', '', '', '', '', 'msēmo', 'مْسٖيمٗ', 'msēmo');
INSERT INTO maisha_mume_words VALUES (1550, 131, 'd', 1, 'مٖزَانِ', 'mezāni', 'mezani', '', '', '', '', '', '', 'mezāni', 'مٖزَانِ', 'mezāni');
INSERT INTO maisha_mume_words VALUES (1539, 130, 'c', 1, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (1540, 130, 'c', 2, 'هُپِتَانَ', 'hupiṯāna', 'hupitana', '', '', '', '', '', '', 'hupiṯāna', 'هُپِتَانَ', 'hupiṯāna');
INSERT INTO maisha_mume_words VALUES (1541, 130, 'c', 3, 'زِيمٗ', 'zı̄mo', 'zimo', '', '', '', '', '', '', 'zı̄mo', 'زِيمٗ', 'zı̄mo');
INSERT INTO maisha_mume_words VALUES (1551, 131, 'd', 2, 'هِينِ', 'hı̄ni', 'hini', '', '', '', '', '', '', 'hı̄ni', 'هِينِ', 'hı̄ni');
INSERT INTO maisha_mume_words VALUES (1552, 131, 'd', 3, 'تُمِيَ', 'ṯumiya', 'tumiya', '', '', '', '', '', '', 'ṯumiya', 'تُمِيَ', 'ṯumiya');
INSERT INTO maisha_mume_words VALUES (1546, 131, 'b', 1, 'جَرِيبُ', 'jarı̄bu', 'jaribu', '', '', '', '', '', '', 'jarı̄bu', 'جَرِيبُ', 'jarı̄bu');
INSERT INTO maisha_mume_words VALUES (1547, 131, 'b', 2, 'كُيِكُمْبُوشَ', 'kuyikumbūsha', 'kuyikumbusha', '', '', '', '', '', '', 'kuyikumbūsha', 'كُيِكُمْبُوشَ', 'kuyikumbūsha');
INSERT INTO maisha_mume_words VALUES (1548, 131, 'c', 1, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (1549, 131, 'c', 2, 'هُكُفُرَهِيشَ', 'hukufurahı̄sha', 'hukufurahisha', '', '', '', '', '', '', 'hukufurahı̄sha', 'هُكُفُرَهِيشَ', 'hukufurahı̄sha');
INSERT INTO maisha_mume_words VALUES (1561, 132, 'c', 2, 'پٖينْيٖ', 'pēnye', 'penye', '', '', '', '', '', '', 'pēnye', 'پٖينْيٖ', 'pēnye');
INSERT INTO maisha_mume_words VALUES (1556, 132, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1553, 132, 'a', 1, 'أُسِيَؤٗونٖ', 'usiyaōne', 'usiyaone', '', '', '', '', '', '', 'usiyaōne', 'أُسِيَؤٗونٖ', 'usiyaōne');
INSERT INTO maisha_mume_words VALUES (1562, 132, 'c', 3, 'پٖينْڠٗ', 'pēngo', 'pengo', '', '', '', '', '', '', 'pēngo', 'پٖينْڠٗ', 'pēngo');
INSERT INTO maisha_mume_words VALUES (1564, 132, 'd', 2, 'پَلٗتِمِيَ', 'paloṯimiya', 'palotimiya', '', '', '', '', '', '', 'paloṯimiya', 'پَلٗتِمِيَ', 'paloṯimiya');
INSERT INTO maisha_mume_words VALUES (1560, 132, 'c', 1, 'سَنْڠَلِيٖ', 'sangaliye', 'sangaliye', '', '', '', '', '', '', 'sangaliye', 'سَنْڠَلِيٖ', 'sangaliye');
INSERT INTO maisha_mume_words VALUES (1557, 132, 'b', 2, 'مٖيمَ', 'mēma', 'mema', '', '', '', '', '', '', 'mēma', 'مٖيمَ', 'mēma');
INSERT INTO maisha_mume_words VALUES (1558, 132, 'b', 3, 'أُكَاوَ', 'ukāwa', 'ukawa', '', '', '', '', '', '', 'ukāwa', 'أُكَاوَ', 'ukāwa');
INSERT INTO maisha_mume_words VALUES (1559, 132, 'b', 4, 'تٗونْڠٗ', 'ṯōngo', 'tongo', '', '', '', '', '', '', 'ṯōngo', 'تٗونْڠٗ', 'ṯōngo');
INSERT INTO maisha_mume_words VALUES (1566, 133, 'a', 2, 'بُودِ', 'būḏi', 'budi', '', '', '', '', '', '', 'būḏi', 'بُودِ', 'būḏi');
INSERT INTO maisha_mume_words VALUES (1563, 132, 'd', 1, 'كَوَاتَ', 'kawāṯa', 'kawata', '', '', '', '', '', '', 'kawāṯa', 'كَوَاتَ', 'kawāṯa');
INSERT INTO maisha_mume_words VALUES (1567, 133, 'a', 3, 'كُپُؤُوزَ', 'kupuūza', 'kupuuza', '', '', '', '', '', '', 'kupuūza', 'كُپُؤُوزَ', 'kupuūza');
INSERT INTO maisha_mume_words VALUES (1569, 133, 'b', 2, 'مَنْڠِينٖ', 'mangı̄ne', 'mangine', '', '', '', '', '', '', 'mangı̄ne', 'مَنْڠِينٖ', 'mangı̄ne');
INSERT INTO maisha_mume_words VALUES (1565, 133, 'a', 1, 'هُونَ', 'hūna', 'huna', '', '', '', '', '', '', 'hūna', 'هُونَ', 'hūna');
INSERT INTO maisha_mume_words VALUES (1570, 133, 'b', 3, 'كُيَمِيزَ', 'kuyamı̄za', 'kuyamiza', '', '', '', '', '', '', 'kuyamı̄za', 'كُيَمِيزَ', 'kuyamı̄za');
INSERT INTO maisha_mume_words VALUES (1568, 133, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1571, 133, 'c', 1, 'نْدِيپٗ', 'nḏı̄po', 'ndipo', '', '', '', '', '', '', 'nḏı̄po', 'نْدِيپٗ', 'nḏı̄po');
INSERT INTO maisha_mume_words VALUES (1572, 133, 'c', 2, 'مُوٖيزٖ', 'muwēze', 'muweze', '', '', '', '', '', '', 'muwēze', 'مُوٖيزٖ', 'muwēze');
INSERT INTO maisha_mume_words VALUES (1573, 133, 'c', 3, 'كُفُوزَ', 'kufūza', 'kufuza', '', '', '', '', '', '', 'kufūza', 'كُفُوزَ', 'kufūza');
INSERT INTO maisha_mume_words VALUES (1601, 136, 'b', 1, 'هَؤُكِيرِ', 'haukı̄ri', 'haukiri', '', '', '', '', '', '', 'haukı̄ri', 'هَؤُكِيرِ', 'haukı̄ri');
INSERT INTO maisha_mume_words VALUES (1602, 136, 'b', 2, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (1603, 136, 'b', 3, 'أُوتُ', 'ūṯu', 'utu', '', '', '', '', '', '', 'ūṯu', 'أُوتُ', 'ūṯu');
INSERT INTO maisha_mume_words VALUES (1574, 133, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1575, 133, 'd', 2, 'مَئِيشَ', 'maı̄sha', 'maisha', '', '', '', '', '', '', 'maı̄sha', 'مَئِيشَ', 'maı̄sha');
INSERT INTO maisha_mume_words VALUES (1576, 133, 'd', 3, 'كْوٖنْدٖلٖيَ', 'kwenḏeleya', 'kwendeleya', '', '', '', '', '', '', 'kwenḏeleya', 'كْوٖنْدٖلٖيَ', 'kwenḏeleya');
INSERT INTO maisha_mume_words VALUES (1577, 134, 'a', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1578, 134, 'a', 2, 'كِتٖينْدَ', 'kiṯēnḏa', 'kitenda', '', '', '', '', '', '', 'kiṯēnḏa', 'كِتٖينْدَ', 'kiṯēnḏa');
INSERT INTO maisha_mume_words VALUES (1579, 134, 'a', 3, 'مَكٗوسَ', 'makōsa', 'makosa', '', '', '', '', '', '', 'makōsa', 'مَكٗوسَ', 'makōsa');
INSERT INTO maisha_mume_words VALUES (1632, 138, 'd', 1, 'مَنْڠِينٖ', 'mangı̄ne', 'mangine', '', '', '', '', '', '', 'mangı̄ne', 'مَنْڠِينٖ', 'mangı̄ne');
INSERT INTO maisha_mume_words VALUES (1580, 134, 'b', 1, 'كُمْوَمْبِيَ', 'kumwambiya', 'kumwambiya', '', '', '', '', '', '', 'kumwambiya', 'كُمْوَمْبِيَ', 'kumwambiya');
INSERT INTO maisha_mume_words VALUES (1581, 134, 'b', 2, 'يَكُپَاسَ', 'yakupāsa', 'yakupasa', '', '', '', '', '', '', 'yakupāsa', 'يَكُپَاسَ', 'yakupāsa');
INSERT INTO maisha_mume_words VALUES (1633, 138, 'd', 2, 'كُڤُمِلِيَ', 'kuvumiliya', 'kuvumiliya', '', '', '', '', '', '', 'kuvumiliya', 'كُڤُمِلِيَ', 'kuvumiliya');
INSERT INTO maisha_mume_words VALUES (1604, 136, 'c', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (1605, 136, 'c', 2, 'هُتٖنْڠٖيزِ', 'huṯengēzi', 'hutengezi', '', '', '', '', '', '', 'huṯengēzi', 'هُتٖنْڠٖيزِ', 'huṯengēzi');
INSERT INTO maisha_mume_words VALUES (1606, 136, 'c', 3, 'كِيتُ', 'kı̄ṯu', 'kitu', '', '', '', '', '', '', 'kı̄ṯu', 'كِيتُ', 'kı̄ṯu');
INSERT INTO maisha_mume_words VALUES (1582, 134, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1583, 134, 'c', 2, 'هِشِيمَ', 'hishı̄ma', 'hishima', '', '', '', '', '', '', 'hishı̄ma', 'هِشِيمَ', 'hishı̄ma');
INSERT INTO maisha_mume_words VALUES (1584, 134, 'c', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1585, 134, 'c', 4, 'سِيَاسَ', 'siyāsa', 'siyasa', '', '', '', '', '', '', 'siyāsa', 'سِيَاسَ', 'siyāsa');
INSERT INTO maisha_mume_words VALUES (1586, 134, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1587, 134, 'd', 2, 'هِكِيمَ', 'hikı̄ma', 'hikima', '', '', '', '', '', '', 'hikı̄ma', 'هِكِيمَ', 'hikı̄ma');
INSERT INTO maisha_mume_words VALUES (1588, 134, 'd', 3, 'كُتُمِيَ', 'kuṯumiya', 'kutumiya', '', '', '', '', '', '', 'kuṯumiya', 'كُتُمِيَ', 'kuṯumiya');
INSERT INTO maisha_mume_words VALUES (1622, 137, 'd', 1, 'نْدِيپٗ', 'nḏı̄po', 'ndipo', '', '', '', '', '', '', 'nḏı̄po', 'نْدِيپٗ', 'nḏı̄po');
INSERT INTO maisha_mume_words VALUES (1589, 135, 'a', 1, 'كٗوسَ', 'kōsa', 'kosa', '', '', '', '', '', '', 'kōsa', 'كٗوسَ', 'kōsa');
INSERT INTO maisha_mume_words VALUES (1590, 135, 'a', 2, 'كُلِسَهِهِيشَ', 'kulisahihı̄sha', 'kulisahihisha', '', '', '', '', '', '', 'kulisahihı̄sha', 'كُلِسَهِهِيشَ', 'kulisahihı̄sha');
INSERT INTO maisha_mume_words VALUES (1623, 137, 'd', 2, 'أَتَكُسِكِيَ', 'aṯakusikiya', 'atakusikiya', '', '', '', '', '', '', 'aṯakusikiya', 'أَتَكُسِكِيَ', 'aṯakusikiya');
INSERT INTO maisha_mume_words VALUES (1591, 135, 'b', 1, 'پٖينْيٖ', 'pēnye', 'penye', '', '', '', '', '', '', 'pēnye', 'پٖينْيٖ', 'pēnye');
INSERT INTO maisha_mume_words VALUES (1592, 135, 'b', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (1593, 135, 'b', 3, 'هُجٖرٖيشَ', 'hujerēsha', 'hujeresha', '', '', '', '', '', '', 'hujerēsha', 'هُجٖرٖيشَ', 'hujerēsha');
INSERT INTO maisha_mume_words VALUES (1607, 136, 'd', 1, 'بَالِ', 'bāli', 'bali', '', '', '', '', '', '', 'bāli', 'بَالِ', 'bāli');
INSERT INTO maisha_mume_words VALUES (1608, 136, 'd', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1594, 135, 'c', 1, 'إِپِينْدٖ', 'ipı̄nḏe', 'ipinde', '', '', '', '', '', '', 'ipı̄nḏe', 'إِپِينْدٖ', 'ipı̄nḏe');
INSERT INTO maisha_mume_words VALUES (1595, 135, 'c', 2, 'كُپُرُكُوشَ', 'kupurukūsha', 'kupurukusha', '', '', '', '', '', '', 'kupurukūsha', 'كُپُرُكُوشَ', 'kupurukūsha');
INSERT INTO maisha_mume_words VALUES (1609, 136, 'd', 3, 'كِنْيُومٖ', 'kinyūme', 'kinyume', '', '', '', '', '', '', 'kinyūme', 'كِنْيُومٖ', 'kinyūme');
INSERT INTO maisha_mume_words VALUES (1610, 136, 'd', 4, 'هُويَ', 'hūya', 'huya', '', '', '', '', '', '', 'hūya', 'هُويَ', 'hūya');
INSERT INTO maisha_mume_words VALUES (1596, 135, 'd', 1, 'فَرَاغَ', 'farāḡa', 'faragha', '', '', '', '', '', '', 'farāḡa', 'فَرَاغَ', 'farāḡa');
INSERT INTO maisha_mume_words VALUES (1597, 135, 'd', 2, 'كُئِزٖنْڠٖيَ', 'kuizengeya', 'kuizengeya', '', '', '', '', '', '', 'kuizengeya', 'كُئِزٖنْڠٖيَ', 'kuizengeya');
INSERT INTO maisha_mume_words VALUES (1598, 136, 'a', 1, 'سِمْوَمْبِيٖ', 'simwambiye', 'simwambiye', '', '', '', '', '', '', 'simwambiye', 'سِمْوَمْبِيٖ', 'simwambiye');
INSERT INTO maisha_mume_words VALUES (1599, 136, 'a', 2, 'پٖينْيٖ', 'pēnye', 'penye', '', '', '', '', '', '', 'pēnye', 'پٖينْيٖ', 'pēnye');
INSERT INTO maisha_mume_words VALUES (1600, 136, 'a', 3, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (1624, 138, 'a', 1, 'مْوَنَأَدَامُ', 'mwanaaḏāmu', 'mwanaadamu', '', '', '', '', '', '', 'mwanaaḏāmu', 'مْوَنَأَدَامُ', 'mwanaaḏāmu');
INSERT INTO maisha_mume_words VALUES (1611, 137, 'a', 1, 'كُمْسِيفُ', 'kumsı̄fu', 'kumsifu', '', '', '', '', '', '', 'kumsı̄fu', 'كُمْسِيفُ', 'kumsı̄fu');
INSERT INTO maisha_mume_words VALUES (1612, 137, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1613, 137, 'a', 3, 'أُزُورِ', 'uzūri', 'uzuri', '', '', '', '', '', '', 'uzūri', 'أُزُورِ', 'uzūri');
INSERT INTO maisha_mume_words VALUES (1625, 138, 'a', 2, 'كُكٗوسَ', 'kukōsa', 'kukosa', '', '', '', '', '', '', 'kukōsa', 'كُكٗوسَ', 'kukōsa');
INSERT INTO maisha_mume_words VALUES (1614, 137, 'b', 1, 'پٖينْيٖ', 'pēnye', 'penye', '', '', '', '', '', '', 'pēnye', 'پٖينْيٖ', 'pēnye');
INSERT INTO maisha_mume_words VALUES (1615, 137, 'b', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (1616, 137, 'b', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1617, 137, 'b', 4, 'ذَهِيرِ', 'dhahı̄ri', 'dhahiri', '', '', '', '', '', '', 'dhahı̄ri', 'ذَهِيرِ', 'dhahı̄ri');
INSERT INTO maisha_mume_words VALUES (1650, 140, 'b', 3, 'سِيرِ', 'sı̄ri', 'siri', '', '', '', '', '', '', 'sı̄ri', 'سِيرِ', 'sı̄ri');
INSERT INTO maisha_mume_words VALUES (1640, 139, 'c', 1, 'هَلِپٖلٖيكِ', 'halipelēki', 'halipeleki', '', '', '', '', '', '', 'halipelēki', 'هَلِپٖلٖيكِ', 'halipelēki');
INSERT INTO maisha_mume_words VALUES (1641, 139, 'c', 2, 'كِشٗوڠٗ', 'kishōgo', 'kishogo', '', '', '', '', '', '', 'kishōgo', 'كِشٗوڠٗ', 'kishōgo');
INSERT INTO maisha_mume_words VALUES (1618, 137, 'c', 1, 'كُلَؤُومُ', 'kulaūmu', 'kulaumu', '', '', '', '', '', '', 'kulaūmu', 'كُلَؤُومُ', 'kulaūmu');
INSERT INTO maisha_mume_words VALUES (1619, 137, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1634, 139, 'a', 1, 'لِسَمٖيهٖ', 'lisamēhe', 'lisamehe', '', '', '', '', '', '', 'lisamēhe', 'لِسَمٖيهٖ', 'lisamēhe');
INSERT INTO maisha_mume_words VALUES (1626, 138, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1627, 138, 'b', 2, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (1628, 138, 'b', 3, 'لِمٖتُپَاسَ', 'limeṯupāsa', 'limetupasa', '', '', '', '', '', '', 'limeṯupāsa', 'لِمٖتُپَاسَ', 'limeṯupāsa');
INSERT INTO maisha_mume_words VALUES (1635, 139, 'a', 2, 'كٗوسَ', 'kōsa', 'kosa', '', '', '', '', '', '', 'kōsa', 'كٗوسَ', 'kōsa');
INSERT INTO maisha_mume_words VALUES (1636, 139, 'a', 3, 'دٗوڠٗ', 'ḏōgo', 'dogo', '', '', '', '', '', '', 'ḏōgo', 'دٗوڠٗ', 'ḏōgo');
INSERT INTO maisha_mume_words VALUES (1629, 138, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1630, 138, 'c', 2, 'سَاوَ', 'sāwa', 'sawa', '', '', '', '', '', '', 'sāwa', 'سَاوَ', 'sāwa');
INSERT INTO maisha_mume_words VALUES (1631, 138, 'c', 3, 'كُيِكُكُوسَ', 'kuyikukūsa', 'kuyikukusa', '', '', '', '', '', '', 'kuyikukūsa', 'كُيِكُكُوسَ', 'kuyikukūsa');
INSERT INTO maisha_mume_words VALUES (1651, 140, 'b', 4, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (1652, 140, 'b', 5, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (1637, 139, 'b', 1, 'كٗوسَ', 'kōsa', 'kosa', '', '', '', '', '', '', 'kōsa', 'كٗوسَ', 'kōsa');
INSERT INTO maisha_mume_words VALUES (1638, 139, 'b', 2, 'لِكِيوَ', 'likı̄wa', 'likiwa', '', '', '', '', '', '', 'likı̄wa', 'لِكِيوَ', 'likı̄wa');
INSERT INTO maisha_mume_words VALUES (1639, 139, 'b', 3, 'مزِيڠٗ', 'mzı̄go', 'mzigo', '', '', '', '', '', '', 'mzı̄go', 'مزِيڠٗ', 'mzı̄go');
INSERT INTO maisha_mume_words VALUES (1645, 140, 'a', 1, 'تَفَؤُوتِ', 'ṯafaūṯi', 'tafauti', '', '', '', '', '', '', 'ṯafaūṯi', 'تَفَؤُوتِ', 'ṯafaūṯi');
INSERT INTO maisha_mume_words VALUES (1646, 140, 'a', 2, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (1642, 139, 'd', 1, 'زٖنْڠٖيَ', 'zengeya', 'zengeya', '', '', '', '', '', '', 'zengeya', 'زٖنْڠٖيَ', 'zengeya');
INSERT INTO maisha_mume_words VALUES (1643, 139, 'd', 2, 'نْيٖنْڠِينٖ', 'nyengı̄ne', 'nyengine', '', '', '', '', '', '', 'nyengı̄ne', 'نْيٖنْڠِينٖ', 'nyengı̄ne');
INSERT INTO maisha_mume_words VALUES (1644, 139, 'd', 3, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (1647, 140, 'a', 3, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (1654, 140, 'c', 2, 'هَذِرَانِ', 'hadhirāni', 'hadhirani', '', '', '', '', '', '', 'hadhirāni', 'هَذِرَانِ', 'hadhirāni');
INSERT INTO maisha_mume_words VALUES (1648, 140, 'b', 1, 'زِيوٖ', 'zı̄we', 'ziwe', '', '', '', '', '', '', 'zı̄we', 'زِيوٖ', 'zı̄we');
INSERT INTO maisha_mume_words VALUES (1649, 140, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1656, 140, 'd', 2, 'وَكَزِسِكِيَ', 'wakazisikiya', 'wakazisikiya', '', '', '', '', '', '', 'wakazisikiya', 'وَكَزِسِكِيَ', 'wakazisikiya');
INSERT INTO maisha_mume_words VALUES (1653, 140, 'c', 1, 'سِزِتٗوٖ', 'siziṯowe', 'sizitowe', '', '', '', '', '', '', 'siziṯowe', 'سِزِتٗوٖ', 'siziṯowe');
INSERT INTO maisha_mume_words VALUES (1658, 141, 'a', 2, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (1655, 140, 'd', 1, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (1659, 141, 'a', 3, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (1660, 141, 'a', 4, 'زِبَانٖ', 'zibāne', 'zibane', '', '', '', '', '', '', 'zibāne', 'زِبَانٖ', 'zibāne');
INSERT INTO maisha_mume_words VALUES (1657, 141, 'a', 1, 'سِيرِ', 'sı̄ri', 'siri', '', '', '', '', '', '', 'sı̄ri', 'سِيرِ', 'sı̄ri');
INSERT INTO maisha_mume_words VALUES (1661, 141, 'b', 1, 'أُسِمْوَمْبِيٖ', 'usimwambiye', 'usimwambiye', '', '', '', '', '', '', 'usimwambiye', 'أُسِمْوَمْبِيٖ', 'usimwambiye');
INSERT INTO maisha_mume_words VALUES (1662, 141, 'b', 2, 'مْنْڠِينٖ', 'mngı̄ne', 'mngine', '', '', '', '', '', '', 'mngı̄ne', 'مْنْڠِينٖ', 'mngı̄ne');
INSERT INTO maisha_mume_words VALUES (1691, 144, 'a', 2, 'سِيرِ', 'sı̄ri', 'siri', '', '', '', '', '', '', 'sı̄ri', 'سِيرِ', 'sı̄ri');
INSERT INTO maisha_mume_words VALUES (1692, 144, 'a', 3, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (1693, 144, 'a', 4, 'سِيرِ', 'sı̄ri', 'siri', '', '', '', '', '', '', 'sı̄ri', 'سِيرِ', 'sı̄ri');
INSERT INTO maisha_mume_words VALUES (1663, 141, 'c', 1, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (1664, 141, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1665, 141, 'c', 3, 'يٖيٖ', 'yeye', 'yeye', '', '', '', '', '', '', 'yeye', 'يٖيٖ', 'yeye');
INSERT INTO maisha_mume_words VALUES (1666, 141, 'c', 4, 'مُنٖينٖ', 'munēne', 'munene', '', '', '', '', '', '', 'munēne', 'مُنٖينٖ', 'munēne');
INSERT INTO maisha_mume_words VALUES (1667, 141, 'd', 1, 'سُلُهِيشٗ', 'suluhı̄sho', 'suluhisho', '', '', '', '', '', '', 'suluhı̄sho', 'سُلُهِيشٗ', 'suluhı̄sho');
INSERT INTO maisha_mume_words VALUES (1668, 141, 'd', 2, 'كُزٖنْڠٖيَ', 'kuzengeya', 'kuzengeya', '', '', '', '', '', '', 'kuzengeya', 'كُزٖنْڠٖيَ', 'kuzengeya');
INSERT INTO maisha_mume_words VALUES (1731, 147, 'a', 4, 'هٗدَارِ', 'hoḏāri', 'hodari', '', '', '', '', '', '', 'hoḏāri', 'هٗدَارِ', 'hoḏāri');
INSERT INTO maisha_mume_words VALUES (1723, 146, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1669, 142, 'a', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (1670, 142, 'a', 2, 'مُكِكٗوسَ', 'mukikōsa', 'mukikosa', '', '', '', '', '', '', 'mukikōsa', 'مُكِكٗوسَ', 'mukikōsa');
INSERT INTO maisha_mume_words VALUES (1671, 142, 'a', 3, 'بُودِ', 'būḏi', 'budi', '', '', '', '', '', '', 'būḏi', 'بُودِ', 'būḏi');
INSERT INTO maisha_mume_words VALUES (1694, 144, 'b', 1, 'كُنٖينَ', 'kunēna', 'kunena', '', '', '', '', '', '', 'kunēna', 'كُنٖينَ', 'kunēna');
INSERT INTO maisha_mume_words VALUES (1695, 144, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1672, 142, 'b', 1, 'كُنٖينَ', 'kunēna', 'kunena', '', '', '', '', '', '', 'kunēna', 'كُنٖينَ', 'kunēna');
INSERT INTO maisha_mume_words VALUES (1673, 142, 'b', 2, 'إِكَوَبِيدِ', 'ikawabı̄ḏi', 'ikawabidi', '', '', '', '', '', '', 'ikawabı̄ḏi', 'إِكَوَبِيدِ', 'ikawabı̄ḏi');
INSERT INTO maisha_mume_words VALUES (1696, 144, 'b', 3, 'كُؤَذِيرِ', 'kuadhı̄ri', 'kuadhiri', '', '', '', '', '', '', 'kuadhı̄ri', 'كُؤَذِيرِ', 'kuadhı̄ri');
INSERT INTO maisha_mume_words VALUES (1674, 142, 'c', 1, 'وَزٖئٖ', 'wazee', 'wazee', '', '', '', '', '', '', 'wazee', 'وَزٖئٖ', 'wazee');
INSERT INTO maisha_mume_words VALUES (1675, 142, 'c', 2, 'وَوَسَئِيدِ', 'wawasaı̄ḏi', 'wawasaidi', '', '', '', '', '', '', 'wawasaı̄ḏi', 'وَوَسَئِيدِ', 'wawasaı̄ḏi');
INSERT INTO maisha_mume_words VALUES (1712, 145, 'c', 1, 'هَايٗ', 'hāyo', 'hayo', '', '', '', '', '', '', 'hāyo', 'هَايٗ', 'hāyo');
INSERT INTO maisha_mume_words VALUES (1676, 142, 'd', 1, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (2450, 208, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1677, 142, 'd', 2, 'هَئِيوِ', 'haı̄wi', 'haiwi', '', '', '', '', '', '', 'haı̄wi', 'هَئِيوِ', 'haı̄wi');
INSERT INTO maisha_mume_words VALUES (1678, 142, 'd', 3, 'هَتِيَ', 'haṯiya', 'hatiya', '', '', '', '', '', '', 'haṯiya', 'هَتِيَ', 'haṯiya');
INSERT INTO maisha_mume_words VALUES (1713, 145, 'c', 2, 'مُوٖ', 'muwe', 'muwe', '', '', '', '', '', '', 'muwe', 'مُوٖ', 'muwe');
INSERT INTO maisha_mume_words VALUES (1714, 145, 'c', 3, 'هَمُنٖينِ', 'hamunēni', 'hamuneni', '', '', '', '', '', '', 'hamunēni', 'هَمُنٖينِ', 'hamunēni');
INSERT INTO maisha_mume_words VALUES (1679, 143, 'a', 1, 'تَفَؤُوتِ', 'ṯafaūṯi', 'tafauti', '', '', '', '', '', '', 'ṯafaūṯi', 'تَفَؤُوتِ', 'ṯafaūṯi');
INSERT INTO maisha_mume_words VALUES (1680, 143, 'a', 2, 'إِكِزُوكَ', 'ikizūka', 'ikizuka', '', '', '', '', '', '', 'ikizūka', 'إِكِزُوكَ', 'ikizūka');
INSERT INTO maisha_mume_words VALUES (1697, 144, 'c', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (1698, 144, 'c', 2, 'إِيوٖ', 'ı̄we', 'iwe', '', '', '', '', '', '', 'ı̄we', 'إِيوٖ', 'ı̄we');
INSERT INTO maisha_mume_words VALUES (1699, 144, 'c', 3, 'دَكِتَارِ', 'ḏakiṯāri', 'dakitari', '', '', '', '', '', '', 'ḏakiṯāri', 'دَكِتَارِ', 'ḏakiṯāri');
INSERT INTO maisha_mume_words VALUES (1681, 143, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1682, 143, 'b', 2, 'مِكٗونٗ', 'mikōno', 'mikono', '', '', '', '', '', '', 'mikōno', 'مِكٗونٗ', 'mikōno');
INSERT INTO maisha_mume_words VALUES (1683, 143, 'b', 3, 'كُيَنْدِيكَ', 'kuyanḏı̄ka', 'kuyandika', '', '', '', '', '', '', 'kuyanḏı̄ka', 'كُيَنْدِيكَ', 'kuyanḏı̄ka');
INSERT INTO maisha_mume_words VALUES (1684, 143, 'c', 1, 'يُؤَ', 'yua', 'yua', '', '', '', '', '', '', 'yua', 'يُؤَ', 'yua');
INSERT INTO maisha_mume_words VALUES (1685, 143, 'c', 2, 'نْدٖ', 'nḏe', 'nde', '', '', '', '', '', '', 'nḏe', 'نْدٖ', 'nḏe');
INSERT INTO maisha_mume_words VALUES (1686, 143, 'c', 3, 'إِكِتٗوكَ', 'ikiṯōka', 'ikitoka', '', '', '', '', '', '', 'ikiṯōka', 'إِكِتٗوكَ', 'ikiṯōka');
INSERT INTO maisha_mume_words VALUES (1700, 144, 'd', 1, 'سُؤَالِ', 'suāli', 'suali', '', '', '', '', '', '', 'suāli', 'سُؤَالِ', 'suāli');
INSERT INTO maisha_mume_words VALUES (1701, 144, 'd', 2, 'مٖوَتَئِيَ', 'mewaṯaiya', 'mewataiya', '', '', '', '', '', '', 'mewaṯaiya', 'مٖوَتَئِيَ', 'mewaṯaiya');
INSERT INTO maisha_mume_words VALUES (1687, 143, 'd', 1, 'هُزُوَ', 'huzuwa', 'huzuwa', '', '', '', '', '', '', 'huzuwa', 'هُزُوَ', 'huzuwa');
INSERT INTO maisha_mume_words VALUES (1688, 143, 'd', 2, 'نْيِينْڠِ', 'nı̄ı̄ngi', 'nyingi', '', '', '', '', '', '', 'nı̄ı̄ngi', 'نْيِينْڠِ', 'nı̄ı̄ngi');
INSERT INTO maisha_mume_words VALUES (1689, 143, 'd', 3, 'بَلَايَ', 'balāya', 'balaya', '', '', '', '', '', '', 'balāya', 'بَلَايَ', 'balāya');
INSERT INTO maisha_mume_words VALUES (1724, 146, 'c', 2, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (1725, 146, 'c', 3, 'سِتٗوَكَانْيَ', 'siṯowakānya', 'sitowakanya', '', '', '', '', '', '', 'siṯowakānya', 'سِتٗوَكَانْيَ', 'siṯowakānya');
INSERT INTO maisha_mume_words VALUES (1715, 145, 'd', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (1716, 145, 'd', 2, 'يَكِوَئِمٖيَ', 'yakiwaimeya', 'yakiwaimeya', '', '', '', '', '', '', 'yakiwaimeya', 'يَكِوَئِمٖيَ', 'yakiwaimeya');
INSERT INTO maisha_mume_words VALUES (1702, 145, 'a', 1, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (1703, 145, 'a', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1704, 145, 'a', 3, 'تِينِ', 'ṯı̄ni', 'tini', '', '', '', '', '', '', 'ṯı̄ni', 'تِينِ', 'ṯı̄ni');
INSERT INTO maisha_mume_words VALUES (1705, 145, 'a', 4, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1706, 145, 'a', 5, 'تِينِ', 'ṯı̄ni', 'tini', '', '', '', '', '', '', 'ṯı̄ni', 'تِينِ', 'ṯı̄ni');
INSERT INTO maisha_mume_words VALUES (1717, 146, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1718, 146, 'a', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1719, 146, 'a', 3, 'مٖوَڠَانْيَ', 'mewagānya', 'mewaganya', '', '', '', '', '', '', 'mewagānya', 'مٖوَڠَانْيَ', 'mewagānya');
INSERT INTO maisha_mume_words VALUES (1707, 145, 'b', 1, 'يَاوٖ', 'yāwe', 'yawe', '', '', '', '', '', '', 'yāwe', 'يَاوٖ', 'yāwe');
INSERT INTO maisha_mume_words VALUES (1708, 145, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1709, 145, 'b', 3, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (1710, 145, 'b', 4, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1711, 145, 'b', 5, 'نْدَانِ', 'nḏāni', 'ndani', '', '', '', '', '', '', 'nḏāni', 'نْدَانِ', 'nḏāni');
INSERT INTO maisha_mume_words VALUES (1726, 146, 'd', 1, 'أُشَؤُورِ', 'ushaūri', 'ushauri', '', '', '', '', '', '', 'ushaūri', 'أُشَؤُورِ', 'ushaūri');
INSERT INTO maisha_mume_words VALUES (1727, 146, 'd', 2, 'كُزٖنْڠٖيَ', 'kuzengeya', 'kuzengeya', '', '', '', '', '', '', 'kuzengeya', 'كُزٖنْڠٖيَ', 'kuzengeya');
INSERT INTO maisha_mume_words VALUES (1720, 146, 'b', 1, 'مُكَشِنْدوَ', 'mukashinḏwa', 'mukashindwa', '', '', '', '', '', '', 'mukashinḏwa', 'مُكَشِنْدوَ', 'mukashinḏwa');
INSERT INTO maisha_mume_words VALUES (1721, 146, 'b', 2, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (1722, 146, 'b', 3, 'كُفَانْيَ', 'kufānya', 'kufanya', '', '', '', '', '', '', 'kufānya', 'كُفَانْيَ', 'kufānya');
INSERT INTO maisha_mume_words VALUES (1736, 147, 'c', 2, 'أُسِتَهَيَارِ', 'usiṯahayāri', 'usitahayari', '', '', '', '', '', '', 'usiṯahayāri', 'أُسِتَهَيَارِ', 'usiṯahayāri');
INSERT INTO maisha_mume_words VALUES (1732, 147, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1728, 147, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1729, 147, 'a', 2, 'بٗورَ', 'bōra', 'bora', '', '', '', '', '', '', 'bōra', 'بٗورَ', 'bōra');
INSERT INTO maisha_mume_words VALUES (1730, 147, 'a', 3, 'أُوٖ', 'uwe', 'uwe', '', '', '', '', '', '', 'uwe', 'أُوٖ', 'uwe');
INSERT INTO maisha_mume_words VALUES (1733, 147, 'b', 2, 'كُشِنْدوَ', 'kushinḏwa', 'kushindwa', '', '', '', '', '', '', 'kushinḏwa', 'كُشِنْدوَ', 'kushinḏwa');
INSERT INTO maisha_mume_words VALUES (1734, 147, 'b', 3, 'أُسِكِيرِ', 'usikı̄ri', 'usikiri', '', '', '', '', '', '', 'usikı̄ri', 'أُسِكِيرِ', 'usikı̄ri');
INSERT INTO maisha_mume_words VALUES (1739, 147, 'd', 3, 'كُتُمِيَ', 'kuṯumiya', 'kutumiya', '', '', '', '', '', '', 'kuṯumiya', 'كُتُمِيَ', 'kuṯumiya');
INSERT INTO maisha_mume_words VALUES (1735, 147, 'c', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (1745, 148, 'b', 2, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (1737, 147, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1738, 147, 'd', 2, 'هَلَالِ', 'halāli', 'halali', '', '', '', '', '', '', 'halāli', 'هَلَالِ', 'halāli');
INSERT INTO maisha_mume_words VALUES (1742, 148, 'a', 3, 'هِيكٗ', 'hı̄ko', 'hiko', '', '', '', '', '', '', 'hı̄ko', 'هِيكٗ', 'hı̄ko');
INSERT INTO maisha_mume_words VALUES (1743, 148, 'a', 4, 'كِتٖينْدٗ', 'kiṯēnḏo', 'kitendo', '', '', '', '', '', '', 'kiṯēnḏo', 'كِتٖينْدٗ', 'kiṯēnḏo');
INSERT INTO maisha_mume_words VALUES (1746, 148, 'b', 3, 'هَلَالِ', 'halāli', 'halali', '', '', '', '', '', '', 'halāli', 'هَلَالِ', 'halāli');
INSERT INTO maisha_mume_words VALUES (1740, 148, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1741, 148, 'a', 2, 'هِيكٗ', 'hı̄ko', 'hiko', '', '', '', '', '', '', 'hı̄ko', 'هِيكٗ', 'hı̄ko');
INSERT INTO maisha_mume_words VALUES (1747, 148, 'b', 4, 'مْوٖينْدٗ', 'mwēnḏo', 'mwendo', '', '', '', '', '', '', 'mwēnḏo', 'مْوٖينْدٗ', 'mwēnḏo');
INSERT INTO maisha_mume_words VALUES (1749, 148, 'c', 2, 'إِوٖيكٖ', 'iwēke', 'iweke', '', '', '', '', '', '', 'iwēke', 'إِوٖيكٖ', 'iwēke');
INSERT INTO maisha_mume_words VALUES (1744, 148, 'b', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1750, 148, 'c', 3, 'كَانْدٗ', 'kānḏo', 'kando', '', '', '', '', '', '', 'kānḏo', 'كَانْدٗ', 'kānḏo');
INSERT INTO maisha_mume_words VALUES (1831, 155, 'd', 2, 'نْيٗوتٖ', 'nyōṯe', 'nyote', '', '', '', '', '', '', 'nyōṯe', 'نْيٗوتٖ', 'nyōṯe');
INSERT INTO maisha_mume_words VALUES (1752, 148, 'd', 2, 'كُتٗكَرِبِيَ', 'kuṯokaribiya', 'kutokaribiya', '', '', '', '', '', '', 'kuṯokaribiya', 'كُتٗكَرِبِيَ', 'kuṯokaribiya');
INSERT INTO maisha_mume_words VALUES (1748, 148, 'c', 1, 'هَرَامُ', 'harāmu', 'haramu', '', '', '', '', '', '', 'harāmu', 'هَرَامُ', 'harāmu');
INSERT INTO maisha_mume_words VALUES (1751, 148, 'd', 1, 'كَاتُ', 'kāṯu', 'katu', '', '', '', '', '', '', 'kāṯu', 'كَاتُ', 'kāṯu');
INSERT INTO maisha_mume_words VALUES (1828, 155, 'c', 2, 'هَتَاكِ', 'haṯāki', 'hataki', '', '', '', '', '', '', 'haṯāki', 'هَتَاكِ', 'haṯāki');
INSERT INTO maisha_mume_words VALUES (1755, 149, 'a', 3, 'سِمْڠُوسٖ', 'simgūse', 'simguse', '', '', '', '', '', '', 'simgūse', 'سِمْڠُوسٖ', 'simgūse');
INSERT INTO maisha_mume_words VALUES (1815, 154, 'c', 1, 'هُتَاكِ', 'huṯāki', 'hutaki', '', '', '', '', '', '', 'huṯāki', 'هُتَاكِ', 'huṯāki');
INSERT INTO maisha_mume_words VALUES (1784, 151, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1756, 149, 'b', 1, 'كِمُؤٗونَ', 'kimuōna', 'kimuona', '', '', '', '', '', '', 'kimuōna', 'كِمُؤٗونَ', 'kimuōna');
INSERT INTO maisha_mume_words VALUES (1757, 149, 'b', 2, 'إِڠٖڠٖيسٖ', 'igegēse', 'igegese', '', '', '', '', '', '', 'igegēse', 'إِڠٖڠٖيسٖ', 'igegēse');
INSERT INTO maisha_mume_words VALUES (1785, 151, 'd', 2, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (1786, 151, 'd', 3, 'نِمٖزٗتَايَ', 'nimezoṯāya', 'nimezotaya', '', '', '', '', '', '', 'nimezoṯāya', 'نِمٖزٗتَايَ', 'nimezoṯāya');
INSERT INTO maisha_mume_words VALUES (1758, 149, 'c', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (1759, 149, 'c', 2, 'نْيَنْڠوَانِ', 'nyangwāni', 'nyangwani', '', '', '', '', '', '', 'nyangwāni', 'نْيَنْڠوَانِ', 'nyangwāni');
INSERT INTO maisha_mume_words VALUES (1760, 149, 'c', 3, 'مْپِيسٖ', 'mpı̄se', 'mpise', '', '', '', '', '', '', 'mpı̄se', 'مْپِيسٖ', 'mpı̄se');
INSERT INTO maisha_mume_words VALUES (1816, 154, 'c', 2, 'ڠٖؤُوكَ', 'geūka', 'geuka', '', '', '', '', '', '', 'geūka', 'ڠٖؤُوكَ', 'geūka');
INSERT INTO maisha_mume_words VALUES (1804, 153, 'c', 1, 'مْوٖينْدٗ', 'mwēnḏo', 'mwendo', '', '', '', '', '', '', 'mwēnḏo', 'مْوٖينْدٗ', 'mwēnḏo');
INSERT INTO maisha_mume_words VALUES (1761, 149, 'd', 1, 'سَنْدَمَانٖ', 'sanḏamāne', 'sandamane', '', '', '', '', '', '', 'sanḏamāne', 'سَنْدَمَانٖ', 'sanḏamāne');
INSERT INTO maisha_mume_words VALUES (1762, 149, 'd', 2, 'نَايٖ', 'nāye', 'naye', '', '', '', '', '', '', 'nāye', 'نَايٖ', 'nāye');
INSERT INTO maisha_mume_words VALUES (1763, 149, 'd', 3, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (1787, 152, 'a', 1, 'مْكٖؤٗ', 'mkeo', 'mkeo', '', '', '', '', '', '', 'mkeo', 'مْكٖؤٗ', 'mkeo');
INSERT INTO maisha_mume_words VALUES (1788, 152, 'a', 2, 'مْتٗشٖلٖيزٖ', 'mṯoshelēze', 'mtosheleze', '', '', '', '', '', '', 'mṯoshelēze', 'مْتٗشٖلٖيزٖ', 'mṯoshelēze');
INSERT INTO maisha_mume_words VALUES (1764, 150, 'a', 1, 'أُسٖينْدٖ', 'usēnḏe', 'usende', '', '', '', '', '', '', 'usēnḏe', 'أُسٖينْدٖ', 'usēnḏe');
INSERT INTO maisha_mume_words VALUES (1765, 150, 'a', 2, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (1766, 150, 'a', 3, 'كَرِيبُ', 'karı̄bu', 'karibu', '', '', '', '', '', '', 'karı̄bu', 'كَرِيبُ', 'karı̄bu');
INSERT INTO maisha_mume_words VALUES (1805, 153, 'c', 2, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1767, 150, 'b', 1, 'إٖپُوكَ', 'epūka', 'epuka', '', '', '', '', '', '', 'epūka', 'إٖپُوكَ', 'epūka');
INSERT INTO maisha_mume_words VALUES (1768, 150, 'b', 2, 'هِيزٗ', 'hı̄zo', 'hizo', '', '', '', '', '', '', 'hı̄zo', 'هِيزٗ', 'hı̄zo');
INSERT INTO maisha_mume_words VALUES (1769, 150, 'b', 3, 'إِقَابُ', 'iqābu', 'iqabu', '', '', '', '', '', '', 'iqābu', 'إِقَابُ', 'iqābu');
INSERT INTO maisha_mume_words VALUES (1806, 153, 'c', 3, 'هَمَلِيزِ', 'hamalı̄zi', 'hamalizi', '', '', '', '', '', '', 'hamalı̄zi', 'هَمَلِيزِ', 'hamalı̄zi');
INSERT INTO maisha_mume_words VALUES (1789, 152, 'b', 1, 'هَاجَ', 'hāja', 'haja', '', '', '', '', '', '', 'hāja', 'هَاجَ', 'hāja');
INSERT INTO maisha_mume_words VALUES (1770, 150, 'c', 1, 'أُتَپَاتَ', 'uṯapāṯa', 'utapata', '', '', '', '', '', '', 'uṯapāṯa', 'أُتَپَاتَ', 'uṯapāṯa');
INSERT INTO maisha_mume_words VALUES (1771, 150, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1772, 150, 'c', 3, 'ثَوَابُ', 'thawābu', 'thawabu', '', '', '', '', '', '', 'thawābu', 'ثَوَابُ', 'thawābu');
INSERT INTO maisha_mume_words VALUES (1790, 152, 'b', 2, 'يَاكٖ', 'yāke', 'yake', '', '', '', '', '', '', 'yāke', 'يَاكٖ', 'yāke');
INSERT INTO maisha_mume_words VALUES (1791, 152, 'b', 3, 'أَمَلِيزٖ', 'amalı̄ze', 'amalize', '', '', '', '', '', '', 'amalı̄ze', 'أَمَلِيزٖ', 'amalı̄ze');
INSERT INTO maisha_mume_words VALUES (1773, 150, 'd', 1, 'مْكٖؤٗ', 'mkeo', 'mkeo', '', '', '', '', '', '', 'mkeo', 'مْكٖؤٗ', 'mkeo');
INSERT INTO maisha_mume_words VALUES (1774, 150, 'd', 2, 'كُمْنْڠِلِيَ', 'kumngiliya', 'kumngiliya', '', '', '', '', '', '', 'kumngiliya', 'كُمْنْڠِلِيَ', 'kumngiliya');
INSERT INTO maisha_mume_words VALUES (1775, 151, 'a', 1, 'إٖلٖيوَ', 'elēwa', 'elewa', '', '', '', '', '', '', 'elēwa', 'إٖلٖيوَ', 'elēwa');
INSERT INTO maisha_mume_words VALUES (1776, 151, 'a', 2, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (1777, 151, 'a', 3, 'إٖلٖيوَ', 'elēwa', 'elewa', '', '', '', '', '', '', 'elēwa', 'إٖلٖيوَ', 'elēwa');
INSERT INTO maisha_mume_words VALUES (1817, 154, 'c', 3, 'نْيُومَ', 'nyūma', 'nyuma', '', '', '', '', '', '', 'nyūma', 'نْيُومَ', 'nyūma');
INSERT INTO maisha_mume_words VALUES (1778, 151, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1779, 151, 'b', 2, 'جُكُومُ', 'jukūmu', 'jukumu', '', '', '', '', '', '', 'jukūmu', 'جُكُومُ', 'jukūmu');
INSERT INTO maisha_mume_words VALUES (1780, 151, 'b', 3, 'أُمٖپٗوَ', 'umepowa', 'umepowa', '', '', '', '', '', '', 'umepowa', 'أُمٖپٗوَ', 'umepowa');
INSERT INTO maisha_mume_words VALUES (1792, 152, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1793, 152, 'c', 2, 'شَؤُوكُ', 'shaūku', 'shauku', '', '', '', '', '', '', 'shaūku', 'شَؤُوكُ', 'shaūku');
INSERT INTO maisha_mume_words VALUES (1794, 152, 'c', 3, 'أَسِسَازٖ', 'asisāze', 'asisaze', '', '', '', '', '', '', 'asisāze', 'أَسِسَازٖ', 'asisāze');
INSERT INTO maisha_mume_words VALUES (1781, 151, 'c', 1, 'مْكٖؤٗ', 'mkeo', 'mkeo', '', '', '', '', '', '', 'mkeo', 'مْكٖؤٗ', 'mkeo');
INSERT INTO maisha_mume_words VALUES (1782, 151, 'c', 2, 'كُمْوِيسَ', 'kumwı̄sa', 'kumwisa', '', '', '', '', '', '', 'kumwı̄sa', 'كُمْوِيسَ', 'kumwı̄sa');
INSERT INTO maisha_mume_words VALUES (1783, 151, 'c', 3, 'نْڠٗوَ', 'ngowa', 'ngowa', '', '', '', '', '', '', 'ngowa', 'نْڠٗوَ', 'ngowa');
INSERT INTO maisha_mume_words VALUES (1807, 153, 'd', 1, 'فَهَامُ', 'fahāmu', 'fahamu', '', '', '', '', '', '', 'fahāmu', 'فَهَامُ', 'fahāmu');
INSERT INTO maisha_mume_words VALUES (1808, 153, 'd', 2, 'وَمْكٗسٖيَ', 'wamkoseya', 'wamkoseya', '', '', '', '', '', '', 'wamkoseya', 'وَمْكٗسٖيَ', 'wamkoseya');
INSERT INTO maisha_mume_words VALUES (1795, 152, 'd', 1, 'مْپَارٗ', 'mpāro', 'mparo', '', '', '', '', '', '', 'mpāro', 'مْپَارٗ', 'mpāro');
INSERT INTO maisha_mume_words VALUES (1796, 152, 'd', 2, 'أُكَمْوَتِيَ', 'ukamwaṯiya', 'ukamwatiya', '', '', '', '', '', '', 'ukamwaṯiya', 'أُكَمْوَتِيَ', 'ukamwaṯiya');
INSERT INTO maisha_mume_words VALUES (1797, 153, 'a', 1, 'أٗنْڠٖيزَ', 'ongēza', 'ongeza', '', '', '', '', '', '', 'ongēza', 'أٗنْڠٖيزَ', 'ongēza');
INSERT INTO maisha_mume_words VALUES (1798, 153, 'a', 2, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (1799, 153, 'a', 3, 'أُيُوزِ', 'uyūzi', 'uyuzi', '', '', '', '', '', '', 'uyūzi', 'أُيُوزِ', 'uyūzi');
INSERT INTO maisha_mume_words VALUES (1829, 155, 'c', 3, 'ممٗوجَ', 'mmōja', 'mmoja', '', '', '', '', '', '', 'mmōja', 'ممٗوجَ', 'mmōja');
INSERT INTO maisha_mume_words VALUES (1800, 153, 'b', 1, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (1801, 153, 'b', 2, 'كُفَانْيَ', 'kufānya', 'kufanya', '', '', '', '', '', '', 'kufānya', 'كُفَانْيَ', 'kufānya');
INSERT INTO maisha_mume_words VALUES (1802, 153, 'b', 3, 'هِيٗ', 'hiyo', 'hiyo', '', '', '', '', '', '', 'hiyo', 'هِيٗ', 'hiyo');
INSERT INTO maisha_mume_words VALUES (1803, 153, 'b', 4, 'كَازِ', 'kāzi', 'kazi', '', '', '', '', '', '', 'kāzi', 'كَازِ', 'kāzi');
INSERT INTO maisha_mume_words VALUES (1809, 154, 'a', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (1810, 154, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1811, 154, 'a', 3, 'كُؤُ', 'kuu', 'kuu', '', '', '', '', '', '', 'kuu', 'كُؤُ', 'kuu');
INSERT INTO maisha_mume_words VALUES (1812, 154, 'a', 4, 'ذُلُومَ', 'dhulūma', 'dhuluma', '', '', '', '', '', '', 'dhulūma', 'ذُلُومَ', 'dhulūma');
INSERT INTO maisha_mume_words VALUES (1824, 155, 'b', 1, 'مْنْڠٗوجٖ', 'mngōje', 'mngoje', '', '', '', '', '', '', 'mngōje', 'مْنْڠٗوجٖ', 'mngōje');
INSERT INTO maisha_mume_words VALUES (1818, 154, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1813, 154, 'b', 1, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (1814, 154, 'b', 2, 'أُكِسَكُكٗومَ', 'ukisakukōma', 'ukisakukoma', '', '', '', '', '', '', 'ukisakukōma', 'أُكِسَكُكٗومَ', 'ukisakukōma');
INSERT INTO maisha_mume_words VALUES (1825, 155, 'b', 2, 'مْوِيسٖ', 'mwı̄se', 'mwise', '', '', '', '', '', '', 'mwı̄se', 'مْوِيسٖ', 'mwı̄se');
INSERT INTO maisha_mume_words VALUES (1826, 155, 'b', 3, 'پَمٗوجَ', 'pamōja', 'pamoja', '', '', '', '', '', '', 'pamōja', 'پَمٗوجَ', 'pamōja');
INSERT INTO maisha_mume_words VALUES (1819, 154, 'd', 2, 'يٖيٖ', 'yeye', 'yeye', '', '', '', '', '', '', 'yeye', 'يٖيٖ', 'yeye');
INSERT INTO maisha_mume_words VALUES (1820, 154, 'd', 3, 'كُمْنْڠٗجٖيَ', 'kumngojeya', 'kumngojeya', '', '', '', '', '', '', 'kumngojeya', 'كُمْنْڠٗجٖيَ', 'kumngojeya');
INSERT INTO maisha_mume_words VALUES (1821, 155, 'a', 1, 'سِمَلِيزٖ', 'simalı̄ze', 'simalize', '', '', '', '', '', '', 'simalı̄ze', 'سِمَلِيزٖ', 'simalı̄ze');
INSERT INTO maisha_mume_words VALUES (1822, 155, 'a', 2, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (1823, 155, 'a', 3, 'هَاجَ', 'hāja', 'haja', '', '', '', '', '', '', 'hāja', 'هَاجَ', 'hāja');
INSERT INTO maisha_mume_words VALUES (1832, 155, 'd', 3, 'هُلِزٖنْڠٖيَ', 'hulizengeya', 'hulizengeya', '', '', '', '', '', '', 'hulizengeya', 'هُلِزٖنْڠٖيَ', 'hulizengeya');
INSERT INTO maisha_mume_words VALUES (1827, 155, 'c', 1, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (1833, 156, 'a', 1, 'أَنْڠَلِيَ', 'angaliya', 'angaliya', '', '', '', '', '', '', 'angaliya', 'أَنْڠَلِيَ', 'angaliya');
INSERT INTO maisha_mume_words VALUES (1834, 156, 'a', 2, 'أُفِكِيرِ', 'ufikı̄ri', 'ufikiri', '', '', '', '', '', '', 'ufikı̄ri', 'أُفِكِيرِ', 'ufikı̄ri');
INSERT INTO maisha_mume_words VALUES (1830, 155, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1836, 156, 'b', 2, 'مْوٖينْدٗ', 'mwēnḏo', 'mwendo', '', '', '', '', '', '', 'mwēnḏo', 'مْوٖينْدٗ', 'mwēnḏo');
INSERT INTO maisha_mume_words VALUES (1837, 156, 'b', 3, 'تَغَئِيرِ', 'ṯaḡaı̄ri', 'taghairi', '', '', '', '', '', '', 'ṯaḡaı̄ri', 'تَغَئِيرِ', 'ṯaḡaı̄ri');
INSERT INTO maisha_mume_words VALUES (1839, 156, 'c', 2, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (1835, 156, 'b', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1840, 156, 'c', 3, 'پٖينْيٖ', 'pēnye', 'penye', '', '', '', '', '', '', 'pēnye', 'پٖينْيٖ', 'pēnye');
INSERT INTO maisha_mume_words VALUES (1841, 156, 'c', 4, 'بَنْدَارِ', 'banḏāri', 'bandari', '', '', '', '', '', '', 'banḏāri', 'بَنْدَارِ', 'banḏāri');
INSERT INTO maisha_mume_words VALUES (1843, 156, 'd', 2, 'نَانْڠَ', 'nānga', 'nanga', '', '', '', '', '', '', 'nānga', 'نَانْڠَ', 'nānga');
INSERT INTO maisha_mume_words VALUES (1838, 156, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1844, 156, 'd', 3, 'هُجَتِيَ', 'hujaṯiya', 'hujatiya', '', '', '', '', '', '', 'hujaṯiya', 'هُجَتِيَ', 'hujaṯiya');
INSERT INTO maisha_mume_words VALUES (1842, 156, 'd', 1, 'بَادٗ', 'bāḏo', 'bado', '', '', '', '', '', '', 'bāḏo', 'بَادٗ', 'bāḏo');
INSERT INTO maisha_mume_words VALUES (1845, 157, 'a', 1, 'أُتَكُوَ', 'uṯakuwa', 'utakuwa', '', '', '', '', '', '', 'uṯakuwa', 'أُتَكُوَ', 'uṯakuwa');
INSERT INTO maisha_mume_words VALUES (1847, 157, 'a', 3, 'ڠَانِ', 'gāni', 'gani', '', '', '', '', '', '', 'gāni', 'ڠَانِ', 'gāni');
INSERT INTO maisha_mume_words VALUES (1908, 162, 'c', 2, 'تٖينَ', 'ṯēna', 'tena', '', '', '', '', '', '', 'ṯēna', 'تٖينَ', 'ṯēna');
INSERT INTO maisha_mume_words VALUES (1909, 162, 'c', 3, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (1848, 157, 'b', 1, 'أُسِنْڠِيزِ', 'usingı̄zi', 'usingizi', '', '', '', '', '', '', 'usingı̄zi', 'أُسِنْڠِيزِ', 'usingı̄zi');
INSERT INTO maisha_mume_words VALUES (1849, 157, 'b', 2, 'هُُؤٗونِ', 'huuōni', 'huuoni', '', '', '', '', '', '', 'huuōni', 'هُُؤٗونِ', 'huuōni');
INSERT INTO maisha_mume_words VALUES (1897, 161, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1878, 159, 'd', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1850, 157, 'c', 1, 'هَالِ', 'hāli', 'hali', '', '', '', '', '', '', 'hāli', 'هَالِ', 'hāli');
INSERT INTO maisha_mume_words VALUES (1851, 157, 'c', 2, 'هِيٗ', 'hiyo', 'hiyo', '', '', '', '', '', '', 'hiyo', 'هِيٗ', 'hiyo');
INSERT INTO maisha_mume_words VALUES (1852, 157, 'c', 3, 'أُبَئِينِ', 'ubaı̄ni', 'ubaini', '', '', '', '', '', '', 'ubaı̄ni', 'أُبَئِينِ', 'ubaı̄ni');
INSERT INTO maisha_mume_words VALUES (1879, 159, 'd', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1880, 159, 'd', 3, 'مُومٖ', 'mūme', 'mume', '', '', '', '', '', '', 'mūme', 'مُومٖ', 'mūme');
INSERT INTO maisha_mume_words VALUES (1881, 159, 'd', 4, 'پَمٗويَ', 'pamōya', 'pamoya', '', '', '', '', '', '', 'pamōya', 'پَمٗويَ', 'pamōya');
INSERT INTO maisha_mume_words VALUES (1853, 157, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1854, 157, 'd', 2, 'مْوٖينْدٗ', 'mwēnḏo', 'mwendo', '', '', '', '', '', '', 'mwēnḏo', 'مْوٖينْدٗ', 'mwēnḏo');
INSERT INTO maisha_mume_words VALUES (1855, 157, 'd', 3, 'هُمُئِلِيَ', 'humuiliya', 'humuiliya', '', '', '', '', '', '', 'humuiliya', 'هُمُئِلِيَ', 'humuiliya');
INSERT INTO maisha_mume_words VALUES (1856, 158, 'a', 1, 'أَتَكُوَ', 'aṯakuwa', 'atakuwa', '', '', '', '', '', '', 'aṯakuwa', 'أَتَكُوَ', 'aṯakuwa');
INSERT INTO maisha_mume_words VALUES (1857, 158, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1858, 158, 'a', 3, 'مْتَارٗ', 'mṯāro', 'mtaro', '', '', '', '', '', '', 'mṯāro', 'مْتَارٗ', 'mṯāro');
INSERT INTO maisha_mume_words VALUES (1898, 161, 'c', 2, 'مْكٖؤٗ', 'mkeo', 'mkeo', '', '', '', '', '', '', 'mkeo', 'مْكٖؤٗ', 'mkeo');
INSERT INTO maisha_mume_words VALUES (1899, 161, 'c', 3, 'كِؤُذِيكَ', 'kiudhı̄ka', 'kiudhika', '', '', '', '', '', '', 'kiudhı̄ka', 'كِؤُذِيكَ', 'kiudhı̄ka');
INSERT INTO maisha_mume_words VALUES (1882, 160, 'a', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1883, 160, 'a', 2, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (1859, 158, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1860, 158, 'b', 2, 'ذِيكِ', 'dhı̄ki', 'dhiki', '', '', '', '', '', '', 'dhı̄ki', 'ذِيكِ', 'dhı̄ki');
INSERT INTO maisha_mume_words VALUES (1861, 158, 'b', 3, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1862, 158, 'b', 4, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1863, 158, 'b', 5, 'كٖيرٗ', 'kēro', 'kero', '', '', '', '', '', '', 'kēro', 'كٖيرٗ', 'kēro');
INSERT INTO maisha_mume_words VALUES (1884, 160, 'a', 3, 'مُكِتٗشَانَ', 'mukiṯoshāna', 'mukitoshana', '', '', '', '', '', '', 'mukiṯoshāna', 'مُكِتٗشَانَ', 'mukiṯoshāna');
INSERT INTO maisha_mume_words VALUES (1864, 158, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1865, 158, 'c', 2, 'هَسِيرَ', 'hası̄ra', 'hasira', '', '', '', '', '', '', 'hası̄ra', 'هَسِيرَ', 'hası̄ra');
INSERT INTO maisha_mume_words VALUES (1866, 158, 'c', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1867, 158, 'c', 4, 'مْفُورٗ', 'mfūro', 'mfuro', '', '', '', '', '', '', 'mfūro', 'مْفُورٗ', 'mfūro');
INSERT INTO maisha_mume_words VALUES (1885, 160, 'b', 1, 'مٖينْڠِ', 'mēngi', 'mengi', '', '', '', '', '', '', 'mēngi', 'مٖينْڠِ', 'mēngi');
INSERT INTO maisha_mume_words VALUES (1868, 158, 'd', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (1869, 158, 'd', 2, 'هُتٗمرِذِيَ', 'huṯomridhiya', 'hutomridhiya', '', '', '', '', '', '', 'huṯomridhiya', 'هُتٗمرِذِيَ', 'huṯomridhiya');
INSERT INTO maisha_mume_words VALUES (1886, 160, 'b', 2, 'هُڤُمِلِيَانَ', 'huvumiliyāna', 'huvumiliyana', '', '', '', '', '', '', 'huvumiliyāna', 'هُڤُمِلِيَانَ', 'huvumiliyāna');
INSERT INTO maisha_mume_words VALUES (1870, 159, 'a', 1, 'نْيُومْبَ', 'nyūmba', 'nyumba', '', '', '', '', '', '', 'nyūmba', 'نْيُومْبَ', 'nyūmba');
INSERT INTO maisha_mume_words VALUES (1871, 159, 'a', 2, 'نْيِينْڠِ', 'nı̄ı̄ngi', 'nyingi', '', '', '', '', '', '', 'nı̄ı̄ngi', 'نْيِينْڠِ', 'nı̄ı̄ngi');
INSERT INTO maisha_mume_words VALUES (1872, 159, 'a', 3, 'هُڤُنْدِيكَ', 'huvunḏı̄ka', 'huvundika', '', '', '', '', '', '', 'huvunḏı̄ka', 'هُڤُنْدِيكَ', 'huvunḏı̄ka');
INSERT INTO maisha_mume_words VALUES (1900, 161, 'd', 1, 'أُسِيوٖ', 'usı̄we', 'usiwe', '', '', '', '', '', '', 'usı̄we', 'أُسِيوٖ', 'usı̄we');
INSERT INTO maisha_mume_words VALUES (1873, 159, 'b', 1, 'زِكِكٗوسَ', 'zikikōsa', 'zikikosa', '', '', '', '', '', '', 'zikikōsa', 'زِكِكٗوسَ', 'zikikōsa');
INSERT INTO maisha_mume_words VALUES (1874, 159, 'b', 2, 'مُؤَفَاكَ', 'muafāka', 'muafaka', '', '', '', '', '', '', 'muafāka', 'مُؤَفَاكَ', 'muafāka');
INSERT INTO maisha_mume_words VALUES (1887, 160, 'c', 1, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1888, 160, 'c', 2, 'هُكٗرٗفِشَانَ', 'hukorofishāna', 'hukorofishana', '', '', '', '', '', '', 'hukorofishāna', 'هُكٗرٗفِشَانَ', 'hukorofishāna');
INSERT INTO maisha_mume_words VALUES (1875, 159, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1876, 159, 'c', 2, 'نْڠٗونٗ', 'ngōno', 'ngono', '', '', '', '', '', '', 'ngōno', 'نْڠٗونٗ', 'ngōno');
INSERT INTO maisha_mume_words VALUES (1877, 159, 'c', 3, 'كُتٗتٗشٖيكَ', 'kuṯoṯoshēka', 'kutotosheka', '', '', '', '', '', '', 'kuṯoṯoshēka', 'كُتٗتٗشٖيكَ', 'kuṯoṯoshēka');
INSERT INTO maisha_mume_words VALUES (1901, 161, 'd', 2, 'تَمْفُرِيَ', 'ṯamfuriya', 'tamfuriya', '', '', '', '', '', '', 'ṯamfuriya', 'تَمْفُرِيَ', 'ṯamfuriya');
INSERT INTO maisha_mume_words VALUES (1889, 160, 'd', 1, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (1890, 160, 'd', 2, 'لِسِپٗتِمِيَ', 'lisipoṯimiya', 'lisipotimiya', '', '', '', '', '', '', 'lisipoṯimiya', 'لِسِپٗتِمِيَ', 'lisipoṯimiya');
INSERT INTO maisha_mume_words VALUES (1915, 163, 'b', 1, 'وَلِيٗ', 'waliyo', 'waliyo', '', '', '', '', '', '', 'waliyo', 'وَلِيٗ', 'waliyo');
INSERT INTO maisha_mume_words VALUES (1916, 163, 'b', 2, 'نَايٗ', 'nāyo', 'nayo', '', '', '', '', '', '', 'nāyo', 'نَايٗ', 'nāyo');
INSERT INTO maisha_mume_words VALUES (1891, 161, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1892, 161, 'a', 2, 'لِنْڠِينٖ', 'lingı̄ne', 'lingine', '', '', '', '', '', '', 'lingı̄ne', 'لِنْڠِينٖ', 'lingı̄ne');
INSERT INTO maisha_mume_words VALUES (1893, 161, 'a', 3, 'كَذَلِيكَ', 'kadhalı̄ka', 'kadhalika', '', '', '', '', '', '', 'kadhalı̄ka', 'كَذَلِيكَ', 'kadhalı̄ka');
INSERT INTO maisha_mume_words VALUES (1902, 162, 'a', 1, 'پَنْڠِينٖ', 'pangı̄ne', 'pangine', '', '', '', '', '', '', 'pangı̄ne', 'پَنْڠِينٖ', 'pangı̄ne');
INSERT INTO maisha_mume_words VALUES (1903, 162, 'a', 2, 'أُتَمُؤٗونَ', 'uṯamuōna', 'utamuona', '', '', '', '', '', '', 'uṯamuōna', 'أُتَمُؤٗونَ', 'uṯamuōna');
INSERT INTO maisha_mume_words VALUES (1894, 161, 'b', 1, 'أَمْبَالٗ', 'ambālo', 'ambalo', '', '', '', '', '', '', 'ambālo', 'أَمْبَالٗ', 'ambālo');
INSERT INTO maisha_mume_words VALUES (1895, 161, 'b', 2, 'كْوَاكٗ', 'kwāko', 'kwako', '', '', '', '', '', '', 'kwāko', 'كْوَاكٗ', 'kwāko');
INSERT INTO maisha_mume_words VALUES (1896, 161, 'b', 3, 'نَتَاكَ', 'naṯāka', 'nataka', '', '', '', '', '', '', 'naṯāka', 'نَتَاكَ', 'naṯāka');
INSERT INTO maisha_mume_words VALUES (1917, 163, 'b', 3, 'بَنَاتِ', 'banāṯi', 'banati', '', '', '', '', '', '', 'banāṯi', 'بَنَاتِ', 'banāṯi');
INSERT INTO maisha_mume_words VALUES (1910, 162, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1911, 162, 'd', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1904, 162, 'b', 1, 'هُفُورَ', 'hufūra', 'hufura', '', '', '', '', '', '', 'hufūra', 'هُفُورَ', 'hufūra');
INSERT INTO maisha_mume_words VALUES (1905, 162, 'b', 2, 'سَبَابُ', 'sabābu', 'sababu', '', '', '', '', '', '', 'sabābu', 'سَبَابُ', 'sabābu');
INSERT INTO maisha_mume_words VALUES (1906, 162, 'b', 3, 'هَانَ', 'hāna', 'hana', '', '', '', '', '', '', 'hāna', 'هَانَ', 'hāna');
INSERT INTO maisha_mume_words VALUES (1912, 162, 'd', 3, 'كُمُيُلِيَ', 'kumuyuliya', 'kumuyuliya', '', '', '', '', '', '', 'kumuyuliya', 'كُمُيُلِيَ', 'kumuyuliya');
INSERT INTO maisha_mume_words VALUES (1907, 162, 'c', 1, 'مُئٖلٖيوٖ', 'muelēwe', 'muelewe', '', '', '', '', '', '', 'muelēwe', 'مُئٖلٖيوٖ', 'muelēwe');
INSERT INTO maisha_mume_words VALUES (1920, 163, 'd', 1, 'هَالِ', 'hāli', 'hali', '', '', '', '', '', '', 'hāli', 'هَالِ', 'hāli');
INSERT INTO maisha_mume_words VALUES (1921, 163, 'd', 2, 'إِنَپٗوَدِيَ', 'inapowaḏiya', 'inapowadiya', '', '', '', '', '', '', 'inapowaḏiya', 'إِنَپٗوَدِيَ', 'inapowaḏiya');
INSERT INTO maisha_mume_words VALUES (1913, 163, 'a', 1, 'إِفَهَامُ', 'ifahāmu', 'ifahamu', '', '', '', '', '', '', 'ifahāmu', 'إِفَهَامُ', 'ifahāmu');
INSERT INTO maisha_mume_words VALUES (1914, 163, 'a', 2, 'تَفَؤُوتِ', 'ṯafaūṯi', 'tafauti', '', '', '', '', '', '', 'ṯafaūṯi', 'تَفَؤُوتِ', 'ṯafaūṯi');
INSERT INTO maisha_mume_words VALUES (1918, 163, 'c', 1, 'هَوٖيزِ', 'hawēzi', 'hawezi', '', '', '', '', '', '', 'hawēzi', 'هَوٖيزِ', 'hawēzi');
INSERT INTO maisha_mume_words VALUES (1919, 163, 'c', 2, 'كُئِذِبِيتِ', 'kuidhibı̄ṯi', 'kuidhibiti', '', '', '', '', '', '', 'kuidhibı̄ṯi', 'كُئِذِبِيتِ', 'kuidhibı̄ṯi');
INSERT INTO maisha_mume_words VALUES (1927, 164, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1922, 164, 'a', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (1930, 164, 'c', 2, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (1931, 164, 'c', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1926, 164, 'b', 1, 'وَلَكِينِ', 'walakı̄ni', 'walakini', '', '', '', '', '', '', 'walakı̄ni', 'وَلَكِينِ', 'walakı̄ni');
INSERT INTO maisha_mume_words VALUES (1923, 164, 'a', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (1924, 164, 'a', 3, 'كِؤُومْبٖ', 'kiūmbe', 'kiumbe', '', '', '', '', '', '', 'kiūmbe', 'كِؤُومْبٖ', 'kiūmbe');
INSERT INTO maisha_mume_words VALUES (1925, 164, 'a', 4, 'دُوفُ', 'ḏūfu', 'dufu', '', '', '', '', '', '', 'ḏūfu', 'دُوفُ', 'ḏūfu');
INSERT INTO maisha_mume_words VALUES (1928, 164, 'b', 3, 'ذَئِيفُ', 'dhaı̄fu', 'dhaifu', '', '', '', '', '', '', 'dhaı̄fu', 'ذَئِيفُ', 'dhaı̄fu');
INSERT INTO maisha_mume_words VALUES (1932, 164, 'c', 4, 'خَفِيفُ', 'ẖafı̄fu', 'hafifu', '', '', '', '', '', '', 'ẖafı̄fu', 'خَفِيفُ', 'ẖafı̄fu');
INSERT INTO maisha_mume_words VALUES (1934, 164, 'd', 2, 'كُڤُمِلِيَ', 'kuvumiliya', 'kuvumiliya', '', '', '', '', '', '', 'kuvumiliya', 'كُڤُمِلِيَ', 'kuvumiliya');
INSERT INTO maisha_mume_words VALUES (1929, 164, 'c', 1, 'مٗويٗ', 'mōyo', 'moyo', '', '', '', '', '', '', 'mōyo', 'مٗويٗ', 'mōyo');
INSERT INTO maisha_mume_words VALUES (1936, 165, 'a', 2, 'وَانَ', 'wāna', 'wana', '', '', '', '', '', '', 'wāna', 'وَانَ', 'wāna');
INSERT INTO maisha_mume_words VALUES (1933, 164, 'd', 1, 'هُشِنْدوَ', 'hushinḏwa', 'hushindwa', '', '', '', '', '', '', 'hushinḏwa', 'هُشِنْدوَ', 'hushinḏwa');
INSERT INTO maisha_mume_words VALUES (1937, 165, 'a', 3, 'أُومْبٗ', 'ūmbo', 'umbo', '', '', '', '', '', '', 'ūmbo', 'أُومْبٗ', 'ūmbo');
INSERT INTO maisha_mume_words VALUES (1935, 165, 'a', 1, 'وَنَوَاكٖ', 'wanawāke', 'wanawake', '', '', '', '', '', '', 'wanawāke', 'وَنَوَاكٖ', 'wanawāke');
INSERT INTO maisha_mume_words VALUES (1969, 167, 'c', 2, 'چٗوتٖ', 'chōṯe', 'chote', '', '', '', '', '', '', 'chōṯe', 'چٗوتٖ', 'chōṯe');
INSERT INTO maisha_mume_words VALUES (1970, 167, 'c', 3, 'كِوِلِوِيلِ', 'kiwiliwı̄li', 'kiwiliwili', '', '', '', '', '', '', 'kiwiliwı̄li', 'كِوِلِوِيلِ', 'kiwiliwı̄li');
INSERT INTO maisha_mume_words VALUES (1938, 165, 'b', 1, 'هُؤَثِرِيكَ', 'huathirı̄ka', 'huathirika', '', '', '', '', '', '', 'huathirı̄ka', 'هُؤَثِرِيكَ', 'huathirı̄ka');
INSERT INTO maisha_mume_words VALUES (1939, 165, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (1940, 165, 'b', 3, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (1941, 165, 'c', 1, 'كَتِيتِ', 'kaṯı̄ṯi', 'katiti', '', '', '', '', '', '', 'kaṯı̄ṯi', 'كَتِيتِ', 'kaṯı̄ṯi');
INSERT INTO maisha_mume_words VALUES (1942, 165, 'c', 2, 'يَكٖينْدَ', 'yakēnḏa', 'yakenda', '', '', '', '', '', '', 'yakēnḏa', 'يَكٖينْدَ', 'yakēnḏa');
INSERT INTO maisha_mume_words VALUES (1943, 165, 'c', 3, 'كٗومْبٗ', 'kōmbo', 'kombo', '', '', '', '', '', '', 'kōmbo', 'كٗومْبٗ', 'kōmbo');
INSERT INTO maisha_mume_words VALUES (2009, 170, 'd', 2, 'چَ', 'cha', 'cha', '', '', '', '', '', '', 'cha', 'چَ', 'cha');
INSERT INTO maisha_mume_words VALUES (2010, 170, 'd', 3, 'مَزٗوٖيَ', 'mazoweya', 'mazoweya', '', '', '', '', '', '', 'mazoweya', 'مَزٗوٖيَ', 'mazoweya');
INSERT INTO maisha_mume_words VALUES (2002, 170, 'b', 1, 'هُوَرُكِيَ', 'huwarukiya', 'huwarukiya', '', '', '', '', '', '', 'huwarukiya', 'هُوَرُكِيَ', 'huwarukiya');
INSERT INTO maisha_mume_words VALUES (1944, 165, 'd', 1, 'وَاسِ', 'wāsi', 'wasi', '', '', '', '', '', '', 'wāsi', 'وَاسِ', 'wāsi');
INSERT INTO maisha_mume_words VALUES (1945, 165, 'd', 2, 'وَاسِ', 'wāsi', 'wasi', '', '', '', '', '', '', 'wāsi', 'وَاسِ', 'wāsi');
INSERT INTO maisha_mume_words VALUES (1946, 165, 'd', 3, 'هُمْتِيَ', 'humṯiya', 'humtiya', '', '', '', '', '', '', 'humṯiya', 'هُمْتِيَ', 'humṯiya');
INSERT INTO maisha_mume_words VALUES (1971, 167, 'd', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (1972, 167, 'd', 2, 'كَتِيكَ', 'kaṯı̄ka', 'katika', '', '', '', '', '', '', 'kaṯı̄ka', 'كَتِيكَ', 'kaṯı̄ka');
INSERT INTO maisha_mume_words VALUES (1973, 167, 'd', 3, 'أُذِيَ', 'udhiya', 'udhiya', '', '', '', '', '', '', 'udhiya', 'أُذِيَ', 'udhiya');
INSERT INTO maisha_mume_words VALUES (1947, 166, 'a', 1, 'كَتِيكَ', 'kaṯı̄ka', 'katika', '', '', '', '', '', '', 'kaṯı̄ka', 'كَتِيكَ', 'kaṯı̄ka');
INSERT INTO maisha_mume_words VALUES (1948, 166, 'a', 2, 'سِيكُ', 'sı̄ku', 'siku', '', '', '', '', '', '', 'sı̄ku', 'سِيكُ', 'sı̄ku');
INSERT INTO maisha_mume_words VALUES (1949, 166, 'a', 3, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (1950, 166, 'a', 4, 'أَادَ', 'āḏa', 'ada', '', '', '', '', '', '', 'āḏa', 'أَادَ', 'āḏa');
INSERT INTO maisha_mume_words VALUES (1990, 169, 'b', 1, 'نَذَانِ', 'nadhāni', 'nadhani', '', '', '', '', '', '', 'nadhāni', 'نَذَانِ', 'nadhāni');
INSERT INTO maisha_mume_words VALUES (1951, 166, 'b', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (1952, 166, 'b', 2, 'مْوٖيزِ', 'mwēzi', 'mwezi', '', '', '', '', '', '', 'mwēzi', 'مْوٖيزِ', 'mwēzi');
INSERT INTO maisha_mume_words VALUES (1953, 166, 'b', 3, 'هُپَاتَ', 'hupāṯa', 'hupata', '', '', '', '', '', '', 'hupāṯa', 'هُپَاتَ', 'hupāṯa');
INSERT INTO maisha_mume_words VALUES (1954, 166, 'b', 4, 'شِيدَ', 'shı̄ḏa', 'shida', '', '', '', '', '', '', 'shı̄ḏa', 'شِيدَ', 'shı̄ḏa');
INSERT INTO maisha_mume_words VALUES (1991, 169, 'b', 2, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (1992, 169, 'b', 3, 'أَكِيلِ', 'akı̄li', 'akili', '', '', '', '', '', '', 'akı̄li', 'أَكِيلِ', 'akı̄li');
INSERT INTO maisha_mume_words VALUES (1974, 168, 'a', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (1955, 166, 'c', 1, 'نْدِيپٗ', 'nḏı̄po', 'ndipo', '', '', '', '', '', '', 'nḏı̄po', 'نْدِيپٗ', 'nḏı̄po');
INSERT INTO maisha_mume_words VALUES (1956, 166, 'c', 2, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (1957, 166, 'c', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1958, 166, 'c', 4, 'إِبَادَ', 'ibāḏa', 'ibada', '', '', '', '', '', '', 'ibāḏa', 'إِبَادَ', 'ibāḏa');
INSERT INTO maisha_mume_words VALUES (1975, 168, 'a', 2, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (1976, 168, 'a', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1959, 166, 'd', 1, 'مُونْڠُ', 'mūngu', 'mungu', '', '', '', '', '', '', 'mūngu', 'مُونْڠُ', 'mūngu');
INSERT INTO maisha_mume_words VALUES (1960, 166, 'd', 2, 'كَوَپُنْڠُزِيَ', 'kawapunguziya', 'kawapunguziya', '', '', '', '', '', '', 'kawapunguziya', 'كَوَپُنْڠُزِيَ', 'kawapunguziya');
INSERT INTO maisha_mume_words VALUES (1977, 168, 'a', 4, 'وَيَاڤُ', 'wayāvu', 'wayavu', '', '', '', '', '', '', 'wayāvu', 'وَيَاڤُ', 'wayāvu');
INSERT INTO maisha_mume_words VALUES (1961, 167, 'a', 1, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1962, 167, 'a', 2, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (1964, 167, 'a', 4, 'ثَقِيلِ', 'thaqı̄li', 'thaqili', '', '', '', '', '', '', 'thaqı̄li', 'ثَقِيلِ', 'thaqı̄li');
INSERT INTO maisha_mume_words VALUES (1978, 168, 'b', 1, 'هُكٗوسَ', 'hukōsa', 'hukosa', '', '', '', '', '', '', 'hukōsa', 'هُكٗوسَ', 'hukōsa');
INSERT INTO maisha_mume_words VALUES (1979, 168, 'b', 2, 'أُڤِمِلِيڤُ', 'uvimilı̄vu', 'uvimilivu', '', '', '', '', '', '', 'uvimilı̄vu', 'أُڤِمِلِيڤُ', 'uvimilı̄vu');
INSERT INTO maisha_mume_words VALUES (1965, 167, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1966, 167, 'b', 2, 'هُبَدِلِيكَ', 'hubaḏilı̄ka', 'hubadilika', '', '', '', '', '', '', 'hubaḏilı̄ka', 'هُبَدِلِيكَ', 'hubaḏilı̄ka');
INSERT INTO maisha_mume_words VALUES (1967, 167, 'b', 3, 'هَالِ', 'hāli', 'hali', '', '', '', '', '', '', 'hāli', 'هَالِ', 'hāli');
INSERT INTO maisha_mume_words VALUES (2003, 170, 'b', 2, 'زِجَانَ', 'zijāna', 'zijana', '', '', '', '', '', '', 'zijāna', 'زِجَانَ', 'zijāna');
INSERT INTO maisha_mume_words VALUES (1993, 169, 'c', 1, 'هَئِيوِ', 'haı̄wi', 'haiwi', '', '', '', '', '', '', 'haı̄wi', 'هَئِيوِ', 'haı̄wi');
INSERT INTO maisha_mume_words VALUES (1994, 169, 'c', 2, 'سَاوَ', 'sāwa', 'sawa', '', '', '', '', '', '', 'sāwa', 'سَاوَ', 'sāwa');
INSERT INTO maisha_mume_words VALUES (1995, 169, 'c', 3, 'كَمِيلِ', 'kamı̄li', 'kamili', '', '', '', '', '', '', 'kamı̄li', 'كَمِيلِ', 'kamı̄li');
INSERT INTO maisha_mume_words VALUES (1980, 168, 'c', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (1981, 168, 'c', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (1982, 168, 'c', 3, 'إِيڤُ', 'ı̄vu', 'ivu', '', '', '', '', '', '', 'ı̄vu', 'إِيڤُ', 'ı̄vu');
INSERT INTO maisha_mume_words VALUES (1983, 168, 'c', 4, 'إِيڤُ', 'ı̄vu', 'ivu', '', '', '', '', '', '', 'ı̄vu', 'إِيڤُ', 'ı̄vu');
INSERT INTO maisha_mume_words VALUES (1984, 168, 'd', 1, 'كُتُمْبُوكَ', 'kuṯumbūka', 'kutumbuka', '', '', '', '', '', '', 'kuṯumbūka', 'كُتُمْبُوكَ', 'kuṯumbūka');
INSERT INTO maisha_mume_words VALUES (1985, 168, 'd', 2, 'هُزٖنْڠٖيَ', 'huzengeya', 'huzengeya', '', '', '', '', '', '', 'huzengeya', 'هُزٖنْڠٖيَ', 'huzengeya');
INSERT INTO maisha_mume_words VALUES (1996, 169, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (1986, 169, 'a', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (1987, 169, 'a', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (1988, 169, 'a', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (1989, 169, 'a', 4, 'وَكَالِ', 'wakāli', 'wakali', '', '', '', '', '', '', 'wakāli', 'وَكَالِ', 'wakāli');
INSERT INTO maisha_mume_words VALUES (1997, 169, 'd', 2, 'پُنْڠُوَانِ', 'punguwāni', 'punguwani', '', '', '', '', '', '', 'punguwāni', 'پُنْڠُوَانِ', 'punguwāni');
INSERT INTO maisha_mume_words VALUES (1998, 169, 'd', 3, 'هُنْڠِيَ', 'hungiya', 'hungiya', '', '', '', '', '', '', 'hungiya', 'هُنْڠِيَ', 'hungiya');
INSERT INTO maisha_mume_words VALUES (1999, 170, 'a', 1, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (2000, 170, 'a', 2, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2001, 170, 'a', 3, 'تَمُؤٗونَ', 'ṯamuōna', 'tamuona', '', '', '', '', '', '', 'ṯamuōna', 'تَمُؤٗونَ', 'ṯamuōna');
INSERT INTO maisha_mume_words VALUES (2004, 170, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2005, 170, 'c', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2006, 170, 'c', 3, 'أُكَالِ', 'ukāli', 'ukali', '', '', '', '', '', '', 'ukāli', 'أُكَالِ', 'ukāli');
INSERT INTO maisha_mume_words VALUES (2007, 170, 'c', 4, 'هُنٖينَ', 'hunēna', 'hunena', '', '', '', '', '', '', 'hunēna', 'هُنٖينَ', 'hunēna');
INSERT INTO maisha_mume_words VALUES (2020, 171, 'c', 3, 'أَمْپِيمٖ', 'ampı̄me', 'ampime', '', '', '', '', '', '', 'ampı̄me', 'أَمْپِيمٖ', 'ampı̄me');
INSERT INTO maisha_mume_words VALUES (2024, 172, 'a', 2, 'كُمْفَهَامُ', 'kumfahāmu', 'kumfahamu', '', '', '', '', '', '', 'kumfahāmu', 'كُمْفَهَامُ', 'kumfahāmu');
INSERT INTO maisha_mume_words VALUES (2008, 170, 'd', 1, 'كِنْيُومٖ', 'kinyūme', 'kinyume', '', '', '', '', '', '', 'kinyūme', 'كِنْيُومٖ', 'kinyūme');
INSERT INTO maisha_mume_words VALUES (2015, 171, 'b', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2016, 171, 'b', 2, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (2017, 171, 'b', 3, 'أَمْسٗومٖ', 'amsōme', 'amsome', '', '', '', '', '', '', 'amsōme', 'أَمْسٗومٖ', 'amsōme');
INSERT INTO maisha_mume_words VALUES (2011, 171, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2012, 171, 'a', 2, 'مُهِيمُ', 'muhı̄mu', 'muhimu', '', '', '', '', '', '', 'muhı̄mu', 'مُهِيمُ', 'muhı̄mu');
INSERT INTO maisha_mume_words VALUES (2013, 171, 'a', 3, 'كُولَ', 'kūla', 'kula', '', '', '', '', '', '', 'kūla', 'كُولَ', 'kūla');
INSERT INTO maisha_mume_words VALUES (2014, 171, 'a', 4, 'مُومٖ', 'mūme', 'mume', '', '', '', '', '', '', 'mūme', 'مُومٖ', 'mūme');
INSERT INTO maisha_mume_words VALUES (2018, 171, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2019, 171, 'c', 2, 'زِپِيمٗ', 'zipı̄mo', 'zipimo', '', '', '', '', '', '', 'zipı̄mo', 'زِپِيمٗ', 'zipı̄mo');
INSERT INTO maisha_mume_words VALUES (2022, 171, 'd', 2, 'زِكِكَرِبِيَ', 'zikikaribiya', 'zikikaribiya', '', '', '', '', '', '', 'zikikaribiya', 'زِكِكَرِبِيَ', 'zikikaribiya');
INSERT INTO maisha_mume_words VALUES (2021, 171, 'd', 1, 'سِيكُ', 'sı̄ku', 'siku', '', '', '', '', '', '', 'sı̄ku', 'سِيكُ', 'sı̄ku');
INSERT INTO maisha_mume_words VALUES (2026, 172, 'b', 2, 'كُملَؤُومُ', 'kumlaūmu', 'kumlaumu', '', '', '', '', '', '', 'kumlaūmu', 'كُملَؤُومُ', 'kumlaūmu');
INSERT INTO maisha_mume_words VALUES (2023, 172, 'a', 1, 'أُكِيسَ', 'ukı̄sa', 'ukisa', '', '', '', '', '', '', 'ukı̄sa', 'أُكِيسَ', 'ukı̄sa');
INSERT INTO maisha_mume_words VALUES (2028, 172, 'c', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (2025, 172, 'b', 1, 'أُوَاتٖ', 'uwāṯe', 'uwate', '', '', '', '', '', '', 'uwāṯe', 'أُوَاتٖ', 'uwāṯe');
INSERT INTO maisha_mume_words VALUES (2029, 172, 'c', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2030, 172, 'c', 4, 'مُهِيمُ', 'muhı̄mu', 'muhimu', '', '', '', '', '', '', 'muhı̄mu', 'مُهِيمُ', 'muhı̄mu');
INSERT INTO maisha_mume_words VALUES (2027, 172, 'c', 1, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (2031, 172, 'd', 1, 'يَتَاكَ', 'yaṯāka', 'yataka', '', '', '', '', '', '', 'yaṯāka', 'يَتَاكَ', 'yaṯāka');
INSERT INTO maisha_mume_words VALUES (2032, 172, 'd', 2, 'كُلِزٗوٖيَ', 'kulizoweya', 'kulizoweya', '', '', '', '', '', '', 'kulizoweya', 'كُلِزٗوٖيَ', 'kulizoweya');
INSERT INTO maisha_mume_words VALUES (2061, 175, 'b', 1, 'أَتَاكَ', 'aṯāka', 'ataka', '', '', '', '', '', '', 'aṯāka', 'أَتَاكَ', 'aṯāka');
INSERT INTO maisha_mume_words VALUES (2062, 175, 'b', 2, 'نْسِ', 'nsi', 'nsi', '', '', '', '', '', '', 'nsi', 'نْسِ', 'nsi');
INSERT INTO maisha_mume_words VALUES (2063, 175, 'b', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2064, 175, 'b', 4, 'سِيكِ', 'sı̄ki', 'siki', '', '', '', '', '', '', 'sı̄ki', 'سِيكِ', 'sı̄ki');
INSERT INTO maisha_mume_words VALUES (2033, 173, 'a', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (2034, 173, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2035, 173, 'a', 3, 'مُودَ', 'mūḏa', 'muda', '', '', '', '', '', '', 'mūḏa', 'مُودَ', 'mūḏa');
INSERT INTO maisha_mume_words VALUES (2036, 173, 'a', 4, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2037, 173, 'a', 5, 'مِيمْبَ', 'mı̄mba', 'mimba', '', '', '', '', '', '', 'mı̄mba', 'مِيمْبَ', 'mı̄mba');
INSERT INTO maisha_mume_words VALUES (2094, 178, 'a', 3, 'مْوٖرٖيڤُ', 'mwerēvu', 'mwerevu', '', '', '', '', '', '', 'mwerēvu', 'مْوٖرٖيڤُ', 'mwerēvu');
INSERT INTO maisha_mume_words VALUES (2081, 177, 'a', 1, 'مْپٖيمْبٖ', 'mpēmbe', 'mpembe', '', '', '', '', '', '', 'mpēmbe', 'مْپٖيمْبٖ', 'mpēmbe');
INSERT INTO maisha_mume_words VALUES (2065, 175, 'c', 1, 'أَلَاچٗ', 'alācho', 'alacho', '', '', '', '', '', '', 'alācho', 'أَلَاچٗ', 'alācho');
INSERT INTO maisha_mume_words VALUES (2038, 173, 'b', 1, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2039, 173, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2040, 173, 'b', 3, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2041, 173, 'b', 4, 'هُڤِيمْبَ', 'huvı̄mba', 'huvimba', '', '', '', '', '', '', 'huvı̄mba', 'هُڤِيمْبَ', 'huvı̄mba');
INSERT INTO maisha_mume_words VALUES (2066, 175, 'c', 2, 'هَكِمْشِيكِ', 'hakimshı̄ki', 'hakimshiki', '', '', '', '', '', '', 'hakimshı̄ki', 'هَكِمْشِيكِ', 'hakimshı̄ki');
INSERT INTO maisha_mume_words VALUES (2042, 173, 'c', 1, 'أُكَؤٗونَ', 'ukaōna', 'ukaona', '', '', '', '', '', '', 'ukaōna', 'أُكَؤٗونَ', 'ukaōna');
INSERT INTO maisha_mume_words VALUES (2043, 173, 'c', 2, 'كَانَ', 'kāna', 'kana', '', '', '', '', '', '', 'kāna', 'كَانَ', 'kāna');
INSERT INTO maisha_mume_words VALUES (2044, 173, 'c', 3, 'كْوَامْبَ', 'kwāmba', 'kwamba', '', '', '', '', '', '', 'kwāmba', 'كْوَامْبَ', 'kwāmba');
INSERT INTO maisha_mume_words VALUES (2082, 177, 'a', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (2083, 177, 'a', 3, 'كِجَانَ', 'kijāna', 'kijana', '', '', '', '', '', '', 'kijāna', 'كِجَانَ', 'kijāna');
INSERT INTO maisha_mume_words VALUES (2045, 173, 'd', 1, 'مٖكُوَ', 'mekuwa', 'mekuwa', '', '', '', '', '', '', 'mekuwa', 'مٖكُوَ', 'mekuwa');
INSERT INTO maisha_mume_words VALUES (2046, 173, 'd', 2, 'هُكُزٖنْڠٖيَ', 'hukuzengeya', 'hukuzengeya', '', '', '', '', '', '', 'hukuzengeya', 'هُكُزٖنْڠٖيَ', 'hukuzengeya');
INSERT INTO maisha_mume_words VALUES (2067, 175, 'd', 1, 'أَكِتِيَاچٗ', 'akiṯiyācho', 'akitiyacho', '', '', '', '', '', '', 'akiṯiyācho', 'أَكِتِيَاچٗ', 'akiṯiyācho');
INSERT INTO maisha_mume_words VALUES (2068, 175, 'd', 2, 'هُمْوَايَ', 'humwāya', 'humwaya', '', '', '', '', '', '', 'humwāya', 'هُمْوَايَ', 'humwāya');
INSERT INTO maisha_mume_words VALUES (2047, 174, 'a', 1, 'كُكٗوسَ', 'kukōsa', 'kukosa', '', '', '', '', '', '', 'kukōsa', 'كُكٗوسَ', 'kukōsa');
INSERT INTO maisha_mume_words VALUES (2048, 174, 'a', 2, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (2049, 174, 'a', 3, 'كَتِيتِ', 'kaṯı̄ṯi', 'katiti', '', '', '', '', '', '', 'kaṯı̄ṯi', 'كَتِيتِ', 'kaṯı̄ṯi');
INSERT INTO maisha_mume_words VALUES (2050, 174, 'b', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (2051, 174, 'b', 2, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (2052, 174, 'b', 3, 'أُمٖهِيتِ', 'umehı̄ṯi', 'umehiti', '', '', '', '', '', '', 'umehı̄ṯi', 'أُمٖهِيتِ', 'umehı̄ṯi');
INSERT INTO maisha_mume_words VALUES (2053, 174, 'c', 1, 'أَنْڠَلِيَ', 'angaliya', 'angaliya', '', '', '', '', '', '', 'angaliya', 'أَنْڠَلِيَ', 'angaliya');
INSERT INTO maisha_mume_words VALUES (2054, 174, 'c', 2, 'كِبِرِيتِ', 'kibirı̄ṯi', 'kibiriti', '', '', '', '', '', '', 'kibirı̄ṯi', 'كِبِرِيتِ', 'kibirı̄ṯi');
INSERT INTO maisha_mume_words VALUES (2069, 176, 'a', 1, 'زِئٖلٖيوٖ', 'zielēwe', 'zielewe', '', '', '', '', '', '', 'zielēwe', 'زِئٖلٖيوٖ', 'zielēwe');
INSERT INTO maisha_mume_words VALUES (2070, 176, 'a', 2, 'سِيكُ', 'sı̄ku', 'siku', '', '', '', '', '', '', 'sı̄ku', 'سِيكُ', 'sı̄ku');
INSERT INTO maisha_mume_words VALUES (2071, 176, 'a', 3, 'هِيزِ', 'hı̄zi', 'hizi', '', '', '', '', '', '', 'hı̄zi', 'هِيزِ', 'hı̄zi');
INSERT INTO maisha_mume_words VALUES (2055, 174, 'd', 1, 'كِدَرِيكَ', 'kiḏarı̄ka', 'kidarika', '', '', '', '', '', '', 'kiḏarı̄ka', 'كِدَرِيكَ', 'kiḏarı̄ka');
INSERT INTO maisha_mume_words VALUES (2056, 174, 'd', 2, 'تٖيتٖ', 'ṯēṯe', 'tete', '', '', '', '', '', '', 'ṯēṯe', 'تٖيتٖ', 'ṯēṯe');
INSERT INTO maisha_mume_words VALUES (2057, 174, 'd', 3, 'هُويَ', 'hūya', 'huya', '', '', '', '', '', '', 'hūya', 'هُويَ', 'hūya');
INSERT INTO maisha_mume_words VALUES (2058, 175, 'a', 1, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2059, 175, 'a', 2, 'نْيَامَ', 'nyāma', 'nyama', '', '', '', '', '', '', 'nyāma', 'نْيَامَ', 'nyāma');
INSERT INTO maisha_mume_words VALUES (2060, 175, 'a', 3, 'هَئِتَاكِ', 'haiṯāki', 'haitaki', '', '', '', '', '', '', 'haiṯāki', 'هَئِتَاكِ', 'haiṯāki');
INSERT INTO maisha_mume_words VALUES (2084, 177, 'b', 1, 'تٖينَ', 'ṯēna', 'tena', '', '', '', '', '', '', 'ṯēna', 'تٖينَ', 'ṯēna');
INSERT INTO maisha_mume_words VALUES (2085, 177, 'b', 2, 'أَلِيٗ', 'aliyo', 'aliyo', '', '', '', '', '', '', 'aliyo', 'أَلِيٗ', 'aliyo');
INSERT INTO maisha_mume_words VALUES (2086, 177, 'b', 3, 'مْنُونَ', 'mnūna', 'mnuna', '', '', '', '', '', '', 'mnūna', 'مْنُونَ', 'mnūna');
INSERT INTO maisha_mume_words VALUES (2072, 176, 'b', 1, 'مِيمْبَ', 'mı̄mba', 'mimba', '', '', '', '', '', '', 'mı̄mba', 'مِيمْبَ', 'mı̄mba');
INSERT INTO maisha_mume_words VALUES (2073, 176, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2074, 176, 'b', 3, 'سِيكُ', 'sı̄ku', 'siku', '', '', '', '', '', '', 'sı̄ku', 'سِيكُ', 'sı̄ku');
INSERT INTO maisha_mume_words VALUES (2075, 176, 'b', 4, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (2076, 176, 'b', 5, 'مْوٖيزِ', 'mwēzi', 'mwezi', '', '', '', '', '', '', 'mwēzi', 'مْوٖيزِ', 'mwēzi');
INSERT INTO maisha_mume_words VALUES (2100, 178, 'd', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2101, 178, 'd', 2, 'نَايٖ', 'nāye', 'naye', '', '', '', '', '', '', 'nāye', 'نَايٖ', 'nāye');
INSERT INTO maisha_mume_words VALUES (2077, 176, 'c', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2078, 176, 'c', 2, 'هُمْبٖمْبٖلٖيزِ', 'humbembelēzi', 'humbembelezi', '', '', '', '', '', '', 'humbembelēzi', 'هُمْبٖمْبٖلٖيزِ', 'humbembelēzi');
INSERT INTO maisha_mume_words VALUES (2087, 177, 'c', 1, 'نْدِيپٗ', 'nḏı̄po', 'ndipo', '', '', '', '', '', '', 'nḏı̄po', 'نْدِيپٗ', 'nḏı̄po');
INSERT INTO maisha_mume_words VALUES (2088, 177, 'c', 2, 'مُتَسِكِزَانَ', 'muṯasikizāna', 'mutasikizana', '', '', '', '', '', '', 'muṯasikizāna', 'مُتَسِكِزَانَ', 'muṯasikizāna');
INSERT INTO maisha_mume_words VALUES (2079, 176, 'd', 1, 'تَؤٗونَ', 'ṯaōna', 'taona', '', '', '', '', '', '', 'ṯaōna', 'تَؤٗونَ', 'ṯaōna');
INSERT INTO maisha_mume_words VALUES (2080, 176, 'd', 2, 'وَمُؤٗنٖيَ', 'wamuoneya', 'wamuoneya', '', '', '', '', '', '', 'wamuoneya', 'وَمُؤٗنٖيَ', 'wamuoneya');
INSERT INTO maisha_mume_words VALUES (2102, 178, 'd', 3, 'مٖتٖتٖيَ', 'meṯeṯeya', 'meteteya', '', '', '', '', '', '', 'meṯeṯeya', 'مٖتٖتٖيَ', 'meṯeṯeya');
INSERT INTO maisha_mume_words VALUES (2095, 178, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2096, 178, 'b', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (2097, 178, 'b', 3, 'مْڤُمِلِيڤُ', 'mvumilı̄vu', 'mvumilivu', '', '', '', '', '', '', 'mvumilı̄vu', 'مْڤُمِلِيڤُ', 'mvumilı̄vu');
INSERT INTO maisha_mume_words VALUES (2089, 177, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2090, 177, 'd', 2, 'يَدُومُ', 'yaḏūmu', 'yadumu', '', '', '', '', '', '', 'yaḏūmu', 'يَدُومُ', 'yaḏūmu');
INSERT INTO maisha_mume_words VALUES (2091, 177, 'd', 3, 'مَزٗوٖيَ', 'mazoweya', 'mazoweya', '', '', '', '', '', '', 'mazoweya', 'مَزٗوٖيَ', 'mazoweya');
INSERT INTO maisha_mume_words VALUES (2092, 178, 'a', 1, 'شَرُوتِ', 'sharūṯi', 'sharuti', '', '', '', '', '', '', 'sharūṯi', 'شَرُوتِ', 'sharūṯi');
INSERT INTO maisha_mume_words VALUES (2098, 178, 'c', 1, 'أُسِفُرِيشٖ', 'usifurı̄she', 'usifurishe', '', '', '', '', '', '', 'usifurı̄she', 'أُسِفُرِيشٖ', 'usifurı̄she');
INSERT INTO maisha_mume_words VALUES (2099, 178, 'c', 2, 'مَشَاڤُ', 'mashāvu', 'mashavu', '', '', '', '', '', '', 'mashāvu', 'مَشَاڤُ', 'mashāvu');
INSERT INTO maisha_mume_words VALUES (2110, 179, 'b', 4, 'مَتٗوتٗ', 'maṯōṯo', 'matoto', '', '', '', '', '', '', 'maṯōṯo', 'مَتٗوتٗ', 'maṯōṯo');
INSERT INTO maisha_mume_words VALUES (2115, 179, 'd', 2, 'مْتَانْڠَ', 'mṯānga', 'mtanga', '', '', '', '', '', '', 'mṯānga', 'مْتَانْڠَ', 'mṯānga');
INSERT INTO maisha_mume_words VALUES (2107, 179, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2108, 179, 'b', 2, 'مَكُؤُ', 'makuu', 'makuu', '', '', '', '', '', '', 'makuu', 'مَكُؤُ', 'makuu');
INSERT INTO maisha_mume_words VALUES (2109, 179, 'b', 3, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (2103, 179, 'a', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (2104, 179, 'a', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (2105, 179, 'a', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (2106, 179, 'a', 4, 'أُمِيتٗ', 'umı̄ṯo', 'umito', '', '', '', '', '', '', 'umı̄ṯo', 'أُمِيتٗ', 'umı̄ṯo');
INSERT INTO maisha_mume_words VALUES (2113, 179, 'c', 3, 'تٗتٗوتٗ', 'ṯoṯōṯo', 'tototo', '', '', '', '', '', '', 'ṯoṯōṯo', 'تٗتٗوتٗ', 'ṯoṯōṯo');
INSERT INTO maisha_mume_words VALUES (2111, 179, 'c', 1, 'وٖنْڠِينٖ', 'wengı̄ne', 'wengine', '', '', '', '', '', '', 'wengı̄ne', 'وٖنْڠِينٖ', 'wengı̄ne');
INSERT INTO maisha_mume_words VALUES (2112, 179, 'c', 2, 'هُولَ', 'hūla', 'hula', '', '', '', '', '', '', 'hūla', 'هُولَ', 'hūla');
INSERT INTO maisha_mume_words VALUES (2116, 179, 'd', 3, 'هُبُڠِيَ', 'hubugiya', 'hubugiya', '', '', '', '', '', '', 'hubugiya', 'هُبُڠِيَ', 'hubugiya');
INSERT INTO maisha_mume_words VALUES (2118, 180, 'a', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (2114, 179, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2119, 180, 'a', 3, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (2120, 180, 'a', 4, 'مِؤُجِيزَ', 'miujı̄za', 'miujiza', '', '', '', '', '', '', 'miujı̄za', 'مِؤُجِيزَ', 'miujı̄za');
INSERT INTO maisha_mume_words VALUES (2122, 180, 'b', 2, 'هَالِ', 'hāli', 'hali', '', '', '', '', '', '', 'hāli', 'هَالِ', 'hāli');
INSERT INTO maisha_mume_words VALUES (2117, 180, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2123, 180, 'b', 3, 'هُڠٖؤُوزَ', 'hugeūza', 'hugeuza', '', '', '', '', '', '', 'hugeūza', 'هُڠٖؤُوزَ', 'hugeūza');
INSERT INTO maisha_mume_words VALUES (2121, 180, 'b', 1, 'زَاءٗ', 'zāo', 'zao', '', '', '', '', '', '', 'zāo', 'زَاءٗ', 'zāo');
INSERT INTO maisha_mume_words VALUES (2124, 180, 'c', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2184, 186, 'c', 2, 'مُمٖذِكِيكَ', 'mumedhikı̄ka', 'mumedhikika', '', '', '', '', '', '', 'mumedhikı̄ka', 'مُمٖذِكِيكَ', 'mumedhikı̄ka');
INSERT INTO maisha_mume_words VALUES (2125, 180, 'c', 2, 'هُتٗبٖمْبٖلٖيزَ', 'huṯobembelēza', 'hutobembeleza', '', '', '', '', '', '', 'huṯobembelēza', 'هُتٗبٖمْبٖلٖيزَ', 'huṯobembelēza');
INSERT INTO maisha_mume_words VALUES (2156, 183, 'c', 2, 'أُكِكَسِرِيكَ', 'ukikasirı̄ka', 'ukikasirika', '', '', '', '', '', '', 'ukikasirı̄ka', 'أُكِكَسِرِيكَ', 'ukikasirı̄ka');
INSERT INTO maisha_mume_words VALUES (2127, 180, 'd', 2, 'تَؤٗونَ', 'ṯaōna', 'taona', '', '', '', '', '', '', 'ṯaōna', 'تَؤٗونَ', 'ṯaōna');
INSERT INTO maisha_mume_words VALUES (2128, 180, 'd', 3, 'هُلِيَ', 'huliya', 'huliya', '', '', '', '', '', '', 'huliya', 'هُلِيَ', 'huliya');
INSERT INTO maisha_mume_words VALUES (2173, 185, 'c', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (2129, 181, 'a', 1, 'مْوَنَامْكٖ', 'mwanāmke', 'mwanamke', '', '', '', '', '', '', 'mwanāmke', 'مْوَنَامْكٖ', 'mwanāmke');
INSERT INTO maisha_mume_words VALUES (2130, 181, 'a', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2131, 181, 'a', 3, 'تَأَبُ', 'ṯaabu', 'taabu', '', '', '', '', '', '', 'ṯaabu', 'تَأَبُ', 'ṯaabu');
INSERT INTO maisha_mume_words VALUES (2174, 185, 'c', 2, 'سِئِتٖنْدٖكٖيزٖ', 'siiṯenḏekēze', 'siitendekeze', '', '', '', '', '', '', 'siiṯenḏekēze', 'سِئِتٖنْدٖكٖيزٖ', 'siiṯenḏekēze');
INSERT INTO maisha_mume_words VALUES (2157, 183, 'd', 1, 'مَيُوتٗ', 'mayūṯo', 'mayuto', '', '', '', '', '', '', 'mayūṯo', 'مَيُوتٗ', 'mayūṯo');
INSERT INTO maisha_mume_words VALUES (2158, 183, 'd', 2, 'يَتَسَلِيَ', 'yaṯasaliya', 'yatasaliya', '', '', '', '', '', '', 'yaṯasaliya', 'يَتَسَلِيَ', 'yaṯasaliya');
INSERT INTO maisha_mume_words VALUES (2132, 181, 'b', 1, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2133, 181, 'b', 2, 'هُفَانْيَ', 'hufānya', 'hufanya', '', '', '', '', '', '', 'hufānya', 'هُفَانْيَ', 'hufānya');
INSERT INTO maisha_mume_words VALUES (2134, 181, 'b', 3, 'غَذَابُ', 'ḡadhābu', 'ghadhabu', '', '', '', '', '', '', 'ḡadhābu', 'غَذَابُ', 'ḡadhābu');
INSERT INTO maisha_mume_words VALUES (2135, 181, 'c', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (2136, 181, 'c', 2, 'أَالٗ', 'ālo', 'alo', '', '', '', '', '', '', 'ālo', 'أَالٗ', 'ālo');
INSERT INTO maisha_mume_words VALUES (2137, 181, 'c', 3, 'تَرَتِيبُ', 'ṯaraṯı̄bu', 'taratibu', '', '', '', '', '', '', 'ṯaraṯı̄bu', 'تَرَتِيبُ', 'ṯaraṯı̄bu');
INSERT INTO maisha_mume_words VALUES (2295, 195, 'd', 4, 'أُذِيَ', 'udhiya', 'udhiya', '', '', '', '', '', '', 'udhiya', 'أُذِيَ', 'udhiya');
INSERT INTO maisha_mume_words VALUES (2159, 184, 'a', 1, 'أَكِكْوَمْبِيَ', 'akikwambiya', 'akikwambiya', '', '', '', '', '', '', 'akikwambiya', 'أَكِكْوَمْبِيَ', 'akikwambiya');
INSERT INTO maisha_mume_words VALUES (2138, 181, 'd', 1, 'هُبَدِلِيكَ', 'hubaḏilı̄ka', 'hubadilika', '', '', '', '', '', '', 'hubaḏilı̄ka', 'هُبَدِلِيكَ', 'hubaḏilı̄ka');
INSERT INTO maisha_mume_words VALUES (2139, 181, 'd', 2, 'توَبِيَ', 'ṯwabiya', 'twabiya', '', '', '', '', '', '', 'ṯwabiya', 'توَبِيَ', 'ṯwabiya');
INSERT INTO maisha_mume_words VALUES (2160, 184, 'a', 2, 'نِوَاتَ', 'niwāṯa', 'niwata', '', '', '', '', '', '', 'niwāṯa', 'نِوَاتَ', 'niwāṯa');
INSERT INTO maisha_mume_words VALUES (2140, 182, 'a', 1, 'نٖينٗ', 'nēno', 'neno', '', '', '', '', '', '', 'nēno', 'نٖينٗ', 'nēno');
INSERT INTO maisha_mume_words VALUES (2141, 182, 'a', 2, 'لٗلٗوتٖ', 'lolōṯe', 'lolote', '', '', '', '', '', '', 'lolōṯe', 'لٗلٗوتٖ', 'lolōṯe');
INSERT INTO maisha_mume_words VALUES (2142, 182, 'a', 3, 'أَوٖيزَ', 'awēza', 'aweza', '', '', '', '', '', '', 'awēza', 'أَوٖيزَ', 'awēza');
INSERT INTO maisha_mume_words VALUES (2143, 182, 'b', 1, 'هَجَالِ', 'hajāli', 'hajali', '', '', '', '', '', '', 'hajāli', 'هَجَالِ', 'hajāli');
INSERT INTO maisha_mume_words VALUES (2144, 182, 'b', 2, 'كُڤُرِمِيزَ', 'kuvurimı̄za', 'kuvurimiza', '', '', '', '', '', '', 'kuvurimı̄za', 'كُڤُرِمِيزَ', 'kuvurimı̄za');
INSERT INTO maisha_mume_words VALUES (2175, 185, 'd', 1, 'لَاكٖ', 'lāke', 'lake', '', '', '', '', '', '', 'lāke', 'لَاكٖ', 'lāke');
INSERT INTO maisha_mume_words VALUES (2161, 184, 'b', 1, 'سِيوٖ', 'sı̄we', 'siwe', '', '', '', '', '', '', 'sı̄we', 'سِيوٖ', 'sı̄we');
INSERT INTO maisha_mume_words VALUES (2146, 182, 'c', 2, 'شَرُوتِ', 'sharūṯi', 'sharuti', '', '', '', '', '', '', 'sharūṯi', 'شَرُوتِ', 'sharūṯi');
INSERT INTO maisha_mume_words VALUES (2147, 182, 'c', 3, 'كُئِكَازَ', 'kuikāza', 'kuikaza', '', '', '', '', '', '', 'kuikāza', 'كُئِكَازَ', 'kuikāza');
INSERT INTO maisha_mume_words VALUES (2162, 184, 'b', 2, 'نَايٖ', 'nāye', 'naye', '', '', '', '', '', '', 'nāye', 'نَايٖ', 'nāye');
INSERT INTO maisha_mume_words VALUES (2163, 184, 'b', 3, 'مُتَتٖيتَ', 'muṯaṯēṯa', 'mutateta', '', '', '', '', '', '', 'muṯaṯēṯa', 'مُتَتٖيتَ', 'muṯaṯēṯa');
INSERT INTO maisha_mume_words VALUES (2148, 182, 'd', 1, 'مِزَانِ', 'mizāni', 'mizani', '', '', '', '', '', '', 'mizāni', 'مِزَانِ', 'mizāni');
INSERT INTO maisha_mume_words VALUES (2149, 182, 'd', 2, 'كُتٗپٗتٖيَ', 'kuṯopoṯeya', 'kutopoteya', '', '', '', '', '', '', 'kuṯopoṯeya', 'كُتٗپٗتٖيَ', 'kuṯopoṯeya');
INSERT INTO maisha_mume_words VALUES (2150, 183, 'a', 1, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2151, 183, 'a', 2, 'أَوٖيزَ', 'awēza', 'aweza', '', '', '', '', '', '', 'awēza', 'أَوٖيزَ', 'awēza');
INSERT INTO maisha_mume_words VALUES (2152, 183, 'a', 3, 'تَلَاكَ', 'ṯalāka', 'talaka', '', '', '', '', '', '', 'ṯalāka', 'تَلَاكَ', 'ṯalāka');
INSERT INTO maisha_mume_words VALUES (2176, 185, 'd', 2, 'كُمْتِمِزِيَ', 'kumṯimiziya', 'kumtimiziya', '', '', '', '', '', '', 'kumṯimiziya', 'كُمْتِمِزِيَ', 'kumṯimiziya');
INSERT INTO maisha_mume_words VALUES (2153, 183, 'b', 1, 'أَكَكْوَمْبِيَ', 'akakwambiya', 'akakwambiya', '', '', '', '', '', '', 'akakwambiya', 'أَكَكْوَمْبِيَ', 'akakwambiya');
INSERT INTO maisha_mume_words VALUES (2154, 183, 'b', 2, 'نَتَاكَ', 'naṯāka', 'nataka', '', '', '', '', '', '', 'naṯāka', 'نَتَاكَ', 'naṯāka');
INSERT INTO maisha_mume_words VALUES (2164, 184, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2165, 184, 'c', 2, 'كِوِينْڠُ', 'kiwı̄ngu', 'kiwingu', '', '', '', '', '', '', 'kiwı̄ngu', 'كِوِينْڠُ', 'kiwı̄ngu');
INSERT INTO maisha_mume_words VALUES (2166, 184, 'c', 3, 'كِتَپِيتَ', 'kiṯapı̄ṯa', 'kitapita', '', '', '', '', '', '', 'kiṯapı̄ṯa', 'كِتَپِيتَ', 'kiṯapı̄ṯa');
INSERT INTO maisha_mume_words VALUES (2196, 187, 'c', 3, 'أُئِتٗوَاپٗ', 'uiṯowāpo', 'uitowapo', '', '', '', '', '', '', 'uiṯowāpo', 'أُئِتٗوَاپٗ', 'uiṯowāpo');
INSERT INTO maisha_mume_words VALUES (2167, 184, 'd', 1, 'هَكِوٖيزِ', 'hakiwēzi', 'hakiwezi', '', '', '', '', '', '', 'hakiwēzi', 'هَكِوٖيزِ', 'hakiwēzi');
INSERT INTO maisha_mume_words VALUES (2168, 184, 'd', 2, 'كُسَلِيَ', 'kusaliya', 'kusaliya', '', '', '', '', '', '', 'kusaliya', 'كُسَلِيَ', 'kusaliya');
INSERT INTO maisha_mume_words VALUES (2190, 187, 'b', 1, 'توَلَاكَ', 'ṯwalāka', 'twalaka', '', '', '', '', '', '', 'ṯwalāka', 'توَلَاكَ', 'ṯwalāka');
INSERT INTO maisha_mume_words VALUES (2169, 185, 'a', 1, 'توَلَاكَ', 'ṯwalāka', 'twalaka', '', '', '', '', '', '', 'ṯwalāka', 'توَلَاكَ', 'ṯwalāka');
INSERT INTO maisha_mume_words VALUES (2170, 185, 'a', 2, 'سِئِتٖلٖيزٖ', 'siiṯelēze', 'siiteleze', '', '', '', '', '', '', 'siiṯelēze', 'سِئِتٖلٖيزٖ', 'siiṯelēze');
INSERT INTO maisha_mume_words VALUES (2177, 186, 'a', 1, 'توَلَاكَ', 'ṯwalāka', 'twalaka', '', '', '', '', '', '', 'ṯwalāka', 'توَلَاكَ', 'ṯwalāka');
INSERT INTO maisha_mume_words VALUES (2178, 186, 'a', 2, 'مُونْڠُ', 'mūngu', 'mungu', '', '', '', '', '', '', 'mūngu', 'مُونْڠُ', 'mūngu');
INSERT INTO maisha_mume_words VALUES (2171, 185, 'b', 1, 'أَئِتَكَاپٗ', 'aiṯakāpo', 'aitakapo', '', '', '', '', '', '', 'aiṯakāpo', 'أَئِتَكَاپٗ', 'aiṯakāpo');
INSERT INTO maisha_mume_words VALUES (2172, 185, 'b', 2, 'مْپُوزٖ', 'mpūze', 'mpuze', '', '', '', '', '', '', 'mpūze', 'مْپُوزٖ', 'mpūze');
INSERT INTO maisha_mume_words VALUES (2179, 186, 'a', 3, 'مٖوٖيكَ', 'mewēka', 'meweka', '', '', '', '', '', '', 'mewēka', 'مٖوٖيكَ', 'mewēka');
INSERT INTO maisha_mume_words VALUES (2185, 186, 'd', 1, 'مُمٖكٗوسَ', 'mumekōsa', 'mumekosa', '', '', '', '', '', '', 'mumekōsa', 'مُمٖكٗوسَ', 'mumekōsa');
INSERT INTO maisha_mume_words VALUES (2186, 186, 'd', 2, 'زٗوتٖ', 'zōṯe', 'zote', '', '', '', '', '', '', 'zōṯe', 'زٗوتٖ', 'zōṯe');
INSERT INTO maisha_mume_words VALUES (2187, 186, 'd', 3, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (2180, 186, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2181, 186, 'b', 2, 'ذَرُورَ', 'dharūra', 'dharura', '', '', '', '', '', '', 'dharūra', 'ذَرُورَ', 'dharūra');
INSERT INTO maisha_mume_words VALUES (2182, 186, 'b', 3, 'كُتُمِيكَ', 'kuṯumı̄ka', 'kutumika', '', '', '', '', '', '', 'kuṯumı̄ka', 'كُتُمِيكَ', 'kuṯumı̄ka');
INSERT INTO maisha_mume_words VALUES (2191, 187, 'b', 2, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (2183, 186, 'c', 1, 'إِوَاپٗ', 'iwāpo', 'iwapo', '', '', '', '', '', '', 'iwāpo', 'إِوَاپٗ', 'iwāpo');
INSERT INTO maisha_mume_words VALUES (2192, 187, 'b', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2193, 187, 'b', 4, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (2188, 187, 'a', 1, 'كُشَلِيكِ', 'kushalı̄ki', 'kushaliki', '', '', '', '', '', '', 'kushalı̄ki', 'كُشَلِيكِ', 'kushalı̄ki');
INSERT INTO maisha_mume_words VALUES (2189, 187, 'a', 2, 'مُشِنْدوَاپٗ', 'mushinḏwāpo', 'mushindwapo', '', '', '', '', '', '', 'mushinḏwāpo', 'مُشِنْدوَاپٗ', 'mushinḏwāpo');
INSERT INTO maisha_mume_words VALUES (2200, 188, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2203, 188, 'b', 2, 'هَالِ', 'hāli', 'hali', '', '', '', '', '', '', 'hāli', 'هَالِ', 'hāli');
INSERT INTO maisha_mume_words VALUES (2197, 187, 'd', 1, 'أُسِئِزِدِيشٖ', 'usiiziḏı̄she', 'usiizidishe', '', '', '', '', '', '', 'usiiziḏı̄she', 'أُسِئِزِدِيشٖ', 'usiiziḏı̄she');
INSERT INTO maisha_mume_words VALUES (2204, 188, 'b', 3, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (2194, 187, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2195, 187, 'c', 2, 'مُودَ', 'mūḏa', 'muda', '', '', '', '', '', '', 'mūḏa', 'مُودَ', 'mūḏa');
INSERT INTO maisha_mume_words VALUES (2198, 187, 'd', 2, 'مٗويَ', 'mōya', 'moya', '', '', '', '', '', '', 'mōya', 'مٗويَ', 'mōya');
INSERT INTO maisha_mume_words VALUES (2199, 188, 'a', 1, 'تِمِيزَ', 'ṯimı̄za', 'timiza', '', '', '', '', '', '', 'ṯimı̄za', 'تِمِيزَ', 'ṯimı̄za');
INSERT INTO maisha_mume_words VALUES (2201, 188, 'a', 3, 'مَشَرُوتِ', 'masharūṯi', 'masharuti', '', '', '', '', '', '', 'masharūṯi', 'مَشَرُوتِ', 'masharūṯi');
INSERT INTO maisha_mume_words VALUES (2205, 188, 'b', 4, 'وَكَاتِ', 'wakāṯi', 'wakati', '', '', '', '', '', '', 'wakāṯi', 'وَكَاتِ', 'wakāṯi');
INSERT INTO maisha_mume_words VALUES (2207, 188, 'c', 2, 'هُكُومُ', 'hukūmu', 'hukumu', '', '', '', '', '', '', 'hukūmu', 'هُكُومُ', 'hukūmu');
INSERT INTO maisha_mume_words VALUES (2202, 188, 'b', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (2208, 188, 'c', 3, 'زِتَفِيتِ', 'ziṯafı̄ṯi', 'zitafiti', '', '', '', '', '', '', 'ziṯafı̄ṯi', 'زِتَفِيتِ', 'ziṯafı̄ṯi');
INSERT INTO maisha_mume_words VALUES (2210, 188, 'd', 2, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (2206, 188, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2211, 188, 'd', 3, 'كُتُمِيَ', 'kuṯumiya', 'kutumiya', '', '', '', '', '', '', 'kuṯumiya', 'كُتُمِيَ', 'kuṯumiya');
INSERT INTO maisha_mume_words VALUES (2213, 189, 'a', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (2209, 188, 'd', 1, 'كَبُولَ', 'kabūla', 'kabula', '', '', '', '', '', '', 'kabūla', 'كَبُولَ', 'kabūla');
INSERT INTO maisha_mume_words VALUES (2212, 189, 'a', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (2214, 189, 'a', 3, 'هُوَتَانَ', 'huwaṯāna', 'huwatana', '', '', '', '', '', '', 'huwaṯāna', 'هُوَتَانَ', 'huwaṯāna');
INSERT INTO maisha_mume_words VALUES (2244, 191, 'd', 1, 'هَئِكُپِينْڠَ', 'haikupı̄nga', 'haikupinga', '', '', '', '', '', '', 'haikupı̄nga', 'هَئِكُپِينْڠَ', 'haikupı̄nga');
INSERT INTO maisha_mume_words VALUES (2245, 191, 'd', 2, 'شَرِيَ', 'shariya', 'shariya', '', '', '', '', '', '', 'shariya', 'شَرِيَ', 'shariya');
INSERT INTO maisha_mume_words VALUES (2215, 189, 'b', 1, 'كِيسَ', 'kı̄sa', 'kisa', '', '', '', '', '', '', 'kı̄sa', 'كِيسَ', 'kı̄sa');
INSERT INTO maisha_mume_words VALUES (2216, 189, 'b', 2, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2217, 189, 'b', 3, 'هُوَؤٗونَ', 'huwaōna', 'huwaona', '', '', '', '', '', '', 'huwaōna', 'هُوَؤٗونَ', 'huwaōna');
INSERT INTO maisha_mume_words VALUES (2218, 189, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2219, 189, 'c', 2, 'هَرَامُ', 'harāmu', 'haramu', '', '', '', '', '', '', 'harāmu', 'هَرَامُ', 'harāmu');
INSERT INTO maisha_mume_words VALUES (2220, 189, 'c', 3, 'وَتَكَانَ', 'waṯakāna', 'watakana', '', '', '', '', '', '', 'waṯakāna', 'وَتَكَانَ', 'waṯakāna');
INSERT INTO maisha_mume_words VALUES (2277, 194, 'b', 2, 'وَنُن’ڠُنِيكَ', 'wanun’gunı̄ka', 'wanun’gunika', '', '', '', '', '', '', 'wanun’gunı̄ka', 'وَنُن’ڠُنِيكَ', 'wanun’gunı̄ka');
INSERT INTO maisha_mume_words VALUES (2221, 189, 'd', 1, 'زِپٖنْڠٖئٖ', 'zipengee', 'zipengee', '', '', '', '', '', '', 'zipengee', 'زِپٖنْڠٖئٖ', 'zipengee');
INSERT INTO maisha_mume_words VALUES (2222, 189, 'd', 2, 'هُزٖنْڠٖيَ', 'huzengeya', 'huzengeya', '', '', '', '', '', '', 'huzengeya', 'هُزٖنْڠٖيَ', 'huzengeya');
INSERT INTO maisha_mume_words VALUES (2265, 193, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2223, 190, 'a', 1, 'هُزٖنْڠٖيَ', 'huzengeya', 'huzengeya', '', '', '', '', '', '', 'huzengeya', 'هُزٖنْڠٖيَ', 'huzengeya');
INSERT INTO maisha_mume_words VALUES (2224, 190, 'a', 2, 'مُهَلِيلِ', 'muhalı̄li', 'muhalili', '', '', '', '', '', '', 'muhalı̄li', 'مُهَلِيلِ', 'muhalı̄li');
INSERT INTO maisha_mume_words VALUES (2246, 192, 'a', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2247, 192, 'a', 2, 'سِؤٗوٖ', 'siowe', 'siowe', '', '', '', '', '', '', 'siowe', 'سِؤٗوٖ', 'siowe');
INSERT INTO maisha_mume_words VALUES (2225, 190, 'b', 1, 'فِكِرِيَ', 'fikiriya', 'fikiriya', '', '', '', '', '', '', 'fikiriya', 'فِكِرِيَ', 'fikiriya');
INSERT INTO maisha_mume_words VALUES (2226, 190, 'b', 2, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (2227, 190, 'b', 3, 'هِيلِ', 'hı̄li', 'hili', '', '', '', '', '', '', 'hı̄li', 'هِيلِ', 'hı̄li');
INSERT INTO maisha_mume_words VALUES (2249, 192, 'a', 4, 'پِيلِ', 'pı̄li', 'pili', '', '', '', '', '', '', 'pı̄li', 'پِيلِ', 'pı̄li');
INSERT INTO maisha_mume_words VALUES (2228, 190, 'c', 1, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (2229, 190, 'c', 2, 'كُؤَزِيمَ', 'kuazı̄ma', 'kuazima', '', '', '', '', '', '', 'kuazı̄ma', 'كُؤَزِيمَ', 'kuazı̄ma');
INSERT INTO maisha_mume_words VALUES (2230, 190, 'c', 3, 'فَهَالِ', 'fahāli', 'fahali', '', '', '', '', '', '', 'fahāli', 'فَهَالِ', 'fahāli');
INSERT INTO maisha_mume_words VALUES (2266, 193, 'b', 2, 'وٖنْڠِنٖؤٗ', 'wengineo', 'wengineo', '', '', '', '', '', '', 'wengineo', 'وٖنْڠِنٖؤٗ', 'wengineo');
INSERT INTO maisha_mume_words VALUES (2231, 190, 'd', 1, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2232, 190, 'd', 2, 'كْوٖينْدَ', 'kwēnḏa', 'kwenda', '', '', '', '', '', '', 'kwēnḏa', 'كْوٖينْدَ', 'kwēnḏa');
INSERT INTO maisha_mume_words VALUES (2233, 190, 'd', 3, 'مْپٖكٖيَ', 'mpekeya', 'mpekeya', '', '', '', '', '', '', 'mpekeya', 'مْپٖكٖيَ', 'mpekeya');
INSERT INTO maisha_mume_words VALUES (2267, 193, 'b', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2268, 193, 'b', 4, 'دَاوَ', 'ḏāwa', 'dawa', '', '', '', '', '', '', 'ḏāwa', 'دَاوَ', 'ḏāwa');
INSERT INTO maisha_mume_words VALUES (2234, 191, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2235, 191, 'a', 2, 'لَنْڠِينٖ', 'langı̄ne', 'langine', '', '', '', '', '', '', 'langı̄ne', 'لَنْڠِينٖ', 'langı̄ne');
INSERT INTO maisha_mume_words VALUES (2236, 191, 'a', 3, 'كَذَلِيكَ', 'kadhalı̄ka', 'kadhalika', '', '', '', '', '', '', 'kadhalı̄ka', 'كَذَلِيكَ', 'kadhalı̄ka');
INSERT INTO maisha_mume_words VALUES (2250, 192, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2251, 192, 'b', 2, 'أُذِيَ', 'udhiya', 'udhiya', '', '', '', '', '', '', 'udhiya', 'أُذِيَ', 'udhiya');
INSERT INTO maisha_mume_words VALUES (2252, 192, 'b', 3, 'كْوٖيلِ', 'kwēli', 'kweli', '', '', '', '', '', '', 'kwēli', 'كْوٖيلِ', 'kwēli');
INSERT INTO maisha_mume_words VALUES (2253, 192, 'b', 4, 'كْوٖيلِ', 'kwēli', 'kweli', '', '', '', '', '', '', 'kwēli', 'كْوٖيلِ', 'kwēli');
INSERT INTO maisha_mume_words VALUES (2237, 191, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2238, 191, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2239, 191, 'b', 3, 'ممٗويَ', 'mmōya', 'mmoya', '', '', '', '', '', '', 'mmōya', 'ممٗويَ', 'mmōya');
INSERT INTO maisha_mume_words VALUES (2240, 191, 'b', 4, 'تٗشٖيكَ', 'ṯoshēka', 'tosheka', '', '', '', '', '', '', 'ṯoshēka', 'تٗشٖيكَ', 'ṯoshēka');
INSERT INTO maisha_mume_words VALUES (2241, 191, 'c', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (2242, 191, 'c', 2, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2243, 191, 'c', 3, 'مٖذِكِيكَ', 'medhikı̄ka', 'medhikika', '', '', '', '', '', '', 'medhikı̄ka', 'مٖذِكِيكَ', 'medhikı̄ka');
INSERT INTO maisha_mume_words VALUES (2297, 196, 'a', 2, 'سَبَابُ', 'sabābu', 'sababu', '', '', '', '', '', '', 'sabābu', 'سَبَابُ', 'sabābu');
INSERT INTO maisha_mume_words VALUES (2269, 193, 'c', 1, 'أُتَئِيُوتَ', 'uṯaiyūṯa', 'utaiyuta', '', '', '', '', '', '', 'uṯaiyūṯa', 'أُتَئِيُوتَ', 'uṯaiyūṯa');
INSERT INTO maisha_mume_words VALUES (2270, 193, 'c', 2, 'كُزَاوَ', 'kuzāwa', 'kuzawa', '', '', '', '', '', '', 'kuzāwa', 'كُزَاوَ', 'kuzāwa');
INSERT INTO maisha_mume_words VALUES (2254, 192, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2255, 192, 'c', 2, 'إِنْڠَاوَ', 'ingāwa', 'ingawa', '', '', '', '', '', '', 'ingāwa', 'إِنْڠَاوَ', 'ingāwa');
INSERT INTO maisha_mume_words VALUES (2256, 192, 'c', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2257, 192, 'c', 4, 'هَلَالِ', 'halāli', 'halali', '', '', '', '', '', '', 'halāli', 'هَلَالِ', 'halāli');
INSERT INTO maisha_mume_words VALUES (2283, 195, 'a', 1, 'كُؤٗنْڠٖيزَ', 'kuongēza', 'kuongeza', '', '', '', '', '', '', 'kuongēza', 'كُؤٗنْڠٖيزَ', 'kuongēza');
INSERT INTO maisha_mume_words VALUES (2258, 192, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2259, 192, 'd', 2, 'أُزِيتٗ', 'uzı̄ṯo', 'uzito', '', '', '', '', '', '', 'uzı̄ṯo', 'أُزِيتٗ', 'uzı̄ṯo');
INSERT INTO maisha_mume_words VALUES (2260, 192, 'd', 3, 'كُتُمِيَ', 'kuṯumiya', 'kutumiya', '', '', '', '', '', '', 'kuṯumiya', 'كُتُمِيَ', 'kuṯumiya');
INSERT INTO maisha_mume_words VALUES (2284, 195, 'a', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (2705, 229, 'c', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2271, 193, 'd', 1, 'نِمٖكْوَمْبِيَ', 'nimekwambiya', 'nimekwambiya', '', '', '', '', '', '', 'nimekwambiya', 'نِمٖكْوَمْبِيَ', 'nimekwambiya');
INSERT INTO maisha_mume_words VALUES (2272, 193, 'd', 2, 'يَهَايَ', 'yahāya', 'yahaya', '', '', '', '', '', '', 'yahāya', 'يَهَايَ', 'yahāya');
INSERT INTO maisha_mume_words VALUES (2261, 193, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2262, 193, 'a', 2, 'وَنَوَاكٖ', 'wanawāke', 'wanawake', '', '', '', '', '', '', 'wanawāke', 'وَنَوَاكٖ', 'wanawāke');
INSERT INTO maisha_mume_words VALUES (2263, 193, 'a', 3, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (2264, 193, 'a', 4, 'سَاوَ', 'sāwa', 'sawa', '', '', '', '', '', '', 'sāwa', 'سَاوَ', 'sāwa');
INSERT INTO maisha_mume_words VALUES (2278, 194, 'c', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (2279, 194, 'c', 2, 'وَنْڠِينٖ', 'wangı̄ne', 'wangine', '', '', '', '', '', '', 'wangı̄ne', 'وَنْڠِينٖ', 'wangı̄ne');
INSERT INTO maisha_mume_words VALUES (2280, 194, 'c', 3, 'هُوَاكَ', 'huwāka', 'huwaka', '', '', '', '', '', '', 'huwāka', 'هُوَاكَ', 'huwāka');
INSERT INTO maisha_mume_words VALUES (2273, 194, 'a', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (2274, 194, 'a', 2, 'وَنَاءٗ', 'wanāo', 'wanao', '', '', '', '', '', '', 'wanāo', 'وَنَاءٗ', 'wanāo');
INSERT INTO maisha_mume_words VALUES (2275, 194, 'a', 3, 'رِذِيكَ', 'ridhı̄ka', 'ridhika', '', '', '', '', '', '', 'ridhı̄ka', 'رِذِيكَ', 'ridhı̄ka');
INSERT INTO maisha_mume_words VALUES (2285, 195, 'a', 3, 'هَرَامُ', 'harāmu', 'haramu', '', '', '', '', '', '', 'harāmu', 'هَرَامُ', 'harāmu');
INSERT INTO maisha_mume_words VALUES (2298, 196, 'a', 3, 'إِيكٗ', 'ı̄ko', 'iko', '', '', '', '', '', '', 'ı̄ko', 'إِيكٗ', 'ı̄ko');
INSERT INTO maisha_mume_words VALUES (2281, 194, 'd', 1, 'فُنُونُ', 'funūnu', 'fununu', '', '', '', '', '', '', 'funūnu', 'فُنُونُ', 'funūnu');
INSERT INTO maisha_mume_words VALUES (2282, 194, 'd', 2, 'وَكِسِكِيَ', 'wakisikiya', 'wakisikiya', '', '', '', '', '', '', 'wakisikiya', 'وَكِسِكِيَ', 'wakisikiya');
INSERT INTO maisha_mume_words VALUES (2300, 196, 'b', 2, 'مْفَانٗ', 'mfāno', 'mfano', '', '', '', '', '', '', 'mfāno', 'مْفَانٗ', 'mfāno');
INSERT INTO maisha_mume_words VALUES (2296, 196, 'a', 1, 'إِكِيوَ', 'ikı̄wa', 'ikiwa', '', '', '', '', '', '', 'ikı̄wa', 'إِكِيوَ', 'ikı̄wa');
INSERT INTO maisha_mume_words VALUES (2288, 195, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2286, 195, 'b', 1, 'وَلَكِينِ', 'walakı̄ni', 'walakini', '', '', '', '', '', '', 'walakı̄ni', 'وَلَكِينِ', 'walakı̄ni');
INSERT INTO maisha_mume_words VALUES (2287, 195, 'b', 2, 'أُفَهَامُ', 'ufahāmu', 'ufahamu', '', '', '', '', '', '', 'ufahāmu', 'أُفَهَامُ', 'ufahāmu');
INSERT INTO maisha_mume_words VALUES (2289, 195, 'c', 2, 'كُؤُ', 'kuu', 'kuu', '', '', '', '', '', '', 'kuu', 'كُؤُ', 'kuu');
INSERT INTO maisha_mume_words VALUES (2290, 195, 'c', 3, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (2291, 195, 'c', 4, 'جُكُومُ', 'jukūmu', 'jukumu', '', '', '', '', '', '', 'jukūmu', 'جُكُومُ', 'jukūmu');
INSERT INTO maisha_mume_words VALUES (2292, 195, 'd', 1, 'مْبَالِ', 'mbāli', 'mbali', '', '', '', '', '', '', 'mbāli', 'مْبَالِ', 'mbāli');
INSERT INTO maisha_mume_words VALUES (2293, 195, 'd', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2294, 195, 'd', 3, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (2301, 196, 'b', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2302, 196, 'b', 4, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (2304, 196, 'c', 2, 'مِكَالِ', 'mikāli', 'mikali', '', '', '', '', '', '', 'mikāli', 'مِكَالِ', 'mikāli');
INSERT INTO maisha_mume_words VALUES (2299, 196, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2305, 196, 'c', 3, 'مِيكٗ', 'mı̄ko', 'miko', '', '', '', '', '', '', 'mı̄ko', 'مِيكٗ', 'mı̄ko');
INSERT INTO maisha_mume_words VALUES (2303, 196, 'c', 1, 'مٖپٗوَ', 'mepowa', 'mepowa', '', '', '', '', '', '', 'mepowa', 'مٖپٗوَ', 'mepowa');
INSERT INTO maisha_mume_words VALUES (2306, 196, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2338, 199, 'b', 1, 'أُسِتٖينْدٖ', 'usiṯēnḏe', 'usitende', '', '', '', '', '', '', 'usiṯēnḏe', 'أُسِتٖينْدٖ', 'usiṯēnḏe');
INSERT INTO maisha_mume_words VALUES (2307, 196, 'd', 2, 'ذَرُورَ', 'dharūra', 'dharura', '', '', '', '', '', '', 'dharūra', 'ذَرُورَ', 'dharūra');
INSERT INTO maisha_mume_words VALUES (2309, 196, 'd', 4, 'أَفِيَ', 'afiya', 'afiya', '', '', '', '', '', '', 'afiya', 'أَفِيَ', 'afiya');
INSERT INTO maisha_mume_words VALUES (2339, 199, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2340, 199, 'b', 3, 'كَسِيدِ', 'kası̄ḏi', 'kasidi', '', '', '', '', '', '', 'kası̄ḏi', 'كَسِيدِ', 'kası̄ḏi');
INSERT INTO maisha_mume_words VALUES (2310, 197, 'a', 1, 'لَبُودَ', 'labūḏa', 'labuda', '', '', '', '', '', '', 'labūḏa', 'لَبُودَ', 'labūḏa');
INSERT INTO maisha_mume_words VALUES (2311, 197, 'a', 2, 'هَانَ', 'hāna', 'hana', '', '', '', '', '', '', 'hāna', 'هَانَ', 'hāna');
INSERT INTO maisha_mume_words VALUES (2312, 197, 'a', 3, 'كِزَازِ', 'kizāzi', 'kizazi', '', '', '', '', '', '', 'kizāzi', 'كِزَازِ', 'kizāzi');
INSERT INTO maisha_mume_words VALUES (2382, 203, 'a', 2, 'أُمٖپٖينْدَ', 'umepēnḏa', 'umependa', '', '', '', '', '', '', 'umepēnḏa', 'أُمٖپٖينْدَ', 'umepēnḏa');
INSERT INTO maisha_mume_words VALUES (2313, 197, 'b', 1, 'لَ', 'la', 'la', '', '', '', '', '', '', 'la', 'لَ', 'la');
INSERT INTO maisha_mume_words VALUES (2314, 197, 'b', 2, 'كُزَاءَ', 'kuzāa', 'kuzaa', '', '', '', '', '', '', 'kuzāa', 'كُزَاءَ', 'kuzāa');
INSERT INTO maisha_mume_words VALUES (2315, 197, 'b', 3, 'هَلِوٖيزِ', 'haliwēzi', 'haliwezi', '', '', '', '', '', '', 'haliwēzi', 'هَلِوٖيزِ', 'haliwēzi');
INSERT INTO maisha_mume_words VALUES (2383, 203, 'a', 3, 'تُونْدَ', 'ṯūnḏa', 'tunda', '', '', '', '', '', '', 'ṯūnḏa', 'تُونْدَ', 'ṯūnḏa');
INSERT INTO maisha_mume_words VALUES (2341, 199, 'c', 1, 'كُئٖنْڠٖيزَ', 'kuengēza', 'kuengeza', '', '', '', '', '', '', 'kuengēza', 'كُئٖنْڠٖيزَ', 'kuengēza');
INSERT INTO maisha_mume_words VALUES (2316, 197, 'c', 1, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (2317, 197, 'c', 2, 'وَتَاكَ', 'waṯāka', 'wataka', '', '', '', '', '', '', 'waṯāka', 'وَتَاكَ', 'waṯāka');
INSERT INTO maisha_mume_words VALUES (2318, 197, 'c', 3, 'پُمْبَازِ', 'pumbāzi', 'pumbazi', '', '', '', '', '', '', 'pumbāzi', 'پُمْبَازِ', 'pumbāzi');
INSERT INTO maisha_mume_words VALUES (2342, 199, 'c', 2, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2343, 199, 'c', 3, 'زَئِيدِ', 'zaı̄ḏi', 'zaidi', '', '', '', '', '', '', 'zaı̄ḏi', 'زَئِيدِ', 'zaı̄ḏi');
INSERT INTO maisha_mume_words VALUES (2319, 197, 'd', 1, 'يَاپٗ', 'yāpo', 'yapo', '', '', '', '', '', '', 'yāpo', 'يَاپٗ', 'yāpo');
INSERT INTO maisha_mume_words VALUES (2320, 197, 'd', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2321, 197, 'd', 3, 'مْوَانَ', 'mwāna', 'mwana', '', '', '', '', '', '', 'mwāna', 'مْوَانَ', 'mwāna');
INSERT INTO maisha_mume_words VALUES (2322, 197, 'd', 4, 'ممٗويَ', 'mmōya', 'mmoya', '', '', '', '', '', '', 'mmōya', 'ممٗويَ', 'mmōya');
INSERT INTO maisha_mume_words VALUES (2358, 201, 'a', 1, 'أُسِيوٖ', 'usı̄we', 'usiwe', '', '', '', '', '', '', 'usı̄we', 'أُسِيوٖ', 'usı̄we');
INSERT INTO maisha_mume_words VALUES (2359, 201, 'a', 2, 'كِرُوكَ', 'kirūka', 'kiruka', '', '', '', '', '', '', 'kirūka', 'كِرُوكَ', 'kirūka');
INSERT INTO maisha_mume_words VALUES (2344, 199, 'd', 1, 'كِتٗشٖلٖيزَ', 'kiṯoshelēza', 'kitosheleza', '', '', '', '', '', '', 'kiṯoshelēza', 'كِتٗشٖلٖيزَ', 'kiṯoshelēza');
INSERT INTO maisha_mume_words VALUES (2323, 198, 'a', 1, 'أَوْ', 'aw', 'au', '', '', '', '', '', '', 'aw', 'أَوْ', 'aw');
INSERT INTO maisha_mume_words VALUES (2324, 198, 'a', 2, 'يَالٖ', 'yāle', 'yale', '', '', '', '', '', '', 'yāle', 'يَالٖ', 'yāle');
INSERT INTO maisha_mume_words VALUES (2325, 198, 'a', 3, 'مَشُغُولِ', 'mashuḡūli', 'mashughuli', '', '', '', '', '', '', 'mashuḡūli', 'مَشُغُولِ', 'mashuḡūli');
INSERT INTO maisha_mume_words VALUES (2345, 199, 'd', 2, 'ممٗويَ', 'mmōya', 'mmoya', '', '', '', '', '', '', 'mmōya', 'ممٗويَ', 'mmōya');
INSERT INTO maisha_mume_words VALUES (2326, 198, 'b', 1, 'يٖيٖ', 'yeye', 'yeye', '', '', '', '', '', '', 'yeye', 'يٖيٖ', 'yeye');
INSERT INTO maisha_mume_words VALUES (2327, 198, 'b', 2, 'هُمْپَ', 'humpa', 'humpa', '', '', '', '', '', '', 'humpa', 'هُمْپَ', 'humpa');
INSERT INTO maisha_mume_words VALUES (2328, 198, 'b', 3, 'ثَقِيلِ', 'thaqı̄li', 'thaqili', '', '', '', '', '', '', 'thaqı̄li', 'ثَقِيلِ', 'thaqı̄li');
INSERT INTO maisha_mume_words VALUES (2360, 201, 'a', 3, 'مْتٗ', 'mṯo', 'mto', '', '', '', '', '', '', 'mṯo', 'مْتٗ', 'mṯo');
INSERT INTO maisha_mume_words VALUES (2329, 198, 'c', 1, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (2330, 198, 'c', 2, 'كُسِتَهَمِيلِ', 'kusiṯahamı̄li', 'kusitahamili', '', '', '', '', '', '', 'kusiṯahamı̄li', 'كُسِتَهَمِيلِ', 'kusiṯahamı̄li');
INSERT INTO maisha_mume_words VALUES (2346, 200, 'a', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2331, 198, 'd', 1, 'هُلِوٖيزِ', 'huliwēzi', 'huliwezi', '', '', '', '', '', '', 'huliwēzi', 'هُلِوٖيزِ', 'huliwēzi');
INSERT INTO maisha_mume_words VALUES (2332, 198, 'd', 2, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (2333, 198, 'd', 3, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (2347, 200, 'a', 2, 'ممٗويَ', 'mmōya', 'mmoya', '', '', '', '', '', '', 'mmōya', 'ممٗويَ', 'mmōya');
INSERT INTO maisha_mume_words VALUES (2348, 200, 'a', 3, 'كُتٗشٖيكَ', 'kuṯoshēka', 'kutosheka', '', '', '', '', '', '', 'kuṯoshēka', 'كُتٗشٖيكَ', 'kuṯoshēka');
INSERT INTO maisha_mume_words VALUES (2334, 199, 'a', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2335, 199, 'a', 2, 'ذَرُورَ', 'dharūra', 'dharura', '', '', '', '', '', '', 'dharūra', 'ذَرُورَ', 'dharūra');
INSERT INTO maisha_mume_words VALUES (2336, 199, 'a', 3, 'زِيسٗ', 'zı̄so', 'ziso', '', '', '', '', '', '', 'zı̄so', 'زِيسٗ', 'zı̄so');
INSERT INTO maisha_mume_words VALUES (2337, 199, 'a', 4, 'بُودِ', 'būḏi', 'budi', '', '', '', '', '', '', 'būḏi', 'بُودِ', 'būḏi');
INSERT INTO maisha_mume_words VALUES (2370, 202, 'a', 1, 'أُسِئِفَانْيَ', 'usiifānya', 'usiifanya', '', '', '', '', '', '', 'usiifānya', 'أُسِئِفَانْيَ', 'usiifānya');
INSERT INTO maisha_mume_words VALUES (2371, 202, 'a', 2, 'چَ', 'cha', 'cha', '', '', '', '', '', '', 'cha', 'چَ', 'cha');
INSERT INTO maisha_mume_words VALUES (2372, 202, 'a', 3, 'نْيُوكِ', 'nyūki', 'nyuki', '', '', '', '', '', '', 'nyūki', 'نْيُوكِ', 'nyūki');
INSERT INTO maisha_mume_words VALUES (2361, 201, 'b', 1, 'خَاسَ', 'ẖāsa', 'hasa', '', '', '', '', '', '', 'ẖāsa', 'خَاسَ', 'ẖāsa');
INSERT INTO maisha_mume_words VALUES (2349, 200, 'b', 1, 'نْدِيٗ', 'nḏiyo', 'ndiyo', '', '', '', '', '', '', 'nḏiyo', 'نْدِيٗ', 'nḏiyo');
INSERT INTO maisha_mume_words VALUES (2350, 200, 'b', 2, 'بٗورَ', 'bōra', 'bora', '', '', '', '', '', '', 'bōra', 'بٗورَ', 'bōra');
INSERT INTO maisha_mume_words VALUES (2351, 200, 'b', 3, 'بِيلَ', 'bı̄la', 'bila', '', '', '', '', '', '', 'bı̄la', 'بِيلَ', 'bı̄la');
INSERT INTO maisha_mume_words VALUES (2352, 200, 'b', 4, 'شَاكَ', 'shāka', 'shaka', '', '', '', '', '', '', 'shāka', 'شَاكَ', 'shāka');
INSERT INTO maisha_mume_words VALUES (2362, 201, 'b', 2, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2363, 201, 'b', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2353, 200, 'c', 1, 'كُئٖنْڠٖيزَ', 'kuengēza', 'kuengeza', '', '', '', '', '', '', 'kuengēza', 'كُئٖنْڠٖيزَ', 'kuengēza');
INSERT INTO maisha_mume_words VALUES (2354, 200, 'c', 2, 'أُكِتَاكَ', 'ukiṯāka', 'ukitaka', '', '', '', '', '', '', 'ukiṯāka', 'أُكِتَاكَ', 'ukiṯāka');
INSERT INTO maisha_mume_words VALUES (2364, 201, 'b', 4, 'وَتٗوتٗ', 'waṯōṯo', 'watoto', '', '', '', '', '', '', 'waṯōṯo', 'وَتٗوتٗ', 'waṯōṯo');
INSERT INTO maisha_mume_words VALUES (2355, 200, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2356, 200, 'd', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (2357, 200, 'd', 3, 'نِلٗكْوَمْبِيَ', 'nilokwambiya', 'nilokwambiya', '', '', '', '', '', '', 'nilokwambiya', 'نِلٗكْوَمْبِيَ', 'nilokwambiya');
INSERT INTO maisha_mume_words VALUES (2378, 202, 'd', 1, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2365, 201, 'c', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (2366, 201, 'c', 2, 'هِسَابُ', 'hisābu', 'hisabu', '', '', '', '', '', '', 'hisābu', 'هِسَابُ', 'hisābu');
INSERT INTO maisha_mume_words VALUES (2367, 201, 'c', 3, 'مزِيتٗ', 'mzı̄ṯo', 'mzito', '', '', '', '', '', '', 'mzı̄ṯo', 'مزِيتٗ', 'mzı̄ṯo');
INSERT INTO maisha_mume_words VALUES (2379, 202, 'd', 2, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (2380, 202, 'd', 3, 'أُمٖتٖيَ', 'umeṯeya', 'umeteya', '', '', '', '', '', '', 'umeṯeya', 'أُمٖتٖيَ', 'umeṯeya');
INSERT INTO maisha_mume_words VALUES (2368, 201, 'd', 1, 'أَخٖيرَ', 'aẖēra', 'ahera', '', '', '', '', '', '', 'aẖēra', 'أَخٖيرَ', 'aẖēra');
INSERT INTO maisha_mume_words VALUES (2369, 201, 'd', 2, 'تَكُنْڠٗجٖيَ', 'ṯakungojeya', 'takungojeya', '', '', '', '', '', '', 'ṯakungojeya', 'تَكُنْڠٗجٖيَ', 'ṯakungojeya');
INSERT INTO maisha_mume_words VALUES (2373, 202, 'b', 1, 'هُتُوِ', 'huṯuwi', 'hutuwi', '', '', '', '', '', '', 'huṯuwi', 'هُتُوِ', 'huṯuwi');
INSERT INTO maisha_mume_words VALUES (2374, 202, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2375, 202, 'b', 3, 'هُدِرِيكِ', 'huḏirı̄ki', 'hudiriki', '', '', '', '', '', '', 'huḏirı̄ki', 'هُدِرِيكِ', 'huḏirı̄ki');
INSERT INTO maisha_mume_words VALUES (2376, 202, 'c', 1, 'أُكِشِيكْوَ', 'ukishı̄kwa', 'ukishikwa', '', '', '', '', '', '', 'ukishı̄kwa', 'أُكِشِيكْوَ', 'ukishı̄kwa');
INSERT INTO maisha_mume_words VALUES (2377, 202, 'c', 2, 'هُشِكِيكِ', 'hushikı̄ki', 'hushikiki', '', '', '', '', '', '', 'hushikı̄ki', 'هُشِكِيكِ', 'hushikı̄ki');
INSERT INTO maisha_mume_words VALUES (2389, 203, 'c', 2, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (2384, 203, 'b', 1, 'هُونَ', 'hūna', 'huna', '', '', '', '', '', '', 'hūna', 'هُونَ', 'hūna');
INSERT INTO maisha_mume_words VALUES (2381, 203, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2390, 203, 'c', 3, 'تَانْڠُ', 'ṯāngu', 'tangu', '', '', '', '', '', '', 'ṯāngu', 'تَانْڠُ', 'ṯāngu');
INSERT INTO maisha_mume_words VALUES (2391, 203, 'c', 4, 'كْوَانْدَ', 'kwānḏa', 'kwanda', '', '', '', '', '', '', 'kwānḏa', 'كْوَانْدَ', 'kwānḏa');
INSERT INTO maisha_mume_words VALUES (2393, 203, 'd', 2, 'وَلِتوَمْبِيَ', 'waliṯwambiya', 'walitwambiya', '', '', '', '', '', '', 'waliṯwambiya', 'وَلِتوَمْبِيَ', 'waliṯwambiya');
INSERT INTO maisha_mume_words VALUES (2385, 203, 'b', 2, 'بُودِ', 'būḏi', 'budi', '', '', '', '', '', '', 'būḏi', 'بُودِ', 'būḏi');
INSERT INTO maisha_mume_words VALUES (2386, 203, 'b', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2387, 203, 'b', 4, 'كُپٖينْدَ', 'kupēnḏa', 'kupenda', '', '', '', '', '', '', 'kupēnḏa', 'كُپٖينْدَ', 'kupēnḏa');
INSERT INTO maisha_mume_words VALUES (2388, 203, 'c', 1, 'مْتِ', 'mṯi', 'mti', '', '', '', '', '', '', 'mṯi', 'مْتِ', 'mṯi');
INSERT INTO maisha_mume_words VALUES (2395, 204, 'a', 2, 'كِمْپٖينْدَ', 'kimpēnḏa', 'kimpenda', '', '', '', '', '', '', 'kimpēnḏa', 'كِمْپٖينْدَ', 'kimpēnḏa');
INSERT INTO maisha_mume_words VALUES (2392, 203, 'd', 1, 'وَزٖئٖ', 'wazee', 'wazee', '', '', '', '', '', '', 'wazee', 'وَزٖئٖ', 'wazee');
INSERT INTO maisha_mume_words VALUES (2396, 204, 'a', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2398, 204, 'b', 2, 'وَزٖئٖ', 'wazee', 'wazee', '', '', '', '', '', '', 'wazee', 'وَزٖئٖ', 'wazee');
INSERT INTO maisha_mume_words VALUES (2394, 204, 'a', 1, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (2399, 204, 'b', 3, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (2397, 204, 'b', 1, 'وَپٖينْدٖ', 'wapēnḏe', 'wapende', '', '', '', '', '', '', 'wapēnḏe', 'وَپٖينْدٖ', 'wapēnḏe');
INSERT INTO maisha_mume_words VALUES (2430, 207, 'a', 2, 'كَاتُ', 'kāṯu', 'katu', '', '', '', '', '', '', 'kāṯu', 'كَاتُ', 'kāṯu');
INSERT INTO maisha_mume_words VALUES (2431, 207, 'a', 3, 'سِسُبُوتُ', 'sisubūṯu', 'sisubutu', '', '', '', '', '', '', 'sisubūṯu', 'سِسُبُوتُ', 'sisubūṯu');
INSERT INTO maisha_mume_words VALUES (2400, 204, 'c', 1, 'وَاكْوٖ', 'wākwe', 'wakwe', '', '', '', '', '', '', 'wākwe', 'وَاكْوٖ', 'wākwe');
INSERT INTO maisha_mume_words VALUES (2401, 204, 'c', 2, 'مْبوَاكٗ', 'mbwāko', 'mbwako', '', '', '', '', '', '', 'mbwāko', 'مْبوَاكٗ', 'mbwāko');
INSERT INTO maisha_mume_words VALUES (2402, 204, 'c', 3, 'سِئٖپُوكٖ', 'siepūke', 'siepuke', '', '', '', '', '', '', 'siepūke', 'سِئٖپُوكٖ', 'siepūke');
INSERT INTO maisha_mume_words VALUES (2403, 204, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2404, 204, 'd', 2, 'هِشِيمَ', 'hishı̄ma', 'hishima', '', '', '', '', '', '', 'hishı̄ma', 'هِشِيمَ', 'hishı̄ma');
INSERT INTO maisha_mume_words VALUES (2405, 204, 'd', 3, 'كُوٖكٖيَ', 'kuwekeya', 'kuwekeya', '', '', '', '', '', '', 'kuwekeya', 'كُوٖكٖيَ', 'kuwekeya');
INSERT INTO maisha_mume_words VALUES (2475, 210, 'c', 3, 'أُپٖمْبٖينٖ', 'upembēne', 'upembene', '', '', '', '', '', '', 'upembēne', 'أُپٖمْبٖينٖ', 'upembēne');
INSERT INTO maisha_mume_words VALUES (2470, 210, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2406, 205, 'a', 1, 'مُهِشِيمُ', 'muhishı̄mu', 'muhishimu', '', '', '', '', '', '', 'muhishı̄mu', 'مُهِشِيمُ', 'muhishı̄mu');
INSERT INTO maisha_mume_words VALUES (2407, 205, 'a', 2, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (2408, 205, 'a', 3, 'مَامَ', 'māma', 'mama', '', '', '', '', '', '', 'māma', 'مَامَ', 'māma');
INSERT INTO maisha_mume_words VALUES (2432, 207, 'b', 1, 'كُذَرَاءُ', 'kudharāu', 'kudharau', '', '', '', '', '', '', 'kudharāu', 'كُذَرَاءُ', 'kudharāu');
INSERT INTO maisha_mume_words VALUES (2433, 207, 'b', 2, 'هَاءٗ', 'hāo', 'hao', '', '', '', '', '', '', 'hāo', 'هَاءٗ', 'hāo');
INSERT INTO maisha_mume_words VALUES (2434, 207, 'b', 3, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (2409, 205, 'b', 1, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (2410, 205, 'b', 2, 'بَبَاكٖ', 'babāke', 'babake', '', '', '', '', '', '', 'babāke', 'بَبَاكٖ', 'babāke');
INSERT INTO maisha_mume_words VALUES (2411, 205, 'b', 3, 'دَئِيمَ', 'ḏaı̄ma', 'daima', '', '', '', '', '', '', 'ḏaı̄ma', 'دَئِيمَ', 'ḏaı̄ma');
INSERT INTO maisha_mume_words VALUES (2412, 205, 'c', 1, 'كُوَذَرَاءُ', 'kuwadharāu', 'kuwadharau', '', '', '', '', '', '', 'kuwadharāu', 'كُوَذَرَاءُ', 'kuwadharāu');
INSERT INTO maisha_mume_words VALUES (2451, 208, 'd', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (2452, 208, 'd', 3, 'كُؤَنْڠَلِيَ', 'kuangaliya', 'kuangaliya', '', '', '', '', '', '', 'kuangaliya', 'كُؤَنْڠَلِيَ', 'kuangaliya');
INSERT INTO maisha_mume_words VALUES (2415, 205, 'd', 1, 'تٗونٗ', 'ṯōno', 'tono', '', '', '', '', '', '', 'ṯōno', 'تٗونٗ', 'ṯōno');
INSERT INTO maisha_mume_words VALUES (2416, 205, 'd', 2, 'نَاوٖ', 'nāwe', 'nawe', '', '', '', '', '', '', 'nāwe', 'نَاوٖ', 'nāwe');
INSERT INTO maisha_mume_words VALUES (2417, 205, 'd', 3, 'تَمْتِيَ', 'ṯamṯiya', 'tamtiya', '', '', '', '', '', '', 'ṯamṯiya', 'تَمْتِيَ', 'ṯamṯiya');
INSERT INTO maisha_mume_words VALUES (2435, 207, 'c', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (2436, 207, 'c', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (2437, 207, 'c', 3, 'أُتُكُوتُ', 'uṯukūṯu', 'utukutu', '', '', '', '', '', '', 'uṯukūṯu', 'أُتُكُوتُ', 'uṯukūṯu');
INSERT INTO maisha_mume_words VALUES (2418, 206, 'a', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2419, 206, 'a', 2, 'أُؤٗوڤُ', 'uōvu', 'uovu', '', '', '', '', '', '', 'uōvu', 'أُؤٗوڤُ', 'uōvu');
INSERT INTO maisha_mume_words VALUES (2420, 206, 'a', 3, 'سِوَنٖينٖ', 'siwanēne', 'siwanene', '', '', '', '', '', '', 'siwanēne', 'سِوَنٖينٖ', 'siwanēne');
INSERT INTO maisha_mume_words VALUES (2421, 206, 'b', 1, 'إِتُونْڠٖ', 'iṯūnge', 'itunge', '', '', '', '', '', '', 'iṯūnge', 'إِتُونْڠٖ', 'iṯūnge');
INSERT INTO maisha_mume_words VALUES (2422, 206, 'b', 2, 'سِوَتُكَانٖ', 'siwaṯukāne', 'siwatukane', '', '', '', '', '', '', 'siwaṯukāne', 'سِوَتُكَانٖ', 'siwaṯukāne');
INSERT INTO maisha_mume_words VALUES (2438, 207, 'd', 1, 'كْوَاءٗ', 'kwāo', 'kwao', '', '', '', '', '', '', 'kwāo', 'كْوَاءٗ', 'kwāo');
INSERT INTO maisha_mume_words VALUES (2439, 207, 'd', 2, 'أُمٖشُهُدِيَ', 'umeshuhuḏiya', 'umeshuhudiya', '', '', '', '', '', '', 'umeshuhuḏiya', 'أُمٖشُهُدِيَ', 'umeshuhuḏiya');
INSERT INTO maisha_mume_words VALUES (2423, 206, 'c', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (2424, 206, 'c', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (2425, 206, 'c', 3, 'هُويٗ', 'hūyo', 'huyo', '', '', '', '', '', '', 'hūyo', 'هُويٗ', 'hūyo');
INSERT INTO maisha_mume_words VALUES (2426, 206, 'c', 4, 'مْوَانٖ', 'mwāne', 'mwane', '', '', '', '', '', '', 'mwāne', 'مْوَانٖ', 'mwāne');
INSERT INTO maisha_mume_words VALUES (2427, 206, 'd', 1, 'هِشِيمَ', 'hishı̄ma', 'hishima', '', '', '', '', '', '', 'hishı̄ma', 'هِشِيمَ', 'hishı̄ma');
INSERT INTO maisha_mume_words VALUES (2428, 206, 'd', 2, 'مٖوَڤُنْدِيَ', 'mewavunḏiya', 'mewavundiya', '', '', '', '', '', '', 'mewavunḏiya', 'مٖوَڤُنْدِيَ', 'mewavunḏiya');
INSERT INTO maisha_mume_words VALUES (2463, 209, 'd', 1, 'سِيٖ', 'siye', 'siye', '', '', '', '', '', '', 'siye', 'سِيٖ', 'siye');
INSERT INTO maisha_mume_words VALUES (2464, 209, 'd', 2, 'دٖيوٖ', 'ḏēwe', 'dewe', '', '', '', '', '', '', 'ḏēwe', 'دٖيوٖ', 'ḏēwe');
INSERT INTO maisha_mume_words VALUES (2465, 209, 'd', 3, 'كَكُتِيَ', 'kakuṯiya', 'kakutiya', '', '', '', '', '', '', 'kakuṯiya', 'كَكُتِيَ', 'kakuṯiya');
INSERT INTO maisha_mume_words VALUES (2453, 209, 'a', 1, 'أُكِيوَ', 'ukı̄wa', 'ukiwa', '', '', '', '', '', '', 'ukı̄wa', 'أُكِيوَ', 'ukı̄wa');
INSERT INTO maisha_mume_words VALUES (2454, 209, 'a', 2, 'أُونَ', 'ūna', 'una', '', '', '', '', '', '', 'ūna', 'أُونَ', 'ūna');
INSERT INTO maisha_mume_words VALUES (2455, 209, 'a', 3, 'نَفَاسِ', 'nafāsi', 'nafasi', '', '', '', '', '', '', 'nafāsi', 'نَفَاسِ', 'nafāsi');
INSERT INTO maisha_mume_words VALUES (2440, 208, 'a', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2441, 208, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2442, 208, 'a', 3, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (2443, 208, 'a', 4, 'مَتَاتَ', 'maṯāṯa', 'matata', '', '', '', '', '', '', 'maṯāṯa', 'مَتَاتَ', 'maṯāṯa');
INSERT INTO maisha_mume_words VALUES (2444, 208, 'b', 1, 'سِؤٗ', 'sio', 'sio', '', '', '', '', '', '', 'sio', 'سِؤٗ', 'sio');
INSERT INTO maisha_mume_words VALUES (2445, 208, 'b', 2, 'نَاءٗ', 'nāo', 'nao', '', '', '', '', '', '', 'nāo', 'نَاءٗ', 'nāo');
INSERT INTO maisha_mume_words VALUES (2446, 208, 'b', 3, 'أُتَتٖيتَ', 'uṯaṯēṯa', 'utateta', '', '', '', '', '', '', 'uṯaṯēṯa', 'أُتَتٖيتَ', 'uṯaṯēṯa');
INSERT INTO maisha_mume_words VALUES (2447, 208, 'c', 1, 'خٖيرِ', 'ẖēri', 'heri', '', '', '', '', '', '', 'ẖēri', 'خٖيرِ', 'ẖēri');
INSERT INTO maisha_mume_words VALUES (2448, 208, 'c', 2, 'مْبَالِ', 'mbāli', 'mbali', '', '', '', '', '', '', 'mbāli', 'مْبَالِ', 'mbāli');
INSERT INTO maisha_mume_words VALUES (2449, 208, 'c', 3, 'كُئِڤُوتَ', 'kuivūṯa', 'kuivuta', '', '', '', '', '', '', 'kuivūṯa', 'كُئِڤُوتَ', 'kuivūṯa');
INSERT INTO maisha_mume_words VALUES (2457, 209, 'b', 2, 'كُوَاپَ', 'kuwāpa', 'kuwapa', '', '', '', '', '', '', 'kuwāpa', 'كُوَاپَ', 'kuwāpa');
INSERT INTO maisha_mume_words VALUES (2458, 209, 'b', 3, 'سِكُوَاسِ', 'sikuwāsi', 'sikuwasi', '', '', '', '', '', '', 'sikuwāsi', 'سِكُوَاسِ', 'sikuwāsi');
INSERT INTO maisha_mume_words VALUES (2471, 210, 'b', 2, 'كُپَاتَ', 'kupāṯa', 'kupata', '', '', '', '', '', '', 'kupāṯa', 'كُپَاتَ', 'kupāṯa');
INSERT INTO maisha_mume_words VALUES (2472, 210, 'b', 3, 'وَدٖنْڠٖينٖ', 'waḏengēne', 'wadengene', '', '', '', '', '', '', 'waḏengēne', 'وَدٖنْڠٖينٖ', 'waḏengēne');
INSERT INTO maisha_mume_words VALUES (2459, 209, 'c', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (2460, 209, 'c', 2, 'فَانْيَ', 'fānya', 'fanya', '', '', '', '', '', '', 'fānya', 'فَانْيَ', 'fānya');
INSERT INTO maisha_mume_words VALUES (2461, 209, 'c', 3, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2462, 209, 'c', 4, 'كِئَاسِ', 'kiāsi', 'kiasi', '', '', '', '', '', '', 'kiāsi', 'كِئَاسِ', 'kiāsi');
INSERT INTO maisha_mume_words VALUES (2466, 210, 'a', 1, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (2467, 210, 'a', 2, 'وَاكْوٖ', 'wākwe', 'wakwe', '', '', '', '', '', '', 'wākwe', 'وَاكْوٖ', 'wākwe');
INSERT INTO maisha_mume_words VALUES (2468, 210, 'a', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2469, 210, 'a', 4, 'وَنْڠِينٖ', 'wangı̄ne', 'wangine', '', '', '', '', '', '', 'wangı̄ne', 'وَنْڠِينٖ', 'wangı̄ne');
INSERT INTO maisha_mume_words VALUES (2481, 211, 'a', 4, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (2473, 210, 'c', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2474, 210, 'c', 2, 'نَاءٗ', 'nāo', 'nao', '', '', '', '', '', '', 'nāo', 'نَاءٗ', 'nāo');
INSERT INTO maisha_mume_words VALUES (2476, 210, 'd', 1, 'هَذَارِ', 'hadhāri', 'hadhari', '', '', '', '', '', '', 'hadhāri', 'هَذَارِ', 'hadhāri');
INSERT INTO maisha_mume_words VALUES (2477, 210, 'd', 2, 'نَكُؤُسِيَ', 'nakuusiya', 'nakuusiya', '', '', '', '', '', '', 'nakuusiya', 'نَكُؤُسِيَ', 'nakuusiya');
INSERT INTO maisha_mume_words VALUES (2483, 211, 'b', 2, 'هَوَكُدَنْڠَانَ', 'hawakuḏangāna', 'hawakudangana', '', '', '', '', '', '', 'hawakuḏangāna', 'هَوَكُدَنْڠَانَ', 'hawakuḏangāna');
INSERT INTO maisha_mume_words VALUES (2478, 211, 'a', 1, 'وَنْڠِينٖ', 'wangı̄ne', 'wangine', '', '', '', '', '', '', 'wangı̄ne', 'وَنْڠِينٖ', 'wangı̄ne');
INSERT INTO maisha_mume_words VALUES (2479, 211, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2480, 211, 'a', 3, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (2485, 211, 'c', 2, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2482, 211, 'b', 1, 'كَاتُ', 'kāṯu', 'katu', '', '', '', '', '', '', 'kāṯu', 'كَاتُ', 'kāṯu');
INSERT INTO maisha_mume_words VALUES (2486, 211, 'c', 3, 'هَاجَ', 'hāja', 'haja', '', '', '', '', '', '', 'hāja', 'هَاجَ', 'hāja');
INSERT INTO maisha_mume_words VALUES (2487, 211, 'c', 4, 'أُونَ', 'ūna', 'una', '', '', '', '', '', '', 'ūna', 'أُونَ', 'ūna');
INSERT INTO maisha_mume_words VALUES (2489, 211, 'd', 2, 'كُكْوَمْبِيَ', 'kukwambiya', 'kukwambiya', '', '', '', '', '', '', 'kukwambiya', 'كُكْوَمْبِيَ', 'kukwambiya');
INSERT INTO maisha_mume_words VALUES (2484, 211, 'c', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (2491, 212, 'a', 2, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (2488, 211, 'd', 1, 'هَأَنْدَامِ', 'haanḏāmi', 'haandami', '', '', '', '', '', '', 'haanḏāmi', 'هَأَنْدَامِ', 'haanḏāmi');
INSERT INTO maisha_mume_words VALUES (2490, 212, 'a', 1, 'هَنَانْدِ', 'hanānḏi', 'hanandi', '', '', '', '', '', '', 'hanānḏi', 'هَنَانْدِ', 'hanānḏi');
INSERT INTO maisha_mume_words VALUES (2492, 212, 'a', 3, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (2522, 214, 'c', 3, 'بَهَاتِ', 'bahāṯi', 'bahati', '', '', '', '', '', '', 'bahāṯi', 'بَهَاتِ', 'bahāṯi');
INSERT INTO maisha_mume_words VALUES (2523, 214, 'c', 4, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (2493, 212, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2494, 212, 'b', 2, 'مْوَنَاوٖ', 'mwanāwe', 'mwanawe', '', '', '', '', '', '', 'mwanāwe', 'مْوَنَاوٖ', 'mwanāwe');
INSERT INTO maisha_mume_words VALUES (2495, 212, 'b', 3, 'كَتَمَانِ', 'kaṯamāni', 'katamani', '', '', '', '', '', '', 'kaṯamāni', 'كَتَمَانِ', 'kaṯamāni');
INSERT INTO maisha_mume_words VALUES (2496, 212, 'c', 1, 'كُوچَ', 'kūcha', 'kucha', '', '', '', '', '', '', 'kūcha', 'كُوچَ', 'kūcha');
INSERT INTO maisha_mume_words VALUES (2497, 212, 'c', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (2498, 212, 'c', 3, 'وَسِذَانِ', 'wasidhāni', 'wasidhani', '', '', '', '', '', '', 'wasidhāni', 'وَسِذَانِ', 'wasidhāni');
INSERT INTO maisha_mume_words VALUES (2567, 218, 'b', 3, 'وٖينْيٖ', 'wēnye', 'wenye', '', '', '', '', '', '', 'wēnye', 'وٖينْيٖ', 'wēnye');
INSERT INTO maisha_mume_words VALUES (2568, 218, 'b', 4, 'مَأَنَ', 'maana', 'maana', '', '', '', '', '', '', 'maana', 'مَأَنَ', 'maana');
INSERT INTO maisha_mume_words VALUES (2499, 212, 'd', 1, 'أَمٖكْوٖينْدَ', 'amekwēnḏa', 'amekwenda', '', '', '', '', '', '', 'amekwēnḏa', 'أَمٖكْوٖينْدَ', 'amekwēnḏa');
INSERT INTO maisha_mume_words VALUES (2500, 212, 'd', 2, 'كُتَوِيَ', 'kuṯawiya', 'kutawiya', '', '', '', '', '', '', 'kuṯawiya', 'كُتَوِيَ', 'kuṯawiya');
INSERT INTO maisha_mume_words VALUES (2555, 217, 'b', 1, 'سِوَنْڠٗوجٖ', 'siwangōje', 'siwangoje', '', '', '', '', '', '', 'siwangōje', 'سِوَنْڠٗوجٖ', 'siwangōje');
INSERT INTO maisha_mume_words VALUES (2542, 216, 'b', 1, 'كِيسَ', 'kı̄sa', 'kisa', '', '', '', '', '', '', 'kı̄sa', 'كِيسَ', 'kı̄sa');
INSERT INTO maisha_mume_words VALUES (2501, 213, 'a', 1, 'نْدِيَانِ', 'nḏiyāni', 'ndiyani', '', '', '', '', '', '', 'nḏiyāni', 'نْدِيَانِ', 'nḏiyāni');
INSERT INTO maisha_mume_words VALUES (2502, 213, 'a', 2, 'مُكِكُتَانَ', 'mukikuṯāna', 'mukikutana', '', '', '', '', '', '', 'mukikuṯāna', 'مُكِكُتَانَ', 'mukikuṯāna');
INSERT INTO maisha_mume_words VALUES (2524, 214, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2525, 214, 'd', 2, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (2526, 214, 'd', 3, 'پَ', 'pa', 'pa', '', '', '', '', '', '', 'pa', 'پَ', 'pa');
INSERT INTO maisha_mume_words VALUES (2527, 214, 'd', 4, 'كُزِوِيَ', 'kuziwiya', 'kuziwiya', '', '', '', '', '', '', 'kuziwiya', 'كُزِوِيَ', 'kuziwiya');
INSERT INTO maisha_mume_words VALUES (2503, 213, 'b', 1, 'هُوَ', 'huwa', 'huwa', '', '', '', '', '', '', 'huwa', 'هُوَ', 'huwa');
INSERT INTO maisha_mume_words VALUES (2504, 213, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2505, 213, 'b', 3, 'هَرَاكَ', 'harāka', 'haraka', '', '', '', '', '', '', 'harāka', 'هَرَاكَ', 'harāka');
INSERT INTO maisha_mume_words VALUES (2506, 213, 'b', 4, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (2507, 213, 'c', 1, 'هَمَكِنِيكِ', 'hamakinı̄ki', 'hamakiniki', '', '', '', '', '', '', 'hamakinı̄ki', 'هَمَكِنِيكِ', 'hamakinı̄ki');
INSERT INTO maisha_mume_words VALUES (2508, 213, 'c', 2, 'كُنٖينَ', 'kunēna', 'kunena', '', '', '', '', '', '', 'kunēna', 'كُنٖينَ', 'kunēna');
INSERT INTO maisha_mume_words VALUES (2543, 216, 'b', 2, 'تَكْوٖتٖيَ', 'ṯakweṯeya', 'takweteya', '', '', '', '', '', '', 'ṯakweṯeya', 'تَكْوٖتٖيَ', 'ṯakweṯeya');
INSERT INTO maisha_mume_words VALUES (2544, 216, 'b', 3, 'شِيدَ', 'shı̄ḏa', 'shida', '', '', '', '', '', '', 'shı̄ḏa', 'شِيدَ', 'shı̄ḏa');
INSERT INTO maisha_mume_words VALUES (2509, 213, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2510, 213, 'd', 2, 'لِيلٗ', 'lı̄lo', 'lilo', '', '', '', '', '', '', 'lı̄lo', 'لِيلٗ', 'lı̄lo');
INSERT INTO maisha_mume_words VALUES (2511, 213, 'd', 3, 'كُلِكِمْبِيَ', 'kulikimbiya', 'kulikimbiya', '', '', '', '', '', '', 'kulikimbiya', 'كُلِكِمْبِيَ', 'kulikimbiya');
INSERT INTO maisha_mume_words VALUES (2528, 215, 'a', 1, 'أَامَ', 'āma', 'ama', '', '', '', '', '', '', 'āma', 'أَامَ', 'āma');
INSERT INTO maisha_mume_words VALUES (2529, 215, 'a', 2, 'وَكْوٖؤٗ', 'wakweo', 'wakweo', '', '', '', '', '', '', 'wakweo', 'وَكْوٖؤٗ', 'wakweo');
INSERT INTO maisha_mume_words VALUES (2530, 215, 'a', 3, 'وَكِيوَ', 'wakı̄wa', 'wakiwa', '', '', '', '', '', '', 'wakı̄wa', 'وَكِيوَ', 'wakı̄wa');
INSERT INTO maisha_mume_words VALUES (2512, 214, 'a', 1, 'وَكِيوَ', 'wakı̄wa', 'wakiwa', '', '', '', '', '', '', 'wakı̄wa', 'وَكِيوَ', 'wakı̄wa');
INSERT INTO maisha_mume_words VALUES (2513, 214, 'a', 2, 'وَاكْوٖ', 'wākwe', 'wakwe', '', '', '', '', '', '', 'wākwe', 'وَاكْوٖ', 'wākwe');
INSERT INTO maisha_mume_words VALUES (2514, 214, 'a', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2515, 214, 'a', 4, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (2516, 214, 'b', 1, 'كْوَاءٗ', 'kwāo', 'kwao', '', '', '', '', '', '', 'kwāo', 'كْوَاءٗ', 'kwāo');
INSERT INTO maisha_mume_words VALUES (2517, 214, 'b', 2, 'هِيزِ', 'hı̄zi', 'hizi', '', '', '', '', '', '', 'hı̄zi', 'هِيزِ', 'hı̄zi');
INSERT INTO maisha_mume_words VALUES (2518, 214, 'b', 3, 'سِيفَ', 'sı̄fa', 'sifa', '', '', '', '', '', '', 'sı̄fa', 'سِيفَ', 'sı̄fa');
INSERT INTO maisha_mume_words VALUES (2519, 214, 'b', 4, 'زِيكٗ', 'zı̄ko', 'ziko', '', '', '', '', '', '', 'zı̄ko', 'زِيكٗ', 'zı̄ko');
INSERT INTO maisha_mume_words VALUES (2556, 217, 'b', 2, 'كُتَرَاجِ', 'kuṯarāji', 'kutaraji', '', '', '', '', '', '', 'kuṯarāji', 'كُتَرَاجِ', 'kuṯarāji');
INSERT INTO maisha_mume_words VALUES (2520, 214, 'c', 1, 'بَاسِ', 'bāsi', 'basi', '', '', '', '', '', '', 'bāsi', 'بَاسِ', 'bāsi');
INSERT INTO maisha_mume_words VALUES (2531, 215, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2532, 215, 'b', 2, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2533, 215, 'b', 3, 'كُپٖينْدَ', 'kupēnḏa', 'kupenda', '', '', '', '', '', '', 'kupēnḏa', 'كُپٖينْدَ', 'kupēnḏa');
INSERT INTO maisha_mume_words VALUES (2534, 215, 'b', 4, 'كُپٗوَ', 'kupowa', 'kupowa', '', '', '', '', '', '', 'kupowa', 'كُپٗوَ', 'kupowa');
INSERT INTO maisha_mume_words VALUES (2545, 216, 'c', 1, 'إِيلَ', 'ı̄la', 'ila', '', '', '', '', '', '', 'ı̄la', 'إِيلَ', 'ı̄la');
INSERT INTO maisha_mume_words VALUES (2546, 216, 'c', 2, 'وَاوٖ', 'wāwe', 'wawe', '', '', '', '', '', '', 'wāwe', 'وَاوٖ', 'wāwe');
INSERT INTO maisha_mume_words VALUES (2535, 215, 'c', 1, 'كُوَاپَ', 'kuwāpa', 'kuwapa', '', '', '', '', '', '', 'kuwāpa', 'كُوَاپَ', 'kuwāpa');
INSERT INTO maisha_mume_words VALUES (2536, 215, 'c', 2, 'هُكُزُوِيوَ', 'hukuzūı̄wa', 'hukuzuwiwa', '', '', '', '', '', '', 'hukuzūı̄wa', 'هُكُزُوِيوَ', 'hukuzūı̄wa');
INSERT INTO maisha_mume_words VALUES (2547, 216, 'c', 3, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (2548, 216, 'c', 4, 'لَبُودَ', 'labūḏa', 'labuda', '', '', '', '', '', '', 'labūḏa', 'لَبُودَ', 'labūḏa');
INSERT INTO maisha_mume_words VALUES (2537, 215, 'd', 1, 'مْكٗونٗ', 'mkōno', 'mkono', '', '', '', '', '', '', 'mkōno', 'مْكٗونٗ', 'mkōno');
INSERT INTO maisha_mume_words VALUES (2538, 215, 'd', 2, 'كُوَنْيٗشٖيَ', 'kuwanyosheya', 'kuwanyosheya', '', '', '', '', '', '', 'kuwanyosheya', 'كُوَنْيٗشٖيَ', 'kuwanyosheya');
INSERT INTO maisha_mume_words VALUES (2539, 216, 'a', 1, 'أُسِوٖيكٖ', 'usiwēke', 'usiweke', '', '', '', '', '', '', 'usiwēke', 'أُسِوٖيكٖ', 'usiwēke');
INSERT INTO maisha_mume_words VALUES (2540, 216, 'a', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (2541, 216, 'a', 3, 'أَادَ', 'āḏa', 'ada', '', '', '', '', '', '', 'āḏa', 'أَادَ', 'āḏa');
INSERT INTO maisha_mume_words VALUES (2563, 218, 'a', 1, 'أُكِيوَ', 'ukı̄wa', 'ukiwa', '', '', '', '', '', '', 'ukı̄wa', 'أُكِيوَ', 'ukı̄wa');
INSERT INTO maisha_mume_words VALUES (2612, 222, 'a', 1, 'أُسٖينْدٖ', 'usēnḏe', 'usende', '', '', '', '', '', '', 'usēnḏe', 'أُسٖينْدٖ', 'usēnḏe');
INSERT INTO maisha_mume_words VALUES (2564, 218, 'a', 2, 'أُمٖوَؤٗونَ', 'umewaōna', 'umewaona', '', '', '', '', '', '', 'umewaōna', 'أُمٖوَؤٗونَ', 'umewaōna');
INSERT INTO maisha_mume_words VALUES (2549, 216, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2550, 216, 'd', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (2551, 216, 'd', 3, 'وَهِتَجِيَ', 'wahiṯajiya', 'wahitajiya', '', '', '', '', '', '', 'wahiṯajiya', 'وَهِتَجِيَ', 'wahiṯajiya');
INSERT INTO maisha_mume_words VALUES (2557, 217, 'c', 1, 'وَكِيوَ', 'wakı̄wa', 'wakiwa', '', '', '', '', '', '', 'wakı̄wa', 'وَكِيوَ', 'wakı̄wa');
INSERT INTO maisha_mume_words VALUES (2558, 217, 'c', 2, 'كْوَاكٗ', 'kwāko', 'kwako', '', '', '', '', '', '', 'kwāko', 'كْوَاكٗ', 'kwāko');
INSERT INTO maisha_mume_words VALUES (2559, 217, 'c', 3, 'هَوَاجِ', 'hawāji', 'hawaji', '', '', '', '', '', '', 'hawāji', 'هَوَاجِ', 'hawāji');
INSERT INTO maisha_mume_words VALUES (2552, 217, 'a', 1, 'وَكِيوَ', 'wakı̄wa', 'wakiwa', '', '', '', '', '', '', 'wakı̄wa', 'وَكِيوَ', 'wakı̄wa');
INSERT INTO maisha_mume_words VALUES (2553, 217, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2554, 217, 'a', 3, 'وَهِتَاجِ', 'wahiṯāji', 'wahitaji', '', '', '', '', '', '', 'wahiṯāji', 'وَهِتَاجِ', 'wahiṯāji');
INSERT INTO maisha_mume_words VALUES (2560, 217, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2561, 217, 'd', 2, 'سَاوَ', 'sāwa', 'sawa', '', '', '', '', '', '', 'sāwa', 'سَاوَ', 'sāwa');
INSERT INTO maisha_mume_words VALUES (2562, 217, 'd', 3, 'كُوَپٖكٖيَ', 'kuwapekeya', 'kuwapekeya', '', '', '', '', '', '', 'kuwapekeya', 'كُوَپٖكٖيَ', 'kuwapekeya');
INSERT INTO maisha_mume_words VALUES (2569, 218, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2570, 218, 'c', 2, 'وَالٖ', 'wāle', 'wale', '', '', '', '', '', '', 'wāle', 'وَالٖ', 'wāle');
INSERT INTO maisha_mume_words VALUES (2565, 218, 'b', 1, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (2566, 218, 'b', 2, 'وَاتُ', 'wāṯu', 'watu', '', '', '', '', '', '', 'wāṯu', 'وَاتُ', 'wāṯu');
INSERT INTO maisha_mume_words VALUES (2574, 218, 'd', 2, 'كُپٖينْدَ', 'kupēnḏa', 'kupenda', '', '', '', '', '', '', 'kupēnḏa', 'كُپٖينْدَ', 'kupēnḏa');
INSERT INTO maisha_mume_words VALUES (2577, 219, 'a', 2, 'سِتٗوٖ', 'siṯowe', 'sitowe', '', '', '', '', '', '', 'siṯowe', 'سِتٗوٖ', 'siṯowe');
INSERT INTO maisha_mume_words VALUES (2578, 219, 'a', 3, 'چَاكٗ', 'chāko', 'chako', '', '', '', '', '', '', 'chāko', 'چَاكٗ', 'chāko');
INSERT INTO maisha_mume_words VALUES (2573, 218, 'd', 1, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2571, 218, 'c', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2572, 218, 'c', 4, 'كُدَنْڠَانَ', 'kuḏangāna', 'kudangana', '', '', '', '', '', '', 'kuḏangāna', 'كُدَنْڠَانَ', 'kuḏangāna');
INSERT INTO maisha_mume_words VALUES (2575, 218, 'd', 3, 'كُپَپِيَ', 'kupapiya', 'kupapiya', '', '', '', '', '', '', 'kupapiya', 'كُپَپِيَ', 'kupapiya');
INSERT INTO maisha_mume_words VALUES (2580, 219, 'b', 2, 'مْوَمْبِيَ', 'mwambiya', 'mwambiya', '', '', '', '', '', '', 'mwambiya', 'مْوَمْبِيَ', 'mwambiya');
INSERT INTO maisha_mume_words VALUES (2576, 219, 'a', 1, 'زِوِيَ', 'ziwiya', 'ziwiya', '', '', '', '', '', '', 'ziwiya', 'زِوِيَ', 'ziwiya');
INSERT INTO maisha_mume_words VALUES (2581, 219, 'b', 3, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2582, 219, 'b', 4, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (2584, 219, 'c', 2, 'هُتٗوفُ', 'huṯōfu', 'hutofu', '', '', '', '', '', '', 'huṯōfu', 'هُتٗوفُ', 'huṯōfu');
INSERT INTO maisha_mume_words VALUES (2579, 219, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2585, 219, 'c', 3, 'سُمْبُوكٗ', 'sumbūko', 'sumbuko', '', '', '', '', '', '', 'sumbūko', 'سُمْبُوكٗ', 'sumbūko');
INSERT INTO maisha_mume_words VALUES (2615, 222, 'b', 1, 'تَئِڤُتِيَ', 'ṯaivuṯiya', 'taivutiya', '', '', '', '', '', '', 'ṯaivuṯiya', 'تَئِڤُتِيَ', 'ṯaivuṯiya');
INSERT INTO maisha_mume_words VALUES (2616, 222, 'b', 2, 'تَأَبُ', 'ṯaabu', 'taabu', '', '', '', '', '', '', 'ṯaabu', 'تَأَبُ', 'ṯaabu');
INSERT INTO maisha_mume_words VALUES (2586, 219, 'd', 1, 'بِرِيكَ', 'birı̄ka', 'birika', '', '', '', '', '', '', 'birı̄ka', 'بِرِيكَ', 'birı̄ka');
INSERT INTO maisha_mume_words VALUES (2587, 219, 'd', 2, 'مْبٗوڤُ', 'mbōvu', 'mbovu', '', '', '', '', '', '', 'mbōvu', 'مْبٗوڤُ', 'mbōvu');
INSERT INTO maisha_mume_words VALUES (2588, 219, 'd', 3, 'كُتِيَ', 'kuṯiya', 'kutiya', '', '', '', '', '', '', 'kuṯiya', 'كُتِيَ', 'kuṯiya');
INSERT INTO maisha_mume_words VALUES (2589, 220, 'a', 1, 'أَامَ', 'āma', 'ama', '', '', '', '', '', '', 'āma', 'أَامَ', 'āma');
INSERT INTO maisha_mume_words VALUES (2590, 220, 'a', 2, 'وَسِؤٗ', 'wasio', 'wasio', '', '', '', '', '', '', 'wasio', 'وَسِؤٗ', 'wasio');
INSERT INTO maisha_mume_words VALUES (2591, 220, 'a', 3, 'وَزَازِ', 'wazāzi', 'wazazi', '', '', '', '', '', '', 'wazāzi', 'وَزَازِ', 'wazāzi');
INSERT INTO maisha_mume_words VALUES (2635, 223, 'd', 3, 'شَرِيَ', 'shariya', 'shariya', '', '', '', '', '', '', 'shariya', 'شَرِيَ', 'shariya');
INSERT INTO maisha_mume_words VALUES (2592, 220, 'b', 1, 'وَجٗومْبَ', 'wajōmba', 'wajomba', '', '', '', '', '', '', 'wajōmba', 'وَجٗومْبَ', 'wajōmba');
INSERT INTO maisha_mume_words VALUES (2594, 220, 'b', 3, 'مَشَنْڠَازِ', 'mashangāzi', 'mashangazi', '', '', '', '', '', '', 'mashangāzi', 'مَشَنْڠَازِ', 'mashangāzi');
INSERT INTO maisha_mume_words VALUES (2664, 226, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2617, 222, 'c', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2618, 222, 'c', 2, 'وٖينْڠِ', 'wēngi', 'wengi', '', '', '', '', '', '', 'wēngi', 'وٖينْڠِ', 'wēngi');
INSERT INTO maisha_mume_words VALUES (2619, 222, 'c', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2595, 220, 'c', 1, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (2596, 220, 'c', 2, 'كُونَ', 'kūna', 'kuna', '', '', '', '', '', '', 'kūna', 'كُونَ', 'kūna');
INSERT INTO maisha_mume_words VALUES (2597, 220, 'c', 3, 'نْڠُومُ', 'ngūmu', 'ngumu', '', '', '', '', '', '', 'ngūmu', 'نْڠُومُ', 'ngūmu');
INSERT INTO maisha_mume_words VALUES (2598, 220, 'c', 4, 'كَازِ', 'kāzi', 'kazi', '', '', '', '', '', '', 'kāzi', 'كَازِ', 'kāzi');
INSERT INTO maisha_mume_words VALUES (2620, 222, 'c', 4, 'كُهَرِيبُ', 'kuharı̄bu', 'kuharibu', '', '', '', '', '', '', 'kuharı̄bu', 'كُهَرِيبُ', 'kuharı̄bu');
INSERT INTO maisha_mume_words VALUES (2653, 225, 'c', 1, 'خٖيرِ', 'ẖēri', 'heri', '', '', '', '', '', '', 'ẖēri', 'خٖيرِ', 'ẖēri');
INSERT INTO maisha_mume_words VALUES (2599, 220, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2600, 220, 'd', 2, 'يٖيتُ', 'yēṯu', 'yetu', '', '', '', '', '', '', 'yēṯu', 'يٖيتُ', 'yēṯu');
INSERT INTO maisha_mume_words VALUES (2601, 220, 'd', 3, 'هِينِ', 'hı̄ni', 'hini', '', '', '', '', '', '', 'hı̄ni', 'هِينِ', 'hı̄ni');
INSERT INTO maisha_mume_words VALUES (2602, 220, 'd', 4, 'دُنِيَ', 'ḏuniya', 'duniya', '', '', '', '', '', '', 'ḏuniya', 'دُنِيَ', 'ḏuniya');
INSERT INTO maisha_mume_words VALUES (2636, 224, 'a', 1, 'أُسِؤٗنْدٗوٖ', 'usionḏowe', 'usiondowe', '', '', '', '', '', '', 'usionḏowe', 'أُسِؤٗنْدٗوٖ', 'usionḏowe');
INSERT INTO maisha_mume_words VALUES (2621, 222, 'd', 1, 'كَتِيكَ', 'kaṯı̄ka', 'katika', '', '', '', '', '', '', 'kaṯı̄ka', 'كَتِيكَ', 'kaṯı̄ka');
INSERT INTO maisha_mume_words VALUES (2603, 221, 'a', 1, 'كْوَانْدَ', 'kwānḏa', 'kwanda', '', '', '', '', '', '', 'kwānḏa', 'كْوَانْدَ', 'kwānḏa');
INSERT INTO maisha_mume_words VALUES (2604, 221, 'a', 2, 'أُسِوَتَپِيٖ', 'usiwaṯapiye', 'usiwatapiye', '', '', '', '', '', '', 'usiwaṯapiye', 'أُسِوَتَپِيٖ', 'usiwaṯapiye');
INSERT INTO maisha_mume_words VALUES (2622, 222, 'd', 2, 'نِمٖزٗتَايَ', 'nimezoṯāya', 'nimezotaya', '', '', '', '', '', '', 'nimezoṯāya', 'نِمٖزٗتَايَ', 'nimezoṯāya');
INSERT INTO maisha_mume_words VALUES (2605, 221, 'b', 1, 'كٖيتِ', 'kēṯi', 'keti', '', '', '', '', '', '', 'kēṯi', 'كٖيتِ', 'kēṯi');
INSERT INTO maisha_mume_words VALUES (2606, 221, 'b', 2, 'مْبَالِ', 'mbāli', 'mbali', '', '', '', '', '', '', 'mbāli', 'مْبَالِ', 'mbāli');
INSERT INTO maisha_mume_words VALUES (2607, 221, 'b', 3, 'وَنْڠَلِيٖ', 'wangaliye', 'wangaliye', '', '', '', '', '', '', 'wangaliye', 'وَنْڠَلِيٖ', 'wangaliye');
INSERT INTO maisha_mume_words VALUES (2637, 224, 'a', 2, 'مِپَاكَ', 'mipāka', 'mipaka', '', '', '', '', '', '', 'mipāka', 'مِپَاكَ', 'mipāka');
INSERT INTO maisha_mume_words VALUES (2608, 221, 'c', 1, 'أُكِيَؤٗونَ', 'ukiyaōna', 'ukiyaona', '', '', '', '', '', '', 'ukiyaōna', 'أُكِيَؤٗونَ', 'ukiyaōna');
INSERT INTO maisha_mume_words VALUES (2609, 221, 'c', 2, 'مَمْبٗويٖ', 'mambōye', 'mamboye', '', '', '', '', '', '', 'mambōye', 'مَمْبٗويٖ', 'mambōye');
INSERT INTO maisha_mume_words VALUES (2610, 221, 'd', 1, 'نْدِيَ', 'nḏiya', 'ndiya', '', '', '', '', '', '', 'nḏiya', 'نْدِيَ', 'nḏiya');
INSERT INTO maisha_mume_words VALUES (2611, 221, 'd', 2, 'هَيَكْوٖكٖلٖيَ', 'hayakwekeleya', 'hayakwekeleya', '', '', '', '', '', '', 'hayakwekeleya', 'هَيَكْوٖكٖلٖيَ', 'hayakwekeleya');
INSERT INTO maisha_mume_words VALUES (2623, 223, 'a', 1, 'أَامَ', 'āma', 'ama', '', '', '', '', '', '', 'āma', 'أَامَ', 'āma');
INSERT INTO maisha_mume_words VALUES (2624, 223, 'a', 2, 'مَشٖمٖيڠِ', 'mashemēgi', 'mashemegi', '', '', '', '', '', '', 'mashemēgi', 'مَشٖمٖيڠِ', 'mashemēgi');
INSERT INTO maisha_mume_words VALUES (2614, 222, 'a', 3, 'كَرِيبُ', 'karı̄bu', 'karibu', '', '', '', '', '', '', 'karı̄bu', 'كَرِيبُ', 'karı̄bu');
INSERT INTO maisha_mume_words VALUES (2654, 225, 'c', 2, 'وَامْبٖ', 'wāmbe', 'wambe', '', '', '', '', '', '', 'wāmbe', 'وَامْبٖ', 'wāmbe');
INSERT INTO maisha_mume_words VALUES (2647, 225, 'a', 1, 'خٖيرِ', 'ẖēri', 'heri', '', '', '', '', '', '', 'ẖēri', 'خٖيرِ', 'ẖēri');
INSERT INTO maisha_mume_words VALUES (2648, 225, 'a', 2, 'وَمْبِيوٖ', 'wambı̄we', 'wambiwe', '', '', '', '', '', '', 'wambı̄we', 'وَمْبِيوٖ', 'wambı̄we');
INSERT INTO maisha_mume_words VALUES (2649, 225, 'a', 3, 'مُؤٗوڤُ', 'muōvu', 'muovu', '', '', '', '', '', '', 'muōvu', 'مُؤٗوڤُ', 'muōvu');
INSERT INTO maisha_mume_words VALUES (2626, 223, 'b', 1, 'دَادَ', 'ḏāḏa', 'dada', '', '', '', '', '', '', 'ḏāḏa', 'دَادَ', 'ḏāḏa');
INSERT INTO maisha_mume_words VALUES (2627, 223, 'b', 2, 'زَاكٖ', 'zāke', 'zake', '', '', '', '', '', '', 'zāke', 'زَاكٖ', 'zāke');
INSERT INTO maisha_mume_words VALUES (2629, 223, 'b', 4, 'وَاكٗ', 'wāko', 'wako', '', '', '', '', '', '', 'wāko', 'وَاكٗ', 'wāko');
INSERT INTO maisha_mume_words VALUES (2638, 224, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2639, 224, 'b', 2, 'مزَاهَ', 'mzāha', 'mzaha', '', '', '', '', '', '', 'mzāha', 'مزَاهَ', 'mzāha');
INSERT INTO maisha_mume_words VALUES (2640, 224, 'b', 3, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2630, 223, 'c', 1, 'مْوَنَانْڠُ', 'mwanāngu', 'mwanangu', '', '', '', '', '', '', 'mwanāngu', 'مْوَنَانْڠُ', 'mwanāngu');
INSERT INTO maisha_mume_words VALUES (2631, 223, 'c', 2, 'سِڤُونْدٖ', 'sivūnḏe', 'sivunde', '', '', '', '', '', '', 'sivūnḏe', 'سِڤُونْدٖ', 'sivūnḏe');
INSERT INTO maisha_mume_words VALUES (2632, 223, 'c', 3, 'مِيكٗ', 'mı̄ko', 'miko', '', '', '', '', '', '', 'mı̄ko', 'مِيكٗ', 'mı̄ko');
INSERT INTO maisha_mume_words VALUES (2641, 224, 'b', 4, 'ذِهَاكَ', 'dhihāka', 'dhihaka', '', '', '', '', '', '', 'dhihāka', 'ذِهَاكَ', 'dhihāka');
INSERT INTO maisha_mume_words VALUES (2633, 223, 'd', 1, 'إِلٗوٖيكْوَ', 'ilowēkwa', 'ilowekwa', '', '', '', '', '', '', 'ilowēkwa', 'إِلٗوٖيكْوَ', 'ilowēkwa');
INSERT INTO maisha_mume_words VALUES (2634, 223, 'd', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2655, 225, 'c', 3, 'أُونَ', 'ūna', 'una', '', '', '', '', '', '', 'ūna', 'أُونَ', 'ūna');
INSERT INTO maisha_mume_words VALUES (2642, 224, 'c', 1, 'مَارَ', 'māra', 'mara', '', '', '', '', '', '', 'māra', 'مَارَ', 'māra');
INSERT INTO maisha_mume_words VALUES (2643, 224, 'c', 2, 'مَامْبٗ', 'māmbo', 'mambo', '', '', '', '', '', '', 'māmbo', 'مَامْبٗ', 'māmbo');
INSERT INTO maisha_mume_words VALUES (2644, 224, 'c', 3, 'هُڠٖؤُوكَ', 'hugeūka', 'hugeuka', '', '', '', '', '', '', 'hugeūka', 'هُڠٖؤُوكَ', 'hugeūka');
INSERT INTO maisha_mume_words VALUES (2656, 225, 'c', 4, 'وِيڤُ', 'wı̄vu', 'wivu', '', '', '', '', '', '', 'wı̄vu', 'وِيڤُ', 'wı̄vu');
INSERT INTO maisha_mume_words VALUES (2645, 224, 'd', 1, 'كِزَأَزَاءَ', 'kizaazāa', 'kizaazaa', '', '', '', '', '', '', 'kizaazāa', 'كِزَأَزَاءَ', 'kizaazāa');
INSERT INTO maisha_mume_words VALUES (2646, 224, 'd', 2, 'كِكَايَ', 'kikāya', 'kikaya', '', '', '', '', '', '', 'kikāya', 'كِكَايَ', 'kikāya');
INSERT INTO maisha_mume_words VALUES (2650, 225, 'b', 1, 'كُلِيكٗ', 'kulı̄ko', 'kuliko', '', '', '', '', '', '', 'kulı̄ko', 'كُلِيكٗ', 'kulı̄ko');
INSERT INTO maisha_mume_words VALUES (2651, 225, 'b', 2, 'كُپَاتَ', 'kupāṯa', 'kupata', '', '', '', '', '', '', 'kupāṯa', 'كُپَاتَ', 'kupāṯa');
INSERT INTO maisha_mume_words VALUES (2652, 225, 'b', 3, 'كٗوڤُ', 'kōvu', 'kovu', '', '', '', '', '', '', 'kōvu', 'كٗوڤُ', 'kōvu');
INSERT INTO maisha_mume_words VALUES (2667, 226, 'c', 2, 'كُيِفَانْيَ', 'kuyifānya', 'kuyifanya', '', '', '', '', '', '', 'kuyifānya', 'كُيِفَانْيَ', 'kuyifānya');
INSERT INTO maisha_mume_words VALUES (2668, 226, 'c', 3, 'تٗونْڠٗ', 'ṯōngo', 'tongo', '', '', '', '', '', '', 'ṯōngo', 'تٗونْڠٗ', 'ṯōngo');
INSERT INTO maisha_mume_words VALUES (2663, 226, 'b', 1, 'أُكِزِيدِ', 'ukizı̄ḏi', 'ukizidi', '', '', '', '', '', '', 'ukizı̄ḏi', 'أُكِزِيدِ', 'ukizı̄ḏi');
INSERT INTO maisha_mume_words VALUES (2659, 226, 'a', 1, 'وِيڤُ', 'wı̄vu', 'wivu', '', '', '', '', '', '', 'wı̄vu', 'وِيڤُ', 'wı̄vu');
INSERT INTO maisha_mume_words VALUES (2660, 226, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2657, 225, 'd', 1, 'كُلِيكٗ', 'kulı̄ko', 'kuliko', '', '', '', '', '', '', 'kulı̄ko', 'كُلِيكٗ', 'kulı̄ko');
INSERT INTO maisha_mume_words VALUES (2658, 225, 'd', 2, 'كُكُڤُنْدِيَ', 'kukuvunḏiya', 'kukuvundiya', '', '', '', '', '', '', 'kukuvunḏiya', 'كُكُڤُنْدِيَ', 'kukuvunḏiya');
INSERT INTO maisha_mume_words VALUES (2661, 226, 'a', 3, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (2662, 226, 'a', 4, 'كِؤُونْڠٗ', 'kiūngo', 'kiungo', '', '', '', '', '', '', 'kiūngo', 'كِؤُونْڠٗ', 'kiūngo');
INSERT INTO maisha_mume_words VALUES (2665, 226, 'b', 3, 'تٖوٖينْڠٗ', 'ṯewēngo', 'tewengo', '', '', '', '', '', '', 'ṯewēngo', 'تٖوٖينْڠٗ', 'ṯewēngo');
INSERT INTO maisha_mume_words VALUES (2670, 226, 'd', 2, 'هُنْڠِيَ', 'hungiya', 'hungiya', '', '', '', '', '', '', 'hungiya', 'هُنْڠِيَ', 'hungiya');
INSERT INTO maisha_mume_words VALUES (2666, 226, 'c', 1, 'پِيَ', 'piya', 'piya', '', '', '', '', '', '', 'piya', 'پِيَ', 'piya');
INSERT INTO maisha_mume_words VALUES (2672, 227, 'a', 2, 'كُؤُكٗوسَ', 'kuukōsa', 'kuukosa', '', '', '', '', '', '', 'kuukōsa', 'كُؤُكٗوسَ', 'kuukōsa');
INSERT INTO maisha_mume_words VALUES (2669, 226, 'd', 1, 'أُدُيُثِينِ', 'uḏuyuthı̄ni', 'uduyuthini', '', '', '', '', '', '', 'uḏuyuthı̄ni', 'أُدُيُثِينِ', 'uḏuyuthı̄ni');
INSERT INTO maisha_mume_words VALUES (2673, 227, 'a', 3, 'كَبِيسَ', 'kabı̄sa', 'kabisa', '', '', '', '', '', '', 'kabı̄sa', 'كَبِيسَ', 'kabı̄sa');
INSERT INTO maisha_mume_words VALUES (2675, 227, 'b', 2, 'نْدِيٗ', 'nḏiyo', 'ndiyo', '', '', '', '', '', '', 'nḏiyo', 'نْدِيٗ', 'nḏiyo');
INSERT INTO maisha_mume_words VALUES (2671, 227, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2676, 227, 'b', 3, 'كِسَاسَ', 'kisāsa', 'kisasa', '', '', '', '', '', '', 'kisāsa', 'كِسَاسَ', 'kisāsa');
INSERT INTO maisha_mume_words VALUES (2726, 231, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2727, 231, 'b', 2, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (2708, 229, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2709, 229, 'd', 2, 'وٖينْدٖ', 'wēnḏe', 'wende', '', '', '', '', '', '', 'wēnḏe', 'وٖينْدٖ', 'wēnḏe');
INSERT INTO maisha_mume_words VALUES (2677, 227, 'c', 1, 'هِيٗ', 'hiyo', 'hiyo', '', '', '', '', '', '', 'hiyo', 'هِيٗ', 'hiyo');
INSERT INTO maisha_mume_words VALUES (2678, 227, 'c', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (2679, 227, 'c', 3, 'نْجٖيمَ', 'njēma', 'njema', '', '', '', '', '', '', 'njēma', 'نْجٖيمَ', 'njēma');
INSERT INTO maisha_mume_words VALUES (2680, 227, 'c', 4, 'سِيَاسَ', 'siyāsa', 'siyasa', '', '', '', '', '', '', 'siyāsa', 'سِيَاسَ', 'siyāsa');
INSERT INTO maisha_mume_words VALUES (2710, 229, 'd', 3, 'تَيِڤُنِيَ', 'ṯayivuniya', 'tayivuniya', '', '', '', '', '', '', 'ṯayivuniya', 'تَيِڤُنِيَ', 'ṯayivuniya');
INSERT INTO maisha_mume_words VALUES (2681, 227, 'd', 1, 'يَ', 'ya', 'ya', '', '', '', '', '', '', 'ya', 'يَ', 'ya');
INSERT INTO maisha_mume_words VALUES (2682, 227, 'd', 2, 'نْيُمْبَانِ', 'nyumbāni', 'nyumbani', '', '', '', '', '', '', 'nyumbāni', 'نْيُمْبَانِ', 'nyumbāni');
INSERT INTO maisha_mume_words VALUES (2683, 227, 'd', 3, 'كُتُمِيَ', 'kuṯumiya', 'kutumiya', '', '', '', '', '', '', 'kuṯumiya', 'كُتُمِيَ', 'kuṯumiya');
INSERT INTO maisha_mume_words VALUES (2728, 231, 'b', 3, 'وَاجَ', 'wāja', 'waja', '', '', '', '', '', '', 'wāja', 'وَاجَ', 'wāja');
INSERT INTO maisha_mume_words VALUES (2729, 231, 'b', 4, 'هُنٖينَ', 'hunēna', 'hunena', '', '', '', '', '', '', 'hunēna', 'هُنٖينَ', 'hunēna');
INSERT INTO maisha_mume_words VALUES (2684, 228, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2685, 228, 'a', 2, 'لَزِيمَ', 'lazı̄ma', 'lazima', '', '', '', '', '', '', 'lazı̄ma', 'لَزِيمَ', 'lazı̄ma');
INSERT INTO maisha_mume_words VALUES (2686, 228, 'a', 3, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (2687, 228, 'a', 4, 'نَاءٗ', 'nāo', 'nao', '', '', '', '', '', '', 'nāo', 'نَاءٗ', 'nāo');
INSERT INTO maisha_mume_words VALUES (2711, 230, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2712, 230, 'a', 2, 'فُفنُونُ', 'fufnūnu', 'fufnunu', '', '', '', '', '', '', 'fufnūnu', 'فُفنُونُ', 'fufnūnu');
INSERT INTO maisha_mume_words VALUES (2713, 230, 'a', 3, 'أُكِپَاتَ', 'ukipāṯa', 'ukipata', '', '', '', '', '', '', 'ukipāṯa', 'أُكِپَاتَ', 'ukipāṯa');
INSERT INTO maisha_mume_words VALUES (2688, 228, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2689, 228, 'b', 2, 'أَلِيٗ', 'aliyo', 'aliyo', '', '', '', '', '', '', 'aliyo', 'أَلِيٗ', 'aliyo');
INSERT INTO maisha_mume_words VALUES (2690, 228, 'b', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2691, 228, 'b', 4, 'مْكٖؤٗ', 'mkeo', 'mkeo', '', '', '', '', '', '', 'mkeo', 'مْكٖؤٗ', 'mkeo');
INSERT INTO maisha_mume_words VALUES (2692, 228, 'c', 1, 'كِكُزُمْبُوَ', 'kikuzumbuwa', 'kikuzumbuwa', '', '', '', '', '', '', 'kikuzumbuwa', 'كِكُزُمْبُوَ', 'kikuzumbuwa');
INSERT INTO maisha_mume_words VALUES (2693, 228, 'c', 2, 'هُنَاءٗ', 'hunāo', 'hunao', '', '', '', '', '', '', 'hunāo', 'هُنَاءٗ', 'hunāo');
INSERT INTO maisha_mume_words VALUES (2694, 228, 'd', 1, 'مَتٗونِ', 'maṯōni', 'matoni', '', '', '', '', '', '', 'maṯōni', 'مَتٗونِ', 'maṯōni');
INSERT INTO maisha_mume_words VALUES (2695, 228, 'd', 2, 'هُتٗمْنْڠِيَ', 'huṯomngiya', 'hutomngiya', '', '', '', '', '', '', 'huṯomngiya', 'هُتٗمْنْڠِيَ', 'huṯomngiya');
INSERT INTO maisha_mume_words VALUES (2752, 233, 'b', 3, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (2714, 230, 'b', 1, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (2696, 229, 'a', 1, 'كُوَ', 'kuwa', 'kuwa', '', '', '', '', '', '', 'kuwa', 'كُوَ', 'kuwa');
INSERT INTO maisha_mume_words VALUES (2697, 229, 'a', 2, 'نَاءٗ', 'nāo', 'nao', '', '', '', '', '', '', 'nāo', 'نَاءٗ', 'nāo');
INSERT INTO maisha_mume_words VALUES (2698, 229, 'a', 3, 'وَ', 'wa', 'wa', '', '', '', '', '', '', 'wa', 'وَ', 'wa');
INSERT INTO maisha_mume_words VALUES (2699, 229, 'a', 4, 'كَدِيرِ', 'kaḏı̄ri', 'kadiri', '', '', '', '', '', '', 'kaḏı̄ri', 'كَدِيرِ', 'kaḏı̄ri');
INSERT INTO maisha_mume_words VALUES (2715, 230, 'b', 2, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2716, 230, 'b', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2717, 230, 'b', 4, 'مْتَاتَ', 'mṯāṯa', 'mtata', '', '', '', '', '', '', 'mṯāṯa', 'مْتَاتَ', 'mṯāṯa');
INSERT INTO maisha_mume_words VALUES (2700, 229, 'b', 1, 'هِيٗ', 'hiyo', 'hiyo', '', '', '', '', '', '', 'hiyo', 'هِيٗ', 'hiyo');
INSERT INTO maisha_mume_words VALUES (2701, 229, 'b', 2, 'نْدِيٗ', 'nḏiyo', 'ndiyo', '', '', '', '', '', '', 'nḏiyo', 'نْدِيٗ', 'nḏiyo');
INSERT INTO maisha_mume_words VALUES (2702, 229, 'b', 3, 'دَسِتُورِ', 'ḏasiṯūri', 'dasituri', '', '', '', '', '', '', 'ḏasiṯūri', 'دَسِتُورِ', 'ḏasiṯūri');
INSERT INTO maisha_mume_words VALUES (2753, 233, 'b', 4, 'هَكِيكَ', 'hakı̄ka', 'hakika', '', '', '', '', '', '', 'hakı̄ka', 'هَكِيكَ', 'hakı̄ka');
INSERT INTO maisha_mume_words VALUES (2748, 233, 'a', 1, 'إِكِيوَ', 'ikı̄wa', 'ikiwa', '', '', '', '', '', '', 'ikı̄wa', 'إِكِيوَ', 'ikı̄wa');
INSERT INTO maisha_mume_words VALUES (2703, 229, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2704, 229, 'c', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2706, 229, 'c', 4, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2707, 229, 'c', 5, 'فَخَارِ', 'faẖāri', 'fahari', '', '', '', '', '', '', 'faẖāri', 'فَخَارِ', 'faẖāri');
INSERT INTO maisha_mume_words VALUES (2749, 233, 'a', 2, 'أُمٖتٗشٖيكَ', 'umeṯoshēka', 'umetosheka', '', '', '', '', '', '', 'umeṯoshēka', 'أُمٖتٗشٖيكَ', 'umeṯoshēka');
INSERT INTO maisha_mume_words VALUES (2730, 231, 'c', 1, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (2718, 230, 'c', 1, 'سِئِنُوكٖ', 'siinūke', 'siinuke', '', '', '', '', '', '', 'siinūke', 'سِئِنُوكٖ', 'siinūke');
INSERT INTO maisha_mume_words VALUES (2719, 230, 'c', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2720, 230, 'c', 3, 'كُتٖيتَ', 'kuṯēṯa', 'kuteta', '', '', '', '', '', '', 'kuṯēṯa', 'كُتٖيتَ', 'kuṯēṯa');
INSERT INTO maisha_mume_words VALUES (2731, 231, 'c', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2732, 231, 'c', 3, 'خَتَارِ', 'ẖaṯāri', 'hatari', '', '', '', '', '', '', 'ẖaṯāri', 'خَتَارِ', 'ẖaṯāri');
INSERT INTO maisha_mume_words VALUES (2733, 231, 'c', 4, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (2721, 230, 'd', 1, 'كْوَانْدَ', 'kwānḏa', 'kwanda', '', '', '', '', '', '', 'kwānḏa', 'كْوَانْدَ', 'kwānḏa');
INSERT INTO maisha_mume_words VALUES (2722, 230, 'd', 2, 'زِيدِ', 'zı̄ḏi', 'zidi', '', '', '', '', '', '', 'zı̄ḏi', 'زِيدِ', 'zı̄ḏi');
INSERT INTO maisha_mume_words VALUES (2723, 230, 'd', 3, 'كْوَنْڠَلِيَ', 'kwangaliya', 'kwangaliya', '', '', '', '', '', '', 'kwangaliya', 'كْوَنْڠَلِيَ', 'kwangaliya');
INSERT INTO maisha_mume_words VALUES (2724, 231, 'a', 1, 'سِمْتُكُلِيٖ', 'simṯukuliye', 'simtukuliye', '', '', '', '', '', '', 'simṯukuliye', 'سِمْتُكُلِيٖ', 'simṯukuliye');
INSERT INTO maisha_mume_words VALUES (2725, 231, 'a', 2, 'ذَانَ', 'dhāna', 'dhana', '', '', '', '', '', '', 'dhāna', 'ذَانَ', 'dhāna');
INSERT INTO maisha_mume_words VALUES (2740, 232, 'c', 1, 'تٖينَ', 'ṯēna', 'tena', '', '', '', '', '', '', 'ṯēna', 'تٖينَ', 'ṯēna');
INSERT INTO maisha_mume_words VALUES (2741, 232, 'c', 2, 'أُفَانْيٖ', 'ufānye', 'ufanye', '', '', '', '', '', '', 'ufānye', 'أُفَانْيٖ', 'ufānye');
INSERT INTO maisha_mume_words VALUES (2742, 232, 'c', 3, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2743, 232, 'c', 4, 'سِيرِ', 'sı̄ri', 'siri', '', '', '', '', '', '', 'sı̄ri', 'سِيرِ', 'sı̄ri');
INSERT INTO maisha_mume_words VALUES (2734, 231, 'd', 1, 'مَيُتٗونِ', 'mayuṯōni', 'mayutoni', '', '', '', '', '', '', 'mayuṯōni', 'مَيُتٗونِ', 'mayuṯōni');
INSERT INTO maisha_mume_words VALUES (2735, 231, 'd', 2, 'تَكُتِيَ', 'ṯakuṯiya', 'takutiya', '', '', '', '', '', '', 'ṯakuṯiya', 'تَكُتِيَ', 'ṯakuṯiya');
INSERT INTO maisha_mume_words VALUES (2736, 232, 'a', 1, 'إِزِوِيٖ', 'iziwiye', 'iziwiye', '', '', '', '', '', '', 'iziwiye', 'إِزِوِيٖ', 'iziwiye');
INSERT INTO maisha_mume_words VALUES (2737, 232, 'a', 2, 'أُسُبِيرِ', 'usubı̄ri', 'usubiri', '', '', '', '', '', '', 'usubı̄ri', 'أُسُبِيرِ', 'usubı̄ri');
INSERT INTO maisha_mume_words VALUES (2738, 232, 'b', 1, 'أُهَكِكِيشٖ', 'uhakikı̄she', 'uhakikishe', '', '', '', '', '', '', 'uhakikı̄she', 'أُهَكِكِيشٖ', 'uhakikı̄she');
INSERT INTO maisha_mume_words VALUES (2739, 232, 'b', 2, 'خَبَارِ', 'ẖabāri', 'habari', '', '', '', '', '', '', 'ẖabāri', 'خَبَارِ', 'ẖabāri');
INSERT INTO maisha_mume_words VALUES (2744, 232, 'd', 1, 'پَاسِ', 'pāsi', 'pasi', '', '', '', '', '', '', 'pāsi', 'پَاسِ', 'pāsi');
INSERT INTO maisha_mume_words VALUES (2745, 232, 'd', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2746, 232, 'd', 3, 'كُپِيجَ', 'kupı̄ja', 'kupija', '', '', '', '', '', '', 'kupı̄ja', 'كُپِيجَ', 'kupı̄ja');
INSERT INTO maisha_mume_words VALUES (2747, 232, 'd', 4, 'مْبِيَ', 'mbiya', 'mbiya', '', '', '', '', '', '', 'mbiya', 'مْبِيَ', 'mbiya');
INSERT INTO maisha_mume_words VALUES (2756, 233, 'c', 3, 'إٖپُوكَ', 'epūka', 'epuka', '', '', '', '', '', '', 'epūka', 'إٖپُوكَ', 'epūka');
INSERT INTO maisha_mume_words VALUES (2750, 233, 'b', 1, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (2751, 233, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2761, 234, 'a', 2, 'يَاكٗ', 'yāko', 'yako', '', '', '', '', '', '', 'yāko', 'يَاكٗ', 'yāko');
INSERT INTO maisha_mume_words VALUES (2754, 233, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2755, 233, 'c', 2, 'تَرَتِيبُ', 'ṯaraṯı̄bu', 'taratibu', '', '', '', '', '', '', 'ṯaraṯı̄bu', 'تَرَتِيبُ', 'ṯaraṯı̄bu');
INSERT INTO maisha_mume_words VALUES (2759, 233, 'd', 3, 'كُتَايَ', 'kuṯāya', 'kutaya', '', '', '', '', '', '', 'kuṯāya', 'كُتَايَ', 'kuṯāya');
INSERT INTO maisha_mume_words VALUES (2757, 233, 'd', 1, 'بِيلَ', 'bı̄la', 'bila', '', '', '', '', '', '', 'bı̄la', 'بِيلَ', 'bı̄la');
INSERT INTO maisha_mume_words VALUES (2758, 233, 'd', 2, 'سَبَابُ', 'sabābu', 'sababu', '', '', '', '', '', '', 'sabābu', 'سَبَابُ', 'sabābu');
INSERT INTO maisha_mume_words VALUES (2762, 234, 'a', 3, 'سَبَابُ', 'sabābu', 'sababu', '', '', '', '', '', '', 'sabābu', 'سَبَابُ', 'sabābu');
INSERT INTO maisha_mume_words VALUES (2764, 234, 'b', 2, 'كُهَرِيبُ', 'kuharı̄bu', 'kuharibu', '', '', '', '', '', '', 'kuharı̄bu', 'كُهَرِيبُ', 'kuharı̄bu');
INSERT INTO maisha_mume_words VALUES (2760, 234, 'a', 1, 'سِتَايٖ', 'siṯāye', 'sitaye', '', '', '', '', '', '', 'siṯāye', 'سِتَايٖ', 'siṯāye');
INSERT INTO maisha_mume_words VALUES (2766, 234, 'c', 2, 'أَئِيبُ', 'aı̄bu', 'aibu', '', '', '', '', '', '', 'aı̄bu', 'أَئِيبُ', 'aı̄bu');
INSERT INTO maisha_mume_words VALUES (2763, 234, 'b', 1, 'أُتَزِيدِ', 'uṯazı̄ḏi', 'utazidi', '', '', '', '', '', '', 'uṯazı̄ḏi', 'أُتَزِيدِ', 'uṯazı̄ḏi');
INSERT INTO maisha_mume_words VALUES (2768, 234, 'd', 2, 'سِ', 'si', 'si', '', '', '', '', '', '', 'si', 'سِ', 'si');
INSERT INTO maisha_mume_words VALUES (2765, 234, 'c', 1, 'زِتَتَنْڠَاءَ', 'ziṯaṯangāa', 'zitatangaa', '', '', '', '', '', '', 'ziṯaṯangāa', 'زِتَتَنْڠَاءَ', 'ziṯaṯangāa');
INSERT INTO maisha_mume_words VALUES (2769, 234, 'd', 3, 'وٖيمَ', 'wēma', 'wema', '', '', '', '', '', '', 'wēma', 'وٖيمَ', 'wēma');
INSERT INTO maisha_mume_words VALUES (2767, 234, 'd', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2770, 234, 'd', 4, 'كُئٖنٖيَ', 'kueneya', 'kueneya', '', '', '', '', '', '', 'kueneya', 'كُئٖنٖيَ', 'kueneya');
INSERT INTO maisha_mume_words VALUES (2830, 240, 'c', 2, 'وَلِزُوشَ', 'walizūsha', 'walizusha', '', '', '', '', '', '', 'walizūsha', 'وَلِزُوشَ', 'walizūsha');
INSERT INTO maisha_mume_words VALUES (2800, 237, 'c', 1, 'فَهَامُ', 'fahāmu', 'fahamu', '', '', '', '', '', '', 'fahāmu', 'فَهَامُ', 'fahāmu');
INSERT INTO maisha_mume_words VALUES (2801, 237, 'c', 2, 'تَفٖذٖهٖيكَ', 'ṯafedhehēka', 'tafedheheka', '', '', '', '', '', '', 'ṯafedhehēka', 'تَفٖذٖهٖيكَ', 'ṯafedhehēka');
INSERT INTO maisha_mume_words VALUES (2771, 235, 'a', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2772, 235, 'a', 2, 'هِيلٗ', 'hı̄lo', 'hilo', '', '', '', '', '', '', 'hı̄lo', 'هِيلٗ', 'hı̄lo');
INSERT INTO maisha_mume_words VALUES (2773, 235, 'a', 3, 'كِيسَ', 'kı̄sa', 'kisa', '', '', '', '', '', '', 'kı̄sa', 'كِيسَ', 'kı̄sa');
INSERT INTO maisha_mume_words VALUES (2774, 235, 'a', 4, 'كُتٖينْدَ', 'kuṯēnḏa', 'kutenda', '', '', '', '', '', '', 'kuṯēnḏa', 'كُتٖينْدَ', 'kuṯēnḏa');
INSERT INTO maisha_mume_words VALUES (2818, 239, 'c', 1, 'كُلِيكٗ', 'kulı̄ko', 'kuliko', '', '', '', '', '', '', 'kulı̄ko', 'كُلِيكٗ', 'kulı̄ko');
INSERT INTO maisha_mume_words VALUES (2819, 239, 'c', 2, 'كُفٖذٖهٖيكَ', 'kufedhehēka', 'kufedheheka', '', '', '', '', '', '', 'kufedhehēka', 'كُفٖذٖهٖيكَ', 'kufedhehēka');
INSERT INTO maisha_mume_words VALUES (2775, 235, 'b', 1, 'هُونَ', 'hūna', 'huna', '', '', '', '', '', '', 'hūna', 'هُونَ', 'hūna');
INSERT INTO maisha_mume_words VALUES (2776, 235, 'b', 2, 'بُودِ', 'būḏi', 'budi', '', '', '', '', '', '', 'būḏi', 'بُودِ', 'būḏi');
INSERT INTO maisha_mume_words VALUES (2777, 235, 'b', 3, 'كُئِپِينْدَ', 'kuipı̄nḏa', 'kuipinda', '', '', '', '', '', '', 'kuipı̄nḏa', 'كُئِپِينْدَ', 'kuipı̄nḏa');
INSERT INTO maisha_mume_words VALUES (2802, 237, 'd', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2803, 237, 'd', 2, 'هُتٗئِزِوِيَ', 'huṯoiziwiya', 'hutoiziwiya', '', '', '', '', '', '', 'huṯoiziwiya', 'هُتٗئِزِوِيَ', 'huṯoiziwiya');
INSERT INTO maisha_mume_words VALUES (2778, 235, 'c', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (2779, 235, 'c', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (2780, 235, 'c', 3, 'أُونَ', 'ūna', 'una', '', '', '', '', '', '', 'ūna', 'أُونَ', 'ūna');
INSERT INTO maisha_mume_words VALUES (2781, 235, 'c', 4, 'نْيٗونْدَ', 'nyōnḏa', 'nyonda', '', '', '', '', '', '', 'nyōnḏa', 'نْيٗونْدَ', 'nyōnḏa');
INSERT INTO maisha_mume_words VALUES (2804, 238, 'a', 1, 'إِزِوِيٖ', 'iziwiye', 'iziwiye', '', '', '', '', '', '', 'iziwiye', 'إِزِوِيٖ', 'iziwiye');
INSERT INTO maisha_mume_words VALUES (2782, 235, 'd', 1, 'سِيوٖ', 'sı̄we', 'siwe', '', '', '', '', '', '', 'sı̄we', 'سِيوٖ', 'sı̄we');
INSERT INTO maisha_mume_words VALUES (2783, 235, 'd', 2, 'نْيُومَ', 'nyūma', 'nyuma', '', '', '', '', '', '', 'nyūma', 'نْيُومَ', 'nyūma');
INSERT INTO maisha_mume_words VALUES (2784, 235, 'd', 3, 'تَرٖجٖيَ', 'ṯarejeya', 'tarejeya', '', '', '', '', '', '', 'ṯarejeya', 'تَرٖجٖيَ', 'ṯarejeya');
INSERT INTO maisha_mume_words VALUES (2805, 238, 'a', 2, 'إِكُكُوسٖ', 'ikukūse', 'ikukuse', '', '', '', '', '', '', 'ikukūse', 'إِكُكُوسٖ', 'ikukūse');
INSERT INTO maisha_mume_words VALUES (2785, 236, 'a', 1, 'إِپِينْدٖ', 'ipı̄nḏe', 'ipinde', '', '', '', '', '', '', 'ipı̄nḏe', 'إِپِينْدٖ', 'ipı̄nḏe');
INSERT INTO maisha_mume_words VALUES (2786, 236, 'a', 2, 'إِپِينْدٖ', 'ipı̄nḏe', 'ipinde', '', '', '', '', '', '', 'ipı̄nḏe', 'إِپِينْدٖ', 'ipı̄nḏe');
INSERT INTO maisha_mume_words VALUES (2787, 236, 'a', 3, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (2788, 236, 'b', 1, 'سِبَدِيلِ', 'sibaḏı̄li', 'sibadili', '', '', '', '', '', '', 'sibaḏı̄li', 'سِبَدِيلِ', 'sibaḏı̄li');
INSERT INTO maisha_mume_words VALUES (2789, 236, 'b', 2, 'لَاكٗ', 'lāko', 'lako', '', '', '', '', '', '', 'lāko', 'لَاكٗ', 'lāko');
INSERT INTO maisha_mume_words VALUES (2790, 236, 'b', 3, 'نٖينٗ', 'nēno', 'neno', '', '', '', '', '', '', 'nēno', 'نٖينٗ', 'nēno');
INSERT INTO maisha_mume_words VALUES (2806, 238, 'b', 1, 'مْپَاكَ', 'mpāka', 'mpaka', '', '', '', '', '', '', 'mpāka', 'مْپَاكَ', 'mpāka');
INSERT INTO maisha_mume_words VALUES (2807, 238, 'b', 2, 'مَهَابَ', 'mahāba', 'mahaba', '', '', '', '', '', '', 'mahāba', 'مَهَابَ', 'mahāba');
INSERT INTO maisha_mume_words VALUES (2791, 236, 'c', 1, 'مْوِيسٗ', 'mwı̄so', 'mwiso', '', '', '', '', '', '', 'mwı̄so', 'مْوِيسٗ', 'mwı̄so');
INSERT INTO maisha_mume_words VALUES (2792, 236, 'c', 2, 'تَپَاتَ', 'ṯapāṯa', 'tapata', '', '', '', '', '', '', 'ṯapāṯa', 'تَپَاتَ', 'ṯapāṯa');
INSERT INTO maisha_mume_words VALUES (2793, 236, 'c', 3, 'أُسٗونٗ', 'usōno', 'usono', '', '', '', '', '', '', 'usōno', 'أُسٗونٗ', 'usōno');
INSERT INTO maisha_mume_words VALUES (2808, 238, 'b', 3, 'يٖيسٖ', 'yēse', 'yese', '', '', '', '', '', '', 'yēse', 'يٖيسٖ', 'yēse');
INSERT INTO maisha_mume_words VALUES (2794, 236, 'd', 1, 'يَتَتٗوكَ', 'yaṯaṯōka', 'yatatoka', '', '', '', '', '', '', 'yaṯaṯōka', 'يَتَتٗوكَ', 'yaṯaṯōka');
INSERT INTO maisha_mume_words VALUES (2795, 236, 'd', 2, 'مَزٗوٖيَ', 'mazoweya', 'mazoweya', '', '', '', '', '', '', 'mazoweya', 'مَزٗوٖيَ', 'mazoweya');
INSERT INTO maisha_mume_words VALUES (2796, 237, 'a', 1, 'أُتَسُكِكَسُكِيكَ', 'uṯasukikasukı̄ka', 'utasukikasukika', '', '', '', '', '', '', 'uṯasukikasukı̄ka', 'أُتَسُكِكَسُكِيكَ', 'uṯasukikasukı̄ka');
INSERT INTO maisha_mume_words VALUES (2836, 241, 'b', 1, 'وَكَفَانْيَ', 'wakafānya', 'wakafanya', '', '', '', '', '', '', 'wakafānya', 'وَكَفَانْيَ', 'wakafānya');
INSERT INTO maisha_mume_words VALUES (2809, 238, 'c', 1, 'پٖنْيٖينْيٖ', 'penyēnye', 'penyenye', '', '', '', '', '', '', 'penyēnye', 'پٖنْيٖينْيٖ', 'penyēnye');
INSERT INTO maisha_mume_words VALUES (2797, 237, 'b', 1, 'كِيوَ', 'kı̄wa', 'kiwa', '', '', '', '', '', '', 'kı̄wa', 'كِيوَ', 'kı̄wa');
INSERT INTO maisha_mume_words VALUES (2798, 237, 'b', 2, 'مٗويٗ', 'mōyo', 'moyo', '', '', '', '', '', '', 'mōyo', 'مٗويٗ', 'mōyo');
INSERT INTO maisha_mume_words VALUES (2799, 237, 'b', 3, 'وَمْتَاكَ', 'wamṯāka', 'wamtaka', '', '', '', '', '', '', 'wamṯāka', 'وَمْتَاكَ', 'wamṯāka');
INSERT INTO maisha_mume_words VALUES (2810, 238, 'c', 2, 'أُسِيَپِيسٖ', 'usiyapı̄se', 'usiyapise', '', '', '', '', '', '', 'usiyapı̄se', 'أُسِيَپِيسٖ', 'usiyapı̄se');
INSERT INTO maisha_mume_words VALUES (2821, 239, 'd', 2, 'إِزَرَانِ', 'izarāni', 'izarani', '', '', '', '', '', '', 'izarāni', 'إِزَرَانِ', 'izarāni');
INSERT INTO maisha_mume_words VALUES (2822, 239, 'd', 3, 'كُنْڠِيَ', 'kungiya', 'kungiya', '', '', '', '', '', '', 'kungiya', 'كُنْڠِيَ', 'kungiya');
INSERT INTO maisha_mume_words VALUES (2811, 238, 'd', 1, 'مٗيٗونِ', 'moyōni', 'moyoni', '', '', '', '', '', '', 'moyōni', 'مٗيٗونِ', 'moyōni');
INSERT INTO maisha_mume_words VALUES (2812, 238, 'd', 2, 'كَكُرُدِيَ', 'kakuruḏiya', 'kakurudiya', '', '', '', '', '', '', 'kakuruḏiya', 'كَكُرُدِيَ', 'kakuruḏiya');
INSERT INTO maisha_mume_words VALUES (2813, 239, 'a', 1, 'مْوِسٗوٖ', 'mwisowe', 'mwisowe', '', '', '', '', '', '', 'mwisowe', 'مْوِسٗوٖ', 'mwisowe');
INSERT INTO maisha_mume_words VALUES (2814, 239, 'a', 2, 'يَتَؤٗنْدٗوكَ', 'yaṯaonḏōka', 'yataondoka', '', '', '', '', '', '', 'yaṯaonḏōka', 'يَتَؤٗنْدٗوكَ', 'yaṯaonḏōka');
INSERT INTO maisha_mume_words VALUES (2837, 241, 'b', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2831, 240, 'd', 1, 'مَاوِ', 'māwi', 'mawi', '', '', '', '', '', '', 'māwi', 'مَاوِ', 'māwi');
INSERT INTO maisha_mume_words VALUES (2823, 240, 'a', 1, 'لَكِينِ', 'lakı̄ni', 'lakini', '', '', '', '', '', '', 'lakı̄ni', 'لَكِينِ', 'lakı̄ni');
INSERT INTO maisha_mume_words VALUES (2815, 239, 'b', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2816, 239, 'b', 2, 'وٖيوٖ', 'wēwe', 'wewe', '', '', '', '', '', '', 'wēwe', 'وٖيوٖ', 'wēwe');
INSERT INTO maisha_mume_words VALUES (2817, 239, 'b', 3, 'أُتَأَفِيكَ', 'uṯaafı̄ka', 'utaafika', '', '', '', '', '', '', 'uṯaafı̄ka', 'أُتَأَفِيكَ', 'uṯaafı̄ka');
INSERT INTO maisha_mume_words VALUES (2824, 240, 'a', 2, 'نَكُكُمْبُوشَ', 'nakukumbūsha', 'nakukumbusha', '', '', '', '', '', '', 'nakukumbūsha', 'نَكُكُمْبُوشَ', 'nakukumbūsha');
INSERT INTO maisha_mume_words VALUES (2832, 240, 'd', 2, 'وَكَمزُلِيَ', 'wakamzuliya', 'wakamzuliya', '', '', '', '', '', '', 'wakamzuliya', 'وَكَمزُلِيَ', 'wakamzuliya');
INSERT INTO maisha_mume_words VALUES (2825, 240, 'b', 1, 'كِيسوَ', 'kı̄swa', 'kiswa', '', '', '', '', '', '', 'kı̄swa', 'كِيسوَ', 'kı̄swa');
INSERT INTO maisha_mume_words VALUES (2826, 240, 'b', 2, 'چَ', 'cha', 'cha', '', '', '', '', '', '', 'cha', 'چَ', 'cha');
INSERT INTO maisha_mume_words VALUES (2827, 240, 'b', 3, 'نَانَ', 'nāna', 'nana', '', '', '', '', '', '', 'nāna', 'نَانَ', 'nāna');
INSERT INTO maisha_mume_words VALUES (2828, 240, 'b', 4, 'أَئِيشَ', 'aı̄sha', 'aisha', '', '', '', '', '', '', 'aı̄sha', 'أَئِيشَ', 'aı̄sha');
INSERT INTO maisha_mume_words VALUES (2838, 241, 'b', 3, 'مَڠٖينْڠِ', 'magēngi', 'magengi', '', '', '', '', '', '', 'magēngi', 'مَڠٖينْڠِ', 'magēngi');
INSERT INTO maisha_mume_words VALUES (2833, 241, 'a', 1, 'وَلِؤٗنٖينَ', 'walionēna', 'walionena', '', '', '', '', '', '', 'walionēna', 'وَلِؤٗنٖينَ', 'walionēna');
INSERT INTO maisha_mume_words VALUES (2834, 241, 'a', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2835, 241, 'a', 3, 'وٖينْڠِ', 'wēngi', 'wengi', '', '', '', '', '', '', 'wēngi', 'وٖينْڠِ', 'wēngi');
INSERT INTO maisha_mume_words VALUES (2850, 242, 'b', 2, 'مْكٖ', 'mke', 'mke', '', '', '', '', '', '', 'mke', 'مْكٖ', 'mke');
INSERT INTO maisha_mume_words VALUES (2851, 242, 'b', 3, 'وَاكٖ', 'wāke', 'wake', '', '', '', '', '', '', 'wāke', 'وَاكٖ', 'wāke');
INSERT INTO maisha_mume_words VALUES (2843, 241, 'd', 1, 'مَدِينَ', 'maḏı̄na', 'madina', '', '', '', '', '', '', 'maḏı̄na', 'مَدِينَ', 'maḏı̄na');
INSERT INTO maisha_mume_words VALUES (2844, 241, 'd', 2, 'زِكَئِنٖيَ', 'zikaineya', 'zikaineya', '', '', '', '', '', '', 'zikaineya', 'زِكَئِنٖيَ', 'zikaineya');
INSERT INTO maisha_mume_words VALUES (2839, 241, 'c', 1, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2840, 241, 'c', 2, 'زِكَاءٗ', 'zikāo', 'zikao', '', '', '', '', '', '', 'zikāo', 'زِكَاءٗ', 'zikāo');
INSERT INTO maisha_mume_words VALUES (2841, 241, 'c', 3, 'زَ', 'za', 'za', '', '', '', '', '', '', 'za', 'زَ', 'za');
INSERT INTO maisha_mume_words VALUES (2842, 241, 'c', 4, 'مِتِينْڠِ', 'miṯı̄ngi', 'mitingi', '', '', '', '', '', '', 'miṯı̄ngi', 'مِتِينْڠِ', 'miṯı̄ngi');
INSERT INTO maisha_mume_words VALUES (2852, 242, 'b', 4, 'رَسُولِ', 'rasūli', 'rasuli', '', '', '', '', '', '', 'rasūli', 'رَسُولِ', 'rasūli');
INSERT INTO maisha_mume_words VALUES (2854, 242, 'c', 2, 'هَلِكُوَ', 'halikuwa', 'halikuwa', '', '', '', '', '', '', 'halikuwa', 'هَلِكُوَ', 'halikuwa');
INSERT INTO maisha_mume_words VALUES (2845, 242, 'a', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2846, 242, 'a', 2, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (2847, 242, 'a', 3, 'لِيسٗ', 'lı̄so', 'liso', '', '', '', '', '', '', 'lı̄so', 'لِيسٗ', 'lı̄so');
INSERT INTO maisha_mume_words VALUES (2848, 242, 'a', 4, 'أَسِيلِ', 'ası̄li', 'asili', '', '', '', '', '', '', 'ası̄li', 'أَسِيلِ', 'ası̄li');
INSERT INTO maisha_mume_words VALUES (2849, 242, 'b', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2855, 242, 'c', 3, 'كْوٖيلِ', 'kwēli', 'kweli', '', '', '', '', '', '', 'kwēli', 'كْوٖيلِ', 'kwēli');
INSERT INTO maisha_mume_words VALUES (2857, 242, 'd', 2, 'أُڤُومِ', 'uvūmi', 'uvumi', '', '', '', '', '', '', 'uvūmi', 'أُڤُومِ', 'uvūmi');
INSERT INTO maisha_mume_words VALUES (2853, 242, 'c', 1, 'كَاتُ', 'kāṯu', 'katu', '', '', '', '', '', '', 'kāṯu', 'كَاتُ', 'kāṯu');
INSERT INTO maisha_mume_words VALUES (2858, 242, 'd', 3, 'وَلِتِيَ', 'waliṯiya', 'walitiya', '', '', '', '', '', '', 'waliṯiya', 'وَلِتِيَ', 'waliṯiya');
INSERT INTO maisha_mume_words VALUES (2856, 242, 'd', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2859, 243, 'a', 1, 'مْوَنْڠَلِيٖ', 'mwangaliye', 'mwangaliye', '', '', '', '', '', '', 'mwangaliye', 'مْوَنْڠَلِيٖ', 'mwangaliye');
INSERT INTO maisha_mume_words VALUES (2860, 243, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2861, 243, 'a', 3, 'مْتُومِ', 'mṯūmi', 'mtumi', '', '', '', '', '', '', 'mṯūmi', 'مْتُومِ', 'mṯūmi');
INSERT INTO maisha_mume_words VALUES (2862, 243, 'b', 1, 'أَلِكُوَ', 'alikuwa', 'alikuwa', '', '', '', '', '', '', 'alikuwa', 'أَلِكُوَ', 'alikuwa');
INSERT INTO maisha_mume_words VALUES (2863, 243, 'b', 2, 'هَأَتَامِ', 'haaṯāmi', 'haatami', '', '', '', '', '', '', 'haaṯāmi', 'هَأَتَامِ', 'haaṯāmi');
INSERT INTO maisha_mume_words VALUES (2891, 245, 'd', 1, 'بِيلَ', 'bı̄la', 'bila', '', '', '', '', '', '', 'bı̄la', 'بِيلَ', 'bı̄la');
INSERT INTO maisha_mume_words VALUES (2892, 245, 'd', 2, 'سَبَابُ', 'sabābu', 'sababu', '', '', '', '', '', '', 'sabābu', 'سَبَابُ', 'sabābu');
INSERT INTO maisha_mume_words VALUES (2864, 243, 'c', 1, 'أَلِزِوِيَ', 'aliziwiya', 'aliziwiya', '', '', '', '', '', '', 'aliziwiya', 'أَلِزِوِيَ', 'aliziwiya');
INSERT INTO maisha_mume_words VALUES (2865, 243, 'c', 2, 'أُلِيمِ', 'ulı̄mi', 'ulimi', '', '', '', '', '', '', 'ulı̄mi', 'أُلِيمِ', 'ulı̄mi');
INSERT INTO maisha_mume_words VALUES (2893, 245, 'd', 3, 'كُتَايَ', 'kuṯāya', 'kutaya', '', '', '', '', '', '', 'kuṯāya', 'كُتَايَ', 'kuṯāya');
INSERT INTO maisha_mume_words VALUES (2866, 243, 'd', 1, 'مْپَاكَ', 'mpāka', 'mpaka', '', '', '', '', '', '', 'mpāka', 'مْپَاكَ', 'mpāka');
INSERT INTO maisha_mume_words VALUES (2867, 243, 'd', 2, 'وَهَايِ', 'wahāyi', 'wahayi', '', '', '', '', '', '', 'wahāyi', 'وَهَايِ', 'wahāyi');
INSERT INTO maisha_mume_words VALUES (2868, 243, 'd', 3, 'كُويَ', 'kūya', 'kuya', '', '', '', '', '', '', 'kūya', 'كُويَ', 'kūya');
INSERT INTO maisha_mume_words VALUES (2930, 249, 'a', 4, 'كِتَابُ', 'kiṯābu', 'kitabu', '', '', '', '', '', '', 'kiṯābu', 'كِتَابُ', 'kiṯābu');
INSERT INTO maisha_mume_words VALUES (2869, 244, 'a', 1, 'يَتَاكَ', 'yaṯāka', 'yataka', '', '', '', '', '', '', 'yaṯāka', 'يَتَاكَ', 'yaṯāka');
INSERT INTO maisha_mume_words VALUES (2870, 244, 'a', 2, 'مْنٗ', 'mno', 'mno', '', '', '', '', '', '', 'mno', 'مْنٗ', 'mno');
INSERT INTO maisha_mume_words VALUES (2871, 244, 'a', 3, 'هَذَارِ', 'hadhāri', 'hadhari', '', '', '', '', '', '', 'hadhāri', 'هَذَارِ', 'hadhāri');
INSERT INTO maisha_mume_words VALUES (2894, 246, 'a', 1, 'هَاپَ', 'hāpa', 'hapa', '', '', '', '', '', '', 'hāpa', 'هَاپَ', 'hāpa');
INSERT INTO maisha_mume_words VALUES (2895, 246, 'a', 2, 'سَاسَ', 'sāsa', 'sasa', '', '', '', '', '', '', 'sāsa', 'سَاسَ', 'sāsa');
INSERT INTO maisha_mume_words VALUES (2872, 244, 'b', 1, 'كَتِيكَ', 'kaṯı̄ka', 'katika', '', '', '', '', '', '', 'kaṯı̄ka', 'كَتِيكَ', 'kaṯı̄ka');
INSERT INTO maisha_mume_words VALUES (2873, 244, 'b', 2, 'هِيزٗ', 'hı̄zo', 'hizo', '', '', '', '', '', '', 'hı̄zo', 'هِيزٗ', 'hı̄zo');
INSERT INTO maisha_mume_words VALUES (2874, 244, 'b', 3, 'خَبَارِ', 'ẖabāri', 'habari', '', '', '', '', '', '', 'ẖabāri', 'خَبَارِ', 'ẖabāri');
INSERT INTO maisha_mume_words VALUES (2896, 246, 'a', 3, 'نِتَكٗومَ', 'niṯakōma', 'nitakoma', '', '', '', '', '', '', 'niṯakōma', 'نِتَكٗومَ', 'niṯakōma');
INSERT INTO maisha_mume_words VALUES (2875, 244, 'c', 1, 'سِيوٖ', 'sı̄we', 'siwe', '', '', '', '', '', '', 'sı̄we', 'سِيوٖ', 'sı̄we');
INSERT INTO maisha_mume_words VALUES (2876, 244, 'c', 2, 'مْپٖيسِ', 'mpēsi', 'mpesi', '', '', '', '', '', '', 'mpēsi', 'مْپٖيسِ', 'mpēsi');
INSERT INTO maisha_mume_words VALUES (2877, 244, 'c', 3, 'كُكِيرِ', 'kukı̄ri', 'kukiri', '', '', '', '', '', '', 'kukı̄ri', 'كُكِيرِ', 'kukı̄ri');
INSERT INTO maisha_mume_words VALUES (2923, 248, 'c', 1, 'وٖينْڠِ', 'wēngi', 'wengi', '', '', '', '', '', '', 'wēngi', 'وٖينْڠِ', 'wēngi');
INSERT INTO maisha_mume_words VALUES (2878, 244, 'd', 1, 'يَامْبٗ', 'yāmbo', 'yambo', '', '', '', '', '', '', 'yāmbo', 'يَامْبٗ', 'yāmbo');
INSERT INTO maisha_mume_words VALUES (2879, 244, 'd', 2, 'أُكِلِسِكِيَ', 'ukilisikiya', 'ukilisikiya', '', '', '', '', '', '', 'ukilisikiya', 'أُكِلِسِكِيَ', 'ukilisikiya');
INSERT INTO maisha_mume_words VALUES (2912, 247, 'c', 2, 'كُئٖنٖيزَ', 'kuenēza', 'kueneza', '', '', '', '', '', '', 'kuenēza', 'كُئٖنٖيزَ', 'kuenēza');
INSERT INTO maisha_mume_words VALUES (2897, 246, 'b', 1, 'وَالَ', 'wāla', 'wala', '', '', '', '', '', '', 'wāla', 'وَالَ', 'wāla');
INSERT INTO maisha_mume_words VALUES (2880, 245, 'a', 1, 'تَفِيتِ', 'ṯafı̄ṯi', 'tafiti', '', '', '', '', '', '', 'ṯafı̄ṯi', 'تَفِيتِ', 'ṯafı̄ṯi');
INSERT INTO maisha_mume_words VALUES (2881, 245, 'a', 2, 'تَفِيتِ', 'ṯafı̄ṯi', 'tafiti', '', '', '', '', '', '', 'ṯafı̄ṯi', 'تَفِيتِ', 'ṯafı̄ṯi');
INSERT INTO maisha_mume_words VALUES (2882, 245, 'a', 3, 'سَانَ', 'sāna', 'sana', '', '', '', '', '', '', 'sāna', 'سَانَ', 'sāna');
INSERT INTO maisha_mume_words VALUES (2898, 246, 'b', 2, 'يٗوتٖ', 'yōṯe', 'yote', '', '', '', '', '', '', 'yōṯe', 'يٗوتٖ', 'yōṯe');
INSERT INTO maisha_mume_words VALUES (2899, 246, 'b', 3, 'سِكُسٖيمَ', 'sikusēma', 'sikusema', '', '', '', '', '', '', 'sikusēma', 'سِكُسٖيمَ', 'sikusēma');
INSERT INTO maisha_mume_words VALUES (2883, 245, 'b', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', '', '', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO maisha_mume_words VALUES (2884, 245, 'b', 2, 'شَاكَ', 'shāka', 'shaka', '', '', '', '', '', '', 'shāka', 'شَاكَ', 'shāka');
INSERT INTO maisha_mume_words VALUES (2885, 245, 'b', 3, 'أُوٖ', 'uwe', 'uwe', '', '', '', '', '', '', 'uwe', 'أُوٖ', 'uwe');
INSERT INTO maisha_mume_words VALUES (2886, 245, 'b', 4, 'هُونَ', 'hūna', 'huna', '', '', '', '', '', '', 'hūna', 'هُونَ', 'hūna');
INSERT INTO maisha_mume_words VALUES (2913, 247, 'c', 3, 'خَبَارِ', 'ẖabāri', 'habari', '', '', '', '', '', '', 'ẖabāri', 'خَبَارِ', 'ẖabāri');
INSERT INTO maisha_mume_words VALUES (2900, 246, 'c', 1, 'لَكِينِ', 'lakı̄ni', 'lakini', '', '', '', '', '', '', 'lakı̄ni', 'لَكِينِ', 'lakı̄ni');
INSERT INTO maisha_mume_words VALUES (2901, 246, 'c', 2, 'أُكِئَنْدَامَ', 'ukianḏāma', 'ukiandama', '', '', '', '', '', '', 'ukianḏāma', 'أُكِئَنْدَامَ', 'ukianḏāma');
INSERT INTO maisha_mume_words VALUES (2887, 245, 'c', 1, 'نْدِيپٗ', 'nḏı̄po', 'ndipo', '', '', '', '', '', '', 'nḏı̄po', 'نْدِيپٗ', 'nḏı̄po');
INSERT INTO maisha_mume_words VALUES (2888, 245, 'c', 2, 'هَاپٗ', 'hāpo', 'hapo', '', '', '', '', '', '', 'hāpo', 'هَاپٗ', 'hāpo');
INSERT INTO maisha_mume_words VALUES (2889, 245, 'c', 3, 'لَاكٗ', 'lāko', 'lako', '', '', '', '', '', '', 'lāko', 'لَاكٗ', 'lāko');
INSERT INTO maisha_mume_words VALUES (2890, 245, 'c', 4, 'نٖينَ', 'nēna', 'nena', '', '', '', '', '', '', 'nēna', 'نٖينَ', 'nēna');
INSERT INTO maisha_mume_words VALUES (2902, 246, 'd', 1, 'هَايَ', 'hāya', 'haya', '', '', '', '', '', '', 'hāya', 'هَايَ', 'hāya');
INSERT INTO maisha_mume_words VALUES (2903, 246, 'd', 2, 'تَكُسَئِدِيَ', 'ṯakusaiḏiya', 'takusaidiya', '', '', '', '', '', '', 'ṯakusaiḏiya', 'تَكُسَئِدِيَ', 'ṯakusaiḏiya');
INSERT INTO maisha_mume_words VALUES (2924, 248, 'c', 2, 'وَكَپُلِكِيزَ', 'wakapulikı̄za', 'wakapulikiza', '', '', '', '', '', '', 'wakapulikı̄za', 'وَكَپُلِكِيزَ', 'wakapulikı̄za');
INSERT INTO maisha_mume_words VALUES (2914, 247, 'd', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2904, 247, 'a', 1, 'نِيَ', 'niya', 'niya', '', '', '', '', '', '', 'niya', 'نِيَ', 'niya');
INSERT INTO maisha_mume_words VALUES (2905, 247, 'a', 2, 'نَ', 'na', 'na', '', '', '', '', '', '', 'na', 'نَ', 'na');
INSERT INTO maisha_mume_words VALUES (2906, 247, 'a', 3, 'يَانْڠُ', 'yāngu', 'yangu', '', '', '', '', '', '', 'yāngu', 'يَانْڠُ', 'yāngu');
INSERT INTO maisha_mume_words VALUES (2907, 247, 'a', 4, 'ذَمِيرِ', 'dhamı̄ri', 'dhamiri', '', '', '', '', '', '', 'dhamı̄ri', 'ذَمِيرِ', 'dhamı̄ri');
INSERT INTO maisha_mume_words VALUES (2915, 247, 'd', 2, 'وٖينْيٖ', 'wēnye', 'wenye', '', '', '', '', '', '', 'wēnye', 'وٖينْيٖ', 'wēnye');
INSERT INTO maisha_mume_words VALUES (2916, 247, 'd', 3, 'كُيَسِكِيَ', 'kuyasikiya', 'kuyasikiya', '', '', '', '', '', '', 'kuyasikiya', 'كُيَسِكِيَ', 'kuyasikiya');
INSERT INTO maisha_mume_words VALUES (2908, 247, 'b', 1, 'كْوَنْدِيكَ', 'kwanḏı̄ka', 'kwandika', '', '', '', '', '', '', 'kwanḏı̄ka', 'كْوَنْدِيكَ', 'kwanḏı̄ka');
INSERT INTO maisha_mume_words VALUES (2909, 247, 'b', 2, 'كْوَ', 'kwa', 'kwa', '', '', '', '', '', '', 'kwa', 'كْوَ', 'kwa');
INSERT INTO maisha_mume_words VALUES (2925, 248, 'd', 1, 'وَكَسِكِيزَ', 'wakasikı̄za', 'wakasikiza', '', '', '', '', '', '', 'wakasikı̄za', 'وَكَسِكِيزَ', 'wakasikı̄za');
INSERT INTO maisha_mume_words VALUES (2926, 248, 'd', 2, 'پَمٗويَ', 'pamōya', 'pamoya', '', '', '', '', '', '', 'pamōya', 'پَمٗويَ', 'pamōya');
INSERT INTO maisha_mume_words VALUES (2917, 248, 'a', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2918, 248, 'a', 2, 'سَهَالِ', 'sahāli', 'sahali', '', '', '', '', '', '', 'sahāli', 'سَهَالِ', 'sahāli');
INSERT INTO maisha_mume_words VALUES (2919, 248, 'a', 3, 'كُسِكِيزَ', 'kusikı̄za', 'kusikiza', '', '', '', '', '', '', 'kusikı̄za', 'كُسِكِيزَ', 'kusikı̄za');
INSERT INTO maisha_mume_words VALUES (2920, 248, 'b', 1, 'كَسٖيتِ', 'kasēṯi', 'kaseti', '', '', '', '', '', '', 'kasēṯi', 'كَسٖيتِ', 'kasēṯi');
INSERT INTO maisha_mume_words VALUES (2921, 248, 'b', 2, 'مٗويَ', 'mōya', 'moya', '', '', '', '', '', '', 'mōya', 'مٗويَ', 'mōya');
INSERT INTO maisha_mume_words VALUES (2922, 248, 'b', 3, 'هُوٖيزَ', 'huwēza', 'huweza', '', '', '', '', '', '', 'huwēza', 'هُوٖيزَ', 'huwēza');
INSERT INTO maisha_mume_words VALUES (2937, 249, 'd', 1, 'كُسِكِيزَ', 'kusikı̄za', 'kusikiza', '', '', '', '', '', '', 'kusikı̄za', 'كُسِكِيزَ', 'kusikı̄za');
INSERT INTO maisha_mume_words VALUES (2934, 249, 'c', 1, 'وٖينْڠِ', 'wēngi', 'wengi', '', '', '', '', '', '', 'wēngi', 'وٖينْڠِ', 'wēngi');
INSERT INTO maisha_mume_words VALUES (2935, 249, 'c', 2, 'هُؤٗونَ', 'huōna', 'huona', '', '', '', '', '', '', 'huōna', 'هُؤٗونَ', 'huōna');
INSERT INTO maisha_mume_words VALUES (2936, 249, 'c', 3, 'تَأَبُ', 'ṯaabu', 'taabu', '', '', '', '', '', '', 'ṯaabu', 'تَأَبُ', 'ṯaabu');
INSERT INTO maisha_mume_words VALUES (2928, 249, 'a', 2, 'كَامَ', 'kāma', 'kama', '', '', '', '', '', '', 'kāma', 'كَامَ', 'kāma');
INSERT INTO maisha_mume_words VALUES (2929, 249, 'a', 3, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2931, 249, 'b', 1, 'وَسٗمَاجِ', 'wasomāji', 'wasomaji', '', '', '', '', '', '', 'wasomāji', 'وَسٗمَاجِ', 'wasomāji');
INSERT INTO maisha_mume_words VALUES (2932, 249, 'b', 2, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2933, 249, 'b', 3, 'هُبُوبُ', 'hubūbu', 'hububu', '', '', '', '', '', '', 'hubūbu', 'هُبُوبُ', 'hubūbu');
INSERT INTO maisha_mume_words VALUES (2938, 249, 'd', 2, 'مٖزٗوٖيَ', 'mezoweya', 'mezoweya', '', '', '', '', '', '', 'mezoweya', 'مٖزٗوٖيَ', 'mezoweya');
INSERT INTO maisha_mume_words VALUES (2943, 250, 'b', 2, 'زٖينُ', 'zēnu', 'zenu', '', '', '', '', '', '', 'zēnu', 'زٖينُ', 'zēnu');
INSERT INTO maisha_mume_words VALUES (2944, 250, 'b', 3, 'هِيزِ', 'hı̄zi', 'hizi', '', '', '', '', '', '', 'hı̄zi', 'هِيزِ', 'hı̄zi');
INSERT INTO maisha_mume_words VALUES (2940, 250, 'a', 2, 'يَانْڠُ', 'yāngu', 'yangu', '', '', '', '', '', '', 'yāngu', 'يَانْڠُ', 'yāngu');
INSERT INTO maisha_mume_words VALUES (2939, 250, 'a', 1, 'كَؤُولِ', 'kaūli', 'kauli', '', '', '', '', '', '', 'kaūli', 'كَؤُولِ', 'kaūli');
INSERT INTO maisha_mume_words VALUES (2941, 250, 'a', 3, 'تَمَاتِ', 'ṯamāṯi', 'tamati', '', '', '', '', '', '', 'ṯamāṯi', 'تَمَاتِ', 'ṯamāṯi');
INSERT INTO maisha_mume_words VALUES (2945, 250, 'b', 4, 'بَئِيتِ', 'baı̄ṯi', 'baiti', '', '', '', '', '', '', 'baı̄ṯi', 'بَئِيتِ', 'baı̄ṯi');
INSERT INTO maisha_mume_words VALUES (2947, 250, 'c', 2, 'مَبَنَاتِ', 'mabanāṯi', 'mabanati', '', '', '', '', '', '', 'mabanāṯi', 'مَبَنَاتِ', 'mabanāṯi');
INSERT INTO maisha_mume_words VALUES (2942, 250, 'b', 1, 'نِ', 'ni', 'ni', '', '', '', '', '', '', 'ni', 'نِ', 'ni');
INSERT INTO maisha_mume_words VALUES (2949, 250, 'd', 2, 'نَوَكُسُدِيَ', 'nawakusuḏiya', 'nawakusudiya', '', '', '', '', '', '', 'nawakusuḏiya', 'نَوَكُسُدِيَ', 'nawakusuḏiya');
INSERT INTO maisha_mume_words VALUES (2946, 250, 'c', 1, 'وَڤُلَانَ', 'wavulāna', 'wavulana', '', '', '', '', '', '', 'wavulāna', 'وَڤُلَانَ', 'wavulāna');
INSERT INTO maisha_mume_words VALUES (2948, 250, 'd', 1, 'نْيٗوتٖ', 'nyōṯe', 'nyote', '', '', '', '', '', '', 'nyōṯe', 'نْيٗوتٖ', 'nyōṯe');


--
-- Name: maisha_mume_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('maisha_mume_words_word_id_seq', 2949, true);


--
-- Name: maisha_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('maisha_poemline_id_seq', 1, false);


--
-- Data for Name: mykiswahili_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO mykiswahili_words VALUES (342, 15, 'g', 2, 'تٖكٖنْدِيَانَ', 'ṯekenḏiyāna', 'tekendiani', 'ṯeke nḏiyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (66, 3, 'e', 3, 'سِيَاسَ', 'siyāsa', 'siyasa', 'wanasiyāsa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (102, 4, 'h', 2, 'كَوَا', 'kawā', 'kawaa', 'wakawā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (113, 5, 'd', 1, 'نِ', 'ni', 'ni', '~', '', '', '', 'my dear friend, ');
INSERT INTO mykiswahili_words VALUES (114, 5, 'd', 2, 'كْوَامْبِيَاءٗ', 'kwāmbiyao', 'kwambiyao', 'nikwāmbiyao', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (134, 6, 'b', 3, 'ػِرَاڠُ', 'kʲirāgu', 'Chiraghu', '~', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (135, 6, 'b', 4, 'دِنِ', 'ḏini', 'dini', 'kʲirāguḏini', '', 'Shihabdin Chiraghdin (1934-1976). See the biography by his daughter Latifa Chiraghdin which came out in 2012.', '', '');
INSERT INTO mykiswahili_words VALUES (87, 4, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and many of his contemporaries,');
INSERT INTO mykiswahili_words VALUES (110, 5, 'c', 1, 'نْدِپُوْ', 'nḏipuu', 'ndipo', 'nḏipuu', '', '', '', 'and then you will understand,');
INSERT INTO mykiswahili_words VALUES (84, 4, 'c', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and of Zahidi too,');
INSERT INTO mykiswahili_words VALUES (122, 5, 'g', 1, 'وَالُوْزِتُنْڠَ', 'wālūziṯunga', 'walozitunga', 'wālūziṯunga', '', '', '', 'Who were those who composed them?');
INSERT INTO mykiswahili_words VALUES (95, 4, 'f', 1, 'وٗتٖ', 'woṯe', 'wote', 'woṯe', '', '', '', 'all from just one century,');
INSERT INTO mykiswahili_words VALUES (107, 5, 'b', 1, 'أُكِسٗوْمٖ', 'ukisōme', 'ukisome', 'ukisōme', '', '', '', 'Read it attentively');
INSERT INTO mykiswahili_words VALUES (116, 5, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'what I am telling you.');
INSERT INTO mykiswahili_words VALUES (119, 5, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'These verses are of enduring worth and will never die.');
INSERT INTO mykiswahili_words VALUES (125, 5, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'They were my children who have passed on. ');
INSERT INTO mykiswahili_words VALUES (128, 6, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And the Bard of Mambasa,');
INSERT INTO mykiswahili_words VALUES (167, 8, 'a', 1, 'هُلِيَ', 'huliya', 'huliya', 'huliya', '', '', '', 'I weep and lament');
INSERT INTO mykiswahili_words VALUES (223, 10, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that I do not see you all there.');
INSERT INTO mykiswahili_words VALUES (226, 10, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'I bite my fingers in frustration,');
INSERT INTO mykiswahili_words VALUES (234, 10, 'h', 1, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', 'You have abandoned your own mother. ');
INSERT INTO mykiswahili_words VALUES (249, 11, 'e', 1, 'نْدِوٗ', 'nḏiwo', 'ndiwo', 'nḏiwo', '', '', '', 'they are the ones who are ahead,');
INSERT INTO mykiswahili_words VALUES (123, 5, 'g', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (278, 12, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'You esteem me not at all,');
INSERT INTO mykiswahili_words VALUES (289, 13, 'd', 1, 'نَحَؤُ', 'naḥau', 'nahau', 'naḥau', '', '', '', 'while grammatical [Swahili] is what I desire!');
INSERT INTO mykiswahili_words VALUES (292, 13, 'e', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'Even [their speech] is wanting in flavour,');
INSERT INTO mykiswahili_words VALUES (296, 13, 'f', 1, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', 'like a plug of tobacco in one’s mouth.');
INSERT INTO mykiswahili_words VALUES (301, 13, 'h', 1, 'هُئِمْبَ', 'huimba', 'huimba', 'huimba', '', '', '', 'Are they singing? Are they complaining? ');
INSERT INTO mykiswahili_words VALUES (310, 14, 'c', 1, 'موَانَانْڠُ', 'mwānāngu', 'mwanangu', 'mwānāngu', '', '', '', 'it would be necessary, my child,');
INSERT INTO mykiswahili_words VALUES (312, 14, 'd', 1, 'كْوٖنٖنْدَ', 'kwenenḏa', 'kwenenda', 'kwenenḏa', '', '', '', 'for him to go to a court of law,');
INSERT INTO mykiswahili_words VALUES (322, 14, 'h', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'for the offence which you have committed against me. ');
INSERT INTO mykiswahili_words VALUES (98, 4, 'f', 4, 'قَرِنِ', 'qarini', 'karini', 'qarini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (100, 4, 'g', 2, 'مَاتُوْمبونِ', 'māṯūmbūni', 'matumboni', 'māṯūmbūni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (104, 4, 'h', 4, 'نْيوتَ', 'nı̄ūṯa', 'nyota', 'nı̄ūṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (140, 6, 'e', 1, 'نْنَابَهَانِ', 'nnābahāni', 'Nabahani', 'nnābahāni', '', 'In an unpublished commendation from 12 June 1974 J.W.T. Allen writes about Ahmad Sheikh Nabhany: ``I am privileged to have a wide circle of friends and acquaintances among Swahili scholars of Swahili. I have some knowledge of their rating of themselves and I can name perhaps half a dozen (still living) who are always referred to as the most learned. To me they are walking dictionaries and mines of information and Ahmed is unquestionably one of them. He comes of a family of scholars whose discipline is as tough as any degree course in the world. They have no time for false scholarship or dilettantism. That this profound learning is almost wholly disregarded by those who have been highly educated in the western tradition affects almost everything written today in or about Swahili. When I want to know some word or something about Swahili, I do not go to professors, but to one of the \textit{bingwa} known to me. One of these could give a much greater detail of assessment, but of course his opinion would not carry the weight of one who can put some totally irrelevant letters after his name''''. For a biography see Said (2012).
', '', 'al-Nabhany reproves,');
INSERT INTO mykiswahili_words VALUES (181, 8, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (392, 17, 'f', 1, 'اَلُوْنَانْدِكَ', 'alūnānḏika', 'alonandika', 'alūnānḏika', '', '', '', 'And who are they who wrote me down?');
INSERT INTO mykiswahili_words VALUES (421, 18, 'g', 4, 'سِنَانِ', 'sināni', 'shinani', 'sināni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (182, 8, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (163, 7, 'g', 1, 'مُسَمِيَاتِ', 'musamiyāṯi', 'musamiyati', 'musamiyāṯi', '', '', '', 'compiling standardized dictionaries.');
INSERT INTO mykiswahili_words VALUES (169, 8, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the learned journals,');
INSERT INTO mykiswahili_words VALUES (171, 8, 'c', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'for many of those who contribute ');
INSERT INTO mykiswahili_words VALUES (179, 8, 'f', 1, 'وَپٖكَ', 'wapeka', 'wapeka', 'wapeka', '', '', '', 'Who are the ones who send in their compositions? ');
INSERT INTO mykiswahili_words VALUES (183, 8, 'g', 1, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', 'Many do not come from the coast,');
INSERT INTO mykiswahili_words VALUES (332, 15, 'c', 2, 'لَكُوَكٖرَ', 'lakuwakera', 'lakuwakera', 'la kuwakera', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (186, 8, 'h', 1, 'لِػَ', 'likʲa', 'licha', 'likʲa', '', '', '', 'although they may have a Mambasa address.');
INSERT INTO mykiswahili_words VALUES (30, 2, 'b', 3, 'أُسْوَاحِلِنِ', 'uswāḥilini', 'Uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (91, 4, 'e', 1, 'عالى', '''ālı̄', 'Ali', '''ālı̄', '', '', '', 'Ali Koti and Mataka,');
INSERT INTO mykiswahili_words VALUES (99, 4, 'g', 1, 'وَلِتُوْكَ', 'waliṯūka', 'walitoka', 'waliṯūka', '', '', '', 'they emerged from my womb,');
INSERT INTO mykiswahili_words VALUES (147, 6, 'h', 1, 'اِنْڠَا', 'ingā', 'ingawa', 'ingā', '', '', '', 'yet he stays strong.');
INSERT INTO mykiswahili_words VALUES (157, 7, 'd', 1, 'مُمٖئِتٗوَ', 'mumeiṯowa', 'mumeitoa', 'mumeiṯowa', '', '', '', 'You have left me high and dry,');
INSERT INTO mykiswahili_words VALUES (159, 7, 'e', 1, 'وَنْڠِنٖ', 'wangine', 'wangine', 'wangine', '', '', '', 'now others have come forward');
INSERT INTO mykiswahili_words VALUES (161, 7, 'f', 1, 'كُنِپانْڠِيَ', 'kunipāngiya', 'kunipangia', 'kunipāngiya', '', '', '', 'to regulate me,');
INSERT INTO mykiswahili_words VALUES (177, 8, 'e', 1, 'اِذَاعَانِ', 'idhā''āni', 'idhaani', 'idhā''āni', '', '', '', 'It is much the same with the media. ');
INSERT INTO mykiswahili_words VALUES (193, 9, 'b', 1, 'زِسُوْمٖشْوَاءٗ', 'zisūmeshwao', 'zisomeshwao', 'zisūmeshwao', '', '', '', 'which are studied at our schools.');
INSERT INTO mykiswahili_words VALUES (197, 9, 'c', 3, 'رَجَبُ', 'rajabu', 'Rajabu', 'rajabu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (199, 9, 'd', 2, 'سُوْدِ', 'sūḏi', 'Sudi', 'sūḏi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (202, 9, 'd', 5, 'شَانِ', 'shāni', 'Shani', 'shāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (203, 9, 'e', 1, 'ْنْجُوْرٗڠٖ', 'njūroge', 'Njoroge', 'njūroge', '', '\textit{njoroge}: a name representing those who have their origins in the East African interior (the \textit{bara}).
', '', 'The author is Njoroge,');
INSERT INTO mykiswahili_words VALUES (265, 12, 'c', 1, 'وَسْوَاهِلِ', 'waswāhili', 'Waswahili', 'waswāhili', '', '', '', 'Swahili students are few');
INSERT INTO mykiswahili_words VALUES (275, 12, 'f', 2, 'مَاكُوْسَ', 'mākūsa', 'makosa', 'mākūsa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (283, 13, 'a', 2, 'هُنِيْنَ', 'hunı̄na', 'hunena', 'hunı̄na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (284, 13, 'b', 1, 'هُنِأٗنْڠُوْنْڠَ', 'huniongūnga', 'huniungonga', 'huniongūnga', '', '', '', 'I feel sick at heart.');
INSERT INTO mykiswahili_words VALUES (285, 13, 'b', 2, 'مُويُوْنِ', 'mūyūni', 'moyoni', 'mūyūni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (286, 13, 'c', 1, 'صَرْفَ', 'ṣarfa', 'sarufi', 'ṣarfa', '', '', '', 'Inflection is no longer employed,');
INSERT INTO mykiswahili_words VALUES (318, 14, 'f', 2, 'يَقِيْنِ', 'yaqı̄ni', 'yakini', 'yaqı̄ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (344, 15, 'h', 2, 'كُلَ', 'kula', 'kila', 'kula', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (339, 15, 'f', 1, 'هُتٖزٖوَ', 'huṯezewa', 'hutezewa', 'huṯezewa', '', '', '', 'in the play-ground,');
INSERT INTO mykiswahili_words VALUES (343, 15, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'by anyone who passes by in the street.');
INSERT INTO mykiswahili_words VALUES (105, 5, 'a', 1, 'اِنْكِشَافِ', 'inkishāfi', 'Inkishafi', 'inkishāfi', '', 'The {\FN{Inkishafi}}, according to W.E. Taylor Stigand (1915: 96-105) is ``a great, if not the greatest, religious classic of [the Swahili-speaking peoples]''''. The poem, concerned with the decay of Pate (formerly a flourishing town in northern Swahililand), may remind some readers of Thomas Gray''s \textit{Elegy written in an English churchyard} (London 1751).
', '', 'Look at Inkishafi.');
INSERT INTO mykiswahili_words VALUES (164, 7, 'g', 2, 'كُبُوْنِ', 'kubūni', 'kubuni', 'kubūni', '', 'For almost a century the principal publisher of standardized Swahili dictionaries has been the Oxford University Press (OUP). Clearly OUP has to be profitable, and profitable is what, over the years, their dictionaries of standardized Swahili have been. However, if one considers excellence in research and scholarship not one of the
OUP’s standardized Swahili lexicons can begin to compare with the Oxford English Dictionary (`more than 600,000 words over a thousand years''). Fortunately for Swahili and for Swahili studies there exists the monumental \textit{Dictionnaire swahili-français} (Paris, 1939), compiled by Charles Sacleux. Sacleux’s chef d’oeuvre (`unprecedented
in historical depth, dialectological detail and philological knowledge'') can now be accessed electronically, courtesy of \textit{Swahili Forum} (\url{http://www.uni-leipzig.de/~afrika/swafo/index.php/sacleux}). Heartfelt thanks are due to Thilo Schadeberg and Ridder Samson.
', '', '');
INSERT INTO mykiswahili_words VALUES (252, 11, 'f', 1, 'وَلِيُوكُوْ', 'waliyūkuu', 'waliyoko', 'waliyūkuu', '', '', '', 'who are at the top;');
INSERT INTO mykiswahili_words VALUES (254, 11, 'g', 1, 'مُلُوْتُوْكَ', 'mulūṯūka', 'mulotoka', 'mulūṯūka', '', '', '', 'and you, students from the coast,');
INSERT INTO mykiswahili_words VALUES (257, 11, 'h', 1, 'مُكُوْ', 'mukuu', 'muko', 'mukuu', '', '', '', 'you lag far behind.');
INSERT INTO mykiswahili_words VALUES (174, 8, 'd', 1, 'سِوَنَانْڠُ', 'siwanāngu', 'siwanangu', 'si wanāngu', '', '', '', 'are not my children, they are strangers [to me].');
INSERT INTO mykiswahili_words VALUES (101, 4, 'h', 1, 'وَ', 'wa', 'wa', '~', '', '', '', 'and shone like stars.');
INSERT INTO mykiswahili_words VALUES (83, 4, 'b', 3, 'عَثْمَانِ', '''athmāni', 'Athumani', '''ath\In{u}māni', '', 'Mwengo Athmani: this 18th century poet from Pate composed the {\FN{Utendi wa Tambuka}} (\textit{The Epic of Heraklios}).', '', '');
INSERT INTO mykiswahili_words VALUES (2, 1, 'a', 2, 'نِ', 'ni', 'ni', '~', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (259, 11, 'h', 3, 'هُكُوْكُوْتَ', 'hukūkūṯa', 'hukokota', 'hukūkūṯa', '', 'Over the years young people on Lamu Island (and indeed elsewhere in northern Swahililand) have received a raw deal in their primary and secondary education. They have `lagged far behind'' their counterparts
from the interior, and so Mother Swahili grieves for her marginalised children.
', '', '');
INSERT INTO mykiswahili_words VALUES (3, 1, 'a', 3, 'مٖػوْكَ', 'mekʲūka', 'mechoka', 'nimekʲūka', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (280, 12, 'h', 1, 'مْڠِنٖ', 'mgine', 'mngine', 'mgine', '', '', '', 'yet you have not replaced me by another.');
INSERT INTO mykiswahili_words VALUES (319, 14, 'g', 1, 'نْيُوْتٖ', 'nyūṯe', 'nyote', 'nyūṯe', '', '', '', 'and all of you would go to prison');
INSERT INTO mykiswahili_words VALUES (349, 16, 'a', 3, 'اُشَعِرِ', 'usha''iri', 'ushairi', 'usha''iri', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (10, 1, 'd', 2, 'نَ', 'na', 'na', '~', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (11, 1, 'd', 3, 'تَمَانِ', 'ṯamāni', 'tamani', 'naṯamāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (350, 16, 'b', 1, 'وَاسُوْ', 'wāsuu', 'waso', 'wāsuu', '', '', '', 'those who are not mine have invented');
INSERT INTO mykiswahili_words VALUES (357, 16, 'd', 2, 'كُوٗلٖزَ', 'kuwoleza', 'kuoleza', 'kuwoleza', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (363, 16, 'f', 2, 'مَاشَعِرِ', 'māsha''iri', 'mashairi', 'māsha''iri', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (365, 16, 'g', 1, 'هَاىُوْ', 'hāyuu', 'hayo', 'hāyuu', '', '', '', 'What is the point of it all?');
INSERT INTO mykiswahili_words VALUES (366, 16, 'g', 2, 'ىُوْت', 'yūṯ', 'yote', 'yūṯ', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (369, 16, 'g', 5, 'نْن', 'nn', 'nini', 'nn', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (345, 15, 'h', 3, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (359, 16, 'e', 1, 'ممِ', 'mmi', 'mimi', 'mmi', '', '', '', 'For myself, I cannot accept that.');
INSERT INTO mykiswahili_words VALUES (360, 16, 'e', 2, 'هَايُو', 'hāyuu', 'hayo', 'hāyuu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (7, 1, 'c', 1, 'وَنَنْڠُ', 'wanangu', 'wanangu', 'wanangu', '', '', '', 'My own children avoid me, ');
INSERT INTO mykiswahili_words VALUES (9, 1, 'd', 1, 'كُوَأٗنَ', 'kuwaona', 'kuwaona', 'kuwaona', '', '', '', 'though I long to see them.');
INSERT INTO mykiswahili_words VALUES (5, 1, 'b', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (31, 2, 'c', 1, 'أَصِلِ', 'aṣili', 'asili', 'aṣili', '', '', '', 'are uninterested');
INSERT INTO mykiswahili_words VALUES (389, 17, 'e', 1, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', 'Who gave me my name?');
INSERT INTO mykiswahili_words VALUES (1, 1, 'a', 1, 'كُنْيَمَا', 'kunyamā', 'kunyamaa', 'kunyamā', '', '', '', 'I am weary of staying silent.');
INSERT INTO mykiswahili_words VALUES (4, 1, 'b', 1, 'تَانْيَامَا', 'ṯānyāmā', 't''anyamaa', 'ṯānyāmā', '', '', '', 'For how much longer am I to remain dumb?');
INSERT INTO mykiswahili_words VALUES (12, 1, 'e', 1, 'والُوْبَاكِ', 'wālūbāki', 'walobaki', 'wālūbāki', '', '', '', 'And those who remain to embrace me');
INSERT INTO mykiswahili_words VALUES (408, 18, 'c', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (49, 2, 'h', 2, 'هُنِپِجَ', 'hunipija', 'hunipija', 'hunipija', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (50, 2, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (6, 1, 'b', 3, 'لِنِ', 'lini', 'lini', 'lini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (8, 1, 'c', 2, 'هُنِئٖپُوْكَ', 'huniepūka', 'huniepuka', 'huniepūka', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (32, 2, 'c', 2, 'هَوَنَ', 'hawana', 'hawana', 'hawana', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (33, 2, 'c', 3, 'هَامُ', 'hāmu', 'hamu', 'hāmu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (85, 4, 'c', 2, 'زَهِدِ', 'zahiḏi', 'Zahidi', 'zahiḏi', '', 'Zahidi: see El-Maawy (2008).', '', '');
INSERT INTO mykiswahili_words VALUES (13, 1, 'e', 2, 'كُنِشِكَ', 'kunishika', 'kunishika', 'kunishika', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (15, 1, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (16, 1, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (361, 16, 'e', 3, 'سِيَاكِرِ', 'siyākiri', 'siyakiri', 'siyākiri', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (55, 3, 'b', 2, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (56, 3, 'b', 3, 'پُنْڠُوَنِ', 'punguwani', 'punguwani', 'punguwani', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (59, 3, 'c', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (71, 3, 'g', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (73, 3, 'g', 4, 'فَنِ', 'fani', 'fani', 'fani', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (79, 4, 'a', 2, 'مَامَاكٖ', 'māmāke', 'mamake', 'māmāke', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (76, 3, 'h', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (77, 3, 'h', 4, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (88, 4, 'd', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (141, 6, 'e', 2, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (117, 5, 'e', 2, 'تُوْنْڠٗ', 'ṯūngo', 't''ungo', 'ṯūngo', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (127, 5, 'h', 3, 'وَالُوْپِتَ', 'wālūpiṯa', 'walopita', 'wālūpiṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (129, 6, 'a', 2, 'مَالٖنْڠَ', 'mālenga', 'Malenga', 'mālenga', '', 'The Bard of Mambasa refers to Ustadh Ahmad Nassir Juma Bhalo, see Chiraghdin (1971).
', '', '');
INSERT INTO mykiswahili_words VALUES (124, 5, 'g', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (131, 6, 'a', 4, 'مْڤِتَ', 'mviṯa', 'Mvita', 'mviṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (154, 7, 'b', 2, 'اُكِنڠُوْنِ', 'ukingūni', 'ukingoni', 'ukingūni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (156, 7, 'c', 2, 'مُمٖنِپُوْزَ', 'mumenipūza', 'mumenipuuza', 'mumenipūza', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (103, 4, 'h', 3, 'كَمَ', 'kama', 'kama', 'kama', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (136, 6, 'c', 1, 'نْيايُو', 'nyāyuu', 'nyayo', 'nyāyuu', '', '', '', 'they followed in my footsteps,');
INSERT INTO mykiswahili_words VALUES (137, 6, 'c', 2, 'ولِزِفُوَتَ', 'ūlizifuwaṯa', 'ulizifuata', 'ūlizifuwaṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (133, 6, 'b', 2, 'پِيَ', 'piya', 'pia', 'piya', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (126, 5, 'h', 2, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (109, 5, 'b', 3, 'كِدَنِ', 'kiḏani', 'kidani', 'kiḏani', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (112, 5, 'c', 3, 'كْوٖلٖيَ', 'kweleya', 'kweleya', 'kweleya', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (143, 6, 'f', 2, 'هُفَلِييانِ', 'hufalı̄yāni', 'hufaliyani', 'hufalı̄yāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (115, 5, 'd', 3, 'مْوٖنْدانِ', 'mwenḏāni', 'mwendani', 'mwenḏāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (150, 7, 'a', 2, 'كُزَا', 'kuzā', 'kuzaa', 'kuzā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (160, 7, 'e', 2, 'مٖئِتُوكٖزَ', 'meiṯūkeza', 'meitokeza', 'meiṯūkeza', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (118, 5, 'e', 3, 'زِمٖسَلِيَ', 'zimesaliya', 'zimesaliya', 'zimesaliya', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (130, 6, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (208, 9, 'g', 1, 'ػَارٗ', 'kʲāro', 'Charo', 'kʲāro', '', '\textit{charo}: a name representing those who have their origins in the coastal hinterland (the \textit{nyika}).
', '', 'Charo and his colleagues');
INSERT INTO mykiswahili_words VALUES (120, 5, 'f', 2, 'هَزِفِ', 'hazifi', 'hazifi', 'hazifi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (121, 5, 'f', 3, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (145, 6, 'g', 2, 'پْوٖكٖ', 'pweke', 'pweke', 'pweke', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (146, 6, 'g', 3, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (139, 6, 'd', 2, 'اُدُنِ', 'uḏuni', 'uduni', 'uḏuni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (170, 8, 'b', 2, 'جَرِدَنِ', 'jariḏani', 'jaridani', 'jariḏani', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (148, 6, 'h', 2, 'اَمٖئِكِتَ', 'ameikiṯa', 'ameikita', 'ameikiṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (132, 6, 'b', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and Chiraghdin too,');
INSERT INTO mykiswahili_words VALUES (138, 6, 'd', 1, 'هَاوَكُكِرِ', 'hāwakukiri', 'hawakukiri', 'hāwakukiri', '', '', '', 'they did not submit to lower standards.');
INSERT INTO mykiswahili_words VALUES (92, 4, 'e', 2, 'كُوْتِ', 'kūṯi', 'Koti', 'kūṯi', '', 'Ali Koti of Pate: see Chiraghdin (1987: 31-7).', '', '');
INSERT INTO mykiswahili_words VALUES (142, 6, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but to what effect?');
INSERT INTO mykiswahili_words VALUES (144, 6, 'g', 1, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', 'He remains alone in the field,');
INSERT INTO mykiswahili_words VALUES (149, 7, 'a', 1, 'بَادٗ', 'bāḏo', 'bado', 'bāḏo', '', '', '', 'I am still able to give birth.');
INSERT INTO mykiswahili_words VALUES (155, 7, 'c', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but you have all despised me.');
INSERT INTO mykiswahili_words VALUES (94, 4, 'e', 4, 'مَتَاكَ', 'maṯāka', 'Mataka', 'maṯāka', '', 'Bwana Mataka’s full name is Muhammad bin Shee Mataka al-Famau (1825-1868). He was ruler of Siyu, as was his father. His mother was Mwana Kupona, famous for the poem of advice written to her daughter. Bwana Mataka died in Mombasa’s fort while imprisoned by the Busa‘idi.
', '', '');
INSERT INTO mykiswahili_words VALUES (97, 4, 'f', 3, 'مُوْيَ', 'mūya', 'moya', 'mūya', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (184, 8, 'g', 2, 'هَاوَتُوْك', 'hāwaṯūk', 'hawatoki', 'hāwaṯūk', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (108, 5, 'b', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (168, 8, 'a', 2, 'كِسِكِتِكَ', 'kisikiṯika', 'kisikitika', 'kisikiṯika', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (185, 8, 'g', 3, 'پْوان', 'pwān', 'pwani', 'pwān', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (189, 8, 'h', 4, 'مْڤِتَ', 'mviṯa', 'Mvita', 'mviṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (176, 8, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (178, 8, 'e', 2, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (190, 9, 'a', 1, 'اَنڠَلِيَ', 'angaliya', 'angalia', 'angaliya', '', '', '', 'Look at the textbooks');
INSERT INTO mykiswahili_words VALUES (214, 9, 'h', 3, 'هُفُوَتَ', 'hufuwaṯa', 'hufuata', 'hufuwaṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (215, 10, 'a', 1, 'هُوَلِكْوَا', 'huwalikwā', 'hualikwa', 'huwalikwā', '', '', '', 'When I am invited to conferences,');
INSERT INTO mykiswahili_words VALUES (211, 9, 'g', 4, 'وٖنْدانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (216, 10, 'a', 2, 'كُوْنْڠَمَانٗ', 'kūngamāno', 'kongamano', 'kūngamāno', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (241, 11, 'b', 2, 'مِتِحَانِ', 'miṯiḥāni', 'mitihani', 'miṯiḥāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (219, 10, 'b', 3, 'نْدِيَانِ', 'nḏiyāni', 'ndiani', 'nḏiyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (187, 8, 'h', 2, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (188, 8, 'h', 3, 'مْبوا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (213, 9, 'h', 2, 'نْيُوْمَ', 'nyūma', 'nyuma', 'nyūma', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (191, 9, 'a', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (192, 9, 'a', 3, 'زِتَابُ', 'ziṯābu', 'zitabu', 'ziṯābu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (194, 9, 'b', 2, 'شُلٖنِ', 'shuleni', 'shuleni', 'shuleni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (230, 10, 'f', 2, 'نِتٖنْدٖ', 'niṯenḏe', 'nitende', 'niṯenḏe', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (196, 9, 'c', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (200, 9, 'd', 3, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (201, 9, 'd', 4, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (204, 9, 'e', 2, 'نْدِيٖ', 'nḏiye', 'ndiye', 'nḏiye', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (205, 9, 'e', 3, 'كَتِبُ', 'kaṯibu', 'katibu', 'kaṯibu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (218, 10, 'b', 2, 'هُرُدِ', 'huruḏi', 'hurudi', 'huruḏi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (207, 9, 'f', 2, 'سُكَانِ', 'sukāni', 'sukani', 'sukāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (209, 9, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (210, 9, 'g', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (233, 10, 'g', 2, 'مُمٖئِخِنِ', 'mumeikhini', 'mumeihini', 'mumeikhini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (221, 10, 'c', 2, 'اُتُنْڠُ', 'uṯungu', 'utungu', 'uṯungu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (220, 10, 'c', 1, 'هُوٗنَ', 'huwona', 'huona', 'huwona', '', '', '', 'I feel exceedingly bitter');
INSERT INTO mykiswahili_words VALUES (231, 10, 'f', 3, 'نْنِ', 'nni', 'nini', 'nni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (195, 9, 'c', 1, 'هَازَانْدِكْوِ', 'hāzānḏikwi', 'hazandikwi', 'hāzānḏikwi', '', '', '', 'They are written neither by Rajabu,');
INSERT INTO mykiswahili_words VALUES (198, 9, 'd', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'nor by Sudi nor by Shani.');
INSERT INTO mykiswahili_words VALUES (206, 9, 'f', 1, 'اَشِشِيٖؤٗ', 'ashishiyeo', 'ashishiyeo', 'ashishiyeo', '', '', '', 'he is the helmsman. ');
INSERT INTO mykiswahili_words VALUES (212, 9, 'h', 1, 'نَاءٗ', 'nao', 'nao', 'nao', '', '', '', 'follow. ');
INSERT INTO mykiswahili_words VALUES (217, 10, 'b', 1, 'ػٖنْدَ', 'kʲenḏa', 'chenda', 'kʲenḏa', '', '', '', 'I turn back before I arrive.');
INSERT INTO mykiswahili_words VALUES (229, 10, 'f', 1, 'لَكِنِ', 'lakini', 'lakini', 'lakini', '', '', '', 'but what can I do?');
INSERT INTO mykiswahili_words VALUES (232, 10, 'g', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My children, you have missed your opportunity.');
INSERT INTO mykiswahili_words VALUES (240, 11, 'b', 1, 'ػَنْڠَلِيَ', 'kʲangaliya', 'changaliya', 'kʲangaliya', '', '', '', 'when I look at the results of the school exams.');
INSERT INTO mykiswahili_words VALUES (237, 11, 'a', 2, 'هُلِيَ', 'huliya', 'huliya', 'huliya', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (238, 11, 'a', 3, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (250, 11, 'e', 2, 'وَنَاءٗ', 'wanao', 'wanao', 'wanao', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (251, 11, 'e', 3, 'بَارِزِ', 'bārizi', 'barizi', 'bārizi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (246, 11, 'd', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (255, 11, 'g', 2, 'كْوٖتُ', 'kweṯu', 'kwetu', 'kweṯu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (253, 11, 'f', 2, 'كِلٖلٖنِ', 'kileleni', 'kileleni', 'kileleni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (256, 11, 'g', 3, 'پْوانِ', 'pwāni', 'pwani', 'pwāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (264, 12, 'b', 3, 'ػُوٗنِ', 'kʲuwoni', 'chuwoni', 'kʲuwoni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (266, 12, 'c', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (267, 12, 'c', 3, 'كَاتِتِ', 'kāṯiṯi', 'katiti', 'kāṯiṯi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (269, 12, 'd', 2, 'هَوَپَاتِكَانِ', 'hawapāṯikāni', 'hawapatikani', 'hawapāṯikāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (348, 16, 'a', 2, 'كْوٖنْيٖ', 'kwenye', 'kwenye', 'kwenye', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (300, 13, 'g', 2, 'هُنٖنَانِ', 'hunenāni', 'hunenani', 'hunenāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (271, 12, 'e', 2, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (272, 12, 'e', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (273, 12, 'e', 4, 'مْلَئِتِ', 'mlaiṯi', 'mlaiti', 'mlaiṯi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (276, 12, 'f', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (277, 12, 'f', 4, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (279, 12, 'g', 2, 'هَامُنِثَمِنِ', 'hāmunithamini', 'hamunithamini', 'hāmunithamini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (302, 13, 'h', 2, 'اَوْ', 'aw', 'au', 'aw', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (173, 8, 'c', 3, 'اَنْدِكَ', 'anḏika', 'andika', 'wanauanḏika', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (281, 12, 'h', 2, 'هَامُكُپَاتَ', 'hāmukupāṯa', 'hamukupata', 'hāmukupāṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (303, 13, 'h', 3, 'هُتٖتَ', 'huṯeṯa', 'huteta', 'huṯeṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (287, 13, 'c', 2, 'هَكُنَ', 'hakuna', 'hakuna', 'hakuna', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (288, 13, 'c', 3, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (236, 11, 'a', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'And I shed tears');
INSERT INTO mykiswahili_words VALUES (242, 11, 'c', 1, 'وَنَفُنْدِ', 'wanafunḏi', 'wanafundi', 'wanafunḏi', '', '', '', 'Students from Kibwezi, ');
INSERT INTO mykiswahili_words VALUES (245, 11, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and from Kisumu by the lake,');
INSERT INTO mykiswahili_words VALUES (260, 12, 'a', 1, 'وَفَانْيَاءٗ', 'wafānyao', 'wafanyao', 'wafānyao', '', '', '', 'Amongst those who are researching');
INSERT INTO mykiswahili_words VALUES (262, 12, 'b', 1, 'وَ', 'wa', 'wa', 'wa', '', '', '', 'for degrees at the universities,');
INSERT INTO mykiswahili_words VALUES (268, 12, 'd', 1, 'اَوْ', 'aw', 'au', 'aw', '', '', '', ' or non-existent.');
INSERT INTO mykiswahili_words VALUES (270, 12, 'e', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'Who is to be blamed?');
INSERT INTO mykiswahili_words VALUES (274, 12, 'f', 1, 'مْوٖنْيٖ', 'mwenye', 'mwenye', 'mwenye', '', '', '', 'Whose fault is it?');
INSERT INTO mykiswahili_words VALUES (282, 13, 'a', 1, 'كِوَسِكِيَ', 'kiwasikiya', 'kiwasikiya', 'kiwasikiya', '', '', '', 'When I hear those who are not mother-tongue speakers speaking,');
INSERT INTO mykiswahili_words VALUES (299, 13, 'g', 1, 'سِئٖلٖوِ', 'sielewi', 'sielewi', 'sielewi', '', '', '', 'I do not understand what they are saying.');
INSERT INTO mykiswahili_words VALUES (304, 14, 'a', 1, 'لَوْ', 'law', 'lau', 'law', '', '', '', 'Were Bwana Muyaka to return,');
INSERT INTO mykiswahili_words VALUES (317, 14, 'f', 1, 'وَنِيُوَاءٗ', 'waniyuwao', 'waniyuwao', 'waniyuwao', '', '', '', 'who know me well,');
INSERT INTO mykiswahili_words VALUES (341, 15, 'g', 1, 'هِپِجْوَا', 'hipijwā', 'hipijwa', 'hipijwā', '', '', '', 'I am given a kick');
INSERT INTO mykiswahili_words VALUES (228, 10, 'e', 3, 'زِتَانِ', 'ziṯāni', 'zitani', 'ziṯāni', '', 'These words echo the words of the {\FN{Inkishafi}}: ``wakauma zanda na kuiyuta''''. Readers unfamiliar with this Swahili gesture of regret could consult Eastman and Omar (1985).
', '', '');
INSERT INTO mykiswahili_words VALUES (248, 11, 'd', 4, 'زِوَنِ', 'ziwani', 'ziwani', 'ziwani', '', 'The lake is Lake Nyanza, also known as Lake Victoria.', '', '');
INSERT INTO mykiswahili_words VALUES (311, 14, 'c', 2, 'اِتَمْبِدِ', 'iṯambiḏi', 'itambidi', 'iṯambiḏi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (313, 14, 'd', 2, 'مَحَكَمَانِ', 'maḥakamāni', 'mahakamani', 'maḥakamāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (315, 14, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (316, 14, 'e', 3, 'مَشَهِدِ', 'mashahiḏi', 'mashahidi', 'mashahiḏi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (323, 14, 'h', 2, 'حَتِيَ', 'ḥaṯiya', 'hatiya', 'ḥaṯiya', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (324, 14, 'h', 3, 'كُوَپَاتَ', 'kuwapāṯa', 'kuwapata', 'kuwapāṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (326, 15, 'a', 2, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (327, 15, 'a', 3, 'غٖيْرَ', 'ḡēra', 'ghera', 'ḡēra', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (336, 15, 'e', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (337, 15, 'e', 3, 'كَامَ', 'kāma', 'kama', 'kāma', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (334, 15, 'd', 2, 'هَمُنِثَمِنِ', 'hamunithamini', 'hamunithamini', 'hamunithamini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (340, 15, 'f', 2, 'اُوَنْدَانِ', 'uwanḏāni', 'uwandani', 'uwanḏāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (346, 15, 'h', 4, 'كُپِتَ', 'kupiṯa', 'kupita', 'kupiṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (351, 16, 'b', 2, 'وَنْڠُ', 'wangu', 'wangu', 'wangu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (352, 16, 'b', 3, 'وَمٖبُوْنِ', 'wamebūni', 'wamebuni', 'wamebūni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (354, 16, 'c', 2, 'حُرُ', 'ḥuru', 'huru', 'ḥuru', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (355, 16, 'c', 3, 'بَحَارِ', 'baḥāri', 'bahari', 'baḥāri', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (358, 16, 'd', 3, 'وَڠٖنِ', 'wageni', 'wageni', 'wageni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (391, 17, 'e', 3, 'ئِنَ', 'ina', 'ina', 'ina', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (364, 16, 'f', 3, 'كِفَنِ', 'kifani', 'kifani', 'kifani', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (420, 18, 'g', 3, 'كْوَاءٗ', 'kwao', 'kwao', 'kwao', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (367, 16, 'g', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (368, 16, 'g', 4, 'كْوا', 'kwā', 'kwa', 'kwā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (393, 17, 'f', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (314, 14, 'e', 1, 'اَئٖتٖ', 'aeṯe', 'aete', 'aeṯe', '', '', '', 'and he would need to call witnesses');
INSERT INTO mykiswahili_words VALUES (325, 15, 'a', 1, 'وَاللّٰهِ', 'wallähi', 'wallahi', 'wallähi', '', '', '', 'Truly you have neither zeal');
INSERT INTO mykiswahili_words VALUES (328, 15, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor self-confidence.');
INSERT INTO mykiswahili_words VALUES (331, 15, 'c', 1, 'هَمُنَ', 'hamuna', 'hamuna', 'hamuna', '', '', '', 'It irritates you not at all');
INSERT INTO mykiswahili_words VALUES (333, 15, 'd', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'that you do not esteem me.');
INSERT INTO mykiswahili_words VALUES (335, 15, 'e', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am just like a ball');
INSERT INTO mykiswahili_words VALUES (347, 16, 'a', 1, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', 'Even in the field of Swahili prosody,');
INSERT INTO mykiswahili_words VALUES (353, 16, 'c', 1, 'زِلِزٗ', 'zilizo', 'zilizo', 'zilizo', '', '', '', 'free verse,');
INSERT INTO mykiswahili_words VALUES (356, 16, 'd', 1, 'كْوَا', 'kwā', 'kwa', 'kwā', '', '', '', 'imitating foreigners.');
INSERT INTO mykiswahili_words VALUES (362, 16, 'f', 1, 'سِ', 'si', 'si', 'si', '', '', '', 'That is not Swahili poetry.');
INSERT INTO mykiswahili_words VALUES (388, 17, 'd', 4, 'يَانْڠَانِ', 'yāngāni', 'yangani', 'yāngāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (402, 18, 'a', 2, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (403, 18, 'a', 3, 'هُنِنٖنَ', 'huninena', 'huninena', 'huninena', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (412, 18, 'e', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (405, 18, 'b', 2, 'اَصِلَانِ', 'aṣilāni', 'asilani', 'aṣilāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (413, 18, 'e', 3, 'وٖنْڠِ', 'wengi', 'wengi', 'wengi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (414, 18, 'e', 4, 'سَانَ', 'sāna', 'sana', 'sāna', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (407, 18, 'c', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (423, 18, 'h', 2, 'هَئِكُكَاتَ', 'haikukāṯa', 'haikukata', 'haikukāṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (416, 18, 'f', 2, 'زٗتٖ', 'zoṯe', 'zote', 'zoṯe', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (419, 18, 'g', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (375, 17, 'a', 1, 'هَمْبِوَ', 'hambiwa', 'hambiwa', 'hambiwa', '', '', '', 'I am told that I belong to nobody in particular.');
INSERT INTO mykiswahili_words VALUES (378, 17, 'b', 1, 'هِنِ', 'hini', 'hini', 'hini', '', '', '', 'How extraordinary!');
INSERT INTO mykiswahili_words VALUES (382, 17, 'c', 1, 'هُوَاءٖ', 'huwae', 'huwae', 'huwae', '', '', '', 'How can I be rootless below ground');
INSERT INTO mykiswahili_words VALUES (385, 17, 'd', 1, 'كَاوَ', 'kāwa', 'kawa', 'kāwa', '', '', '', 'and yet have branches above?');
INSERT INTO mykiswahili_words VALUES (395, 17, 'g', 1, 'كِوَ', 'kiwa', 'kiwa', 'kiwa', '', '', '', 'If I do not hail from Swahililand,');
INSERT INTO mykiswahili_words VALUES (398, 17, 'h', 1, 'نِ', 'ni', 'ni', 'ni', '', '', '', 'then whence do I come? ');
INSERT INTO mykiswahili_words VALUES (401, 18, 'a', 1, 'كُوَ', 'kuwa', 'kuwa', 'kuwa', '', '', '', 'That many speak me, [Swahili],');
INSERT INTO mykiswahili_words VALUES (406, 18, 'c', 1, 'يَاكُوَ', 'yākuwa', 'yakuwa', 'yākuwa', '', '', '', 'or that I have no owner.');
INSERT INTO mykiswahili_words VALUES (411, 18, 'e', 1, 'هُنٖنوَا', 'hunenwā', 'hunenwa', 'hunenwā', '', '', '', 'It is spoken by very many,');
INSERT INTO mykiswahili_words VALUES (415, 18, 'f', 1, 'پٖمْبٖ', 'pembe', 'pembe', 'pembe', '', '', '', 'in all corners of the world,');
INSERT INTO mykiswahili_words VALUES (418, 18, 'g', 1, 'كِنَ', 'kina', 'kina', 'kina', '', '', '', 'yet the language remains firmly established in its homeland,');
INSERT INTO mykiswahili_words VALUES (422, 18, 'h', 1, 'مِزِيٖ', 'miziye', 'miziye', 'miziye', '', '', '', 'its roots have not been severed. ');
INSERT INTO mykiswahili_words VALUES (370, 16, 'h', 1, 'هزٗ', 'hzo', 'hizo', 'hzo', '', '', '', 'These are preparations for war.');
INSERT INTO mykiswahili_words VALUES (371, 16, 'h', 2, 'ن', 'n', 'ni', 'n', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (372, 16, 'h', 3, 'مْبنُ', 'mbnu', 'mbinu', 'mbnu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (374, 16, 'h', 5, 'زتَ', 'zṯa', 'zita', 'zṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (380, 17, 'b', 3, 'عَجَابُ', '''ajābu', 'ajabu', '''ajābu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (383, 17, 'c', 2, 'كاكُوْسَ', 'kākūsa', 'kakosa', 'kākūsa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (397, 17, 'g', 3, 'اُسْوَاحِلِنِ', 'uswāḥilini', 'Uswahilini', 'uswāḥilini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (400, 17, 'h', 3, 'نَالِپُوپَاتَ', 'nālipūpāṯa', 'nalipopata', 'nālipūpāṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (409, 18, 'd', 1, 'كِنْڠٖرٖزَ', 'kingereza', 'Kingereza', 'kingereza', '', '', '', 'What of the English language?');
INSERT INTO mykiswahili_words VALUES (410, 18, 'd', 2, 'هَامُوٗنِ', 'hāmuwoni', 'hamuoni', 'hāmuwoni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (417, 18, 'f', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniani', 'ḏuniyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (404, 18, 'b', 1, 'سِدَلِلِ', 'siḏalili', 'sidalili', 'si ḏalili', '', '', '', 'is not of itself proof of origins,');
INSERT INTO mykiswahili_words VALUES (19, 1, 'g', 2, 'نِ', 'ni', 'ni', '~', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (18, 1, 'g', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'What have I done to you?');
INSERT INTO mykiswahili_words VALUES (20, 1, 'g', 3, 'مٖوَتٖنْدَانِ', 'mewaṯenḏāni', 'mewatendani', 'nimewaṯenḏāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (24, 2, 'a', 1, 'وَنَانْڠُ', 'wanāngu', 'wanangu', 'wanāngu', '', '', '', 'My own flesh and blood,');
INSERT INTO mykiswahili_words VALUES (28, 2, 'b', 1, 'وَانَ', 'wāna', 'wana', 'wāna', '', '', '', 'the children of Swahililand,');
INSERT INTO mykiswahili_words VALUES (34, 2, 'd', 1, 'يَا', 'yā', 'ya', 'yā', '', '', '', ' in knowing who I am, ');
INSERT INTO mykiswahili_words VALUES (38, 2, 'e', 1, 'وَمٖنَتِيَ', 'wamenaṯiya', 'wamenatiya', 'wamenaṯiya', '', '', '', 'and have left me to other peoples,');
INSERT INTO mykiswahili_words VALUES (40, 2, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to the children of neighbours.');
INSERT INTO mykiswahili_words VALUES (51, 3, 'a', 1, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', 'I am your mother and am not yet infertile,');
INSERT INTO mykiswahili_words VALUES (54, 3, 'b', 1, 'وَلَ', 'wala', 'wala', 'wala', '', '', '', 'nor has my ability to reproduce diminished.');
INSERT INTO mykiswahili_words VALUES (21, 1, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbona', 'mbūna', '', '', '', 'Why do you wage war on me? ');
INSERT INTO mykiswahili_words VALUES (39, 2, 'e', 2, 'قَؤُمُ', 'qaumu', 'kaumu', 'qaumu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (44, 2, 'g', 1, 'كُوْسَ', 'kūsa', 'kosa', 'kūsa', '', '', '', 'What kind of fault is my fault?');
INSERT INTO mykiswahili_words VALUES (46, 2, 'g', 3, 'كُوْسَ', 'kūsa', 'kosa', 'kūsa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (53, 3, 'a', 3, 'سِتَاسَ', 'siṯāsa', 'sit''asa', 'siṯāsa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (17, 1, 'f', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (62, 3, 'd', 2, 'كُنْڠِنٖ', 'kungine', 'kungine', 'kungine', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (35, 2, 'd', 2, 'كُنِيُوَ', 'kuniyuwa', 'kuniyuwa', 'kuniyuwa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (36, 2, 'd', 3, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (37, 2, 'd', 4, 'نَانِ', 'nāni', 'nani', 'nāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (22, 1, 'h', 2, 'هُنِپِجَ', 'hunipija', 'hunipija', 'hunipija', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (23, 1, 'h', 3, 'زِتَ', 'ziṯa', 'zita', 'ziṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (63, 3, 'd', 3, 'زِسِوَنِ', 'zisiwani', 'zisiwani', 'zisiwani', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (25, 2, 'a', 2, 'مِمِ', 'mimi', 'mimi', 'mimi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (26, 2, 'a', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (27, 2, 'a', 4, 'دَمُ', 'ḏamu', 'damu', 'ḏamu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (52, 3, 'a', 2, 'مَامٖنُ', 'māmenu', 'mamenu', 'māmenu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (29, 2, 'b', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (41, 2, 'f', 2, 'وَنَ', 'wana', 'wana', 'wana', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (42, 2, 'f', 3, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (43, 2, 'f', 4, 'مَجِرَنِ', 'majirani', 'majirani', 'majirani', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (45, 2, 'g', 2, 'لَنْڠُ', 'langu', 'langu', 'langu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (47, 2, 'g', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (14, 1, 'f', 1, 'سِوَنْڠُ', 'siwangu', 'siwangu', 'si wangu', '', '', '', 'are not my own, but are the offspring of others.');
INSERT INTO mykiswahili_words VALUES (69, 3, 'f', 3, 'وَدِنِ', 'waḏini', 'wadini', 'wa ḏini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (57, 3, 'c', 1, 'نِ', 'ni', 'ni', '~', '', '', '', 'I have given birth to children in Mambasa,');
INSERT INTO mykiswahili_words VALUES (58, 3, 'c', 2, 'مٖزَا', 'mezā', 'mezaa', 'nimezā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (65, 3, 'e', 2, 'وَنَ', 'wana', 'wana', '~', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (70, 3, 'g', 1, 'مَافُنْدِ', 'māfunḏi', 'mafundi', 'māfunḏi', '', '', '', 'to craftsmen in every field,');
INSERT INTO mykiswahili_words VALUES (78, 4, 'a', 1, 'نْدِمِ', 'nḏimi', 'ndimi', 'nḏimi', '', '', '', 'I am the mother of Bwana Muyaka,');
INSERT INTO mykiswahili_words VALUES (390, 17, 'e', 2, 'اَلُوْنِپَ', 'alūnipa', 'alonipa', 'alūnipa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (74, 3, 'h', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to war heroes. ');
INSERT INTO mykiswahili_words VALUES (48, 2, 'h', 1, 'مْبُوْنَ', 'mbūna', 'mbona', 'mbūna', '', '', '', '[O my children] why do you continue waging war on me? ');
INSERT INTO mykiswahili_words VALUES (86, 4, 'c', 3, 'كَذَلِكَ', 'kadhalika', 'kadhalika', 'kadhalika', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (61, 3, 'd', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and in the other islands [of the Swahili],');
INSERT INTO mykiswahili_words VALUES (67, 3, 'f', 1, 'نَ', 'na', 'na', 'na', '', '', '', 'and to religious leaders,');
INSERT INTO mykiswahili_words VALUES (60, 3, 'c', 4, 'مَمْبَاسَ', 'mambāsa', 'Mambasa', 'mambāsa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (64, 3, 'e', 1, 'نِزٖ', 'nize', 'nizee', 'nize', '', '', '', 'to politicians');
INSERT INTO mykiswahili_words VALUES (68, 3, 'f', 2, 'زِيُوْنْڠُوْزِ', 'ziyūngūzi', 'ziongozi', 'ziyūngūzi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (72, 3, 'g', 3, 'كُلَ', 'kula', 'kila', 'kula', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (75, 3, 'h', 2, 'مَاشُجَا', 'māshujā', 'mashujaa', 'māshujā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (80, 4, 'a', 3, 'مُيَاكَ', 'muyāka', 'Muyaka', 'muyāka', '', 'Bwana Muyaka was the outstanding Swahili poet of 19th century Mombasa.  After his death many of his verses were recalled by Mu''allim Sikujua Abdallah al-Batawi (died 1890) and transcribed with annotations by W.E. Taylor (1856-1927). After Taylor’s death his papers were acquired by the library of the School of Oriental and African Studies (SOAS), London.
', '', '');
INSERT INTO mykiswahili_words VALUES (81, 4, 'b', 1, 'پِيَ', 'piya', 'pia', 'piya', '', '', '', 'and of Mwengo Athmani also,');
INSERT INTO mykiswahili_words VALUES (82, 4, 'b', 2, 'مْوٖنْڠٗ', 'mwengo', 'Mwengo', 'mwengo', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (106, 5, 'a', 2, 'نْڠَلِيَ', 'ngaliya', 'angaliya', 'ngaliya', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (89, 4, 'd', 3, 'وَاكٖ', 'wāke', 'wake', 'wāke', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (90, 4, 'd', 4, 'وٖنْدَانِ', 'wenḏāni', 'wendani', 'wenḏāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (111, 5, 'c', 2, 'تَاكَاپُوْ', 'ṯākāpuu', 'takapo', 'ṯākāpuu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (93, 4, 'e', 3, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (153, 7, 'b', 1, 'سِيَاكُوْمَ', 'siyākūma', 'siyakoma', 'siyākūma', '', '', '', 'I have not yet reached the limit,');
INSERT INTO mykiswahili_words VALUES (96, 4, 'f', 2, 'مْبوَا', 'mbwā', 'mbwa', 'mbwā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (151, 7, 'a', 3, 'نَ', 'na', 'na', '~', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (152, 7, 'a', 4, 'وٖزَ', 'weza', 'weza', 'naweza', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (172, 8, 'c', 2, 'وَنَاءُ', 'wanau', 'wanao', '~', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (158, 7, 'd', 2, 'فُوٗنِ', 'fuwoni', 'fuoni', 'fuwoni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (166, 7, 'h', 2, 'مُلِپُوْنِوَتَ', 'mulipūniwaṯa', 'muliponiwata', 'mulipūniwaṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (162, 7, 'f', 2, 'كَانُوْنِ', 'kānūni', 'kanuni', 'kānūni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (165, 7, 'h', 1, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (180, 8, 'f', 2, 'تُنْڠٗ', 'ṯungo', 't''ungo', 'ṯungo', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (175, 8, 'd', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (222, 10, 'c', 3, 'مْنُو', 'mnuu', 'mnuu', 'mnuu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (258, 11, 'h', 2, 'تِنِ', 'ṯini', 'tini', 'ṯini', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (239, 11, 'a', 4, 'مَاتُوْزِ', 'māṯūzi', 'matozi', 'māṯūzi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (224, 10, 'd', 2, 'نْيِنْيِ', 'nyinyi', 'nyinyi', 'nyinyi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (225, 10, 'd', 3, 'سِوَأٗنِ', 'siwaoni', 'siwaoni', 'siwaoni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (261, 12, 'a', 2, 'اُتَفِتِ', 'uṯafiṯi', 'utafiti', 'uṯafiṯi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (244, 11, 'c', 3, 'كِبْوٖزِ', 'kibwezi', 'Kibwezi', 'kibwezi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (235, 10, 'h', 2, 'مُمٖنِوَتَ', 'mumeniwaṯa', 'mumeniwata', 'mumeniwaṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (247, 11, 'd', 3, 'كِسُومُ', 'kisūmu', 'Kisumu', 'kisūmu', '', 'Kibwezi and Kisumu are places in the East African interior.
', '', '');
INSERT INTO mykiswahili_words VALUES (227, 10, 'e', 2, 'هُزِاُمَ', 'huziuma', 'huziuma', 'huziuma', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (263, 12, 'b', 2, 'أُزَمِلِ', 'uzamili', 'uzamili', 'uzamili', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (243, 11, 'c', 2, 'وَ', 'wa', 'wa', 'wa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (290, 13, 'd', 2, 'نَ', 'na', 'na', '~', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (291, 13, 'd', 3, 'ئِتَمَانِ', 'iṯamāni', 'itamani', 'naiṯamāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (306, 14, 'a', 3, 'تَارُدِ', 'ṯāruḏi', 'tarudi', 'ṯāruḏi', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (297, 13, 'f', 2, 'مَشَاپُوْ', 'mashāpuu', 'mashapu', 'mashāpuu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (293, 13, 'e', 2, 'حَتَ', 'ḥaṯa', 'hata', 'ḥaṯa', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (294, 13, 'e', 3, 'لَذَ', 'ladha', 'ladha', 'ladha', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (295, 13, 'e', 4, 'هَيَانَ', 'hayāna', 'hayana', 'hayāna', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (329, 15, 'b', 2, 'هَامُوْنَ', 'hāmūna', 'hamuna', 'hāmūna', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (305, 14, 'a', 2, 'مُيَاكَ', 'muyāka', 'Muyaka', 'muyāka', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (307, 14, 'b', 1, 'اَيْ', 'ay', 'ae', 'ay', '', '', '', 'were he to come back to the world,');
INSERT INTO mykiswahili_words VALUES (298, 13, 'f', 3, 'كَانْوَانِ', 'kānwāni', 'kanwani', 'kānwāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (308, 14, 'b', 2, 'تٖنَ', 'ṯena', 'tena', 'ṯena', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (309, 14, 'b', 3, 'دُنِيَانِ', 'ḏuniyāni', 'duniyani', 'ḏuniyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (320, 14, 'g', 2, 'مْوٖنْدٖ', 'mwenḏe', 'mwende', 'mwenḏe', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (321, 14, 'g', 3, 'ڠٖرٖزَنِ', 'gerezani', 'gerezani', 'gerezani', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (338, 15, 'e', 4, 'مْپِوِرِ', 'mpiwiri', 'mpwira', 'mpiwiri', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (330, 15, 'b', 3, 'اِمَانِ', 'imāni', 'imani', 'imāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (394, 17, 'f', 3, 'نْيَانِ', 'nyāni', 'nyani', 'nyāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (373, 16, 'h', 4, 'زَا', 'zā', 'za', 'zā', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (376, 17, 'a', 2, 'مْوٖنْيٖوٖ', 'mwenyewe', 'mwenyewe', 'mwenyewe', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (377, 17, 'a', 3, 'سِنَ', 'sina', 'sina', 'sina', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (396, 17, 'g', 2, 'سِ', 'si', 'si', 'si', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (379, 17, 'b', 2, 'نِ', 'ni', 'ni', 'ni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (381, 17, 'b', 4, 'ڠَانِ', 'gāni', 'gani', 'gāni', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (384, 17, 'c', 3, 'شِنَ', 'shina', 'shina', 'shina', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (386, 17, 'd', 2, 'نَ', 'na', 'na', 'na', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (387, 17, 'd', 3, 'تَانْدُ', 'ṯānḏu', 'tandu', 'ṯānḏu', '', '', '', '');
INSERT INTO mykiswahili_words VALUES (399, 17, 'h', 2, 'وَپِ', 'wapi', 'wapi', 'wapi', '', '', '', '');


--
-- Data for Name: ulimi; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO ulimi VALUES (1, 1, 'a', 'أُلِيمِ نِ تَامُ', 'ulı̄mi ni ṯāmu', 'ulimi ni tamu', '');
INSERT INTO ulimi VALUES (2, 1, 'b', 'أُكِؤُتٗنْڠٗوَ', 'ukiuṯongowa', 'ukiutongowa', '');
INSERT INTO ulimi VALUES (3, 1, 'c', 'وَ أَامَ نِ سُومُ', 'wa āma ni sūmu', 'wa ama ni sumu', '');
INSERT INTO ulimi VALUES (4, 1, 'd', 'يَ كُسٗنْڠٗنْيٗوَ', 'ya kusongonyowa', 'ya kusongonyowa', '');
INSERT INTO ulimi VALUES (5, 1, 'e', 'أُيُوٖ فَهَامُ', 'uyuwe fahāmu', 'uyuwe fahamu', '');
INSERT INTO ulimi VALUES (6, 1, 'f', 'نَ مْوِيسٗ هُؤُوَ', 'na mwı̄so huuwa', 'na mwiso huuwa', '');
INSERT INTO ulimi VALUES (7, 2, 'a', 'نِ نْيَامَ لَئِينِ', 'ni nyāma laı̄ni', 'ni nyama laini', '');
INSERT INTO ulimi VALUES (8, 2, 'b', 'هَئِينَ مْفُوپَ', 'haı̄na mfūpa', 'haina mfupa', '');
INSERT INTO ulimi VALUES (9, 2, 'c', 'نْجٖيمَ كْوَ لَهَانِ', 'njēma kwa lahāni', 'njema kwa lahani', '');
INSERT INTO ulimi VALUES (10, 2, 'd', 'مٗولَ أَمٖتُوپَ', 'mōla ameṯūpa', 'mola ametupa', '');
INSERT INTO ulimi VALUES (11, 2, 'e', 'تهأُونُ يَ ثَمَانِ', 'ṯʿūnu ya thamāni', 'tunu ya thamani', '');
INSERT INTO ulimi VALUES (12, 2, 'f', 'أُسِؤٗ مْشِيپَ', 'usio mshı̄pa', 'usio mshipa', '');
INSERT INTO ulimi VALUES (13, 3, 'a', 'أُتَتُومَ وٖيمَ', 'uṯaṯūma wēma', 'utatuma wema', '');
INSERT INTO ulimi VALUES (14, 3, 'b', 'كْوَ وَاكٗ وٖنْدَانِ', 'kwa wāko wenḏāni', 'kwa wako wendani', '');
INSERT INTO ulimi VALUES (15, 3, 'c', 'نْدُوڠُ كُكُڠٖيمَ', 'nḏūgu kukugēma', 'ndugu kukugema', '');
INSERT INTO ulimi VALUES (16, 3, 'd', 'نَ كُويَ نْيُمْبَانِ', 'na kūya nyumbāni', 'na kuya nyumbani', '');
INSERT INTO ulimi VALUES (17, 3, 'e', 'لَكُكُسُكُومَ', 'lakukusukūma', 'lakukusukuma', '');
INSERT INTO ulimi VALUES (18, 3, 'f', 'هَلِپَتِكَانِ', 'halipaṯikāni', 'halipatikani', '');
INSERT INTO ulimi VALUES (19, 4, 'a', 'كْوَ بَابَ نَ مَامَ', 'kwa bāba na māma', 'kwa baba na mama', '');
INSERT INTO ulimi VALUES (20, 4, 'b', 'كُوٖيكْوَ پَأَنِ', 'kuwēkwa paani', 'kuwekwa paani', '');
INSERT INTO ulimi VALUES (21, 4, 'c', 'أُتَكُوَ مْوٖيمَ', 'uṯakuwa mwēma', 'utakuwa mwema', '');
INSERT INTO ulimi VALUES (22, 4, 'd', 'نَ كْوَ مَجِرَانِ', 'na kwa majirāni', 'na kwa majirani', '');
INSERT INTO ulimi VALUES (23, 4, 'e', 'كُيُوَ كُسٖيمَ', 'kuyuwa kusēma', 'kuyuwa kusema', '');
INSERT INTO ulimi VALUES (24, 4, 'f', 'نِ أُسُلُتوَانِ', 'ni usuluṯwāni', 'ni usulutwani', '');
INSERT INTO ulimi VALUES (25, 5, 'a', 'وَسٗكُفَهَامُ', 'wasokufahāmu', 'wasokufahamu', '');
INSERT INTO ulimi VALUES (26, 5, 'b', 'وَؤُوزٖ نِ نْيَانِ؟', 'waūze ni nyāni?', 'wauze ni nyani?', '');
INSERT INTO ulimi VALUES (27, 5, 'c', 'وَفَانْيٖ هَمُومُ', 'wafānye hamūmu', 'wafanye hamumu', '');
INSERT INTO ulimi VALUES (28, 5, 'd', 'وَاجٖ مَسِكَانِ', 'wāje masikāni', 'waje masikani', '');
INSERT INTO ulimi VALUES (29, 5, 'e', 'نَ وَكُهِشِيمُ', 'na wakuhishı̄mu', 'na wakuhishimu', '');
INSERT INTO ulimi VALUES (30, 5, 'f', 'وَاوٖ وَ نْيَؤٗونِ', 'wāwe wa nyaōni', 'wawe wa nyaoni', '');
INSERT INTO ulimi VALUES (31, 6, 'a', 'سوَرِيفُ هِسَانِ', 'swarı̄fu hisāni', 'swarifu hisani', '');
INSERT INTO ulimi VALUES (32, 6, 'b', 'أُوٖكٖيوٖ مْبٖيكٗ', 'uwekēwe mbēko', 'uwekewe mbeko', '');
INSERT INTO ulimi VALUES (33, 6, 'c', 'كْوَ نْدٖ نَ نْدَانِ', 'kwa nḏe na nḏāni', 'kwa nde na ndani', '');
INSERT INTO ulimi VALUES (34, 6, 'd', 'نَ كْوَ وَاتُ وَاكٗ', 'na kwa wāṯu wāko', 'na kwa watu wako', '');
INSERT INTO ulimi VALUES (35, 6, 'e', 'دَرَاجَ يَ شَانِ', 'ḏarāja ya shāni', 'daraja ya shani', '');
INSERT INTO ulimi VALUES (36, 6, 'f', 'تٗوَ شَاكَ نْدَاكٗ', 'ṯowa shāka nḏāko', 'towa shaka ndako', '');


--
-- Name: ulimi_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('ulimi_poemline_id_seq', 36, true);


--
-- Data for Name: vita_vikuu; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu VALUES (1, 1, 'a', 'أَكَتٗؤَ تَمَارِ', 'akaṯoa ṯamāri', 'akatoa tamari', '');
INSERT INTO vita_vikuu VALUES (2, 1, 'b', 'نَخُبُوزِ يَشَعِيْرِ', 'nakhubūzi yasha''ı̄ri', 'nahubuzi yasha''iri', '');
INSERT INTO vita_vikuu VALUES (3, 1, 'c', 'نَمِلْحِ أَصْفَرِ', 'namilḥi aṣfari', 'namilhi asfari', '');
INSERT INTO vita_vikuu VALUES (4, 1, 'd', 'كَكهٖيْتِ كَٹٗئٖلٖئَ', 'kakʿēṯi kaţoelea', 'kaketi katoelea', '');
INSERT INTO vita_vikuu VALUES (5, 2, 'a', 'كِشَكُوْلَ كَحِمِيْدِ', 'kishakūla kaḥimı̄ḏi', 'kishakula kahimidi', '');
INSERT INTO vita_vikuu VALUES (6, 2, 'b', 'ۏَاكٖ إِلَاهِ وَدُوْدِ', 'w̱āke ilāhi waḏūḏi', 'wake ilahi wadudi', '');
INSERT INTO vita_vikuu VALUES (7, 2, 'c', 'مُؤُوْنْبَ زٗوْتهٖ جَسَادِ', 'muūm̱ba zōṯʿe jasāḏi', 'muumba zote jasadi', '');
INSERT INTO vita_vikuu VALUES (8, 2, 'd', 'مَعَدُوِ نَمَوَلِيْ', 'ma''aḏuwi namawalii', 'ma''aduwi namawalii', '');
INSERT INTO vita_vikuu VALUES (9, 3, 'a', 'هَاتَ كُكِپَنْبَؤُوْكَ', 'hāṯa kukipam̱baūka', 'hata kukipambauka', '');
INSERT INTO vita_vikuu VALUES (10, 3, 'b', 'عَمُوْرِ أَكَتٗوْكَ', '''amūri akaṯōka', '''amuri akatoka', '');
INSERT INTO vita_vikuu VALUES (11, 3, 'c', 'كْوَ عَلِىْ أَكَفِيْكَ', 'kwa ''alii akafı̄ka', 'kwa ''alii akafika', '');
INSERT INTO vita_vikuu VALUES (12, 3, 'd', 'سَوْتِ أَكَئِتٗؤَ', 'sawṯi akaiṯoa', 'sauti akaitoa', '');
INSERT INTO vita_vikuu VALUES (13, 4, 'a', 'عَلِىْ كَتَكَلَامَ', '''alii kaṯakalāma', '''alii katakalama', '');
INSERT INTO vita_vikuu VALUES (14, 4, 'b', 'أَهْلاً يَا مُكَرَّمَ', 'ahlāⁿ yā mukarrama', 'ahla ya mukarrama', '');
INSERT INTO vita_vikuu VALUES (15, 4, 'c', 'ٹُتَوَصِيْل سَلَامَ', 'ţuṯawaṣı̄l salāma', 'tutawasil salama', '');
INSERT INTO vita_vikuu VALUES (16, 4, 'd', 'نْدِئَ إِنْڠَاۏَ طَوِلِيَ', 'nḏia ingāw̱a ṭawiliya', 'ndia ingawa tawiliya', '');
INSERT INTO vita_vikuu VALUES (17, 5, 'a', 'عَمُوْرِ كَرُوْدِ نْڈَانِ', '''amūri karūḏi nḑāni', '''amuri karudi ndani', '');
INSERT INTO vita_vikuu VALUES (18, 5, 'b', 'كَئِلَبِيْسِ يُوَانِ', 'kailabı̄si yuwāni', 'kailabisi yuwani', '');
INSERT INTO vita_vikuu VALUES (19, 5, 'c', 'دِرِيْعِ زَ أُۏَنْدَانِ', 'ḏirī''i za uw̱anḏāni', 'diri''i za uwandani', '');
INSERT INTO vita_vikuu VALUES (20, 5, 'd', 'أَكَئِفُوْنْڠَ زِكَمْكَاءَ', 'akaifūnga zikamkaa', 'akaifunga zikamkaa', '');
INSERT INTO vita_vikuu VALUES (21, 6, 'a', 'نَسٖيْفُ نْجٖيْمَ أَسِيْسِ', 'nasēfu njēma ası̄si', 'nasefu njema asisi', '');
INSERT INTO vita_vikuu VALUES (22, 6, 'b', 'نَرُمْحِ نَتُرُوْسِ', 'narumḥi naṯurūsi', 'narumhi naturusi', '');
INSERT INTO vita_vikuu VALUES (23, 6, 'c', 'أَكَمْپَانْڈَ فَرَاسِ', 'akampānḑa farāsi', 'akampanda farasi', '');
INSERT INTO vita_vikuu VALUES (24, 6, 'd', 'جُوْ أَكَمْكَلِئَ', 'juu akamkalia', 'juu akamkalia', '');
INSERT INTO vita_vikuu VALUES (25, 7, 'a', 'ۏَكٖيْنْڈَ تهَخُبِيْرِ', 'w̱akēnḑa ṯʿakhubı̄ri', 'wakenda tahubiri', '');
INSERT INTO vita_vikuu VALUES (26, 7, 'b', 'بِاللَّيْلِ وَالنَّهَارِ', 'billayli wannahāri', 'billayli wannahari', '');
INSERT INTO vita_vikuu VALUES (27, 7, 'c', 'ۏَكَپَنْبَانَ نَبَحَارِ', 'w̱akapam̱bāna nabaḥāri', 'wakapambana nabahari', '');
INSERT INTO vita_vikuu VALUES (28, 7, 'd', 'نَمِيْٹِ نَمَطَرِيَ', 'namı̄ţi namaṭariya', 'namiti namatariya', '');
INSERT INTO vita_vikuu VALUES (29, 8, 'a', 'ۏَكٖنٖينْڈَ يُۏَانِ', 'w̱akenēnḑa yuw̱āni', 'wakenenda yuwani', '');
INSERT INTO vita_vikuu VALUES (30, 8, 'b', 'عَلِىْ نَمَلِعُوْنِ', '''alii namali''ūni', '''alii namali''uni', '');
INSERT INTO vita_vikuu VALUES (31, 8, 'c', 'نْدِئَ زِيْلِ زَمَدِيْنِ', 'nḏia zı̄li zamaḏı̄ni', 'ndia zili zamadini', '');
INSERT INTO vita_vikuu VALUES (32, 8, 'd', 'عَمُوْرِ كَزِٹَنْبُؤَ', '''amūri kaziţam̱bua', '''amuri kazitambua', '');
INSERT INTO vita_vikuu VALUES (33, 9, 'a', 'عَمُوْرِ كَذُكُوْرِ', '''amūri kadhukūri', '''amuri kadhukuri', '');
INSERT INTO vita_vikuu VALUES (34, 9, 'b', 'كَمْوَنبِئَ حَيْدَرِ', 'kamwam̱bia ḥayḏari', 'kamwambia haydari', '');
INSERT INTO vita_vikuu VALUES (35, 9, 'c', 'دُرُوْبُ نْدَ أَنْصَارِ', 'ḏurūbu nḏa anṣāri', 'durubu nda ansari', '');
INSERT INTO vita_vikuu VALUES (36, 9, 'd', 'نْبٗوْنَ ٹْوَئِفُوَٹِئَ', 'm̱bōna ţwaifuwaţia', 'mbona twaifuwatia', '');
INSERT INTO vita_vikuu VALUES (37, 10, 'a', 'نَاسِ ٹُمٖفَانْيَ مَشَؤُوْرِ', 'nāsi ţumefānya mashaūri', 'nasi tumefanya mashauri', '');
INSERT INTO vita_vikuu VALUES (38, 10, 'b', 'يَكْوٖنٖينْڈَ سَفَارِ', 'yakwenēnḑa safāri', 'yakwenenda safari', '');
INSERT INTO vita_vikuu VALUES (39, 10, 'c', 'كْوَنْڠَلِئَ أَمْصَارِ', 'kwangalia amṣāri', 'kwangalia amsari', '');
INSERT INTO vita_vikuu VALUES (40, 10, 'd', 'جُنُوْدِ كُئِكُسَنْيِئَ', 'junūḏi kuikusanyia', 'junudi kuikusanyia', '');


--
-- Data for Name: vita_vikuu_backup; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu_backup VALUES (45, 5, 'c', 3, 'أُۏَنْدَانِ', 'uw̱anḏāni', 'uwandani', 'uw̱anḏāni', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (46, 5, 'd', 1, 'أَكَئِفُوْنْڠَ', 'akaifūnga', 'akaifunga', 'akaifūnga', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (2, 1, 'a', 2, 'تَمَارِ', 'ṯamāri', 'tamari', 'ṯamāri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (3, 1, 'b', 1, 'نَخُبُوزِ', 'nakhubūzi', 'nahubuzi', 'na khubūzi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (29, 4, 'a', 2, 'كَتَكَلَامَ', 'kaṯakalāma', 'katakalama', 'kaṯakalāma', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (4, 1, 'b', 2, 'يَشَعِيْرِ', 'yasha''ı̄ri', 'yasha''iri', 'yasha''ı̄ri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (5, 1, 'c', 1, 'نَمِلْحِ', 'namilḥi', 'namilhi', 'namil#i#ḥi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (6, 1, 'c', 2, 'أَصْفَرِ', 'aṣfari', 'asfari', 'aṣ#u#fari', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (7, 1, 'd', 1, 'كَكهٖيْتِ', 'kakʿēṯi', 'kaketi', 'kakʿēṯi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (8, 1, 'd', 2, 'كَٹٗئٖلٖئَ', 'kaţoelea', 'katoelea', 'kaţoelea', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (9, 2, 'a', 1, 'كِشَكُوْلَ', 'kishakūla', 'kishakula', 'kishakūla', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (71, 8, 'c', 3, 'زَمَدِيْنِ', 'zamaḏı̄ni', 'zamadini', 'zamaḏı̄ni', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (11, 2, 'b', 1, 'ۏَاكٖ', 'w̱āke', 'wake', 'w̱āke', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (12, 2, 'b', 2, 'إِلَاهِ', 'ilāhi', 'ilahi', 'ilāhi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (31, 4, 'b', 2, 'يَا', 'yā', 'ya', 'yā', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (32, 4, 'b', 3, 'مُكَرَّمَ', 'mukarrama', 'mukarrama', 'mukarrama', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (30, 4, 'b', 1, 'أَهْلاً', 'ahlāⁿ', 'ahla', 'ah#a#lān#i#', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (13, 2, 'b', 3, 'وَدُوْدِ', 'waḏūḏi', 'wadudi', 'waḏūḏi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (14, 2, 'c', 1, 'مُؤُوْنْبَ', 'muūm̱ba', 'muumba', 'muūm̱ba', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (15, 2, 'c', 2, 'زٗوْتهٖ', 'zōṯʿe', 'zote', 'zōṯʿe', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (68, 8, 'b', 2, 'نَمَلِعُوْنِ', 'namali''ūni', 'namali''uni', 'namali''ūni', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (17, 2, 'd', 1, 'مَعَدُوِ', 'ma''aḏuwi', 'ma''aduwi', 'ma''aḏuwi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (18, 2, 'd', 2, 'نَمَوَلِيْ', 'namawalii', 'namawalii', 'namawalii', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (47, 5, 'd', 2, 'زِكَمْكَاءَ', 'zikamkaa', 'zikamkaa', 'zikamkaa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (34, 4, 'c', 2, 'سَلَامَ', 'salāma', 'salama', 'salāma', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (20, 3, 'a', 2, 'كُكِپَنْبَؤُوْكَ', 'kukipam̱baūka', 'kukipambauka', 'kukipam̱baūka', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (35, 4, 'd', 1, 'نْدِئَ', 'nḏia', 'ndia', 'nḏia', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (21, 3, 'b', 1, 'عَمُوْرِ', '''amūri', '''amuri', '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (22, 3, 'b', 2, 'أَكَتٗوْكَ', 'akaṯōka', 'akatoka', 'akaṯōka', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (23, 3, 'c', 1, 'كْوَ', 'kwa', 'kwa', 'kwa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (24, 3, 'c', 2, 'عَلِىْ', '''alii', '''alii', '''alii', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (25, 3, 'c', 3, 'أَكَفِيْكَ', 'akafı̄ka', 'akafika', 'akafı̄ka', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (26, 3, 'd', 1, 'سَوْتِ', 'sawṯi', 'sauti', 'sawṯi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (27, 3, 'd', 2, 'أَكَئِتٗؤَ', 'akaiṯoa', 'akaitoa', 'akaiṯoa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (36, 4, 'd', 2, 'إِنْڠَاۏَ', 'ingāw̱a', 'ingawa', 'ingāw̱a', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (37, 4, 'd', 3, 'طَوِلِيَ', 'ṭawiliya', 'tawiliya', 'ṭawiliya', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (28, 4, 'a', 1, 'عَلِىْ', '''alii', '''alii', '''alii', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (38, 5, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (39, 5, 'a', 2, 'كَرُوْدِ', 'karūḏi', 'karudi', 'karūḏi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (56, 6, 'd', 2, 'أَكَمْكَلِئَ', 'akamkalia', 'akamkalia', 'akamkalia', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (57, 7, 'a', 1, 'ۏَكٖيْنْڈَ', 'w̱akēnḑa', 'wakenda', 'w̱akēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (40, 5, 'a', 3, 'نْڈَانِ', 'nḑāni', 'ndani', 'nḑāni', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (41, 5, 'b', 1, 'كَئِلَبِيْسِ', 'kailabı̄si', 'kailabisi', 'kailabı̄si', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (42, 5, 'b', 2, 'يُوَانِ', 'yuwāni', 'yuwani', 'yuwāni', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (49, 6, 'a', 2, 'نْجٖيْمَ', 'njēma', 'njema', 'njēma', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (43, 5, 'c', 1, 'دِرِيْعِ', 'ḏirī''i', 'diri''i', 'ḏirī''i', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (44, 5, 'c', 2, 'زَ', 'za', 'za', 'za', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (50, 6, 'a', 3, 'أَسِيْسِ', 'ası̄si', 'asisi', 'ası̄si', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (62, 7, 'c', 2, 'نَبَحَارِ', 'nabaḥāri', 'nabahari', 'nabaḥāri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (51, 6, 'b', 1, 'نَرُمْحِ', 'narumḥi', 'narumhi', 'narumḥi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (52, 6, 'b', 2, 'نَتُرُوْسِ', 'naṯurūsi', 'naturusi', 'naṯurūsi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (63, 7, 'd', 1, 'نَمِيْٹِ', 'namı̄ţi', 'namiti', 'namı̄ţi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (58, 7, 'a', 2, 'تهَخُبِيْرِ', 'ṯʿakhubı̄ri', 'tahubiri', 'ṯʿakhubı̄ri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (53, 6, 'c', 1, 'أَكَمْپَانْڈَ', 'akampānḑa', 'akampanda', 'akampānḑa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (54, 6, 'c', 2, 'فَرَاسِ', 'farāsi', 'farasi', 'farāsi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (59, 7, 'b', 1, 'بِاللَّيْلِ', 'billayli', 'billayli', 'billayli', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (55, 6, 'd', 1, 'جُوْ', 'juu', 'juu', 'juu', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (60, 7, 'b', 2, 'وَالنَّهَارِ', 'wannahāri', 'wannahari', 'wannahāri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (61, 7, 'c', 1, 'ۏَكَپَنْبَانَ', 'w̱akapam̱bāna', 'wakapambana', 'w̱akapam̱bāna', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (64, 7, 'd', 2, 'نَمَطَرِيَ', 'namaṭariya', 'namatariya', 'namaṭariya', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (66, 8, 'a', 2, 'يُۏَانِ', 'yuw̱āni', 'yuwani', 'yuw̱āni', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (67, 8, 'b', 1, 'عَلِىْ', '''alii', '''alii', '''alii', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (65, 8, 'a', 1, 'ۏَكٖنٖينْڈَ', 'w̱akenēnḑa', 'wakenenda', 'w̱akenēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (69, 8, 'c', 1, 'نْدِئَ', 'nḏia', 'ndia', 'nḏia', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (72, 8, 'd', 1, 'عَمُوْرِ', '''amūri', '''amuri', '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (70, 8, 'c', 2, 'زِيْلِ', 'zı̄li', 'zili', 'zı̄li', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (74, 9, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (73, 8, 'd', 2, 'كَزِٹَنْبُؤَ', 'kaziţam̱bua', 'kazitambua', 'kaziţam̱bua', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (76, 9, 'b', 1, 'كَمْوَنبِئَ', 'kamwam̱bia', 'kamwambia', 'kamwam̱bia', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (75, 9, 'a', 2, 'كَذُكُوْرِ', 'kadhukūri', 'kadhukuri', 'kadhukūri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (78, 9, 'c', 1, 'دُرُوْبُ', 'ḏurūbu', 'durubu', 'ḏurūbu', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (77, 9, 'b', 2, 'حَيْدَرِ', 'ḥayḏari', 'haydari', 'ḥayḏari', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (1, 1, 'a', 1, 'أَكَتٗؤَ', 'akaṯoa', 'akatoa', 'akaṯoa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (16, 2, 'c', 3, 'جَسَادِ', 'jasāḏi', 'jasadi', '~', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (19, 3, 'a', 1, 'هَاتَ', 'hāṯa', 'hata', 'hāṯta', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (10, 2, 'a', 2, 'كَحِمِيْدِ', 'kaḥimı̄ḏi', 'kahimidi', 'kaḥimı̄ḏi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (79, 9, 'c', 2, 'نْدَ', 'nḏa', 'nda', 'nḏa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (80, 9, 'c', 3, 'أَنْصَارِ', 'anṣāri', 'ansari', 'anṣāri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (81, 9, 'd', 1, 'نْبٗوْنَ', 'm̱bōna', 'mbona', 'm̱bōna', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (82, 9, 'd', 2, 'ٹْوَئِفُوَٹِئَ', 'ţwaifuwaţia', 'twaifuwatia', 'ţwaifuwaţia', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (83, 10, 'a', 1, 'نَاسِ', 'nāsi', 'nasi', 'nāsi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (84, 10, 'a', 2, 'ٹُمٖفَانْيَ', 'ţumefānya', 'tumefanya', 'ţumefānya', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (85, 10, 'a', 3, 'مَشَؤُوْرِ', 'mashaūri', 'mashauri', 'mashaūri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (86, 10, 'b', 1, 'يَكْوٖنٖينْڈَ', 'yakwenēnḑa', 'yakwenenda', 'yakwenēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (87, 10, 'b', 2, 'سَفَارِ', 'safāri', 'safari', 'safāri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (88, 10, 'c', 1, 'كْوَنْڠَلِئَ', 'kwangalia', 'kwangalia', 'kwangalia', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (89, 10, 'c', 2, 'أَمْصَارِ', 'amṣāri', 'amsari', 'amṣāri', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (90, 10, 'd', 1, 'جُنُوْدِ', 'junūḏi', 'junudi', 'junūḏi', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (91, 10, 'd', 2, 'كُئِكُسَنْيِئَ', 'kuikusanyia', 'kuikusanyia', 'kuikusanyia', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (33, 4, 'c', 1, 'ٹُتَوَصِيْل', 'ţuṯawaṣı̄l', 'tutawasil', '~', '', '', '', '');
INSERT INTO vita_vikuu_backup VALUES (48, 6, 'a', 1, 'نَسٖيْفُ', 'nasēfu', 'nasefu', 'na sēfu', '', '', '', '');


--
-- Data for Name: vita_vikuu_backup_orig; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu_backup_orig VALUES (24, 140, 'c', 2, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', '', '''alii');
INSERT INTO vita_vikuu_backup_orig VALUES (68, 145, 'b', 2, 'نَمَلِعُوْنِ', 'namali''ūni', 'namali''uni', '', '', '', '', 'l''n', '', 'namali''ūni');
INSERT INTO vita_vikuu_backup_orig VALUES (56, 143, 'd', 2, 'أَكَمْكَلِئَ', 'akamkalia', 'akamkalia', '', '', '', '', 'ka', '', 'akamkalia');
INSERT INTO vita_vikuu_backup_orig VALUES (10, 139, 'a', 2, 'كَحِمِيْدِ', 'kaḥimı̄ḏi', 'kahimidi', '', '', '', '', 'ḥmd', '', 'kaḥimı̄ḏi');
INSERT INTO vita_vikuu_backup_orig VALUES (57, 144, 'a', 1, 'ۏَكٖيْنْڈَ', 'w̱akēnḑa', 'wakenda', '', '', '', '', 'end', 'They went, I''ll tell you, ', 'w̱akēnḑa');
INSERT INTO vita_vikuu_backup_orig VALUES (58, 144, 'a', 2, 'تهَخُبِيْرِ', 'ṯʿaẖubı̄ri', 'tahubiri', '', '', '', '', 'ẖbr', '', 'ṯʿaẖubı̄ri');
INSERT INTO vita_vikuu_backup_orig VALUES (11, 139, 'b', 1, 'ۏَاكٖ', 'w̱āke', 'wake', '', '', '', '', 'ake', 'to his beloved God,', 'w̱āke');
INSERT INTO vita_vikuu_backup_orig VALUES (30, 141, 'b', 1, 'أَهْلاً', 'ahlāⁿ', 'ahla', 'ah#a#lāⁿ', '', '', '', 'ahl', 'Greetings, Honoured One', 'ahalāⁿ');
INSERT INTO vita_vikuu_backup_orig VALUES (12, 139, 'b', 2, 'إِلَاهِ', 'ilāhi', 'ilahi', '', '', '', '', 'alh', '', 'ilāhi');
INSERT INTO vita_vikuu_backup_orig VALUES (13, 139, 'b', 3, 'وَدُوْدِ', 'waḏūḏi', 'wadudi', '', '', '', '', 'wdd', '', 'waḏūḏi');
INSERT INTO vita_vikuu_backup_orig VALUES (15, 139, 'c', 2, 'زٗوْتهٖ', 'zōṯʿe', 'zote', '', '', '', '', 'ote', '', 'zōṯʿe');
INSERT INTO vita_vikuu_backup_orig VALUES (16, 139, 'c', 3, 'جَسَادِ', 'jasāḏi', 'jasadi', '', '', '', '', 'jsd', '', 'jasāḏi');
INSERT INTO vita_vikuu_backup_orig VALUES (17, 139, 'd', 1, 'مَعَدُوِ', 'ma''aḏuwi', 'ma''aduwi', '', '', '', '', '''dw', 'both enemies and friends.', 'ma''aḏuwi');
INSERT INTO vita_vikuu_backup_orig VALUES (18, 139, 'd', 2, 'نَمَوَلِيْ', 'namawalii', 'namawalii', '', 'na', '', 'The implication is that these are friends and enemies of Islam.', 'wly', '', 'mawalii');
INSERT INTO vita_vikuu_backup_orig VALUES (20, 140, 'a', 2, 'كُكِپَنْبَؤُوْكَ', 'kukipam̱baūka', 'kukipambauka', '', '', '', '', 'pamba', '', 'kukipam̱baūka');
INSERT INTO vita_vikuu_backup_orig VALUES (21, 140, 'b', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri came out', '''amūri');
INSERT INTO vita_vikuu_backup_orig VALUES (22, 140, 'b', 2, 'أَكَتٗوْكَ', 'akaṯōka', 'akatoka', '', '', '', '', 'to', '', 'akaṯōka');
INSERT INTO vita_vikuu_backup_orig VALUES (23, 140, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', 'a', 'He arrived beside Ali', 'kwa');
INSERT INTO vita_vikuu_backup_orig VALUES (25, 140, 'c', 3, 'أَكَفِيْكَ', 'akafı̄ka', 'akafika', '', '', '', '', 'fik', '', 'akafı̄ka');
INSERT INTO vita_vikuu_backup_orig VALUES (26, 140, 'd', 1, 'سَوْتِ', 'sawṯi', 'sauti', '', '', '', '', 'swt', 'and [Ali] spoke.', 'sawṯi');
INSERT INTO vita_vikuu_backup_orig VALUES (31, 141, 'b', 2, 'يَا', 'yā', 'ya', '', '', '', '', 'ya', '', 'yā');
INSERT INTO vita_vikuu_backup_orig VALUES (27, 140, 'd', 2, 'أَكَئِتٗؤَ', 'akaiṯoa', 'akaitoa', '', '', '', '', 'to', '', 'akaiṯoa');
INSERT INTO vita_vikuu_backup_orig VALUES (59, 144, 'b', 1, 'بِاللَّيْلِ', 'bi-llayli', 'bi-layli', '', '', '', '', 'lyl', 'by night and day,', 'bi-llayli');
INSERT INTO vita_vikuu_backup_orig VALUES (64, 144, 'd', 2, 'نَمَطَرِيَ', 'namaṭariya', 'namatariya', '', 'na', '', 'Ar @مطر@ #rain#.  Seemingly used by extension here to mean a place with water.', 'mṭr', '', 'maṭariya');
INSERT INTO vita_vikuu_backup_orig VALUES (28, 141, 'a', 1, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', 'Ali said', '''alii');
INSERT INTO vita_vikuu_backup_orig VALUES (29, 141, 'a', 2, 'كَتَكَلَامَ', 'kaṯakalāma', 'katakalama', '', '', '', '', 'klm', '', 'kaṯakalāma');
INSERT INTO vita_vikuu_backup_orig VALUES (32, 141, 'b', 3, 'مُكَرَّمَ', 'mukarrama', 'mukarrama', '', '', '', '', 'krm', '', 'mukarrama');
INSERT INTO vita_vikuu_backup_orig VALUES (33, 141, 'c', 1, 'ٹُتَوَصِيْل', 'ţuṯawaṣı̄l', 'tutawasil', 'ţuṯawaṣı̄l#i#', '', '', '', 'wṣl', 'We shall arrive safely', 'ţuṯawaṣı̄li');
INSERT INTO vita_vikuu_backup_orig VALUES (38, 142, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri went back inside;', '''amūri');
INSERT INTO vita_vikuu_backup_orig VALUES (39, 142, 'a', 2, 'كَرُوْدِ', 'karūḏi', 'karudi', '', '', 'B: @أَكٖينْڈَ@ #akēnḑa#', '', 'rdd', '', 'karūḏi');
INSERT INTO vita_vikuu_backup_orig VALUES (40, 142, 'a', 3, 'نْڈَانِ', 'nḑāni', 'ndani', '', '', '', '', 'ndani', '', 'nḑāni');
INSERT INTO vita_vikuu_backup_orig VALUES (41, 142, 'b', 1, 'كَئِلَبِيْسِ', 'kailabı̄si', 'kailabisi', '', '', '', '', 'lbs', 'know that he dressed himself', 'kailabı̄si');
INSERT INTO vita_vikuu_backup_orig VALUES (42, 142, 'b', 2, 'يُوَانِ', 'yuwāni', 'yuwani', '', '', '', '', 'ju', '', 'yuwāni');
INSERT INTO vita_vikuu_backup_orig VALUES (43, 142, 'c', 1, 'دِرِيْعِ', 'ḏirī''i', 'diri''i', '', '', '', '', 'dr''', 'In battle-armour,', 'ḏirī''i');
INSERT INTO vita_vikuu_backup_orig VALUES (45, 142, 'c', 3, 'أُۏَنْدَانِ', 'uw̱anḏāni', 'uwandani', '', '', '', '@أُۏَنْدَ@ (uwanda) is an #open space#, and by extension a #battlefield#.', 'wand', '', 'uw̱anḏāni');
INSERT INTO vita_vikuu_backup_orig VALUES (46, 142, 'd', 1, 'أَكَئِفُوْنْڠَ', 'akaifūnga', 'akaifunga', '', '', '', '', 'fung', 'and fastened it firmly upon himself.', 'akaifūnga');
INSERT INTO vita_vikuu_backup_orig VALUES (47, 142, 'd', 2, 'زِكَمْكَاءَ', 'zikamkāa', 'zikamkaa', '', '', '', 'Lit. #and bound himself so that [the armour] stayed on him#.', 'ka', '', 'zikamkāa');
INSERT INTO vita_vikuu_backup_orig VALUES (51, 143, 'b', 1, 'نَرُمْحِ', 'narumḥi', 'narumhi', 'narum#u#ḥi', 'na', '', '', 'rmḥ', 'and a spear, and a shield.', 'rumuḥi');
INSERT INTO vita_vikuu_backup_orig VALUES (72, 145, 'd', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri recognised them.', '''amūri');
INSERT INTO vita_vikuu_backup_orig VALUES (78, 146, 'c', 1, 'دُرُوْبُ', 'ḏurūbu', 'durubu', '', '', '', '', 'drb', 'This is the Companions'' road', 'ḏurūbu');
INSERT INTO vita_vikuu_backup_orig VALUES (80, 146, 'c', 3, 'أَنْصَارِ', 'anṣāri', 'ansari', '', '', '', 'The Ansari were the Muslims of Medina who gave refuge to the Prophet after the Hegira.  Possibly this word is in error for @أَمْصَارِ@, #city#, used in the next stanza.', 'nṣr', '', 'anṣāri');
INSERT INTO vita_vikuu_backup_orig VALUES (86, 147, 'b', 1, 'يَكْوٖنٖينْڈَ', 'yakwenēnḑa', 'yakwenenda', '', 'ya', '', '', 'end', 'about going on the journey,', 'kwenēnḑa');
INSERT INTO vita_vikuu_backup_orig VALUES (88, 147, 'c', 1, 'كْوَنْڠَلِئَ', 'kwangalia', 'kwangalia', '', '', '', '', 'ang', 'to reconnoitre the city', 'kwangalia');
INSERT INTO vita_vikuu_backup_orig VALUES (89, 147, 'c', 2, 'أَمْصَارِ', 'amṣāri', 'amsari', '', '', '', '', 'mṣr', '', 'amṣāri');
INSERT INTO vita_vikuu_backup_orig VALUES (90, 147, 'd', 1, 'جُنُوْدِ', 'junūḏi', 'junudi', '', '', '', '', 'jnd', 'while the army assembles.', 'junūḏi');
INSERT INTO vita_vikuu_backup_orig VALUES (50, 143, 'a', 3, 'أَسِيْسِ', 'ası̄si', 'asisi', '', '', '', '', 'ass', '', 'ası̄si');
INSERT INTO vita_vikuu_backup_orig VALUES (1, 138, 'a', 1, 'أَكَتٗؤَ', 'akaṯoa', 'akatoa', '', '', '', '', 'to', 'He took out dates', 'akaṯoa');
INSERT INTO vita_vikuu_backup_orig VALUES (52, 143, 'b', 2, 'نَتُرُوْسِ', 'naṯurūsi', 'naturusi', '', 'na', '', '', 'trs', '', 'ṯurūsi');
INSERT INTO vita_vikuu_backup_orig VALUES (75, 146, 'a', 2, 'كَذُكُوْرِ', 'kadhukūri', 'kadhukuri', '', '', '', '', 'ḏkr', '', 'kadhukūri');
INSERT INTO vita_vikuu_backup_orig VALUES (76, 146, 'b', 1, 'كَمْوَنبِئَ', 'kamwam̱bia', 'kamwambia', '', '', '', '', 'amb', 'and said to the Lion:', 'kamwam̱bia');
INSERT INTO vita_vikuu_backup_orig VALUES (77, 146, 'b', 2, 'حَيْدَرِ', 'ḥayḏari', 'haydari', '', '', '', 'A frequently-used metonym for Ali.', 'ḥdr', '', 'ḥayḏari');
INSERT INTO vita_vikuu_backup_orig VALUES (53, 143, 'c', 1, 'أَكَمْپَانْڈَ', 'akampānḑa', 'akampanda', '', '', '', '', 'pand', 'Then he mounted his steed,', 'akampānḑa');
INSERT INTO vita_vikuu_backup_orig VALUES (54, 143, 'c', 2, 'فَرَاسِ', 'farāsi', 'farasi', '', '', '', '', 'frs', '', 'farāsi');
INSERT INTO vita_vikuu_backup_orig VALUES (55, 143, 'd', 1, 'جُوْ', 'juu', 'juu', '', '', '', '', 'juu', 'and seated himself upon it.', 'juu');
INSERT INTO vita_vikuu_backup_orig VALUES (2, 138, 'a', 2, 'تَمَارِ', 'ṯamāri', 'tamari', '', '', '', '', 'tmr', '', 'ṯamāri');
INSERT INTO vita_vikuu_backup_orig VALUES (3, 138, 'b', 1, 'نَخُبُوزِ', 'naẖubūzi', 'nahubuzi', '', 'na', '', '', 'ẖbz', 'and barley bread', 'ẖubūzi');
INSERT INTO vita_vikuu_backup_orig VALUES (4, 138, 'b', 2, 'يَشَعِيْرِ', 'yasha''ı̄ri', 'yasha''iri', '', 'ya', '', '', 's̱''r', '', 'sha''ı̄ri');
INSERT INTO vita_vikuu_backup_orig VALUES (5, 138, 'c', 1, 'نَمِلْحِ', 'namilḥi', 'namilhi', 'namil#i#ḥi', 'na', '', '', 'mlḥ', 'And yellow salt - ', 'miliḥi');
INSERT INTO vita_vikuu_backup_orig VALUES (6, 138, 'c', 2, 'أَصْفَرِ', 'aṣfari', 'asfari', 'aṣ#u#fari', '', '', 'The salt is yellow because it is unpurified rock-salt, containing iodine.', 'ṣfr', '', 'aṣufari');
INSERT INTO vita_vikuu_backup_orig VALUES (7, 138, 'd', 1, 'كَكهٖيْتِ', 'kakʿēṯi', 'kaketi', '', '', '', '', 'ka', 'he sat down and took [them] out.', 'kakʿēṯi');
INSERT INTO vita_vikuu_backup_orig VALUES (8, 138, 'd', 2, 'كَٹٗئٖلٖئَ', 'kaţoelea', 'katoelea', '', '', '', '', 'to', '', 'kaţoelea');
INSERT INTO vita_vikuu_backup_orig VALUES (9, 139, 'a', 1, 'كِشَكُوْلَ', 'kishakūla', 'kishakula', '', '', '', '', 'l', 'When he finished eating he gave thanks', 'kishakūla');
INSERT INTO vita_vikuu_backup_orig VALUES (14, 139, 'c', 1, 'مُؤُوْنْبَ', 'muūm̱ba', 'muumba', '', '', '', '', 'umb', 'The Creator of all individuals - ', 'muūm̱ba');
INSERT INTO vita_vikuu_backup_orig VALUES (19, 140, 'a', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', 'hata', 'Until, when dawn came,', 'hāṯa');
INSERT INTO vita_vikuu_backup_orig VALUES (34, 141, 'c', 2, 'سَلَامَ', 'salāma', 'salama', '', '', '', '', 'slm', '', 'salāma');
INSERT INTO vita_vikuu_backup_orig VALUES (35, 141, 'd', 1, 'نْدِئَ', 'nḏia', 'ndia', '', '', '', '', 'njia', 'even if the road is long.', 'nḏia');
INSERT INTO vita_vikuu_backup_orig VALUES (36, 141, 'd', 2, 'إِنْڠَاۏَ', 'ingāw̱a', 'ingawa', '', '', '', '', 'ingawa', '', 'ingāw̱a');
INSERT INTO vita_vikuu_backup_orig VALUES (37, 141, 'd', 3, 'طَوِلِيَ', 'ṭawiliya', 'tawiliya', '', '', '', '', 'ṭal', '', 'ṭawiliya');
INSERT INTO vita_vikuu_backup_orig VALUES (48, 143, 'a', 1, 'نَسٖيْفُ', 'nasēfu', 'nasefu', '', 'na', '', '', 'syf', 'And [took up] a good, stout sword,', 'sēfu');
INSERT INTO vita_vikuu_backup_orig VALUES (49, 143, 'a', 2, 'نْجٖيْمَ', 'njēma', 'njema', '', '', '', '', 'ema', '', 'njēma');
INSERT INTO vita_vikuu_backup_orig VALUES (60, 144, 'b', 2, 'وَالنَّهَارِ', 'wa-nnahāri', 'wa-nahari', '', '', '', '', 'nhr', '', 'wa-nnahāri');
INSERT INTO vita_vikuu_backup_orig VALUES (61, 144, 'c', 1, 'ۏَكَپَنْبَانَ', 'w̱akapam̱bāna', 'wakapambana', '', '', '', '', 'pamb', 'And they encountered oceans,', 'w̱akapam̱bāna');
INSERT INTO vita_vikuu_backup_orig VALUES (62, 144, 'c', 2, 'نَبَحَارِ', 'nabaḥāri', 'nabahari', '', 'na', '', '', 'bḥr', '', 'baḥāri');
INSERT INTO vita_vikuu_backup_orig VALUES (63, 144, 'd', 1, 'نَمِيْٹِ', 'namı̄ţi', 'namiti', '', 'na', '', '', 'ti', 'and forests, and oases.', 'mı̄ţi');
INSERT INTO vita_vikuu_backup_orig VALUES (65, 145, 'a', 1, 'ۏَكٖنٖينْڈَ', 'w̱akenēnḑa', 'wakenenda', '', '', '', '', 'end', 'Know that they went on,', 'w̱akenēnḑa');
INSERT INTO vita_vikuu_backup_orig VALUES (66, 145, 'a', 2, 'يُۏَانِ', 'yuw̱āni', 'yuwani', '', '', '', '', 'ju', '', 'yuw̱āni');
INSERT INTO vita_vikuu_backup_orig VALUES (67, 145, 'b', 1, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', 'Ali and the Accursed One;', '''alii');
INSERT INTO vita_vikuu_backup_orig VALUES (69, 145, 'c', 1, 'نْدِئَ', 'nḏia', 'ndia', '', '', '', '', 'njia', 'These roads [led to] Medina - ', 'nḏia');
INSERT INTO vita_vikuu_backup_orig VALUES (70, 145, 'c', 2, 'زِيْلِ', 'zı̄li', 'zili', '', '', '', '', 'ili', '', 'zı̄li');
INSERT INTO vita_vikuu_backup_orig VALUES (71, 145, 'c', 3, 'زَمَدِيْنِ', 'zamaḏı̄ni', 'zamadini', '', 'za', '', '', 'mdn', '', 'maḏı̄ni');
INSERT INTO vita_vikuu_backup_orig VALUES (73, 145, 'd', 2, 'كَزِٹَنْبُؤَ', 'kaziţam̱bua', 'kazitambua', '', '', '', '', 'tamb', '', 'kaziţam̱bua');
INSERT INTO vita_vikuu_backup_orig VALUES (74, 146, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri spoke', '''amūri');
INSERT INTO vita_vikuu_backup_orig VALUES (82, 146, 'd', 2, 'ٹْوَئِفُوَٹِئَ', 'ţwaifuwaţia', 'twaifuwatia', '', '', '', '', 'fuat', '', 'ţwaifuwaţia');
INSERT INTO vita_vikuu_backup_orig VALUES (84, 147, 'a', 2, 'ٹُمٖفَانْيَ', 'ţumefānya', 'tumefanya', '', '', '', '', 'fa', '', 'ţumefānya');
INSERT INTO vita_vikuu_backup_orig VALUES (85, 147, 'a', 3, 'مَشَؤُوْرِ', 'mashaūri', 'mashauri', '', '', '', '', 's̱wr', '', 'mashaūri');
INSERT INTO vita_vikuu_backup_orig VALUES (87, 147, 'b', 2, 'سَفَارِ', 'safāri', 'safari', '', '', '', '', 'sfr', '', 'safāri');
INSERT INTO vita_vikuu_backup_orig VALUES (91, 147, 'd', 2, 'كُئِكُسَنْيِئَ', 'kuikusanyia', 'kuikusanyia', '', '', '', '', 'kut', '', 'kuikusanyia');
INSERT INTO vita_vikuu_backup_orig VALUES (44, 142, 'c', 2, 'زَ', 'za', 'za', '', '', '', '', 'a', '', 'za');
INSERT INTO vita_vikuu_backup_orig VALUES (79, 146, 'c', 2, 'نْدَ', 'nḏa', 'nda', '', '', '', '', 'a', '', 'nḏa');
INSERT INTO vita_vikuu_backup_orig VALUES (81, 146, 'd', 1, 'نْبٗوْنَ', 'm̱bōna', 'mbona', '', '', '', '', 'mbona', 'why are we following it?', 'm̱bōna');
INSERT INTO vita_vikuu_backup_orig VALUES (83, 147, 'a', 1, 'نَاسِ', 'nāsi', 'nasi', '', '', '', '', 'sisi', 'For we have taken counsel ', 'nāsi');


--
-- Data for Name: vita_vikuu_notes; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu_notes VALUES (5, 'c', 3, 'uw̱anḏāni', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'd', 1, 'akaifūnga', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (1, 'a', 2, 'ṯamāri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (1, 'b', 1, 'na khubūzi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'a', 2, 'kaṯakalāma', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (1, 'b', 2, 'yasha''ı̄ri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (1, 'c', 1, 'namil#i#ḥi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (1, 'c', 2, 'aṣ#u#fari', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (1, 'd', 1, 'kakʿēṯi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (1, 'd', 2, 'kaţoelea', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'a', 1, 'kishakūla', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'c', 3, 'zamaḏı̄ni', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'b', 1, 'w̱āke', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'b', 2, 'ilāhi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'b', 2, 'yā', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'b', 3, 'mukarrama', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'b', 1, 'ah#a#lān#i#', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'b', 3, 'waḏūḏi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'c', 1, 'muūm̱ba', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'c', 2, 'zōṯʿe', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'b', 2, 'namali''ūni', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'd', 1, 'ma''aḏuwi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'd', 2, 'namawalii', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'd', 2, 'zikamkaa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'c', 2, 'salāma', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'a', 2, 'kukipam̱baūka', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'd', 1, 'nḏia', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'b', 1, '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'b', 2, 'akaṯōka', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'c', 1, 'kwa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'c', 2, '''alii', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'c', 3, 'akafı̄ka', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'd', 1, 'sawṯi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'd', 2, 'akaiṯoa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'd', 2, 'ingāw̱a', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'd', 3, 'ṭawiliya', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'a', 1, '''alii', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'a', 1, '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'a', 2, 'karūḏi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'd', 2, 'akamkalia', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (7, 'a', 1, 'w̱akēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'a', 3, 'nḑāni', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'b', 1, 'kailabı̄si', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'b', 2, 'yuwāni', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'a', 2, 'njēma', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'c', 1, 'ḏirī''i', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (5, 'c', 2, 'za', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'a', 3, 'ası̄si', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (7, 'c', 2, 'nabaḥāri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'b', 1, 'narumḥi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'b', 2, 'naṯurūsi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (7, 'd', 1, 'namı̄ţi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (7, 'a', 2, 'ṯʿakhubı̄ri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'c', 1, 'akampānḑa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'c', 2, 'farāsi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (7, 'b', 1, 'billayli', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'd', 1, 'juu', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (7, 'b', 2, 'wannahāri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (7, 'c', 1, 'w̱akapam̱bāna', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (7, 'd', 2, 'namaṭariya', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'a', 2, 'yuw̱āni', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'b', 1, '''alii', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'a', 1, 'w̱akenēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'c', 1, 'nḏia', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'd', 1, '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'c', 2, 'zı̄li', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'a', 1, '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (8, 'd', 2, 'kaziţam̱bua', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'b', 1, 'kamwam̱bia', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'a', 2, 'kadhukūri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'c', 1, 'ḏurūbu', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'b', 2, 'ḥayḏari', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (1, 'a', 1, 'akaṯoa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'c', 3, '~', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (3, 'a', 1, 'hāṯta', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (2, 'a', 2, 'kaḥimı̄ḏi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'c', 2, 'nḏa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'c', 3, 'anṣāri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'd', 1, 'm̱bōna', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (9, 'd', 2, 'ţwaifuwaţia', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'a', 1, 'nāsi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'a', 2, 'ţumefānya', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'a', 3, 'mashaūri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'b', 1, 'yakwenēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'b', 2, 'safāri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'c', 1, 'kwangalia', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'c', 2, 'amṣāri', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'd', 1, 'junūḏi', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (10, 'd', 2, 'kuikusanyia', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (4, 'c', 1, '~', '', '', '', '');
INSERT INTO vita_vikuu_notes VALUES (6, 'a', 1, 'na sēfu', '', '', '', '');


--
-- Data for Name: vita_vikuu_notes_orig; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu_notes_orig VALUES (140, 'c', 2, '', '', '', '', '''ly', '');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'b', 2, '', '', '', '', 'l''n', '');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'd', 2, '', '', '', '', 'ka', '');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'a', 2, '', '', '', '', 'ḥmd', '');
INSERT INTO vita_vikuu_notes_orig VALUES (144, 'a', 1, '', '', '', '', 'end', 'They went, I''ll tell you, ');
INSERT INTO vita_vikuu_notes_orig VALUES (144, 'a', 2, '', '', '', '', 'ẖbr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'b', 1, '', '', '', '', 'ake', 'to his beloved God,');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'b', 1, 'ah#a#lāⁿ', '', '', '', 'ahl', 'Greetings, Honoured One');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'b', 2, '', '', '', '', 'alh', '');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'b', 3, '', '', '', '', 'wdd', '');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'c', 2, '', '', '', '', 'ote', '');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'c', 3, '', '', '', '', 'jsd', '');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'd', 1, '', '', '', '', '''dw', 'both enemies and friends.');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'd', 2, '', 'na', '', 'The implication is that these are friends and enemies of Islam.', 'wly', '');
INSERT INTO vita_vikuu_notes_orig VALUES (140, 'a', 2, '', '', '', '', 'pamba', '');
INSERT INTO vita_vikuu_notes_orig VALUES (140, 'b', 1, '', '', '', '', '''mr', 'Amuri came out');
INSERT INTO vita_vikuu_notes_orig VALUES (140, 'b', 2, '', '', '', '', 'to', '');
INSERT INTO vita_vikuu_notes_orig VALUES (140, 'c', 1, '', '', '', '', 'a', 'He arrived beside Ali');
INSERT INTO vita_vikuu_notes_orig VALUES (140, 'c', 3, '', '', '', '', 'fik', '');
INSERT INTO vita_vikuu_notes_orig VALUES (140, 'd', 1, '', '', '', '', 'swt', 'and [Ali] spoke.');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'b', 2, '', '', '', '', 'ya', '');
INSERT INTO vita_vikuu_notes_orig VALUES (140, 'd', 2, '', '', '', '', 'to', '');
INSERT INTO vita_vikuu_notes_orig VALUES (144, 'b', 1, '', '', '', '', 'lyl', 'by night and day,');
INSERT INTO vita_vikuu_notes_orig VALUES (144, 'd', 2, '', 'na', '', 'Ar @مطر@ #rain#.  Seemingly used by extension here to mean a place with water.', 'mṭr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'a', 1, '', '', '', '', '''ly', 'Ali said');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'a', 2, '', '', '', '', 'klm', '');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'b', 3, '', '', '', '', 'krm', '');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'c', 1, 'ţuṯawaṣı̄l#i#', '', '', '', 'wṣl', 'We shall arrive safely');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'a', 1, '', '', '', '', '''mr', 'Amuri went back inside;');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'a', 2, '', '', 'B: @أَكٖينْڈَ@ #akēnḑa#', '', 'rdd', '');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'a', 3, '', '', '', '', 'ndani', '');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'b', 1, '', '', '', '', 'lbs', 'know that he dressed himself');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'b', 2, '', '', '', '', 'ju', '');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'c', 1, '', '', '', '', 'dr''', 'In battle-armour,');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'c', 3, '', '', '', '@أُۏَنْدَ@ (uwanda) is an #open space#, and by extension a #battlefield#.', 'wand', '');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'd', 1, '', '', '', '', 'fung', 'and fastened it firmly upon himself.');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'd', 2, '', '', '', 'Lit. #and bound himself so that [the armour] stayed on him#.', 'ka', '');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'b', 1, 'narum#u#ḥi', 'na', '', '', 'rmḥ', 'and a spear, and a shield.');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'd', 1, '', '', '', '', '''mr', 'Amuri recognised them.');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'c', 1, '', '', '', '', 'drb', 'This is the Companions'' road');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'c', 3, '', '', '', 'The Ansari were the Muslims of Medina who gave refuge to the Prophet after the Hegira.  Possibly this word is in error for @أَمْصَارِ@, #city#, used in the next stanza.', 'nṣr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'b', 1, '', 'ya', '', '', 'end', 'about going on the journey,');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'c', 1, '', '', '', '', 'ang', 'to reconnoitre the city');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'c', 2, '', '', '', '', 'mṣr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'd', 1, '', '', '', '', 'jnd', 'while the army assembles.');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'a', 3, '', '', '', '', 'ass', '');
INSERT INTO vita_vikuu_notes_orig VALUES (138, 'a', 1, '', '', '', '', 'to', 'He took out dates');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'b', 2, '', 'na', '', '', 'trs', '');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'a', 2, '', '', '', '', 'ḏkr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'b', 1, '', '', '', '', 'amb', 'and said to the Lion:');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'b', 2, '', '', '', 'A frequently-used metonym for Ali.', 'ḥdr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'c', 1, '', '', '', '', 'pand', 'Then he mounted his steed,');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'c', 2, '', '', '', '', 'frs', '');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'd', 1, '', '', '', '', 'juu', 'and seated himself upon it.');
INSERT INTO vita_vikuu_notes_orig VALUES (138, 'a', 2, '', '', '', '', 'tmr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (138, 'b', 1, '', 'na', '', '', 'ẖbz', 'and barley bread');
INSERT INTO vita_vikuu_notes_orig VALUES (138, 'b', 2, '', 'ya', '', '', 's̱''r', '');
INSERT INTO vita_vikuu_notes_orig VALUES (138, 'c', 1, 'namil#i#ḥi', 'na', '', '', 'mlḥ', 'And yellow salt - ');
INSERT INTO vita_vikuu_notes_orig VALUES (138, 'c', 2, 'aṣ#u#fari', '', '', 'The salt is yellow because it is unpurified rock-salt, containing iodine.', 'ṣfr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (138, 'd', 1, '', '', '', '', 'ka', 'he sat down and took [them] out.');
INSERT INTO vita_vikuu_notes_orig VALUES (138, 'd', 2, '', '', '', '', 'to', '');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'a', 1, '', '', '', '', 'l', 'When he finished eating he gave thanks');
INSERT INTO vita_vikuu_notes_orig VALUES (139, 'c', 1, '', '', '', '', 'umb', 'The Creator of all individuals - ');
INSERT INTO vita_vikuu_notes_orig VALUES (140, 'a', 1, '', '', '', '', 'hata', 'Until, when dawn came,');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'c', 2, '', '', '', '', 'slm', '');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'd', 1, '', '', '', '', 'njia', 'even if the road is long.');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'd', 2, '', '', '', '', 'ingawa', '');
INSERT INTO vita_vikuu_notes_orig VALUES (141, 'd', 3, '', '', '', '', 'ṭal', '');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'a', 1, '', 'na', '', '', 'syf', 'And [took up] a good, stout sword,');
INSERT INTO vita_vikuu_notes_orig VALUES (143, 'a', 2, '', '', '', '', 'ema', '');
INSERT INTO vita_vikuu_notes_orig VALUES (144, 'b', 2, '', '', '', '', 'nhr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (144, 'c', 1, '', '', '', '', 'pamb', 'And they encountered oceans,');
INSERT INTO vita_vikuu_notes_orig VALUES (144, 'c', 2, '', 'na', '', '', 'bḥr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (144, 'd', 1, '', 'na', '', '', 'ti', 'and forests, and oases.');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'a', 1, '', '', '', '', 'end', 'Know that they went on,');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'a', 2, '', '', '', '', 'ju', '');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'b', 1, '', '', '', '', '''ly', 'Ali and the Accursed One;');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'c', 1, '', '', '', '', 'njia', 'These roads [led to] Medina - ');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'c', 2, '', '', '', '', 'ili', '');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'c', 3, '', 'za', '', '', 'mdn', '');
INSERT INTO vita_vikuu_notes_orig VALUES (145, 'd', 2, '', '', '', '', 'tamb', '');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'a', 1, '', '', '', '', '''mr', 'Amuri spoke');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'd', 2, '', '', '', '', 'fuat', '');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'a', 2, '', '', '', '', 'fa', '');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'a', 3, '', '', '', '', 's̱wr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'b', 2, '', '', '', '', 'sfr', '');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'd', 2, '', '', '', '', 'kut', '');
INSERT INTO vita_vikuu_notes_orig VALUES (142, 'c', 2, '', '', '', '', 'a', '');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'c', 2, '', '', '', '', 'a', '');
INSERT INTO vita_vikuu_notes_orig VALUES (146, 'd', 1, '', '', '', '', 'mbona', 'why are we following it?');
INSERT INTO vita_vikuu_notes_orig VALUES (147, 'a', 1, '', '', '', '', 'sisi', 'For we have taken counsel ');


--
-- Data for Name: vita_vikuu_orig; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu_orig VALUES (1, 1, 'a', 'أَكَتٗؤَ تَمَارِ ', 'akaṯoa ṯamāri', 'akatoa tamari', '');
INSERT INTO vita_vikuu_orig VALUES (2, 1, 'b', ' نَخُبُوزِ يَشَعِيْرِ', 'naẖubūzi yasha''ı̄ri', 'nahubuzi yasha''iri', '');
INSERT INTO vita_vikuu_orig VALUES (3, 1, 'c', 'نَمِلْحِ أَصْفَرِ ', 'namilḥi aṣfari', 'namilhi asfari', '');
INSERT INTO vita_vikuu_orig VALUES (4, 1, 'd', ' كَكهٖيْتِ كَٹٗئٖلٖئَ', 'kakʿēṯi kaţoelea', 'kaketi katoelea', '');
INSERT INTO vita_vikuu_orig VALUES (5, 2, 'a', 'كِشَكُوْلَ كَحِمِيْدِ ', 'kishakūla kaḥimı̄ḏi', 'kishakula kahimidi', '');
INSERT INTO vita_vikuu_orig VALUES (6, 2, 'b', ' ۏَاكٖ إِلَاهِ وَدُوْدِ', 'w̱āke ilāhi waḏūḏi', 'wake ilahi wadudi', '');
INSERT INTO vita_vikuu_orig VALUES (7, 2, 'c', 'مُؤُوْنْبَ زٗوْتهٖ جَسَادِ ', 'muūm̱ba zōṯʿe jasāḏi', 'muumba zote jasadi', '');
INSERT INTO vita_vikuu_orig VALUES (8, 2, 'd', ' مَعَدُوِ نَمَوَلِيْ', 'ma''aḏuwi namawalii', 'ma''aduwi namawalii', '');
INSERT INTO vita_vikuu_orig VALUES (9, 3, 'a', 'هَاتَ كُكِپَنْبَؤُوْكَ ', 'hāṯa kukipam̱baūka', 'hata kukipambauka', '');
INSERT INTO vita_vikuu_orig VALUES (10, 3, 'b', ' عَمُوْرِ أَكَتٗوْكَ', '''amūri akaṯōka', '''amuri akatoka', '');
INSERT INTO vita_vikuu_orig VALUES (11, 3, 'c', 'كْوَ عَلِىْ أَكَفِيْكَ ', 'kwa ''alii akafı̄ka', 'kwa ''alii akafika', '');
INSERT INTO vita_vikuu_orig VALUES (12, 3, 'd', ' سَوْتِ أَكَئِتٗؤَ', 'sawṯi akaiṯoa', 'sauti akaitoa', '');
INSERT INTO vita_vikuu_orig VALUES (13, 4, 'a', 'عَلِىْ كَتَكَلَامَ ', '''alii kaṯakalāma', '''alii katakalama', '');
INSERT INTO vita_vikuu_orig VALUES (14, 4, 'b', ' أَهْلاً يَا مُكَرَّمَ', 'ahlāⁿ yā mukarrama', 'ahla ya mukarrama', '');
INSERT INTO vita_vikuu_orig VALUES (15, 4, 'c', 'ٹُتَوَصِيْل سَلَامَ ', 'ţuṯawaṣı̄l salāma', 'tutawasil salama', '');
INSERT INTO vita_vikuu_orig VALUES (16, 4, 'd', ' نْدِئَ إِنْڠَاۏَ طَوِلِيَ', 'nḏia ingāw̱a ṭawiliya', 'ndia ingawa tawiliya', '');
INSERT INTO vita_vikuu_orig VALUES (17, 5, 'a', 'عَمُوْرِ كَرُوْدِ نْڈَانِ ', '''amūri karūḏi nḑāni', '''amuri karudi ndani', '');
INSERT INTO vita_vikuu_orig VALUES (18, 5, 'b', ' كَئِلَبِيْسِ يُوَانِ', 'kailabı̄si yuwāni', 'kailabisi yuwani', '');
INSERT INTO vita_vikuu_orig VALUES (19, 5, 'c', 'دِرِيْعِ زَ أُۏَنْدَانِ ', 'ḏirī''i za uw̱anḏāni', 'diri''i za uwandani', '');
INSERT INTO vita_vikuu_orig VALUES (20, 5, 'd', ' أَكَئِفُوْنْڠَ زِكَمْكَاءَ', 'akaifūnga zikamkāa', 'akaifunga zikamkaa', '');
INSERT INTO vita_vikuu_orig VALUES (21, 6, 'a', 'نَسٖيْفُ نْجٖيْمَ أَسِيْسِ ', 'nasēfu njēma ası̄si', 'nasefu njema asisi', '');
INSERT INTO vita_vikuu_orig VALUES (22, 6, 'b', ' نَرُمْحِ نَتُرُوْسِ', 'narumḥi naṯurūsi', 'narumhi naturusi', '');
INSERT INTO vita_vikuu_orig VALUES (23, 6, 'c', 'أَكَمْپَانْڈَ فَرَاسِ ', 'akampānḑa farāsi', 'akampanda farasi', '');
INSERT INTO vita_vikuu_orig VALUES (24, 6, 'd', ' جُوْ أَكَمْكَلِئَ', 'juu akamkalia', 'juu akamkalia', '');
INSERT INTO vita_vikuu_orig VALUES (25, 7, 'a', 'ۏَكٖيْنْڈَ تهَخُبِيْرِ ', 'w̱akēnḑa ṯʿaẖubı̄ri', 'wakenda tahubiri', '');
INSERT INTO vita_vikuu_orig VALUES (26, 7, 'b', ' بِاللَّيْلِ وَالنَّهَارِ', 'billayli wannahāri', 'billayli wannahari', '');
INSERT INTO vita_vikuu_orig VALUES (27, 7, 'c', 'ۏَكَپَنْبَانَ نَبَحَارِ ', 'w̱akapam̱bāna nabaḥāri', 'wakapambana nabahari', '');
INSERT INTO vita_vikuu_orig VALUES (28, 7, 'd', ' نَمِيْٹِ نَمَطَرِيَ', 'namı̄ţi namaṭariya', 'namiti namatariya', '');
INSERT INTO vita_vikuu_orig VALUES (29, 8, 'a', 'ۏَكٖنٖينْڈَ يُۏَانِ ', 'w̱akenēnḑa yuw̱āni', 'wakenenda yuwani', '');
INSERT INTO vita_vikuu_orig VALUES (30, 8, 'b', ' عَلِىْ نَمَلِعُوْنِ', '''alii namali''ūni', '''alii namali''uni', '');
INSERT INTO vita_vikuu_orig VALUES (31, 8, 'c', 'نْدِئَ زِيْلِ زَمَدِيْنِ ', 'nḏia zı̄li zamaḏı̄ni', 'ndia zili zamadini', '');
INSERT INTO vita_vikuu_orig VALUES (32, 8, 'd', ' عَمُوْرِ كَزِٹَنْبُؤَ', '''amūri kaziţam̱bua', '''amuri kazitambua', '');
INSERT INTO vita_vikuu_orig VALUES (33, 9, 'a', 'عَمُوْرِ كَذُكُوْرِ ', '''amūri kadhukūri', '''amuri kadhukuri', '');
INSERT INTO vita_vikuu_orig VALUES (34, 9, 'b', ' كَمْوَنبِئَ حَيْدَرِ', 'kamwam̱bia ḥayḏari', 'kamwambia haydari', '');
INSERT INTO vita_vikuu_orig VALUES (35, 9, 'c', 'دُرُوْبُ نْدَ أَنْصَارِ ', 'ḏurūbu nḏa anṣāri', 'durubu nda ansari', '');
INSERT INTO vita_vikuu_orig VALUES (36, 9, 'd', ' نْبٗوْنَ ٹْوَئِفُوَٹِئَ', 'm̱bōna ţwaifuwaţia', 'mbona twaifuwatia', '');
INSERT INTO vita_vikuu_orig VALUES (37, 10, 'a', 'نَاسِ ٹُمٖفَانْيَ مَشَؤُوْرِ ', 'nāsi ţumefānya mashaūri', 'nasi tumefanya mashauri', '');
INSERT INTO vita_vikuu_orig VALUES (38, 10, 'b', ' يَكْوٖنٖينْڈَ سَفَارِ', 'yakwenēnḑa safāri', 'yakwenenda safari', '');
INSERT INTO vita_vikuu_orig VALUES (39, 10, 'c', 'كْوَنْڠَلِئَ أَمْصَارِ ', 'kwangalia amṣāri', 'kwangalia amsari', '');
INSERT INTO vita_vikuu_orig VALUES (40, 10, 'd', ' جُنُوْدِ كُئِكُسَنْيِئَ', 'junūḏi kuikusanyia', 'junudi kuikusanyia', '');


--
-- Name: vita_vikuu_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('vita_vikuu_poemline_id_seq', 40, true);


--
-- Name: vita_vikuu_poemline_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('vita_vikuu_poemline_id_seq1', 40, true);


--
-- Data for Name: vita_vikuu_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu_words VALUES (45, 5, 'c', 3, 'أُۏَنْدَانِ', 'uw̱anḏāni', 'uwandani', 'uw̱anḏāni', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (46, 5, 'd', 1, 'أَكَئِفُوْنْڠَ', 'akaifūnga', 'akaifunga', 'akaifūnga', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (2, 1, 'a', 2, 'تَمَارِ', 'ṯamāri', 'tamari', 'ṯamāri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (3, 1, 'b', 1, 'نَخُبُوزِ', 'nakhubūzi', 'nahubuzi', 'na khubūzi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (29, 4, 'a', 2, 'كَتَكَلَامَ', 'kaṯakalāma', 'katakalama', 'kaṯakalāma', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (30, 4, 'b', 1, 'أَهْلاً', 'ahlāⁿ', 'ahla', 'ah#a#lān#i#', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (4, 1, 'b', 2, 'يَشَعِيْرِ', 'yasha''ı̄ri', 'yasha''iri', 'yasha''ı̄ri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (5, 1, 'c', 1, 'نَمِلْحِ', 'namilḥi', 'namilhi', 'namil#i#ḥi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (6, 1, 'c', 2, 'أَصْفَرِ', 'aṣfari', 'asfari', 'aṣ#u#fari', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (7, 1, 'd', 1, 'كَكهٖيْتِ', 'kakʿēṯi', 'kaketi', 'kakʿēṯi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (8, 1, 'd', 2, 'كَٹٗئٖلٖئَ', 'kaţoelea', 'katoelea', 'kaţoelea', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (9, 2, 'a', 1, 'كِشَكُوْلَ', 'kishakūla', 'kishakula', 'kishakūla', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (71, 8, 'c', 3, 'زَمَدِيْنِ', 'zamaḏı̄ni', 'zamadini', 'zamaḏı̄ni', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (11, 2, 'b', 1, 'ۏَاكٖ', 'w̱āke', 'wake', 'w̱āke', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (12, 2, 'b', 2, 'إِلَاهِ', 'ilāhi', 'ilahi', 'ilāhi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (31, 4, 'b', 2, 'يَا', 'yā', 'ya', 'yā', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (32, 4, 'b', 3, 'مُكَرَّمَ', 'mukarrama', 'mukarrama', 'mukarrama', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (33, 4, 'c', 1, 'ٹُتَوَصِيْل', 'ţuṯawaṣı̄l', 'tutawasil', '~', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (13, 2, 'b', 3, 'وَدُوْدِ', 'waḏūḏi', 'wadudi', 'waḏūḏi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (14, 2, 'c', 1, 'مُؤُوْنْبَ', 'muūm̱ba', 'muumba', 'muūm̱ba', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (15, 2, 'c', 2, 'زٗوْتهٖ', 'zōṯʿe', 'zote', 'zōṯʿe', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (68, 8, 'b', 2, 'نَمَلِعُوْنِ', 'namali''ūni', 'namali''uni', 'namali''ūni', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (16, 2, 'c', 3, 'جَسَادِ', 'jasāḏi', 'jasadi', '~', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (17, 2, 'd', 1, 'مَعَدُوِ', 'ma''aḏuwi', 'ma''aduwi', 'ma''aḏuwi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (18, 2, 'd', 2, 'نَمَوَلِيْ', 'namawalii', 'namawalii', 'namawalii', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (47, 5, 'd', 2, 'زِكَمْكَاءَ', 'zikamkaa', 'zikamkaa', 'zikamkaa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (34, 4, 'c', 2, 'سَلَامَ', 'salāma', 'salama', 'salāma', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (19, 3, 'a', 1, 'هَاتَ', 'hāṯa', 'hata', 'hāṯta', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (20, 3, 'a', 2, 'كُكِپَنْبَؤُوْكَ', 'kukipam̱baūka', 'kukipambauka', 'kukipam̱baūka', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (35, 4, 'd', 1, 'نْدِئَ', 'nḏia', 'ndia', 'nḏia', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (21, 3, 'b', 1, 'عَمُوْرِ', '''amūri', '''amuri', '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (22, 3, 'b', 2, 'أَكَتٗوْكَ', 'akaṯōka', 'akatoka', 'akaṯōka', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (23, 3, 'c', 1, 'كْوَ', 'kwa', 'kwa', 'kwa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (24, 3, 'c', 2, 'عَلِىْ', '''alii', '''alii', '''alii', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (48, 6, 'a', 1, 'نَسٖيْفُ', 'nasēfu', 'nasefu', 'na sēfu', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (25, 3, 'c', 3, 'أَكَفِيْكَ', 'akafı̄ka', 'akafika', 'akafı̄ka', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (26, 3, 'd', 1, 'سَوْتِ', 'sawṯi', 'sauti', 'sawṯi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (27, 3, 'd', 2, 'أَكَئِتٗؤَ', 'akaiṯoa', 'akaitoa', 'akaiṯoa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (36, 4, 'd', 2, 'إِنْڠَاۏَ', 'ingāw̱a', 'ingawa', 'ingāw̱a', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (37, 4, 'd', 3, 'طَوِلِيَ', 'ṭawiliya', 'tawiliya', 'ṭawiliya', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (28, 4, 'a', 1, 'عَلِىْ', '''alii', '''alii', '''alii', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (38, 5, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (39, 5, 'a', 2, 'كَرُوْدِ', 'karūḏi', 'karudi', 'karūḏi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (56, 6, 'd', 2, 'أَكَمْكَلِئَ', 'akamkalia', 'akamkalia', 'akamkalia', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (57, 7, 'a', 1, 'ۏَكٖيْنْڈَ', 'w̱akēnḑa', 'wakenda', 'w̱akēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (40, 5, 'a', 3, 'نْڈَانِ', 'nḑāni', 'ndani', 'nḑāni', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (41, 5, 'b', 1, 'كَئِلَبِيْسِ', 'kailabı̄si', 'kailabisi', 'kailabı̄si', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (42, 5, 'b', 2, 'يُوَانِ', 'yuwāni', 'yuwani', 'yuwāni', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (49, 6, 'a', 2, 'نْجٖيْمَ', 'njēma', 'njema', 'njēma', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (43, 5, 'c', 1, 'دِرِيْعِ', 'ḏirī''i', 'diri''i', 'ḏirī''i', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (44, 5, 'c', 2, 'زَ', 'za', 'za', 'za', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (50, 6, 'a', 3, 'أَسِيْسِ', 'ası̄si', 'asisi', 'ası̄si', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (62, 7, 'c', 2, 'نَبَحَارِ', 'nabaḥāri', 'nabahari', 'nabaḥāri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (51, 6, 'b', 1, 'نَرُمْحِ', 'narumḥi', 'narumhi', 'narumḥi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (52, 6, 'b', 2, 'نَتُرُوْسِ', 'naṯurūsi', 'naturusi', 'naṯurūsi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (63, 7, 'd', 1, 'نَمِيْٹِ', 'namı̄ţi', 'namiti', 'namı̄ţi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (58, 7, 'a', 2, 'تهَخُبِيْرِ', 'ṯʿakhubı̄ri', 'tahubiri', 'ṯʿakhubı̄ri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (53, 6, 'c', 1, 'أَكَمْپَانْڈَ', 'akampānḑa', 'akampanda', 'akampānḑa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (54, 6, 'c', 2, 'فَرَاسِ', 'farāsi', 'farasi', 'farāsi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (59, 7, 'b', 1, 'بِاللَّيْلِ', 'billayli', 'billayli', 'billayli', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (55, 6, 'd', 1, 'جُوْ', 'juu', 'juu', 'juu', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (60, 7, 'b', 2, 'وَالنَّهَارِ', 'wannahāri', 'wannahari', 'wannahāri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (61, 7, 'c', 1, 'ۏَكَپَنْبَانَ', 'w̱akapam̱bāna', 'wakapambana', 'w̱akapam̱bāna', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (64, 7, 'd', 2, 'نَمَطَرِيَ', 'namaṭariya', 'namatariya', 'namaṭariya', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (66, 8, 'a', 2, 'يُۏَانِ', 'yuw̱āni', 'yuwani', 'yuw̱āni', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (67, 8, 'b', 1, 'عَلِىْ', '''alii', '''alii', '''alii', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (65, 8, 'a', 1, 'ۏَكٖنٖينْڈَ', 'w̱akenēnḑa', 'wakenenda', 'w̱akenēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (69, 8, 'c', 1, 'نْدِئَ', 'nḏia', 'ndia', 'nḏia', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (72, 8, 'd', 1, 'عَمُوْرِ', '''amūri', '''amuri', '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (70, 8, 'c', 2, 'زِيْلِ', 'zı̄li', 'zili', 'zı̄li', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (74, 9, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '''amūri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (73, 8, 'd', 2, 'كَزِٹَنْبُؤَ', 'kaziţam̱bua', 'kazitambua', 'kaziţam̱bua', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (76, 9, 'b', 1, 'كَمْوَنبِئَ', 'kamwam̱bia', 'kamwambia', 'kamwam̱bia', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (75, 9, 'a', 2, 'كَذُكُوْرِ', 'kadhukūri', 'kadhukuri', 'kadhukūri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (78, 9, 'c', 1, 'دُرُوْبُ', 'ḏurūbu', 'durubu', 'ḏurūbu', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (77, 9, 'b', 2, 'حَيْدَرِ', 'ḥayḏari', 'haydari', 'ḥayḏari', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (1, 1, 'a', 1, 'أَكَتٗؤَ', 'akaṯoa', 'akatoa', 'akaṯoa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (10, 2, 'a', 2, 'كَحِمِيْدِ', 'kaḥimı̄ḏi', 'kahimidi', 'kaḥimı̄ḏi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (79, 9, 'c', 2, 'نْدَ', 'nḏa', 'nda', 'nḏa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (80, 9, 'c', 3, 'أَنْصَارِ', 'anṣāri', 'ansari', 'anṣāri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (81, 9, 'd', 1, 'نْبٗوْنَ', 'm̱bōna', 'mbona', 'm̱bōna', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (82, 9, 'd', 2, 'ٹْوَئِفُوَٹِئَ', 'ţwaifuwaţia', 'twaifuwatia', 'ţwaifuwaţia', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (83, 10, 'a', 1, 'نَاسِ', 'nāsi', 'nasi', 'nāsi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (84, 10, 'a', 2, 'ٹُمٖفَانْيَ', 'ţumefānya', 'tumefanya', 'ţumefānya', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (85, 10, 'a', 3, 'مَشَؤُوْرِ', 'mashaūri', 'mashauri', 'mashaūri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (86, 10, 'b', 1, 'يَكْوٖنٖينْڈَ', 'yakwenēnḑa', 'yakwenenda', 'yakwenēnḑa', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (87, 10, 'b', 2, 'سَفَارِ', 'safāri', 'safari', 'safāri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (88, 10, 'c', 1, 'كْوَنْڠَلِئَ', 'kwangalia', 'kwangalia', 'kwangalia', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (89, 10, 'c', 2, 'أَمْصَارِ', 'amṣāri', 'amsari', 'amṣāri', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (90, 10, 'd', 1, 'جُنُوْدِ', 'junūḏi', 'junudi', 'junūḏi', '', '', '', '');
INSERT INTO vita_vikuu_words VALUES (91, 10, 'd', 2, 'كُئِكُسَنْيِئَ', 'kuikusanyia', 'kuikusanyia', 'kuikusanyia', '', '', '', '');


--
-- Data for Name: vita_vikuu_words_orig; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu_words_orig VALUES (40, 142, 'a', 3, 'نْڈَانِ', 'nḑāni', 'ndani', '', '', '', '', 'ndani', '', 'nḑāni', 'نْڈَانِ', 'nḑāni');
INSERT INTO vita_vikuu_words_orig VALUES (75, 146, 'a', 2, 'كَذُكُوْرِ', 'kadhukūri', 'kadhukuri', '', '', '', '', 'ḏkr', '', 'kadhukūri', 'كَذُكُوْرِ', 'kadhukūri');
INSERT INTO vita_vikuu_words_orig VALUES (29, 141, 'a', 2, 'كَتَكَلَامَ', 'kaṯakalāma', 'katakalama', '', '', '', '', 'klm', '', 'kaṯakalāma', 'كَتَكَلَامَ', 'kaṯakalāma');
INSERT INTO vita_vikuu_words_orig VALUES (53, 143, 'c', 1, 'أَكَمْپَانْڈَ', 'akampānḑa', 'akampanda', '', '', '', '', 'pand', 'Then he mounted his steed,', 'akampānḑa', 'أَكَمْپَانْڈَ', 'akampānḑa');
INSERT INTO vita_vikuu_words_orig VALUES (44, 142, 'c', 2, 'زَ', 'za', 'za', '', '', '', '', 'a', '', 'za', 'زَ', 'za');
INSERT INTO vita_vikuu_words_orig VALUES (46, 142, 'd', 1, 'أَكَئِفُوْنْڠَ', 'akaifūnga', 'akaifunga', '', '', '', '', 'fung', 'and fastened it firmly upon himself.', 'akaifūnga', 'أَكَئِفُوْنْڠَ', 'akaifūnga');
INSERT INTO vita_vikuu_words_orig VALUES (82, 146, 'd', 2, 'ٹْوَئِفُوَٹِئَ', 'ţwaifuwaţia', 'twaifuwatia', '', '', '', '', 'fuat', '', 'ţwaifuwaţia', 'ٹْوَئِفُوَٹِئَ', 'ţwaifuwaţia');
INSERT INTO vita_vikuu_words_orig VALUES (83, 147, 'a', 1, 'نَاسِ', 'nāsi', 'nasi', '', '', '', '', 'sisi', 'For we have taken counsel ', 'nāsi', 'نَاسِ', 'nāsi');
INSERT INTO vita_vikuu_words_orig VALUES (84, 147, 'a', 2, 'ٹُمٖفَانْيَ', 'ţumefānya', 'tumefanya', '', '', '', '', 'fa', '', 'ţumefānya', 'ٹُمٖفَانْيَ', 'ţumefānya');
INSERT INTO vita_vikuu_words_orig VALUES (32, 141, 'b', 3, 'مُكَرَّمَ', 'mukarrama', 'mukarrama', '', '', '', '', 'krm', '', 'mukarrama', 'مُكَرَّمَ', 'mukarrama');
INSERT INTO vita_vikuu_words_orig VALUES (34, 141, 'c', 2, 'سَلَامَ', 'salāma', 'salama', '', '', '', '', 'slm', '', 'salāma', 'سَلَامَ', 'salāma');
INSERT INTO vita_vikuu_words_orig VALUES (8, 138, 'd', 2, 'كَٹٗئٖلٖئَ', 'kaţoelea', 'katoelea', '', '', '', '', 'to', '', 'kaţoelea', 'كَٹٗئٖلٖئَ', 'kaţoelea');
INSERT INTO vita_vikuu_words_orig VALUES (9, 139, 'a', 1, 'كِشَكُوْلَ', 'kishakūla', 'kishakula', '', '', '', '', 'l', 'When he finished eating he gave thanks', 'kishakūla', 'كِشَكُوْلَ', 'kishakūla');
INSERT INTO vita_vikuu_words_orig VALUES (10, 139, 'a', 2, 'كَحِمِيْدِ', 'kaḥimı̄ḏi', 'kahimidi', '', '', '', '', 'ḥmd', '', 'kaḥimı̄ḏi', 'كَحِمِيْدِ', 'kaḥimı̄ḏi');
INSERT INTO vita_vikuu_words_orig VALUES (11, 139, 'b', 1, 'ۏَاكٖ', 'w̱āke', 'wake', '', '', '', '', 'ake', 'to his beloved God,', 'w̱āke', 'ۏَاكٖ', 'w̱āke');
INSERT INTO vita_vikuu_words_orig VALUES (50, 143, 'a', 3, 'أَسِيْسِ', 'ası̄si', 'asisi', '', '', '', '', 'ass', '', 'ası̄si', 'أَسِيْسِ', 'ası̄si');
INSERT INTO vita_vikuu_words_orig VALUES (54, 143, 'c', 2, 'فَرَاسِ', 'farāsi', 'farasi', '', '', '', '', 'frs', '', 'farāsi', 'فَرَاسِ', 'farāsi');
INSERT INTO vita_vikuu_words_orig VALUES (12, 139, 'b', 2, 'إِلَاهِ', 'ilāhi', 'ilahi', '', '', '', '', 'alh', '', 'ilāhi', 'إِلَاهِ', 'ilāhi');
INSERT INTO vita_vikuu_words_orig VALUES (13, 139, 'b', 3, 'وَدُوْدِ', 'waḏūḏi', 'wadudi', '', '', '', '', 'wdd', '', 'waḏūḏi', 'وَدُوْدِ', 'waḏūḏi');
INSERT INTO vita_vikuu_words_orig VALUES (35, 141, 'd', 1, 'نْدِئَ', 'nḏia', 'ndia', '', '', '', '', 'njia', 'even if the road is long.', 'nḏia', 'نْدِئَ', 'nḏia');
INSERT INTO vita_vikuu_words_orig VALUES (85, 147, 'a', 3, 'مَشَؤُوْرِ', 'mashaūri', 'mashauri', '', '', '', '', 's̱wr', '', 'mashaūri', 'مَشَؤُوْرِ', 'mashaūri');
INSERT INTO vita_vikuu_words_orig VALUES (87, 147, 'b', 2, 'سَفَارِ', 'safāri', 'safari', '', '', '', '', 'sfr', '', 'safāri', 'سَفَارِ', 'safāri');
INSERT INTO vita_vikuu_words_orig VALUES (1, 138, 'a', 1, 'أَكَتٗؤَ', 'akaṯoa', 'akatoa', '', '', '', '', 'to', 'He took out dates', 'akaṯoa', 'أَكَتٗؤَ', 'akaṯoa');
INSERT INTO vita_vikuu_words_orig VALUES (58, 144, 'a', 2, 'تهَخُبِيْرِ', 'ṯʿaẖubı̄ri', 'tahubiri', '', '', '', '', 'ẖbr', '', 'ṯʿaẖubı̄ri', 'تهَخُبِيْرِ', 'ṯʿaẖubı̄ri');
INSERT INTO vita_vikuu_words_orig VALUES (72, 145, 'd', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri recognised them.', '''amūri', 'عَمُوْرِ', '''amūri');
INSERT INTO vita_vikuu_words_orig VALUES (78, 146, 'c', 1, 'دُرُوْبُ', 'ḏurūbu', 'durubu', '', '', '', '', 'drb', 'This is the Companions'' road', 'ḏurūbu', 'دُرُوْبُ', 'ḏurūbu');
INSERT INTO vita_vikuu_words_orig VALUES (61, 144, 'c', 1, 'ۏَكَپَنْبَانَ', 'w̱akapam̱bāna', 'wakapambana', '', '', '', '', 'pamb', 'And they encountered oceans,', 'w̱akapam̱bāna', 'ۏَكَپَنْبَانَ', 'w̱akapam̱bāna');
INSERT INTO vita_vikuu_words_orig VALUES (7, 138, 'd', 1, 'كَكهٖيْتِ', 'kakʿēṯi', 'kaketi', '', '', '', '', 'ka', 'he sat down and took [them] out.', 'kakʿēṯi', 'كَكهٖيْتِ', 'kakʿēṯi');
INSERT INTO vita_vikuu_words_orig VALUES (14, 139, 'c', 1, 'مُؤُوْنْبَ', 'muūm̱ba', 'muumba', '', '', '', '', 'umb', 'The Creator of all individuals - ', 'muūm̱ba', 'مُؤُوْنْبَ', 'muūm̱ba');
INSERT INTO vita_vikuu_words_orig VALUES (19, 140, 'a', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', 'hata', 'Until, when dawn came,', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO vita_vikuu_words_orig VALUES (27, 140, 'd', 2, 'أَكَئِتٗؤَ', 'akaiṯoa', 'akaitoa', '', '', '', '', 'to', '', 'akaiṯoa', 'أَكَئِتٗؤَ', 'akaiṯoa');
INSERT INTO vita_vikuu_words_orig VALUES (41, 142, 'b', 1, 'كَئِلَبِيْسِ', 'kailabı̄si', 'kailabisi', '', '', '', '', 'lbs', 'know that he dressed himself', 'kailabı̄si', 'كَئِلَبِيْسِ', 'kailabı̄si');
INSERT INTO vita_vikuu_words_orig VALUES (45, 142, 'c', 3, 'أُۏَنْدَانِ', 'uw̱anḏāni', 'uwandani', '', '', '', '@أُۏَنْدَ@ (uwanda) is an #open space#, and by extension a #battlefield#.', 'wand', '', 'uw̱anḏāni', 'أُۏَنْدَانِ', 'uw̱anḏāni');
INSERT INTO vita_vikuu_words_orig VALUES (2, 138, 'a', 2, 'تَمَارِ', 'ṯamāri', 'tamari', '', '', '', '', 'tmr', '', 'ṯamāri', 'تَمَارِ', 'ṯamāri');
INSERT INTO vita_vikuu_words_orig VALUES (49, 143, 'a', 2, 'نْجٖيْمَ', 'njēma', 'njema', '', '', '', '', 'ema', '', 'njēma', 'نْجٖيْمَ', 'njēma');
INSERT INTO vita_vikuu_words_orig VALUES (31, 141, 'b', 2, 'يَا', 'yā', 'ya', '', '', '', '', 'ya', '', 'yā', 'يَا', 'yā');
INSERT INTO vita_vikuu_words_orig VALUES (36, 141, 'd', 2, 'إِنْڠَاۏَ', 'ingāw̱a', 'ingawa', '', '', '', '', 'ingawa', '', 'ingāw̱a', 'إِنْڠَاۏَ', 'ingāw̱a');
INSERT INTO vita_vikuu_words_orig VALUES (15, 139, 'c', 2, 'زٗوْتهٖ', 'zōṯʿe', 'zote', '', '', '', '', 'ote', '', 'zōṯʿe', 'زٗوْتهٖ', 'zōṯʿe');
INSERT INTO vita_vikuu_words_orig VALUES (16, 139, 'c', 3, 'جَسَادِ', 'jasāḏi', 'jasadi', '', '', '', '', 'jsd', '', 'jasāḏi', 'جَسَادِ', 'jasāḏi');
INSERT INTO vita_vikuu_words_orig VALUES (17, 139, 'd', 1, 'مَعَدُوِ', 'ma''aḏuwi', 'ma''aduwi', '', '', '', '', '''dw', 'both enemies and friends.', 'ma''aḏuwi', 'مَعَدُوِ', 'ma''aḏuwi');
INSERT INTO vita_vikuu_words_orig VALUES (20, 140, 'a', 2, 'كُكِپَنْبَؤُوْكَ', 'kukipam̱baūka', 'kukipambauka', '', '', '', '', 'pamba', '', 'kukipam̱baūka', 'كُكِپَنْبَؤُوْكَ', 'kukipam̱baūka');
INSERT INTO vita_vikuu_words_orig VALUES (21, 140, 'b', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri came out', '''amūri', 'عَمُوْرِ', '''amūri');
INSERT INTO vita_vikuu_words_orig VALUES (22, 140, 'b', 2, 'أَكَتٗوْكَ', 'akaṯōka', 'akatoka', '', '', '', '', 'to', '', 'akaṯōka', 'أَكَتٗوْكَ', 'akaṯōka');
INSERT INTO vita_vikuu_words_orig VALUES (23, 140, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', 'a', 'He arrived beside Ali', 'kwa', 'كْوَ', 'kwa');
INSERT INTO vita_vikuu_words_orig VALUES (37, 141, 'd', 3, 'طَوِلِيَ', 'ṭawiliya', 'tawiliya', '', '', '', '', 'ṭal', '', 'ṭawiliya', 'طَوِلِيَ', 'ṭawiliya');
INSERT INTO vita_vikuu_words_orig VALUES (38, 142, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri went back inside;', '''amūri', 'عَمُوْرِ', '''amūri');
INSERT INTO vita_vikuu_words_orig VALUES (24, 140, 'c', 2, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', '', '''alii', 'عَلِىْ', '''alii');
INSERT INTO vita_vikuu_words_orig VALUES (25, 140, 'c', 3, 'أَكَفِيْكَ', 'akafı̄ka', 'akafika', '', '', '', '', 'fik', '', 'akafı̄ka', 'أَكَفِيْكَ', 'akafı̄ka');
INSERT INTO vita_vikuu_words_orig VALUES (42, 142, 'b', 2, 'يُوَانِ', 'yuwāni', 'yuwani', '', '', '', '', 'ju', '', 'yuwāni', 'يُوَانِ', 'yuwāni');
INSERT INTO vita_vikuu_words_orig VALUES (43, 142, 'c', 1, 'دِرِيْعِ', 'ḏirī''i', 'diri''i', '', '', '', '', 'dr''', 'In battle-armour,', 'ḏirī''i', 'دِرِيْعِ', 'ḏirī''i');
INSERT INTO vita_vikuu_words_orig VALUES (55, 143, 'd', 1, 'جُوْ', 'juu', 'juu', '', '', '', '', 'juu', 'and seated himself upon it.', 'juu', 'جُوْ', 'juu');
INSERT INTO vita_vikuu_words_orig VALUES (47, 142, 'd', 2, 'زِكَمْكَاءَ', 'zikamkāa', 'zikamkaa', '', '', '', 'Lit. #and bound himself so that [the armour] stayed on him#.', 'ka', '', 'zikamkāa', 'زِكَمْكَاءَ', 'zikamkāa');
INSERT INTO vita_vikuu_words_orig VALUES (56, 143, 'd', 2, 'أَكَمْكَلِئَ', 'akamkalia', 'akamkalia', '', '', '', '', 'ka', '', 'akamkalia', 'أَكَمْكَلِئَ', 'akamkalia');
INSERT INTO vita_vikuu_words_orig VALUES (77, 146, 'b', 2, 'حَيْدَرِ', 'ḥayḏari', 'haydari', '', '', '', 'A frequently-used metonym for Ali.', 'ḥdr', '', 'ḥayḏari', 'حَيْدَرِ', 'ḥayḏari');
INSERT INTO vita_vikuu_words_orig VALUES (79, 146, 'c', 2, 'نْدَ', 'nḏa', 'nda', '', '', '', '', 'a', '', 'nḏa', 'نْدَ', 'nḏa');
INSERT INTO vita_vikuu_words_orig VALUES (81, 146, 'd', 1, 'نْبٗوْنَ', 'm̱bōna', 'mbona', '', '', '', '', 'mbona', 'why are we following it?', 'm̱bōna', 'نْبٗوْنَ', 'm̱bōna');
INSERT INTO vita_vikuu_words_orig VALUES (89, 147, 'c', 2, 'أَمْصَارِ', 'amṣāri', 'amsari', '', '', '', '', 'mṣr', '', 'amṣāri', 'أَمْصَارِ', 'amṣāri');
INSERT INTO vita_vikuu_words_orig VALUES (90, 147, 'd', 1, 'جُنُوْدِ', 'junūḏi', 'junudi', '', '', '', '', 'jnd', 'while the army assembles.', 'junūḏi', 'جُنُوْدِ', 'junūḏi');
INSERT INTO vita_vikuu_words_orig VALUES (91, 147, 'd', 2, 'كُئِكُسَنْيِئَ', 'kuikusanyia', 'kuikusanyia', '', '', '', '', 'kut', '', 'kuikusanyia', 'كُئِكُسَنْيِئَ', 'kuikusanyia');
INSERT INTO vita_vikuu_words_orig VALUES (39, 142, 'a', 2, 'كَرُوْدِ', 'karūḏi', 'karudi', '', '', 'B: @أَكٖينْڈَ@ #akēnḑa#', '', 'rdd', '', 'karūḏi', 'كَرُوْدِ', 'karūḏi');
INSERT INTO vita_vikuu_words_orig VALUES (57, 144, 'a', 1, 'ۏَكٖيْنْڈَ', 'w̱akēnḑa', 'wakenda', '', '', '', '', 'end', 'They went, I''ll tell you, ', 'w̱akēnḑa', 'ۏَكٖيْنْڈَ', 'w̱akēnḑa');
INSERT INTO vita_vikuu_words_orig VALUES (76, 146, 'b', 1, 'كَمْوَنبِئَ', 'kamwam̱bia', 'kamwambia', '', '', '', '', 'amb', 'and said to the Lion:', 'kamwam̱bia', 'كَمْوَنبِئَ', 'kamwam̱bia');
INSERT INTO vita_vikuu_words_orig VALUES (59, 144, 'b', 1, 'بِاللَّيْلِ', 'bi-llayli', 'bi-layli', '', '', '', '', 'lyl', 'by night and day,', 'bi-llayli', 'بِاللَّيْلِ', 'bi-llayli');
INSERT INTO vita_vikuu_words_orig VALUES (60, 144, 'b', 2, 'وَالنَّهَارِ', 'wa-nnahāri', 'wa-nahari', '', '', '', '', 'nhr', '', 'wa-nnahāri', 'وَالنَّهَارِ', 'wa-nnahāri');
INSERT INTO vita_vikuu_words_orig VALUES (65, 145, 'a', 1, 'ۏَكٖنٖينْڈَ', 'w̱akenēnḑa', 'wakenenda', '', '', '', '', 'end', 'Know that they went on,', 'w̱akenēnḑa', 'ۏَكٖنٖينْڈَ', 'w̱akenēnḑa');
INSERT INTO vita_vikuu_words_orig VALUES (66, 145, 'a', 2, 'يُۏَانِ', 'yuw̱āni', 'yuwani', '', '', '', '', 'ju', '', 'yuw̱āni', 'يُۏَانِ', 'yuw̱āni');
INSERT INTO vita_vikuu_words_orig VALUES (67, 145, 'b', 1, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', 'Ali and the Accursed One;', '''alii', 'عَلِىْ', '''alii');
INSERT INTO vita_vikuu_words_orig VALUES (68, 145, 'b', 2, 'نَمَلِعُوْنِ', 'namali''ūni', 'namali''uni', '', '', '', '', 'l''n', '', 'namali''ūni', 'نَمَلِعُوْنِ', 'namali''ūni');
INSERT INTO vita_vikuu_words_orig VALUES (69, 145, 'c', 1, 'نْدِئَ', 'nḏia', 'ndia', '', '', '', '', 'njia', 'These roads [led to] Medina - ', 'nḏia', 'نْدِئَ', 'nḏia');
INSERT INTO vita_vikuu_words_orig VALUES (70, 145, 'c', 2, 'زِيْلِ', 'zı̄li', 'zili', '', '', '', '', 'ili', '', 'zı̄li', 'زِيْلِ', 'zı̄li');
INSERT INTO vita_vikuu_words_orig VALUES (73, 145, 'd', 2, 'كَزِٹَنْبُؤَ', 'kaziţam̱bua', 'kazitambua', '', '', '', '', 'tamb', '', 'kaziţam̱bua', 'كَزِٹَنْبُؤَ', 'kaziţam̱bua');
INSERT INTO vita_vikuu_words_orig VALUES (74, 146, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri spoke', '''amūri', 'عَمُوْرِ', '''amūri');
INSERT INTO vita_vikuu_words_orig VALUES (80, 146, 'c', 3, 'أَنْصَارِ', 'anṣāri', 'ansari', '', '', '', 'The Ansari were the Muslims of Medina who gave refuge to the Prophet after the Hegira.  Possibly this word is in error for @أَمْصَارِ@, #city#, used in the next stanza.', 'nṣr', '', 'anṣāri', 'أَنْصَارِ', 'anṣāri');
INSERT INTO vita_vikuu_words_orig VALUES (88, 147, 'c', 1, 'كْوَنْڠَلِئَ', 'kwangalia', 'kwangalia', '', '', '', '', 'ang', 'to reconnoitre the city', 'kwangalia', 'كْوَنْڠَلِئَ', 'kwangalia');
INSERT INTO vita_vikuu_words_orig VALUES (33, 141, 'c', 1, 'ٹُتَوَصِيْل', 'ţuṯawaṣı̄l', 'tutawasil', 'ţuṯawaṣı̄l#i#', '', '', '', 'wṣl', 'We shall arrive safely', 'ţuṯawaṣı̄li', 'ٹُتَوَصِيْل', 'ţuṯawaṣı̄l');
INSERT INTO vita_vikuu_words_orig VALUES (30, 141, 'b', 1, 'أَهْلاً', 'ahlāⁿ', 'ahla', 'ah#a#lāⁿ', '', '', '', 'ahl', 'Greetings, Honoured One', 'ahalāⁿ', 'أَهْلاً', 'ahlāⁿ');
INSERT INTO vita_vikuu_words_orig VALUES (26, 140, 'd', 1, 'سَوْتِ', 'sawṯi', 'sauti', '', '', '', '', 'swt', 'and [Ali] spoke.', 'sawṯi', 'سَوْتِ', 'sawṯi');
INSERT INTO vita_vikuu_words_orig VALUES (28, 141, 'a', 1, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', 'Ali said', '''alii', 'عَلِىْ', '''alii');
INSERT INTO vita_vikuu_words_orig VALUES (6, 138, 'c', 2, 'أَصْفَرِ', 'aṣfari', 'asfari', 'aṣ#u#fari', '', '', 'The salt is yellow because it is unpurified rock-salt, containing iodine.', 'ṣfr', '', 'aṣufari', 'أَصْفَرِ', 'aṣfari');
INSERT INTO vita_vikuu_words_orig VALUES (5, 138, 'c', 1, 'نَمِلْحِ', 'namilḥi', 'namilhi', 'namil#i#ḥi', 'na', '', '', 'mlḥ', 'And yellow salt - ', 'miliḥi', 'مِلْحِ', 'milḥi');
INSERT INTO vita_vikuu_words_orig VALUES (4, 138, 'b', 2, 'يَشَعِيْرِ', 'yasha''ı̄ri', 'yasha''iri', '', 'ya', '', '', 's̱''r', '', 'sha''ı̄ri', 'شَعِيْرِ', 'sha''ı̄ri');
INSERT INTO vita_vikuu_words_orig VALUES (3, 138, 'b', 1, 'نَخُبُوزِ', 'naẖubūzi', 'nahubuzi', '', 'na', '', '', 'ẖbz', 'and barley bread', 'ẖubūzi', 'خُبُوزِ', 'ẖubūzi');
INSERT INTO vita_vikuu_words_orig VALUES (52, 143, 'b', 2, 'نَتُرُوْسِ', 'naṯurūsi', 'naturusi', '', 'na', '', '', 'trs', '', 'ṯurūsi', 'تُرُوْسِ', 'ṯurūsi');
INSERT INTO vita_vikuu_words_orig VALUES (18, 139, 'd', 2, 'نَمَوَلِيْ', 'namawalii', 'namawalii', '', 'na', '', 'The implication is that these are friends and enemies of Islam.', 'wly', '', 'mawalii', 'مَوَلِيْ', 'mawalii');
INSERT INTO vita_vikuu_words_orig VALUES (48, 143, 'a', 1, 'نَسٖيْفُ', 'nasēfu', 'nasefu', '', 'na', '', '', 'syf', 'And [took up] a good, stout sword,', 'sēfu', 'سٖيْفُ', 'sēfu');
INSERT INTO vita_vikuu_words_orig VALUES (62, 144, 'c', 2, 'نَبَحَارِ', 'nabaḥāri', 'nabahari', '', 'na', '', '', 'bḥr', '', 'baḥāri', 'بَحَارِ', 'baḥāri');
INSERT INTO vita_vikuu_words_orig VALUES (63, 144, 'd', 1, 'نَمِيْٹِ', 'namı̄ţi', 'namiti', '', 'na', '', '', 'ti', 'and forests, and oases.', 'mı̄ţi', 'مِيْٹِ', 'mı̄ţi');
INSERT INTO vita_vikuu_words_orig VALUES (71, 145, 'c', 3, 'زَمَدِيْنِ', 'zamaḏı̄ni', 'zamadini', '', 'za', '', '', 'mdn', '', 'maḏı̄ni', 'مَدِيْنِ', 'maḏı̄ni');
INSERT INTO vita_vikuu_words_orig VALUES (64, 144, 'd', 2, 'نَمَطَرِيَ', 'namaṭariya', 'namatariya', '', 'na', '', 'Ar @مطر@ #rain#.  Seemingly used by extension here to mean a place with water.', 'mṭr', '', 'maṭariya', 'مَطَرِيَ', 'maṭariya');
INSERT INTO vita_vikuu_words_orig VALUES (86, 147, 'b', 1, 'يَكْوٖنٖينْڈَ', 'yakwenēnḑa', 'yakwenenda', '', 'ya', '', '', 'end', 'about going on the journey,', 'kwenēnḑa', 'كْوٖنٖينْڈَ', 'kwenēnḑa');
INSERT INTO vita_vikuu_words_orig VALUES (51, 143, 'b', 1, 'نَرُمْحِ', 'narumḥi', 'narumhi', 'narum#u#ḥi', 'na', '', '', 'rmḥ', 'and a spear, and a shield.', 'rumuḥi', 'رُمْحِ', 'rumḥi');


--
-- Name: vita_vikuu_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('vita_vikuu_words_word_id_seq', 91, true);


--
-- Name: vita_vikuu_words_word_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('vita_vikuu_words_word_id_seq1', 91, true);


--
-- Name: jaafari_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY jaafari
    ADD CONSTRAINT jaafari_pk PRIMARY KEY (poemline_id);


--
-- Name: jaafari_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY jaafari_words
    ADD CONSTRAINT jaafari_words_pk PRIMARY KEY (word_id);


--
-- Name: kiswahili_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY kiswahili
    ADD CONSTRAINT kiswahili_pk PRIMARY KEY (poemline_id);


--
-- Name: kiswahili_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY kiswahili_words
    ADD CONSTRAINT kiswahili_words_pk PRIMARY KEY (word_id);


--
-- Name: machozi_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY machozi
    ADD CONSTRAINT machozi_pk PRIMARY KEY (poemline_id);


--
-- Name: maisha_ar_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY maisha_ar
    ADD CONSTRAINT maisha_ar_pk PRIMARY KEY (poemline_id);


--
-- Name: maisha_mume_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY maisha_mume
    ADD CONSTRAINT maisha_mume_pk PRIMARY KEY (poemline_id);


--
-- Name: maisha_mume_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY maisha_mume_words
    ADD CONSTRAINT maisha_mume_words_pk PRIMARY KEY (word_id);


--
-- Name: maisha_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY maisha
    ADD CONSTRAINT maisha_pk PRIMARY KEY (poemline_id);


--
-- Name: ulimi_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY ulimi
    ADD CONSTRAINT ulimi_pk PRIMARY KEY (poemline_id);


--
-- Name: vita_vikuu_orig_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY vita_vikuu_orig
    ADD CONSTRAINT vita_vikuu_orig_pk PRIMARY KEY (poemline_id);


--
-- Name: vita_vikuu_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY vita_vikuu
    ADD CONSTRAINT vita_vikuu_pk PRIMARY KEY (poemline_id);


--
-- Name: vita_vikuu_words_orig_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY vita_vikuu_words_orig
    ADD CONSTRAINT vita_vikuu_words_orig_pk PRIMARY KEY (word_id);


--
-- Name: vita_vikuu_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY vita_vikuu_words
    ADD CONSTRAINT vita_vikuu_words_pk PRIMARY KEY (word_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

