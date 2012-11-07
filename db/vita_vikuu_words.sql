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
-- Name: vita_vikuu_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('vita_vikuu_words_word_id_seq', 91, true);


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY vita_vikuu_words ALTER COLUMN word_id SET DEFAULT nextval('vita_vikuu_words_word_id_seq'::regclass);


--
-- Data for Name: vita_vikuu_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

INSERT INTO vita_vikuu_words VALUES (40, 142, 'a', 3, 'نْڈَانِ', 'nḑāni', 'ndani', '', '', '', '', 'ndani', '', 'nḑāni', 'نْڈَانِ', 'nḑāni');
INSERT INTO vita_vikuu_words VALUES (75, 146, 'a', 2, 'كَذُكُوْرِ', 'kadhukūri', 'kadhukuri', '', '', '', '', 'ḏkr', '', 'kadhukūri', 'كَذُكُوْرِ', 'kadhukūri');
INSERT INTO vita_vikuu_words VALUES (29, 141, 'a', 2, 'كَتَكَلَامَ', 'kaṯakalāma', 'katakalama', '', '', '', '', 'klm', '', 'kaṯakalāma', 'كَتَكَلَامَ', 'kaṯakalāma');
INSERT INTO vita_vikuu_words VALUES (53, 143, 'c', 1, 'أَكَمْپَانْڈَ', 'akampānḑa', 'akampanda', '', '', '', '', 'pand', 'Then he mounted his steed,', 'akampānḑa', 'أَكَمْپَانْڈَ', 'akampānḑa');
INSERT INTO vita_vikuu_words VALUES (44, 142, 'c', 2, 'زَ', 'za', 'za', '', '', '', '', 'a', '', 'za', 'زَ', 'za');
INSERT INTO vita_vikuu_words VALUES (46, 142, 'd', 1, 'أَكَئِفُوْنْڠَ', 'akaifūnga', 'akaifunga', '', '', '', '', 'fung', 'and fastened it firmly upon himself.', 'akaifūnga', 'أَكَئِفُوْنْڠَ', 'akaifūnga');
INSERT INTO vita_vikuu_words VALUES (82, 146, 'd', 2, 'ٹْوَئِفُوَٹِئَ', 'ţwaifuwaţia', 'twaifuwatia', '', '', '', '', 'fuat', '', 'ţwaifuwaţia', 'ٹْوَئِفُوَٹِئَ', 'ţwaifuwaţia');
INSERT INTO vita_vikuu_words VALUES (83, 147, 'a', 1, 'نَاسِ', 'nāsi', 'nasi', '', '', '', '', 'sisi', 'For we have taken counsel ', 'nāsi', 'نَاسِ', 'nāsi');
INSERT INTO vita_vikuu_words VALUES (84, 147, 'a', 2, 'ٹُمٖفَانْيَ', 'ţumefānya', 'tumefanya', '', '', '', '', 'fa', '', 'ţumefānya', 'ٹُمٖفَانْيَ', 'ţumefānya');
INSERT INTO vita_vikuu_words VALUES (32, 141, 'b', 3, 'مُكَرَّمَ', 'mukarrama', 'mukarrama', '', '', '', '', 'krm', '', 'mukarrama', 'مُكَرَّمَ', 'mukarrama');
INSERT INTO vita_vikuu_words VALUES (34, 141, 'c', 2, 'سَلَامَ', 'salāma', 'salama', '', '', '', '', 'slm', '', 'salāma', 'سَلَامَ', 'salāma');
INSERT INTO vita_vikuu_words VALUES (8, 138, 'd', 2, 'كَٹٗئٖلٖئَ', 'kaţoelea', 'katoelea', '', '', '', '', 'to', '', 'kaţoelea', 'كَٹٗئٖلٖئَ', 'kaţoelea');
INSERT INTO vita_vikuu_words VALUES (9, 139, 'a', 1, 'كِشَكُوْلَ', 'kishakūla', 'kishakula', '', '', '', '', 'l', 'When he finished eating he gave thanks', 'kishakūla', 'كِشَكُوْلَ', 'kishakūla');
INSERT INTO vita_vikuu_words VALUES (10, 139, 'a', 2, 'كَحِمِيْدِ', 'kaḥimı̄ḏi', 'kahimidi', '', '', '', '', 'ḥmd', '', 'kaḥimı̄ḏi', 'كَحِمِيْدِ', 'kaḥimı̄ḏi');
INSERT INTO vita_vikuu_words VALUES (11, 139, 'b', 1, 'ۏَاكٖ', 'w̱āke', 'wake', '', '', '', '', 'ake', 'to his beloved God,', 'w̱āke', 'ۏَاكٖ', 'w̱āke');
INSERT INTO vita_vikuu_words VALUES (50, 143, 'a', 3, 'أَسِيْسِ', 'ası̄si', 'asisi', '', '', '', '', 'ass', '', 'ası̄si', 'أَسِيْسِ', 'ası̄si');
INSERT INTO vita_vikuu_words VALUES (54, 143, 'c', 2, 'فَرَاسِ', 'farāsi', 'farasi', '', '', '', '', 'frs', '', 'farāsi', 'فَرَاسِ', 'farāsi');
INSERT INTO vita_vikuu_words VALUES (12, 139, 'b', 2, 'إِلَاهِ', 'ilāhi', 'ilahi', '', '', '', '', 'alh', '', 'ilāhi', 'إِلَاهِ', 'ilāhi');
INSERT INTO vita_vikuu_words VALUES (13, 139, 'b', 3, 'وَدُوْدِ', 'waḏūḏi', 'wadudi', '', '', '', '', 'wdd', '', 'waḏūḏi', 'وَدُوْدِ', 'waḏūḏi');
INSERT INTO vita_vikuu_words VALUES (35, 141, 'd', 1, 'نْدِئَ', 'nḏia', 'ndia', '', '', '', '', 'njia', 'even if the road is long.', 'nḏia', 'نْدِئَ', 'nḏia');
INSERT INTO vita_vikuu_words VALUES (85, 147, 'a', 3, 'مَشَؤُوْرِ', 'mashaūri', 'mashauri', '', '', '', '', 's̱wr', '', 'mashaūri', 'مَشَؤُوْرِ', 'mashaūri');
INSERT INTO vita_vikuu_words VALUES (87, 147, 'b', 2, 'سَفَارِ', 'safāri', 'safari', '', '', '', '', 'sfr', '', 'safāri', 'سَفَارِ', 'safāri');
INSERT INTO vita_vikuu_words VALUES (1, 138, 'a', 1, 'أَكَتٗؤَ', 'akaṯoa', 'akatoa', '', '', '', '', 'to', 'He took out dates', 'akaṯoa', 'أَكَتٗؤَ', 'akaṯoa');
INSERT INTO vita_vikuu_words VALUES (58, 144, 'a', 2, 'تهَخُبِيْرِ', 'ṯʿaẖubı̄ri', 'tahubiri', '', '', '', '', 'ẖbr', '', 'ṯʿaẖubı̄ri', 'تهَخُبِيْرِ', 'ṯʿaẖubı̄ri');
INSERT INTO vita_vikuu_words VALUES (72, 145, 'd', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri recognised them.', '''amūri', 'عَمُوْرِ', '''amūri');
INSERT INTO vita_vikuu_words VALUES (78, 146, 'c', 1, 'دُرُوْبُ', 'ḏurūbu', 'durubu', '', '', '', '', 'drb', 'This is the Companions'' road', 'ḏurūbu', 'دُرُوْبُ', 'ḏurūbu');
INSERT INTO vita_vikuu_words VALUES (61, 144, 'c', 1, 'ۏَكَپَنْبَانَ', 'w̱akapam̱bāna', 'wakapambana', '', '', '', '', 'pamb', 'And they encountered oceans,', 'w̱akapam̱bāna', 'ۏَكَپَنْبَانَ', 'w̱akapam̱bāna');
INSERT INTO vita_vikuu_words VALUES (7, 138, 'd', 1, 'كَكهٖيْتِ', 'kakʿēṯi', 'kaketi', '', '', '', '', 'ka', 'he sat down and took [them] out.', 'kakʿēṯi', 'كَكهٖيْتِ', 'kakʿēṯi');
INSERT INTO vita_vikuu_words VALUES (14, 139, 'c', 1, 'مُؤُوْنْبَ', 'muūm̱ba', 'muumba', '', '', '', '', 'umb', 'The Creator of all individuals - ', 'muūm̱ba', 'مُؤُوْنْبَ', 'muūm̱ba');
INSERT INTO vita_vikuu_words VALUES (19, 140, 'a', 1, 'هَاتَ', 'hāṯa', 'hata', '', '', '', '', 'hata', 'Until, when dawn came,', 'hāṯa', 'هَاتَ', 'hāṯa');
INSERT INTO vita_vikuu_words VALUES (27, 140, 'd', 2, 'أَكَئِتٗؤَ', 'akaiṯoa', 'akaitoa', '', '', '', '', 'to', '', 'akaiṯoa', 'أَكَئِتٗؤَ', 'akaiṯoa');
INSERT INTO vita_vikuu_words VALUES (41, 142, 'b', 1, 'كَئِلَبِيْسِ', 'kailabı̄si', 'kailabisi', '', '', '', '', 'lbs', 'know that he dressed himself', 'kailabı̄si', 'كَئِلَبِيْسِ', 'kailabı̄si');
INSERT INTO vita_vikuu_words VALUES (45, 142, 'c', 3, 'أُۏَنْدَانِ', 'uw̱anḏāni', 'uwandani', '', '', '', '@أُۏَنْدَ@ (uwanda) is an #open space#, and by extension a #battlefield#.', 'wand', '', 'uw̱anḏāni', 'أُۏَنْدَانِ', 'uw̱anḏāni');
INSERT INTO vita_vikuu_words VALUES (2, 138, 'a', 2, 'تَمَارِ', 'ṯamāri', 'tamari', '', '', '', '', 'tmr', '', 'ṯamāri', 'تَمَارِ', 'ṯamāri');
INSERT INTO vita_vikuu_words VALUES (49, 143, 'a', 2, 'نْجٖيْمَ', 'njēma', 'njema', '', '', '', '', 'ema', '', 'njēma', 'نْجٖيْمَ', 'njēma');
INSERT INTO vita_vikuu_words VALUES (31, 141, 'b', 2, 'يَا', 'yā', 'ya', '', '', '', '', 'ya', '', 'yā', 'يَا', 'yā');
INSERT INTO vita_vikuu_words VALUES (36, 141, 'd', 2, 'إِنْڠَاۏَ', 'ingāw̱a', 'ingawa', '', '', '', '', 'ingawa', '', 'ingāw̱a', 'إِنْڠَاۏَ', 'ingāw̱a');
INSERT INTO vita_vikuu_words VALUES (15, 139, 'c', 2, 'زٗوْتهٖ', 'zōṯʿe', 'zote', '', '', '', '', 'ote', '', 'zōṯʿe', 'زٗوْتهٖ', 'zōṯʿe');
INSERT INTO vita_vikuu_words VALUES (16, 139, 'c', 3, 'جَسَادِ', 'jasāḏi', 'jasadi', '', '', '', '', 'jsd', '', 'jasāḏi', 'جَسَادِ', 'jasāḏi');
INSERT INTO vita_vikuu_words VALUES (17, 139, 'd', 1, 'مَعَدُوِ', 'ma''aḏuwi', 'ma''aduwi', '', '', '', '', '''dw', 'both enemies and friends.', 'ma''aḏuwi', 'مَعَدُوِ', 'ma''aḏuwi');
INSERT INTO vita_vikuu_words VALUES (20, 140, 'a', 2, 'كُكِپَنْبَؤُوْكَ', 'kukipam̱baūka', 'kukipambauka', '', '', '', '', 'pamba', '', 'kukipam̱baūka', 'كُكِپَنْبَؤُوْكَ', 'kukipam̱baūka');
INSERT INTO vita_vikuu_words VALUES (21, 140, 'b', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri came out', '''amūri', 'عَمُوْرِ', '''amūri');
INSERT INTO vita_vikuu_words VALUES (22, 140, 'b', 2, 'أَكَتٗوْكَ', 'akaṯōka', 'akatoka', '', '', '', '', 'to', '', 'akaṯōka', 'أَكَتٗوْكَ', 'akaṯōka');
INSERT INTO vita_vikuu_words VALUES (23, 140, 'c', 1, 'كْوَ', 'kwa', 'kwa', '', '', '', '', 'a', 'He arrived beside Ali', 'kwa', 'كْوَ', 'kwa');
INSERT INTO vita_vikuu_words VALUES (37, 141, 'd', 3, 'طَوِلِيَ', 'ṭawiliya', 'tawiliya', '', '', '', '', 'ṭal', '', 'ṭawiliya', 'طَوِلِيَ', 'ṭawiliya');
INSERT INTO vita_vikuu_words VALUES (38, 142, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri went back inside;', '''amūri', 'عَمُوْرِ', '''amūri');
INSERT INTO vita_vikuu_words VALUES (24, 140, 'c', 2, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', '', '''alii', 'عَلِىْ', '''alii');
INSERT INTO vita_vikuu_words VALUES (25, 140, 'c', 3, 'أَكَفِيْكَ', 'akafı̄ka', 'akafika', '', '', '', '', 'fik', '', 'akafı̄ka', 'أَكَفِيْكَ', 'akafı̄ka');
INSERT INTO vita_vikuu_words VALUES (42, 142, 'b', 2, 'يُوَانِ', 'yuwāni', 'yuwani', '', '', '', '', 'ju', '', 'yuwāni', 'يُوَانِ', 'yuwāni');
INSERT INTO vita_vikuu_words VALUES (43, 142, 'c', 1, 'دِرِيْعِ', 'ḏirī''i', 'diri''i', '', '', '', '', 'dr''', 'In battle-armour,', 'ḏirī''i', 'دِرِيْعِ', 'ḏirī''i');
INSERT INTO vita_vikuu_words VALUES (55, 143, 'd', 1, 'جُوْ', 'juu', 'juu', '', '', '', '', 'juu', 'and seated himself upon it.', 'juu', 'جُوْ', 'juu');
INSERT INTO vita_vikuu_words VALUES (47, 142, 'd', 2, 'زِكَمْكَاءَ', 'zikamkāa', 'zikamkaa', '', '', '', 'Lit. #and bound himself so that [the armour] stayed on him#.', 'ka', '', 'zikamkāa', 'زِكَمْكَاءَ', 'zikamkāa');
INSERT INTO vita_vikuu_words VALUES (56, 143, 'd', 2, 'أَكَمْكَلِئَ', 'akamkalia', 'akamkalia', '', '', '', '', 'ka', '', 'akamkalia', 'أَكَمْكَلِئَ', 'akamkalia');
INSERT INTO vita_vikuu_words VALUES (77, 146, 'b', 2, 'حَيْدَرِ', 'ḥayḏari', 'haydari', '', '', '', 'A frequently-used metonym for Ali.', 'ḥdr', '', 'ḥayḏari', 'حَيْدَرِ', 'ḥayḏari');
INSERT INTO vita_vikuu_words VALUES (79, 146, 'c', 2, 'نْدَ', 'nḏa', 'nda', '', '', '', '', 'a', '', 'nḏa', 'نْدَ', 'nḏa');
INSERT INTO vita_vikuu_words VALUES (81, 146, 'd', 1, 'نْبٗوْنَ', 'm̱bōna', 'mbona', '', '', '', '', 'mbona', 'why are we following it?', 'm̱bōna', 'نْبٗوْنَ', 'm̱bōna');
INSERT INTO vita_vikuu_words VALUES (89, 147, 'c', 2, 'أَمْصَارِ', 'amṣāri', 'amsari', '', '', '', '', 'mṣr', '', 'amṣāri', 'أَمْصَارِ', 'amṣāri');
INSERT INTO vita_vikuu_words VALUES (90, 147, 'd', 1, 'جُنُوْدِ', 'junūḏi', 'junudi', '', '', '', '', 'jnd', 'while the army assembles.', 'junūḏi', 'جُنُوْدِ', 'junūḏi');
INSERT INTO vita_vikuu_words VALUES (91, 147, 'd', 2, 'كُئِكُسَنْيِئَ', 'kuikusanyia', 'kuikusanyia', '', '', '', '', 'kut', '', 'kuikusanyia', 'كُئِكُسَنْيِئَ', 'kuikusanyia');
INSERT INTO vita_vikuu_words VALUES (39, 142, 'a', 2, 'كَرُوْدِ', 'karūḏi', 'karudi', '', '', 'B: @أَكٖينْڈَ@ #akēnḑa#', '', 'rdd', '', 'karūḏi', 'كَرُوْدِ', 'karūḏi');
INSERT INTO vita_vikuu_words VALUES (57, 144, 'a', 1, 'ۏَكٖيْنْڈَ', 'w̱akēnḑa', 'wakenda', '', '', '', '', 'end', 'They went, I''ll tell you, ', 'w̱akēnḑa', 'ۏَكٖيْنْڈَ', 'w̱akēnḑa');
INSERT INTO vita_vikuu_words VALUES (76, 146, 'b', 1, 'كَمْوَنبِئَ', 'kamwam̱bia', 'kamwambia', '', '', '', '', 'amb', 'and said to the Lion:', 'kamwam̱bia', 'كَمْوَنبِئَ', 'kamwam̱bia');
INSERT INTO vita_vikuu_words VALUES (59, 144, 'b', 1, 'بِاللَّيْلِ', 'bi-llayli', 'bi-layli', '', '', '', '', 'lyl', 'by night and day,', 'bi-llayli', 'بِاللَّيْلِ', 'bi-llayli');
INSERT INTO vita_vikuu_words VALUES (60, 144, 'b', 2, 'وَالنَّهَارِ', 'wa-nnahāri', 'wa-nahari', '', '', '', '', 'nhr', '', 'wa-nnahāri', 'وَالنَّهَارِ', 'wa-nnahāri');
INSERT INTO vita_vikuu_words VALUES (65, 145, 'a', 1, 'ۏَكٖنٖينْڈَ', 'w̱akenēnḑa', 'wakenenda', '', '', '', '', 'end', 'Know that they went on,', 'w̱akenēnḑa', 'ۏَكٖنٖينْڈَ', 'w̱akenēnḑa');
INSERT INTO vita_vikuu_words VALUES (66, 145, 'a', 2, 'يُۏَانِ', 'yuw̱āni', 'yuwani', '', '', '', '', 'ju', '', 'yuw̱āni', 'يُۏَانِ', 'yuw̱āni');
INSERT INTO vita_vikuu_words VALUES (67, 145, 'b', 1, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', 'Ali and the Accursed One;', '''alii', 'عَلِىْ', '''alii');
INSERT INTO vita_vikuu_words VALUES (68, 145, 'b', 2, 'نَمَلِعُوْنِ', 'namali''ūni', 'namali''uni', '', '', '', '', 'l''n', '', 'namali''ūni', 'نَمَلِعُوْنِ', 'namali''ūni');
INSERT INTO vita_vikuu_words VALUES (69, 145, 'c', 1, 'نْدِئَ', 'nḏia', 'ndia', '', '', '', '', 'njia', 'These roads [led to] Medina - ', 'nḏia', 'نْدِئَ', 'nḏia');
INSERT INTO vita_vikuu_words VALUES (70, 145, 'c', 2, 'زِيْلِ', 'zı̄li', 'zili', '', '', '', '', 'ili', '', 'zı̄li', 'زِيْلِ', 'zı̄li');
INSERT INTO vita_vikuu_words VALUES (73, 145, 'd', 2, 'كَزِٹَنْبُؤَ', 'kaziţam̱bua', 'kazitambua', '', '', '', '', 'tamb', '', 'kaziţam̱bua', 'كَزِٹَنْبُؤَ', 'kaziţam̱bua');
INSERT INTO vita_vikuu_words VALUES (74, 146, 'a', 1, 'عَمُوْرِ', '''amūri', '''amuri', '', '', '', '', '''mr', 'Amuri spoke', '''amūri', 'عَمُوْرِ', '''amūri');
INSERT INTO vita_vikuu_words VALUES (80, 146, 'c', 3, 'أَنْصَارِ', 'anṣāri', 'ansari', '', '', '', 'The Ansari were the Muslims of Medina who gave refuge to the Prophet after the Hegira.  Possibly this word is in error for @أَمْصَارِ@, #city#, used in the next stanza.', 'nṣr', '', 'anṣāri', 'أَنْصَارِ', 'anṣāri');
INSERT INTO vita_vikuu_words VALUES (88, 147, 'c', 1, 'كْوَنْڠَلِئَ', 'kwangalia', 'kwangalia', '', '', '', '', 'ang', 'to reconnoitre the city', 'kwangalia', 'كْوَنْڠَلِئَ', 'kwangalia');
INSERT INTO vita_vikuu_words VALUES (33, 141, 'c', 1, 'ٹُتَوَصِيْل', 'ţuṯawaṣı̄l', 'tutawasil', 'ţuṯawaṣı̄l#i#', '', '', '', 'wṣl', 'We shall arrive safely', 'ţuṯawaṣı̄li', 'ٹُتَوَصِيْل', 'ţuṯawaṣı̄l');
INSERT INTO vita_vikuu_words VALUES (30, 141, 'b', 1, 'أَهْلاً', 'ahlāⁿ', 'ahla', 'ah#a#lāⁿ', '', '', '', 'ahl', 'Greetings, Honoured One', 'ahalāⁿ', 'أَهْلاً', 'ahlāⁿ');
INSERT INTO vita_vikuu_words VALUES (26, 140, 'd', 1, 'سَوْتِ', 'sawṯi', 'sauti', '', '', '', '', 'swt', 'and [Ali] spoke.', 'sawṯi', 'سَوْتِ', 'sawṯi');
INSERT INTO vita_vikuu_words VALUES (28, 141, 'a', 1, 'عَلِىْ', '''alii', '''alii', '', '', '', '', '''ly', 'Ali said', '''alii', 'عَلِىْ', '''alii');
INSERT INTO vita_vikuu_words VALUES (6, 138, 'c', 2, 'أَصْفَرِ', 'aṣfari', 'asfari', 'aṣ#u#fari', '', '', 'The salt is yellow because it is unpurified rock-salt, containing iodine.', 'ṣfr', '', 'aṣufari', 'أَصْفَرِ', 'aṣfari');
INSERT INTO vita_vikuu_words VALUES (5, 138, 'c', 1, 'نَمِلْحِ', 'namilḥi', 'namilhi', 'namil#i#ḥi', 'na', '', '', 'mlḥ', 'And yellow salt - ', 'miliḥi', 'مِلْحِ', 'milḥi');
INSERT INTO vita_vikuu_words VALUES (4, 138, 'b', 2, 'يَشَعِيْرِ', 'yasha''ı̄ri', 'yasha''iri', '', 'ya', '', '', 's̱''r', '', 'sha''ı̄ri', 'شَعِيْرِ', 'sha''ı̄ri');
INSERT INTO vita_vikuu_words VALUES (3, 138, 'b', 1, 'نَخُبُوزِ', 'naẖubūzi', 'nahubuzi', '', 'na', '', '', 'ẖbz', 'and barley bread', 'ẖubūzi', 'خُبُوزِ', 'ẖubūzi');
INSERT INTO vita_vikuu_words VALUES (52, 143, 'b', 2, 'نَتُرُوْسِ', 'naṯurūsi', 'naturusi', '', 'na', '', '', 'trs', '', 'ṯurūsi', 'تُرُوْسِ', 'ṯurūsi');
INSERT INTO vita_vikuu_words VALUES (18, 139, 'd', 2, 'نَمَوَلِيْ', 'namawalii', 'namawalii', '', 'na', '', 'The implication is that these are friends and enemies of Islam.', 'wly', '', 'mawalii', 'مَوَلِيْ', 'mawalii');
INSERT INTO vita_vikuu_words VALUES (48, 143, 'a', 1, 'نَسٖيْفُ', 'nasēfu', 'nasefu', '', 'na', '', '', 'syf', 'And [took up] a good, stout sword,', 'sēfu', 'سٖيْفُ', 'sēfu');
INSERT INTO vita_vikuu_words VALUES (62, 144, 'c', 2, 'نَبَحَارِ', 'nabaḥāri', 'nabahari', '', 'na', '', '', 'bḥr', '', 'baḥāri', 'بَحَارِ', 'baḥāri');
INSERT INTO vita_vikuu_words VALUES (63, 144, 'd', 1, 'نَمِيْٹِ', 'namı̄ţi', 'namiti', '', 'na', '', '', 'ti', 'and forests, and oases.', 'mı̄ţi', 'مِيْٹِ', 'mı̄ţi');
INSERT INTO vita_vikuu_words VALUES (71, 145, 'c', 3, 'زَمَدِيْنِ', 'zamaḏı̄ni', 'zamadini', '', 'za', '', '', 'mdn', '', 'maḏı̄ni', 'مَدِيْنِ', 'maḏı̄ni');
INSERT INTO vita_vikuu_words VALUES (64, 144, 'd', 2, 'نَمَطَرِيَ', 'namaṭariya', 'namatariya', '', 'na', '', 'Ar @مطر@ #rain#.  Seemingly used by extension here to mean a place with water.', 'mṭr', '', 'maṭariya', 'مَطَرِيَ', 'maṭariya');
INSERT INTO vita_vikuu_words VALUES (86, 147, 'b', 1, 'يَكْوٖنٖينْڈَ', 'yakwenēnḑa', 'yakwenenda', '', 'ya', '', '', 'end', 'about going on the journey,', 'kwenēnḑa', 'كْوٖنٖينْڈَ', 'kwenēnḑa');
INSERT INTO vita_vikuu_words VALUES (51, 143, 'b', 1, 'نَرُمْحِ', 'narumḥi', 'narumhi', 'narum#u#ḥi', 'na', '', '', 'rmḥ', 'and a spear, and a shield.', 'rumuḥi', 'رُمْحِ', 'rumḥi');


--
-- Name: vita_vikuu_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY vita_vikuu_words
    ADD CONSTRAINT vita_vikuu_words_pk PRIMARY KEY (word_id);


--
-- PostgreSQL database dump complete
--

