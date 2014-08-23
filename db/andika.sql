--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

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
    pos character varying(5),
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


ALTER TABLE public.kiswahili_backup OWNER TO kevin;

--
-- Name: kiswahili_notes; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE kiswahili_notes (
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


ALTER TABLE public.kiswahili_notes OWNER TO kevin;

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
-- Name: vita_vikuu; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu (
    poemline_id integer NOT NULL,
    stanza integer,
    pos character varying(5),
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


ALTER TABLE public.vita_vikuu_backup OWNER TO kevin;

--
-- Name: vita_vikuu_notes; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_notes (
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


ALTER TABLE public.vita_vikuu_notes OWNER TO kevin;

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

ALTER SEQUENCE vita_vikuu_poemline_id_seq OWNED BY vita_vikuu.poemline_id;


--
-- Name: vita_vikuu_words; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE vita_vikuu_words (
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


ALTER TABLE public.vita_vikuu_words OWNER TO kevin;

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

ALTER SEQUENCE vita_vikuu_words_word_id_seq OWNED BY vita_vikuu_words.word_id;


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

ALTER TABLE ONLY vita_vikuu ALTER COLUMN poemline_id SET DEFAULT nextval('vita_vikuu_poemline_id_seq'::regclass);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY vita_vikuu_words ALTER COLUMN word_id SET DEFAULT nextval('vita_vikuu_words_word_id_seq'::regclass);


--
-- Data for Name: jaafari; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY jaafari (poemline_id, stanza, pos, arabic, close, standard, english) FROM stdin;
1	1	a	بِسْمِ اللّٰهِ إِخْوَانِ 	bismi llähi iẖwāni	bismi llahi ihwani	
2	1	b	 پَمْوٖ نَ رَحْمٰنِ	pamwe na raḥmäni	pamwe na rahmani	
3	1	c	نَ الرَّحِيْمُ يُوَنِ 	na rraḥı̄mu yuwani	na rrahimu yuwani	
4	1	d	 نْدِيٗ يَلٗأَنْدَمِيَ	nḏiyo yaloanḏamiya	ndiyo yaloandamiya	
5	2	a	پُلِكَنِ نْدُزَنْڠُ 	pulikani nḏuzangu	pulikani nduzangu	
6	2	b	 كهٖنْدَ مَتٖمْبٖزِ يَنْڠُ	kʿenḏa maṯembezi yangu	kenda matembezi yangu	
7	2	c	نِوَپٖ خَبَرِ زَنْڠُ 	niwape ẖabari zangu	niwape habari zangu	
8	2	d	 قِصَ چَلٗنِجِرِيَ	qiṣa chalonijiriya	qisa chalonijiriya	
9	3	a	نِلِ نٖنْدَءٗ نْدِيَنِ 	nili nenḏao nḏiyani	nili nendao ndiyani	
10	3	b	كْوَلِ نَ مْٹُ چُمْبَنِ	kwali na mţu chumbani	kwali na mtu chumbani	
11	3	c	مٗيٗ أُكَمْتَمَنِ 	moyo ukamṯamani	moyo ukamtamani	
12	3	d	 كْوَ حَلَالِ كُرِضِيَ	kwa ḥalāli kuriḍiya	kwa halali kuridhiya	
13	4	a	نَمَهَرِيٖ يُوَنِ 	namahariye yuwani	namahariye yuwani	
14	4	b	 نَلٗمْپَ زَيْدَنِ	nalompa zayḏani	nalompa zaydani	
15	4	c	نَلِنَ پٖٹٖ چَنْدَنِ 	nalina peţe chanḏani	nalina pete chandani	
16	4	d	 هَوَهِ كُمْڤَلِيَ	hawahi kumvaliya	hawahi kumvaliya	
17	5	a	عَلى كُتٗكَ كْوَكٖ 	'alı̄ kuṯoka kwake	'ali kutoka kwake	
18	5	b	 أُنَ رُبَ مٗيٗ وَكٖ	una ruba moyo wake	una ruba moyo wake	
19	5	c	أَكٖنْدَ كْوَ مْكٖ وَكٖ 	akenḏa kwa mke wake	akenda kwa mke wake	
20	5	d	 مْكٗنٗ هُمْفُمْبِيَ	mkono humfumbiya	mkono humfumbiya	
21	6	a	مْوَنَ بِنْتِ رَسُوْلِ 	mwana binṯi rasūli	mwana binti rasuli	
22	6	b	 يَلِ هَيَتَأَمَلِ	yali hayaṯaamali	yali hayataamali	
23	6	c	كَنٖنْدَ مْوٖنْيٖ عقِلِ 	kanenḏa mwenye 'qili	kanenda mwenye 'qili	
24	6	d	 خَبَرِ أكَمْوَمْبِيَ	ẖabari kamwambiya	habari kamwambiya	
25	7	a	أَكٖنٖنْدَءٖ كِزٖيْ 	akenenḏae kizee	akenendae kizee	
26	7	b	 فَاطِمَه أكَمْوَمْبِيٖ	fāṭimah kamwambiye	fatimah kamwambiye	
27	7	c	شٖيْحٖ عَليْ أُوٗزٖيْ 	shēḥe 'alı̄ uwozee	shehe 'ali uwozee	
28	7	d	 خَبَرِ هُكِسِكِيَ	ẖabari hukisikiya	habari hukisikiya	
29	8	a	أَكَفَنْيَ مْشَوَشَ 	akafanya mshawasha	akafanya mshawasha	
30	8	b	 فَاطِمَه كَمْكَنُشَ	fāṭimah kamkanusha	fatimah kamkanusha	
31	8	c	عَلَامَ كَمُؤٗنٖشَ 	'alāma kamuonesha	'alama kamuonesha	
32	8	d	 أُتُنْڠُ أَكَمْٹِيَ	uṯungu akamţiya	utungu akamtiya	
33	9	a	9	9	9	
\.


--
-- Data for Name: jaafari_backup; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY jaafari_backup (word_id, stanza, pos, location, arabic, close, standard, lemma, segment, variant, note, root, english, word) FROM stdin;
31	3	d	1	كْوَ	kwa	kwa							
32	3	d	2	حَلَالِ	ḥalāli	halali							
33	3	d	3	كُرِضِيَ	kuriḍiya	kuridhiya							
1	1	a	1	بِسْمِ	bismi	bismi							
2	1	a	2	اللّٰهِ	llähi	llahi							
3	1	a	3	إِخْوَانِ	iẖwāni	ihwani							
52	5	c	3	مْكٖ	mke	mke							
4	1	b	1	پَمْوٖ	pamwe	pamwe							
5	1	b	2	نَ	na	na							
6	1	b	3	رَحْمٰنِ	raḥmäni	rahmani							
53	5	c	4	وَكٖ	wake	wake							
34	4	a	1	نَمَهَرِيٖ	namahariye	namahariye							
35	4	a	2	يُوَنِ	yuwani	yuwani							
7	1	c	1	نَ	na	na							
8	1	c	2	الرَّحِيْمُ	rraḥı̄mu	rrahimu							
9	1	c	3	يُوَنِ	yuwani	yuwani							
10	1	d	1	نْدِيٗ	nḏiyo	ndiyo							
11	1	d	2	يَلٗأَنْدَمِيَ	yaloanḏamiya	yaloandamiya							
12	2	a	1	پُلِكَنِ	pulikani	pulikani							
13	2	a	2	نْدُزَنْڠُ	nḏuzangu	nduzangu							
36	4	b	1	نَلٗمْپَ	nalompa	nalompa							
37	4	b	2	زَيْدَنِ	zayḏani	zaydani							
14	2	b	1	كهٖنْدَ	kʿenḏa	kenda							
15	2	b	2	مَتٖمْبٖزِ	maṯembezi	matembezi							
16	2	b	3	يَنْڠُ	yangu	yangu							
65	6	d	2	أكَمْوَمْبِيَ	kamwambiya	kamwambiya							
17	2	c	1	نِوَپٖ	niwape	niwape							
18	2	c	2	خَبَرِ	ẖabari	habari							
19	2	c	3	زَنْڠُ	zangu	zangu							
54	5	d	1	مْكٗنٗ	mkono	mkono							
20	2	d	1	قِصَ	qiṣa	qisa							
21	2	d	2	چَلٗنِجِرِيَ	chalonijiriya	chalonijiriya							
38	4	c	1	نَلِنَ	nalina	nalina							
39	4	c	2	پٖٹٖ	peţe	pete							
40	4	c	3	چَنْدَنِ	chanḏani	chandani							
22	3	a	1	نِلِ	nili	nili							
23	3	a	2	نٖنْدَءٗ	nenḏao	nendao							
24	3	a	3	نْدِيَنِ	nḏiyani	ndiyani							
55	5	d	2	هُمْفُمْبِيَ	humfumbiya	humfumbiya							
25	3	b	1	كْوَلِ	kwali	kwali							
26	3	b	2	نَ	na	na							
27	3	b	3	مْٹُ	mţu	mtu							
28	3	b	4	چُمْبَنِ	chumbani	chumbani							
41	4	d	1	هَوَهِ	hawahi	hawahi							
42	4	d	2	كُمْڤَلِيَ	kumvaliya	kumvaliya							
29	3	c	1	مٗيٗ	moyo	moyo							
30	3	c	2	أُكَمْتَمَنِ	ukamṯamani	ukamtamani							
80	8	c	2	كَمُؤٗنٖشَ	kamuonesha	kamuonesha							
77	8	b	1	فَاطِمَه	fāṭimah	fatimah							
56	6	a	1	مْوَنَ	mwana	mwana							
43	5	a	1	عَلى	'alı̄	'ali							
44	5	a	2	كُتٗكَ	kuṯoka	kutoka							
45	5	a	3	كْوَكٖ	kwake	kwake							
57	6	a	2	بِنْتِ	binṯi	binti							
58	6	a	3	رَسُوْلِ	rasūli	rasuli							
46	5	b	1	أُنَ	una	una							
47	5	b	2	رُبَ	ruba	ruba							
48	5	b	3	مٗيٗ	moyo	moyo							
49	5	b	4	وَكٖ	wake	wake							
66	7	a	1	أَكٖنٖنْدَءٖ	akenenḏae	akenendae							
67	7	a	2	كِزٖيْ	kizee	kizee							
50	5	c	1	أَكٖنْدَ	akenḏa	akenda							
51	5	c	2	كْوَ	kwa	kwa							
59	6	b	1	يَلِ	yali	yali							
60	6	b	2	هَيَتَأَمَلِ	hayaṯaamali	hayataamali							
73	7	d	1	خَبَرِ	ẖabari	habari							
74	7	d	2	هُكِسِكِيَ	hukisikiya	hukisikiya							
68	7	b	1	فَاطِمَه	fāṭimah	fatimah							
61	6	c	1	كَنٖنْدَ	kanenḏa	kanenda							
62	6	c	2	مْوٖنْيٖ	mwenye	mwenye							
63	6	c	3	عقِلِ	'qili	'qili							
69	7	b	2	أكَمْوَمْبِيٖ	kamwambiye	kamwambiye							
64	6	d	1	خَبَرِ	ẖabari	habari							
78	8	b	2	كَمْكَنُشَ	kamkanusha	kamkanusha							
70	7	c	1	شٖيْحٖ	shēḥe	shehe							
71	7	c	2	عَليْ	'alı̄	'ali							
72	7	c	3	أُوٗزٖيْ	uwozee	uwozee							
75	8	a	1	أَكَفَنْيَ	akafanya	akafanya							
76	8	a	2	مْشَوَشَ	mshawasha	mshawasha							
81	8	d	1	أُتُنْڠُ	uṯungu	utungu							
79	8	c	1	عَلَامَ	'alāma	'alama							
83	9	a	1	9	9	9							
82	8	d	2	أَكَمْٹِيَ	akamţiya	akamtiya							
\.


--
-- Data for Name: jaafari_notes; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY jaafari_notes (stanza, pos, location, lemma, segment, variant, note, root, english) FROM stdin;
\.


--
-- Name: jaafari_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_poemline_id_seq', 33, true);


--
-- Data for Name: jaafari_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY jaafari_words (word_id, stanza, pos, location, arabic, close, standard, lemma, segment, variant, note, root, english, word) FROM stdin;
31	3	d	1	كْوَ	kwa	kwa							kwa
32	3	d	2	حَلَالِ	ḥalāli	halali							ḥalāli
33	3	d	3	كُرِضِيَ	kuriḍiya	kuridhiya							kuriḍiya
1	1	a	1	بِسْمِ	bismi	bismi							bismi
2	1	a	2	اللّٰهِ	llähi	llahi							llähi
3	1	a	3	إِخْوَانِ	iẖwāni	ihwani							iẖwāni
52	5	c	3	مْكٖ	mke	mke							mke
4	1	b	1	پَمْوٖ	pamwe	pamwe							pamwe
5	1	b	2	نَ	na	na							na
6	1	b	3	رَحْمٰنِ	raḥmäni	rahmani							raḥmäni
53	5	c	4	وَكٖ	wake	wake							wake
34	4	a	1	نَمَهَرِيٖ	namahariye	namahariye							namahariye
35	4	a	2	يُوَنِ	yuwani	yuwani							yuwani
7	1	c	1	نَ	na	na							na
8	1	c	2	الرَّحِيْمُ	rraḥı̄mu	rrahimu							rraḥı̄mu
9	1	c	3	يُوَنِ	yuwani	yuwani							yuwani
10	1	d	1	نْدِيٗ	nḏiyo	ndiyo							nḏiyo
11	1	d	2	يَلٗأَنْدَمِيَ	yaloanḏamiya	yaloandamiya							yaloanḏamiya
12	2	a	1	پُلِكَنِ	pulikani	pulikani							pulikani
13	2	a	2	نْدُزَنْڠُ	nḏuzangu	nduzangu							nḏuzangu
36	4	b	1	نَلٗمْپَ	nalompa	nalompa							nalompa
37	4	b	2	زَيْدَنِ	zayḏani	zaydani							zayḏani
14	2	b	1	كهٖنْدَ	kʿenḏa	kenda							kʿenḏa
15	2	b	2	مَتٖمْبٖزِ	maṯembezi	matembezi							maṯembezi
16	2	b	3	يَنْڠُ	yangu	yangu							yangu
65	6	d	2	أكَمْوَمْبِيَ	kamwambiya	kamwambiya							kamwambiya
17	2	c	1	نِوَپٖ	niwape	niwape							niwape
18	2	c	2	خَبَرِ	ẖabari	habari							ẖabari
19	2	c	3	زَنْڠُ	zangu	zangu							zangu
54	5	d	1	مْكٗنٗ	mkono	mkono							mkono
20	2	d	1	قِصَ	qiṣa	qisa							qiṣa
21	2	d	2	چَلٗنِجِرِيَ	chalonijiriya	chalonijiriya							chalonijiriya
38	4	c	1	نَلِنَ	nalina	nalina							nalina
39	4	c	2	پٖٹٖ	peţe	pete							peţe
40	4	c	3	چَنْدَنِ	chanḏani	chandani							chanḏani
22	3	a	1	نِلِ	nili	nili							nili
23	3	a	2	نٖنْدَءٗ	nenḏao	nendao							nenḏao
24	3	a	3	نْدِيَنِ	nḏiyani	ndiyani							nḏiyani
55	5	d	2	هُمْفُمْبِيَ	humfumbiya	humfumbiya							humfumbiya
25	3	b	1	كْوَلِ	kwali	kwali							kwali
26	3	b	2	نَ	na	na							na
27	3	b	3	مْٹُ	mţu	mtu							mţu
28	3	b	4	چُمْبَنِ	chumbani	chumbani							chumbani
41	4	d	1	هَوَهِ	hawahi	hawahi							hawahi
42	4	d	2	كُمْڤَلِيَ	kumvaliya	kumvaliya							kumvaliya
29	3	c	1	مٗيٗ	moyo	moyo							moyo
30	3	c	2	أُكَمْتَمَنِ	ukamṯamani	ukamtamani							ukamṯamani
80	8	c	2	كَمُؤٗنٖشَ	kamuonesha	kamuonesha							kamuonesha
77	8	b	1	فَاطِمَه	fāṭimah	fatimah							fāṭimah
56	6	a	1	مْوَنَ	mwana	mwana							mwana
43	5	a	1	عَلى	'alı̄	'ali							'alı̄
44	5	a	2	كُتٗكَ	kuṯoka	kutoka							kuṯoka
45	5	a	3	كْوَكٖ	kwake	kwake							kwake
57	6	a	2	بِنْتِ	binṯi	binti							binṯi
58	6	a	3	رَسُوْلِ	rasūli	rasuli							rasūli
46	5	b	1	أُنَ	una	una							una
47	5	b	2	رُبَ	ruba	ruba							ruba
48	5	b	3	مٗيٗ	moyo	moyo							moyo
49	5	b	4	وَكٖ	wake	wake							wake
66	7	a	1	أَكٖنٖنْدَءٖ	akenenḏae	akenendae							akenenḏae
67	7	a	2	كِزٖيْ	kizee	kizee							kizee
50	5	c	1	أَكٖنْدَ	akenḏa	akenda							akenḏa
51	5	c	2	كْوَ	kwa	kwa							kwa
59	6	b	1	يَلِ	yali	yali							yali
60	6	b	2	هَيَتَأَمَلِ	hayaṯaamali	hayataamali							hayaṯaamali
73	7	d	1	خَبَرِ	ẖabari	habari							ẖabari
74	7	d	2	هُكِسِكِيَ	hukisikiya	hukisikiya							hukisikiya
68	7	b	1	فَاطِمَه	fāṭimah	fatimah							fāṭimah
61	6	c	1	كَنٖنْدَ	kanenḏa	kanenda							kanenḏa
62	6	c	2	مْوٖنْيٖ	mwenye	mwenye							mwenye
63	6	c	3	عقِلِ	'qili	'qili							'qili
69	7	b	2	أكَمْوَمْبِيٖ	kamwambiye	kamwambiye							kamwambiye
64	6	d	1	خَبَرِ	ẖabari	habari							ẖabari
78	8	b	2	كَمْكَنُشَ	kamkanusha	kamkanusha							kamkanusha
70	7	c	1	شٖيْحٖ	shēḥe	shehe							shēḥe
71	7	c	2	عَليْ	'alı̄	'ali							'alı̄
72	7	c	3	أُوٗزٖيْ	uwozee	uwozee							uwozee
75	8	a	1	أَكَفَنْيَ	akafanya	akafanya							akafanya
76	8	a	2	مْشَوَشَ	mshawasha	mshawasha							mshawasha
81	8	d	1	أُتُنْڠُ	uṯungu	utungu							uṯungu
79	8	c	1	عَلَامَ	'alāma	'alama							'alāma
83	9	a	1	9	9	9							9
82	8	d	2	أَكَمْٹِيَ	akamţiya	akamtiya							akamţiya
\.


--
-- Name: jaafari_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_words_word_id_seq', 83, true);


--
-- Data for Name: kiswahili; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY kiswahili (poemline_id, stanza, pos, arabic, close, standard, english) FROM stdin;
1	1	a	كُنْيَمَا نِ مٖػوْكَ	kunyamā ni mekʲūka	kunyama ni mechuka	
2	1	b	تَانْيَامَا حَتَ لِنِ	ṯānyāmā ḥaṯa lini	tanyama hata lini	
3	1	c	وَنَنْڠُ هُنِئٖپُوْكَ	wanangu huniepūka	wanangu huniepuka	
4	1	d	كُوَأٗنَ نَ تَمَانِ	kuwaona na ṯamāni	kuwaona na tamani	
5	1	e	والُوْبَاكِ كُنِشِكَ	wālūbāki kunishika	walubaki kunishika	
6	1	f	سِوَنْڠُ نِ وَ وٖنْدَانِ	siwangu ni wa wenḏāni	siwangu ni wa wendani	
7	1	g	مِمِ نِ مٖوَتٖنْدَانِ	mimi ni mewaṯenḏāni	mimi ni mewatendani	
8	1	h	مْبُوْنَ هُنِپِجَ زِتَ	mbūna hunipija ziṯa	mbuna hunipija zita	
9	2	a	وَنَانْڠُ مِمِ وَ دَمُ	wanāngu mimi wa ḏamu	wanangu mimi wa damu	
10	2	b	وَانَ وَ أُسْوَاحِلِنِ	wāna wa uswāḥilini	wana wa uswahilini	
11	2	c	أَصِلِ هَوَنَ هَامُ	aṣili hawana hāmu	asili hawana hamu	
12	2	d	يَا كُنِيُوَ نِ نَانِ	yā kuniyuwa ni nāni	ya kuniyuwa ni nani	
13	2	e	وَمٖنَتِيَ قَؤُمُ	wamenaṯiya qaumu	wamenatiya qaumu	
14	2	f	نَ وَنَ وَ مَجِرَنِ	na wana wa majirani	na wana wa majirani	
15	2	g	كُوْسَ لَنْڠُ كُوْسَ ڠَانِ	kūsa langu kūsa gāni	kusa langu kusa gani	
16	2	h	مْبُوْنَ هُنِپِجَ زِتَ	mbūna hunipija ziṯa	mbuna hunipija zita	
17	3	a	مِمِ مَامٖنُ سِتَاسَ	mimi māmenu siṯāsa	mimi mamenu sitasa	
18	3	b	وَلَ سِنَ پُنْڠُوَنِ	wala sina punguwani	wala sina punguwani	
19	3	c	نِ مٖزَا وَ مَمْبَاسَ	ni mezā wa mambāsa	ni meza wa mambasa	
20	3	d	نَ كُنْڠِنٖ زِسِوَنِ	na kungine zisiwani	na kungine zisiwani	
21	3	e	نِزٖ وَنَ سِيَاسَ	nize wana siyāsa	nize wana siyasa	
22	3	f	نَ زِيُوْنْڠُوْزِ وَدِنِ	na ziyūngūzi waḏini	na ziyunguzi wadini	
23	3	g	مَافُنْدِ وَ كُلَ فَنِ	māfunḏi wa kula fani	mafundi wa kula fani	
24	3	h	نَ مَاشُجَا وَ زِتَ	na māshujā wa ziṯa	na mashuja wa zita	
25	4	a	نْدِمِ مَامَاكٖ مُيَاكَ	nḏimi māmāke muyāka	ndimi mamake muyaka	
26	4	b	پِيَ مْوٖنْڠٗ عَثْمَانِ	piya mwengo 'athmāni	piya mwengo 'athmani	
27	4	c	نَ زَهِدِ كَذَلِكَ	na zahiḏi kadhalika	na zahidi kadhalika	
28	4	d	نَ وٖنْڠِ وَاكٖ وٖنْدَانِ	na wengi wāke wenḏāni	na wengi wake wendani	
29	4	e	عالى كُوْتِ نَ مَتَاكَ	'ālı̄ kūṯi na maṯāka	'ali kuti na mataka	
30	4	f	وٗتٖ مْبوَا مُوْيَ قَرِنِ	woṯe mbwā mūya qarini	wote mbwa muya qarini	
31	4	g	وَلِتُوْكَ مَاتُوْمبونِ	waliṯūka māṯūmbūni	walituka matumbuni	
32	4	h	وَ كَوَا كَمَ نْيوتَ	wa kawā kama nı̄ūṯa	wa kawa kama niuta	
33	5	a	اِنْكِشَافِ نْڠَلِيَ	inkishāfi ngaliya	inkishafi ngaliya	
34	5	b	أُكِسٗوْمٖ نَ كِدَنِ	ukisōme na kiḏani	ukisome na kidani	
35	5	c	نْدِپُوْ تَاكَاپُوْ كْوٖلٖيَ	nḏipuu ṯākāpuu kweleya	ndipuu takapuu kweleya	
36	5	d	نِ كْوَامْبِيَاءٗ مْوٖنْدانِ	ni kwāmbiyao mwenḏāni	ni kwambiyao mwendani	
37	5	e	نِ تُوْنْڠٗ زِمٖسَلِيَ	ni ṯūngo zimesaliya	ni tungo zimesaliya	
38	5	f	نَ هَزِفِ اَصِلَانِ	na hazifi aṣilāni	na hazifi asilani	
39	5	g	وَالُوْزِتُنْڠَ نِ نْيَانِ	wālūziṯunga ni nyāni	waluzitunga ni nyani	
40	5	h	نِ وَنَانْڠُ وَالُوْپِتَ	ni wanāngu wālūpiṯa	ni wanangu walupita	
41	6	a	نَ مَالٖنْڠَ وَ مْڤِتَ	na mālenga wa mviṯa	na malenga wa mvita	
42	6	b	نَ پِيَ ػِرَاڠُ دِنِ	na piya kʲirāgu ḏini	na piya chiragu dini	
43	6	c	نْيايُو ولِزِفُوَتَ	nyāyuu ūlizifuwaṯa	nyayuu ulizifuwata	
44	6	d	هَاوَكُكِرِ اُدُنِ	hāwakukiri uḏuni	hawakukiri uduni	
45	6	e	نْنَابَهَانِ هُتٖتَ	nnābahāni huṯeṯa	nnabahani huteta	
46	6	f	لَكِنِ هُفَلِييانِ	lakini hufalı̄yāni	lakini hufaliyani	
47	6	g	نْدِيٖ پْوٖكٖ اُوَنْدَانِ	nḏiye pweke uwanḏāni	ndiye pweke uwandani	
48	6	h	اِنْڠَا اَمٖئِكِتَ	ingā ameikiṯa	inga ameikita	
49	7	a	بَادٗ كُزَا نَ وٖزَ	bāḏo kuzā na weza	bado kuza na weza	
50	7	b	سِيَاكُوْمَ اُكِنڠُوْنِ	siyākūma ukingūni	siyakuma ukinguni	
51	7	c	لَكِنِ مُمٖنِپُوْزَ	lakini mumenipūza	lakini mumenipuza	
52	7	d	مُمٖئِتٗوَ فُوٗنِ	mumeiṯowa fuwoni	mumeitowa fuwoni	
53	7	e	وَنْڠِنٖ مٖئِتُوكٖزَ	wangine meiṯūkeza	wangine meitukeza	
54	7	f	كُنِپانْڠِيَ كَانُوْنِ	kunipāngiya kānūni	kunipangiya kanuni	
55	7	g	مُسَمِيَاتِ كُبُوْنِ	musamiyāṯi kubūni	musamiyati kubuni	
56	7	h	نْيِنْيِ مُلِپُوْنِوَتَ	nyinyi mulipūniwaṯa	nyinyi mulipuniwata	
57	8	a	هُلِيَ كِسِكِتِكَ	huliya kisikiṯika	huliya kisikitika	
58	8	b	ػَنْڠَلِيَ جَرِدَنِ	kʲangaliya jariḏani	changaliya jaridani	
59	8	c	وٖنْڠِ وَنَاءُ اَنْدِكَ	wengi wanau anḏika	wengi wanau andika	
60	8	d	سِوَنَانْڠُ نِ وَڠٖنِ	siwanāngu ni wageni	siwanangu ni wageni	
61	8	e	اِذَاعَانِ كَذَلِكَ	idhā'āni kadhalika	idha'ani kadhalika	
62	8	f	وَپٖكَ تُنْڠٗ نِ نْيَانِ	wapeka ṯungo ni nyāni	wapeka tungo ni nyani	
63	8	g	وٖنْڠِ هَاوَتُوْك پْوان	wengi hāwaṯūk pwān	wengi hawatuk pwan	
64	8	h	لِػَ كُوَ مْبوا مْڤِتَ	likʲa kuwa mbwā mviṯa	licha kuwa mbwa mvita	
65	9	a	اَنڠَلِيَ نَ زِتَابُ	angaliya na ziṯābu	angaliya na zitabu	
66	9	b	زِسُوْمٖشْوَاءٗ شُلٖنِ	zisūmeshwao shuleni	zisumeshwao shuleni	
67	9	c	هَازَانْدِكْوِ نَ رَجَبُ	hāzānḏikwi na rajabu	hazandikwi na rajabu	
68	9	d	سِ سُوْدِ وَلَ سِ شَانِ	si sūḏi wala si shāni	si sudi wala si shani	
69	9	e	ْنْجُوْرٗڠٖ نْدِيٖ كَتِبُ	njūroge nḏiye kaṯibu	njuroge ndiye katibu	
70	9	f	اَشِشِيٖؤٗ سُكَانِ	ashishiyeo sukāni	ashishiyeo sukani	
71	9	g	ػَارٗ نَ وَاكٖ وٖنْدانِ	kʲāro na wāke wenḏāni	charo na wake wendani	
72	9	h	نَاءٗ نْيُوْمَ هُفُوَتَ	nao nyūma hufuwaṯa	nao nyuma hufuwata	
73	10	a	هُوَلِكْوَا كُوْنْڠَمَانٗ	huwalikwā kūngamāno	huwalikwa kungamano	
74	10	b	ػٖنْدَ هُرُدِ نْدِيَانِ	kʲenḏa huruḏi nḏiyāni	chenda hurudi ndiyani	
75	10	c	هُوٗنَ اُتُنْڠُ مْنُو	huwona uṯungu mnuu	huwona utungu mnuu	
76	10	d	كُوَ نْيِنْيِ سِوَأٗنِ	kuwa nyinyi siwaoni	kuwa nyinyi siwaoni	
77	10	e	نَ هُزِاُمَ زِتَانِ	na huziuma ziṯāni	na huziuma zitani	
78	10	f	لَكِنِ نِتٖنْدٖ نْنِ	lakini niṯenḏe nni	lakini nitende nni	
79	10	g	وَنَانْڠُ مُمٖئِخِنِ	wanāngu mumeikhini	wanangu mumeihini	
80	10	h	مَامٖنُ مُمٖنِوَتَ	māmenu mumeniwaṯa	mamenu mumeniwata	
81	11	a	نَ هُلِيَ كْوَا مَاتُوْزِ	na huliya kwā māṯūzi	na huliya kwa matuzi	
82	11	b	ػَنْڠَلِيَ مِتِحَانِ	kʲangaliya miṯiḥāni	changaliya mitihani	
83	11	c	وَنَفُنْدِ وَ كِبْوٖزِ	wanafunḏi wa kibwezi	wanafundi wa kibwezi	
84	11	d	نَ وَ كِسُومُ زِوَنِ	na wa kisūmu ziwani	na wa kisumu ziwani	
85	11	e	نْدِوٗ وَنَاءٗ بَارِزِ	nḏiwo wanao bārizi	ndiwo wanao barizi	
86	11	f	وَلِيُوكُوْ كِلٖلٖنِ	waliyūkuu kileleni	waliyukuu kileleni	
87	11	g	مُلُوْتُوْكَ كْوٖتُ پْوانِ	mulūṯūka kweṯu pwāni	mulutuka kwetu pwani	
88	11	h	مُكُوْ تِنِ هُكُوْكُوْتَ	mukuu ṯini hukūkūṯa	mukuu tini hukukuta	
89	12	a	وَفَانْيَاءٗ اُتَفِتِ	wafānyao uṯafiṯi	wafanyao utafiti	
90	12	b	وَ أُزَمِلِ ػُوٗنِ	wa uzamili kʲuwoni	wa uzamili chuwoni	
91	12	c	وَسْوَاهِلِ نِ كَاتِتِ	waswāhili ni kāṯiṯi	waswahili ni katiti	
92	12	d	اَوْ هَوَپَاتِكَانِ	aw hawapāṯikāni	au hawapatikani	
93	12	e	نِ نْيَانِ نِ مْلَئِتِ	ni nyāni ni mlaiṯi	ni nyani ni mlaiti	
94	12	f	مْوٖنْيٖ مَاكُوْسَ نِ نْيَانِ	mwenye mākūsa ni nyāni	mwenye makusa ni nyani	
95	12	g	مِمِ هَامُنِثَمِنِ	mimi hāmunithamini	mimi hamunithamini	
96	12	h	مْڠِنٖ هَامُكُپَاتَ	mgine hāmukupāṯa	mgine hamukupata	
97	13	a	كِوَسِكِيَ هُنِيْنَ	kiwasikiya hunı̄na	kiwasikiya hunina	
98	13	b	هُنِأٗنْڠُوْنْڠَ مُويُوْنِ	huniongūnga mūyūni	huniongunga muyuni	
99	13	c	صَرْفَ هَكُنَ تٖنَ	ṣarfa hakuna ṯena	sarfa hakuna tena	
100	13	d	نَحَؤُ نَ ئِتَمَانِ	naḥau na iṯamāni	nahau na itamani	
101	13	e	نَ حَتَ لَذَ هَيَانَ	na ḥaṯa ladha hayāna	na hata ladha hayana	
102	13	f	كَمَ مَشَاپُوْ كَانْوَانِ	kama mashāpuu kānwāni	kama mashapuu kanwani	
103	13	g	سِئٖلٖوِ هُنٖنَانِ	sielewi hunenāni	sielewi hunenani	
104	13	h	هُئِمْبَ اَوْ هُتٖتَ	huimba aw huṯeṯa	huimba au huteta	
105	14	a	لَوْ مُيَاكَ تَارُدِ	law muyāka ṯāruḏi	lau muyaka tarudi	
106	14	b	اَيْ تٖنَ دُنِيَانِ	ay ṯena ḏuniyāni	ay tena duniyani	
107	14	c	موَانَانْڠُ اِتَمْبِدِ	mwānāngu iṯambiḏi	mwanangu itambidi	
108	14	d	كْوٖنٖنْدَ مَحَكَمَانِ	kwenenḏa maḥakamāni	kwenenda mahakamani	
109	14	e	اَئٖتٖ نَ مَشَهِدِ	aeṯe na mashahiḏi	aete na mashahidi	
110	14	f	وَنِيُوَاءٗ يَقِيْنِ	waniyuwao yaqı̄ni	waniyuwao yaqini	
111	14	g	نْيُوْتٖ مْوٖنْدٖ ڠٖرٖزَنِ	nyūṯe mwenḏe gerezani	nyute mwende gerezani	
112	14	h	كْوَا حَتِيَ كُوَپَاتَ	kwā ḥaṯiya kuwapāṯa	kwa hatiya kuwapata	
113	15	a	وَاللّٰهِ هَمُنَ غٖيْرَ	wallähi hamuna ḡēra	wallahi hamuna ghera	
114	15	b	وَلَ هَامُوْنَ اِمَانِ	wala hāmūna imāni	wala hamuna imani	
115	15	c	هَمُنَ لَكُوَكٖرَ	hamuna lakuwakera	hamuna lakuwakera	
116	15	d	كُوَ هَمُنِثَمِنِ	kuwa hamunithamini	kuwa hamunithamini	
117	15	e	مِمِ نِ كَامَ مْپِوِرِ	mimi ni kāma mpiwiri	mimi ni kama mpiwiri	
118	15	f	هُتٖزٖوَ اُوَنْدَانِ	huṯezewa uwanḏāni	hutezewa uwandani	
119	15	g	هِپِجْوَا تٖكٖنْدِيَانَ	hipijwā ṯekenḏiyāna	hipijwa tekendiyana	
120	15	h	نَ كُلَ مْوٖنْيٖ كُپِتَ	na kula mwenye kupiṯa	na kula mwenye kupita	
121	16	a	حَتَ كْوٖنْيٖ اُشَعِرِ	ḥaṯa kwenye usha'iri	hata kwenye usha'iri	
122	16	b	وَاسُوْ وَنْڠُ وَمٖبُوْنِ	wāsuu wangu wamebūni	wasuu wangu wamebuni	
123	16	c	زِلِزٗ حُرُ بَحَارِ	zilizo ḥuru baḥāri	zilizo huru bahari	
124	16	d	كْوَا كُوٗلٖزَ وَڠٖنِ	kwā kuwoleza wageni	kwa kuwoleza wageni	
125	16	e	ممِ هَايُو سِيَاكِرِ	mmi hāyuu siyākiri	mmi hayuu siyakiri	
126	16	f	سِ مَاشَعِرِ كِفَنِ	si māsha'iri kifani	si masha'iri kifani	
127	16	g	هَاىُوْ ىُوْت نِ كْوا نْن	hāyuu yūṯ ni kwā nn	hayuu yut ni kwa nn	
128	16	h	هزٗ ن مْبنُ زَا زتَ	hzo n mbnu zā zṯa	hzo n mbnu za zta	
129	17	a	هَمْبِوَ مْوٖنْيٖوٖ سِنَ	hambiwa mwenyewe sina	hambiwa mwenyewe sina	
130	17	b	هِنِ نِ عَجَابُ ڠَانِ	hini ni 'ajābu gāni	hini ni 'ajabu gani	
131	17	c	هُوَاءٖ كاكُوْسَ شِنَ	huwae kākūsa shina	huwae kakusa shina	
132	17	d	كَاوَ نَ تَانْدُ يَانْڠَانِ	kāwa na ṯānḏu yāngāni	kawa na tandu yangani	
133	17	e	نْيَانِ اَلُوْنِپَ ئِنَ	nyāni alūnipa ina	nyani alunipa ina	
134	17	f	اَلُوْنَانْدِكَ نِ نْيَانِ	alūnānḏika ni nyāni	alunandika ni nyani	
135	17	g	كِوَ سِ اُسْوَاحِلِنِ	kiwa si uswāḥilini	kiwa si uswahilini	
136	17	h	نِ وَپِ نَالِپُوپَاتَ	ni wapi nālipūpāṯa	ni wapi nalipupata	
137	18	a	كُوَ وٖنْڠِ هُنِنٖنَ	kuwa wengi huninena	kuwa wengi huninena	
138	18	b	سِدَلِلِ اَصِلَانِ	siḏalili aṣilāni	sidalili asilani	
139	18	c	يَاكُوَ مْوٖنْيٖوٖ سِنَ	yākuwa mwenyewe sina	yakuwa mwenyewe sina	
140	18	d	كِنْڠٖرٖزَ هَامُوٗنِ	kingereza hāmuwoni	kingereza hamuwoni	
141	18	e	هُنٖنوَا نَ وٖنْڠِ سَانَ	hunenwā na wengi sāna	hunenwa na wengi sana	
142	18	f	پٖمْبٖ زٗتٖ دُنِيَانِ	pembe zoṯe ḏuniyāni	pembe zote duniyani	
143	18	g	كِنَ نَ كْوَاءٗ سِنَانِ	kina na kwao sināni	kina na kwao sinani	
144	18	h	مِزِيٖ هَئِكُكَاتَ	miziye haikukāṯa	miziye haikukata	
\.


--
-- Data for Name: kiswahili_backup; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY kiswahili_backup (word_id, stanza, pos, location, arabic, close, standard, lemma, segment, variant, note, root, english, word, arword, clword) FROM stdin;
30	2	b	3	أُسْوَاحِلِنِ	uswāḥilini	uswahilini									
1	1	a	1	كُنْيَمَا	kunyamā	kunyama									
2	1	a	2	نِ	ni	ni									
3	1	a	3	مٖػوْكَ	mekʲūka	mechuka									
4	1	b	1	تَانْيَامَا	ṯānyāmā	tanyama									
5	1	b	2	حَتَ	ḥaṯa	hata									
6	1	b	3	لِنِ	lini	lini									
31	2	c	1	أَصِلِ	aṣili	asili									
7	1	c	1	وَنَنْڠُ	wanangu	wanangu									
8	1	c	2	هُنِئٖپُوْكَ	huniepūka	huniepuka									
32	2	c	2	هَوَنَ	hawana	hawana									
33	2	c	3	هَامُ	hāmu	hamu									
9	1	d	1	كُوَأٗنَ	kuwaona	kuwaona									
10	1	d	2	نَ	na	na									
11	1	d	3	تَمَانِ	ṯamāni	tamani									
12	1	e	1	والُوْبَاكِ	wālūbāki	walubaki									
13	1	e	2	كُنِشِكَ	kunishika	kunishika									
14	1	f	1	سِوَنْڠُ	siwangu	siwangu									
15	1	f	2	نِ	ni	ni									
16	1	f	3	وَ	wa	wa									
17	1	f	4	وٖنْدَانِ	wenḏāni	wendani									
34	2	d	1	يَا	yā	ya									
35	2	d	2	كُنِيُوَ	kuniyuwa	kuniyuwa									
18	1	g	1	مِمِ	mimi	mimi									
19	1	g	2	نِ	ni	ni									
20	1	g	3	مٖوَتٖنْدَانِ	mewaṯenḏāni	mewatendani									
36	2	d	3	نِ	ni	ni									
37	2	d	4	نَانِ	nāni	nani									
21	1	h	1	مْبُوْنَ	mbūna	mbuna									
22	1	h	2	هُنِپِجَ	hunipija	hunipija									
23	1	h	3	زِتَ	ziṯa	zita									
38	2	e	1	وَمٖنَتِيَ	wamenaṯiya	wamenatiya									
24	2	a	1	وَنَانْڠُ	wanāngu	wanangu									
25	2	a	2	مِمِ	mimi	mimi									
26	2	a	3	وَ	wa	wa									
27	2	a	4	دَمُ	ḏamu	damu									
39	2	e	2	قَؤُمُ	qaumu	qaumu									
28	2	b	1	وَانَ	wāna	wana									
29	2	b	2	وَ	wa	wa									
40	2	f	1	نَ	na	na									
41	2	f	2	وَنَ	wana	wana									
42	2	f	3	وَ	wa	wa									
43	2	f	4	مَجِرَنِ	majirani	majirani									
44	2	g	1	كُوْسَ	kūsa	kusa									
45	2	g	2	لَنْڠُ	langu	langu									
46	2	g	3	كُوْسَ	kūsa	kusa									
47	2	g	4	ڠَانِ	gāni	gani									
49	2	h	2	هُنِپِجَ	\N	\N									
50	2	h	3	زِتَ	\N	\N									
48	2	h	1	مْبُوْنَ	mbūna	\N									
\.


--
-- Data for Name: kiswahili_notes; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY kiswahili_notes (stanza, pos, location, lemma, segment, variant, note, root, english) FROM stdin;
\.


--
-- Name: kiswahili_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('kiswahili_poemline_id_seq', 144, true);


--
-- Data for Name: kiswahili_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY kiswahili_words (word_id, stanza, pos, location, arabic, close, standard, lemma, segment, variant, note, root, english, word, arword, clword) FROM stdin;
87	4	d	1	نَ	na	na						and many of his contemporaries,	na	نَ	na
110	5	c	1	نْدِپُوْ	nḏipuu	ndipo						and then you will understand,	nḏipuu	نْدِپُوْ	nḏipuu
84	4	c	1	نَ	na	na						and of Zahidi too,	na	نَ	na
122	5	g	1	وَالُوْزِتُنْڠَ	wālūziṯunga	walozitunga						Who were those who composed them?	wālūziṯunga	وَالُوْزِتُنْڠَ	wālūziṯunga
95	4	f	1	وٗتٖ	woṯe	wote						all from just one century,	woṯe	وٗتٖ	woṯe
107	5	b	1	أُكِسٗوْمٖ	ukisōme	ukisome						Read it attentively	ukisōme	أُكِسٗوْمٖ	ukisōme
116	5	e	1	نِ	ni	ni						what I am telling you.	ni	نِ	ni
119	5	f	1	نَ	na	na						These verses are of enduring worth and will never die.	na	نَ	na
125	5	h	1	نِ	ni	ni						They were my children who have passed on. 	ni	نِ	ni
128	6	a	1	نَ	na	na						And the Bard of Mambasa,	na	نَ	na
163	7	g	1	مُسَمِيَاتِ	musamiyāṯi	musamiyati						compiling standardized dictionaries.	musamiyāṯi	مُسَمِيَاتِ	musamiyāṯi
167	8	a	1	هُلِيَ	huliya	huliya						I weep and lament	huliya	هُلِيَ	huliya
169	8	b	1	ػَنْڠَلِيَ	kʲangaliya	changaliya						when I look at the learned journals,	kʲangaliya	ػَنْڠَلِيَ	kʲangaliya
171	8	c	1	وٖنْڠِ	wengi	wengi						for many of those who contribute 	wengi	وٖنْڠِ	wengi
179	8	f	1	وَپٖكَ	wapeka	wapeka						Who are the ones who send in their compositions? 	wapeka	وَپٖكَ	wapeka
183	8	g	1	وٖنْڠِ	wengi	wengi						Many do not come from the coast,	wengi	وٖنْڠِ	wengi
186	8	h	1	لِػَ	likʲa	licha						although they may have a Mambasa address.	likʲa	لِػَ	likʲa
30	2	b	3	أُسْوَاحِلِنِ	uswāḥilini	Uswahilini							uswāḥilini	أُسْوَاحِلِنِ	uswāḥilini
91	4	e	1	عالى	'ālı̄	Ali						Ali Koti and Mataka,	'ālı̄	عالى	'ālı̄
99	4	g	1	وَلِتُوْكَ	waliṯūka	walitoka						they emerged from my womb,	waliṯūka	وَلِتُوْكَ	waliṯūka
101	4	h	1	وَ	wa	wa		~				and shone like stars.	wa	وَ	wa
147	6	h	1	اِنْڠَا	ingā	ingawa						yet he stays strong.	ingā	اِنْڠَا	ingā
157	7	d	1	مُمٖئِتٗوَ	mumeiṯowa	mumeitoa						You have left me high and dry,	mumeiṯowa	مُمٖئِتٗوَ	mumeiṯowa
159	7	e	1	وَنْڠِنٖ	wangine	wangine						now others have come forward	wangine	وَنْڠِنٖ	wangine
161	7	f	1	كُنِپانْڠِيَ	kunipāngiya	kunipangia						to regulate me,	kunipāngiya	كُنِپانْڠِيَ	kunipāngiya
174	8	d	1	سِوَنَانْڠُ	siwanāngu	siwanangu		si				are not my children, they are strangers [to me].	siwanāngu	سِوَنَانْڠُ	siwanāngu
177	8	e	1	اِذَاعَانِ	idhā'āni	idhaani						It is much the same with the media. 	idhā'āni	اِذَاعَانِ	idhā'āni
193	9	b	1	زِسُوْمٖشْوَاءٗ	zisūmeshwao	zisomeshwao						which are studied at our schools.	zisūmeshwao	زِسُوْمٖشْوَاءٗ	zisūmeshwao
197	9	c	3	رَجَبُ	rajabu	Rajabu							rajabu	رَجَبُ	rajabu
199	9	d	2	سُوْدِ	sūḏi	Sudi							sūḏi	سُوْدِ	sūḏi
202	9	d	5	شَانِ	shāni	Shani							shāni	شَانِ	shāni
203	9	e	1	ْنْجُوْرٗڠٖ	njūroge	Njoroge				\\textit{njoroge}: a name representing those who have their origins in the East African interior (the \\textit{bara}).\n		The author is Njoroge,	njūroge	ْنْجُوْرٗڠٖ	njūroge
265	12	c	1	وَسْوَاهِلِ	waswāhili	Waswahili						Swahili students are few	waswāhili	وَسْوَاهِلِ	waswāhili
275	12	f	2	مَاكُوْسَ	mākūsa	makosa							mākūsa	مَاكُوْسَ	mākūsa
283	13	a	2	هُنِيْنَ	hunı̄na	hunena							hunı̄na	هُنِيْنَ	hunı̄na
284	13	b	1	هُنِأٗنْڠُوْنْڠَ	huniongūnga	huniungonga						I feel sick at heart.	huniongūnga	هُنِأٗنْڠُوْنْڠَ	huniongūnga
285	13	b	2	مُويُوْنِ	mūyūni	moyoni							mūyūni	مُويُوْنِ	mūyūni
286	13	c	1	صَرْفَ	ṣarfa	sarufi						Inflection is no longer employed,	ṣarfa	صَرْفَ	ṣarfa
318	14	f	2	يَقِيْنِ	yaqı̄ni	yakini							yaqı̄ni	يَقِيْنِ	yaqı̄ni
332	15	c	2	لَكُوَكٖرَ	lakuwakera	lakuwakera	la						lakuwakera	لَكُوَكٖرَ	lakuwakera
342	15	g	2	تٖكٖنْدِيَانَ	ṯekenḏiyāna	tekendiani	teke						ṯekenḏiyāna	تٖكٖنْدِيَانَ	ṯekenḏiyāna
344	15	h	2	كُلَ	kula	kila							kula	كُلَ	kula
223	10	d	1	كُوَ	kuwa	kuwa						that I do not see you all there.	kuwa	كُوَ	kuwa
226	10	e	1	نَ	na	na						I bite my fingers in frustration,	na	نَ	na
234	10	h	1	مَامٖنُ	māmenu	mamenu						You have abandoned your own mother. 	māmenu	مَامٖنُ	māmenu
249	11	e	1	نْدِوٗ	nḏiwo	ndiwo						they are the ones who are ahead,	nḏiwo	نْدِوٗ	nḏiwo
123	5	g	2	نِ	ni	ni							ni	نِ	ni
278	12	g	1	مِمِ	mimi	mimi						You esteem me not at all,	mimi	مِمِ	mimi
289	13	d	1	نَحَؤُ	naḥau	nahau						while grammatical [Swahili] is what I desire!	naḥau	نَحَؤُ	naḥau
292	13	e	1	نَ	na	na						Even [their speech] is wanting in flavour,	na	نَ	na
296	13	f	1	كَمَ	kama	kama						like a plug of tobacco in one’s mouth.	kama	كَمَ	kama
301	13	h	1	هُئِمْبَ	huimba	huimba						Are they singing? Are they complaining? 	huimba	هُئِمْبَ	huimba
310	14	c	1	موَانَانْڠُ	mwānāngu	mwanangu						it would be necessary, my child,	mwānāngu	موَانَانْڠُ	mwānāngu
312	14	d	1	كْوٖنٖنْدَ	kwenenḏa	kwenenda						for him to go to a court of law,	kwenenḏa	كْوٖنٖنْدَ	kwenenḏa
322	14	h	1	كْوَا	kwā	kwa						for the offence which you have committed against me. 	kwā	كْوَا	kwā
339	15	f	1	هُتٖزٖوَ	huṯezewa	hutezewa						in the play-ground,	huṯezewa	هُتٖزٖوَ	huṯezewa
343	15	h	1	نَ	na	na						by anyone who passes by in the street.	na	نَ	na
105	5	a	1	اِنْكِشَافِ	inkishāfi	Inkishafi				The {\\FN{Inkishafi}}, according to W.E. Taylor Stigand (1915: 96-105) is ``a great, if not the greatest, religious classic of [the Swahili-speaking peoples]''. The poem, concerned with the decay of Pate (formerly a flourishing town in northern Swahililand), may remind some readers of Thomas Gray's \\textit{Elegy written in an English churchyard} (London 1751).\n		Look at Inkishafi.	inkishāfi	اِنْكِشَافِ	inkishāfi
164	7	g	2	كُبُوْنِ	kubūni	kubuni				For almost a century the principal publisher of standardized Swahili dictionaries has been the Oxford University Press (OUP). Clearly OUP has to be profitable, and profitable is what, over the years, their dictionaries of standardized Swahili have been. However, if one considers excellence in research and scholarship not one of the\nOUP’s standardized Swahili lexicons can begin to compare with the Oxford English Dictionary (`more than 600,000 words over a thousand years'). Fortunately for Swahili and for Swahili studies there exists the monumental \\textit{Dictionnaire swahili-français} (Paris, 1939), compiled by Charles Sacleux. Sacleux’s chef d’oeuvre (`unprecedented\nin historical depth, dialectological detail and philological knowledge') can now be accessed electronically, courtesy of \\textit{Swahili Forum} (\\url{http://www.uni-leipzig.de/~afrika/swafo/index.php/sacleux}). Heartfelt thanks are due to Thilo Schadeberg and Ridder Samson.\n			kubūni	كُبُوْنِ	kubūni
252	11	f	1	وَلِيُوكُوْ	waliyūkuu	waliyoko						who are at the top;	waliyūkuu	وَلِيُوكُوْ	waliyūkuu
254	11	g	1	مُلُوْتُوْكَ	mulūṯūka	mulotoka						and you, students from the coast,	mulūṯūka	مُلُوْتُوْكَ	mulūṯūka
257	11	h	1	مُكُوْ	mukuu	muko						you lag far behind.	mukuu	مُكُوْ	mukuu
259	11	h	3	هُكُوْكُوْتَ	hukūkūṯa	hukokota				Over the years young people on Lamu Island (and indeed elsewhere in northern Swahililand) have received a raw deal in their primary and secondary education. They have `lagged far behind' their counterparts\nfrom the interior, and so Mother Swahili grieves for her marginalised children.\n			hukūkūṯa	هُكُوْكُوْتَ	hukūkūṯa
280	12	h	1	مْڠِنٖ	mgine	mngine						yet you have not replaced me by another.	mgine	مْڠِنٖ	mgine
319	14	g	1	نْيُوْتٖ	nyūṯe	nyote						and all of you would go to prison	nyūṯe	نْيُوْتٖ	nyūṯe
349	16	a	3	اُشَعِرِ	usha'iri	ushairi							usha'iri	اُشَعِرِ	usha'iri
350	16	b	1	وَاسُوْ	wāsuu	waso						those who are not mine have invented	wāsuu	وَاسُوْ	wāsuu
357	16	d	2	كُوٗلٖزَ	kuwoleza	kuoleza							kuwoleza	كُوٗلٖزَ	kuwoleza
363	16	f	2	مَاشَعِرِ	māsha'iri	mashairi							māsha'iri	مَاشَعِرِ	māsha'iri
365	16	g	1	هَاىُوْ	hāyuu	hayo						What is the point of it all?	hāyuu	هَاىُوْ	hāyuu
366	16	g	2	ىُوْت	yūṯ	yote							yūṯ	ىُوْت	yūṯ
369	16	g	5	نْن	nn	nini							nn	نْن	nn
98	4	f	4	قَرِنِ	qarini	karini							qarini	قَرِنِ	qarini
100	4	g	2	مَاتُوْمبونِ	māṯūmbūni	matumboni							māṯūmbūni	مَاتُوْمبونِ	māṯūmbūni
104	4	h	4	نْيوتَ	nı̄ūṯa	nyota							nı̄ūṯa	نْيوتَ	nı̄ūṯa
140	6	e	1	نْنَابَهَانِ	nnābahāni	Nabahani				In an unpublished commendation from 12 June 1974 J.W.T. Allen writes about Ahmad Sheikh Nabhany: ``I am privileged to have a wide circle of friends and acquaintances among Swahili scholars of Swahili. I have some knowledge of their rating of themselves and I can name perhaps half a dozen (still living) who are always referred to as the most learned. To me they are walking dictionaries and mines of information and Ahmed is unquestionably one of them. He comes of a family of scholars whose discipline is as tough as any degree course in the world. They have no time for false scholarship or dilettantism. That this profound learning is almost wholly disregarded by those who have been highly educated in the western tradition affects almost everything written today in or about Swahili. When I want to know some word or something about Swahili, I do not go to professors, but to one of the \\textit{bingwa} known to me. One of these could give a much greater detail of assessment, but of course his opinion would not carry the weight of one who can put some totally irrelevant letters after his name''. For a biography see Said (2012).\n		al-Nabhany reproves,	nnābahāni	نْنَابَهَانِ	nnābahāni
181	8	f	3	نِ	ni	ni							ni	نِ	ni
392	17	f	1	اَلُوْنَانْدِكَ	alūnānḏika	alonandika						And who are they who wrote me down?	alūnānḏika	اَلُوْنَانْدِكَ	alūnānḏika
421	18	g	4	سِنَانِ	sināni	shinani							sināni	سِنَانِ	sināni
182	8	f	4	نْيَانِ	nyāni	nyani							nyāni	نْيَانِ	nyāni
345	15	h	3	مْوٖنْيٖ	mwenye	mwenye							mwenye	مْوٖنْيٖ	mwenye
359	16	e	1	ممِ	mmi	mimi						For myself, I cannot accept that.	mmi	ممِ	mmi
360	16	e	2	هَايُو	hāyuu	hayo							hāyuu	هَايُو	hāyuu
7	1	c	1	وَنَنْڠُ	wanangu	wanangu						My own children avoid me, 	wanangu	وَنَنْڠُ	wanangu
9	1	d	1	كُوَأٗنَ	kuwaona	kuwaona						though I long to see them.	kuwaona	كُوَأٗنَ	kuwaona
5	1	b	2	حَتَ	ḥaṯa	hata							ḥaṯa	حَتَ	ḥaṯa
31	2	c	1	أَصِلِ	aṣili	asili						are uninterested	aṣili	أَصِلِ	aṣili
389	17	e	1	نْيَانِ	nyāni	nyani						Who gave me my name?	nyāni	نْيَانِ	nyāni
2	1	a	2	نِ	ni	ni		~					ni	نِ	ni
3	1	a	3	مٖػوْكَ	mekʲūka	mechoka							mekʲūka	مٖػوْكَ	mekʲūka
1	1	a	1	كُنْيَمَا	kunyamā	kunyamaa						I am weary of staying silent.	kunyamā	كُنْيَمَا	kunyamā
4	1	b	1	تَانْيَامَا	ṯānyāmā	t'anyamaa						For how much longer am I to remain dumb?	ṯānyāmā	تَانْيَامَا	ṯānyāmā
10	1	d	2	نَ	na	na		~					na	نَ	na
12	1	e	1	والُوْبَاكِ	wālūbāki	walobaki						And those who remain to embrace me	wālūbāki	والُوْبَاكِ	wālūbāki
408	18	c	3	سِنَ	sina	sina							sina	سِنَ	sina
49	2	h	2	هُنِپِجَ	hunipija	hunipija							hunipija	هُنِپِجَ	hunipija
50	2	h	3	زِتَ	ziṯa	zita							ziṯa	زِتَ	ziṯa
6	1	b	3	لِنِ	lini	lini							lini	لِنِ	lini
8	1	c	2	هُنِئٖپُوْكَ	huniepūka	huniepuka							huniepūka	هُنِئٖپُوْكَ	huniepūka
32	2	c	2	هَوَنَ	hawana	hawana							hawana	هَوَنَ	hawana
33	2	c	3	هَامُ	hāmu	hamu							hāmu	هَامُ	hāmu
11	1	d	3	تَمَانِ	ṯamāni	tamani							ṯamāni	تَمَانِ	ṯamāni
108	5	b	2	نَ	na	na							na	نَ	na
18	1	g	1	مِمِ	mimi	mimi						What have I done to you?	mimi	مِمِ	mimi
24	2	a	1	وَنَانْڠُ	wanāngu	wanangu						My own flesh and blood,	wanāngu	وَنَانْڠُ	wanāngu
28	2	b	1	وَانَ	wāna	wana						the children of Swahililand,	wāna	وَانَ	wāna
34	2	d	1	يَا	yā	ya						 in knowing who I am, 	yā	يَا	yā
38	2	e	1	وَمٖنَتِيَ	wamenaṯiya	wamenatiya						and have left me to other peoples,	wamenaṯiya	وَمٖنَتِيَ	wamenaṯiya
40	2	f	1	نَ	na	na						and to the children of neighbours.	na	نَ	na
51	3	a	1	مِمِ	mimi	mimi						I am your mother and am not yet infertile,	mimi	مِمِ	mimi
54	3	b	1	وَلَ	wala	wala						nor has my ability to reproduce diminished.	wala	وَلَ	wala
19	1	g	2	نِ	ni	ni		~					ni	نِ	ni
21	1	h	1	مْبُوْنَ	mbūna	mbona						Why do you wage war on me? 	mbūna	مْبُوْنَ	mbūna
39	2	e	2	قَؤُمُ	qaumu	kaumu							qaumu	قَؤُمُ	qaumu
44	2	g	1	كُوْسَ	kūsa	kosa						What kind of fault is my fault?	kūsa	كُوْسَ	kūsa
46	2	g	3	كُوْسَ	kūsa	kosa							kūsa	كُوْسَ	kūsa
53	3	a	3	سِتَاسَ	siṯāsa	sit'asa							siṯāsa	سِتَاسَ	siṯāsa
17	1	f	4	وٖنْدَانِ	wenḏāni	wendani							wenḏāni	وٖنْدَانِ	wenḏāni
62	3	d	2	كُنْڠِنٖ	kungine	kungine							kungine	كُنْڠِنٖ	kungine
35	2	d	2	كُنِيُوَ	kuniyuwa	kuniyuwa							kuniyuwa	كُنِيُوَ	kuniyuwa
20	1	g	3	مٖوَتٖنْدَانِ	mewaṯenḏāni	mewatendani							mewaṯenḏāni	مٖوَتٖنْدَانِ	mewaṯenḏāni
36	2	d	3	نِ	ni	ni							ni	نِ	ni
37	2	d	4	نَانِ	nāni	nani							nāni	نَانِ	nāni
22	1	h	2	هُنِپِجَ	hunipija	hunipija							hunipija	هُنِپِجَ	hunipija
23	1	h	3	زِتَ	ziṯa	zita							ziṯa	زِتَ	ziṯa
63	3	d	3	زِسِوَنِ	zisiwani	zisiwani							zisiwani	زِسِوَنِ	zisiwani
25	2	a	2	مِمِ	mimi	mimi							mimi	مِمِ	mimi
26	2	a	3	وَ	wa	wa							wa	وَ	wa
27	2	a	4	دَمُ	ḏamu	damu							ḏamu	دَمُ	ḏamu
52	3	a	2	مَامٖنُ	māmenu	mamenu							māmenu	مَامٖنُ	māmenu
29	2	b	2	وَ	wa	wa							wa	وَ	wa
41	2	f	2	وَنَ	wana	wana							wana	وَنَ	wana
42	2	f	3	وَ	wa	wa							wa	وَ	wa
43	2	f	4	مَجِرَنِ	majirani	majirani							majirani	مَجِرَنِ	majirani
45	2	g	2	لَنْڠُ	langu	langu							langu	لَنْڠُ	langu
47	2	g	4	ڠَانِ	gāni	gani							gāni	ڠَانِ	gāni
70	3	g	1	مَافُنْدِ	māfunḏi	mafundi						to craftsmen in every field,	māfunḏi	مَافُنْدِ	māfunḏi
78	4	a	1	نْدِمِ	nḏimi	ndimi						I am the mother of Bwana Muyaka,	nḏimi	نْدِمِ	nḏimi
390	17	e	2	اَلُوْنِپَ	alūnipa	alonipa							alūnipa	اَلُوْنِپَ	alūnipa
74	3	h	1	نَ	na	na						and to war heroes. 	na	نَ	na
48	2	h	1	مْبُوْنَ	mbūna	mbona						[O my children] why do you continue waging war on me? 	mbūna	مْبُوْنَ	mbūna
57	3	c	1	نِ	ni	ni		~				I have given birth to children in Mambasa,	ni	نِ	ni
86	4	c	3	كَذَلِكَ	kadhalika	kadhalika							kadhalika	كَذَلِكَ	kadhalika
14	1	f	1	سِوَنْڠُ	siwangu	siwangu		si				are not my own, but are the offspring of others.	siwangu	سِوَنْڠُ	siwangu
61	3	d	1	نَ	na	na						and in the other islands [of the Swahili],	na	نَ	na
67	3	f	1	نَ	na	na						and to religious leaders,	na	نَ	na
58	3	c	2	مٖزَا	mezā	mezaa							mezā	مٖزَا	mezā
60	3	c	4	مَمْبَاسَ	mambāsa	Mambasa							mambāsa	مَمْبَاسَ	mambāsa
64	3	e	1	نِزٖ	nize	nizee						to politicians	nize	نِزٖ	nize
65	3	e	2	وَنَ	wana	wana		~					wana	وَنَ	wana
68	3	f	2	زِيُوْنْڠُوْزِ	ziyūngūzi	ziongozi							ziyūngūzi	زِيُوْنْڠُوْزِ	ziyūngūzi
69	3	f	3	وَدِنِ	waḏini	wadini		wa					waḏini	وَدِنِ	waḏini
72	3	g	3	كُلَ	kula	kila							kula	كُلَ	kula
75	3	h	2	مَاشُجَا	māshujā	mashujaa							māshujā	مَاشُجَا	māshujā
80	4	a	3	مُيَاكَ	muyāka	Muyaka				Bwana Muyaka was the outstanding Swahili poet of 19th century Mombasa.  After his death many of his verses were recalled by Mu'allim Sikujua Abdallah al-Batawi (died 1890) and transcribed with annotations by W.E. Taylor (1856-1927). After Taylor’s death his papers were acquired by the library of the School of Oriental and African Studies (SOAS), London.\n			muyāka	مُيَاكَ	muyāka
81	4	b	1	پِيَ	piya	pia						and of Mwengo Athmani also,	piya	پِيَ	piya
82	4	b	2	مْوٖنْڠٗ	mwengo	Mwengo							mwengo	مْوٖنْڠٗ	mwengo
83	4	b	3	عَثْمَانِ	'athmāni	Athumani	'ath#u#māni			Mwengo Athmani: this 18th century poet from Pate composed the {\\FN{Utendi wa Tambuka}} (\\textit{The Epic of Heraklios}).			'athmāni	عَثْمَانِ	'athmāni
85	4	c	2	زَهِدِ	zahiḏi	Zahidi				Zahidi: see El-Maawy (2008).			zahiḏi	زَهِدِ	zahiḏi
13	1	e	2	كُنِشِكَ	kunishika	kunishika							kunishika	كُنِشِكَ	kunishika
15	1	f	2	نِ	ni	ni							ni	نِ	ni
16	1	f	3	وَ	wa	wa							wa	وَ	wa
361	16	e	3	سِيَاكِرِ	siyākiri	siyakiri							siyākiri	سِيَاكِرِ	siyākiri
55	3	b	2	سِنَ	sina	sina							sina	سِنَ	sina
56	3	b	3	پُنْڠُوَنِ	punguwani	punguwani							punguwani	پُنْڠُوَنِ	punguwani
66	3	e	3	سِيَاسَ	siyāsa	siyasa							siyāsa	سِيَاسَ	siyāsa
59	3	c	3	وَ	wa	wa							wa	وَ	wa
71	3	g	2	وَ	wa	wa							wa	وَ	wa
73	3	g	4	فَنِ	fani	fani							fani	فَنِ	fani
79	4	a	2	مَامَاكٖ	māmāke	mamake							māmāke	مَامَاكٖ	māmāke
76	3	h	3	وَ	wa	wa							wa	وَ	wa
77	3	h	4	زِتَ	ziṯa	zita							ziṯa	زِتَ	ziṯa
88	4	d	2	وٖنْڠِ	wengi	wengi							wengi	وٖنْڠِ	wengi
106	5	a	2	نْڠَلِيَ	ngaliya	angaliya							ngaliya	نْڠَلِيَ	ngaliya
89	4	d	3	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
90	4	d	4	وٖنْدَانِ	wenḏāni	wendani							wenḏāni	وٖنْدَانِ	wenḏāni
111	5	c	2	تَاكَاپُوْ	ṯākāpuu	takapo							ṯākāpuu	تَاكَاپُوْ	ṯākāpuu
93	4	e	3	نَ	na	na							na	نَ	na
153	7	b	1	سِيَاكُوْمَ	siyākūma	siyakoma						I have not yet reached the limit,	siyākūma	سِيَاكُوْمَ	siyākūma
141	6	e	2	هُتٖتَ	huṯeṯa	huteta							huṯeṯa	هُتٖتَ	huṯeṯa
117	5	e	2	تُوْنْڠٗ	ṯūngo	t'ungo							ṯūngo	تُوْنْڠٗ	ṯūngo
127	5	h	3	وَالُوْپِتَ	wālūpiṯa	walopita							wālūpiṯa	وَالُوْپِتَ	wālūpiṯa
96	4	f	2	مْبوَا	mbwā	mbwa							mbwā	مْبوَا	mbwā
129	6	a	2	مَالٖنْڠَ	mālenga	Malenga				The Bard of Mambasa refers to Ustadh Ahmad Nassir Juma Bhalo, see Chiraghdin (1971).\n			mālenga	مَالٖنْڠَ	mālenga
124	5	g	3	نْيَانِ	nyāni	nyani							nyāni	نْيَانِ	nyāni
131	6	a	4	مْڤِتَ	mviṯa	Mvita							mviṯa	مْڤِتَ	mviṯa
154	7	b	2	اُكِنڠُوْنِ	ukingūni	ukingoni							ukingūni	اُكِنڠُوْنِ	ukingūni
156	7	c	2	مُمٖنِپُوْزَ	mumenipūza	mumenipuuza							mumenipūza	مُمٖنِپُوْزَ	mumenipūza
103	4	h	3	كَمَ	kama	kama							kama	كَمَ	kama
136	6	c	1	نْيايُو	nyāyuu	nyayo						they followed in my footsteps,	nyāyuu	نْيايُو	nyāyuu
137	6	c	2	ولِزِفُوَتَ	ūlizifuwaṯa	ulizifuata							ūlizifuwaṯa	ولِزِفُوَتَ	ūlizifuwaṯa
133	6	b	2	پِيَ	piya	pia							piya	پِيَ	piya
126	5	h	2	وَنَانْڠُ	wanāngu	wanangu							wanāngu	وَنَانْڠُ	wanāngu
113	5	d	1	نِ	ni	ni		~				my dear friend, 	ni	نِ	ni
109	5	b	3	كِدَنِ	kiḏani	kidani							kiḏani	كِدَنِ	kiḏani
134	6	b	3	ػِرَاڠُ	kʲirāgu	Chiraghu		~					kʲirāgu	ػِرَاڠُ	kʲirāgu
112	5	c	3	كْوٖلٖيَ	kweleya	kweleya							kweleya	كْوٖلٖيَ	kweleya
143	6	f	2	هُفَلِييانِ	hufalı̄yāni	hufaliyani							hufalı̄yāni	هُفَلِييانِ	hufalı̄yāni
114	5	d	2	كْوَامْبِيَاءٗ	kwāmbiyao	kwambiyao							kwāmbiyao	كْوَامْبِيَاءٗ	kwāmbiyao
115	5	d	3	مْوٖنْدانِ	mwenḏāni	mwendani							mwenḏāni	مْوٖنْدانِ	mwenḏāni
150	7	a	2	كُزَا	kuzā	kuzaa							kuzā	كُزَا	kuzā
160	7	e	2	مٖئِتُوكٖزَ	meiṯūkeza	meitokeza							meiṯūkeza	مٖئِتُوكٖزَ	meiṯūkeza
118	5	e	3	زِمٖسَلِيَ	zimesaliya	zimesaliya							zimesaliya	زِمٖسَلِيَ	zimesaliya
130	6	a	3	وَ	wa	wa							wa	وَ	wa
208	9	g	1	ػَارٗ	kʲāro	Charo				\\textit{charo}: a name representing those who have their origins in the coastal hinterland (the \\textit{nyika}).\n		Charo and his colleagues	kʲāro	ػَارٗ	kʲāro
120	5	f	2	هَزِفِ	hazifi	hazifi							hazifi	هَزِفِ	hazifi
121	5	f	3	اَصِلَانِ	aṣilāni	asilani							aṣilāni	اَصِلَانِ	aṣilāni
145	6	g	2	پْوٖكٖ	pweke	pweke							pweke	پْوٖكٖ	pweke
146	6	g	3	اُوَنْدَانِ	uwanḏāni	uwandani							uwanḏāni	اُوَنْدَانِ	uwanḏāni
139	6	d	2	اُدُنِ	uḏuni	uduni							uḏuni	اُدُنِ	uḏuni
170	8	b	2	جَرِدَنِ	jariḏani	jaridani							jariḏani	جَرِدَنِ	jariḏani
148	6	h	2	اَمٖئِكِتَ	ameikiṯa	ameikita							ameikiṯa	اَمٖئِكِتَ	ameikiṯa
132	6	b	1	نَ	na	na						and Chiraghdin too,	na	نَ	na
138	6	d	1	هَاوَكُكِرِ	hāwakukiri	hawakukiri						they did not submit to lower standards.	hāwakukiri	هَاوَكُكِرِ	hāwakukiri
92	4	e	2	كُوْتِ	kūṯi	Koti				Ali Koti of Pate: see Chiraghdin (1987: 31-7).			kūṯi	كُوْتِ	kūṯi
142	6	f	1	لَكِنِ	lakini	lakini						but to what effect?	lakini	لَكِنِ	lakini
144	6	g	1	نْدِيٖ	nḏiye	ndiye						He remains alone in the field,	nḏiye	نْدِيٖ	nḏiye
149	7	a	1	بَادٗ	bāḏo	bado						I am still able to give birth.	bāḏo	بَادٗ	bāḏo
155	7	c	1	لَكِنِ	lakini	lakini						but you have all despised me.	lakini	لَكِنِ	lakini
94	4	e	4	مَتَاكَ	maṯāka	Mataka				Bwana Mataka’s full name is Muhammad bin Shee Mataka al-Famau (1825-1868). He was ruler of Siyu, as was his father. His mother was Mwana Kupona, famous for the poem of advice written to her daughter. Bwana Mataka died in Mombasa’s fort while imprisoned by the Busa‘idi.\n			maṯāka	مَتَاكَ	maṯāka
135	6	b	4	دِنِ	ḏini	dini				Shihabdin Chiraghdin (1934-1976). See the biography by his daughter Latifa Chiraghdin which came out in 2012.			ḏini	دِنِ	ḏini
97	4	f	3	مُوْيَ	mūya	moya							mūya	مُوْيَ	mūya
102	4	h	2	كَوَا	kawā	kawaa							kawā	كَوَا	kawā
152	7	a	4	وٖزَ	weza	weza							weza	وٖزَ	weza
151	7	a	3	نَ	na	na		~					na	نَ	na
158	7	d	2	فُوٗنِ	fuwoni	fuoni							fuwoni	فُوٗنِ	fuwoni
166	7	h	2	مُلِپُوْنِوَتَ	mulipūniwaṯa	muliponiwata							mulipūniwaṯa	مُلِپُوْنِوَتَ	mulipūniwaṯa
162	7	f	2	كَانُوْنِ	kānūni	kanuni							kānūni	كَانُوْنِ	kānūni
165	7	h	1	نْيِنْيِ	nyinyi	nyinyi							nyinyi	نْيِنْيِ	nyinyi
172	8	c	2	وَنَاءُ	wanau	wanao		~					wanau	وَنَاءُ	wanau
180	8	f	2	تُنْڠٗ	ṯungo	t'ungo							ṯungo	تُنْڠٗ	ṯungo
184	8	g	2	هَاوَتُوْك	hāwaṯūk	hawatoki							hāwaṯūk	هَاوَتُوْك	hāwaṯūk
168	8	a	2	كِسِكِتِكَ	kisikiṯika	kisikitika							kisikiṯika	كِسِكِتِكَ	kisikiṯika
185	8	g	3	پْوان	pwān	pwani							pwān	پْوان	pwān
173	8	c	3	اَنْدِكَ	anḏika	andika							anḏika	اَنْدِكَ	anḏika
175	8	d	2	نِ	ni	ni							ni	نِ	ni
189	8	h	4	مْڤِتَ	mviṯa	Mvita							mviṯa	مْڤِتَ	mviṯa
176	8	d	3	وَڠٖنِ	wageni	wageni							wageni	وَڠٖنِ	wageni
178	8	e	2	كَذَلِكَ	kadhalika	kadhalika							kadhalika	كَذَلِكَ	kadhalika
190	9	a	1	اَنڠَلِيَ	angaliya	angalia						Look at the textbooks	angaliya	اَنڠَلِيَ	angaliya
214	9	h	3	هُفُوَتَ	hufuwaṯa	hufuata							hufuwaṯa	هُفُوَتَ	hufuwaṯa
215	10	a	1	هُوَلِكْوَا	huwalikwā	hualikwa						When I am invited to conferences,	huwalikwā	هُوَلِكْوَا	huwalikwā
211	9	g	4	وٖنْدانِ	wenḏāni	wendani							wenḏāni	وٖنْدانِ	wenḏāni
216	10	a	2	كُوْنْڠَمَانٗ	kūngamāno	kongamano							kūngamāno	كُوْنْڠَمَانٗ	kūngamāno
241	11	b	2	مِتِحَانِ	miṯiḥāni	mitihani							miṯiḥāni	مِتِحَانِ	miṯiḥāni
219	10	b	3	نْدِيَانِ	nḏiyāni	ndiani							nḏiyāni	نْدِيَانِ	nḏiyāni
187	8	h	2	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
188	8	h	3	مْبوا	mbwā	mbwa							mbwā	مْبوا	mbwā
213	9	h	2	نْيُوْمَ	nyūma	nyuma							nyūma	نْيُوْمَ	nyūma
191	9	a	2	نَ	na	na							na	نَ	na
192	9	a	3	زِتَابُ	ziṯābu	zitabu							ziṯābu	زِتَابُ	ziṯābu
194	9	b	2	شُلٖنِ	shuleni	shuleni							shuleni	شُلٖنِ	shuleni
230	10	f	2	نِتٖنْدٖ	niṯenḏe	nitende							niṯenḏe	نِتٖنْدٖ	niṯenḏe
196	9	c	2	نَ	na	na							na	نَ	na
200	9	d	3	وَلَ	wala	wala							wala	وَلَ	wala
201	9	d	4	سِ	si	si							si	سِ	si
204	9	e	2	نْدِيٖ	nḏiye	ndiye							nḏiye	نْدِيٖ	nḏiye
205	9	e	3	كَتِبُ	kaṯibu	katibu							kaṯibu	كَتِبُ	kaṯibu
218	10	b	2	هُرُدِ	huruḏi	hurudi							huruḏi	هُرُدِ	huruḏi
207	9	f	2	سُكَانِ	sukāni	sukani							sukāni	سُكَانِ	sukāni
209	9	g	2	نَ	na	na							na	نَ	na
210	9	g	3	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
233	10	g	2	مُمٖئِخِنِ	mumeikhini	mumeihini							mumeikhini	مُمٖئِخِنِ	mumeikhini
221	10	c	2	اُتُنْڠُ	uṯungu	utungu							uṯungu	اُتُنْڠُ	uṯungu
220	10	c	1	هُوٗنَ	huwona	huona						I feel exceedingly bitter	huwona	هُوٗنَ	huwona
231	10	f	3	نْنِ	nni	nini							nni	نْنِ	nni
195	9	c	1	هَازَانْدِكْوِ	hāzānḏikwi	hazandikwi						They are written neither by Rajabu,	hāzānḏikwi	هَازَانْدِكْوِ	hāzānḏikwi
198	9	d	1	سِ	si	si						nor by Sudi nor by Shani.	si	سِ	si
206	9	f	1	اَشِشِيٖؤٗ	ashishiyeo	ashishiyeo						he is the helmsman. 	ashishiyeo	اَشِشِيٖؤٗ	ashishiyeo
212	9	h	1	نَاءٗ	nao	nao						follow. 	nao	نَاءٗ	nao
217	10	b	1	ػٖنْدَ	kʲenḏa	chenda						I turn back before I arrive.	kʲenḏa	ػٖنْدَ	kʲenḏa
229	10	f	1	لَكِنِ	lakini	lakini						but what can I do?	lakini	لَكِنِ	lakini
232	10	g	1	وَنَانْڠُ	wanāngu	wanangu						My children, you have missed your opportunity.	wanāngu	وَنَانْڠُ	wanāngu
240	11	b	1	ػَنْڠَلِيَ	kʲangaliya	changaliya						when I look at the results of the school exams.	kʲangaliya	ػَنْڠَلِيَ	kʲangaliya
222	10	c	3	مْنُو	mnuu	mnuu							mnuu	مْنُو	mnuu
258	11	h	2	تِنِ	ṯini	tini							ṯini	تِنِ	ṯini
239	11	a	4	مَاتُوْزِ	māṯūzi	matozi							māṯūzi	مَاتُوْزِ	māṯūzi
224	10	d	2	نْيِنْيِ	nyinyi	nyinyi							nyinyi	نْيِنْيِ	nyinyi
225	10	d	3	سِوَأٗنِ	siwaoni	siwaoni							siwaoni	سِوَأٗنِ	siwaoni
261	12	a	2	اُتَفِتِ	uṯafiṯi	utafiti							uṯafiṯi	اُتَفِتِ	uṯafiṯi
244	11	c	3	كِبْوٖزِ	kibwezi	Kibwezi							kibwezi	كِبْوٖزِ	kibwezi
235	10	h	2	مُمٖنِوَتَ	mumeniwaṯa	mumeniwata							mumeniwaṯa	مُمٖنِوَتَ	mumeniwaṯa
247	11	d	3	كِسُومُ	kisūmu	Kisumu				Kibwezi and Kisumu are places in the East African interior.\n			kisūmu	كِسُومُ	kisūmu
227	10	e	2	هُزِاُمَ	huziuma	huziuma							huziuma	هُزِاُمَ	huziuma
263	12	b	2	أُزَمِلِ	uzamili	uzamili							uzamili	أُزَمِلِ	uzamili
243	11	c	2	وَ	wa	wa							wa	وَ	wa
237	11	a	2	هُلِيَ	huliya	huliya							huliya	هُلِيَ	huliya
238	11	a	3	كْوَا	kwā	kwa							kwā	كْوَا	kwā
250	11	e	2	وَنَاءٗ	wanao	wanao							wanao	وَنَاءٗ	wanao
251	11	e	3	بَارِزِ	bārizi	barizi							bārizi	بَارِزِ	bārizi
246	11	d	2	وَ	wa	wa							wa	وَ	wa
255	11	g	2	كْوٖتُ	kweṯu	kwetu							kweṯu	كْوٖتُ	kweṯu
253	11	f	2	كِلٖلٖنِ	kileleni	kileleni							kileleni	كِلٖلٖنِ	kileleni
256	11	g	3	پْوانِ	pwāni	pwani							pwāni	پْوانِ	pwāni
264	12	b	3	ػُوٗنِ	kʲuwoni	chuwoni							kʲuwoni	ػُوٗنِ	kʲuwoni
266	12	c	2	نِ	ni	ni							ni	نِ	ni
267	12	c	3	كَاتِتِ	kāṯiṯi	katiti							kāṯiṯi	كَاتِتِ	kāṯiṯi
269	12	d	2	هَوَپَاتِكَانِ	hawapāṯikāni	hawapatikani							hawapāṯikāni	هَوَپَاتِكَانِ	hawapāṯikāni
348	16	a	2	كْوٖنْيٖ	kwenye	kwenye							kwenye	كْوٖنْيٖ	kwenye
300	13	g	2	هُنٖنَانِ	hunenāni	hunenani							hunenāni	هُنٖنَانِ	hunenāni
271	12	e	2	نْيَانِ	nyāni	nyani							nyāni	نْيَانِ	nyāni
272	12	e	3	نِ	ni	ni							ni	نِ	ni
273	12	e	4	مْلَئِتِ	mlaiṯi	mlaiti							mlaiṯi	مْلَئِتِ	mlaiṯi
276	12	f	3	نِ	ni	ni							ni	نِ	ni
277	12	f	4	نْيَانِ	nyāni	nyani							nyāni	نْيَانِ	nyāni
279	12	g	2	هَامُنِثَمِنِ	hāmunithamini	hamunithamini							hāmunithamini	هَامُنِثَمِنِ	hāmunithamini
302	13	h	2	اَوْ	aw	au							aw	اَوْ	aw
281	12	h	2	هَامُكُپَاتَ	hāmukupāṯa	hamukupata							hāmukupāṯa	هَامُكُپَاتَ	hāmukupāṯa
303	13	h	3	هُتٖتَ	huṯeṯa	huteta							huṯeṯa	هُتٖتَ	huṯeṯa
287	13	c	2	هَكُنَ	hakuna	hakuna							hakuna	هَكُنَ	hakuna
288	13	c	3	تٖنَ	ṯena	tena							ṯena	تٖنَ	ṯena
236	11	a	1	نَ	na	na						And I shed tears	na	نَ	na
242	11	c	1	وَنَفُنْدِ	wanafunḏi	wanafundi						Students from Kibwezi, 	wanafunḏi	وَنَفُنْدِ	wanafunḏi
245	11	d	1	نَ	na	na						and from Kisumu by the lake,	na	نَ	na
260	12	a	1	وَفَانْيَاءٗ	wafānyao	wafanyao						Amongst those who are researching	wafānyao	وَفَانْيَاءٗ	wafānyao
262	12	b	1	وَ	wa	wa						for degrees at the universities,	wa	وَ	wa
268	12	d	1	اَوْ	aw	au						 or non-existent.	aw	اَوْ	aw
270	12	e	1	نِ	ni	ni						Who is to be blamed?	ni	نِ	ni
274	12	f	1	مْوٖنْيٖ	mwenye	mwenye						Whose fault is it?	mwenye	مْوٖنْيٖ	mwenye
282	13	a	1	كِوَسِكِيَ	kiwasikiya	kiwasikiya						When I hear those who are not mother-tongue speakers speaking,	kiwasikiya	كِوَسِكِيَ	kiwasikiya
299	13	g	1	سِئٖلٖوِ	sielewi	sielewi						I do not understand what they are saying.	sielewi	سِئٖلٖوِ	sielewi
304	14	a	1	لَوْ	law	lau						Were Bwana Muyaka to return,	law	لَوْ	law
317	14	f	1	وَنِيُوَاءٗ	waniyuwao	waniyuwao						who know me well,	waniyuwao	وَنِيُوَاءٗ	waniyuwao
341	15	g	1	هِپِجْوَا	hipijwā	hipijwa						I am given a kick	hipijwā	هِپِجْوَا	hipijwā
228	10	e	3	زِتَانِ	ziṯāni	zitani				These words echo the words of the {\\FN{Inkishafi}}: ``wakauma zanda na kuiyuta''. Readers unfamiliar with this Swahili gesture of regret could consult Eastman and Omar (1985).\n			ziṯāni	زِتَانِ	ziṯāni
248	11	d	4	زِوَنِ	ziwani	ziwani				The lake is Lake Nyanza, also known as Lake Victoria.			ziwani	زِوَنِ	ziwani
306	14	a	3	تَارُدِ	ṯāruḏi	tarudi							ṯāruḏi	تَارُدِ	ṯāruḏi
290	13	d	2	نَ	na	na		~					na	نَ	na
291	13	d	3	ئِتَمَانِ	iṯamāni	itamani							iṯamāni	ئِتَمَانِ	iṯamāni
297	13	f	2	مَشَاپُوْ	mashāpuu	mashapu							mashāpuu	مَشَاپُوْ	mashāpuu
293	13	e	2	حَتَ	ḥaṯa	hata							ḥaṯa	حَتَ	ḥaṯa
294	13	e	3	لَذَ	ladha	ladha							ladha	لَذَ	ladha
295	13	e	4	هَيَانَ	hayāna	hayana							hayāna	هَيَانَ	hayāna
329	15	b	2	هَامُوْنَ	hāmūna	hamuna							hāmūna	هَامُوْنَ	hāmūna
305	14	a	2	مُيَاكَ	muyāka	Muyaka							muyāka	مُيَاكَ	muyāka
307	14	b	1	اَيْ	ay	ae						were he to come back to the world,	ay	اَيْ	ay
298	13	f	3	كَانْوَانِ	kānwāni	kanwani							kānwāni	كَانْوَانِ	kānwāni
308	14	b	2	تٖنَ	ṯena	tena							ṯena	تٖنَ	ṯena
309	14	b	3	دُنِيَانِ	ḏuniyāni	duniyani							ḏuniyāni	دُنِيَانِ	ḏuniyāni
320	14	g	2	مْوٖنْدٖ	mwenḏe	mwende							mwenḏe	مْوٖنْدٖ	mwenḏe
321	14	g	3	ڠٖرٖزَنِ	gerezani	gerezani							gerezani	ڠٖرٖزَنِ	gerezani
338	15	e	4	مْپِوِرِ	mpiwiri	mpwira							mpiwiri	مْپِوِرِ	mpiwiri
311	14	c	2	اِتَمْبِدِ	iṯambiḏi	itambidi							iṯambiḏi	اِتَمْبِدِ	iṯambiḏi
313	14	d	2	مَحَكَمَانِ	maḥakamāni	mahakamani							maḥakamāni	مَحَكَمَانِ	maḥakamāni
330	15	b	3	اِمَانِ	imāni	imani							imāni	اِمَانِ	imāni
315	14	e	2	نَ	na	na							na	نَ	na
316	14	e	3	مَشَهِدِ	mashahiḏi	mashahidi							mashahiḏi	مَشَهِدِ	mashahiḏi
323	14	h	2	حَتِيَ	ḥaṯiya	hatiya							ḥaṯiya	حَتِيَ	ḥaṯiya
324	14	h	3	كُوَپَاتَ	kuwapāṯa	kuwapata							kuwapāṯa	كُوَپَاتَ	kuwapāṯa
326	15	a	2	هَمُنَ	hamuna	hamuna							hamuna	هَمُنَ	hamuna
327	15	a	3	غٖيْرَ	ḡēra	ghera							ḡēra	غٖيْرَ	ḡēra
336	15	e	2	نِ	ni	ni							ni	نِ	ni
337	15	e	3	كَامَ	kāma	kama							kāma	كَامَ	kāma
334	15	d	2	هَمُنِثَمِنِ	hamunithamini	hamunithamini							hamunithamini	هَمُنِثَمِنِ	hamunithamini
340	15	f	2	اُوَنْدَانِ	uwanḏāni	uwandani							uwanḏāni	اُوَنْدَانِ	uwanḏāni
346	15	h	4	كُپِتَ	kupiṯa	kupita							kupiṯa	كُپِتَ	kupiṯa
351	16	b	2	وَنْڠُ	wangu	wangu							wangu	وَنْڠُ	wangu
352	16	b	3	وَمٖبُوْنِ	wamebūni	wamebuni							wamebūni	وَمٖبُوْنِ	wamebūni
354	16	c	2	حُرُ	ḥuru	huru							ḥuru	حُرُ	ḥuru
355	16	c	3	بَحَارِ	baḥāri	bahari							baḥāri	بَحَارِ	baḥāri
358	16	d	3	وَڠٖنِ	wageni	wageni							wageni	وَڠٖنِ	wageni
391	17	e	3	ئِنَ	ina	ina							ina	ئِنَ	ina
364	16	f	3	كِفَنِ	kifani	kifani							kifani	كِفَنِ	kifani
420	18	g	3	كْوَاءٗ	kwao	kwao							kwao	كْوَاءٗ	kwao
367	16	g	3	نِ	ni	ni							ni	نِ	ni
368	16	g	4	كْوا	kwā	kwa							kwā	كْوا	kwā
393	17	f	2	نِ	ni	ni							ni	نِ	ni
314	14	e	1	اَئٖتٖ	aeṯe	aete						and he would need to call witnesses	aeṯe	اَئٖتٖ	aeṯe
325	15	a	1	وَاللّٰهِ	wallähi	wallahi						Truly you have neither zeal	wallähi	وَاللّٰهِ	wallähi
328	15	b	1	وَلَ	wala	wala						nor self-confidence.	wala	وَلَ	wala
331	15	c	1	هَمُنَ	hamuna	hamuna						It irritates you not at all	hamuna	هَمُنَ	hamuna
333	15	d	1	كُوَ	kuwa	kuwa						that you do not esteem me.	kuwa	كُوَ	kuwa
335	15	e	1	مِمِ	mimi	mimi						I am just like a ball	mimi	مِمِ	mimi
347	16	a	1	حَتَ	ḥaṯa	hata						Even in the field of Swahili prosody,	ḥaṯa	حَتَ	ḥaṯa
353	16	c	1	زِلِزٗ	zilizo	zilizo						free verse,	zilizo	زِلِزٗ	zilizo
356	16	d	1	كْوَا	kwā	kwa						imitating foreigners.	kwā	كْوَا	kwā
362	16	f	1	سِ	si	si						That is not Swahili poetry.	si	سِ	si
394	17	f	3	نْيَانِ	nyāni	nyani							nyāni	نْيَانِ	nyāni
373	16	h	4	زَا	zā	za							zā	زَا	zā
376	17	a	2	مْوٖنْيٖوٖ	mwenyewe	mwenyewe							mwenyewe	مْوٖنْيٖوٖ	mwenyewe
377	17	a	3	سِنَ	sina	sina							sina	سِنَ	sina
396	17	g	2	سِ	si	si							si	سِ	si
379	17	b	2	نِ	ni	ni							ni	نِ	ni
381	17	b	4	ڠَانِ	gāni	gani							gāni	ڠَانِ	gāni
384	17	c	3	شِنَ	shina	shina							shina	شِنَ	shina
386	17	d	2	نَ	na	na							na	نَ	na
387	17	d	3	تَانْدُ	ṯānḏu	tandu							ṯānḏu	تَانْدُ	ṯānḏu
388	17	d	4	يَانْڠَانِ	yāngāni	yangani							yāngāni	يَانْڠَانِ	yāngāni
399	17	h	2	وَپِ	wapi	wapi							wapi	وَپِ	wapi
402	18	a	2	وٖنْڠِ	wengi	wengi							wengi	وٖنْڠِ	wengi
403	18	a	3	هُنِنٖنَ	huninena	huninena							huninena	هُنِنٖنَ	huninena
412	18	e	2	نَ	na	na							na	نَ	na
405	18	b	2	اَصِلَانِ	aṣilāni	asilani							aṣilāni	اَصِلَانِ	aṣilāni
413	18	e	3	وٖنْڠِ	wengi	wengi							wengi	وٖنْڠِ	wengi
414	18	e	4	سَانَ	sāna	sana							sāna	سَانَ	sāna
407	18	c	2	مْوٖنْيٖوٖ	mwenyewe	mwenyewe							mwenyewe	مْوٖنْيٖوٖ	mwenyewe
423	18	h	2	هَئِكُكَاتَ	haikukāṯa	haikukata							haikukāṯa	هَئِكُكَاتَ	haikukāṯa
416	18	f	2	زٗتٖ	zoṯe	zote							zoṯe	زٗتٖ	zoṯe
419	18	g	2	نَ	na	na							na	نَ	na
375	17	a	1	هَمْبِوَ	hambiwa	hambiwa						I am told that I belong to nobody in particular.	hambiwa	هَمْبِوَ	hambiwa
378	17	b	1	هِنِ	hini	hini						How extraordinary!	hini	هِنِ	hini
382	17	c	1	هُوَاءٖ	huwae	huwae						How can I be rootless below ground	huwae	هُوَاءٖ	huwae
385	17	d	1	كَاوَ	kāwa	kawa						and yet have branches above?	kāwa	كَاوَ	kāwa
395	17	g	1	كِوَ	kiwa	kiwa						If I do not hail from Swahililand,	kiwa	كِوَ	kiwa
398	17	h	1	نِ	ni	ni						then whence do I come? 	ni	نِ	ni
401	18	a	1	كُوَ	kuwa	kuwa						That many speak me, [Swahili],	kuwa	كُوَ	kuwa
406	18	c	1	يَاكُوَ	yākuwa	yakuwa						or that I have no owner.	yākuwa	يَاكُوَ	yākuwa
411	18	e	1	هُنٖنوَا	hunenwā	hunenwa						It is spoken by very many,	hunenwā	هُنٖنوَا	hunenwā
415	18	f	1	پٖمْبٖ	pembe	pembe						in all corners of the world,	pembe	پٖمْبٖ	pembe
418	18	g	1	كِنَ	kina	kina						yet the language remains firmly established in its homeland,	kina	كِنَ	kina
422	18	h	1	مِزِيٖ	miziye	miziye						its roots have not been severed. 	miziye	مِزِيٖ	miziye
370	16	h	1	هزٗ	hzo	hizo						These are preparations for war.	hzo	هزٗ	hzo
371	16	h	2	ن	n	ni							n	ن	n
372	16	h	3	مْبنُ	mbnu	mbinu							mbnu	مْبنُ	mbnu
374	16	h	5	زتَ	zṯa	zita							zṯa	زتَ	zṯa
380	17	b	3	عَجَابُ	'ajābu	ajabu							'ajābu	عَجَابُ	'ajābu
383	17	c	2	كاكُوْسَ	kākūsa	kakosa							kākūsa	كاكُوْسَ	kākūsa
397	17	g	3	اُسْوَاحِلِنِ	uswāḥilini	Uswahilini							uswāḥilini	اُسْوَاحِلِنِ	uswāḥilini
400	17	h	3	نَالِپُوپَاتَ	nālipūpāṯa	nalipopata							nālipūpāṯa	نَالِپُوپَاتَ	nālipūpāṯa
404	18	b	1	سِدَلِلِ	siḏalili	sidalili	si					is not of itself proof of origins,	siḏalili	سِدَلِلِ	siḏalili
409	18	d	1	كِنْڠٖرٖزَ	kingereza	Kingereza						What of the English language?	kingereza	كِنْڠٖرٖزَ	kingereza
410	18	d	2	هَامُوٗنِ	hāmuwoni	hamuoni							hāmuwoni	هَامُوٗنِ	hāmuwoni
417	18	f	3	دُنِيَانِ	ḏuniyāni	duniani							ḏuniyāni	دُنِيَانِ	ḏuniyāni
\.


--
-- Name: kiswahili_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('kiswahili_words_word_id_seq', 423, true);


--
-- Data for Name: maisha; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY maisha (poemline_id, stanza, pos, arabic, close, standard, english) FROM stdin;
\.


--
-- Data for Name: maisha_ar; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY maisha_ar (poemline_id, stanza, pos, arabic, close, standard, english) FROM stdin;
1	1	a	كْوَ إِينَ لَ رَهَمَانِ	kwa ı̄na la rahamāni	kwa ina la rahamani	
2	1	b	نَأَنْدَ نُذُومَ هِينِ	naanḏa nudhūma hı̄ni	naanda nudhuma hini	
3	1	c	إِينَ يَ پِيلِ رَمَانِ	ı̄na ya pı̄li ramāni	ina ya pili ramani	
4	1	d	نَمْوَنْدِكِيَ يَهَايَ	namwanḏikiya yahāya	namwandikiya yahaya	
5	2	a	كْوٖينْيٖ رَمَانِ يَ كْوَانْدَ	kwēnye ramāni ya kwānḏa	kwenye ramani ya kwanda	
6	2	b	بَنَاتِ نَلِوَفُونْدَ	banāṯi naliwafūnḏa	banati naliwafunda	
7	2	c	نَ هِينِ نِمٖئُِونْدَ	na hı̄ni nimeiūnḏa	na hini nimeiunda	
8	2	d	وَڤُلَانَ كُوَمْبِيَ	wavulāna kuwambiya	wavulana kuwambiya	
9	3	a	نَ أَسِيلِ يَ كْوَنْدِيكَ	na ası̄li ya kwanḏı̄ka	na asili ya kwandika	
10	3	b	نَهِيسِ وَانَ وَتَاكَ	nahı̄si wāna waṯāka	nahisi wana wataka	
11	3	c	بَابَ پِيَ كَذَلِيكَ	bāba piya kadhalı̄ka	baba piya kadhalika	
12	3	d	مِيمِ أَلِنَنْدِكِيَ	mı̄mi alinanḏikiya	mimi alinandikiya	
13	4	a	بَابَ بوَانَ أَهمَادِ	bāba bwāna ahmāḏi	baba bwana ahmadi	
14	4	b	أَتَمْجَازِ وَدُودِ	aṯamjāzi waḏūḏi	atamjazi wadudi	
15	4	c	كْوَانِ أَلِجِتَهِيدِ	kwāni alijiṯahı̄ḏi	kwani alijitahidi	
16	4	d	كُنَنْدِكِيَ وَسِيَ	kunanḏikiya wasiya	kunandikiya wasiya	
17	5	a	هَاپٗ زَمَانِ زَ يَانَ	hāpo zamāni za yāna	hapo zamani za yana	
18	5	b	نْدِيٗ لَ وَسِيَ يِينَ	nḏiyo la wasiya ı̄ı̄na	ndiyo la wasiya yina	
19	5	c	أَلٗنَنْدِكِئَ بوَانَ	alonanḏikia bwāna	alonandikia bwana	
20	5	d	بَبَانْڠُ كَنِوَتِيَ	babāngu kaniwaṯiya	babangu kaniwatiya	
21	6	a	نَامِ كَتِيكَ رَمَانِ	nāmi kaṯı̄ka ramāni	nami katika ramani	
22	6	b	تَيِپِينْدَ كُبَئِينِ	ṯayipı̄nḏa kubaı̄ni	tayipinda kubaini	
23	6	c	يَالٖ نِنَيٗؤَمِينِ	yāle ninayoamı̄ni	yale ninayoamini	
24	6	d	يَوٖيزَ كُسَئِدِيَ	yawēza kusaiḏiya	yaweza kusaidiya	
25	7	a	تَنٖينَ نَلٗيَتُومَ	ṯanēna naloyaṯūma	tanena naloyatuma	
26	7	b	نَ يَالٖ نِلٗيَسٗومَ	na yāle niloyasōma	na yale niloyasoma	
27	7	c	تَزِتَايَ نَ هٖكِيمَ	ṯaziṯāya na hekı̄ma	tazitaya na hekima	
28	7	d	كْوَ وَاتُ نِلٗپٗكٖيَ	kwa wāṯu nilopokeya	kwa watu nilopokeya	
\.


--
-- Name: maisha_ar_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('maisha_ar_poemline_id_seq', 28, true);


--
-- Data for Name: maisha_mume; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY maisha_mume (poemline_id, stanza, pos, arabic, close, standard, english) FROM stdin;
1	1	a	كْوَ إِينَ لَ رَهَمَانِ 	kwa ı̄na la rahamāni	kwa ina la rahamani	
2	1	b	 نَأَنْدَ نُذُومَ هِينِ 	naanḏa nudhūma hı̄ni	naanda nudhuma hini	
3	1	c	إِينَ يَ پِيلِ رَمَانِ 	ı̄na ya pı̄li ramāni	ina ya pili ramani	
4	1	d	 نَمْوَنْدِكِيَ يَهَايَ	namwanḏikiya yahāya	namwandikiya yahaya	
5	2	a	كْوٖينْيٖ رَمَانِ يَ كْوَانْدَ 	kwēnye ramāni ya kwānḏa	kwenye ramani ya kwanda	
6	2	b	 بَنَاتِ نَلِوَفُونْدَ 	banāṯi naliwafūnḏa	banati naliwafunda	
7	2	c	نَ هِينِ نِمٖئُِونْدَ 	na hı̄ni nimeiūnḏa	na hini nimeiunda	
8	2	d	 وَڤُلَانَ كُوَمْبِيَ	wavulāna kuwambiya	wavulana kuwambiya	
9	3	a	نَ أَسِيلِ يَ كْوَنْدِيكَ 	na ası̄li ya kwanḏı̄ka	na asili ya kwandika	
10	3	b	 نَهِيسِ وَانَ وَتَاكَ 	nahı̄si wāna waṯāka	nahisi wana wataka	
11	3	c	بَابَ پِيَ كَذَلِيكَ 	bāba piya kadhalı̄ka	baba piya kadhalika	
12	3	d	 مِيمِ أَلِنَنْدِكِيَ	mı̄mi alinanḏikiya	mimi alinandikiya	
13	4	a	بَابَ بوَانَ أَهمَادِ 	bāba bwāna ahmāḏi	baba bwana ahmadi	
14	4	b	 أَتَمْجَازِ وَدُودِ 	aṯamjāzi waḏūḏi	atamjazi wadudi	
15	4	c	كْوَانِ أَلِجِتَهِيدِ 	kwāni alijiṯahı̄ḏi	kwani alijitahidi	
16	4	d	 كُنَنْدِكِيَ وَسِيَ	kunanḏikiya wasiya	kunandikiya wasiya	
17	5	a	هَاپٗ زَمَانِ زَ يَانَ 	hāpo zamāni za yāna	hapo zamani za yana	
18	5	b	 نْدِيٗ لَ وَسِيَ يِينَ 	nḏiyo la wasiya ı̄ı̄na	ndiyo la wasiya yina	
19	5	c	أَلٗنَنْدِكِئَ بوَانَ 	alonanḏikia bwāna	alonandikia bwana	
20	5	d	 بَبَانْڠُ كَنِوَتِيَ	babāngu kaniwaṯiya	babangu kaniwatiya	
21	6	a	نَامِ كَتِيكَ رَمَانِ 	nāmi kaṯı̄ka ramāni	nami katika ramani	
22	6	b	 تَيِپِينْدَ كُبَئِينِ 	ṯayipı̄nḏa kubaı̄ni	tayipinda kubaini	
23	6	c	يَالٖ نِنَيٗؤَمِينِ 	yāle ninayoamı̄ni	yale ninayoamini	
24	6	d	 يَوٖيزَ كُسَئِدِيَ	yawēza kusaiḏiya	yaweza kusaidiya	
25	7	a	تَنٖينَ نَلٗيَتُومَ 	ṯanēna naloyaṯūma	tanena naloyatuma	
26	7	b	 نَ يَالٖ نِلٗيَسٗومَ 	na yāle niloyasōma	na yale niloyasoma	
27	7	c	تَزِتَايَ نَ هٖكِيمَ 	ṯaziṯāya na hekı̄ma	tazitaya na hekima	
28	7	d	 كْوَ وَاتُ نِلٗپٗكٖيَ	kwa wāṯu nilopokeya	kwa watu nilopokeya	
29	8	a	يَالٖ نِتَيَكُسَانْيَ 	yāle niṯayakusānya	yale nitayakusanya	
30	8	b	 مْبَالِ مْبَالِ كُتَنْڠَانْيَ 	mbāli mbāli kuṯangānya	mbali mbali kutanganya	
31	8	c	لٖينْڠٗ لَانْڠُ نِ كُفَانْيَ 	lēngo lāngu ni kufānya	lengo langu ni kufanya	
32	8	d	 كَامَ لَ مَئِيشَ بٗويَ	kāma la maı̄sha bōya	kama la maisha boya	
33	9	a	بٗويَ هِيلِ لَ مَئِيشَ 	bōya hı̄li la maı̄sha	boya hili la maisha	
34	9	b	 كَاتُ هَلِتٗزَمِيشَ 	kāṯu haliṯozamı̄sha	katu halitozamisha	
35	9	c	أَشِكَاءٗ تَمْڤُوشَ 	ashikāo ṯamvūsha	ashikao tamvusha	
36	9	d	 بَنْدَارِ تَسِكِلِيَ	banḏāri ṯasikiliya	bandari tasikiliya	
37	10	a	مْوَنَانْڠُ أُكِئَزِيمُ 	mwanāngu ukiazı̄mu	mwanangu ukiazimu	
38	10	b	 كُؤٗوَ كْوَانْدَ فَهَامُ 	kuowa kwānḏa fahāmu	kuowa kwanda fahamu	
39	10	c	كُتٖؤُوَ نِ مُهِيمُ 	kuṯeuwa ni muhı̄mu	kuteuwa ni muhimu	
40	10	d	 نِ أَامرِ يَ شَرِيَ	ni āmri ya shariya	ni amri ya shariya	
41	11	a	مْتُومِ أَلِبَئِينِ 	mṯūmi alibaı̄ni	mtumi alibaini	
42	11	b	 أَكَتوَمْبِيَ أٗوَانِ 	akaṯwambiya owāni	akatwambiya owani	
43	11	c	مْوَنَامْكٖ مْوٖينْيٖ دِينِ 	mwanāmke mwēnye ḏı̄ni	mwanamke mwenye dini	
44	11	d	 مُونْڠُ تَوَبَرِكِيَ	mūngu ṯawabarikiya	mungu tawabarikiya	
45	12	a	مْوَنَانْڠُ سِتَاكٖ مْكٖ 	mwanāngu siṯāke mke	mwanangu sitake mke	
46	12	b	 كْوَ وٖيمَ وَ أُومْبٗ لَاكٖ 	kwa wēma wa ūmbo lāke	kwa wema wa umbo lake	
47	12	c	نَسَابَ نَ پَاتٗ لَاكٖ 	nasāba na pāṯo lāke	nasaba na pato lake	
48	12	d	 مَيُتٗونِ أُتَنْڠِيَ	mayuṯōni uṯangiya	mayutoni utangiya	
49	13	a	وَالَ دِينِ هَئِنٖينِ 	wāla ḏı̄ni hainēni	wala dini haineni	
50	13	b	 أٗوَ شُڠُؤُ لَ أُونِ 	owa shuguu la ūni	owa shuguu la uni	
51	13	c	كِشُونَ كِيلٗ نَ دِينِ 	kishūna kı̄lo na ḏı̄ni	kishuna kilo na dini	
52	13	d	 كُكِؤٗوَ سِ هَتِيَ	kukiowa si haṯiya	kukiowa si hatiya	
53	14	a	مْوٖينْيٖ نَسَابَ تُكُوفُ 	mwēnye nasāba ṯukūfu	mwenye nasaba tukufu	
54	14	b	 نَ كْوَ مٗولَ مْتِئِيفُ 	na kwa mōla mṯiı̄fu	na kwa mola mtiifu	
55	14	c	هَاوِ مْتُ مٖخَلِيفُ 	hāwi mṯu meẖalı̄fu	hawi mtu mehalifu	
56	14	d	 كَامَ هُويٗ كُزٖنْڠٖيَ	kāma hūyo kuzengeya	kama huyo kuzengeya	
57	15	a	نَ مْكٖ أَالٗ نَ چَاكٖ 	na mke ālo na chāke	na mke alo na chake	
58	15	b	 سِكْوَمْبِئِ سِمْتَاكٖ 	sikwambii simṯāke	sikwambii simtake	
59	15	c	بٗورَ أَاوٖ دِينِ يَاكٖ 	bōra āwe ḏı̄ni yāke	bora awe dini yake	
60	15	d	 مٖشِيكَ هَكُمْبِرِيَ	meshı̄ka hakumbiriya	meshika hakumbiriya	
61	16	a	دِينِ نِ كَامَ بُرٖيكِ 	ḏı̄ni ni kāma burēki	dini ni kama bureki	
62	16	b	 هُمزِوِيَ هَتٗوكِ 	humziwiya haṯōki	humziwiya hatoki	
63	16	c	مِپَكَانِ نَ هَرُوكِ 	mipakāni na harūki	mipakani na haruki	
64	16	d	 أَكِيوَ تَئِتُمِيَ	akı̄wa ṯaiṯumiya	akiwa taitumiya	
65	17	a	نَ دِينِ هُمزِوِيزَ 	na ḏı̄ni humziwı̄za	na dini humziwiza	
66	17	b	 كُتٖينْدَ يَسٗپٖنْدٖيزَ 	kuṯēnḏa yasopenḏēza	kutenda yasopendeza	
67	17	c	نَ نْدِيپٗ كَكُهِمِيزَ 	na nḏı̄po kakuhimı̄za	na ndipo kakuhimiza	
68	17	d	 مْوٖينْيٖ دِينِ كْوَنْڠَلِيَ	mwēnye ḏı̄ni kwangaliya	mwenye dini kwangaliya	
69	18	a	دِينِ نِنَيٗئِنٖينَ 	ḏı̄ni ninayoinēna	dini ninayoinena	
70	18	b	 سِكُوَ نَايٗ نِ إِينَ 	sikuwa nāyo ni ı̄na	sikuwa nayo ni ina	
71	18	c	دِينِ نِ كْوَنْدَامَ سَانَ 	ḏı̄ni ni kwanḏāma sāna	dini ni kwandama sana	
72	18	d	 أَامرِ زَاكٖ جَلِيَ	āmri zāke jaliya	amri zake jaliya	
73	19	a	نِ دِينِ كْوٖينْيٖ مَئِيشَ 	ni ḏı̄ni kwēnye maı̄sha	ni dini kwenye maisha	
74	19	b	 مْتُ إِيوٖ هُمْوٖنْدٖيشَ 	mṯu ı̄we humwenḏēsha	mtu iwe humwendesha	
75	19	c	سِ دِينِ يَ كُؤٗنٖيشَ 	si ḏı̄ni ya kuonēsha	si dini ya kuonesha	
76	19	d	 وَاتُ كُوَهَدَلِيَ	wāṯu kuwahaḏaliya	watu kuwahadaliya	
77	20	a	نِ دِينِ إِلِيٗ نْدَانِ 	ni ḏı̄ni iliyo nḏāni	ni dini iliyo ndani	
78	20	b	 إِلِيٗكِيتَ مٗيٗونِ 	iliyokı̄ṯa moyōni	iliyokita moyoni	
79	20	c	نْدِيٗ هُوَ نِ سُكَانِ 	nḏiyo huwa ni sukāni	ndiyo huwa ni sukani	
80	20	d	 يَ كُمُؤٗنْڠٗوزَ نْدِيَ	ya kumuongōza nḏiya	ya kumuongoza ndiya	
81	21	a	نِ أُكِيسَ كُؤَمُوَ 	ni ukı̄sa kuamuwa	ni ukisa kuamuwa	
82	21	b	 نِ فُلَانِ تَمُؤٗوَ 	ni fulāni ṯamuowa	ni fulani tamuowa	
83	21	c	فَانْيَ مَامْبٗ سَوَسَاوَ 	fānya māmbo sawasāwa	fanya mambo sawasawa	
84	21	d	 سَنْدَامٖ يَ جٗونْڠٗ نْدِيَ	sanḏāme ya jōngo nḏiya	sandame ya jongo ndiya	
85	22	a	أُسِفَانْيٖ يَ شٖشٖيڠِ 	usifānye ya sheshēgi	usifanye ya sheshegi	
86	22	b	 كَامَ وَاتُ وٖينْيٖ ڠٗوڠِ 	kāma wāṯu wēnye gōgi	kama watu wenye gogi	
87	22	c	سِئِپٖيكٖ زِڠِزَاڠِ 	siipēke zigizāgi	siipeke zigizagi	
88	22	d	 هَرُوسِ نِمٖكْوَمْبِيَ	harūsi nimekwambiya	harusi nimekwambiya	
89	23	a	كُولَ إِكِيوَ نِ پٖيسِ 	kūla ikı̄wa ni pēsi	kula ikiwa ni pesi	
90	23	b	 هُوَ نِ بٗورَ هَرُوسِ 	huwa ni bōra harūsi	huwa ni bora harusi	
91	23	c	فَانْيَ مَامْبٗ يَ كِئَاسِ 	fānya māmbo ya kiāsi	fanya mambo ya kiasi	
92	23	d	 كْوَ غَرَامَ نْڠٗومَ پِيَ	kwa ḡarāma ngōma piya	kwa gharama ngoma piya	
93	24	a	مَكُوبوَ أُسِيَتَاكٖ 	makūbwa usiyaṯāke	makubwa usiyatake	
94	24	b	 نَ مِپَاكَ أُسِرُوكٖ 	na mipāka usirūke	na mipaka usiruke	
95	24	c	پِيَ أُپَانْدٖ وَ مْكٖ 	piya upānḏe wa mke	piya upande wa mke	
96	24	d	 وَئِلٖيزٖ كَامَ هَايَ	wailēze kāma hāya	waileze kama haya	
97	25	a	زِكِيوَ نْيِينْڠِ غَرَامَ 	zikı̄wa nı̄ı̄ngi ḡarāma	zikiwa nyingi gharama	
98	25	b	 نَ مَيُوتٗ نِ لَزِيمَ 	na mayūṯo ni lazı̄ma	na mayuto ni lazima	
99	25	c	نْڠٗومَ زِكِيسَ كُكٗومَ 	ngōma zikı̄sa kukōma	ngoma zikisa kukoma	
100	25	d	 نِ لَوَامَ هُسَلِيَ	ni lawāma husaliya	ni lawama husaliya	
101	26	a	فَانْيَ مَامْبٗ يَ كَدِيرِ 	fānya māmbo ya kaḏı̄ri	fanya mambo ya kadiri	
102	26	b	 سِتَاكٖ مْنٗ فَخَارِ 	siṯāke mno faẖāri	sitake mno fahari	
103	26	c	نَكُؤُسِيَ سِكِيرِ 	nakuusiya sikı̄ri	nakuusiya sikiri	
104	26	d	 هَفُولَ زَ مَأَسِيَ	hafūla za maasiya	hafula za maasiya	
105	27	a	هَفُولَ زَ إِسِرَافُ 	hafūla za isirāfu	hafula za isirafu	
106	27	b	 نَ زَ مَڠٗومَ مَچَافُ 	na za magōma machāfu	na za magoma machafu	
107	27	c	نَ كُوَ تُوتُ كْوَ أُوفُ 	na kuwa ṯūṯu kwa ūfu	na kuwa tutu kwa ufu	
108	27	d	 دِينِ هَايٗ هُزُوِيَ	ḏı̄ni hāyo huzuwiya	dini hayo huzuwiya	
109	28	a	مِيلَ يٖيتُ أُسِوَاتٖ 	mı̄la yēṯu usiwāṯe	mila yetu usiwate	
110	28	b	 مْفَانٗ كُڤِيشَ پٖيتٖ 	mfāno kuvı̄sha pēṯe	mfano kuvisha pete	
111	28	c	سِ يٖيتُ أُسِفُؤَاتٖ 	si yēṯu usifuāṯe	si yetu usifuate	
112	28	d	 وٖينْڠِ وَنْڠَكَزَنِيَ	wēngi wangakazaniya	wengi wangakazaniya	
113	29	a	نِ مِيلَ يَ كِنَسَارَ 	ni mı̄la ya kinasāra	ni mila ya kinasara	
114	29	b	 كُئِوَاتَ نْدِؤٗ بٗورَ 	kuiwāṯa nḏio bōra	kuiwata ndio bora	
115	29	c	وَنْڠَاوَ وَتَكُكٖيرَ 	wangāwa waṯakukēra	wangawa watakukera	
116	29	d	 وَاجَ كْوَ كُتٗئٖلٖيَ	wāja kwa kuṯoeleya	waja kwa kutoeleya	
117	30	a	نَ كْوٖينْدَ كُوپَ مْكٗونٗ 	na kwēnḏa kūpa mkōno	na kwenda kupa mkono	
118	30	b	 أُسِكِيرِ تَنْڠَمَانٗ 	usikı̄ri ṯangamāno	usikiri tangamano	
119	30	c	هَاتَ أَالٗ نْدُويٗ مْنٗ 	hāṯa ālo nḏūyo mno	hata alo nduyo mno	
120	30	d	 سِمُؤَاتٖ نَاوٖ كُويَ	simuāṯe nāwe kūya	simuate nawe kuya	
121	31	a	نْيُومْبَ يَاكٗ سِئَسِيسِ 	nyūmba yāko siası̄si	nyumba yako siasisi	
122	31	b	 كْوَ مْسِينْڠِ وَ مَأَسِ 	kwa msı̄ngi wa maasi	kwa msingi wa maasi	
123	31	c	تَئِڤُتِيَ نُهُوسِ 	ṯaivuṯiya nuhūsi	taivutiya nuhusi	
124	31	d	 نَ أُكٗرٗوفِ كُنْڠِيَ	na ukorōfi kungiya	na ukorofi kungiya	
125	32	a	نَ مَأَسِ نِنٖنَايٗ 	na maasi ninenāyo	na maasi ninenayo	
126	32	b	 نِ كُولَ مَامْبٗ أَمْبَايٗ 	ni kūla māmbo ambāyo	ni kula mambo ambayo	
127	32	c	مٗولَ أَيَتُكِئَايٗ 	mōla ayaṯukiāyo	mola ayatukiayo	
128	32	d	 نَ كُولَ أَلٗزِوِيَ	na kūla aloziwiya	na kula aloziwiya	
129	33	a	مٗويَ مٗويَ سِتٗوٖيزَ 	mōya mōya siṯowēza	moya moya sitoweza	
130	33	b	 كُتٗنْدٗوَ كُكْوٖلٖيزَ 	kuṯonḏowa kukwelēza	kutondowa kukweleza	
131	33	c	نِمٖكُوپَ مُؤَنْڠَازَ 	nimekūpa muangāza	nimekupa muangaza	
132	33	d	 وَ نْدِيَ كُفُؤَتِيَ	wa nḏiya kufuaṯiya	wa ndiya kufuatiya	
133	34	a	نِمٖكُوپَ نِ كِيَاسِ 	nimekūpa ni kiyāsi	nimekupa ni kiyasi	
134	34	b	 كِتُميِئٖ نَاوٖ بَاسِ 	kiṯumyie nāwe bāsi	kitumyie nawe basi	
135	34	c	كْوَ مَنْڠِنٖيٗ كُكِيسِ 	kwa mangineyo kukı̄si	kwa mangineyo kukisi	
136	34	d	 كْوَ مِزَانِ كُتُمِيَ	kwa mizāni kuṯumiya	kwa mizani kutumiya	
137	35	a	نْيُومْبَ نْجٖيمَ نِ مْسِنْجِ 	nyūmba njēma ni msinji	nyumba njema ni msinji	
138	35	b	 تَامُ يَ چَاءِ سِ رَنْجِ 	ṯāmu ya chāi si ranji	tamu ya chai si ranji	
139	35	c	وٖينْڠِ مٖتِلِيوَ تَنْجِ 	wēngi meṯilı̄wa ṯanji	wengi metiliwa tanji	
140	35	d	 كْوَ فَخَارِ كُزٖنْڠٖيَ	kwa faẖāri kuzengeya	kwa fahari kuzengeya	
141	36	a	كِيوَ نِ لَزِيمَ سَانَ 	kı̄wa ni lazı̄ma sāna	kiwa ni lazima sana	
142	36	b	 هِيلٗ لَ كُؤَنْدَمَانَ 	hı̄lo la kuanḏamāna	hilo la kuandamana	
143	36	c	شٖمٖڠِيٗ مْڤُلَانَ 	shemegiyo mvulāna	shemegiyo mvulana	
144	36	d	 أَنْدَمَنَانِ پَمٗويَ	anḏamanāni pamōya	andamanani pamoya	
145	37	a	أَوْ مْوٖنْڠِينٖ يٗيٗوتٖ 	aw mwengı̄ne yoyōṯe	au mwengine yoyote	
146	37	b	 مَهَرِيمُ نَ فُؤَاتٖ 	maharı̄mu na fuāṯe	maharimu na fuate	
147	37	c	أَجِنَابُ سِمُؤَاتٖ 	ajinābu simuāṯe	ajinabu simuate	
148	37	d	 مْكٖؤٗ كُمْوَنْڠَلِيَ	mkeo kumwangaliya	mkeo kumwangaliya	
149	38	a	رَفِيكِ سِمُؤَامْنِ 	rafı̄ki simuāmni	rafiki simuamni	
150	38	b	 أُكَمْتِيَ نْيُمْبَانِ 	ukamṯiya nyumbāni	ukamtiya nyumbani	
151	38	c	إِيلَ ذَرُورَ فُلَانِ 	ı̄la dharūra fulāni	ila dharura fulani	
152	38	d	 سِكُويٖ إِكِتٗكٖيَ	sikūye ikiṯokeya	sikuye ikitokeya	
153	39	a	رَفِيكِ أُسِملِيچٖ 	rafı̄ki usimlı̄che	rafiki usimliche	
154	39	b	 نِ زَئِيدِ هُويٗ مْچٖ 	ni zaı̄ḏi hūyo mche	ni zaidi huyo mche	
155	39	c	كْوَ وَاءٗ مَامْبٗ يَ چٖيچٖ 	kwa wāo māmbo ya chēche	kwa wao mambo ya cheche	
156	39	d	 هُوَ أُسٗلِذَنِيَ	huwa usolidhaniya	huwa usolidhaniya	
157	40	a	زِزِينِ كُتِيَ سِيمْبَ 	zizı̄ni kuṯiya sı̄mba	zizini kutiya simba	
158	40	b	 نِ كَامَ مٗوتٗ نَ پَامْبَ 	ni kāma mōṯo na pāmba	ni kama moto na pamba	
159	40	c	مَارَ مٗويَ هُزِسُومْبَ 	māra mōya huzisūmba	mara moya huzisumba	
160	40	d	 نَ يِيڤُ لِكَسَلِيَ	na ı̄ı̄vu likasaliya	na yivu likasaliya	
161	41	a	رَفِيكِ كِنْڠِيَ نْدَانِ 	rafı̄ki kingiya nḏāni	rafiki kingiya ndani	
162	41	b	 سِكُويٖ أُكَتَمَانِ 	sikūye ukaṯamāni	sikuye ukatamani	
163	41	c	سَامْبٖ أٗونَ نِ نْيُمْبَانِ 	sāmbe ōna ni nyumbāni	sambe ona ni nyumbani	
164	41	d	 هٖئٖ أُتَيِتٗنْڠٖيَ	hee uṯayiṯongeya	hee utayitongeya	
165	42	a	هِيٗ كْوٖيتُ سِيٗ مِيلَ 	hiyo kwēṯu siyo mı̄la	hiyo kwetu siyo mila	
166	42	b	 كُنْڠِيَ كُولَ مَهَالَ 	kungiya kūla mahāla	kungiya kula mahala	
167	42	c	پَاسِ هٗودِ نَ سُمِيلَ 	pāsi hōḏi na sumı̄la	pasi hodi na sumila	
168	42	d	 سِيٗ يٖيتُ مَزٗوٖيَ	siyo yēṯu mazoweya	siyo yetu mazoweya	
169	43	a	يَلِنَكَازِ مَدَاكَ 	yalinakāzi maḏāka	yalinakazi madaka	
170	43	b	 نِ وَڠٖينِ كُوَدَاكَ 	ni wagēni kuwaḏāka	ni wageni kuwadaka	
171	43	c	مَدَاكَ نِ كُوَوٖيكَ 	maḏāka ni kuwawēka	madaka ni kuwaweka	
172	43	d	 نَ نْدَانِ كُتٗتُنْڠِيَ	na nḏāni kuṯoṯungiya	na ndani kutotungiya	
173	44	a	إِيلَ أَاوٖ نِ مْڠٖينِ 	ı̄la āwe ni mgēni	ila awe ni mgeni	
174	44	b	 وَ كُشُكِيَ نْيُمْبَانِ 	wa kushukiya nyumbāni	wa kushukiya nyumbani	
175	44	c	هُنْڠِيَ نَ هَمُؤٗونِ 	hungiya na hamuōni	hungiya na hamuoni	
176	44	d	 أَلِيٗ نْدَانِ ممٗويَ	aliyo nḏāni mmōya	aliyo ndani mmoya	
177	45	a	نَ أُچٖينْدَ سَفَرِينِ 	na uchēnḏa safarı̄ni	na uchenda safarini	
178	45	b	 كَشُكِيٖ هٗتٖلِينِ 	kashukiye hoṯelı̄ni	kashukiye hotelini	
179	45	c	سِپٖينْدٖ سَانَ نْيُمْبَانِ 	sipēnḏe sāna nyumbāni	sipende sana nyumbani	
180	45	d	 إِيلَ نِ كُپِيتَ نْدِيَ	ı̄la ni kupı̄ṯa nḏiya	ila ni kupita ndiya	
181	46	a	أُكِمْوٖنْدٖيَ نْيُمْبَانِ 	ukimwenḏeya nyumbāni	ukimwendeya nyumbani	
182	46	b	 مْوٖينْيٖ تٗوتٗ مَسِكَانِ 	mwēnye ṯōṯo masikāni	mwenye toto masikani	
183	46	c	أَوْ أَالٗ مَسِكِينِ 	aw ālo masikı̄ni	au alo masikini	
184	46	d	 تَأَبُونِ هُمْتِيَ	ṯaabūni humṯiya	taabuni humtiya	
185	47	a	نَ إِوَاپٗ هُونَ بُودِ 	na iwāpo hūna būḏi	na iwapo huna budi	
186	47	b	 هُكُفَانْيَ كْوَ كَسِيدِ 	hukufānya kwa kası̄ḏi	hukufanya kwa kasidi	
187	47	c	سِيكُ تَاتُ أُسِزِيدِ 	sı̄ku ṯāṯu usizı̄ḏi	siku tatu usizidi	
188	47	d	 سِؤٗنْڠٖيزٖ هَاتَ مٗويَ	siongēze hāṯa mōya	siongeze hata moya	
189	48	a	نَ هِيلٗ وٖيوٖ سِتٖينْدٖ 	na hı̄lo wēwe siṯēnḏe	na hilo wewe sitende	
190	48	b	 إِيلَ مَامْبٗ يَكُشِينْدٖ 	ı̄la māmbo yakushı̄nḏe	ila mambo yakushinde	
191	48	c	مْتٖرٖيمْكٗ سِپٖينْدٖ 	mṯerēmko sipēnḏe	mteremko sipende	
192	48	d	 نْيٗونْڠٗ هُكُتُمْبُكِيَ	nyōngo hukuṯumbukiya	nyongo hukutumbukiya	
193	49	a	لٗجِينْڠِ كِيوَ هَپَانَ 	lojı̄ngi kı̄wa hapāna	lojingi kiwa hapana	
194	49	b	 أَوْ مْفُكٗونِ هُونَ 	aw mfukōni hūna	au mfukoni huna	
195	49	c	نٖينْدَ كْوَ هَذَارِ سَانَ 	nēnḏa kwa hadhāri sāna	nenda kwa hadhari sana	
196	49	d	 كَامَ كُپٗتٖيَ نْدِيَ	kāma kupoṯeya nḏiya	kama kupoteya ndiya	
197	50	a	كِيوَ مْتُ مٖكْوَلِيكَ 	kı̄wa mṯu mekwalı̄ka	kiwa mtu mekwalika	
198	50	b	 نِ وَجِيبُ كُئِتِيكَ 	ni wajı̄bu kuiṯı̄ka	ni wajibu kuitika	
199	50	c	شُغُولِ كِمَلِزِيكَ 	shuḡūli kimalizı̄ka	shughuli kimalizika	
200	50	d	 مُسِوٖيكٖ مَزٗوٖيَ	musiwēke mazoweya	musiweke mazoweya	
201	51	a	نَ وٖيوٖ كْوَاكٗ نْيُمْبَانِ 	na wēwe kwāko nyumbāni	na wewe kwako nyumbani	
202	51	b	 سِئِفَانْيٖ مْنٗ دُونِ 	siifānye mno ḏūni	siifanye mno duni	
203	51	c	كُوَ مْتُ وَسِتَانِ 	kuwa mṯu wasiṯāni	kuwa mtu wasitani	
204	51	d	 كْوَ مَپَامْبٗ كُيِتِيَ	kwa mapāmbo kuyiṯiya	kwa mapambo kuyitiya	
205	52	a	مْتِلِيٖ مْكٖ وَاكٗ 	mṯiliye mke wāko	mtiliye mke wako	
206	52	b	 زِيتُ كْوَ كَدِيرِ يَاكٗ 	zı̄ṯu kwa kaḏı̄ri yāko	zitu kwa kadiri yako	
207	52	c	إِكِيوَ نَفَاسِ إِيكٗ 	ikı̄wa nafāsi ı̄ko	ikiwa nafasi iko	
208	52	d	 سِبَانٖ أُكَزِوِيَ	sibāne ukaziwiya	sibane ukaziwiya	
209	53	a	إِيوٖ مَرِدَادِ نْيُومْبَ 	ı̄we mariḏāḏi nyūmba	iwe maridadi nyumba	
210	53	b	 نَ كْوَ زِيتُ كُئِپَامْبَ 	na kwa zı̄ṯu kuipāmba	na kwa zitu kuipamba	
211	53	c	فٖشٖينِ أَمْبَازٗ كْوَامْبَ 	feshēni ambāzo kwāmba	fesheni ambazo kwamba	
212	53	d	 كَامَ يٖيٖ هُتُمِيَ	kāma yeye huṯumiya	kama yeye hutumiya	
213	54	a	مْتِلِيٖ كُولَ كِيتُ 	mṯiliye kūla kı̄ṯu	mtiliye kula kitu	
214	54	b	 أَاوٖ كَامَ وٖينْدٖ وَاتُ 	āwe kāma wēnḏe wāṯu	awe kama wende watu	
215	54	c	سِمْوَمْبِيٖ مِيمِ كْوٖيتُ 	simwambiye mı̄mi kwēṯu	simwambiye mimi kwetu	
216	54	d	 هَايَ سِكُيَزٗوٖيَ	hāya sikuyazoweya	haya sikuyazoweya	
217	55	a	أَكِيوَ مْبوَ مِنَزِينِ 	akı̄wa mbwa minazı̄ni	akiwa mbwa minazini	
218	55	b	 أُكِمُئٖيتَ مُيِينِ 	ukimuēṯa muyı̄ni	ukimueta muyini	
219	55	c	سِمُوَاتٖ كُتَمَانِ 	simuwāṯe kuṯamāni	simuwate kutamani	
220	55	d	 زَ وٖينْدٖ كِشُهُدِيَ	za wēnḏe kishuhuḏiya	za wende kishuhudiya	
221	56	a	أُكِيوَ أُمٖئَمُوَ 	ukı̄wa umeamuwa	ukiwa umeamuwa	
222	56	b	 مُيِينِ كُمْتُكُوَ 	muyı̄ni kumṯukuwa	muyini kumtukuwa	
223	56	c	مْفَنْيِئٖ سَوَسَاوَ 	mfanyie sawasāwa	mfanyie sawasawa	
224	56	d	 سَامْبٖ سِ يَ كْوٖينُ هَايَ	sāmbe si ya kwēnu hāya	sambe si ya kwenu haya	
225	57	a	سِمْوَمْبِيٖ زِيتُ هِيزِ 	simwambiye zı̄ṯu hı̄zi	simwambiye zitu hizi	
226	57	b	 كْوٖينُ كُپَاتَ هُوٖيزِ 	kwēnu kupāṯa huwēzi	kwenu kupata huwezi	
227	57	c	كْوٖينُ نِ كَامَ كِزِيزِ 	kwēnu ni kāma kizı̄zi	kwenu ni kama kizizi	
228	57	d	 هُكُؤٗونَ مَزُلِيَ	hukuōna mazuliya	hukuona mazuliya	
229	58	a	نَ چَكُولَ كَذَلِيكَ 	na chakūla kadhalı̄ka	na chakula kadhalika	
230	58	b	 مْپٖ أَنَچٗكِتَاكَ 	mpe anachokiṯāka	mpe anachokitaka	
231	58	c	أَمْبَاچٗ تَفُرَهِيكَ 	ambācho ṯafurahı̄ka	ambacho tafurahika	
232	58	d	 مْوٖنْيٖيوٖ مٖكِزٗوٖيَ	mwenyēwe mekizoweya	mwenyewe mekizoweya	
233	59	a	أَكِپٖينْدَ بِرِيَانِ 	akipēnḏa biriyāni	akipenda biriyani	
234	59	b	 مْپٖ مْوَانَ سِمْخِينِ 	mpe mwāna simẖı̄ni	mpe mwana simhini	
235	59	c	مَأَدَامُ مْفُكٗونِ 	maaḏāmu mfukōni	maadamu mfukoni	
236	59	d	 أَكِيبَ إِمٖسَلِيَ	akı̄ba imesaliya	akiba imesaliya	
237	60	a	سِيكُ أَكِتَاكَ سِيمَ 	sı̄ku akiṯāka sı̄ma	siku akitaka sima	
238	60	b	 سِمْوَمْبِيٖ إٖيوٖ مَامَ 	simwambiye ēwe māma	simwambiye ewe mama	
239	60	c	كُولَ مْتٖئٖ لَزِيمَ 	kūla mṯee lazı̄ma	kula mtee lazima	
240	60	d	 مِيمِ سِتَاكِ أُذِيَ	mı̄mi siṯāki udhiya	mimi sitaki udhiya	
241	61	a	مُؤَتِيَ نَ خِيَارِ 	muaṯiya na ẖiyāri	muatiya na hiyari	
242	61	b	 أَپٖنْدَاچٗ أَخِتَارِ 	apenḏācho aẖiṯāri	apendacho ahitari	
243	61	c	سِمْكَازٖ سِ أُزُورِ 	simkāze si uzūri	simkaze si uzuri	
244	61	d	 مَشَرُوتِ كُمْوٖكٖيَ	masharūṯi kumwekeya	masharuti kumwekeya	
245	62	a	إِيلَ كِلِيچٗ هَرَامُ 	ı̄la kilı̄cho harāmu	ila kilicho haramu	
246	62	b	 هِيلٗ سِكِيرِ فَهَامُ 	hı̄lo sikı̄ri fahāmu	hilo sikiri fahamu	
247	62	c	هَرَامُ نَ كُولَ سُومُ 	harāmu na kūla sūmu	haramu na kula sumu	
248	62	d	 شَرِيَ إِمٖزِوِيَ	shariya imeziwiya	shariya imeziwiya	
249	63	a	أَامَ كُهُوسُ مَڤَازِ 	āma kuhūsu mavāzi	ama kuhusu mavazi	
250	63	b	 يَ كَايٖ نَ سِيكُ هِيزِ 	ya kāye na sı̄ku hı̄zi	ya kaye na siku hizi	
251	63	c	سِكِيرِ يَ كْوٖينْدَ وَازِ 	sikı̄ri ya kwēnḏa wāzi	sikiri ya kwenda wazi	
252	63	d	 مِشٗونٗ يَاسٗ نَ هَايَ	mishōno yāso na hāya	mishono yaso na haya	
253	64	a	كْوٖيتُ سِيسِ إِسِلَامُ 	kwēṯu sı̄si isilāmu	kwetu sisi isilamu	
254	64	b	 مَڤَازِ كِيتُ مُهِيمُ 	mavāzi kı̄ṯu muhı̄mu	mavazi kitu muhimu	
255	64	c	نَ سِيسِ يَتُلَزِيمُ 	na sı̄si yaṯulazı̄mu	na sisi yatulazimu	
256	64	d	 يَ زِپِيمٗ كْوَنْڠَلِيَ	ya zipı̄mo kwangaliya	ya zipimo kwangaliya	
257	65	a	مْپٖ مْوٖنْيٖيوٖ نَفَاسِ 	mpe mwenyēwe nafāsi	mpe mwenyewe nafasi	
258	65	b	 يَ كُتٖؤُوَ لِبَاسِ 	ya kuṯeuwa libāsi	ya kuteuwa libasi	
259	65	c	لَاكٗ وٖيوٖ نِ فُلُوسِ 	lāko wēwe ni fulūsi	lako wewe ni fulusi	
260	65	d	 تٗوَ زَ كُنُنُلِيَ	ṯowa za kununuliya	towa za kununuliya	
261	66	a	مْپٖ يَاكٗ مَشَرُوتِ 	mpe yāko masharūṯi	mpe yako masharuti	
262	66	b	 زَ مْشٗونٗ كُذِبِيتِ 	za mshōno kudhibı̄ṯi	za mshono kudhibiti	
263	66	c	أَكِخَلِيفُ مٖهِيتِ 	akiẖalı̄fu mehı̄ṯi	akihalifu mehiti	
264	66	d	 نِ هَاكِ كُمزِوِيَ	ni hāki kumziwiya	ni haki kumziwiya	
265	67	a	أَامَ كِتَمْبَاءَ ڠَانِ 	āma kiṯambāa gāni	ama kitambaa gani	
266	67	b	 كِكُؤُلِيزَ مْوٖنْدَانِ 	kikuulı̄za mwenḏāni	kikuuliza mwendani	
267	67	c	أَوْ نِ إِيپِ لَؤُونِ 	aw ni ı̄pi laūni	au ni ipi launi	
268	67	d	 وٖيوٖ وَئِفُرَهِيَ	wēwe waifurahiya	wewe waifurahiya	
269	68	a	هَاپٗ مَكٗوسَ هَپَانَ 	hāpo makōsa hapāna	hapo makosa hapana	
270	68	b	 كِكُؤُلِيزَ كُنٖينَ 	kikuulı̄za kunēna	kikuuliza kunena	
271	68	c	رَانْڠِ هِينِ نَئِٗونَ 	rāngi hı̄ni naiōna	rangi hini naiona	
272	68	d	 مَتٗونِ إِمٖنِنْڠِيَ	maṯōni imeningiya	matoni imeningiya	
273	69	a	أَامَ كِيوَ نِ تَمَاشَ 	āma kı̄wa ni ṯamāsha	ama kiwa ni tamasha	
274	69	b	 وَتَاكَ مْفُرَهِيشَ 	waṯāka mfurahı̄sha	wataka mfurahisha	
275	69	c	سِ هَاجَ كُمُؤٗنٖيشَ 	si hāja kumuonēsha	si haja kumuonesha	
276	69	d	 مَؤٗنِيٖ كْوَنْڠَلِيَ	maoniye kwangaliya	maoniye kwangaliya	
277	70	a	كَاتَ أُتَكَچٗپٖينْدَ 	kāṯa uṯakachopēnḏa	kata utakachopenda	
278	70	b	 أُمْتُنُكِيٖ نْيٗونْدَ 	umṯunukiye nyōnḏa	umtunukiye nyonda	
279	70	c	نَاوٖ هِيلِ أُكِتٖينْدَ 	nāwe hı̄li ukiṯēnḏa	nawe hili ukitenda	
280	70	d	 چٗچٗوتٖ تَكٗنْڠٗوٖيَ	chochōṯe ṯakongoweya	chochote takongoweya	
281	71	a	مْكٖ وَاكٗ سِمْذِيكِ 	mke wāko simdhı̄ki	mke wako simdhiki	
282	71	b	 سِمْوَمْبِيٖ سِينَ هِيكِ 	simwambiye sı̄na hı̄ki	simwambiye sina hiki	
283	71	c	نَ نْيِينْڠِ مْنٗ سِتَاكِ 	na nı̄ı̄ngi mno siṯāki	na nyingi mno sitaki	
284	71	d	 سِزٗوٖيٖ كُتُمِيَ	sizoweye kuṯumiya	sizoweye kutumiya	
285	72	a	مْپٖ كْوَ يَاكٗ كَدِيرِ 	mpe kwa yāko kaḏı̄ri	mpe kwa yako kadiri	
286	72	b	 أُسِفَانْيٖ تَقتِيرِ 	usifānye ṯaqṯı̄ri	usifanye taqtiri	
287	72	c	نِ توَبِيَ سِ نْزُورِ 	ni ṯwabiya si nzūri	ni twabiya si nzuri	
288	72	d	 أُبَخِيلِ كْوٖينْيٖ هَايَ	ubaẖı̄li kwēnye hāya	ubahili kwenye haya	
289	73	a	نَ وٖيوٖ أُپَانْدٖ وَاكٗ 	na wēwe upānḏe wāko	na wewe upande wako	
290	73	b	 إِپَامْبٖ كِيَاسِ چَاكٗ 	ipāmbe kiyāsi chāko	ipambe kiyasi chako	
291	73	c	بٗورَ أُسِڤُونْدٖ مِيكٗ 	bōra usivūnḏe mı̄ko	bora usivunde miko	
292	73	d	 خَتِيَانِ أُكَنْڠِيَ	ẖaṯiyāni ukangiya	hatiyani ukangiya	
293	74	a	كُوَ مْتُ مَرِدَادِ 	kuwa mṯu mariḏāḏi	kuwa mtu maridadi	
294	74	b	 أُتُونْڠٖ يَاكٗ جَسَادِ 	uṯūnge yāko jasāḏi	utunge yako jasadi	
295	74	c	هَاتَ كُفُكِيزَ أُودِ 	hāṯa kufukı̄za ūḏi	hata kufukiza udi	
296	74	d	 أُكِوٖيزَ سِ خَتِيَ	ukiwēza si ẖaṯiya	ukiweza si hatiya	
297	75	a	إِوٖيكٖ أُوٖ نَذِيفُ 	iwēke uwe nadhı̄fu	iweke uwe nadhifu	
298	75	b	 سِؤٗنٖكَانٖ مْچَافُ 	sionekāne mchāfu	sionekane mchafu	
299	75	c	هِينِ نِ سُوننَ تُكُوفُ 	hı̄ni ni sūnna ṯukūfu	hini ni sunna tukufu	
300	75	d	 يَ تُومْوَ وٖيتُ نَبِيَ	ya ṯūmwa wēṯu nabiya	ya tumwa wetu nabiya	
301	76	a	كِيوَ نْيٖئٖ أُمٖوٖيكَ 	kı̄wa nyee umewēka	kiwa nyee umeweka	
302	76	b	 زَنْڠَلِيٖ كَذَلِيكَ 	zangaliye kadhalı̄ka	zangaliye kadhalika	
303	76	c	سِوَاتٖ كُسٗكٗتٖيكَ 	siwāṯe kusokoṯēka	siwate kusokoteka	
304	76	d	 شُنْڠُرُورُ كُسَلِيَ	shungurūru kusaliya	shungururu kusaliya	
305	77	a	إِكِيوَ وَفُرَهِيكَ 	ikı̄wa wafurahı̄ka	ikiwa wafurahika	
306	77	b	 مْكٖؤٗ أَكِپَمْبِيكَ 	mkeo akipambı̄ka	mkeo akipambika	
307	77	c	يُوَ نَيٖيٖ هُتَاكَ 	yuwa nayeye huṯāka	yuwa nayeye hutaka	
308	77	d	 نَاوٖ أُوٖ هُڤُتِيَ	nāwe uwe huvuṯiya	nawe uwe huvutiya	
309	78	a	هِيٗ نَايٖ نْدَاكٖ هَاكِ 	hiyo nāye nḏāke hāki	hiyo naye ndake haki	
310	78	b	 تَكُوَ هَفُرَهِيكِ 	ṯakuwa hafurahı̄ki	takuwa hafurahiki	
311	78	c	إِوَاپٗ هُشُغُلِيكِ 	iwāpo hushuḡulı̄ki	iwapo hushughuliki	
312	78	d	 مُئِلِؤٗ كْوَنْڠَلِيَ	muilio kwangaliya	muilio kwangaliya	
313	79	a	نَايٖ پِيَ هُتَمَانِ 	nāye piya huṯamāni	naye piya hutamani	
314	79	b	 أَكِكُؤٗونَ نْدِئَانِ 	akikuōna nḏiāni	akikuona ndiani	
315	79	c	أُوٖ نَاوٖ هِسَبُونِ 	uwe nāwe hisabūni	uwe nawe hisabuni	
316	79	d	 پٖينْيٖ وَاتُ أُتَنْڠِيَ	pēnye wāṯu uṯangiya	penye watu utangiya	
317	80	a	أَوْ كِيوَ يَاكٗ كَازِ 	aw kı̄wa yāko kāzi	au kiwa yako kazi	
318	80	b	 كُتٖينْدَ هَايَ هُوٖيزِ 	kuṯēnḏa hāya huwēzi	kutenda haya huwezi	
319	80	c	وِسَاپٗ ڤُوَ مَڠٗوزِ 	wisāpo vuwa magōzi	wisapo vuwa magozi	
320	80	d	 سِڤَاءٖ كُتٖمْبٖلٖيَ	sivāe kuṯembeleya	sivae kutembeleya	
321	81	a	سِتٖمْبٖئٖ نَ مَڠوَانْدَ 	siṯembee na magwānḏa	sitembee na magwanda	
322	81	b	 وَالَ هَرُوفُ زَ ن’ڠٗونْدَ 	wāla harūfu za n’gōnḏa	wala harufu za n’gonda	
323	81	c	فَهَامُ وَاتُ هُتُونْدَ 	fahāmu wāṯu huṯūnḏa	fahamu watu hutunda	
324	81	d	 نَ أَكِلِينِ هُتِيَ	na akilı̄ni huṯiya	na akilini hutiya	
325	82	a	نَ كَذَلِيكَ أُلِيمِ 	na kadhalı̄ka ulı̄mi	na kadhalika ulimi	
326	82	b	 إِپِينْدٖ أُوٖ هُسٖيمِ 	ipı̄nḏe uwe husēmi	ipinde uwe husemi	
327	82	c	يَالٗ مَاوِ هُؤَتَامِ 	yālo māwi huaṯāmi	yalo mawi huatami	
328	82	d	 مْكٖ وَاكٗ كُمْوَمْبِيَ	mke wāko kumwambiya	mke wako kumwambiya	
329	83	a	مْنٗ سَانَ جِتَهِيدِ 	mno sāna jiṯahı̄ḏi	mno sana jitahidi	
330	83	b	 كْوَ مَنٖينٗ مَرِدَادِ 	kwa manēno mariḏāḏi	kwa maneno maridadi	
331	83	c	وَاكٖ هُتَاكَ زَئِيدِ 	wāke huṯāka zaı̄ḏi	wake hutaka zaidi	
332	83	d	 يَالٗ تَامُ كُسِكِيَ	yālo ṯāmu kusikiya	yalo tamu kusikiya	
333	84	a	نٖينَ نَايٖ كْوَ ذِهَاكَ 	nēna nāye kwa dhihāka	nena naye kwa dhihaka	
334	84	b	 أَفُرَاهِ أَكِچٖيكَ 	afurāhi akichēka	afurahi akicheka	
335	84	c	مْوَنَامْكٖ هُؤُذِيكَ 	mwanāmke huudhı̄ka	mwanamke huudhika	
336	84	d	 مْنٗ كُمْنْيَمَلِيَ	mno kumnyamaliya	mno kumnyamaliya	
337	85	a	مْفَنْيِئٖ نَ أُبِيشِ 	mfanyie na ubı̄shi	mfanyie na ubishi	
338	85	b	 كْوَ مَنٖينٗ يَاسٗ غَاشِ 	kwa manēno yāso ḡāshi	kwa maneno yaso ghashi	
339	85	c	نَ كْوَاكٖ كُوَ مْتٖيشِ 	na kwāke kuwa mṯēshi	na kwake kuwa mteshi	
340	85	d	 بِيلَ يَ كُپِنْدُكِيَ	bı̄la ya kupinḏukiya	bila ya kupindukiya	
341	86	a	مْوَنَامْكٖ أَهِتَاجِ 	mwanāmke ahiṯāji	mwanamke ahitaji	
342	86	b	 كُڤِيشْوَ لَاسِ فَتَاجِ 	kuvı̄shwa lāsi faṯāji	kuvishwa lasi fataji	
343	86	c	كْوَ هِيلٗ كُوَ مْپَاجِ 	kwa hı̄lo kuwa mpāji	kwa hilo kuwa mpaji	
344	86	d	 أُسِچٗوكٖ كُمْوَمْبِيَ	usichōke kumwambiya	usichoke kumwambiya	
345	87	a	مْوَمْبِيٖ كُولَ نَامْنَ 	mwambiye kūla nāmna	mwambiye kula namna	
346	87	b	 سِيفَ زَاكٖ تٖينَ سَانَ 	sı̄fa zāke ṯēna sāna	sifa zake tena sana	
347	87	c	مْفَانٗ أُكِمُؤٗونَ 	mfāno ukimuōna	mfano ukimuona	
348	87	d	 نْيٖئٖ مٖفُونْڠَ أُپِيَ	nyee mefūnga upiya	nyee mefunga upiya	
349	88	a	كِيوَ مٖسُوكَ مِكِيلِ 	kı̄wa mesūka mikı̄li	kiwa mesuka mikili	
350	88	b	 أَوْ كُرُونِ مَوِيلِ 	aw kurūni mawı̄li	au kuruni mawili	
351	88	c	سِلِوَاتٖ يَامْبٗ هِيلِ 	siliwāṯe yāmbo hı̄li	siliwate yambo hili	
352	88	d	 بِيلَ يَ كُلِتُمِيَ	bı̄la ya kuliṯumiya	bila ya kulitumiya	
353	89	a	مْوَمْبِيٖ أُمٖپٖنْدٖيزَ 	mwambiye umepenḏēza	mwambiye umependeza	
354	89	b	 كْوَ نْيٖئٖ كُزِتٖنْڠٖيزَ 	kwa nyee kuziṯengēza	kwa nyee kuzitengeza	
355	89	c	سِينَ بُودِ تَكُتُنْزَ 	sı̄na būḏi ṯakuṯunza	sina budi takutunza	
356	89	d	 أُمْشُومُ مَارَ مٗويَ	umshūmu māra mōya	umshumu mara moya	
357	90	a	كِيوَ أَمٖتِيَ وَانْدَ 	kı̄wa ameṯiya wānḏa	kiwa ametiya wanda	
358	90	b	 مْوَمْبِيٖ مْنٗ نَپٖينْدَ 	mwambiye mno napēnḏa	mwambiye mno napenda	
359	90	c	سِئِفَانْيٖ هُكُتُونْدَ 	siifānye hukuṯūnḏa	siifanye hukutunda	
360	90	d	 أَوْ هُكُمْوَنْڠَلِيَ	aw hukumwangaliya	au hukumwangaliya	
361	91	a	كِجِفُونْڠَ أَسُمِينِ 	kijifūnga asumı̄ni	kijifunga asumini	
362	91	b	 أَوْ كِكُوبَ كِتوَانِ 	aw kikūba kiṯwāni	au kikuba kitwani	
363	91	c	سِچٖلٖيوٖ كُبَئِينِ 	sichelēwe kubaı̄ni	sichelewe kubaini	
364	91	d	 نٖينٗ لٖيمَ كُمْوَمْبِيَ	nēno lēma kumwambiya	neno lema kumwambiya	
365	92	a	يَأَنِ كُولَ وَكَاتِ 	yaani kūla wakāṯi	yaani kula wakati	
366	92	b	 مْوَمْبِيٖ كِيتُ كَتِيتِ 	mwambiye kı̄ṯu kaṯı̄ṯi	mwambiye kitu katiti	
367	92	c	نَ كَامَ بُوبوِ سِكٖيتِ 	na kāma būbwi sikēṯi	na kama bubwi siketi	
368	92	d	 أَوْ دُوكٗ تٗونْڠٗ پِيَ	aw ḏūko ṯōngo piya	au duko tongo piya	
369	93	a	پِيَ مْپٖ شُكُرَانِ 	piya mpe shukurāni	piya mpe shukurani	
370	93	b	 كْوَ شُغُولِ زَ نْيُمْبَانِ 	kwa shuḡūli za nyumbāni	kwa shughuli za nyumbani	
371	93	c	مْفَانٗ پِلَاءُ هِينِ 	mfāno pilāu hı̄ni	mfano pilau hini	
372	93	d	 مْنٗ أُمٖئِپَتِيَ	mno umeipaṯiya	mno umeipatiya	
373	94	a	أُسِچٗوكٖ كُمْسِيفُ 	usichōke kumsı̄fu	usichoke kumsifu	
374	94	b	 كْوَ نْيُومْبَ كُوَ نَذِيفُ 	kwa nyūmba kuwa nadhı̄fu	kwa nyumba kuwa nadhifu	
375	94	c	نَ أُكِؤٗونَ أُچَافُ 	na ukiōna uchāfu	na ukiona uchafu	
376	94	d	 أُسِيوٖ تَمُؤُكِيَ	usı̄we ṯamuukiya	usiwe tamuukiya	
377	95	a	نَ فَرَاغَ أُكِپَاتَ 	na farāḡa ukipāṯa	na faragha ukipata	
378	95	b	 مْبٖئٖ يَاكٗ كِكُپِيتَ 	mbee yāko kikupı̄ṯa	mbee yako kikupita	
379	95	c	أُسِيوٖ أُتَمُؤَاتَ 	usı̄we uṯamuāṯa	usiwe utamuata	
380	95	d	 مْكٗونٗ كُمْپٖكٖيَ	mkōno kumpekeya	mkono kumpekeya	
381	96	a	مْشِيكٖ وَاكٖ مْكٗونٗ 	mshı̄ke wāke mkōno	mshike wake mkono	
382	96	b	 وَالَ سِمْكَازٖ مْنٗ 	wāla simkāze mno	wala simkaze mno	
383	96	c	هُتٗوشَ نُكُوتَ تَانٗ 	huṯōsha nukūṯa ṯāno	hutosha nukuta tano	
384	96	d	 أُجُومْبٖ كُمْپٖكٖيَ	ujūmbe kumpekeya	ujumbe kumpekeya	
385	97	a	كِيوَ أَمٖكُكَبِيلِ 	kı̄wa amekukabı̄li	kiwa amekukabili	
386	97	b	 سِئِتِيٖ مَشُغُولِ 	siiṯiye mashuḡūli	siitiye mashughuli	
387	97	c	إِنُوَ يَاكٗ مَوِيلِ 	inuwa yāko mawı̄li	inuwa yako mawili	
388	97	d	 نَ يَاكٖ كُمْوٖلٖكٖيَ	na yāke kumwelekeya	na yake kumwelekeya	
389	98	a	وَاتَ مَاتٗ يَفُمَانٖ 	wāṯa māṯo yafumāne	wata mato yafumane	
390	98	b	 كَتِيتِ يَنْڠَلِيَانٖ 	kaṯı̄ṯi yangaliyāne	katiti yangaliyane	
391	98	c	كْوَ أُلِيمِ أُسِنٖينٖ 	kwa ulı̄mi usinēne	kwa ulimi usinene	
392	98	d	 لُوغَ يَ مَاتٗ تُمِيَ	lūḡa ya māṯo ṯumiya	lugha ya mato tumiya	
393	99	a	مَاتٗ يَانَ لُوغَ تَامُ 	māṯo yāna lūḡa ṯāmu	mato yana lugha tamu	
394	99	b	 هُنٖينَ مُكَفَهَامُ 	hunēna mukafahāmu	hunena mukafahamu	
395	99	c	مَاتٗ كِؤُونْڠٗ مُهِيمُ 	māṯo kiūngo muhı̄mu	mato kiungo muhimu	
396	99	d	 چَ هُوبَ كُپَلِلِيَ	cha hūba kupaliliya	cha huba kupaliliya	
397	100	a	مَاتٗ يَانَ كُؤُ سِيرِ 	māṯo yāna kuu sı̄ri	mato yana kuu siri	
398	100	b	 نَ مَارَ هُكُؤَذِيرِ 	na māra hukuadhı̄ri	na mara hukuadhiri	
399	100	c	كَكُتٗلٖيَ خَبَارِ 	kakuṯoleya ẖabāri	kakutoleya habari	
400	100	d	 مٗيٗونِ أُلٗزِوِيَ	moyōni uloziwiya	moyoni uloziwiya	
401	101	a	هِيلِ نِمٖنٖينَ سَانَ 	hı̄li nimenēna sāna	hili nimenena sana	
402	101	b	 نِ مُهِيمُ نَلِؤٗونَ 	ni muhı̄mu naliōna	ni muhimu naliona	
403	101	c	وَالَ غَرَامَ هَلِينَ 	wāla ḡarāma halı̄na	wala gharama halina	
404	101	d	 نَ سِ كَازِ كُتُمِيَ	na si kāzi kuṯumiya	na si kazi kutumiya	
405	102	a	وَلَكِينِ سِ سَهَالِ 	walakı̄ni si sahāli	walakini si sahali	
406	102	b	 كْوَ كُلَّ أَالٗ مْڤُولِ 	kwa kulla ālo mvūli	kwa kulla alo mvuli	
407	102	c	كْوَ وَنْڠِينٖ نِ ثَكِيلِ 	kwa wangı̄ne ni thakı̄li	kwa wangine ni thakili	
408	102	d	 كَاتُ هَوَكُزٗوٖيَ	kāṯu hawakuzoweya	katu hawakuzoweya	
409	103	a	مْبِينُ هِيزِ إِزٗئٖيزٖ 	mbı̄nu hı̄zi izoēze	mbinu hizi izoeze	
410	103	b	 زِتُمِيٖ سِزِپُوزٖ 	ziṯumiye sizipūze	zitumiye sizipuze	
411	103	c	أُتَؤٗونَ فَئِدَازٖ 	uṯaōna faiḏāze	utaona faidaze	
412	103	d	 مْوٖنْيٖيوٖ تَشُهُدِيَ	mwenyēwe ṯashuhuḏiya	mwenyewe tashuhudiya	
413	104	a	مَامْبٗ هَيَانَ غَرَامَ 	māmbo hayāna ḡarāma	mambo hayana gharama	
414	104	b	 كْوَنْڠَلِيَ نَ كُسٖيمَ 	kwangaliya na kusēma	kwangaliya na kusema	
415	104	c	نَ مْتُ مْكٖ دَئِيمَ 	na mṯu mke ḏaı̄ma	na mtu mke daima	
416	104	d	 كَامَ هَايَ هُزٖنْڠٖيَ	kāma hāya huzengeya	kama haya huzengeya	
417	105	a	مْكٖ هُوَ أُونَ مْوَاكٗ 	mke huwa ūna mwāko	mke huwa una mwako	
418	105	b	 كُيُوَ مَؤٗونِ يَاكٗ 	kuyuwa maōni yāko	kuyuwa maoni yako	
419	105	c	كُسِكِيَ نٖينٗ لَاكٗ 	kusikiya nēno lāko	kusikiya neno lako	
420	105	d	 نِ هَاجَ أَهِتَجِيَ	ni hāja ahiṯajiya	ni haja ahitajiya	
421	106	a	يُوَ هَتٗشٖيكِ مْكٖ 	yuwa haṯoshēki mke	yuwa hatosheki mke	
422	106	b	 كُڤَاءَ نَ كُولَ كْوَاكٖ 	kuvāa na kūla kwāke	kuvaa na kula kwake	
423	106	c	أَتَاكَ نَ أُوتُ وَاكٖ 	aṯāka na ūṯu wāke	ataka na utu wake	
424	106	d	 نَ هِشِيمَ كُمْوٖكٖيَ	na hishı̄ma kumwekeya	na hishima kumwekeya	
425	107	a	كُولَ أَالٗ مْتُ مْكٖ 	kūla ālo mṯu mke	kula alo mtu mke	
426	107	b	 هِيلِ نْدِيلٗ أُومْبٗ لَاكٖ 	hı̄li nḏı̄lo ūmbo lāke	hili ndilo umbo lake	
427	107	c	لَ مَپَامْبٗ هِيلٗ كْوَاكٖ 	la mapāmbo hı̄lo kwāke	la mapambo hilo kwake	
428	107	d	 نِ يَامْبٗ مٖيَزٗوٖيَ	ni yāmbo meyazoweya	ni yambo meyazoweya	
429	108	a	هُتٗكٖيَ كْوَ نَدِيرَ 	huṯokeya kwa naḏı̄ra	hutokeya kwa nadira	
430	108	b	 كْوَ هِيلِ وَسٗئِكٖيرَ 	kwa hı̄li wasoikēra	kwa hili wasoikera	
431	108	c	هِينَ هَپٖينْدِ كُچٗورَ 	hı̄na hapēnḏi kuchōra	hina hapendi kuchora	
432	108	d	 نَ وَالَ وَانْدَ كُتِيَ	na wāla wānḏa kuṯiya	na wala wanda kutiya	
433	109	a	هَانَ هَايٗ مَشُغُولِ 	hāna hāyo mashuḡūli	hana hayo mashughuli	
434	109	b	 نِ كَامَ مْتُ مْڤُولِ 	ni kāma mṯu mvūli	ni kama mtu mvuli	
435	109	c	يَ أُرٖيمْبٗ هَيَجَالِ 	ya urēmbo hayajāli	ya urembo hayajali	
436	109	d	 وَالَ هَكُيَزٗوٖيَ	wāla hakuyazoweya	wala hakuyazoweya	
437	110	a	كِيوَ نَاوٖ وَاكٗ مْكٖ 	kı̄wa nāwe wāko mke	kiwa nawe wako mke	
438	110	b	 هِيلٗ سِ شُغُولِ يَاكٖ 	hı̄lo si shuḡūli yāke	hilo si shughuli yake	
439	110	c	بَاسِ نَاوٖ سِسُمْبُوكٖ 	bāsi nāwe sisumbūke	basi nawe sisumbuke	
440	110	d	 مَشُغُولِ كُيِتِيَ	mashuḡūli kuyiṯiya	mashughuli kuyitiya	
441	111	a	نَ لٖنْڠِينٖ لَ ذَرُورَ 	na lengı̄ne la dharūra	na lengine la dharura	
442	111	b	 إِفُونْدٖ مْنٗ سُبِيرَ 	ifūnḏe mno subı̄ra	ifunde mno subira	
443	111	c	كُونَ مَامْبٗ يَ كُكٖيرَ 	kūna māmbo ya kukēra	kuna mambo ya kukera	
444	111	d	 مَئِشَانِ يَتٗكٖيَ	maishāni yaṯokeya	maishani yatokeya	
445	112	a	هَكُونَ مَئِيشَ تَامُ 	hakūna maı̄sha ṯāmu	hakuna maisha tamu	
446	112	b	 يٖينْيٖ رَاهَ يَ كُدُومُ 	yēnye rāha ya kuḏūmu	yenye raha ya kudumu	
447	112	c	مَامْبٗ تَكُوَ مَڠُومُ 	māmbo ṯakuwa magūmu	mambo takuwa magumu	
448	112	d	 كِيوَ هُتٗڤُمِلِيَ	kı̄wa huṯovumiliya	kiwa hutovumiliya	
449	113	a	كُونَ تَامُ نَ أُتُونْڠُ 	kūna ṯāmu na uṯūngu	kuna tamu na utungu	
450	113	b	 كْوٖينْيٖ هُؤُ أُلِمْوٖينْڠُ 	kwēnye huu ulimwēngu	kwenye huu ulimwengu	
451	113	c	يَلِئَانْدَ هَايَ تَانْڠُ 	yaliānḏa hāya ṯāngu	yalianda haya tangu	
452	113	d	 يَلِپٗؤُمْبوَ دُنِيَ	yalipoumbwa ḏuniya	yalipoumbwa duniya	
453	114	a	هِينِ نْدِينٗ كَوَئِيدَ 	hı̄ni nḏı̄no kawaı̄ḏa	hini ndino kawaida	
454	114	b	 كُونَ رَاهَ كُونَ شِيدَ 	kūna rāha kūna shı̄ḏa	kuna raha kuna shida	
455	114	c	نْدِيٗ يَ مَئِيشَ أَادَ 	nḏiyo ya maı̄sha āḏa	ndiyo ya maisha ada	
456	114	d	 نَ وَاتُ هُوَپِتِيَ	na wāṯu huwapiṯiya	na watu huwapitiya	
457	115	a	بَاسِ نَ كْوَاكٗ نْيُمْبَانِ 	bāsi na kwāko nyumbāni	basi na kwako nyumbani	
458	115	b	 سِؤٗوتٖ كُوَ پٖپٗونِ 	siōṯe kuwa pepōni	siote kuwa peponi	
459	115	c	مَأَدَامُ هَاپٗ نْدَانِ 	maaḏāmu hāpo nḏāni	maadamu hapo ndani	
460	115	d	 سِ وٖيوٖ پوٖيكٖ ممٗويَ	si wēwe pwēke mmōya	si wewe pweke mmoya	
461	116	a	مْكٖ وَاكٗ سِ كِڤُولِ 	mke wāko si kivūli	mke wako si kivuli	
462	116	b	 بَالِ نِ مْتُ وَ پِيلِ 	bāli ni mṯu wa pı̄li	bali ni mtu wa pili	
463	116	c	أُونَ نَ يَاكٖ أَكِيلِ 	ūna na yāke akı̄li	una na yake akili	
464	116	d	 أُونَ نَ أَلٗزٗوٖيَ	ūna na alozoweya	una na alozoweya	
465	117	a	أُسِتَاكٖ كْوَ لَزِيمَ 	usiṯāke kwa lazı̄ma	usitake kwa lazima	
466	117	b	 كُولَ يَامْبٗ أُكِسٖيمَ 	kūla yāmbo ukisēma	kula yambo ukisema	
467	117	c	أَلِكُبَالِ دَئِيمَ 	alikubāli ḏaı̄ma	alikubali daima	
468	117	d	 پَاپٗ هَاپٗ كُرِذِيَ	pāpo hāpo kuridhiya	papo hapo kuridhiya	
469	118	a	مُؤَتِيٖ مَكَوَانْدَ 	muaṯiye makawānḏa	muatiye makawanda	
470	118	b	 أَنٖينٖ أَنٗلِپٖينْدَ 	anēne anolipēnḏa	anene anolipenda	
471	118	c	نَ كْوَ هُوجَ كِكُشِينْدَ 	na kwa hūja kikushı̄nḏa	na kwa huja kikushinda	
472	118	d	 سِيوٖ ڤِيتٗ تَتُمِيَ	sı̄we vı̄ṯo ṯaṯumiya	siwe vito tatumiya	
473	119	a	أُكِؤٗونَ سَاوَ نْدَاكٖ 	ukiōna sāwa nḏāke	ukiona sawa ndake	
474	119	b	 إِكُبَالِ أُرِذِيكٖ 	ikubāli uridhı̄ke	ikubali uridhike	
475	119	c	نَ وَالَ سِكَسِرِيكٖ 	na wāla sikasirı̄ke	na wala sikasirike	
476	119	d	 مْدٗومٗ كُمْفُنْڠِيَ	mḏōmo kumfungiya	mdomo kumfungiya	
477	120	a	كُبَالِ مٖزٗلِنٖينَ 	kubāli mezolinēna	kubali mezolinena	
478	120	b	 أُمُؤُونْڠٖ تٖينَ سَانَ 	umuūnge ṯēna sāna	umuunge tena sana	
479	120	c	نَ فَئِيدَ أُتَؤٗونَ 	na faı̄ḏa uṯaōna	na faida utaona	
480	120	d	 مَامْبٗ تَأَنْدَامَ نْدِيَ	māmbo ṯaanḏāma nḏiya	mambo taandama ndiya	
481	121	a	نَ يٖيٖ كِكَسِرِيكَ 	na yeye kikasirı̄ka	na yeye kikasirika	
482	121	b	 وٖيوٖ أُسِپَانْدٖ شُوكَ 	wēwe usipānḏe shūka	wewe usipande shuka	
483	121	c	نَ أَكِزِيدِ أٗنْدٗوكَ 	na akizı̄ḏi onḏōka	na akizidi ondoka	
484	121	d	 كِشِنْدوَ كُڤُمِيليَ	kishinḏwa kuvumı̄lya	kishindwa kuvumilya	
485	122	a	مْوَنَانْڠُ مٗوتٗ تِزَامَ 	mwanāngu mōṯo ṯizāma	mwanangu moto tizama	
486	122	b	 هَؤُزِنْيِيكِ دَئِيمَ 	hauzinı̄ı̄ki ḏaı̄ma	hauzinyiki daima	
487	122	c	بَالِ هُزِيدِ رٗرٗومَ 	bāli huzı̄ḏi rorōma	bali huzidi roroma	
488	122	d	 كُونِ أُكِؤُتِلِيَ	kūni ukiuṯiliya	kuni ukiutiliya	
489	123	a	مٗوتٗ كِتٗتِيوَ كُونِ 	mōṯo kiṯoṯı̄wa kūni	moto kitotiwa kuni	
490	123	b	 أُتَزِنْيِيكَ مْوٖنْدَانِ 	uṯazinı̄ı̄ka mwenḏāni	utazinyika mwendani	
491	123	c	نَ أُتٖيسِ وَ نْيُمْبَانِ 	na uṯēsi wa nyumbāni	na utesi wa nyumbani	
492	123	d	 كُنِيزٖ نِ نٖينٗ بَايَ	kunı̄ze ni nēno bāya	kunize ni neno baya	
493	124	a	زِوِيَ وَاكٗ أُلِيمِ 	ziwiya wāko ulı̄mi	ziwiya wako ulimi	
494	124	b	 سِيوٖ نَ مْوِينْڠِ أُسٖيمِ 	sı̄we na mwı̄ngi usēmi	siwe na mwingi usemi	
495	124	c	أُكِنٖينَ هَيَكٗومِ 	ukinēna hayakōmi	ukinena hayakomi	
496	124	d	 مَنٖينٗ هُئٖنْدٖلٖيَ	manēno huenḏeleya	maneno huendeleya	
497	125	a	زِيدِ نَ كُئِكُكُوسَ 	zı̄ḏi na kuikukūsa	zidi na kuikukusa	
498	125	b	 أُلِيمِ كُتٗتَپَاسَ 	ulı̄mi kuṯoṯapāsa	ulimi kutotapasa	
686	172	b	 أُوَاتٖ كُملَؤُومُ 	uwāṯe kumlaūmu	uwate kumlaumu	
499	125	c	زِيتَ زٖينُ زِتَكْوِيسَ 	zı̄ṯa zēnu ziṯakwı̄sa	zita zenu zitakwisa	
500	125	d	 مٗوتٗ مَايِ هُتَتِيَ	mōṯo māyi huṯaṯiya	moto mayi hutatiya	
501	126	a	نَ أَالٗ مُومٖ هٗدَارِ 	na ālo mūme hoḏāri	na alo mume hodari	
502	126	b	 كِشِنْدوَ يٖيٖ هُكِيرِ 	kishinḏwa yeye hukı̄ri	kishindwa yeye hukiri	
503	126	c	إِيلِ كْوٖپُوكَ دٗثَارِ 	ı̄li kwepūka ḏothāri	ili kwepuka dothari	
504	126	d	 يَ أُوفَ سِينِ كُتِيَ	ya ūfa sı̄ni kuṯiya	ya ufa sini kutiya	
505	127	a	سِينِ إِكِنْڠِيَ أُوفَ 	sı̄ni ikingiya ūfa	sini ikingiya ufa	
506	127	b	 هُپُنْڠُوَ زَاكٖ سِيفَ 	hupunguwa zāke sı̄fa	hupunguwa zake sifa	
507	127	c	نَ مَهَابَ نَايٗ هُوفَ 	na mahāba nāyo hūfa	na mahaba nayo hufa	
508	127	d	 أُكِيوَ مْوِينْڠِ أُذِيَ	ukı̄wa mwı̄ngi udhiya	ukiwa mwingi udhiya	
509	128	a	هَكُونَ كَاتُ هَكُونَ 	hakūna kāṯu hakūna	hakuna katu hakuna	
510	128	b	 كِؤُومْبٖ كَمِيلِ سَانَ 	kiūmbe kamı̄li sāna	kiumbe kamili sana	
511	128	c	نَ وَاتُ هُتُكُوَانَ 	na wāṯu huṯukuwāna	na watu hutukuwana	
512	128	d	 نْدِيپٗ وَئِيشِ پَمٗويَ	nḏı̄po waı̄shi pamōya	ndipo waishi pamoya	
513	129	a	كِيوَ لَزِيمَ وَتَاكَ 	kı̄wa lazı̄ma waṯāka	kiwa lazima wataka	
514	129	b	 مْكٖ أَلٗكَمِلِيكَ 	mke alokamilı̄ka	mke alokamilika	
515	129	c	جُوَ نَ وٖيوٖ هَكِيكَ 	juwa na wēwe hakı̄ka	juwa na wewe hakika	
516	129	d	 تَكُبِيدِ كُتِمِيَ	ṯakubı̄ḏi kuṯimiya	takubidi kutimiya	
517	130	a	أَاسٗ تَاءَ نِ تٗمٗومٗ 	āso ṯāa ni ṯomōmo	aso taa ni tomomo	
518	130	b	 هُونُ نِ كْوٖيلِ مْسٖيمٗ 	hūnu ni kwēli msēmo	hunu ni kweli msemo	
519	130	c	وَاتُ هُپِتَانَ زِيمٗ 	wāṯu hupiṯāna zı̄mo	watu hupitana zimo	
520	130	d	 هُزِدِيَانَ توَبِيَ	huziḏiyāna ṯwabiya	huzidiyana twabiya	
521	131	a	مْكٖ كِكُكَسِرِيشَ 	mke kikukasirı̄sha	mke kikukasirisha	
522	131	b	 جَرِيبُ كُيِكُمْبُوشَ 	jarı̄bu kuyikumbūsha	jaribu kuyikumbusha	
523	131	c	پِيَ هُكُفُرَهِيشَ 	piya hukufurahı̄sha	piya hukufurahisha	
524	131	d	 مٖزَانِ هِينِ تُمِيَ	mezāni hı̄ni ṯumiya	mezani hini tumiya	
525	132	a	أُسِيَؤٗونٖ يَ جٗونْڠٗ 	usiyaōne ya jōngo	usiyaone ya jongo	
526	132	b	 كْوَ مٖيمَ أُكَاوَ تٗونْڠٗ 	kwa mēma ukāwa ṯōngo	kwa mema ukawa tongo	
527	132	c	سَنْڠَلِيٖ پٖينْيٖ پٖينْڠٗ 	sangaliye pēnye pēngo	sangaliye penye pengo	
528	132	d	 كَوَاتَ پَلٗتِمِيَ	kawāṯa paloṯimiya	kawata palotimiya	
529	133	a	هُونَ بُودِ كُپُؤُوزَ 	hūna būḏi kupuūza	huna budi kupuuza	
530	133	b	 نَ مَنْڠِينٖ كُيَمِيزَ 	na mangı̄ne kuyamı̄za	na mangine kuyamiza	
531	133	c	نْدِيپٗ مُوٖيزٖ كُفُوزَ 	nḏı̄po muwēze kufūza	ndipo muweze kufuza	
532	133	d	 نَ مَئِيشَ كْوٖنْدٖلٖيَ	na maı̄sha kwenḏeleya	na maisha kwendeleya	
533	134	a	مْكٖ كِتٖينْدَ مَكٗوسَ 	mke kiṯēnḏa makōsa	mke kitenda makosa	
534	134	b	 كُمْوَمْبِيَ يَكُپَاسَ 	kumwambiya yakupāsa	kumwambiya yakupasa	
535	134	c	كْوَ هِشِيمَ نَ سِيَاسَ 	kwa hishı̄ma na siyāsa	kwa hishima na siyasa	
536	134	d	 نَ هِكِيمَ كُتُمِيَ	na hikı̄ma kuṯumiya	na hikima kutumiya	
537	135	a	كٗوسَ كُلِسَهِهِيشَ 	kōsa kulisahihı̄sha	kosa kulisahihisha	
538	135	b	 پٖينْيٖ وَاتُ هُجٖرٖيشَ 	pēnye wāṯu hujerēsha	penye watu hujeresha	
539	135	c	إِپِينْدٖ كُپُرُكُوشَ 	ipı̄nḏe kupurukūsha	ipinde kupurukusha	
540	135	d	 فَرَاغَ كُئِزٖنْڠٖيَ	farāḡa kuizengeya	faragha kuizengeya	
541	136	a	سِمْوَمْبِيٖ پٖينْيٖ وَاتُ 	simwambiye pēnye wāṯu	simwambiye penye watu	
542	136	b	 هَؤُكِيرِ وَاكٖ أُوتُ 	haukı̄ri wāke ūṯu	haukiri wake utu	
543	136	c	وَالَ هُتٖنْڠٖيزِ كِيتُ 	wāla huṯengēzi kı̄ṯu	wala hutengezi kitu	
544	136	d	 بَالِ نِ كِنْيُومٖ هُويَ	bāli ni kinyūme hūya	bali ni kinyume huya	
545	137	a	كُمْسِيفُ نِ أُزُورِ 	kumsı̄fu ni uzūri	kumsifu ni uzuri	
546	137	b	 پٖينْيٖ وَاتُ نَ ذَهِيرِ 	pēnye wāṯu na dhahı̄ri	penye watu na dhahiri	
547	137	c	كُلَؤُومُ نِ كْوَ سِيرِ 	kulaūmu ni kwa sı̄ri	kulaumu ni kwa siri	
548	137	d	 نْدِيپٗ أَتَكُسِكِيَ	nḏı̄po aṯakusikiya	ndipo atakusikiya	
549	138	a	مْوَنَأَدَامُ كُكٗوسَ 	mwanaaḏāmu kukōsa	mwanaadamu kukosa	
550	138	b	 نِ يَامْبٗ لِمٖتُپَاسَ 	ni yāmbo limeṯupāsa	ni yambo limetupasa	
551	138	c	نِ سَاوَ كُيِكُكُوسَ 	ni sāwa kuyikukūsa	ni sawa kuyikukusa	
552	138	d	 مَنْڠِينٖ كُڤُمِلِيَ	mangı̄ne kuvumiliya	mangine kuvumiliya	
553	139	a	لِسَمٖيهٖ كٗوسَ دٗوڠٗ 	lisamēhe kōsa ḏōgo	lisamehe kosa dogo	
554	139	b	 كٗوسَ لِكِيوَ مزِيڠٗ 	kōsa likı̄wa mzı̄go	kosa likiwa mzigo	
555	139	c	هَلِپٖلٖيكِ كِشٗوڠٗ 	halipelēki kishōgo	halipeleki kishogo	
556	139	d	 زٖنْڠٖيَ نْيٖنْڠِينٖ نْدِيَ	zengeya nyengı̄ne nḏiya	zengeya nyengine ndiya	
557	140	a	تَفَؤُوتِ زَ نْيُمْبَانِ 	ṯafaūṯi za nyumbāni	tafauti za nyumbani	
558	140	b	 زِيوٖ نِ سِيرِ زَ نْدَانِ 	zı̄we ni sı̄ri za nḏāni	ziwe ni siri za ndani	
559	140	c	سِزِتٗوٖ هَذِرَانِ 	siziṯowe hadhirāni	sizitowe hadhirani	
560	140	d	 وَاتُ وَكَزِسِكِيَ	wāṯu wakazisikiya	watu wakazisikiya	
561	141	a	سِيرِ زَ نْدَانِ زِبَانٖ 	sı̄ri za nḏāni zibāne	siri za ndani zibane	
562	141	b	 أُسِمْوَمْبِيٖ مْنْڠِينٖ 	usimwambiye mngı̄ne	usimwambiye mngine	
563	141	c	وٖيوٖ نَ يٖيٖ مُنٖينٖ 	wēwe na yeye munēne	wewe na yeye munene	
564	141	d	 سُلُهِيشٗ كُزٖنْڠٖيَ	suluhı̄sho kuzengeya	suluhisho kuzengeya	
565	142	a	إِيلَ مُكِكٗوسَ بُودِ 	ı̄la mukikōsa būḏi	ila mukikosa budi	
566	142	b	 كُنٖينَ إِكَوَبِيدِ 	kunēna ikawabı̄ḏi	kunena ikawabidi	
567	142	c	وَزٖئٖ وَوَسَئِيدِ 	wazee wawasaı̄ḏi	wazee wawasaidi	
568	142	d	 هَاپٗ هَئِيوِ هَتِيَ	hāpo haı̄wi haṯiya	hapo haiwi hatiya	
569	143	a	تَفَؤُوتِ إِكِزُوكَ 	ṯafaūṯi ikizūka	tafauti ikizuka	
570	143	b	 نِ مِكٗونٗ كُيَنْدِيكَ 	ni mikōno kuyanḏı̄ka	ni mikono kuyandika	
571	143	c	يُؤَ نْدٖ إِكِتٗوكَ 	yua nḏe ikiṯōka	yua nde ikitoka	
572	143	d	 هُزُوَ نْيِينْڠِ بَلَايَ	huzuwa nı̄ı̄ngi balāya	huzuwa nyingi balaya	
573	144	a	خُسُوسوَ سِيرِ زَ سِيرِ 	ẖusūswa sı̄ri za sı̄ri	hususwa siri za siri	
574	144	b	 كُنٖينَ نِ كُؤَذِيرِ 	kunēna ni kuadhı̄ri	kunena ni kuadhiri	
575	144	c	إِيلَ إِيوٖ دَكِتَارِ 	ı̄la ı̄we ḏakiṯāri	ila iwe dakitari	
576	144	d	 سُؤَالِ مٖوَتَئِيَ	suāli mewaṯaiya	suali mewataiya	
577	145	a	مَامْبٗ يَ تِينِ كْوَ تِينِ 	māmbo ya ṯı̄ni kwa ṯı̄ni	mambo ya tini kwa tini	
578	145	b	 يَاوٖ نِ نْدَانِ كْوَ نْدَانِ 	yāwe ni nḏāni kwa nḏāni	yawe ni ndani kwa ndani	
579	145	c	هَايٗ مُوٖ هَمُنٖينِ 	hāyo muwe hamunēni	hayo muwe hamuneni	
580	145	d	 إِيلَ يَكِوَئِمٖيَ	ı̄la yakiwaimeya	ila yakiwaimeya	
581	146	a	كِيوَ مْنٗ مٖوَڠَانْيَ 	kı̄wa mno mewagānya	kiwa mno mewaganya	
582	146	b	 مُكَشِنْدوَ لَ كُفَانْيَ 	mukashinḏwa la kufānya	mukashindwa la kufanya	
583	146	c	كْوَ هَاپٗ سِتٗوَكَانْيَ 	kwa hāpo siṯowakānya	kwa hapo sitowakanya	
584	146	d	 أُشَؤُورِ كُزٖنْڠٖيَ	ushaūri kuzengeya	ushauri kuzengeya	
585	147	a	نِ بٗورَ أُوٖ هٗدَارِ 	ni bōra uwe hoḏāri	ni bora uwe hodari	
586	147	b	 نَ كُشِنْدوَ أُسِكِيرِ 	na kushinḏwa usikı̄ri	na kushindwa usikiri	
587	147	c	وَالَ أُسِتَهَيَارِ 	wāla usiṯahayāri	wala usitahayari	
588	147	d	 كْوَ هَلَالِ كُتُمِيَ	kwa halāli kuṯumiya	kwa halali kutumiya	
589	148	a	نِ هِيكٗ هِيكٗ كِتٖينْدٗ 	ni hı̄ko hı̄ko kiṯēnḏo	ni hiko hiko kitendo	
590	148	b	 كِيوَ وَ هَلَالِ مْوٖينْدٗ 	kı̄wa wa halāli mwēnḏo	kiwa wa halali mwendo	
591	148	c	هَرَامُ إِوٖيكٖ كَانْدٗ 	harāmu iwēke kānḏo	haramu iweke kando	
592	148	d	 كَاتُ كُتٗكَرِبِيَ	kāṯu kuṯokaribiya	katu kutokaribiya	
593	149	a	وَ هَرَامُ سِمْڠُوسٖ 	wa harāmu simgūse	wa haramu simguse	
594	149	b	 كِمُؤٗونَ إِڠٖڠٖيسٖ 	kimuōna igegēse	kimuona igegese	
595	149	c	هَاتَ نْيَنْڠوَانِ مْپِيسٖ 	hāṯa nyangwāni mpı̄se	hata nyangwani mpise	
596	149	d	 سَنْدَمَانٖ نَايٖ نْدِيَ	sanḏamāne nāye nḏiya	sandamane naye ndiya	
597	150	a	أُسٖينْدٖ هَاتَ كَرِيبُ 	usēnḏe hāṯa karı̄bu	usende hata karibu	
598	150	b	 إٖپُوكَ هِيزٗ إِقَابُ 	epūka hı̄zo iqābu	epuka hizo iqabu	
599	150	c	أُتَپَاتَ نَ ثَوَابُ 	uṯapāṯa na thawābu	utapata na thawabu	
600	150	d	 مْكٖؤٗ كُمْنْڠِلِيَ	mkeo kumngiliya	mkeo kumngiliya	
601	151	a	إٖلٖيوَ سَانَ إٖلٖيوَ 	elēwa sāna elēwa	elewa sana elewa	
602	151	b	 نِ جُكُومُ أُمٖپٗوَ 	ni jukūmu umepowa	ni jukumu umepowa	
603	151	c	مْكٖؤٗ كُمْوِيسَ نْڠٗوَ 	mkeo kumwı̄sa ngowa	mkeo kumwisa ngowa	
604	151	d	 كْوَ هَايَ نِمٖزٗتَايَ	kwa hāya nimezoṯāya	kwa haya nimezotaya	
605	152	a	مْكٖؤٗ مْتٗشٖلٖيزٖ 	mkeo mṯoshelēze	mkeo mtosheleze	
606	152	b	 هَاجَ يَاكٖ أَمَلِيزٖ 	hāja yāke amalı̄ze	haja yake amalize	
607	152	c	نَ شَؤُوكُ أَسِسَازٖ 	na shaūku asisāze	na shauku asisaze	
608	152	d	 مْپَارٗ أُكَمْوَتِيَ	mpāro ukamwaṯiya	mparo ukamwatiya	
609	153	a	أٗنْڠٖيزَ وَاكٗ أُيُوزِ 	ongēza wāko uyūzi	ongeza wako uyuzi	
610	153	b	 وَ كُفَانْيَ هِيٗ كَازِ 	wa kufānya hiyo kāzi	wa kufanya hiyo kazi	
611	153	c	مْوٖينْدٗ كِيوَ هَمَلِيزِ 	mwēnḏo kı̄wa hamalı̄zi	mwendo kiwa hamalizi	
612	153	d	 فَهَامُ وَمْكٗسٖيَ	fahāmu wamkoseya	fahamu wamkoseya	
613	154	a	هُوَ نِ كُؤُ ذُلُومَ 	huwa ni kuu dhulūma	huwa ni kuu dhuluma	
614	154	b	 وٖيوٖ أُكِسَكُكٗومَ 	wēwe ukisakukōma	wewe ukisakukoma	
615	154	c	هُتَاكِ ڠٖؤُوكَ نْيُومَ 	huṯāki geūka nyūma	hutaki geuka nyuma	
616	154	d	 نَ يٖيٖ كُمْنْڠٗجٖيَ	na yeye kumngojeya	na yeye kumngojeya	
617	155	a	سِمَلِيزٖ يَاكٗ هَاجَ 	simalı̄ze yāko hāja	simalize yako haja	
618	155	b	 مْنْڠٗوجٖ مْوِيسٖ پَمٗوجَ 	mngōje mwı̄se pamōja	mngoje mwise pamoja	
619	155	c	هِيلِ هَتَاكِ ممٗوجَ 	hı̄li haṯāki mmōja	hili hataki mmoja	
620	155	d	 نِ نْيٗوتٖ هُلِزٖنْڠٖيَ	ni nyōṯe hulizengeya	ni nyote hulizengeya	
621	156	a	أَنْڠَلِيَ أُفِكِيرِ 	angaliya ufikı̄ri	angaliya ufikiri	
622	156	b	 كِيوَ مْوٖينْدٗ تَغَئِيرِ 	kı̄wa mwēnḏo ṯaḡaı̄ri	kiwa mwendo taghairi	
623	156	c	نَ وٖيوٖ پٖينْيٖ بَنْدَارِ 	na wēwe pēnye banḏāri	na wewe penye bandari	
624	156	d	 بَادٗ نَانْڠَ هُجَتِيَ	bāḏo nānga hujaṯiya	bado nanga hujatiya	
625	157	a	أُتَكُوَ هَالِ ڠَانِ 	uṯakuwa hāli gāni	utakuwa hali gani	
626	157	b	 أُسِنْڠِيزِ هُُؤٗونِ 	usingı̄zi huuōni	usingizi huuoni	
627	157	c	هَالِ هِيٗ أُبَئِينِ 	hāli hiyo ubaı̄ni	hali hiyo ubaini	
628	157	d	 نَ مْوٖينْدٗ هُمُئِلِيَ	na mwēnḏo humuiliya	na mwendo humuiliya	
629	158	a	أَتَكُوَ نَ مْتَارٗ 	aṯakuwa na mṯāro	atakuwa na mtaro	
630	158	b	 نَ ذِيكِ مْنٗ نَ كٖيرٗ 	na dhı̄ki mno na kēro	na dhiki mno na kero	
631	158	c	نَ هَسِيرَ نَ مْفُورٗ 	na hası̄ra na mfūro	na hasira na mfuro	
632	158	d	 كِيوَ هُتٗمرِذِيَ	kı̄wa huṯomridhiya	kiwa hutomridhiya	
633	159	a	نْيُومْبَ نْيِينْڠِ هُڤُنْدِيكَ 	nyūmba nı̄ı̄ngi huvunḏı̄ka	nyumba nyingi huvundika	
634	159	b	 زِكِكٗوسَ مُؤَفَاكَ 	zikikōsa muafāka	zikikosa muafaka	
635	159	c	كْوَ نْڠٗونٗ كُتٗتٗشٖيكَ 	kwa ngōno kuṯoṯoshēka	kwa ngono kutotosheka	
636	159	d	 مْكٖ نَ مُومٖ پَمٗويَ	mke na mūme pamōya	mke na mume pamoya	
637	160	a	كْوَ هِيلِ مُكِتٗشَانَ 	kwa hı̄li mukiṯoshāna	kwa hili mukitoshana	
638	160	b	 مٖينْڠِ هُڤُمِلِيَانَ 	mēngi huvumiliyāna	mengi huvumiliyana	
639	160	c	مْنٗ هُكٗرٗفِشَانَ 	mno hukorofishāna	mno hukorofishana	
640	160	d	 هِيلِ لِسِپٗتِمِيَ	hı̄li lisipoṯimiya	hili lisipotimiya	
641	161	a	نَ لِنْڠِينٖ كَذَلِيكَ 	na lingı̄ne kadhalı̄ka	na lingine kadhalika	
642	161	b	 أَمْبَالٗ كْوَاكٗ نَتَاكَ 	ambālo kwāko naṯāka	ambalo kwako nataka	
643	161	c	نِ مْكٖؤٗ كِؤُذِيكَ 	ni mkeo kiudhı̄ka	ni mkeo kiudhika	
644	161	d	 أُسِيوٖ تَمْفُرِيَ	usı̄we ṯamfuriya	usiwe tamfuriya	
645	162	a	پَنْڠِينٖ أُتَمُؤٗونَ 	pangı̄ne uṯamuōna	pangine utamuona	
646	162	b	 هُفُورَ سَبَابُ هَانَ 	hufūra sabābu hāna	hufura sababu hana	
647	162	c	مُئٖلٖيوٖ تٖينَ سَانَ 	muelēwe ṯēna sāna	muelewe tena sana	
648	162	d	 نَ مْنٗ كُمُيُلِيَ	na mno kumuyuliya	na mno kumuyuliya	
649	163	a	إِفَهَامُ تَفَؤُوتِ 	ifahāmu ṯafaūṯi	ifahamu tafauti	
650	163	b	 وَلِيٗ نَايٗ بَنَاتِ 	waliyo nāyo banāṯi	waliyo nayo banati	
651	163	c	هَوٖيزِ كُئِذِبِيتِ 	hawēzi kuidhibı̄ṯi	hawezi kuidhibiti	
652	163	d	 هَالِ إِنَپٗوَدِيَ	hāli inapowaḏiya	hali inapowadiya	
653	164	a	مْكٖ سِ كِؤُومْبٖ دُوفُ 	mke si kiūmbe ḏūfu	mke si kiumbe dufu	
654	164	b	 وَلَكِينِ نِ ذَئِيفُ 	walakı̄ni ni dhaı̄fu	walakini ni dhaifu	
655	164	c	مٗويٗ وَاكٖ نِ خَفِيفُ 	mōyo wāke ni ẖafı̄fu	moyo wake ni hafifu	
656	164	d	 هُشِنْدوَ كُڤُمِلِيَ	hushinḏwa kuvumiliya	hushindwa kuvumiliya	
657	165	a	وَنَوَاكٖ وَانَ أُومْبٗ 	wanawāke wāna ūmbo	wanawake wana umbo	
658	165	b	 هُؤَثِرِيكَ كْوَ مَامْبٗ 	huathirı̄ka kwa māmbo	huathirika kwa mambo	
659	165	c	كَتِيتِ يَكٖينْدَ كٗومْبٗ 	kaṯı̄ṯi yakēnḏa kōmbo	katiti yakenda kombo	
660	165	d	 وَاسِ وَاسِ هُمْتِيَ	wāsi wāsi humṯiya	wasi wasi humtiya	
661	166	a	كَتِيكَ سِيكُ زَ أَادَ 	kaṯı̄ka sı̄ku za āḏa	katika siku za ada	
662	166	b	 يَ مْوٖيزِ هُپَاتَ شِيدَ 	ya mwēzi hupāṯa shı̄ḏa	ya mwezi hupata shida	
663	166	c	نْدِيپٗ هَاتَ نَ إِبَادَ 	nḏı̄po hāṯa na ibāḏa	ndipo hata na ibada	
664	166	d	 مُونْڠُ كَوَپُنْڠُزِيَ	mūngu kawapunguziya	mungu kawapunguziya	
665	167	a	مْنٗ هُوَ يَ ثَقِيلِ 	mno huwa ya thaqı̄li	mno huwa ya thaqili	
666	167	b	 نَ هُبَدِلِيكَ هَالِ 	na hubaḏilı̄ka hāli	na hubadilika hali	
667	167	c	نَ چٗوتٖ كِوِلِوِيلِ 	na chōṯe kiwiliwı̄li	na chote kiwiliwili	
668	167	d	 هُوَ كَتِيكَ أُذِيَ	huwa kaṯı̄ka udhiya	huwa katika udhiya	
669	168	a	هُوَ سَانَ نِ وَيَاڤُ 	huwa sāna ni wayāvu	huwa sana ni wayavu	
670	168	b	 هُكٗوسَ أُڤِمِلِيڤُ 	hukōsa uvimilı̄vu	hukosa uvimilivu	
671	168	c	هُوَ كَامَ إِيڤُ إِيڤُ 	huwa kāma ı̄vu ı̄vu	huwa kama ivu ivu	
672	168	d	 كُتُمْبُوكَ هُزٖنْڠٖيَ	kuṯumbūka huzengeya	kutumbuka huzengeya	
673	169	a	هُوَ مْنٗ نِ وَكَالِ 	huwa mno ni wakāli	huwa mno ni wakali	
674	169	b	 نَذَانِ هَاتَ أَكِيلِ 	nadhāni hāṯa akı̄li	nadhani hata akili	
675	169	c	هَئِيوِ سَاوَ كَمِيلِ 	haı̄wi sāwa kamı̄li	haiwi sawa kamili	
676	169	d	 نَ پُنْڠُوَانِ هُنْڠِيَ	na punguwāni hungiya	na punguwani hungiya	
677	170	a	كُولَ مَارَ تَمُؤٗونَ 	kūla māra ṯamuōna	kula mara tamuona	
678	170	b	 هُوَرُكِيَ زِجَانَ 	huwarukiya zijāna	huwarukiya zijana	
679	170	c	نَ كْوَ أُكَالِ هُنٖينَ 	na kwa ukāli hunēna	na kwa ukali hunena	
680	170	d	 كِنْيُومٖ چَ مَزٗوٖيَ	kinyūme cha mazoweya	kinyume cha mazoweya	
681	171	a	نِ مُهِيمُ كُولَ مُومٖ 	ni muhı̄mu kūla mūme	ni muhimu kula mume	
682	171	b	 مْكٖ وَاكٖ أَمْسٗومٖ 	mke wāke amsōme	mke wake amsome	
683	171	c	كْوَ زِپِيمٗ أَمْپِيمٖ 	kwa zipı̄mo ampı̄me	kwa zipimo ampime	
684	171	d	 سِيكُ زِكِكَرِبِيَ	sı̄ku zikikaribiya	siku zikikaribiya	
685	172	a	أُكِيسَ كُمْفَهَامُ 	ukı̄sa kumfahāmu	ukisa kumfahamu	
687	172	c	هِيلِ مْنٗ نِ مُهِيمُ 	hı̄li mno ni muhı̄mu	hili mno ni muhimu	
688	172	d	 يَتَاكَ كُلِزٗوٖيَ	yaṯāka kulizoweya	yataka kulizoweya	
689	173	a	كُونَ نَ مُودَ وَ مِيمْبَ 	kūna na mūḏa wa mı̄mba	kuna na muda wa mimba	
690	173	b	 مَارَ كْوَ مَارَ هُڤِيمْبَ 	māra kwa māra huvı̄mba	mara kwa mara huvimba	
691	173	c	أُكَؤٗونَ كَانَ كْوَامْبَ 	ukaōna kāna kwāmba	ukaona kana kwamba	
692	173	d	 مٖكُوَ هُكُزٖنْڠٖيَ	mekuwa hukuzengeya	mekuwa hukuzengeya	
693	174	a	كُكٗوسَ يَامْبٗ كَتِيتِ 	kukōsa yāmbo kaṯı̄ṯi	kukosa yambo katiti	
694	174	b	 هُوَ وٖيوٖ أُمٖهِيتِ 	huwa wēwe umehı̄ṯi	huwa wewe umehiti	
695	174	c	أَنْڠَلِيَ كِبِرِيتِ 	angaliya kibirı̄ṯi	angaliya kibiriti	
696	174	d	 كِدَرِيكَ تٖيتٖ هُويَ	kiḏarı̄ka ṯēṯe hūya	kidarika tete huya	
697	175	a	مَارَ نْيَامَ هَئِتَاكِ 	māra nyāma haiṯāki	mara nyama haitaki	
698	175	b	 أَتَاكَ نْسِ وَ سِيكِ 	aṯāka nsi wa sı̄ki	ataka nsi wa siki	
699	175	c	أَلَاچٗ هَكِمْشِيكِ 	alācho hakimshı̄ki	alacho hakimshiki	
700	175	d	 أَكِتِيَاچٗ هُمْوَايَ	akiṯiyācho humwāya	akitiyacho humwaya	
701	176	a	زِئٖلٖيوٖ سِيكُ هِيزِ 	zielēwe sı̄ku hı̄zi	zielewe siku hizi	
702	176	b	 مِيمْبَ نَ سِيكُ زَ مْوٖيزِ 	mı̄mba na sı̄ku za mwēzi	mimba na siku za mwezi	
703	176	c	كِيوَ هُمْبٖمْبٖلٖيزِ 	kı̄wa humbembelēzi	kiwa humbembelezi	
704	176	d	 تَؤٗونَ وَمُؤٗنٖيَ	ṯaōna wamuoneya	taona wamuoneya	
705	177	a	مْپٖيمْبٖ كَامَ كِجَانَ 	mpēmbe kāma kijāna	mpembe kama kijana	
706	177	b	 تٖينَ أَلِيٗ مْنُونَ 	ṯēna aliyo mnūna	tena aliyo mnuna	
707	177	c	نْدِيپٗ مُتَسِكِزَانَ 	nḏı̄po muṯasikizāna	ndipo mutasikizana	
708	177	d	 نَ يَدُومُ مَزٗوٖيَ	na yaḏūmu mazoweya	na yadumu mazoweya	
709	178	a	شَرُوتِ أُوٖ مْوٖرٖيڤُ 	sharūṯi uwe mwerēvu	sharuti uwe mwerevu	
710	178	b	 نَ مْنٗ مْڤُمِلِيڤُ 	na mno mvumilı̄vu	na mno mvumilivu	
711	178	c	أُسِفُرِيشٖ مَشَاڤُ 	usifurı̄she mashāvu	usifurishe mashavu	
712	178	d	 كِيوَ نَايٖ مٖتٖتٖيَ	kı̄wa nāye meṯeṯeya	kiwa naye meteteya	
713	179	a	كُونَ مَامْبٗ يَ أُمِيتٗ 	kūna māmbo ya umı̄ṯo	kuna mambo ya umito	
714	179	b	 نِ مَكُؤُ سِ مَتٗوتٗ 	ni makuu si maṯōṯo	ni makuu si matoto	
715	179	c	وٖنْڠِينٖ هُولَ تٗتٗوتٗ 	wengı̄ne hūla ṯoṯōṯo	wengine hula tototo	
716	179	d	 نَ مْتَانْڠَ هُبُڠِيَ	na mṯānga hubugiya	na mtanga hubugiya	
717	180	a	نِ مَامْبٗ يَ مِؤُجِيزَ 	ni māmbo ya miujı̄za	ni mambo ya miujiza	
718	180	b	 زَاءٗ هَالِ هُڠٖؤُوزَ 	zāo hāli hugeūza	zao hali hugeuza	
719	180	c	كِيوَ هُتٗبٖمْبٖلٖيزَ 	kı̄wa huṯobembelēza	kiwa hutobembeleza	
720	180	d	 مَارَ تَؤٗونَ هُلِيَ	māra ṯaōna huliya	mara taona huliya	
721	181	a	مْوَنَامْكٖ كْوَ تَأَبُ 	mwanāmke kwa ṯaabu	mwanamke kwa taabu	
722	181	b	 مَارَ هُفَانْيَ غَذَابُ 	māra hufānya ḡadhābu	mara hufanya ghadhabu	
723	181	c	هَاتَ أَالٗ تَرَتِيبُ 	hāṯa ālo ṯaraṯı̄bu	hata alo taratibu	
724	181	d	 هُبَدِلِيكَ توَبِيَ	hubaḏilı̄ka ṯwabiya	hubadilika twabiya	
725	182	a	نٖينٗ لٗلٗوتٖ أَوٖيزَ 	nēno lolōṯe awēza	neno lolote aweza	
726	182	b	 هَجَالِ كُڤُرِمِيزَ 	hajāli kuvurimı̄za	hajali kuvurimiza	
727	182	c	نِ شَرُوتِ كُئِكَازَ 	ni sharūṯi kuikāza	ni sharuti kuikaza	
728	182	d	 مِزَانِ كُتٗپٗتٖيَ	mizāni kuṯopoṯeya	mizani kutopoteya	
729	183	a	مَارَ أَوٖيزَ تَلَاكَ 	māra awēza ṯalāka	mara aweza talaka	
730	183	b	 أَكَكْوَمْبِيَ نَتَاكَ 	akakwambiya naṯāka	akakwambiya nataka	
731	183	c	نَاوٖ أُكِكَسِرِيكَ 	nāwe ukikasirı̄ka	nawe ukikasirika	
732	183	d	 مَيُوتٗ يَتَسَلِيَ	mayūṯo yaṯasaliya	mayuto yatasaliya	
733	184	a	أَكِكْوَمْبِيَ نِوَاتَ 	akikwambiya niwāṯa	akikwambiya niwata	
734	184	b	 سِيوٖ نَايٖ مُتَتٖيتَ 	sı̄we nāye muṯaṯēṯa	siwe naye mutateta	
735	184	c	نِ كِوِينْڠُ كِتَپِيتَ 	ni kiwı̄ngu kiṯapı̄ṯa	ni kiwingu kitapita	
736	184	d	 هَكِوٖيزِ كُسَلِيَ	hakiwēzi kusaliya	hakiwezi kusaliya	
737	185	a	توَلَاكَ سِئِتٖلٖيزٖ 	ṯwalāka siiṯelēze	twalaka siiteleze	
738	185	b	 أَئِتَكَاپٗ مْپُوزٖ 	aiṯakāpo mpūze	aitakapo mpuze	
739	185	c	وَالَ سِئِتٖنْدٖكٖيزٖ 	wāla siiṯenḏekēze	wala siitendekeze	
740	185	d	 لَاكٖ كُمْتِمِزِيَ	lāke kumṯimiziya	lake kumtimiziya	
741	186	a	توَلَاكَ مُونْڠُ مٖوٖيكَ 	ṯwalāka mūngu mewēka	twalaka mungu meweka	
742	186	b	 كْوَ ذَرُورَ كُتُمِيكَ 	kwa dharūra kuṯumı̄ka	kwa dharura kutumika	
743	186	c	إِوَاپٗ مُمٖذِكِيكَ 	iwāpo mumedhikı̄ka	iwapo mumedhikika	
744	186	d	 مُمٖكٗوسَ زٗوتٖ نْدِيَ	mumekōsa zōṯe nḏiya	mumekosa zote ndiya	
745	187	a	كُشَلِيكِ مُشِنْدوَاپٗ 	kushalı̄ki mushinḏwāpo	kushaliki mushindwapo	
746	187	b	 توَلَاكَ هُوَ نِ هَاپٗ 	ṯwalāka huwa ni hāpo	twalaka huwa ni hapo	
747	187	c	نَ مُودَ أُئِتٗوَاپٗ 	na mūḏa uiṯowāpo	na muda uitowapo	
748	187	d	 أُسِئِزِدِيشٖ مٗويَ	usiiziḏı̄she mōya	usiizidishe moya	
749	188	a	تِمِيزَ نَ مَشَرُوتِ 	ṯimı̄za na masharūṯi	timiza na masharuti	
750	188	b	 يَ هَالِ پِيَ وَكَاتِ 	ya hāli piya wakāṯi	ya hali piya wakati	
751	188	c	نَ هُكُومُ زِتَفِيتِ 	na hukūmu ziṯafı̄ṯi	na hukumu zitafiti	
752	188	d	 كَبُولَ يَ كُتُمِيَ	kabūla ya kuṯumiya	kabula ya kutumiya	
753	189	a	كُونَ وَاتُ هُوَتَانَ 	kūna wāṯu huwaṯāna	kuna watu huwatana	
754	189	b	 كِيسَ مَارَ هُوَؤٗونَ 	kı̄sa māra huwaōna	kisa mara huwaona	
755	189	c	كْوَ هَرَامُ وَتَكَانَ 	kwa harāmu waṯakāna	kwa haramu watakana	
756	189	d	 زِپٖنْڠٖئٖ هُزٖنْڠٖيَ	zipengee huzengeya	zipengee huzengeya	
757	190	a	هُزٖنْڠٖيَ مُهَلِيلِ 	huzengeya muhalı̄li	huzengeya muhalili	
758	190	b	 فِكِرِيَ يَامْبٗ هِيلِ 	fikiriya yāmbo hı̄li	fikiriya yambo hili	
759	190	c	لَ كُؤَزِيمَ فَهَالِ 	la kuazı̄ma fahāli	la kuazima fahali	
760	190	d	 مْكٖ كْوٖينْدَ مْپٖكٖيَ	mke kwēnḏa mpekeya	mke kwenda mpekeya	
761	191	a	نَ لَنْڠِينٖ كَذَلِيكَ 	na langı̄ne kadhalı̄ka	na langine kadhalika	
762	191	b	 نِ كْوَ ممٗويَ تٗشٖيكَ 	ni kwa mmōya ṯoshēka	ni kwa mmoya tosheka	
763	191	c	إِيلَ كِيوَ مٖذِكِيكَ 	ı̄la kı̄wa medhikı̄ka	ila kiwa medhikika	
764	191	d	 هَئِكُپِينْڠَ شَرِيَ	haikupı̄nga shariya	haikupinga shariya	
765	192	a	مْكٖ سِؤٗوٖ وَ پِيلِ 	mke siowe wa pı̄li	mke siowe wa pili	
766	192	b	 نِ أُذِيَ كْوٖيلِ كْوٖيلِ 	ni udhiya kwēli kwēli	ni udhiya kweli kweli	
767	192	c	نَ إِنْڠَاوَ نِ هَلَالِ 	na ingāwa ni halāli	na ingawa ni halali	
768	192	d	 نِ أُزِيتٗ كُتُمِيَ	ni uzı̄ṯo kuṯumiya	ni uzito kutumiya	
769	193	a	نَ وَنَوَاكٖ سِ سَاوَ 	na wanawāke si sāwa	na wanawake si sawa	
770	193	b	 كْوَ وٖنْڠِنٖؤٗ نِ دَاوَ 	kwa wengineo ni ḏāwa	kwa wengineo ni dawa	
771	193	c	أُتَئِيُوتَ كُزَاوَ 	uṯaiyūṯa kuzāwa	utaiyuta kuzawa	
772	193	d	 نِمٖكْوَمْبِيَ يَهَايَ	nimekwambiya yahāya	nimekwambiya yahaya	
773	194	a	كُونَ وَنَاءٗ رِذِيكَ 	kūna wanāo ridhı̄ka	kuna wanao ridhika	
774	194	b	 وَنْڠَاوَ وَنُن’ڠُنِيكَ 	wangāwa wanun’gunı̄ka	wangawa wanun’gunika	
775	194	c	كُونَ وَنْڠِينٖ هُوَاكَ 	kūna wangı̄ne huwāka	kuna wangine huwaka	
776	194	d	 فُنُونُ وَكِسِكِيَ	funūnu wakisikiya	fununu wakisikiya	
777	195	a	كُؤٗنْڠٖيزَ سِ هَرَامُ 	kuongēza si harāmu	kuongeza si haramu	
778	195	b	 وَلَكِينِ أُفَهَامُ 	walakı̄ni ufahāmu	walakini ufahamu	
779	195	c	نِ كُؤُ مْنٗ جُكُومُ 	ni kuu mno jukūmu	ni kuu mno jukumu	
780	195	d	 مْبَالِ نَ وَاكٖ أُذِيَ	mbāli na wāke udhiya	mbali na wake udhiya	
781	196	a	إِكِيوَ سَبَابُ إِيكٗ 	ikı̄wa sabābu ı̄ko	ikiwa sababu iko	
782	196	b	 كْوَ مْفَانٗ مْكٖ وَاكٗ 	kwa mfāno mke wāko	kwa mfano mke wako	
783	196	c	مٖپٗوَ مِكَالِ مِيكٗ 	mepowa mikāli mı̄ko	mepowa mikali miko	
784	196	d	 كْوَ ذَرُورَ زَ أَفِيَ	kwa dharūra za afiya	kwa dharura za afiya	
785	197	a	لَبُودَ هَانَ كِزَازِ 	labūḏa hāna kizāzi	labuda hana kizazi	
786	197	b	 لَ كُزَاءَ هَلِوٖيزِ 	la kuzāa haliwēzi	la kuzaa haliwezi	
787	197	c	نَاوٖ وَتَاكَ پُمْبَازِ 	nāwe waṯāka pumbāzi	nawe wataka pumbazi	
788	197	d	 يَاپٗ نِ مْوَانَ ممٗويَ	yāpo ni mwāna mmōya	yapo ni mwana mmoya	
789	198	a	أَوْ يَالٖ مَشُغُولِ 	aw yāle mashuḡūli	au yale mashughuli	
790	198	b	 يٖيٖ هُمْپَ ثَقِيلِ 	yeye humpa thaqı̄li	yeye humpa thaqili	
791	198	c	نَاوٖ كُسِتَهَمِيلِ 	nāwe kusiṯahamı̄li	nawe kusitahamili	
792	198	d	 هُلِوٖيزِ هِيلٗ پِيَ	huliwēzi hı̄lo piya	huliwezi hilo piya	
793	199	a	كْوَ ذَرُورَ زِيسٗ بُودِ 	kwa dharūra zı̄so būḏi	kwa dharura ziso budi	
794	199	b	 أُسِتٖينْدٖ كْوَ كَسِيدِ 	usiṯēnḏe kwa kası̄ḏi	usitende kwa kasidi	
795	199	c	كُئٖنْڠٖيزَ وَ زَئِيدِ 	kuengēza wa zaı̄ḏi	kuengeza wa zaidi	
796	199	d	 كِتٗشٖلٖيزَ ممٗويَ	kiṯoshelēza mmōya	kitosheleza mmoya	
797	200	a	كْوَ ممٗويَ كُتٗشٖيكَ 	kwa mmōya kuṯoshēka	kwa mmoya kutosheka	
798	200	b	 نْدِيٗ بٗورَ بِيلَ شَاكَ 	nḏiyo bōra bı̄la shāka	ndiyo bora bila shaka	
799	200	c	كُئٖنْڠٖيزَ أُكِتَاكَ 	kuengēza ukiṯāka	kuengeza ukitaka	
800	200	d	 نِ كَامَ نِلٗكْوَمْبِيَ	ni kāma nilokwambiya	ni kama nilokwambiya	
801	201	a	أُسِيوٖ كِرُوكَ مْتٗ 	usı̄we kirūka mṯo	usiwe kiruka mto	
802	201	b	 خَاسَ كِيوَ نَ وَتٗوتٗ 	ẖāsa kı̄wa na waṯōṯo	hasa kiwa na watoto	
803	201	c	كُونَ هِسَابُ مزِيتٗ 	kūna hisābu mzı̄ṯo	kuna hisabu mzito	
804	201	d	 أَخٖيرَ تَكُنْڠٗجٖيَ	aẖēra ṯakungojeya	ahera takungojeya	
805	202	a	أُسِئِفَانْيَ چَ نْيُوكِ 	usiifānya cha nyūki	usiifanya cha nyuki	
806	202	b	 هُتُوِ نَ هُدِرِيكِ 	huṯuwi na huḏirı̄ki	hutuwi na hudiriki	
807	202	c	أُكِشِيكْوَ هُشِكِيكِ 	ukishı̄kwa hushikı̄ki	ukishikwa hushikiki	
808	202	d	 مَارَ هُوَ أُمٖتٖيَ	māra huwa umeṯeya	mara huwa umeteya	
809	203	a	كِيوَ أُمٖپٖينْدَ تُونْدَ 	kı̄wa umepēnḏa ṯūnḏa	kiwa umependa tunda	
810	203	b	 هُونَ بُودِ نَ كُپٖينْدَ 	hūna būḏi na kupēnḏa	huna budi na kupenda	
811	203	c	مْتِ وَاكٖ تَانْڠُ كْوَانْدَ 	mṯi wāke ṯāngu kwānḏa	mti wake tangu kwanda	
812	203	d	 وَزٖئٖ وَلِتوَمْبِيَ	wazee waliṯwambiya	wazee walitwambiya	
813	204	a	نَاوٖ كِمْپٖينْدَ مْكٖ 	nāwe kimpēnḏa mke	nawe kimpenda mke	
814	204	b	 وَپٖينْدٖ وَزٖئٖ وَاكٖ 	wapēnḏe wazee wāke	wapende wazee wake	
815	204	c	وَاكْوٖ مْبوَاكٗ سِئٖپُوكٖ 	wākwe mbwāko siepūke	wakwe mbwako siepuke	
816	204	d	 نَ هِشِيمَ كُوٖكٖيَ	na hishı̄ma kuwekeya	na hishima kuwekeya	
817	205	a	مُهِشِيمُ وَاكٖ مَامَ 	muhishı̄mu wāke māma	muhishimu wake mama	
818	205	b	 پِيَ بَبَاكٖ دَئِيمَ 	piya babāke ḏaı̄ma	piya babake daima	
819	205	c	كُوَذَرَاءُ سِ وٖيمَ 	kuwadharāu si wēma	kuwadharau si wema	
820	205	d	 تٗونٗ نَاوٖ تَمْتِيَ	ṯōno nāwe ṯamṯiya	tono nawe tamtiya	
821	206	a	كْوَ أُؤٗوڤُ سِوَنٖينٖ 	kwa uōvu siwanēne	kwa uovu siwanene	
822	206	b	 إِتُونْڠٖ سِوَتُكَانٖ 	iṯūnge siwaṯukāne	itunge siwatukane	
823	206	c	هَاتَ كَامَ هُويٗ مْوَانٖ 	hāṯa kāma hūyo mwāne	hata kama huyo mwane	
824	206	d	 هِشِيمَ مٖوَڤُنْدِيَ	hishı̄ma mewavunḏiya	hishima mewavundiya	
825	207	a	وٖيوٖ كَاتُ سِسُبُوتُ 	wēwe kāṯu sisubūṯu	wewe katu sisubutu	
826	207	b	 كُذَرَاءُ هَاءٗ وَاتُ 	kudharāu hāo wāṯu	kudharau hao watu	
827	207	c	هَاتَ كَامَ أُتُكُوتُ 	hāṯa kāma uṯukūṯu	hata kama utukutu	
828	207	d	 كْوَاءٗ أُمٖشُهُدِيَ	kwāo umeshuhuḏiya	kwao umeshuhudiya	
829	208	a	كِيوَ نِ وَاتُ مَتَاتَ 	kı̄wa ni wāṯu maṯāṯa	kiwa ni watu matata	
830	208	b	 سِؤٗ نَاءٗ أُتَتٖيتَ 	sio nāo uṯaṯēṯa	sio nao utateta	
831	208	c	خٖيرِ مْبَالِ كُئِڤُوتَ 	ẖēri mbāli kuivūṯa	heri mbali kuivuta	
832	208	d	 نَ مَامْبٗ كُؤَنْڠَلِيَ	na māmbo kuangaliya	na mambo kuangaliya	
833	209	a	أُكِيوَ أُونَ نَفَاسِ 	ukı̄wa ūna nafāsi	ukiwa una nafasi	
834	209	b	 لَ كُوَاپَ سِكُوَاسِ 	la kuwāpa sikuwāsi	la kuwapa sikuwasi	
835	209	c	إِيلَ فَانْيَ كْوَ كِئَاسِ 	ı̄la fānya kwa kiāsi	ila fanya kwa kiasi	
836	209	d	 سِيٖ دٖيوٖ كَكُتِيَ	siye ḏēwe kakuṯiya	siye dewe kakutiya	
837	210	a	كُونَ وَاكْوٖ وَ وَنْڠِينٖ 	kūna wākwe wa wangı̄ne	kuna wakwe wa wangine	
838	210	b	 كْوَ كُپَاتَ وَدٖنْڠٖينٖ 	kwa kupāṯa waḏengēne	kwa kupata wadengene	
839	210	c	كِيوَ نَاءٗ أُپٖمْبٖينٖ 	kı̄wa nāo upembēne	kiwa nao upembene	
840	210	d	 هَذَارِ نَكُؤُسِيَ	hadhāri nakuusiya	hadhari nakuusiya	
841	211	a	وَنْڠِينٖ نِ وَاتُ سَانَ 	wangı̄ne ni wāṯu sāna	wangine ni watu sana	
842	211	b	 كَاتُ هَوَكُدَنْڠَانَ 	kāṯu hawakuḏangāna	katu hawakudangana	
843	211	c	هَاتَ كِيوَ هَاجَ أُونَ 	hāṯa kı̄wa hāja ūna	hata kiwa haja una	
844	211	d	 هَأَنْدَامِ كُكْوَمْبِيَ	haanḏāmi kukwambiya	haandami kukwambiya	
845	212	a	هَنَانْدِ هَاتَ نْيُمْبَانِ 	hanānḏi hāṯa nyumbāni	hanandi hata nyumbani	
846	212	b	 كْوَ مْوَنَاوٖ كَتَمَانِ 	kwa mwanāwe kaṯamāni	kwa mwanawe katamani	
847	212	c	كُوچَ وَاتُ وَسِذَانِ 	kūcha wāṯu wasidhāni	kucha watu wasidhani	
848	212	d	 أَمٖكْوٖينْدَ كُتَوِيَ	amekwēnḏa kuṯawiya	amekwenda kutawiya	
849	213	a	نْدِيَانِ مُكِكُتَانَ 	nḏiyāni mukikuṯāna	ndiyani mukikutana	
850	213	b	 هُوَ نَ هَرَاكَ سَانَ 	huwa na harāka sāna	huwa na haraka sana	
851	213	c	هَمَكِنِيكِ كُنٖينَ 	hamakinı̄ki kunēna	hamakiniki kunena	
852	213	d	 كْوَ لِيلٗ كُلِكِمْبِيَ	kwa lı̄lo kulikimbiya	kwa lilo kulikimbiya	
853	214	a	وَكِيوَ وَاكْوٖ وَ وَاكٗ 	wakı̄wa wākwe wa wāko	wakiwa wakwe wa wako	
854	214	b	 كْوَاءٗ هِيزِ سِيفَ زِيكٗ 	kwāo hı̄zi sı̄fa zı̄ko	kwao hizi sifa ziko	
855	214	c	بَاسِ نِ بَهَاتِ يَاكٗ 	bāsi ni bahāṯi yāko	basi ni bahati yako	
856	214	d	 نِ هَاپٗ پَ كُزِوِيَ	ni hāpo pa kuziwiya	ni hapo pa kuziwiya	
857	215	a	أَامَ وَكْوٖؤٗ وَكِيوَ 	āma wakweo wakı̄wa	ama wakweo wakiwa	
858	215	b	 نِ وَ كُپٖينْدَ كُپٗوَ 	ni wa kupēnḏa kupowa	ni wa kupenda kupowa	
859	215	c	كُوَاپَ هُكُزُوِيوَ 	kuwāpa hukuzūı̄wa	kuwapa hukuzuwiwa	
860	215	d	 مْكٗونٗ كُوَنْيٗشٖيَ	mkōno kuwanyosheya	mkono kuwanyosheya	
861	216	a	أُسِوٖيكٖ كَامَ أَادَ 	usiwēke kāma āḏa	usiweke kama ada	
862	216	b	 كِيسَ تَكْوٖتٖيَ شِيدَ 	kı̄sa ṯakweṯeya shı̄ḏa	kisa takweteya shida	
863	216	c	إِيلَ وَاوٖ سِ لَبُودَ 	ı̄la wāwe si labūḏa	ila wawe si labuda	
864	216	d	 نِ وَاتُ وَهِتَجِيَ	ni wāṯu wahiṯajiya	ni watu wahitajiya	
865	217	a	وَكِيوَ نِ وَهِتَاجِ 	wakı̄wa ni wahiṯāji	wakiwa ni wahitaji	
866	217	b	 سِوَنْڠٗوجٖ كُتَرَاجِ 	siwangōje kuṯarāji	siwangoje kutaraji	
867	217	c	وَكِيوَ كْوَاكٗ هَوَاجِ 	wakı̄wa kwāko hawāji	wakiwa kwako hawaji	
868	217	d	 نِ سَاوَ كُوَپٖكٖيَ	ni sāwa kuwapekeya	ni sawa kuwapekeya	
869	218	a	أُكِيوَ أُمٖوَؤٗونَ 	ukı̄wa umewaōna	ukiwa umewaona	
870	218	b	 سِ وَاتُ وٖينْيٖ مَأَنَ 	si wāṯu wēnye maana	si watu wenye maana	
871	218	c	نِ وَالٖ وَ كُدَنْڠَانَ 	ni wāle wa kuḏangāna	ni wale wa kudangana	
872	218	d	 وَ كُپٖينْدَ كُپَپِيَ	wa kupēnḏa kupapiya	wa kupenda kupapiya	
873	219	a	زِوِيَ سِتٗوٖ چَاكٗ 	ziwiya siṯowe chāko	ziwiya sitowe chako	
874	219	b	 نَ مْوَمْبِيَ مْكٖ وَاكٗ 	na mwambiya mke wāko	na mwambiya mke wako	
875	219	c	إِيلَ هُتٗوفُ سُمْبُوكٗ 	ı̄la huṯōfu sumbūko	ila hutofu sumbuko	
876	219	d	 بِرِيكَ مْبٗوڤُ كُتِيَ	birı̄ka mbōvu kuṯiya	birika mbovu kutiya	
877	220	a	أَامَ وَسِؤٗ وَزَازِ 	āma wasio wazāzi	ama wasio wazazi	
878	220	b	 وَجٗومْبَ نَ مَشَنْڠَازِ 	wajōmba na mashangāzi	wajomba na mashangazi	
879	220	c	هَاپٗ كُونَ نْڠُومُ كَازِ 	hāpo kūna ngūmu kāzi	hapo kuna ngumu kazi	
880	220	d	 كْوَ يٖيتُ هِينِ دُنِيَ	kwa yēṯu hı̄ni ḏuniya	kwa yetu hini duniya	
881	221	a	كْوَانْدَ أُسِوَتَپِيٖ 	kwānḏa usiwaṯapiye	kwanda usiwatapiye	
882	221	b	 كٖيتِ مْبَالِ وَنْڠَلِيٖ 	kēṯi mbāli wangaliye	keti mbali wangaliye	
883	221	c	أُكِيَؤٗونَ مَمْبٗويٖ 	ukiyaōna mambōye	ukiyaona mamboye	
884	221	d	 نْدِيَ هَيَكْوٖكٖلٖيَ	nḏiya hayakwekeleya	ndiya hayakwekeleya	
885	222	a	أُسٖينْدٖ سَانَ كَرِيبُ 	usēnḏe sāna karı̄bu	usende sana karibu	
886	222	b	 تَئِڤُتِيَ تَأَبُ 	ṯaivuṯiya ṯaabu	taivutiya taabu	
887	222	c	نِ وٖينْڠِ وَ كُهَرِيبُ 	ni wēngi wa kuharı̄bu	ni wengi wa kuharibu	
888	222	d	 كَتِيكَ نِمٖزٗتَايَ	kaṯı̄ka nimezoṯāya	katika nimezotaya	
889	223	a	أَامَ مَشٖمٖيڠِ زَاكٗ 	āma mashemēgi zāko	ama mashemegi zako	
890	223	b	 دَادَ زَاكٖ مْكٖ وَاكٗ 	ḏāḏa zāke mke wāko	dada zake mke wako	
891	223	c	مْوَنَانْڠُ سِڤُونْدٖ مِيكٗ 	mwanāngu sivūnḏe mı̄ko	mwanangu sivunde miko	
892	223	d	 إِلٗوٖيكْوَ نَ شَرِيَ	ilowēkwa na shariya	ilowekwa na shariya	
893	224	a	أُسِؤٗنْدٗوٖ مِپَاكَ 	usionḏowe mipāka	usiondowe mipaka	
894	224	b	 كْوَ مزَاهَ نَ ذِهَاكَ 	kwa mzāha na dhihāka	kwa mzaha na dhihaka	
895	224	c	مَارَ مَامْبٗ هُڠٖؤُوكَ 	māra māmbo hugeūka	mara mambo hugeuka	
896	224	d	 كِزَأَزَاءَ كِكَايَ	kizaazāa kikāya	kizaazaa kikaya	
897	225	a	خٖيرِ وَمْبِيوٖ مُؤٗوڤُ 	ẖēri wambı̄we muōvu	heri wambiwe muovu	
898	225	b	 كُلِيكٗ كُپَاتَ كٗوڤُ 	kulı̄ko kupāṯa kōvu	kuliko kupata kovu	
899	225	c	خٖيرِ وَامْبٖ أُونَ وِيڤُ 	ẖēri wāmbe ūna wı̄vu	heri wambe una wivu	
900	225	d	 كُلِيكٗ كُكُڤُنْدِيَ	kulı̄ko kukuvunḏiya	kuliko kukuvundiya	
901	226	a	وِيڤُ نِ كَامَ كِؤُونْڠٗ 	wı̄vu ni kāma kiūngo	wivu ni kama kiungo	
902	226	b	 أُكِزِيدِ نِ تٖوٖينْڠٗ 	ukizı̄ḏi ni ṯewēngo	ukizidi ni tewengo	
903	226	c	پِيَ كُيِفَانْيَ تٗونْڠٗ 	piya kuyifānya ṯōngo	piya kuyifanya tongo	
904	226	d	 أُدُيُثِينِ هُنْڠِيَ	uḏuyuthı̄ni hungiya	uduyuthini hungiya	
905	227	a	نَ كُؤُكٗوسَ كَبِيسَ 	na kuukōsa kabı̄sa	na kuukosa kabisa	
906	227	b	 إِنْڠَاوَ نْدِيٗ كِسَاسَ 	ingāwa nḏiyo kisāsa	ingawa ndiyo kisasa	
907	227	c	هِيٗ سِ نْجٖيمَ سِيَاسَ 	hiyo si njēma siyāsa	hiyo si njema siyasa	
908	227	d	 يَ نْيُمْبَانِ كُتُمِيَ	ya nyumbāni kuṯumiya	ya nyumbani kutumiya	
909	228	a	نِ لَزِيمَ كُوَ نَاءٗ 	ni lazı̄ma kuwa nāo	ni lazima kuwa nao	
910	228	b	 كْوَ أَلِيٗ نِ مْكٖؤٗ 	kwa aliyo ni mkeo	kwa aliyo ni mkeo	
911	228	c	كِكُزُمْبُوَ هُنَاءٗ 	kikuzumbuwa hunāo	kikuzumbuwa hunao	
912	228	d	 مَتٗونِ هُتٗمْنْڠِيَ	maṯōni huṯomngiya	matoni hutomngiya	
913	229	a	كُوَ نَاءٗ وَ كَدِيرِ 	kuwa nāo wa kaḏı̄ri	kuwa nao wa kadiri	
914	229	b	 هِيٗ نْدِيٗ دَسِتُورِ 	hiyo nḏiyo ḏasiṯūri	hiyo ndiyo dasituri	
915	229	c	نَ كْوَ مْكٖ نِ فَخَارِ 	na kwa mke ni faẖāri	na kwa mke ni fahari	
916	229	d	 كْوَ وٖينْدٖ تَيِڤُنِيَ	kwa wēnḏe ṯayivuniya	kwa wende tayivuniya	
917	230	a	نَ فُفنُونُ أُكِپَاتَ 	na fufnūnu ukipāṯa	na fufnunu ukipata	
918	230	b	 كُوَ مْكٖ نِ مْتَاتَ 	kuwa mke ni mṯāṯa	kuwa mke ni mtata	
919	230	c	سِئِنُوكٖ نَ كُتٖيتَ 	siinūke na kuṯēṯa	siinuke na kuteta	
920	230	d	 كْوَانْدَ زِيدِ كْوَنْڠَلِيَ	kwānḏa zı̄ḏi kwangaliya	kwanda zidi kwangaliya	
921	231	a	سِمْتُكُلِيٖ ذَانَ 	simṯukuliye dhāna	simtukuliye dhana	
922	231	b	 كْوَ كُوَ وَاجَ هُنٖينَ 	kwa kuwa wāja hunēna	kwa kuwa waja hunena	
923	231	c	هِيلٗ نِ خَتَارِ سَانَ 	hı̄lo ni ẖaṯāri sāna	hilo ni hatari sana	
924	231	d	 مَيُتٗونِ تَكُتِيَ	mayuṯōni ṯakuṯiya	mayutoni takutiya	
925	232	a	إِزِوِيٖ أُسُبِيرِ 	iziwiye usubı̄ri	iziwiye usubiri	
926	232	b	 أُهَكِكِيشٖ خَبَارِ 	uhakikı̄she ẖabāri	uhakikishe habari	
927	232	c	تٖينَ أُفَانْيٖ كْوَ سِيرِ 	ṯēna ufānye kwa sı̄ri	tena ufanye kwa siri	
928	232	d	 پَاسِ نَ كُپِيجَ مْبِيَ	pāsi na kupı̄ja mbiya	pasi na kupija mbiya	
929	233	a	إِكِيوَ أُمٖتٗشٖيكَ 	ikı̄wa umeṯoshēka	ikiwa umetosheka	
930	233	b	 هِيلٗ نِ يَامْبٗ هَكِيكَ 	hı̄lo ni yāmbo hakı̄ka	hilo ni yambo hakika	
931	233	c	كْوَ تَرَتِيبُ إٖپُوكَ 	kwa ṯaraṯı̄bu epūka	kwa taratibu epuka	
932	233	d	 بِيلَ سَبَابُ كُتَايَ	bı̄la sabābu kuṯāya	bila sababu kutaya	
933	234	a	سِتَايٖ يَاكٗ سَبَابُ 	siṯāye yāko sabābu	sitaye yako sababu	
934	234	b	 أُتَزِيدِ كُهَرِيبُ 	uṯazı̄ḏi kuharı̄bu	utazidi kuharibu	
935	234	c	زِتَتَنْڠَاءَ أَئِيبُ 	ziṯaṯangāa aı̄bu	zitatangaa aibu	
936	234	d	 نَ سِ وٖيمَ كُئٖنٖيَ	na si wēma kueneya	na si wema kueneya	
937	235	a	نَ هِيلٗ كِيسَ كُتٖينْدَ 	na hı̄lo kı̄sa kuṯēnḏa	na hilo kisa kutenda	
938	235	b	 هُونَ بُودِ كُئِپِينْدَ 	hūna būḏi kuipı̄nḏa	huna budi kuipinda	
939	235	c	هَاتَ كَامَ أُونَ نْيٗونْدَ 	hāṯa kāma ūna nyōnḏa	hata kama una nyonda	
940	235	d	 سِيوٖ نْيُومَ تَرٖجٖيَ	sı̄we nyūma ṯarejeya	siwe nyuma tarejeya	
941	236	a	إِپِينْدٖ إِپِينْدٖ مْنٗ 	ipı̄nḏe ipı̄nḏe mno	ipinde ipinde mno	
942	236	b	 سِبَدِيلِ لَاكٗ نٖينٗ 	sibaḏı̄li lāko nēno	sibadili lako neno	
943	236	c	مْوِيسٗ تَپَاتَ أُسٗونٗ 	mwı̄so ṯapāṯa usōno	mwiso tapata usono	
944	236	d	 يَتَتٗوكَ مَزٗوٖيَ	yaṯaṯōka mazoweya	yatatoka mazoweya	
945	237	a	أُتَسُكِكَسُكِيكَ 	uṯasukikasukı̄ka	utasukikasukika	
946	237	b	 كِيوَ مٗويٗ وَمْتَاكَ 	kı̄wa mōyo wamṯāka	kiwa moyo wamtaka	
947	237	c	فَهَامُ تَفٖذٖهٖيكَ 	fahāmu ṯafedhehēka	fahamu tafedheheka	
948	237	d	 كِيوَ هُتٗئِزِوِيَ	kı̄wa huṯoiziwiya	kiwa hutoiziwiya	
949	238	a	إِزِوِيٖ إِكُكُوسٖ 	iziwiye ikukūse	iziwiye ikukuse	
950	238	b	 مْپَاكَ مَهَابَ يٖيسٖ 	mpāka mahāba yēse	mpaka mahaba yese	
951	238	c	پٖنْيٖينْيٖ أُسِيَپِيسٖ 	penyēnye usiyapı̄se	penyenye usiyapise	
952	238	d	 مٗيٗونِ كَكُرُدِيَ	moyōni kakuruḏiya	moyoni kakurudiya	
953	239	a	مْوِسٗوٖ يَتَؤٗنْدٗوكَ 	mwisowe yaṯaonḏōka	mwisowe yataondoka	
954	239	b	 نَ وٖيوٖ أُتَأَفِيكَ 	na wēwe uṯaafı̄ka	na wewe utaafika	
955	239	c	كُلِيكٗ كُفٖذٖهٖيكَ 	kulı̄ko kufedhehēka	kuliko kufedheheka	
956	239	d	 نَ إِزَرَانِ كُنْڠِيَ	na izarāni kungiya	na izarani kungiya	
957	240	a	لَكِينِ نَكُكُمْبُوشَ 	lakı̄ni nakukumbūsha	lakini nakukumbusha	
958	240	b	 كِيسوَ چَ نَانَ أَئِيشَ 	kı̄swa cha nāna aı̄sha	kiswa cha nana aisha	
959	240	c	ڤُرُمَاءِ وَلِزُوشَ 	vurumāi walizūsha	vurumai walizusha	
960	240	d	 مَاوِ وَكَمزُلِيَ	māwi wakamzuliya	mawi wakamzuliya	
961	241	a	وَلِؤٗنٖينَ نِ وٖينْڠِ 	walionēna ni wēngi	walionena ni wengi	
962	241	b	 وَكَفَانْيَ نَ مَڠٖينْڠِ 	wakafānya na magēngi	wakafanya na magengi	
963	241	c	نَ زِكَاءٗ زَ مِتِينْڠِ 	na zikāo za miṯı̄ngi	na zikao za mitingi	
964	241	d	 مَدِينَ زِكَئِنٖيَ	maḏı̄na zikaineya	madina zikaineya	
965	242	a	كْوَ يَامْبٗ لِيسٗ أَسِيلِ 	kwa yāmbo lı̄so ası̄li	kwa yambo liso asili	
966	242	b	 كْوَ مْكٖ وَاكٖ رَسُولِ 	kwa mke wāke rasūli	kwa mke wake rasuli	
967	242	c	كَاتُ هَلِكُوَ كْوٖيلِ 	kāṯu halikuwa kwēli	katu halikuwa kweli	
968	242	d	 نِ أُڤُومِ وَلِتِيَ	ni uvūmi waliṯiya	ni uvumi walitiya	
969	243	a	مْوَنْڠَلِيٖ نَ مْتُومِ 	mwangaliye na mṯūmi	mwangaliye na mtumi	
970	243	b	 أَلِكُوَ هَأَتَامِ 	alikuwa haaṯāmi	alikuwa haatami	
971	243	c	أَلِزِوِيَ أُلِيمِ 	aliziwiya ulı̄mi	aliziwiya ulimi	
972	243	d	 مْپَاكَ وَهَايِ كُويَ	mpāka wahāyi kūya	mpaka wahayi kuya	
973	244	a	يَتَاكَ مْنٗ هَذَارِ 	yaṯāka mno hadhāri	yataka mno hadhari	
974	244	b	 كَتِيكَ هِيزٗ خَبَارِ 	kaṯı̄ka hı̄zo ẖabāri	katika hizo habari	
975	244	c	سِيوٖ مْپٖيسِ كُكِيرِ 	sı̄we mpēsi kukı̄ri	siwe mpesi kukiri	
976	244	d	 يَامْبٗ أُكِلِسِكِيَ	yāmbo ukilisikiya	yambo ukilisikiya	
977	245	a	تَفِيتِ تَفِيتِ سَانَ 	ṯafı̄ṯi ṯafı̄ṯi sāna	tafiti tafiti sana	
978	245	b	 هَاتَ شَاكَ أُوٖ هُونَ 	hāṯa shāka uwe hūna	hata shaka uwe huna	
979	245	c	نْدِيپٗ هَاپٗ لَاكٗ نٖينَ 	nḏı̄po hāpo lāko nēna	ndipo hapo lako nena	
980	245	d	 بِيلَ سَبَابُ كُتَايَ	bı̄la sabābu kuṯāya	bila sababu kutaya	
981	246	a	هَاپَ سَاسَ نِتَكٗومَ 	hāpa sāsa niṯakōma	hapa sasa nitakoma	
982	246	b	 وَالَ يٗوتٖ سِكُسٖيمَ 	wāla yōṯe sikusēma	wala yote sikusema	
983	246	c	لَكِينِ أُكِئَنْدَامَ 	lakı̄ni ukianḏāma	lakini ukiandama	
984	246	d	 هَايَ تَكُسَئِدِيَ	hāya ṯakusaiḏiya	haya takusaidiya	
985	247	a	نِيَ نَ يَانْڠُ ذَمِيرِ 	niya na yāngu dhamı̄ri	niya na yangu dhamiri	
986	247	b	 كْوَنْدِيكَ كْوَ مَشَئِيرِ 	kwanḏı̄ka kwa mashaı̄ri	kwandika kwa mashairi	
987	247	c	نِ كُئٖنٖيزَ خَبَارِ 	ni kuenēza ẖabāri	ni kueneza habari	
988	247	d	 كْوَ وٖينْيٖ كُيَسِكِيَ	kwa wēnye kuyasikiya	kwa wenye kuyasikiya	
989	248	a	نِ سَهَالِ كُسِكِيزَ 	ni sahāli kusikı̄za	ni sahali kusikiza	
990	248	b	 كَسٖيتِ مٗويَ هُوٖيزَ 	kasēṯi mōya huwēza	kaseti moya huweza	
991	248	c	وٖينْڠِ وَكَپُلِكِيزَ 	wēngi wakapulikı̄za	wengi wakapulikiza	
992	248	d	 وَكَسِكِيزَ پَمٗويَ	wakasikı̄za pamōya	wakasikiza pamoya	
993	249	a	لَاءُ كَامَ نِ كِتَابُ 	lāu kāma ni kiṯābu	lau kama ni kitabu	
994	249	b	 وَسٗمَاجِ نِ هُبُوبُ 	wasomāji ni hubūbu	wasomaji ni hububu	
995	249	c	وٖينْڠِ هُؤٗونَ تَأَبُ 	wēngi huōna ṯaabu	wengi huona taabu	
996	249	d	 كُسِكِيزَ مٖزٗوٖيَ	kusikı̄za mezoweya	kusikiza mezoweya	
997	250	a	كَؤُولِ يَانْڠُ تَمَاتِ 	kaūli yāngu ṯamāṯi	kauli yangu tamati	
998	250	b	 نِ زٖينُ هِيزِ بَئِيتِ 	ni zēnu hı̄zi baı̄ṯi	ni zenu hizi baiti	
999	250	c	وَڤُلَانَ مَبَنَاتِ 	wavulāna mabanāṯi	wavulana mabanati	
1000	250	d	 نْيٗوتٖ نَوَكُسُدِيَ	nyōṯe nawakusuḏiya	nyote nawakusudiya	
\.


--
-- Data for Name: maisha_mume_backup; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY maisha_mume_backup (word_id, stanza, pos, location, arabic, close, standard, lemma, segment, variant, note, root, english, word, arword, clword) FROM stdin;
\.


--
-- Data for Name: maisha_mume_notes; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY maisha_mume_notes (stanza, pos, location, lemma, segment, variant, note, root, english) FROM stdin;
\.


--
-- Name: maisha_mume_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('maisha_mume_poemline_id_seq', 1000, true);


--
-- Data for Name: maisha_mume_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY maisha_mume_words (word_id, stanza, pos, location, arabic, close, standard, lemma, segment, variant, note, root, english, word, arword, clword) FROM stdin;
1	1	a	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
141	13	b	3	لَ	la	la							la	لَ	la
253	22	b	1	كَامَ	kāma	kama							kāma	كَامَ	kāma
422	35	c	3	تَنْجِ	ṯanji	tanji							ṯanji	تَنْجِ	ṯanji
513	43	c	1	مَدَاكَ	maḏāka	madaka							maḏāka	مَدَاكَ	maḏāka
557	47	a	4	بُودِ	būḏi	budi							būḏi	بُودِ	būḏi
649	54	d	1	هَايَ	hāya	haya							hāya	هَايَ	hāya
803	68	b	2	كُنٖينَ	kunēna	kunena							kunēna	كُنٖينَ	kunēna
835	71	c	1	نَ	na	na							na	نَ	na
922	79	a	3	هُتَمَانِ	huṯamāni	hutamani							huṯamāni	هُتَمَانِ	huṯamāni
1037	88	d	2	يَ	ya	ya							ya	يَ	ya
1187	102	a	2	سِ	si	si							si	سِ	si
1135	97	d	1	نَ	na	na							na	نَ	na
1280	109	b	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
1380	116	d	2	نَ	na	na							na	نَ	na
1292	110	b	1	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
1437	122	a	2	مٗوتٗ	mōṯo	moto							mōṯo	مٗوتٗ	mōṯo
1530	129	d	2	كُتِمِيَ	kuṯimiya	kutimiya							kuṯimiya	كُتِمِيَ	kuṯimiya
1620	137	c	3	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1621	137	c	4	سِيرِ	sı̄ri	siri							sı̄ri	سِيرِ	sı̄ri
1690	144	a	1	خُسُوسوَ	ẖusūswa	hususwa							ẖusūswa	خُسُوسوَ	ẖusūswa
1753	149	a	1	وَ	wa	wa							wa	وَ	wa
1846	157	a	2	هَالِ	hāli	hali							hāli	هَالِ	hāli
1968	167	c	1	نَ	na	na							na	نَ	na
2093	178	a	2	أُوٖ	uwe	uwe							uwe	أُوٖ	uwe
2155	183	c	1	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
2276	194	b	1	وَنْڠَاوَ	wangāwa	wangawa							wangāwa	وَنْڠَاوَ	wangāwa
2308	196	d	3	زَ	za	za							za	زَ	za
2429	207	a	1	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
1963	167	a	3	يَ	ya	ya							ya	يَ	ya
2521	214	c	2	نِ	ni	ni							ni	نِ	ni
2583	219	c	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
2593	220	b	2	نَ	na	na							na	نَ	na
2674	227	b	1	إِنْڠَاوَ	ingāwa	ingawa							ingāwa	إِنْڠَاوَ	ingāwa
2829	240	c	1	ڤُرُمَاءِ	vurumāi	vurumai							vurumāi	ڤُرُمَاءِ	vurumāi
2910	247	b	3	مَشَئِيرِ	mashaı̄ri	mashairi							mashaı̄ri	مَشَئِيرِ	mashaı̄ri
62	6	b	2	كُبَئِينِ	kubaı̄ni	kubaini							kubaı̄ni	كُبَئِينِ	kubaı̄ni
3	1	a	3	لَ	la	la							la	لَ	la
276	23	d	4	پِيَ	piya	piya							piya	پِيَ	piya
370	31	b	3	وَ	wa	wa							wa	وَ	wa
1293	110	b	2	سِ	si	si							si	سِ	si
1160	99	d	2	هُوبَ	hūba	huba							hūba	هُوبَ	hūba
2820	239	d	1	نَ	na	na							na	نَ	na
32	3	c	1	بَابَ	bāba	baba							bāba	بَابَ	bāba
2	1	a	2	إِينَ	ı̄na	ina							ı̄na	إِينَ	ı̄na
4	1	a	4	رَهَمَانِ	rahamāni	rahamani							rahamāni	رَهَمَانِ	rahamāni
33	3	c	2	پِيَ	piya	piya							piya	پِيَ	piya
34	3	c	3	كَذَلِيكَ	kadhalı̄ka	kadhalika							kadhalı̄ka	كَذَلِيكَ	kadhalı̄ka
5	1	b	1	نَأَنْدَ	naanḏa	naanda							naanḏa	نَأَنْدَ	naanḏa
6	1	b	2	نُذُومَ	nudhūma	nudhuma							nudhūma	نُذُومَ	nudhūma
7	1	b	3	هِينِ	hı̄ni	hini							hı̄ni	هِينِ	hı̄ni
74	7	c	3	هٖكِيمَ	hekı̄ma	hekima							hekı̄ma	هٖكِيمَ	hekı̄ma
50	5	b	1	نْدِيٗ	nḏiyo	ndiyo							nḏiyo	نْدِيٗ	nḏiyo
35	3	d	1	مِيمِ	mı̄mi	mimi							mı̄mi	مِيمِ	mı̄mi
8	1	c	1	إِينَ	ı̄na	ina							ı̄na	إِينَ	ı̄na
9	1	c	2	يَ	ya	ya							ya	يَ	ya
10	1	c	3	پِيلِ	pı̄li	pili							pı̄li	پِيلِ	pı̄li
11	1	c	4	رَمَانِ	ramāni	ramani							ramāni	رَمَانِ	ramāni
2911	247	c	1	نِ	ni	ni							ni	نِ	ni
51	5	b	2	لَ	la	la							la	لَ	la
811	69	a	3	نِ	ni	ni							ni	نِ	ni
1353	115	a	2	نَ	na	na							na	نَ	na
2145	182	c	1	نِ	ni	ni							ni	نِ	ni
2248	192	a	3	وَ	wa	wa							wa	وَ	wa
2456	209	b	1	لَ	la	la							la	لَ	la
2628	223	b	3	مْكٖ	mke	mke							mke	مْكٖ	mke
36	3	d	2	أَلِنَنْدِكِيَ	alinanḏikiya	alinandikiya							alinanḏikiya	أَلِنَنْدِكِيَ	alinanḏikiya
12	1	d	1	نَمْوَنْدِكِيَ	namwanḏikiya	namwandikiya							namwanḏikiya	نَمْوَنْدِكِيَ	namwanḏikiya
13	1	d	2	يَهَايَ	yahāya	yahaya							yahāya	يَهَايَ	yahāya
52	5	b	3	وَسِيَ	wasiya	wasiya							wasiya	وَسِيَ	wasiya
14	2	a	1	كْوٖينْيٖ	kwēnye	kwenye							kwēnye	كْوٖينْيٖ	kwēnye
15	2	a	2	رَمَانِ	ramāni	ramani							ramāni	رَمَانِ	ramāni
16	2	a	3	يَ	ya	ya							ya	يَ	ya
17	2	a	4	كْوَانْدَ	kwānḏa	kwanda							kwānḏa	كْوَانْدَ	kwānḏa
53	5	b	4	يِينَ	ı̄ı̄na	yina							ı̄ı̄na	يِينَ	ı̄ı̄na
37	4	a	1	بَابَ	bāba	baba							bāba	بَابَ	bāba
18	2	b	1	بَنَاتِ	banāṯi	banati							banāṯi	بَنَاتِ	banāṯi
19	2	b	2	نَلِوَفُونْدَ	naliwafūnḏa	naliwafunda							naliwafūnḏa	نَلِوَفُونْدَ	naliwafūnḏa
38	4	a	2	بوَانَ	bwāna	bwana							bwāna	بوَانَ	bwāna
39	4	a	3	أَهمَادِ	ahmāḏi	ahmadi							ahmāḏi	أَهمَادِ	ahmāḏi
20	2	c	1	نَ	na	na							na	نَ	na
21	2	c	2	هِينِ	hı̄ni	hini							hı̄ni	هِينِ	hı̄ni
22	2	c	3	نِمٖئُِونْدَ	nimeiūnḏa	nimeiunda							nimeiūnḏa	نِمٖئُِونْدَ	nimeiūnḏa
23	2	d	1	وَڤُلَانَ	wavulāna	wavulana							wavulāna	وَڤُلَانَ	wavulāna
24	2	d	2	كُوَمْبِيَ	kuwambiya	kuwambiya							kuwambiya	كُوَمْبِيَ	kuwambiya
40	4	b	1	أَتَمْجَازِ	aṯamjāzi	atamjazi							aṯamjāzi	أَتَمْجَازِ	aṯamjāzi
41	4	b	2	وَدُودِ	waḏūḏi	wadudi							waḏūḏi	وَدُودِ	waḏūḏi
25	3	a	1	نَ	na	na							na	نَ	na
26	3	a	2	أَسِيلِ	ası̄li	asili							ası̄li	أَسِيلِ	ası̄li
27	3	a	3	يَ	ya	ya							ya	يَ	ya
28	3	a	4	كْوَنْدِيكَ	kwanḏı̄ka	kwandika							kwanḏı̄ka	كْوَنْدِيكَ	kwanḏı̄ka
63	6	c	1	يَالٖ	yāle	yale							yāle	يَالٖ	yāle
29	3	b	1	نَهِيسِ	nahı̄si	nahisi							nahı̄si	نَهِيسِ	nahı̄si
30	3	b	2	وَانَ	wāna	wana							wāna	وَانَ	wāna
31	3	b	3	وَتَاكَ	waṯāka	wataka							waṯāka	وَتَاكَ	waṯāka
42	4	c	1	كْوَانِ	kwāni	kwani							kwāni	كْوَانِ	kwāni
43	4	c	2	أَلِجِتَهِيدِ	alijiṯahı̄ḏi	alijitahidi							alijiṯahı̄ḏi	أَلِجِتَهِيدِ	alijiṯahı̄ḏi
54	5	c	1	أَلٗنَنْدِكِئَ	alonanḏikia	alonandikia							alonanḏikia	أَلٗنَنْدِكِئَ	alonanḏikia
55	5	c	2	بوَانَ	bwāna	bwana							bwāna	بوَانَ	bwāna
44	4	d	1	كُنَنْدِكِيَ	kunanḏikiya	kunandikiya							kunanḏikiya	كُنَنْدِكِيَ	kunanḏikiya
45	4	d	2	وَسِيَ	wasiya	wasiya							wasiya	وَسِيَ	wasiya
64	6	c	2	نِنَيٗؤَمِينِ	ninayoamı̄ni	ninayoamini							ninayoamı̄ni	نِنَيٗؤَمِينِ	ninayoamı̄ni
46	5	a	1	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
47	5	a	2	زَمَانِ	zamāni	zamani							zamāni	زَمَانِ	zamāni
48	5	a	3	زَ	za	za							za	زَ	za
49	5	a	4	يَانَ	yāna	yana							yāna	يَانَ	yāna
56	5	d	1	بَبَانْڠُ	babāngu	babangu							babāngu	بَبَانْڠُ	babāngu
57	5	d	2	كَنِوَتِيَ	kaniwaṯiya	kaniwatiya							kaniwaṯiya	كَنِوَتِيَ	kaniwaṯiya
69	7	b	1	نَ	na	na							na	نَ	na
58	6	a	1	نَامِ	nāmi	nami							nāmi	نَامِ	nāmi
59	6	a	2	كَتِيكَ	kaṯı̄ka	katika							kaṯı̄ka	كَتِيكَ	kaṯı̄ka
60	6	a	3	رَمَانِ	ramāni	ramani							ramāni	رَمَانِ	ramāni
65	6	d	1	يَوٖيزَ	yawēza	yaweza							yawēza	يَوٖيزَ	yawēza
70	7	b	2	يَالٖ	yāle	yale							yāle	يَالٖ	yāle
61	6	b	1	تَيِپِينْدَ	ṯayipı̄nḏa	tayipinda							ṯayipı̄nḏa	تَيِپِينْدَ	ṯayipı̄nḏa
66	6	d	2	كُسَئِدِيَ	kusaiḏiya	kusaidiya							kusaiḏiya	كُسَئِدِيَ	kusaiḏiya
2927	249	a	1	لَاءُ	lāu	lau							lāu	لَاءُ	lāu
71	7	b	3	نِلٗيَسٗومَ	niloyasōma	niloyasoma							niloyasōma	نِلٗيَسٗومَ	niloyasōma
67	7	a	1	تَنٖينَ	ṯanēna	tanena							ṯanēna	تَنٖينَ	ṯanēna
68	7	a	2	نَلٗيَتُومَ	naloyaṯūma	naloyatuma							naloyaṯūma	نَلٗيَتُومَ	naloyaṯūma
81	8	b	2	مْبَالِ	mbāli	mbali							mbāli	مْبَالِ	mbāli
82	8	b	3	كُتَنْڠَانْيَ	kuṯangānya	kutanganya							kuṯangānya	كُتَنْڠَانْيَ	kuṯangānya
72	7	c	1	تَزِتَايَ	ṯaziṯāya	tazitaya							ṯaziṯāya	تَزِتَايَ	ṯaziṯāya
73	7	c	2	نَ	na	na							na	نَ	na
78	8	a	1	يَالٖ	yāle	yale							yāle	يَالٖ	yāle
79	8	a	2	نِتَيَكُسَانْيَ	niṯayakusānya	nitayakusanya							niṯayakusānya	نِتَيَكُسَانْيَ	niṯayakusānya
75	7	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
76	7	d	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
77	7	d	3	نِلٗپٗكٖيَ	nilopokeya	nilopokeya							nilopokeya	نِلٗپٗكٖيَ	nilopokeya
84	8	c	2	لَانْڠُ	lāngu	langu							lāngu	لَانْڠُ	lāngu
80	8	b	1	مْبَالِ	mbāli	mbali							mbāli	مْبَالِ	mbāli
85	8	c	3	نِ	ni	ni							ni	نِ	ni
86	8	c	4	كُفَانْيَ	kufānya	kufanya							kufānya	كُفَانْيَ	kufānya
88	8	d	2	لَ	la	la							la	لَ	la
83	8	c	1	لٖينْڠٗ	lēngo	lengo							lēngo	لٖينْڠٗ	lēngo
89	8	d	3	مَئِيشَ	maı̄sha	maisha							maı̄sha	مَئِيشَ	maı̄sha
90	8	d	4	بٗويَ	bōya	boya							bōya	بٗويَ	bōya
87	8	d	1	كَامَ	kāma	kama							kāma	كَامَ	kāma
91	9	a	1	بٗويَ	bōya	boya							bōya	بٗويَ	bōya
142	13	b	4	أُونِ	ūni	uni							ūni	أُونِ	ūni
92	9	a	2	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
93	9	a	3	لَ	la	la							la	لَ	la
94	9	a	4	مَئِيشَ	maı̄sha	maisha							maı̄sha	مَئِيشَ	maı̄sha
122	12	a	1	مْوَنَانْڠُ	mwanāngu	mwanangu							mwanāngu	مْوَنَانْڠُ	mwanāngu
123	12	a	2	سِتَاكٖ	siṯāke	sitake							siṯāke	سِتَاكٖ	siṯāke
95	9	b	1	كَاتُ	kāṯu	katu							kāṯu	كَاتُ	kāṯu
96	9	b	2	هَلِتٗزَمِيشَ	haliṯozamı̄sha	halitozamisha							haliṯozamı̄sha	هَلِتٗزَمِيشَ	haliṯozamı̄sha
124	12	a	3	مْكٖ	mke	mke							mke	مْكٖ	mke
97	9	c	1	أَشِكَاءٗ	ashikāo	ashikao							ashikāo	أَشِكَاءٗ	ashikāo
98	9	c	2	تَمْڤُوشَ	ṯamvūsha	tamvusha							ṯamvūsha	تَمْڤُوشَ	ṯamvūsha
99	9	d	1	بَنْدَارِ	banḏāri	bandari							banḏāri	بَنْدَارِ	banḏāri
100	9	d	2	تَسِكِلِيَ	ṯasikiliya	tasikiliya							ṯasikiliya	تَسِكِلِيَ	ṯasikiliya
101	10	a	1	مْوَنَانْڠُ	mwanāngu	mwanangu							mwanāngu	مْوَنَانْڠُ	mwanāngu
102	10	a	2	أُكِئَزِيمُ	ukiazı̄mu	ukiazimu							ukiazı̄mu	أُكِئَزِيمُ	ukiazı̄mu
103	10	b	1	كُؤٗوَ	kuowa	kuowa							kuowa	كُؤٗوَ	kuowa
104	10	b	2	كْوَانْدَ	kwānḏa	kwanda							kwānḏa	كْوَانْدَ	kwānḏa
105	10	b	3	فَهَامُ	fahāmu	fahamu							fahāmu	فَهَامُ	fahāmu
162	14	d	3	كُزٖنْڠٖيَ	kuzengeya	kuzengeya							kuzengeya	كُزٖنْڠٖيَ	kuzengeya
125	12	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
106	10	c	1	كُتٖؤُوَ	kuṯeuwa	kuteuwa							kuṯeuwa	كُتٖؤُوَ	kuṯeuwa
107	10	c	2	نِ	ni	ni							ni	نِ	ni
108	10	c	3	مُهِيمُ	muhı̄mu	muhimu							muhı̄mu	مُهِيمُ	muhı̄mu
126	12	b	2	وٖيمَ	wēma	wema							wēma	وٖيمَ	wēma
127	12	b	3	وَ	wa	wa							wa	وَ	wa
128	12	b	4	أُومْبٗ	ūmbo	umbo							ūmbo	أُومْبٗ	ūmbo
129	12	b	5	لَاكٖ	lāke	lake							lāke	لَاكٖ	lāke
109	10	d	1	نِ	ni	ni							ni	نِ	ni
110	10	d	2	أَامرِ	āmri	amri							āmri	أَامرِ	āmri
111	10	d	3	يَ	ya	ya							ya	يَ	ya
112	10	d	4	شَرِيَ	shariya	shariya							shariya	شَرِيَ	shariya
113	11	a	1	مْتُومِ	mṯūmi	mtumi							mṯūmi	مْتُومِ	mṯūmi
114	11	a	2	أَلِبَئِينِ	alibaı̄ni	alibaini							alibaı̄ni	أَلِبَئِينِ	alibaı̄ni
115	11	b	1	أَكَتوَمْبِيَ	akaṯwambiya	akatwambiya							akaṯwambiya	أَكَتوَمْبِيَ	akaṯwambiya
116	11	b	2	أٗوَانِ	owāni	owani							owāni	أٗوَانِ	owāni
153	14	b	1	نَ	na	na							na	نَ	na
154	14	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
143	13	c	1	كِشُونَ	kishūna	kishuna							kishūna	كِشُونَ	kishūna
117	11	c	1	مْوَنَامْكٖ	mwanāmke	mwanamke							mwanāmke	مْوَنَامْكٖ	mwanāmke
118	11	c	2	مْوٖينْيٖ	mwēnye	mwenye							mwēnye	مْوٖينْيٖ	mwēnye
119	11	c	3	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
144	13	c	2	كِيلٗ	kı̄lo	kilo							kı̄lo	كِيلٗ	kı̄lo
130	12	c	1	نَسَابَ	nasāba	nasaba							nasāba	نَسَابَ	nasāba
120	11	d	1	مُونْڠُ	mūngu	mungu							mūngu	مُونْڠُ	mūngu
121	11	d	2	تَوَبَرِكِيَ	ṯawabarikiya	tawabarikiya							ṯawabarikiya	تَوَبَرِكِيَ	ṯawabarikiya
131	12	c	2	نَ	na	na							na	نَ	na
132	12	c	3	پَاتٗ	pāṯo	pato							pāṯo	پَاتٗ	pāṯo
133	12	c	4	لَاكٖ	lāke	lake							lāke	لَاكٖ	lāke
145	13	c	3	نَ	na	na							na	نَ	na
146	13	c	4	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
134	12	d	1	مَيُتٗونِ	mayuṯōni	mayutoni							mayuṯōni	مَيُتٗونِ	mayuṯōni
135	12	d	2	أُتَنْڠِيَ	uṯangiya	utangiya							uṯangiya	أُتَنْڠِيَ	uṯangiya
136	13	a	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
137	13	a	2	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
138	13	a	3	هَئِنٖينِ	hainēni	haineni							hainēni	هَئِنٖينِ	hainēni
155	14	b	3	مٗولَ	mōla	mola							mōla	مٗولَ	mōla
156	14	b	4	مْتِئِيفُ	mṯiı̄fu	mtiifu							mṯiı̄fu	مْتِئِيفُ	mṯiı̄fu
139	13	b	1	أٗوَ	owa	owa							owa	أٗوَ	owa
140	13	b	2	شُڠُؤُ	shuguu	shuguu							shuguu	شُڠُؤُ	shuguu
147	13	d	1	كُكِؤٗوَ	kukiowa	kukiowa							kukiowa	كُكِؤٗوَ	kukiowa
148	13	d	2	سِ	si	si							si	سِ	si
149	13	d	3	هَتِيَ	haṯiya	hatiya							haṯiya	هَتِيَ	haṯiya
150	14	a	1	مْوٖينْيٖ	mwēnye	mwenye							mwēnye	مْوٖينْيٖ	mwēnye
151	14	a	2	نَسَابَ	nasāba	nasaba							nasāba	نَسَابَ	nasāba
152	14	a	3	تُكُوفُ	ṯukūfu	tukufu							ṯukūfu	تُكُوفُ	ṯukūfu
171	15	c	2	أَاوٖ	āwe	awe							āwe	أَاوٖ	āwe
157	14	c	1	هَاوِ	hāwi	hawi							hāwi	هَاوِ	hāwi
158	14	c	2	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
159	14	c	3	مٖخَلِيفُ	meẖalı̄fu	mehalifu							meẖalı̄fu	مٖخَلِيفُ	meẖalı̄fu
175	15	d	2	هَكُمْبِرِيَ	hakumbiriya	hakumbiriya							hakumbiriya	هَكُمْبِرِيَ	hakumbiriya
168	15	b	1	سِكْوَمْبِئِ	sikwambii	sikwambii							sikwambii	سِكْوَمْبِئِ	sikwambii
169	15	b	2	سِمْتَاكٖ	simṯāke	simtake							simṯāke	سِمْتَاكٖ	simṯāke
160	14	d	1	كَامَ	kāma	kama							kāma	كَامَ	kāma
161	14	d	2	هُويٗ	hūyo	huyo							hūyo	هُويٗ	hūyo
163	15	a	1	نَ	na	na							na	نَ	na
164	15	a	2	مْكٖ	mke	mke							mke	مْكٖ	mke
165	15	a	3	أَالٗ	ālo	alo							ālo	أَالٗ	ālo
166	15	a	4	نَ	na	na							na	نَ	na
167	15	a	5	چَاكٖ	chāke	chake							chāke	چَاكٖ	chāke
177	16	a	2	نِ	ni	ni							ni	نِ	ni
174	15	d	1	مٖشِيكَ	meshı̄ka	meshika							meshı̄ka	مٖشِيكَ	meshı̄ka
170	15	c	1	بٗورَ	bōra	bora							bōra	بٗورَ	bōra
172	15	c	3	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
173	15	c	4	يَاكٖ	yāke	yake							yāke	يَاكٖ	yāke
178	16	a	3	كَامَ	kāma	kama							kāma	كَامَ	kāma
179	16	a	4	بُرٖيكِ	burēki	bureki							burēki	بُرٖيكِ	burēki
181	16	b	2	هَتٗوكِ	haṯōki	hatoki							haṯōki	هَتٗوكِ	haṯōki
176	16	a	1	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
183	16	c	2	نَ	na	na							na	نَ	na
180	16	b	1	هُمزِوِيَ	humziwiya	humziwiya							humziwiya	هُمزِوِيَ	humziwiya
184	16	c	3	هَرُوكِ	harūki	haruki							harūki	هَرُوكِ	harūki
182	16	c	1	مِپَكَانِ	mipakāni	mipakani							mipakāni	مِپَكَانِ	mipakāni
234	20	d	1	يَ	ya	ya							ya	يَ	ya
185	16	d	1	أَكِيوَ	akı̄wa	akiwa							akı̄wa	أَكِيوَ	akı̄wa
186	16	d	2	تَئِتُمِيَ	ṯaiṯumiya	taitumiya							ṯaiṯumiya	تَئِتُمِيَ	ṯaiṯumiya
235	20	d	2	كُمُؤٗنْڠٗوزَ	kumuongōza	kumuongoza							kumuongōza	كُمُؤٗنْڠٗوزَ	kumuongōza
215	19	b	1	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
216	19	b	2	إِيوٖ	ı̄we	iwe							ı̄we	إِيوٖ	ı̄we
187	17	a	1	نَ	na	na							na	نَ	na
188	17	a	2	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
189	17	a	3	هُمزِوِيزَ	humziwı̄za	humziwiza							humziwı̄za	هُمزِوِيزَ	humziwı̄za
217	19	b	3	هُمْوٖنْدٖيشَ	humwenḏēsha	humwendesha							humwenḏēsha	هُمْوٖنْدٖيشَ	humwenḏēsha
190	17	b	1	كُتٖينْدَ	kuṯēnḏa	kutenda							kuṯēnḏa	كُتٖينْدَ	kuṯēnḏa
191	17	b	2	يَسٗپٖنْدٖيزَ	yasopenḏēza	yasopendeza							yasopenḏēza	يَسٗپٖنْدٖيزَ	yasopenḏēza
192	17	c	1	نَ	na	na							na	نَ	na
193	17	c	2	نْدِيپٗ	nḏı̄po	ndipo							nḏı̄po	نْدِيپٗ	nḏı̄po
194	17	c	3	كَكُهِمِيزَ	kakuhimı̄za	kakuhimiza							kakuhimı̄za	كَكُهِمِيزَ	kakuhimı̄za
236	20	d	3	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
195	17	d	1	مْوٖينْيٖ	mwēnye	mwenye							mwēnye	مْوٖينْيٖ	mwēnye
196	17	d	2	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
197	17	d	3	كْوَنْڠَلِيَ	kwangaliya	kwangaliya							kwangaliya	كْوَنْڠَلِيَ	kwangaliya
218	19	c	1	سِ	si	si							si	سِ	si
198	18	a	1	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
199	18	a	2	نِنَيٗئِنٖينَ	ninayoinēna	ninayoinena							ninayoinēna	نِنَيٗئِنٖينَ	ninayoinēna
219	19	c	2	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
220	19	c	3	يَ	ya	ya							ya	يَ	ya
221	19	c	4	كُؤٗنٖيشَ	kuonēsha	kuonesha							kuonēsha	كُؤٗنٖيشَ	kuonēsha
200	18	b	1	سِكُوَ	sikuwa	sikuwa							sikuwa	سِكُوَ	sikuwa
201	18	b	2	نَايٗ	nāyo	nayo							nāyo	نَايٗ	nāyo
202	18	b	3	نِ	ni	ni							ni	نِ	ni
203	18	b	4	إِينَ	ı̄na	ina							ı̄na	إِينَ	ı̄na
254	22	b	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
246	21	d	1	سَنْدَامٖ	sanḏāme	sandame							sanḏāme	سَنْدَامٖ	sanḏāme
222	19	d	1	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
204	18	c	1	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
205	18	c	2	نِ	ni	ni							ni	نِ	ni
206	18	c	3	كْوَنْدَامَ	kwanḏāma	kwandama							kwanḏāma	كْوَنْدَامَ	kwanḏāma
207	18	c	4	سَانَ	sāna	sana							sāna	سَانَ	sāna
223	19	d	2	كُوَهَدَلِيَ	kuwahaḏaliya	kuwahadaliya							kuwahaḏaliya	كُوَهَدَلِيَ	kuwahaḏaliya
208	18	d	1	أَامرِ	āmri	amri							āmri	أَامرِ	āmri
209	18	d	2	زَاكٖ	zāke	zake							zāke	زَاكٖ	zāke
210	18	d	3	جَلِيَ	jaliya	jaliya							jaliya	جَلِيَ	jaliya
247	21	d	2	يَ	ya	ya							ya	يَ	ya
237	21	a	1	نِ	ni	ni							ni	نِ	ni
211	19	a	1	نِ	ni	ni							ni	نِ	ni
212	19	a	2	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
213	19	a	3	كْوٖينْيٖ	kwēnye	kwenye							kwēnye	كْوٖينْيٖ	kwēnye
214	19	a	4	مَئِيشَ	maı̄sha	maisha							maı̄sha	مَئِيشَ	maı̄sha
238	21	a	2	أُكِيسَ	ukı̄sa	ukisa							ukı̄sa	أُكِيسَ	ukı̄sa
239	21	a	3	كُؤَمُوَ	kuamuwa	kuamuwa							kuamuwa	كُؤَمُوَ	kuamuwa
224	20	a	1	نِ	ni	ni							ni	نِ	ni
225	20	a	2	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
226	20	a	3	إِلِيٗ	iliyo	iliyo							iliyo	إِلِيٗ	iliyo
227	20	a	4	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
228	20	b	1	إِلِيٗكِيتَ	iliyokı̄ṯa	iliyokita							iliyokı̄ṯa	إِلِيٗكِيتَ	iliyokı̄ṯa
229	20	b	2	مٗيٗونِ	moyōni	moyoni							moyōni	مٗيٗونِ	moyōni
248	21	d	3	جٗونْڠٗ	jōngo	jongo							jōngo	جٗونْڠٗ	jōngo
249	21	d	4	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
230	20	c	1	نْدِيٗ	nḏiyo	ndiyo							nḏiyo	نْدِيٗ	nḏiyo
231	20	c	2	هُوَ	huwa	huwa							huwa	هُوَ	huwa
232	20	c	3	نِ	ni	ni							ni	نِ	ni
233	20	c	4	سُكَانِ	sukāni	sukani							sukāni	سُكَانِ	sukāni
240	21	b	1	نِ	ni	ni							ni	نِ	ni
241	21	b	2	فُلَانِ	fulāni	fulani							fulāni	فُلَانِ	fulāni
242	21	b	3	تَمُؤٗوَ	ṯamuowa	tamuowa							ṯamuowa	تَمُؤٗوَ	ṯamuowa
255	22	b	3	وٖينْيٖ	wēnye	wenye							wēnye	وٖينْيٖ	wēnye
256	22	b	4	ڠٗوڠِ	gōgi	gogi							gōgi	ڠٗوڠِ	gōgi
243	21	c	1	فَانْيَ	fānya	fanya							fānya	فَانْيَ	fānya
244	21	c	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
245	21	c	3	سَوَسَاوَ	sawasāwa	sawasawa							sawasāwa	سَوَسَاوَ	sawasāwa
259	22	d	1	هَرُوسِ	harūsi	harusi							harūsi	هَرُوسِ	harūsi
250	22	a	1	أُسِفَانْيٖ	usifānye	usifanye							usifānye	أُسِفَانْيٖ	usifānye
251	22	a	2	يَ	ya	ya							ya	يَ	ya
252	22	a	3	شٖشٖيڠِ	sheshēgi	sheshegi							sheshēgi	شٖشٖيڠِ	sheshēgi
260	22	d	2	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya							nimekwambiya	نِمٖكْوَمْبِيَ	nimekwambiya
257	22	c	1	سِئِپٖيكٖ	siipēke	siipeke							siipēke	سِئِپٖيكٖ	siipēke
258	22	c	2	زِڠِزَاڠِ	zigizāgi	zigizagi							zigizāgi	زِڠِزَاڠِ	zigizāgi
261	23	a	1	كُولَ	kūla	kula							kūla	كُولَ	kūla
262	23	a	2	إِكِيوَ	ikı̄wa	ikiwa							ikı̄wa	إِكِيوَ	ikı̄wa
266	23	b	2	نِ	ni	ni							ni	نِ	ni
268	23	b	4	هَرُوسِ	harūsi	harusi							harūsi	هَرُوسِ	harūsi
270	23	c	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
263	23	a	3	نِ	ni	ni							ni	نِ	ni
264	23	a	4	پٖيسِ	pēsi	pesi							pēsi	پٖيسِ	pēsi
265	23	b	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
267	23	b	3	بٗورَ	bōra	bora							bōra	بٗورَ	bōra
271	23	c	3	يَ	ya	ya							ya	يَ	ya
272	23	c	4	كِئَاسِ	kiāsi	kiasi							kiāsi	كِئَاسِ	kiāsi
274	23	d	2	غَرَامَ	ḡarāma	gharama							ḡarāma	غَرَامَ	ḡarāma
269	23	c	1	فَانْيَ	fānya	fanya							fānya	فَانْيَ	fānya
275	23	d	3	نْڠٗومَ	ngōma	ngoma							ngōma	نْڠٗومَ	ngōma
273	23	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
277	24	a	1	مَكُوبوَ	makūbwa	makubwa							makūbwa	مَكُوبوَ	makūbwa
1754	149	a	2	هَرَامُ	harāmu	haramu							harāmu	هَرَامُ	harāmu
278	24	a	2	أُسِيَتَاكٖ	usiyaṯāke	usiyatake							usiyaṯāke	أُسِيَتَاكٖ	usiyaṯāke
310	26	c	2	سِكِيرِ	sikı̄ri	sikiri							sikı̄ri	سِكِيرِ	sikı̄ri
279	24	b	1	نَ	na	na							na	نَ	na
280	24	b	2	مِپَاكَ	mipāka	mipaka							mipāka	مِپَاكَ	mipāka
281	24	b	3	أُسِرُوكٖ	usirūke	usiruke							usirūke	أُسِرُوكٖ	usirūke
329	28	a	1	مِيلَ	mı̄la	mila							mı̄la	مِيلَ	mı̄la
330	28	a	2	يٖيتُ	yēṯu	yetu							yēṯu	يٖيتُ	yēṯu
331	28	a	3	أُسِوَاتٖ	usiwāṯe	usiwate							usiwāṯe	أُسِوَاتٖ	usiwāṯe
282	24	c	1	پِيَ	piya	piya							piya	پِيَ	piya
283	24	c	2	أُپَانْدٖ	upānḏe	upande							upānḏe	أُپَانْدٖ	upānḏe
284	24	c	3	وَ	wa	wa							wa	وَ	wa
285	24	c	4	مْكٖ	mke	mke							mke	مْكٖ	mke
311	26	d	1	هَفُولَ	hafūla	hafula							hafūla	هَفُولَ	hafūla
312	26	d	2	زَ	za	za							za	زَ	za
313	26	d	3	مَأَسِيَ	maasiya	maasiya							maasiya	مَأَسِيَ	maasiya
286	24	d	1	وَئِلٖيزٖ	wailēze	waileze							wailēze	وَئِلٖيزٖ	wailēze
287	24	d	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
288	24	d	3	هَايَ	hāya	haya							hāya	هَايَ	hāya
289	25	a	1	زِكِيوَ	zikı̄wa	zikiwa							zikı̄wa	زِكِيوَ	zikı̄wa
290	25	a	2	نْيِينْڠِ	nı̄ı̄ngi	nyingi							nı̄ı̄ngi	نْيِينْڠِ	nı̄ı̄ngi
291	25	a	3	غَرَامَ	ḡarāma	gharama							ḡarāma	غَرَامَ	ḡarāma
314	27	a	1	هَفُولَ	hafūla	hafula							hafūla	هَفُولَ	hafūla
292	25	b	1	نَ	na	na							na	نَ	na
293	25	b	2	مَيُوتٗ	mayūṯo	mayuto							mayūṯo	مَيُوتٗ	mayūṯo
294	25	b	3	نِ	ni	ni							ni	نِ	ni
295	25	b	4	لَزِيمَ	lazı̄ma	lazima							lazı̄ma	لَزِيمَ	lazı̄ma
315	27	a	2	زَ	za	za							za	زَ	za
316	27	a	3	إِسِرَافُ	isirāfu	isirafu							isirāfu	إِسِرَافُ	isirāfu
296	25	c	1	نْڠٗومَ	ngōma	ngoma							ngōma	نْڠٗومَ	ngōma
297	25	c	2	زِكِيسَ	zikı̄sa	zikisa							zikı̄sa	زِكِيسَ	zikı̄sa
298	25	c	3	كُكٗومَ	kukōma	kukoma							kukōma	كُكٗومَ	kukōma
299	25	d	1	نِ	ni	ni							ni	نِ	ni
300	25	d	2	لَوَامَ	lawāma	lawama							lawāma	لَوَامَ	lawāma
301	25	d	3	هُسَلِيَ	husaliya	husaliya							husaliya	هُسَلِيَ	husaliya
341	29	a	2	مِيلَ	mı̄la	mila							mı̄la	مِيلَ	mı̄la
342	29	a	3	يَ	ya	ya							ya	يَ	ya
343	29	a	4	كِنَسَارَ	kinasāra	kinasara							kinasāra	كِنَسَارَ	kinasāra
332	28	b	1	مْفَانٗ	mfāno	mfano							mfāno	مْفَانٗ	mfāno
302	26	a	1	فَانْيَ	fānya	fanya							fānya	فَانْيَ	fānya
303	26	a	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
304	26	a	3	يَ	ya	ya							ya	يَ	ya
305	26	a	4	كَدِيرِ	kaḏı̄ri	kadiri							kaḏı̄ri	كَدِيرِ	kaḏı̄ri
317	27	b	1	نَ	na	na							na	نَ	na
318	27	b	2	زَ	za	za							za	زَ	za
319	27	b	3	مَڠٗومَ	magōma	magoma							magōma	مَڠٗومَ	magōma
306	26	b	1	سِتَاكٖ	siṯāke	sitake							siṯāke	سِتَاكٖ	siṯāke
307	26	b	2	مْنٗ	mno	mno							mno	مْنٗ	mno
308	26	b	3	فَخَارِ	faẖāri	fahari							faẖāri	فَخَارِ	faẖāri
320	27	b	4	مَچَافُ	machāfu	machafu							machāfu	مَچَافُ	machāfu
333	28	b	2	كُڤِيشَ	kuvı̄sha	kuvisha							kuvı̄sha	كُڤِيشَ	kuvı̄sha
309	26	c	1	نَكُؤُسِيَ	nakuusiya	nakuusiya							nakuusiya	نَكُؤُسِيَ	nakuusiya
334	28	b	3	پٖيتٖ	pēṯe	pete							pēṯe	پٖيتٖ	pēṯe
321	27	c	1	نَ	na	na							na	نَ	na
322	27	c	2	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
323	27	c	3	تُوتُ	ṯūṯu	tutu							ṯūṯu	تُوتُ	ṯūṯu
324	27	c	4	كْوَ	kwa	kwa							kwa	كْوَ	kwa
325	27	c	5	أُوفُ	ūfu	ufu							ūfu	أُوفُ	ūfu
335	28	c	1	سِ	si	si							si	سِ	si
326	27	d	1	دِينِ	ḏı̄ni	dini							ḏı̄ni	دِينِ	ḏı̄ni
327	27	d	2	هَايٗ	hāyo	hayo							hāyo	هَايٗ	hāyo
328	27	d	3	هُزُوِيَ	huzuwiya	huzuwiya							huzuwiya	هُزُوِيَ	huzuwiya
354	30	a	3	كُوپَ	kūpa	kupa							kūpa	كُوپَ	kūpa
355	30	a	4	مْكٗونٗ	mkōno	mkono							mkōno	مْكٗونٗ	mkōno
349	29	d	1	وَاجَ	wāja	waja							wāja	وَاجَ	wāja
336	28	c	2	يٖيتُ	yēṯu	yetu							yēṯu	يٖيتُ	yēṯu
337	28	c	3	أُسِفُؤَاتٖ	usifuāṯe	usifuate							usifuāṯe	أُسِفُؤَاتٖ	usifuāṯe
344	29	b	1	كُئِوَاتَ	kuiwāṯa	kuiwata							kuiwāṯa	كُئِوَاتَ	kuiwāṯa
345	29	b	2	نْدِؤٗ	nḏio	ndio							nḏio	نْدِؤٗ	nḏio
338	28	d	1	وٖينْڠِ	wēngi	wengi							wēngi	وٖينْڠِ	wēngi
339	28	d	2	وَنْڠَكَزَنِيَ	wangakazaniya	wangakazaniya							wangakazaniya	وَنْڠَكَزَنِيَ	wangakazaniya
346	29	b	3	بٗورَ	bōra	bora							bōra	بٗورَ	bōra
350	29	d	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
351	29	d	3	كُتٗئٖلٖيَ	kuṯoeleya	kutoeleya							kuṯoeleya	كُتٗئٖلٖيَ	kuṯoeleya
340	29	a	1	نِ	ni	ni							ni	نِ	ni
347	29	c	1	وَنْڠَاوَ	wangāwa	wangawa							wangāwa	وَنْڠَاوَ	wangāwa
348	29	c	2	وَتَكُكٖيرَ	waṯakukēra	watakukera							waṯakukēra	وَتَكُكٖيرَ	waṯakukēra
360	30	c	3	نْدُويٗ	nḏūyo	nduyo							nḏūyo	نْدُويٗ	nḏūyo
361	30	c	4	مْنٗ	mno	mno							mno	مْنٗ	mno
363	30	d	2	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
352	30	a	1	نَ	na	na							na	نَ	na
353	30	a	2	كْوٖينْدَ	kwēnḏa	kwenda							kwēnḏa	كْوٖينْدَ	kwēnḏa
364	30	d	3	كُويَ	kūya	kuya							kūya	كُويَ	kūya
356	30	b	1	أُسِكِيرِ	usikı̄ri	usikiri							usikı̄ri	أُسِكِيرِ	usikı̄ri
357	30	b	2	تَنْڠَمَانٗ	ṯangamāno	tangamano							ṯangamāno	تَنْڠَمَانٗ	ṯangamāno
358	30	c	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
359	30	c	2	أَالٗ	ālo	alo							ālo	أَالٗ	ālo
366	31	a	2	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
362	30	d	1	سِمُؤَاتٖ	simuāṯe	simuate							simuāṯe	سِمُؤَاتٖ	simuāṯe
367	31	a	3	سِئَسِيسِ	siası̄si	siasisi							siası̄si	سِئَسِيسِ	siası̄si
369	31	b	2	مْسِينْڠِ	msı̄ngi	msingi							msı̄ngi	مْسِينْڠِ	msı̄ngi
365	31	a	1	نْيُومْبَ	nyūmba	nyumba							nyūmba	نْيُومْبَ	nyūmba
371	31	b	4	مَأَسِ	maasi	maasi							maasi	مَأَسِ	maasi
1325	112	d	2	هُتٗڤُمِلِيَ	huṯovumiliya	hutovumiliya							huṯovumiliya	هُتٗڤُمِلِيَ	huṯovumiliya
368	31	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
372	31	c	1	تَئِڤُتِيَ	ṯaivuṯiya	taivutiya							ṯaivuṯiya	تَئِڤُتِيَ	ṯaivuṯiya
373	31	c	2	نُهُوسِ	nuhūsi	nuhusi							nuhūsi	نُهُوسِ	nuhūsi
402	34	b	1	كِتُميِئٖ	kiṯumyie	kitumyie							kiṯumyie	كِتُميِئٖ	kiṯumyie
403	34	b	2	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
374	31	d	1	نَ	na	na							na	نَ	na
375	31	d	2	أُكٗرٗوفِ	ukorōfi	ukorofi							ukorōfi	أُكٗرٗوفِ	ukorōfi
376	31	d	3	كُنْڠِيَ	kungiya	kungiya							kungiya	كُنْڠِيَ	kungiya
404	34	b	3	بَاسِ	bāsi	basi							bāsi	بَاسِ	bāsi
377	32	a	1	نَ	na	na							na	نَ	na
378	32	a	2	مَأَسِ	maasi	maasi							maasi	مَأَسِ	maasi
379	32	a	3	نِنٖنَايٗ	ninenāyo	ninenayo							ninenāyo	نِنٖنَايٗ	ninenāyo
449	38	b	1	أُكَمْتِيَ	ukamṯiya	ukamtiya							ukamṯiya	أُكَمْتِيَ	ukamṯiya
450	38	b	2	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
380	32	b	1	نِ	ni	ni							ni	نِ	ni
381	32	b	2	كُولَ	kūla	kula							kūla	كُولَ	kūla
382	32	b	3	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
383	32	b	4	أَمْبَايٗ	ambāyo	ambayo							ambāyo	أَمْبَايٗ	ambāyo
405	34	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
406	34	c	2	مَنْڠِنٖيٗ	mangineyo	mangineyo							mangineyo	مَنْڠِنٖيٗ	mangineyo
384	32	c	1	مٗولَ	mōla	mola							mōla	مٗولَ	mōla
385	32	c	2	أَيَتُكِئَايٗ	ayaṯukiāyo	ayatukiayo							ayaṯukiāyo	أَيَتُكِئَايٗ	ayaṯukiāyo
462	39	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
407	34	c	3	كُكِيسِ	kukı̄si	kukisi							kukı̄si	كُكِيسِ	kukı̄si
386	32	d	1	نَ	na	na							na	نَ	na
387	32	d	2	كُولَ	kūla	kula							kūla	كُولَ	kūla
388	32	d	3	أَلٗزِوِيَ	aloziwiya	aloziwiya							aloziwiya	أَلٗزِوِيَ	aloziwiya
435	36	d	1	أَنْدَمَنَانِ	anḏamanāni	andamanani							anḏamanāni	أَنْدَمَنَانِ	anḏamanāni
423	35	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
389	33	a	1	مٗويَ	mōya	moya							mōya	مٗويَ	mōya
390	33	a	2	مٗويَ	mōya	moya							mōya	مٗويَ	mōya
391	33	a	3	سِتٗوٖيزَ	siṯowēza	sitoweza							siṯowēza	سِتٗوٖيزَ	siṯowēza
424	35	d	2	فَخَارِ	faẖāri	fahari							faẖāri	فَخَارِ	faẖāri
408	34	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
392	33	b	1	كُتٗنْدٗوَ	kuṯonḏowa	kutondowa							kuṯonḏowa	كُتٗنْدٗوَ	kuṯonḏowa
393	33	b	2	كُكْوٖلٖيزَ	kukwelēza	kukweleza							kukwelēza	كُكْوٖلٖيزَ	kukwelēza
409	34	d	2	مِزَانِ	mizāni	mizani							mizāni	مِزَانِ	mizāni
410	34	d	3	كُتُمِيَ	kuṯumiya	kutumiya							kuṯumiya	كُتُمِيَ	kuṯumiya
394	33	c	1	نِمٖكُوپَ	nimekūpa	nimekupa							nimekūpa	نِمٖكُوپَ	nimekūpa
481	40	d	2	يِيڤُ	ı̄ı̄vu	yivu							ı̄ı̄vu	يِيڤُ	ı̄ı̄vu
395	33	c	2	مُؤَنْڠَازَ	muangāza	muangaza							muangāza	مُؤَنْڠَازَ	muangāza
396	33	d	1	وَ	wa	wa							wa	وَ	wa
397	33	d	2	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
398	33	d	3	كُفُؤَتِيَ	kufuaṯiya	kufuatiya							kufuaṯiya	كُفُؤَتِيَ	kufuaṯiya
425	35	d	3	كُزٖنْڠٖيَ	kuzengeya	kuzengeya							kuzengeya	كُزٖنْڠٖيَ	kuzengeya
399	34	a	1	نِمٖكُوپَ	nimekūpa	nimekupa							nimekūpa	نِمٖكُوپَ	nimekūpa
400	34	a	2	نِ	ni	ni							ni	نِ	ni
401	34	a	3	كِيَاسِ	kiyāsi	kiyasi							kiyāsi	كِيَاسِ	kiyāsi
411	35	a	1	نْيُومْبَ	nyūmba	nyumba							nyūmba	نْيُومْبَ	nyūmba
412	35	a	2	نْجٖيمَ	njēma	njema							njēma	نْجٖيمَ	njēma
413	35	a	3	نِ	ni	ni							ni	نِ	ni
414	35	a	4	مْسِنْجِ	msinji	msinji							msinji	مْسِنْجِ	msinji
436	36	d	2	پَمٗويَ	pamōya	pamoya							pamōya	پَمٗويَ	pamōya
415	35	b	1	تَامُ	ṯāmu	tamu							ṯāmu	تَامُ	ṯāmu
416	35	b	2	يَ	ya	ya							ya	يَ	ya
417	35	b	3	چَاءِ	chāi	chai							chāi	چَاءِ	chāi
418	35	b	4	سِ	si	si							si	سِ	si
419	35	b	5	رَنْجِ	ranji	ranji							ranji	رَنْجِ	ranji
426	36	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
427	36	a	2	نِ	ni	ni							ni	نِ	ni
443	37	c	1	أَجِنَابُ	ajinābu	ajinabu							ajinābu	أَجِنَابُ	ajinābu
420	35	c	1	وٖينْڠِ	wēngi	wengi							wēngi	وٖينْڠِ	wēngi
421	35	c	2	مٖتِلِيوَ	meṯilı̄wa	metiliwa							meṯilı̄wa	مٖتِلِيوَ	meṯilı̄wa
428	36	a	3	لَزِيمَ	lazı̄ma	lazima							lazı̄ma	لَزِيمَ	lazı̄ma
429	36	a	4	سَانَ	sāna	sana							sāna	سَانَ	sāna
444	37	c	2	سِمُؤَاتٖ	simuāṯe	simuate							simuāṯe	سِمُؤَاتٖ	simuāṯe
437	37	a	1	أَوْ	aw	au							aw	أَوْ	aw
430	36	b	1	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
431	36	b	2	لَ	la	la							la	لَ	la
432	36	b	3	كُؤَنْدَمَانَ	kuanḏamāna	kuandamana							kuanḏamāna	كُؤَنْدَمَانَ	kuanḏamāna
2126	180	d	1	مَارَ	māra	mara							māra	مَارَ	māra
438	37	a	2	مْوٖنْڠِينٖ	mwengı̄ne	mwengine							mwengı̄ne	مْوٖنْڠِينٖ	mwengı̄ne
439	37	a	3	يٗيٗوتٖ	yoyōṯe	yoyote							yoyōṯe	يٗيٗوتٖ	yoyōṯe
433	36	c	1	شٖمٖڠِيٗ	shemegiyo	shemegiyo							shemegiyo	شٖمٖڠِيٗ	shemegiyo
434	36	c	2	مْڤُلَانَ	mvulāna	mvulana							mvulāna	مْڤُلَانَ	mvulāna
447	38	a	1	رَفِيكِ	rafı̄ki	rafiki							rafı̄ki	رَفِيكِ	rafı̄ki
448	38	a	2	سِمُؤَامْنِ	simuāmni	simuamni							simuāmni	سِمُؤَامْنِ	simuāmni
440	37	b	1	مَهَرِيمُ	maharı̄mu	maharimu							maharı̄mu	مَهَرِيمُ	maharı̄mu
441	37	b	2	نَ	na	na							na	نَ	na
442	37	b	3	فُؤَاتٖ	fuāṯe	fuate							fuāṯe	فُؤَاتٖ	fuāṯe
445	37	d	1	مْكٖؤٗ	mkeo	mkeo							mkeo	مْكٖؤٗ	mkeo
446	37	d	2	كُمْوَنْڠَلِيَ	kumwangaliya	kumwangaliya							kumwangaliya	كُمْوَنْڠَلِيَ	kumwangaliya
453	38	c	3	فُلَانِ	fulāni	fulani							fulāni	فُلَانِ	fulāni
455	38	d	2	إِكِتٗكٖيَ	ikiṯokeya	ikitokeya							ikiṯokeya	إِكِتٗكٖيَ	ikiṯokeya
451	38	c	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
452	38	c	2	ذَرُورَ	dharūra	dharura							dharūra	ذَرُورَ	dharūra
457	39	a	2	أُسِملِيچٖ	usimlı̄che	usimliche							usimlı̄che	أُسِملِيچٖ	usimlı̄che
454	38	d	1	سِكُويٖ	sikūye	sikuye							sikūye	سِكُويٖ	sikūye
459	39	b	2	زَئِيدِ	zaı̄ḏi	zaidi							zaı̄ḏi	زَئِيدِ	zaı̄ḏi
456	39	a	1	رَفِيكِ	rafı̄ki	rafiki							rafı̄ki	رَفِيكِ	rafı̄ki
460	39	b	3	هُويٗ	hūyo	huyo							hūyo	هُويٗ	hūyo
461	39	b	4	مْچٖ	mche	mche							mche	مْچٖ	mche
463	39	c	2	وَاءٗ	wāo	wao							wāo	وَاءٗ	wāo
458	39	b	1	نِ	ni	ni							ni	نِ	ni
514	43	c	2	نِ	ni	ni							ni	نِ	ni
515	43	c	3	كُوَوٖيكَ	kuwawēka	kuwaweka							kuwawēka	كُوَوٖيكَ	kuwawēka
464	39	c	3	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
465	39	c	4	يَ	ya	ya							ya	يَ	ya
466	39	c	5	چٖيچٖ	chēche	cheche							chēche	چٖيچٖ	chēche
494	42	a	1	هِيٗ	hiyo	hiyo							hiyo	هِيٗ	hiyo
495	42	a	2	كْوٖيتُ	kwēṯu	kwetu							kwēṯu	كْوٖيتُ	kwēṯu
467	39	d	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
468	39	d	2	أُسٗلِذَنِيَ	usolidhaniya	usolidhaniya							usolidhaniya	أُسٗلِذَنِيَ	usolidhaniya
496	42	a	3	سِيٗ	siyo	siyo							siyo	سِيٗ	siyo
497	42	a	4	مِيلَ	mı̄la	mila							mı̄la	مِيلَ	mı̄la
469	40	a	1	زِزِينِ	zizı̄ni	zizini							zizı̄ni	زِزِينِ	zizı̄ni
470	40	a	2	كُتِيَ	kuṯiya	kutiya							kuṯiya	كُتِيَ	kuṯiya
471	40	a	3	سِيمْبَ	sı̄mba	simba							sı̄mba	سِيمْبَ	sı̄mba
472	40	b	1	نِ	ni	ni							ni	نِ	ni
473	40	b	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
474	40	b	3	مٗوتٗ	mōṯo	moto							mōṯo	مٗوتٗ	mōṯo
475	40	b	4	نَ	na	na							na	نَ	na
476	40	b	5	پَامْبَ	pāmba	pamba							pāmba	پَامْبَ	pāmba
498	42	b	1	كُنْڠِيَ	kungiya	kungiya							kungiya	كُنْڠِيَ	kungiya
499	42	b	2	كُولَ	kūla	kula							kūla	كُولَ	kūla
500	42	b	3	مَهَالَ	mahāla	mahala							mahāla	مَهَالَ	mahāla
477	40	c	1	مَارَ	māra	mara							māra	مَارَ	māra
478	40	c	2	مٗويَ	mōya	moya							mōya	مٗويَ	mōya
479	40	c	3	هُزِسُومْبَ	huzisūmba	huzisumba							huzisūmba	هُزِسُومْبَ	huzisūmba
480	40	d	1	نَ	na	na							na	نَ	na
482	40	d	3	لِكَسَلِيَ	likasaliya	likasaliya							likasaliya	لِكَسَلِيَ	likasaliya
543	45	d	4	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
526	44	c	1	هُنْڠِيَ	hungiya	hungiya							hungiya	هُنْڠِيَ	hungiya
483	41	a	1	رَفِيكِ	rafı̄ki	rafiki							rafı̄ki	رَفِيكِ	rafı̄ki
484	41	a	2	كِنْڠِيَ	kingiya	kingiya							kingiya	كِنْڠِيَ	kingiya
485	41	a	3	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
527	44	c	2	نَ	na	na							na	نَ	na
516	43	d	1	نَ	na	na							na	نَ	na
486	41	b	1	سِكُويٖ	sikūye	sikuye							sikūye	سِكُويٖ	sikūye
487	41	b	2	أُكَتَمَانِ	ukaṯamāni	ukatamani							ukaṯamāni	أُكَتَمَانِ	ukaṯamāni
501	42	c	1	پَاسِ	pāsi	pasi							pāsi	پَاسِ	pāsi
502	42	c	2	هٗودِ	hōḏi	hodi							hōḏi	هٗودِ	hōḏi
503	42	c	3	نَ	na	na							na	نَ	na
504	42	c	4	سُمِيلَ	sumı̄la	sumila							sumı̄la	سُمِيلَ	sumı̄la
488	41	c	1	سَامْبٖ	sāmbe	sambe							sāmbe	سَامْبٖ	sāmbe
489	41	c	2	أٗونَ	ōna	ona							ōna	أٗونَ	ōna
490	41	c	3	نِ	ni	ni							ni	نِ	ni
491	41	c	4	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
492	41	d	1	هٖئٖ	hee	hee							hee	هٖئٖ	hee
493	41	d	2	أُتَيِتٗنْڠٖيَ	uṯayiṯongeya	utayitongeya							uṯayiṯongeya	أُتَيِتٗنْڠٖيَ	uṯayiṯongeya
517	43	d	2	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
518	43	d	3	كُتٗتُنْڠِيَ	kuṯoṯungiya	kutotungiya							kuṯoṯungiya	كُتٗتُنْڠِيَ	kuṯoṯungiya
505	42	d	1	سِيٗ	siyo	siyo							siyo	سِيٗ	siyo
506	42	d	2	يٖيتُ	yēṯu	yetu							yēṯu	يٖيتُ	yēṯu
507	42	d	3	مَزٗوٖيَ	mazoweya	mazoweya							mazoweya	مَزٗوٖيَ	mazoweya
508	43	a	1	يَلِنَكَازِ	yalinakāzi	yalinakazi							yalinakāzi	يَلِنَكَازِ	yalinakāzi
509	43	a	2	مَدَاكَ	maḏāka	madaka							maḏāka	مَدَاكَ	maḏāka
528	44	c	3	هَمُؤٗونِ	hamuōni	hamuoni							hamuōni	هَمُؤٗونِ	hamuōni
510	43	b	1	نِ	ni	ni							ni	نِ	ni
511	43	b	2	وَڠٖينِ	wagēni	wageni							wagēni	وَڠٖينِ	wagēni
512	43	b	3	كُوَدَاكَ	kuwaḏāka	kuwadaka							kuwaḏāka	كُوَدَاكَ	kuwaḏāka
535	45	b	1	كَشُكِيٖ	kashukiye	kashukiye							kashukiye	كَشُكِيٖ	kashukiye
536	45	b	2	هٗتٖلِينِ	hoṯelı̄ni	hotelini							hoṯelı̄ni	هٗتٖلِينِ	hoṯelı̄ni
519	44	a	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
520	44	a	2	أَاوٖ	āwe	awe							āwe	أَاوٖ	āwe
521	44	a	3	نِ	ni	ni							ni	نِ	ni
522	44	a	4	مْڠٖينِ	mgēni	mgeni							mgēni	مْڠٖينِ	mgēni
529	44	d	1	أَلِيٗ	aliyo	aliyo							aliyo	أَلِيٗ	aliyo
530	44	d	2	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
531	44	d	3	ممٗويَ	mmōya	mmoya							mmōya	ممٗويَ	mmōya
523	44	b	1	وَ	wa	wa							wa	وَ	wa
524	44	b	2	كُشُكِيَ	kushukiya	kushukiya							kushukiya	كُشُكِيَ	kushukiya
525	44	b	3	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
545	46	a	2	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
532	45	a	1	نَ	na	na							na	نَ	na
533	45	a	2	أُچٖينْدَ	uchēnḏa	uchenda							uchēnḏa	أُچٖينْدَ	uchēnḏa
534	45	a	3	سَفَرِينِ	safarı̄ni	safarini							safarı̄ni	سَفَرِينِ	safarı̄ni
540	45	d	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
537	45	c	1	سِپٖينْدٖ	sipēnḏe	sipende							sipēnḏe	سِپٖينْدٖ	sipēnḏe
538	45	c	2	سَانَ	sāna	sana							sāna	سَانَ	sāna
539	45	c	3	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
541	45	d	2	نِ	ni	ni							ni	نِ	ni
542	45	d	3	كُپِيتَ	kupı̄ṯa	kupita							kupı̄ṯa	كُپِيتَ	kupı̄ṯa
547	46	b	2	تٗوتٗ	ṯōṯo	toto							ṯōṯo	تٗوتٗ	ṯōṯo
544	46	a	1	أُكِمْوٖنْدٖيَ	ukimwenḏeya	ukimwendeya							ukimwenḏeya	أُكِمْوٖنْدٖيَ	ukimwenḏeya
548	46	b	3	مَسِكَانِ	masikāni	masikani							masikāni	مَسِكَانِ	masikāni
550	46	c	2	أَالٗ	ālo	alo							ālo	أَالٗ	ālo
546	46	b	1	مْوٖينْيٖ	mwēnye	mwenye							mwēnye	مْوٖينْيٖ	mwēnye
551	46	c	3	مَسِكِينِ	masikı̄ni	masikini							masikı̄ni	مَسِكِينِ	masikı̄ni
553	46	d	2	هُمْتِيَ	humṯiya	humtiya							humṯiya	هُمْتِيَ	humṯiya
549	46	c	1	أَوْ	aw	au							aw	أَوْ	aw
555	47	a	2	إِوَاپٗ	iwāpo	iwapo							iwāpo	إِوَاپٗ	iwāpo
552	46	d	1	تَأَبُونِ	ṯaabūni	taabuni							ṯaabūni	تَأَبُونِ	ṯaabūni
556	47	a	3	هُونَ	hūna	huna							hūna	هُونَ	hūna
554	47	a	1	نَ	na	na							na	نَ	na
606	51	b	2	مْنٗ	mno	mno							mno	مْنٗ	mno
607	51	b	3	دُونِ	ḏūni	duni							ḏūni	دُونِ	ḏūni
558	47	b	1	هُكُفَانْيَ	hukufānya	hukufanya							hukufānya	هُكُفَانْيَ	hukufānya
559	47	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
560	47	b	3	كَسِيدِ	kası̄ḏi	kasidi							kası̄ḏi	كَسِيدِ	kası̄ḏi
588	49	d	1	كَامَ	kāma	kama							kāma	كَامَ	kāma
589	49	d	2	كُپٗتٖيَ	kupoṯeya	kupoteya							kupoṯeya	كُپٗتٖيَ	kupoṯeya
590	49	d	3	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
561	47	c	1	سِيكُ	sı̄ku	siku							sı̄ku	سِيكُ	sı̄ku
562	47	c	2	تَاتُ	ṯāṯu	tatu							ṯāṯu	تَاتُ	ṯāṯu
563	47	c	3	أُسِزِيدِ	usizı̄ḏi	usizidi							usizı̄ḏi	أُسِزِيدِ	usizı̄ḏi
564	47	d	1	سِؤٗنْڠٖيزٖ	siongēze	siongeze							siongēze	سِؤٗنْڠٖيزٖ	siongēze
565	47	d	2	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
566	47	d	3	مٗويَ	mōya	moya							mōya	مٗويَ	mōya
617	52	b	1	زِيتُ	zı̄ṯu	zitu							zı̄ṯu	زِيتُ	zı̄ṯu
591	50	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
567	48	a	1	نَ	na	na							na	نَ	na
568	48	a	2	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
569	48	a	3	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
570	48	a	4	سِتٖينْدٖ	siṯēnḏe	sitende							siṯēnḏe	سِتٖينْدٖ	siṯēnḏe
592	50	a	2	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
593	50	a	3	مٖكْوَلِيكَ	mekwalı̄ka	mekwalika							mekwalı̄ka	مٖكْوَلِيكَ	mekwalı̄ka
571	48	b	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
572	48	b	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
573	48	b	3	يَكُشِينْدٖ	yakushı̄nḏe	yakushinde							yakushı̄nḏe	يَكُشِينْدٖ	yakushı̄nḏe
574	48	c	1	مْتٖرٖيمْكٗ	mṯerēmko	mteremko							mṯerēmko	مْتٖرٖيمْكٗ	mṯerēmko
575	48	c	2	سِپٖينْدٖ	sipēnḏe	sipende							sipēnḏe	سِپٖينْدٖ	sipēnḏe
618	52	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
619	52	b	3	كَدِيرِ	kaḏı̄ri	kadiri							kaḏı̄ri	كَدِيرِ	kaḏı̄ri
576	48	d	1	نْيٗونْڠٗ	nyōngo	nyongo							nyōngo	نْيٗونْڠٗ	nyōngo
577	48	d	2	هُكُتُمْبُكِيَ	hukuṯumbukiya	hukutumbukiya							hukuṯumbukiya	هُكُتُمْبُكِيَ	hukuṯumbukiya
608	51	c	1	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
594	50	b	1	نِ	ni	ni							ni	نِ	ni
595	50	b	2	وَجِيبُ	wajı̄bu	wajibu							wajı̄bu	وَجِيبُ	wajı̄bu
578	49	a	1	لٗجِينْڠِ	lojı̄ngi	lojingi							lojı̄ngi	لٗجِينْڠِ	lojı̄ngi
579	49	a	2	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
580	49	a	3	هَپَانَ	hapāna	hapana							hapāna	هَپَانَ	hapāna
596	50	b	3	كُئِتِيكَ	kuiṯı̄ka	kuitika							kuiṯı̄ka	كُئِتِيكَ	kuiṯı̄ka
581	49	b	1	أَوْ	aw	au							aw	أَوْ	aw
582	49	b	2	مْفُكٗونِ	mfukōni	mfukoni							mfukōni	مْفُكٗونِ	mfukōni
583	49	b	3	هُونَ	hūna	huna							hūna	هُونَ	hūna
609	51	c	2	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
610	51	c	3	وَسِتَانِ	wasiṯāni	wasitani							wasiṯāni	وَسِتَانِ	wasiṯāni
597	50	c	1	شُغُولِ	shuḡūli	shughuli							shuḡūli	شُغُولِ	shuḡūli
598	50	c	2	كِمَلِزِيكَ	kimalizı̄ka	kimalizika							kimalizı̄ka	كِمَلِزِيكَ	kimalizı̄ka
584	49	c	1	نٖينْدَ	nēnḏa	nenda							nēnḏa	نٖينْدَ	nēnḏa
585	49	c	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
586	49	c	3	هَذَارِ	hadhāri	hadhari							hadhāri	هَذَارِ	hadhāri
587	49	c	4	سَانَ	sāna	sana							sāna	سَانَ	sāna
599	50	d	1	مُسِوٖيكٖ	musiwēke	musiweke							musiwēke	مُسِوٖيكٖ	musiwēke
600	50	d	2	مَزٗوٖيَ	mazoweya	mazoweya							mazoweya	مَزٗوٖيَ	mazoweya
620	52	b	4	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
601	51	a	1	نَ	na	na							na	نَ	na
602	51	a	2	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
603	51	a	3	كْوَاكٗ	kwāko	kwako							kwāko	كْوَاكٗ	kwāko
604	51	a	4	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
611	51	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
629	53	b	1	نَ	na	na							na	نَ	na
605	51	b	1	سِئِفَانْيٖ	siifānye	siifanye							siifānye	سِئِفَانْيٖ	siifānye
612	51	d	2	مَپَامْبٗ	mapāmbo	mapambo							mapāmbo	مَپَامْبٗ	mapāmbo
613	51	d	3	كُيِتِيَ	kuyiṯiya	kuyitiya							kuyiṯiya	كُيِتِيَ	kuyiṯiya
630	53	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
631	53	b	3	زِيتُ	zı̄ṯu	zitu							zı̄ṯu	زِيتُ	zı̄ṯu
621	52	c	1	إِكِيوَ	ikı̄wa	ikiwa							ikı̄wa	إِكِيوَ	ikı̄wa
614	52	a	1	مْتِلِيٖ	mṯiliye	mtiliye							mṯiliye	مْتِلِيٖ	mṯiliye
615	52	a	2	مْكٖ	mke	mke							mke	مْكٖ	mke
616	52	a	3	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
626	53	a	1	إِيوٖ	ı̄we	iwe							ı̄we	إِيوٖ	ı̄we
627	53	a	2	مَرِدَادِ	mariḏāḏi	maridadi							mariḏāḏi	مَرِدَادِ	mariḏāḏi
628	53	a	3	نْيُومْبَ	nyūmba	nyumba							nyūmba	نْيُومْبَ	nyūmba
622	52	c	2	نَفَاسِ	nafāsi	nafasi							nafāsi	نَفَاسِ	nafāsi
623	52	c	3	إِيكٗ	ı̄ko	iko							ı̄ko	إِيكٗ	ı̄ko
624	52	d	1	سِبَانٖ	sibāne	sibane							sibāne	سِبَانٖ	sibāne
625	52	d	2	أُكَزِوِيَ	ukaziwiya	ukaziwiya							ukaziwiya	أُكَزِوِيَ	ukaziwiya
640	54	a	2	كُولَ	kūla	kula							kūla	كُولَ	kūla
633	53	c	1	فٖشٖينِ	feshēni	fesheni							feshēni	فٖشٖينِ	feshēni
634	53	c	2	أَمْبَازٗ	ambāzo	ambazo							ambāzo	أَمْبَازٗ	ambāzo
635	53	c	3	كْوَامْبَ	kwāmba	kwamba							kwāmba	كْوَامْبَ	kwāmba
632	53	b	4	كُئِپَامْبَ	kuipāmba	kuipamba							kuipāmba	كُئِپَامْبَ	kuipāmba
641	54	a	3	كِيتُ	kı̄ṯu	kitu							kı̄ṯu	كِيتُ	kı̄ṯu
643	54	b	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
636	53	d	1	كَامَ	kāma	kama							kāma	كَامَ	kāma
637	53	d	2	يٖيٖ	yeye	yeye							yeye	يٖيٖ	yeye
638	53	d	3	هُتُمِيَ	huṯumiya	hutumiya							huṯumiya	هُتُمِيَ	huṯumiya
639	54	a	1	مْتِلِيٖ	mṯiliye	mtiliye							mṯiliye	مْتِلِيٖ	mṯiliye
644	54	b	3	وٖينْدٖ	wēnḏe	wende							wēnḏe	وٖينْدٖ	wēnḏe
645	54	b	4	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
647	54	c	2	مِيمِ	mı̄mi	mimi							mı̄mi	مِيمِ	mı̄mi
642	54	b	1	أَاوٖ	āwe	awe							āwe	أَاوٖ	āwe
790	67	a	3	ڠَانِ	gāni	gani							gāni	ڠَانِ	gāni
648	54	c	3	كْوٖيتُ	kwēṯu	kwetu							kwēṯu	كْوٖيتُ	kwēṯu
646	54	c	1	سِمْوَمْبِيٖ	simwambiye	simwambiye							simwambiye	سِمْوَمْبِيٖ	simwambiye
650	54	d	2	سِكُيَزٗوٖيَ	sikuyazoweya	sikuyazoweya							sikuyazoweya	سِكُيَزٗوٖيَ	sikuyazoweya
709	60	c	2	مْتٖئٖ	mṯee	mtee							mṯee	مْتٖئٖ	mṯee
678	57	c	1	كْوٖينُ	kwēnu	kwenu							kwēnu	كْوٖينُ	kwēnu
679	57	c	2	نِ	ni	ni							ni	نِ	ni
651	55	a	1	أَكِيوَ	akı̄wa	akiwa							akı̄wa	أَكِيوَ	akı̄wa
652	55	a	2	مْبوَ	mbwa	mbwa							mbwa	مْبوَ	mbwa
653	55	a	3	مِنَزِينِ	minazı̄ni	minazini							minazı̄ni	مِنَزِينِ	minazı̄ni
680	57	c	3	كَامَ	kāma	kama							kāma	كَامَ	kāma
681	57	c	4	كِزِيزِ	kizı̄zi	kizizi							kizı̄zi	كِزِيزِ	kizı̄zi
654	55	b	1	أُكِمُئٖيتَ	ukimuēṯa	ukimueta							ukimuēṯa	أُكِمُئٖيتَ	ukimuēṯa
655	55	b	2	مُيِينِ	muyı̄ni	muyini							muyı̄ni	مُيِينِ	muyı̄ni
656	55	c	1	سِمُوَاتٖ	simuwāṯe	simuwate							simuwāṯe	سِمُوَاتٖ	simuwāṯe
657	55	c	2	كُتَمَانِ	kuṯamāni	kutamani							kuṯamāni	كُتَمَانِ	kuṯamāni
710	60	c	3	لَزِيمَ	lazı̄ma	lazima							lazı̄ma	لَزِيمَ	lazı̄ma
698	59	c	1	مَأَدَامُ	maaḏāmu	maadamu							maaḏāmu	مَأَدَامُ	maaḏāmu
682	57	d	1	هُكُؤٗونَ	hukuōna	hukuona							hukuōna	هُكُؤٗونَ	hukuōna
658	55	d	1	زَ	za	za							za	زَ	za
659	55	d	2	وٖينْدٖ	wēnḏe	wende							wēnḏe	وٖينْدٖ	wēnḏe
660	55	d	3	كِشُهُدِيَ	kishuhuḏiya	kishuhudiya							kishuhuḏiya	كِشُهُدِيَ	kishuhuḏiya
683	57	d	2	مَزُلِيَ	mazuliya	mazuliya							mazuliya	مَزُلِيَ	mazuliya
661	56	a	1	أُكِيوَ	ukı̄wa	ukiwa							ukı̄wa	أُكِيوَ	ukı̄wa
662	56	a	2	أُمٖئَمُوَ	umeamuwa	umeamuwa							umeamuwa	أُمٖئَمُوَ	umeamuwa
663	56	b	1	مُيِينِ	muyı̄ni	muyini							muyı̄ni	مُيِينِ	muyı̄ni
664	56	b	2	كُمْتُكُوَ	kumṯukuwa	kumtukuwa							kumṯukuwa	كُمْتُكُوَ	kumṯukuwa
699	59	c	2	مْفُكٗونِ	mfukōni	mfukoni							mfukōni	مْفُكٗونِ	mfukōni
665	56	c	1	مْفَنْيِئٖ	mfanyie	mfanyie							mfanyie	مْفَنْيِئٖ	mfanyie
666	56	c	2	سَوَسَاوَ	sawasāwa	sawasawa							sawasāwa	سَوَسَاوَ	sawasāwa
684	58	a	1	نَ	na	na							na	نَ	na
685	58	a	2	چَكُولَ	chakūla	chakula							chakūla	چَكُولَ	chakūla
745	63	c	2	يَ	ya	ya							ya	يَ	ya
686	58	a	3	كَذَلِيكَ	kadhalı̄ka	kadhalika							kadhalı̄ka	كَذَلِيكَ	kadhalı̄ka
667	56	d	1	سَامْبٖ	sāmbe	sambe							sāmbe	سَامْبٖ	sāmbe
668	56	d	2	سِ	si	si							si	سِ	si
669	56	d	3	يَ	ya	ya							ya	يَ	ya
670	56	d	4	كْوٖينُ	kwēnu	kwenu							kwēnu	كْوٖينُ	kwēnu
671	56	d	5	هَايَ	hāya	haya							hāya	هَايَ	hāya
672	57	a	1	سِمْوَمْبِيٖ	simwambiye	simwambiye							simwambiye	سِمْوَمْبِيٖ	simwambiye
673	57	a	2	زِيتُ	zı̄ṯu	zitu							zı̄ṯu	زِيتُ	zı̄ṯu
674	57	a	3	هِيزِ	hı̄zi	hizi							hı̄zi	هِيزِ	hı̄zi
687	58	b	1	مْپٖ	mpe	mpe							mpe	مْپٖ	mpe
688	58	b	2	أَنَچٗكِتَاكَ	anachokiṯāka	anachokitaka							anachokiṯāka	أَنَچٗكِتَاكَ	anachokiṯāka
675	57	b	1	كْوٖينُ	kwēnu	kwenu							kwēnu	كْوٖينُ	kwēnu
676	57	b	2	كُپَاتَ	kupāṯa	kupata							kupāṯa	كُپَاتَ	kupāṯa
677	57	b	3	هُوٖيزِ	huwēzi	huwezi							huwēzi	هُوٖيزِ	huwēzi
700	59	d	1	أَكِيبَ	akı̄ba	akiba							akı̄ba	أَكِيبَ	akı̄ba
701	59	d	2	إِمٖسَلِيَ	imesaliya	imesaliya							imesaliya	إِمٖسَلِيَ	imesaliya
689	58	c	1	أَمْبَاچٗ	ambācho	ambacho							ambācho	أَمْبَاچٗ	ambācho
690	58	c	2	تَفُرَهِيكَ	ṯafurahı̄ka	tafurahika							ṯafurahı̄ka	تَفُرَهِيكَ	ṯafurahı̄ka
728	62	b	2	سِكِيرِ	sikı̄ri	sikiri							sikı̄ri	سِكِيرِ	sikı̄ri
691	58	d	1	مْوٖنْيٖيوٖ	mwenyēwe	mwenyewe							mwenyēwe	مْوٖنْيٖيوٖ	mwenyēwe
692	58	d	2	مٖكِزٗوٖيَ	mekizoweya	mekizoweya							mekizoweya	مٖكِزٗوٖيَ	mekizoweya
717	61	b	1	أَپٖنْدَاچٗ	apenḏācho	apendacho							apenḏācho	أَپٖنْدَاچٗ	apenḏācho
702	60	a	1	سِيكُ	sı̄ku	siku							sı̄ku	سِيكُ	sı̄ku
693	59	a	1	أَكِپٖينْدَ	akipēnḏa	akipenda							akipēnḏa	أَكِپٖينْدَ	akipēnḏa
694	59	a	2	بِرِيَانِ	biriyāni	biriyani							biriyāni	بِرِيَانِ	biriyāni
703	60	a	2	أَكِتَاكَ	akiṯāka	akitaka							akiṯāka	أَكِتَاكَ	akiṯāka
704	60	a	3	سِيمَ	sı̄ma	sima							sı̄ma	سِيمَ	sı̄ma
695	59	b	1	مْپٖ	mpe	mpe							mpe	مْپٖ	mpe
696	59	b	2	مْوَانَ	mwāna	mwana							mwāna	مْوَانَ	mwāna
697	59	b	3	سِمْخِينِ	simẖı̄ni	simhini							simẖı̄ni	سِمْخِينِ	simẖı̄ni
718	61	b	2	أَخِتَارِ	aẖiṯāri	ahitari							aẖiṯāri	أَخِتَارِ	aẖiṯāri
711	60	d	1	مِيمِ	mı̄mi	mimi							mı̄mi	مِيمِ	mı̄mi
712	60	d	2	سِتَاكِ	siṯāki	sitaki							siṯāki	سِتَاكِ	siṯāki
705	60	b	1	سِمْوَمْبِيٖ	simwambiye	simwambiye							simwambiye	سِمْوَمْبِيٖ	simwambiye
706	60	b	2	إٖيوٖ	ēwe	ewe							ēwe	إٖيوٖ	ēwe
707	60	b	3	مَامَ	māma	mama							māma	مَامَ	māma
713	60	d	3	أُذِيَ	udhiya	udhiya							udhiya	أُذِيَ	udhiya
708	60	c	1	كُولَ	kūla	kula							kūla	كُولَ	kūla
729	62	b	3	فَهَامُ	fahāmu	fahamu							fahāmu	فَهَامُ	fahāmu
722	61	d	1	مَشَرُوتِ	masharūṯi	masharuti							masharūṯi	مَشَرُوتِ	masharūṯi
714	61	a	1	مُؤَتِيَ	muaṯiya	muatiya							muaṯiya	مُؤَتِيَ	muaṯiya
715	61	a	2	نَ	na	na							na	نَ	na
883	75	c	1	هِينِ	hı̄ni	hini							hı̄ni	هِينِ	hı̄ni
716	61	a	3	خِيَارِ	ẖiyāri	hiyari							ẖiyāri	خِيَارِ	ẖiyāri
723	61	d	2	كُمْوٖكٖيَ	kumwekeya	kumwekeya							kumwekeya	كُمْوٖكٖيَ	kumwekeya
719	61	c	1	سِمْكَازٖ	simkāze	simkaze							simkāze	سِمْكَازٖ	simkāze
720	61	c	2	سِ	si	si							si	سِ	si
721	61	c	3	أُزُورِ	uzūri	uzuri							uzūri	أُزُورِ	uzūri
731	62	c	2	نَ	na	na							na	نَ	na
724	62	a	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
725	62	a	2	كِلِيچٗ	kilı̄cho	kilicho							kilı̄cho	كِلِيچٗ	kilı̄cho
726	62	a	3	هَرَامُ	harāmu	haramu							harāmu	هَرَامُ	harāmu
727	62	b	1	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
732	62	c	3	كُولَ	kūla	kula							kūla	كُولَ	kūla
733	62	c	4	سُومُ	sūmu	sumu							sūmu	سُومُ	sūmu
735	62	d	2	إِمٖزِوِيَ	imeziwiya	imeziwiya							imeziwiya	إِمٖزِوِيَ	imeziwiya
730	62	c	1	هَرَامُ	harāmu	haramu							harāmu	هَرَامُ	harāmu
737	63	a	2	كُهُوسُ	kuhūsu	kuhusu							kuhūsu	كُهُوسُ	kuhūsu
734	62	d	1	شَرِيَ	shariya	shariya							shariya	شَرِيَ	shariya
738	63	a	3	مَڤَازِ	mavāzi	mavazi							mavāzi	مَڤَازِ	mavāzi
736	63	a	1	أَامَ	āma	ama							āma	أَامَ	āma
770	65	c	1	لَاكٗ	lāko	lako							lāko	لَاكٗ	lāko
771	65	c	2	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
739	63	b	1	يَ	ya	ya							ya	يَ	ya
740	63	b	2	كَايٖ	kāye	kaye							kāye	كَايٖ	kāye
741	63	b	3	نَ	na	na							na	نَ	na
742	63	b	4	سِيكُ	sı̄ku	siku							sı̄ku	سِيكُ	sı̄ku
743	63	b	5	هِيزِ	hı̄zi	hizi							hı̄zi	هِيزِ	hı̄zi
772	65	c	3	نِ	ni	ni							ni	نِ	ni
773	65	c	4	فُلُوسِ	fulūsi	fulusi							fulūsi	فُلُوسِ	fulūsi
744	63	c	1	سِكِيرِ	sikı̄ri	sikiri							sikı̄ri	سِكِيرِ	sikı̄ri
746	63	c	3	كْوٖينْدَ	kwēnḏa	kwenda							kwēnḏa	كْوٖينْدَ	kwēnḏa
747	63	c	4	وَازِ	wāzi	wazi							wāzi	وَازِ	wāzi
791	67	b	1	كِكُؤُلِيزَ	kikuulı̄za	kikuuliza							kikuulı̄za	كِكُؤُلِيزَ	kikuulı̄za
792	67	b	2	مْوٖنْدَانِ	mwenḏāni	mwendani							mwenḏāni	مْوٖنْدَانِ	mwenḏāni
748	63	d	1	مِشٗونٗ	mishōno	mishono							mishōno	مِشٗونٗ	mishōno
749	63	d	2	يَاسٗ	yāso	yaso							yāso	يَاسٗ	yāso
750	63	d	3	نَ	na	na							na	نَ	na
751	63	d	4	هَايَ	hāya	haya							hāya	هَايَ	hāya
774	65	d	1	تٗوَ	ṯowa	towa							ṯowa	تٗوَ	ṯowa
775	65	d	2	زَ	za	za							za	زَ	za
776	65	d	3	كُنُنُلِيَ	kununuliya	kununuliya							kununuliya	كُنُنُلِيَ	kununuliya
752	64	a	1	كْوٖيتُ	kwēṯu	kwetu							kwēṯu	كْوٖيتُ	kwēṯu
753	64	a	2	سِيسِ	sı̄si	sisi							sı̄si	سِيسِ	sı̄si
754	64	a	3	إِسِلَامُ	isilāmu	isilamu							isilāmu	إِسِلَامُ	isilāmu
755	64	b	1	مَڤَازِ	mavāzi	mavazi							mavāzi	مَڤَازِ	mavāzi
756	64	b	2	كِيتُ	kı̄ṯu	kitu							kı̄ṯu	كِيتُ	kı̄ṯu
757	64	b	3	مُهِيمُ	muhı̄mu	muhimu							muhı̄mu	مُهِيمُ	muhı̄mu
758	64	c	1	نَ	na	na							na	نَ	na
759	64	c	2	سِيسِ	sı̄si	sisi							sı̄si	سِيسِ	sı̄si
760	64	c	3	يَتُلَزِيمُ	yaṯulazı̄mu	yatulazimu							yaṯulazı̄mu	يَتُلَزِيمُ	yaṯulazı̄mu
777	66	a	1	مْپٖ	mpe	mpe							mpe	مْپٖ	mpe
778	66	a	2	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
779	66	a	3	مَشَرُوتِ	masharūṯi	masharuti							masharūṯi	مَشَرُوتِ	masharūṯi
761	64	d	1	يَ	ya	ya							ya	يَ	ya
762	64	d	2	زِپِيمٗ	zipı̄mo	zipimo							zipı̄mo	زِپِيمٗ	zipı̄mo
763	64	d	3	كْوَنْڠَلِيَ	kwangaliya	kwangaliya							kwangaliya	كْوَنْڠَلِيَ	kwangaliya
764	65	a	1	مْپٖ	mpe	mpe							mpe	مْپٖ	mpe
765	65	a	2	مْوٖنْيٖيوٖ	mwenyēwe	mwenyewe							mwenyēwe	مْوٖنْيٖيوٖ	mwenyēwe
766	65	a	3	نَفَاسِ	nafāsi	nafasi							nafāsi	نَفَاسِ	nafāsi
767	65	b	1	يَ	ya	ya							ya	يَ	ya
768	65	b	2	كُتٖؤُوَ	kuṯeuwa	kuteuwa							kuṯeuwa	كُتٖؤُوَ	kuṯeuwa
769	65	b	3	لِبَاسِ	libāsi	libasi							libāsi	لِبَاسِ	libāsi
821	70	a	2	أُتَكَچٗپٖينْدَ	uṯakachopēnḏa	utakachopenda							uṯakachopēnḏa	أُتَكَچٗپٖينْدَ	uṯakachopēnḏa
809	69	a	1	أَامَ	āma	ama							āma	أَامَ	āma
793	67	c	1	أَوْ	aw	au							aw	أَوْ	aw
780	66	b	1	زَ	za	za							za	زَ	za
781	66	b	2	مْشٗونٗ	mshōno	mshono							mshōno	مْشٗونٗ	mshōno
782	66	b	3	كُذِبِيتِ	kudhibı̄ṯi	kudhibiti							kudhibı̄ṯi	كُذِبِيتِ	kudhibı̄ṯi
794	67	c	2	نِ	ni	ni							ni	نِ	ni
795	67	c	3	إِيپِ	ı̄pi	ipi							ı̄pi	إِيپِ	ı̄pi
783	66	c	1	أَكِخَلِيفُ	akiẖalı̄fu	akihalifu							akiẖalı̄fu	أَكِخَلِيفُ	akiẖalı̄fu
784	66	c	2	مٖهِيتِ	mehı̄ṯi	mehiti							mehı̄ṯi	مٖهِيتِ	mehı̄ṯi
796	67	c	4	لَؤُونِ	laūni	launi							laūni	لَؤُونِ	laūni
785	66	d	1	نِ	ni	ni							ni	نِ	ni
786	66	d	2	هَاكِ	hāki	haki							hāki	هَاكِ	hāki
787	66	d	3	كُمزِوِيَ	kumziwiya	kumziwiya							kumziwiya	كُمزِوِيَ	kumziwiya
810	69	a	2	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
804	68	c	1	رَانْڠِ	rāngi	rangi							rāngi	رَانْڠِ	rāngi
797	67	d	1	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
788	67	a	1	أَامَ	āma	ama							āma	أَامَ	āma
789	67	a	2	كِتَمْبَاءَ	kiṯambāa	kitambaa							kiṯambāa	كِتَمْبَاءَ	kiṯambāa
798	67	d	2	وَئِفُرَهِيَ	waifurahiya	waifurahiya							waifurahiya	وَئِفُرَهِيَ	waifurahiya
805	68	c	2	هِينِ	hı̄ni	hini							hı̄ni	هِينِ	hı̄ni
806	68	c	3	نَئِٗونَ	naiōna	naiona							naiōna	نَئِٗونَ	naiōna
799	68	a	1	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
800	68	a	2	مَكٗوسَ	makōsa	makosa							makōsa	مَكٗوسَ	makōsa
801	68	a	3	هَپَانَ	hapāna	hapana							hapāna	هَپَانَ	hapāna
802	68	b	1	كِكُؤُلِيزَ	kikuulı̄za	kikuuliza							kikuulı̄za	كِكُؤُلِيزَ	kikuulı̄za
812	69	a	4	تَمَاشَ	ṯamāsha	tamasha							ṯamāsha	تَمَاشَ	ṯamāsha
807	68	d	1	مَتٗونِ	maṯōni	matoni							maṯōni	مَتٗونِ	maṯōni
808	68	d	2	إِمٖنِنْڠِيَ	imeningiya	imeningiya							imeningiya	إِمٖنِنْڠِيَ	imeningiya
823	70	b	2	نْيٗونْدَ	nyōnḏa	nyonda							nyōnḏa	نْيٗونْدَ	nyōnḏa
818	69	d	1	مَؤٗنِيٖ	maoniye	maoniye							maoniye	مَؤٗنِيٖ	maoniye
815	69	c	1	سِ	si	si							si	سِ	si
816	69	c	2	هَاجَ	hāja	haja							hāja	هَاجَ	hāja
817	69	c	3	كُمُؤٗنٖيشَ	kumuonēsha	kumuonesha							kumuonēsha	كُمُؤٗنٖيشَ	kumuonēsha
813	69	b	1	وَتَاكَ	waṯāka	wataka							waṯāka	وَتَاكَ	waṯāka
814	69	b	2	مْفُرَهِيشَ	mfurahı̄sha	mfurahisha							mfurahı̄sha	مْفُرَهِيشَ	mfurahı̄sha
819	69	d	2	كْوَنْڠَلِيَ	kwangaliya	kwangaliya							kwangaliya	كْوَنْڠَلِيَ	kwangaliya
820	70	a	1	كَاتَ	kāṯa	kata							kāṯa	كَاتَ	kāṯa
825	70	c	2	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
822	70	b	1	أُمْتُنُكِيٖ	umṯunukiye	umtunukiye							umṯunukiye	أُمْتُنُكِيٖ	umṯunukiye
826	70	c	3	أُكِتٖينْدَ	ukiṯēnḏa	ukitenda							ukiṯēnḏa	أُكِتٖينْدَ	ukiṯēnḏa
828	70	d	2	تَكٗنْڠٗوٖيَ	ṯakongoweya	takongoweya							ṯakongoweya	تَكٗنْڠٗوٖيَ	ṯakongoweya
824	70	c	1	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
830	71	a	2	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
827	70	d	1	چٗچٗوتٖ	chochōṯe	chochote							chochōṯe	چٗچٗوتٖ	chochōṯe
829	71	a	1	مْكٖ	mke	mke							mke	مْكٖ	mke
831	71	a	3	سِمْذِيكِ	simdhı̄ki	simdhiki							simdhı̄ki	سِمْذِيكِ	simdhı̄ki
900	77	a	1	إِكِيوَ	ikı̄wa	ikiwa							ikı̄wa	إِكِيوَ	ikı̄wa
861	73	c	1	بٗورَ	bōra	bora							bōra	بٗورَ	bōra
862	73	c	2	أُسِڤُونْدٖ	usivūnḏe	usivunde							usivūnḏe	أُسِڤُونْدٖ	usivūnḏe
832	71	b	1	سِمْوَمْبِيٖ	simwambiye	simwambiye							simwambiye	سِمْوَمْبِيٖ	simwambiye
833	71	b	2	سِينَ	sı̄na	sina							sı̄na	سِينَ	sı̄na
834	71	b	3	هِيكِ	hı̄ki	hiki							hı̄ki	هِيكِ	hı̄ki
863	73	c	3	مِيكٗ	mı̄ko	miko							mı̄ko	مِيكٗ	mı̄ko
901	77	a	2	وَفُرَهِيكَ	wafurahı̄ka	wafurahika							wafurahı̄ka	وَفُرَهِيكَ	wafurahı̄ka
836	71	c	2	نْيِينْڠِ	nı̄ı̄ngi	nyingi							nı̄ı̄ngi	نْيِينْڠِ	nı̄ı̄ngi
837	71	c	3	مْنٗ	mno	mno							mno	مْنٗ	mno
838	71	c	4	سِتَاكِ	siṯāki	sitaki							siṯāki	سِتَاكِ	siṯāki
881	75	b	1	سِؤٗنٖكَانٖ	sionekāne	sionekane							sionekāne	سِؤٗنٖكَانٖ	sionekāne
864	73	d	1	خَتِيَانِ	ẖaṯiyāni	hatiyani							ẖaṯiyāni	خَتِيَانِ	ẖaṯiyāni
839	71	d	1	سِزٗوٖيٖ	sizoweye	sizoweye							sizoweye	سِزٗوٖيٖ	sizoweye
840	71	d	2	كُتُمِيَ	kuṯumiya	kutumiya							kuṯumiya	كُتُمِيَ	kuṯumiya
865	73	d	2	أُكَنْڠِيَ	ukangiya	ukangiya							ukangiya	أُكَنْڠِيَ	ukangiya
841	72	a	1	مْپٖ	mpe	mpe							mpe	مْپٖ	mpe
842	72	a	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
843	72	a	3	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
844	72	a	4	كَدِيرِ	kaḏı̄ri	kadiri							kaḏı̄ri	كَدِيرِ	kaḏı̄ri
882	75	b	2	مْچَافُ	mchāfu	mchafu							mchāfu	مْچَافُ	mchāfu
845	72	b	1	أُسِفَانْيٖ	usifānye	usifanye							usifānye	أُسِفَانْيٖ	usifānye
846	72	b	2	تَقتِيرِ	ṯaqṯı̄ri	taqtiri							ṯaqṯı̄ri	تَقتِيرِ	ṯaqṯı̄ri
866	74	a	1	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
867	74	a	2	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
868	74	a	3	مَرِدَادِ	mariḏāḏi	maridadi							mariḏāḏi	مَرِدَادِ	mariḏāḏi
847	72	c	1	نِ	ni	ni							ni	نِ	ni
848	72	c	2	توَبِيَ	ṯwabiya	twabiya							ṯwabiya	توَبِيَ	ṯwabiya
849	72	c	3	سِ	si	si							si	سِ	si
850	72	c	4	نْزُورِ	nzūri	nzuri							nzūri	نْزُورِ	nzūri
851	72	d	1	أُبَخِيلِ	ubaẖı̄li	ubahili							ubaẖı̄li	أُبَخِيلِ	ubaẖı̄li
852	72	d	2	كْوٖينْيٖ	kwēnye	kwenye							kwēnye	كْوٖينْيٖ	kwēnye
853	72	d	3	هَايَ	hāya	haya							hāya	هَايَ	hāya
894	76	b	1	زَنْڠَلِيٖ	zangaliye	zangaliye							zangaliye	زَنْڠَلِيٖ	zangaliye
869	74	b	1	أُتُونْڠٖ	uṯūnge	utunge							uṯūnge	أُتُونْڠٖ	uṯūnge
854	73	a	1	نَ	na	na							na	نَ	na
855	73	a	2	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
856	73	a	3	أُپَانْدٖ	upānḏe	upande							upānḏe	أُپَانْدٖ	upānḏe
857	73	a	4	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
870	74	b	2	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
871	74	b	3	جَسَادِ	jasāḏi	jasadi							jasāḏi	جَسَادِ	jasāḏi
858	73	b	1	إِپَامْبٖ	ipāmbe	ipambe							ipāmbe	إِپَامْبٖ	ipāmbe
859	73	b	2	كِيَاسِ	kiyāsi	kiyasi							kiyāsi	كِيَاسِ	kiyāsi
860	73	b	3	چَاكٗ	chāko	chako							chāko	چَاكٗ	chāko
895	76	b	2	كَذَلِيكَ	kadhalı̄ka	kadhalika							kadhalı̄ka	كَذَلِيكَ	kadhalı̄ka
884	75	c	2	نِ	ni	ni							ni	نِ	ni
872	74	c	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
873	74	c	2	كُفُكِيزَ	kufukı̄za	kufukiza							kufukı̄za	كُفُكِيزَ	kufukı̄za
874	74	c	3	أُودِ	ūḏi	udi							ūḏi	أُودِ	ūḏi
885	75	c	3	سُوننَ	sūnna	sunna							sūnna	سُوننَ	sūnna
886	75	c	4	تُكُوفُ	ṯukūfu	tukufu							ṯukūfu	تُكُوفُ	ṯukūfu
875	74	d	1	أُكِوٖيزَ	ukiwēza	ukiweza							ukiwēza	أُكِوٖيزَ	ukiwēza
876	74	d	2	سِ	si	si							si	سِ	si
877	74	d	3	خَتِيَ	ẖaṯiya	hatiya							ẖaṯiya	خَتِيَ	ẖaṯiya
878	75	a	1	إِوٖيكٖ	iwēke	iweke							iwēke	إِوٖيكٖ	iwēke
879	75	a	2	أُوٖ	uwe	uwe							uwe	أُوٖ	uwe
880	75	a	3	نَذِيفُ	nadhı̄fu	nadhifu							nadhı̄fu	نَذِيفُ	nadhı̄fu
896	76	c	1	سِوَاتٖ	siwāṯe	siwate							siwāṯe	سِوَاتٖ	siwāṯe
897	76	c	2	كُسٗكٗتٖيكَ	kusokoṯēka	kusokoteka							kusokoṯēka	كُسٗكٗتٖيكَ	kusokoṯēka
887	75	d	1	يَ	ya	ya							ya	يَ	ya
888	75	d	2	تُومْوَ	ṯūmwa	tumwa							ṯūmwa	تُومْوَ	ṯūmwa
889	75	d	3	وٖيتُ	wēṯu	wetu							wēṯu	وٖيتُ	wēṯu
890	75	d	4	نَبِيَ	nabiya	nabiya							nabiya	نَبِيَ	nabiya
904	77	c	1	يُوَ	yuwa	yuwa							yuwa	يُوَ	yuwa
891	76	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
892	76	a	2	نْيٖئٖ	nyee	nyee							nyee	نْيٖئٖ	nyee
893	76	a	3	أُمٖوٖيكَ	umewēka	umeweka							umewēka	أُمٖوٖيكَ	umewēka
905	77	c	2	نَيٖيٖ	nayeye	nayeye							nayeye	نَيٖيٖ	nayeye
898	76	d	1	شُنْڠُرُورُ	shungurūru	shungururu							shungurūru	شُنْڠُرُورُ	shungurūru
899	76	d	2	كُسَلِيَ	kusaliya	kusaliya							kusaliya	كُسَلِيَ	kusaliya
906	77	c	3	هُتَاكَ	huṯāka	hutaka							huṯāka	هُتَاكَ	huṯāka
902	77	b	1	مْكٖؤٗ	mkeo	mkeo							mkeo	مْكٖؤٗ	mkeo
903	77	b	2	أَكِپَمْبِيكَ	akipambı̄ka	akipambika							akipambı̄ka	أَكِپَمْبِيكَ	akipambı̄ka
907	77	d	1	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
908	77	d	2	أُوٖ	uwe	uwe							uwe	أُوٖ	uwe
909	77	d	3	هُڤُتِيَ	huvuṯiya	huvutiya							huvuṯiya	هُڤُتِيَ	huvuṯiya
912	78	a	3	نْدَاكٖ	nḏāke	ndake							nḏāke	نْدَاكٖ	nḏāke
913	78	a	4	هَاكِ	hāki	haki							hāki	هَاكِ	hāki
915	78	b	2	هَفُرَهِيكِ	hafurahı̄ki	hafurahiki							hafurahı̄ki	هَفُرَهِيكِ	hafurahı̄ki
910	78	a	1	هِيٗ	hiyo	hiyo							hiyo	هِيٗ	hiyo
911	78	a	2	نَايٖ	nāye	naye							nāye	نَايٖ	nāye
917	78	c	2	هُشُغُلِيكِ	hushuḡulı̄ki	hushughuliki							hushuḡulı̄ki	هُشُغُلِيكِ	hushuḡulı̄ki
914	78	b	1	تَكُوَ	ṯakuwa	takuwa							ṯakuwa	تَكُوَ	ṯakuwa
919	78	d	2	كْوَنْڠَلِيَ	kwangaliya	kwangaliya							kwangaliya	كْوَنْڠَلِيَ	kwangaliya
916	78	c	1	إِوَاپٗ	iwāpo	iwapo							iwāpo	إِوَاپٗ	iwāpo
921	79	a	2	پِيَ	piya	piya							piya	پِيَ	piya
918	78	d	1	مُئِلِؤٗ	muilio	muilio							muilio	مُئِلِؤٗ	muilio
920	79	a	1	نَايٖ	nāye	naye							nāye	نَايٖ	nāye
971	83	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
972	83	b	2	مَنٖينٗ	manēno	maneno							manēno	مَنٖينٗ	manēno
923	79	b	1	أَكِكُؤٗونَ	akikuōna	akikuona							akikuōna	أَكِكُؤٗونَ	akikuōna
924	79	b	2	نْدِئَانِ	nḏiāni	ndiani							nḏiāni	نْدِئَانِ	nḏiāni
973	83	b	3	مَرِدَادِ	mariḏāḏi	maridadi							mariḏāḏi	مَرِدَادِ	mariḏāḏi
953	81	d	1	نَ	na	na							na	نَ	na
954	81	d	2	أَكِلِينِ	akilı̄ni	akilini							akilı̄ni	أَكِلِينِ	akilı̄ni
925	79	c	1	أُوٖ	uwe	uwe							uwe	أُوٖ	uwe
926	79	c	2	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
927	79	c	3	هِسَبُونِ	hisabūni	hisabuni							hisabūni	هِسَبُونِ	hisabūni
955	81	d	3	هُتِيَ	huṯiya	hutiya							huṯiya	هُتِيَ	huṯiya
928	79	d	1	پٖينْيٖ	pēnye	penye							pēnye	پٖينْيٖ	pēnye
929	79	d	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
930	79	d	3	أُتَنْڠِيَ	uṯangiya	utangiya							uṯangiya	أُتَنْڠِيَ	uṯangiya
931	80	a	1	أَوْ	aw	au							aw	أَوْ	aw
932	80	a	2	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
933	80	a	3	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
934	80	a	4	كَازِ	kāzi	kazi							kāzi	كَازِ	kāzi
956	82	a	1	نَ	na	na							na	نَ	na
957	82	a	2	كَذَلِيكَ	kadhalı̄ka	kadhalika							kadhalı̄ka	كَذَلِيكَ	kadhalı̄ka
958	82	a	3	أُلِيمِ	ulı̄mi	ulimi							ulı̄mi	أُلِيمِ	ulı̄mi
935	80	b	1	كُتٖينْدَ	kuṯēnḏa	kutenda							kuṯēnḏa	كُتٖينْدَ	kuṯēnḏa
936	80	b	2	هَايَ	hāya	haya							hāya	هَايَ	hāya
937	80	b	3	هُوٖيزِ	huwēzi	huwezi							huwēzi	هُوٖيزِ	huwēzi
938	80	c	1	وِسَاپٗ	wisāpo	wisapo							wisāpo	وِسَاپٗ	wisāpo
939	80	c	2	ڤُوَ	vuwa	vuwa							vuwa	ڤُوَ	vuwa
940	80	c	3	مَڠٗوزِ	magōzi	magozi							magōzi	مَڠٗوزِ	magōzi
984	84	b	1	أَفُرَاهِ	afurāhi	afurahi							afurāhi	أَفُرَاهِ	afurāhi
985	84	b	2	أَكِچٖيكَ	akichēka	akicheka							akichēka	أَكِچٖيكَ	akichēka
941	80	d	1	سِڤَاءٖ	sivāe	sivae							sivāe	سِڤَاءٖ	sivāe
942	80	d	2	كُتٖمْبٖلٖيَ	kuṯembeleya	kutembeleya							kuṯembeleya	كُتٖمْبٖلٖيَ	kuṯembeleya
959	82	b	1	إِپِينْدٖ	ipı̄nḏe	ipinde							ipı̄nḏe	إِپِينْدٖ	ipı̄nḏe
960	82	b	2	أُوٖ	uwe	uwe							uwe	أُوٖ	uwe
943	81	a	1	سِتٖمْبٖئٖ	siṯembee	sitembee							siṯembee	سِتٖمْبٖئٖ	siṯembee
944	81	a	2	نَ	na	na							na	نَ	na
945	81	a	3	مَڠوَانْدَ	magwānḏa	magwanda							magwānḏa	مَڠوَانْدَ	magwānḏa
961	82	b	3	هُسٖيمِ	husēmi	husemi							husēmi	هُسٖيمِ	husēmi
946	81	b	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
947	81	b	2	هَرُوفُ	harūfu	harufu							harūfu	هَرُوفُ	harūfu
948	81	b	3	زَ	za	za							za	زَ	za
949	81	b	4	ن’ڠٗونْدَ	n’gōnḏa	n’gonda							n’gōnḏa	ن’ڠٗونْدَ	n’gōnḏa
974	83	c	1	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
1048	89	d	2	مَارَ	māra	mara							māra	مَارَ	māra
975	83	c	2	هُتَاكَ	huṯāka	hutaka							huṯāka	هُتَاكَ	huṯāka
976	83	c	3	زَئِيدِ	zaı̄ḏi	zaidi							zaı̄ḏi	زَئِيدِ	zaı̄ḏi
950	81	c	1	فَهَامُ	fahāmu	fahamu							fahāmu	فَهَامُ	fahāmu
951	81	c	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
952	81	c	3	هُتُونْدَ	huṯūnḏa	hutunda							huṯūnḏa	هُتُونْدَ	huṯūnḏa
962	82	c	1	يَالٗ	yālo	yalo							yālo	يَالٗ	yālo
963	82	c	2	مَاوِ	māwi	mawi							māwi	مَاوِ	māwi
964	82	c	3	هُؤَتَامِ	huaṯāmi	huatami							huaṯāmi	هُؤَتَامِ	huaṯāmi
965	82	d	1	مْكٖ	mke	mke							mke	مْكٖ	mke
966	82	d	2	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
967	82	d	3	كُمْوَمْبِيَ	kumwambiya	kumwambiya							kumwambiya	كُمْوَمْبِيَ	kumwambiya
992	85	a	3	أُبِيشِ	ubı̄shi	ubishi							ubı̄shi	أُبِيشِ	ubı̄shi
968	83	a	1	مْنٗ	mno	mno							mno	مْنٗ	mno
969	83	a	2	سَانَ	sāna	sana							sāna	سَانَ	sāna
970	83	a	3	جِتَهِيدِ	jiṯahı̄ḏi	jitahidi							jiṯahı̄ḏi	جِتَهِيدِ	jiṯahı̄ḏi
986	84	c	1	مْوَنَامْكٖ	mwanāmke	mwanamke							mwanāmke	مْوَنَامْكٖ	mwanāmke
987	84	c	2	هُؤُذِيكَ	huudhı̄ka	huudhika							huudhı̄ka	هُؤُذِيكَ	huudhı̄ka
977	83	d	1	يَالٗ	yālo	yalo							yālo	يَالٗ	yālo
978	83	d	2	تَامُ	ṯāmu	tamu							ṯāmu	تَامُ	ṯāmu
979	83	d	3	كُسِكِيَ	kusikiya	kusikiya							kusikiya	كُسِكِيَ	kusikiya
988	84	d	1	مْنٗ	mno	mno							mno	مْنٗ	mno
980	84	a	1	نٖينَ	nēna	nena							nēna	نٖينَ	nēna
981	84	a	2	نَايٖ	nāye	naye							nāye	نَايٖ	nāye
982	84	a	3	كْوَ	kwa	kwa							kwa	كْوَ	kwa
983	84	a	4	ذِهَاكَ	dhihāka	dhihaka							dhihāka	ذِهَاكَ	dhihāka
1000	85	c	4	مْتٖيشِ	mṯēshi	mteshi							mṯēshi	مْتٖيشِ	mṯēshi
989	84	d	2	كُمْنْيَمَلِيَ	kumnyamaliya	kumnyamaliya							kumnyamaliya	كُمْنْيَمَلِيَ	kumnyamaliya
1001	85	d	1	بِيلَ	bı̄la	bila							bı̄la	بِيلَ	bı̄la
990	85	a	1	مْفَنْيِئٖ	mfanyie	mfanyie							mfanyie	مْفَنْيِئٖ	mfanyie
991	85	a	2	نَ	na	na							na	نَ	na
997	85	c	1	نَ	na	na							na	نَ	na
993	85	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
994	85	b	2	مَنٖينٗ	manēno	maneno							manēno	مَنٖينٗ	manēno
995	85	b	3	يَاسٗ	yāso	yaso							yāso	يَاسٗ	yāso
996	85	b	4	غَاشِ	ḡāshi	ghashi							ḡāshi	غَاشِ	ḡāshi
998	85	c	2	كْوَاكٖ	kwāke	kwake							kwāke	كْوَاكٖ	kwāke
999	85	c	3	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
1005	86	a	2	أَهِتَاجِ	ahiṯāji	ahitaji							ahiṯāji	أَهِتَاجِ	ahiṯāji
1007	86	b	2	لَاسِ	lāsi	lasi							lāsi	لَاسِ	lāsi
1004	86	a	1	مْوَنَامْكٖ	mwanāmke	mwanamke							mwanāmke	مْوَنَامْكٖ	mwanāmke
1002	85	d	2	يَ	ya	ya							ya	يَ	ya
1003	85	d	3	كُپِنْدُكِيَ	kupinḏukiya	kupindukiya							kupinḏukiya	كُپِنْدُكِيَ	kupinḏukiya
1008	86	b	3	فَتَاجِ	faṯāji	fataji							faṯāji	فَتَاجِ	faṯāji
1010	86	c	2	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
1006	86	b	1	كُڤِيشْوَ	kuvı̄shwa	kuvishwa							kuvı̄shwa	كُڤِيشْوَ	kuvı̄shwa
1011	86	c	3	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
1012	86	c	4	مْپَاجِ	mpāji	mpaji							mpāji	مْپَاجِ	mpāji
1009	86	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1013	86	d	1	أُسِچٗوكٖ	usichōke	usichoke							usichōke	أُسِچٗوكٖ	usichōke
1073	92	b	1	مْوَمْبِيٖ	mwambiye	mwambiye							mwambiye	مْوَمْبِيٖ	mwambiye
1014	86	d	2	كُمْوَمْبِيَ	kumwambiya	kumwambiya							kumwambiya	كُمْوَمْبِيَ	kumwambiya
1074	92	b	2	كِيتُ	kı̄ṯu	kitu							kı̄ṯu	كِيتُ	kı̄ṯu
1062	91	b	1	أَوْ	aw	au							aw	أَوْ	aw
1044	89	c	1	سِينَ	sı̄na	sina							sı̄na	سِينَ	sı̄na
1015	87	a	1	مْوَمْبِيٖ	mwambiye	mwambiye							mwambiye	مْوَمْبِيٖ	mwambiye
1016	87	a	2	كُولَ	kūla	kula							kūla	كُولَ	kūla
1017	87	a	3	نَامْنَ	nāmna	namna							nāmna	نَامْنَ	nāmna
1045	89	c	2	بُودِ	būḏi	budi							būḏi	بُودِ	būḏi
1046	89	c	3	تَكُتُنْزَ	ṯakuṯunza	takutunza							ṯakuṯunza	تَكُتُنْزَ	ṯakuṯunza
1018	87	b	1	سِيفَ	sı̄fa	sifa							sı̄fa	سِيفَ	sı̄fa
1019	87	b	2	زَاكٖ	zāke	zake							zāke	زَاكٖ	zāke
1020	87	b	3	تٖينَ	ṯēna	tena							ṯēna	تٖينَ	ṯēna
1021	87	b	4	سَانَ	sāna	sana							sāna	سَانَ	sāna
1063	91	b	2	كِكُوبَ	kikūba	kikuba							kikūba	كِكُوبَ	kikūba
1022	87	c	1	مْفَانٗ	mfāno	mfano							mfāno	مْفَانٗ	mfāno
1023	87	c	2	أُكِمُؤٗونَ	ukimuōna	ukimuona							ukimuōna	أُكِمُؤٗونَ	ukimuōna
1064	91	b	3	كِتوَانِ	kiṯwāni	kitwani							kiṯwāni	كِتوَانِ	kiṯwāni
1047	89	d	1	أُمْشُومُ	umshūmu	umshumu							umshūmu	أُمْشُومُ	umshūmu
1024	87	d	1	نْيٖئٖ	nyee	nyee							nyee	نْيٖئٖ	nyee
1025	87	d	2	مٖفُونْڠَ	mefūnga	mefunga							mefūnga	مٖفُونْڠَ	mefūnga
1026	87	d	3	أُپِيَ	upiya	upiya							upiya	أُپِيَ	upiya
1049	89	d	3	مٗويَ	mōya	moya							mōya	مٗويَ	mōya
1027	88	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1028	88	a	2	مٖسُوكَ	mesūka	mesuka							mesūka	مٖسُوكَ	mesūka
1029	88	a	3	مِكِيلِ	mikı̄li	mikili							mikı̄li	مِكِيلِ	mikı̄li
1030	88	b	1	أَوْ	aw	au							aw	أَوْ	aw
1031	88	b	2	كُرُونِ	kurūni	kuruni							kurūni	كُرُونِ	kurūni
1032	88	b	3	مَوِيلِ	mawı̄li	mawili							mawı̄li	مَوِيلِ	mawı̄li
1075	92	b	3	كَتِيتِ	kaṯı̄ṯi	katiti							kaṯı̄ṯi	كَتِيتِ	kaṯı̄ṯi
1050	90	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1033	88	c	1	سِلِوَاتٖ	siliwāṯe	siliwate							siliwāṯe	سِلِوَاتٖ	siliwāṯe
1034	88	c	2	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
1035	88	c	3	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
1051	90	a	2	أَمٖتِيَ	ameṯiya	ametiya							ameṯiya	أَمٖتِيَ	ameṯiya
1052	90	a	3	وَانْدَ	wānḏa	wanda							wānḏa	وَانْدَ	wānḏa
1036	88	d	1	بِيلَ	bı̄la	bila							bı̄la	بِيلَ	bı̄la
1038	88	d	3	كُلِتُمِيَ	kuliṯumiya	kulitumiya							kuliṯumiya	كُلِتُمِيَ	kuliṯumiya
1039	89	a	1	مْوَمْبِيٖ	mwambiye	mwambiye							mwambiye	مْوَمْبِيٖ	mwambiye
1040	89	a	2	أُمٖپٖنْدٖيزَ	umepenḏēza	umependeza							umepenḏēza	أُمٖپٖنْدٖيزَ	umepenḏēza
1065	91	c	1	سِچٖلٖيوٖ	sichelēwe	sichelewe							sichelēwe	سِچٖلٖيوٖ	sichelēwe
1066	91	c	2	كُبَئِينِ	kubaı̄ni	kubaini							kubaı̄ni	كُبَئِينِ	kubaı̄ni
1041	89	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1042	89	b	2	نْيٖئٖ	nyee	nyee							nyee	نْيٖئٖ	nyee
1043	89	b	3	كُزِتٖنْڠٖيزَ	kuziṯengēza	kuzitengeza							kuziṯengēza	كُزِتٖنْڠٖيزَ	kuziṯengēza
1053	90	b	1	مْوَمْبِيٖ	mwambiye	mwambiye							mwambiye	مْوَمْبِيٖ	mwambiye
1054	90	b	2	مْنٗ	mno	mno							mno	مْنٗ	mno
1055	90	b	3	نَپٖينْدَ	napēnḏa	napenda							napēnḏa	نَپٖينْدَ	napēnḏa
1056	90	c	1	سِئِفَانْيٖ	siifānye	siifanye							siifānye	سِئِفَانْيٖ	siifānye
1057	90	c	2	هُكُتُونْدَ	hukuṯūnḏa	hukutunda							hukuṯūnḏa	هُكُتُونْدَ	hukuṯūnḏa
1058	90	d	1	أَوْ	aw	au							aw	أَوْ	aw
1059	90	d	2	هُكُمْوَنْڠَلِيَ	hukumwangaliya	hukumwangaliya							hukumwangaliya	هُكُمْوَنْڠَلِيَ	hukumwangaliya
1067	91	d	1	نٖينٗ	nēno	neno							nēno	نٖينٗ	nēno
1060	91	a	1	كِجِفُونْڠَ	kijifūnga	kijifunga							kijifūnga	كِجِفُونْڠَ	kijifūnga
1061	91	a	2	أَسُمِينِ	asumı̄ni	asumini							asumı̄ni	أَسُمِينِ	asumı̄ni
1081	92	d	2	دُوكٗ	ḏūko	duko							ḏūko	دُوكٗ	ḏūko
1068	91	d	2	لٖيمَ	lēma	lema							lēma	لٖيمَ	lēma
1069	91	d	3	كُمْوَمْبِيَ	kumwambiya	kumwambiya							kumwambiya	كُمْوَمْبِيَ	kumwambiya
1082	92	d	3	تٗونْڠٗ	ṯōngo	tongo							ṯōngo	تٗونْڠٗ	ṯōngo
1083	92	d	4	پِيَ	piya	piya							piya	پِيَ	piya
1070	92	a	1	يَأَنِ	yaani	yaani							yaani	يَأَنِ	yaani
1071	92	a	2	كُولَ	kūla	kula							kūla	كُولَ	kūla
1072	92	a	3	وَكَاتِ	wakāṯi	wakati							wakāṯi	وَكَاتِ	wakāṯi
1093	93	c	3	هِينِ	hı̄ni	hini							hı̄ni	هِينِ	hı̄ni
1076	92	c	1	نَ	na	na							na	نَ	na
1077	92	c	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
1078	92	c	3	بُوبوِ	būbwi	bubwi							būbwi	بُوبوِ	būbwi
1079	92	c	4	سِكٖيتِ	sikēṯi	siketi							sikēṯi	سِكٖيتِ	sikēṯi
1097	94	a	2	كُمْسِيفُ	kumsı̄fu	kumsifu							kumsı̄fu	كُمْسِيفُ	kumsı̄fu
1091	93	c	1	مْفَانٗ	mfāno	mfano							mfāno	مْفَانٗ	mfāno
1087	93	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1080	92	d	1	أَوْ	aw	au							aw	أَوْ	aw
1088	93	b	2	شُغُولِ	shuḡūli	shughuli							shuḡūli	شُغُولِ	shuḡūli
1084	93	a	1	پِيَ	piya	piya							piya	پِيَ	piya
1085	93	a	2	مْپٖ	mpe	mpe							mpe	مْپٖ	mpe
1086	93	a	3	شُكُرَانِ	shukurāni	shukurani							shukurāni	شُكُرَانِ	shukurāni
1089	93	b	3	زَ	za	za							za	زَ	za
1090	93	b	4	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
1092	93	c	2	پِلَاءُ	pilāu	pilau							pilāu	پِلَاءُ	pilāu
1095	93	d	2	أُمٖئِپَتِيَ	umeipaṯiya	umeipatiya							umeipaṯiya	أُمٖئِپَتِيَ	umeipaṯiya
1094	93	d	1	مْنٗ	mno	mno							mno	مْنٗ	mno
1099	94	b	2	نْيُومْبَ	nyūmba	nyumba							nyūmba	نْيُومْبَ	nyūmba
1096	94	a	1	أُسِچٗوكٖ	usichōke	usichoke							usichōke	أُسِچٗوكٖ	usichōke
1100	94	b	3	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
1101	94	b	4	نَذِيفُ	nadhı̄fu	nadhifu							nadhı̄fu	نَذِيفُ	nadhı̄fu
1103	94	c	2	أُكِؤٗونَ	ukiōna	ukiona							ukiōna	أُكِؤٗونَ	ukiōna
1098	94	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1104	94	c	3	أُچَافُ	uchāfu	uchafu							uchāfu	أُچَافُ	uchāfu
1102	94	c	1	نَ	na	na							na	نَ	na
1328	113	a	3	نَ	na	na							na	نَ	na
1154	99	b	1	هُنٖينَ	hunēna	hunena							hunēna	هُنٖينَ	hunēna
1105	94	d	1	أُسِيوٖ	usı̄we	usiwe							usı̄we	أُسِيوٖ	usı̄we
1106	94	d	2	تَمُؤُكِيَ	ṯamuukiya	tamuukiya							ṯamuukiya	تَمُؤُكِيَ	ṯamuukiya
1155	99	b	2	مُكَفَهَامُ	mukafahāmu	mukafahamu							mukafahāmu	مُكَفَهَامُ	mukafahāmu
1136	97	d	2	يَاكٖ	yāke	yake							yāke	يَاكٖ	yāke
1107	95	a	1	نَ	na	na							na	نَ	na
1108	95	a	2	فَرَاغَ	farāḡa	faragha							farāḡa	فَرَاغَ	farāḡa
1379	116	d	1	أُونَ	ūna	una							ūna	أُونَ	ūna
1109	95	a	3	أُكِپَاتَ	ukipāṯa	ukipata							ukipāṯa	أُكِپَاتَ	ukipāṯa
1137	97	d	3	كُمْوٖلٖكٖيَ	kumwelekeya	kumwelekeya							kumwelekeya	كُمْوٖلٖكٖيَ	kumwelekeya
1110	95	b	1	مْبٖئٖ	mbee	mbee							mbee	مْبٖئٖ	mbee
1111	95	b	2	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
1112	95	b	3	كِكُپِيتَ	kikupı̄ṯa	kikupita							kikupı̄ṯa	كِكُپِيتَ	kikupı̄ṯa
1113	95	c	1	أُسِيوٖ	usı̄we	usiwe							usı̄we	أُسِيوٖ	usı̄we
1114	95	c	2	أُتَمُؤَاتَ	uṯamuāṯa	utamuata							uṯamuāṯa	أُتَمُؤَاتَ	uṯamuāṯa
1115	95	d	1	مْكٗونٗ	mkōno	mkono							mkōno	مْكٗونٗ	mkōno
1116	95	d	2	كُمْپٖكٖيَ	kumpekeya	kumpekeya							kumpekeya	كُمْپٖكٖيَ	kumpekeya
1138	98	a	1	وَاتَ	wāṯa	wata							wāṯa	وَاتَ	wāṯa
1139	98	a	2	مَاتٗ	māṯo	mato							māṯo	مَاتٗ	māṯo
1140	98	a	3	يَفُمَانٖ	yafumāne	yafumane							yafumāne	يَفُمَانٖ	yafumāne
1117	96	a	1	مْشِيكٖ	mshı̄ke	mshike							mshı̄ke	مْشِيكٖ	mshı̄ke
1118	96	a	2	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
1119	96	a	3	مْكٗونٗ	mkōno	mkono							mkōno	مْكٗونٗ	mkōno
1173	101	a	1	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
1120	96	b	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
1121	96	b	2	سِمْكَازٖ	simkāze	simkaze							simkāze	سِمْكَازٖ	simkāze
1122	96	b	3	مْنٗ	mno	mno							mno	مْنٗ	mno
1166	100	b	1	نَ	na	na							na	نَ	na
1141	98	b	1	كَتِيتِ	kaṯı̄ṯi	katiti							kaṯı̄ṯi	كَتِيتِ	kaṯı̄ṯi
1142	98	b	2	يَنْڠَلِيَانٖ	yangaliyāne	yangaliyane							yangaliyāne	يَنْڠَلِيَانٖ	yangaliyāne
1123	96	c	1	هُتٗوشَ	huṯōsha	hutosha							huṯōsha	هُتٗوشَ	huṯōsha
1124	96	c	2	نُكُوتَ	nukūṯa	nukuta							nukūṯa	نُكُوتَ	nukūṯa
1125	96	c	3	تَانٗ	ṯāno	tano							ṯāno	تَانٗ	ṯāno
1126	96	d	1	أُجُومْبٖ	ujūmbe	ujumbe							ujūmbe	أُجُومْبٖ	ujūmbe
1127	96	d	2	كُمْپٖكٖيَ	kumpekeya	kumpekeya							kumpekeya	كُمْپٖكٖيَ	kumpekeya
1167	100	b	2	مَارَ	māra	mara							māra	مَارَ	māra
1128	97	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1129	97	a	2	أَمٖكُكَبِيلِ	amekukabı̄li	amekukabili							amekukabı̄li	أَمٖكُكَبِيلِ	amekukabı̄li
1156	99	c	1	مَاتٗ	māṯo	mato							māṯo	مَاتٗ	māṯo
1157	99	c	2	كِؤُونْڠٗ	kiūngo	kiungo							kiūngo	كِؤُونْڠٗ	kiūngo
1130	97	b	1	سِئِتِيٖ	siiṯiye	siitiye							siiṯiye	سِئِتِيٖ	siiṯiye
1131	97	b	2	مَشُغُولِ	mashuḡūli	mashughuli							mashuḡūli	مَشُغُولِ	mashuḡūli
1143	98	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1144	98	c	2	أُلِيمِ	ulı̄mi	ulimi							ulı̄mi	أُلِيمِ	ulı̄mi
1145	98	c	3	أُسِنٖينٖ	usinēne	usinene							usinēne	أُسِنٖينٖ	usinēne
1132	97	c	1	إِنُوَ	inuwa	inuwa							inuwa	إِنُوَ	inuwa
1133	97	c	2	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
1134	97	c	3	مَوِيلِ	mawı̄li	mawili							mawı̄li	مَوِيلِ	mawı̄li
1158	99	c	3	مُهِيمُ	muhı̄mu	muhimu							muhı̄mu	مُهِيمُ	muhı̄mu
1146	98	d	1	لُوغَ	lūḡa	lugha							lūḡa	لُوغَ	lūḡa
1147	98	d	2	يَ	ya	ya							ya	يَ	ya
1148	98	d	3	مَاتٗ	māṯo	mato							māṯo	مَاتٗ	māṯo
1149	98	d	4	تُمِيَ	ṯumiya	tumiya							ṯumiya	تُمِيَ	ṯumiya
1168	100	b	3	هُكُؤَذِيرِ	hukuadhı̄ri	hukuadhiri							hukuadhı̄ri	هُكُؤَذِيرِ	hukuadhı̄ri
1159	99	d	1	چَ	cha	cha							cha	چَ	cha
1150	99	a	1	مَاتٗ	māṯo	mato							māṯo	مَاتٗ	māṯo
1151	99	a	2	يَانَ	yāna	yana							yāna	يَانَ	yāna
1152	99	a	3	لُوغَ	lūḡa	lugha							lūḡa	لُوغَ	lūḡa
1153	99	a	4	تَامُ	ṯāmu	tamu							ṯāmu	تَامُ	ṯāmu
2413	205	c	2	سِ	si	si							si	سِ	si
1174	101	a	2	نِمٖنٖينَ	nimenēna	nimenena							nimenēna	نِمٖنٖينَ	nimenēna
1161	99	d	3	كُپَلِلِيَ	kupaliliya	kupaliliya							kupaliliya	كُپَلِلِيَ	kupaliliya
1175	101	a	3	سَانَ	sāna	sana							sāna	سَانَ	sāna
1169	100	c	1	كَكُتٗلٖيَ	kakuṯoleya	kakutoleya							kakuṯoleya	كَكُتٗلٖيَ	kakuṯoleya
1170	100	c	2	خَبَارِ	ẖabāri	habari							ẖabāri	خَبَارِ	ẖabāri
1162	100	a	1	مَاتٗ	māṯo	mato							māṯo	مَاتٗ	māṯo
1163	100	a	2	يَانَ	yāna	yana							yāna	يَانَ	yāna
1164	100	a	3	كُؤُ	kuu	kuu							kuu	كُؤُ	kuu
1165	100	a	4	سِيرِ	sı̄ri	siri							sı̄ri	سِيرِ	sı̄ri
1171	100	d	1	مٗيٗونِ	moyōni	moyoni							moyōni	مٗيٗونِ	moyōni
1172	100	d	2	أُلٗزِوِيَ	uloziwiya	uloziwiya							uloziwiya	أُلٗزِوِيَ	uloziwiya
1188	102	a	3	سَهَالِ	sahāli	sahali							sahāli	سَهَالِ	sahāli
1190	102	b	2	كُلَّ	kulla	kulla							kulla	كُلَّ	kulla
1179	101	c	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
1180	101	c	2	غَرَامَ	ḡarāma	gharama							ḡarāma	غَرَامَ	ḡarāma
1181	101	c	3	هَلِينَ	halı̄na	halina							halı̄na	هَلِينَ	halı̄na
1176	101	b	1	نِ	ni	ni							ni	نِ	ni
1177	101	b	2	مُهِيمُ	muhı̄mu	muhimu							muhı̄mu	مُهِيمُ	muhı̄mu
1178	101	b	3	نَلِؤٗونَ	naliōna	naliona							naliōna	نَلِؤٗونَ	naliōna
1186	102	a	1	وَلَكِينِ	walakı̄ni	walakini							walakı̄ni	وَلَكِينِ	walakı̄ni
1182	101	d	1	نَ	na	na							na	نَ	na
1183	101	d	2	سِ	si	si							si	سِ	si
1184	101	d	3	كَازِ	kāzi	kazi							kāzi	كَازِ	kāzi
1185	101	d	4	كُتُمِيَ	kuṯumiya	kutumiya							kuṯumiya	كُتُمِيَ	kuṯumiya
1191	102	b	3	أَالٗ	ālo	alo							ālo	أَالٗ	ālo
1192	102	b	4	مْڤُولِ	mvūli	mvuli							mvūli	مْڤُولِ	mvūli
1194	102	c	2	وَنْڠِينٖ	wangı̄ne	wangine							wangı̄ne	وَنْڠِينٖ	wangı̄ne
1189	102	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1195	102	c	3	نِ	ni	ni							ni	نِ	ni
1196	102	c	4	ثَكِيلِ	thakı̄li	thakili							thakı̄li	ثَكِيلِ	thakı̄li
1193	102	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1197	102	d	1	كَاتُ	kāṯu	katu							kāṯu	كَاتُ	kāṯu
1198	102	d	2	هَوَكُزٗوٖيَ	hawakuzoweya	hawakuzoweya							hawakuzoweya	هَوَكُزٗوٖيَ	hawakuzoweya
1272	108	d	1	نَ	na	na							na	نَ	na
1260	107	d	1	نِ	ni	ni							ni	نِ	ni
1228	105	c	1	كُسِكِيَ	kusikiya	kusikiya							kusikiya	كُسِكِيَ	kusikiya
1199	103	a	1	مْبِينُ	mbı̄nu	mbinu							mbı̄nu	مْبِينُ	mbı̄nu
1200	103	a	2	هِيزِ	hı̄zi	hizi							hı̄zi	هِيزِ	hı̄zi
1201	103	a	3	إِزٗئٖيزٖ	izoēze	izoeze							izoēze	إِزٗئٖيزٖ	izoēze
1229	105	c	2	نٖينٗ	nēno	neno							nēno	نٖينٗ	nēno
1230	105	c	3	لَاكٗ	lāko	lako							lāko	لَاكٗ	lāko
1202	103	b	1	زِتُمِيٖ	ziṯumiye	zitumiye							ziṯumiye	زِتُمِيٖ	ziṯumiye
1203	103	b	2	سِزِپُوزٖ	sizipūze	sizipuze							sizipūze	سِزِپُوزٖ	sizipūze
1204	103	c	1	أُتَؤٗونَ	uṯaōna	utaona							uṯaōna	أُتَؤٗونَ	uṯaōna
1205	103	c	2	فَئِدَازٖ	faiḏāze	faidaze							faiḏāze	فَئِدَازٖ	faiḏāze
1261	107	d	2	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
1206	103	d	1	مْوٖنْيٖيوٖ	mwenyēwe	mwenyewe							mwenyēwe	مْوٖنْيٖيوٖ	mwenyēwe
1207	103	d	2	تَشُهُدِيَ	ṯashuhuḏiya	tashuhudiya							ṯashuhuḏiya	تَشُهُدِيَ	ṯashuhuḏiya
1248	107	a	1	كُولَ	kūla	kula							kūla	كُولَ	kūla
1249	107	a	2	أَالٗ	ālo	alo							ālo	أَالٗ	ālo
1231	105	d	1	نِ	ni	ni							ni	نِ	ni
1208	104	a	1	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
1209	104	a	2	هَيَانَ	hayāna	hayana							hayāna	هَيَانَ	hayāna
1210	104	a	3	غَرَامَ	ḡarāma	gharama							ḡarāma	غَرَامَ	ḡarāma
1232	105	d	2	هَاجَ	hāja	haja							hāja	هَاجَ	hāja
1233	105	d	3	أَهِتَجِيَ	ahiṯajiya	ahitajiya							ahiṯajiya	أَهِتَجِيَ	ahiṯajiya
1211	104	b	1	كْوَنْڠَلِيَ	kwangaliya	kwangaliya							kwangaliya	كْوَنْڠَلِيَ	kwangaliya
1212	104	b	2	نَ	na	na							na	نَ	na
1213	104	b	3	كُسٖيمَ	kusēma	kusema							kusēma	كُسٖيمَ	kusēma
1250	107	a	3	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
1251	107	a	4	مْكٖ	mke	mke							mke	مْكٖ	mke
1214	104	c	1	نَ	na	na							na	نَ	na
1215	104	c	2	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
1216	104	c	3	مْكٖ	mke	mke							mke	مْكٖ	mke
1217	104	c	4	دَئِيمَ	ḏaı̄ma	daima							ḏaı̄ma	دَئِيمَ	ḏaı̄ma
1234	106	a	1	يُوَ	yuwa	yuwa							yuwa	يُوَ	yuwa
1235	106	a	2	هَتٗشٖيكِ	haṯoshēki	hatosheki							haṯoshēki	هَتٗشٖيكِ	haṯoshēki
1218	104	d	1	كَامَ	kāma	kama							kāma	كَامَ	kāma
1219	104	d	2	هَايَ	hāya	haya							hāya	هَايَ	hāya
1220	104	d	3	هُزٖنْڠٖيَ	huzengeya	huzengeya							huzengeya	هُزٖنْڠٖيَ	huzengeya
1236	106	a	3	مْكٖ	mke	mke							mke	مْكٖ	mke
1221	105	a	1	مْكٖ	mke	mke							mke	مْكٖ	mke
1222	105	a	2	هُوَ	huwa	huwa							huwa	هُوَ	huwa
1223	105	a	3	أُونَ	ūna	una							ūna	أُونَ	ūna
1224	105	a	4	مْوَاكٗ	mwāko	mwako							mwāko	مْوَاكٗ	mwāko
1225	105	b	1	كُيُوَ	kuyuwa	kuyuwa							kuyuwa	كُيُوَ	kuyuwa
1226	105	b	2	مَؤٗونِ	maōni	maoni							maōni	مَؤٗونِ	maōni
1227	105	b	3	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
1262	107	d	3	مٖيَزٗوٖيَ	meyazoweya	meyazoweya							meyazoweya	مٖيَزٗوٖيَ	meyazoweya
1237	106	b	1	كُڤَاءَ	kuvāa	kuvaa							kuvāa	كُڤَاءَ	kuvāa
1238	106	b	2	نَ	na	na							na	نَ	na
1239	106	b	3	كُولَ	kūla	kula							kūla	كُولَ	kūla
1240	106	b	4	كْوَاكٖ	kwāke	kwake							kwāke	كْوَاكٖ	kwāke
1252	107	b	1	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
1241	106	c	1	أَتَاكَ	aṯāka	ataka							aṯāka	أَتَاكَ	aṯāka
1242	106	c	2	نَ	na	na							na	نَ	na
1243	106	c	3	أُوتُ	ūṯu	utu							ūṯu	أُوتُ	ūṯu
1244	106	c	4	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
1253	107	b	2	نْدِيلٗ	nḏı̄lo	ndilo							nḏı̄lo	نْدِيلٗ	nḏı̄lo
1254	107	b	3	أُومْبٗ	ūmbo	umbo							ūmbo	أُومْبٗ	ūmbo
1255	107	b	4	لَاكٖ	lāke	lake							lāke	لَاكٖ	lāke
1245	106	d	1	نَ	na	na							na	نَ	na
1246	106	d	2	هِشِيمَ	hishı̄ma	hishima							hishı̄ma	هِشِيمَ	hishı̄ma
1247	106	d	3	كُمْوٖكٖيَ	kumwekeya	kumwekeya							kumwekeya	كُمْوٖكٖيَ	kumwekeya
1273	108	d	2	وَالَ	wāla	wala							wāla	وَالَ	wāla
1269	108	c	1	هِينَ	hı̄na	hina							hı̄na	هِينَ	hı̄na
1270	108	c	2	هَپٖينْدِ	hapēnḏi	hapendi							hapēnḏi	هَپٖينْدِ	hapēnḏi
1263	108	a	1	هُتٗكٖيَ	huṯokeya	hutokeya							huṯokeya	هُتٗكٖيَ	huṯokeya
1256	107	c	1	لَ	la	la							la	لَ	la
1257	107	c	2	مَپَامْبٗ	mapāmbo	mapambo							mapāmbo	مَپَامْبٗ	mapāmbo
1258	107	c	3	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
1259	107	c	4	كْوَاكٖ	kwāke	kwake							kwāke	كْوَاكٖ	kwāke
1271	108	c	3	كُچٗورَ	kuchōra	kuchora							kuchōra	كُچٗورَ	kuchōra
1264	108	a	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1265	108	a	3	نَدِيرَ	naḏı̄ra	nadira							naḏı̄ra	نَدِيرَ	naḏı̄ra
1266	108	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1267	108	b	2	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
1268	108	b	3	وَسٗئِكٖيرَ	wasoikēra	wasoikera							wasoikēra	وَسٗئِكٖيرَ	wasoikēra
1281	109	b	3	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
1276	109	a	1	هَانَ	hāna	hana							hāna	هَانَ	hāna
1277	109	a	2	هَايٗ	hāyo	hayo							hāyo	هَايٗ	hāyo
1274	108	d	3	وَانْدَ	wānḏa	wanda							wānḏa	وَانْدَ	wānḏa
1275	108	d	4	كُتِيَ	kuṯiya	kutiya							kuṯiya	كُتِيَ	kuṯiya
1282	109	b	4	مْڤُولِ	mvūli	mvuli							mvūli	مْڤُولِ	mvūli
1278	109	a	3	مَشُغُولِ	mashuḡūli	mashughuli							mashuḡūli	مَشُغُولِ	mashuḡūli
1284	109	c	2	أُرٖيمْبٗ	urēmbo	urembo							urēmbo	أُرٖيمْبٗ	urēmbo
1279	109	b	1	نِ	ni	ni							ni	نِ	ni
1285	109	c	3	هَيَجَالِ	hayajāli	hayajali							hayajāli	هَيَجَالِ	hayajāli
1287	109	d	2	هَكُيَزٗوٖيَ	hakuyazoweya	hakuyazoweya							hakuyazoweya	هَكُيَزٗوٖيَ	hakuyazoweya
1283	109	c	1	يَ	ya	ya							ya	يَ	ya
1289	110	a	2	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
1286	109	d	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
1290	110	a	3	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
1291	110	a	4	مْكٖ	mke	mke							mke	مْكٖ	mke
1288	110	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1294	110	b	3	شُغُولِ	shuḡūli	shughuli							shuḡūli	شُغُولِ	shuḡūli
1295	110	b	4	يَاكٖ	yāke	yake							yāke	يَاكٖ	yāke
1324	112	d	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1326	113	a	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
1327	113	a	2	تَامُ	ṯāmu	tamu							ṯāmu	تَامُ	ṯāmu
1296	110	c	1	بَاسِ	bāsi	basi							bāsi	بَاسِ	bāsi
1297	110	c	2	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
1298	110	c	3	سِسُمْبُوكٖ	sisumbūke	sisumbuke							sisumbūke	سِسُمْبُوكٖ	sisumbūke
1329	113	a	4	أُتُونْڠُ	uṯūngu	utungu							uṯūngu	أُتُونْڠُ	uṯūngu
1299	110	d	1	مَشُغُولِ	mashuḡūli	mashughuli							mashuḡūli	مَشُغُولِ	mashuḡūli
1300	110	d	2	كُيِتِيَ	kuyiṯiya	kuyitiya							kuyiṯiya	كُيِتِيَ	kuyiṯiya
1345	114	c	1	نْدِيٗ	nḏiyo	ndiyo							nḏiyo	نْدِيٗ	nḏiyo
1346	114	c	2	يَ	ya	ya							ya	يَ	ya
1301	111	a	1	نَ	na	na							na	نَ	na
1302	111	a	2	لٖنْڠِينٖ	lengı̄ne	lengine							lengı̄ne	لٖنْڠِينٖ	lengı̄ne
1303	111	a	3	لَ	la	la							la	لَ	la
1304	111	a	4	ذَرُورَ	dharūra	dharura							dharūra	ذَرُورَ	dharūra
1347	114	c	3	مَئِيشَ	maı̄sha	maisha							maı̄sha	مَئِيشَ	maı̄sha
1330	113	b	1	كْوٖينْيٖ	kwēnye	kwenye							kwēnye	كْوٖينْيٖ	kwēnye
1331	113	b	2	هُؤُ	huu	huu							huu	هُؤُ	huu
1305	111	b	1	إِفُونْدٖ	ifūnḏe	ifunde							ifūnḏe	إِفُونْدٖ	ifūnḏe
1306	111	b	2	مْنٗ	mno	mno							mno	مْنٗ	mno
1307	111	b	3	سُبِيرَ	subı̄ra	subira							subı̄ra	سُبِيرَ	subı̄ra
1332	113	b	3	أُلِمْوٖينْڠُ	ulimwēngu	ulimwengu							ulimwēngu	أُلِمْوٖينْڠُ	ulimwēngu
1308	111	c	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
1309	111	c	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
1310	111	c	3	يَ	ya	ya							ya	يَ	ya
1311	111	c	4	كُكٖيرَ	kukēra	kukera							kukēra	كُكٖيرَ	kukēra
1348	114	c	4	أَادَ	āḏa	ada							āḏa	أَادَ	āḏa
1312	111	d	1	مَئِشَانِ	maishāni	maishani							maishāni	مَئِشَانِ	maishāni
1313	111	d	2	يَتٗكٖيَ	yaṯokeya	yatokeya							yaṯokeya	يَتٗكٖيَ	yaṯokeya
1333	113	c	1	يَلِئَانْدَ	yaliānḏa	yalianda							yaliānḏa	يَلِئَانْدَ	yaliānḏa
1334	113	c	2	هَايَ	hāya	haya							hāya	هَايَ	hāya
1314	112	a	1	هَكُونَ	hakūna	hakuna							hakūna	هَكُونَ	hakūna
2625	223	a	3	زَاكٗ	zāko	zako							zāko	زَاكٗ	zāko
1315	112	a	2	مَئِيشَ	maı̄sha	maisha							maı̄sha	مَئِيشَ	maı̄sha
1316	112	a	3	تَامُ	ṯāmu	tamu							ṯāmu	تَامُ	ṯāmu
1335	113	c	3	تَانْڠُ	ṯāngu	tangu							ṯāngu	تَانْڠُ	ṯāngu
1317	112	b	1	يٖينْيٖ	yēnye	yenye							yēnye	يٖينْيٖ	yēnye
1318	112	b	2	رَاهَ	rāha	raha							rāha	رَاهَ	rāha
1319	112	b	3	يَ	ya	ya							ya	يَ	ya
1320	112	b	4	كُدُومُ	kuḏūmu	kudumu							kuḏūmu	كُدُومُ	kuḏūmu
1381	116	d	3	أَلٗزٗوٖيَ	alozoweya	alozoweya							alozoweya	أَلٗزٗوٖيَ	alozoweya
1336	113	d	1	يَلِپٗؤُمْبوَ	yalipoumbwa	yalipoumbwa							yalipoumbwa	يَلِپٗؤُمْبوَ	yalipoumbwa
1383	117	a	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1321	112	c	1	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
1322	112	c	2	تَكُوَ	ṯakuwa	takuwa							ṯakuwa	تَكُوَ	ṯakuwa
1323	112	c	3	مَڠُومُ	magūmu	magumu							magūmu	مَڠُومُ	magūmu
1337	113	d	2	دُنِيَ	ḏuniya	duniya							ḏuniya	دُنِيَ	ḏuniya
1359	115	c	1	مَأَدَامُ	maaḏāmu	maadamu							maaḏāmu	مَأَدَامُ	maaḏāmu
1349	114	d	1	نَ	na	na							na	نَ	na
1350	114	d	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
1338	114	a	1	هِينِ	hı̄ni	hini							hı̄ni	هِينِ	hı̄ni
1339	114	a	2	نْدِينٗ	nḏı̄no	ndino							nḏı̄no	نْدِينٗ	nḏı̄no
1340	114	a	3	كَوَئِيدَ	kawaı̄ḏa	kawaida							kawaı̄ḏa	كَوَئِيدَ	kawaı̄ḏa
1351	114	d	3	هُوَپِتِيَ	huwapiṯiya	huwapitiya							huwapiṯiya	هُوَپِتِيَ	huwapiṯiya
1341	114	b	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
1342	114	b	2	رَاهَ	rāha	raha							rāha	رَاهَ	rāha
1343	114	b	3	كُونَ	kūna	kuna							kūna	كُونَ	kūna
1344	114	b	4	شِيدَ	shı̄ḏa	shida							shı̄ḏa	شِيدَ	shı̄ḏa
1360	115	c	2	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
1361	115	c	3	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
1352	115	a	1	بَاسِ	bāsi	basi							bāsi	بَاسِ	bāsi
1354	115	a	3	كْوَاكٗ	kwāko	kwako							kwāko	كْوَاكٗ	kwāko
1355	115	a	4	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
1366	116	a	1	مْكٖ	mke	mke							mke	مْكٖ	mke
1367	116	a	2	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
1368	116	a	3	سِ	si	si							si	سِ	si
1356	115	b	1	سِؤٗوتٖ	siōṯe	siote							siōṯe	سِؤٗوتٖ	siōṯe
1357	115	b	2	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
1358	115	b	3	پٖپٗونِ	pepōni	peponi							pepōni	پٖپٗونِ	pepōni
1362	115	d	1	سِ	si	si							si	سِ	si
1363	115	d	2	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
1364	115	d	3	پوٖيكٖ	pwēke	pweke							pwēke	پوٖيكٖ	pwēke
1365	115	d	4	ممٗويَ	mmōya	mmoya							mmōya	ممٗويَ	mmōya
1369	116	a	4	كِڤُولِ	kivūli	kivuli							kivūli	كِڤُولِ	kivūli
1375	116	c	1	أُونَ	ūna	una							ūna	أُونَ	ūna
1370	116	b	1	بَالِ	bāli	bali							bāli	بَالِ	bāli
1371	116	b	2	نِ	ni	ni							ni	نِ	ni
1372	116	b	3	مْتُ	mṯu	mtu							mṯu	مْتُ	mṯu
1373	116	b	4	وَ	wa	wa							wa	وَ	wa
1374	116	b	5	پِيلِ	pı̄li	pili							pı̄li	پِيلِ	pı̄li
1376	116	c	2	نَ	na	na							na	نَ	na
1377	116	c	3	يَاكٖ	yāke	yake							yāke	يَاكٖ	yāke
1378	116	c	4	أَكِيلِ	akı̄li	akili							akı̄li	أَكِيلِ	akı̄li
1384	117	a	3	لَزِيمَ	lazı̄ma	lazima							lazı̄ma	لَزِيمَ	lazı̄ma
1386	117	b	2	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
1382	117	a	1	أُسِتَاكٖ	usiṯāke	usitake							usiṯāke	أُسِتَاكٖ	usiṯāke
1387	117	b	3	أُكِسٖيمَ	ukisēma	ukisema							ukisēma	أُكِسٖيمَ	ukisēma
1389	117	c	2	دَئِيمَ	ḏaı̄ma	daima							ḏaı̄ma	دَئِيمَ	ḏaı̄ma
1385	117	b	1	كُولَ	kūla	kula							kūla	كُولَ	kūla
1388	117	c	1	أَلِكُبَالِ	alikubāli	alikubali							alikubāli	أَلِكُبَالِ	alikubāli
1438	122	a	3	تِزَامَ	ṯizāma	tizama							ṯizāma	تِزَامَ	ṯizāma
1390	117	d	1	پَاپٗ	pāpo	papo							pāpo	پَاپٗ	pāpo
1391	117	d	2	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
1392	117	d	3	كُرِذِيَ	kuridhiya	kuridhiya							kuridhiya	كُرِذِيَ	kuridhiya
1419	120	c	1	نَ	na	na							na	نَ	na
1420	120	c	2	فَئِيدَ	faı̄ḏa	faida							faı̄ḏa	فَئِيدَ	faı̄ḏa
1393	118	a	1	مُؤَتِيٖ	muaṯiye	muatiye							muaṯiye	مُؤَتِيٖ	muaṯiye
1394	118	a	2	مَكَوَانْدَ	makawānḏa	makawanda							makawānḏa	مَكَوَانْدَ	makawānḏa
2414	205	c	3	وٖيمَ	wēma	wema							wēma	وٖيمَ	wēma
1421	120	c	3	أُتَؤٗونَ	uṯaōna	utaona							uṯaōna	أُتَؤٗونَ	uṯaōna
1395	118	b	1	أَنٖينٖ	anēne	anene							anēne	أَنٖينٖ	anēne
1396	118	b	2	أَنٗلِپٖينْدَ	anolipēnḏa	anolipenda							anolipēnḏa	أَنٗلِپٖينْدَ	anolipēnḏa
1455	123	d	1	كُنِيزٖ	kunı̄ze	kunize							kunı̄ze	كُنِيزٖ	kunı̄ze
1397	118	c	1	نَ	na	na							na	نَ	na
1398	118	c	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1399	118	c	3	هُوجَ	hūja	huja							hūja	هُوجَ	hūja
2613	222	a	2	سَانَ	sāna	sana							sāna	سَانَ	sāna
1400	118	c	4	كِكُشِينْدَ	kikushı̄nḏa	kikushinda							kikushı̄nḏa	كِكُشِينْدَ	kikushı̄nḏa
1449	123	b	1	أُتَزِنْيِيكَ	uṯazinı̄ı̄ka	utazinyika							uṯazinı̄ı̄ka	أُتَزِنْيِيكَ	uṯazinı̄ı̄ka
1422	120	d	1	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
1423	120	d	2	تَأَنْدَامَ	ṯaanḏāma	taandama							ṯaanḏāma	تَأَنْدَامَ	ṯaanḏāma
1401	118	d	1	سِيوٖ	sı̄we	siwe							sı̄we	سِيوٖ	sı̄we
1402	118	d	2	ڤِيتٗ	vı̄ṯo	vito							vı̄ṯo	ڤِيتٗ	vı̄ṯo
1403	118	d	3	تَتُمِيَ	ṯaṯumiya	tatumiya							ṯaṯumiya	تَتُمِيَ	ṯaṯumiya
1424	120	d	3	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
1404	119	a	1	أُكِؤٗونَ	ukiōna	ukiona							ukiōna	أُكِؤٗونَ	ukiōna
1405	119	a	2	سَاوَ	sāwa	sawa							sāwa	سَاوَ	sāwa
1406	119	a	3	نْدَاكٖ	nḏāke	ndake							nḏāke	نْدَاكٖ	nḏāke
1439	122	b	1	هَؤُزِنْيِيكِ	hauzinı̄ı̄ki	hauzinyiki							hauzinı̄ı̄ki	هَؤُزِنْيِيكِ	hauzinı̄ı̄ki
1407	119	b	1	إِكُبَالِ	ikubāli	ikubali							ikubāli	إِكُبَالِ	ikubāli
1408	119	b	2	أُرِذِيكٖ	uridhı̄ke	uridhike							uridhı̄ke	أُرِذِيكٖ	uridhı̄ke
1440	122	b	2	دَئِيمَ	ḏaı̄ma	daima							ḏaı̄ma	دَئِيمَ	ḏaı̄ma
1425	121	a	1	نَ	na	na							na	نَ	na
1409	119	c	1	نَ	na	na							na	نَ	na
1410	119	c	2	وَالَ	wāla	wala							wāla	وَالَ	wāla
1411	119	c	3	سِكَسِرِيكٖ	sikasirı̄ke	sikasirike							sikasirı̄ke	سِكَسِرِيكٖ	sikasirı̄ke
1426	121	a	2	يٖيٖ	yeye	yeye							yeye	يٖيٖ	yeye
1427	121	a	3	كِكَسِرِيكَ	kikasirı̄ka	kikasirika							kikasirı̄ka	كِكَسِرِيكَ	kikasirı̄ka
1412	119	d	1	مْدٗومٗ	mḏōmo	mdomo							mḏōmo	مْدٗومٗ	mḏōmo
1413	119	d	2	كُمْفُنْڠِيَ	kumfungiya	kumfungiya							kumfungiya	كُمْفُنْڠِيَ	kumfungiya
1414	120	a	1	كُبَالِ	kubāli	kubali							kubāli	كُبَالِ	kubāli
1415	120	a	2	مٖزٗلِنٖينَ	mezolinēna	mezolinena							mezolinēna	مٖزٗلِنٖينَ	mezolinēna
1416	120	b	1	أُمُؤُونْڠٖ	umuūnge	umuunge							umuūnge	أُمُؤُونْڠٖ	umuūnge
1417	120	b	2	تٖينَ	ṯēna	tena							ṯēna	تٖينَ	ṯēna
1418	120	b	3	سَانَ	sāna	sana							sāna	سَانَ	sāna
1450	123	b	2	مْوٖنْدَانِ	mwenḏāni	mwendani							mwenḏāni	مْوٖنْدَانِ	mwenḏāni
1428	121	b	1	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
1429	121	b	2	أُسِپَانْدٖ	usipānḏe	usipande							usipānḏe	أُسِپَانْدٖ	usipānḏe
1430	121	b	3	شُوكَ	shūka	shuka							shūka	شُوكَ	shūka
1441	122	c	1	بَالِ	bāli	bali							bāli	بَالِ	bāli
1431	121	c	1	نَ	na	na							na	نَ	na
1432	121	c	2	أَكِزِيدِ	akizı̄ḏi	akizidi							akizı̄ḏi	أَكِزِيدِ	akizı̄ḏi
1433	121	c	3	أٗنْدٗوكَ	onḏōka	ondoka							onḏōka	أٗنْدٗوكَ	onḏōka
1442	122	c	2	هُزِيدِ	huzı̄ḏi	huzidi							huzı̄ḏi	هُزِيدِ	huzı̄ḏi
1443	122	c	3	رٗرٗومَ	rorōma	roroma							rorōma	رٗرٗومَ	rorōma
1434	121	d	1	كِشِنْدوَ	kishinḏwa	kishindwa							kishinḏwa	كِشِنْدوَ	kishinḏwa
1435	121	d	2	كُڤُمِيليَ	kuvumı̄lya	kuvumilya							kuvumı̄lya	كُڤُمِيليَ	kuvumı̄lya
1436	122	a	1	مْوَنَانْڠُ	mwanāngu	mwanangu							mwanāngu	مْوَنَانْڠُ	mwanāngu
1456	123	d	2	نِ	ni	ni							ni	نِ	ni
1457	123	d	3	نٖينٗ	nēno	neno							nēno	نٖينٗ	nēno
1444	122	d	1	كُونِ	kūni	kuni							kūni	كُونِ	kūni
1445	122	d	2	أُكِؤُتِلِيَ	ukiuṯiliya	ukiutiliya							ukiuṯiliya	أُكِؤُتِلِيَ	ukiuṯiliya
1458	123	d	4	بَايَ	bāya	baya							bāya	بَايَ	bāya
1451	123	c	1	نَ	na	na							na	نَ	na
1446	123	a	1	مٗوتٗ	mōṯo	moto							mōṯo	مٗوتٗ	mōṯo
1447	123	a	2	كِتٗتِيوَ	kiṯoṯı̄wa	kitotiwa							kiṯoṯı̄wa	كِتٗتِيوَ	kiṯoṯı̄wa
1448	123	a	3	كُونِ	kūni	kuni							kūni	كُونِ	kūni
1452	123	c	2	أُتٖيسِ	uṯēsi	utesi							uṯēsi	أُتٖيسِ	uṯēsi
1453	123	c	3	وَ	wa	wa							wa	وَ	wa
1454	123	c	4	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
1465	124	b	4	أُسٖيمِ	usēmi	usemi							usēmi	أُسٖيمِ	usēmi
1467	124	c	2	هَيَكٗومِ	hayakōmi	hayakomi							hayakōmi	هَيَكٗومِ	hayakōmi
1462	124	b	1	سِيوٖ	sı̄we	siwe							sı̄we	سِيوٖ	sı̄we
1463	124	b	2	نَ	na	na							na	نَ	na
1464	124	b	3	مْوِينْڠِ	mwı̄ngi	mwingi							mwı̄ngi	مْوِينْڠِ	mwı̄ngi
1459	124	a	1	زِوِيَ	ziwiya	ziwiya							ziwiya	زِوِيَ	ziwiya
1460	124	a	2	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
1461	124	a	3	أُلِيمِ	ulı̄mi	ulimi							ulı̄mi	أُلِيمِ	ulı̄mi
1471	125	a	2	نَ	na	na							na	نَ	na
1466	124	c	1	أُكِنٖينَ	ukinēna	ukinena							ukinēna	أُكِنٖينَ	ukinēna
1469	124	d	2	هُئٖنْدٖلٖيَ	huenḏeleya	huendeleya							huenḏeleya	هُئٖنْدٖلٖيَ	huenḏeleya
1468	124	d	1	مَنٖينٗ	manēno	maneno							manēno	مَنٖينٗ	manēno
1472	125	a	3	كُئِكُكُوسَ	kuikukūsa	kuikukusa							kuikukūsa	كُئِكُكُوسَ	kuikukūsa
1474	125	b	2	كُتٗتَپَاسَ	kuṯoṯapāsa	kutotapasa							kuṯoṯapāsa	كُتٗتَپَاسَ	kuṯoṯapāsa
1470	125	a	1	زِيدِ	zı̄ḏi	zidi							zı̄ḏi	زِيدِ	zı̄ḏi
1476	125	c	2	زٖينُ	zēnu	zenu							zēnu	زٖينُ	zēnu
1473	125	b	1	أُلِيمِ	ulı̄mi	ulimi							ulı̄mi	أُلِيمِ	ulı̄mi
1477	125	c	3	زِتَكْوِيسَ	ziṯakwı̄sa	zitakwisa							ziṯakwı̄sa	زِتَكْوِيسَ	ziṯakwı̄sa
1475	125	c	1	زِيتَ	zı̄ṯa	zita							zı̄ṯa	زِيتَ	zı̄ṯa
1478	125	d	1	مٗوتٗ	mōṯo	moto							mōṯo	مٗوتٗ	mōṯo
1479	125	d	2	مَايِ	māyi	mayi							māyi	مَايِ	māyi
1480	125	d	3	هُتَتِيَ	huṯaṯiya	hutatiya							huṯaṯiya	هُتَتِيَ	huṯaṯiya
1511	128	b	1	كِؤُومْبٖ	kiūmbe	kiumbe							kiūmbe	كِؤُومْبٖ	kiūmbe
1512	128	b	2	كَمِيلِ	kamı̄li	kamili							kamı̄li	كَمِيلِ	kamı̄li
1481	126	a	1	نَ	na	na							na	نَ	na
1482	126	a	2	أَالٗ	ālo	alo							ālo	أَالٗ	ālo
1483	126	a	3	مُومٖ	mūme	mume							mūme	مُومٖ	mūme
1484	126	a	4	هٗدَارِ	hoḏāri	hodari							hoḏāri	هٗدَارِ	hoḏāri
1513	128	b	3	سَانَ	sāna	sana							sāna	سَانَ	sāna
1485	126	b	1	كِشِنْدوَ	kishinḏwa	kishindwa							kishinḏwa	كِشِنْدوَ	kishinḏwa
1486	126	b	2	يٖيٖ	yeye	yeye							yeye	يٖيٖ	yeye
1487	126	b	3	هُكِيرِ	hukı̄ri	hukiri							hukı̄ri	هُكِيرِ	hukı̄ri
1488	126	c	1	إِيلِ	ı̄li	ili							ı̄li	إِيلِ	ı̄li
1489	126	c	2	كْوٖپُوكَ	kwepūka	kwepuka							kwepūka	كْوٖپُوكَ	kwepūka
1490	126	c	3	دٗثَارِ	ḏothāri	dothari							ḏothāri	دٗثَارِ	ḏothāri
1542	130	d	1	هُزِدِيَانَ	huziḏiyāna	huzidiyana							huziḏiyāna	هُزِدِيَانَ	huziḏiyāna
1514	128	c	1	نَ	na	na							na	نَ	na
1515	128	c	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
1516	128	c	3	هُتُكُوَانَ	huṯukuwāna	hutukuwana							huṯukuwāna	هُتُكُوَانَ	huṯukuwāna
1491	126	d	1	يَ	ya	ya							ya	يَ	ya
1492	126	d	2	أُوفَ	ūfa	ufa							ūfa	أُوفَ	ūfa
1493	126	d	3	سِينِ	sı̄ni	sini							sı̄ni	سِينِ	sı̄ni
1494	126	d	4	كُتِيَ	kuṯiya	kutiya							kuṯiya	كُتِيَ	kuṯiya
1495	127	a	1	سِينِ	sı̄ni	sini							sı̄ni	سِينِ	sı̄ni
1496	127	a	2	إِكِنْڠِيَ	ikingiya	ikingiya							ikingiya	إِكِنْڠِيَ	ikingiya
1497	127	a	3	أُوفَ	ūfa	ufa							ūfa	أُوفَ	ūfa
1543	130	d	2	توَبِيَ	ṯwabiya	twabiya							ṯwabiya	توَبِيَ	ṯwabiya
1498	127	b	1	هُپُنْڠُوَ	hupunguwa	hupunguwa							hupunguwa	هُپُنْڠُوَ	hupunguwa
1499	127	b	2	زَاكٖ	zāke	zake							zāke	زَاكٖ	zāke
1500	127	b	3	سِيفَ	sı̄fa	sifa							sı̄fa	سِيفَ	sı̄fa
1517	128	d	1	نْدِيپٗ	nḏı̄po	ndipo							nḏı̄po	نْدِيپٗ	nḏı̄po
1518	128	d	2	وَئِيشِ	waı̄shi	waishi							waı̄shi	وَئِيشِ	waı̄shi
1519	128	d	3	پَمٗويَ	pamōya	pamoya							pamōya	پَمٗويَ	pamōya
1501	127	c	1	نَ	na	na							na	نَ	na
1502	127	c	2	مَهَابَ	mahāba	mahaba							mahāba	مَهَابَ	mahāba
1503	127	c	3	نَايٗ	nāyo	nayo							nāyo	نَايٗ	nāyo
1504	127	c	4	هُوفَ	hūfa	hufa							hūfa	هُوفَ	hūfa
1531	130	a	1	أَاسٗ	āso	aso							āso	أَاسٗ	āso
1505	127	d	1	أُكِيوَ	ukı̄wa	ukiwa							ukı̄wa	أُكِيوَ	ukı̄wa
1506	127	d	2	مْوِينْڠِ	mwı̄ngi	mwingi							mwı̄ngi	مْوِينْڠِ	mwı̄ngi
1507	127	d	3	أُذِيَ	udhiya	udhiya							udhiya	أُذِيَ	udhiya
1532	130	a	2	تَاءَ	ṯāa	taa							ṯāa	تَاءَ	ṯāa
1533	130	a	3	نِ	ni	ni							ni	نِ	ni
1520	129	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1508	128	a	1	هَكُونَ	hakūna	hakuna							hakūna	هَكُونَ	hakūna
1509	128	a	2	كَاتُ	kāṯu	katu							kāṯu	كَاتُ	kāṯu
1510	128	a	3	هَكُونَ	hakūna	hakuna							hakūna	هَكُونَ	hakūna
1521	129	a	2	لَزِيمَ	lazı̄ma	lazima							lazı̄ma	لَزِيمَ	lazı̄ma
1522	129	a	3	وَتَاكَ	waṯāka	wataka							waṯāka	وَتَاكَ	waṯāka
1534	130	a	4	تٗمٗومٗ	ṯomōmo	tomomo							ṯomōmo	تٗمٗومٗ	ṯomōmo
1523	129	b	1	مْكٖ	mke	mke							mke	مْكٖ	mke
1524	129	b	2	أَلٗكَمِلِيكَ	alokamilı̄ka	alokamilika							alokamilı̄ka	أَلٗكَمِلِيكَ	alokamilı̄ka
1554	132	a	2	يَ	ya	ya							ya	يَ	ya
1525	129	c	1	جُوَ	juwa	juwa							juwa	جُوَ	juwa
1526	129	c	2	نَ	na	na							na	نَ	na
1527	129	c	3	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
1528	129	c	4	هَكِيكَ	hakı̄ka	hakika							hakı̄ka	هَكِيكَ	hakı̄ka
1555	132	a	3	جٗونْڠٗ	jōngo	jongo							jōngo	جٗونْڠٗ	jōngo
1544	131	a	1	مْكٖ	mke	mke							mke	مْكٖ	mke
1529	129	d	1	تَكُبِيدِ	ṯakubı̄ḏi	takubidi							ṯakubı̄ḏi	تَكُبِيدِ	ṯakubı̄ḏi
1545	131	a	2	كِكُكَسِرِيشَ	kikukasirı̄sha	kikukasirisha							kikukasirı̄sha	كِكُكَسِرِيشَ	kikukasirı̄sha
1535	130	b	1	هُونُ	hūnu	hunu							hūnu	هُونُ	hūnu
1536	130	b	2	نِ	ni	ni							ni	نِ	ni
1537	130	b	3	كْوٖيلِ	kwēli	kweli							kwēli	كْوٖيلِ	kwēli
1538	130	b	4	مْسٖيمٗ	msēmo	msemo							msēmo	مْسٖيمٗ	msēmo
1550	131	d	1	مٖزَانِ	mezāni	mezani							mezāni	مٖزَانِ	mezāni
1539	130	c	1	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
1540	130	c	2	هُپِتَانَ	hupiṯāna	hupitana							hupiṯāna	هُپِتَانَ	hupiṯāna
1541	130	c	3	زِيمٗ	zı̄mo	zimo							zı̄mo	زِيمٗ	zı̄mo
1551	131	d	2	هِينِ	hı̄ni	hini							hı̄ni	هِينِ	hı̄ni
1552	131	d	3	تُمِيَ	ṯumiya	tumiya							ṯumiya	تُمِيَ	ṯumiya
1546	131	b	1	جَرِيبُ	jarı̄bu	jaribu							jarı̄bu	جَرِيبُ	jarı̄bu
1547	131	b	2	كُيِكُمْبُوشَ	kuyikumbūsha	kuyikumbusha							kuyikumbūsha	كُيِكُمْبُوشَ	kuyikumbūsha
1548	131	c	1	پِيَ	piya	piya							piya	پِيَ	piya
1549	131	c	2	هُكُفُرَهِيشَ	hukufurahı̄sha	hukufurahisha							hukufurahı̄sha	هُكُفُرَهِيشَ	hukufurahı̄sha
1561	132	c	2	پٖينْيٖ	pēnye	penye							pēnye	پٖينْيٖ	pēnye
1556	132	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1553	132	a	1	أُسِيَؤٗونٖ	usiyaōne	usiyaone							usiyaōne	أُسِيَؤٗونٖ	usiyaōne
1562	132	c	3	پٖينْڠٗ	pēngo	pengo							pēngo	پٖينْڠٗ	pēngo
1564	132	d	2	پَلٗتِمِيَ	paloṯimiya	palotimiya							paloṯimiya	پَلٗتِمِيَ	paloṯimiya
1560	132	c	1	سَنْڠَلِيٖ	sangaliye	sangaliye							sangaliye	سَنْڠَلِيٖ	sangaliye
1557	132	b	2	مٖيمَ	mēma	mema							mēma	مٖيمَ	mēma
1558	132	b	3	أُكَاوَ	ukāwa	ukawa							ukāwa	أُكَاوَ	ukāwa
1559	132	b	4	تٗونْڠٗ	ṯōngo	tongo							ṯōngo	تٗونْڠٗ	ṯōngo
1566	133	a	2	بُودِ	būḏi	budi							būḏi	بُودِ	būḏi
1563	132	d	1	كَوَاتَ	kawāṯa	kawata							kawāṯa	كَوَاتَ	kawāṯa
1567	133	a	3	كُپُؤُوزَ	kupuūza	kupuuza							kupuūza	كُپُؤُوزَ	kupuūza
1569	133	b	2	مَنْڠِينٖ	mangı̄ne	mangine							mangı̄ne	مَنْڠِينٖ	mangı̄ne
1565	133	a	1	هُونَ	hūna	huna							hūna	هُونَ	hūna
1570	133	b	3	كُيَمِيزَ	kuyamı̄za	kuyamiza							kuyamı̄za	كُيَمِيزَ	kuyamı̄za
1568	133	b	1	نَ	na	na							na	نَ	na
1571	133	c	1	نْدِيپٗ	nḏı̄po	ndipo							nḏı̄po	نْدِيپٗ	nḏı̄po
1572	133	c	2	مُوٖيزٖ	muwēze	muweze							muwēze	مُوٖيزٖ	muwēze
1573	133	c	3	كُفُوزَ	kufūza	kufuza							kufūza	كُفُوزَ	kufūza
1601	136	b	1	هَؤُكِيرِ	haukı̄ri	haukiri							haukı̄ri	هَؤُكِيرِ	haukı̄ri
1602	136	b	2	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
1603	136	b	3	أُوتُ	ūṯu	utu							ūṯu	أُوتُ	ūṯu
1574	133	d	1	نَ	na	na							na	نَ	na
1575	133	d	2	مَئِيشَ	maı̄sha	maisha							maı̄sha	مَئِيشَ	maı̄sha
1576	133	d	3	كْوٖنْدٖلٖيَ	kwenḏeleya	kwendeleya							kwenḏeleya	كْوٖنْدٖلٖيَ	kwenḏeleya
1577	134	a	1	مْكٖ	mke	mke							mke	مْكٖ	mke
1578	134	a	2	كِتٖينْدَ	kiṯēnḏa	kitenda							kiṯēnḏa	كِتٖينْدَ	kiṯēnḏa
1579	134	a	3	مَكٗوسَ	makōsa	makosa							makōsa	مَكٗوسَ	makōsa
1632	138	d	1	مَنْڠِينٖ	mangı̄ne	mangine							mangı̄ne	مَنْڠِينٖ	mangı̄ne
1580	134	b	1	كُمْوَمْبِيَ	kumwambiya	kumwambiya							kumwambiya	كُمْوَمْبِيَ	kumwambiya
1581	134	b	2	يَكُپَاسَ	yakupāsa	yakupasa							yakupāsa	يَكُپَاسَ	yakupāsa
1633	138	d	2	كُڤُمِلِيَ	kuvumiliya	kuvumiliya							kuvumiliya	كُڤُمِلِيَ	kuvumiliya
1604	136	c	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
1605	136	c	2	هُتٖنْڠٖيزِ	huṯengēzi	hutengezi							huṯengēzi	هُتٖنْڠٖيزِ	huṯengēzi
1606	136	c	3	كِيتُ	kı̄ṯu	kitu							kı̄ṯu	كِيتُ	kı̄ṯu
1582	134	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1583	134	c	2	هِشِيمَ	hishı̄ma	hishima							hishı̄ma	هِشِيمَ	hishı̄ma
1584	134	c	3	نَ	na	na							na	نَ	na
1585	134	c	4	سِيَاسَ	siyāsa	siyasa							siyāsa	سِيَاسَ	siyāsa
1586	134	d	1	نَ	na	na							na	نَ	na
1587	134	d	2	هِكِيمَ	hikı̄ma	hikima							hikı̄ma	هِكِيمَ	hikı̄ma
1588	134	d	3	كُتُمِيَ	kuṯumiya	kutumiya							kuṯumiya	كُتُمِيَ	kuṯumiya
1622	137	d	1	نْدِيپٗ	nḏı̄po	ndipo							nḏı̄po	نْدِيپٗ	nḏı̄po
1589	135	a	1	كٗوسَ	kōsa	kosa							kōsa	كٗوسَ	kōsa
1590	135	a	2	كُلِسَهِهِيشَ	kulisahihı̄sha	kulisahihisha							kulisahihı̄sha	كُلِسَهِهِيشَ	kulisahihı̄sha
1623	137	d	2	أَتَكُسِكِيَ	aṯakusikiya	atakusikiya							aṯakusikiya	أَتَكُسِكِيَ	aṯakusikiya
1591	135	b	1	پٖينْيٖ	pēnye	penye							pēnye	پٖينْيٖ	pēnye
1592	135	b	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
1593	135	b	3	هُجٖرٖيشَ	hujerēsha	hujeresha							hujerēsha	هُجٖرٖيشَ	hujerēsha
1607	136	d	1	بَالِ	bāli	bali							bāli	بَالِ	bāli
1608	136	d	2	نِ	ni	ni							ni	نِ	ni
1594	135	c	1	إِپِينْدٖ	ipı̄nḏe	ipinde							ipı̄nḏe	إِپِينْدٖ	ipı̄nḏe
1595	135	c	2	كُپُرُكُوشَ	kupurukūsha	kupurukusha							kupurukūsha	كُپُرُكُوشَ	kupurukūsha
1609	136	d	3	كِنْيُومٖ	kinyūme	kinyume							kinyūme	كِنْيُومٖ	kinyūme
1610	136	d	4	هُويَ	hūya	huya							hūya	هُويَ	hūya
1596	135	d	1	فَرَاغَ	farāḡa	faragha							farāḡa	فَرَاغَ	farāḡa
1597	135	d	2	كُئِزٖنْڠٖيَ	kuizengeya	kuizengeya							kuizengeya	كُئِزٖنْڠٖيَ	kuizengeya
1598	136	a	1	سِمْوَمْبِيٖ	simwambiye	simwambiye							simwambiye	سِمْوَمْبِيٖ	simwambiye
1599	136	a	2	پٖينْيٖ	pēnye	penye							pēnye	پٖينْيٖ	pēnye
1600	136	a	3	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
1624	138	a	1	مْوَنَأَدَامُ	mwanaaḏāmu	mwanaadamu							mwanaaḏāmu	مْوَنَأَدَامُ	mwanaaḏāmu
1611	137	a	1	كُمْسِيفُ	kumsı̄fu	kumsifu							kumsı̄fu	كُمْسِيفُ	kumsı̄fu
1612	137	a	2	نِ	ni	ni							ni	نِ	ni
1613	137	a	3	أُزُورِ	uzūri	uzuri							uzūri	أُزُورِ	uzūri
1625	138	a	2	كُكٗوسَ	kukōsa	kukosa							kukōsa	كُكٗوسَ	kukōsa
1614	137	b	1	پٖينْيٖ	pēnye	penye							pēnye	پٖينْيٖ	pēnye
1615	137	b	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
1616	137	b	3	نَ	na	na							na	نَ	na
1617	137	b	4	ذَهِيرِ	dhahı̄ri	dhahiri							dhahı̄ri	ذَهِيرِ	dhahı̄ri
1650	140	b	3	سِيرِ	sı̄ri	siri							sı̄ri	سِيرِ	sı̄ri
1640	139	c	1	هَلِپٖلٖيكِ	halipelēki	halipeleki							halipelēki	هَلِپٖلٖيكِ	halipelēki
1641	139	c	2	كِشٗوڠٗ	kishōgo	kishogo							kishōgo	كِشٗوڠٗ	kishōgo
1618	137	c	1	كُلَؤُومُ	kulaūmu	kulaumu							kulaūmu	كُلَؤُومُ	kulaūmu
1619	137	c	2	نِ	ni	ni							ni	نِ	ni
1634	139	a	1	لِسَمٖيهٖ	lisamēhe	lisamehe							lisamēhe	لِسَمٖيهٖ	lisamēhe
1626	138	b	1	نِ	ni	ni							ni	نِ	ni
1627	138	b	2	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
1628	138	b	3	لِمٖتُپَاسَ	limeṯupāsa	limetupasa							limeṯupāsa	لِمٖتُپَاسَ	limeṯupāsa
1635	139	a	2	كٗوسَ	kōsa	kosa							kōsa	كٗوسَ	kōsa
1636	139	a	3	دٗوڠٗ	ḏōgo	dogo							ḏōgo	دٗوڠٗ	ḏōgo
1629	138	c	1	نِ	ni	ni							ni	نِ	ni
1630	138	c	2	سَاوَ	sāwa	sawa							sāwa	سَاوَ	sāwa
1631	138	c	3	كُيِكُكُوسَ	kuyikukūsa	kuyikukusa							kuyikukūsa	كُيِكُكُوسَ	kuyikukūsa
1651	140	b	4	زَ	za	za							za	زَ	za
1652	140	b	5	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
1637	139	b	1	كٗوسَ	kōsa	kosa							kōsa	كٗوسَ	kōsa
1638	139	b	2	لِكِيوَ	likı̄wa	likiwa							likı̄wa	لِكِيوَ	likı̄wa
1639	139	b	3	مزِيڠٗ	mzı̄go	mzigo							mzı̄go	مزِيڠٗ	mzı̄go
1645	140	a	1	تَفَؤُوتِ	ṯafaūṯi	tafauti							ṯafaūṯi	تَفَؤُوتِ	ṯafaūṯi
1646	140	a	2	زَ	za	za							za	زَ	za
1642	139	d	1	زٖنْڠٖيَ	zengeya	zengeya							zengeya	زٖنْڠٖيَ	zengeya
1643	139	d	2	نْيٖنْڠِينٖ	nyengı̄ne	nyengine							nyengı̄ne	نْيٖنْڠِينٖ	nyengı̄ne
1644	139	d	3	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
1647	140	a	3	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
1654	140	c	2	هَذِرَانِ	hadhirāni	hadhirani							hadhirāni	هَذِرَانِ	hadhirāni
1648	140	b	1	زِيوٖ	zı̄we	ziwe							zı̄we	زِيوٖ	zı̄we
1649	140	b	2	نِ	ni	ni							ni	نِ	ni
1656	140	d	2	وَكَزِسِكِيَ	wakazisikiya	wakazisikiya							wakazisikiya	وَكَزِسِكِيَ	wakazisikiya
1653	140	c	1	سِزِتٗوٖ	siziṯowe	sizitowe							siziṯowe	سِزِتٗوٖ	siziṯowe
1658	141	a	2	زَ	za	za							za	زَ	za
1655	140	d	1	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
1659	141	a	3	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
1660	141	a	4	زِبَانٖ	zibāne	zibane							zibāne	زِبَانٖ	zibāne
1657	141	a	1	سِيرِ	sı̄ri	siri							sı̄ri	سِيرِ	sı̄ri
1661	141	b	1	أُسِمْوَمْبِيٖ	usimwambiye	usimwambiye							usimwambiye	أُسِمْوَمْبِيٖ	usimwambiye
1662	141	b	2	مْنْڠِينٖ	mngı̄ne	mngine							mngı̄ne	مْنْڠِينٖ	mngı̄ne
1691	144	a	2	سِيرِ	sı̄ri	siri							sı̄ri	سِيرِ	sı̄ri
1692	144	a	3	زَ	za	za							za	زَ	za
1693	144	a	4	سِيرِ	sı̄ri	siri							sı̄ri	سِيرِ	sı̄ri
1663	141	c	1	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
1664	141	c	2	نَ	na	na							na	نَ	na
1665	141	c	3	يٖيٖ	yeye	yeye							yeye	يٖيٖ	yeye
1666	141	c	4	مُنٖينٖ	munēne	munene							munēne	مُنٖينٖ	munēne
1667	141	d	1	سُلُهِيشٗ	suluhı̄sho	suluhisho							suluhı̄sho	سُلُهِيشٗ	suluhı̄sho
1668	141	d	2	كُزٖنْڠٖيَ	kuzengeya	kuzengeya							kuzengeya	كُزٖنْڠٖيَ	kuzengeya
1731	147	a	4	هٗدَارِ	hoḏāri	hodari							hoḏāri	هٗدَارِ	hoḏāri
1723	146	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1669	142	a	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
1670	142	a	2	مُكِكٗوسَ	mukikōsa	mukikosa							mukikōsa	مُكِكٗوسَ	mukikōsa
1671	142	a	3	بُودِ	būḏi	budi							būḏi	بُودِ	būḏi
1694	144	b	1	كُنٖينَ	kunēna	kunena							kunēna	كُنٖينَ	kunēna
1695	144	b	2	نِ	ni	ni							ni	نِ	ni
1672	142	b	1	كُنٖينَ	kunēna	kunena							kunēna	كُنٖينَ	kunēna
1673	142	b	2	إِكَوَبِيدِ	ikawabı̄ḏi	ikawabidi							ikawabı̄ḏi	إِكَوَبِيدِ	ikawabı̄ḏi
1696	144	b	3	كُؤَذِيرِ	kuadhı̄ri	kuadhiri							kuadhı̄ri	كُؤَذِيرِ	kuadhı̄ri
1674	142	c	1	وَزٖئٖ	wazee	wazee							wazee	وَزٖئٖ	wazee
1675	142	c	2	وَوَسَئِيدِ	wawasaı̄ḏi	wawasaidi							wawasaı̄ḏi	وَوَسَئِيدِ	wawasaı̄ḏi
1712	145	c	1	هَايٗ	hāyo	hayo							hāyo	هَايٗ	hāyo
1676	142	d	1	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
2450	208	d	1	نَ	na	na							na	نَ	na
1677	142	d	2	هَئِيوِ	haı̄wi	haiwi							haı̄wi	هَئِيوِ	haı̄wi
1678	142	d	3	هَتِيَ	haṯiya	hatiya							haṯiya	هَتِيَ	haṯiya
1713	145	c	2	مُوٖ	muwe	muwe							muwe	مُوٖ	muwe
1714	145	c	3	هَمُنٖينِ	hamunēni	hamuneni							hamunēni	هَمُنٖينِ	hamunēni
1679	143	a	1	تَفَؤُوتِ	ṯafaūṯi	tafauti							ṯafaūṯi	تَفَؤُوتِ	ṯafaūṯi
1680	143	a	2	إِكِزُوكَ	ikizūka	ikizuka							ikizūka	إِكِزُوكَ	ikizūka
1697	144	c	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
1698	144	c	2	إِيوٖ	ı̄we	iwe							ı̄we	إِيوٖ	ı̄we
1699	144	c	3	دَكِتَارِ	ḏakiṯāri	dakitari							ḏakiṯāri	دَكِتَارِ	ḏakiṯāri
1681	143	b	1	نِ	ni	ni							ni	نِ	ni
1682	143	b	2	مِكٗونٗ	mikōno	mikono							mikōno	مِكٗونٗ	mikōno
1683	143	b	3	كُيَنْدِيكَ	kuyanḏı̄ka	kuyandika							kuyanḏı̄ka	كُيَنْدِيكَ	kuyanḏı̄ka
1684	143	c	1	يُؤَ	yua	yua							yua	يُؤَ	yua
1685	143	c	2	نْدٖ	nḏe	nde							nḏe	نْدٖ	nḏe
1686	143	c	3	إِكِتٗوكَ	ikiṯōka	ikitoka							ikiṯōka	إِكِتٗوكَ	ikiṯōka
1700	144	d	1	سُؤَالِ	suāli	suali							suāli	سُؤَالِ	suāli
1701	144	d	2	مٖوَتَئِيَ	mewaṯaiya	mewataiya							mewaṯaiya	مٖوَتَئِيَ	mewaṯaiya
1687	143	d	1	هُزُوَ	huzuwa	huzuwa							huzuwa	هُزُوَ	huzuwa
1688	143	d	2	نْيِينْڠِ	nı̄ı̄ngi	nyingi							nı̄ı̄ngi	نْيِينْڠِ	nı̄ı̄ngi
1689	143	d	3	بَلَايَ	balāya	balaya							balāya	بَلَايَ	balāya
1724	146	c	2	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
1725	146	c	3	سِتٗوَكَانْيَ	siṯowakānya	sitowakanya							siṯowakānya	سِتٗوَكَانْيَ	siṯowakānya
1715	145	d	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
1716	145	d	2	يَكِوَئِمٖيَ	yakiwaimeya	yakiwaimeya							yakiwaimeya	يَكِوَئِمٖيَ	yakiwaimeya
1702	145	a	1	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
1703	145	a	2	يَ	ya	ya							ya	يَ	ya
1704	145	a	3	تِينِ	ṯı̄ni	tini							ṯı̄ni	تِينِ	ṯı̄ni
1705	145	a	4	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1706	145	a	5	تِينِ	ṯı̄ni	tini							ṯı̄ni	تِينِ	ṯı̄ni
1717	146	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1718	146	a	2	مْنٗ	mno	mno							mno	مْنٗ	mno
1719	146	a	3	مٖوَڠَانْيَ	mewagānya	mewaganya							mewagānya	مٖوَڠَانْيَ	mewagānya
1707	145	b	1	يَاوٖ	yāwe	yawe							yāwe	يَاوٖ	yāwe
1708	145	b	2	نِ	ni	ni							ni	نِ	ni
1709	145	b	3	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
1710	145	b	4	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1711	145	b	5	نْدَانِ	nḏāni	ndani							nḏāni	نْدَانِ	nḏāni
1726	146	d	1	أُشَؤُورِ	ushaūri	ushauri							ushaūri	أُشَؤُورِ	ushaūri
1727	146	d	2	كُزٖنْڠٖيَ	kuzengeya	kuzengeya							kuzengeya	كُزٖنْڠٖيَ	kuzengeya
1720	146	b	1	مُكَشِنْدوَ	mukashinḏwa	mukashindwa							mukashinḏwa	مُكَشِنْدوَ	mukashinḏwa
1721	146	b	2	لَ	la	la							la	لَ	la
1722	146	b	3	كُفَانْيَ	kufānya	kufanya							kufānya	كُفَانْيَ	kufānya
1736	147	c	2	أُسِتَهَيَارِ	usiṯahayāri	usitahayari							usiṯahayāri	أُسِتَهَيَارِ	usiṯahayāri
1732	147	b	1	نَ	na	na							na	نَ	na
1728	147	a	1	نِ	ni	ni							ni	نِ	ni
1729	147	a	2	بٗورَ	bōra	bora							bōra	بٗورَ	bōra
1730	147	a	3	أُوٖ	uwe	uwe							uwe	أُوٖ	uwe
1733	147	b	2	كُشِنْدوَ	kushinḏwa	kushindwa							kushinḏwa	كُشِنْدوَ	kushinḏwa
1734	147	b	3	أُسِكِيرِ	usikı̄ri	usikiri							usikı̄ri	أُسِكِيرِ	usikı̄ri
1739	147	d	3	كُتُمِيَ	kuṯumiya	kutumiya							kuṯumiya	كُتُمِيَ	kuṯumiya
1735	147	c	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
1745	148	b	2	وَ	wa	wa							wa	وَ	wa
1737	147	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1738	147	d	2	هَلَالِ	halāli	halali							halāli	هَلَالِ	halāli
1742	148	a	3	هِيكٗ	hı̄ko	hiko							hı̄ko	هِيكٗ	hı̄ko
1743	148	a	4	كِتٖينْدٗ	kiṯēnḏo	kitendo							kiṯēnḏo	كِتٖينْدٗ	kiṯēnḏo
1746	148	b	3	هَلَالِ	halāli	halali							halāli	هَلَالِ	halāli
1740	148	a	1	نِ	ni	ni							ni	نِ	ni
1741	148	a	2	هِيكٗ	hı̄ko	hiko							hı̄ko	هِيكٗ	hı̄ko
1747	148	b	4	مْوٖينْدٗ	mwēnḏo	mwendo							mwēnḏo	مْوٖينْدٗ	mwēnḏo
1749	148	c	2	إِوٖيكٖ	iwēke	iweke							iwēke	إِوٖيكٖ	iwēke
1744	148	b	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1750	148	c	3	كَانْدٗ	kānḏo	kando							kānḏo	كَانْدٗ	kānḏo
1831	155	d	2	نْيٗوتٖ	nyōṯe	nyote							nyōṯe	نْيٗوتٖ	nyōṯe
1752	148	d	2	كُتٗكَرِبِيَ	kuṯokaribiya	kutokaribiya							kuṯokaribiya	كُتٗكَرِبِيَ	kuṯokaribiya
1748	148	c	1	هَرَامُ	harāmu	haramu							harāmu	هَرَامُ	harāmu
1751	148	d	1	كَاتُ	kāṯu	katu							kāṯu	كَاتُ	kāṯu
1828	155	c	2	هَتَاكِ	haṯāki	hataki							haṯāki	هَتَاكِ	haṯāki
1755	149	a	3	سِمْڠُوسٖ	simgūse	simguse							simgūse	سِمْڠُوسٖ	simgūse
1815	154	c	1	هُتَاكِ	huṯāki	hutaki							huṯāki	هُتَاكِ	huṯāki
1784	151	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1756	149	b	1	كِمُؤٗونَ	kimuōna	kimuona							kimuōna	كِمُؤٗونَ	kimuōna
1757	149	b	2	إِڠٖڠٖيسٖ	igegēse	igegese							igegēse	إِڠٖڠٖيسٖ	igegēse
1785	151	d	2	هَايَ	hāya	haya							hāya	هَايَ	hāya
1786	151	d	3	نِمٖزٗتَايَ	nimezoṯāya	nimezotaya							nimezoṯāya	نِمٖزٗتَايَ	nimezoṯāya
1758	149	c	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
1759	149	c	2	نْيَنْڠوَانِ	nyangwāni	nyangwani							nyangwāni	نْيَنْڠوَانِ	nyangwāni
1760	149	c	3	مْپِيسٖ	mpı̄se	mpise							mpı̄se	مْپِيسٖ	mpı̄se
1816	154	c	2	ڠٖؤُوكَ	geūka	geuka							geūka	ڠٖؤُوكَ	geūka
1804	153	c	1	مْوٖينْدٗ	mwēnḏo	mwendo							mwēnḏo	مْوٖينْدٗ	mwēnḏo
1761	149	d	1	سَنْدَمَانٖ	sanḏamāne	sandamane							sanḏamāne	سَنْدَمَانٖ	sanḏamāne
1762	149	d	2	نَايٖ	nāye	naye							nāye	نَايٖ	nāye
1763	149	d	3	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
1787	152	a	1	مْكٖؤٗ	mkeo	mkeo							mkeo	مْكٖؤٗ	mkeo
1788	152	a	2	مْتٗشٖلٖيزٖ	mṯoshelēze	mtosheleze							mṯoshelēze	مْتٗشٖلٖيزٖ	mṯoshelēze
1764	150	a	1	أُسٖينْدٖ	usēnḏe	usende							usēnḏe	أُسٖينْدٖ	usēnḏe
1765	150	a	2	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
1766	150	a	3	كَرِيبُ	karı̄bu	karibu							karı̄bu	كَرِيبُ	karı̄bu
1805	153	c	2	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1767	150	b	1	إٖپُوكَ	epūka	epuka							epūka	إٖپُوكَ	epūka
1768	150	b	2	هِيزٗ	hı̄zo	hizo							hı̄zo	هِيزٗ	hı̄zo
1769	150	b	3	إِقَابُ	iqābu	iqabu							iqābu	إِقَابُ	iqābu
1806	153	c	3	هَمَلِيزِ	hamalı̄zi	hamalizi							hamalı̄zi	هَمَلِيزِ	hamalı̄zi
1789	152	b	1	هَاجَ	hāja	haja							hāja	هَاجَ	hāja
1770	150	c	1	أُتَپَاتَ	uṯapāṯa	utapata							uṯapāṯa	أُتَپَاتَ	uṯapāṯa
1771	150	c	2	نَ	na	na							na	نَ	na
1772	150	c	3	ثَوَابُ	thawābu	thawabu							thawābu	ثَوَابُ	thawābu
1790	152	b	2	يَاكٖ	yāke	yake							yāke	يَاكٖ	yāke
1791	152	b	3	أَمَلِيزٖ	amalı̄ze	amalize							amalı̄ze	أَمَلِيزٖ	amalı̄ze
1773	150	d	1	مْكٖؤٗ	mkeo	mkeo							mkeo	مْكٖؤٗ	mkeo
1774	150	d	2	كُمْنْڠِلِيَ	kumngiliya	kumngiliya							kumngiliya	كُمْنْڠِلِيَ	kumngiliya
1775	151	a	1	إٖلٖيوَ	elēwa	elewa							elēwa	إٖلٖيوَ	elēwa
1776	151	a	2	سَانَ	sāna	sana							sāna	سَانَ	sāna
1777	151	a	3	إٖلٖيوَ	elēwa	elewa							elēwa	إٖلٖيوَ	elēwa
1817	154	c	3	نْيُومَ	nyūma	nyuma							nyūma	نْيُومَ	nyūma
1778	151	b	1	نِ	ni	ni							ni	نِ	ni
1779	151	b	2	جُكُومُ	jukūmu	jukumu							jukūmu	جُكُومُ	jukūmu
1780	151	b	3	أُمٖپٗوَ	umepowa	umepowa							umepowa	أُمٖپٗوَ	umepowa
1792	152	c	1	نَ	na	na							na	نَ	na
1793	152	c	2	شَؤُوكُ	shaūku	shauku							shaūku	شَؤُوكُ	shaūku
1794	152	c	3	أَسِسَازٖ	asisāze	asisaze							asisāze	أَسِسَازٖ	asisāze
1781	151	c	1	مْكٖؤٗ	mkeo	mkeo							mkeo	مْكٖؤٗ	mkeo
1782	151	c	2	كُمْوِيسَ	kumwı̄sa	kumwisa							kumwı̄sa	كُمْوِيسَ	kumwı̄sa
1783	151	c	3	نْڠٗوَ	ngowa	ngowa							ngowa	نْڠٗوَ	ngowa
1807	153	d	1	فَهَامُ	fahāmu	fahamu							fahāmu	فَهَامُ	fahāmu
1808	153	d	2	وَمْكٗسٖيَ	wamkoseya	wamkoseya							wamkoseya	وَمْكٗسٖيَ	wamkoseya
1795	152	d	1	مْپَارٗ	mpāro	mparo							mpāro	مْپَارٗ	mpāro
1796	152	d	2	أُكَمْوَتِيَ	ukamwaṯiya	ukamwatiya							ukamwaṯiya	أُكَمْوَتِيَ	ukamwaṯiya
1797	153	a	1	أٗنْڠٖيزَ	ongēza	ongeza							ongēza	أٗنْڠٖيزَ	ongēza
1798	153	a	2	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
1799	153	a	3	أُيُوزِ	uyūzi	uyuzi							uyūzi	أُيُوزِ	uyūzi
1829	155	c	3	ممٗوجَ	mmōja	mmoja							mmōja	ممٗوجَ	mmōja
1800	153	b	1	وَ	wa	wa							wa	وَ	wa
1801	153	b	2	كُفَانْيَ	kufānya	kufanya							kufānya	كُفَانْيَ	kufānya
1802	153	b	3	هِيٗ	hiyo	hiyo							hiyo	هِيٗ	hiyo
1803	153	b	4	كَازِ	kāzi	kazi							kāzi	كَازِ	kāzi
1809	154	a	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
1810	154	a	2	نِ	ni	ni							ni	نِ	ni
1811	154	a	3	كُؤُ	kuu	kuu							kuu	كُؤُ	kuu
1812	154	a	4	ذُلُومَ	dhulūma	dhuluma							dhulūma	ذُلُومَ	dhulūma
1824	155	b	1	مْنْڠٗوجٖ	mngōje	mngoje							mngōje	مْنْڠٗوجٖ	mngōje
1818	154	d	1	نَ	na	na							na	نَ	na
1813	154	b	1	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
1814	154	b	2	أُكِسَكُكٗومَ	ukisakukōma	ukisakukoma							ukisakukōma	أُكِسَكُكٗومَ	ukisakukōma
1825	155	b	2	مْوِيسٖ	mwı̄se	mwise							mwı̄se	مْوِيسٖ	mwı̄se
1826	155	b	3	پَمٗوجَ	pamōja	pamoja							pamōja	پَمٗوجَ	pamōja
1819	154	d	2	يٖيٖ	yeye	yeye							yeye	يٖيٖ	yeye
1820	154	d	3	كُمْنْڠٗجٖيَ	kumngojeya	kumngojeya							kumngojeya	كُمْنْڠٗجٖيَ	kumngojeya
1821	155	a	1	سِمَلِيزٖ	simalı̄ze	simalize							simalı̄ze	سِمَلِيزٖ	simalı̄ze
1822	155	a	2	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
1823	155	a	3	هَاجَ	hāja	haja							hāja	هَاجَ	hāja
1832	155	d	3	هُلِزٖنْڠٖيَ	hulizengeya	hulizengeya							hulizengeya	هُلِزٖنْڠٖيَ	hulizengeya
1827	155	c	1	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
1833	156	a	1	أَنْڠَلِيَ	angaliya	angaliya							angaliya	أَنْڠَلِيَ	angaliya
1834	156	a	2	أُفِكِيرِ	ufikı̄ri	ufikiri							ufikı̄ri	أُفِكِيرِ	ufikı̄ri
1830	155	d	1	نِ	ni	ni							ni	نِ	ni
1836	156	b	2	مْوٖينْدٗ	mwēnḏo	mwendo							mwēnḏo	مْوٖينْدٗ	mwēnḏo
1837	156	b	3	تَغَئِيرِ	ṯaḡaı̄ri	taghairi							ṯaḡaı̄ri	تَغَئِيرِ	ṯaḡaı̄ri
1839	156	c	2	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
1835	156	b	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1840	156	c	3	پٖينْيٖ	pēnye	penye							pēnye	پٖينْيٖ	pēnye
1841	156	c	4	بَنْدَارِ	banḏāri	bandari							banḏāri	بَنْدَارِ	banḏāri
1843	156	d	2	نَانْڠَ	nānga	nanga							nānga	نَانْڠَ	nānga
1838	156	c	1	نَ	na	na							na	نَ	na
1844	156	d	3	هُجَتِيَ	hujaṯiya	hujatiya							hujaṯiya	هُجَتِيَ	hujaṯiya
1842	156	d	1	بَادٗ	bāḏo	bado							bāḏo	بَادٗ	bāḏo
1845	157	a	1	أُتَكُوَ	uṯakuwa	utakuwa							uṯakuwa	أُتَكُوَ	uṯakuwa
1847	157	a	3	ڠَانِ	gāni	gani							gāni	ڠَانِ	gāni
1908	162	c	2	تٖينَ	ṯēna	tena							ṯēna	تٖينَ	ṯēna
1909	162	c	3	سَانَ	sāna	sana							sāna	سَانَ	sāna
1848	157	b	1	أُسِنْڠِيزِ	usingı̄zi	usingizi							usingı̄zi	أُسِنْڠِيزِ	usingı̄zi
1849	157	b	2	هُُؤٗونِ	huuōni	huuoni							huuōni	هُُؤٗونِ	huuōni
1897	161	c	1	نِ	ni	ni							ni	نِ	ni
1878	159	d	1	مْكٖ	mke	mke							mke	مْكٖ	mke
1850	157	c	1	هَالِ	hāli	hali							hāli	هَالِ	hāli
1851	157	c	2	هِيٗ	hiyo	hiyo							hiyo	هِيٗ	hiyo
1852	157	c	3	أُبَئِينِ	ubaı̄ni	ubaini							ubaı̄ni	أُبَئِينِ	ubaı̄ni
1879	159	d	2	نَ	na	na							na	نَ	na
1880	159	d	3	مُومٖ	mūme	mume							mūme	مُومٖ	mūme
1881	159	d	4	پَمٗويَ	pamōya	pamoya							pamōya	پَمٗويَ	pamōya
1853	157	d	1	نَ	na	na							na	نَ	na
1854	157	d	2	مْوٖينْدٗ	mwēnḏo	mwendo							mwēnḏo	مْوٖينْدٗ	mwēnḏo
1855	157	d	3	هُمُئِلِيَ	humuiliya	humuiliya							humuiliya	هُمُئِلِيَ	humuiliya
1856	158	a	1	أَتَكُوَ	aṯakuwa	atakuwa							aṯakuwa	أَتَكُوَ	aṯakuwa
1857	158	a	2	نَ	na	na							na	نَ	na
1858	158	a	3	مْتَارٗ	mṯāro	mtaro							mṯāro	مْتَارٗ	mṯāro
1898	161	c	2	مْكٖؤٗ	mkeo	mkeo							mkeo	مْكٖؤٗ	mkeo
1899	161	c	3	كِؤُذِيكَ	kiudhı̄ka	kiudhika							kiudhı̄ka	كِؤُذِيكَ	kiudhı̄ka
1882	160	a	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1883	160	a	2	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
1859	158	b	1	نَ	na	na							na	نَ	na
1860	158	b	2	ذِيكِ	dhı̄ki	dhiki							dhı̄ki	ذِيكِ	dhı̄ki
1861	158	b	3	مْنٗ	mno	mno							mno	مْنٗ	mno
1862	158	b	4	نَ	na	na							na	نَ	na
1863	158	b	5	كٖيرٗ	kēro	kero							kēro	كٖيرٗ	kēro
1884	160	a	3	مُكِتٗشَانَ	mukiṯoshāna	mukitoshana							mukiṯoshāna	مُكِتٗشَانَ	mukiṯoshāna
1864	158	c	1	نَ	na	na							na	نَ	na
1865	158	c	2	هَسِيرَ	hası̄ra	hasira							hası̄ra	هَسِيرَ	hası̄ra
1866	158	c	3	نَ	na	na							na	نَ	na
1867	158	c	4	مْفُورٗ	mfūro	mfuro							mfūro	مْفُورٗ	mfūro
1885	160	b	1	مٖينْڠِ	mēngi	mengi							mēngi	مٖينْڠِ	mēngi
1868	158	d	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
1869	158	d	2	هُتٗمرِذِيَ	huṯomridhiya	hutomridhiya							huṯomridhiya	هُتٗمرِذِيَ	huṯomridhiya
1886	160	b	2	هُڤُمِلِيَانَ	huvumiliyāna	huvumiliyana							huvumiliyāna	هُڤُمِلِيَانَ	huvumiliyāna
1870	159	a	1	نْيُومْبَ	nyūmba	nyumba							nyūmba	نْيُومْبَ	nyūmba
1871	159	a	2	نْيِينْڠِ	nı̄ı̄ngi	nyingi							nı̄ı̄ngi	نْيِينْڠِ	nı̄ı̄ngi
1872	159	a	3	هُڤُنْدِيكَ	huvunḏı̄ka	huvundika							huvunḏı̄ka	هُڤُنْدِيكَ	huvunḏı̄ka
1900	161	d	1	أُسِيوٖ	usı̄we	usiwe							usı̄we	أُسِيوٖ	usı̄we
1873	159	b	1	زِكِكٗوسَ	zikikōsa	zikikosa							zikikōsa	زِكِكٗوسَ	zikikōsa
1874	159	b	2	مُؤَفَاكَ	muafāka	muafaka							muafāka	مُؤَفَاكَ	muafāka
1887	160	c	1	مْنٗ	mno	mno							mno	مْنٗ	mno
1888	160	c	2	هُكٗرٗفِشَانَ	hukorofishāna	hukorofishana							hukorofishāna	هُكٗرٗفِشَانَ	hukorofishāna
1875	159	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1876	159	c	2	نْڠٗونٗ	ngōno	ngono							ngōno	نْڠٗونٗ	ngōno
1877	159	c	3	كُتٗتٗشٖيكَ	kuṯoṯoshēka	kutotosheka							kuṯoṯoshēka	كُتٗتٗشٖيكَ	kuṯoṯoshēka
1901	161	d	2	تَمْفُرِيَ	ṯamfuriya	tamfuriya							ṯamfuriya	تَمْفُرِيَ	ṯamfuriya
1889	160	d	1	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
1890	160	d	2	لِسِپٗتِمِيَ	lisipoṯimiya	lisipotimiya							lisipoṯimiya	لِسِپٗتِمِيَ	lisipoṯimiya
1915	163	b	1	وَلِيٗ	waliyo	waliyo							waliyo	وَلِيٗ	waliyo
1916	163	b	2	نَايٗ	nāyo	nayo							nāyo	نَايٗ	nāyo
1891	161	a	1	نَ	na	na							na	نَ	na
1892	161	a	2	لِنْڠِينٖ	lingı̄ne	lingine							lingı̄ne	لِنْڠِينٖ	lingı̄ne
1893	161	a	3	كَذَلِيكَ	kadhalı̄ka	kadhalika							kadhalı̄ka	كَذَلِيكَ	kadhalı̄ka
1902	162	a	1	پَنْڠِينٖ	pangı̄ne	pangine							pangı̄ne	پَنْڠِينٖ	pangı̄ne
1903	162	a	2	أُتَمُؤٗونَ	uṯamuōna	utamuona							uṯamuōna	أُتَمُؤٗونَ	uṯamuōna
1894	161	b	1	أَمْبَالٗ	ambālo	ambalo							ambālo	أَمْبَالٗ	ambālo
1895	161	b	2	كْوَاكٗ	kwāko	kwako							kwāko	كْوَاكٗ	kwāko
1896	161	b	3	نَتَاكَ	naṯāka	nataka							naṯāka	نَتَاكَ	naṯāka
1917	163	b	3	بَنَاتِ	banāṯi	banati							banāṯi	بَنَاتِ	banāṯi
1910	162	d	1	نَ	na	na							na	نَ	na
1911	162	d	2	مْنٗ	mno	mno							mno	مْنٗ	mno
1904	162	b	1	هُفُورَ	hufūra	hufura							hufūra	هُفُورَ	hufūra
1905	162	b	2	سَبَابُ	sabābu	sababu							sabābu	سَبَابُ	sabābu
1906	162	b	3	هَانَ	hāna	hana							hāna	هَانَ	hāna
1912	162	d	3	كُمُيُلِيَ	kumuyuliya	kumuyuliya							kumuyuliya	كُمُيُلِيَ	kumuyuliya
1907	162	c	1	مُئٖلٖيوٖ	muelēwe	muelewe							muelēwe	مُئٖلٖيوٖ	muelēwe
1920	163	d	1	هَالِ	hāli	hali							hāli	هَالِ	hāli
1921	163	d	2	إِنَپٗوَدِيَ	inapowaḏiya	inapowadiya							inapowaḏiya	إِنَپٗوَدِيَ	inapowaḏiya
1913	163	a	1	إِفَهَامُ	ifahāmu	ifahamu							ifahāmu	إِفَهَامُ	ifahāmu
1914	163	a	2	تَفَؤُوتِ	ṯafaūṯi	tafauti							ṯafaūṯi	تَفَؤُوتِ	ṯafaūṯi
1918	163	c	1	هَوٖيزِ	hawēzi	hawezi							hawēzi	هَوٖيزِ	hawēzi
1919	163	c	2	كُئِذِبِيتِ	kuidhibı̄ṯi	kuidhibiti							kuidhibı̄ṯi	كُئِذِبِيتِ	kuidhibı̄ṯi
1927	164	b	2	نِ	ni	ni							ni	نِ	ni
1922	164	a	1	مْكٖ	mke	mke							mke	مْكٖ	mke
1930	164	c	2	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
1931	164	c	3	نِ	ni	ni							ni	نِ	ni
1926	164	b	1	وَلَكِينِ	walakı̄ni	walakini							walakı̄ni	وَلَكِينِ	walakı̄ni
1923	164	a	2	سِ	si	si							si	سِ	si
1924	164	a	3	كِؤُومْبٖ	kiūmbe	kiumbe							kiūmbe	كِؤُومْبٖ	kiūmbe
1925	164	a	4	دُوفُ	ḏūfu	dufu							ḏūfu	دُوفُ	ḏūfu
1928	164	b	3	ذَئِيفُ	dhaı̄fu	dhaifu							dhaı̄fu	ذَئِيفُ	dhaı̄fu
1932	164	c	4	خَفِيفُ	ẖafı̄fu	hafifu							ẖafı̄fu	خَفِيفُ	ẖafı̄fu
1934	164	d	2	كُڤُمِلِيَ	kuvumiliya	kuvumiliya							kuvumiliya	كُڤُمِلِيَ	kuvumiliya
1929	164	c	1	مٗويٗ	mōyo	moyo							mōyo	مٗويٗ	mōyo
1936	165	a	2	وَانَ	wāna	wana							wāna	وَانَ	wāna
1933	164	d	1	هُشِنْدوَ	hushinḏwa	hushindwa							hushinḏwa	هُشِنْدوَ	hushinḏwa
1937	165	a	3	أُومْبٗ	ūmbo	umbo							ūmbo	أُومْبٗ	ūmbo
1935	165	a	1	وَنَوَاكٖ	wanawāke	wanawake							wanawāke	وَنَوَاكٖ	wanawāke
1969	167	c	2	چٗوتٖ	chōṯe	chote							chōṯe	چٗوتٖ	chōṯe
1970	167	c	3	كِوِلِوِيلِ	kiwiliwı̄li	kiwiliwili							kiwiliwı̄li	كِوِلِوِيلِ	kiwiliwı̄li
1938	165	b	1	هُؤَثِرِيكَ	huathirı̄ka	huathirika							huathirı̄ka	هُؤَثِرِيكَ	huathirı̄ka
1939	165	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
1940	165	b	3	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
1941	165	c	1	كَتِيتِ	kaṯı̄ṯi	katiti							kaṯı̄ṯi	كَتِيتِ	kaṯı̄ṯi
1942	165	c	2	يَكٖينْدَ	yakēnḏa	yakenda							yakēnḏa	يَكٖينْدَ	yakēnḏa
1943	165	c	3	كٗومْبٗ	kōmbo	kombo							kōmbo	كٗومْبٗ	kōmbo
2009	170	d	2	چَ	cha	cha							cha	چَ	cha
2010	170	d	3	مَزٗوٖيَ	mazoweya	mazoweya							mazoweya	مَزٗوٖيَ	mazoweya
2002	170	b	1	هُوَرُكِيَ	huwarukiya	huwarukiya							huwarukiya	هُوَرُكِيَ	huwarukiya
1944	165	d	1	وَاسِ	wāsi	wasi							wāsi	وَاسِ	wāsi
1945	165	d	2	وَاسِ	wāsi	wasi							wāsi	وَاسِ	wāsi
1946	165	d	3	هُمْتِيَ	humṯiya	humtiya							humṯiya	هُمْتِيَ	humṯiya
1971	167	d	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
1972	167	d	2	كَتِيكَ	kaṯı̄ka	katika							kaṯı̄ka	كَتِيكَ	kaṯı̄ka
1973	167	d	3	أُذِيَ	udhiya	udhiya							udhiya	أُذِيَ	udhiya
1947	166	a	1	كَتِيكَ	kaṯı̄ka	katika							kaṯı̄ka	كَتِيكَ	kaṯı̄ka
1948	166	a	2	سِيكُ	sı̄ku	siku							sı̄ku	سِيكُ	sı̄ku
1949	166	a	3	زَ	za	za							za	زَ	za
1950	166	a	4	أَادَ	āḏa	ada							āḏa	أَادَ	āḏa
1990	169	b	1	نَذَانِ	nadhāni	nadhani							nadhāni	نَذَانِ	nadhāni
1951	166	b	1	يَ	ya	ya							ya	يَ	ya
1952	166	b	2	مْوٖيزِ	mwēzi	mwezi							mwēzi	مْوٖيزِ	mwēzi
1953	166	b	3	هُپَاتَ	hupāṯa	hupata							hupāṯa	هُپَاتَ	hupāṯa
1954	166	b	4	شِيدَ	shı̄ḏa	shida							shı̄ḏa	شِيدَ	shı̄ḏa
1991	169	b	2	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
1992	169	b	3	أَكِيلِ	akı̄li	akili							akı̄li	أَكِيلِ	akı̄li
1974	168	a	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
1955	166	c	1	نْدِيپٗ	nḏı̄po	ndipo							nḏı̄po	نْدِيپٗ	nḏı̄po
1956	166	c	2	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
1957	166	c	3	نَ	na	na							na	نَ	na
1958	166	c	4	إِبَادَ	ibāḏa	ibada							ibāḏa	إِبَادَ	ibāḏa
1975	168	a	2	سَانَ	sāna	sana							sāna	سَانَ	sāna
1976	168	a	3	نِ	ni	ni							ni	نِ	ni
1959	166	d	1	مُونْڠُ	mūngu	mungu							mūngu	مُونْڠُ	mūngu
1960	166	d	2	كَوَپُنْڠُزِيَ	kawapunguziya	kawapunguziya							kawapunguziya	كَوَپُنْڠُزِيَ	kawapunguziya
1977	168	a	4	وَيَاڤُ	wayāvu	wayavu							wayāvu	وَيَاڤُ	wayāvu
1961	167	a	1	مْنٗ	mno	mno							mno	مْنٗ	mno
1962	167	a	2	هُوَ	huwa	huwa							huwa	هُوَ	huwa
1964	167	a	4	ثَقِيلِ	thaqı̄li	thaqili							thaqı̄li	ثَقِيلِ	thaqı̄li
1978	168	b	1	هُكٗوسَ	hukōsa	hukosa							hukōsa	هُكٗوسَ	hukōsa
1979	168	b	2	أُڤِمِلِيڤُ	uvimilı̄vu	uvimilivu							uvimilı̄vu	أُڤِمِلِيڤُ	uvimilı̄vu
1965	167	b	1	نَ	na	na							na	نَ	na
1966	167	b	2	هُبَدِلِيكَ	hubaḏilı̄ka	hubadilika							hubaḏilı̄ka	هُبَدِلِيكَ	hubaḏilı̄ka
1967	167	b	3	هَالِ	hāli	hali							hāli	هَالِ	hāli
2003	170	b	2	زِجَانَ	zijāna	zijana							zijāna	زِجَانَ	zijāna
1993	169	c	1	هَئِيوِ	haı̄wi	haiwi							haı̄wi	هَئِيوِ	haı̄wi
1994	169	c	2	سَاوَ	sāwa	sawa							sāwa	سَاوَ	sāwa
1995	169	c	3	كَمِيلِ	kamı̄li	kamili							kamı̄li	كَمِيلِ	kamı̄li
1980	168	c	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
1981	168	c	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
1982	168	c	3	إِيڤُ	ı̄vu	ivu							ı̄vu	إِيڤُ	ı̄vu
1983	168	c	4	إِيڤُ	ı̄vu	ivu							ı̄vu	إِيڤُ	ı̄vu
1984	168	d	1	كُتُمْبُوكَ	kuṯumbūka	kutumbuka							kuṯumbūka	كُتُمْبُوكَ	kuṯumbūka
1985	168	d	2	هُزٖنْڠٖيَ	huzengeya	huzengeya							huzengeya	هُزٖنْڠٖيَ	huzengeya
1996	169	d	1	نَ	na	na							na	نَ	na
1986	169	a	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
1987	169	a	2	مْنٗ	mno	mno							mno	مْنٗ	mno
1988	169	a	3	نِ	ni	ni							ni	نِ	ni
1989	169	a	4	وَكَالِ	wakāli	wakali							wakāli	وَكَالِ	wakāli
1997	169	d	2	پُنْڠُوَانِ	punguwāni	punguwani							punguwāni	پُنْڠُوَانِ	punguwāni
1998	169	d	3	هُنْڠِيَ	hungiya	hungiya							hungiya	هُنْڠِيَ	hungiya
1999	170	a	1	كُولَ	kūla	kula							kūla	كُولَ	kūla
2000	170	a	2	مَارَ	māra	mara							māra	مَارَ	māra
2001	170	a	3	تَمُؤٗونَ	ṯamuōna	tamuona							ṯamuōna	تَمُؤٗونَ	ṯamuōna
2004	170	c	1	نَ	na	na							na	نَ	na
2005	170	c	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2006	170	c	3	أُكَالِ	ukāli	ukali							ukāli	أُكَالِ	ukāli
2007	170	c	4	هُنٖينَ	hunēna	hunena							hunēna	هُنٖينَ	hunēna
2020	171	c	3	أَمْپِيمٖ	ampı̄me	ampime							ampı̄me	أَمْپِيمٖ	ampı̄me
2024	172	a	2	كُمْفَهَامُ	kumfahāmu	kumfahamu							kumfahāmu	كُمْفَهَامُ	kumfahāmu
2008	170	d	1	كِنْيُومٖ	kinyūme	kinyume							kinyūme	كِنْيُومٖ	kinyūme
2015	171	b	1	مْكٖ	mke	mke							mke	مْكٖ	mke
2016	171	b	2	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
2017	171	b	3	أَمْسٗومٖ	amsōme	amsome							amsōme	أَمْسٗومٖ	amsōme
2011	171	a	1	نِ	ni	ni							ni	نِ	ni
2012	171	a	2	مُهِيمُ	muhı̄mu	muhimu							muhı̄mu	مُهِيمُ	muhı̄mu
2013	171	a	3	كُولَ	kūla	kula							kūla	كُولَ	kūla
2014	171	a	4	مُومٖ	mūme	mume							mūme	مُومٖ	mūme
2018	171	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2019	171	c	2	زِپِيمٗ	zipı̄mo	zipimo							zipı̄mo	زِپِيمٗ	zipı̄mo
2022	171	d	2	زِكِكَرِبِيَ	zikikaribiya	zikikaribiya							zikikaribiya	زِكِكَرِبِيَ	zikikaribiya
2021	171	d	1	سِيكُ	sı̄ku	siku							sı̄ku	سِيكُ	sı̄ku
2026	172	b	2	كُملَؤُومُ	kumlaūmu	kumlaumu							kumlaūmu	كُملَؤُومُ	kumlaūmu
2023	172	a	1	أُكِيسَ	ukı̄sa	ukisa							ukı̄sa	أُكِيسَ	ukı̄sa
2028	172	c	2	مْنٗ	mno	mno							mno	مْنٗ	mno
2025	172	b	1	أُوَاتٖ	uwāṯe	uwate							uwāṯe	أُوَاتٖ	uwāṯe
2029	172	c	3	نِ	ni	ni							ni	نِ	ni
2030	172	c	4	مُهِيمُ	muhı̄mu	muhimu							muhı̄mu	مُهِيمُ	muhı̄mu
2027	172	c	1	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
2031	172	d	1	يَتَاكَ	yaṯāka	yataka							yaṯāka	يَتَاكَ	yaṯāka
2032	172	d	2	كُلِزٗوٖيَ	kulizoweya	kulizoweya							kulizoweya	كُلِزٗوٖيَ	kulizoweya
2061	175	b	1	أَتَاكَ	aṯāka	ataka							aṯāka	أَتَاكَ	aṯāka
2062	175	b	2	نْسِ	nsi	nsi							nsi	نْسِ	nsi
2063	175	b	3	وَ	wa	wa							wa	وَ	wa
2064	175	b	4	سِيكِ	sı̄ki	siki							sı̄ki	سِيكِ	sı̄ki
2033	173	a	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
2034	173	a	2	نَ	na	na							na	نَ	na
2035	173	a	3	مُودَ	mūḏa	muda							mūḏa	مُودَ	mūḏa
2036	173	a	4	وَ	wa	wa							wa	وَ	wa
2037	173	a	5	مِيمْبَ	mı̄mba	mimba							mı̄mba	مِيمْبَ	mı̄mba
2094	178	a	3	مْوٖرٖيڤُ	mwerēvu	mwerevu							mwerēvu	مْوٖرٖيڤُ	mwerēvu
2081	177	a	1	مْپٖيمْبٖ	mpēmbe	mpembe							mpēmbe	مْپٖيمْبٖ	mpēmbe
2065	175	c	1	أَلَاچٗ	alācho	alacho							alācho	أَلَاچٗ	alācho
2038	173	b	1	مَارَ	māra	mara							māra	مَارَ	māra
2039	173	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2040	173	b	3	مَارَ	māra	mara							māra	مَارَ	māra
2041	173	b	4	هُڤِيمْبَ	huvı̄mba	huvimba							huvı̄mba	هُڤِيمْبَ	huvı̄mba
2066	175	c	2	هَكِمْشِيكِ	hakimshı̄ki	hakimshiki							hakimshı̄ki	هَكِمْشِيكِ	hakimshı̄ki
2042	173	c	1	أُكَؤٗونَ	ukaōna	ukaona							ukaōna	أُكَؤٗونَ	ukaōna
2043	173	c	2	كَانَ	kāna	kana							kāna	كَانَ	kāna
2044	173	c	3	كْوَامْبَ	kwāmba	kwamba							kwāmba	كْوَامْبَ	kwāmba
2082	177	a	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
2083	177	a	3	كِجَانَ	kijāna	kijana							kijāna	كِجَانَ	kijāna
2045	173	d	1	مٖكُوَ	mekuwa	mekuwa							mekuwa	مٖكُوَ	mekuwa
2046	173	d	2	هُكُزٖنْڠٖيَ	hukuzengeya	hukuzengeya							hukuzengeya	هُكُزٖنْڠٖيَ	hukuzengeya
2067	175	d	1	أَكِتِيَاچٗ	akiṯiyācho	akitiyacho							akiṯiyācho	أَكِتِيَاچٗ	akiṯiyācho
2068	175	d	2	هُمْوَايَ	humwāya	humwaya							humwāya	هُمْوَايَ	humwāya
2047	174	a	1	كُكٗوسَ	kukōsa	kukosa							kukōsa	كُكٗوسَ	kukōsa
2048	174	a	2	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
2049	174	a	3	كَتِيتِ	kaṯı̄ṯi	katiti							kaṯı̄ṯi	كَتِيتِ	kaṯı̄ṯi
2050	174	b	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
2051	174	b	2	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
2052	174	b	3	أُمٖهِيتِ	umehı̄ṯi	umehiti							umehı̄ṯi	أُمٖهِيتِ	umehı̄ṯi
2053	174	c	1	أَنْڠَلِيَ	angaliya	angaliya							angaliya	أَنْڠَلِيَ	angaliya
2054	174	c	2	كِبِرِيتِ	kibirı̄ṯi	kibiriti							kibirı̄ṯi	كِبِرِيتِ	kibirı̄ṯi
2069	176	a	1	زِئٖلٖيوٖ	zielēwe	zielewe							zielēwe	زِئٖلٖيوٖ	zielēwe
2070	176	a	2	سِيكُ	sı̄ku	siku							sı̄ku	سِيكُ	sı̄ku
2071	176	a	3	هِيزِ	hı̄zi	hizi							hı̄zi	هِيزِ	hı̄zi
2055	174	d	1	كِدَرِيكَ	kiḏarı̄ka	kidarika							kiḏarı̄ka	كِدَرِيكَ	kiḏarı̄ka
2056	174	d	2	تٖيتٖ	ṯēṯe	tete							ṯēṯe	تٖيتٖ	ṯēṯe
2057	174	d	3	هُويَ	hūya	huya							hūya	هُويَ	hūya
2058	175	a	1	مَارَ	māra	mara							māra	مَارَ	māra
2059	175	a	2	نْيَامَ	nyāma	nyama							nyāma	نْيَامَ	nyāma
2060	175	a	3	هَئِتَاكِ	haiṯāki	haitaki							haiṯāki	هَئِتَاكِ	haiṯāki
2084	177	b	1	تٖينَ	ṯēna	tena							ṯēna	تٖينَ	ṯēna
2085	177	b	2	أَلِيٗ	aliyo	aliyo							aliyo	أَلِيٗ	aliyo
2086	177	b	3	مْنُونَ	mnūna	mnuna							mnūna	مْنُونَ	mnūna
2072	176	b	1	مِيمْبَ	mı̄mba	mimba							mı̄mba	مِيمْبَ	mı̄mba
2073	176	b	2	نَ	na	na							na	نَ	na
2074	176	b	3	سِيكُ	sı̄ku	siku							sı̄ku	سِيكُ	sı̄ku
2075	176	b	4	زَ	za	za							za	زَ	za
2076	176	b	5	مْوٖيزِ	mwēzi	mwezi							mwēzi	مْوٖيزِ	mwēzi
2100	178	d	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2101	178	d	2	نَايٖ	nāye	naye							nāye	نَايٖ	nāye
2077	176	c	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2078	176	c	2	هُمْبٖمْبٖلٖيزِ	humbembelēzi	humbembelezi							humbembelēzi	هُمْبٖمْبٖلٖيزِ	humbembelēzi
2087	177	c	1	نْدِيپٗ	nḏı̄po	ndipo							nḏı̄po	نْدِيپٗ	nḏı̄po
2088	177	c	2	مُتَسِكِزَانَ	muṯasikizāna	mutasikizana							muṯasikizāna	مُتَسِكِزَانَ	muṯasikizāna
2079	176	d	1	تَؤٗونَ	ṯaōna	taona							ṯaōna	تَؤٗونَ	ṯaōna
2080	176	d	2	وَمُؤٗنٖيَ	wamuoneya	wamuoneya							wamuoneya	وَمُؤٗنٖيَ	wamuoneya
2102	178	d	3	مٖتٖتٖيَ	meṯeṯeya	meteteya							meṯeṯeya	مٖتٖتٖيَ	meṯeṯeya
2095	178	b	1	نَ	na	na							na	نَ	na
2096	178	b	2	مْنٗ	mno	mno							mno	مْنٗ	mno
2097	178	b	3	مْڤُمِلِيڤُ	mvumilı̄vu	mvumilivu							mvumilı̄vu	مْڤُمِلِيڤُ	mvumilı̄vu
2089	177	d	1	نَ	na	na							na	نَ	na
2090	177	d	2	يَدُومُ	yaḏūmu	yadumu							yaḏūmu	يَدُومُ	yaḏūmu
2091	177	d	3	مَزٗوٖيَ	mazoweya	mazoweya							mazoweya	مَزٗوٖيَ	mazoweya
2092	178	a	1	شَرُوتِ	sharūṯi	sharuti							sharūṯi	شَرُوتِ	sharūṯi
2098	178	c	1	أُسِفُرِيشٖ	usifurı̄she	usifurishe							usifurı̄she	أُسِفُرِيشٖ	usifurı̄she
2099	178	c	2	مَشَاڤُ	mashāvu	mashavu							mashāvu	مَشَاڤُ	mashāvu
2110	179	b	4	مَتٗوتٗ	maṯōṯo	matoto							maṯōṯo	مَتٗوتٗ	maṯōṯo
2115	179	d	2	مْتَانْڠَ	mṯānga	mtanga							mṯānga	مْتَانْڠَ	mṯānga
2107	179	b	1	نِ	ni	ni							ni	نِ	ni
2108	179	b	2	مَكُؤُ	makuu	makuu							makuu	مَكُؤُ	makuu
2109	179	b	3	سِ	si	si							si	سِ	si
2103	179	a	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
2104	179	a	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
2105	179	a	3	يَ	ya	ya							ya	يَ	ya
2106	179	a	4	أُمِيتٗ	umı̄ṯo	umito							umı̄ṯo	أُمِيتٗ	umı̄ṯo
2113	179	c	3	تٗتٗوتٗ	ṯoṯōṯo	tototo							ṯoṯōṯo	تٗتٗوتٗ	ṯoṯōṯo
2111	179	c	1	وٖنْڠِينٖ	wengı̄ne	wengine							wengı̄ne	وٖنْڠِينٖ	wengı̄ne
2112	179	c	2	هُولَ	hūla	hula							hūla	هُولَ	hūla
2116	179	d	3	هُبُڠِيَ	hubugiya	hubugiya							hubugiya	هُبُڠِيَ	hubugiya
2118	180	a	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
2114	179	d	1	نَ	na	na							na	نَ	na
2119	180	a	3	يَ	ya	ya							ya	يَ	ya
2120	180	a	4	مِؤُجِيزَ	miujı̄za	miujiza							miujı̄za	مِؤُجِيزَ	miujı̄za
2122	180	b	2	هَالِ	hāli	hali							hāli	هَالِ	hāli
2117	180	a	1	نِ	ni	ni							ni	نِ	ni
2123	180	b	3	هُڠٖؤُوزَ	hugeūza	hugeuza							hugeūza	هُڠٖؤُوزَ	hugeūza
2121	180	b	1	زَاءٗ	zāo	zao							zāo	زَاءٗ	zāo
2124	180	c	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2184	186	c	2	مُمٖذِكِيكَ	mumedhikı̄ka	mumedhikika							mumedhikı̄ka	مُمٖذِكِيكَ	mumedhikı̄ka
2125	180	c	2	هُتٗبٖمْبٖلٖيزَ	huṯobembelēza	hutobembeleza							huṯobembelēza	هُتٗبٖمْبٖلٖيزَ	huṯobembelēza
2156	183	c	2	أُكِكَسِرِيكَ	ukikasirı̄ka	ukikasirika							ukikasirı̄ka	أُكِكَسِرِيكَ	ukikasirı̄ka
2127	180	d	2	تَؤٗونَ	ṯaōna	taona							ṯaōna	تَؤٗونَ	ṯaōna
2128	180	d	3	هُلِيَ	huliya	huliya							huliya	هُلِيَ	huliya
2173	185	c	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
2129	181	a	1	مْوَنَامْكٖ	mwanāmke	mwanamke							mwanāmke	مْوَنَامْكٖ	mwanāmke
2130	181	a	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2131	181	a	3	تَأَبُ	ṯaabu	taabu							ṯaabu	تَأَبُ	ṯaabu
2174	185	c	2	سِئِتٖنْدٖكٖيزٖ	siiṯenḏekēze	siitendekeze							siiṯenḏekēze	سِئِتٖنْدٖكٖيزٖ	siiṯenḏekēze
2157	183	d	1	مَيُوتٗ	mayūṯo	mayuto							mayūṯo	مَيُوتٗ	mayūṯo
2158	183	d	2	يَتَسَلِيَ	yaṯasaliya	yatasaliya							yaṯasaliya	يَتَسَلِيَ	yaṯasaliya
2132	181	b	1	مَارَ	māra	mara							māra	مَارَ	māra
2133	181	b	2	هُفَانْيَ	hufānya	hufanya							hufānya	هُفَانْيَ	hufānya
2134	181	b	3	غَذَابُ	ḡadhābu	ghadhabu							ḡadhābu	غَذَابُ	ḡadhābu
2135	181	c	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
2136	181	c	2	أَالٗ	ālo	alo							ālo	أَالٗ	ālo
2137	181	c	3	تَرَتِيبُ	ṯaraṯı̄bu	taratibu							ṯaraṯı̄bu	تَرَتِيبُ	ṯaraṯı̄bu
2295	195	d	4	أُذِيَ	udhiya	udhiya							udhiya	أُذِيَ	udhiya
2159	184	a	1	أَكِكْوَمْبِيَ	akikwambiya	akikwambiya							akikwambiya	أَكِكْوَمْبِيَ	akikwambiya
2138	181	d	1	هُبَدِلِيكَ	hubaḏilı̄ka	hubadilika							hubaḏilı̄ka	هُبَدِلِيكَ	hubaḏilı̄ka
2139	181	d	2	توَبِيَ	ṯwabiya	twabiya							ṯwabiya	توَبِيَ	ṯwabiya
2160	184	a	2	نِوَاتَ	niwāṯa	niwata							niwāṯa	نِوَاتَ	niwāṯa
2140	182	a	1	نٖينٗ	nēno	neno							nēno	نٖينٗ	nēno
2141	182	a	2	لٗلٗوتٖ	lolōṯe	lolote							lolōṯe	لٗلٗوتٖ	lolōṯe
2142	182	a	3	أَوٖيزَ	awēza	aweza							awēza	أَوٖيزَ	awēza
2143	182	b	1	هَجَالِ	hajāli	hajali							hajāli	هَجَالِ	hajāli
2144	182	b	2	كُڤُرِمِيزَ	kuvurimı̄za	kuvurimiza							kuvurimı̄za	كُڤُرِمِيزَ	kuvurimı̄za
2175	185	d	1	لَاكٖ	lāke	lake							lāke	لَاكٖ	lāke
2161	184	b	1	سِيوٖ	sı̄we	siwe							sı̄we	سِيوٖ	sı̄we
2146	182	c	2	شَرُوتِ	sharūṯi	sharuti							sharūṯi	شَرُوتِ	sharūṯi
2147	182	c	3	كُئِكَازَ	kuikāza	kuikaza							kuikāza	كُئِكَازَ	kuikāza
2162	184	b	2	نَايٖ	nāye	naye							nāye	نَايٖ	nāye
2163	184	b	3	مُتَتٖيتَ	muṯaṯēṯa	mutateta							muṯaṯēṯa	مُتَتٖيتَ	muṯaṯēṯa
2148	182	d	1	مِزَانِ	mizāni	mizani							mizāni	مِزَانِ	mizāni
2149	182	d	2	كُتٗپٗتٖيَ	kuṯopoṯeya	kutopoteya							kuṯopoṯeya	كُتٗپٗتٖيَ	kuṯopoṯeya
2150	183	a	1	مَارَ	māra	mara							māra	مَارَ	māra
2151	183	a	2	أَوٖيزَ	awēza	aweza							awēza	أَوٖيزَ	awēza
2152	183	a	3	تَلَاكَ	ṯalāka	talaka							ṯalāka	تَلَاكَ	ṯalāka
2176	185	d	2	كُمْتِمِزِيَ	kumṯimiziya	kumtimiziya							kumṯimiziya	كُمْتِمِزِيَ	kumṯimiziya
2153	183	b	1	أَكَكْوَمْبِيَ	akakwambiya	akakwambiya							akakwambiya	أَكَكْوَمْبِيَ	akakwambiya
2154	183	b	2	نَتَاكَ	naṯāka	nataka							naṯāka	نَتَاكَ	naṯāka
2164	184	c	1	نِ	ni	ni							ni	نِ	ni
2165	184	c	2	كِوِينْڠُ	kiwı̄ngu	kiwingu							kiwı̄ngu	كِوِينْڠُ	kiwı̄ngu
2166	184	c	3	كِتَپِيتَ	kiṯapı̄ṯa	kitapita							kiṯapı̄ṯa	كِتَپِيتَ	kiṯapı̄ṯa
2196	187	c	3	أُئِتٗوَاپٗ	uiṯowāpo	uitowapo							uiṯowāpo	أُئِتٗوَاپٗ	uiṯowāpo
2167	184	d	1	هَكِوٖيزِ	hakiwēzi	hakiwezi							hakiwēzi	هَكِوٖيزِ	hakiwēzi
2168	184	d	2	كُسَلِيَ	kusaliya	kusaliya							kusaliya	كُسَلِيَ	kusaliya
2190	187	b	1	توَلَاكَ	ṯwalāka	twalaka							ṯwalāka	توَلَاكَ	ṯwalāka
2169	185	a	1	توَلَاكَ	ṯwalāka	twalaka							ṯwalāka	توَلَاكَ	ṯwalāka
2170	185	a	2	سِئِتٖلٖيزٖ	siiṯelēze	siiteleze							siiṯelēze	سِئِتٖلٖيزٖ	siiṯelēze
2177	186	a	1	توَلَاكَ	ṯwalāka	twalaka							ṯwalāka	توَلَاكَ	ṯwalāka
2178	186	a	2	مُونْڠُ	mūngu	mungu							mūngu	مُونْڠُ	mūngu
2171	185	b	1	أَئِتَكَاپٗ	aiṯakāpo	aitakapo							aiṯakāpo	أَئِتَكَاپٗ	aiṯakāpo
2172	185	b	2	مْپُوزٖ	mpūze	mpuze							mpūze	مْپُوزٖ	mpūze
2179	186	a	3	مٖوٖيكَ	mewēka	meweka							mewēka	مٖوٖيكَ	mewēka
2185	186	d	1	مُمٖكٗوسَ	mumekōsa	mumekosa							mumekōsa	مُمٖكٗوسَ	mumekōsa
2186	186	d	2	زٗوتٖ	zōṯe	zote							zōṯe	زٗوتٖ	zōṯe
2187	186	d	3	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
2180	186	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2181	186	b	2	ذَرُورَ	dharūra	dharura							dharūra	ذَرُورَ	dharūra
2182	186	b	3	كُتُمِيكَ	kuṯumı̄ka	kutumika							kuṯumı̄ka	كُتُمِيكَ	kuṯumı̄ka
2191	187	b	2	هُوَ	huwa	huwa							huwa	هُوَ	huwa
2183	186	c	1	إِوَاپٗ	iwāpo	iwapo							iwāpo	إِوَاپٗ	iwāpo
2192	187	b	3	نِ	ni	ni							ni	نِ	ni
2193	187	b	4	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
2188	187	a	1	كُشَلِيكِ	kushalı̄ki	kushaliki							kushalı̄ki	كُشَلِيكِ	kushalı̄ki
2189	187	a	2	مُشِنْدوَاپٗ	mushinḏwāpo	mushindwapo							mushinḏwāpo	مُشِنْدوَاپٗ	mushinḏwāpo
2200	188	a	2	نَ	na	na							na	نَ	na
2203	188	b	2	هَالِ	hāli	hali							hāli	هَالِ	hāli
2197	187	d	1	أُسِئِزِدِيشٖ	usiiziḏı̄she	usiizidishe							usiiziḏı̄she	أُسِئِزِدِيشٖ	usiiziḏı̄she
2204	188	b	3	پِيَ	piya	piya							piya	پِيَ	piya
2194	187	c	1	نَ	na	na							na	نَ	na
2195	187	c	2	مُودَ	mūḏa	muda							mūḏa	مُودَ	mūḏa
2198	187	d	2	مٗويَ	mōya	moya							mōya	مٗويَ	mōya
2199	188	a	1	تِمِيزَ	ṯimı̄za	timiza							ṯimı̄za	تِمِيزَ	ṯimı̄za
2201	188	a	3	مَشَرُوتِ	masharūṯi	masharuti							masharūṯi	مَشَرُوتِ	masharūṯi
2205	188	b	4	وَكَاتِ	wakāṯi	wakati							wakāṯi	وَكَاتِ	wakāṯi
2207	188	c	2	هُكُومُ	hukūmu	hukumu							hukūmu	هُكُومُ	hukūmu
2202	188	b	1	يَ	ya	ya							ya	يَ	ya
2208	188	c	3	زِتَفِيتِ	ziṯafı̄ṯi	zitafiti							ziṯafı̄ṯi	زِتَفِيتِ	ziṯafı̄ṯi
2210	188	d	2	يَ	ya	ya							ya	يَ	ya
2206	188	c	1	نَ	na	na							na	نَ	na
2211	188	d	3	كُتُمِيَ	kuṯumiya	kutumiya							kuṯumiya	كُتُمِيَ	kuṯumiya
2213	189	a	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
2209	188	d	1	كَبُولَ	kabūla	kabula							kabūla	كَبُولَ	kabūla
2212	189	a	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
2214	189	a	3	هُوَتَانَ	huwaṯāna	huwatana							huwaṯāna	هُوَتَانَ	huwaṯāna
2244	191	d	1	هَئِكُپِينْڠَ	haikupı̄nga	haikupinga							haikupı̄nga	هَئِكُپِينْڠَ	haikupı̄nga
2245	191	d	2	شَرِيَ	shariya	shariya							shariya	شَرِيَ	shariya
2215	189	b	1	كِيسَ	kı̄sa	kisa							kı̄sa	كِيسَ	kı̄sa
2216	189	b	2	مَارَ	māra	mara							māra	مَارَ	māra
2217	189	b	3	هُوَؤٗونَ	huwaōna	huwaona							huwaōna	هُوَؤٗونَ	huwaōna
2218	189	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2219	189	c	2	هَرَامُ	harāmu	haramu							harāmu	هَرَامُ	harāmu
2220	189	c	3	وَتَكَانَ	waṯakāna	watakana							waṯakāna	وَتَكَانَ	waṯakāna
2277	194	b	2	وَنُن’ڠُنِيكَ	wanun’gunı̄ka	wanun’gunika							wanun’gunı̄ka	وَنُن’ڠُنِيكَ	wanun’gunı̄ka
2221	189	d	1	زِپٖنْڠٖئٖ	zipengee	zipengee							zipengee	زِپٖنْڠٖئٖ	zipengee
2222	189	d	2	هُزٖنْڠٖيَ	huzengeya	huzengeya							huzengeya	هُزٖنْڠٖيَ	huzengeya
2265	193	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2223	190	a	1	هُزٖنْڠٖيَ	huzengeya	huzengeya							huzengeya	هُزٖنْڠٖيَ	huzengeya
2224	190	a	2	مُهَلِيلِ	muhalı̄li	muhalili							muhalı̄li	مُهَلِيلِ	muhalı̄li
2246	192	a	1	مْكٖ	mke	mke							mke	مْكٖ	mke
2247	192	a	2	سِؤٗوٖ	siowe	siowe							siowe	سِؤٗوٖ	siowe
2225	190	b	1	فِكِرِيَ	fikiriya	fikiriya							fikiriya	فِكِرِيَ	fikiriya
2226	190	b	2	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
2227	190	b	3	هِيلِ	hı̄li	hili							hı̄li	هِيلِ	hı̄li
2249	192	a	4	پِيلِ	pı̄li	pili							pı̄li	پِيلِ	pı̄li
2228	190	c	1	لَ	la	la							la	لَ	la
2229	190	c	2	كُؤَزِيمَ	kuazı̄ma	kuazima							kuazı̄ma	كُؤَزِيمَ	kuazı̄ma
2230	190	c	3	فَهَالِ	fahāli	fahali							fahāli	فَهَالِ	fahāli
2266	193	b	2	وٖنْڠِنٖؤٗ	wengineo	wengineo							wengineo	وٖنْڠِنٖؤٗ	wengineo
2231	190	d	1	مْكٖ	mke	mke							mke	مْكٖ	mke
2232	190	d	2	كْوٖينْدَ	kwēnḏa	kwenda							kwēnḏa	كْوٖينْدَ	kwēnḏa
2233	190	d	3	مْپٖكٖيَ	mpekeya	mpekeya							mpekeya	مْپٖكٖيَ	mpekeya
2267	193	b	3	نِ	ni	ni							ni	نِ	ni
2268	193	b	4	دَاوَ	ḏāwa	dawa							ḏāwa	دَاوَ	ḏāwa
2234	191	a	1	نَ	na	na							na	نَ	na
2235	191	a	2	لَنْڠِينٖ	langı̄ne	langine							langı̄ne	لَنْڠِينٖ	langı̄ne
2236	191	a	3	كَذَلِيكَ	kadhalı̄ka	kadhalika							kadhalı̄ka	كَذَلِيكَ	kadhalı̄ka
2250	192	b	1	نِ	ni	ni							ni	نِ	ni
2251	192	b	2	أُذِيَ	udhiya	udhiya							udhiya	أُذِيَ	udhiya
2252	192	b	3	كْوٖيلِ	kwēli	kweli							kwēli	كْوٖيلِ	kwēli
2253	192	b	4	كْوٖيلِ	kwēli	kweli							kwēli	كْوٖيلِ	kwēli
2237	191	b	1	نِ	ni	ni							ni	نِ	ni
2238	191	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2239	191	b	3	ممٗويَ	mmōya	mmoya							mmōya	ممٗويَ	mmōya
2240	191	b	4	تٗشٖيكَ	ṯoshēka	tosheka							ṯoshēka	تٗشٖيكَ	ṯoshēka
2241	191	c	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
2242	191	c	2	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2243	191	c	3	مٖذِكِيكَ	medhikı̄ka	medhikika							medhikı̄ka	مٖذِكِيكَ	medhikı̄ka
2297	196	a	2	سَبَابُ	sabābu	sababu							sabābu	سَبَابُ	sabābu
2269	193	c	1	أُتَئِيُوتَ	uṯaiyūṯa	utaiyuta							uṯaiyūṯa	أُتَئِيُوتَ	uṯaiyūṯa
2270	193	c	2	كُزَاوَ	kuzāwa	kuzawa							kuzāwa	كُزَاوَ	kuzāwa
2254	192	c	1	نَ	na	na							na	نَ	na
2255	192	c	2	إِنْڠَاوَ	ingāwa	ingawa							ingāwa	إِنْڠَاوَ	ingāwa
2256	192	c	3	نِ	ni	ni							ni	نِ	ni
2257	192	c	4	هَلَالِ	halāli	halali							halāli	هَلَالِ	halāli
2283	195	a	1	كُؤٗنْڠٖيزَ	kuongēza	kuongeza							kuongēza	كُؤٗنْڠٖيزَ	kuongēza
2258	192	d	1	نِ	ni	ni							ni	نِ	ni
2259	192	d	2	أُزِيتٗ	uzı̄ṯo	uzito							uzı̄ṯo	أُزِيتٗ	uzı̄ṯo
2260	192	d	3	كُتُمِيَ	kuṯumiya	kutumiya							kuṯumiya	كُتُمِيَ	kuṯumiya
2284	195	a	2	سِ	si	si							si	سِ	si
2705	229	c	3	مْكٖ	mke	mke							mke	مْكٖ	mke
2271	193	d	1	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya							nimekwambiya	نِمٖكْوَمْبِيَ	nimekwambiya
2272	193	d	2	يَهَايَ	yahāya	yahaya							yahāya	يَهَايَ	yahāya
2261	193	a	1	نَ	na	na							na	نَ	na
2262	193	a	2	وَنَوَاكٖ	wanawāke	wanawake							wanawāke	وَنَوَاكٖ	wanawāke
2263	193	a	3	سِ	si	si							si	سِ	si
2264	193	a	4	سَاوَ	sāwa	sawa							sāwa	سَاوَ	sāwa
2278	194	c	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
2279	194	c	2	وَنْڠِينٖ	wangı̄ne	wangine							wangı̄ne	وَنْڠِينٖ	wangı̄ne
2280	194	c	3	هُوَاكَ	huwāka	huwaka							huwāka	هُوَاكَ	huwāka
2273	194	a	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
2274	194	a	2	وَنَاءٗ	wanāo	wanao							wanāo	وَنَاءٗ	wanāo
2275	194	a	3	رِذِيكَ	ridhı̄ka	ridhika							ridhı̄ka	رِذِيكَ	ridhı̄ka
2285	195	a	3	هَرَامُ	harāmu	haramu							harāmu	هَرَامُ	harāmu
2298	196	a	3	إِيكٗ	ı̄ko	iko							ı̄ko	إِيكٗ	ı̄ko
2281	194	d	1	فُنُونُ	funūnu	fununu							funūnu	فُنُونُ	funūnu
2282	194	d	2	وَكِسِكِيَ	wakisikiya	wakisikiya							wakisikiya	وَكِسِكِيَ	wakisikiya
2300	196	b	2	مْفَانٗ	mfāno	mfano							mfāno	مْفَانٗ	mfāno
2296	196	a	1	إِكِيوَ	ikı̄wa	ikiwa							ikı̄wa	إِكِيوَ	ikı̄wa
2288	195	c	1	نِ	ni	ni							ni	نِ	ni
2286	195	b	1	وَلَكِينِ	walakı̄ni	walakini							walakı̄ni	وَلَكِينِ	walakı̄ni
2287	195	b	2	أُفَهَامُ	ufahāmu	ufahamu							ufahāmu	أُفَهَامُ	ufahāmu
2289	195	c	2	كُؤُ	kuu	kuu							kuu	كُؤُ	kuu
2290	195	c	3	مْنٗ	mno	mno							mno	مْنٗ	mno
2291	195	c	4	جُكُومُ	jukūmu	jukumu							jukūmu	جُكُومُ	jukūmu
2292	195	d	1	مْبَالِ	mbāli	mbali							mbāli	مْبَالِ	mbāli
2293	195	d	2	نَ	na	na							na	نَ	na
2294	195	d	3	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
2301	196	b	3	مْكٖ	mke	mke							mke	مْكٖ	mke
2302	196	b	4	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
2304	196	c	2	مِكَالِ	mikāli	mikali							mikāli	مِكَالِ	mikāli
2299	196	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2305	196	c	3	مِيكٗ	mı̄ko	miko							mı̄ko	مِيكٗ	mı̄ko
2303	196	c	1	مٖپٗوَ	mepowa	mepowa							mepowa	مٖپٗوَ	mepowa
2306	196	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2338	199	b	1	أُسِتٖينْدٖ	usiṯēnḏe	usitende							usiṯēnḏe	أُسِتٖينْدٖ	usiṯēnḏe
2307	196	d	2	ذَرُورَ	dharūra	dharura							dharūra	ذَرُورَ	dharūra
2309	196	d	4	أَفِيَ	afiya	afiya							afiya	أَفِيَ	afiya
2339	199	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2340	199	b	3	كَسِيدِ	kası̄ḏi	kasidi							kası̄ḏi	كَسِيدِ	kası̄ḏi
2310	197	a	1	لَبُودَ	labūḏa	labuda							labūḏa	لَبُودَ	labūḏa
2311	197	a	2	هَانَ	hāna	hana							hāna	هَانَ	hāna
2312	197	a	3	كِزَازِ	kizāzi	kizazi							kizāzi	كِزَازِ	kizāzi
2382	203	a	2	أُمٖپٖينْدَ	umepēnḏa	umependa							umepēnḏa	أُمٖپٖينْدَ	umepēnḏa
2313	197	b	1	لَ	la	la							la	لَ	la
2314	197	b	2	كُزَاءَ	kuzāa	kuzaa							kuzāa	كُزَاءَ	kuzāa
2315	197	b	3	هَلِوٖيزِ	haliwēzi	haliwezi							haliwēzi	هَلِوٖيزِ	haliwēzi
2383	203	a	3	تُونْدَ	ṯūnḏa	tunda							ṯūnḏa	تُونْدَ	ṯūnḏa
2341	199	c	1	كُئٖنْڠٖيزَ	kuengēza	kuengeza							kuengēza	كُئٖنْڠٖيزَ	kuengēza
2316	197	c	1	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
2317	197	c	2	وَتَاكَ	waṯāka	wataka							waṯāka	وَتَاكَ	waṯāka
2318	197	c	3	پُمْبَازِ	pumbāzi	pumbazi							pumbāzi	پُمْبَازِ	pumbāzi
2342	199	c	2	وَ	wa	wa							wa	وَ	wa
2343	199	c	3	زَئِيدِ	zaı̄ḏi	zaidi							zaı̄ḏi	زَئِيدِ	zaı̄ḏi
2319	197	d	1	يَاپٗ	yāpo	yapo							yāpo	يَاپٗ	yāpo
2320	197	d	2	نِ	ni	ni							ni	نِ	ni
2321	197	d	3	مْوَانَ	mwāna	mwana							mwāna	مْوَانَ	mwāna
2322	197	d	4	ممٗويَ	mmōya	mmoya							mmōya	ممٗويَ	mmōya
2358	201	a	1	أُسِيوٖ	usı̄we	usiwe							usı̄we	أُسِيوٖ	usı̄we
2359	201	a	2	كِرُوكَ	kirūka	kiruka							kirūka	كِرُوكَ	kirūka
2344	199	d	1	كِتٗشٖلٖيزَ	kiṯoshelēza	kitosheleza							kiṯoshelēza	كِتٗشٖلٖيزَ	kiṯoshelēza
2323	198	a	1	أَوْ	aw	au							aw	أَوْ	aw
2324	198	a	2	يَالٖ	yāle	yale							yāle	يَالٖ	yāle
2325	198	a	3	مَشُغُولِ	mashuḡūli	mashughuli							mashuḡūli	مَشُغُولِ	mashuḡūli
2345	199	d	2	ممٗويَ	mmōya	mmoya							mmōya	ممٗويَ	mmōya
2326	198	b	1	يٖيٖ	yeye	yeye							yeye	يٖيٖ	yeye
2327	198	b	2	هُمْپَ	humpa	humpa							humpa	هُمْپَ	humpa
2328	198	b	3	ثَقِيلِ	thaqı̄li	thaqili							thaqı̄li	ثَقِيلِ	thaqı̄li
2360	201	a	3	مْتٗ	mṯo	mto							mṯo	مْتٗ	mṯo
2329	198	c	1	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
2330	198	c	2	كُسِتَهَمِيلِ	kusiṯahamı̄li	kusitahamili							kusiṯahamı̄li	كُسِتَهَمِيلِ	kusiṯahamı̄li
2346	200	a	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2331	198	d	1	هُلِوٖيزِ	huliwēzi	huliwezi							huliwēzi	هُلِوٖيزِ	huliwēzi
2332	198	d	2	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
2333	198	d	3	پِيَ	piya	piya							piya	پِيَ	piya
2347	200	a	2	ممٗويَ	mmōya	mmoya							mmōya	ممٗويَ	mmōya
2348	200	a	3	كُتٗشٖيكَ	kuṯoshēka	kutosheka							kuṯoshēka	كُتٗشٖيكَ	kuṯoshēka
2334	199	a	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2335	199	a	2	ذَرُورَ	dharūra	dharura							dharūra	ذَرُورَ	dharūra
2336	199	a	3	زِيسٗ	zı̄so	ziso							zı̄so	زِيسٗ	zı̄so
2337	199	a	4	بُودِ	būḏi	budi							būḏi	بُودِ	būḏi
2370	202	a	1	أُسِئِفَانْيَ	usiifānya	usiifanya							usiifānya	أُسِئِفَانْيَ	usiifānya
2371	202	a	2	چَ	cha	cha							cha	چَ	cha
2372	202	a	3	نْيُوكِ	nyūki	nyuki							nyūki	نْيُوكِ	nyūki
2361	201	b	1	خَاسَ	ẖāsa	hasa							ẖāsa	خَاسَ	ẖāsa
2349	200	b	1	نْدِيٗ	nḏiyo	ndiyo							nḏiyo	نْدِيٗ	nḏiyo
2350	200	b	2	بٗورَ	bōra	bora							bōra	بٗورَ	bōra
2351	200	b	3	بِيلَ	bı̄la	bila							bı̄la	بِيلَ	bı̄la
2352	200	b	4	شَاكَ	shāka	shaka							shāka	شَاكَ	shāka
2362	201	b	2	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2363	201	b	3	نَ	na	na							na	نَ	na
2353	200	c	1	كُئٖنْڠٖيزَ	kuengēza	kuengeza							kuengēza	كُئٖنْڠٖيزَ	kuengēza
2354	200	c	2	أُكِتَاكَ	ukiṯāka	ukitaka							ukiṯāka	أُكِتَاكَ	ukiṯāka
2364	201	b	4	وَتٗوتٗ	waṯōṯo	watoto							waṯōṯo	وَتٗوتٗ	waṯōṯo
2355	200	d	1	نِ	ni	ni							ni	نِ	ni
2356	200	d	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
2357	200	d	3	نِلٗكْوَمْبِيَ	nilokwambiya	nilokwambiya							nilokwambiya	نِلٗكْوَمْبِيَ	nilokwambiya
2378	202	d	1	مَارَ	māra	mara							māra	مَارَ	māra
2365	201	c	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
2366	201	c	2	هِسَابُ	hisābu	hisabu							hisābu	هِسَابُ	hisābu
2367	201	c	3	مزِيتٗ	mzı̄ṯo	mzito							mzı̄ṯo	مزِيتٗ	mzı̄ṯo
2379	202	d	2	هُوَ	huwa	huwa							huwa	هُوَ	huwa
2380	202	d	3	أُمٖتٖيَ	umeṯeya	umeteya							umeṯeya	أُمٖتٖيَ	umeṯeya
2368	201	d	1	أَخٖيرَ	aẖēra	ahera							aẖēra	أَخٖيرَ	aẖēra
2369	201	d	2	تَكُنْڠٗجٖيَ	ṯakungojeya	takungojeya							ṯakungojeya	تَكُنْڠٗجٖيَ	ṯakungojeya
2373	202	b	1	هُتُوِ	huṯuwi	hutuwi							huṯuwi	هُتُوِ	huṯuwi
2374	202	b	2	نَ	na	na							na	نَ	na
2375	202	b	3	هُدِرِيكِ	huḏirı̄ki	hudiriki							huḏirı̄ki	هُدِرِيكِ	huḏirı̄ki
2376	202	c	1	أُكِشِيكْوَ	ukishı̄kwa	ukishikwa							ukishı̄kwa	أُكِشِيكْوَ	ukishı̄kwa
2377	202	c	2	هُشِكِيكِ	hushikı̄ki	hushikiki							hushikı̄ki	هُشِكِيكِ	hushikı̄ki
2389	203	c	2	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
2384	203	b	1	هُونَ	hūna	huna							hūna	هُونَ	hūna
2381	203	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2390	203	c	3	تَانْڠُ	ṯāngu	tangu							ṯāngu	تَانْڠُ	ṯāngu
2391	203	c	4	كْوَانْدَ	kwānḏa	kwanda							kwānḏa	كْوَانْدَ	kwānḏa
2393	203	d	2	وَلِتوَمْبِيَ	waliṯwambiya	walitwambiya							waliṯwambiya	وَلِتوَمْبِيَ	waliṯwambiya
2385	203	b	2	بُودِ	būḏi	budi							būḏi	بُودِ	būḏi
2386	203	b	3	نَ	na	na							na	نَ	na
2387	203	b	4	كُپٖينْدَ	kupēnḏa	kupenda							kupēnḏa	كُپٖينْدَ	kupēnḏa
2388	203	c	1	مْتِ	mṯi	mti							mṯi	مْتِ	mṯi
2395	204	a	2	كِمْپٖينْدَ	kimpēnḏa	kimpenda							kimpēnḏa	كِمْپٖينْدَ	kimpēnḏa
2392	203	d	1	وَزٖئٖ	wazee	wazee							wazee	وَزٖئٖ	wazee
2396	204	a	3	مْكٖ	mke	mke							mke	مْكٖ	mke
2398	204	b	2	وَزٖئٖ	wazee	wazee							wazee	وَزٖئٖ	wazee
2394	204	a	1	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
2399	204	b	3	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
2397	204	b	1	وَپٖينْدٖ	wapēnḏe	wapende							wapēnḏe	وَپٖينْدٖ	wapēnḏe
2430	207	a	2	كَاتُ	kāṯu	katu							kāṯu	كَاتُ	kāṯu
2431	207	a	3	سِسُبُوتُ	sisubūṯu	sisubutu							sisubūṯu	سِسُبُوتُ	sisubūṯu
2400	204	c	1	وَاكْوٖ	wākwe	wakwe							wākwe	وَاكْوٖ	wākwe
2401	204	c	2	مْبوَاكٗ	mbwāko	mbwako							mbwāko	مْبوَاكٗ	mbwāko
2402	204	c	3	سِئٖپُوكٖ	siepūke	siepuke							siepūke	سِئٖپُوكٖ	siepūke
2403	204	d	1	نَ	na	na							na	نَ	na
2404	204	d	2	هِشِيمَ	hishı̄ma	hishima							hishı̄ma	هِشِيمَ	hishı̄ma
2405	204	d	3	كُوٖكٖيَ	kuwekeya	kuwekeya							kuwekeya	كُوٖكٖيَ	kuwekeya
2475	210	c	3	أُپٖمْبٖينٖ	upembēne	upembene							upembēne	أُپٖمْبٖينٖ	upembēne
2470	210	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2406	205	a	1	مُهِشِيمُ	muhishı̄mu	muhishimu							muhishı̄mu	مُهِشِيمُ	muhishı̄mu
2407	205	a	2	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
2408	205	a	3	مَامَ	māma	mama							māma	مَامَ	māma
2432	207	b	1	كُذَرَاءُ	kudharāu	kudharau							kudharāu	كُذَرَاءُ	kudharāu
2433	207	b	2	هَاءٗ	hāo	hao							hāo	هَاءٗ	hāo
2434	207	b	3	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
2409	205	b	1	پِيَ	piya	piya							piya	پِيَ	piya
2410	205	b	2	بَبَاكٖ	babāke	babake							babāke	بَبَاكٖ	babāke
2411	205	b	3	دَئِيمَ	ḏaı̄ma	daima							ḏaı̄ma	دَئِيمَ	ḏaı̄ma
2412	205	c	1	كُوَذَرَاءُ	kuwadharāu	kuwadharau							kuwadharāu	كُوَذَرَاءُ	kuwadharāu
2451	208	d	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
2452	208	d	3	كُؤَنْڠَلِيَ	kuangaliya	kuangaliya							kuangaliya	كُؤَنْڠَلِيَ	kuangaliya
2415	205	d	1	تٗونٗ	ṯōno	tono							ṯōno	تٗونٗ	ṯōno
2416	205	d	2	نَاوٖ	nāwe	nawe							nāwe	نَاوٖ	nāwe
2417	205	d	3	تَمْتِيَ	ṯamṯiya	tamtiya							ṯamṯiya	تَمْتِيَ	ṯamṯiya
2435	207	c	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
2436	207	c	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
2437	207	c	3	أُتُكُوتُ	uṯukūṯu	utukutu							uṯukūṯu	أُتُكُوتُ	uṯukūṯu
2418	206	a	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2419	206	a	2	أُؤٗوڤُ	uōvu	uovu							uōvu	أُؤٗوڤُ	uōvu
2420	206	a	3	سِوَنٖينٖ	siwanēne	siwanene							siwanēne	سِوَنٖينٖ	siwanēne
2421	206	b	1	إِتُونْڠٖ	iṯūnge	itunge							iṯūnge	إِتُونْڠٖ	iṯūnge
2422	206	b	2	سِوَتُكَانٖ	siwaṯukāne	siwatukane							siwaṯukāne	سِوَتُكَانٖ	siwaṯukāne
2438	207	d	1	كْوَاءٗ	kwāo	kwao							kwāo	كْوَاءٗ	kwāo
2439	207	d	2	أُمٖشُهُدِيَ	umeshuhuḏiya	umeshuhudiya							umeshuhuḏiya	أُمٖشُهُدِيَ	umeshuhuḏiya
2423	206	c	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
2424	206	c	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
2425	206	c	3	هُويٗ	hūyo	huyo							hūyo	هُويٗ	hūyo
2426	206	c	4	مْوَانٖ	mwāne	mwane							mwāne	مْوَانٖ	mwāne
2427	206	d	1	هِشِيمَ	hishı̄ma	hishima							hishı̄ma	هِشِيمَ	hishı̄ma
2428	206	d	2	مٖوَڤُنْدِيَ	mewavunḏiya	mewavundiya							mewavunḏiya	مٖوَڤُنْدِيَ	mewavunḏiya
2463	209	d	1	سِيٖ	siye	siye							siye	سِيٖ	siye
2464	209	d	2	دٖيوٖ	ḏēwe	dewe							ḏēwe	دٖيوٖ	ḏēwe
2465	209	d	3	كَكُتِيَ	kakuṯiya	kakutiya							kakuṯiya	كَكُتِيَ	kakuṯiya
2453	209	a	1	أُكِيوَ	ukı̄wa	ukiwa							ukı̄wa	أُكِيوَ	ukı̄wa
2454	209	a	2	أُونَ	ūna	una							ūna	أُونَ	ūna
2455	209	a	3	نَفَاسِ	nafāsi	nafasi							nafāsi	نَفَاسِ	nafāsi
2440	208	a	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2441	208	a	2	نِ	ni	ni							ni	نِ	ni
2442	208	a	3	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
2443	208	a	4	مَتَاتَ	maṯāṯa	matata							maṯāṯa	مَتَاتَ	maṯāṯa
2444	208	b	1	سِؤٗ	sio	sio							sio	سِؤٗ	sio
2445	208	b	2	نَاءٗ	nāo	nao							nāo	نَاءٗ	nāo
2446	208	b	3	أُتَتٖيتَ	uṯaṯēṯa	utateta							uṯaṯēṯa	أُتَتٖيتَ	uṯaṯēṯa
2447	208	c	1	خٖيرِ	ẖēri	heri							ẖēri	خٖيرِ	ẖēri
2448	208	c	2	مْبَالِ	mbāli	mbali							mbāli	مْبَالِ	mbāli
2449	208	c	3	كُئِڤُوتَ	kuivūṯa	kuivuta							kuivūṯa	كُئِڤُوتَ	kuivūṯa
2457	209	b	2	كُوَاپَ	kuwāpa	kuwapa							kuwāpa	كُوَاپَ	kuwāpa
2458	209	b	3	سِكُوَاسِ	sikuwāsi	sikuwasi							sikuwāsi	سِكُوَاسِ	sikuwāsi
2471	210	b	2	كُپَاتَ	kupāṯa	kupata							kupāṯa	كُپَاتَ	kupāṯa
2472	210	b	3	وَدٖنْڠٖينٖ	waḏengēne	wadengene							waḏengēne	وَدٖنْڠٖينٖ	waḏengēne
2459	209	c	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
2460	209	c	2	فَانْيَ	fānya	fanya							fānya	فَانْيَ	fānya
2461	209	c	3	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2462	209	c	4	كِئَاسِ	kiāsi	kiasi							kiāsi	كِئَاسِ	kiāsi
2466	210	a	1	كُونَ	kūna	kuna							kūna	كُونَ	kūna
2467	210	a	2	وَاكْوٖ	wākwe	wakwe							wākwe	وَاكْوٖ	wākwe
2468	210	a	3	وَ	wa	wa							wa	وَ	wa
2469	210	a	4	وَنْڠِينٖ	wangı̄ne	wangine							wangı̄ne	وَنْڠِينٖ	wangı̄ne
2481	211	a	4	سَانَ	sāna	sana							sāna	سَانَ	sāna
2473	210	c	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2474	210	c	2	نَاءٗ	nāo	nao							nāo	نَاءٗ	nāo
2476	210	d	1	هَذَارِ	hadhāri	hadhari							hadhāri	هَذَارِ	hadhāri
2477	210	d	2	نَكُؤُسِيَ	nakuusiya	nakuusiya							nakuusiya	نَكُؤُسِيَ	nakuusiya
2483	211	b	2	هَوَكُدَنْڠَانَ	hawakuḏangāna	hawakudangana							hawakuḏangāna	هَوَكُدَنْڠَانَ	hawakuḏangāna
2478	211	a	1	وَنْڠِينٖ	wangı̄ne	wangine							wangı̄ne	وَنْڠِينٖ	wangı̄ne
2479	211	a	2	نِ	ni	ni							ni	نِ	ni
2480	211	a	3	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
2485	211	c	2	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2482	211	b	1	كَاتُ	kāṯu	katu							kāṯu	كَاتُ	kāṯu
2486	211	c	3	هَاجَ	hāja	haja							hāja	هَاجَ	hāja
2487	211	c	4	أُونَ	ūna	una							ūna	أُونَ	ūna
2489	211	d	2	كُكْوَمْبِيَ	kukwambiya	kukwambiya							kukwambiya	كُكْوَمْبِيَ	kukwambiya
2484	211	c	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
2491	212	a	2	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
2488	211	d	1	هَأَنْدَامِ	haanḏāmi	haandami							haanḏāmi	هَأَنْدَامِ	haanḏāmi
2490	212	a	1	هَنَانْدِ	hanānḏi	hanandi							hanānḏi	هَنَانْدِ	hanānḏi
2492	212	a	3	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
2522	214	c	3	بَهَاتِ	bahāṯi	bahati							bahāṯi	بَهَاتِ	bahāṯi
2523	214	c	4	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
2493	212	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2494	212	b	2	مْوَنَاوٖ	mwanāwe	mwanawe							mwanāwe	مْوَنَاوٖ	mwanāwe
2495	212	b	3	كَتَمَانِ	kaṯamāni	katamani							kaṯamāni	كَتَمَانِ	kaṯamāni
2496	212	c	1	كُوچَ	kūcha	kucha							kūcha	كُوچَ	kūcha
2497	212	c	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
2498	212	c	3	وَسِذَانِ	wasidhāni	wasidhani							wasidhāni	وَسِذَانِ	wasidhāni
2567	218	b	3	وٖينْيٖ	wēnye	wenye							wēnye	وٖينْيٖ	wēnye
2568	218	b	4	مَأَنَ	maana	maana							maana	مَأَنَ	maana
2499	212	d	1	أَمٖكْوٖينْدَ	amekwēnḏa	amekwenda							amekwēnḏa	أَمٖكْوٖينْدَ	amekwēnḏa
2500	212	d	2	كُتَوِيَ	kuṯawiya	kutawiya							kuṯawiya	كُتَوِيَ	kuṯawiya
2555	217	b	1	سِوَنْڠٗوجٖ	siwangōje	siwangoje							siwangōje	سِوَنْڠٗوجٖ	siwangōje
2542	216	b	1	كِيسَ	kı̄sa	kisa							kı̄sa	كِيسَ	kı̄sa
2501	213	a	1	نْدِيَانِ	nḏiyāni	ndiyani							nḏiyāni	نْدِيَانِ	nḏiyāni
2502	213	a	2	مُكِكُتَانَ	mukikuṯāna	mukikutana							mukikuṯāna	مُكِكُتَانَ	mukikuṯāna
2524	214	d	1	نِ	ni	ni							ni	نِ	ni
2525	214	d	2	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
2526	214	d	3	پَ	pa	pa							pa	پَ	pa
2527	214	d	4	كُزِوِيَ	kuziwiya	kuziwiya							kuziwiya	كُزِوِيَ	kuziwiya
2503	213	b	1	هُوَ	huwa	huwa							huwa	هُوَ	huwa
2504	213	b	2	نَ	na	na							na	نَ	na
2505	213	b	3	هَرَاكَ	harāka	haraka							harāka	هَرَاكَ	harāka
2506	213	b	4	سَانَ	sāna	sana							sāna	سَانَ	sāna
2507	213	c	1	هَمَكِنِيكِ	hamakinı̄ki	hamakiniki							hamakinı̄ki	هَمَكِنِيكِ	hamakinı̄ki
2508	213	c	2	كُنٖينَ	kunēna	kunena							kunēna	كُنٖينَ	kunēna
2543	216	b	2	تَكْوٖتٖيَ	ṯakweṯeya	takweteya							ṯakweṯeya	تَكْوٖتٖيَ	ṯakweṯeya
2544	216	b	3	شِيدَ	shı̄ḏa	shida							shı̄ḏa	شِيدَ	shı̄ḏa
2509	213	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2510	213	d	2	لِيلٗ	lı̄lo	lilo							lı̄lo	لِيلٗ	lı̄lo
2511	213	d	3	كُلِكِمْبِيَ	kulikimbiya	kulikimbiya							kulikimbiya	كُلِكِمْبِيَ	kulikimbiya
2528	215	a	1	أَامَ	āma	ama							āma	أَامَ	āma
2529	215	a	2	وَكْوٖؤٗ	wakweo	wakweo							wakweo	وَكْوٖؤٗ	wakweo
2530	215	a	3	وَكِيوَ	wakı̄wa	wakiwa							wakı̄wa	وَكِيوَ	wakı̄wa
2512	214	a	1	وَكِيوَ	wakı̄wa	wakiwa							wakı̄wa	وَكِيوَ	wakı̄wa
2513	214	a	2	وَاكْوٖ	wākwe	wakwe							wākwe	وَاكْوٖ	wākwe
2514	214	a	3	وَ	wa	wa							wa	وَ	wa
2515	214	a	4	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
2516	214	b	1	كْوَاءٗ	kwāo	kwao							kwāo	كْوَاءٗ	kwāo
2517	214	b	2	هِيزِ	hı̄zi	hizi							hı̄zi	هِيزِ	hı̄zi
2518	214	b	3	سِيفَ	sı̄fa	sifa							sı̄fa	سِيفَ	sı̄fa
2519	214	b	4	زِيكٗ	zı̄ko	ziko							zı̄ko	زِيكٗ	zı̄ko
2556	217	b	2	كُتَرَاجِ	kuṯarāji	kutaraji							kuṯarāji	كُتَرَاجِ	kuṯarāji
2520	214	c	1	بَاسِ	bāsi	basi							bāsi	بَاسِ	bāsi
2531	215	b	1	نِ	ni	ni							ni	نِ	ni
2532	215	b	2	وَ	wa	wa							wa	وَ	wa
2533	215	b	3	كُپٖينْدَ	kupēnḏa	kupenda							kupēnḏa	كُپٖينْدَ	kupēnḏa
2534	215	b	4	كُپٗوَ	kupowa	kupowa							kupowa	كُپٗوَ	kupowa
2545	216	c	1	إِيلَ	ı̄la	ila							ı̄la	إِيلَ	ı̄la
2546	216	c	2	وَاوٖ	wāwe	wawe							wāwe	وَاوٖ	wāwe
2535	215	c	1	كُوَاپَ	kuwāpa	kuwapa							kuwāpa	كُوَاپَ	kuwāpa
2536	215	c	2	هُكُزُوِيوَ	hukuzūı̄wa	hukuzuwiwa							hukuzūı̄wa	هُكُزُوِيوَ	hukuzūı̄wa
2547	216	c	3	سِ	si	si							si	سِ	si
2548	216	c	4	لَبُودَ	labūḏa	labuda							labūḏa	لَبُودَ	labūḏa
2537	215	d	1	مْكٗونٗ	mkōno	mkono							mkōno	مْكٗونٗ	mkōno
2538	215	d	2	كُوَنْيٗشٖيَ	kuwanyosheya	kuwanyosheya							kuwanyosheya	كُوَنْيٗشٖيَ	kuwanyosheya
2539	216	a	1	أُسِوٖيكٖ	usiwēke	usiweke							usiwēke	أُسِوٖيكٖ	usiwēke
2540	216	a	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
2541	216	a	3	أَادَ	āḏa	ada							āḏa	أَادَ	āḏa
2563	218	a	1	أُكِيوَ	ukı̄wa	ukiwa							ukı̄wa	أُكِيوَ	ukı̄wa
2612	222	a	1	أُسٖينْدٖ	usēnḏe	usende							usēnḏe	أُسٖينْدٖ	usēnḏe
2564	218	a	2	أُمٖوَؤٗونَ	umewaōna	umewaona							umewaōna	أُمٖوَؤٗونَ	umewaōna
2549	216	d	1	نِ	ni	ni							ni	نِ	ni
2550	216	d	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
2551	216	d	3	وَهِتَجِيَ	wahiṯajiya	wahitajiya							wahiṯajiya	وَهِتَجِيَ	wahiṯajiya
2557	217	c	1	وَكِيوَ	wakı̄wa	wakiwa							wakı̄wa	وَكِيوَ	wakı̄wa
2558	217	c	2	كْوَاكٗ	kwāko	kwako							kwāko	كْوَاكٗ	kwāko
2559	217	c	3	هَوَاجِ	hawāji	hawaji							hawāji	هَوَاجِ	hawāji
2552	217	a	1	وَكِيوَ	wakı̄wa	wakiwa							wakı̄wa	وَكِيوَ	wakı̄wa
2553	217	a	2	نِ	ni	ni							ni	نِ	ni
2554	217	a	3	وَهِتَاجِ	wahiṯāji	wahitaji							wahiṯāji	وَهِتَاجِ	wahiṯāji
2560	217	d	1	نِ	ni	ni							ni	نِ	ni
2561	217	d	2	سَاوَ	sāwa	sawa							sāwa	سَاوَ	sāwa
2562	217	d	3	كُوَپٖكٖيَ	kuwapekeya	kuwapekeya							kuwapekeya	كُوَپٖكٖيَ	kuwapekeya
2569	218	c	1	نِ	ni	ni							ni	نِ	ni
2570	218	c	2	وَالٖ	wāle	wale							wāle	وَالٖ	wāle
2565	218	b	1	سِ	si	si							si	سِ	si
2566	218	b	2	وَاتُ	wāṯu	watu							wāṯu	وَاتُ	wāṯu
2574	218	d	2	كُپٖينْدَ	kupēnḏa	kupenda							kupēnḏa	كُپٖينْدَ	kupēnḏa
2577	219	a	2	سِتٗوٖ	siṯowe	sitowe							siṯowe	سِتٗوٖ	siṯowe
2578	219	a	3	چَاكٗ	chāko	chako							chāko	چَاكٗ	chāko
2573	218	d	1	وَ	wa	wa							wa	وَ	wa
2571	218	c	3	وَ	wa	wa							wa	وَ	wa
2572	218	c	4	كُدَنْڠَانَ	kuḏangāna	kudangana							kuḏangāna	كُدَنْڠَانَ	kuḏangāna
2575	218	d	3	كُپَپِيَ	kupapiya	kupapiya							kupapiya	كُپَپِيَ	kupapiya
2580	219	b	2	مْوَمْبِيَ	mwambiya	mwambiya							mwambiya	مْوَمْبِيَ	mwambiya
2576	219	a	1	زِوِيَ	ziwiya	ziwiya							ziwiya	زِوِيَ	ziwiya
2581	219	b	3	مْكٖ	mke	mke							mke	مْكٖ	mke
2582	219	b	4	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
2584	219	c	2	هُتٗوفُ	huṯōfu	hutofu							huṯōfu	هُتٗوفُ	huṯōfu
2579	219	b	1	نَ	na	na							na	نَ	na
2585	219	c	3	سُمْبُوكٗ	sumbūko	sumbuko							sumbūko	سُمْبُوكٗ	sumbūko
2615	222	b	1	تَئِڤُتِيَ	ṯaivuṯiya	taivutiya							ṯaivuṯiya	تَئِڤُتِيَ	ṯaivuṯiya
2616	222	b	2	تَأَبُ	ṯaabu	taabu							ṯaabu	تَأَبُ	ṯaabu
2586	219	d	1	بِرِيكَ	birı̄ka	birika							birı̄ka	بِرِيكَ	birı̄ka
2587	219	d	2	مْبٗوڤُ	mbōvu	mbovu							mbōvu	مْبٗوڤُ	mbōvu
2588	219	d	3	كُتِيَ	kuṯiya	kutiya							kuṯiya	كُتِيَ	kuṯiya
2589	220	a	1	أَامَ	āma	ama							āma	أَامَ	āma
2590	220	a	2	وَسِؤٗ	wasio	wasio							wasio	وَسِؤٗ	wasio
2591	220	a	3	وَزَازِ	wazāzi	wazazi							wazāzi	وَزَازِ	wazāzi
2635	223	d	3	شَرِيَ	shariya	shariya							shariya	شَرِيَ	shariya
2592	220	b	1	وَجٗومْبَ	wajōmba	wajomba							wajōmba	وَجٗومْبَ	wajōmba
2594	220	b	3	مَشَنْڠَازِ	mashangāzi	mashangazi							mashangāzi	مَشَنْڠَازِ	mashangāzi
2664	226	b	2	نِ	ni	ni							ni	نِ	ni
2617	222	c	1	نِ	ni	ni							ni	نِ	ni
2618	222	c	2	وٖينْڠِ	wēngi	wengi							wēngi	وٖينْڠِ	wēngi
2619	222	c	3	وَ	wa	wa							wa	وَ	wa
2595	220	c	1	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
2596	220	c	2	كُونَ	kūna	kuna							kūna	كُونَ	kūna
2597	220	c	3	نْڠُومُ	ngūmu	ngumu							ngūmu	نْڠُومُ	ngūmu
2598	220	c	4	كَازِ	kāzi	kazi							kāzi	كَازِ	kāzi
2620	222	c	4	كُهَرِيبُ	kuharı̄bu	kuharibu							kuharı̄bu	كُهَرِيبُ	kuharı̄bu
2653	225	c	1	خٖيرِ	ẖēri	heri							ẖēri	خٖيرِ	ẖēri
2599	220	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2600	220	d	2	يٖيتُ	yēṯu	yetu							yēṯu	يٖيتُ	yēṯu
2601	220	d	3	هِينِ	hı̄ni	hini							hı̄ni	هِينِ	hı̄ni
2602	220	d	4	دُنِيَ	ḏuniya	duniya							ḏuniya	دُنِيَ	ḏuniya
2636	224	a	1	أُسِؤٗنْدٗوٖ	usionḏowe	usiondowe							usionḏowe	أُسِؤٗنْدٗوٖ	usionḏowe
2621	222	d	1	كَتِيكَ	kaṯı̄ka	katika							kaṯı̄ka	كَتِيكَ	kaṯı̄ka
2603	221	a	1	كْوَانْدَ	kwānḏa	kwanda							kwānḏa	كْوَانْدَ	kwānḏa
2604	221	a	2	أُسِوَتَپِيٖ	usiwaṯapiye	usiwatapiye							usiwaṯapiye	أُسِوَتَپِيٖ	usiwaṯapiye
2622	222	d	2	نِمٖزٗتَايَ	nimezoṯāya	nimezotaya							nimezoṯāya	نِمٖزٗتَايَ	nimezoṯāya
2605	221	b	1	كٖيتِ	kēṯi	keti							kēṯi	كٖيتِ	kēṯi
2606	221	b	2	مْبَالِ	mbāli	mbali							mbāli	مْبَالِ	mbāli
2607	221	b	3	وَنْڠَلِيٖ	wangaliye	wangaliye							wangaliye	وَنْڠَلِيٖ	wangaliye
2637	224	a	2	مِپَاكَ	mipāka	mipaka							mipāka	مِپَاكَ	mipāka
2608	221	c	1	أُكِيَؤٗونَ	ukiyaōna	ukiyaona							ukiyaōna	أُكِيَؤٗونَ	ukiyaōna
2609	221	c	2	مَمْبٗويٖ	mambōye	mamboye							mambōye	مَمْبٗويٖ	mambōye
2610	221	d	1	نْدِيَ	nḏiya	ndiya							nḏiya	نْدِيَ	nḏiya
2611	221	d	2	هَيَكْوٖكٖلٖيَ	hayakwekeleya	hayakwekeleya							hayakwekeleya	هَيَكْوٖكٖلٖيَ	hayakwekeleya
2623	223	a	1	أَامَ	āma	ama							āma	أَامَ	āma
2624	223	a	2	مَشٖمٖيڠِ	mashemēgi	mashemegi							mashemēgi	مَشٖمٖيڠِ	mashemēgi
2614	222	a	3	كَرِيبُ	karı̄bu	karibu							karı̄bu	كَرِيبُ	karı̄bu
2654	225	c	2	وَامْبٖ	wāmbe	wambe							wāmbe	وَامْبٖ	wāmbe
2647	225	a	1	خٖيرِ	ẖēri	heri							ẖēri	خٖيرِ	ẖēri
2648	225	a	2	وَمْبِيوٖ	wambı̄we	wambiwe							wambı̄we	وَمْبِيوٖ	wambı̄we
2649	225	a	3	مُؤٗوڤُ	muōvu	muovu							muōvu	مُؤٗوڤُ	muōvu
2626	223	b	1	دَادَ	ḏāḏa	dada							ḏāḏa	دَادَ	ḏāḏa
2627	223	b	2	زَاكٖ	zāke	zake							zāke	زَاكٖ	zāke
2629	223	b	4	وَاكٗ	wāko	wako							wāko	وَاكٗ	wāko
2638	224	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2639	224	b	2	مزَاهَ	mzāha	mzaha							mzāha	مزَاهَ	mzāha
2640	224	b	3	نَ	na	na							na	نَ	na
2630	223	c	1	مْوَنَانْڠُ	mwanāngu	mwanangu							mwanāngu	مْوَنَانْڠُ	mwanāngu
2631	223	c	2	سِڤُونْدٖ	sivūnḏe	sivunde							sivūnḏe	سِڤُونْدٖ	sivūnḏe
2632	223	c	3	مِيكٗ	mı̄ko	miko							mı̄ko	مِيكٗ	mı̄ko
2641	224	b	4	ذِهَاكَ	dhihāka	dhihaka							dhihāka	ذِهَاكَ	dhihāka
2633	223	d	1	إِلٗوٖيكْوَ	ilowēkwa	ilowekwa							ilowēkwa	إِلٗوٖيكْوَ	ilowēkwa
2634	223	d	2	نَ	na	na							na	نَ	na
2655	225	c	3	أُونَ	ūna	una							ūna	أُونَ	ūna
2642	224	c	1	مَارَ	māra	mara							māra	مَارَ	māra
2643	224	c	2	مَامْبٗ	māmbo	mambo							māmbo	مَامْبٗ	māmbo
2644	224	c	3	هُڠٖؤُوكَ	hugeūka	hugeuka							hugeūka	هُڠٖؤُوكَ	hugeūka
2656	225	c	4	وِيڤُ	wı̄vu	wivu							wı̄vu	وِيڤُ	wı̄vu
2645	224	d	1	كِزَأَزَاءَ	kizaazāa	kizaazaa							kizaazāa	كِزَأَزَاءَ	kizaazāa
2646	224	d	2	كِكَايَ	kikāya	kikaya							kikāya	كِكَايَ	kikāya
2650	225	b	1	كُلِيكٗ	kulı̄ko	kuliko							kulı̄ko	كُلِيكٗ	kulı̄ko
2651	225	b	2	كُپَاتَ	kupāṯa	kupata							kupāṯa	كُپَاتَ	kupāṯa
2652	225	b	3	كٗوڤُ	kōvu	kovu							kōvu	كٗوڤُ	kōvu
2667	226	c	2	كُيِفَانْيَ	kuyifānya	kuyifanya							kuyifānya	كُيِفَانْيَ	kuyifānya
2668	226	c	3	تٗونْڠٗ	ṯōngo	tongo							ṯōngo	تٗونْڠٗ	ṯōngo
2663	226	b	1	أُكِزِيدِ	ukizı̄ḏi	ukizidi							ukizı̄ḏi	أُكِزِيدِ	ukizı̄ḏi
2659	226	a	1	وِيڤُ	wı̄vu	wivu							wı̄vu	وِيڤُ	wı̄vu
2660	226	a	2	نِ	ni	ni							ni	نِ	ni
2657	225	d	1	كُلِيكٗ	kulı̄ko	kuliko							kulı̄ko	كُلِيكٗ	kulı̄ko
2658	225	d	2	كُكُڤُنْدِيَ	kukuvunḏiya	kukuvundiya							kukuvunḏiya	كُكُڤُنْدِيَ	kukuvunḏiya
2661	226	a	3	كَامَ	kāma	kama							kāma	كَامَ	kāma
2662	226	a	4	كِؤُونْڠٗ	kiūngo	kiungo							kiūngo	كِؤُونْڠٗ	kiūngo
2665	226	b	3	تٖوٖينْڠٗ	ṯewēngo	tewengo							ṯewēngo	تٖوٖينْڠٗ	ṯewēngo
2670	226	d	2	هُنْڠِيَ	hungiya	hungiya							hungiya	هُنْڠِيَ	hungiya
2666	226	c	1	پِيَ	piya	piya							piya	پِيَ	piya
2672	227	a	2	كُؤُكٗوسَ	kuukōsa	kuukosa							kuukōsa	كُؤُكٗوسَ	kuukōsa
2669	226	d	1	أُدُيُثِينِ	uḏuyuthı̄ni	uduyuthini							uḏuyuthı̄ni	أُدُيُثِينِ	uḏuyuthı̄ni
2673	227	a	3	كَبِيسَ	kabı̄sa	kabisa							kabı̄sa	كَبِيسَ	kabı̄sa
2675	227	b	2	نْدِيٗ	nḏiyo	ndiyo							nḏiyo	نْدِيٗ	nḏiyo
2671	227	a	1	نَ	na	na							na	نَ	na
2676	227	b	3	كِسَاسَ	kisāsa	kisasa							kisāsa	كِسَاسَ	kisāsa
2726	231	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2727	231	b	2	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
2708	229	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2709	229	d	2	وٖينْدٖ	wēnḏe	wende							wēnḏe	وٖينْدٖ	wēnḏe
2677	227	c	1	هِيٗ	hiyo	hiyo							hiyo	هِيٗ	hiyo
2678	227	c	2	سِ	si	si							si	سِ	si
2679	227	c	3	نْجٖيمَ	njēma	njema							njēma	نْجٖيمَ	njēma
2680	227	c	4	سِيَاسَ	siyāsa	siyasa							siyāsa	سِيَاسَ	siyāsa
2710	229	d	3	تَيِڤُنِيَ	ṯayivuniya	tayivuniya							ṯayivuniya	تَيِڤُنِيَ	ṯayivuniya
2681	227	d	1	يَ	ya	ya							ya	يَ	ya
2682	227	d	2	نْيُمْبَانِ	nyumbāni	nyumbani							nyumbāni	نْيُمْبَانِ	nyumbāni
2683	227	d	3	كُتُمِيَ	kuṯumiya	kutumiya							kuṯumiya	كُتُمِيَ	kuṯumiya
2728	231	b	3	وَاجَ	wāja	waja							wāja	وَاجَ	wāja
2729	231	b	4	هُنٖينَ	hunēna	hunena							hunēna	هُنٖينَ	hunēna
2684	228	a	1	نِ	ni	ni							ni	نِ	ni
2685	228	a	2	لَزِيمَ	lazı̄ma	lazima							lazı̄ma	لَزِيمَ	lazı̄ma
2686	228	a	3	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
2687	228	a	4	نَاءٗ	nāo	nao							nāo	نَاءٗ	nāo
2711	230	a	1	نَ	na	na							na	نَ	na
2712	230	a	2	فُفنُونُ	fufnūnu	fufnunu							fufnūnu	فُفنُونُ	fufnūnu
2713	230	a	3	أُكِپَاتَ	ukipāṯa	ukipata							ukipāṯa	أُكِپَاتَ	ukipāṯa
2688	228	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2689	228	b	2	أَلِيٗ	aliyo	aliyo							aliyo	أَلِيٗ	aliyo
2690	228	b	3	نِ	ni	ni							ni	نِ	ni
2691	228	b	4	مْكٖؤٗ	mkeo	mkeo							mkeo	مْكٖؤٗ	mkeo
2692	228	c	1	كِكُزُمْبُوَ	kikuzumbuwa	kikuzumbuwa							kikuzumbuwa	كِكُزُمْبُوَ	kikuzumbuwa
2693	228	c	2	هُنَاءٗ	hunāo	hunao							hunāo	هُنَاءٗ	hunāo
2694	228	d	1	مَتٗونِ	maṯōni	matoni							maṯōni	مَتٗونِ	maṯōni
2695	228	d	2	هُتٗمْنْڠِيَ	huṯomngiya	hutomngiya							huṯomngiya	هُتٗمْنْڠِيَ	huṯomngiya
2752	233	b	3	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
2714	230	b	1	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
2696	229	a	1	كُوَ	kuwa	kuwa							kuwa	كُوَ	kuwa
2697	229	a	2	نَاءٗ	nāo	nao							nāo	نَاءٗ	nāo
2698	229	a	3	وَ	wa	wa							wa	وَ	wa
2699	229	a	4	كَدِيرِ	kaḏı̄ri	kadiri							kaḏı̄ri	كَدِيرِ	kaḏı̄ri
2715	230	b	2	مْكٖ	mke	mke							mke	مْكٖ	mke
2716	230	b	3	نِ	ni	ni							ni	نِ	ni
2717	230	b	4	مْتَاتَ	mṯāṯa	mtata							mṯāṯa	مْتَاتَ	mṯāṯa
2700	229	b	1	هِيٗ	hiyo	hiyo							hiyo	هِيٗ	hiyo
2701	229	b	2	نْدِيٗ	nḏiyo	ndiyo							nḏiyo	نْدِيٗ	nḏiyo
2702	229	b	3	دَسِتُورِ	ḏasiṯūri	dasituri							ḏasiṯūri	دَسِتُورِ	ḏasiṯūri
2753	233	b	4	هَكِيكَ	hakı̄ka	hakika							hakı̄ka	هَكِيكَ	hakı̄ka
2748	233	a	1	إِكِيوَ	ikı̄wa	ikiwa							ikı̄wa	إِكِيوَ	ikı̄wa
2703	229	c	1	نَ	na	na							na	نَ	na
2704	229	c	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2706	229	c	4	نِ	ni	ni							ni	نِ	ni
2707	229	c	5	فَخَارِ	faẖāri	fahari							faẖāri	فَخَارِ	faẖāri
2749	233	a	2	أُمٖتٗشٖيكَ	umeṯoshēka	umetosheka							umeṯoshēka	أُمٖتٗشٖيكَ	umeṯoshēka
2730	231	c	1	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
2718	230	c	1	سِئِنُوكٖ	siinūke	siinuke							siinūke	سِئِنُوكٖ	siinūke
2719	230	c	2	نَ	na	na							na	نَ	na
2720	230	c	3	كُتٖيتَ	kuṯēṯa	kuteta							kuṯēṯa	كُتٖيتَ	kuṯēṯa
2731	231	c	2	نِ	ni	ni							ni	نِ	ni
2732	231	c	3	خَتَارِ	ẖaṯāri	hatari							ẖaṯāri	خَتَارِ	ẖaṯāri
2733	231	c	4	سَانَ	sāna	sana							sāna	سَانَ	sāna
2721	230	d	1	كْوَانْدَ	kwānḏa	kwanda							kwānḏa	كْوَانْدَ	kwānḏa
2722	230	d	2	زِيدِ	zı̄ḏi	zidi							zı̄ḏi	زِيدِ	zı̄ḏi
2723	230	d	3	كْوَنْڠَلِيَ	kwangaliya	kwangaliya							kwangaliya	كْوَنْڠَلِيَ	kwangaliya
2724	231	a	1	سِمْتُكُلِيٖ	simṯukuliye	simtukuliye							simṯukuliye	سِمْتُكُلِيٖ	simṯukuliye
2725	231	a	2	ذَانَ	dhāna	dhana							dhāna	ذَانَ	dhāna
2740	232	c	1	تٖينَ	ṯēna	tena							ṯēna	تٖينَ	ṯēna
2741	232	c	2	أُفَانْيٖ	ufānye	ufanye							ufānye	أُفَانْيٖ	ufānye
2742	232	c	3	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2743	232	c	4	سِيرِ	sı̄ri	siri							sı̄ri	سِيرِ	sı̄ri
2734	231	d	1	مَيُتٗونِ	mayuṯōni	mayutoni							mayuṯōni	مَيُتٗونِ	mayuṯōni
2735	231	d	2	تَكُتِيَ	ṯakuṯiya	takutiya							ṯakuṯiya	تَكُتِيَ	ṯakuṯiya
2736	232	a	1	إِزِوِيٖ	iziwiye	iziwiye							iziwiye	إِزِوِيٖ	iziwiye
2737	232	a	2	أُسُبِيرِ	usubı̄ri	usubiri							usubı̄ri	أُسُبِيرِ	usubı̄ri
2738	232	b	1	أُهَكِكِيشٖ	uhakikı̄she	uhakikishe							uhakikı̄she	أُهَكِكِيشٖ	uhakikı̄she
2739	232	b	2	خَبَارِ	ẖabāri	habari							ẖabāri	خَبَارِ	ẖabāri
2744	232	d	1	پَاسِ	pāsi	pasi							pāsi	پَاسِ	pāsi
2745	232	d	2	نَ	na	na							na	نَ	na
2746	232	d	3	كُپِيجَ	kupı̄ja	kupija							kupı̄ja	كُپِيجَ	kupı̄ja
2747	232	d	4	مْبِيَ	mbiya	mbiya							mbiya	مْبِيَ	mbiya
2756	233	c	3	إٖپُوكَ	epūka	epuka							epūka	إٖپُوكَ	epūka
2750	233	b	1	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
2751	233	b	2	نِ	ni	ni							ni	نِ	ni
2761	234	a	2	يَاكٗ	yāko	yako							yāko	يَاكٗ	yāko
2754	233	c	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2755	233	c	2	تَرَتِيبُ	ṯaraṯı̄bu	taratibu							ṯaraṯı̄bu	تَرَتِيبُ	ṯaraṯı̄bu
2759	233	d	3	كُتَايَ	kuṯāya	kutaya							kuṯāya	كُتَايَ	kuṯāya
2757	233	d	1	بِيلَ	bı̄la	bila							bı̄la	بِيلَ	bı̄la
2758	233	d	2	سَبَابُ	sabābu	sababu							sabābu	سَبَابُ	sabābu
2762	234	a	3	سَبَابُ	sabābu	sababu							sabābu	سَبَابُ	sabābu
2764	234	b	2	كُهَرِيبُ	kuharı̄bu	kuharibu							kuharı̄bu	كُهَرِيبُ	kuharı̄bu
2760	234	a	1	سِتَايٖ	siṯāye	sitaye							siṯāye	سِتَايٖ	siṯāye
2766	234	c	2	أَئِيبُ	aı̄bu	aibu							aı̄bu	أَئِيبُ	aı̄bu
2763	234	b	1	أُتَزِيدِ	uṯazı̄ḏi	utazidi							uṯazı̄ḏi	أُتَزِيدِ	uṯazı̄ḏi
2768	234	d	2	سِ	si	si							si	سِ	si
2765	234	c	1	زِتَتَنْڠَاءَ	ziṯaṯangāa	zitatangaa							ziṯaṯangāa	زِتَتَنْڠَاءَ	ziṯaṯangāa
2769	234	d	3	وٖيمَ	wēma	wema							wēma	وٖيمَ	wēma
2767	234	d	1	نَ	na	na							na	نَ	na
2770	234	d	4	كُئٖنٖيَ	kueneya	kueneya							kueneya	كُئٖنٖيَ	kueneya
2830	240	c	2	وَلِزُوشَ	walizūsha	walizusha							walizūsha	وَلِزُوشَ	walizūsha
2800	237	c	1	فَهَامُ	fahāmu	fahamu							fahāmu	فَهَامُ	fahāmu
2801	237	c	2	تَفٖذٖهٖيكَ	ṯafedhehēka	tafedheheka							ṯafedhehēka	تَفٖذٖهٖيكَ	ṯafedhehēka
2771	235	a	1	نَ	na	na							na	نَ	na
2772	235	a	2	هِيلٗ	hı̄lo	hilo							hı̄lo	هِيلٗ	hı̄lo
2773	235	a	3	كِيسَ	kı̄sa	kisa							kı̄sa	كِيسَ	kı̄sa
2774	235	a	4	كُتٖينْدَ	kuṯēnḏa	kutenda							kuṯēnḏa	كُتٖينْدَ	kuṯēnḏa
2818	239	c	1	كُلِيكٗ	kulı̄ko	kuliko							kulı̄ko	كُلِيكٗ	kulı̄ko
2819	239	c	2	كُفٖذٖهٖيكَ	kufedhehēka	kufedheheka							kufedhehēka	كُفٖذٖهٖيكَ	kufedhehēka
2775	235	b	1	هُونَ	hūna	huna							hūna	هُونَ	hūna
2776	235	b	2	بُودِ	būḏi	budi							būḏi	بُودِ	būḏi
2777	235	b	3	كُئِپِينْدَ	kuipı̄nḏa	kuipinda							kuipı̄nḏa	كُئِپِينْدَ	kuipı̄nḏa
2802	237	d	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2803	237	d	2	هُتٗئِزِوِيَ	huṯoiziwiya	hutoiziwiya							huṯoiziwiya	هُتٗئِزِوِيَ	huṯoiziwiya
2778	235	c	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
2779	235	c	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
2780	235	c	3	أُونَ	ūna	una							ūna	أُونَ	ūna
2781	235	c	4	نْيٗونْدَ	nyōnḏa	nyonda							nyōnḏa	نْيٗونْدَ	nyōnḏa
2804	238	a	1	إِزِوِيٖ	iziwiye	iziwiye							iziwiye	إِزِوِيٖ	iziwiye
2782	235	d	1	سِيوٖ	sı̄we	siwe							sı̄we	سِيوٖ	sı̄we
2783	235	d	2	نْيُومَ	nyūma	nyuma							nyūma	نْيُومَ	nyūma
2784	235	d	3	تَرٖجٖيَ	ṯarejeya	tarejeya							ṯarejeya	تَرٖجٖيَ	ṯarejeya
2805	238	a	2	إِكُكُوسٖ	ikukūse	ikukuse							ikukūse	إِكُكُوسٖ	ikukūse
2785	236	a	1	إِپِينْدٖ	ipı̄nḏe	ipinde							ipı̄nḏe	إِپِينْدٖ	ipı̄nḏe
2786	236	a	2	إِپِينْدٖ	ipı̄nḏe	ipinde							ipı̄nḏe	إِپِينْدٖ	ipı̄nḏe
2787	236	a	3	مْنٗ	mno	mno							mno	مْنٗ	mno
2788	236	b	1	سِبَدِيلِ	sibaḏı̄li	sibadili							sibaḏı̄li	سِبَدِيلِ	sibaḏı̄li
2789	236	b	2	لَاكٗ	lāko	lako							lāko	لَاكٗ	lāko
2790	236	b	3	نٖينٗ	nēno	neno							nēno	نٖينٗ	nēno
2806	238	b	1	مْپَاكَ	mpāka	mpaka							mpāka	مْپَاكَ	mpāka
2807	238	b	2	مَهَابَ	mahāba	mahaba							mahāba	مَهَابَ	mahāba
2791	236	c	1	مْوِيسٗ	mwı̄so	mwiso							mwı̄so	مْوِيسٗ	mwı̄so
2792	236	c	2	تَپَاتَ	ṯapāṯa	tapata							ṯapāṯa	تَپَاتَ	ṯapāṯa
2793	236	c	3	أُسٗونٗ	usōno	usono							usōno	أُسٗونٗ	usōno
2808	238	b	3	يٖيسٖ	yēse	yese							yēse	يٖيسٖ	yēse
2794	236	d	1	يَتَتٗوكَ	yaṯaṯōka	yatatoka							yaṯaṯōka	يَتَتٗوكَ	yaṯaṯōka
2795	236	d	2	مَزٗوٖيَ	mazoweya	mazoweya							mazoweya	مَزٗوٖيَ	mazoweya
2796	237	a	1	أُتَسُكِكَسُكِيكَ	uṯasukikasukı̄ka	utasukikasukika							uṯasukikasukı̄ka	أُتَسُكِكَسُكِيكَ	uṯasukikasukı̄ka
2836	241	b	1	وَكَفَانْيَ	wakafānya	wakafanya							wakafānya	وَكَفَانْيَ	wakafānya
2809	238	c	1	پٖنْيٖينْيٖ	penyēnye	penyenye							penyēnye	پٖنْيٖينْيٖ	penyēnye
2797	237	b	1	كِيوَ	kı̄wa	kiwa							kı̄wa	كِيوَ	kı̄wa
2798	237	b	2	مٗويٗ	mōyo	moyo							mōyo	مٗويٗ	mōyo
2799	237	b	3	وَمْتَاكَ	wamṯāka	wamtaka							wamṯāka	وَمْتَاكَ	wamṯāka
2810	238	c	2	أُسِيَپِيسٖ	usiyapı̄se	usiyapise							usiyapı̄se	أُسِيَپِيسٖ	usiyapı̄se
2821	239	d	2	إِزَرَانِ	izarāni	izarani							izarāni	إِزَرَانِ	izarāni
2822	239	d	3	كُنْڠِيَ	kungiya	kungiya							kungiya	كُنْڠِيَ	kungiya
2811	238	d	1	مٗيٗونِ	moyōni	moyoni							moyōni	مٗيٗونِ	moyōni
2812	238	d	2	كَكُرُدِيَ	kakuruḏiya	kakurudiya							kakuruḏiya	كَكُرُدِيَ	kakuruḏiya
2813	239	a	1	مْوِسٗوٖ	mwisowe	mwisowe							mwisowe	مْوِسٗوٖ	mwisowe
2814	239	a	2	يَتَؤٗنْدٗوكَ	yaṯaonḏōka	yataondoka							yaṯaonḏōka	يَتَؤٗنْدٗوكَ	yaṯaonḏōka
2837	241	b	2	نَ	na	na							na	نَ	na
2831	240	d	1	مَاوِ	māwi	mawi							māwi	مَاوِ	māwi
2823	240	a	1	لَكِينِ	lakı̄ni	lakini							lakı̄ni	لَكِينِ	lakı̄ni
2815	239	b	1	نَ	na	na							na	نَ	na
2816	239	b	2	وٖيوٖ	wēwe	wewe							wēwe	وٖيوٖ	wēwe
2817	239	b	3	أُتَأَفِيكَ	uṯaafı̄ka	utaafika							uṯaafı̄ka	أُتَأَفِيكَ	uṯaafı̄ka
2824	240	a	2	نَكُكُمْبُوشَ	nakukumbūsha	nakukumbusha							nakukumbūsha	نَكُكُمْبُوشَ	nakukumbūsha
2832	240	d	2	وَكَمزُلِيَ	wakamzuliya	wakamzuliya							wakamzuliya	وَكَمزُلِيَ	wakamzuliya
2825	240	b	1	كِيسوَ	kı̄swa	kiswa							kı̄swa	كِيسوَ	kı̄swa
2826	240	b	2	چَ	cha	cha							cha	چَ	cha
2827	240	b	3	نَانَ	nāna	nana							nāna	نَانَ	nāna
2828	240	b	4	أَئِيشَ	aı̄sha	aisha							aı̄sha	أَئِيشَ	aı̄sha
2838	241	b	3	مَڠٖينْڠِ	magēngi	magengi							magēngi	مَڠٖينْڠِ	magēngi
2833	241	a	1	وَلِؤٗنٖينَ	walionēna	walionena							walionēna	وَلِؤٗنٖينَ	walionēna
2834	241	a	2	نِ	ni	ni							ni	نِ	ni
2835	241	a	3	وٖينْڠِ	wēngi	wengi							wēngi	وٖينْڠِ	wēngi
2850	242	b	2	مْكٖ	mke	mke							mke	مْكٖ	mke
2851	242	b	3	وَاكٖ	wāke	wake							wāke	وَاكٖ	wāke
2843	241	d	1	مَدِينَ	maḏı̄na	madina							maḏı̄na	مَدِينَ	maḏı̄na
2844	241	d	2	زِكَئِنٖيَ	zikaineya	zikaineya							zikaineya	زِكَئِنٖيَ	zikaineya
2839	241	c	1	نَ	na	na							na	نَ	na
2840	241	c	2	زِكَاءٗ	zikāo	zikao							zikāo	زِكَاءٗ	zikāo
2841	241	c	3	زَ	za	za							za	زَ	za
2842	241	c	4	مِتِينْڠِ	miṯı̄ngi	mitingi							miṯı̄ngi	مِتِينْڠِ	miṯı̄ngi
2852	242	b	4	رَسُولِ	rasūli	rasuli							rasūli	رَسُولِ	rasūli
2854	242	c	2	هَلِكُوَ	halikuwa	halikuwa							halikuwa	هَلِكُوَ	halikuwa
2845	242	a	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2846	242	a	2	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
2847	242	a	3	لِيسٗ	lı̄so	liso							lı̄so	لِيسٗ	lı̄so
2848	242	a	4	أَسِيلِ	ası̄li	asili							ası̄li	أَسِيلِ	ası̄li
2849	242	b	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2855	242	c	3	كْوٖيلِ	kwēli	kweli							kwēli	كْوٖيلِ	kwēli
2857	242	d	2	أُڤُومِ	uvūmi	uvumi							uvūmi	أُڤُومِ	uvūmi
2853	242	c	1	كَاتُ	kāṯu	katu							kāṯu	كَاتُ	kāṯu
2858	242	d	3	وَلِتِيَ	waliṯiya	walitiya							waliṯiya	وَلِتِيَ	waliṯiya
2856	242	d	1	نِ	ni	ni							ni	نِ	ni
2859	243	a	1	مْوَنْڠَلِيٖ	mwangaliye	mwangaliye							mwangaliye	مْوَنْڠَلِيٖ	mwangaliye
2860	243	a	2	نَ	na	na							na	نَ	na
2861	243	a	3	مْتُومِ	mṯūmi	mtumi							mṯūmi	مْتُومِ	mṯūmi
2862	243	b	1	أَلِكُوَ	alikuwa	alikuwa							alikuwa	أَلِكُوَ	alikuwa
2863	243	b	2	هَأَتَامِ	haaṯāmi	haatami							haaṯāmi	هَأَتَامِ	haaṯāmi
2891	245	d	1	بِيلَ	bı̄la	bila							bı̄la	بِيلَ	bı̄la
2892	245	d	2	سَبَابُ	sabābu	sababu							sabābu	سَبَابُ	sabābu
2864	243	c	1	أَلِزِوِيَ	aliziwiya	aliziwiya							aliziwiya	أَلِزِوِيَ	aliziwiya
2865	243	c	2	أُلِيمِ	ulı̄mi	ulimi							ulı̄mi	أُلِيمِ	ulı̄mi
2893	245	d	3	كُتَايَ	kuṯāya	kutaya							kuṯāya	كُتَايَ	kuṯāya
2866	243	d	1	مْپَاكَ	mpāka	mpaka							mpāka	مْپَاكَ	mpāka
2867	243	d	2	وَهَايِ	wahāyi	wahayi							wahāyi	وَهَايِ	wahāyi
2868	243	d	3	كُويَ	kūya	kuya							kūya	كُويَ	kūya
2930	249	a	4	كِتَابُ	kiṯābu	kitabu							kiṯābu	كِتَابُ	kiṯābu
2869	244	a	1	يَتَاكَ	yaṯāka	yataka							yaṯāka	يَتَاكَ	yaṯāka
2870	244	a	2	مْنٗ	mno	mno							mno	مْنٗ	mno
2871	244	a	3	هَذَارِ	hadhāri	hadhari							hadhāri	هَذَارِ	hadhāri
2894	246	a	1	هَاپَ	hāpa	hapa							hāpa	هَاپَ	hāpa
2895	246	a	2	سَاسَ	sāsa	sasa							sāsa	سَاسَ	sāsa
2872	244	b	1	كَتِيكَ	kaṯı̄ka	katika							kaṯı̄ka	كَتِيكَ	kaṯı̄ka
2873	244	b	2	هِيزٗ	hı̄zo	hizo							hı̄zo	هِيزٗ	hı̄zo
2874	244	b	3	خَبَارِ	ẖabāri	habari							ẖabāri	خَبَارِ	ẖabāri
2896	246	a	3	نِتَكٗومَ	niṯakōma	nitakoma							niṯakōma	نِتَكٗومَ	niṯakōma
2875	244	c	1	سِيوٖ	sı̄we	siwe							sı̄we	سِيوٖ	sı̄we
2876	244	c	2	مْپٖيسِ	mpēsi	mpesi							mpēsi	مْپٖيسِ	mpēsi
2877	244	c	3	كُكِيرِ	kukı̄ri	kukiri							kukı̄ri	كُكِيرِ	kukı̄ri
2923	248	c	1	وٖينْڠِ	wēngi	wengi							wēngi	وٖينْڠِ	wēngi
2878	244	d	1	يَامْبٗ	yāmbo	yambo							yāmbo	يَامْبٗ	yāmbo
2879	244	d	2	أُكِلِسِكِيَ	ukilisikiya	ukilisikiya							ukilisikiya	أُكِلِسِكِيَ	ukilisikiya
2912	247	c	2	كُئٖنٖيزَ	kuenēza	kueneza							kuenēza	كُئٖنٖيزَ	kuenēza
2897	246	b	1	وَالَ	wāla	wala							wāla	وَالَ	wāla
2880	245	a	1	تَفِيتِ	ṯafı̄ṯi	tafiti							ṯafı̄ṯi	تَفِيتِ	ṯafı̄ṯi
2881	245	a	2	تَفِيتِ	ṯafı̄ṯi	tafiti							ṯafı̄ṯi	تَفِيتِ	ṯafı̄ṯi
2882	245	a	3	سَانَ	sāna	sana							sāna	سَانَ	sāna
2898	246	b	2	يٗوتٖ	yōṯe	yote							yōṯe	يٗوتٖ	yōṯe
2899	246	b	3	سِكُسٖيمَ	sikusēma	sikusema							sikusēma	سِكُسٖيمَ	sikusēma
2883	245	b	1	هَاتَ	hāṯa	hata							hāṯa	هَاتَ	hāṯa
2884	245	b	2	شَاكَ	shāka	shaka							shāka	شَاكَ	shāka
2885	245	b	3	أُوٖ	uwe	uwe							uwe	أُوٖ	uwe
2886	245	b	4	هُونَ	hūna	huna							hūna	هُونَ	hūna
2913	247	c	3	خَبَارِ	ẖabāri	habari							ẖabāri	خَبَارِ	ẖabāri
2900	246	c	1	لَكِينِ	lakı̄ni	lakini							lakı̄ni	لَكِينِ	lakı̄ni
2901	246	c	2	أُكِئَنْدَامَ	ukianḏāma	ukiandama							ukianḏāma	أُكِئَنْدَامَ	ukianḏāma
2887	245	c	1	نْدِيپٗ	nḏı̄po	ndipo							nḏı̄po	نْدِيپٗ	nḏı̄po
2888	245	c	2	هَاپٗ	hāpo	hapo							hāpo	هَاپٗ	hāpo
2889	245	c	3	لَاكٗ	lāko	lako							lāko	لَاكٗ	lāko
2890	245	c	4	نٖينَ	nēna	nena							nēna	نٖينَ	nēna
2902	246	d	1	هَايَ	hāya	haya							hāya	هَايَ	hāya
2903	246	d	2	تَكُسَئِدِيَ	ṯakusaiḏiya	takusaidiya							ṯakusaiḏiya	تَكُسَئِدِيَ	ṯakusaiḏiya
2924	248	c	2	وَكَپُلِكِيزَ	wakapulikı̄za	wakapulikiza							wakapulikı̄za	وَكَپُلِكِيزَ	wakapulikı̄za
2914	247	d	1	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2904	247	a	1	نِيَ	niya	niya							niya	نِيَ	niya
2905	247	a	2	نَ	na	na							na	نَ	na
2906	247	a	3	يَانْڠُ	yāngu	yangu							yāngu	يَانْڠُ	yāngu
2907	247	a	4	ذَمِيرِ	dhamı̄ri	dhamiri							dhamı̄ri	ذَمِيرِ	dhamı̄ri
2915	247	d	2	وٖينْيٖ	wēnye	wenye							wēnye	وٖينْيٖ	wēnye
2916	247	d	3	كُيَسِكِيَ	kuyasikiya	kuyasikiya							kuyasikiya	كُيَسِكِيَ	kuyasikiya
2908	247	b	1	كْوَنْدِيكَ	kwanḏı̄ka	kwandika							kwanḏı̄ka	كْوَنْدِيكَ	kwanḏı̄ka
2909	247	b	2	كْوَ	kwa	kwa							kwa	كْوَ	kwa
2925	248	d	1	وَكَسِكِيزَ	wakasikı̄za	wakasikiza							wakasikı̄za	وَكَسِكِيزَ	wakasikı̄za
2926	248	d	2	پَمٗويَ	pamōya	pamoya							pamōya	پَمٗويَ	pamōya
2917	248	a	1	نِ	ni	ni							ni	نِ	ni
2918	248	a	2	سَهَالِ	sahāli	sahali							sahāli	سَهَالِ	sahāli
2919	248	a	3	كُسِكِيزَ	kusikı̄za	kusikiza							kusikı̄za	كُسِكِيزَ	kusikı̄za
2920	248	b	1	كَسٖيتِ	kasēṯi	kaseti							kasēṯi	كَسٖيتِ	kasēṯi
2921	248	b	2	مٗويَ	mōya	moya							mōya	مٗويَ	mōya
2922	248	b	3	هُوٖيزَ	huwēza	huweza							huwēza	هُوٖيزَ	huwēza
2937	249	d	1	كُسِكِيزَ	kusikı̄za	kusikiza							kusikı̄za	كُسِكِيزَ	kusikı̄za
2934	249	c	1	وٖينْڠِ	wēngi	wengi							wēngi	وٖينْڠِ	wēngi
2935	249	c	2	هُؤٗونَ	huōna	huona							huōna	هُؤٗونَ	huōna
2936	249	c	3	تَأَبُ	ṯaabu	taabu							ṯaabu	تَأَبُ	ṯaabu
2928	249	a	2	كَامَ	kāma	kama							kāma	كَامَ	kāma
2929	249	a	3	نِ	ni	ni							ni	نِ	ni
2931	249	b	1	وَسٗمَاجِ	wasomāji	wasomaji							wasomāji	وَسٗمَاجِ	wasomāji
2932	249	b	2	نِ	ni	ni							ni	نِ	ni
2933	249	b	3	هُبُوبُ	hubūbu	hububu							hubūbu	هُبُوبُ	hubūbu
2938	249	d	2	مٖزٗوٖيَ	mezoweya	mezoweya							mezoweya	مٖزٗوٖيَ	mezoweya
2943	250	b	2	زٖينُ	zēnu	zenu							zēnu	زٖينُ	zēnu
2944	250	b	3	هِيزِ	hı̄zi	hizi							hı̄zi	هِيزِ	hı̄zi
2940	250	a	2	يَانْڠُ	yāngu	yangu							yāngu	يَانْڠُ	yāngu
2939	250	a	1	كَؤُولِ	kaūli	kauli							kaūli	كَؤُولِ	kaūli
2941	250	a	3	تَمَاتِ	ṯamāṯi	tamati							ṯamāṯi	تَمَاتِ	ṯamāṯi
2945	250	b	4	بَئِيتِ	baı̄ṯi	baiti							baı̄ṯi	بَئِيتِ	baı̄ṯi
2947	250	c	2	مَبَنَاتِ	mabanāṯi	mabanati							mabanāṯi	مَبَنَاتِ	mabanāṯi
2942	250	b	1	نِ	ni	ni							ni	نِ	ni
2949	250	d	2	نَوَكُسُدِيَ	nawakusuḏiya	nawakusudiya							nawakusuḏiya	نَوَكُسُدِيَ	nawakusuḏiya
2946	250	c	1	وَڤُلَانَ	wavulāna	wavulana							wavulāna	وَڤُلَانَ	wavulāna
2948	250	d	1	نْيٗوتٖ	nyōṯe	nyote							nyōṯe	نْيٗوتٖ	nyōṯe
\.


--
-- Name: maisha_mume_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('maisha_mume_words_word_id_seq', 2949, true);


--
-- Name: maisha_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('maisha_poemline_id_seq', 1, false);


--
-- Data for Name: vita_vikuu; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY vita_vikuu (poemline_id, stanza, pos, arabic, close, standard, english) FROM stdin;
1	1	a	أَكَتٗؤَ تَمَارِ 	akaṯoa ṯamāri	akatoa tamari	
2	1	b	 نَخُبُوزِ يَشَعِيْرِ	naẖubūzi yasha'ı̄ri	nahubuzi yasha'iri	
3	1	c	نَمِلْحِ أَصْفَرِ 	namilḥi aṣfari	namilhi asfari	
4	1	d	 كَكهٖيْتِ كَٹٗئٖلٖئَ	kakʿēṯi kaţoelea	kaketi katoelea	
5	2	a	كِشَكُوْلَ كَحِمِيْدِ 	kishakūla kaḥimı̄ḏi	kishakula kahimidi	
6	2	b	 ۏَاكٖ إِلَاهِ وَدُوْدِ	w̱āke ilāhi waḏūḏi	wake ilahi wadudi	
7	2	c	مُؤُوْنْبَ زٗوْتهٖ جَسَادِ 	muūm̱ba zōṯʿe jasāḏi	muumba zote jasadi	
8	2	d	 مَعَدُوِ نَمَوَلِيْ	ma'aḏuwi namawalii	ma'aduwi namawalii	
9	3	a	هَاتَ كُكِپَنْبَؤُوْكَ 	hāṯa kukipam̱baūka	hata kukipambauka	
10	3	b	 عَمُوْرِ أَكَتٗوْكَ	'amūri akaṯōka	'amuri akatoka	
11	3	c	كْوَ عَلِىْ أَكَفِيْكَ 	kwa 'alii akafı̄ka	kwa 'alii akafika	
12	3	d	 سَوْتِ أَكَئِتٗؤَ	sawṯi akaiṯoa	sauti akaitoa	
13	4	a	عَلِىْ كَتَكَلَامَ 	'alii kaṯakalāma	'alii katakalama	
14	4	b	 أَهْلاً يَا مُكَرَّمَ	ahlāⁿ yā mukarrama	ahla ya mukarrama	
15	4	c	ٹُتَوَصِيْل سَلَامَ 	ţuṯawaṣı̄l salāma	tutawasil salama	
16	4	d	 نْدِئَ إِنْڠَاۏَ طَوِلِيَ	nḏia ingāw̱a ṭawiliya	ndia ingawa tawiliya	
17	5	a	عَمُوْرِ كَرُوْدِ نْڈَانِ 	'amūri karūḏi nḑāni	'amuri karudi ndani	
18	5	b	 كَئِلَبِيْسِ يُوَانِ	kailabı̄si yuwāni	kailabisi yuwani	
19	5	c	دِرِيْعِ زَ أُۏَنْدَانِ 	ḏirī'i za uw̱anḏāni	diri'i za uwandani	
20	5	d	 أَكَئِفُوْنْڠَ زِكَمْكَاءَ	akaifūnga zikamkāa	akaifunga zikamkaa	
21	6	a	نَسٖيْفُ نْجٖيْمَ أَسِيْسِ 	nasēfu njēma ası̄si	nasefu njema asisi	
22	6	b	 نَرُمْحِ نَتُرُوْسِ	narumḥi naṯurūsi	narumhi naturusi	
23	6	c	أَكَمْپَانْڈَ فَرَاسِ 	akampānḑa farāsi	akampanda farasi	
24	6	d	 جُوْ أَكَمْكَلِئَ	juu akamkalia	juu akamkalia	
25	7	a	ۏَكٖيْنْڈَ تهَخُبِيْرِ 	w̱akēnḑa ṯʿaẖubı̄ri	wakenda tahubiri	
26	7	b	 بِاللَّيْلِ وَالنَّهَارِ	billayli wannahāri	billayli wannahari	
27	7	c	ۏَكَپَنْبَانَ نَبَحَارِ 	w̱akapam̱bāna nabaḥāri	wakapambana nabahari	
28	7	d	 نَمِيْٹِ نَمَطَرِيَ	namı̄ţi namaṭariya	namiti namatariya	
29	8	a	ۏَكٖنٖينْڈَ يُۏَانِ 	w̱akenēnḑa yuw̱āni	wakenenda yuwani	
30	8	b	 عَلِىْ نَمَلِعُوْنِ	'alii namali'ūni	'alii namali'uni	
31	8	c	نْدِئَ زِيْلِ زَمَدِيْنِ 	nḏia zı̄li zamaḏı̄ni	ndia zili zamadini	
32	8	d	 عَمُوْرِ كَزِٹَنْبُؤَ	'amūri kaziţam̱bua	'amuri kazitambua	
33	9	a	عَمُوْرِ كَذُكُوْرِ 	'amūri kadhukūri	'amuri kadhukuri	
34	9	b	 كَمْوَنبِئَ حَيْدَرِ	kamwam̱bia ḥayḏari	kamwambia haydari	
35	9	c	دُرُوْبُ نْدَ أَنْصَارِ 	ḏurūbu nḏa anṣāri	durubu nda ansari	
36	9	d	 نْبٗوْنَ ٹْوَئِفُوَٹِئَ	m̱bōna ţwaifuwaţia	mbona twaifuwatia	
37	10	a	نَاسِ ٹُمٖفَانْيَ مَشَؤُوْرِ 	nāsi ţumefānya mashaūri	nasi tumefanya mashauri	
38	10	b	 يَكْوٖنٖينْڈَ سَفَارِ	yakwenēnḑa safāri	yakwenenda safari	
39	10	c	كْوَنْڠَلِئَ أَمْصَارِ 	kwangalia amṣāri	kwangalia amsari	
40	10	d	 جُنُوْدِ كُئِكُسَنْيِئَ	junūḏi kuikusanyia	junudi kuikusanyia	
\.


--
-- Data for Name: vita_vikuu_backup; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY vita_vikuu_backup (word_id, stanza, pos, location, arabic, close, standard, lemma, segment, variant, note, root, english, word) FROM stdin;
24	140	c	2	عَلِىْ	'alii	'alii					'ly		'alii
68	145	b	2	نَمَلِعُوْنِ	namali'ūni	namali'uni					l'n		namali'ūni
56	143	d	2	أَكَمْكَلِئَ	akamkalia	akamkalia					ka		akamkalia
10	139	a	2	كَحِمِيْدِ	kaḥimı̄ḏi	kahimidi					ḥmd		kaḥimı̄ḏi
57	144	a	1	ۏَكٖيْنْڈَ	w̱akēnḑa	wakenda					end	They went, I'll tell you, 	w̱akēnḑa
58	144	a	2	تهَخُبِيْرِ	ṯʿaẖubı̄ri	tahubiri					ẖbr		ṯʿaẖubı̄ri
11	139	b	1	ۏَاكٖ	w̱āke	wake					ake	to his beloved God,	w̱āke
30	141	b	1	أَهْلاً	ahlāⁿ	ahla	ah#a#lāⁿ				ahl	Greetings, Honoured One	ahalāⁿ
12	139	b	2	إِلَاهِ	ilāhi	ilahi					alh		ilāhi
13	139	b	3	وَدُوْدِ	waḏūḏi	wadudi					wdd		waḏūḏi
15	139	c	2	زٗوْتهٖ	zōṯʿe	zote					ote		zōṯʿe
16	139	c	3	جَسَادِ	jasāḏi	jasadi					jsd		jasāḏi
17	139	d	1	مَعَدُوِ	ma'aḏuwi	ma'aduwi					'dw	both enemies and friends.	ma'aḏuwi
18	139	d	2	نَمَوَلِيْ	namawalii	namawalii		na		The implication is that these are friends and enemies of Islam.	wly		mawalii
20	140	a	2	كُكِپَنْبَؤُوْكَ	kukipam̱baūka	kukipambauka					pamba		kukipam̱baūka
21	140	b	1	عَمُوْرِ	'amūri	'amuri					'mr	Amuri came out	'amūri
22	140	b	2	أَكَتٗوْكَ	akaṯōka	akatoka					to		akaṯōka
23	140	c	1	كْوَ	kwa	kwa					a	He arrived beside Ali	kwa
25	140	c	3	أَكَفِيْكَ	akafı̄ka	akafika					fik		akafı̄ka
26	140	d	1	سَوْتِ	sawṯi	sauti					swt	and [Ali] spoke.	sawṯi
31	141	b	2	يَا	yā	ya					ya		yā
27	140	d	2	أَكَئِتٗؤَ	akaiṯoa	akaitoa					to		akaiṯoa
59	144	b	1	بِاللَّيْلِ	bi-llayli	bi-layli					lyl	by night and day,	bi-llayli
64	144	d	2	نَمَطَرِيَ	namaṭariya	namatariya		na		Ar @مطر@ #rain#.  Seemingly used by extension here to mean a place with water.	mṭr		maṭariya
28	141	a	1	عَلِىْ	'alii	'alii					'ly	Ali said	'alii
29	141	a	2	كَتَكَلَامَ	kaṯakalāma	katakalama					klm		kaṯakalāma
32	141	b	3	مُكَرَّمَ	mukarrama	mukarrama					krm		mukarrama
33	141	c	1	ٹُتَوَصِيْل	ţuṯawaṣı̄l	tutawasil	ţuṯawaṣı̄l#i#				wṣl	We shall arrive safely	ţuṯawaṣı̄li
38	142	a	1	عَمُوْرِ	'amūri	'amuri					'mr	Amuri went back inside;	'amūri
39	142	a	2	كَرُوْدِ	karūḏi	karudi			B: @أَكٖينْڈَ@ #akēnḑa#		rdd		karūḏi
40	142	a	3	نْڈَانِ	nḑāni	ndani					ndani		nḑāni
41	142	b	1	كَئِلَبِيْسِ	kailabı̄si	kailabisi					lbs	know that he dressed himself	kailabı̄si
42	142	b	2	يُوَانِ	yuwāni	yuwani					ju		yuwāni
43	142	c	1	دِرِيْعِ	ḏirī'i	diri'i					dr'	In battle-armour,	ḏirī'i
45	142	c	3	أُۏَنْدَانِ	uw̱anḏāni	uwandani				@أُۏَنْدَ@ (uwanda) is an #open space#, and by extension a #battlefield#.	wand		uw̱anḏāni
46	142	d	1	أَكَئِفُوْنْڠَ	akaifūnga	akaifunga					fung	and fastened it firmly upon himself.	akaifūnga
47	142	d	2	زِكَمْكَاءَ	zikamkāa	zikamkaa				Lit. #and bound himself so that [the armour] stayed on him#.	ka		zikamkāa
51	143	b	1	نَرُمْحِ	narumḥi	narumhi	narum#u#ḥi	na			rmḥ	and a spear, and a shield.	rumuḥi
72	145	d	1	عَمُوْرِ	'amūri	'amuri					'mr	Amuri recognised them.	'amūri
78	146	c	1	دُرُوْبُ	ḏurūbu	durubu					drb	This is the Companions' road	ḏurūbu
80	146	c	3	أَنْصَارِ	anṣāri	ansari				The Ansari were the Muslims of Medina who gave refuge to the Prophet after the Hegira.  Possibly this word is in error for @أَمْصَارِ@, #city#, used in the next stanza.	nṣr		anṣāri
86	147	b	1	يَكْوٖنٖينْڈَ	yakwenēnḑa	yakwenenda		ya			end	about going on the journey,	kwenēnḑa
88	147	c	1	كْوَنْڠَلِئَ	kwangalia	kwangalia					ang	to reconnoitre the city	kwangalia
89	147	c	2	أَمْصَارِ	amṣāri	amsari					mṣr		amṣāri
90	147	d	1	جُنُوْدِ	junūḏi	junudi					jnd	while the army assembles.	junūḏi
50	143	a	3	أَسِيْسِ	ası̄si	asisi					ass		ası̄si
1	138	a	1	أَكَتٗؤَ	akaṯoa	akatoa					to	He took out dates	akaṯoa
52	143	b	2	نَتُرُوْسِ	naṯurūsi	naturusi		na			trs		ṯurūsi
75	146	a	2	كَذُكُوْرِ	kadhukūri	kadhukuri					ḏkr		kadhukūri
76	146	b	1	كَمْوَنبِئَ	kamwam̱bia	kamwambia					amb	and said to the Lion:	kamwam̱bia
77	146	b	2	حَيْدَرِ	ḥayḏari	haydari				A frequently-used metonym for Ali.	ḥdr		ḥayḏari
53	143	c	1	أَكَمْپَانْڈَ	akampānḑa	akampanda					pand	Then he mounted his steed,	akampānḑa
54	143	c	2	فَرَاسِ	farāsi	farasi					frs		farāsi
55	143	d	1	جُوْ	juu	juu					juu	and seated himself upon it.	juu
2	138	a	2	تَمَارِ	ṯamāri	tamari					tmr		ṯamāri
3	138	b	1	نَخُبُوزِ	naẖubūzi	nahubuzi		na			ẖbz	and barley bread	ẖubūzi
4	138	b	2	يَشَعِيْرِ	yasha'ı̄ri	yasha'iri		ya			s̱'r		sha'ı̄ri
5	138	c	1	نَمِلْحِ	namilḥi	namilhi	namil#i#ḥi	na			mlḥ	And yellow salt - 	miliḥi
6	138	c	2	أَصْفَرِ	aṣfari	asfari	aṣ#u#fari			The salt is yellow because it is unpurified rock-salt, containing iodine.	ṣfr		aṣufari
7	138	d	1	كَكهٖيْتِ	kakʿēṯi	kaketi					ka	he sat down and took [them] out.	kakʿēṯi
8	138	d	2	كَٹٗئٖلٖئَ	kaţoelea	katoelea					to		kaţoelea
9	139	a	1	كِشَكُوْلَ	kishakūla	kishakula					l	When he finished eating he gave thanks	kishakūla
14	139	c	1	مُؤُوْنْبَ	muūm̱ba	muumba					umb	The Creator of all individuals - 	muūm̱ba
19	140	a	1	هَاتَ	hāṯa	hata					hata	Until, when dawn came,	hāṯa
34	141	c	2	سَلَامَ	salāma	salama					slm		salāma
35	141	d	1	نْدِئَ	nḏia	ndia					njia	even if the road is long.	nḏia
36	141	d	2	إِنْڠَاۏَ	ingāw̱a	ingawa					ingawa		ingāw̱a
37	141	d	3	طَوِلِيَ	ṭawiliya	tawiliya					ṭal		ṭawiliya
48	143	a	1	نَسٖيْفُ	nasēfu	nasefu		na			syf	And [took up] a good, stout sword,	sēfu
49	143	a	2	نْجٖيْمَ	njēma	njema					ema		njēma
60	144	b	2	وَالنَّهَارِ	wa-nnahāri	wa-nahari					nhr		wa-nnahāri
61	144	c	1	ۏَكَپَنْبَانَ	w̱akapam̱bāna	wakapambana					pamb	And they encountered oceans,	w̱akapam̱bāna
62	144	c	2	نَبَحَارِ	nabaḥāri	nabahari		na			bḥr		baḥāri
63	144	d	1	نَمِيْٹِ	namı̄ţi	namiti		na			ti	and forests, and oases.	mı̄ţi
65	145	a	1	ۏَكٖنٖينْڈَ	w̱akenēnḑa	wakenenda					end	Know that they went on,	w̱akenēnḑa
66	145	a	2	يُۏَانِ	yuw̱āni	yuwani					ju		yuw̱āni
67	145	b	1	عَلِىْ	'alii	'alii					'ly	Ali and the Accursed One;	'alii
69	145	c	1	نْدِئَ	nḏia	ndia					njia	These roads [led to] Medina - 	nḏia
70	145	c	2	زِيْلِ	zı̄li	zili					ili		zı̄li
71	145	c	3	زَمَدِيْنِ	zamaḏı̄ni	zamadini		za			mdn		maḏı̄ni
73	145	d	2	كَزِٹَنْبُؤَ	kaziţam̱bua	kazitambua					tamb		kaziţam̱bua
74	146	a	1	عَمُوْرِ	'amūri	'amuri					'mr	Amuri spoke	'amūri
82	146	d	2	ٹْوَئِفُوَٹِئَ	ţwaifuwaţia	twaifuwatia					fuat		ţwaifuwaţia
84	147	a	2	ٹُمٖفَانْيَ	ţumefānya	tumefanya					fa		ţumefānya
85	147	a	3	مَشَؤُوْرِ	mashaūri	mashauri					s̱wr		mashaūri
87	147	b	2	سَفَارِ	safāri	safari					sfr		safāri
91	147	d	2	كُئِكُسَنْيِئَ	kuikusanyia	kuikusanyia					kut		kuikusanyia
44	142	c	2	زَ	za	za					a		za
79	146	c	2	نْدَ	nḏa	nda					a		nḏa
81	146	d	1	نْبٗوْنَ	m̱bōna	mbona					mbona	why are we following it?	m̱bōna
83	147	a	1	نَاسِ	nāsi	nasi					sisi	For we have taken counsel 	nāsi
\.


--
-- Data for Name: vita_vikuu_notes; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY vita_vikuu_notes (stanza, pos, location, lemma, segment, variant, note, root, english) FROM stdin;
140	c	2					'ly	
145	b	2					l'n	
143	d	2					ka	
139	a	2					ḥmd	
144	a	1					end	They went, I'll tell you, 
144	a	2					ẖbr	
139	b	1					ake	to his beloved God,
141	b	1	ah#a#lāⁿ				ahl	Greetings, Honoured One
139	b	2					alh	
139	b	3					wdd	
139	c	2					ote	
139	c	3					jsd	
139	d	1					'dw	both enemies and friends.
139	d	2		na		The implication is that these are friends and enemies of Islam.	wly	
140	a	2					pamba	
140	b	1					'mr	Amuri came out
140	b	2					to	
140	c	1					a	He arrived beside Ali
140	c	3					fik	
140	d	1					swt	and [Ali] spoke.
141	b	2					ya	
140	d	2					to	
144	b	1					lyl	by night and day,
144	d	2		na		Ar @مطر@ #rain#.  Seemingly used by extension here to mean a place with water.	mṭr	
141	a	1					'ly	Ali said
141	a	2					klm	
141	b	3					krm	
141	c	1	ţuṯawaṣı̄l#i#				wṣl	We shall arrive safely
142	a	1					'mr	Amuri went back inside;
142	a	2			B: @أَكٖينْڈَ@ #akēnḑa#		rdd	
142	a	3					ndani	
142	b	1					lbs	know that he dressed himself
142	b	2					ju	
142	c	1					dr'	In battle-armour,
142	c	3				@أُۏَنْدَ@ (uwanda) is an #open space#, and by extension a #battlefield#.	wand	
142	d	1					fung	and fastened it firmly upon himself.
142	d	2				Lit. #and bound himself so that [the armour] stayed on him#.	ka	
143	b	1	narum#u#ḥi	na			rmḥ	and a spear, and a shield.
145	d	1					'mr	Amuri recognised them.
146	c	1					drb	This is the Companions' road
146	c	3				The Ansari were the Muslims of Medina who gave refuge to the Prophet after the Hegira.  Possibly this word is in error for @أَمْصَارِ@, #city#, used in the next stanza.	nṣr	
147	b	1		ya			end	about going on the journey,
147	c	1					ang	to reconnoitre the city
147	c	2					mṣr	
147	d	1					jnd	while the army assembles.
143	a	3					ass	
138	a	1					to	He took out dates
143	b	2		na			trs	
146	a	2					ḏkr	
146	b	1					amb	and said to the Lion:
146	b	2				A frequently-used metonym for Ali.	ḥdr	
143	c	1					pand	Then he mounted his steed,
143	c	2					frs	
143	d	1					juu	and seated himself upon it.
138	a	2					tmr	
138	b	1		na			ẖbz	and barley bread
138	b	2		ya			s̱'r	
138	c	1	namil#i#ḥi	na			mlḥ	And yellow salt - 
138	c	2	aṣ#u#fari			The salt is yellow because it is unpurified rock-salt, containing iodine.	ṣfr	
138	d	1					ka	he sat down and took [them] out.
138	d	2					to	
139	a	1					l	When he finished eating he gave thanks
139	c	1					umb	The Creator of all individuals - 
140	a	1					hata	Until, when dawn came,
141	c	2					slm	
141	d	1					njia	even if the road is long.
141	d	2					ingawa	
141	d	3					ṭal	
143	a	1		na			syf	And [took up] a good, stout sword,
143	a	2					ema	
144	b	2					nhr	
144	c	1					pamb	And they encountered oceans,
144	c	2		na			bḥr	
144	d	1		na			ti	and forests, and oases.
145	a	1					end	Know that they went on,
145	a	2					ju	
145	b	1					'ly	Ali and the Accursed One;
145	c	1					njia	These roads [led to] Medina - 
145	c	2					ili	
145	c	3		za			mdn	
145	d	2					tamb	
146	a	1					'mr	Amuri spoke
146	d	2					fuat	
147	a	2					fa	
147	a	3					s̱wr	
147	b	2					sfr	
147	d	2					kut	
142	c	2					a	
146	c	2					a	
146	d	1					mbona	why are we following it?
147	a	1					sisi	For we have taken counsel 
\.


--
-- Name: vita_vikuu_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('vita_vikuu_poemline_id_seq', 40, true);


--
-- Data for Name: vita_vikuu_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY vita_vikuu_words (word_id, stanza, pos, location, arabic, close, standard, lemma, segment, variant, note, root, english, word, arword, clword) FROM stdin;
40	142	a	3	نْڈَانِ	nḑāni	ndani					ndani		nḑāni	نْڈَانِ	nḑāni
75	146	a	2	كَذُكُوْرِ	kadhukūri	kadhukuri					ḏkr		kadhukūri	كَذُكُوْرِ	kadhukūri
29	141	a	2	كَتَكَلَامَ	kaṯakalāma	katakalama					klm		kaṯakalāma	كَتَكَلَامَ	kaṯakalāma
53	143	c	1	أَكَمْپَانْڈَ	akampānḑa	akampanda					pand	Then he mounted his steed,	akampānḑa	أَكَمْپَانْڈَ	akampānḑa
44	142	c	2	زَ	za	za					a		za	زَ	za
46	142	d	1	أَكَئِفُوْنْڠَ	akaifūnga	akaifunga					fung	and fastened it firmly upon himself.	akaifūnga	أَكَئِفُوْنْڠَ	akaifūnga
82	146	d	2	ٹْوَئِفُوَٹِئَ	ţwaifuwaţia	twaifuwatia					fuat		ţwaifuwaţia	ٹْوَئِفُوَٹِئَ	ţwaifuwaţia
83	147	a	1	نَاسِ	nāsi	nasi					sisi	For we have taken counsel 	nāsi	نَاسِ	nāsi
84	147	a	2	ٹُمٖفَانْيَ	ţumefānya	tumefanya					fa		ţumefānya	ٹُمٖفَانْيَ	ţumefānya
32	141	b	3	مُكَرَّمَ	mukarrama	mukarrama					krm		mukarrama	مُكَرَّمَ	mukarrama
34	141	c	2	سَلَامَ	salāma	salama					slm		salāma	سَلَامَ	salāma
8	138	d	2	كَٹٗئٖلٖئَ	kaţoelea	katoelea					to		kaţoelea	كَٹٗئٖلٖئَ	kaţoelea
9	139	a	1	كِشَكُوْلَ	kishakūla	kishakula					l	When he finished eating he gave thanks	kishakūla	كِشَكُوْلَ	kishakūla
10	139	a	2	كَحِمِيْدِ	kaḥimı̄ḏi	kahimidi					ḥmd		kaḥimı̄ḏi	كَحِمِيْدِ	kaḥimı̄ḏi
11	139	b	1	ۏَاكٖ	w̱āke	wake					ake	to his beloved God,	w̱āke	ۏَاكٖ	w̱āke
50	143	a	3	أَسِيْسِ	ası̄si	asisi					ass		ası̄si	أَسِيْسِ	ası̄si
54	143	c	2	فَرَاسِ	farāsi	farasi					frs		farāsi	فَرَاسِ	farāsi
12	139	b	2	إِلَاهِ	ilāhi	ilahi					alh		ilāhi	إِلَاهِ	ilāhi
13	139	b	3	وَدُوْدِ	waḏūḏi	wadudi					wdd		waḏūḏi	وَدُوْدِ	waḏūḏi
35	141	d	1	نْدِئَ	nḏia	ndia					njia	even if the road is long.	nḏia	نْدِئَ	nḏia
85	147	a	3	مَشَؤُوْرِ	mashaūri	mashauri					s̱wr		mashaūri	مَشَؤُوْرِ	mashaūri
87	147	b	2	سَفَارِ	safāri	safari					sfr		safāri	سَفَارِ	safāri
1	138	a	1	أَكَتٗؤَ	akaṯoa	akatoa					to	He took out dates	akaṯoa	أَكَتٗؤَ	akaṯoa
58	144	a	2	تهَخُبِيْرِ	ṯʿaẖubı̄ri	tahubiri					ẖbr		ṯʿaẖubı̄ri	تهَخُبِيْرِ	ṯʿaẖubı̄ri
72	145	d	1	عَمُوْرِ	'amūri	'amuri					'mr	Amuri recognised them.	'amūri	عَمُوْرِ	'amūri
78	146	c	1	دُرُوْبُ	ḏurūbu	durubu					drb	This is the Companions' road	ḏurūbu	دُرُوْبُ	ḏurūbu
61	144	c	1	ۏَكَپَنْبَانَ	w̱akapam̱bāna	wakapambana					pamb	And they encountered oceans,	w̱akapam̱bāna	ۏَكَپَنْبَانَ	w̱akapam̱bāna
7	138	d	1	كَكهٖيْتِ	kakʿēṯi	kaketi					ka	he sat down and took [them] out.	kakʿēṯi	كَكهٖيْتِ	kakʿēṯi
14	139	c	1	مُؤُوْنْبَ	muūm̱ba	muumba					umb	The Creator of all individuals - 	muūm̱ba	مُؤُوْنْبَ	muūm̱ba
19	140	a	1	هَاتَ	hāṯa	hata					hata	Until, when dawn came,	hāṯa	هَاتَ	hāṯa
27	140	d	2	أَكَئِتٗؤَ	akaiṯoa	akaitoa					to		akaiṯoa	أَكَئِتٗؤَ	akaiṯoa
41	142	b	1	كَئِلَبِيْسِ	kailabı̄si	kailabisi					lbs	know that he dressed himself	kailabı̄si	كَئِلَبِيْسِ	kailabı̄si
45	142	c	3	أُۏَنْدَانِ	uw̱anḏāni	uwandani				@أُۏَنْدَ@ (uwanda) is an #open space#, and by extension a #battlefield#.	wand		uw̱anḏāni	أُۏَنْدَانِ	uw̱anḏāni
2	138	a	2	تَمَارِ	ṯamāri	tamari					tmr		ṯamāri	تَمَارِ	ṯamāri
49	143	a	2	نْجٖيْمَ	njēma	njema					ema		njēma	نْجٖيْمَ	njēma
31	141	b	2	يَا	yā	ya					ya		yā	يَا	yā
36	141	d	2	إِنْڠَاۏَ	ingāw̱a	ingawa					ingawa		ingāw̱a	إِنْڠَاۏَ	ingāw̱a
15	139	c	2	زٗوْتهٖ	zōṯʿe	zote					ote		zōṯʿe	زٗوْتهٖ	zōṯʿe
16	139	c	3	جَسَادِ	jasāḏi	jasadi					jsd		jasāḏi	جَسَادِ	jasāḏi
17	139	d	1	مَعَدُوِ	ma'aḏuwi	ma'aduwi					'dw	both enemies and friends.	ma'aḏuwi	مَعَدُوِ	ma'aḏuwi
20	140	a	2	كُكِپَنْبَؤُوْكَ	kukipam̱baūka	kukipambauka					pamba		kukipam̱baūka	كُكِپَنْبَؤُوْكَ	kukipam̱baūka
21	140	b	1	عَمُوْرِ	'amūri	'amuri					'mr	Amuri came out	'amūri	عَمُوْرِ	'amūri
22	140	b	2	أَكَتٗوْكَ	akaṯōka	akatoka					to		akaṯōka	أَكَتٗوْكَ	akaṯōka
23	140	c	1	كْوَ	kwa	kwa					a	He arrived beside Ali	kwa	كْوَ	kwa
37	141	d	3	طَوِلِيَ	ṭawiliya	tawiliya					ṭal		ṭawiliya	طَوِلِيَ	ṭawiliya
38	142	a	1	عَمُوْرِ	'amūri	'amuri					'mr	Amuri went back inside;	'amūri	عَمُوْرِ	'amūri
24	140	c	2	عَلِىْ	'alii	'alii					'ly		'alii	عَلِىْ	'alii
25	140	c	3	أَكَفِيْكَ	akafı̄ka	akafika					fik		akafı̄ka	أَكَفِيْكَ	akafı̄ka
42	142	b	2	يُوَانِ	yuwāni	yuwani					ju		yuwāni	يُوَانِ	yuwāni
43	142	c	1	دِرِيْعِ	ḏirī'i	diri'i					dr'	In battle-armour,	ḏirī'i	دِرِيْعِ	ḏirī'i
55	143	d	1	جُوْ	juu	juu					juu	and seated himself upon it.	juu	جُوْ	juu
47	142	d	2	زِكَمْكَاءَ	zikamkāa	zikamkaa				Lit. #and bound himself so that [the armour] stayed on him#.	ka		zikamkāa	زِكَمْكَاءَ	zikamkāa
56	143	d	2	أَكَمْكَلِئَ	akamkalia	akamkalia					ka		akamkalia	أَكَمْكَلِئَ	akamkalia
77	146	b	2	حَيْدَرِ	ḥayḏari	haydari				A frequently-used metonym for Ali.	ḥdr		ḥayḏari	حَيْدَرِ	ḥayḏari
79	146	c	2	نْدَ	nḏa	nda					a		nḏa	نْدَ	nḏa
81	146	d	1	نْبٗوْنَ	m̱bōna	mbona					mbona	why are we following it?	m̱bōna	نْبٗوْنَ	m̱bōna
89	147	c	2	أَمْصَارِ	amṣāri	amsari					mṣr		amṣāri	أَمْصَارِ	amṣāri
90	147	d	1	جُنُوْدِ	junūḏi	junudi					jnd	while the army assembles.	junūḏi	جُنُوْدِ	junūḏi
91	147	d	2	كُئِكُسَنْيِئَ	kuikusanyia	kuikusanyia					kut		kuikusanyia	كُئِكُسَنْيِئَ	kuikusanyia
39	142	a	2	كَرُوْدِ	karūḏi	karudi			B: @أَكٖينْڈَ@ #akēnḑa#		rdd		karūḏi	كَرُوْدِ	karūḏi
57	144	a	1	ۏَكٖيْنْڈَ	w̱akēnḑa	wakenda					end	They went, I'll tell you, 	w̱akēnḑa	ۏَكٖيْنْڈَ	w̱akēnḑa
76	146	b	1	كَمْوَنبِئَ	kamwam̱bia	kamwambia					amb	and said to the Lion:	kamwam̱bia	كَمْوَنبِئَ	kamwam̱bia
59	144	b	1	بِاللَّيْلِ	bi-llayli	bi-layli					lyl	by night and day,	bi-llayli	بِاللَّيْلِ	bi-llayli
60	144	b	2	وَالنَّهَارِ	wa-nnahāri	wa-nahari					nhr		wa-nnahāri	وَالنَّهَارِ	wa-nnahāri
65	145	a	1	ۏَكٖنٖينْڈَ	w̱akenēnḑa	wakenenda					end	Know that they went on,	w̱akenēnḑa	ۏَكٖنٖينْڈَ	w̱akenēnḑa
66	145	a	2	يُۏَانِ	yuw̱āni	yuwani					ju		yuw̱āni	يُۏَانِ	yuw̱āni
67	145	b	1	عَلِىْ	'alii	'alii					'ly	Ali and the Accursed One;	'alii	عَلِىْ	'alii
68	145	b	2	نَمَلِعُوْنِ	namali'ūni	namali'uni					l'n		namali'ūni	نَمَلِعُوْنِ	namali'ūni
69	145	c	1	نْدِئَ	nḏia	ndia					njia	These roads [led to] Medina - 	nḏia	نْدِئَ	nḏia
70	145	c	2	زِيْلِ	zı̄li	zili					ili		zı̄li	زِيْلِ	zı̄li
73	145	d	2	كَزِٹَنْبُؤَ	kaziţam̱bua	kazitambua					tamb		kaziţam̱bua	كَزِٹَنْبُؤَ	kaziţam̱bua
74	146	a	1	عَمُوْرِ	'amūri	'amuri					'mr	Amuri spoke	'amūri	عَمُوْرِ	'amūri
80	146	c	3	أَنْصَارِ	anṣāri	ansari				The Ansari were the Muslims of Medina who gave refuge to the Prophet after the Hegira.  Possibly this word is in error for @أَمْصَارِ@, #city#, used in the next stanza.	nṣr		anṣāri	أَنْصَارِ	anṣāri
88	147	c	1	كْوَنْڠَلِئَ	kwangalia	kwangalia					ang	to reconnoitre the city	kwangalia	كْوَنْڠَلِئَ	kwangalia
33	141	c	1	ٹُتَوَصِيْل	ţuṯawaṣı̄l	tutawasil	ţuṯawaṣı̄l#i#				wṣl	We shall arrive safely	ţuṯawaṣı̄li	ٹُتَوَصِيْل	ţuṯawaṣı̄l
30	141	b	1	أَهْلاً	ahlāⁿ	ahla	ah#a#lāⁿ				ahl	Greetings, Honoured One	ahalāⁿ	أَهْلاً	ahlāⁿ
26	140	d	1	سَوْتِ	sawṯi	sauti					swt	and [Ali] spoke.	sawṯi	سَوْتِ	sawṯi
28	141	a	1	عَلِىْ	'alii	'alii					'ly	Ali said	'alii	عَلِىْ	'alii
6	138	c	2	أَصْفَرِ	aṣfari	asfari	aṣ#u#fari			The salt is yellow because it is unpurified rock-salt, containing iodine.	ṣfr		aṣufari	أَصْفَرِ	aṣfari
5	138	c	1	نَمِلْحِ	namilḥi	namilhi	namil#i#ḥi	na			mlḥ	And yellow salt - 	miliḥi	مِلْحِ	milḥi
4	138	b	2	يَشَعِيْرِ	yasha'ı̄ri	yasha'iri		ya			s̱'r		sha'ı̄ri	شَعِيْرِ	sha'ı̄ri
3	138	b	1	نَخُبُوزِ	naẖubūzi	nahubuzi		na			ẖbz	and barley bread	ẖubūzi	خُبُوزِ	ẖubūzi
52	143	b	2	نَتُرُوْسِ	naṯurūsi	naturusi		na			trs		ṯurūsi	تُرُوْسِ	ṯurūsi
18	139	d	2	نَمَوَلِيْ	namawalii	namawalii		na		The implication is that these are friends and enemies of Islam.	wly		mawalii	مَوَلِيْ	mawalii
48	143	a	1	نَسٖيْفُ	nasēfu	nasefu		na			syf	And [took up] a good, stout sword,	sēfu	سٖيْفُ	sēfu
62	144	c	2	نَبَحَارِ	nabaḥāri	nabahari		na			bḥr		baḥāri	بَحَارِ	baḥāri
63	144	d	1	نَمِيْٹِ	namı̄ţi	namiti		na			ti	and forests, and oases.	mı̄ţi	مِيْٹِ	mı̄ţi
71	145	c	3	زَمَدِيْنِ	zamaḏı̄ni	zamadini		za			mdn		maḏı̄ni	مَدِيْنِ	maḏı̄ni
64	144	d	2	نَمَطَرِيَ	namaṭariya	namatariya		na		Ar @مطر@ #rain#.  Seemingly used by extension here to mean a place with water.	mṭr		maṭariya	مَطَرِيَ	maṭariya
86	147	b	1	يَكْوٖنٖينْڈَ	yakwenēnḑa	yakwenenda		ya			end	about going on the journey,	kwenēnḑa	كْوٖنٖينْڈَ	kwenēnḑa
51	143	b	1	نَرُمْحِ	narumḥi	narumhi	narum#u#ḥi	na			rmḥ	and a spear, and a shield.	rumuḥi	رُمْحِ	rumḥi
\.


--
-- Name: vita_vikuu_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('vita_vikuu_words_word_id_seq', 91, true);


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
-- Name: vita_vikuu_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY vita_vikuu
    ADD CONSTRAINT vita_vikuu_pk PRIMARY KEY (poemline_id);


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

