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
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY kiswahili_words ALTER COLUMN word_id SET DEFAULT nextval('kiswahili_words_word_id_seq'::regclass);


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
-- Name: kiswahili_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY kiswahili_words
    ADD CONSTRAINT kiswahili_words_pk PRIMARY KEY (word_id);


--
-- PostgreSQL database dump complete
--

