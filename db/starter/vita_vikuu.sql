--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

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
-- Name: vita_vikuu_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('vita_vikuu_poemline_id_seq', 40, true);


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY vita_vikuu ALTER COLUMN poemline_id SET DEFAULT nextval('vita_vikuu_poemline_id_seq'::regclass);


--
-- Data for Name: vita_vikuu; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu VALUES (1, 1, 'a', 'أَكَتٗؤَ تَمَارِ ', 'akaṯoa ṯamāri', 'akatoa tamari', '');
INSERT INTO vita_vikuu VALUES (2, 1, 'b', ' نَخُبُوزِ يَشَعِيْرِ', 'naẖubūzi yasha''ı̄ri', 'nahubuzi yasha''iri', '');
INSERT INTO vita_vikuu VALUES (3, 1, 'c', 'نَمِلْحِ أَصْفَرِ ', 'namilḥi aṣfari', 'namilhi asfari', '');
INSERT INTO vita_vikuu VALUES (4, 1, 'd', ' كَكهٖيْتِ كَٹٗئٖلٖئَ', 'kakʿēṯi kaţoelea', 'kaketi katoelea', '');
INSERT INTO vita_vikuu VALUES (5, 2, 'a', 'كِشَكُوْلَ كَحِمِيْدِ ', 'kishakūla kaḥimı̄ḏi', 'kishakula kahimidi', '');
INSERT INTO vita_vikuu VALUES (6, 2, 'b', ' ۏَاكٖ إِلَاهِ وَدُوْدِ', 'w̱āke ilāhi waḏūḏi', 'wake ilahi wadudi', '');
INSERT INTO vita_vikuu VALUES (7, 2, 'c', 'مُؤُوْنْبَ زٗوْتهٖ جَسَادِ ', 'muūm̱ba zōṯʿe jasāḏi', 'muumba zote jasadi', '');
INSERT INTO vita_vikuu VALUES (8, 2, 'd', ' مَعَدُوِ نَمَوَلِيْ', 'ma''aḏuwi namawalii', 'ma''aduwi namawalii', '');
INSERT INTO vita_vikuu VALUES (9, 3, 'a', 'هَاتَ كُكِپَنْبَؤُوْكَ ', 'hāṯa kukipam̱baūka', 'hata kukipambauka', '');
INSERT INTO vita_vikuu VALUES (10, 3, 'b', ' عَمُوْرِ أَكَتٗوْكَ', '''amūri akaṯōka', '''amuri akatoka', '');
INSERT INTO vita_vikuu VALUES (11, 3, 'c', 'كْوَ عَلِىْ أَكَفِيْكَ ', 'kwa ''alii akafı̄ka', 'kwa ''alii akafika', '');
INSERT INTO vita_vikuu VALUES (12, 3, 'd', ' سَوْتِ أَكَئِتٗؤَ', 'sawṯi akaiṯoa', 'sauti akaitoa', '');
INSERT INTO vita_vikuu VALUES (13, 4, 'a', 'عَلِىْ كَتَكَلَامَ ', '''alii kaṯakalāma', '''alii katakalama', '');
INSERT INTO vita_vikuu VALUES (14, 4, 'b', ' أَهْلاً يَا مُكَرَّمَ', 'ahlāⁿ yā mukarrama', 'ahla ya mukarrama', '');
INSERT INTO vita_vikuu VALUES (15, 4, 'c', 'ٹُتَوَصِيْل سَلَامَ ', 'ţuṯawaṣı̄l salāma', 'tutawasil salama', '');
INSERT INTO vita_vikuu VALUES (16, 4, 'd', ' نْدِئَ إِنْڠَاۏَ طَوِلِيَ', 'nḏia ingāw̱a ṭawiliya', 'ndia ingawa tawiliya', '');
INSERT INTO vita_vikuu VALUES (17, 5, 'a', 'عَمُوْرِ كَرُوْدِ نْڈَانِ ', '''amūri karūḏi nḑāni', '''amuri karudi ndani', '');
INSERT INTO vita_vikuu VALUES (18, 5, 'b', ' كَئِلَبِيْسِ يُوَانِ', 'kailabı̄si yuwāni', 'kailabisi yuwani', '');
INSERT INTO vita_vikuu VALUES (19, 5, 'c', 'دِرِيْعِ زَ أُۏَنْدَانِ ', 'ḏirī''i za uw̱anḏāni', 'diri''i za uwandani', '');
INSERT INTO vita_vikuu VALUES (20, 5, 'd', ' أَكَئِفُوْنْڠَ زِكَمْكَاءَ', 'akaifūnga zikamkāa', 'akaifunga zikamkaa', '');
INSERT INTO vita_vikuu VALUES (21, 6, 'a', 'نَسٖيْفُ نْجٖيْمَ أَسِيْسِ ', 'nasēfu njēma ası̄si', 'nasefu njema asisi', '');
INSERT INTO vita_vikuu VALUES (22, 6, 'b', ' نَرُمْحِ نَتُرُوْسِ', 'narumḥi naṯurūsi', 'narumhi naturusi', '');
INSERT INTO vita_vikuu VALUES (23, 6, 'c', 'أَكَمْپَانْڈَ فَرَاسِ ', 'akampānḑa farāsi', 'akampanda farasi', '');
INSERT INTO vita_vikuu VALUES (24, 6, 'd', ' جُوْ أَكَمْكَلِئَ', 'juu akamkalia', 'juu akamkalia', '');
INSERT INTO vita_vikuu VALUES (25, 7, 'a', 'ۏَكٖيْنْڈَ تهَخُبِيْرِ ', 'w̱akēnḑa ṯʿaẖubı̄ri', 'wakenda tahubiri', '');
INSERT INTO vita_vikuu VALUES (26, 7, 'b', ' بِاللَّيْلِ وَالنَّهَارِ', 'billayli wannahāri', 'billayli wannahari', '');
INSERT INTO vita_vikuu VALUES (27, 7, 'c', 'ۏَكَپَنْبَانَ نَبَحَارِ ', 'w̱akapam̱bāna nabaḥāri', 'wakapambana nabahari', '');
INSERT INTO vita_vikuu VALUES (28, 7, 'd', ' نَمِيْٹِ نَمَطَرِيَ', 'namı̄ţi namaṭariya', 'namiti namatariya', '');
INSERT INTO vita_vikuu VALUES (29, 8, 'a', 'ۏَكٖنٖينْڈَ يُۏَانِ ', 'w̱akenēnḑa yuw̱āni', 'wakenenda yuwani', '');
INSERT INTO vita_vikuu VALUES (30, 8, 'b', ' عَلِىْ نَمَلِعُوْنِ', '''alii namali''ūni', '''alii namali''uni', '');
INSERT INTO vita_vikuu VALUES (31, 8, 'c', 'نْدِئَ زِيْلِ زَمَدِيْنِ ', 'nḏia zı̄li zamaḏı̄ni', 'ndia zili zamadini', '');
INSERT INTO vita_vikuu VALUES (32, 8, 'd', ' عَمُوْرِ كَزِٹَنْبُؤَ', '''amūri kaziţam̱bua', '''amuri kazitambua', '');
INSERT INTO vita_vikuu VALUES (33, 9, 'a', 'عَمُوْرِ كَذُكُوْرِ ', '''amūri kadhukūri', '''amuri kadhukuri', '');
INSERT INTO vita_vikuu VALUES (34, 9, 'b', ' كَمْوَنبِئَ حَيْدَرِ', 'kamwam̱bia ḥayḏari', 'kamwambia haydari', '');
INSERT INTO vita_vikuu VALUES (35, 9, 'c', 'دُرُوْبُ نْدَ أَنْصَارِ ', 'ḏurūbu nḏa anṣāri', 'durubu nda ansari', '');
INSERT INTO vita_vikuu VALUES (36, 9, 'd', ' نْبٗوْنَ ٹْوَئِفُوَٹِئَ', 'm̱bōna ţwaifuwaţia', 'mbona twaifuwatia', '');
INSERT INTO vita_vikuu VALUES (37, 10, 'a', 'نَاسِ ٹُمٖفَانْيَ مَشَؤُوْرِ ', 'nāsi ţumefānya mashaūri', 'nasi tumefanya mashauri', '');
INSERT INTO vita_vikuu VALUES (38, 10, 'b', ' يَكْوٖنٖينْڈَ سَفَارِ', 'yakwenēnḑa safāri', 'yakwenenda safari', '');
INSERT INTO vita_vikuu VALUES (39, 10, 'c', 'كْوَنْڠَلِئَ أَمْصَارِ ', 'kwangalia amṣāri', 'kwangalia amsari', '');
INSERT INTO vita_vikuu VALUES (40, 10, 'd', ' جُنُوْدِ كُئِكُسَنْيِئَ', 'junūḏi kuikusanyia', 'junudi kuikusanyia', '');


--
-- Name: vita_vikuu_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY vita_vikuu
    ADD CONSTRAINT vita_vikuu_pk PRIMARY KEY (poemline_id);


--
-- PostgreSQL database dump complete
--

