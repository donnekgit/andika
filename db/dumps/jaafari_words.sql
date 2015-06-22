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
-- Name: jaafari_words; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE jaafari_words (
    word_id integer NOT NULL,
    msno integer,
    stanza integer,
    loc character varying(5),
    "position" integer,
    arabic character varying(50),
    close character varying(50),
    standard character varying(50),
    edclose character varying(50) DEFAULT ''::character varying NOT NULL,
    edstan character varying(50) DEFAULT ''::character varying NOT NULL,
    emend character varying(250) DEFAULT ''::character varying NOT NULL,
    variant character varying(250) DEFAULT ''::character varying NOT NULL,
    note text DEFAULT ''::text NOT NULL,
    root character varying(50) DEFAULT ''::character varying NOT NULL,
    english character varying(250) DEFAULT ''::character varying NOT NULL
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
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY jaafari_words ALTER COLUMN word_id SET DEFAULT nextval('jaafari_words_word_id_seq'::regclass);


--
-- Data for Name: jaafari_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY jaafari_words (word_id, msno, stanza, loc, "position", arabic, close, standard, edclose, edstan, emend, variant, note, root, english) FROM stdin;
132	13	13	c	2	أَمِيْنِ	amı̄ni	amini		Amini					
136	14	14	a	2	هَشِمَ	hashima	hashima		Hashima			The Prophet belonged to the clan of Hashim in the tribe of Quraysh of the Hollow.		
139	14	14	b	3	فَاطِمَه	fāṭimah	fatimah		Fatima					
145	14	14	d	3	مَزٗوٖيَ	mazoweya	mazoweya		mazoeya					
3	1	1	a	3	إِخْوَانِ	ikhwāni	ihwani		ihiwani					
131	13	13	c	1	أَكِسِكِيَ	akisikiya	akisikiya		akisikia					When the Trustworthy One heard this
2657	248	250	d	1	وَچٖنْدَ	wachenda	wachenda							they both went together.
2658	248	250	d	2	وٗتٖ	wote	wote							
2659	248	250	d	3	پَمٗيَ	pamoya	pamoya					i.e. Ali took Ja'far with him on his campaigns.		
154	15	15	d	1	مْوَنَ	mwana	mwana		Mwana					Lady Fatima was crying.
155	15	15	d	2	فَاطِمَ	fāṭima	fatima		Fatima					
159	16	16	b	1	عَلِيْ	ʿalii	'alii		Ali					and became perplexed.
162	16	16	c	2	فَتُمَ	fatuma	fatuma		Fatuma					
164	16	16	d	1	أُلِلٗنَلٗ	ulilonalo	ulilonalo		ulilo nalo					tell me what's wrong with you.
174	17	17	c	2	فَتُمَ	fatuma	fatuma		Fatuma					
165	16	16	d	2	نَمْبِيَ	nambiya	nambiya							
177	17	17	d	3	سِكُلِيَ	sikuliya	sikuliya							
76	8	8	a	1	أَكَفَنْيَ	akafanya	akafanya							She tried to convince Fatima,
106	10	10	d	2	تهَمْزِنْڠَتِيَ	tʰamzingatiya	tamzingatiya							
115	11	11	d	2	نَمْكُلِيَ	namkuliya	namkuliya					N. \\Swa{-amkulia} = S. \\Swa{-itia}		
878	81	83	c	2	رَضِ	raḍi	radhi					\\Swa{radhi}, \\E{consent, blessing}, is of great importance to a person, whether it be from his mother, his father, or his teacher.  People will become afraid if any of these three persons withhold their \\Swa{radhi}, since it is held that without \\Swa{radhi} you cannot prosper -- anything you set your hand to will be blighted and fail.  The teacher here gives Ja'far his \\Swa{radhi} -- if he had not given it, Ja'far would not have gone -- and says that not only will he give his complete consent, but also (83d) that he will not change his mind once Ja'far has gone.		
1690	155	157	c	1	أَللّٰهَ	allläha	alllaha		hala			\\Swa{hala} = \\Swa{hara}, an exhortation to effort, as in \\Swa{hara mbee!}, \\E{forward!}. \\Swa{hala hala} is used when someone wants you to do something, and wants you not to forget, e.g. \\Swa{hala hala ukifika ulete barua}, \\E{make sure you deliver the letter when you arrive}.		so mind you exert yourself
256	22	24	c	1	نِ	ni	ni							Who is this enemy of mine
227	22	22	b	2	بَكَرِ	bakari	bakari		Bakari					
258	22	24	c	3	عَدُوِ	ʿaduwi	'aduwi		adui					
264	23	25	a	3	لِسَنِ	lisani	lisani					\\Swa{lisani} < \\AS{لسان}, \\E{tongue}.  We could also emend to \\Swa{hisani}, \\E{kindness, goodness}, i.e. politely.  See also 250a.		
272	24	26	a	1	عَلِى	ʿalii	'alii		Ali					Ali declared:
284	25	27	b	1	مَهَلٖ	mahale	mahale		mahali	*				where you have put it,
291	26	28	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali was worried
293	26	28	b	1	فَتُمَ	fatuma	fatuma		Fatuma					that Fatima was angry.
299	26	28	d	3	نَبِيَ	nabiya	nabiya		Nabiya					
301	27	29	a	2	هَشِمَ	hashima	hashima		Hashima					
305	27	29	b	4	فَتُمَ	fatuma	fatuma		Fatuma					
308	27	29	d	1	مْٹُمٖ	mţume	mtume		Mtume					and told the Prophet:
311	28	30	a	2	شَرِيْفُ	sharı̄fu	sharifu		Sharifu					
312	28	30	b	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima is annoyed with me --
314	28	30	c	1	زِيَپٗ	ziyapo	ziyapo		ziapo			\\Swa{-apa}, \\E{curse}, but \\Swa{-tia kiapo}, \\E{swear an oath}, such as \\Swa{nife nili kaffir}, \\E{may I die an unbeliever}.  Ali has sworn a few oaths to Fatima out of necessity, but he is not bound by them because he swore them in order to preserve marital harmony.		white lies,
319	29	31	a	1	أَلِكِلِيَ	alikiliya	alikiliya		alikilia			\\Swa{-liki-} is a past continuous tense.  See also 48d, 49a.		[Ali] was weeping: Oh Prophet!
321	29	31	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli					
331	30	32	a	3	سَيِدِ	sayidi	sayidi		Sayidi					
335	30	32	c	2	مُحَمَدِ	muḥamadi	muhamadi		Muhamadi					
344	31	33	c	1	كَئِفَنْيَ	kaifanya	kaifanya		kayifanya					He pretended he knew nothing,
350	32	34	a	2	هَشِمَ	hashima	hashima		Hashima					
354	32	34	b	4	فَتُمَ	fatuma	fatuma		Fatuma					
355	32	34	c	1	حَسَنِ	ḥasani	hasani		Hasani					Hasan came [to us] in a hurry
358	32	34	d	1	عَلِيْ	ʿalii	'alii		Ali					to fetch Ali.
360	33	35	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima did not hesitate,
363	33	35	b	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
364	33	35	c	1	عَلِيْ	ʿalii	'alii		Ali					The news about Ali --
378	34	36	d	2	أُكَمُأَمْكُوَ	ukamuamkuwa	ukamuamkuwa		ukamwamkuwa					
382	35	37	b	2	هَشِمَ	hashima	hashima		Hashima					
385	35	37	d	1	بَبَكٖ	babake	babake							and she told [everything] to her father.
387	36	38	a	1	يَوَتٖ	yawate	yawate							Leave off these words, [he said].
395	36	38	d	1	فَاطِمَة	fāṭimaẗ	fatimat		Fatima					Fatima the Radiant.
396	36	38	d	2	الزَّهْرِيَّة	zzahrı̄yaẗ	zzahriyat		az-Zahariya					
446	41	43	c	2	مَلْعُوْنِ	malʿūni	mal'uni		maluuni					
488	45	47	d	2	مَوْلَانَا	mawlānā	maulana		Maulana					
489	45	47	d	3	عَلِيَ	ʿaliya	'aliya		Aliya					
490	46	48	a	1	أَكَئِسِنْڠَ	akaisinga	akaisinga		akayisinga			lit. \\q{he moulded himself} to the appearance of his father.		The boy grew up
501	47	49	b	1	عَلِى	ʿalii	'alii		Ali					[but] Ali knew nothing of it
511	48	50	a	2	مَنَانِ	manāni	manani		Manani					
552	52	54	b	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Ja'far approached,
563	53	55	b	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					and Jaafar was there behind them.
569	53	55	d	1	عَلِيْ	ʿalii	'alii		Ali					and Ali watched him.
582	55	57	a	3	نِ	ni	nibiri					i.e. if Ali is daring Ja'far to do something.  (?) \\Swa{nibiri}, \\E{challenge} < \\AS{نبر}, \\E{raise one's voice, shout}.		
595	56	58	b	2	عَلِى	ʿalii	'alii		Ali					Ali came out [of hiding]
599	56	58	d	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Jaafari said to him:
602	57	59	a	2	هُنِشِكِيَنِ	hunishikiyani	hunishikiyani		hunishikia-ni					
605	57	59	b	3	سِنَنِ	sinani	sinani		sina-ni			\\Swa{sina-ni} emphasises the negative -- a person accused of theft may say \\Swa{sikuiba sina-ni}, \\E{I didn't do any stealing at all}. It may be shortened to \\Swa{sini}.  Thus the poem: \\Swa{kidege na uliwani? / silicha mtu sina-ni}.  The story is told of a witty tailor from Takaungu.  A group of people had dropped into his shop for a chat, and after a while the tailor got up and went out to answer nature's call to urinate.  He came back very quickly, which made some of the men there ask him jokingly why he had been so fast.  He replied: \\Swa{sina kisonono sini!}, \\E{I don't have gonorrhea at all!}, which was greeted with laughter.  The men then said that even if this were the case, he should still have taken longer, since it takes some time to wash (\\Swa{kutama}) after going to the toilet.  The tailor replied, \\Swa{siṣali sini!}, \\E{I'm not doing any praying!}.  This made everyone collapse with laughter -- people may not pray, but they certainly would not tell other people that.		
618	58	60	c	2	أَظْهَرِ	aẓhari	adhhari		adhuhari			\\Swa{adhuhari} = \\Swa{wazi-wazi, zaidi}.		
620	58	60	d	2	زَيْدِ	zaydi	zaydi		zaidi			This is fighting talk -- \\Swa{jeuri}!		
622	59	61	a	1	كَمْڤُٹِيَ	kamvuţiya	kamvutiya		kamvutia					He pulled away from [Ali]
631	59	61	d	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Ja'far, and addressed him.
633	60	62	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia					He said to him: Explain to me
635	60	62	b	1	مْوَنَ	mwana	mwana		mwana-adamu					what sort of person you are.
636	60	62	b	2	آدَمُ	ãdamu	adamu		~					
637	60	62	b	3	نْ	n	n		ni					
645	61	63	a	2	هُنٖنَنِ	hunenani	hunenani		hunena-ni					
654	61	63	d	1	عَلِى	ʿalii	'alii		Ali					Ali looked at it.
655	61	63	d	2	كَيَنْڠَلِيَ	kayangaliya	kayangaliya							
657	62	64	a	2	كُئِيٗنَ	kuiyona	kuiyona		kuiona					
684	64	66	d	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Jaafar spoke to him:
707	67	69	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia					[Ali] told him [who] his mother [was]:
718	68	70	a	1	كِمْوَمْبِيَ	kimwambiya	kimwambiya		kimwambia					He spoke, saying:
722	68	70	b	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
724	68	70	c	2	عَلِيْ	ʿalii	'alii		Ali					
725	68	70	c	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
739	69	71	c	3	مُئِنِ	muini	muini		muyini					
742	70	72	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya							[But Ja'far] told him: I am going off --
749	70	72	c	1	نِمُوَڠٖ	nimuwage	nimuwage		nimuage					whom I must take leave of, and my mother.
758	71	73	b	2	مَپِمَ	mapima	mapima		mapema					
768	72	74	b	2	نْدِيَ	ndiya	ndiya		ndia					When you come to the fork in the road,
772	72	74	c	2	مَكَه	makah	makah		Maka					
802	75	77	a	2	أَبُوْ	abuu	abuu		Abu					
803	75	77	a	3	بَكَرِ	bakari	bakari		Bakari					
804	75	77	b	1	أَزْوَاجِ	azwāji	azwaji		aziwaji			Azwaj and Zubeir are the two people who were with Abu Bakr when Ja'far met them on the road (174, 175).  This part of the story (i.e. how Ja'far came to be at the well) has not been told yet -- it is contained in a flashback a little later in the ballad.  In Y it would seem that the name Azwaj has been confused with the word for \\q{wife} (understandable in this context), an that \\Swa{dhuriya}, \\E{children}, has then been substituted for Zubeir (as making better sense) -- note that \\Swa{dhuriya} does not rhyme.		your wives and children,
806	75	77	b	3	ذُرِيَ	dhuriya	dhuriya		dhuria					
809	75	77	c	3	إِظْهَارِ	iẓhāri	idhhari		idhihari			This reading is uncertain -- it seems to mean \\Swa{nde na ndani}.  Perhaps we should adopt that of R, and translate \\q{I know (have heard of) their general qualities}.		
814	76	78	a	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
815	76	78	b	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia					said goodbye to him,
819	76	78	c	2	عَلِى	ʿalii	'alii		Ali					
820	76	78	c	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
821	76	78	d	1	مْنْڠُ	mngu	mngu		Mngu					commended him to God's care.
823	77	79	a	1	مُئِنِ	muini	muini		muyini					When [Ja'far] entered his village
824	77	79	a	2	كُنْڠِيَ	kungiya	kungiya		kungia					
922	85	87	d	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					and spoke to Ja'far.
926	86	88	a	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
927	86	88	b	1	وَٹُؤٗنٖشَ	waţuonesha	watuonesha		watuonyesha					are you being insolent to us,
929	86	88	c	1	هُنْڠِيَ	hungiya	hungiya		hungia					entering as if secretly,
935	87	89	a	1	نَاصِرِ	nāṣiri	nasiri		Nasiri			We are not told who Nasir's father is.		Nasir was [Ja'far's] brother,
951	88	90	b	1	تَكْوَمْبِيَ	takwambiya	takwambiya		takwambia					I'll tell you the reason:
991	92	94	a	1	نَاصِرِ	nāṣiri	nasiri		Nasiri					[To Jaafar she said:] "Nasir is your brother,
1004	93	95	a	1	أَلِئِنَمِيَ	aliinamiya	aliinamiya		aliinamia					[Ja'far] lay down --
1011	93	95	d	2	نِمٖزٗكْوَمْبِيَ	nimezokwambiya	nimezokwambiya		nimezokwambia			Nasir says that his words have affected Ja'far, so there must have been some truth in them.  But the mother stops his teasing this time.		
1040	96	98	c	1	نِكْوَمْبِيٖ	nikwambiye	nikwambiye		nikwambie					In what language should I tell you,
1047	97	99	a	1	كِكْوَمْبِيَ	kikwambiya	kikwambiya		kikwambia					If I tell you in Arabic
1083	100	102	c	2	مَجْلِسِ	majlisi	majlisi		majilisi			\\Swa{majlisi} = \\Swa{baraza}: a meeting-place where men gather to chat and pass the time.		
1085	100	102	d	2	عَلِيَ	ʿaliya	'aliya		Aliya			i.e. your daily life does not take you to the sorts of places where you might meet Ali. 		
1086	101	103	a	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Jaafar said:
1200	110	112	b	2	تَئِمُهُلِ	taimuhuli	taimuhuli		tayimuhuli			\\Swa{-yi-muhuli} = \\Swa{-ji-ngojesha}.		
1201	110	112	c	1	مَرَ	mara	mara					\\Swa{mara} here = \\Swa{pengine}.		once I get there
1223	112	114	c	2	نْدٗنِ	ndoni	ndoni		ndooni					
1241	114	116	a	1	وَكِسِكِيَ	wakisikiya	wakisikiya		wakisikia					When they heard my words,
1243	114	116	b	1	وَكِزُنْڠُكِيَ	wakizungukiya	wakizungukiya		wakizungukia					they turned round.
1248	114	116	d	2	كَنِئِلِيَ	kaniiliya	kaniiliya		kaniyiliya					
1255	115	117	c	2	وَٹُتَكِيَنِ	waţutakiyani	watutakiyani		watutakia-ni					
1267	116	118	d	1	يَپٖسٖنِ	yapeseni	yapeseni		yapese-ni			\\Swa{ilifaa vipi}. \\Swa{-pasa}, \\E{be obliged to, have to}.		what good is it to tell us them?"
1269	117	119	a	1	وٖوٖ	wewe	wewe							Are you a human being,
1273	117	119	b	1	نِ	ni	ni							or [a spirit] who makes people lose their way?
1275	117	119	b	3	قَوْمُ	qawmu	qaumu					i.e. a jinn or devil.		
1276	117	119	c	1	ٹْوَمْبِيٖ	ţwambiye	twambiye		twambie					Tell us so that we can know you,
1279	117	119	d	2	ٹُيُوٖ	ţuyuwe	tuyuwe		tuyue					
1294	119	121	a	1	كَسِكِيَ	kasikiya	kasikiya		kasikia					And I heard him speak
1297	119	121	b	2	أَبُوْ	abuu	abuu		Abu					
1298	119	121	b	3	بَكَرِ	bakari	bakari		Bakari					
1302	119	121	c	4	زُبَيْرِ	zubayri	zubayri		Zuberi			Abu Bakr and Zubeir are two of the \\Swa{masahaba}, the Companions of the Prophet.		
1312	120	122	d	1	وَجْهِ	wajhi	wajhi		wajihi			\\Swa{wajhi} = \\Swa{uso}.		his face [resembles] the Prophet's.
1314	120	122	d	3	نَبِيَ	nabiya	nabiya		Nabiya					
1315	121	123	a	1	هُسِكِيَ	husikiya	husikiya		husikia			\\Swa{hu-} here = \\Swa{waka-}.		When [the others] heard this, [they said:] He reminds me
1316	121	123	a	2	هُنِجِبُ	hunijibu	hunijibu		humjibu	*				
1317	121	123	b	1	عَلِي	ʿalii	'alii		Ali					of Ali ibn Talib.
1318	121	123	b	2	بِنْ	bin	bin		bini					
1319	121	123	b	3	طَالِبُ	ṭālibu	talibu		Talibu					
1327	122	124	a	3	أَبُوْ	abuu	abuu		Abu					
1328	122	124	a	4	بَكَرِ	bakari	bakari		Bakari					
1332	122	124	b	4	زُبٖئْرِ	zuberi	zuberi		Zuberi					
1359	124	126	d	2	مَوْلَانَا	mawlānā	maulana		Maulana					
1360	124	126	d	3	عَلِيَّ	ʿaliyaّ	'aliyaU+0651	ʿaliyya	Aliya					
1391	127	129	d	2	مْوَيُوَ	mwayuwa	mwayuwa		mwayua					
1430	131	133	b	3	كَفُوَٹَ	kafuwaţa	kafuwata		kafuata					
1449	133	135	b	1	بُوْ	buu	buu		Bu					Abu Bakr, do not worry --
1450	133	135	b	2	بَكَرِ	bakari	bakari		Bakari					
1479	135	137	d	3	يُوَ	yuwa	yuwa		yua					
1493	137	139	a	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia					I told them: On you go --
1495	137	139	b	1	مْوَكُيُوَ	mwakuyuwa	mwakuyuwa		mwakuyua					you know where the well is.
1498	137	139	c	2	هُفَلِيَنِ	hufaliyani	hufaliyani		hufalia-ni					
1522	140	142	a	2	مْنْڠُ	mngu	mngu		Mngu					
1535	141	143	c	1	يَپِسِيٖ	yapisiye	yapisiye		yapisie					everything that had happened in the past,
1542	142	144	b	1	نِسِمْوَمْبِيٖ	nisimwambiye	nisimwambiye		nisimwambie					I wouldn't tell him -- I refused.
1546	142	144	d	1	پِيَ	piya	piya		pia					giving me example after example.
1563	144	146	a	1	نِكَمْوَمْبِيَ	nikamwambiya	nikamwambiya		nikamwambia					I told him [the number of] years
1568	144	146	c	2	تِسِيَ	tisiya	tisiya		tisia					
1592	146	148	c	1	نِؤٗمْبٖيَ	niombeya	niombeya		niombea					Intercede for me to the Almighty,
1599	147	149	a	2	نِؤٗمْبٖيَ	niombeya	niombeya		niombea					
1600	147	149	a	3	مْنْڠُ	mngu	mngu		Mngu					
1634	150	152	d	1	مْنْڠُ	mngu	mngu		Mngu					and prayed to God.
1636	151	153	a	1	يَا	yā	ya		Ya					Oh God,
1637	151	153	a	2	أَللّٰهُ	alllähu	alllahu		Allahu					
1638	151	153	a	3	مٗلَ	mola	mola		Mola					my Lord,
1664	153	155	b	3	غَيْظِ	ghayẓi	ghaydhi		ghaidhi			\\Swa{ghaidhi} = \\Swa{hasira}, \\E{crossness, annoyance}.  A mother is always soft-hearted towards her children, unlike a father.		
1683	154	156	d	3	مَرْضِيَ	marḍiya	mardhiya		maridhiya			That is, do not refuse anything -- the opposite of \\Swa{-legea}, \\E{be remiss}.		
1691	155	157	c	2	اللّٰهَ	lläha	llaha		hala					
1696	156	158	a	1	نَاءٖ	nae	nae		naye					And as for the daughter of the Beloved One,
1698	156	158	a	3	حَبِيْبُ	ḥabı̄bu	habibu		Habibu			i.e. Fatima.  The Prophet is also known as \\Swa{habibu'llah}, \\E{Beloved of God}.		
1786	164	166	b	3	نَاصِرِ	nāṣiri	nasiri		Nasiri					
1791	165	167	a	1	نَاصِرِ	nāṣiri	nasiri		Nasiri					Nasir spoke:
1795	165	167	b	3	مَكَه	makah	makah		Maka			Nasir is not stupid, and sees through her words.		
1798	165	167	d	1	أَسِپٗئِيٗنَ	asipoiyona	asipoiyona		asipoiona					he would not take that road.
1813	167	169	b	1	نْڠُوٗ	nguwo	nguwo		nguo					what is he carrying clothes for?
1814	167	169	b	2	هُتُكُلِيَنِ	hutukuliyani	hutukuliyani		hutukulia-ni					
1821	168	170	a	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Ja'far spoke:
1824	168	170	b	2	وَلِلِيَنِ	waliliyani	waliliyani		walilia-ni					
1826	168	170	c	2	ٹْوَلِأڠَنَنِ	ţwaliganani	twaliganani		twaliagana-ni	*				
1867	172	174	c	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Ja'far said:
1870	172	174	d	2	مْنْڠُ	mngu	mngu		Mngu					
1881	173	175	d	4	عَفُوَ	ʿafuwa	'afuwa		afua			The verb \\Swa{-afu}, \\E{preserve, deliver}, is the opposite of \\Swa{-tesa}, \\E{suffer, be afflicted by}, e.g. sickness, poverty, love.		
1890	174	176	d	1	نَاءٖ	nae	nae		naye					he entered Mecca.
1891	174	176	d	2	مَكَه	makah	makah		Maka					
1893	175	177	a	1	مَكَه	makah	makah		Maka					When he arrived in Mecca
1899	175	177	c	2	نْدِيَ	ndiya	ndiya		ndia					
1902	175	177	d	2	تَئِكٖتِلِيَ	taiketiliya	taiketiliya		tayiketiliya					
1904	176	178	a	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
1906	176	178	b	2	زُبٖيْرِ	zubēri	zuberi		Zuberi					
1909	176	178	c	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
1914	177	179	b	1	زُبٖيْرِ	zubēri	zuberi		Zuberi					and stopped.
1917	177	179	c	2	هَشِمَ	hashima	hashima		Hashima					
1922	178	180	a	2	أَمِيْنِ	amı̄ni	amini		Amini					
1927	178	180	c	1	وَسِكِيٖ	wasikiye	wasikiye		wasikie					And they heard [Ja'far] say:
1931	178	180	d	3	نَبِيَ	nabiya	nabiya		Nabiya			Ja'far, despite never having met the Prophet, recognises him immediately.		
1932	179	181	a	1	زُبٖيْرِ	zubēri	zuberi		Zuberi					Zubayr was amazed:
1934	179	181	b	1	وَمُيُوَپِ	wamuyuwapi	wamuyuwapi		wamuyuapi					How do you know the Prophet?
1936	179	181	c	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Ja'far answered him:
1938	179	181	d	1	وَجْهِ	wajhi	wajhi		wajihi					His face is that of the Prophet.
1940	179	181	d	3	نَبِيَ	nabiya	nabiya		Nabiya			i.e. \\Swa{uso wake unamwonyesha}, \\E{his countenance identifies him} -- the Prophet's features show a qualitative difference (\\Swa{tofauti}) from everyone elses's.		
1947	180	182	c	1	كَمْتُكُوَ	kamtukuwa	kamtukuwa		kamtukua			\\Swa{-enda naye}.		The Trustworthy One accompanied him
1948	180	182	c	2	أَمِيْنِ	amı̄ni	amini		Amini					
1950	180	182	d	2	نَاءٖ	nae	nae		naye					
1952	180	182	d	4	عَلِيَ	ʿaliya	'aliya		Aliya					
1954	181	183	a	2	سَيِّدِ	sayyidi	sayyidi		Sayidi					
1958	181	183	c	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima answered
1962	181	183	d	3	نَبِيَ	nabiya	nabiya		Nabiya			\\Swa{alifikiri mtu anamtaka Mtume} -- Fatima thinks that someone has come to the house looking for the Prophet.		
1964	182	184	a	2	حُسَيْنِ	ḥusayni	husayni		Huseni					
1965	182	184	b	1	أَمْكُوَءٗ	amkuwao	amkuwao		amkuao			= \\Swa{aitaye}.		Who is calling?
1977	183	185	a	4	رَسُوْلِ	rasūli	rasuli		Rasuli					
1982	183	185	c	1	كُسِكِيَكْوٖ	kusikiyakwe	kusikiyakwe		kusikiakwe					When she heard these words,
1987	184	186	a	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
1992	184	186	d	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima answered him.
1994	185	187	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima spoke
2012	186	188	d	1	فَتُمَ	fatuma	fatuma		Fatuma					and addressed Fatima.
2014	187	189	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia					The Bringer of Good Tidings told her:
2015	187	189	a	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2018	187	189	b	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
2020	187	189	c	2	عَلِيْ	ʿalii	'alii		Ali					
2021	187	189	c	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
2026	188	190	a	2	سَيِدِ	sayidi	sayidi		Sayidi					
2027	188	190	a	3	أَمِيْنِ	amı̄ni	amini		Amini					
2029	188	190	b	2	حُسَيْنِ	ḥusayni	husayni		Huseni					
2036	189	191	a	3	حُسَيْنِ	ḥusayni	husayni		Huseni					
2049	190	192	b	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2053	190	192	c	4	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
2061	191	193	b	2	نْدِيَ	ndiya	ndiya		ndia					
2070	192	194	b	2	عَلِيْ	ʿalii	'alii		Ali					
2071	192	194	b	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
2073	192	194	c	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
2098	194	196	d	2	لَكُكْوَمْبِيَ	lakukwambiya	lakukwambiya		la kukwambiya					
2105	195	197	c	1	وَعَلَيْكَ	waʿalayka	wa'alayka		wa-aleka					Peace be with you, 
2106	195	197	c	2	السَّلَامَ	āssaّlāma	assaU+0651lama	ās-salāma	as-salamu	*				
2107	195	197	d	1	عَلِيْ	ʿalii	'alii		Ali					Ali answered.
2109	196	198	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali spoke:
2112	196	198	b	2	نْدِيَنِ	ndiyani	ndiyani		ndiani					
2135	198	200	b	3	نْدِيَنِ	ndiyani	ndiyani		ndiani			These points were presumably part of the directions that Ali gave Ja'far in 74.		
2158	200	202	c	2	نْدِيَ	ndiya	ndiya		ndia					
2200	204	206	b	2	نِْيَ	niya	niya		ndia					
2210	205	207	b	1	عَلِيْ	ʿalii	'alii		Ali					Ali spoke:
2216	205	207	d	3	نَبِيَ	nabiya	nabiya		Nabiya					
2219	206	208	a	3	هَشِمَ	hashima	hashima		Hashima					
2224	206	208	c	1	نْدِيَ	ndiya	ndiya		ndia					[on] the road he came along
2238	208	210	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima had been sitting down.
2251	209	211	b	1	عَلِيْ	ʿalii	'alii		Ali					Ali understood [what it meant].
2253	209	211	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia					He told the Hashimite:
2254	209	211	c	2	هَشِمَ	hashima	hashima		Hashima					
2262	210	212	b	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima spoke:
2301	214	216	c	1	أَمْسِكِيٖ	amsikiye	amsikiye		amsikie					He heard Hasan
2311	215	217	d	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					He spoke to Ja'far.
2322	217	219	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia					[ja'far] spoke [these] words to him:
2327	217	219	c	1	سِيُوِ	siyuwi	siyuwi		siyui					I do not know about where I am going --
2330	217	219	d	1	أَيُوَءٖ	ayuwae	ayuwae		ayuaye					the one who knows is the Almighty.
2334	218	220	a	2	أَمِيْنِ	amı̄ni	amini		Amini					
2335	218	220	b	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia					and bade them goodbye.
2338	218	220	c	1	عَلِيْ	ʿalii	'alii		Ali					Ali spoke:
2342	218	220	d	3	نَبِيَ	nabiya	nabiya		Nabiya					
2343	219	221	a	1	مْٹُمٖ	mţume	mtume		Mtume					The Prophet spoke:
2348	219	221	c	2	تِسِيَ	tisiya	tisiya		tisia					
2354	220	222	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2356	220	222	b	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari			i.e. \\Swa{tule naye}, \\E{so that we may share a meal with him}.  Sharing a meal with someone shows respect.		
2362	220	222	d	3	نَبِيَ	nabiya	nabiya		Nabiya					
2363	221	223	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima got up
2385	222	224	d	3	نَبِيَ	nabiya	nabiya		Nabiya					
2398	224	226	b	1	كَپٗوَ	kapowa	kapowa		kapoa					and accepted water, the Trustworthy One,
2400	224	226	b	3	أَمِيْنِ	amı̄ni	amini		Amini					
2405	224	226	d	1	نَاءٖ	nae	nae		naye					and rinsed his mouth.
2407	225	227	a	1	تَمْبُوْ	tambuu	tambuu					\\Swa{tambuu} is lime wrapped in a betel leaf, used like chewing tobacco.  Protracted use stains the teeth red.  Offering \\Swa{tambuu} is a particular feature of northern Swahili culture.  However, it is very unlikely that Swa{tambuu} would have been offered in the original Arabian setting of the story, and it is even less likely that the Prophet would have accepted it even if it was.		Choice tambuu
2411	225	227	b	2	كَپٗوَ	kapowa	kapowa		kapoa					
2412	225	227	b	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2416	225	227	d	1	ٹُمْوَ	ţumwa	tumwa		Tumwa					the Prophet went off.
2418	226	228	a	1	ٹُمْوَ	ţumwa	tumwa		Tumwa					When the Prophet had left
2424	226	228	c	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima got up
2428	227	229	a	1	أَكَئِيٗنَ	akaiyona	akaiyona		akaiona					And Fatima saw it -- 
2429	227	229	a	2	فَتُمَ	fatuma	fatuma		Fatuma					
2445	229	231	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima replied:
2453	229	231	d	1	إِلَّا	illā	illa		ila					but to tell you.
2456	230	232	a	1	أَكِسِكِيَ	akisikiya	akisikiya		akisikia					When Hasan heard this
2457	230	232	a	2	حَسَنِ	ḥasani	hasani		Hasani					
2470	231	233	b	2	مْٹُمٖ	mţume	mtume		Mtume					
2489	233	235	b	2	حُسَيْنِ	ḥusayni	husayni		Huseni					
2509	235	237	b	2	حُسَيْنِ	ḥusayni	husayni		Huseni					
2511	235	237	c	2	وَمْتَكِيَنِ	wamtakiyani	wamtakiyani		wamtakia-ni			\\Swa{-m-} here = \\Swa{-ni-}.  i.e. it's no-one else's business.		
2516	236	238	b	1	أُنَنِ	unani	unani		una-ni			= \\Swa{una nini?}.  See 244a, 263b.		What's the matter?  You are speaking amongst yourselves.
2530	237	239	c	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
2532	237	239	d	2	مَوْلَانَا	mawlānā	maulana		Maulana					
2533	237	239	d	3	عَلِيَ	ʿaliya	'aliya		Aliya					
2548	239	241	b	2	هُكُؤُذِيَنِ	hukuudhiyani	hukuudhiyani		hukuudhia-ni					
2554	240	242	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima spoke [to the boys]:
2563	240	242	d	1	عَلِيْ	ʿalii	'alii		Ali					when Ali looked at her.
2565	241	243	a	1	عَلِيْ	ʿalii	'alii		Ali					So Ali said:
2570	241	243	b	3	فَطُمَ	faṭuma	fatuma		Fatuma					
2577	242	244	a	2	أُنَنِ	unani	unani		una-ni			= \\Swa{una nini?}.  See 238b, 263b.		
2581	242	244	c	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima said: What is the point
2600	244	246	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima spoke:
2606	244	246	c	1	يَلٗنْڠِيَ	yalongiya	yalongiya		yalongia					which "fell into the well",
2660	249	251	a	1	جَعْفَرِ	jaʿfari	ja'fari							Ja'far was a stranger [to war],
2663	249	251	b	1	هَيَزٗوٖيَ	hayazoweya	hayazoweya							he was not yet accustomed to battle --
2706	253	255	b	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
2712	254	256	a	2	جِبْرِيْلِ	jibrı̄li	jibrili		Jiburili					
2714	254	256	b	2	رَسُوْلِ	rasūli	rasuli		Rasuli					
2719	254	256	d	2	نَبِيَ	nabiya	nabiya		Nabiya					
2721	255	257	a	2	أَمِيْنِ	amı̄ni	amini		Amini			Unlike Ali, the Prophet immediately understands the implications of the angel's message.		
638	60	62	b	4	نَنِ	nani	nani							
2722	255	257	b	1	عَلِيْ	ʿalii	'alii		Ali					Ali, let us go to your house --
2737	256	258	c	3	رَسُوْلِ	rasūli	rasuli		Rasuli					
2743	257	259	b	1	فَتُمَ	fatuma	fatuma		Fatuma			In a fairytale we would immediately conclude that \\Swa{mama wa kambo anamdhuru}, \\E{his stepmother is doing him harm}, but nothing could be further from the truth in this case -- it is God who has determined Ja'far's fate.		Fatima spoke:
2746	257	259	c	2	حَسَنِ	ḥasani	hasani		Hasani					
2753	258	260	b	2	حَسَنِ	ḥasani	hasani		Hasani					
2755	258	260	b	4	حُسَيْنِ	ḥusayni	husayni		Huseni					
2764	259	261	c	1	نَاءٖ	nae	nae		naye					Go and look at him --
2770	260	262	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2773	260	262	b	3	حَىْدَرِ	ḥaydari	haydari		Haidari					
2793	262	264	b	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Ja'far regained consciousness
2800	263	265	a	1	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya		kimwangalia					When he saw the Trustworthy One
2801	263	265	a	2	أَمِيْنِ	amı̄ni	amini		Amini					
2808	263	265	d	2	كُئِفِيَ	kuifiya	kuifiya		kuyifiya					
2810	264	266	a	2	عَلِيْ	ʿalii	'alii		Ali					
2811	264	266	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
2815	264	266	c	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2816	264	266	d	1	مَصَحَبَ	maṣaḥaba	masahaba		Masahaba					and spoke to the Companions.
2818	265	267	a	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia					He spoke to them and they listened,
2826	265	267	d	1	عَلِيْ	ʿalii	'alii		Ali					Ali still insensible.
2830	266	268	b	1	مْٹُمِ	mţumi	mtumi		Mtumi					the Prophet sat [Ali] down
2834	266	268	d	1	عَلِيْ	ʿalii	'alii		Ali					and addressed Ali.
2836	267	269	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia					He told him as [Ali] listened:
2958	278	280	b	3	عُمَرِ	ʿumari	'umari		Umari					
2961	278	280	c	3	أَلْفَجِرِ	alfajiri	alfajiri		alifajiri			\\Swa{alfajiri}, \\E{dawn}.  In other words, it was time for morning prayers.		
2972	279	281	d	2	مَوْلَانَا	mawlānā	maulana		Maulana					
2973	279	281	d	3	عَلِيَ	ʿaliya	'aliya		Aliya					
2974	280	282	a	1	نْدِيَ	ndiya	ndiya		ndia					I have come along the road
2980	280	282	c	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
2985	281	283	a	2	حَمْزَ	ḥamza	hamza		Hamza					
3003	282	284	c	2	عَلِيْ	ʿalii	'alii		Ali					
3011	283	285	b	3	حَمْزَ	ḥamza	hamza		Hamza					
3016	283	285	d	3	عَلِيَ	ʿaliya	'aliya		Aliya					
3020	284	286	b	1	هُلِيَ	huliya	huliya		hulia					weeping and saying:
3036	286	288	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia					He spoke, saying:
3042	286	288	c	3	كَرِيْمُ	karı̄mu	karimu		Karimu					
3050	287	289	b	2	مْوٖنْي	mwenı̄	mweni		mwenye	*				
3059	288	290	a	2	مْوٖنْيٖ	mwenye	mwenye		Mwenye					
3060	288	290	a	3	مَمْلَكَه	mamlakah	mamlakah		Mamlaka					
3074	289	291	b	3	مْنْڠُ	mngu	mngu		Mngu					
3082	290	292	a	1	هُمُؤٗوَ	humuowa	humuowa		humuoa			\\Swa{anamtizama}.		[Atiya] looked at him, listening,
3090	290	292	d	2	عَلِيَ	ʿaliya	'aliya		Aliya					
3092	291	293	a	2	عَلِيْ	ʿalii	'alii		Ali					
3093	291	293	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
3095	291	293	b	2	نَاءٖ	nae	nae		naye					
3111	293	295	a	1	بَرُوَ	baruwa	baruwa		barua					When I realised what was in the letter
3113	293	295	b	1	نْدِيَ	ndiya	ndiya		ndia					I set out on the road -- 
3120	294	296	a	1	فَطِمَ	faṭima	fatima		Fatima					Fatima spoke to her,
3134	295	297	b	3	فَتُمَ	fatuma	fatuma		Fatuma					
3143	296	298	a	3	بْوَنَ	bwana	bwana		Bwana					
3144	296	298	a	4	وٖٹُ	weţu	wetu		Wetu			i.e. \\Swa{Mungu}.		
3145	296	298	b	1	عَطِكَ	ʿaṭika	'atika		Atika					Atiya, the water is not something [to eat] --
730	68	70	d	5	تِسِيَ	tisiya	tisiya							
3152	296	298	d	1	يَبَكِيٖؤٗ	yabakiyeo	yabakiyeo		yabakieyo					and whatever is left I will take.
3160	297	299	c	3	عَطِكَ	ʿaṭika	'atika		Atika					
3161	297	299	d	1	فَتُمَ	fatuma	fatuma		Fatuma					and Fatima took it. (?)
3184	300	302	b	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima got up
3191	301	303	a	1	عَطِكَ	ʿaṭika	'atika		Atika					Atiya said:
3205	302	304	b	1	أَمْوَمْبِيٖ	amwambiye	amwambiye		amwambie					and said to her husband:
3213	302	304	d	3	عَطِيَ	ʿaṭiya	'atiya		Atiya					
3214	303	305	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali went into the inner [room]
3215	303	305	a	2	كَنْڠِيَ	kangiya	kangiya		kangia					
3222	303	305	d	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima, and went to him.
3227	304	306	b	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima, will you not be angry
3237	305	307	a	3	مْنْڠُ	mngu	mngu		Mngu					
3246	305	307	d	2	قَاسِمُ	qāsimu	qasimu		Qasimu			Qasim was Fatima's brother, and died in infancy.  The Prophet had 7 children (3 boys and 4 girls), but they all pre-deceased him except Fatima.		
3250	306	308	a	2	عَلِيْ	ʿalii	'alii		Ali					
3254	306	308	b	3	عَطِكَ	ʿaṭika	'atika		Atika			Compare 281b and 298b.		
3280	309	311	a	2	نِمٖٹِيَ	nimeţiya	nimetiya		nimetia					
3282	309	311	b	1	بَيْتِ	bayti	bayti		baiti					my verses have come to an end,
3291	304	312	a	1	بَيْتِزٖ	baytize	baytize		baitize					Learn [the poem's] verses,
3297	304	312	c	3	جِيٗنِ	jiyoni	jiyoni		jioni					
3306	305	313	d	1	مٗلَ	mola	mola		Mola					the Lord will bring to him.
3310	306	314	a	3	وَهَابُ	wahābu	wahabu		Wahabu					
669	63	65	a	2	هَپٗ	hapo	hapo							
697	66	68	a	2	نِپَ	nipa	nipa							
770	72	74	b	4	مْبَلِ	mbali	mbali		mbili	*				
925	86	88	a	2	سِوٖ	siwe	siwe							
1005	93	95	a	2	تِنِ	tini	tini							
785	73	75	c	2	نَ	na	na							
848	79	81	b	3	وَ	wa	wa							
1345	123	125	c	3	نَتَرَجِ	nataraji	nataraji							
25	3	3	b	1	كْوَلِ	kwali	kwali							and there was a person in a room,
6	1	1	b	3	رَحْمٰنِ	raḥmäni	rahmani		rahamani					
4	1	1	b	1	پَمْوٖ	pamwe	pamwe							along with \\q{the Compassionate}
43	4	4	d	2	كُمْڤَلِيَ	kumvaliya	kumvaliya							
29	3	3	c	1	مٗيٗ	moyo	moyo							and my heart desired her,
8	1	1	c	2	الرَّحِيْمُ	rraḥı̄mu	rrahimu		ar-rahimu					
7	1	1	c	1	نَ	na	na							and \\q{the Merciful} -- know
30	3	3	c	2	أُكَمْتَمَنِ	ukamtamani	ukamtamani					Note that in the Y version it is Ali who desires Atika, but that in the R version it is Atika who desires Ali.		
9	1	1	c	3	يُوَنِ	yuwani	yuwani							
10	1	1	d	1	نْدِيٗ	ndiyo	ndiyo							that that is what goes first.
11	1	1	d	2	يَلٗأَنْدَمِيَ	yaloandamiya	yaloandamiya							
12	2	2	a	1	پُلِكَنِ	pulikani	pulikani							Listen, my brothers,
13	2	2	a	2	نْدُزَنْڠُ	nduzangu	nduzangu							
61	6	6	b	2	هَيَتَأَمَلِ	hayataamali	hayataamali					\\Swa{-taamali}, \\E{observe}.		
14	2	2	b	1	كهٖنْدَ	kʰenda	kenda							I went on a journey.
15	2	2	b	2	مَتٖمْبٖزِ	matembezi	matembezi							
16	2	2	b	3	يَنْڠُ	yangu	yangu							
31	3	3	d	1	كْوَ	kwa	kwa							and I was gratified lawfully.
32	3	3	d	2	حَلَالِ	ḥalāli	halali							
17	2	2	c	1	نِوَپٖ	niwape	niwape							Let me give you my story, 
18	2	2	c	2	خَبَرِ	khabari	habari							
19	2	2	c	3	زَنْڠُ	zangu	zangu							
20	2	2	d	1	قِصَ	qiṣa	qisa							an account of what happened to me.
21	2	2	d	2	چَلٗنِجِرِيَ	chalonijiriya	chalonijiriya							
3328	307	315	d	3	عَلِيَ	ʿaliya	'aliya		Aliya					
55	5	5	d	1	مْكٗنٗ	mkono	mkono							he hid his hand from her.
22	3	3	a	1	نِلِ	nili	nili							I was going along the road,
23	3	3	a	2	نٖنْدَءٗ	nendao	nendao							
24	3	3	a	3	نْدِيَنِ	ndiyani	ndiyani		ndiani					
44	5	5	a	1	عَلِى	ʿalii	'alii		Ali					When Ali left [Atiya]
45	5	5	a	2	كُتٗكَ	kutoka	kutoka							
36	4	4	a	3	يُوَنِ	yuwani	yuwani		yuani					
38	4	4	b	2	زَيْدَنِ	zaydani	zaydani		zaidani					
56	5	5	d	2	هُمْفُمْبِيَ	humfumbiya	humfumbiya					i.e. to hide the fact that he was not wearing the ring.		
46	5	5	a	3	كْوَكٖ	kwake	kwake							
34	4	4	a	1	نَ	na	na							
35	4	4	a	2	مَهَرِيٖ	mahariye	mahariye							And know that as for her dowry,
37	4	4	b	1	نَلٗمْپَ	nalompa	nalompa							which I gave her as well, 
39	4	4	c	1	نَلِنَ	nalina	nalina							I had a ring on my finger,
40	4	4	c	2	پٖٹٖ	peţe	pete					This ring is an important factor in the rest of the story, because it had been given to Ali by his wife Fatima.		
41	4	4	c	3	چَنْدَنِ	chandani	chandani							
42	4	4	d	1	كَوَهِ	kawahi	kawahi							and I persuaded her to wear it.
2089	194	196	a	2	كَلَمُ	kalamu	kalamu							
47	5	5	b	1	أُنَ	una	una							his heart was troubled --
48	5	5	b	2	رُبَ	ruba	ruba							
49	5	5	b	3	مٗيٗ	moyo	moyo							
50	5	5	b	4	وَكٖ	wake	wake							
70	7	7	b	2	أَكَمْوَمْبِيٖ	akamwambiye	akamwambiye		akamwambie					
2286	212	214	d	1	مَنٖنٗيٖ	manenoye	manenoye							as he tells us his story.
1753	161	163	a	2	هَپٗ	hapo	hapo							
2047	190	192	b	1	چٖنْدٖمٖنٖ	chendemene	chendemene					Sh. Yahya felt that \\Swa{endemene} would be better here, since \\Swa{kijana} (Class 7) is not a diminutive.		He came with the Bringer of Good Tidings,
1908	176	178	c	2	نَ	na	na							
2583	242	244	c	3	كُنِ	kuni	kuni		kwani	*		\\Swa{kwani}, \\E{why?}.		
2319	216	218	c	2	وَكَسِمَ	wakasima	wakasima		wakasema	*				
1957	181	183	b	3	هٗدِ	hodi	hodi							
2464	230	232	d	1	حبر	ḥbr	hbr		habari	*				and told him the news.
2482	232	234	c	2	هَكُبَئِنِ	hakubaini	hakubaini		sikubaini	*				
57	6	6	a	1	مْوَنَ	mwana	mwana		Mwana					The Lady daughter of the Prophet
58	6	6	a	2	بِنْتِ	binti	binti							
51	5	5	c	1	أَكٖنْدَ	akenda	akenda							when he went to his wife [Fatima],
52	5	5	c	2	كْوَ	kwa	kwa							
53	5	5	c	3	مْكٖ	mke	mke							
54	5	5	c	4	وَكٖ	wake	wake							
59	6	6	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli			i.e. Fatima.		
65	6	6	d	1	خَبَرِ	khabari	habari							and told her the news.
66	6	6	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
60	6	6	b	1	يَلِ	yali	yali		yale					was unaware of these things
2543	238	240	d	2	يَكِتُمِلِيَ	yakitumiliya	yakitumiliya		yakitokweleya	*				
2777	260	262	d	2	بَبَكٖ	babake	babake							
64	6	6	c	3	عَقِلِ	ʿaqili	'aqili		akili					
62	6	6	c	1	كَنٖنْدَ	kanenda	kanenda							[until] someone in the know went
63	6	6	c	2	مْوٖنْيٖ	mwenye	mwenye							
72	7	7	c	2	عَلِيْ	ʿalii	'alii		Ali					
67	7	7	a	1	أَكٖنٖنْدَءٖ	akenendae	akenendae		akenendaye					The person who went was an old woman,
68	7	7	a	2	كِزٖيْ	kizee	kizee					This old woman is likely a devil in disguise, whose aim is to stir up enmity between Fatima and Ali.  Fatima realises this later (44).  This devil reappears in a different disguise in an extended episode in the R version (45-93), where he tries to get the better of Ali.		
2971	279	281	d	1	كْوَ	kwa	kwa							to Lord Ali's [house]?
69	7	7	b	1	فَاطِمَه	fāṭimah	fatimah		Fatima					and she said to Fatima:
71	7	7	c	1	شٖيْخٖ	shēkhe	shehe		Shehe					Sheikh Ali has got married --
73	7	7	c	3	أُوٗزٖيْ	uwozee	uwozee		uozee					
75	7	7	d	2	هُكِسِكِيَ	hukisikiya	hukisikiya							
77	8	8	a	2	مْشَوَشَ	mshawasha	mshawasha							
74	7	7	d	1	خَبَرِ	khabari	habari							have you heard the news?
78	8	8	b	1	فَاطِمَه	fāṭimah	fatimah		Fatima					but Fatima refused to believe her,
104	10	10	c	3	رَسُوْلِ	rasūli	rasuli		Rasuli					
81	8	8	c	2	كَمُؤٗنٖشَ	kamuonesha	kamuonesha		kamuonyesha					
138	14	14	b	2	أُنَنِ	unani	unani		una-ni					
80	8	8	c	1	عَلَامَ	ʿalāma	'alama							but [the old woman] gave her proof,
79	8	8	b	2	كَمْكَنُشَ	kamkanusha	kamkanusha							
2848	268	270	a	4	مْٹُ	mţu	mtu							
82	8	8	d	1	أُتُنْڠُ	utungu	utungu							and made her worried.
105	10	10	d	1	يٖئٗ	yeo	yeo							today, I will ask him.
84	9	9	a	1	مْوَنَ	mwana	mwana		Mwana					Lady, daughter of the Trustworthy One, 
85	9	9	a	2	بِنْتِ	binti	binti							
87	9	9	b	1	هِيٗ	hiyo	hiyo							[said the old woman], this is true.
88	9	9	b	2	نْدِيٗ	ndiyo	ndiyo							
89	9	9	b	3	تَمْكِنِ	tamkini	tamkini					\\Swa{tamkini = hakika, kweli}	+	
107	11	11	a	1	أَكَفَنْيَ	akafanya	akafanya							But Fatima then acted immediately --
108	11	11	a	2	هِمَ	hima	hima							
90	9	9	c	1	أَلِ	ali	ali							He had a ring on his finger, 
91	9	9	c	2	نَ	na	na							
92	9	9	c	3	پٖٹٖ	peţe	pete							
182	18	18	b	2	هُنٖنَ	hunena	hunena							
93	9	9	c	4	چَنْدَنِ	chandani	chandani							
109	11	11	a	3	هِمَ	hima	hima							
94	9	9	d	1	كَوَهِ	kawahi	kawahi							and he took it off [to leave it] with her."
129	13	13	b	1	هَمْكُلِوَ	hamkuliwa	hamkuliwa							You are wanted at home.
130	13	13	b	2	نْيُمْبَنِ	nyumbani	nyumbani							
97	10	10	a	2	كهَنٖنَ	kʰanena	kanena							
98	10	10	a	3	نِ	ni	ni							
99	10	10	a	4	كوٖلِ	kweli	kweli							
100	10	10	b	1	مِمِ	mimi	mimi							I didn't pay him any heed.
101	10	10	b	2	سِمتَأَمَلِ	simtaamali	simtaamali							
121	12	12	c	1	كٖنٖنْدَ	kenenda	kenenda							[But Hasan] went and spoke [openly],
122	12	12	c	2	أَكَفَسِرِ	akafasiri	akafasiri					\\Swa{-fasiri} lit. means \\q{explain}.		
102	10	10	c	1	أَرُدِپٗ	arudipo	arudipo							When he comes back from the Prophet's
113	11	11	c	2	أَكَمْٹُمَ	akamţuma	akamtuma							
114	11	11	d	1	بَبَكٗ	babako	babako							"I am summoning your father."
117	12	12	a	2	كْوَ	kwa	kwa							
118	12	12	a	3	سِرِ	siri	siri							
135	14	14	a	1	أَكَمُؤُزَ	akamuuza	akamuuza							The Hashimite asked [Ali]:
123	12	12	d	1	مْبٖلٖ	mbele	mbele							in front of the Messenger, the Prophet.
124	12	12	d	2	زَ	za	za							
206	20	20	b	3	نَئِتَكَ	naitaka	naitaka							
127	13	13	a	1	كَفَسِرِ	kafasiri	kafasiri							He addressed [Ali] openly [saying:]
134	13	13	d	2	إِكَمْنْڠِيَ	ikamngiya	ikamngiya							
137	14	14	b	1	يٖئٗ	yeo	yeo							What is the matter with Fatima today?
147	15	15	a	2	أَكَئِنُكَ	akainuka	akainuka							
141	14	14	c	2	كْوَ	kwa	kwa							
142	14	14	c	3	هِمَ	hima	hima							
143	14	14	d	1	نَايٗ	nāyo	nayo							and that is not like her.
149	15	15	b	2	كْوَ	kwa	kwa							
150	15	15	b	3	هَرَكَ	haraka	haraka							
148	15	15	b	1	أَكَنٖنْدَ	akanenda	akanenda							and went in haste
151	15	15	c	1	هَتَ	hata	hata							until he arrived home.
86	9	9	a	3	أَمِيْنِ	amı̄ni	amini		Amini			The Prophet was called \\Eit{al-Amin} from his teenage years onward, because he was reliable and even-handed to all.		
140	14	14	c	1	هُكْوَمْكُوَ	hukwamkuwa	hukwamkuwa		hukuamkua					She wants you in a hurry, 
146	15	15	a	1	عَلِى	ʿalii	'alii		Ali					Ali got up
83	8	8	d	2	أَكَمْٹِيَ	akamţiya	akamtiya							
95	9	9	d	2	كُمْڤُلِيَ	kumvuliya	kumvuliya							
96	10	10	a	1	سِجُوِ	sijuwi	sijuwi		sijui			It makes more sense to follow R here, and place this stanza before the one beginning \\q{Mwana binti Amini...}.		I don't know, said [Fatima], if that is true.
110	11	11	b	1	أَسِئِوٖزٖ	asiiweze	asiiweze		asiyiweze			\\Swa{hakuweza kustahimili}.		she could not restrain herself.
128	13	13	a	2	مُعَيَنِ	muʿayani	mu'ayani							
133	13	13	d	1	عَجَبُ	ʿajabu	'ajabu							he was filled with wonder.
152	15	15	c	2	نْيُمْبَنِ	nyumbani	nyumbani							
153	15	15	c	3	كِفِكَ	kifika	kifika							
178	18	18	a	1	مِمِ	mimi	mimi							[Ali said:] When I left here
179	18	18	a	2	هَپَ	hapa	hapa							
180	18	18	a	3	نَلِتٗكَ	nalitoka	nalitoka							
202	20	20	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima replied:
157	16	16	a	1	هُرُمَ	huruma	huruma							Ali was seized with pity,
158	16	16	a	2	زِكَمْشِكَ	zikamshika	zikamshika							
160	16	16	b	2	كَشَوِشِكَ	kashawishika	kashawishika					\\Swa{-shawishika} = \\Swa{-fanya wasiwasi, -fanya tashwish}		
196	19	19	c	1	مٗيٗ	moyo	moyo							so that your heart will leave aside pain, 
181	18	18	b	1	وٖوٖ	wewe	wewe							you were talking and laughing.
161	16	16	c	1	كَمْبَ	kamba	kamba							He said: Fatima, listen -- 
163	16	16	c	3	پُلِكَ	pulika	pulika							
183	18	18	b	3	هُتٖكَ	huteka	huteka					This is a common expression meaning \\q{you were in a good mood}.		
166	17	17	a	1	أُنَ	una	una							Do you have a headache,
167	17	17	a	2	كِتْوَ	kitwa	kitwa							
168	17	17	a	3	هُكُؤُمَ	hukuuma	hukuuma							
197	19	19	c	2	أُوَتٖ	uwate	uwate							
198	19	19	c	3	مَتُنْڠُ	matungu	matungu							
169	17	17	b	1	أَمَ	ama	ama							or have you a temperature?
170	17	17	b	2	أُمٖشِكْوَ	umeshikwa	umeshikwa							
172	17	17	b	4	حُمَ	ḥuma	huma							
184	18	18	c	1	نَ	na	na							And if there's anything you want,
173	17	17	c	1	أَكَمْجِبُ	akamjibu	akamjibu							And Fatima replied:
185	18	18	c	2	كَمَ	kama	kama							
186	18	18	c	3	كهِٹُ	kʰiţu	kitu							
187	18	18	c	4	وَتَكَ	wataka	wataka							
175	17	17	d	1	كْوَ	kwa	kwa							I am not crying because I am ill.
176	17	17	d	2	مَرَضِ	maraḍi	maradhi							
216	21	21	b	2	أَلِلٗفَسِرِ	alilofasiri	alilofasiri							
188	18	18	d	1	أُسِخٗفُ	usikhofu	usihofu							don't be afraid to ask me [for it].
189	18	18	d	2	كُنَمْبِيَ	kunambiya	kunambiya							
199	19	19	d	1	نَوٖ	nawe	nawe							so that you will stop crying?
200	19	19	d	2	أُكٗمٖ	ukome	ukome							
201	19	19	d	3	كُلِيَ	kuliya	kuliya							
190	19	19	a	1	وَتَكَ	wataka	wataka							What do you want, my dear, 
191	19	19	a	2	نِنِ	nini	nini							
2555	240	242	a	2	أَكَنُطُمُ	akanuṭumu	akanutumu		akanudhumu	*		Fatima supports the point Ali is making to his children. 		
192	19	19	a	3	نْدُيَنْڠُ	nduyangu	nduyangu							
208	20	20	c	2	أَكَشُٹُكَ	akashuţuka	akashutuka							
193	19	19	b	1	نِئِفِدِ	niifidi	niifidi					\\Swa{niifidi} =  \\Swa{niokowe}.  Therefore, lit., \\q{so that I may save my soul, so that I will not be in distress}.  This expresses humility, and shows that the speaker cares very much about the other person.		so that I may console you,
194	19	19	b	2	رٗحٗ	roḥo	roho							
195	19	19	b	3	يَنْڠُ	yangu	yangu							
203	20	20	a	2	أَكَتَمْكَ	akatamka	akatamka							
204	20	20	b	1	پٖٹٖ	peţe	pete							I want your ring.
205	20	20	b	2	يَكٗ	yako	yako							
212	21	21	a	1	كِشَ	kisha	kisha							Then Ali the Lion-like,
209	20	20	d	1	هَؤٗنِ	haoni	haoni							he could not see what he could tell her.
210	20	20	d	2	لَ	la	la							
211	20	20	d	3	كُمْوَمْبِيَ	kumwambiya	kumwambiya							
215	21	21	b	1	نٖنٗ	neno	neno							the utterance that he spoke [was this:]
156	15	15	d	3	هُلِيَ	huliya	huliya							
223	22	22	a	2	يَكٗ	yako	yako							
224	22	22	a	3	يَ	ya	ya							
217	21	21	c	1	أَنَيٗ	anayo	anayo							Abu Bakr has it --
220	21	21	d	1	تهَكْوٖنْدَ	tʰakwenda	takwenda							I'll go and fetch it.
221	21	21	d	2	كُٹْوَلِيَ	kuţwaliya	kutwaliya					Ali tells this lie to gain some time, but it doesn't work.		
225	22	22	a	4	چَنْدَنِ	chandani	chandani							
222	22	22	a	1	پٖٹٖ	peţe	pete							[But Fatima said:] "Your ring is for [your] finger --
228	22	22	b	3	سِ	si	si							
229	22	22	b	4	كِفَنِ	kifani	kifani							
290	25	27	d	2	سِتٗمْوَمْبِيَ	sitomwambiya	sitomwambiya					\\Swa{anamwogopa sana} -- she is greatly in awe of him.		
207	20	20	c	1	عَلِى	ʿalii	'alii		Ali					Ali was startled --
213	21	21	a	2	عَلِيْ	ʿalii	'alii		Ali					
214	21	21	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari			\\Swa{haidari}, \\E{lion}.  The epithet, \\q{lion-like}, is so closely associated with Ali that it is now more of a name than a descriptive metaphor.		
218	21	21	c	2	أَبُوْ	abuu	abuu		Abu					
219	21	21	c	3	بَكَرِ	bakari	bakari		Bakari					
226	22	22	b	1	أَبُوْ	abuu	abuu		Abu					it will not fit Abu Bakr.
251	22	24	b	1	نِ	ni	ni		niwe					you are my only wife.
230	22	22	c	1	نِمٖٹْوَاءَ	nimeţwaa	nimetwaa							"I have discovered the real reason
252	22	24	b	2	وٖيْ	wee	wee		~					
231	22	22	c	2	تَمْكِنِ	tamkini	tamkini							
257	22	24	c	2	نَنِ	nani	nani							
232	22	22	d	1	كْوَ	kwa	kwa							for what you told me.
233	22	22	d	2	أُلِيٗنَمْبِيَ	uliyonambiya	uliyonambiya							
259	22	24	c	4	يَنْڠُ	yangu	yangu							
274	24	26	b	1	تهَكْوَمْبِيَ	tʰakwambiya	takwambiya							I will tell you what really happened.
234	21	23	a	1	هُنُ	hunu	hunu							"This is the second month [that you have not worn it] --
235	21	23	a	2	مْوٖزِ	mwezi	mwezi							
236	21	23	a	3	نِ	ni	ni							
237	21	23	a	4	وَ	wa	wa							
238	21	23	a	5	پِلِ	pili	pili							
260	22	24	d	1	هُيٗ	huyo	huyo							who has told you this lie about me?"
261	22	24	d	2	أَلٗنِزُلِيَ	alonizuliya	alonizuliya							
239	21	23	b	1	مِمِ	mimi	mimi							I did not realise this before.
240	21	23	b	2	سِكُتَأَمَلِ	sikutaamali	sikutaamali							
275	24	26	b	2	تَمْكِنِ	tamkini	tamkini							
241	21	23	c	1	أُنَ	una	una							You have a second wife --
242	21	23	c	2	نَ	na	na							
243	21	23	c	3	مْكٖ	mke	mke							
244	21	23	c	4	وَ	wa	wa							
245	21	23	c	5	پِلِ	pili	pili							
262	23	25	a	1	كَمْجِبُ	kamjibu	kamjibu							She replied eloquently:
246	21	23	d	1	هَبَرِ	habari	habari							I have heard the news.
247	21	23	d	2	نِمٖسِكِيَ	nimesikiya	nimesikiya							
263	23	25	a	2	كْوَ	kwa	kwa							
248	22	24	a	1	نَأَپَ	naapa	naapa							[Ali said:] I swear to God, dearest --
249	22	24	a	2	وَاللّٰهِ	wallähi	wallahi							
250	22	24	a	3	نْدُيَنْڠُ	nduyangu	nduyangu							
285	25	27	b	2	أُئِوٖسٖپٗ	uiwesepo	uiwesepo							
265	23	25	b	1	مْٹُيٖ	mţuye	mtuye							I will not disclose that person.
266	23	25	b	2	سِمْبَئِنِ	simbaini	simbaini							
2667	249	251	c	3	مَيْتِنِ	maytini	maytini		miyateni	*				
253	22	24	b	3	پْوٖكٖ	pweke	pweke							
254	22	24	b	4	مْكٖ	mke	mke							
306	27	29	c	1	أَلِكهَاٹَ	alikʰāţa	alikata							[Ali] interrupted him,
255	22	24	b	5	وَنْڠُ	wangu	wangu					This is, at best, only half-true.  Note that \\Swa{kusema urongo asitete ni vizuri, si vibaya} -- that is, it is justifiable to tell white lies to console your spouse, or in the interests of conciliation and marital harmony.  For instance, once a husband arrived home late accompanied by a friend.  The wife asked the husband why he was late and became suspicious when he did not reply.  The friend saw trouble brewing and stepped in with the lie that the husband had been seeing about getting some money for her as a present, which of course placated her.		
276	24	26	c	1	يَلِنْڠِيَ	yalingiya	yalingiya							It fell into a well --
277	24	26	c	2	كِسِمَنِ	kisimani	kisimani					Another lie, again to gain some time, \\Swa{kamuulize Nabiya}, \\E{so that he can go and ask the Prophet}.  But Fatima does not fall for this one either.		
267	23	25	c	1	پٖٹٖ	peţe	pete							Who have you given the ring to?
268	23	25	c	2	أُمْپٖيْ	umpee	umpee							
269	23	25	c	3	نَنِ	nani	nani							
278	24	26	d	1	تهَكْوٖنْدَ	tʰakwenda	takwenda							I'l go and get it out for you.
279	24	26	d	2	كُكُتٗلٖيَ	kukutoleya	kukutoleya							
270	23	25	d	1	أُنِپَپٗ	unipapo	unipapo							[Only] when you give [it to me] will I be satisfied.
271	23	25	d	2	تهَرِضِيَ	tʰariḍiya	taridhiya							
273	24	26	a	2	أَكَبَئِنِ	akabaini	akabaini							
294	26	28	b	2	كُكَسِرِكَ	kukasirika	kukasirika							
280	25	27	a	1	هَيَ	haya	haya							[Fatima said:] Well, your ring -- say
281	25	27	a	2	نٖنَ	nena	nena					Or we could emend to \\Swa{huyanena}, \\E{you still haven't said}.		
282	25	27	a	3	پٖٹٖ	peţe	pete							
283	25	27	a	4	يَكٗ	yako	yako							
286	25	27	c	1	كَمَ	kama	kama							for these words --
287	25	27	c	2	هَيَ	haya	haya							
288	25	27	c	3	مَتَمْكٗ	matamko	matamko							
289	25	27	d	1	بَبَنْڠُ	babangu	babangu							I do not [want to] tell my father [about them]."
292	26	28	a	2	أَكَؤُذِكَ	akaudhika	akaudhika							
303	27	29	b	2	نَ	na	na							
295	26	28	c	1	أَلِئِنُكَ	aliinuka	aliinuka							He got up and left,
296	26	28	c	2	كَتٗكَ	katoka	katoka							
297	26	28	d	1	أَكَنٖنْدَ	akanenda	akanenda							and went to the Prophet.
171	17	17	b	3	نِ	ni	ni		na	*				
300	27	29	a	1	أَكَمُؤُزَ	akamuuza	akamuuza							The Hashimite asked him:
304	27	29	b	3	نِنِ	nini	nini					The northern form of \\Swa{alikuwa na nini}, based respectively on two verbs meaning \\q{be}: \\Swa{-li} and \\Swa{-wa}.		
307	27	29	c	2	كَلِمَ	kalima	kalima					lit. \\q{cut the words}.		
302	27	29	b	1	أَلِ	ali	ali							What was wrong with Fatima?
332	30	32	b	1	أُمُؤٗنْيٖ	umuonye	umuonye							and tell her to calm down.
333	30	32	b	2	أَبُرُدِ	aburudi	aburudi					He is speaking as if \\Swa{iko moto nyumbani}, \\E{there is a fire at home}, and he wants Fatima to \\Swa{apowe}, \\E{cool down}.\n 		
309	27	29	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
310	28	30	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							He told the Noble One:
359	32	34	d	2	كُمْوَنْدَمِيَ	kumwandamiya	kumwandamiya					\\Swa{-andama}, \\E{follow someone directly, the two of you together}, but \\Swa{-andamia}, \\E{follow someone who has already gone ahead, so that each person is travelling alone}, = \\Swa{-fuatia}.		
313	28	30	b	2	مٖنِكَلِفُ	menikalifu	menikalifu							
334	30	32	c	1	كَئِنُكَ	kainuka	kainuka							Muhammad got up,
315	28	30	c	2	زِسِزٗ	zisizo	zisizo					i.e. oaths that have no frightening consequences.		
316	28	30	c	3	خٗوْفُ	khōfu	hofu							
317	28	30	d	1	زِنْڠِ	zingi	zingi							I have told her many of them.
318	28	30	d	2	نِمٖمْٹِلِيَ	nimemţiliya	nimemtiliya							
349	32	34	a	1	كَمُؤُلِزَ	kamuuliza	kamuuliza							The Hashimite asked her:
2765	259	261	c	2	مْوَنْڠَلِيِنِ	mwangaliyini	mwangaliyini		mwangaliyeni	*				
409	38	40	a	2	كْوَكٖ	kwake	kwake							
336	30	32	d	1	هَپٗ	hapo	hapo							and then set out on the way [to Ali's house].
337	30	32	d	2	كَأَنْدَمَ	kaandama	kaandama							
338	30	32	d	3	نْدِيَ	ndiya	ndiya							
322	29	31	b	1	نَمِ	nami	nami							I've really done it now.
323	29	31	b	2	نِمٖٹٖنْدَ	nimeţenda	nimetenda							
324	29	31	b	3	كْوٖلِ	kweli	kweli							
325	29	31	c	1	كُمْوَمْبِيَ	kumwambiya	kumwambiya							I haven't the nerve to tell her.
326	29	31	c	2	سِهِمِلِ	sihimili	sihimili							
327	29	31	d	1	خٗوْفُ	khōfu	hofu							I'm filled with fear.
328	29	31	d	2	زِمٖنِنْڠِيَ	zimeningiya	zimeningiya							
320	29	31	a	2	يَا	yā	ya							
339	31	33	a	1	أَكٖنْدَ	akenda	akenda							He went [to the house] and sat down.
340	31	33	a	2	أَكَجِلِسِ	akajilisi	akajilisi					\\Swa{-jilisi} = \\Swa{-keti}.  The Prophet is being subtle, and pretends he does not know what has happened, so that he can get to the bottom of things.		
329	30	32	a	1	تٖنَ	tena	tena							So you go, my Lord,
330	30	32	a	2	إٖنٖنْدَ	enenda	enenda							
368	33	35	d	2	نِمٖزِسِكِيَ	nimezisikiya	nimezisikiya							
341	31	33	b	1	مٗيٗ	moyo	moyo							His heart was confused,
343	31	33	b	3	وَسِوَسِ	wasiwasi	wasiwasi							
351	32	34	b	1	وَلِ	wali	wali							Was there anything wrong, Fatima?
352	32	34	b	2	نَ	na	na							
353	32	34	b	3	نِنِ	nini	nini							
345	31	33	c	2	كَمَ	kama	kama							
346	31	33	c	3	هَئِسِ	haisi	haisi							
348	31	33	d	2	كُمْوَنْڠَلِيَ	kumwangaliya	kumwangaliya							
361	33	35	a	2	هَكُكَسِرِ	hakukasiri	hakukasiri					i.e. \\Swa{pale pale kampa habari yote}, \\E{there and then she gave him the whole story}.		
356	32	34	c	2	مٖكُيَ	mekuya	mekuya							
357	32	34	c	3	هِمَ	hima	hima							
366	33	35	c	3	هَبَرِ	habari	habari							
362	33	35	b	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							she told the Bearer of Glad Tidings:
372	34	36	b	2	كَمَ	kama	kama							
373	34	36	b	3	هَبَرِ	habari	habari							
367	33	35	d	1	يٖؤٗ	yeo	yeo							I heard it today.
374	34	36	b	4	ڠَنِ	gani	gani							
369	34	36	a	1	أَكَمُؤُزَ	akamuuza	akamuuza							The Trustworthy One asked her:
376	34	36	c	2	نْيُمْبَنِ	nyumbani	nyumbani							
371	34	36	b	1	نِ	ni	ni							What sort of news is it
375	34	36	c	1	أُسِمْنْڠٗجٖ	usimngoje	usimngoje							that you couldn't wait for him at home,
377	34	36	d	1	أُكَجَ	ukaja	ukaja							and ended up sending for him?
379	35	37	a	1	أَكَئِنَمَ	akainama	akainama					Good children are shy in front of their parents, and show them respect.		Fatima bowed down
381	35	37	b	1	كُمْسِتَحِ	kumsitaḥi	kumsitahi							to show honour to the Hashimite,
434	40	42	b	2	نِمٖفِكِرِ	nimefikiri	nimefikiri							
383	35	37	c	1	يَلٗمْتٗكَ	yalomtoka	yalomtoka							and words came tumbling out, 
384	35	37	c	2	كَلِمَ	kalima	kalima					\\Swa{ametokwa na maneno} -- this occurs when one feels particularly when one feels strongly about something.  If you want to emphasise a speaker's volubility, you can say \\Swa{ametokwa na maneno yake na ya kuwazimu}, lit. \\E{he was come out of by his own words and those of his ancestors}.		
408	38	40	a	1	كُتٗكَ	kutoka	kutoka							For her part, Fatima
386	35	37	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
2780	261	263	a	2	كِبَنِ	kibani	kibani		kibaini	*				
2789	261	263	d	2	كْوَنْدَم	kwandam	kwandam		kwandama	*				
388	36	38	a	2	مَنٖنٗ	maneno	maneno							
389	36	38	a	3	هَيٗ	hayo	hayo							
424	39	41	c	1	كَبِسَ	kabisa	kabisa							
482	45	47	b	1	نْدِيٗ	ndiyo	ndiyo							was exactly what happened.
425	39	41	c	2	مَؤٗڤُ	maovu	maovu							
390	36	38	b	1	أُسِٹٖٹٖ	usiţeţe	usitete							Don't quarrel with your husband.
391	36	38	b	2	نَ	na	na							
392	36	38	b	3	مُمٖئٗ	mumeo	mumeo							
411	38	40	b	1	يَلٖ	yale	yale							weighed those [words] carefully,
412	38	40	b	2	أَكَيَسُكُمَ	akayasukuma	akayasukuma							
393	36	38	c	1	أَكَرُدِشَ	akarudisha	akarudisha							And he comforted her,
394	36	38	c	2	كِلِيٗ	kiliyo	kiliyo							
426	39	41	c	3	يَنْڠُ	yangu	yangu							
397	37	39	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							He told her: My child, 
413	38	40	c	1	كِشَ	kisha	kisha							then she spoke [these] words,
399	37	39	b	1	أُتَكَپٗ	utakapo	utakapo							if you want my blessing,
400	37	39	b	2	رَضِ	raḍi	radhi					Move note from 83d to here.		
401	37	39	b	3	يَنْڠُ	yangu	yangu							
414	38	40	c	2	كَڤُٹَ	kavuţa	kavuta							
415	38	40	c	3	كَلِمَ	kalima	kalima							
402	37	39	c	1	نِ	ni	ni							this is my advice --
403	37	39	c	2	هَيَ	haya	haya							
404	37	39	c	3	مَنٖنٗ	maneno	maneno							
405	37	39	c	4	يَنْڠُ	yangu	yangu							
443	41	43	b	2	نِ	ni	ni							
406	37	39	d	1	يُوَ	yuwa	yuwa							you know, if you'll listen to it.
407	37	39	d	2	أُكِيَسِكِيَ	ukiyasikiya	ukiyasikiya							
416	38	40	d	1	بَبَكٖ	babake	babake							and told her father:
417	38	40	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
439	41	43	a	1	تٖنَ	tena	tena							And the conclusion in my heart
435	40	42	c	1	هَٹُپٖنْدٖلٖئِ	haţupendelei	hatupendelei							she did not want good fortune for us --
419	39	41	a	2	بَبَنْڠُ	babangu	babangu							
427	39	41	d	1	سِ	si	si							and I am not pleased [to have done it].
428	39	41	d	2	مْوٖنْيٖ	mwenye	mwenye							
429	39	41	d	3	كُپٖنْدٖلٖيَ	kupendeleya	kupendeleya							
421	39	41	b	2	نَ	na	na							
422	39	41	b	3	مُمٖ	mume	mume							
423	39	41	b	4	وَنْڠُ	wangu	wangu							[It was] my fault entirely,
370	34	36	a	2	أَمِيْنِ	amı̄ni	amini		Amini					
436	40	42	c	2	خٖيْرِ	khēri	heri							
430	40	42	a	1	نَ	na	na							And the person who deceived me --
431	40	42	a	2	مْٹُ	mţu	mtu							
432	40	42	a	3	أَلٗنِغُرِ	alonighuri	alonighuri							
433	40	42	b	1	سَسَ	sasa	sasa							now I have realised
437	40	42	d	1	هَوٖزِ	hawezi	hawezi							she couldn't look at us [without envy].
438	40	42	d	2	كُٹْوَنْڠَلِيَ	kuţwangaliya	kutwangaliya							
449	41	43	d	3	كُنِٹِيَ	kuniţiya	kunitiya							
448	41	43	d	2	مْبٗڤُ	mbovu	mbovu							
298	26	28	d	2	كْوَ	kwa	kwa							
380	35	37	a	2	فَتُمَ	fatuma	fatuma		Fatuma					
410	38	40	a	3	فَتُمَ	fatuma	fatuma		Fatuma					
418	39	41	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia					She said: Father,
420	39	41	b	1	ٹُنَنِ	ţunani	tunani		tuna-ni					what quarrel do I have with my husband?
442	41	43	b	1	مْٹُيٖ	mţuye	mtuye							[is that] that person was a devil,
444	41	43	b	3	شَيْطَانِ	shayṭāni	shaytani		shaitani					
445	41	43	c	1	مْلَنِوَ	mlaniwa	mlaniwa							a cursed one, a damned one,
447	41	43	d	1	نِيَه	niyah	niyah		nia					planting evil intentions in me.
451	42	44	a	2	نِمٖيَخِتِمُ	nimeyakhitimu	nimeyahitimu					The first part of the ballad, describing the \\Swa{mke wa siri}, and the resulting friction between Ali and Fatima, and its resolution, is now complete.  The next portion of the tale (\\q{\\Swa{mengine}}), describing Ja'far's meeting with his father Ali, and its results, now begins.		
453	42	44	b	2	مٖنْڠِنٖ	mengine	mengine							
450	42	44	a	1	هَيَ	haya	haya							I have completed these [things],
454	42	44	b	3	تهَنُظُمُ	tʰanuẓumu	tanudhumu					\\Swa{nuzumu}, \\E{compose}.		
456	42	44	c	2	مُيَفَهَمُ	muyafahamu	muyafahamu					\\q{that you may all understand it}, or \\q{that you may understand it all}.		
452	42	44	b	1	نَ	na	na							and I will compose other [things],
486	45	47	c	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari			We might surmise that he was named Ja'far after Ali's brother Ja'far.		
455	42	44	c	1	جَمِيْعِ	jamı̄ʿi	jami'i							so that all of you may understand them -- 
483	45	47	b	2	يٗتٖ	yote	yote							
457	42	44	d	1	نِمٖپٖنْدَ	nimependa	nimependa							I have been pleased to tell you [them].
458	42	44	d	2	كُوَمْبِيَ	kuwambiya	kuwambiya							
484	45	47	b	3	يَلٗجِرِ	yalojiri	yalojiri							
2936	276	278	b	1	أَسِپَٹٖ	asipaţe	asipate		asifanye	*				was doing his best [to find the teacher's house],
2939	276	278	c	2	نْيُمَ	nyuma	nyuma		nyumba	*				
533	50	52	b	2	نَ	na	na							
440	41	43	a	2	هُضُمُ	huḍumu	hudhumu							
441	41	43	a	3	مٗيٗنِ	moyoni	moyoni							
459	43	45	a	1	فَهَمُنِ	fahamuni	fahamuni					It seems that here we should envisage Ali explaining, after the events of the rest of the ballad, about the ring, and why he left it with Atika.		[Ali said:] Pay attention, noble [listeners],
460	43	45	a	2	وَؤُنْڠْوَنَ	waungwana	waungwana							
515	48	50	c	2	كِسِمَ	kisima	kisima							
516	48	50	c	3	مْوِٹُنِ	mwiţuni	mwituni							
461	43	45	b	1	يٖؤٗ	yeo	yeo							so that today I may give you an explanation:
462	43	45	b	2	نِوَپٖ	niwape	niwape							
463	43	45	b	3	مَعَنَ	maʿana	ma'ana							
485	45	47	c	1	أَكَزَوَ	akazawa	akazawa							Ja'far was born,
464	43	45	c	1	پٖٹٖ	peţe	pete							my distinctive ring --
465	43	45	c	2	يَنْڠُ	yangu	yangu							
466	43	45	c	3	يَ	ya	ya							
467	43	45	c	4	عَيْنَ	ʿayna	'ayna					\\Swa{ya aina}, \\E{one of a kind}, i.e. \\Swa{nzuri}.		
499	47	49	a	1	وَٹُ	waţu	watu							People were talking about it,
468	43	45	d	1	حُجَ	ḥuja	huja							the reason I left it behind.
469	43	45	d	2	نَلٗئِوَتِيَ	naloiwatiya	naloiwatiya							
470	44	46	a	1	نَلِئِوَتَ	naliiwata	naliiwata							I left it for the purpose,
471	44	46	a	2	قَصِدِ	qaṣidi	qasidi					Amu \\Swa{qasidi} = Mvita \\Swa{maqusudi}.		
472	44	46	b	1	سِ	si	si							not of increasing [her] love for me,
473	44	46	b	2	مَهَبَ	mahaba	mahaba							
474	44	46	b	3	كُنِزِدِ	kunizidi	kunizidi							
475	44	46	c	1	مَرَ	mara	mara							[but lest] once the child was born,
476	44	46	c	2	هُزَءَ	huzaa	huzaa							
477	44	46	c	3	وَلِدِ	walidi	walidi							
478	44	46	d	1	أَصِلِ	aṣili	asili							its heritage should be lost.
479	44	46	d	2	إِكَپٗتٖيَ	ikapoteya	ikapoteya					That is, the child would not know who his father was -- this would be very unfortunate, and Ali is anxious for this not to happen		
491	46	48	a	2	كِجَنَ	kijana	kijana							
480	45	47	a	1	بَسِ	basi	basi							Indeed, what I had foreseen
481	45	47	a	2	نَلٗيَفِكِرِ	naloyafikiri	naloyafikiri					Amu \\Swa{n[i]-al[i]-o} = Mvita \\Swa{ni-l[i]-o}, subject prefix + past marker + relative marker.		
510	48	50	a	1	أَلِپٗپٖنْدَ	alipopenda	alipopenda					This translation (\\Swa{hata mmoya}, \\E{not a single [person]}) deals with the Y text, but for the R text we should translate \\Swa{hata mmoya}, \\E{until a single [person]} to deal with the fact that it adds stanzas here describing someone (actually the Devil) coming along to trick Ali.		When it pleased Providence
502	47	49	b	2	هَنَ	hana	hana							
503	47	49	b	3	هَبَرِ	habari	habari							
492	46	48	b	1	نَ	na	na							resembling his father.
493	46	48	b	2	بَبَكٖ	babake	babake							
494	46	48	b	3	وَكِفَنَ	wakifana	wakifana							
495	46	48	c	1	كُلَ	kula	kula							[To] everyone who saw him,
496	46	48	c	2	أَلٗكِمُؤٗنَ	alokimuona	alokimuona							
497	46	48	d	1	صُوْرَ	ṣūra	sura							his features said who he was.
498	46	48	d	2	زَلِكِمْوَمْبِيَ	zalikimwambiya	zalikimwambiya							
2840	267	269	b	3	رَبُك	rabuk	rabuk		Rabuka	*				
512	48	50	b	1	كَمُؤٗنَ	kamuona	kamuona							[Ali] saw [Ja'far] in the flesh.
504	47	49	c	1	هَتَ	hata	hata							not a single [person] secretly
505	47	49	c	2	مْمٗيَ	mmoya	mmoya							
347	31	33	d	1	إٖنٖنْدٖيْ	enendee	enendee		endee	*				[that] he had just come to look in on her.
530	50	52	a	2	عَلِى	ʿalii	'alii		Ali			̣		
506	47	49	c	3	كْوَ	kwa	kwa							
507	47	49	c	4	سِرِ	siri	siri							
513	48	50	b	2	مُعَيَنِ	muʿayani	mu'ayani					lit. \\q{clearly}.		
508	47	49	d	1	أَكَفِكَ	akafika	akafika							arrived to tell him.
509	47	49	d	2	كُمْوَمْبِيَ	kumwambiya	kumwambiya							
521	49	51	a	3	كْوَ	kwa	kwa							
2946	277	279	b	1	كِنٖنْدَ	kinenda	kinenda		kenenda	*				she went on without finding him.
2970	279	281	c	2	مْتَنِپِلٖكَ	mtanipileka	mtanipileka		mtanipeleka	*				
522	49	51	a	4	شَكَ	shaka	shaka							
526	49	51	c	2	أَلِكِفُنِكَ	alikifunika	alikifunika					Because in such a climate water is very valuable.		
514	48	50	c	1	كُنَ	kuna	kuna							There was a well in the forest,
523	49	51	b	1	مَاءِ	mai	mai							not wanting water.
517	48	50	d	1	أَكٖنْدَ	akenda	akenda							and [Ali] went to have a look at it.
518	48	50	d	2	كُچَنْڠَلِيَ	kuchangaliya	kuchangaliya							
653	61	63	c	4	چَنْدَنِ	chandani	chandani							
519	49	51	a	1	نَاءٖ	nae	nae							And he went from suspicion,
520	49	51	a	2	أَكٖنْدَ	akenda	akenda							
528	49	51	d	2	أَكِچٖنْدٖيَ	akichendeya	akichendeya							
524	49	51	b	2	أَسِپٗيَتَكَ	asipoyataka	asipoyataka							
525	49	51	c	1	نَاءٖ	nae	nae							 [Although] he had [earlier] covered it,
527	49	51	d	1	كِوَزِ	kiwazi	kiwazi							it was open when he got there.
529	50	52	a	1	هَپٗ	hapo	hapo							Then Ali the Lion-like
532	50	52	b	1	كِوَزَ	kiwaza	kiwaza							pondered and considered:
534	50	52	b	3	كُفِكِرِ	kufikiri	kufikiri							
596	56	58	b	3	أَكَتٗكَ	akatoka	akatoka							
591	56	58	a	1	مَاءِ	mai	mai							[But] while he was drawing water,
535	50	52	c	1	وَمٖكُيَ	wamekuya	wamekuya							Unbelievers have come here
536	50	52	c	2	مَكَفِرِ	makafiri	makafiri							
3001	282	284	b	3	هَيَنْدَمَ	hayandama	hayandama		kayandama	*				
592	56	58	a	2	كَٹِكَ	kaţika	katika							
559	53	55	a	1	مْبُزِ	mbuzi	mbuzi							His goats drank greedily
537	50	52	d	1	يٖؤٗ	yeo	yeo							to uncover it today in spite of me.
538	50	52	d	2	كُنِفُنُلِيَ	kunifunuliya	kunifunuliya					To annoy and frustrate him.		
560	53	55	a	2	وَكَنْوَ	wakanwa	wakanwa							
539	51	53	a	1	كِشَ	kisha	kisha							Then he said:
540	51	53	a	2	أَكَتَمْكَ	akatamka	akatamka							
562	53	55	a	4	هِمَ	hima	hima							
541	51	53	b	1	نَ	na	na							I will cover it again today,
542	51	53	b	2	يٖؤٗ	yeo	yeo							
543	51	53	b	3	تهَكِفُنِكَ	tʰakifunika	takifunika							
575	54	56	c	1	كْوَندَ	kwanda	kwanda							if he comes back today,
576	54	56	c	2	يٖؤٗ	yeo	yeo							
544	51	53	c	1	سِنَ	sina	sina							and doubtless I will catch
545	51	53	c	2	بُدِ	budi	budi							
546	51	53	c	3	تهَمْشِكَ	tʰamshika	tamshika							
577	54	56	c	3	أَكِرُدِ	akirudi	akirudi							
547	51	53	d	1	مْٹُيٖ	mţuye	mtuye							that person who is behaving like that.
548	51	53	d	2	أَمٖزٗوٖيَ	amezoweya	amezoweya							
564	53	55	b	2	أُكَلِكٗ	ukaliko	ukaliko							
565	53	55	b	3	نْيُمَ	nyuma	nyuma							
549	52	54	a	1	أَچٗنْدٗكَ	achondoka	achondoka							When he had gone off [to hide], in the meantime
550	52	54	a	2	هُكُ	huku	huku							
551	52	54	a	3	نْيُمَ	nyuma	nyuma							
553	52	54	b	2	كَئٖڠٖمَ	kaegema	kaegema					The Swahili belief would be that the boy has been led to that particular place \\q{by the blood}, i.e. because he is a son of his father's, the two have a bodily affinity, and tend to be attracted to each other, like magnets.		
586	55	57	c	1	هِلِ	hili	hili							I'm at the end of my tether --
554	52	54	c	1	لِلٖ	lile	lile							pushed off the plank [covering the well],
555	52	54	c	2	بَاءٗ	bao	bao							
556	52	54	c	3	كَسُكُمَ	kasukuma	kasukuma							
566	53	55	c	1	كِشَ	kisha	kisha							Then he too came forward, 
567	53	55	c	2	نَاءٖ	nae	nae							
531	50	52	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
557	52	54	d	1	مْبَلِ	mbali	mbali							and threw it far away.
558	52	54	d	2	أَكَلَتِلِيَ	akalatiliya	akalatiliya					\\Swa{-atilia} means \\q{drop} in Mvita and \\q{throw} in Amu.		
587	55	57	c	2	لِپٖٹٖ	lipeţe	lipete							
568	53	55	c	3	كَئٖڠٖمَ	kaegema	kaegema							
578	54	56	d	1	هَلِدِرِكِ	halidiriki	halidiriki							he will not find [the plank] when he gets here.
579	54	56	d	2	أَكِيَ	akiya	akiya							
570	53	55	d	2	هُمْوَنْڠَلِيَ	humwangaliya	humwangaliya							
571	54	56	a	1	أَچٖڠٖمَ	achegema	achegema							As Ja'far approached, he was saying:
572	54	56	a	2	كَرَدِدِ	karadidi	karadidi					Move note to 183c to here.		
573	54	56	b	1	ٹُتَشِنْدَنَ	ţutashindana	tutashindana							We will compete tit-for-tat --
574	54	56	b	2	قَصِدِ	qaṣidi	qasidi					lit. \\E{we will compete in aim}.  It seems we should understand a sequence of events prior to the present sequence (beginning in stanza 50), in which Ali's covering of the well and Ja'far's uncovering of it have gone on for some time.  They have now both resolved to get to the heart of the matter and teach the other person a lesson.		
588	55	57	c	3	بَنْدَرِ	bandari	bandari					lit. \\q{this [boat, \\Swa{jahazi}] has gained the harbour}, i.e. this state of affairs must come to an end.		
593	56	58	a	3	كُٹٖكَ	kuţeka	kuteka							
580	55	57	a	1	چَمْبَ	chamba	chamba					\\Swa{chamba}, \\E{if}.		If he is challenging me, 
581	55	57	a	2	هُفَنْيَ	hufanya	hufanya							
583	55	57	a	4	بِرِ	biri	~							
589	55	57	d	1	نْڠٗٹَ	ngoţa	ngota							I'll teach him a lesson."
584	55	57	b	1	أَيَپٗ	ayapo	ayapo							when he gets here he will submit to me.
585	55	57	b	2	أَتَنِكِرِ	atanikiri	atanikiri							
590	55	57	d	2	تهَمْفِنِكِيَ	tʰamfinikiya	tamfinikiya							
600	56	58	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya							
594	56	58	b	1	نَ	na	na							
597	56	58	c	1	مْكٗنٗ	mkono	mkono							and grabbed him by the arm.
598	56	58	c	2	أَكَمْشِكَ	akamshika	akamshika							
604	57	59	b	2	سِكُچِ	sikuchi	sikuchi							
601	57	59	a	1	وٖوٖ	wewe	wewe							Why are you grabbing hold of me?
3311	306	314	b	1	أَتَجِبِوَ	atajibiwa	atajibiwa							he will be vouchsafed an answer,
607	57	59	c	2	أُكِوَ	ukiwa	ukiwa							
603	57	59	b	1	مِمِ	mimi	mimi							I'm not in the least afraid of you.
608	57	59	c	3	نِ	ni	ni							
609	57	59	c	4	جِنِ	jini	jini							
2632	246	248	d	1	نَ	na	na							and tell me what you want.
606	57	59	c	1	هَتَ	hata	hata							Even if you were a jinn
610	57	59	d	1	نَيُوَ	nayuwa	nayuwa							I would know how to read [the Qur'an] against you.
611	57	59	d	2	كُكُسٗمٖيَ	kukusomeya	kukusomeya							
612	58	60	a	1	هَيَ	haya	haya							These [things] I have said,
613	58	60	a	2	نِمٖزٗفَسِرِ	nimezofasiri	nimezofasiri							
614	58	60	b	1	سِكُيَنٖنَ	sikuyanena	sikuyanena							I have not spoken secretly -- 
615	58	60	b	2	كْوَ	kwa	kwa							
616	58	60	b	3	سِرِ	siri	siri							
617	58	60	c	1	أُكِتَكَ	ukitaka	ukitaka							if you want it in plain terms
663	62	64	c	1	أَرُدِ	arudi	arudi							he stepped back greatly saddened
664	62	64	c	2	أَسِكِتِكٖ	asikitike	asikitike							
619	58	60	d	1	نَ	na	na							I will say even more to you."
691	65	67	b	3	إِنَ	ina	ina							
621	58	60	d	3	تهَكْوَمْبِيَ	tʰakwambiya	takwambiya							
639	60	62	c	1	بَبَ	baba	baba							[My] father is no longer in this world,
640	60	62	c	2	هَكٗ	hako	hako							
623	59	61	a	2	كْوَ	kwa	kwa							
624	59	61	a	3	مْبَلِ	mbali	mbali							
641	60	62	c	3	دُنِيَنِ	duniyani	duniyani							
625	59	61	b	1	وَكَوَنَ	wakawana	wakawana							and they fought for two hours.
626	59	61	b	2	سَاءَ	saa	saa							
627	59	61	b	3	مْبِلِ	mbili	mbili					For a small boy to be able to hold his own against Ali, the champion warrior, is no mean feat.		
642	60	62	d	1	نْدِپٗ	ndipo	ndipo							and that is why you are bullying me.
628	59	61	c	1	كِشَ	kisha	kisha							Eventually he spoke,
629	59	61	c	2	كَڤُٹَ	kavuţa	kavuta							
630	59	61	c	3	قَوْلِ	qawli	qauli							
643	60	62	d	2	أُكَنِؤٗنٖيَ	ukanioneya	ukanioneya					i.e. why are you picking on an orphan?		
765	72	74	a	1	أَكَمْطِبُ	akamṭibu	akamtibu							[Ali] gave [Ja'far] some advice:
632	59	61	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya							
634	60	62	a	2	مْبَئِنِ	mbaini	mbaini					\\Swa{-m-} here = \\Swa{-ni-}.  See 237b.		
644	61	63	a	1	كَمُؤُزَ	kamuuza	kamuuza							[Ali] asked him: What are you saying?
656	62	64	a	1	پٖٹٖ	peţe	pete							Once he saw the ring
646	61	63	b	1	وٖوٖ	wewe	wewe							Who is your father?
647	61	63	b	2	بَبَكٗ	babako	babako							
648	61	63	b	3	نِ	ni	ni							
649	61	63	b	4	نَنِ	nani	nani							
658	62	64	a	3	كْوَكٖ	kwake	kwake							
650	61	63	c	1	كَمْبَ	kamba	kamba							[Jaafar] said: He is the ring on my finger.
651	61	63	c	2	نِ	ni	ni							
652	61	63	c	3	پٖٹٖ	peţe	pete							
671	63	65	b	1	سِنْڠَلِكُپِجِئٖ	singalikupijie	singalikupijie							I should not have attacked you.
665	62	64	d	1	نَ	na	na							and was filled with remorse.
666	62	64	d	2	مَيُتٗ	mayuto	mayuto							
659	62	64	b	1	كِسٗمَ	kisoma	kisoma							and read his name [on it],
660	62	64	b	2	نَ	na	na							
661	62	64	b	3	جِنَ	jina	jina							
662	62	64	b	4	لَكٖ	lake	lake							
667	62	64	d	3	كُمْنْڠِيَ	kumngiya	kumngiya					The motif of a father and son unknowingly fighting each other is a recurrent one in literature -- the most famous example is that of Sohrab and Rustum.  Fortunately, in this case the father recognises his son before any damage has been done.		
681	64	66	b	2	سِكُكُفَهَمُ	sikukufahamu	sikukufahamu							
675	63	65	d	1	بَبَكٗ	babako	babako							your father is [me], Ali.
668	63	65	a	1	كِشَ	kisha	kisha							Then he told [Ja'far]:
670	63	65	a	3	أَمْوَمْبِئٖ	amwambie	amwambie					The following stanzas are a bit unclear.  The gist seems to be that Ali says he is Ja'far's father, Ja'far reproaches him for his earlier bullying behaviour, still suspicious and unsure whether or not to believe him, whereupon Ali describes Ja'far's mother to him, which convinces Ja'far.		
672	63	65	c	1	إِنَ	ina	ina							As for the name you are to be called,
673	63	65	c	2	لَكٗ	lako	lako							
674	63	65	c	3	هُئِٹْوَيٖ	huiţwaye	huitwaye							
676	63	65	d	2	نْدِيٖ	ndiye	ndiye							
679	64	66	a	2	دَمُ	damu	damu							
678	64	66	a	1	نِنْڠَلِپٗتٖزَ	ningalipoteza	ningalipoteza					\\Swa{-poteza} = \\Swa{-tupa}.		I would have spilt your blood
683	64	66	c	2	كَتَكَلَمُ	katakalamu	katakalamu							
680	64	66	b	1	كَمَ	kama	kama							if I had not recognised you.
685	64	66	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya							
682	64	66	c	1	أَكِشَ	akisha	akisha							When he finished speaking,
686	65	67	a	1	وٖوٖ	wewe	wewe							When you see someone,
712	67	69	c	1	نَاءٖ	nae	nae							And then [Ja'far] spoke
687	65	67	a	2	مْٹُ	mţu	mtu							
688	65	67	a	3	هُمُؤٗنَ	humuona	humuona							
713	67	69	c	2	هَپٗ	hapo	hapo							
714	67	69	c	3	أَتَمْكٖ	atamke	atamke							
689	65	67	b	1	هُمُؤُزِ	humuuzi	humuuzi							you do not even ask his name.
690	65	67	b	2	لَكٖ	lake	lake							
692	65	67	c	1	هُجِؤٗنَ	hujiona	hujiona							You see yourself as a warrior,
693	65	67	c	2	أُجَڠِنَ	ujagina	ujagina					According to Sacleux, \\Swa{ujagina} comes from a Galla word meaning \\q{brave, courageous}.  It is said that \\Swa{Ali sifa yake ni shujaa}, \\E{Ali is famed as a warrior}, and Ja'far inherits this martial attribute, as his spirited fighting shows.  Ali was a short man, but very strong.  It is said that once he plunged his sword into the ground and challenged others to pull it out, but it was buried so deep that no-one could.  Again, it is said that once when Ali was praying in the mosque his friends jokingly took his sandals (which in accordance with ritual he had of course removed before entering the mosque) and placed them on top of the lintel, where Ali, being short, could not reach them.  As a retort, Ali took their sandals, grabbed hold of the mosque wall, lifted it up, put the sandals under the wall, and set it down again.  Other important Muslims have their own attributes -- Uthman, for instance, was known for his shyness.		
694	65	67	d	1	أُلِؤٗنَ	uliona	uliona							and you thought I would run away.
695	65	67	d	2	تهَكِمْبِيَ	tʰakimbiya	takimbiya							
715	67	69	d	1	إِنَ	ina	ina							in order to tell [Ali] his name.
716	67	69	d	2	لَكٖ	lake	lake							
717	67	69	d	3	أَمْوَمْبِيٖ	amwambiye	amwambiye							
696	66	68	a	1	كْوَنْزَ	kwanza	kwanza							First, give me back my ring,
3008	283	285	a	2	أَكِمَلِزَ	akimaliza	akimaliza		akimweleza	*				
698	66	68	a	3	پٖٹٖ	peţe	pete							
699	66	68	a	4	يَنْڠُ	yangu	yangu							
700	66	68	b	1	إِنُكَ	inuka	inuka							and get up, father --
701	66	68	b	2	إٖوٖ	ewe	ewe					Ja'far is suspicious.		
677	63	65	d	3	عَلِيَ	ʿaliya	'aliya		Aliya					
702	66	68	b	3	بَبَنْڠُ	babangu	babangu							
741	69	71	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya							
561	53	55	a	3	كْوَ	kwa	kwa							
740	69	71	d	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					He told Ja'far.
703	66	68	c	1	هُنْڠَلِوٖزَ	hungaliweza	hungaliweza							you would not have been able 
704	66	68	c	2	مَتُنْڠُ	matungu	matungu							
719	68	70	a	2	كَفَسِرِ	kafasiri	kafasiri							
705	66	68	d	1	مْوِلِنِ	mwilini	mwilini							to inflict injuries on my body.
706	66	68	d	2	كُنِٹِيَ	kuniţiya	kunitiya							
708	67	69	a	2	مَمَكٖ	mamake	mamake							
732	69	71	a	2	مْبُزِ	mbuzi	mbuzi							
709	67	69	b	1	نَمُيُوَ	namuyuwa	namuyuwa							I recognise her features [in you].
710	67	69	b	2	سُرَ	sura	sura							
711	67	69	b	3	زَكٖ	zake	zake							
733	69	71	a	3	مْوِٹُنِ	mwiţuni	mwituni					Ali suggests going back with him to Mecca, but Ja'far wishes to take leave of his family first.  He must also ask permission of his teacher (122b), since he cannot leave the \\Swa{chuo}, \\E{school}, without being allowed.  See 79b.		
720	68	70	b	1	مِمِ	mimi	mimi							I am called Ja'far,
721	68	70	b	2	هُئِٹْوَ	huiţwa	huitwa							
723	68	70	c	1	وَ	wa	wa							[son] of Ali the Lion-like
745	70	72	b	1	نِنَ	nina	nina							I have my teacher
735	69	71	b	2	أُوَپٖكٖ	uwapeke	uwapeke							and herd them along the road
746	70	72	b	2	نَ	na	na							
726	68	70	d	1	نَ	na	na							and I am nine years old.
727	68	70	d	2	مْوَكَ	mwaka	mwaka							
728	68	70	d	3	نِ	ni	ni							
729	68	70	d	4	وَ	wa	wa							
747	70	72	b	3	مْوَلِمُ	mwalimu	mwalimu							
743	70	72	a	2	نٖنْدَ	nenda	nenda							
738	69	71	c	2	زٖٹُ	zeţu	zetu							
748	70	72	b	4	وَنْڠُ	wangu	wangu					Ja'far has to go to the \\Swa{chuo}, \\E{school}, first in order to gain the permission of his teacher.  See 79b.		
744	70	72	a	3	زَنْڠُ	zangu	zangu							
751	70	72	c	3	مَمَنْڠُ	mamangu	mamangu							
753	70	72	d	2	كٖشٗ	kesho	kesho							
754	70	72	d	3	نِتَكُيَ	nitakuya	nitakuya							
750	70	72	c	2	نَ	na	na							
755	71	73	a	1	كٖشٗ	kesho	kesho							When tomorrow has dawned,
752	70	72	d	1	كِشَ	kisha	kisha							Then I will come tomorrow.
756	71	73	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka							
759	71	73	b	3	تَئِنُكَ	tainuka	tainuka							
761	71	73	c	2	مٗيَ	moya	moya							
757	71	73	b	1	نَ	na	na							I will get up early, 
762	71	73	c	3	إِكِفِكَ	ikifika	ikifika					i.e. around 7.00pm.		
764	71	73	d	2	تَكُوَصِلِيَ	takuwaṣiliya	takuwasiliya							
760	71	73	c	1	سَاءَ	saa	saa							and when the first hour comes
763	71	73	d	1	بَبَ	baba	baba							I will arrive with you, father.
793	74	76	a	4	نَسَبَ	nasaba	nasaba					Ja'far will therefore do what is right and expected of him.		
766	72	74	a	2	قَوْلِ	qawli	qauli					\\Swa{akampa maneno mazuri}, \\E{he gave him words of advice}.		
838	78	80	b	2	مُعَلِمُ	muʿalimu	mu'alimu					\\Swa{anampenda yule mwanafunzi wake}, \\E{he is very fond of that pupil of his}.		
767	72	74	b	1	أُيَپٗ	uyapo	uyapo							
769	72	74	b	3	يَ	ya	ya							
810	75	77	d	1	هَؤٗ	hao	hao							I have heard of them.
771	72	74	c	1	يَ	ya	ya							the way to Mecca is the one on the right --
773	72	74	c	3	نِ	ni	ni							
774	72	74	c	4	يَ	ya	ya							
775	72	74	c	5	كُڤُلِ	kuvuli	kuvuli					\\Swa{kuvuli} = \\Swa{kulia}.		
811	75	77	d	2	نَوَفَهَمِيَ	nawafahamiya	nawafahamiya					\\Swa{-fahamia}, \\E{know of someone, hear about someone, while not knowing them personally}.		
776	72	74	d	1	أُسِتَكٖ	usitake	usitake					\\Swa{usitake} = \\Swa{usije}.		just so you don't get lost.
777	72	74	d	2	كُپٗتٖيَ	kupoteya	kupoteya					Ali gives more directions than the ones here (see 200a/b), but in the event Ja'far forgets them all and almost gets lost in the scrubland (see 202-3).		
796	74	76	c	1	نَمِ	nami	nami							And from me to your relatives there,
797	74	76	c	2	هُكٗ	huko	huko							
779	73	75	a	2	تَمْكٗ	tamko	tamko							
798	74	76	c	3	أَقْرَبَ	aqraba	aqraba							
731	69	71	a	1	وَتٗوٖ	watowe	watowe		watoe					Bring your goats out of the forest, [said Ali],
736	69	71	b	3	نْدِيَنِ	ndiyani	ndiyani		ndiani					
737	69	71	c	1	ٹْوٖنٖنْدٖ	ţwenende	twenende							so that we may go on towards the town,
778	73	75	a	1	كَمْرُدِشِيَ	kamrudishiya	kamrudishiya		kamrudishia			This seems out of place, since Ja'far has not actually said anything for Ali to reply to.  Perhaps we should emend by reading 122, 124, 123, 125.		[Ali] replied to [Ja'far]:
794	74	76	b	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia					told him: Thank you.
795	74	76	b	2	مَرْحَبَا	marḥabā	marhaba		marahaba					
840	78	80	c	2	وَنِٹِيَ	waniţiya	wanitiya		wanitia					
780	73	75	b	1	بَسِ	basi	basi							So, now, off you go,
781	73	75	b	2	هَيَ	haya	haya							
782	73	75	b	3	نٖنْدَ	nenda	nenda							
783	73	75	b	4	زَكٗ	zako	zako							
799	74	76	d	1	أُچٖنْدَ	uchenda	uchenda							when you go [there], greet them for me.
800	74	76	d	2	نِسَلِمِيَ	nisalimiya	nisalimiya							
784	73	75	c	1	مْوَلِمُ	mwalimu	mwalimu							the teacher and your mother
786	73	75	c	3	مَمَكٗ	mamako	mamako							
787	73	75	d	1	نَ	na	na							and your relatives -- give them my best wishes."
788	73	75	d	2	نْدُزٗ	nduzo	nduzo					\\Swa{nduzo} < \\Swa{ndugu zako}.  \\Swa{ndugu} can mean \\q{cousin} as well as \\q{brother}.		
789	73	75	d	3	نِسَلِمِيَ	nisalimiya	nisalimiya					\\Swa{-salimu} is used for a person-to-person greeting, and this is the indirect form: \\q{greet them on my behalf}.		
822	76	78	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya					lit. \\q{interceded for him to God}.  If a parent is punishing a child, and a neighbour is present, the neighbour may plead for the child by saying, \\Swa{namuombea, namuombea}, \\E{I ask mercy for him, I intercede for him}.  If the child is let off lightly, the neighbour will warn the child not to be naughty again, because he will not plead for him a second time.		
812	76	78	a	1	بَسِ	basi	basi							So then Ja'far
790	74	76	a	1	نَاءٖ	nae	nae							And [Ja'far], the noble child,
791	74	76	a	2	مْوَنَ	mwana	mwana							
801	75	77	a	1	سَلَامُ	salāmu	salamu							Greetings to Abu Bakr,
813	76	78	a	2	هَپٗ	hapo	hapo							
805	75	77	b	2	نَ	na	na							
807	75	77	c	1	سُزَاءٗ	suzao	suzao							both close and extended family --
808	75	77	c	2	نَ	na	na							
864	80	82	c	1	نَاءٖ	nae	nae							with your father at war,
830	77	79	c	1	كَمْپَ	kampa	kampa							and gave him his news --
817	76	78	b	3	هٖرِ	heri	heri							
826	77	79	b	1	كٖنْدَ	kenda	kenda							he went to his teacher's house,
827	77	79	b	2	كْوَ	kwa	kwa							
818	76	78	c	1	نَ	na	na							and Ali the Lion-like
825	77	79	a	3	كْوَكٖ	kwake	kwake							
831	77	79	c	2	هَبَرِ	habari	habari							
828	77	79	b	3	مْوَلِمُ	mwalimu	mwalimu							
829	77	79	b	4	وَكٖ	wake	wake					These stanzas show the great importance of the teacher in Swahili life.  The Islamic teacher is greatly respected and honoured.  Ja'far, as a good-mannered child, tells his teacher of his plans even before telling his mother.  Among the Swahili, to bring someone his shoes is humiliating, making you look like a servant, but to bring a teacher his shoes is a mark of respect, and not something humiliating. Teachers get prestige, but no money, and the more students they have, the more esteemed they are.  It is usual, indeed considered necessary, to stay with the same teacher, and to finish his course of instruction.  It is said of one important sheikh that he was forced to move his abode to the next town because of a quarrel.  Even though the next town was a fair distance away, all his original students from the first town came to see him there.  But after a while, one of them stopped coming.  When he next saw this student, the teacher asked him the reason for this, and the student replied that he was prevented from attending the classes because his mother was sick, and, since caring for your parents is a duty in Islam, he had stayed at home to nurse her.  The teacher said that because the student was so dutiful he would have a long life, but since he had unfortunately missed the classes he would never be successful in teaching.  This prediction turned out to be true.		
833	77	79	d	1	كْوَءٗ	kwao	kwao							before going home.
832	77	79	c	3	زَكٖ	zake	zake							
834	77	79	d	2	هَيَسِكِلِيَ	hayasikiliya	hayasikiliya							
835	78	80	a	1	أَكِشَ	akisha	akisha							When he had finished explaining [everything],
2633	246	248	d	2	أُتَكَلٗ	utakalo	utakalo							
836	78	80	a	2	كُيَنُظُمُ	kuyanuẓumu	kuyanudhumu					\\Swa{-nuẓumu} usually means \\q{compose}, (\\Swa{-tunga}), but here it means \\q{explain}, (\\Swa{-eleza}).		
841	78	80	c	3	هَمُ	hamu	hamu					Everybody, even a teacher, is apprehensive about the future.		
843	78	80	d	2	أُمٖزٗنَمْبِيَ	umezonambiya	umezonambiya							
839	78	80	c	1	كَمبَ	kamba	kamba							and said: You are  making me worried
842	78	80	d	1	هَيٗ	hayo	hayo							with these [things] you have told me.
872	81	83	a	3	سِتَكِ	sitaki	sitaki					\\Swa{sitaki kushinda na wewe}.		
844	79	81	a	1	وَنِٹِيَ	waniţiya	wanitiya		wanitia					You are making me sad
882	81	83	d	2	زَيْدِ	zaydi	zaydi		zaidi					
846	79	81	b	1	نَ	na	na							and and very anxious.
847	79	81	b	2	وِنْڠِ	wingi	wingi							
849	79	81	b	4	مَؤُذِكٗ	maudhiko	maudhiko					lit. \\q{you are bringing me sadness and many anxieties}.		
888	82	84	c	1	كَمْجِبِشَ	kamjibisha	kamjibisha							And [Ja'far] answered him:
850	79	81	c	1	وَلَ	wala	wala							Yet that place you are going to --
851	79	81	c	2	نَ	na	na							
884	82	84	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia					The teacher said to him:
852	79	81	c	3	هُكٗ	huko	huko							
853	79	81	c	4	وٖنْدَكٗ	wendako	wendako							
873	81	83	b	1	كْوَنِ	kwani	kwani							because I know it is proper.
874	81	83	b	2	نَيُوَ	nayuwa	nayuwa							
854	79	81	d	1	سِوٖزِ	siwezi	siwezi							I cannot keep you back from it.
875	81	83	b	3	نِ	ni	ni							
876	81	83	b	4	هَكِ	haki	haki							
856	80	82	a	1	سِ	si	si							It is not easy to go there,
857	80	82	a	2	رَحِمُ	raḥimu	rahimu							
858	80	82	a	3	كُئٖنْدَنِ	kuendani	kuendani					i.e. the journey is dangerous.		
908	84	86	c	2	أُنَ	una	una							
904	84	86	b	1	هَپٗ	hapo	hapo							[Ja'far] then continued on his way.
859	80	82	b	1	نَ	na	na							and what sort of situation will you be in there,
860	80	82	b	2	هُكٗ	huko	huko							
861	80	82	b	3	أُ	u	u							
862	80	82	b	4	حَلِ	ḥali	hali							
863	80	82	b	5	ڠَنِ	gani	gani							
890	82	84	d	1	كْوَكٖ	kwake	kwake							"I have not yet gone home.
891	82	84	d	2	سِيَسِكِلِيَ	siyasikiliya	siyasikiliya					Amu \\Swa{-sika} = \\Swa{fika}.  Compare \\Swa{-sita / fita}.		
877	81	83	c	1	نِ	ni	ni							you have my consent a hundred thousand times,
865	80	82	c	2	بَبَكٗ	babako	babako							
866	80	82	c	3	زِٹَنِ	ziţani	zitani							
879	81	83	c	3	أَلْفُ	alfu	alfu							
880	81	83	c	4	لَكِ	laki	laki							
867	80	82	d	1	نْدِيٖ	ndiye	ndiye							always in the front line?"
868	80	82	d	2	وَ	wa	wa							
869	80	82	d	3	كُٹَنْڠُلِيَ	kuţanguliya	kutanguliya							
870	81	83	a	1	نَ	na	na							Yet I don't intend to oppose you,
899	83	85	d	1	نَاءٖ	nae	nae							that she will tell you.
900	83	85	d	2	تَكَلٗكْوَمْبِيَ	takalokwambiya	takalokwambiya							
1141	105	107	b	4	مْنٗ	mno	mno							
837	78	80	b	1	أَكَلِيَ	akaliya	akaliya							the teacher wept,
845	79	81	a	2	سِكِتِكٗ	sikitiko	sikitiko							
881	81	83	d	1	نَ	na	na							and I give you [even] more [than that].
883	81	83	d	3	كِكْوٖٹٖيَ	kikweţeya	kikweteya							
885	82	84	a	2	مْوَلِمُ	mwalimu	mwalimu							
893	83	85	a	2	إٖنْدَ	enda	enda							
894	83	85	a	3	زَكٗ	zako	zako							
886	82	84	b	1	مَمَكٗ	mamako	mamako							Is your mother aware of these [things]?
887	82	84	b	2	أَيَفَهَمُ	ayafahamu	ayafahamu							
905	84	86	b	2	نْدِيَ	ndiya	ndiya							
906	84	86	b	3	كَيَنْدَمَ	kayandama	kayandama							
3098	291	293	c	2	هَكُيَ	hakuya	hakuya							
895	83	85	b	1	أُكَمُؤُلِزٖ	ukamuulize	ukamuulize							and ask your mother.
896	83	85	b	2	مَمَكٗ	mamako	mamako					The teacher is teaching Ja'far obedience to his mother.		
901	84	86	a	1	َكِشَ	akisha	akisha							Once [the teacher] had finished these words,
898	83	85	c	2	مَتَمْكٗ	matamko	matamko							
902	84	86	a	2	هِيٗ	hiyo	hiyo							
903	84	86	a	3	كَلِمَ	kalima	kalima							
909	84	86	c	3	هَلِمَمَ	halimama	halimama					\\Swa{halimama} = \\Swa{wasiwasi}.		
910	84	86	d	1	كْوَ	kwa	kwa							as he went in to his mother's [house].
911	84	86	d	2	مَمَكٖ	mamake	mamake							
907	84	86	c	1	مٗيٗ	moyo	moyo							His heart was heavy
914	85	87	a	2	كَوٖكَ	kaweka	kaweka							
915	85	87	a	3	كِبُ	kibu	kibu					\\Swa{fimbo ya mbuzi}?		
917	85	87	b	2	أُپٗلٖ	upole	upole							
892	83	85	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia					And [the teacher] told him: Off you go,
912	84	86	d	3	أَكِنْڠِيَ	akingiya	akingiya							
918	85	87	b	3	نَ	na	na							
919	85	87	b	4	تَرَتِبُ	taratibu	taratibu					Ja'far is trying to sneak back into the house.  He is apprehensive about what he is going to tell his mother, and is also hurt that she did not tell him the full story about his past (100-101).		
921	85	87	c	2	كَتَعَجَبُ	kataʿajabu	kata'ajabu							
916	85	87	b	1	كْوَ	kwa	kwa							quietly and carefully.
871	81	83	a	2	كُكِكِنْدَ	kukikinda	kukikinda		kukukinda	*				
913	85	87	a	1	كِنْڠِيَ	kingiya	kingiya		kingia					When he went in he put his stick away
920	85	87	c	1	مَمَكٖ	mamake	mamake							His mother was surprised, 
950	88	90	a	3	سِؤُذِكٖ	siudhike	siudhike							
973	90	92	a	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
923	85	87	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
924	86	88	a	1	كَمْبَ	kamba	kamba							She said: That's not [like] you, Ja'far --
983	91	93	b	1	كَمْشِكَ	kamshika	kamshika							and grabbed Ja'far [and said to Nasir:]
978	90	92	d	1	يٖؤٗ	yeo	yeo							today, I'll see to it.
975	90	92	b	2	نَاصِرِ	nāṣiri	nasiri		Nasiri					
952	88	90	b	2	حُجَ	ḥuja	huja							
953	88	90	b	3	يَكٖ	yake	yake					Nasir teases Ja'far, saying that he knows why Ja'far is quiet: (1) he lost two of the goats he was herding (90d), which would be a shameful thing, and (2) he is not strong enough to put up with the warmth of the day (91d).		
930	86	88	c	2	كَمَ	kama	kama							
931	86	88	c	3	كْوَ	kwa	kwa							
932	86	88	c	4	سِرِ	siri	siri							
933	86	88	d	1	مْٹُ	mţu	mtu							[like] a person who has run away [and is trying to hide]?
1045	96	98	d	3	نِ	ni	ni							
934	86	88	d	2	أَمٖزٗكِمْبِيَ	amezokimbiya	amezokimbiya					\\Swa{anajifita}, \\E{he is hiding himself}.		
979	90	92	d	2	نِكِكْوَنْڠَلِيَ	nikikwangaliya	nikikwangaliya					If someone is impudent, and you try to remind him that he should behave better by asking him where his manners are, he may say: \\Swa{zimeningia kwa huku, zimetoka kwa huku}, \\E{they came into me here, and went out there}, that is, they went in one ear and out the other.  If this is too much for the other person, he may say, like Ja'far: \\Swa{zitakutoka jeuri, zitakuingia adabu}, \\E{your insolence will leave you, and good manners will enter you}, and proceed to teach him a lesson, after which he may say, if successful: \\Swa{umekwisha pata adabu}, \\E{you have finished getting manners}, that is, I've taught you a lesson.		
936	87	89	a	2	نِ	ni	ni							
3058	288	290	a	1	يٗوَ	yowa	yowa		yuwa	*				[Ali said:] Know that the Almighty
1160	107	109	a	3	أَوَلِ	awali	awali							
897	83	85	c	1	أُسِكِزٖ	usikize	usikize							Pay heed to the things
937	87	89	a	3	نْدُڠُ	ndugu	ndugu							
938	87	89	a	4	يَكٖ	yake	yake							
967	89	91	d	1	يُوَ	yuwa	yuwa							the sun is fierce on the way.
968	89	91	d	2	نِ	ni	ni							
954	88	90	c	1	يٖؤٗ	yeo	yeo							today he was with his goats,
939	87	89	b	1	پَپٗ	papo	papo							and at that moment he spoke up:
940	87	89	b	2	هَپٗ	hapo	hapo							
941	87	89	b	3	أَتَمْكٖ	atamke	atamke							
955	88	90	c	2	أُنَ	una	una							
956	88	90	c	3	مْبُزِ	mbuzi	mbuzi							
957	88	90	c	4	وَكٖ	wake	wake							
943	87	89	c	2	يَ	ya	ya							
944	87	89	c	3	مَتٗ	mato	mato							
945	87	89	c	4	يَكٖ	yake	yake							
969	89	91	d	3	كَلِ	kali	kali							
946	87	89	d	1	هَتَكِ	hataki	hataki							he doesn't want to look at us.
947	87	89	d	2	كُٹْوَنْڠَلِيَ	kuţwangaliya	kutwangaliya							
970	89	91	d	4	لَ	la	la							
958	88	90	d	1	وَوِلِ	wawili	wawili							[and] two of them went missing.
971	89	91	d	5	نْدِيَ	ndiya	ndiya							
948	88	90	a	1	إٖوٖ	ewe	ewe					= \\Swa{wewe}.		Don't worry, mother --
949	88	90	a	2	مَمَ	mama	mama							
959	88	90	d	2	وَمٖپٗتٖيَ	wamepoteya	wamepoteya							
960	89	91	a	1	وَمٖتٗكَ	wametoka	wametoka							They left the herd,
961	89	91	a	2	صَفُنِ	ṣafuni	safuni							
962	89	91	b	1	مٖوَتَنْڠَ	mewatanga	mewatanga					\\Swa{-tanga}, \\E{scatter, spread out}.		they went off and he couldn't find them.
963	89	91	b	2	هَوَؤٗنِ	hawaoni	hawaoni							
972	90	92	a	1	كَئِنُكَ	kainuka	kainuka							Ja'far got up
964	89	91	c	1	كِشَ	kisha	kisha							And of course he is coming back from the forest --
965	89	91	c	2	أَتٗكَ	atoka	atoka							
974	90	92	b	1	أَكَمْپِجَ	akampija	akampija							and hit Nasir:
980	91	93	a	1	هَپٗ	hapo	hapo							But his mother would have none of that,
976	90	92	c	1	زِتَكُتٗكَ	zitakutoka	zitakutoka							Your impudence will leave you
977	90	92	c	2	جٖؤُرِ	jeuri	jeuri							
981	91	93	a	2	مَمَ	mama	mama							
982	91	93	a	3	أَسِكِرِ	asikiri	asikiri							
990	91	93	d	2	سِنْڠٖلِكِمْبِيَ	singelikimbiya	singelikimbiya					i.e. don't run away from a fight.		
985	91	93	c	1	إِوَپٗ	iwapo	iwapo							If I were you, Nasir, 
986	91	93	c	2	نِ	ni	ni							
992	92	94	a	2	نِ	ni	ni							
984	91	93	b	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
987	91	93	c	3	مِيْ	mii	mii		mi					
988	91	93	c	4	نَاصِرِ	nāṣiri	nasiri		Nasiri					
966	89	91	c	3	مْوِٹُنِ	mwiţuni	mwituni							
3076	289	291	c	2	هُتٗكٗسَ	hutokosa	hutokosa					If you \\Swa{subiri}, you will receive a reward from God: \\Swa{hutakosa maneno kwa Mungu}, \\E{you will not fail [to receive] comfort from God}.		
989	91	93	d	1	هَپٗ	hapo	hapo							I would not have run away just now.
993	92	94	a	3	نْدُڠُ	ndugu	ndugu							
994	92	94	a	4	يَكٗ	yako	yako							
996	92	94	b	2	مْٹٗٹٗ	mţoţo	mtoto					Mvita \\Swa{mdogo}. \\E{small} = Amu \\Swa{mtoto} = Gunya \\Swa{mdodi}.		
997	92	94	b	3	وَكٗ	wako	wako							
999	92	94	c	2	نِ	ni	ni							
995	92	94	b	1	مْوَنَنْڠُ	mwanangu	mwanangu							my son, your younger brother --
1000	92	94	c	3	عَوْنِ	ʿawni	'auni							
1001	92	94	c	4	يَكٗ	yako	yako							
998	92	94	c	1	كِشَ	kisha	kisha							you can depend on him [when you need help],
1002	92	94	d	1	وَتَ	wata	wata					Perhaps emend to \\Swa{kumshanguliya}.  The mother tells Ja'far not to hit Nasir, because he was not serious and he was only teasing.  She also reminds him that blood is thicker than water, and that in the last resort your family is your best friend.		so do not attack him.
3087	290	292	c	2	كَشُكَ	kashuka	kashuka		kachoka	*				
1003	92	94	d	2	كُمْٹَنْڠُلِيَ	kumţanguliya	kumtanguliya							
1006	93	95	b	1	أَكِؤُلِزْوَ	akiulizwa	akiulizwa							he did not answer when spoken to.
1007	93	95	b	2	هَنٖنِ	haneni	haneni							
1046	96	98	d	4	پِيَ	piya	piya					Amu \\Swa{piya} = Mvita \\Swa{mpya}.		
1008	93	95	c	1	يَمٖكُپَٹَ	yamekupaţa	yamekupata							[Nasir said:] "It was right on the mark, my friend,
1009	93	95	c	2	مْوٖنْدَنِ	mwendani	mwendani							
1030	95	97	c	1	أُسٗ	uso	uso							Your face is flushed,
1031	95	97	c	2	أُسِمٖمٖ	usimeme	usimeme							
1266	116	118	c	2	مَتَمْكٗ	matamko	matamko							
1010	93	95	d	1	هَيَ	haya	haya							what I said to you."
1032	95	97	c	3	هَرِ	hari	hari					\\Swa{hari} = \\Swa{jasho}.		
1012	94	96	a	1	هَپٗ	hapo	hapo							Then his mother retorted:
1013	94	96	a	2	مَمَكٖ	mamake	mamake							
1014	94	96	a	3	أَجِبُ	ajibu	ajibu							
1056	97	99	d	3	كُكْوَمْبِيَ	kukwambiya	kukwambiya							
3243	305	307	c	3	كَمَ	kama	kama							
1016	94	96	b	2	هُتَأَدَبُ	hutaadabu	hutaadabu							
1033	95	97	d	1	صُوْرَ	ṣūra	sura							and you are not your ordinary self.
1034	95	97	d	2	زِمٖكُپٗتٖيَ	zimekupoteya	zimekupoteya					lit. \\q{[your] features have changed}.  \\Swa{-poteya} here = \\Swa{-geuka, -badilika}.		
1017	94	96	c	1	كِوَ	kiwa	kiwa							when you are being naughty
1018	94	96	c	2	وٖوٖ	wewe	wewe							
1019	94	96	c	3	نِ	ni	ni							
1020	94	96	c	4	هَرَبُ	harabu	harabu							
1021	94	96	d	1	نَمِ	nami	nami							I can tell from your behaviour.
1023	94	96	d	3	طَبِيَ	ṭabiya	tabiya							
1036	96	98	a	2	أَكَبَئِنِ	akabaini	akabaini					\\Swa{-baini} = \\Swa{-sema}.		
1024	95	97	a	1	نَتَكَ	nataka	nataka							[She told Ja'far:] I want [to hear] your news,
1025	95	97	a	2	زَكٗ	zako	zako							
1026	95	97	a	3	هَبَرِ	habari	habari							
1048	97	99	a	2	كِعَرَبُ	kiʿarabu	ki'arabu							
1027	95	97	b	1	هَيَ	haya	haya							tell it to me, Ja'far.
1028	95	97	b	2	نِپَ	nipa	nipa							
1037	96	98	b	1	وَتَكَ	wataka	wataka							What news do you want?
1038	96	98	b	2	هَبَرِ	habari	habari							
1039	96	98	b	3	ڠَنِ	gani	gani							
1068	99	101	a	1	كِكْوَمْبِيَ	kikwambiya	kikwambiya							If I tell you he is in the town,
1049	97	99	b	1	نَيُوَ	nayuwa	nayuwa							I know you will answer:
1050	97	99	b	2	أُتَنِجِبُ	utanijibu	utanijibu							
1041	96	98	c	2	لُغَ	lugha	lugha							
1042	96	98	c	3	ڠَنِ	gani	gani							
1066	98	100	d	1	أَلِفَرِكِ	alifariki	alifariki							he passed away from this world."
1057	98	100	a	1	كِكُؤُلِزَ	kikuuliza	kikuuliza							If I ask you [whether] he is alive,
1043	96	98	d	1	كْوَكٗ	kwako	kwako							
1044	96	98	d	2	إِوٖ	iwe	iwe					Ja'far is angry that his mother hid the truth about his father from him.		so that it will be new to you?
1058	98	100	a	2	أَلِكٗ	aliko	aliko							
1051	97	99	c	1	تٖنَ	tena	tena							"I am perplexed again"
1052	97	99	c	2	نَؤٗنَ	naona	naona							
1053	97	99	c	3	عَجَبُ	ʿajabu	'ajabu							
1067	98	100	d	2	دُنِيَ	duniya	duniya							
1054	97	99	d	1	مِمِ	mimi	mimi							[even if] I myself tell you.
1055	97	99	d	2	مْوٖنْيٖوٖ	mwenyewe	mwenyewe							
1062	98	100	c	1	تَنْڠُ	tangu	tangu							"When I was still pregnant with you
1015	94	96	b	1	نَاصِرِ	nāṣiri	nasiri		Nasiri					You are ill-mannered, Nasir --
1022	94	96	d	2	نَيُوَ	nayuwa	nayuwa		nayua					
1029	95	97	b	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari			She knows something has happened.		
1035	96	98	a	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Ja'far said:
3114	293	295	b	2	نَلِئِعَبِرِ	naliiʿabiri	nalii'abiri							
928	86	88	b	2	جَوْرِ	jawri	jauri							
1063	98	100	c	2	نِنَ	nina	nina							
1059	98	100	b	1	بَبَ	baba	baba							my father, you tell me he is not:
1060	98	100	b	2	هُنَمْبِيَ	hunambiya	hunambiya							
1061	98	100	b	3	هَكٗ	hako	hako					\\Swa{hako} is the negative form of \\Swa{yuko}, \\E{he is there}, just as \\Swa{siko} is the negative form of \\Swa{niko}, \\E{I am there}.		
1064	98	100	c	3	مِمْبَ	mimba	mimba							
1065	98	100	c	4	يَكٗ	yako	yako							
1069	99	101	a	2	يُمُئِنِ	yumuini	yumuini					i.e. that he has seen someone who might be his father.		
1073	99	101	c	2	وَفٖنٖ	wafene	wafene							
1075	99	101	d	2	كُئِنْيَمَزِيَ	kuinyamaziya	kuinyamaziya							
1070	99	101	b	1	أُتَڠٖؤُزَ	utageuza	utageuza							you will change to other [words] --
1071	99	101	b	2	مَنْڠِنٖ	mangine	mangine							
1072	99	101	c	1	أُتَنَمْبِيَ	utanambiya	utanambiya							you will tell me [I've seen someone who] looks like him,
1077	100	102	a	2	هُيَوَ	huyawa	huyawa					< \\Swa{kuwa}.		
3102	291	293	d	3	عَلِيَ	ʿaliya	'aliya		Atiya	*				
1074	99	101	d	1	خٖيْرِ	khēri	heri							and it's better to keep quiet about it.
1078	100	102	a	3	فَرِسِ	farisi	farisi					\\Swa{farisi}, \\E{clever, skilful}, originally meant \\q{horseman, rider}, for which skill is necessary.  Compare \\Swa{farasi}, \\E{horse}, 162b.		
3153	296	298	d	2	تَٹُوَ	taţuwa	tatuwa		tatwaa	*				
1076	100	102	a	1	وٖوٖ	wewe	wewe							[His mother said:] You are not worldly-wise,
1079	100	102	b	1	وَلَ	wala	wala							nor do you know Mecca --
1081	100	102	b	3	هُكُئِسِ	hukuisi	hukuisi							
1082	100	102	c	1	وٖنْدٖلٖپِ	wendelepi	wendelepi							where did you go among people,
1106	103	105	a	1	نَ	na	na							And let me tell you the second thing:
1107	103	105	a	2	لَ	la	la							
1084	100	102	d	1	أُكَمُؤٗنَ	ukamuona	ukamuona							that you saw Ali?"
1108	103	105	a	3	پِلِ	pili	pili							
1109	103	105	a	4	نِبَئِنِ	nibaini	nibaini							
1087	101	103	a	2	كَبَئِنِ	kabaini	kabaini							
1088	101	103	b	1	ٹُمٖؤٗنَنَ	ţumeonana	tumeonana							We met in the forest --
1089	101	103	b	2	مْوِٹُنِ	mwiţuni	mwituni							
1124	104	106	b	1	أُنَ	una	una							he has a hole [leading to the] Underworld (?).
1090	101	103	c	1	صِفَ	ṣifa	sifa							a clear description,
1091	101	103	c	2	زَكٖ	zake	zake							
1092	101	103	c	3	مُعَيَنِ	muʿayani	mu'ayani							
1125	104	106	b	2	ٹُنْدُ	ţundu	tundu							
1126	104	106	b	3	يَ	ya	ya							
1093	101	103	d	1	أُكِتَكَ	ukitaka	ukitaka							if you want it, I will tell you.
1094	101	103	d	2	تَكْوَمْبِيَ	takwambiya	takwambiya							
1127	104	106	b	4	كُزِمُ	kuzimu	kuzimu					The meaning of this line is unclear.  \\Swa{tundu} means \\q{hole, pit}, and \\Swa{kuzimu} means \\q{the Underworld} -- (\\Swa{kuzimu hakuna nyota}, \\E{in the Underworld there are no stars}) -- but the implication here is obscure.		
1110	103	105	b	1	نْيٖيْ	nyee	nyee							the hair on his head
1095	102	104	a	1	نِسِكِزَ	nisikiza	nisikiza							Listen to me, let me speak --
1096	102	104	a	2	نِرَدِدِ	niradidi	niradidi							
1111	103	105	b	2	زَكٖ	zake	zake							
1112	103	105	b	3	زَ	za	za							
1113	103	105	b	4	كِتْوَنِ	kitwani	kitwani							
1097	102	104	b	1	كِوَ	kiwa	kiwa							if it is not him, correct me --
1098	102	104	b	2	سِيٗ	siyo	siyo							
1099	102	104	b	3	أُنِرُدِ	unirudi	unirudi							
1100	102	104	c	1	كِمٗ	kimo	kimo							his height is not much taller
1101	102	104	c	2	چَكٖ	chake	chake							
1102	102	104	c	3	هَكِزِدِ	hakizidi	hakizidi					See note to 67c.  People believe anecdotes about famous people, even if they are not likely or academically proven -- as the many magazines retailing celebrity gossip can attest.		
1114	103	105	c	1	هَكُمٖيَ	hakumeya	hakumeya							does not cover his bald patch,
1115	103	105	c	2	أُپَآنِ	upaãni	upaani					lit. \\q{does not grow on the bald patch [that he has]}.  \\Swa{ana upaa [mkubwa]}, \\E{he's bald}.		
1103	102	104	d	1	كَمَ	kama	kama							than my own, look.
1104	102	104	d	2	چَنْڠُ	changu	changu							
1105	102	104	d	3	أَنْڠَلِيَ	angaliya	angaliya							
1134	105	107	a	1	نِ	ni	ni							He is courteous of speech,
1135	105	107	a	2	رَعُوفُ	raʿūfu	ra'ufu					= \\Swa{taratibu}, \\E{polite}.		
1136	105	107	a	3	وَ	wa	wa							
1116	103	105	d	1	نَ	na	na							and if that is not so, tell me.
1117	103	105	d	2	كَمَ	kama	kama							
1118	103	105	d	3	سِيٗ	siyo	siyo							
1119	103	105	d	4	نَمْبِيَ	nambiya	nambiya							
1128	104	106	c	1	صِفَ	ṣifa	sifa							His description is complete --
1129	104	106	c	2	زَكٖ	zake	zake							
1130	104	106	c	3	زٖمٖتِمُ	zemetimu	zemetimu							
1120	104	106	a	1	نَ	na	na							And know the third thing:
1121	104	106	a	2	يَ	ya	ya							
1122	104	106	a	3	ٹَاٹُ	ţāţu	tatu							
1080	100	102	b	2	مَكَه	makah	makah		Maka					
1123	104	106	a	4	أُفَهَمُ	ufahamu	ufahamu							
1137	105	107	a	4	مَنٖنٗ	maneno	maneno							
1131	104	106	d	1	نِ	ni	ni							it consists of these things that I have told you.
1132	104	106	d	2	هِزٗ	hizo	hizo							
1133	104	106	d	3	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya							
1145	105	107	d	1	هُنُ	hunu	hunu							I have given you this one.
1146	105	107	d	2	نِمٖكُپِجِيَ	nimekupijiya	nimekupijiya							
1138	105	107	b	1	كِشَ	kisha	kisha							and further, he is a great warrior.
1139	105	107	b	2	نِ	ni	ni							
1140	105	107	b	3	جَڠِنَ	jagina	jagina					See 67c.		
1142	105	107	c	1	نَ	na	na							If you want a likeness of him,
1143	105	107	c	2	أُكِتَكَ	ukitaka	ukitaka							
1144	105	107	c	3	مْفَنٗ	mfano	mfano					\\Swa{-piga mfano}, \\E{give an example of}.		
1395	128	130	b	1	كٔوَمْبَ	kwamba	kwamba							that there was a well not far away.
1148	106	108	a	2	أُنَمْبِزِيٖؤٗ	unambiziyeo	unambiziyeo							
1150	106	108	b	2	كْوٖلِ	kweli	kweli							
1147	106	108	a	1	هَيٗ	hayo	hayo							[His mother said:] These things you have told me
1151	106	108	b	3	نْدِيٗ	ndiyo	ndiyo							
1155	106	108	c	3	يَوٖءٖؤٗ	yaweeo	yaweeo					Amu \\Swa{yaweeo} = Mvita \\Swa{yalivyokuwa}.		
1157	106	108	d	2	كُمْفَهَمِيَ	kumfahamiya	kumfahamiya							
1159	107	109	a	2	ٹَنْڠُ	ţangu	tangu							
1156	106	108	d	1	هَتَ	hata	hata							that you came to recognise him."
1158	107	109	a	1	تَكُپَ	takupa	takupa							[Jaafar said:] "I will give you [the whole story] from the beginning.
1204	110	112	d	2	وَتَنَمْبِيَ	watanambiya	watanambiya							
1188	109	111	b	2	جَنِبُ	janibu	janibu					\\Swa{janibu} = \\Swa{upande}.		
1189	109	111	b	3	ڠَنِ	gani	gani							
1161	107	109	b	1	هِكِ	hiki	hiki					\\Swa{hiki} implies that the mother knows what drought he is referring to, i.e. she has experienced it too.		This drought was severe,
1162	107	109	b	2	چَكَ	chaka	chaka					\\Swa{chaka} < \\Swa{-waka}, \\E{burn}.		
1163	107	109	b	3	نِ	ni	ni							
1164	107	109	b	4	ثَقِلِ	thaqili	thaqili					Because of this, Ja'far had to travel farther than normal with his goats to find water, and this led to his meeting up with Ali.		
1165	107	109	c	1	كِتَنْڠَ	kitanga	kitanga							and wandering around [looking for] water was difficult,
1166	107	109	c	2	مَاءِ	mai	mai							
1167	107	109	c	3	نِ	ni	ni							
1168	107	109	c	4	غَالِ	ghāli	ghali							
1225	112	114	d	1	لِپَٹٖ	lipaţe	lipate							until the sun goes down a bit?
1169	107	109	d	1	نِكَتَكَسَ	nikatakasa	nikatakasa							so I travelled further afield.
1170	107	109	d	2	نَ	na	na							
1171	107	109	d	3	نْدِيَ	ndiya	ndiya					This comes very close to the English expression \\q{hit the road}. \\Swa{-takasa}, \\E{stride along making a noise when your feet hit the ground}.		
1191	109	111	c	2	وَٹُ	waţu	watu							
1192	109	111	c	3	وٖنْڠِنٖ	wengine	wengine					Or we could emend to \\Swa{wageni}, \\E{strangers}.		
1172	108	110	a	1	صَدِقِ	ṣadiqi	sadiqi							Believe my words:
1173	108	110	a	2	يَنْڠُ	yangu	yangu							
1174	108	110	a	3	قَوْلِ	qawli	qauli							
1226	112	114	d	2	كُپِنْدُكِيَ	kupindukiya	kupindukiya					We are to understand \\Swa{jua}.  \\Swa{-pindukia} is lit. \\q{change direction}, i.e. the sun ascends through the sky until noon, and then begins to decline.		
1175	108	110	b	1	نِمٖتَنْڠَ	nimetanga	nimetanga							I wandered around in the hinterland,
1176	108	110	b	2	بَرَ	bara	bara							
1177	108	110	b	3	هِلِ	hili	hili							
1205	111	113	a	1	پَنَ	pana	pana							Waiting (?) there in the shade
1193	109	111	d	1	وَٹَٹُ	waţaţu	watatu							three of them, coming along the road.
1178	108	110	c	1	مَاءِ	mai	mai							but there was no water anywhere,
1179	108	110	c	2	هَپَنَ	hapana	hapana							
1180	108	110	c	3	مَهَلِ	mahali	mahali							
1194	109	111	d	2	وٖنْدٖمٖ	wendeme	wendeme							
1195	109	111	d	3	نْدِيَ	ndiya	ndiya					The three of them were walking along \\Swa{moja kwa moja} in Indian file - see the note on \\Swa{-andama}.		
1181	108	110	d	1	نِ	ni	ni							[and I thought] I'd better come back.
1182	108	110	d	2	خٖيْرِ	khēri	heri							
1183	108	110	d	3	كَئِرُدِيَ	kairudiya	kairudiya							
1206	111	113	a	2	كِڤُلِ	kivuli	kivuli							
1184	109	111	a	1	هٖنْدَ	henda	henda							As I went along, pondering in my heart
1185	109	111	a	2	هِوَزَ	hiwaza	hiwaza							
1186	109	111	a	3	مٗيٗنِ	moyoni	moyoni							
1207	111	113	a	3	كِنْيٖسَ	kinyesa	kinyesa							
1196	110	112	a	1	كَوَءٗنَ	kawaona	kawaona							I saw them when they were far off,
1197	110	112	a	2	وَكٗ	wako	wako							
1198	110	112	a	3	مْبَلِ	mbali	mbali							
1215	112	114	a	1	كَمْبَ	kamba	kamba							I said: Where are you going in such a hurry?
1199	110	112	b	1	كَنٖنَ	kanena	kanena					Note that \\Swa{-nena}, \\E{speak, say}, here means \\q{intend}.		and I said to myself that I should wait --
1216	112	114	a	2	مْوٖنْدَپِ	mwendapi	mwendapi							
1217	112	114	a	3	مَتِتِ	matiti	matiti					\\Swa{kama Wazungu}, \\E{like Europeans}!		
1285	118	120	b	3	يَكٖ	yake	yake							
1209	111	113	b	2	نَاءٗ	nao	nao							
1210	111	113	b	3	وَكَپِٹَ	wakapiţa	wakapita							
1211	111	113	c	1	نِوَوٖنٖ	niwawene	niwawene							when I had seen them go by
3315	306	314	c	3	نَجَرِبُ	najaribu	najaribu		ajaribu	*				
2655	248	250	c	2	نٖنْدَپٗ	nendapo	nendapo		wendapo	*				
1500	137	139	d	2	وَ	wa	wa							
1152	106	108	b	4	يَلِيٗ	yaliyo	yaliyo							
1154	106	108	c	2	جِنْسِ	jinsi	jinsi							
1149	106	108	b	1	نِ	ni	ni							are indeed exactly correct.
1153	106	108	c	1	نِپَ	nipa	nipa							Tell me how it was
1222	112	114	c	1	هٖلَ	hela	hela					Amu \\Swa{hela} = Mvita \\Swa{hebu}.  Ja'far's invitation to the three men is not as polite as it might be, which partly accounts for their response.		why don't you come and sit down
1213	111	113	d	1	سَلَامُ	salāmu	salamu							I greeted them.
1214	111	113	d	2	كَوَپِسِيَ	kawapisiya	kawapisiya					Amu \\Swa{-pisa salamu} = Mvita \\Swa{-toa salamu}.  The greeting \\Swa{salaam alekum} is used only to groups of more than one person.		
1224	112	114	c	3	مُكٖيْتِ	mukēti	muketi							
1218	112	114	b	1	هِكِ	hiki	hiki							This is high noon --
1220	112	114	b	3	كِپُنْڠُ	kipungu	kipungu							
1221	112	114	b	4	كَٹِ	kaţi	kati					\\Swa{kipungu-kati} = \\Swa{mti-kati, saa sita, jua kali}.		
1230	113	115	a	4	سِ	si	si							
1231	113	115	a	5	زُرِ	zuri	zuri					Even though he is only a child, Ja'far gives advice to the men.		
1233	113	115	b	2	نِ	ni	ni							
1227	113	115	a	1	نَ	na	na							You should know that this [sun] is not good [for you] --
1228	113	115	a	2	هِلِ	hili	hili							
1234	113	115	b	3	خَطَرِ	khaṭari	hatari							
1236	113	115	c	2	زٖؤٗ	zeo	zeo					Amu \\Swa{zeo}, 9/10 = Mvita \\Swa{wakati}.  Compare \\Swa{njeo} in Muyaka.		
1232	113	115	b	1	كُلَنْدَمَ	kulandama	kulandama					\\Swa{-andama} = \\Swa{-fuata}.  See 34d.		to go about in it [for long] is dangerous,
1237	113	115	c	3	سِ	si	si							
1238	113	115	c	4	أَخِرِ	akhiri	ahiri					lit. \\q{end}.		
1235	113	115	c	1	وَلَ	wala	wala							nor is the time so late
1239	113	115	d	1	كَمَ	kama	kama							that you will be delayed [if you stop here]."
1240	113	115	d	2	مُتَلِمَٹِيَ	mutalimaţiya	mutalimatiya					\\Swa{-limatiya} = \\Swa{-chelewa}.  In other words, if they stop for a bit, they will not arrive at their destination so late that they will sleep in the next morning.		
1242	114	116	a	2	كَلِمَ	kalima	kalima							
1309	120	122	b	2	وَكَنِٹِزَمَ	wakaniţizama	wakanitizama							
1244	114	116	b	2	نْيُمَ	nyuma	nyuma							
1311	120	122	c	2	مُكِمْفَهَمَ	mukimfahama	mukimfahama							
1245	114	116	c	1	وَوِلِ	wawili	wawili							Two stood where they were,
1246	114	116	c	2	وَكَسِمَمَ	wakasimama	wakasimama							
1268	116	118	d	2	كُٹْوَمْبِيَ	kuţwambiya	kutwambiya							
1247	114	116	d	1	مْمٗيَ	mmoya	mmoya							and one came up to me.
1249	115	117	a	1	أَكِجَ	akija	akija							When he came over he spoke,
1250	115	117	a	2	أَكَبَئِنِ	akabaini	akabaini							
1295	119	121	a	2	هُفَسِرِ	hufasiri	hufasiri							
1251	115	117	b	1	كَنِؤُزَ	kaniuza	kaniuza							and asked me: Who are you?
1252	115	117	b	2	نْدِوٖ	ndiwe	ndiwe							
1253	115	117	b	3	نَنِ	nani	nani					This is a rude response.  They are suspicious because he is being over-familiar, and yet they do not know him.		
1283	118	120	b	1	نِ	ni	ni							[My religion] is the religion of the Prophet ---
1284	118	120	b	2	دِيْنِ	dı̄ni	dini							
1254	115	117	c	1	أَوْ	aw	au							And why are you concerned about us,
1256	115	117	d	1	خَطَرِ	khaṭari	hatari							and about danger coming to us?
1271	117	119	a	3	مْوَنَ	mwana	mwana							
1272	117	119	a	4	آدَمُ	ãdamu	adamu							
1258	116	118	a	1	سِسِ	sisi	sisi							We will not take your [advice] --
1259	116	118	a	2	هَٹُشِكِ	haţushiki	hatushiki							
1260	116	118	a	3	يَكٗ	yako	yako					We understand \\Swa{maneno}.  This is very rude.  There is a saying: \\Swa{usishike maneno ya wanawake}, \\E{don't take the word of women}.		
1286	118	120	b	4	رَسُوْلِ	rasūli	rasuli							
1261	116	118	b	1	وَلَ	wala	wala							we are not relatives of yours.
1263	116	118	b	3	نْدُڠُ	ndugu	ndugu							
1208	111	113	b	1	هَتَ	hata	hata							until they had passed,
1203	110	112	d	1	مَاءِ	mai	mai							they can tell me [where to find] water."
1264	116	118	b	4	زَكٗ	zako	zako					Again, very rude.		
1265	116	118	c	1	أُئٖٹَيٗ	ueţayo	uetayo							The words you have spoken,
1274	117	119	b	2	مْپٗتٖزَ	mpoteza	mpoteza							
1229	113	115	a	3	يُوَ	yuwa	yuwa		yua					
1618	148	150	d	3	كَئِٹِيَ	kaiţiya	kaitiya		kayitiya					
1277	117	119	c	2	ٹُكُفَهَمُ	ţukufahamu	tukufahamu							
1278	117	119	d	1	كْوَنْدَ	kwanda	kwanda							let us first know your character.
1280	117	119	d	3	طَبِيَ	ṭabiya	tabiya							
1303	119	121	d	1	وٗتٖ	wote	wote							And both of them came over.
1287	118	120	c	1	كِوَ	kiwa	kiwa							if you are an unbeliever,
1281	118	120	a	1	كَوَجِبِشَ	kawajibisha	kawajibisha							I answered them with the words:
1282	118	120	a	2	قَوْلِ	qawli	qauli							
1288	118	120	c	2	وٖوٖ	wewe	wewe							
1289	118	120	c	3	نِ	ni	ni							
1290	118	120	c	4	جَهِلِ	jahili	jahili					\\Swa{jahili}, \\E{someone ignorant of the truth}, in this case of Islam.		
1299	119	121	c	1	نْدٗوْ	ndoo	ndoo							come here, and you Zubeir!
1300	119	121	c	2	وٖوٖ	wewe	wewe							
1296	119	121	b	1	هُمْوِٹَ	humwiţa	humwita							and call: "Abu Bakr,
1291	118	120	d	1	مْبٖلٖ	mbele	mbele							go away from in front of me.
1292	118	120	d	2	زَنْڠُ	zangu	zangu							
1293	118	120	d	3	نٗنْدٗكٖيَ	nondokeya	nondokeya							
1304	119	121	d	2	وَوِلِ	wawili	wawili							
1301	119	121	c	3	نَ	na	na							
1306	120	122	a	1	وَكَيَ	wakaya	wakaya							They came over and stood,
1305	119	121	d	3	وَكَيَ	wakaya	wakaya							
1307	120	122	a	2	وَكَسِمَمَ	wakasimama	wakasimama							
1308	120	122	b	1	أُسٗ	uso	uso							and looked at my face.
1313	120	122	d	2	وَكٖ	wake	wake							
1310	120	122	c	1	كَمْبَ	kamba	kamba							[The first man] said: When you look at him closely,
1320	121	123	c	1	مَمَ	mama	mama					\\Swa{mama!} is an expression of disbelief.		Impossible!, they [said] in amazement,
1321	121	123	c	2	وَمٖتَعَجَبُ	wametaʿajabu	wameta'ajabu							
1362	125	127	a	2	تَرَتِبُ	taratibu	taratibu							
1322	121	123	d	1	كْوَ	kwa	kwa							as they all stared at me.
1323	121	123	d	2	وٗتٖ	wote	wote							
1324	121	123	d	3	هُنَنْڠَلِيَ	hunangaliya	hunangaliya							
1346	123	125	d	1	نَ	na	na							[you] will tell me your name too.
1325	122	124	a	1	هٗىٗ	hoyo	hoyo							This is Abu Bakr, [said the first man],
1326	122	124	a	2	نِ	ni	ni							
1347	123	125	d	2	إِنَ	ina	ina							
1348	123	125	d	3	لَكٗ	lako	lako							
1349	123	125	d	4	نَمْبِيَ	nambiya	nambiya							
1329	122	124	b	1	نَ	na	na							and this is Zubeir.
1330	122	124	b	2	هٗيٗ	hoyo	hoyo							
1331	122	124	b	3	هُئِٹْوَ	huiţwa	huitwa							
1371	126	128	a	1	نِمٖتَنْڠَ	nimetanga	nimetanga							I have wandered about [searching for] water in the scrubland --
1334	122	124	c	2	لَكٗ	lako	lako							
1335	122	124	c	3	هُفَسِرِ	hufasiri	hufasiri					\\Swa{mbona husemi?}, \\E{why aren't you speaking?}.		
1351	124	126	a	2	نِمٖكِرِ	nimekiri	nimekiri							
1336	122	124	d	1	أِنَ	ina	ina							name for us to hear it.
1337	122	124	d	2	ٹُكَلِسِكِيَ	ţukalisikiya	tukalisikiya							
1628	150	152	a	1	أَلِپٗپَٹَ	alipopaţa	alipopata							When she regained her senses
1483	136	138	a	3	سَاءَ	saa	saa							
1338	123	125	a	1	أَكَتَمْكَ	akatamka	akatamka							This gentleman spoke:
1339	123	125	a	2	مْبُجِ	mbuji	mbuji							
1373	126	128	a	3	بَرَنِ	barani	barani							
1363	125	127	b	1	وٖنْدَءٗ	wendao	wendao							Where are you going, stranger?
1340	123	125	b	1	مِمِ	mimi	mimi							I am called Azwaj,
1341	123	125	b	2	هُئِٹْوَ	huiţwa	huitwa							
1342	123	125	b	3	أَزْوَجِ	azwaji	azwaji					\\Swa{azwaji} is literally \\q{a couple}, so this name is strange.		
1364	125	127	b	2	وَپِ	wapi	wapi							
1352	124	126	b	1	نَمِ	nami	nami							to speak my name too.
1365	125	127	b	3	غَرِيْبُ	gharı̄bu	gharibu					\\Swa{gharibu} = \\Swa{mgeni}.		
1343	123	125	c	1	نَمِ	nami	nami							and I now hope
1344	123	125	c	2	سَسَ	sasa	sasa							
1353	124	126	b	2	إِنَ	ina	ina							
1354	124	126	b	3	كُفَسِرِ	kufasiri	kufasiri							
1355	124	126	c	1	مِمِ	mimi	mimi							I am Ja'far,
1356	124	126	c	2	نْدِيٖ	ndiye	ndiye							
1382	127	129	a	1	هُكٗ	huko	huko							In that area you've passed through,
1350	124	126	a	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia					And I told them: I have decided
1357	124	126	c	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
1358	124	126	d	1	وَ	wa	wa							[son] of Lord Ali.
1366	125	127	c	1	هَپٗ	hapo	hapo							Then, Mother, I answered them:
1383	127	129	a	2	مْمٖزٗپِٹَ	mmezopiţa	mmezopita							
1361	125	127	a	1	وَنِؤُزٖ	waniuze	waniuze							And they asked me politely,
1367	125	127	c	2	مَمَ	mama	mama							
1368	125	127	c	3	كَوَجِبُ	kawajibu	kawajibu							
1374	126	128	b	1	نِمٖچٗكَ	nimechoka	nimechoka							I am tired and I still haven't seen any.
1375	126	128	b	2	سِيَؤٗنِ	siyaoni	siyaoni							
1369	125	127	d	1	نِتَكَلٗ	nitakalo	nitakalo							telling them what I had [earlier] intended.
1370	125	127	d	2	كَوَمْبِيَ	kawambiya	kawambiya							
1379	126	128	d	1	سَسَ	sasa	sasa							and now they are bleating for want of water.
1381	126	128	d	3	هَلِيَ	haliya	haliya							
1376	126	128	c	1	مْبُزِ	mbuzi	mbuzi							The goats have eaten all the grass,
1377	126	128	c	2	وَمٖلِشَ	wamelisha	wamelisha							
1378	126	128	c	3	يَنِ	yani	yani							
1385	127	129	b	2	هَمْكُيَكُٹَ	hamkuyakuţa	hamkuyakuta							
1387	127	129	c	2	وَنْڠُ	wangu	wangu							
1384	127	129	b	1	مَاءِ	mai	mai							have you not come upon any water there?
1388	127	129	c	3	وَنَ	wana	wana							
1389	127	129	c	4	نْيٗٹَ	nyoţa	nyota							
1386	127	129	c	1	مْبُزِ	mbuzi	mbuzi							My goats are thirsty --
1392	127	129	d	3	نَمْبِيَ	nambiya	nambiya							
1394	128	130	a	2	قَوْلِ	qawli	qauli							
1390	127	129	d	1	چَمْبَ	chamba	chamba							if you know of [a well], tell me."
1396	128	130	b	2	كِسِمَ	kisima	kisima							
1393	128	130	a	1	وَكَنِجِبُ	wakanijibu	wakanijibu							They answered me with word
1397	128	130	b	3	سِ	si	si							
1398	128	130	b	4	مْبَلِ	mbali	mbali							
1423	130	132	d	1	نِ	ni	ni							[that] it was us who told you [about it].
1424	130	132	d	2	سِسِ	sisi	sisi							
1399	128	130	c	1	لَكِنِ	lakini	lakini							But, [they said,] it is difficult
1400	128	130	c	2	كِنَ	kina	kina							
1401	128	130	c	3	ثَقِلِ	thaqili	thaqili							
1461	134	136	b	2	مَاءِ	mai	mai							
1402	128	130	d	1	هِيٗ	hiyo	hiyo							to put the bucket into it.
1403	128	130	d	2	نْدٗوْ	ndoo	ndoo							
1406	129	131	a	2	مَاءِ	mai	mai							
1407	129	131	a	3	نِ	ni	ni							
1408	129	131	a	4	مَتَمُ	matamu	matamu							
1440	132	134	b	2	بَاءٗ	bao	bao							
1409	129	131	b	1	مْفَنٗ	mfano	mfano							just like Zamzam's,
1410	129	131	b	2	وَ	wa	wa							
1441	132	134	b	3	كَسُكُمَ	kasukuma	kasukuma							
1428	131	133	b	1	هَپٗ	hapo	hapo							and then I followed the path.
1412	129	131	c	1	لَكِنِ	lakini	lakini							but we, you understand,
1413	129	131	c	2	سِسِ	sisi	sisi							
1414	129	131	c	3	فَهَمُ	fahamu	fahamu							
1415	129	131	d	1	كُكُؤٗنْيَ	kukuonya	kukuonya							are afraid to show it to you.
1372	126	128	a	2	مَاءِ	mai	mai							
1333	122	124	c	1	نَوٖ	nawe	nawe							But you have not spoken your
1416	129	131	d	2	هُچٖلٖيَ	hucheleya	hucheleya					\\Swa{tunaogopa}.  Because they are not sure how Ali will react to someone else using the well.		
1417	130	132	a	1	أُوَپٗ	uwapo	uwapo							If you want to risk it,
1418	130	132	a	2	أُمٖخِتَرِ	umekhitari	umehitari							
1419	130	132	b	1	كُكُپٖكَ	kukupeka	kukupeka							we are ready to take you there,
1465	134	136	c	2	نٖنْدَ	nenda	nenda							
1411	129	131	b	3	زَمْزَمُ	zamzamu	zamzamu		Zamuzamu			Zamzam is a sacred spring in Mecca, situated close to the Ka'aba.		
1421	130	132	c	1	وَلَ	wala	wala							but do not mention us,
1422	130	132	c	2	أُسِٹُفَسِرِ	usiţufasiri	usitufasiri							
1442	132	134	c	1	كْوَ	kwa	kwa							They watched me from one side,
1431	131	133	c	1	كْوَ	kwa	kwa							They went into the forest,
1432	131	133	c	2	مْوِٹُنِ	mwiţuni	mwituni							
1433	131	133	c	3	وَكَپِٹَ	wakapiţa	wakapita							
1443	132	134	c	2	كِوَڤُ	kiwavu	kiwavu							
1444	132	134	c	3	كُٹِزَمَ	kuţizama	kutizama					The meaning of this line is unclear. 		
1435	131	133	d	2	وَكَنِتٗلٖيَ	wakanitoleya	wakanitoleya					\\Swa{-toleya}, \\E{give directions by accompanying a person to a good place to give them from}.		
1451	133	135	b	3	سِشُٹُكٖ	sishuţuke	sishutuke							
1436	132	134	a	1	هَتَ	hata	hata							Until, when I came to the well,
1438	132	134	a	3	كِسِمَ	kisima	kisima							
1466	134	136	c	3	زَنْڠُ	zangu	zangu							
1445	132	134	d	1	وَءٗ	wao	wao							looking at me.
1446	132	134	d	2	هُنِئَنْڠَلِيَ	huniangaliya	huniangaliya							
1468	134	136	d	2	نَ	na	na							
1219	112	114	b	2	نِ	ni	ni							
1420	130	132	b	2	ٹُتَيَرِ	ţutayari	tutayari		tu tayari					
1429	131	133	b	2	نْدِيَ	ndiya	ndiya		ndia					
1733	159	161	a	2	نَاصِرِ	nāṣiri	nasiri		Nasiri					
1447	133	135	a	1	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					Ja'far said:
1452	133	135	c	1	كِسِمَ	kisima	kisima							do not cover the well.
1448	133	135	a	2	أَتَمْكٖ	atamke	atamke					Past tense.		
1456	134	136	a	1	سِنَ	sina	sina							I have no fear [in] my heart
1453	133	135	c	2	سِكِفُنِكٖ	sikifunike	sikifunike							
1457	134	136	a	2	خٗوْفُ	khōfu	hofu							
1458	134	136	a	3	مٗيٗ	moyo	moyo							
1454	133	135	d	1	نِتَرُدِ	nitarudi	nitarudi							I will return, I tell you.
1459	134	136	a	4	وَنْڠُ	wangu	wangu							
1460	134	136	b	1	كُنْوَ	kunwa	kunwa							that my goats should drink the water.
1462	134	136	b	3	مْبُزِ	mbuzi	mbuzi							
1463	134	136	b	4	وَنْڠُ	wangu	wangu							
1464	134	136	c	1	كَنٖنَ	kanena	kanena							I said: I am going now,
1469	134	136	d	3	نْدِيَ	ndiya	ndiya							
1471	135	137	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka							
1470	135	137	a	1	يُوَ	yuwa	yuwa		yua					When the sun rose [next day]
1467	134	136	d	1	نِزِتَكَسٖ	nizitakase	nizitakase					\\Swa{-takasa}, \\E{shake}, with \\Swa{nyayo}, \\E{footsteps} understood.  The meaning is to shake the road by travelling a lot.		so that I can herd them along the road."
1473	135	137	b	2	فُرَهَ	furaha	furaha							
1472	135	137	b	1	نِنَ	nina	nina							I was laughing with joy,
1474	135	137	b	3	هُتٖكَ	huteka	huteka							
1501	137	139	d	3	كُوَٹٖكٖيَ	kuwaţekeya	kuwatekeya					i.e. there is no point in the goats running ahead of Ja'far and reaching the well before him, because once they are there they will have to stand and wait for him to get the water for them.		
1475	135	137	c	1	مَلِشٗنِ	malishoni	malishoni							and took [the goats] to the pastures
1476	135	137	c	2	كِوَپٖكَ	kiwapeka	kiwapeka							
1517	139	141	c	3	كَتَمْكَ	katamka	katamka							
1502	138	140	a	1	وَكٖنْدَ	wakenda	wakenda							They went on and stood
1477	135	137	d	1	مُدَ	muda	muda							when the sun was burning hot.
1478	135	137	d	2	وَ	wa	wa							
1480	135	137	d	4	كُوَاءَ	kuwaa	kuwaa					\\Swa{-waa} = \\Swa{-waka}, \\E{burn}.		
1503	138	140	a	2	وَكَسِمَمَ	wakasimama	wakasimama							
1481	136	138	a	1	أَوَلِ	awali	awali							Just before the seventh hour (noon),
1482	136	138	a	2	يَ	ya	ya							
1484	136	138	a	4	سِتَ	sita	sita							
1504	138	140	b	1	كُفُنِشِوٖ	kufunishiwe	kufunishiwe							where the well had been covered over.
1505	138	140	b	2	كِسِمَ	kisima	kisima					i.e. the well has been covered over again, in spite of Ja'far uncovering it the day before (134d) and telling Abu Bakr that there was no point in covering it (135c).  The reason, of course, as we know from the earlier verses is that Ali has come to check on the well, and covered it (53b).		
1485	136	138	b	1	هَپٗ	hapo	hapo							I was then driving the goats along,
1808	166	168	d	1	يٗتٖ	yote	yote							I heard everything.
1404	128	130	d	3	كُئِٹِيَ	kuiţiya	kuitiya					Because Ali has covered it up.		
1439	132	134	b	1	لِپٗ	lipo	lipo							there was a plank there that I pushed away.
1426	131	133	a	1	وَكَنِؤٗنْيَ	wakanionya	wakanionya							They showed me the way,
1427	131	133	a	2	أُسِٹَ	usiţa	usita					\\Swa{usita} = \\Swa{barabara}.		
1405	129	131	a	1	هَيٗ	hayo	hayo							The water is sweet,
1486	136	138	b	2	مْبُزِ	mbuzi	mbuzi							
1487	136	138	b	3	كَوَسُتَ	kawasuta	kawasuta					Amu \\Swa{-suta} = Mvita \\Swa{-shunga, -fukuza}, \\E{shoo animals on, drive animals along}.		
1488	136	138	c	1	نَؤٗنَ	naona	naona					The tense here gives the nuance of \\q{suddenly}.		and I saw that they had broken away from me,
1489	136	138	c	2	وَمٖنِوَتَ	wameniwata	wameniwata							
1526	140	142	c	2	پٖٹٖ	peţe	pete							
1527	140	142	c	3	يَنْڠُ	yangu	yangu							
1506	138	140	c	1	بَاءٗ	bao	bao							I pushed away the plank,
1490	136	138	d	1	هُتُرَ	hutura	hutura					\\Swa{-tura} = \\Swa{-ruka}, \\E{jump, bound}.		running and frisking.
1491	136	138	d	2	نَ	na	na							
1492	136	138	d	3	كُكُمْبِيَ	kukumbiya	kukumbiya							
1507	138	140	c	2	نِكَلِسُكُمَ	nikalisukuma	nikalisukuma							
1494	137	139	a	2	إٖنٖنْدَنِ	enendani	enendani							
1496	137	139	b	2	كِسِمَنِ	kisimani	kisimani							
1518	139	141	d	1	يَ	ya	ya							and addressed him angrily.
1497	137	139	c	1	لَِكِنِ	laikini	laikini							But what good will it do you,
1519	139	141	d	2	غَضَبُ	ghaḍabu	ghadhabu							
1520	139	141	d	3	كَمْوَمْبِيَ	kamwambiya	kamwambiya							
1499	137	139	d	1	نْدِمِ	ndimi	ndimi							when I'm the only one who can draw water for you?
1508	138	140	d	1	نِمٗنٖ	nimone	nimone					Again, the tense gives the nuance of \\Eit{suddenly} -- see 138c.		and I saw someone coming.
1509	138	140	d	2	مْٹُ	mţu	mtu							
1510	138	140	d	3	أَكِيَ	akiya	akiya							
1511	139	141	a	1	أَكِيَ	akiya	akiya							When he arrived he grabbed hold of me
1512	139	141	a	2	أَكَنِشِكَ	akanishika	akanishika					What happens next has already been described in 58 ff.		
1212	111	113	c	2	وَكِنُسَ	wakinusa	wakinusa		wakitusa	*				
1513	139	141	b	1	مَاءٖ	mae	mae		mai	*				before I had drawn any water.
1521	140	142	a	1	نِكَمُحِمِدِ	nikamuḥimidi	nikamuhimidi					cf. 152b. 		I pleaded with God
1514	139	141	b	2	نِسِيَٹٖكَ	nisiyaţeka	nisiyateka							
1536	141	143	c	2	يَ	ya	ya							
1515	139	141	c	1	مَمَ	mama	mama					\\Swa{mama!} -- see 123c.		Gosh!  At that point I spoke,
1516	139	141	c	2	هَپٗ	hapo	hapo							
1528	140	142	d	1	چَنْدَنِ	chandani	chandani							on my finger, and I gave it to him.
1529	140	142	d	2	كَمْتٗلٖيَ	kamtoleya	kamtoleya							
1532	141	143	b	1	كَپِجَ	kapija	kapija							and became anxious.
1533	141	143	b	2	نَ	na	na							
1525	140	142	c	1	كَنِؤُزَ	kaniuza	kaniuza							[The man] asked me about the ring
1534	141	143	b	3	هَلِمَمَ	halimama	halimama							
1530	141	143	a	1	پٖٹٖ	peţe	pete							He looked at the ring
1531	141	143	a	2	أَكَئِٹِزِمَ	akaiţizima	akaitizima							
1537	141	143	c	3	نْيُمَ	nyuma	nyuma					\\Swa{yale mambo yaliyopita zamani}.		
1538	141	143	d	1	يٗتٖ	yote	yote							all of it came back to him.
1539	141	143	d	2	يَكَمْرُدِيَ	yakamrudiya	yakamrudiya							
1543	142	144	b	2	كَئِزَ	kaiza	kaiza							
1540	142	144	a	1	جِنَ	jina	jina							When he asked me my name
1545	142	144	c	2	مِؤُجِزَ	miujiza	miujiza					i.e. unless he really was Ja'far's father.		
1541	142	144	a	2	أَلِپٗنِؤُلِزَ	aliponiuliza	aliponiuliza							
1547	142	144	d	2	نَ	na	na							
1544	142	144	c	1	أَكَنِپَ	akanipa	akanipa							He told me things he could not have known [unless he was my father]
1548	142	144	d	3	كُنِپِجِيَ	kunipijiya	kunipijiya					\\Swa{-piga mifano}, \\E{give examples}.		
1921	178	180	a	1	أَكَمُؤُزَ	akamuuza	akamuuza							The Trustworthy One asked:
1550	143	145	a	2	صُوْرَ	ṣūra	sura							
1551	143	145	a	3	زَكٗ	zako	zako							
1726	158	160	b	3	مفَنٗ	mfano	mfano							
1578	145	147	b	1	نِمٖكُپَ	nimekupa	nimekupa							I have completed it so that you may understand.
1579	145	147	b	2	أُفَهَمُ	ufahamu	ufahamu							
1552	143	145	b	1	نَ	na	na							and the characteristics of your house.
1553	143	145	b	2	صِفَ	ṣifa	sifa							
1554	143	145	b	3	زَ	za	za							
1555	143	145	b	4	نْيُمْبَ	nyumba	nyumba							
1556	143	145	b	5	يَكٗ	yako	yako							
1604	147	149	c	1	نَمِ	nami	nami							And then [the people] in my town
1595	146	148	d	1	نَ	na	na							and give me your blessing.
1557	143	145	c	1	هَپٗ	hapo	hapo							Then I spoke
1558	143	145	c	2	كَئٖٹَ	kaeţa	kaeta							
1559	143	145	c	3	تَمْكٗ	tamko	tamko							
1596	146	148	d	2	رَضِ	raḍi	radhi							
1597	146	148	d	3	كُنِوٖيَ	kuniweya	kuniweya							
1580	145	147	c	1	تٖنَ	tena	tena							And via my teacher's [house]
1560	143	145	d	1	إِنَ	ina	ina							and told him my name.
1561	143	145	d	2	لَنْڠُ	langu	langu							
1562	143	145	d	3	كَمْوَمْبِيَ	kamwambiya	kamwambiya							
1581	145	147	c	2	نَ	na	na							
1582	145	147	c	3	كْوَ	kwa	kwa							
1564	144	146	a	2	نْيَكَ	nyaka	nyaka							
1583	145	147	c	4	مْوَلِمُ	mwalimu	mwalimu							
1566	144	146	b	2	هَكِكَ	hakika	hakika							
1584	145	147	d	1	نِمٖرُدِ	nimerudi	nimerudi							I came back to tell him [about it].
1567	144	146	c	1	نِ	ni	ni							it is nine, and no mistake;
1569	144	146	c	3	زِسِزٗ	zisizo	zisizo							
1570	144	146	c	4	شَكَ	shaka	shaka							
1585	145	147	d	2	كُمْوَمْبِيَ	kumwambiya	kumwambiya							
1571	144	146	d	1	نَ	na	na							and you should remember the number.
1572	144	146	d	2	وٖوٖ	wewe	wewe							
1573	144	146	d	3	تَرٖهٖ	tarehe	tarehe							
1574	144	146	d	4	ٹِيَ	ţiya	tiya					= \\Swa{kumbuka tarehe}.		
1605	147	149	c	2	كِشَ	kisha	kisha							
1606	147	149	c	3	مُئِ	mui	mui							
1575	145	147	a	1	خَبَرِ	khabari	habari							The news about him is finished.
1576	145	147	a	2	زَكٖ	zake	zake							
1577	145	147	a	3	تِمَمُ	timamu	timamu							
1586	146	148	a	1	نِمٖمُؤَڠَ	nimemuaga	nimemuaga							I have said farewell to him.
1587	146	148	a	2	كْوَ	kwa	kwa							
1607	147	149	c	4	وَنڠُ	wangu	wangu							
1598	147	149	a	1	تٖنَ	tena	tena							And intercede for me to God
1590	146	148	b	2	نِ	ni	ni							
1591	146	148	b	3	سَفَرِ	safari	safari							
1380	126	128	d	2	كُيُتَ	kuyuta	kuyuta		kwa nyota	*				
1594	146	148	c	3	جَبَارِ	jabāri	jabari		Jabari					
1593	146	148	c	2	كْوَ	kwa	kwa							
1612	148	150	b	1	مَمَكٖ	mamake	mamake							his mother could not bear it.
1601	147	149	b	1	ٹُپٖنْدَنٖ	ţupendane	tupendane							that my father and I will get along well together.
1602	147	149	b	2	نَ	na	na							
1603	147	149	b	3	بَبَنْڠُ	babangu	babangu							
1613	148	150	b	2	أَسِحِمِلِ	asiḥimili	asihimili							
1608	147	149	d	1	تَكُيَ	takuya	takuya					i.e. he will return to his town for periodic visits.		I will come and visit them.
1616	148	150	d	1	كْوَ	kwa	kwa							and beat herself with her fists.
1611	148	150	a	2	قَوْلِ	qawli	qauli							
1614	148	150	c	1	أَكَتَرَدَدِ	akataradadi	akataradadi					\\Swa{taradadi} = \\Swa{-badilika}.		She went out of her mind
1615	148	150	c	2	عَقِلِ	ʿaqili	'aqili							
1617	148	150	d	2	مَكٗنْدٖ	makonde	makonde							
1620	149	151	a	2	كَيِنْڠُشَ	kayingusha	kayingusha							
1621	149	151	b	1	تِيَتِ	tiyati	tiyati							she hurled herself to the ground,
1979	183	185	b	2	نَ	na	na							
1523	140	142	b	1	كُنٖٹٖيَ	kuneţeya	kuneteya							to send me my father.
1524	140	142	b	2	بَبَنْڠُ	babangu	babangu							
1724	158	160	b	1	وٗتٖ	wote	wote							all three of them as equals.
3313	306	314	c	1	أَوْ	aw	au							and let the person try [it],
1625	149	151	c	3	كَمْڤِشَ	kamvisha	kamvisha					The \\Swa{kanga} is a wraparound garment, which is knotted, not sewn closed, so if someone is ill, tossing and turning, it can become undone.  Ja'far holds it on and re-knots it.  Similarly, it is considered unwise for a man to go into the kitchen, because while the woman is working there her \\Swa{leso}, \\E{upper garment}, may become undone.		
1627	149	151	d	2	كُمْسٗمٖيَ	kumsomeya	kumsomeya					This is somewhat exaggerated in this situation.  The point is that her behaviour makes her look as if she is ill, and in such a case a common practice is to read to the sick person from the Qur'an, especially Chapter 36, \\Eit{Ya Sin}.  The main message of this chapter is that human beings are created by God, and wholly dependent upon him.  Reading it comforts the sick person and their relatives, and is a sign of sympathy.  Reciting the Word of God has beneficial effects in general.  For instance, a rich man may pay a \\Swa{mwalimu}, \\E{Islamic scholar} to read the Qur'an over the man's wife every Friday, to keep her safe.  If someone is going on a long journey, wellwishers may pass verses from the Qur'an around them while saying \\Swa{Ngwakuhifadhi}, \\E{may God protect you}, and then give them the verses to protect them.		
1623	149	151	c	1	هَتَ	hata	hata							so that her clothing came undone,
1626	149	151	d	1	إِكَوَ	ikawa	ikawa							as if she was being read over.
1671	153	155	d	4	زٖنْڠٖيَ	zengeya	zengeya					\\Swa{-zengeya} = \\Swa{-tafuta}.  She is telling him: \\Swa{fanya bidii kupata radhi ya Ali}, \\E{make an effort to secure Ali's blessing}.		
1629	150	152	a	2	فَهَمُ	fahamu	fahamu							
1630	150	152	b	1	كَمُحِمِدِ	kamuḥimidi	kamuhimidi							she thanked the Generous One,
1654	152	154	c	1	نَاوٖ	nāwe	nawe							And that you should be sensible
1655	152	154	c	2	أُوٖ	uwe	uwe							
1632	150	152	c	1	كِشَ	kisha	kisha							and then she spoke
1633	150	152	c	2	أَكَتَكَلَمُ	akatakalamu	akatakalamu							
1656	152	154	c	3	نَ	na	na							
1657	152	154	c	4	فِكِرَ	fikira	fikira					In other words, \\Swa{siwe kama ng'ombe} -- don't act stupidly.		
1635	150	152	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya							
1692	155	157	c	3	جِتَهِدِ	jitahidi	jitahidi							
1687	155	157	b	1	هَنَ	hana	hana							there is no doubt that he is better than you,
1639	151	153	a	4	وَنْڠُ	wangu	wangu							
1641	151	153	b	2	مْوَنَنْڠُ	mwanangu	mwanangu							
1681	154	156	d	1	كْوَكٗ	kwako	kwako							
1672	154	156	a	1	إِتُنْدٖ	itunde	itunde							Take care that you be humble
1642	151	153	c	1	نَ	na	na							and the children of my friends,
1643	151	153	c	2	وَٹٗٹٗ	waţoţo	watoto							
1644	151	153	c	3	وَ	wa	wa							
1645	151	153	c	4	وٖنْزَنْڠُ	wenzangu	wenzangu					It would be selfish to pray only for yourself or your own children.  The proper thing is to pray for others too, e.g. Muslims, or unbelievers who will become Muslims.		
1660	153	155	a	1	مِمِ	mimi	mimi							Even if you were to anger me
1661	153	155	a	2	أُيَپٗنِؤُذِ	uyaponiudhi	uyaponiudhi							
1646	151	153	d	1	حِفَظِنِ	ḥifaẓini	hifadhini							place them for me in your care.
1434	131	133	d	1	مْبِيٗ	mbiyo	mbiyo		mbee	*				and directed me onwards.
1609	147	149	d	2	كُوَنْڠَلِيَ	kuwangaliya	kuwangaliya		kuangaliya					
1610	148	150	a	1	أَكِسِكِيَ	akisikiya	akisikiya		akisikia					When she heard these words
1619	149	151	a	1	كَئِٹُنْدَ	kaiţunda	kaitunda		kayitunda			Amu \\Swa{-tunda} = Mvita \\Swa{-twaa}.		She took and threw herself down,
1622	149	151	b	2	أَكَئِرُشَ	akairusha	akairusha		akayirusha			She does not know what she is doing.		
1624	149	151	c	2	نْڠُوٗ	nguwo	nguwo		nguo					
1631	150	152	b	2	كَرِيْمُ	karı̄mu	karimu		Karimu					
1935	179	181	b	2	حَبِيْبُ	ḥabı̄bu	habibu		Habibu					
1647	151	153	d	2	نِٹِلِيَ	niţiliya	nitiliya					In other words, she is giving Ja'far her \\Swa{radhi} -- see 83c.  In order to leave, Ja'far must have this.  Hence the verse: \\Swa{mwate asumbuke / hana radhi ya mamake}, \\E{let him remain troubled / he does not have the blessing of his mother}.  Likewise, an unsuccessful person may be referred to as someone \\Swa{asiyekupata radhi ya babake}, \\E{sho did not get his father's blessing}.  However, \\Swa{watoto wa jeuri} \\E{cheeky children}, will say things like \\Swa{radhi yako kaiweke mbuyuni}, \\E{stick your blessing in a baobab tree}. 		
1648	152	154	a	1	إٖنٖنْدَ	enenda	enenda							[To Ja'far she said:] Off you go -- no harm will come to you.
1649	152	154	a	2	هُنَ	huna	huna							
1650	152	154	a	3	مَضَرَ	maḍara	madhara							
1673	154	156	a	2	أُوٖ	uwe	uwe							
1674	154	156	a	3	نْيَؤٗنِ	nyaoni	nyaoni					lit. \\q{take care that you are under his feet}.  That is, be humble, and also obedient.		
1653	152	154	b	3	مَرَ	mara	mara							
1662	153	155	b	1	سِتٗكُوَ	sitokuwa	sitokuwa							I would not hold it against you.
1663	153	155	b	2	نَ	na	na							
2054	190	192	d	1	نِ	ni	ni							I have told you everything now.
1588	146	148	a	3	خٖيْرِ	khēri	heri							
1665	153	155	c	1	إِوَپٗ	iwapo	iwapo							If you want a blessing [from him],
1666	153	155	c	2	وَتَكَ	wataka	wataka							
1667	153	155	c	3	رَضِ	raḍi	radhi							
1682	154	156	d	2	لِوٖ	liwe	liwe							without demur.
1725	158	160	b	2	وَٹَٹُ	waţaţu	watatu							
1668	153	155	d	1	نَ	na	na							then go and visit Ali.
1669	153	155	d	2	كْوَ	kwa	kwa							
1675	154	156	b	1	كْوَ	kwa	kwa							and subservient to your father,
1676	154	156	b	2	بَبَكٗ	babako	babako							
1677	154	156	b	3	أُوٖ	uwe	uwe							
1678	154	156	b	4	تِنِ	tini	tini							
1688	155	157	b	2	بُدِ	budi	budi							
1689	155	157	b	3	كُكُزِدِ	kukuzidi	kukuzidi					i.e. it goes without saying that \\Swa{anakushinda}, \\E{he is superior to you}.		
1679	154	156	c	1	نَ	na	na							and [accept] whatever he says to you
1680	154	156	c	2	أَتَكَلٗبَئِنِ	atakalobaini	atakalobaini					\\Swa{-baini}, \\E{say}.		
1684	155	157	a	1	نَ	na	na							And the Prophet Muhammad,
1685	155	157	a	2	مْٹُمٖ	mţume	mtume							
1686	155	157	a	3	مُحَمَدِ	muḥamadi	muhamadi							
1694	155	157	d	2	أُپَٹٖ	upaţe	upate							
1695	155	157	d	3	وَصِيَ	waṣiya	wasiya					\\Swa{waṣia} is often translated as \\q{last will}, but its wider meaning is \\q{wisdom}, or \\q{dos and donts}.		
1697	156	158	a	2	بِنْتِ	binti	binti							
2634	246	248	d	3	نَمْبِيَ	nambiya	nambiya					Ali is trying to mollify his wife.		
1693	155	157	d	1	نْڠَاءَ	ngaa	ngaa					\\Swa{ngaa}, \\E{even without} is similar to \\Swa{ingawa}, \\E{although, even though}, but distinct from it.  Compare: \\Swa{ngaa hungii ndani ukauliza}, \\E{even without getting in you can ask, even if you don't get in you can ask} and \\Swa{ingawa umengia ndani, lakini ...}, \\E{even though you get in, yet ..., even if you've got in, still ...}.  In this line, the meaning is that even if Ja'far picks up little or no wisdom, he should still attempt to do it.		to gain even a little wisdom [from him].
1702	156	158	b	4	ثَوَابُ	thawābu	thawabu					i.e. \\Swa{vizuri, kama mama wa kambo}, \\E{nicely, as with a stepmother}.  Because Ja'far will be living in Ali's house, he must be a polite guest.		
1704	156	158	c	2	أُوٖ	uwe	uwe							
1699	156	158	b	1	كٖتِ	keti	keti							stay with her politely;
1705	156	158	c	3	نَ	na	na							
1706	156	158	c	4	أَدَبُ	adabu	adabu							
1703	156	158	c	1	كْوَكٖ	kwake	kwake							be courteous towards her,
1707	156	158	d	1	أُمْطِيْ	umṭii	umtii							obey her and be humble towards her.
1708	156	158	d	2	نَ	na	na							
1709	156	158	d	3	كُمْوَنْڠُكِيَ	kumwangukiya	kumwangukiya					\\Swa{-angukia}, \\E{fall down before, prostrate oneself before}, = \\Swa{-sujudia}, i.e. submit.  This would normally be humiliating (the only time you prostrate yourself should be before God), but Ja'far's mother is impressing on him the need for humility.		
1710	157	159	a	1	أَكَتٗكَ	akatoka	akatoka							Ja'far arose [the next morning]
1750	160	162	d	1	نَتَكَ	nataka	nataka					Nasir considers the horse an exotic animal, which suggests he comes from an isolated village.  People may say: \\Swa{yeyeni maskini ameona ngamia -- labda anakaa mji mdogo}, \\E{that poor fellow there has just seen a camel [for the first time] -- he must live in a little village}.		I would like to see one.
1712	157	159	b	1	نَ	na	na							and a meal was ready.
1713	157	159	b	2	چَكُلَ	chakula	chakula					A meal with someone before they go on a journey is traditional, but  \\Swa{watu wakenda mbali, chakula hukosa baraka}, \\E{if people are going far away, food lacks savour, lit. blessing}.		
1651	152	154	b	1	نِرَضِ	niraḍi	niradhi		ni radhi					I bless you a thousand times.
1652	152	154	b	2	أَلْفُ	alfu	alfu		alifu					
1711	157	159	a	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
1766	162	164	b	2	أَمْفُوَتٖ	amfuwate	amfuwate		amfuate					
2635	247	249	a	1	فَتُمَ	fatuma	fatuma		Fatuma					Fatima spoke these words:
1640	151	153	b	1	نِنُصُرِيَ	ninuṣuriya	ninusuriya		ninusuria					protect my child for me,
1700	156	158	b	2	نَاءٖ	nae	nae		naye					
1714	157	159	b	3	كِتَيَرِ	kitayari	kitayari		ki tayari					
1751	160	162	d	2	كُمْوَنْڠَلِيَ	kumwangaliya	kumwangaliya							
1734	159	161	b	1	يٖؤٗ	yeo	yeo							Goodbye today, my brother --
1735	159	161	b	2	نْدُيَنْڠُ	nduyangu	nduyangu							
1736	159	161	b	3	كْوَ	kwa	kwa							
1715	157	159	c	1	كَلَ	kala	kala							He ate with his brother Nasir
1716	157	159	c	2	نَ	na	na							
1717	157	159	c	3	نْدُيٖ	nduye	nduye							
1659	152	154	d	2	نِمٖكُؤُصِيَ	nimekuuṣiya	nimekuusiya							
1737	159	161	b	4	خٖيْرِ	khēri	heri							
1719	157	159	d	1	نَ	na	na							and then his teacher arrived [while they were eating].
1720	157	159	d	2	مْوَلِمُ	mwalimu	mwalimu							
1721	157	159	d	3	كَتٗكٖيَ	katokeya	katokeya							
1722	158	160	a	1	وَكَتَنْڠَنْيَ	wakatanganya	wakatanganya							They all put their hands [in the communal bowl]
1723	158	160	a	2	مِكٗنٗ	mikono	mikono					They all eat from the same bowl, since this is a special day -- Ja'far is leaving.  When you do not know if you will meet again, sharing a meal brings a special feeling of closeness.		
1738	159	161	c	1	تَكَپٗرُدِ	takaporudi	takaporudi							when I come back from my journey
1739	159	161	c	2	سَفَرِ	safari	safari							
1760	161	163	d	1	صَدَكَ	ṣadaka	sadaka					Contrast \\Swa{sadaka} with \\Swa{kafara}, \\E{expiatory offering} -- the former is given before doing something, the latter after doing something.  The purpose of the \\Swa{sadaka} is to protect Ja'far.  If a person is ill, you might put money under his pillow, or rice under his bed, and then give that away as alms, in the hope that he will get better.  Or to bring blessings to someone, you might circle them three times with the \\Swa{sadaka}, and then give it away (compare the note to 151d).		and gave alms for him.
1728	158	160	c	2	نَ	na	na							
1729	158	160	c	3	مَنٖنٗ	maneno	maneno							
1740	159	161	d	1	تَمَشَ	tamasha	tamasha					i.e. \\Swa{zawadi}, \\E{a present}.		I will bring you something nice.
1741	159	161	d	2	تَكُلٖٹٖيَ	takuleţeya	takuleteya							
1730	158	160	d	1	نْدُڠُيٖ	nduguye	nduguye							speaking to his brother:
1761	161	163	d	2	كَمْتٗلٖيَ	kamtoleya	kamtoleya							
1732	159	161	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							He told Nasir:
2636	247	249	a	2	كٖٹَ	keţa	keta							
1752	161	163	a	1	كِشَ	kisha	kisha							When he had finished, then [Ja'far] spoke,
1742	160	162	a	1	أَكَمْجِبُ	akamjibu	akamjibu							[Nasir] answered him quickly:
1743	160	162	a	2	أُپٖسِ	upesi	upesi							
1754	161	163	a	3	كَتَمْكَ	katamka	katamka							
1745	160	162	b	2	نَ	na	na							
1746	160	162	b	3	فَرَسِ	farasi	farasi							
1747	160	162	c	1	نْيَمَ	nyama	nyama							I don't know [what] that animal [looks like],
1748	160	162	c	2	هُيٗ	huyo	huyo					Mvita \\Swa{huyo} = Amu \\Swa{hoyo}.		
1749	160	162	c	3	سِمُئِسِ	simuisi	simuisi					\\Swa{-isa}, \\E{not know}, is only used in the negative.		
1755	161	163	b	1	أَكَمْبَ	akamba	akamba							and said: Mother, I am leaving.
1756	161	163	b	2	مَمَ	mama	mama							
1757	161	163	b	3	هُتٗكَ	hutoka	hutoka					= \\Swa{natoka}.		
1770	162	164	d	2	أَكِمُؤٗمْبٖيَ	akimuombeya	akimuombeya							
1758	161	163	c	1	مَمَكٖ	mamake	mamake							His mother got up
1759	161	163	c	2	أَكَئِنُكَ	akainuka	akainuka							
1762	162	164	a	1	هَپٗ	hapo	hapo							Then his mother went out [after him],
1763	162	164	a	2	مَمَكٖ	mamake	mamake							
1764	162	164	a	3	أَتٗكٖ	atoke	atoke					Past tense.		
1765	162	164	b	1	إٖنٖنْدٖ	enende	enende					= \\Swa{alienda}.		she went and followed him,
1768	162	164	c	2	مَٹٖ	maţe	mate					Making gentle spitting sounds (\\Eit{pp-pp-pp}) at him, \\Swa{-mtia mate}, signifies that she thinks he is \\Swa{sharifu}, \\E{noble}, and to be admired.		
1775	163	165	b	2	أَهِتِمُ	ahitimu	ahitimu					\\Swa{kumaliza Kurani}.		
1771	163	165	a	1	هُيٗ	huyo	huyo							[Then she said:] Teacher, Nasir here,
1773	163	165	a	3	مْوَلِمُ	mwalimu	mwalimu							
1777	163	165	c	2	نَ	na	na					This knowledge would include detailed exegesis of the Qur'an, intricate knowledge of \\Swa{fikhri}, \\E{grammar}, awareness of religious ritual, etc.		
2169	201	203	c	2	نِكٗ	niko	niko							
1701	156	158	b	3	كْوَ	kwa	kwa							
1549	143	145	a	1	أُنِپِيٖ	unipiye	unipiye		unipee	*				He described your features to me,
3248	305	307	d	4	مَمٗيَ	mamoya	mamoya		mmoya	*				
3298	304	312	d	1	مٗيٗ	moyo	moyo		moya	*				not omitting one.
1718	157	159	c	4	نَاصِرِ	nāṣiri	nasiri		Nasiri					
1744	160	162	b	1	نِئٖٹٖيَ	nieţeya	nieteya		nietea					Bring me a horse --
1767	162	164	c	1	أَكِمْٹٖمٖيَ	akimţemeya	akimtemeya		akimtemea					spitting at him,
1769	162	164	d	1	مْنْڠُ	mngu	mngu		Mngu					praying to God for him.
1772	163	165	a	2	نَاصِرِ	nāṣiri	nasiri		Nasiri					
2166	201	203	b	2	نْدِيَ	ndiya	ndiya		ndia					
1589	146	148	b	1	أَسُبهِ	asubhi	asubhi		asubuhi					[tomorrow] morning I will set off [to go to my father].
1774	163	165	b	1	مْسٗمٖشٖ	msomeshe	msomeshe					Ja'far's mother asks the \\Swa{mwalimu} to \\q{cause Nasir to read}, i.e. teach him how to read the Qur'an.  Being able to read the Qur'an, even without understanding the detailed meaning of the words, is considered a first step in learning.  The student will attend the \\Swa{chuo}, \\E{school}, for 3-4 years, and while he is there the \\Swa{mfunzi} has wide latitude in terms of discipline -- the student may be chastised with a \\Swa{kikoto}, \\E{whip made of plaited grass}, made by the student himself, if he makes mistakes, and it is said that the only constraint on the \\Swa{mfunzi} is that \\Swa{asaze mifupa na mato}, \\E{he should omit [damaging] the bones and the eyes}.  The books used will all have brown or tan covers, because white is considered harmful.  Taha Hussein's \\E{The Stream of Days} includes a passage on his similar schooling in Egypt in the early 1900s.		teach him to read [the Qur'an] so that he may complete it.
1778	163	165	c	3	عِلِمُ	ʿilimu	'ilimu							
1780	163	165	d	2	يَكٗ	yako	yako							
1776	163	165	c	1	أُمْفُنْدٖ	umfunde	umfunde							Teach him knowledge.
1781	163	165	d	3	تَكْوٖٹٖيَ	takweţeya	takweteya							
1779	163	165	d	1	عَادَ	ʿāda	'ada					These fees will be paid in stages once certain portions of the Qur'an have been learned, and can be paid in kind (e.g. in food items such as \\Swa{bisi}, \\E{roasted corn}).		I will pay your fee.
1782	164	166	a	1	أَكِتٗكَ	akitoka	akitoka							As Ja'far was setting off
1809	166	168	d	2	نَلِيَسِكِيَ	naliyasikiya	naliyasikiya							
1784	164	166	b	1	هَپٗ	hapo	hapo							then Nasir began to cry.
1847	170	172	d	1	هَمُنِؤٗنِ	hamunioni	hamunioni							you have never seen me cry.
1787	164	166	c	1	مَمَكٖ	mamake	mamake							His mother said:
1788	164	166	c	2	أَكَفَسِرِ	akafasiri	akafasiri							
1844	170	172	c	1	سِكُ	siku	siku							all the days of my life
1825	168	170	c	1	أَوْ	aw	au							Did we not agree
1789	164	166	d	1	أُسِكُ	usiku	usiku							[ja'far] will be back by nightfall.
1790	164	166	d	2	أَتَرٖجٖيَ	atarejeya	atarejeya					She tries to comfort the child by saying things like \\Swa{hendi mbali -- atakuja atakuletea peremendi}, \\E{he is not going far -- he will come back and bring you sweets}.		
1810	167	169	a	1	أَوْ	aw	au							Or if he is going to the pastures,
1811	167	169	a	2	وٖنْدَ	wenda	wenda							
1812	167	169	a	3	مَتُنْڠَنِ	matungani	matungani							
1793	165	167	b	1	نَمُيُوَ	namuyuwa	namuyuwa							I know he is going to Mecca.
1794	165	167	b	2	إٖنْدَ	enda	enda							
1796	165	167	c	1	كُتُنْڠَ	kutunga	kutunga					\\Swa{-tunga}, \\E{graze}.		If he were going [to take the animals] to graze
1797	165	167	c	2	هَنْڠَلِتٗكَ	hangalitoka	hangalitoka							
1799	165	167	d	2	نْدِيَ	ndiya	ndiya					\\Swa{kama hakuona ndia}, as if he does not know the right road, i.e. he is going in a completely different direction to his normal route.		
1800	166	168	a	1	أَوْ	aw	au							For was I not there yesterday
1801	166	168	a	2	يَنَ	yana	yana							
1802	166	168	a	3	سِكُوَكٗ	sikuwako	sikuwako							
1834	169	171	c	1	هُنَ	huna	huna							You have no cause to be hurt
1803	166	168	b	1	أُكِمْوَمْبِيَ	ukimwambiya	ukimwambiya							when you said him [those] words to him:
1804	166	168	b	2	تَمْكٗ	tamko	tamko							
1835	169	171	c	2	هَتَ	hata	hata							
1815	167	169	c	1	سِكُ	siku	siku							I have never seen him [do that before].
1805	166	168	c	1	كَوَڠٖ	kawage	kawage							"Go and say goodbye to your friends."
1806	166	168	c	2	وٖنْدَنِ	wendani	wendani							
1807	166	168	c	3	وَكٗ	wako	wako							
1827	168	170	d	1	مَنٖنٗ	maneno	maneno							on the things I said to you?
1828	168	170	d	2	نَلٗكْوَمْبِيَ	nalokwambiya	nalokwambiya					Refers to 174-5.  \\Swa{amkumbusha, umesahau ...}, \\E{he reminds him, you have forgotten ...}.  He says something like: \\q{You said you wanted a horse -- how can I get one if I don't go?}		
1817	167	169	c	3	سِمُؤٗنِ	simuoni	simuoni							
1818	167	169	d	1	هَتَ	hata	hata							So explain these [things] to me.
1819	167	169	d	2	هَيٗ	hayo	hayo							
1820	167	169	d	3	كُنَمْبِيَ	kunambiya	kunambiya							
1836	169	171	c	3	كُؤُذِكَ	kuudhika	kuudhika					\\Swa{haina maana}, \\E{there's no sense}.		
1822	168	170	a	2	كَبَئِنِ	kabaini	kabaini					\\Swa{-baini}, lit. \\E{explain}.		
1823	168	170	b	1	بَسِ	basi	basi							So why are you crying?
1830	169	171	a	2	كَمَ	kama	kama							And if you are not pleased,
1831	169	171	a	3	هُكِرِضِكَ	hukiriḍika	hukiridhika							
1845	170	172	c	2	زٗتٖ	zote	zote							
1841	170	172	b	1	سِكُئِزَ	sikuiza	sikuiza							I don't disagree with these [plans] of yours --
1783	164	166	a	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
1785	164	166	b	2	كَلِيَ	kaliya	kaliya		kalia					
1852	171	173	a	4	عَقِلِ	ʿaqili	'aqili		akili					
1856	171	173	c	3	مَتُلِ	matuli	matuli		matuli-tuli					
1832	169	171	b	1	نَمْبِيَ	nambiya	nambiya							tell me before I go.
1833	169	171	b	2	نِسِيَتٗكَ	nisiyatoka	nisiyatoka							
1842	170	172	b	2	هَيٗ	hayo	hayo							
1837	169	171	d	1	سِكِتِكٗ	sikitiko	sikitiko							and make me feel sad.
1838	169	171	d	2	كُنِٹِيَ	kuniţiya	kunitiya							
1843	170	172	b	3	يَكٗ	yako	yako							
1839	170	172	a	1	أَكَجِبُ	akajibu	akajibu							[Nasir] answered with the words
1840	170	172	a	2	تَمْكٗ	tamko	tamko							
1848	170	172	d	2	كُلِيَ	kuliya	kuliya							
1846	170	172	c	3	نِكٗ	niko	niko							
1850	171	173	a	2	هَيَ	haya	haya							
1851	171	173	a	3	نْدَ	nda	nda							
1855	171	173	c	2	كُوَ	kuwa	kuwa							
1849	171	173	a	1	سَسَ	sasa	sasa							Now, these [things] are [a matter of] commonsense,
1853	171	173	b	1	نِمٖزٗيَتَأَمَلِ	nimezoyataamali	nimezoyataamali							[the things] which I observed.
1857	171	173	c	4	تُلِ	tuli	tuli		~					
1859	171	173	d	2	زَكٗ	zako	zako							
1854	171	173	c	1	نَ	na	na							I am sad [because]
1860	171	173	d	3	زَ	za	za							
1858	171	173	d	1	زٖءٗ	zeo	zeo							it is time for you to go.
2637	247	249	a	3	قَوْلِ	qawli	qauli							
1861	171	173	d	4	كُئِنُكِيَ	kuinukiya	kuinukiya					\\Swa{wakati wako wa kutoka}.  Being sad is natural for Nasir -- his brother has stopped being a playmate and has now become a young man.  		
1903	176	178	a	1	أَكَكٖتِ	akaketi	akaketi							Ja'far sat down
1862	172	174	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							He told his brother:
1863	172	174	a	2	نْدُيَكٖ	nduyake	nduyake					See 170d.		
1887	174	176	c	1	سَاءَ	saa	saa							and at four o'clock
1888	174	176	c	2	كُوِ	kuwi	kuwi							
1889	174	176	c	3	إِكِكٗمَ	ikikoma	ikikoma							
1865	172	174	b	2	إِنُكَ	inuka	inuka							
1866	172	174	b	3	أُتٗكٖ	utoke	utoke							
1868	172	174	c	2	أَتَمْكٖ	atamke	atamke							
1869	172	174	d	1	كْوَنْدَ	kwanda	kwanda							First intercede to God for me.
1871	172	174	d	3	نِؤٗمْبٖيَ	niombeya	niombeya							
1873	173	175	a	2	أَكَبَئِنِ	akabaini	akabaini							
1892	174	176	d	3	أَمٖنْڠِيَ	amengiya	amengiya							
1874	173	175	b	1	أَتَكُپٖكَ	atakupeka	atakupeka					\\Swa{-peka} = \\Swa{-peleka}, \\E{send}.  In other words, may God make it possible for you to go.		May Providence keep you
1876	173	175	c	1	سَلَامَ	salāma	salama							safe and sound,
1877	173	175	c	2	سَلِمِيْنِ	salimı̄ni	salimini							
1913	177	179	a	2	كَؤُٹِزَمَ	kauţizama	kautizama					= \\Swa{}akauona.		
1894	175	177	a	2	أَلِپٗجِلِسِ	alipojilisi	alipojilisi					\\Swa{-jilisi} = \\Swa{-keti}.		
1878	173	175	d	1	كْوَ	kwa	kwa							in health and free from affliction.
1872	173	175	a	1	نَاصِرِ	nāṣiri	nasiri		Nasiri					Nasir said:
1875	173	175	b	2	مَنَنِ	manani	manani		Manani					
2654	248	250	c	1	نَوٖ	nawe	nawe		naye	*				When [Ali] went to war
1882	174	176	a	1	هَپٗ	hapo	hapo							Then [Ja'far] set out,
1884	174	176	a	3	كَيَنْدَمَ	kayandama	kayandama					\\Swa{fuata ndia}.		
2344	219	221	a	2	أَكَتَمْكَ	akatamka	akatamka							
1792	165	167	a	2	أَكَتَمْكَ	akatamka	akatamka							
1905	176	178	b	1	أَكَمُؤٗنَ	akamuona	akamuona							and saw Zubayr --
1885	174	176	b	1	كِنٖنْدَ	kinenda	kinenda							going on, not stopping, 
1886	174	176	b	2	كُتٗسِمَمَ	kutosimama	kutosimama							
1895	175	177	b	1	كْوَ	kwa	kwa							he did not know his father's home.
1896	175	177	b	2	بَبَكٖ	babake	babake							
1897	175	177	b	3	هَكُئِسِ	hakuisi	hakuisi							
1898	175	177	c	1	كَمْبَ	kamba	kamba							He said: I will not [try to] guess the road,
1901	175	177	d	1	كْوَنْدَ	kwanda	kwanda							first I will sit myself down.
1907	176	178	c	1	وٖنْدٖمٖنٖ	wendemene	wendemene							he was walking along with the Bearer of Good News --
1915	177	179	b	2	أَكَسِمَمَ	akasimama	akasimama							
1910	176	178	d	1	مِكٗنٗ	mikono	mikono							and Ja'far waved to him.
1879	173	175	d	2	عَفِيَ	ʿafiya	'afiya		afia			To preserve the rhyme, \\Swa{afia} and \\Swa{afua} should be swapped around, as in R.		
1883	174	176	a	2	نْدِيَ	ndiya	ndiya		ndia					
1916	177	179	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia					He told the Hashimite:
1911	176	178	d	2	كَمْوِنُلِيَ	kamwinuliya	kamwinuliya					lit. \\q{raised his hands to him}.		
1918	177	179	d	1	مْڠٖنِ	mgeni	mgeni							Our guest has just arrived.
1919	177	179	d	2	وٖٹُ	weţu	wetu							
1920	177	179	d	3	هُنْڠِيَ	hungiya	hungiya					\\Swa{anaanza kufika sasa}, \\E{he is arriving just now}.		
1928	178	180	c	2	هُبَئِنِ	hubaini	hubaini							
1924	178	180	b	2	وٖٹُ	weţu	wetu							
1923	178	180	b	1	مْڠٖنِ	mgeni	mgeni							Who is our guest?
1926	178	180	b	4	نَنِ	nani	nani							
1929	178	180	d	1	مْكٗنٗ	mkono	mkono							Give me your hand, Prophet.
1961	181	183	d	2	هَكٗ	hako	hako							
1937	179	181	c	2	كَمْجِبُ	kamjibu	kamjibu							
2001	185	187	d	2	هُيُ	huyu	huyu							
1939	179	181	d	2	وَكٖ	wake	wake							
1988	184	186	b	1	كَمُؤُلِزَ	kamuuliza	kamuuliza							asked her how she was.
1963	182	184	a	1	أَكَمُؤُزَ	akamuuza	akamuuza					\\Swa{-uza} = \\Swa{-uliza}.		She asked Husayn:
1941	180	182	a	1	كِشَ	kisha	kisha							Then he said:
1942	180	182	a	2	هَپٗ	hapo	hapo							
1943	180	182	a	3	كَبَئِنِ	kabaini	kabaini					\\Swa{akasema}.		
1944	180	182	b	1	كْوَ	kwa	kwa							Could you show me to my father's [house]?
1945	180	182	b	2	بَبَنْڠُ	babangu	babangu							
1946	180	182	b	3	نِپٖكٖنِ	nipekeni	nipekeni							
1989	184	186	b	2	خَبَرِ	khabari	habari					i.e. he asked \\Swa{hujambo?}		
1978	183	185	b	1	يٖيٖ	yeye	yeye							he and two people.
1966	182	184	b	2	نِ	ni	ni							
1967	182	184	b	3	نْيَانِ	nyāni	nyani							
1949	180	182	d	1	كٖنْدَ	kenda	kenda							and took him to Ali's [house].
1951	180	182	d	3	كْوَ	kwa	kwa							
1953	181	183	a	1	أَلِپٗكْوٖنْدَ	alipokwenda	alipokwenda							When the Lord got there
1980	183	185	b	3	وَٹُ	waţu	watu							
1912	177	179	a	1	مْكٗنٗ	mkono	mkono							Zubayr saw the wave
1981	183	185	b	4	وَوِلِ	wawili	wawili							
1968	182	184	c	1	كِجَنَ	kijana	kijana							And the boy answered:
1955	181	183	b	1	كْوَءٗ	kwao	kwao							he called: Hello!
1956	181	183	b	2	أَكَپِجَ	akapija	akapija							
1969	182	184	c	2	أَكَبَئِنِ	akabaini	akabaini							
1959	181	183	c	2	أَكَرَدِدِ	akaradidi	akaradidi					The original Arabic words means \\q{repeat}, but in Swahili it is another word for \\Swa{-sema}, \\E{speak}.		
1960	181	183	d	1	أَكَمْبَ	akamba	akamba							and said: The Prophet is not here.
1983	183	185	c	2	قَوْلِ	qawli	qauli							
1970	182	184	d	1	نِ	ni	ni							Listen -- it is my grandfather.
1971	182	184	d	2	جَدِ	jadi	jadi					= \\Swa{babu}.		
1972	182	184	d	3	يَنْڠُ	yangu	yangu							
1973	182	184	d	4	سِكِيَ	sikiya	sikiya							
1995	185	187	a	2	كَتَكَلَمُ	katakalamu	katakalamu							
1975	183	185	a	2	جَدِ	jadi	jadi							
1976	183	185	a	3	يَنْڠُ	yangu	yangu							
1990	184	186	c	1	أَكِكٗمَ	akikoma	akikoma							When he had finished speaking
1984	183	185	d	1	كَتٗكَ	katoka	katoka							[Fatima] went out to see him.
1985	183	185	d	2	كَمْوَنْڠَلِيَ	kamwangaliya	kamwangaliya							
1986	184	186	a	1	أَكِتٗكَ	akitoka	akitoka							When she came out, Ja'far
2004	186	188	a	2	زٗتٖ	zote	zote							
1727	158	160	c	1	أَكِنٖنَ	akinena	akinena		akanena	*				Then [Ja'far] said these words,
2437	228	230	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali spoke:
1993	184	186	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya					= \\Swa{-itikia}.		
1998	185	187	c	1	بَبَ	baba	baba							Father, I still don't recognise
1999	185	187	c	2	سِيَمْفَهَمُ	siyamfahamu	siyamfahamu							
1996	185	187	b	1	أَكَمُؤُزَ	akamuuza	akamuuza							And asked the Hashimite:
2007	186	188	b	2	لَكٖ	lake	lake							
2003	186	188	a	1	سِكُ	siku	siku							I have never seen him before,
2008	186	188	b	3	نٔدِيٖ	ndiye	ndiye							
2009	186	188	b	4	نَنِ	nani	nani							
2011	186	188	c	2	أَكَبَئِنِ	akabaini	akabaini							
2006	186	188	b	1	إِنَ	ina	ina							What is his name?
2013	186	188	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
2055	190	192	d	2	هِلٗ	hilo	hilo							
2056	190	192	d	3	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya					i.e. I have told you the real cause.  He tells the whole story in case Ali gets worried that there has been a crisis at home.  Compare 13b.		
2039	189	191	c	1	بَبَ	baba	baba							Father, a visitor has come -- 
2040	189	191	c	2	كُئِيٖ	kuiye	kuiye							
2041	189	191	c	3	مْڠٖنِ	mgeni	mgeni							
2016	187	189	b	1	هُيُ	huyu	huyu							This is Ja'far
2017	187	189	b	2	نْدِيٖ	ndiye	ndiye							
2019	187	189	c	1	وَ	wa	wa							[son] of Ali the Lion-like --
2042	189	191	d	1	ٹُمِوٖ	ţumiwe	tumiwe							I have been sent to fetch you.
2043	189	191	d	2	كُكْوَنْدَمِيَ	kukwandamiya	kukwandamiya					= \\Swa{nimetumwa kukufuatia}.		
2022	187	189	d	1	هِزٗ	hizo	hizo							his features would tell you that.
2023	187	189	d	2	صُوْرَ	ṣūra	sura							
2024	187	189	d	3	هُكْوَمْبِيَ	hukwambiya	hukwambiya					In the Mombasa expression, \\Swa{umejizaa mwenyewe}, \\E{he's the spitting image of you}.		
2025	188	190	a	1	هَپٗ	hapo	hapo							Then the Lord, the Trustworthy One,
2028	188	190	b	1	أَكَمْٹُمَ	akamţuma	akamtuma							sent Husayn:
1997	185	187	b	2	هَشِمُ	hashimu	hashimu		Hashimu					
2471	231	233	b	3	كَتَمْكَ	katamka	katamka							
1930	178	180	d	2	نِپٖ	nipe	nipe							
2044	190	192	a	1	كُنَ	kuna	kuna							There is a handsome boy there.
2030	188	190	c	1	إٖنٖنْدَ	enenda	enenda							Go to the mosque,
2031	188	190	c	2	مْسِكِٹِنِ	msikiţini	msikitini							
2045	190	192	a	2	كِجَنَ	kijana	kijana							
2046	190	192	a	3	مْزُرِ	mzuri	mzuri							
2032	188	190	d	1	بَبَكٗ	babako	babako							and call your father for me.
2033	188	190	d	2	نَمْكُلِيَ	namkuliya	namkuliya					= \\Swa{nimtia, namwita}.		
2034	189	191	a	1	هَپٗ	hapo	hapo							So Husayn went off
2035	189	191	a	2	كَتٗكَ	katoka	katoka							
2065	191	193	d	1	سَلَامُ	salāmu	salamu							he greeted [those inside].
2057	191	193	a	1	چَنْبِوَ	cham̱biwa	chambiwa							When these words had been said
2037	189	191	b	1	كَفِكَ	kafika	kafika							and arrived at the mosque.
2038	189	191	b	2	مْسِكِٹِنِ	msikiţini	msikitini							
2058	191	193	a	2	هِيٗ	hiyo	hiyo							
2059	191	193	a	3	كَلِمَ	kalima	kalima							
2050	190	192	c	1	نَ	na	na							and his name is Ja'far -- 
2051	190	192	c	2	إِنَ	ina	ina							
2052	190	192	c	3	نِ	ni	ni							
2066	191	193	d	2	كَوَپِسِيَ	kawapisiya	kawapisiya					\\Swa{-pisiya} = \\Swa{-pitisha}.  In other words, he said \\Swa{salaam alekum}.		
2067	192	194	a	1	سَلَامُ	salāmu	salamu							While he was greeting [them],
2060	191	193	b	1	پَپٗ	papo	papo							[Ali] set off immediately.
2010	186	188	c	1	مْٹُمِ	mţumi	mtumi		Mtumi					The Prophet spoke
2062	191	193	b	3	كَيَنْدَمَ	kayandama	kayandama							
2331	217	219	d	2	نِ	ni	ni							
2068	192	194	a	2	أَكِفَسِرِ	akifasiri	akifasiri							
2063	191	193	c	1	مْلَنْڠٗنِ	mlangoni	mlangoni							When he reached the door [of his house]
2064	191	193	c	2	أَكِكٗمَ	akikoma	akikoma							
2074	192	194	d	1	مكٗنٗ	mkono	mkono							and took his hand.
2075	192	194	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya							
2069	192	194	b	1	هَپٗ	hapo	hapo							Ali the Lion-like,
2072	192	194	c	1	كَئِنُكَ	kainuka	kainuka							Ja'far got up
2080	193	195	b	2	سَلَامَ	salāma	salama							
2081	193	195	b	3	أُتٗكَكٗ	utokako	utokako							
2076	193	195	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali spoke:
2083	193	195	c	2	وٖنْدَنِ	wendani	wendani					\\Swa{wendani} can also cover friends as well as relatives.		
2078	193	195	a	3	تَمْكٗ	tamko	tamko							
2079	193	195	b	1	نِ	ni	ni							Is everything well where you came from?
2084	193	195	c	3	وَكٗ	wako	wako							
2086	193	195	d	2	زَءٗ	zao	zao							
2082	193	195	c	1	جُمْلَ	jumla	jumla							All your relatives,
2087	193	195	d	3	نَمْبِيَ	nambiya	nambiya							
2085	193	195	d	1	حَالِ	ḥāli	hali							tell me how they are.
2088	194	196	a	1	أَكَمْجِبُ	akamjibu	akamjibu							And [Ja'far] answered him with the words:
2149	199	201	d	2	إِمٖنِپِٹِيَ	imenipiţiya	imenipitiya					We are to understand, \\q{and I still hadn't found the place I was trying to go to}.		
2116	196	198	d	1	مْبٗنَ	mbona	mbona							Why are you late?
2117	196	198	d	2	أُمٖلِمَٹِيَ	umelimaţiya	umelimatiya					Amu \\Swa{-limatia} = Zanzibar, Mvita \\Swa{-chelewa}, Mvita \\Swa{-kawia}.		
2090	194	196	b	1	نِتٗكَكٗ	nitokako	nitokako							Everything is well where I come from,
2091	194	196	b	2	نِ	ni	ni							
2092	194	196	b	3	سَلَامَ	salāma	salama							
2133	198	200	b	1	پَنَ	pana	pana							there was the date-tree by the road,
2094	194	196	c	2	يَ	ya	ya							
2096	194	196	c	4	نْيُمَ	nyuma	nyuma							
2118	197	199	a	1	أَكَمْجِبُ	akamjibu	akamjibu							[ja'far] answered him with the words:
2119	197	199	a	2	قَوْلِ	qawli	qauli							
2097	194	196	d	1	سِپَٹِ	sipaţi	sipati							I have nothing to tell you [since my departure].
2134	198	200	b	2	مْٹٖنْدٖ	mţende	mtende							
2099	195	197	a	1	تٖنَ	tena	tena							Also, father, [my] teacher
2100	195	197	a	2	بَبَ	baba	baba							
2101	195	197	a	3	مْوَلِمُ	mwalimu	mwalimu							
2093	194	196	c	1	سِيُوِ	siyuwi	siyuwi		siyui					[though] I don't know about after [I left].
2572	241	243	c	2	كْوَ	kwa	kwa							
2550	239	241	c	2	هُكُ	huku	huku							
1991	184	186	c	2	كَفَسِرِ	kafasiri	kafasiri							
2120	197	199	b	1	أَصُبُحِ	aṣubuḥi	asubuhi							I prayed in the morning,
2121	197	199	b	2	نَلِصَلِ	naliṣali	nalisali					i.e. he had got up in time for prayers at 5.00am.		
2102	195	197	b	1	نَ	na	na							and [my] mother greet you.
2103	195	197	b	2	مَمَ	mama	mama							
2104	195	197	b	3	وَكُسَلِمُ	wakusalimu	wakusalimu							
2108	195	197	d	2	كَپٗكٖيَ	kapokeya	kapokeya							
2110	196	198	a	2	أَكَبَئِنِ	akabaini	akabaini							
2143	199	201	b	1	كَأَنْدَمَ	kaandama	kaandama							and walked on for a long way
2144	199	201	b	2	إِلٗ	ilo	ilo							
2111	196	198	b	1	نِمٖكُنْڠٗجَ	nimekungoja	nimekungoja							I waited for you on the road -- 
2122	197	199	c	1	لَكِنِ	lakini	lakini							but, father, it is far --
2123	197	199	c	2	بَبَ	baba	baba							
2124	197	199	c	3	نِ	ni	ni							
2113	196	198	c	1	وَلِتٗكَ	walitoka	walitoka							what time did you set out?
2114	196	198	c	2	زٖءٗ	zeo	zeo							
2115	196	198	c	3	ڠَنِ	gani	gani							
2125	197	199	c	4	مْبَلِ	mbali	mbali							
2136	198	200	c	1	يَلِنِتٗكَ	yalinitoka	yalinitoka							but they left my head,
2137	198	200	c	2	مٗيٗنِ	moyoni	moyoni					i.e. \\Swa{nilisahau}, \\E{I forgot}.		
2126	197	199	d	1	إِنَ	ina	ina							the road is a long one.
2127	197	199	d	2	أُرٖفُ	urefu	urefu							
2128	197	199	d	3	وَ	wa	wa							
2129	197	199	d	4	نْدِيَ	ndiya	ndiya							
2145	199	201	b	3	مْبَلِ	mbali	mbali							
2138	198	200	d	1	يَلٖ	yale	yale							the [directions] you had told me.
2095	194	196	c	3	هٗكٗ	hoko	hoko		huko	*				
2130	198	200	a	1	نَمِ	nami	nami							And when I reached the cave
2131	198	200	a	2	كِپَٹَ	kipaţa	kipata					Contrast \\Swa{-pata}, \\E{arrive at somewhere en route to a destination}, and \\Swa{-fika}, \\E{arrive at the destination}.		
2132	198	200	a	3	پَنْڠٗنِ	pangoni	pangoni							
2139	198	200	d	2	وَلٗنَمْبِيَ	walonambiya	walonambiya							
2140	199	201	a	1	كَئِوَتَ	kaiwata	kaiwata							I left behind the [road] to the right
2141	199	201	a	2	يَ	ya	ya							
2142	199	201	a	3	كُڤُلِ	kuvuli	kuvuli							
2146	199	201	c	1	هَتَ	hata	hata							until I realised
2147	199	201	c	2	كِتَأَمَلِ	kitaamali	kitaamali							
2159	200	202	c	3	كُئِوَتَ	kuiwata	kuiwata							
2148	199	201	d	1	سَاءَ	saa	saa					\\Swa{saa}, \\E{hour}, is used here to signify the passage of time.		a long time had passed.
1816	167	169	c	2	زٗتِ	zoti	zoti		zote	*				
1864	172	174	b	1	هى	hı̄	hi		haya	*				So, off you go.
2157	200	202	c	1	إِلِ	ili	ili		ile					and left the road behind,
2167	201	203	b	3	سِئِيٗنِ	siiyoni	siiyoni		siioni					
2161	200	202	d	2	نِسِپٗرٖجٖيَ	nisiporejeya	nisiporejeya					i.e. instead of trying to retrace his footsteps.		
2150	200	202	a	1	كِشَ	kisha	kisha							Then I did something stupid -- 
2151	200	202	a	2	أُوِنْڠَ	uwinga	uwinga							
2152	200	202	a	3	كَئٖٹَ	kaeţa	kaeta					i.e. \\Swa{-fanya jinga la kipumbavu}, \\E{do something blockheaded}, lit. \\q{do the stupidity of an idiot}.		
2153	200	202	b	1	إِيُ	iyu	iyu							I walked out into the scrubland
2155	200	202	b	3	بَرَ	bara	bara							
2156	200	202	b	4	كَپِٹَ	kapiţa	kapita					Where, of course, there are no paths.		
2163	201	203	a	2	نٖنْدَءٗ	nendao	nendao							
2160	200	202	d	1	نْيُمَ	nyuma	nyuma							instead of going back.
2164	201	203	a	3	بَرَنِ	barani	barani							
2162	201	203	a	1	سُرَ	sura	sura					= \\Swa{namna yeyote}, \\E{whatever kind}.		Wherever I went in the scrubland
2165	201	203	b	1	إِلٖ	ile	ile							I couldn't find the road --
2226	206	208	d	1	خَطَرِ	khaṭari	hatari							danger stalked him.
2194	203	205	d	1	صَالَ	ṣāla	sala							it was time to pray.
2168	201	203	c	1	هُؤٗنَ	huona	huona							I realised I was [lost] in the scrubland, 
2170	201	203	c	3	بَرَنِ	barani	barani							
2195	203	205	d	2	إِمٖنِسِمَمِيَ	imenisimamiya	imenisimamiya							
2171	201	203	d	1	زٗتٖ	zote	zote					We understand \\Swa{ndia}, \\E{paths}.		and I had lost track of all [the roads].
2172	201	203	d	2	زِمٖنِپٗتٖيَ	zimenipoteya	zimenipoteya							
2685	251	253	b	3	جِهَدِ	jihadi	jihadi							
2048	190	192	b	2	نَ	na	na							
2211	205	207	b	2	أَكَتَمْكَ	akatamka	akatamka							
2173	202	204	a	1	كِپِجَ	kipija	kipija							I cudgelled my brains
2174	202	204	a	2	فِكِرَ	fikira	fikira							
2175	202	204	a	3	زَنْڠُ	zangu	zangu							
2196	204	206	a	1	أَوَلِ	awali	awali							Just after noon
2176	202	204	b	1	كَلَنْدَمَ	kalandama	kalandama							and then retraced my footsteps
2177	202	204	b	2	ڠُوْ	guu	guu							
2178	202	204	b	3	لَنْڠُ	langu	langu							
2180	202	204	c	2	پَلٖ	pale	pale							
2181	202	204	c	3	پَنْڠُ	pangu	pangu							
2227	206	208	d	2	هُمْزٖنْڠٖيَ	humzengeya	humzengeya					He could have been attacked by robbers, lions, etc.		
2182	202	204	d	1	كِشَ	kisha	kisha							and finally I got back.
2183	202	204	d	2	نْيُمَ	nyuma	nyuma							
2184	202	204	d	3	كَرٖجٖيَ	karejeya	karejeya							
2212	205	207	c	1	مْوَنَنْڠُ	mwanangu	mwanangu							My child, you have been through a lot.
2199	204	206	b	1	نْدِپٗ	ndipo	ndipo							was when I set out [again] on the road.
2185	203	205	a	1	كِشَ	kisha	kisha							At last I turned back
2187	203	205	a	3	نْيُمَ	nyuma	nyuma							
2201	204	206	b	3	كَعَبِرِ	kaʿabiri	ka'abiri					\\Swa{-abiri} < \\AS{عبر}, \\E{traverse, cross} was used in older Swahili to mean \\E{travel from continent to continent in a ship}, but now it refers to travel in general.		
2188	203	205	b	1	هَپٗ	hapo	hapo							and then I followed the road.
2190	203	205	b	3	كَيَنْدَمَ	kayandama	kayandama							
2191	203	205	c	1	پٖنْيٖ	penye	penye							At the place with the date-tree I stopped --
2192	203	205	c	2	مْٹٖنْدٖ	mţende	mtende							
2193	203	205	c	3	كَكٗمَ	kakoma	kakoma							
2213	205	207	c	2	أُمٖسُمْبُكَ	umesumbuka	umesumbuka					\\Swa{umepata taabu}.		
2202	204	206	c	1	حُجَ	ḥuja	huja					\\Swa{huja}, \\E{reason, argument, proof}.		Regarding coming late,
2203	204	206	c	2	يَ	ya	ya							
2179	202	204	c	1	نَرُدِيَ	narudiya	narudiya		narudia					and returned to my [correct] place
2204	204	206	c	3	كُجَ	kuja	kuja							
2205	204	206	c	4	أَخِيْرِ	akhı̄ri	ahiri							
2220	206	208	b	1	سِ	si	si							It is no small thing to arrive safely --
2206	204	206	d	1	مَعَانَ	maʿāna	ma'ana							I have told you the reason.
2207	204	206	d	2	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya							
2221	206	208	b	2	هَبَ	haba	haba							
2214	205	207	d	1	هَپٗ	hapo	hapo							Then the Prophet spoke.
2208	205	207	a	1	كِمَلِزَ	kimaliza	kimaliza							When he had finished listening
2209	205	207	a	2	كُپُلِكَ	kupulika	kupulika					\\Swa{-pulika} = \\Swa{-sikiza}, \\E{listen carefully}.		
2222	206	208	b	3	كُيَ	kuya	kuya							
2215	205	207	d	2	كَنٖنَ	kanena	kanena							
2217	206	208	a	1	هَپٗ	hapo	hapo					Note the use of \\Swa{hapo} to refer to time instead of place: \\q{at this point}.		Then the Hashimite spoke:
2218	206	208	a	2	كَنٖنَ	kanena	kanena							
2232	207	209	c	1	كْوَنِ	kwani	kwani							for they would have overwhelmed him -- 
2230	207	209	b	1	أَسِؤٗوْنٖ	asiōne	asione							so that he met no unbelievers,
1933	179	181	a	2	كَتَعَجَبُ	kataʿajabu	kata'ajabu							
2186	203	205	a	2	كَرُدِيَ	karudiya	karudiya		karudia					
2189	203	205	b	2	نْدِيَ	ndiya	ndiya		ndia					
2225	206	208	c	2	مٖزٗإِيَنْدَمَ	mezoiyandama	mezoiyandama		mezoiandama					
2229	207	209	a	2	وَدُوْدِ	wadūdi	wadudi		Wadudi					
2242	208	210	b	2	أَمِيْنِ	amı̄ni	amini		Amini					
2231	207	209	b	2	مَيَهُوْدِ	mayahūdi	mayahudi					Although the literal meaning is \\q{Jews}, it is important to note that this word now has a much wider meaning of unbelievers in general, \\Swa{makafiri}.		
2233	207	209	c	2	وَنْڠَلِمْزِدِ	wangalimzidi	wangalimzidi					i.e. \\q{they would have been too much for him} -- \\Swa{-zidi} here = \\Swa{shinda}.		
2235	207	209	d	2	وَنْڠِ	wangi	wangi							
2236	207	209	d	3	سِ	si	si							
2237	207	209	d	4	مْمٗيَ	mmoya	mmoya					\\Swa{mtu mmoya si sawasawa na watu wengi}, \\E{one person is no match for many}.		
2239	208	210	a	2	أُكٗ	uko	uko							
2234	207	209	d	1	وَٹُ	waţu	watu							one against many.
2240	208	210	a	3	كِٹِنِ	kiţini	kitini							
2241	208	210	b	1	أَكَمْوٖپُكَ	akamwepuka	akamwepuka							She moved back from the Trustworthy One
2243	208	210	c	1	كْوَ	kwa	kwa							and made a sign with her hand
2244	208	210	c	2	مْكٗنٗ	mkono	mkono							
2701	253	255	a	1	نَپٖنْدَ	napenda	napenda							I would now like, Bringer of Good Tidings,
2245	208	210	c	3	كَبَئِنِ	kabaini	kabaini					\\Swa{kumwambia siri}, \\E{to tell him a secret}.		
2270	211	213	b	1	خَبَرِ	khabari	habari							and tell his news -- 
2271	211	213	b	2	أَكَتَمْكَ	akatamka	akatamka					Ali is trying to put off as long as possible the inevitable point at which Fatima will hear that Ja'far is his son.		
2246	208	210	d	1	نَ	na	na							and beckoned [Ali] into the inner [room].
2248	208	210	d	3	كَمُأَمْكُوَ	kamuamkuwa	kamuamkuwa					\\Swa{kumwita ndani}, \\E{to call him into the private quarters}.		
2287	212	214	d	2	هُٹْوَمْبِيَ	huţwambiya	hutwambiya							
2249	209	211	a	1	مكٗنٗ	mkono	mkono							When he saw her hand [sign]
2250	209	211	a	2	كِؤُٹِزَمَ	kiuţizama	kiutizama							
2272	211	213	c	1	مٗيٗ	moyo	moyo							his heart is fluttering
2252	209	211	b	2	أَكَفَهَمَ	akafahama	akafahama							
2273	211	213	c	2	هُمْپَپَٹِكَ	humpapaţika	humpapatika							
2255	209	211	d	1	نٖنْدَ	nenda	nenda							I am just now going to the inner [room].
2256	209	211	d	2	نْدَنِ	ndani	ndani							
2257	209	211	d	3	مَرَ	mara	mara							
2258	209	211	d	4	مٗيَ	moya	moya							
2259	210	212	a	1	كْوَ	kwa	kwa							When he entered the inner [room]
2260	210	212	a	2	نْدَنِ	ndani	ndani							
2261	210	212	a	3	أَلِپٗفِكَ	alipofika	alipofika							
2274	211	213	d	1	كْوَ	kwa	kwa							because of the hardships of the journey.
2275	211	213	d	2	أُثَقِلِ	uthaqili	uthaqili							
2263	210	212	b	2	أَكَتَمْكَ	akatamka	akatamka							
2276	211	213	d	3	وَ	wa	wa							
2277	211	213	d	4	نْدِيَ	ndiya	ndiya					i.e. \\Swa{taabu ya ndiani}.		
2264	210	212	c	1	چَكُلَ	chakula	chakula							I have cooked some food
2265	210	212	c	2	نِمٖكِپِكَ	nimekipika	nimekipika							
2266	210	212	d	1	هَيَتَسَ	hayatasa	hayatasa							is it not time for it to be served?
2267	210	212	d	2	كْوَنْدِكِوَ	kwandikiwa	kwandikiwa							
2289	213	215	a	2	أَكَبَئِنِ	akabaini	akabaini							
2268	211	213	a	1	كْوَنْدَ	kwanda	kwanda							[Ali said:] First he must relax
2278	212	214	a	1	نَ	na	na							And the time he took [to get here],
2279	212	214	a	2	زٖءٗ	zeo	zeo					Amu \\Swa{zeo} = Mvita \\Swa{wakati}, Mu \\Swa{njeo}.		
2280	212	214	a	3	أَلِزٗتٗكَ	alizotoka	alizotoka							
2290	213	215	b	1	هُمْصُبِرِ	humṣubiri	humsubiri					\\Swa{-subiri} = \\Swa{-ngoja}.		we are [still] waiting for Husayn --
2281	212	214	b	1	أُمٖزِيُوَ	umeziyuwa	umeziyuwa							you know it well,
2283	212	214	c	1	نَ	na	na							and we are listening to him
2284	212	214	c	2	سِسِ	sisi	sisi							
2285	212	214	c	3	هُمْپُلِكَ	humpulika	humpulika							
2297	214	216	a	2	كُتٗكَ	kutoka	kutoka							
2298	214	216	a	3	نْدَنِ	ndani	ndani							
2292	213	215	c	1	نِمٖمْٹُمَ	nimemţuma	nimemtuma							I have sent Hasan
2288	213	215	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali said:
2291	213	215	b	2	حُسَيْنِ	ḥusayni	husayni		Huseni					
2293	213	215	c	2	حَسَنِ	ḥasani	hasani		Hasani					
2306	215	217	a	2	أَكَنُظُمُ	akanuẓumu	akanudhumu							
2294	213	215	d	1	إٖنْدٖ	ende	ende							to go and fetch him.
2295	213	215	d	2	كُمُؤَمْكُوَ	kumuamkuwa	kumuamkuwa					This is another attempt to put off the moment of truth.		
2299	214	216	b	1	أَلِپٗكٖتِ	alipoketi	alipoketi							and sat down on a chair.
2300	214	216	b	2	كِٹِنِ	kiţini	kitini							
2296	214	216	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali came back from the inner [room]
2302	214	216	c	2	حَسَنِ	ḥasani	hasani		Hasani					
2305	215	217	a	1	حَسَنِ	ḥasani	hasani		Hasani					Hasan spoke
2303	214	216	d	1	سَلَامُ	salāmu	salamu							greeting them.
2304	214	216	d	2	هُوَپِسِيَ	huwapisiya	huwapisiya					Hasan has obviously not left yet (assuming Ali has even told him to fetch Husayn), because he is still greeting the visitors.		
2312	215	217	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya							
2314	216	218	a	2	أُنْدَنِ	undani	undani					= \\Swa{kwa taratibu}. (?)		
2310	215	217	c	2	كَلِمُ	kalimu	kalimu							
2315	216	218	a	3	كْوِمَ	kwima	kwima							
2332	217	219	d	3	جَلِيَ	jaliya	jaliya		Jaliya					
2317	216	218	b	2	سَلَامَ	salāma	salama							
2197	204	206	a	2	يَ	ya	ya							
2198	204	206	a	3	أَظُهُرِ	aẓuhuri	adhuhuri					Midday, when the sun is approaching its zenith, or just afterwards.		
2313	216	218	a	1	كْوَ	kwa	kwa							With politeness (?)
2316	216	218	b	1	كَمُؤُلِزَ	kamuuliza	kamuuliza							he asked how [Ja'far] was.
2318	216	218	c	1	وَلِؤٗپٗ	waliopo	waliopo							Those present spoke
2379	222	224	c	1	جُمْلَ	jumla	jumla							all five of them,
2320	216	218	d	1	وٗتٖ	wote	wote							and all returned his greeting.
2321	216	218	d	2	وَكَمْپٗكٖيَ	wakampokeya	wakampokeya					i.e. answered \\Swa{wa alekum as-salaam}.		
2377	222	224	b	1	وَكَتَنْڠَنْيَ	wakatanganya	wakatanganya							sharing the same dish,
2345	219	221	b	1	زٖءٗ	zeo	zeo							the time is late -- 
2323	217	219	a	2	مَتَمْكٗ	matamko	matamko							
2346	219	221	b	2	زِمٖأَخِرِكَ	zimeakhirika	zimeahirika							
2324	217	219	b	1	نِ	ni	ni							All is well where I come from;
2325	217	219	b	2	سَلَامَ	salāma	salama							
2326	217	219	b	3	نِتٗكَكٗ	nitokako	nitokako					This is an echo of 196b, but neatly turns it to refer to time instead of space.		
2378	222	224	b	2	مِكٗنٗ	mikono	mikono					In other words, they eat together, \\Swa{kula pamoja}, which brings \\Swa{baraka}, \\E{blessings}.		
2360	220	222	d	1	هَپٗ	hapo	hapo							So the Prophet sat down.
2328	217	219	c	2	مْبٖيْ	mbee	mbee							
2329	217	219	c	3	نٖنْدَكٗ	nendako	nendako							
2361	220	222	d	2	كَكٖتِ	kaketi	kaketi							
2347	219	221	c	1	سَاءَ	saa	saa							it is now the ninth hour for certain,
2349	219	221	c	3	هَكِكَ	hakika	hakika							
2333	218	220	a	1	أَكَتَمْكَ	akatamka	akatamka							The Trustworthy One spoke
2336	218	220	b	2	كْوَ	kwa	kwa							
2337	218	220	b	3	هٖرِنِ	herini	herini							
2350	219	221	d	1	نْيُمْبَنِ	nyumbani	nyumbani							and I have not yet returned home.
2351	219	221	d	2	سِيَرٖجٖيَ	siyarejeya	siyarejeya							
2339	218	220	c	2	أَكَبَئِنِ	akabaini	akabaini							
2340	218	220	d	1	مْبٗنَ	mbona	mbona							Surely you are not leaving, Prophet?
2341	218	220	d	2	هُتٗكَ	hutoka	hutoka							
2371	221	223	d	1	نَ	na	na							and brought them water.
2372	221	223	d	2	مَاءِ	mai	mai					This could either be \\Swa{ya kunawa}, \\E{to wash with}, or \\Swa{ya kunwa}, \\E{to drink}.  The Swahili custom is not to eat food without water.		
2352	220	222	a	1	كَمْبَ	kamba	kamba							[Ali] said: Wait, Bringer of Good Tidings,
2353	220	222	a	2	صُبِرِ	ṣubiri	subiri							
2364	221	223	a	2	أَكَئِنُكَ	akainuka	akainuka							
2355	220	222	b	1	ٹُمْلِشٖ	ţumlishe	tumlishe							until we have given Ja'far something to eat.
2357	220	222	c	1	چَكُلَ	chakula	chakula							The food is ready.
2358	220	222	c	2	كِكٗ	kiko	kiko							
2359	220	222	c	3	تَيَرِ	tayari	tayari							
2373	221	223	d	3	كَوَپٖكٖيَ	kawapekeya	kawapekeya							
2365	221	223	b	1	كْوَ	kwa	kwa							quickly, in a hurry,
2366	221	223	b	2	أُپٖسِ	upesi	upesi							
2367	221	223	b	3	نَ	na	na							
2368	221	223	b	4	هَرَكَ	haraka	haraka					After being told not to server the food yet, she now has to do it in a hurry.		
2369	221	223	c	1	تَمَشَ	tamasha	tamasha					\\Swa{vitu vizuri vizuri}.		and placed delicacies [before them]
2370	221	223	c	2	أَكَئِوٖكَ	akaiweka	akaiweka							
2374	222	224	a	1	وَكَكٖتِ	wakaketi	wakaketi							They sat equally,
2375	222	224	a	2	كْوَ	kwa	kwa							
2376	222	224	a	3	مْفَنٗ	mfano	mfano					i.e. \\Swa{kwa sawasawa}.		
2919	274	276	c	2	پْوٖكٖ	pweke	pweke							
2247	208	210	d	2	نْدَنِ	ndani	ndani							
2380	222	224	c	2	وَٹُ	waţu	watu							
2384	222	224	d	2	أَسِلٖ	asile	asile							
2387	223	225	a	2	ٹَاٹُ	ţāţu	tatu							
2388	223	225	a	3	كْوَ	kwa	kwa							
2383	222	224	d	1	وَلَ	wala	wala							though the Prophet did not eat [much].
2381	222	224	c	3	وَ	wa	wa							
2382	222	224	c	4	تَنٗ	tano	tano							
2389	223	225	a	4	هَكِكَ	hakika	hakika							
2391	223	225	b	2	أَلِؤُپٖكَ	aliupeka	aliupeka							
2386	223	225	a	1	مَرَ	mara	mara							Three times indeed
2393	223	225	c	2	أَكَئِنُكَ	akainuka	akainuka							
2390	223	225	b	1	مْكٗنٗ	mkono	mkono							he put his hand [into the dish]
2392	223	225	c	1	أَكِشَ	akisha	akisha							and then he got up
2394	223	225	d	1	وَءٗ	wao	wao							and left [the food] to them.
2395	223	225	d	2	أَكَوَتِيَ	akawatiya	akawatiya					In other words, the Prophet stays for a little while for politeness' sake, but leaves as soon as he can.		
2421	226	228	b	1	نَاءٗ	nao	nao							and they had finished eating
2396	224	226	a	1	أَكَئِنُكَ	akainuka	akainuka					This and the previous stanza are very vivid depictions of Swahili customs.		He rose from his chair
2397	224	226	a	2	كِٹِنِ	kiţini	kitini							
2422	226	228	b	2	كُلَ	kula	kula							
2423	226	228	b	3	وَمٖكْوِشَ	wamekwisha	wamekwisha							
2399	224	226	b	2	مَاءِ	mai	mai							
2438	228	230	a	2	أَكَتَمْكَ	akatamka	akatamka							
2401	224	226	c	1	نَ	na	na							in a cup to drink,
2402	224	226	c	2	يَ	ya	ya							
2403	224	226	c	3	كُنْوَ	kunwa	kunwa							
2404	224	226	c	4	كِكٗمْبٖنِ	kikombeni	kikombeni							
2425	226	228	c	2	أَكَئِنُكَ	akainuka	akainuka							
2541	238	240	c	3	خَطَرِ	khaṭari	hatari							
2406	224	226	d	2	أَكَسُكُتُوَ	akasukutuwa	akasukutuwa					After eating, you rinse your mouth with water and spit it out.		
2408	225	227	a	2	يَ	ya	ya							
2409	225	227	a	3	كُخِتَرِ	kukhitari	kuhitari					\\Swa{ya kuteua nzuri}.		
2426	226	228	d	1	مَاءِ	mai	mai							and offered them water.
2427	226	228	d	2	أَكَوَپٖكٖيَ	akawapekeya	akawapekeya							
2410	225	227	b	1	هَپٗ	hapo	hapo							he was then given, the Bearer of Good Tidings,
2439	228	230	b	1	مْبٗنَ	mbona	mbona							Why has [your mood] changed,
2413	225	227	c	1	أَكَوَآڠَ	akawaãga	akawaaga							and he bade them farewell -- 
2414	225	227	c	2	كْوَ	kwa	kwa							
2415	225	227	c	3	هٖرِ	heri	heri							
2417	225	227	d	2	أَكَئِتٗكٖيَ	akaitokeya	akaitokeya							
2440	228	230	b	2	أُمٖبَدِلِكَ	umebadilika	umebadilika							
2431	227	229	b	2	أَكَئِٹِزَمَ	akaiţizama	akaitizama							
2447	229	231	b	1	وٖوٖ	wewe	wewe							You are not leaving yet. 
2441	228	230	c	1	كَمَ	kama	kama							as if you are angry,
2442	228	230	c	2	أُمٖزٗؤُذِكَ	umezoudhika	umezoudhika					Like \\Swa{ambaye mekasirika}, \\E{someone who is angry}.		
2432	227	229	c	1	يَپِسِيٗ	yapisiyo	yapisiyo							What had happened in the past
2433	227	229	c	2	يَ	ya	ya							
2434	227	229	c	3	نْيُمَ	nyuma	nyuma							
2435	227	229	d	1	يٗتٖ	yote	yote							all came back to her.
2436	227	229	d	2	يَكَمْرُدِيَ	yakamrudiya	yakamrudiya							
2448	229	231	b	2	هُنٖنْدِ	hunendi	hunendi							
2307	215	217	b	1	كُوَپِسِزَ	kuwapisiza	kuwapisiza							and greeted them
2308	215	217	b	2	سَلَامُ	salāmu	salamu							
2449	229	231	b	3	بَعِيْدِ	baʿı̄di	ba'idi					\\Swa{baidi} = \\Swa{mbali}, \\E{far}, but here it has the meaning \\q{yet}.  i.e. Ali is going to be there for a while, so she will tell him now.		
2443	228	230	d	1	يٖؤٗ	yeo	yeo					In this case, \\Swa{yeo / leo}, \\E{today}, means \\q{now}.		now as I look at you?
2444	228	230	d	2	نِكِكْوَنْڠَلِيَ	nikikwangaliya	nikikwangaliya							
2446	229	231	a	2	َكَرَدِدِ	akaradidi	akaradidi							
2454	229	231	d	2	نَاوٖ	nāwe	nawe							
2455	229	231	d	3	كُكْوَمْبِيَ	kukwambiya	kukwambiya							
2223	206	208	b	4	سَلَام	salām	salam		salama	*		\\Swa{ingawa umetaabika}, \\E{even though you were in distress}.		
2450	229	231	c	1	نِلٗنَلٗ	nilonalo	nilonalo							[the thing] I have [in my heart], I have no choice
2451	229	231	c	2	سِنَ	sina	sina							
2452	229	231	c	3	بُدِ	budi	budi							
2458	230	232	b	1	كَتٗكَ	katoka	katoka							he left the house
2459	230	232	b	2	كُلٖ	kule	kule							
2462	230	232	c	2	كْوَ	kwa	kwa							
2465	230	232	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
2460	230	232	b	3	نْيُمْبَنِ	nyumbani	nyumbani							
2461	230	232	c	1	أَكَنٖنْدَ	akanenda	akanenda							and went to the Trustworthy One
2467	231	233	a	2	كِشَ	kisha	kisha							
2468	231	233	a	3	كُفِكَ	kufika	kufika							
2469	231	233	b	1	كْوَ	kwa	kwa							he told the Prophet:
2472	231	233	c	1	مِمِ	mimi	mimi							she is angry,
2473	231	233	c	2	أَمٖكَسِرِكَ	amekasirika	amekasirika							
2512	235	237	d	1	پٖنُ	penu	penu					We understand \\Swa{pahali}.		Has he left our house [and gone wandering about]?
2474	231	233	d	1	بِبِ	bibi	bibi					\\Swa{bibi} is a more polite way of saying \\Swa{mama}.		my mother - I'm telling you.
2475	231	233	d	2	يَنْڠُ	yangu	yangu							
2476	231	233	d	3	نَكْوَمْبِيَ	nakwambiya	nakwambiya							
2513	235	237	d	2	أَلِوَپٗتٖيَ	aliwapoteya	aliwapoteya					The meaning seems to be that there is no justification for any gossip, because it is not as if Ja'far has gone wandering around the town like a child or a pet, giving people cause to talk about it.		
2477	232	234	a	1	أَكَمُؤُزَ	akamuuza	akamuuza							The Trustworthy One asked him:
2498	234	236	b	1	مْوٖنْيٖ	mwenye	mwenye							the gossip-monger in the town,
2499	234	236	b	2	خَبَرِ	khabari	habari							
2479	232	234	b	1	مٖكَسِرِكِيَ	mekasirikiya	mekasirikiya							Why has she got angry?
2480	232	234	b	2	نِنِ	nini	nini							
2500	234	236	b	3	مُئِنِ	muini	muini					Hasan is annoyed because someone is spreading gossip about the fact that Ali has a hitherto-unknown son.  To avoid confirming the rumours he does a typically Swahili thing -- if someone asks you if such-and-such a rumour is true, you say: \\q{The one who told you is the one who knows -- go back and ask him}.		
2481	232	234	c	1	مْوٖنْيٖوٖ	mwenyewe	mwenyewe							[Hasan said:] Myself I don't know -- 
2483	232	234	d	1	مٗيَ	moya	moya							I don't understand [a thing about it].
2523	236	238	d	2	زِمٖئٖنٖيَ	zimeeneya	zimeeneya					In other words, Ali thinks it would be better to give the word officially, instead of having people gossip about it as a scandal.		
2501	234	236	c	1	إِنَ	ina	ina							[ja'far's] name, certainly,
2502	234	236	c	2	يٖيٖ	yeye	yeye					i.e. Ja'far's name.		
2488	233	235	b	1	أَكَمُؤٗنَ	akamuona	akamuona							he saw Husayn [who said:]
2503	234	236	c	3	تَمْكِنِ	tamkini	tamkini					= \\Swa{hakika}, \\E{certainly}.		
2490	233	235	c	1	آٹِ	ãţi	ati							So, a visitor has come
2491	233	235	c	2	مٖكُيَ	mekuya	mekuya							
2492	233	235	c	3	مْڠٖنِ	mgeni	mgeni							
2514	236	238	a	1	أَكَمُؤُزَ	akamuuza	akamuuza							His father asked him:
2515	236	238	a	2	بَبَكٖ	babake	babake							
2504	234	236	d	1	هٗيٗ	hoyo	hoyo							[it is] this person who has told [people] that.
2493	233	235	d	1	هُكُ	huku	huku							to our house, I hear.
2494	233	235	d	2	كْوٖٹُ	kweţu	kwetu							
2495	233	235	d	3	نَسِكِيَ	nasikiya	nasikiya							
2505	234	236	d	2	أَمٖزٗوَمْبِيَ	amezowambiya	amezowambiya							
3006	282	284	d	2	كِمْبِشِيَ	kimbishiya	kimbishiya							
2496	234	236	a	1	أَكَمْجِبُ	akamjibu	akamjibu							Hasan answered him:
2506	235	237	a	1	أَكَپِٹَ	akapiţa	akapita							He came to the door [of Ali's house]
2507	235	237	a	2	مْلَنْڠٗنِ	mlangoni	mlangoni							
2508	235	237	b	1	أَكَرَدِدِ	akaradidi	akaradidi							and told Husayn:
2524	237	239	a	1	كُمٖپَنَنَ	kumepanana	kumepanana							The news is being passed about
2517	236	238	b	2	هُنٖنَ	hunena	hunena							
2518	236	238	b	3	پْوٖكٖ	pweke	pweke							
2525	237	239	a	2	خَبَرِ	khabari	habari							
2519	236	238	c	1	أَكَمْبَ	akamba	akamba							Then [Ali] said: It is best I go out.
2520	236	238	c	2	خٖيْرِ	khēri	heri							
2521	236	238	c	3	نِتٗكٖ	nitoke	nitoke					We have to assume that Hasan and Husayn have told Ali what they were talking about.		
2529	237	239	c	1	أَمٖكُيَ	amekuya	amekuya							Ja'far has arrived,
2463	230	232	c	3	أَمِيْنِ	amı̄ni	amini		Amini					
2466	231	233	a	1	حَسَنِ	ḥasani	hasani		Hasani					When Hassan got there
2478	232	234	a	2	أَمِيْنِ	amı̄ni	amini		Amini					
2487	233	235	a	3	نْدِيَنِ	ndiyani	ndiyani		ndiani					
2497	234	236	a	2	حَسَنِ	ḥasani	hasani		Hasani					
2528	237	239	b	3	أَنْصَارِ	anṣāri	ansari		Ansari			\\Swa{ansari} are the people of Medina who gave sanctuary to the Prophet when he was forced to flee from Mecca in 622 CE.		
2526	237	239	b	1	جَمِيْعِ	jamı̄ʿi	jami'i							among all the Helpers:
2527	237	239	b	2	يَ	ya	ya							
2538	238	240	b	2	أَلِلٗفَسِرِ	alilofasiri	alilofasiri					\\Swa{Ali anamlaumu mtoto wake}, \\E{Ali is criticising his son [Hasan]}.  i.e. Ali is telling them they should not be upset by gossip.		
2534	238	240	a	1	هَپٗ	hapo	hapo							Then Ali the Lionlike,
2531	237	239	d	1	وَ	wa	wa							[the son] of Lord Ali.
2540	238	240	c	2	أُنَ	una	una							
2537	238	240	b	1	نٖنٗ	neno	neno							the words that he said [were]:
2539	238	240	c	1	أُوِنْڠَ	uwinga	uwinga					Cognate with \\Swa{jinga} in 202a.		Foolishness is dangerous,
2545	239	241	a	2	كُئِيٖ	kuiye	kuiye							
2542	238	240	d	1	مَمْبٗ	mambo	mambo							if someone does not understand how things are.
2544	239	241	a	1	كْوٖنُ	kwenu	kwenu							A visitor has come to your house --
2546	239	241	a	3	مْڠٖنِ	mgeni	mgeni					Ali is asking Hasan: \\Swa{kwa nini umekasirika?}, \\E{why are you angry?}.  You must know that I have a duty of care to Ja'far -- I cannot disown him and leave him to wander around the town by himself.		
2573	241	243	c	3	هِمَ	hima	hima					= \\Swa{taratibu}.		
2547	239	241	b	1	هِلٗ	hilo	hilo							why does this disturb you?
2615	245	247	b	2	أُكَكَسِرِكَ	ukakasirika	ukakasirika							
2549	239	241	c	1	تَمُوٖكَ	tamuweka	tamuweka							Should I keep him here in the house
2551	239	241	c	3	نْيُمْبَنِ	nyumbani	nyumbani							
2552	239	241	d	1	مُئِنَ	muina	muina							so that he will not wander around the town?
2553	239	241	d	2	هَتٗتٖمْبٖيَ	hatotembeya	hatotembeya					This is a rhetorical question: Ali is saying that trying to keep Ja'far's existence secret by locking him in the house would be just as bad as disowning him and leaving him to wander about like a beggar.		
2601	244	246	a	2	أَكَبَئِنِ	akabaini	akabaini							
2576	242	244	a	1	أَكَمُؤُزَ	akamuuza	akamuuza							He asked her: What is the matter?
2556	240	242	b	1	كْوَنِ	kwani	kwani							Why [do you want to hide him]?  He is not an illegitimate child.
2558	240	242	b	3	مْوَنَ	mwana	mwana							
2559	240	242	b	4	حَرَمُ	ḥaramu	haramu							
2560	240	242	c	1	مْوَنَ	mwana	mwana					\\Swa{mwana} in the previous line meant \\E{child}, but in this line it is used a respectful title, \\E{lady, mistress}. 		[But] the Lady [Fatima] appeared sad
2561	240	242	c	2	هَنَ	hana	hana							
2562	240	242	c	3	تَبَسَمُ	tabasamu	tabasamu					\\Swa{amehuzunika}, \\E{he has become sad}, because everyone seems to be against him.		
2589	243	245	b	1	هِيٗ	hiyo	hiyo							This is not like you.
2564	240	242	d	2	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya					In spite of supporting Ali's comments, Fatima is still upset about her discovery.		
2590	243	245	b	2	سِ	si	si							
2591	243	245	b	3	طَبِيَ	ṭabiya	tabiya							
2578	242	244	b	1	مْبٗنَ	mbona	mbona							Why are you frowning?
3126	294	296	c	2	سَبَا	sabā	saba							
2419	226	228	a	2	أَكِشَ	akisha	akisha							
2420	226	228	a	3	كُتٗكَ	kutoka	kutoka							
2566	241	243	a	2	هَپٗ	hapo	hapo							
2567	241	243	a	3	كَسٖمَ	kasema	kasema							
2579	242	244	b	2	أُنَ	una	una							
2580	242	244	b	3	كِسِرَنِ	kisirani	kisirani					\\Swa{haṯeki}, \\E{she is not laughing}.  If someone is in a bad mood, you might say: \\Swa{ameamka na kisirani}, \\E{he got out of the wrong side of the bed}.  A \\Swa{siku wa kisirani} is a \\q{bad hair day}, a day on which nothing goes right.		
2568	241	243	b	1	هٖلَ	hela	hela					= \\Swa{hebu}.		Come now, Fatima.
2569	241	243	b	2	نْدٗوْ	ndoo	ndoo							
2592	243	245	b	4	يَكٗ	yako	yako							
2571	241	243	c	1	أَكَئِنُكَ	akainuka	akainuka							He got up carefully
2582	242	244	c	2	أَكَمْبَ	akamba	akamba							
2584	242	244	d	1	يَ	ya	ya							of telling you bitter things.
2585	242	244	d	2	مَتُنْڠُ	matungu	matungu					\\E{bitterness}.		
2586	242	244	d	3	هُكْوَمْبِيَ	hukwambiya	hukwambiya							
2593	243	245	c	1	مِمِ	mimi	mimi							I am not your child,
2587	243	245	a	1	أَكَمْجِبُ	akamjibu	akamjibu							[Ali] answered her with the words:
2588	243	245	a	2	تَمْكٗ	tamko	tamko							
2594	243	245	c	2	سِ	si	si							
2595	243	245	c	3	كِجَنَ	kijana	kijana							
2535	238	240	a	2	عَلِيْ	ʿalii	'alii		Ali					
2269	211	213	a	2	سِكُمَكِنِكَ	sikumakinika	sikumakinika		ni kumakinika	*				
2282	212	214	b	2	هَكِكَ	hakika	hakika							
2536	238	240	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
2596	243	245	c	4	چَكٗ	chako	chako					It is said: \\Swa{mtu mzima, huwezi kumdanganya}, \\E{you cannot hoodwink a mature person}.  Ali is telling Fatima: \\Swa{usinihadae, mimi si mtoto}, \\E{don't try to fool me, I am not a child}.  He knows something is troubling her, and wants her to say what it is.		
2607	244	246	c	2	كِسِمَنِ	kisimani	kisimani							
2597	243	245	d	1	أَمْبَ	amba	amba							say what it is, and tell me.
2598	243	245	d	2	هَيٗ	hayo	hayo							
2599	243	245	d	3	هُنَمْبِيَ	hunambiya	hunambiya							
2602	244	246	b	1	سِ	si	si							That ring on his finger, is it not [the one]
2603	244	246	b	2	إِلٖ	ile	ile							
2604	244	246	b	3	پٖٹٖ	peţe	pete							
2605	244	246	b	4	چَنْدَنِ	chandani	chandani							
2617	245	247	c	2	أُنْڠٖلِؤُذِكَ	ungeliudhika	ungeliudhika							
2614	245	247	b	1	نْدِپٗ	ndipo	ndipo					\\E{that is why}.		so that's why you are angry --
2612	245	247	a	2	أَكَمْبَ	akamba	akamba							
3314	306	314	c	2	مْٹُ	mţu	mtu							
3316	306	314	d	1	أَدَلِلِشٖ	adalilishe	adalilishe							that he may demonstrate its wisdom.
3317	306	314	d	2	وَصِيَ	waṣiya	wasiya					In other words, if the reader is doubtful that this is true, let him just try it.  See note to 157d.		
3318	307	315	a	1	نِمٖپٖنْدَ	nimependa	nimependa							I have been pleased to recite it,
3320	307	315	b	1	نَنْيِ	nanyi	nanyi							and you, read it inwardly --
3321	307	315	b	2	سٗمَنِ	somani	somani							
3322	307	315	b	3	ضَمِيْرِ	ḍamı̄ri	dhamiri							
3323	307	315	c	1	أُتٖنْدِ	utendi	utendi							the Ballad of Ja'far
3324	307	315	c	2	وَ	wa	wa							
3326	307	315	d	1	وَ	wa	wa							and Lord Ali.
26	3	3	b	2	نَ	na	na							
27	3	3	b	3	مْٹُ	mţu	mtu					The woman's name is Atika, but we are not told this until 274d.		
5	1	1	b	2	نَ	na	na							
816	76	78	b	2	كْوَ	kwa	kwa							
1925	178	180	b	3	نِ	ni	ni							
2639	247	249	b	2	سِ	si	si							
2640	247	249	b	3	يَ	ya	ya							
2641	247	249	b	4	كُلَ	kula	kula							
2642	247	249	b	5	دَلِيْلِ	dalı̄li	dalili					The meaning of this line is not entirely clear.  \\Swa{dalili} is usuallly translated as \\q{sign}, but it is also a term for \\q{proof}, as used in logic.  So the line might be paraphrased as: \\q{between us, the issue (\\Swa{kitu}) does not need to be proved on every point, because we love each other}.		
2678	250	252	d	1	هُتِنْدَ	hutinda	hutinda							he would cut down with no effort.
2646	247	249	d	2	نِمٖكْوٖلٖيَ	nimekweleya	nimekweleya					= \\Swa{nimekusamehe}, \\E{I have forgiven you}.    The mollification works -- Fatima forgives him.		
2679	250	252	d	2	أَسِپٗيُوَ	asipoyuwa	asipoyuwa					i.e. he could do it without realising.		
2671	250	252	a	2	أَكِتِمُ	akitimu	akitimu							
2672	250	252	a	3	مْوَكَ	mwaka	mwaka							
2485	233	235	a	1	كُرُدِ	kurudi	kurudi							As [Hasan] went back along the road
2486	233	235	a	2	كْوَكٖ	kwake	kwake							
2661	249	251	a	2	نِ	ni	ni							
2662	249	251	a	3	مْڠٖنِ	mgeni	mgeni							
2664	249	251	b	2	زِٹَنِ	ziţani	zitani							
2673	250	252	b	1	زِٹَنِ	ziţani	zitani							he was renowned in battle.
2674	250	252	b	2	أَمٖصِفِكَ	ameṣifika	amesifika							
2665	249	251	c	1	مَهَلَ	mahala	mahala							where there were 200 [opponents]
2666	249	251	c	2	پَ	pa	pa							
2680	251	253	a	1	هَتَ	hata	hata							Until, as time went by,
2675	250	252	c	1	سَبَا	sabā	saba							Indeed, 700 [opponents]
2676	250	252	c	2	مِيَ	miya	miya							
2677	250	252	c	3	هَكِكَ	hakika	hakika							
2695	252	254	b	2	أَكَبَئِنِ	akabaini	akabaini							
2681	251	253	a	2	مْوَكَ	mwaka	mwaka					\\Swa{mwaka}, \\E{year}, is used here to mean \\q{time} in general.  Compare \\Swa{saa} in 201d.		
2682	251	253	a	3	أُكِزِدِ	ukizidi	ukizidi							
2692	252	254	a	1	أَلِپٗكُيَ	alipokuya	alipokuya							When he came back to the town [after one campaign]
2689	251	253	d	1	هَكُنَ	hakuna	hakuna							there was not one [left alive].
2683	251	253	b	1	هَپٗ	hapo	hapo							when he went on a crusade,
2684	251	253	b	2	أَكٖنْدَ	akenda	akenda							
2686	251	253	c	1	لَكِ	laki	laki					\\Swa{laki} < \\AS{لَكٌّ}, \\E{100,000}.		of 100,000 unbelievers
2687	251	253	c	2	مٗيَ	moya	moya							
2688	251	253	c	3	مَيَهُدِ	mayahudi	mayahudi					See 209b.  This word can be used for anyone who is bad or evil.		
2690	251	253	d	2	هَتَ	hata	hata							
2691	251	253	d	3	مْمٗيَ	mmoya	mmoya							
2693	252	254	a	2	مُئِنِ	muini	muini							
2699	252	254	d	2	يَمْبٗ	yambo	yambo							
2	1	1	a	2	اللّٰهِ	llähi	llahi		~					
2611	245	247	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali said: Indeed, 
2694	252	254	b	1	عَلِيْ	ʿalii	'alii		Ali					Ali spoke
2696	252	254	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia					and told the Trustworthy One:
2697	252	254	c	2	أَمِنِ	amini	amini		Amini					
3187	300	302	c	2	عَطِكَ	ʿaṭika	'atika		Atika					
3325	307	315	c	3	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
3327	307	315	d	2	مَوْلَانَا	mawlānā	maulana		Maulana					
2700	252	254	d	3	تَكْوَمْبِيَ	takwambiya	takwambiya							
2702	253	255	a	2	سَسَ	sasa	sasa							
2698	252	254	d	1	نِنَ	nina	nina							I have something to tell you.
2729	255	257	d	2	دُنِيَ	duniya	duniya							
2704	253	255	b	1	إٖنْدٖ	ende	ende							for Ja'far to go on his own
2705	253	255	b	2	پْوٖكٖ	pweke	pweke							
2754	258	260	b	3	نَ	na	na							
2707	253	255	c	1	أَكَپِجٖ	akapije	akapije							to fight the unbelievers.
2708	253	255	c	2	مَكُفَرِ	makufari	makufari							
2745	257	259	c	1	أَلِهُتٗكَ	alihutoka	alihutoka							Hasan has [just] left 
2709	253	255	d	1	هُتٗشَ	hutosha	hutosha					\\E{he is capable of [doing something]}.		He is fully able, in my opinion.
2710	253	255	d	2	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya					Compare: \\Swa{kila kimwangaliya, naona ana mambo yule}, \\E{every time I look at him, I see that guy has something}.		
2731	256	258	a	2	هِيٗ	hiyo	hiyo							
2711	254	256	a	1	أَكَشُكَ	akashuka	akashuka							Gabriel descended
2732	256	258	a	3	قَوْلِ	qawli	qauli							
2713	254	256	b	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							and told the Prophet:
2715	254	256	c	1	هَوٖكِ	haweki	haweki					We understand \\Swa{Mungu}, \\E{God}.		[God] cannot have two Lions,
2716	254	256	c	2	سِمْبَ	simba	simba					Ali is known as \\Swa{simba wa Mungu}.		
2717	254	256	c	3	وَوِلِ	wawili	wawili							
2733	256	258	b	1	هَپٗ	hapo	hapo							[Ali] did not linger there --
2734	256	258	b	2	أَسِيَمُهَلِ	asiyamuhali	asiyamuhali					i.e. he did not delay.		
2718	254	256	d	1	أَكُسَلِمُ	akusalimu	akusalimu							and he greets you, Prophet.
2720	255	257	a	1	أَكَتَمْكَ	akatamka	akatamka							The Trustworthy One spoke:
2723	255	257	b	2	ٹْوٖنْدٖ	ţwende	twende							
3281	309	311	a	3	تَمَ	tama	tama							
2574	241	243	d	1	مْكٖوٖ	mkewe	mkewe							and went to his wife.
2724	255	257	b	3	نْيُمْبَنِ	nyumbani	nyumbani							
2735	256	258	c	1	كَئِنُكَ	kainuka	kainuka							he got up with the Prophet
2725	255	257	c	1	مْوَنٗ	mwano	mwano					= \\Swa{mwanayo, mwana wako, mtoto wako}.		this son of yours, it seems,
2726	255	257	c	2	هُيٗ	huyo	huyo							
2727	255	257	c	3	يَقِيْنِ	yaqı̄ni	yaqini							
2747	257	259	d	1	أُيَاءٗ	uyao	uyao							to go and fetch you.
2728	255	257	d	1	هُئِفَرِكِ	huifariki	huifariki							is departing this world.
2748	257	259	d	2	كُكْوَنْدَمِيَ	kukwandamiya	kukwandamiya							
2738	256	258	d	1	هَپٗ	hapo	hapo					i.e. \\Swa{pale pale}, \\E{then and there}.		and then they set out on the road.
2739	256	258	d	2	وَكَنْدَمَ	wakandama	wakandama							
2760	259	261	a	1	أَمٖئِنُكَ	ameinuka	ameinuka							He got up from the chair
2741	257	259	a	1	أَكِپَٹَ	akipaţa	akipata							When he got to the door
2742	257	259	a	2	مْلَنْڠٗنِ	mlangoni	mlangoni					i.e. \\Swa{hajangia ndani} -- he has not gone into the house yet.		
2761	259	261	a	2	كِٹِنِ	kiţini	kitini							
2756	258	260	c	1	غَفُلَ	ghafula	ghafula							and all of a sudden he said:
2744	257	259	b	2	أَكَبَئِنِ	akabaini	akabaini							
2749	258	260	a	1	مْوَنٗ	mwano	mwano							Your son was sitting there
2750	258	260	a	2	أَلِپٗ	alipo	alipo							
2751	258	260	a	3	كِٹِنِ	kiţini	kitini							
2757	258	260	c	2	أَكَبَئِنِ	akabaini	akabaini							
2752	258	260	b	1	نَ	na	na							with Hasan and Husayn
2769	260	262	a	2	أَكٖنْدَ	akenda	akenda							
2758	258	260	d	1	بَبَنْڠُ	babangu	babangu							I need to call my father.
2759	258	260	d	2	نَمْكُلِيَ	namkuliya	namkuliya					i.e. call my father for me.		
2762	259	261	b	1	أَمٖپَنْدَ	amepanda	amepanda							and climbed onto the bed.
2763	259	261	b	2	فِرَشَنِ	firashani	firashani							
2766	259	261	d	1	يَمْبٗ	yambo	yambo							what has happened to him?
2767	259	261	d	2	لَلٗمْزِدِيَ	lalomzidiya	lalomzidiya					Or: \\q{what misfortune has overwhelmed him?}.  Compare \\Swa{kumezidi nini?}, \\E{what has happened?} for something disastrous or catastrophic.		
2768	260	262	a	1	هَپٗ	hapo	hapo							So the Bringer of Good Tidings went in
2703	253	255	a	3	بَشِرِ	bashiri	bashiri		Bashiri					
2772	260	262	b	2	عَلِىْ	ʿalii	'alii		Ali					
2775	260	262	c	2	جَعْفَرِ	jaʿfari	ja'fari		Jaafari					
2779	261	263	a	1	أَكَلِيَ	akaliya	akaliya		akalia					He wept, saying:
2783	261	263	b	3	أُنَنِ	unani	unani		una-ni			= \\Swa{una nini?}.  See 238b, 244b.		
2791	262	264	a	1	أَكِسِكِيَ	akisikiya	akisikiya		akisikia					When he heard these words
2771	260	262	b	1	نَ	na	na							with Ali the Lion-like.
2774	260	262	c	1	كِمْوٗنَ	kimwona	kimwona							and when he saw Ja'far
2776	260	262	d	1	هَپٗ	hapo	hapo							his father wept.
2803	263	265	b	2	نِپَ	nipa	nipa					lit. \\q{give me}, as a favour.  The sick person will also be offered watr.		
2778	260	262	d	3	كَلِيَ	kaliya	kaliya							
2837	267	269	a	2	كِپُلِكَ	kipulika	kipulika							
2819	265	267	a	2	كِپُلِكَ	kipulika	kipulika							
2781	261	263	b	1	إٖوٖ	ewe	ewe							Oh, my son, what is the matter with you?
2782	261	263	b	2	مْوَنَنْڠُ	mwanangu	mwanangu							
2805	263	265	c	1	أَكِكٗمَ	akikoma	akikoma							By the time he had finished speaking,
2806	263	265	c	2	كُبَئِنِ	kubaini	kubaini							
2784	261	263	c	1	أُپٖٹْوٖ	upeţwe	upetwe							What misfortune has stricken you
2785	261	263	c	2	نِ	ni	ni							
2786	261	263	c	3	يَمْبٗ	yambo	yambo							
2787	261	263	c	4	ڠَنِ	gani	gani							
2807	263	265	d	1	أَمٖكْوِشَ	amekwisha	amekwisha							[Ja'far] was already dead.
2788	261	263	d	1	كَٹِكَ	kaţika	katika							as you went on your way?
2790	261	263	d	3	نْدِيَ	ndiya	ndiya							
2792	262	264	a	2	كَلِمَ	kalima	kalima							
2794	262	264	b	2	كَفَهَمَ	kafahama	kafahama							
2829	266	268	a	2	كُزِكَ	kuzika	kuzika							
2795	262	264	c	1	كْوَ	kwa	kwa							and looked about with difficulty
2796	262	264	c	2	ضَرُبُ	ḍarubu	dharubu					\\Swa{dharubu} = \\Swa{taabu, mashaka}		
2797	262	264	c	3	كَٹِزَمَ	kaţizama	katizama							
2809	264	266	a	1	هَپٗ	hapo	hapo							Then Ali the Lion-like
2798	262	264	d	1	مَتٗ	mato	mato							and focussed his eyes on him.
2799	262	264	d	2	أَكَمْوَنْڠَلِيَ	akamwangaliya	akamwangaliya							
2820	265	267	b	1	نَ	na	na							and they all went out
2821	265	267	b	2	جَمِيْعِ	jamı̄ʿi	jami'i							
2802	263	265	b	1	أَكَمْبَ	akamba	akamba							he said: Read me [the chapter] Ya Sin.
2822	265	267	b	3	وَكَتٗكَ	wakatoka	wakatoka					With Ja'far's corpse.		
2812	264	266	b	1	يٗتٖ	yote	yote							became insensible to anything.
2813	264	266	b	2	أَسِيَفِكِرِ	asiyafikiri	asiyafikiri					\\Swa{hajui mambo}.  Usually only women are in this state after someone has died -- the men try to concentrate on making the funeral arrangements.  In this case, the Prophet steps in to organise the funeral.		
2814	264	266	c	1	أَكَسِمَمَ	akasimama	akasimama					\\Swa{-simama} does not mean just \\q{stand up}; it also means \\q{do anything that needs to be done}, i.e. in this case, step into the breach as regards the aftermath of Ja'far's death.		The Bringer of Good Tidings had to do the needful,
2835	266	268	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
2817	264	266	d	2	كَوَمْبِيَ	kawambiya	kawambiya							
2831	266	268	b	2	أَكَمُوٖكَ	akamuweka	akamuweka					In a chair.		
2823	265	267	c	1	هَيَ	haya	haya							and they completed the burial ceremony,
2824	265	267	c	2	وَكِشَ	wakisha	wakisha							
2825	265	267	c	3	كُزِكَ	kuzika	kuzika							
2827	265	267	d	2	أَسِپٗيُوَ	asipoyuwa	asipoyuwa							
2842	267	269	c	2	هَنْڠَلِكُپٗكَ	hangalikupoka	hangalikupoka					Amu \\Swa{-poka} = Mvita \\Swa{-pokonya}, \\E{seize}.		
2828	266	268	a	1	أَلِپٗكْوِشَ	alipokwisha	alipokwisha							When he had completed the burial
2844	267	269	d	2	أُكَمْوَنْڠَلِيَ	ukamwangaliya	ukamwangaliya							
2832	266	268	c	1	مَنٖنٗ	maneno	maneno							and spoke [these] words
2833	266	268	c	2	أَكَتَمْكَ	akatamka	akatamka							
2838	267	269	b	1	صُبِرِ	ṣubiri	subiri					You have to endure whatever God sends you.  If someone wanted to take your child, you would not just stand there and look at him, but what else can you do in this case?		Have trust in Him, your Lord --
2430	227	229	b	1	پٹٖ	pţe	pte		pete	*				she caught sight of the ring.
2510	235	237	c	1	آسَ	ãsa	asa		basi	*				So, why are you bothering me?
33	3	3	d	3	كُرِضِيَ	kuriḍiya	kuridhiya					Ali did not want to sin by committing adultery with her, so he decides \\Swa{kuoa kwa siri}, \\E{to marry in secret}.  Among the Swahili it is possible to have an \\Swa{mke wa siri}, \\E{secret wife}, if it is thought that the first wife or other people would object.  An \\Swa{mke wa siri} has all the rights of an ordinary wife, except that the marriage is not publicised.		
2856	269	271	a	1	عَلِيْ	ʿalii	'alii		Ali					Ali, don't go on about this too much -- 
1670	153	155	d	3	عَلِيْ	ʿalii	'alii		Ali					
2839	267	269	b	2	كْوَكٖ	kwake	kwake							
2843	267	269	d	1	نَوٖ	nawe	nawe							even if you were to stand watch over him.
2849	268	270	a	5	ڠَنِ	gani	gani							
2851	268	270	b	2	دُنِيَنِ	duniyani	duniyani							
2845	268	270	a	1	وَ	wa	wa							And indeed, what kind of person is it
2850	268	270	b	1	أَدُمُوٗ	adumuwo	adumuwo					\\Swa{-dumu} < \\AS{دَامَ}, \\E{endure}, cognate of \\Swa{daima}, \\E{always}.		who remains in existence,
2915	274	276	b	1	يٖيٖ	yeye	yeye							[ja'far's] mother read [the letter],
2852	268	270	c	1	إِسِپٗكُوَ	isipokuwa	isipokuwa							unless it is God alone,
2877	271	273	a	1	هِيْ	hii	hii							This one is for his mother
2878	271	273	a	2	مٗيَ	moya	moya							
2855	268	270	d	2	وَيَفَهَمِيَ	wayafahamiya	wayafahamiya							
2879	271	273	a	3	نْدَ	nda	nda							
2880	271	273	a	4	مَمَكٖ	mamake	mamake							
2857	269	271	a	2	سٖنٖنْدٖ	senende	senende							
2858	269	271	a	3	مْنٗ	mno	mno					\\Swa{usizidi huzuni sana}, \\E{do not wallow in sadness}.		
2859	269	271	b	1	مَمْبٗ	mambo	mambo							things have turned out like this.
2860	269	271	b	2	هُپِجْوَ	hupijwa	hupijwa							
2861	269	271	b	3	مْفَنٗ	mfano	mfano							
2916	274	276	b	2	أَسٗمٖ	asome	asome							
2895	272	274	c	1	كَنٖنْدَ	kanenda	kanenda							and went quickly with them.
28	3	3	b	4	چُمْبَنِ	chumbani	chumbani					Atika probably went indoors to hide from Ali.  The custom is for  women to hide from men of their own status.  Therefore, if they hide when they see a man coming, the man will be pleased, because it is a compliment to him to be considered of noble status.  On the other hand, if the woman does not hide, the man may be angry, because he will think she is looking down on him. Thus, women will not hide from lascivious people, but only from those who aren't, because they are worthy of more respect.		
103	10	10	c	2	كْوَ	kwa	kwa							
144	14	14	d	2	سِيٗ	siyo	siyo							
342	31	33	b	2	أُنَ	una	una							
398	37	39	a	2	مْوَنَنْڠُ	mwanangu	mwanangu							
487	45	47	d	1	وَ	wa	wa							[son of] Lord Ali.
734	69	71	b	1	نَ	na	na							
792	74	76	a	3	وَ	wa	wa							
1262	116	118	b	2	سِ	si	si							
2656	248	250	c	3	زِٹَنِ	ziţani	zitani							
1829	169	171	a	1	نَ	na	na							
1880	173	175	d	3	نَ	na	na							
1974	183	185	a	1	نَ	na	na		ni	*				It is my grandfather the Prophet,
2005	186	188	a	3	سِمُؤٗنِ	simuoni	simuoni							
2000	185	187	d	1	كِجَنَ	kijana	kijana							this boy, Prophet.
2077	193	195	a	2	كٖٹَ	keţa	keta							
2154	200	202	b	2	لَ	la	la							
2484	232	234	d	2	سِكُفَهَمِيَ	sikufahamiya	sikufahamiya							
2522	236	238	d	1	خَبَرِ	khabari	habari							The news has spread.
2002	185	187	d	3	نَبِيَ	nabiya	nabiya		Nabiya					
365	33	35	c	2	نْدَكٖ	ndake	ndake		zake	*				
500	47	49	a	2	وَلِكِنُكُرِ	walikinukuri	walikinukuri		walikidhukuri	*				
2575	241	243	d	2	كَمُئٖنْدٖيَ	kamuendeya	kamuendeya							
2557	240	242	b	2	سِ	si	si							
2898	272	274	d	1	كَمْپٖكٖيَ	kampekeya	kampekeya							He delivered one to Atiya [Ja'far's mother].
2887	271	273	c	3	سِتَمْكٖ	sitamke	sitamke							
2846	268	270	a	2	أَمَّا	ammā	amma		ama					
2853	268	270	c	2	مَنَّانِ	mannāni	mannani		Manani			\\Swa{ela Mannani tu}.  \\Swa{Mannani} < \\AS{المنّان}, the Benevolent One, < \\AS{مَنُّ}, \\E{bestow favours}.		
2888	271	273	d	1	نٖنٗ	neno	neno							one word to tell them [what has happened].
2889	271	273	d	2	مٗيَ	moya	moya							
2890	271	273	d	3	كُوَمْبِيَ	kuwambiya	kuwambiya							
2907	273	275	c	2	يَ	ya	ya							
2891	272	274	a	1	زُبَيْرِ	zubayri	zubayri		Zuberi					Zubayr did not delay --
2899	272	274	d	2	عَطِيَ	ʿaṭiya	'atiya		Atiya			\\q{Atika} is changed to \\q{Atiya} at the end of the line for the sake of the rhyme.  See also 278d, 293d, and 304d		
855	79	81	d	2	كُكُزِوِيَ	kukuziwiya	kukuziwiya							
889	82	84	c	2	كَلِمُ	kalimu	kalimu							
942	87	89	c	1	عَيْنِ	ʿayni	'ayni		aini					To judge by his eyes,
1187	109	111	b	1	نٖنٖنْدٖ	nenende	nenende		ninende	*				which direction I should take,
1202	110	112	c	2	نِكِوَصِلِ	nikiwaṣili	nikiwasili							
1270	117	119	a	2	نِ	ni	ni							
1731	158	160	d	2	أَكِمْوَمْبِيَ	akimwambiya	akimwambiya							
2893	272	274	b	1	كَپٗكٖيَ	kapokeya	kapokeya		kapokea					he took the papers
2904	273	275	b	2	زُبٖىْرِ	zubēri	zuberi		Zuberi					
2923	275	277	a	1	نَاءٖ	nae	nae		naye					And as she repeated [the contents]
2925	275	277	b	1	يُوَ	yuwa	yuwa		yua					the sun was going down,
1190	109	111	c	1	كُؤٗنَ	kuona	kuona		kaona	*				I saw some people,
1257	115	117	d	2	كُٹُفِكِيَ	kuţufikiya	kutufikiya		kitufikiya	*				
1425	130	132	d	3	ٹٗلٗكْوَمْبِيَ	ţolokwambiya	tolokwambiya		tulokwambiya	*				
1437	132	134	a	2	كِدُسَ	kidusa	kidusa		kidosa	*		\\Swa{-dosa} = \\Swa{-gota, -gogota}, \\E{knock, rap}.  As Ja'far walks over the planks covering the well, he hears the resonating sound of the well beneath them.		
1455	133	135	d	2	كُكْوَمْبِيَ	kukwambiya	kukwambiya		nakwambiya	*		Presumably Ja'far means that now he has found this well he will come back each day with his goats, so there is no point covering the well. 		
1565	144	146	b	1	نِزٖزٗوٖءٗ	nizezoweo	nizezoweo		nizeweo	*		= \\Swa{nilizozaliwa}.		since I was born -- definitely
1658	152	154	d	1	مٗيٗ	moyo	moyo		moya	*		We understand \\Swa{jambo}, i.e. this is the one important thing she asks him to do.		is the one [thing] I charge you to do.
1900	175	177	c	3	سِتَكَسِ	sitakasi	sitakasi		sitakisi	*		= \\Swa{siioni}.		
2228	207	209	a	1	أَمْكِنْڠَ	amkinga	amkinga		amemkinga	*				The Loving One protected him
2309	215	217	c	1	أَمْرُدِشٖ	amrudishe	amrudishe		wamrudishe	*				so that they could return the greeting.
3319	307	315	a	2	كُكَرِرِ	kukariri	kukariri							
2892	272	274	a	2	أَسِجِلِسِ	asijilisi	asijilisi					i.e. Zubayr did not sit and wait.		
2908	273	275	c	3	مْوَلِمُ	mwalimu	mwalimu							
2909	273	275	c	4	وَكٖ	wake	wake							
2894	272	274	b	2	كَرَتَسِ	karatasi	karatasi							
3094	291	293	b	1	بَسِ	basi	basi							spoke to her then:
2903	273	275	b	1	كِشَ	kisha	kisha							then Zubayr left,
2905	273	275	b	3	أَتٗكٖ	atoke	atoke							
2914	274	276	a	3	كْوَكٖ	kwake	kwake					i.e. immediately he left.		
2910	273	275	d	1	كٖنٖنْدَ	kenenda	kenenda							he went on to deliver [it] to him.
2911	273	275	d	2	كُمْپٖكٖيَ	kumpekeya	kumpekeya							
2922	274	276	d	2	أَسِپٗزٖنْڠٖيَ	asipozengeya	asipozengeya							
2924	275	277	a	2	أَكِيَنُظُمُ	akiyanuẓumu	akiyanudhumu							
2917	274	276	b	3	مَمَكٖ	mamake	mamake							
2918	274	276	c	1	أَكَتٗكَ	akatoka	akatoka							and she left home on her own
2920	274	276	c	3	يَكٖ	yake	yake					Usually if a mother is going somewhere and she has a small child she will take the child with her, but in this case Atika is  so distraught that she rushes out immediately, forgetting about Nasir.		
2921	274	276	d	1	مْٹُ	mţu	mtu							without telling anyone.
2926	275	277	b	2	لِمٗ	limo	limo							
2927	275	277	b	3	هُسَلِمُ	husalimu	husalimu					It is dangerous for a woman to be out alone at night, but she is grief-stricken.		
2929	275	277	c	2	أَسِپٗفَهَمُ	asipofahamu	asipofahamu							
2928	275	277	c	1	وَلَ	wala	wala							but she did not realise
2992	281	283	c	2	أَكَؤُشِكَ	akaushika	akaushika							
2930	275	277	d	1	أُسِكُ	usiku	usiku							that night was drawing on.
2647	248	250	a	1	وَكَكٖتِ	wakaketi	wakaketi							They lived happily,
2648	248	250	a	2	كْوَ	kwa	kwa							
2643	247	249	c	1	أُوَپٗ	uwapo	uwapo					= \\Swa{ukiwa}.		Since you have now agreed [you were wrong],
2644	247	249	c	2	أُمٖكُبَلِ	umekubali	umekubali							
2645	247	249	d	1	رَضِ	raḍi	radhi							I forgive you.
2670	250	252	a	1	هَتَ	hata	hata							Until at the end of one year
2931	275	277	d	2	هُمْنْڠِلِيَ	humngiliya	humngiliya							
2956	278	280	b	1	نَ	na	na							with Lord Umar [in the house].
2932	276	278	a	1	نَ	na	na							And meanwhile Zubayr
2933	276	278	a	2	هُكٗ	huko	huko							
2934	276	278	a	3	نْيُمَ	nyuma	nyuma							
2937	276	278	b	2	تَقْصِيْرِ	taqṣı̄ri	taqsiri					\\Swa{-fanya taksiri}, \\E{put in the effort, do the needful}.  Note that the Swahili negative here corresponds to a positive in English.		
2938	276	278	c	1	كِلَ	kila	kila							calling at every house
2940	276	278	c	3	كِعَبِرِ	kiʿabiri	ki'abiri					i.e. going to every house and calling \\Swa{Hodi!}.  Zubeir is trying to find the \\Swa{mwalimu}'s house, to deliver his second letter (273b, 275).  He could not simply ask Atika where it was, because he was told by Ali not to speak to the recipients (273c/d).		
2959	278	280	c	1	هِنِ	hini	hini							It was dawn
2941	276	278	d	1	كِمْزٖنْڠٖيَ	kimzengeya	kimzengeya					\\Swa{anamtafuta}.		while Atiya was looking for him.
2943	277	279	a	1	هَتَ	hata	hata							So as she followed the road
2947	277	279	b	2	كِتٗمْكُٹَ	kitomkuţa	kitomkuta							
2981	280	282	d	1	كَمَ	kama	kama							if that clarifies things for you.
2962	278	280	d	1	صَلَ	ṣala	sala							and prayers were about to begin.
2963	278	280	d	2	إِمٖسِمَمِيَ	imesimamiya	imesimamiya					\\Swa{yali tayari sala}.		
2948	277	279	c	1	نْيُمْبَ	nyumba	nyumba							When she reached the first house
2949	277	279	c	2	يَ	ya	ya							
2950	277	279	c	3	كْوَنْدَ	kwanda	kwanda							
2951	277	279	c	4	كِپَٹَ	kipaţa	kipata							
2638	247	249	b	1	كِٹُ	kiţu	kitu							the matter is of little importance.
2976	280	282	b	1	نْيُمْبَ	nyumba	nyumba							and I don't know the house.
2969	279	281	c	1	چَمْبَ	chamba	chamba							perhaps you could show me
2977	280	282	b	2	سِكُئِفَسِرِ	sikuifasiri	sikuifasiri					\\Swa{-fasiri} = \\Swa{-jua}.		
2987	281	283	b	1	كْوَ	kwa	kwa							quickly and speedily
2988	281	283	b	2	أُپٖسِ	upesi	upesi							
2978	280	282	c	1	نْدِمِ	ndimi	ndimi							I am Ja'far's mother
2989	281	283	b	3	نَ	na	na							
2990	281	283	b	4	هَرَكَ	haraka	haraka							
2984	281	283	a	1	هَپٗ	hapo	hapo							Then Hamza went out
2986	281	283	a	3	كَتٗكَ	katoka	katoka							
2996	282	284	a	2	كِتٗكَ	kitoka	kitoka							
2998	282	284	a	4	هٖمَ	hema	hema							
2991	281	283	c	1	مْلَنْڠٗ	mlango	mlango							and took hold of the door
2993	281	283	d	1	إِلِ	ili	ili							to open it for her.
2994	281	283	d	2	كُمْفُنْڠُلِيَ	kumfunguliya	kumfunguliya					When someone asks you directions, the Swahili consider it polite to accompany them to their destination, call the person they are looking for, and hand over the visitor to them: \\Swa{nakuletea mgeni wako}, \\E{I'm bringing your visitor to you}.		
3000	282	284	b	2	نْدِيَ	ndiya	ndiya							
2995	282	284	a	1	نْدٖ	nde	nde							Then, leaving the tent,
2997	282	284	a	3	كَٹِكَ	kaţika	katika							
2999	282	284	b	1	هَپٗ	hapo	hapo							he set out on the way.
3004	282	284	c	3	أَكِكٗمَ	akikoma	akikoma					\\Swa{-koma} here means \\q{end up at}.  Compare \\Swa{ndia hii imekoma wapi?}, \\E{where does this road go to?}		
3002	282	284	c	1	كْوَ	kwa	kwa							When he finally came to Ali's [house]
2935	276	278	a	4	زُبٖيْرِ	zubēri	zuberi		Zuberi					
2942	276	278	d	2	عَطِيَ	ʿaṭiya	'atiya		Atiya					
2944	277	279	a	2	نْدِيَ	ndiya	ndiya		ndia					
2945	277	279	a	3	كِفُوَٹَ	kifuwaţa	kifuwata		kifuata					
2954	278	280	a	1	حَمْزَة	ḥamzaẗ	hamzat		Hamza					Hamza was talking
2957	278	280	b	2	مَوْلَانَا	mawlānā	maulana		Maulana					
3005	282	284	d	1	مْلَنْڠٗ	mlango	mlango							he knocked on the door.
3032	285	287	c	2	نْدٖ	nde	nde							
3033	285	287	c	3	كَتَمْكَ	katamka	katamka							
3007	283	285	a	1	كِنٖنَ	kinena	kinena							And he said, explaining [things] to him:
2979	280	282	c	2	أُمِ	umi	umi		Umi					
3009	283	285	b	1	عَلِيْ	ʿalii	'alii		Ali					Ali, it's me,  Hamza.
2736	256	258	c	2	نَ	na	na							
3073	289	291	b	2	كْوَ	kwa	kwa							
3010	283	285	b	2	نْدِمِ	ndimi	ndimi							
3034	285	287	d	1	مَنٖنٗ	maneno	maneno							telling her these words.
3012	283	285	c	1	مْڠٖنِ	mgeni	mgeni					i.e. \\Swa{kuna mgeni wako hapa}.		A visitor is asking for you.
3013	283	285	c	2	هُكُؤُلِزَ	hukuuliza	hukuuliza							
3035	285	287	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
3014	283	285	d	1	هَپٗ	hapo	hapo							Then Ali went out.
3015	283	285	d	2	كَتٗكَ	katoka	katoka							
3017	284	286	a	1	يٖيٖ	yeye	yeye							[Atiya] was at the door,
3018	284	286	a	2	يُپٗ	yupo	yupo							
3019	284	286	a	3	مْلَنْڠٗنِ	mlangoni	mlangoni							
3037	286	288	a	2	كِنُظُمُ	kinuẓumu	kinudhumu							
3021	284	286	b	2	أَكِبَئِنِ	akibaini	akibaini							
3049	287	289	b	1	نْدِيٖ	ndiye	ndiye							I bore his birthpangs!
3022	284	286	c	1	قَبُرِنِ	qaburini	qaburini							Take me to his grave -- 
3023	284	286	c	2	نِپٖكَنِ	nipekani	nipekani							
3096	291	293	b	3	كَفَسِرِ	kafasiri	kafasiri							
3136	295	297	c	2	نِنَ	nina	nina							
3137	295	297	c	3	هَلِمَمَ	halimama	halimama							
3097	291	293	c	1	مْبٗنَ	mbona	mbona							Why did Zubayr not come [with you]?
2730	256	258	a	1	چَمْبِوَ	chambiwa	chambiwa							When he was told these words
3038	286	288	b	1	سٖنْدٖلٖيْ	sendelee	sendelee					i.e. \\Swa{usifanye sana}.  If you get carried away by grief, you may say something that is \\Swa{kufru}, i.e. something an unbeliever might say.  So a wife at the death of her husband may say that he was her lion, or her pillar in the world, or tht she depended on him, and she will be told: don't say that, or you will become a \\Swa{kafiri}.  On the contrary, you have to be loyal to God even in a time of grief, and endure whatever he sends you.  Debate on the \\q{problem of evil} (why does a good God allow bad things to happen) is unknown in Islam -- God knows best, and we cannot begin to fathom His motives.		don't go on so -- submit to God's will,
3030	285	287	b	2	يَكِمْشُكَ	yakimshuka	yakimshuka							
3052	287	289	b	4	چَكٖ	chake	chake							
3031	285	287	c	1	هَتَ	hata	hata							and outside he spoke,
3040	286	288	c	1	صُبِرِ	ṣubiri	subiri					Compare 269b.  		trust in Providence
3041	286	288	c	2	كْوَكٖ	kwake	kwake							
3043	286	288	d	1	أَمْبَيٗ	ambayo	ambayo							who has brought you here.
3044	286	288	d	2	أَكُلٖٹٖيَ	akuleţeya	akuleteya							
3053	287	289	c	1	نِؤٗنْيَ	nionya	nionya							Show me his grave --
3054	287	289	c	2	قَبُرِ	qaburi	qaburi							
3055	287	289	c	3	يَكٖ	yake	yake							
3045	287	289	a	1	مِمِ	mimi	mimi							[Atiya said:] I am his mother!
3046	287	289	a	2	هُىُ	huyu	huyu							
3048	287	289	a	4	مَمَكٖ	mamake	mamake							
3064	288	290	c	1	وَلَ	wala	wala							and I did not want 
3056	287	289	d	1	نَتَكَ	nataka	nataka							I want to see it.
3057	287	289	d	2	كُيَنْڠَلِيَ	kuyangaliya	kuyangaliya							
3065	288	290	c	2	مِمِ	mimi	mimi							
3066	288	290	c	3	سِكُتَكَ	sikutaka	sikutaka							
3061	288	290	b	1	لَكٖ	lake	lake							[his way] is to take people away and bring [them into existence],
3062	288	290	b	2	هٗنْدٗوَ	hondowa	hondowa					We understand \\Swa{watu}, \\E{human beings}.  		
3063	288	290	b	3	كِوٖكَ	kiweka	kiweka					God has the power to do whatever he likes -- he sustains people or brings their life to an end, and we are not in a position to understand his motives.		
3077	289	291	c	3	فُنْڠُ	fungu	fungu							
3069	289	291	a	1	نَوٖ	nawe	nawe							And have trust [in God], my dear,
3070	289	291	a	2	صُبِرِ	ṣubiri	subiri							
3067	288	290	d	1	أَئِفَرِكِ	aifariki	aifariki							[ja'far] to pass away.
3068	288	290	d	2	دُنِيَ	duniya	duniya							
3071	289	291	a	3	نْدُيَنْڠُ	nduyangu	nduyangu							
3072	289	291	b	1	أُسِپٗتٖيْ	usipotee	usipotee							so that you do not go astray from God's [path].
2740	256	258	d	3	نْدِيَ	ndiya	ndiya		ndia					
3079	289	291	d	2	أَخٖرَ	akhera	ahera					It is said: \\Swa{ukisema mambo mabaya, utapata madhambi kwa Mungu; ukisubiri, utapata malipo mazuri}, \\E{if you say irreligious things, God will judge you as having sinned; on the other hand, if you trust [in him], you will be well-rewarded}.		
3075	289	291	c	1	وَلَ	wala	wala							or you will not receive your share
3080	289	291	d	3	نَ	na	na							
3081	289	291	d	4	دُنِيَ	duniya	duniya							
3078	289	291	d	1	لَ	la	la							in the next world and this one.
3083	290	292	a	2	كِپُلِكَ	kipulika	kipulika							
3084	290	292	b	1	مَتٗزِ	matozi	matozi							tears falling.
3085	290	292	b	2	يَكِمْشُكَ	yakimshuka	yakimshuka							
2847	268	270	a	3	نِ	ni	ni							
3127	294	296	c	3	تِمَمُ	timamu	timamu							
3112	293	295	a	2	كِئِفَسِرِ	kiifasiri	kiifasiri							
3086	290	292	c	1	هَپٗ	hapo	hapo							Then Atiya stopped [crying]
3089	290	292	d	1	أَكَتَمْكَ	akatamka	akatamka							and Ali spoke.
3091	291	293	a	1	هَپٗ	hapo	hapo							So Ali the Lion-like
3115	293	295	c	1	هَنْدَ	handa	handa					Amu for \\Swa{naanza}.		I am beginning now to realise
3116	293	295	c	2	سَسَ	sasa	sasa							
3100	291	293	d	1	أُيِيٖ	uyiye	uyiye							Did you come by yourself, Atiya?
3101	291	293	d	2	پْوٖكٖ	pweke	pweke							
3117	293	295	c	3	كُفِكِرِ	kufikiri	kufikiri							
3103	292	294	a	1	أُنِئٖٹٖيْ	unieţee	unietee							[Atiya said:] He brought me a letter,
3129	294	296	d	2	أَلِيَسٗمٖيَ	aliyasomeya	aliyasomeya					This is anachronistic, in that this would not have been done at the time the story is supposed to take place.  The reference is to the practice of reading the Qur'an and then breathing into the water -- the efficacy of the verses is piously considered to transfer into the water.		
3118	293	295	d	1	تَنَبُهِ	tanabuhi	tanabuhi					= \\Swa{hatari}.		I put myself in danger.
3107	292	294	c	1	أَلِپٗ	alipo	alipo							I took no heed of where he was,
3119	293	295	d	2	كُنِنْڠِيَ	kuningiya	kuningiya							
3109	292	294	d	1	وَلَ	wala	wala							and I did not look for him.
3110	292	294	d	2	سِكُمْزٖنْڠٖيَ	sikumzengeya	sikumzengeya							
3121	294	296	a	2	كَمْكَلِمُ	kamkalimu	kamkalimu							
3130	295	297	a	1	أَكَمْجِبُ	akamjibu	akamjibu							[Atiya] answered her with the words:
3131	295	297	a	2	كَلِمَ	kalima	kalima							
3122	294	296	b	1	أَكَمْپَ	akampa	akampa							and gave her sweet water --
3124	294	296	b	3	تَمُ	tamu	tamu							
3142	296	298	a	2	كْوَ	kwa	kwa							
3125	294	296	c	1	دُعَ	duʿa	du'a							seven whole prayers
3138	295	297	d	1	رُوْحُ	rūḥu	ruhu					\\Swa{ruhu} = \\Swa{roho}.		and my soul wants to cry out.
3132	295	297	b	1	سِيَوٖزِ	siyawezi	siyawezi					She means \\Swa{chakula hakinishuki}, \\E{I have no heart for eating}.  If someone dies, he is buried the next day, and the women keen and lament all day and night.  They may not eat at all until after the burial.  People who are not close relatives of the deceased may make food and bring it secretly, encouraging the bereaved to eat, as if they were sick.		I cannot [take it], oh Fatima --
3133	295	297	b	2	يَ	ya	ya							
3139	295	297	d	2	يَتَكَ	yataka	yataka							
3135	295	297	c	1	مٗيٗ	moyo	moyo							my heart is in confusion,
3140	295	297	d	3	كُلِيَ	kuliya	kuliya							
3146	296	298	b	2	مَاءِ	mai	mai							
3123	294	296	b	2	مَجِ	maji	maji							
3147	296	298	b	3	سِ	si	si							
3148	296	298	b	4	كِٹُ	kiţu	kitu					i.e. it is not food, so if she is fasting because of the bereavement it is reasonable to take it.		
3141	296	298	a	1	صُبِرِ	ṣubiri	subiri							[Fatima replied:] Trust in our Lord,
3149	296	298	c	1	پِجَ	pija	pija							take three sips,
3150	296	298	c	2	مَٹَمَ	maţama	matama					\\Swa{-piga tama} or \\Swa{-shika tama}, \\E{take a drink, fill your mouth with liquid}.		
3155	297	299	a	2	أَسِپٗيَتَكَ	asipoyataka	asipoyataka							
3151	296	298	c	3	مَٹَٹُ	maţaţu	matatu							
3157	297	299	b	2	كَيَپٖكَ	kayapeka	kayapeka							
3154	297	299	a	1	مَاءِ	mai	mai							Although [Atiya] did not really want the water,
3159	297	299	c	2	نَ	na	na							
3156	297	299	b	1	مِيٗمٗنِ	miyomoni	miyomoni							she took some into her mouth.
3088	290	292	c	3	عَطِكَ	ʿaṭika	'atika		Atika					
3158	297	299	c	1	أَكَٹُمْوَ	akaţumwa	akatumwa							[The cup] was given back by Atiya,
3186	300	302	c	1	كَمْپِكِيَ	kampikiya	kampikiya							and cooked [food] for Atiya
3162	297	299	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya							
3163	298	300	a	1	هَپٗ	hapo	hapo							So Fatima persuaded her
3164	298	300	a	2	كَمْكَلِفِشَ	kamkalifisha	kamkalifisha					\\Swa{-kalifisha} =  \\Swa{-lazimisha}.		
3202	302	304	a	1	نَ	na	na							And Fatima spoke
3165	298	300	b	1	وَعَظِ	waʿaẓi	wa'adhi							and showed her [what to do] by exhortation.
3204	302	304	a	3	أَتَمْكٖ	atamke	atamke							
3104	292	294	a	2	بَرُوَ	baruwa	baruwa		barua					
3106	292	294	b	2	كُئِفُنْڠُوَ	kuifunguwa	kuifunguwa		kuifungua					
3108	292	294	c	2	سِكُمُيُوَ	sikumuyuwa	sikumuyuwa		sikumuyua					
3166	298	300	b	2	كُمُؤٗنٖشَ	kumuonesha	kumuonesha		kumuonyesha					
3203	302	304	a	2	فَتُمَ	fatuma	fatuma		Fatuma					
2854	268	270	d	1	نَوٖ	nawe	nawe							and you know that well.
3167	298	300	c	1	مَاءِ	mai	mai							When [Atiya] had swallowed the water
3168	298	300	c	2	أَلِپٗيَشُشَ	alipoyashusha	alipoyashusha							
3188	300	302	d	1	وَكَلَ	wakala	wakala							and they all ate together.
3189	300	302	d	2	وٗتٖ	wote	wote							
3170	298	300	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya							
3190	300	302	d	3	پَمٗيَ	pamoya	pamoya							
3171	299	301	a	1	بَسِ	basi	basi							Then [Atiya] asked
3172	299	301	a	2	هَپٗ	hapo	hapo							
3173	299	301	a	3	أَمُؤُزٖ	amuuze	amuuze							
3174	299	301	b	1	زَ	za	za							for news of her son,
3175	299	301	b	2	مْوَنَوٖ	mwanawe	mwanawe							
3176	299	301	b	3	خَبَرِزٖ	khabarize	habarize							
3180	299	301	d	1	كِشَ	kisha	kisha							weeping at the end.
3181	299	301	d	2	أَكِلِيَ	akiliya	akiliya							
3228	304	306	b	2	هُتٗؤُذِكَ	hutoudhika	hutoudhika							
3182	300	302	a	1	هَتَ	hata	hata							Until, when dawn came,
3183	300	302	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka							
3220	303	305	c	1	أَكَئِنُكَ	akainuka	akainuka							She rose from her chair,
3185	300	302	b	2	أَكَئِنُكَ	akainuka	akainuka							
3206	302	304	b	2	مُمٖ	mume	mume							
3193	301	303	b	1	سَسَ	sasa	sasa							Now I [bid you] farewell.
3194	301	303	b	2	نَمِ	nami	nami							
3195	301	303	b	3	كْوَ	kwa	kwa							
3196	301	303	b	4	خٖرِنِ	kherini	herini							
3207	302	304	b	3	وَكٖ	wake	wake							
3197	301	303	c	1	مْوَنَنْڠُ	mwanangu	mwanangu							My son is [back] at home
3198	301	303	c	2	أُكٗ	uko	uko							
3199	301	303	c	3	مُئِنِ	muini	muini							
3200	301	303	d	1	مْٹُ	mţu	mtu							and I left no-one with him.
3201	301	303	d	2	سِكُمُوَتِيَ	sikumuwatiya	sikumuwatiya							
3216	303	305	a	3	نْدَنِ	ndani	ndani							
3208	302	304	c	1	نَاوٖ	nāwe	nawe							And you go and accompany her
3209	302	304	c	2	نٖنْدَ	nenda	nenda							
3266	307	309	c	2	نَ	na	na							
3210	302	304	c	3	كَمْپٖكٖ	kampeke	kampeke							
3230	304	306	c	2	وَٹُ	waţu	watu							
3211	302	304	d	1	أَسٖنْدٖ	asende	asende							so that Atiya [need] not go on her own.
3212	302	304	d	2	پْوٖكٖ	pweke	pweke							
3217	303	305	b	1	كْوَ	kwa	kwa							and signalled [Fatima] with his hand.
3218	303	305	b	2	مْكٗنٗ	mkono	mkono							
3219	303	305	b	3	كَبَئِنِ	kabaini	kabaini					He does not want Atika to hear.		
3224	304	306	a	1	كَمْبَ	kamba	kamba							He said: If I go and accompany her,
3223	303	305	d	2	أَكَمْوٖنْدٖيَ	akamwendeya	akamwendeya							
3225	304	306	a	2	چٖنْدَ	chenda	chenda							
3226	304	306	a	3	كِمْپٖكَ	kimpeka	kimpeka							
3231	304	306	c	3	هُتَمْكَ	hutamka	hutamka							
3233	304	306	d	2	هَيٗ	hayo	hayo							
3229	304	306	c	1	كْوَمْبَ	kwamba	kwamba							if people talk [about it]
3234	304	306	d	3	كُنَمْبِيَ	kunambiya	kunambiya							
3236	305	307	a	2	شَهِدِ	shahidi	shahidi							
3232	304	306	d	1	كَمَ	kama	kama							and gossip about me?
3235	305	307	a	1	كَنٖنَ	kanena	kanena							She said: I swear to God,
3238	305	307	b	1	هَيَمٗ	hayamo	hayamo							[such things] are not in my heart.
3239	305	307	b	2	مٗيٗنِ	moyoni	moyoni							
3169	298	300	d	1	مُنْڠُ	mungu	mungu		Mungu					[Fatima] interceded to God for her.
3240	305	307	b	3	مْوَنڠُ	mwangu	mwangu					Fatima, in contrast to her behaviour at the beginning of the ballad, has learnt to be magnanimous.		
3265	307	309	c	1	كَنْدَمَنَ	kandamana	kandamana							and walked along with Zubayr
3241	305	307	c	1	سَسَ	sasa	sasa							[Atiya] is like a sister to me -- 
3242	305	307	c	2	نِ	ni	ni							
3245	305	307	d	1	نَ	na	na							exactly the same as Qasim.
3247	305	307	d	3	نِ	ni	ni							
3269	307	309	d	2	أَكَرٖجٖيَ	akarejeya	akarejeya							
3249	306	308	a	1	هَپٗ	hapo	hapo							So Ali went out
3251	306	308	a	3	كَتٗكَ	katoka	katoka							
3252	306	308	b	1	كَنْدَمَنَ	kandamana	kandamana							and went along with Atiya.
3253	306	308	b	2	نَ	na	na							
3267	307	309	c	3	زُبٖيْرِ	zubēri	zuberi		Zuberi					
2960	278	280	c	2	نِ	ni	ni							
3270	308	310	a	1	نَ	na	na							And when he returned,
3283	309	311	b	2	زَنْڠُ	zangu	zangu							
3284	309	311	b	3	هُكٗمَ	hukoma	hukoma							
3260	307	309	a	1	هَپٗ	hapo	hapo							Then Ali the Lion-like
3273	308	310	b	1	نْدِپٗ	ndipo	ndipo							it was then that he told [the story],
3274	308	310	b	2	أَلِپٗرَدِدِ	aliporadidi	aliporadidi							
3263	307	309	b	1	أَكَصَلِ	akaṣali	akasali							said the midday prayers
3264	307	309	b	2	أَظُهُرِ	aẓuhuri	adhuhuri							
3275	308	310	c	1	مَنٖنٗ	maneno	maneno							striving for [exact] words,
3276	308	310	c	2	كِجِتَهِدِ	kijitahidi	kijitahidi							
3307	305	313	d	2	هُمُوَفِقِيَ	humuwafiqiya	humuwafiqiya					These claims are somewhat overblown -- this is not a religious text.		
3278	308	310	d	2	كِوَمْبِيَ	kiwambiya	kiwambiya							
3293	304	312	b	1	مْٹُ	mţu	mtu							so that a person may say them
3294	304	312	b	2	أَكَزِبَئِنِ	akazibaini	akazibaini							
3279	309	311	a	1	هَپَ	hapa	hapa							Here I have finished,
3285	309	311	c	1	نَ	na	na							and whoever reads [them]
3286	309	311	c	2	أَمْبَؤٗ	ambao	ambao							
3287	309	311	c	3	وَتَسٗمَ	watasoma	watasoma							
2616	245	247	c	1	پَلٖ	pale	pale							you would have got angry at that time [as well],
2620	245	247	d	3	نَكْوَمْبِيَ	nakwambiya	nakwambiya					In other words, \\q{You would have got angry if I had not told you lies}.		
2618	245	247	d	1	كَمَ	kama	kama							if I had told you the truth.
2623	246	248	a	3	نٖنْڠٖكُؤُذِ	nengekuudhi	nengekuudhi							
2621	246	248	a	1	نَ	na	na							And now, even if I have hurt you,
2624	246	248	b	1	نْدُڠُ	ndugu	ndugu							stop being angry, my dear.
2625	246	248	b	2	يَنْڠُ	yangu	yangu							
2626	246	248	b	3	وَتَ	wata	wata							
2627	246	248	b	4	غَرَضِ	gharaḍi	gharadhi					\\Swa{gharadhi} = \\Swa{hasira}.		
2628	246	248	c	1	مٗيٗ	moyo	moyo							let your heart be forgiving
2629	246	248	c	2	وَكٖ	wake	wake							
2630	246	248	c	3	أُوٖ	uwe	uwe							
2631	246	248	c	4	رَضِ	raḍi	radhi							
2669	249	251	d	2	أَكِمْوٖنْدٖلٖيَ	akimwendeleya	akimwendeleya					Unlike Ali, Ja'far cannot yet fight 200 opponents alone!		
3288	309	311	d	1	كْوَ	kwa	kwa							will be made aware of everything [that happened].
3289	309	311	d	2	زٗتٖ	zote	zote							
3290	309	311	d	3	زِكَوٖلٖيَ	zikaweleya	zikaweleya							
3299	304	312	d	2	أُسٗپُنْڠُلِيَ	usopunguliya	usopunguliya							
3309	306	314	a	2	كْوَ	kwa	kwa							
3295	304	312	c	1	أَصُبُحِ	aṣubuḥi	asubuhi							morning and evening.
3296	304	312	c	2	نَ	na	na							
3302	305	313	b	1	مْٹُيٖ	mţuye	mtuye							that person, he will not be troubled,
3303	305	313	b	2	هَتٗسُمْبُكَ	hatosumbuka	hatosumbuka							
3300	305	313	a	1	كْوَنْدَ	kwanda	kwanda							First, he will never be brought low,
3301	305	313	a	2	هَتٗذَلِلِكَ	hatodhalilika	hatodhalilika					\\Swa{-dhalilika}, \\E{be humble, be humiliated, no agent specified}.		
3304	305	313	c	1	نَ	na	na							and whatever he asks for
3305	305	313	c	2	أَتَكَلٗتَمْكَ	atakalotamka	atakalotamka							
3312	306	314	b	2	جَوَبُ	jawabu	jawabu							
3308	306	314	a	1	أَؤٗمْبَلٗ	aombalo	aombalo							Whatever he prays for from the Generous One,
2841	267	269	c	1	مْٹُ	mţu	mtu							a person may be seized [by death]
2955	278	280	a	2	أَكَفَسِرِ	akafasiri	akafasiri							
111	11	11	b	2	فَاطِمَه	fāṭimah	fatimah		Fatima					
112	11	11	c	1	حَسَنِ	ḥasani	hasani		Hasani					She sent Hasan, [saying:]
119	12	12	b	1	أَسِسِكِيٖ	asisikiye	asisikiye		asisikie					so that the Bearer of Good Tidings does not hear.
120	12	12	b	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
125	12	12	d	3	ٹُمْوَ	ţumwa	tumwa		Tumwa					
126	12	12	d	4	نَبِيَ	nabiya	nabiya		Nabiya			In other words, the child forgot to give the message privately (\\Swa{hakusema kwa siri}).  In any case, for a man to be called away from the \\Swa{baraza} by a message from home is very worrying, since it implies some emergency for which his presence is required.		
116	12	12	a	1	نَمْكُلِيَ	namkuliya	namkuliya		namkulia					I am summoning him secretly, 
1	1	1	a	1	بِسْمِ	bismi	bismi		bismillahi					\\q{In the name of God}, my friends
2668	249	251	d	1	عَلِيْ	ʿalii	'alii		Ali					Ali would go to him [to help].
2804	263	265	b	3	يَسِنِ	yasini	yasini		Ya Sini			See note to 151d.  Chapter 36, \\Eit{Ya Sin}, of the Qur'an is read over the sick or dying.  It is considered unfortunate to die without having it read over you.		
3261	307	309	a	2	عَلِيْ	ʿalii	'alii		Ali					
3262	307	309	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
3277	308	310	d	1	مصَحَبَ	mṣaḥaba	msahaba		Masahaba					telling the Companions.
2896	272	274	c	2	نَزٗ	nazo	nazo							
2862	269	271	c	1	كَپٖوَ	kapewa	kapewa					The passive of \\Swa{-pa}, \\E{give} is \\Swa{powa} in Amu, \\Swa{-pawa} in Mvita, and \\Swa{-pewa} in Zanzibar.		And when he was given this advice
2863	269	271	c	2	هَيٗ	hayo	hayo							
2864	269	271	c	3	مَنٖنٗ	maneno	maneno							
2897	272	274	c	3	أُپٖسِ	upesi	upesi							
2608	244	246	d	1	آٹِ	ãţi	ati					\\Swa{ati} here implies that what was said is a lie.		as you swore?
2610	244	246	d	3	هُٹِيَ	huţiya	hutiya							
2613	245	247	a	3	هَكِكَ	hakika	hakika							
2650	248	250	b	1	يٖيٖ	yeye	yeye							[Ali] and the boy, in the house.
2651	248	250	b	2	نَ	na	na							
2619	245	247	d	2	كِلٖ	kile	kile					Amend translation.		
2653	248	250	b	4	نْيُمْبَنِ	nyumbani	nyumbani							
2622	246	248	a	2	سَسَ	sasa	sasa							
2652	248	250	b	3	مْوَنَ	mwana	mwana							
2881	271	273	b	1	مٗيَ	moya	moya							and this one for his teacher,
2609	244	246	d	2	زِيَپٗ	ziyapo	ziyapo		ziapo			\\E{oaths}.		
2865	269	271	d	1	عَقِلِ	ʿaqili	'aqili		akili					[Ali] regained his senses.
2869	270	272	a	3	كُتٗوَ	kutowa	kutowa		kutoa			Fix kutuwa		
2866	269	271	d	2	إِكَمْنْڠِيَ	ikamngiya	ikamngiya					He realised the truth -- to be sorrowful is a mistake, as the Prophet has said.  This sort of bereavement has always happened -- it is the same for everyone, and you cannot help it.  The Swahili practice is to console people by saying things like this -- if the bereaved family thought that they were the only ones to whom this was happening, they would become very distraught.		
2882	271	273	b	2	نْدَ	nda	nda							
2883	271	273	b	3	مْوَلِمُ	mwalimu	mwalimu							
2870	270	272	b	1	زُبَيْرِ	zubayri	zubayri		Zuberi					He summoned Zubayr [and said:]
2884	271	273	b	4	وَكٖ	wake	wake							
2867	270	272	a	1	هَپٗ	hapo	hapo							So when he had calmed down
2868	270	272	a	2	أَكِشَ	akisha	akisha							
2872	270	272	c	1	تَكُپَ	takupa	takupa							I will give you my letters
2873	270	272	c	2	زَنْڠُ	zangu	zangu							
2885	271	273	c	1	نَ	na	na							and when you go there do not say
2875	270	272	d	1	أُپَٹٖ	upaţe	upate							so that you may deliver them for me.
2876	270	272	d	2	كُنِپٖكٖيَ	kunipekeya	kunipekeya							
2871	270	272	b	2	كَمْوَمْكُوَ	kamwamkuwa	kamwamkuwa		kamwamkua					
2874	270	272	c	3	بَرُوَ	baruwa	baruwa		barua					
2912	274	276	a	1	زُبَىْرِ	zubayri	zubayri		Zuberi					When Zubayr had left
2906	273	275	c	1	إِلٖ	ile	ile							and the one for [Ja'far's] teacher
2886	271	273	c	2	أُچٖنْدَ	uchenda	uchenda							
2953	277	279	d	2	أَكِنْڠِيَ	akingiya	akingiya		akingia					
2952	277	279	d	1	مْلَنْڠٗنِ	mlangoni	mlangoni					In other words, \\Swa{alikwenda usiku kucha}, \\E{she travelled all night}, and arrived at Mecca, where she immediately makes for the first house in the village -- this just happens to be one where Hamza and Umar are present.  Note that in her distress Atika does not even ask permission to enter (\\Swa{Hodi!}).		she went in the door.
2975	280	282	a	2	نِمٖعَبِرِ	nimeʿabiri	nime'abiri							
2964	279	281	a	1	مْوَنَمْكٖ	mwanamke	mwanamke							The woman spoke:
3039	286	288	b	2	إِسِلَامُ	isilāmu	isilamu							
3027	285	287	a	2	عَلِيْ	ʿalii	'alii		Ali					
3026	285	287	a	1	هَپٗ	hapo	hapo							Then Ali went out,
3028	285	287	a	3	كَتٗكَ	katoka	katoka							
3029	285	287	b	1	مَتٗزِ	matozi	matozi							his tears flowing,
3105	292	294	b	1	كَٹِكَ	kaţika	katika							and when I opened it
3192	301	303	a	2	أَكَبَئِنِ	akabaini	akabaini							
3179	299	301	c	3	أَمْوٖلٖزٖ	amweleze	amweleze							
3177	299	301	c	1	نَ	na	na							and Ali explained [everything] to her,
3178	299	301	c	2	عَلِيْ	ʿalii	'alii		Ali					
3221	303	305	c	2	كِٹِنِ	kiţini	kitini							
3255	306	308	c	1	أَكٖنْدَ	akenda	akenda							He went and accompanied her
3256	306	308	c	2	أَكَمْپٖكَ	akampeka	akampeka							
3271	308	310	a	2	هَپٗ	hapo	hapo							
3272	308	310	a	3	أَلِپٗرُدِ	aliporudi	aliporudi							
3257	306	308	d	1	هَتَ	hata	hata							until he reached her home.
3258	306	308	d	2	كْوَءٗ	kwao	kwao							
3259	306	308	d	3	أَكَنْڠِيَ	akangiya	akangiya							
2900	273	275	a	1	بَرُوَ	baruwa	baruwa		barua					When he had given her the letter
2968	279	281	b	3	أَتْوِكَ	atwika	atwika		Atika					
2901	273	275	a	2	كُمْپَ	kumpa	kumpa							
2902	273	275	a	3	كْوَكٖ	kwake	kwake							
2913	274	276	a	2	كُتٗكَ	kutoka	kutoka							
2965	279	281	a	2	كَتَمْكَ	katamka	katamka							
2982	280	282	d	2	هَيَ	haya	haya							
2966	279	281	b	1	كَنٖنَ	kanena	kanena							and said: I am Atiya.
2967	279	281	b	2	نْدِمِ	ndimi	ndimi							
2983	280	282	d	3	يَوٖلٖيَ	yaweleya	yaweleya							
3024	284	286	d	1	نَپٖنْدَ	napenda	napenda							I want to see it.
3025	284	286	d	2	كُيَنْڠَلِيَ	kuyangaliya	kuyangaliya							
3047	287	289	a	3	نِ	ni	ni							
3099	291	293	c	3	زُبٖيْرِ	zubēri	zuberi		Zuberi					
3128	294	296	d	1	نْدَنِ	ndani	ndani							she had read into it.
3292	304	312	a	2	زِيُوٖنِ	ziyuweni	ziyuweni		ziyueni					
3244	305	307	c	4	نْدُيَنْڠُ	nduyangu	nduyangu							
3268	307	309	d	1	مُئِنِ	muini	muini							and returned to the town.
3051	287	289	b	3	كِٹِ	kiţi	kiti		kite	*		\\Swa{kite}, \\E{birth pangs}.  These give a mother a special love (\\Swa{huruma}) for her child -- she will willingly sacrifice herself for the child.  We see this even in animals.		
2649	248	250	a	3	لِسَنِ	lisani	lisani		hisani	*		\\Swa{hisani}, \\E{kindness, goodness}.		
\.


--
-- Name: jaafari_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_words_word_id_seq', 3328, true);


--
-- Name: jaafari_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY jaafari_words
    ADD CONSTRAINT jaafari_words_pk PRIMARY KEY (word_id);


--
-- PostgreSQL database dump complete
--

