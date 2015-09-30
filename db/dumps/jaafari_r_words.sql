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
-- Name: jaafari_r_words; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE jaafari_r_words (
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
    english character varying(250) DEFAULT ''::character varying NOT NULL,
    pos character varying(25) DEFAULT ''::character varying NOT NULL,
    slot character varying(25) DEFAULT ''::character varying NOT NULL,
    lg character varying(25) DEFAULT ''::character varying NOT NULL,
    tense character varying(20) DEFAULT ''::character varying NOT NULL,
    neg character varying(10) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.jaafari_r_words OWNER TO kevin;

--
-- Name: jaafari_r_words_word_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE jaafari_r_words_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jaafari_r_words_word_id_seq OWNER TO kevin;

--
-- Name: jaafari_r_words_word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE jaafari_r_words_word_id_seq OWNED BY jaafari_r_words.word_id;


--
-- Name: word_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY jaafari_r_words ALTER COLUMN word_id SET DEFAULT nextval('jaafari_r_words_word_id_seq'::regclass);


--
-- Data for Name: jaafari_r_words; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY jaafari_r_words (word_id, msno, stanza, loc, "position", arabic, close, standard, edclose, edstan, emend, variant, note, root, english, pos, slot, lg, tense, neg) FROM stdin;
3432	349	343	b	1	اَسِوَاتِ	asiwāti	asiwati		asiwate				-ach-		v		b	past	y
1430	148	143	c	1	اِكِوَا	ikiwā	ikiwa						-w-		v		b	ki	
1829	187	182	a	1	اِكِوَا	ikiwā	ikiwa						-w-		v		b	ki	
2049	210	204	c	1	اِكِوَا	ikiwā	ikiwa						-w-		v		b	ki	
493	50	50	b	3	جُمَ	juma	juma					It is unfortunate that Ali does not tell the Prophet of his meeting with the person who stopped him on the way -- the Prophet would have known immediately that it was a devil, as he demonstrates in 66c.	j-m-3		n		a		
695	70	70	b	2	جُمَعْ	jumaʿ	juma						j-m-3		n		a		
667	67	67	c	2	جُمَ	juma	juma						j-m-3		n		a		
728	74	73	c	2	جُمَعْ	jumaʿ	juma						j-m-3		n		a		
618	62	62	d	1	جُمَ	juma	juma						j-m-3	for not coming to Friday [prayers]?	n		a		
545	55	55	c	3	جُمَ	juma	juma						j-m-3		n		a		
2114	216	210	a	1	كَمُوَاڠِا	kamuwāgiā	kamuwagia	kamuwāgī	kamuage				-ag-	Say farewell to your uncle,	v		b	ka	
2235	227	221	a	2	كَنُظُمُ	kanuẓumu	kanudhumu						n-dw-m		v		a	ka	
1277	133	128	c	1	نَعَلِيْ	naʿalii	naalii		na Aliyi				3-l-y		persn		a		
2894	294	288	c	1	نَعَلِيْ	naʿalii	naalii		na Aliyi				3-l-y	and Ali the Lionlike --	persn		a		
3272	333	327	b	1	نَعَلِيْ	naʿalii	naalii		na Aliyi				3-l-y		persn		a		
3664	372	366	c	1	نَعَلِيْ	naʿalii	naalii		na Aliyi				3-l-y		persn		a		
343	34	34	b	3	نَكَسِ	nakasi	nakasi		na kasi			\\q{with a sharp and stern look}.							
216	22	22	a	2	عَلِيْ	ʿalii	alii		Ali				3-l-y		persn		ar		
51	6	6	a	1	عَلِى	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2	1	1	a	2	اَوَّلِ	awwali	auwali		awali				w-w-l		noun		ar		
378	38	38	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima			\\q{Fatima was silent}.	f-t-m		persn		ar		
959	98	96	d	2	كُپُتِيْيَا	kuputı̄yā	kuputiya		kupoteya			\\q{he should be hidden and lost}.	-pote-		verb		ba	ku	
308	30	30	d	1	مْتُمِ	mtumi	mtumi		Mtumi				-tum-		title		ba		
608	61	61	d	1	مْتُمِ	mtumi	mtumi		Mtumi				-tum-	The Prophet looked at him [in surprise].	title		ba		
2542	258	252	c	1	مْتُمِ	mtumi	mtumi		Mtumi				-tum-		title		ba		
2861	291	285	a	1	مْتُمِ	mtumi	mtumi		Mtumi				-tum-		title		ba		
2989	304	298	b	2	مْتُمِ	mtumi	mtumi		Mtumi				-tum-		title		ba		
341	34	34	b	1	اُسُ	usu	usu		uso				-so		noun		ba		
65	7	7	a	2	بِنْتِ	binti	binti						b-n-t		noun		ar		
162	17	17	a	2	كَشَوِشِكَ	kashawishika	kashawishika						sh-a-sh		verb		ar	ka	
199	20	20	b	3	يَنْڠُ	yangu	yangu					\\q{that I may answer for my soul}.	-angu		poss		ba		
2079	213	207	a	1	نَمْتُمِ	namtumi	namtumi		na Mtumi				-tum-		title		b		
455	46	46	b	2	شَيْطَانِ	shayṭāni	shaytani		shetani			In Swahili \\Swa{shetani} can also be used to mean "temptation".  For instance, if you have some work to do and a friend persuades you that you should put off the work and go out for a walk with him instead, you may say: \\Swa{haya, shetani mekuja}, \\E{alright, I'll give in to the temptation}.							
596	60	60	d	2	اَكِوَاپِ	akiwāpi	akiwapi		akiwapijiya			lit. \\q{calling out \\Swa{hodi} to them}.							
656	65	66	c	1	نِشِيْطَانِ	nishı̄ṭāni	nishitani		ni shetani					know that it is a devil.					
754	77	76	a	2	شِطَانِ	shiṭāni	shitani		shetani			The devil is too slow -- \\Swa{akigeuka tu, Ali akamshika}, \\E{no matter how he twisted, Ali grabbed him}.							
795	82	80	a	3	هُلِوِتَ	huliwita	huliwita		hulieta			\\Swa{-eta} = \\Swa{-leta}.							
804	83	81	a	1	اُمِئِفَنْيَّ	umiifanı̄ya	umiifaniya	umiifanyya	umeyifanya					You have misled yourself,					
1673	172	167	b	1	كَنِوُلِزَا	kaniwulizā	kaniwuliza		kaniuliza				-uz-		v		b	ka	
1755	180	175	b	3	اَزْوَاجِ	azwāji	azwaji		Aziwaji										
3169	322	316	b	1	حَيَازُوِيَ	ḥayāzuwiya	hayazuwiya		hayazoea										
3174	322	316	d	2	اَكِمْوَارُلِيَا	akimwāruliyā	akimwaruliya		akimwanduliya			\\q{he would not attack there}.							
3577	363	357	c	2	كَتُوَا	katuwā	katuwa		katua										
303	30	30	b	1	وَلِوُ	waliwu	waliwu		walio										
851	87	85	d	2	اَكِزُنْڠُكِيَا	akizungukiyā	akizungukiya												
3643	370	364	b	1	مَيِ	mayi	mayi						maji		n		b		
3654	371	365	c	1	مَيِ	mayi	mayi						maji		n		b		
2946	299	293	d	1	مَيِ	mayi	mayi						maji	and brought [it] to them.	n		b		
1078	112	109	a	2	حُنِشِيْكِيَنِ	ḥunishı̄kiyani	hunishikiyani		hunishikia-ni				-shik-		verb		ba	hu	
3167	322	316	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
1747	179	174	c	2	لَكُ	laku	laku		lako				-ako		poss		ba		
1643	169	164	a	2	مْوِنْدَاپِ	mwindāpi	mwindapi		mwenda-pi				-end-		verb		ba	a	
1786	183	178	b	1	نِمٖػُوْكَ	nimekʲūka	nimechuka		nimechoka				-chok-		verb		ba	me	
3173	322	316	d	1	وَلْ	wal	wal		wala	*			wala		conj		ba		
2468	251	245	b	1	وَمُيُوَاپِ	wamuyuwāpi	wamuyuwapi		wamuyua-pi				-ju-		verb		ba	a	
794	82	80	a	2	يَابُ	yābu	yabu		yambo				-amb-		noun		ba		
1605	165	160	c	2	هَكُوْنَ	hakūna	hakuna						-na		have		ba		
1948	200	194	c	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
594	60	60	c	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima				h-sh-m		title		ar		
1360	141	136	c	3	حَلِيْمَمَ	ḥalı̄mama	halimama						halimama		noun		ba		
3376	344	338	a	1	هِنِ	hini	hini						h-		dem		ba		
1748	179	174	c	3	هُفَصِيْرِ	hufaṣı̄ri	hufasiri						f-s-r		verb		ar	hu	
936	96	94	c	2	جَمِعِ	jamiʿi	jamii						j-m-3		noun		ar		
923	95	93	a	3	كَلِمُ	kalimu	kalimu					\\Swa{Maneno yametimia sasa}.  This could either mean \\q{this part of the story is over}, or \\q{the time for talking is over}.	k-l-m		noun		ar		
2208	224	218	b	2	كُمِ	kumi	kumi					i.e. 4.00am.	-kumi		num		ba		
3387	344	338	d	3	كُوَمْبِيَا	kuwambiyā	kuwambiya					\\q{to tell them privately [what has happened]}.	-amb-		verb		ba	ku	
3385	344	338	d	1	كْوَا	kwā	kwa						-a		ref		ba		
241	24	24	b	1	مِمِ	mimi	mimi						mimi		pron		ba		
3171	322	316	c	1	مَحَلِ	maḥali	mahali						m-hh-l		noun		ar		
2111	215	209	c	3	سَفَارِ	safāri	safari					It would be rude not to say goodbye to your closest friends and relatives before going on a journey, especially if it is a long one.	s-f-r		noun		ar		
1472	152	147	d	1	سُرَا	surā	sura						sw-w-r		noun		ar		
1163	120	117	c	2	اُجَڠِيْنَ	ujagı̄na	ujagina						jagina		noun		ba		
245	24	24	c	3	وَ	wa	wa						w-a		conj		ar		
564	57	57	c	1	وَلَا	walā	wala						wala		conj		ba		
398	40	40	b	3	يَنْڠُ	yangu	yangu						-angu		poss		ba		
3383	344	338	c	1	نَوْػِنْرَا	nawkʲinrā	nauchinra		na uchenda				-end-		v		b	ki	
1136	118	115	a	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
708	72	71	c	1	اَكَيْتُوَا	akaytuwā	akaytuwa		akaitoa				-to-	then he acted quickly	v		b	ka	
3380	344	338	b	1	نَهِيْنِ	nahı̄ni	nahini		na hini				h-		poss		b		
1819	186	181	a	2	مَيِ	mayi	mayi						maji		n		b		
1416	146	141	d	3	لَنْدِيَا	landiyā	landiya		la ndiya				-jia		n		b		
552	56	56	b	3	يَنِيْنِ	yanı̄ni	yanini		ya nini			lit: "early of what", which expresses indignation: "how can it be early?"  See also \\Swa{sina-ni} in 109b.	nini		int		b		
1235	128	124	c	1	يَمَكَ	yamaka	yamaka		ya Maka				m-k-k		placen		a		
1234	128	124	b	3	نِمْبِلِ	nimbili	nimbili		ni mbili				-wili		num		b		
370	37	37	b	1	نِكَمَ	nikama	nikama		ni kama				k-m-a		conj		a		
2040	209	203	c	2	اِوَا	iwā	iwa												
10	1	1	d	2	اَلُتَنْرِكِوَ	alutanrikiwa	alutanrikiwa		alotandikiwa				-tand-		v		b	li	
3823	379	383	a	2	كِكَرِرِ	kikariri	kikariri						k-r-r		v		a	ki	
3817	378	382	c	1	اُرُادِ	uruādi	uruadi	urūdi	urudi										
3612	367	361	b	2	مَيِ	mayi	mayi						maji		n		b		
3821	378	382	d	2	اَصِزُتِلِوَى	aṣizutiliway	asizutiliway		asizotiliwa										
3825	379	383	b	2	سُمَ	suma	suma		soma										
5	1	1	b	3	مِثَلِ	mithali	mithali						m-th-l		n		a		
3828	379	383	c	2	وَجَعْفَرِ	wajaʿfari	wajafari		wa Jaafari										
3831	380	384	a	1	تمت	tmt	tmt		tamati					It is accomplished with blessing.					
3833	380	384	a	3	الخير	ālkhı̄r	alhir		al-heri										
3834	380	384	b	1	عمت	ʿmt	mt		amati										
3835	380	384	b	2	وصآ	wṣã	usa		wasi										
3836	380	384	b	3	اللّٰه	lläh	llah		al-llahi										
3842	380	384	d	2	على	ʿlı̄	li		alehe										
3843	380	384	d	3	اله	ālh	alh		~										
3844	380	384	d	4	وصحبه	wṣḥbh	ushbh		wa sahabihi										
2664	270	264	d	2	وَلِيُ	waliyu	waliyu		waliyonambiya				-amb-		v		b	li	
3822	379	383	a	1	نِمِكْوَانْدَ	nimikwānda	nimikwanda		nimekwanda				-anz-		v		b	me	
4	1	1	b	2	اَسِيُ	asiyu	asiyu		asiyo										
30	3	3	d	3	نِجِرِيَا	nijiriyā	nijiriya		~										
6	1	1	c	1	بِنْڠُ	bingu	bingu		mbingu					[Creator of] Paradise, the Beneficent -- 					
8	1	1	c	3	مْفَضِلِ	mfaḍili	mfadhili		Mfadhili										
3845	380	384	d	5	وسلم	ūslm	uslm		wa salamu										
3820	378	382	d	1	مْوِسُ	mwisu	mwisu		mwiso				-ish-		n		b		
31	4	4	a	1	نَلِ	nali	nali												
14	2	2	b	2	نَأَرَاحَمَنِ	naarāḥamani	naarahamani		na ar-rahamani				r-hh-m		godn		a		
3593	365	359	a	2	بَرُوَا	baruwā	baruwa		barua				b-r-w		noun		ar		
3819	378	382	c	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
29	3	3	d	2	ػَلُ	kʲalu	chalu		chalonijiriya				j-r-y		verb		ar	li	
3705	376	370	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3085	314	308	a	2	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3797	376	380	b	2	هَتُسُمْبُكَ	hatusumbuka	hatusumbuka		hatosumbuka			i.e. he will not remain poor.	-sumb-		verb		ba	ta	
3826	379	383	b	3	اِظْهَرِا	iẓhariā	idhharia	iẓharī	idhihari				zw-h-r		noun		ar		
12	2	2	a	2	اِخْوَانِ	ikhwāni	ihwani		ihiwani				kh-w-n		noun		ar		
3422	348	342	b	2	لِمُ	limu	limu		limo				LOC		loc		ba		
2427	247	241	a	1	مَكَ	maka	maka		Maka				m-k-k		placen		ar		
3840	380	384	c	4	محمد	mḥmd	mhmd		Muhamadi				m-hh-m-d		persn		ar		
3000	305	299	c	1	مْوِنْيِوِ	mwinyiwi	mwinyiwi		mwenyewe				-enye		noun		ba		
3377	344	338	a	2	مُيَ	muya	muya		moya				-oyo		noun		ba		
3824	379	383	b	1	نَوِ	nawi	nawi		nawe				na		conj		ba		
3525	358	352	c	2	نْدِ	ndi	ndi		nde				-je		adv		ba		
33	4	4	a	3	دِيَنِ	diyani	diyani		ndiani				-jia		noun		ba		
9	1	1	d	1	رِيُ	riyu	riyu		ndiyo				ni	that is what is written [first].	focus		ba		
32	4	4	a	2	نِرَاؤُ	nirau	nirau		nendao				-end-		verb		ba	a	
2393	243	237	c	3	نِكُ	niku	niku		niko				LOC		loc		ba		
13	2	2	b	1	پَمِ	pami	pami		pamwe				-mwe		adv		ba		
3	1	1	b	1	پْوِكِ	pwiki	pwiki		pweke				peke	alone, without equal,	adv		ba		
2196	223	217	b	1	سِكُ	siku	siku						-siku	get up [immediately] each day,	noun		ba		
47	5	5	c	2	پِتِ	piti	piti		pete				-pet-		noun		ba		
3838	380	384	c	2	سيّد	sı̄yd	sid		Sayidi				s-3-d		title		ar		
2608	265	259	a	3	تَمْكُ	tamku	tamku		tamko				-tamk-		noun		ba		
3832	380	384	a	2	وايا	wāyā	waya		wa				w-a		conj		ar		
2354	239	233	c	2	وِنْدَانِ	windāni	windani		wendani				-end-		noun		ba		
2466	251	245	a	1	زُبِيْرِ	zubı̄ri	zubiri		Zuberi				z-b-r		persn		ar		
48	5	5	c	3	ػَنْدَانِ	kʲandāni	chandani						-anda		noun		ba		
2010	206	200	d	1	هُكُ	huku	huku						h-		dem		ba		
3830	379	383	d	2	عَلِيْايَا	ʿaliyāyā	aliyaya		Aliya				3-l-y		persn		ar		
3199	325	319	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3841	380	384	d	1	و	w	u		wa				w-a		conj		ar		
2598	264	258	a	2	كَفَصِيْرِ	kafaṣı̄ri	kafasiri						f-s-r		verb		ar	ka	
3254	331	325	a	3	كِتِيْنِ	kitı̄ni	kitini						-ti		noun		ba		
2778	282	276	a	1	كْوَا	kwā	kwa						-a		ref		ba		
2834	288	282	a	4	كْوِمَ	kwima	kwima						-im-		verb		ba	ku	
46	5	5	c	1	نَلِنَ	nalina	nalina						-na		have		ba		
3839	380	384	c	3	نا	nā	na						ni		exist		ba		
2214	224	218	d	3	نْدِيَا	ndiyā	ndiya						-jia		noun		ba		
66	7	7	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title		ar		
16	2	2	c	2	يُوَانِ	yuwāni	yuwani						-ju-		verb		ba	imp	
7	1	1	c	2	نْجِمَ	njima	njima		njema				-ema		adj		b		
2833	288	282	a	3	كِسَا	kisā	kisa						-ish-		v		b	ki	
38	4	4	c	2	اُكَتَمَنِ	ukatamani	ukatamani												
68	7	7	b	2	اَسِتَعَمَلِ	asitaʿamali	asitaamali						a-m-l		v		a	past	y
114	12	12	b	1	اَسِوِزِ	asiwizi	asiwizi		asiweze				-wez-		v		b	past	y
41	4	4	d	3	كَرِضِيَا	kariḍiyā	karidhiya						r-a-zw		v		a	ka	
3633	369	363	b	2	مَيِ	mayi	mayi						maji		n		b		
75	8	8	a	2	اُغِيْزِيِ	ughı̄ziyi	ughiziyi		ungizie			\\q{and entered [the house]}							
1797	184	179	b	1	مَيِ	mayi	mayi						maji		n		b		
18	2	2	d	2	يَلُتَغُلِىَ	yalutaghuliya	yalutaghuliya		yalotanguliya				-tanguli-		v		b	li	
81	8	8	d	2	هُيَسِكِيَا	huyasikiyā	huyasikiya						-siki-		v		b	me	y
89	9	9	d	2	كَمْتِيَا	kamtiyā	kamtiya						-ti-		v		b	ka	
90	10	10	a	1	سِپَتٖ	sipate	sipate												
92	10	10	a	3	نِكْوِلِ	nikwili	nikwili		ni kweli										
24	3	3	b	3	كْوَنْڠُ	kwangu	kwangu						-angu		poss		b		
99	10	10	d	2	تَمُوَاغَلِيْيَ	tamuwāghalı̄ya	tamuwaghaliya		tamuangaliya										
93	10	10	b	1	حُجَ	ḥuja	huja		hoja				hh-w-j		noun		ar		
95	10	10	c	1	اَرُدِپُ	arudipu	arudipu		arudipo				r-d-d		verb		ar	a	
118	12	12	d	1	بَبَكُ	babaku	babaku		babako				baba		noun		ba		
76	8	8	b	1	فَطِمَ	faṭima	fatima		Fatima				f-t-m		persn		ar		
40	4	4	d	2	حَلَلِا	ḥalaliā	halalia	ḥalalī	halali				hh-l-l		adj		ar		
116	12	12	c	1	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn		ar		
67	7	7	b	1	حَيُ	ḥayu	hayu		hayo				h-		dem		ba		
87	9	9	c	2	كَمُوُنِيْشَ	kamuwunı̄sha	kamuwunisha		kamuonyesha				-on-		verb		ba	ka	
34	4	4	b	1	كَأُنَ	kauna	kauna		kaona				-on-		verb		ba	ku	
52	6	6	a	2	كِتُكَ	kituka	kituka		kitoka				-to-		verb		ba	ki	
53	6	6	a	3	كْوَاكِ	kwāki	kwaki		kwake				-ake		poss		ba		
23	3	3	b	2	مَتِنْبِزِ	matim̱bizi	matimbizi		matembezi				-temb-		noun		ba		
60	6	6	c	3	مْكِى	mkii	mkii		mke				-ke		noun		ba		
62	6	6	d	1	مْكُنُ	mkunu	mkunu		mkono				-kono		noun		ba		
56	6	6	b	3	مُيُ	muyu	muyu		moyo				-oyo		noun		ba		
119	12	12	d	2	نَمْكُلِيَا	namkuliyā	namkuliya						-amku-		verb		ba	a	
44	5	5	b	1	نَلُمْپَ	nalumpa	nalumpa		nalompa				-p-		verb		ba	li	
21	3	3	a	3	رُزَنْڠُ	ruzangu	ruzangu		nduzangu				-dugu		noun		ba		
70	7	7	c	2	مْوِنْيِ	mwinyi	mwinyi		mwenye				-enye		noun		ba		
77	8	8	b	2	نِكْوَابِيِ	nikwābiyi	nikwabiyi		nikwambie				-amb-		verb		ba	subj	
25	3	3	c	1	نِوَاپِ	niwāpi	niwapi		niwape				-p-		verb		ba	subj	
79	8	8	c	2	اُوْزِايِ	ūziāyi	uziayi	ūzīyi	uozee				-o-		verb		ba	past	
61	6	6	c	4	وَاكِ	wāki	waki		wake				-ake		poss		ba		
141	15	15	b	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
22	3	3	b	1	كْوِرَا	kwirā	kwira		kwenda				-end-		v		b	ku	
45	5	5	b	2	زَيْدَانِ	zaydāni	zaydani		zaidani				z-a-d		adv		ar		
117	12	12	c	2	اَكَمْتُمَ	akamtuma	akamtuma						-tum-		verb		ba	ka	
86	9	9	c	1	اَلَمَ	alama	alama						3-l-m		noun		ar		
73	7	7	d	2	اَكَمْوَابِيَا	akamwābiyā	akamwabiya		akamwambiya				-amb-		verb		ba	ka	
58	6	6	c	1	اَكِرَا	akirā	akira		akenda				-end-		verb		ba	ki	
131	14	14	a	1	كَفَصِيْرِ	kafaṣı̄ri	kafasiri						f-s-r		verb		ar	ka	
71	7	7	c	3	عَقِلِ	ʿaqili	aqili		akili				3-q-l		noun		ar		
98	10	10	d	1	اِيُ	iyu	iyu		yeo				juu		adv		ba		
26	3	3	c	2	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
72	7	7	d	1	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
19	3	3	a	1	كَتِكَ	katika	katika						kati		prep		ba		
49	5	5	d	1	كَوَاحِ	kawāḥi	kawahi						w-kh-kh		verb		ar	ka	
39	4	4	d	1	كْوَا	kwā	kwa						-a		ref		ba		
59	6	6	c	2	كْوَ	kwa	kwa						-a		ref		ba		
96	10	10	c	2	كْوَا	kwā	kwa						-a		ref		ba		
91	10	10	a	2	كْوَمْبَا	kwambā	kwamba						-amb-		verb		ba	ku	
83	9	9	a	2	مْشَوَاشَ	mshawāsha	mshawasha						sh-a-sh		noun		ar		
35	4	4	b	2	مْتُ	mtu	mtu						-tu		noun		ba		
132	14	14	a	2	مُعَيَنِ	muʿayani	muayani						3-a-n		adv		ar		
64	7	7	a	1	مْوَانَ	mwāna	mwana		Mwana				-ana		noun		ba		
36	4	4	b	3	نْيُمْبانِ	nyumbāni	nyumbani						-umb-		noun		ba		
55	6	6	b	2	رُبَ	ruba	ruba						r-a-b		noun		ar		
20	3	3	a	2	سِكُ	siku	siku						-siku		noun		ba		
94	10	10	b	2	سِكُتَعَمَلِ	sikutaʿamali	sikutaamali						a-m-l		verb		ar	li	
88	9	9	d	1	تَنَبُحِ	tanabuḥi	tanabuhi					\\q{and made her aware}.	n-b-b		noun		ar		
54	6	6	b	1	اُنَ	una	una						-na		have		ba		
27	3	3	c	3	يَنْڠُ	yangu	yangu						-angu		poss		ba		
85	9	9	b	2	اَكَمْكَنُشَا	akamkanushā	akamkanusha						-kan-		v		b	ka	
37	4	4	c	1	مُيُوِ	muyuwi	muyuwi		moyowe				-oyo		n		b		
42	5	5	a	1	نَمَهَرِيِ	namahariyi	namahariyi		na mahariye				m-h-r		n		a		
123	13	13	b	1	اَسِكُيُوِا	asikuyuwiā	asikuyuwia	asikuyuwī	asikuyue				-ju-		v		b	li	y
2922	297	291	b	2	مَايِ	māyi	mayi						maji		n		b		
177	18	18	b	3	نَحُمَ	naḥuma	nahuma		na huma				hh-m-m		n		a		
164	17	17	b	2	رُحُمَ	ruḥuma	ruhuma												
113	12	12	a	3	مَمَ	mama	mama		~										
170	17	17	d	2	نَلُ	nalu	nalu		nalo										
169	17	17	d	1	اُلِلُ	ulilu	ulilu		ulilo										
201	20	20	c	2	اُپُوِ	upuwi	upuwi		upoe										
176	18	18	b	2	وَاشِكْوَا	wāshikwā	washikwa												
219	22	22	b	2	اُلِلُا	uliluā	ulilua	ulilū	ulilofasiri										
220	22	22	b	3	فَصِيْرِا	faṣı̄riā	fasiria	faṣı̄rī	~										
102	11	11	a	3	أمِيْنِ	mı̄ni	mini		Amini				a-m-n		title		ar		
143	15	15	b	3	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
133	14	14	b	1	حَمْكُلِوَا	ḥamkuliwā	hamkuliwa						-amku-		verb		ba	hu	
140	15	15	a	2	هَشِيْمَ	hashı̄ma	hashima		Hashima				h-sh-m		title		ar		
155	16	16	c	1	حَتَى	ḥatay	hatay		hata				h-t-t		conj		ar		
103	11	11	b	1	حَيُ	ḥayu	hayu		hayo				h-		dem		ba		
144	15	15	c	1	حُكْوَمْكُوَ	ḥukwamkuwa	hukwamkuwa		hukuamkua				-amku-		verb		ba	hu	
138	14	14	d	2	اِكَمْڠِيْيَا	ikamgı̄yā	ikamgiya		ikamngiya				-ingi-		verb		ba	ka	
139	15	15	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
173	18	18	a	2	كِطَ	kiṭa	kita		kitwa				-chwa		noun		ba		
135	14	14	c	1	كُسِكِيَكْوِ	kusikiyakwi	kusikiyakwi		kusikiakwe				-siki-		verb		ba	ku	
181	18	18	d	2	مَرَضِيْ	maraḍii	maradhii		maradhi				r-a-zw		noun		ar		
149	15	15	d	3	مَزُوِيَا	mazuwiyā	mazuwiya		mazoeya				-zoe-		noun		ba		
200	20	20	c	1	مُوْيُ	mūyu	muyu		moyo				-oyo		noun		ba		
130	13	13	d	4	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
127	13	13	d	1	مْبِيْ	mbii	mbii		mbee				-bele		adv		ba		
171	17	17	d	3	نَمْبِيَا	nambiyā	nambiya						-amb-		verb		ba	imp	
134	14	14	b	2	نْيُمْبَانِ	nyumbāni	nyumbani						-umb-		noun		ba		
203	20	20	d	1	نَوِ	nawi	nawi		nawe				na		conj		ba		
147	15	15	d	1	نَيُ	nayu	nayu		nayo				na		conj		ba		
104	11	11	b	2	نْرِيُ	nriyu	nriyu		ndiyo				ni		focus		ba		
218	22	22	b	1	نِنُ	ninu	ninu		neno				-nen-		noun		ba		
148	15	15	d	2	سِيُ	siyu	siyu		siyo				si		focus		ba		
129	13	13	d	3	تُمْوَا	tumwā	tumwa		Tumwa				-tum-		title		ba		
107	11	11	c	2	پِتِ	piti	piti		pete				-pet-		noun		ba		
204	20	20	d	2	اُكُمِ	ukumi	ukumi		ukome				-kom-		verb		ba	subj	
142	15	15	b	2	اُنَنِ	unani	unani		una-ni				-na		have		ba		
137	14	14	d	1	عَجَبُ	ʿajabu	ajabu						3-j-b		noun		ar		
151	16	16	a	2	اَكَيْنُكَ	akaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
150	16	16	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
126	13	13	c	2	اَكَفَصِيْرِ	akafaṣı̄ri	akafasiri						f-s-r		verb		ar	ka	
178	18	18	c	1	اَكَمْجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
175	18	18	b	1	اَوْ	aw	au						2-w		conj		ar		
101	11	11	a	2	بِنْتِ	binti	binti						b-n-t		noun		ar		
108	11	11	c	3	ػَنْدَانِ	kʲandāni	chandani						-anda		noun		ba		
112	12	12	a	2	حَلِ	ḥali	hali		halimama				hh-a-l		noun		ar		
154	16	16	b	3	حَرَاكَ	ḥarāka	haraka						hh-r-k		noun		ar		
146	15	15	c	3	حِيْمَ	ḥı̄ma	hima						h-m-m		noun		ar		
174	18	18	a	3	حُكُؤُمَ	ḥukuuma	hukuuma						-um-		verb		ba	hu	
165	17	17	b	3	كَمْشِيْكَ	kamshı̄ka	kamshika						-shik-		verb		ba	ka	
109	11	11	d	1	كَوَاحِ	kawāḥi	kawahi						w-kh-kh		verb		ar	ka	
157	16	16	c	3	كِفِكَ	kifika	kifika						-fik-		verb		ba	ki	
205	20	20	d	3	كُلِيْيَا	kulı̄yā	kuliya						-li-		verb		ba	ku	
110	11	11	d	2	كُمْڤُلِيَا	kumvuliyā	kumvuliya						-vu-		verb		ba	ku	
121	13	13	a	2	كْوَا	kwā	kwa						-a		ref		ba		
166	17	17	c	1	كْوَانْدَا	kwāndā	kwanda						-anz-		verb		ba	ku	
202	20	20	c	3	مَتُنْڠُ	matungu	matungu						-chungu		noun		ba		
183	19	19	a	1	مِمِ	mimi	mimi						mimi		pron		ba		
158	16	16	d	1	مْوَانَ	mwāna	mwana		Mwana				-ana		noun		ba		
120	13	13	a	1	نَمْكُلِيَ	namkuliya	namkuliya		namkulia				-amku-		verb		ba	a	
156	16	16	c	2	نْيُمْبَانِ	nyumbāni	nyumbani						-umb-		noun		ba		
168	17	17	c	3	پُلِكَ	pulika	pulika						-pulik-		verb		ba	imp	
182	18	18	d	3	سِكُلِيَا	sikuliyā	sikuliya						-li-		verb		ba	li	
242	24	24	b	2	سِكُتَعَمَلِ	sikutaʿamali	sikutaamali						a-m-l		verb		ar	li	
122	13	13	a	3	سِرِ	siri	siri						s-r-r		noun		ar		
105	11	11	b	3	تَمْكِنِ	tamkini	tamkini						m-k-n		adv		ar		
172	18	18	a	1	اُنَ	una	una						-na		have		ba		
128	13	13	d	2	زَ	za	za						-a		ref		ba		
125	13	13	c	1	اَػِنْرَا	akʲinrā	achinra		achenda				-end-		v		b	ki	
152	16	16	b	1	اَكِنِرَا	akinirā	akinira		akenenda				-end-		v		b	ki	
106	11	11	c	1	اَلِنَ	alina	alina		ali na				-li		v		b	past	
185	19	19	a	3	نِمْتُكَ	nimtuka	nimtuka		nimetoka										
425	43	43	b	2	نِمِمْفِكِرِا	nimimfikiriā	nimimfikiria	nimimfikirī	nimemfikiri				f-k-r		v		a	me	
197	20	20	b	1	كَثَمِيْنِ	kathamı̄ni	kathamini												
231	23	23	b	3	سِكِفَنِ	sikifani	sikifani		si kifani										
221	22	22	c	1	اُنَيُ	unayu	unayu		unayo										
225	22	22	d	2	كُكُتْوَلِيَا	kukutwaliyā	kukutwaliya						-twa-		v		b	ku	
213	21	21	d	1	هُوَزَا	huwazā	huwaza						-waz-		v		b	hu	
214	21	21	d	2	نِكُوْمْوَبِيَا	nikūmwabiyā	nikumwabiya		ni kumwambiya										
232	23	23	c	1	نِمِتَكَ	nimitaka	nimitaka		nimetaka			\\q{I want the real reason}.  The \\Swa{-me-} tense formative is used here as an immediate present -- compare 214a.							
239	24	24	a	3	نِوَا	niwā	niwa		ni wa										
252	25	25	b	1	نِوِ	niwi	niwi		niwe										
256	25	25	c	1	نِنْيَّنِ	ninı̄yani	niniyani	ninyyani	ni nyani										
230	23	23	b	2	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn		ar		
229	23	23	b	1	بُوْ	buu	buu		Bu				b-w		noun		ar		
206	21	21	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
217	22	22	a	3	حَيْدَارِ	ḥaydāri	haydari		Haidari				h-d-r		title		ar		
259	25	25	d	1	حِلَ	ḥila	hila		hela				hela		conj		ba		
187	19	19	b	2	حُنِنَ	ḥunina	hunina		hunena				-nen-		verb		ba	hu	
188	19	19	b	3	هُتِيْكَ	hutı̄ka	hutika		huteka				-chek-		verb		ba	hu	
289	28	28	c	3	مَتَمْكُ	matamku	matamku		matamko				-tamk-		noun		ba		
254	25	25	b	3	مْكِ	mki	mki		mke				-ke		noun		ba		
260	25	25	d	2	مْتُيِ	mtuyi	mtuyi		mtuye				-tu		noun		ba		
238	24	24	a	2	مْوِزِ	mwizi	mwizi		mwezi				-ezi		noun		ba		
210	21	21	b	3	نَيْتَكَ	naytaka	naytaka		naitaka				-tak-		verb		ba	a	
196	20	20	a	3	رُيَنْڠُ	ruyangu	ruyangu		nduyangu				-dugu		noun		ba		
248	24	24	d	2	نِمْسِكِيَا	nimsikiyā	nimsikiya		nimesikiya				-siki-		verb		ba	me	
195	20	20	a	2	مْنِ	mni	mni		nini	*			nini		int		ba		
253	25	25	b	2	پْوِكِ	pwiki	pwiki		pweke				peke		adv		ba		
198	20	20	b	2	رُحُ	ruḥu	ruhu		roho				r-w-hh		noun		ar		
291	28	28	d	2	سِتُمُوَابِيَا	situmuwābiyā	situmuwabiya		sitomwambiya				-amb-		verb		ba	ta	
224	22	22	d	1	تَكْوِنْرَ	takwinra	takwinra		takwenda				-end-		verb		ba	ta	
192	19	19	d	1	اُسِخُفُ	usikhufu	usihufu		usihofu				kh-a-f		verb		ar	imp	
208	21	21	b	1	پِتِ	piti	piti		pete				-pet-		noun		ba		
226	23	23	a	1	پِتِ	piti	piti		pete				-pet-		noun		ba		
255	25	25	b	4	وَنْغُ	wanghu	wanghu		wangu				-angu		poss		ba		
186	19	19	b	1	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
209	21	21	b	2	يَكُ	yaku	yaku		yako				-ako		poss		ba		
234	23	23	d	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
314	31	31	c	1	زِيَپُ	ziyapu	ziyapu		ziapo				-ap-		noun		ba		
212	21	21	c	2	اَكَشُتُكَ	akashutuka	akashutuka						-shitu-		verb		ba	ka	
257	25	25	c	2	عَدُوِ	ʿaduwi	aduwi		adui				3-d-w		noun		ar		
290	28	28	d	1	بَبَغُ	babaghu	babaghu		babangu				baba		noun		ba		
305	30	30	b	3	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
207	21	21	a	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
184	19	19	a	2	حَپَ	ḥapa	hapa						h-		dem		ba		
247	24	24	d	1	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
237	24	24	a	1	هُوْنُ	hūnu	hunu						h-		dem		ba		
288	28	28	c	2	هَيَ	haya	haya						h-		dem		ba		
287	28	28	c	1	كَمَ	kama	kama						k-m-a		conj		ar		
249	25	25	a	1	كَمْبَ	kamba	kamba						-amb-		verb		ba	ka	
262	26	26	a	1	كَمْجِبُ	kamjibu	kamjibu						j-a-b		verb		ar	ka	
190	19	19	c	2	كِتُ	kitu	kitu						-tu		noun		ba		
193	19	19	d	2	كُنَمْبِيَا	kunambiyā	kunambiya						-amb-		verb		ba	ku	
263	26	26	a	2	كْوَا	kwā	kwa						-a		ref		ba		
264	26	26	a	3	لِسَنِ	lisani	lisani						h-s-n		noun		ar		
304	30	30	b	2	نَنِ	nani	nani						nani		int		ba		
240	24	24	a	4	پِلِ	pili	pili						-wili		num		ba		
246	24	24	c	4	پِيْلِ	pı̄li	pili						-wili		num		ba		
266	26	26	b	2	سِمْبَاءِنِ	simbaini	simbaini					A marginal note in the MS gives an alternate spelling: \\AS{بَيْنِ}	b-a-n		verb		ar	a	
233	23	23	c	2	تَمْكِنِ	tamkini	tamkini						m-k-n		adv		ar		
271	26	26	d	2	تَرِظيْيَا	tariẓı̄yā	taridhiya						r-a-zw		verb		ar	ta	
243	24	24	c	1	اُنَ	una	una						-na		have		ba		
270	26	26	d	1	اُنِپَپٗ	unipapo	unipapo						-p-		verb		ba	a	
250	25	25	a	2	وَاللَّهِ	wallahi	wallahi						l-a-h		noun		ar		
191	19	19	c	3	وَاتَكَ	wātaka	wataka						-tak-		verb		ba	a	
194	20	20	a	1	وَتَكَ	wataka	wataka						-tak-		verb		ba	a	
258	25	25	c	3	يَنْڠُ	yangu	yangu						-angu		poss		ba		
215	22	22	a	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
274	27	27	b	1	نِكْوَمْبِيَ	nikwambiya	nikwambiya		nikwambia										
387	39	39	b	1	مُسِتِتِ	musititi	musititi		musitete				-tet-		v		b	subj	y
822	85	83	a	1	اُمِشُهُدِ	umishuhudi	umishuhudi		umeshuhudi				sh-h-d	You have seen your son-in-law,	v		a	me	
286	28	28	b	2	اُيْوِتِيْكُ	uywitı̄ku	uywitiku		uiweteko										
2961	301	295	c	2	اُمِزُاُظِيْكَ	umizuuẓı̄ka	umizuudhika		umeziudhika				3-zw-zw		v		a	me	
344	34	34	c	1	كَفَنْيَ	kafanya	kafanya						-fany-		v		b	ka	
319	32	32	a	1	يَكْوِلِيَوِ	yakwiliyawi	yakwiliyawi		ya kweleawe			\\q{to make it clear to you, Prophet}.	-ele-		v		b	ku	
276	27	27	c	1	يَلِغِيَ	yalighiya	yalighiya		yalingia				-ingi-		v		b	li	
340	34	34	a	3	جِلِسِ	jilisi	jilisi		~										
342	34	34	b	2	اُكَلِى	ukalii	ukalii		u kali										
331	33	33	b	1	كَمُوُنْيِّ	kamuwunı̄yi	kamuwuniyi	kamuwunyyi	kamuonye				-on-		v		b	subj	
316	31	31	c	3	مَخُفُ	makhufu	mahufu		mahofu				kh-a-f		n		a		
351	35	35	b	1	وَلِوُ	waliwu	waliwu		walio										
355	35	35	c	2	اُيْيِ	uyyi	uyyi		uiye										
375	37	37	d	1	اُكَيَ	ukaya	ukaya												
328	33	33	a	1	اِنِرَا	inirā	inira		enenda				-end-		verb		ba	imp	
294	29	29	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
372	37	37	b	3	غَانِ	ghāni	ghani		gani				nini		qual		ba		
346	34	34	c	3	هَيْسِ	haysi	haysi		haisi				-is-		verb		ba	a	
335	33	33	d	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
354	35	35	c	1	حَسَانِ	ḥasāni	hasani		Hasani				hh-s-n		persn		ar		
302	30	30	a	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima				h-sh-m		title		ar		
326	32	32	d	1	خُفُ	khufu	hufu		hofu				kh-a-f		noun		ar		
333	33	33	c	1	كَيْنُكَا	kaynukā	kaynuka		kainuka				-inu-		verb		ba	ka	
301	30	30	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
358	35	35	d	2	كُمْوَادَمِيَا	kumwādamiyā	kumwadamiya		kumwandamiya				-andam-		verb		ba	ku	
348	34	34	d	2	كُمْوَاڠَلِيَا	kumwāgaliyā	kumwagaliya		kumwangaliya				-anga-		verb		ba	ku	
313	31	31	b	2	مِنِكَلِفُ	minikalifu	minikalifu		menikalifu				k-l-f		verb		ar	me	
334	33	33	c	2	مُحَمَّدِا	muḥammadiā	muhammadia	muḥammadī	Muhamadi				m-hh-m-d		persn		ar		
323	32	32	b	3	كْوِلِ	kwili	kwili		kweli				-le		dem		ba		
321	32	32	b	1	نَمِ	nami	nami						na		conj		ba		
281	28	28	a	1	مُيَ	muya	muya		moya				-oyo		noun		ba		
374	37	37	c	2	نْيُمْبَانِ	nyumbāni	nyumbani						-umb-		noun		ba		
318	31	31	d	2	نِمِمْتِلِيَا	nimimtiliyā	nimimtiliya		nimemtiliya				-ti-		verb		ba	me	
325	32	32	c	2	سِحِمِلِ	siḥimili	sihimili						hh-m-l		verb		ar	a	
330	33	33	a	3	سَيّدِ	sayı̄di	sayidi		Sayidi				s-3-d		title		ar		
283	28	28	a	3	پِتِ	piti	piti		pete				-pet-		noun		ba		
311	31	31	a	2	شَرِفُ	sharifu	sharifu		Sharifu				sh-r-f		title		ar		
373	37	37	c	1	اُسِمْغُجِ	usimghuji	usimghuji		usimngoje				-ngoj-		verb		ba	subj	
329	33	33	a	2	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
284	28	28	a	4	يَكُ	yaku	yaku		yako				-ako		poss		ba		
332	33	33	b	2	اَبُرُدِ	aburudi	aburudi						b-r-d		verb		ar	subj	
297	29	29	c	2	اَكَتُكَ	akatuka	akatuka		akatoka				-to-		verb		ba	ka	
278	27	27	d	1	اَوُ	awu	awu		au				2-w		conj		ar		
309	30	30	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya						-amb-		verb		ba	ka	
356	35	35	c	3	حِمَ	ḥima	hima						h-m-m		noun		ar		
371	37	37	b	2	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
339	34	34	a	2	حَيَ	ḥaya	haya		hayajilisi				h-		dem		ba		
336	33	33	d	2	كَأَنْدَامَ	kaandāma	kaandama						-andam-		verb		ba	ka	
345	34	34	c	2	كَمَ	kama	kama						k-m-a		conj		ar		
277	27	27	c	2	كِسِمَانِ	kisimāni	kisimani						-sima		noun		ba		
295	29	29	b	2	كُكَصِيْرِكَ	kukaṣı̄rika	kukasirika						hh-s-r		verb		ar	ku	
324	32	32	c	1	كُمْوَامْبِيَ	kumwāmbiya	kumwambiya						-amb-		verb		ba	ku	
376	37	37	d	2	كُمْوَنْدَامِيَا	kumwandāmiyā	kumwandamiya						-andam-		verb		ba	ku	
299	29	29	d	2	كْوَا	kwā	kwa						-a		ref		ba		
352	35	35	b	2	نَنِ	nani	nani						nani		int		ba		
285	28	28	b	1	مَحَلِ	maḥali	mahali						m-hh-l		noun		ar		
337	33	33	d	3	نْدِيَا	ndiyā	ndiya						-jia		noun		ba		
282	28	28	a	2	نِنَ	nina	nina		nena				-na		have		ba		
320	32	32	a	2	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title		ar		
275	27	27	b	2	تَمْكِنِ	tamkini	tamkini						m-k-n		adv		ar		
317	31	31	d	1	زِنْڠِ	zingi	zingi						-ingi		qual		ba		
315	31	31	c	2	زِنْيِ	zinyi	zinyi		zenye				-enye		q		b		
298	29	29	d	1	اَكِنِرَا	akinirā	akinira		akenenda				-end-		v		b	ki	
347	34	34	d	1	مِكْوِنْرَ	mikwinra	mikwinra		mekwenda				-end-		v		b	me	
279	27	27	d	2	مُوُزِ	muwuzi	muwuzi		muuze				-uz-		v		b	subj	
322	32	32	b	2	نَلِفَنْيَ	nalifanya	nalifanya						-fany-		v		b	li	
381	38	38	c	1	اِلُوْمْتُكَ	ilūmtuka	ilumtuka		ilomtoka				-to-		v		b	li	
435	44	44	c	1	وَلِكُيَ	walikuya	walikuya						-j-	it came to curse me,	v		b	li	
389	39	39	c	1	اَكَرُدُفُ	akarudufu	akarudufu												
390	39	39	c	2	كِلِيْوُ	kilı̄wu	kiliwu		kilio										
457	46	46	c	2	زَامَانِ	zāmāni	zamani						z-m-n		n		a		
383	38	38	d	1	نَيَكْوِلِيِ	nayakwiliyi	nayakwiliyi		na yakwelee				-ele-		v		b	subj	
392	39	39	d	2	لِزَاهَرِيَا	lizāhariyā	lizahariya		li-Zahariya										
386	39	39	a	2	وَابِزِوِوُ	wābiziwiwu	wabiziwiwu		wambiziweo			\\q{leave off what you have said}.							
403	40	40	d	2	اُكَنِرِظِيْيَا	ukaniriẓı̄yā	ukaniridhiya					\\q{and today you will make me happy}.							
404	41	41	a	1	كُوَمْبِوَاكْوِ	kuwambiwākwi	kuwambiwakwi		kuambiwakwe										
423	43	43	a	2	وَلِنِغُرِ	walinighuri	walinighuri		walonighuri										
420	42	42	d	1	سِمْوِنْيِ	simwinyi	simwinyi		si mwenye										
422	43	43	a	1	نِمْتُ	nimtu	nimtu		ni mtu										
434	44	44	b	2	نِشَيْطَانِ	nishayṭāni	nishaytani		ni shaitani										
436	44	44	c	2	كُنِلِنِ	kunilini	kunilini												
456	46	46	c	1	تُصَلِيْپُ	tuṣalı̄pu	tusalipu		tusalipo					We have already prayed there --					
414	42	42	a	2	بَبَڠُ	babagu	babagu		babangu				baba		noun		ba		
362	36	36	b	2	بَشِيْرِا	bashı̄riā	bashiria	bashīrī	Bashiri				b-sh-r		title		ar		
359	36	36	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
471	48	48	a	2	هَپُ	hapu	hapu		hapo				h-		dem		ba		
380	38	38	b	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima				h-sh-m		title		ar		
426	43	43	c	1	هَتُپِنْدِلِيِ	hatupindiliyi	hatupindiliyi		hatupendelei				-pend-		verb		ba	a	
428	43	43	d	1	حَوِزِ	ḥawizi	hawizi		hawezi				-wez-		verb		ba	a	
427	43	43	c	2	خِيْرِ	khı̄ri	hiri		heri				kh-y-r		noun		ar		
368	37	37	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
421	42	42	d	2	كُپِنْدِلِيَا	kupindiliyā	kupindiliya		kupendeleya				-pend-		verb		ba	ku	
429	43	43	d	2	كُتْوَاغَلِيْيَ	kutwāghalı̄ya	kutwaghaliya		kutwangaliya				-anga-		verb		ba	ku	
400	40	40	c	2	مَنِيْنُ	manı̄nu	maninu		maneno				-nen-		noun		ba		
418	42	42	c	2	مَؤُڤُ	mauvu	mauvu		maovu				-ovu		adj		ba		
438	44	44	d	2	مْبُڤُ	mbuvu	mbuvu		mbovu				-ovu		adj		ba		
432	44	44	a	3	مُيُنِ	muyuni	muyuni		moyoni				-oyo		noun		ba		
395	40	40	a	3	مْوَانَغُ	mwānaghu	mwanaghu		mwanangu				-ana		noun		ba		
417	42	42	c	1	نَيُوَا	nayuwā	nayuwa		nayua				-ju-		verb		ba	a	
397	40	40	b	2	رَضِ	raḍi	radhi						r-a-zw		noun		ar		
453	46	46	a	2	نْدِيَانِ	ndiyāni	ndiyani		ndiani				-jia		noun		ba		
437	44	44	d	1	نِيَ	niya	niya		nia				n-y-y	planting evil intentions in me.	noun		ar		
367	36	36	d	2	نِمِزِسِكِيَا	nimizisikiyā	nimizisikiya		nimezisikiya				-siki-		verb		ba	me	
394	40	40	a	2	تِنَ	tina	tina		tena				tena		conj		ba		
415	42	42	b	1	تُنَنِ	tunani	tunani		tuna-ni				-na		have		ba		
396	40	40	b	1	اُتَكَپُ	utakapu	utakapu		utakapo				-tak-		verb		ba	a	
401	40	40	c	3	يَغُ	yaghu	yaghu		yangu				-angu		poss		ba		
385	39	39	a	1	يَوَاتِ	yawāti	yawati		yawate				-ach-		verb		ba	imp	
366	36	36	d	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
406	41	41	b	1	يُتِ	yuti	yuti		yote				-ote		qual		ba		
393	40	40	a	1	اَكَمْبَ	akamba	akamba						-amb-		verb		ba	ka	
364	36	36	c	2	زَاكِى	zākii	zakii		zake				-ake		focus		ba		
369	37	37	a	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
413	42	42	a	1	اَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb		ba	ka	
411	41	41	d	1	بَبَكِ	babaki	babaki		babake				baba		noun		ba		
402	40	40	d	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
412	41	41	d	2	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya						-amb-		verb		ba	ka	
407	41	41	b	2	اَكَيَسُكُمَ	akayasukuma	akayasukuma						-sukum-		verb		ba	ka	
454	46	46	b	1	اَكِمْوَامْبِيَا	akimwāmbiyā	akimwambiya		akimwambia				-amb-	the devil said to him:	verb		ba	ki	
360	36	36	a	2	حَكُكَصِيْرِ	ḥakukaṣı̄ri	hakukasiri						k-s-r		verb		ar	li	
365	36	36	c	3	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
431	44	44	a	2	هُظُمُ	huẓumu	hudhumu						h-dh-m		noun		ar		
382	38	38	c	2	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
410	41	41	c	3	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
409	41	41	c	2	كَڤُتَ	kavuta	kavuta						-vut-		verb		ba	ka	
439	44	44	d	3	كُنِتِيَا	kunitiyā	kunitiya						-ti-		verb		ba	ku	
384	38	38	d	2	نَبِيَا	nabiyā	nabiya		Nabiya			\\q{let me explain it to you, Prophet}.	n-b-y		title		ar		
424	43	43	b	1	سَسَا	sasā	sasa						sasa		adv		ba		
419	42	42	c	3	يَنْڠُ	yangu	yangu						-angu		poss		ba		
408	41	41	c	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
416	42	42	b	2	نَمُمِوَانْڠُ	namumiwāngu	namumiwangu		na mume wangu				-ume		n		b		
451	45	45	d	3	اِكِيَا	ikiyā	ikiya						-j-		v		b	ki	
459	46	46	d	2	اُكَيْرُدِيَا	ukayrudiyā	ukayrudiya		ukairudiya										
448	45	45	c	3	مَ	ma	ma		~										
460	47	47	a	1	سِيِوُ	siyiwu	siyiwu		si yeo			lit. "it is not today that we were waiting".  Similarly, in the English of Northern Ireland, when two people meet for the first time in a number of years, one may say to the other: "It's not the day [today] nor yesterday we saw each other".		We we sitting for ages					
461	47	47	a	2	تُكِتِزِيِ	tukitiziyi	tukitiziyi		tuketizie										
450	45	45	d	2	يَجُمَ	yajuma	yajuma		ya juma			= \\Sw{Ijumaa}.  The Friday prayers are the most important of the week.							
473	48	48	b	1	اُكَتِكَ	ukatika	ukatika		u katika					muttering to himself.					
464	47	47	b	3	اُيِ	uyi	uyi		uye										
467	47	47	c	3	لِيْيِ	lı̄yi	liyi		liye										
475	48	48	c	1	اُمُوْنِ	umūni	umuni		umuone					Muhammad saw him					
469	47	47	d	2	حُكُعَظِمِيْيَا	ḥukuʿaẓimı̄yā	hukuadhimiya					The devil taunts Ali by saying that if he had really wanted to come to the prayers he would have made sure he was in plenty of time.							
472	48	48	a	3	كَرُدِ	karudi	karudi						r-d-d		v		a	ka	
488	49	49	d	3	كُزِدِيْيَا	kuzidı̄yā	kuzidiya		~			\\Swa{-zidia} refers to something out of the ordinary happening, which is "too much for you" (\\Swa{-zidi}, \\E{increase}), and therefore overwhelms you or prevents you from doing something.  See also 328d.							
492	50	50	b	2	سِكُوَاحِ	sikuwāḥi	sikuwahi												
494	50	50	c	1	كِلِغَنَ	kilighana	kilighana		kilingana					As I drew near the well, those who were at prayers [had left the mosque] and were entering [their homes].					
495	50	50	c	2	نَكِسِمَ	nakisima	nakisima		na kisima			Every mosque has a well for ablutions.  But in the early days of Islam, when these events are supposed to take place, the mosques did not have a well -- these were introduced later.  So this is an example of a contemporary situation being projected back in time.							
496	50	50	d	1	وِنْيِ	winyi	winyi		wenye										
2513	255	249	b	3	وَپِيْلِ	wapı̄li	wapili		wa pili				-wili		num		b		
441	45	45	a	2	هَيُ	hayu	hayu		hayo				h-		dem		ba		
479	49	49	a	1	كُمُوُلِزَا	kumuwulizā	kumuwuliza		kamuuliza	*			-uz-	The Trustworthy One asked him:	verb		ba	ka	
503	51	51	b	2	كِرَا	kirā	kira		kenda				-end-		verb		ba	ka	
444	45	45	b	2	كْوَاكِى	kwākii	kwakii		kwake				-ake		poss		ba		
476	48	48	c	2	مُحَمَّدِ	muḥammadi	muhammadi		Muhamadi				m-hh-m-d		persn		ar		
483	49	49	b	3	اُنَنِ	unani	unani		una-ni				-na		have		ba		
463	47	47	b	2	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
481	49	49	b	1	يِوُ	yiwu	yiwu		yeo				-eo	What is the matter today, Ali?	adv		ba		
499	51	51	a	1	حَتَ	ḥata	hata						h-t-t	So, the second Friday	conj		ar		
447	45	45	c	2	كِسِمَ	kisima	kisima		kisimama			Because a devil (see 46b), disguised as a human being, wanted to speak to him -- the disguise makes it easier for them to lead people astray.  This devil, who has already upset Fatima, and is now trying to deceive Ali, is probably disguised as a pious and inoffensive old man ( see \\Swa{abu} in 51c.	-sima		noun		ba		
445	45	45	b	3	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
490	50	50	a	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima				h-sh-m		title		ar		
546	55	55	d	1	وِوِ	wiwi	wiwi		wewe				wewe	but you cannot have arrived yet [at the mosque].	pron		ba		
468	47	47	d	1	يِوُ	yiwu	yiwu		yeo				-eo	today you had no intention [of coming to pray].	adv		ba		
491	50	50	b	1	يِوُ	yiwu	yiwu		yeo				-eo	Today I did not manage [to attend] Friday [prayers].	adv		ba		
485	49	49	c	2	مْسِكِيْتِنِ	msikı̄tini	msikitini						s-j-d		noun		ar		
477	48	48	d	1	نْيُمْبَانِ	nyumbāni	nyumbani						-umb-	and went into the house to him.	noun		ba		
449	45	45	d	1	سِكُ	siku	siku						-siku	[because] Friday had come.	noun		ba		
446	45	45	c	1	اَلِيْػِنْرَا	alı̄kʲinrā	alichinra		alichenda				-end-	[Ali] was going [to the mosque], and stopped,	v		b	liki	
452	46	46	a	1	اَكِسِمَمَ	akisimama	akisimama						-simam-	When he stopped on the road	v		b	ki	
327	32	32	d	2	زِمِزُنِغِيَا	zimizunighiyā	zimizunighiya		zimezoningiya				-ingi-		v		b	me	
478	48	48	d	2	كِمْغِلِيَا	kimghiliyā	kimghiliya		kimngiliya				-ingi-		v		b	ki	
442	45	45	a	3	كُكُمَ	kukuma	kukuma		kukoma				-kom-		v		b	ku	
474	48	48	b	2	كُرَادِادِ	kurādiādi	kuradiadi	kurādīdi	kuradidi			He is saying things like: \\Swa{a! nimechelewa!}, \\E{how did I let myself be late?}	r-d-d		v		a	ku	
462	47	47	b	1	حُكُغُجَ	ḥukughuja	hukughuja		hukungoja				-ngoj-	waiting for you to come.	v		b	hu	
484	49	49	c	1	حُكُيَ	ḥukuya	hukuya						-j-	You did not come to the mosque -- 	v		b	hu	
466	47	47	c	2	لِغِيْنِ	lighı̄ni	lighini		lingine				-ingine		qual		b		
465	47	47	c	1	لِغُجِ	lighuji	lighuji		lingoje				-ngoj-	Wait for next [Friday] to come --	v		b	subj	
486	49	49	d	1	لِپِ	lipi	lipi						-pi		int		b		
440	45	45	a	1	بَعْدَ	baʿda	bada		baada				b-3-d	After these [things] were over,	adv		a		
500	51	51	a	2	نِجُمَ	nijuma	nijuma		ni juma				j-m-3		n		a		
506	51	51	c	2	اَسُتَجَمَلِيْ	asutajamalii	asutajamalii		asotajamali			lit. "who was not used to doing good deeds".							
573	58	58	b	2	اَسِيَقُبَلِ	asiyaqubali	asiyaqubali		asiyakubali				q-b-l		v		a	sija	y
510	52	52	a	2	شِيْطَانِ	shı̄ṭāni	shitani		shetani										
512	52	52	b	2	نِكْوَامبِيِيْنِ	nikwāmbiı̄ni	nikwambiyini		nikwambie-ni			This expresses a scornful rebuke.							
531	54	54	b	2	اَسِيُتَكَ	asiyutaka	asiyutaka		asiyotaka				-tak-		v		b	a	y
520	53	53	a	3	اُرُوْدِ	urūdi	urudi												
524	53	53	c	1	اُكُمُ	ukumu	ukumu		ukomo			lit. "end". \\Swa{ukomo ni ...}, \\E{it is getting to the stage where ...}.		it has ended up with Muhammad					
525	53	53	c	2	نِمُحَمَّدِ	nimuḥammadi	nimuhammadi		ni Muhamadi										
541	55	55	b	2	كُكَلِ	kukali	kukali												
556	56	56	d	1	وَنْيِ	wanyi	wanyi		wenye	*			-enye	the people who were at prayers were going into [their homes].	qual		b		
527	53	53	d	2	مِكُوُظِكِيَا	mikuwuẓikiyā	mikuwudhikiya		mekuudhikiya										
566	57	57	c	3	سِأَخِيْرِ	siakhı̄ri	siahiri		si aheri										
557	56	56	d	2	كُصَلِ	kuṣali	kusali						sw-l-w		v		a	ku	
544	55	55	c	2	وِنْدِ	windi	windi		wende										
568	57	57	d	2	وَغَئِصَلِيَ	waghaiṣaliya	waghaisaliya		wangaisaliya										
560	57	57	a	2	نِپِتِ	nipiti	nipiti		nipete										
539	55	55	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
572	58	58	b	1	هَيُ	hayu	hayu		hayo				h-	did not accept that.	dem		ba		
519	53	53	a	2	خِيْرِ	khı̄ri	hiri		heri				kh-y-r		noun		ar		
522	53	53	b	2	حِيْزُ	ḥı̄zu	hizu		hizo				h-		dem		ba		
558	56	56	d	3	هُغِيَا	hughiyā	hughiya		hungiya				-ingi-		verb		ba	hu	
550	56	56	b	1	كَبَ	kaba	kaba		kamba				-amb-	and said: What do you mean, early?	verb		ba	ka	
538	55	55	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza				-uz-	Fatima asked him:	verb		ba	ka	
516	52	52	d	1	كُتُكَ	kutuka	kutuka		kutoka				-to-	it is difficult for you to leave it.	verb		ba	ku	
551	56	56	b	2	مَپِمَ	mapima	mapima		mapema				-ema		adv		ba		
535	54	54	d	1	مْكِ	mki	mki		mke				-ke	his wife spoke to him.	noun		ba		
555	56	56	c	3	دِيَنِ	diyani	diyani		ndiani	*			-jia		noun		ba		
533	54	54	c	2	نْيُبَنِ	nyubani	nyubani		nyumbani				-umb-		noun		ba		
559	57	57	a	1	تِنَا	tinā	tina		tena				tena	Also, I have received word	conj		ba		
536	54	54	d	2	وَكِ	waki	waki		wake				-ake		poss		ba		
567	57	57	d	1	وَوُ	wawu	wawu		wao				-ao	even if they had already [started] praying.	poss		ba		
526	53	53	d	1	يِوُ	yiwu	yiwu		yeo				-eo	being annoyed with you today.	adv		ba		
549	56	56	a	2	اَكَبَئِيْنِ	akabaı̄ni	akabaini						b-a-n		verb		ar	ka	
529	54	54	a	2	اَكَوُظِيْكَ	akawuẓı̄ka	akawudhika		akaudhika				3-zw-zw		verb		ar	ka	
504	51	51	b	3	اَوَالِيْ	awālii	awalii		awali			lit. "first".	w-w-l		noun		ar		
532	54	54	c	1	حَتَ	ḥata	hata						h-t-t	And when he came into the house	conj		ar		
561	57	57	a	3	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
514	52	52	c	2	هُكُ	huku	huku						h-		dem		ba		
537	54	54	d	3	كَمْوَامْبِيَا	kamwāmbiyā	kamwambiya						-amb-		verb		ba	ka	
534	54	54	c	3	كِفِكَ	kifika	kifika						-fik-		verb		ba	ki	
508	51	51	d	2	كُمْوَمْبِيَا	kumwambiyā	kumwambiya						-amb-		verb		ba	ku	
530	54	54	b	1	كُرُدِ	kurudi	kurudi		karudi	*			r-d-d	and went back [home] without really wanting to.	verb		ar	ku	
553	56	56	c	1	مِمِ	mimi	mimi						mimi	When I got to the road	pron		ba		
521	53	53	b	1	كْوَانِ	kwāni	kwani						nini	because this [behaviour] is on purpose -- 	int		ba		
712	72	71	d	3	نْدِيَا	ndiyā	ndiya						-jia		noun		ba		
515	52	52	c	3	نْيُمْبَانِ	nyumbāni	nyumbani						-umb-		noun		ba		
505	51	51	c	1	اَبُ	abu	abu					\\Swa{abu}, \\E{father} shows that the devil has disguised himself as a pious old man.  	b-w	but the wicked devil	n		a		
517	52	52	d	2	هُكُوِمِيَا	hukuwimiyā	hukuwimiya		hukuemeya			The devil criticises Ali again, as he did in 47d, this time saying he was late for the prayers because he did not really want to leave the comfort of his home.  This taunt is \\Swa{kali}, \\E{biting, cutting}, because the devil is insinuating that Ali is succumbing to temporal blandishments, and should force himself to think of more spiritual things.	-eme-		v		b	hu	
540	55	55	b	1	لَبْدَا	labdā	labda						l-b-d	Perhaps it is still early?	conj		a		
554	56	56	c	2	كِكُمَ	kikuma	kikuma		kikoma				-kom-		v		b	ki	
513	52	52	c	1	لَبُدَا	labudā	labuda						l-b-d	Perhaps, your home there,	conj		a		
523	53	53	b	3	نِكَصِدِ	nikaṣidi	nikasidi		ni kasidi			That is, Ali's lateness was not an accident, but was deliberate.  This too is a cutting taunt, and gains force from the fact that this is the second time that Ali has (according to the devil) missed prayers -- it begins to look as though he is making a habit of it.	q-sw-d		n		a		
518	53	53	a	1	نَيِوُ	nayiwu	nayiwu		na yeo				-eo	You had better go home today too,	adv		b		
584	59	59	c	1	اَمِكُوَا	amikuwā	amikuwa		amekuwa				-w-	Was he in a hurry	v		b	me	
562	57	57	b	1	اَمِوُظِكَ	amiwuẓika	amiwudhika		ameudhika				3-zw-zw	that the Bringer of Good Tidings is annoyed with me.	v		a	me	
575	58	58	c	2	سِكْوِلِ	sikwili	sikwili		si kweli										
583	59	59	b	3	اِمِفِكَ	imifika	imifika		imefika			Fatima suspects there is more to this than meets the eye.	-fik-		v		b	me	
580	59	59	a	3	اُكِتُكَا	ukitukā	ukituka		ukitoka										
586	59	59	d	1	يَكُصَلِيْشَ	yakuṣalı̄sha	yakusalisha		ya kusalisha			That is, did the Prophet for some reason start the prayers so early that Ali still missed them?		to lead the prayers, the Prophet?					
640	64	64	d	2	سِيَزَاغَلِيَا	siyazāghaliyā	siyazaghaliya		siyazangaliya										
593	60	60	c	1	وَمْسِكِيْيَ	wamsikı̄ya	wamsikiya		wamsikia			The use of the \\Swa{-a-} tense here emphasises the simultaneity of Fatima's finishing talking and the Prophet's \\Swa{hodi} ("May I come in" -- the equivalent of a knock on the door in the West).	-siki-	they heard the Hashimite	v		b	a	
597	60	60	d	3	جِيَا	jiyā	jiya		~										
603	61	61	b	2	اُپُ	upu	upu		upo										
619	62	62	d	2	يَكُتُئِلِيْيَا	yakutuilı̄yā	yakutuiliya		ya kutoiliya				-j-		v		b	ku	y
624	63	63	c	1	وَيُوَا	wayuwā	wayuwa		wayua				-ju-	you know I have no impudence	v		b	a	
622	63	63	b	1	يَكْوِلِيَوِ	yakwiliyawi	yakwiliyawi		ya kweleawe				-ele-	To explain to you, Bringer of Good Tidings, 	v		b	ku	
613	62	62	b	2	بُنْ	bun	bun												
633	64	64	a	4	مَتِ	mati	mati												
611	62	62	a	2	حَبِبُ	ḥabibu	habibu		Habibu				hh-b-b		title		ar		
643	65	65	a	3	حَبِبُ	ḥabibu	habibu		Habibu				hh-b-b		title		ar		
652	65	66	a	2	حَشِيْمُ	ḥashı̄mu	hashimu		Hashimu			A passage seems to be missing here, where Ali tells the Prophet about his encounters with the devil.  See note to 50b.	h-sh-m		title		ar		
641	65	65	a	1	حَتَى	ḥatay	hatay		hata				h-t-t	Even Fatima, Beloved of God,	conj		ar		
576	58	58	d	1	حَيُ	ḥayu	hayu		hayo				h-	these [things] you have told me.	dem		ba		
591	60	60	b	2	حِيُ	ḥiyu	hiyu		hiyo				h-		dem		ba		
595	60	60	d	1	حُدِ	ḥudi	hudi		hodi				hodi	asking them if he could come in.	noun		ba		
629	63	63	d	3	جَلِيَا	jaliyā	jaliya		Jaliya			In other words, he does not mean to offend God.	j-l-l		godn		ar		
626	63	63	c	3	جَوُرِ	jawuri	jawuri		jauri				-euri		noun		ba		
609	61	61	d	2	كِمْوَاغَلِيَا	kimwāghaliyā	kimwaghaliya		kimwangaliya				-anga-		verb		ba	ki	
599	61	61	a	2	كِغِيَ	kighiya	kighiya		kingia				-ingi-		verb		ba	ki	
632	64	64	a	3	نِنَا	ninā	nina						-na		have		ba		
601	61	61	a	4	نْرَانِ	nrāni	nrani		ndani				ndani		adv		ba		
581	59	59	b	1	سَعَ	saʿa	saa						s-a-3	the sixth hour had [just] arrived.	noun		ar		
614	62	62	b	3	طَلِبُ	ṭalibu	talibu		Talibu				tw-l-b		persn		ar		
630	64	64	a	1	تِنَا	tinā	tina		tena				tena	And today I was nervous [about being late],	conj		ba		
598	61	61	a	1	تُمْوَا	tumwā	tumwa		Tumwa				-tum-	When the Prophet came inside	title		ba		
577	58	58	d	2	اُمِزُنَمْبِيَا	umizunambiyā	umizunambiya		umezonambiya				-amb-		verb		ba	me	
571	58	58	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title		ar		
578	59	59	a	1	وِوِ	wiwi	wiwi		wewe				wewe	When you left here	pron		ba		
631	64	64	a	2	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
621	63	63	a	2	اَكَفَصِْرِ	akafaṣiri	akafasiri						f-s-r		verb		ar	ka	
610	62	62	a	1	اَكَتَمْكَا	akatamkā	akatamka						-tamk-	The Beloved of God spoke:	verb		ba	ka	
589	60	60	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
642	65	65	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
570	58	58	a	2	بِنْتِ	binti	binti						b-n-t		noun		ar		
579	59	59	a	2	حَپَ	ḥapa	hapa						h-		dem		ba		
592	60	60	b	3	كَلِمَ	kalima	kalima						k-l-m		noun		ar		
604	61	61	b	3	كِتِيْنِ	kitı̄ni	kitini						-ti		noun		ba		
600	61	61	a	3	كْوَا	kwā	kwa						-a		ref		ba		
569	58	58	a	1	كْوَنْدَ	kwanda	kwanda						-anz-	At first the daughter of the Prophet	verb		ba	ku	
587	59	59	d	2	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
616	62	62	c	2	نِنَ	nina	nina		una	*			-na		have		ba		
658	65	66	d	1	سَاسَ	sāsa	sasa						sasa	He has gone around now looking to [trap] you.	adv		ba		
625	63	63	c	2	سِنَا	sinā	sina						-na		have		ba		
582	59	59	b	2	سِتَ	sita	sita						s-t-t		num		ar		
627	63	63	d	1	زَا	zā	za						-a	to show to the Almighty.	ref		ba		
606	61	61	c	2	زِلِيْ	zilii	zilii		zili				-li		exist		b	pres	
590	60	60	b	1	كُتِدَا	kutidā	kutida		kutenda				-tend-	had made this comment,	v		b	ku	
628	63	63	d	2	كُمُوُنْيَّ	kumuwunı̄ya	kumuwuniya	kumuwunyya	kumuonya				-on-		v		b	ku	
588	60	60	a	1	نَبَدَءِ	nabadai	nabadai		na baadaye				b-3-d	And after Fatima	adv		a		
615	62	62	c	1	نَيِوْ	nayiw	nayiu		na yeo				-eo	and today do you have a reason	adv		b		
617	62	62	c	3	صِبَبُ	ṣibabu	sibabu		sababu	*			s-b-b		n		a		
634	64	64	b	1	نِمِتُكَ	nimituka	nimituka		nimetoka					[so] I left [the house] on time,					
637	64	64	c	1	نِرُدِشِوْزِ	nirudishiwzi	nirudishiuzi		nirudishizwe	*				but I was quickly made to come back --					
659	65	66	d	2	اَمِكُوْزِغِيَا	amikūzighiyā	amikuzighiya		amekuzengeya			The Arabic script is ambiguous as to whether the verb is \\Swa{-zingia}, \\E{go about}, or \\Swa{-zengea}, \\E{look for}.	-zeng-		v		b	me	
647	65	65	c	2	مِحِرَابُ	miḥirābu	mihirabu					Ali is repeating Fatima's comment in 59cd, but (perhaps because of his confusion) mixes up two things: \\Swa{-panda mimbari} is when the imam goes up the minaret to call the people to prayers, and \\Swa{-ngia mihirabu} is when the imam goes into the mosque to lead the prayers, with the people standing behind him.  Note that the key word of Fatima's comment, \\Swa{mapema}, \\E{early}, is omitted.							
654	65	66	b	2	سِمْوَانَ	simwāna	simwana		si mwana-adamu										
645	65	65	b	2	اَمِتَعَجَبُ	amitaʿajabu	amitaajabu		ametaajabu				3-j-b		v		a	me	
668	67	67	c	3	نِلَپِلِ	nilapili	nilapili		ni la pili										
687	69	69	b	3	وَلِتَكَ	walitaka	walitaka						-tak-		v		b	li	
665	67	67	b	3	نِكْوِلِ	nikwili	nikwili		ni kweli										
673	68	68	a	3	سَا	sā	sa		~										
676	68	68	b	2	عَهَدِ	ʿahadi	ahadi												
678	68	68	c	2	تَمْرُدِ	tamrudi	tamrudi												
677	68	68	c	1	شِيْطَانِ	shı̄ṭāni	shitani		sheitani					that I will get my own back on the devil,					
670	67	67	d	2	اَتَكُيَا	atakuyā	atakuya						-j-		v		b	ta	
681	68	68	d	3	جَفِرِ	jafiri	jafiri												
664	67	67	b	2	وَيُوَا	wayuwā	wayuwa		wayua				-ju-		v		b	a	
690	69	69	d	1	سِكُزُتِ	sikuzuti	sikuzuti		siku zote					he will cry every day.					
713	73	72	a	1	اُمُوْنِ	umūni	umuni		umuone					He saw the devil,					
689	69	69	c	2	اَتَنِكُمْبُكَ	atanikumbuka	atanikumbuka						-kumbuk-		v		b	ta	
675	68	68	b	1	نِمْئِپِكَ	nimipika	nimipika		nimepeka				-pelek-	I have made a promise	v		b	me	
729	74	73	c	3	تُمِشُكَا	tumishukā	tumishuka		tumeshuka										
635	64	64	b	2	كْوَ	kwa	kwa						-a		ref		ba		
661	67	67	a	2	كِتَ	kita	kita		keta				-let-		verb		ba	ka	
674	68	68	a	4	مُحَمَدِ	muḥamadi	muhamadi		Muhamadi				m-hh-m-d		persn		ar		
688	69	69	c	1	نَيِ	nayi	nayi		naye				na	And when he remembers me [in future]	conj		ba		
649	65	65	d	2	نْرَانِ	nrāni	nrani		ndani				ndani		adv		ba		
679	68	68	d	1	مْبِيْ	mbii	mbii		mbee				-bele	in front of all the people.	adv		ba		
639	64	64	d	1	غُوْ	ghuu	ghuu		nguo				nguo	I haven't even attended to my clothes yet.	noun		ba		
698	70	70	c	2	مْوِنْيِ	mwinyi	mwinyi		mwenye				-enye		noun		ba		
739	75	74	c	3	نْيَاَنِ	nyaani	nyaani		nyani				nani		int		ba		
662	67	67	a	3	قَوْلِيْ	qawlii	qaulii		qauli				q-w-l		noun		ar		
672	68	68	a	2	سَ	sa	sa		sasa				sasa	Now, Muhammad,	adv		ba		
727	74	73	c	1	سِيْ	sii	sii		sisi	*			sisi	[But] we have already come out of Friday [prayers] --	pron		ba		
686	69	69	b	2	يَبُ	yabu	yabu		yambo				-amb-		noun		ba		
644	65	65	b	1	يِوُ	yiwu	yiwu		yeo				-eo	was amazed today:	adv		ba		
655	65	66	b	3	اَدَمُ	adamu	adamu		~				a-d-m		noun		ar		
684	69	69	a	2	حَقِيْكَ	ḥaqı̄ka	haqika		hakika				hh-q-q		adv		ar		
710	72	71	d	1	هَپُ	hapu	hapu		hapo				h-		dem		ba		
691	69	69	d	2	اَكِلِيَا	akiliyā	akiliya					In English we must reverse the \\Swa{-ta-} and \\Swa{-ki-} tenses.  Ali is determined to teach the devil a lesson he will not forget.	-li-		verb		ba	ki	
737	75	74	c	1	اَسَا	asā	asa						b-s	Who are you trying to fool?	conj		ar		
657	65	66	c	2	فَهَمُ	fahamu	fahamu						f-h-m		verb		ar	imp	
694	70	70	b	1	حَتَ	ḥata	hata						h-t-t	until Friday came round again,	conj		ar		
666	67	67	c	1	حِلِ	ḥili	hili						h-	This is the second Friday [he has been here],	dem		ba		
650	65	65	d	3	هُنَمْبِيَا	hunambiyā	hunambiya						-amb-		verb		ba	hu	
653	65	66	b	1	حُيُ	ḥuyu	huyu		huyo				h-	this is not a human being --	dem		ba		
711	72	71	d	2	كَيَنْدَامَ	kayandāma	kayandama						-andam-	and headed along the road.	verb		ba	ka	
663	67	67	b	1	كْوَمْبَ	kwamba	kwamba						-amb-	saying: You know, that's true!	verb		ba	ku	
638	64	64	c	2	مَتِةِ	matiẗi	matiti						-titi		noun		ba		
671	68	68	a	1	نَمِ	nami	nami						na		conj		ba		
682	68	68	d	4	پِيَا	piyā	piya						pia		adv		ba		
685	69	69	b	1	اُنَ	una	una						-na	he had something [in mind] that he wanted [to achieve].	have		ba		
680	68	68	d	2	زَا	zā	za						-a		ref		ba		
693	70	70	a	2	اَكَصُبِرِ	akaṣubiri	akasubiri						sw-b-r		v		a	ka	
636	64	64	b	3	وَقَتِ	waqati	waqati		wakati				w-q-t		n		a		
738	75	74	c	2	هُمْتِزَ	humtiza	humtiza		humteza				-tez-		v		b	hu	
696	70	70	b	3	لِكَجِرِا	likajiriā	likajiria	likajirī	likajiri				j-r-y		v		a	ka	
699	70	70	c	3	كُمُوْغُرِ	kumūghuri	kumughuri						gh-r-r		v		a	ku	
716	73	72	b	2	مِئِلَبِيْسِ	miilabı̄si	miilabisi					There is also the connotation here of being well-disguised.							
704	72	71	a	3	تِيْتِ	tı̄ti	titi					The meaning of \\Swa{titi} is uncertain.  It may be related to \\Swa{matiti}, \\E{fast}, (71c), or the vowels signs in the Arabic may have been miswritten (\\AS{تِيْتِ} instead of \\AS{تِيَتِ})and we should read \\Swa{tiyati}, \\E{ground}, i.e. "he went along".  Sh. Yahya's view was that the general meaning seemed to be \\Swa{taratibu-taratibu}, \\E{carefully}.							
706	72	71	b	2	اُكَيَ	ukaya	ukaya												
756	77	76	b	2	مْكُنُنِ	mkununi	mkununi		mkononi				-kono		n		b		
812	83	81	d	1	اَمْبَلُ	ambalu	ambalu		ambalo				amb-	which you could take pride in.	rel		b		
823	85	83	a	2	مْكْوِوُ	mkwiwu	mkwiwu		mkwewo				-kwe		n		b		
740	75	74	d	1	تُوْنِ	tūni	tuni		tuone					We have seen [you put] this world before [the next].					
746	76	75	b	1	اُوْرُنْغُ	ūrunghu	urunghu		urongo					Your lying is over.					
731	74	73	d	2	هَكُسَلِيَا	hakusaliyā	hakusaliya						sw-l-w		v		a	li	y
755	77	76	b	1	مِمْتِيَ	mimtiya	mimtiya		memtia					[Ali] grabbed him by the arm 					
735	75	74	b	1	لَكُيَ	lakuya	lakuya		la kuya			We understand \\Swa{jambo}: "as regards this matter of coming to the mosque".	-j-	to come to the mosque.	v		b	ku	
759	77	76	d	1	سِؤُپِسِ	siupisi	siupisi		si upesi					[you] will not quickly escape.					
752	76	75	d	2	لِكَمْپُتِيَا	likamputiyā	likamputiya		likampoteya			lit. \\q{the foot was lost to him}.  The devil realises the game is up, and takes off.	-pot-		v		b	li	
764	78	77	b	1	مْپَكَ	mpaka	mpaka							right up to the mosque.					
766	78	77	c	1	كَفُزِيَ	kafuziya	kafuziya		kafuzia			\\Swa{-fuzia} is related to \\Swa{-fuliza}, \\E{continue without interruption, hurry to do something}, and implies that Ali went single-mindedly to the pillar, and nowhere else.		He went straight up to the pillar supporting the roof,					
767	78	77	c	2	كِپِيَانِ	kipiyāni	kipiyani		kipiani										
769	78	77	d	2	كِمْتِيْيَا	kimtı̄yā	kimtiya												
813	83	81	d	2	وَفُرَاحِيَا	wafurāḥiyā	wafurahiya					Ali means that if someone listens to their conscience, they feel unhappy after doing something bad; however, this unhappiness can be tempered by the knowledge that they have done a few good things in their time.  The devil feels not remorse to begin with, and even if he did, he has done absolutely nothing that he could feel happy about were he to listen to his conscience.							
761	78	77	a	1	كِنْرَا	kinrā	kinra		kenda				-end-	He took the devil	verb		ba	ka	
744	76	75	a	2	كِيْتَ	kı̄ta	kita		keta				-let-		verb		ba	ka	
717	73	72	c	1	نَيِ	nayi	nayi		naye				na	and he went quickly	conj		ba		
734	75	74	a	3	نْيُبَنِ	nyubani	nyubani		nyumbani				-umb-		noun		ba		
763	78	77	a	3	شَيْطَانِ	shayṭāni	shaytani		shaitani				sh-tw-n		noun		ar		
741	75	74	d	2	مْبِيْ	mbii	mbii		mbee				-bele		adv		ba		
757	77	76	c	1	تْوِنِرِ	twiniri	twiniri		twenende				-end-	[and said:] Let us go to the mosque --	verb		ba	subj	
719	73	72	c	3	اُپِسِ	upisi	upisi		upesi				-pesi		noun		ba		
715	73	72	b	1	اُيَوُ	uyawu	uyawu		uyao				-j-	who was coming along well-dressed,	verb		ba	a	
747	76	75	b	2	وَكُ	waku	waku		wako				-ako		poss		ba		
732	75	74	a	1	وِوِ	wiwi	wiwi		wewe				wewe	You don't leave home [early enough]	pron		ba		
749	76	75	c	1	يِوُ	yiwu	yiwu		yeo				-eo	Today you will see what's what.	adv		ba		
742	75	74	d	3	دُنِيَا	duniyā	duniya					The meaning of this line is unclear.	d-n-y		noun		ar		
705	72	71	b	1	هَتَى	hatay	hatay		hata				h-t-t	until the [proper] moment came,	conj		ar		
748	76	75	b	3	هُكُمَ	hukuma	hukuma		hukoma				-kom-		verb		ba	hu	
770	79	78	a	1	حَپَ	ḥapa	hapa						h-	Then he set down the pillar	dem		ba		
726	74	73	b	3	هَرَاكَ	harāka	haraka						hh-r-k		noun		ar		
720	73	72	d	1	اِلِ	ili	ili						ili	to get near to him.	conj		ba		
745	76	75	a	3	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
723	74	73	a	2	كَتَمْكَا	katamkā	katamka						-tamk-		verb		ba	ka	
760	77	76	d	2	كُكِمْبِيَا	kukimbiyā	kukimbiya						-kumb-		verb		ba	ku	
701	70	70	d	2	كُمْوَمْبِيَا	kumwambiyā	kumwambiya						-amb-		verb		ba	ku	
736	75	74	b	2	مْسِكِتِنِ	msikitini	msikitini						s-j-d		noun		ar		
725	74	73	b	2	اُنَ	una	una						-na		have		ba		
750	76	75	c	2	اُتَنِفَهَمُ	utanifahamu	utanifahamu					lit. \\q{you will recognise me}.  Ali is going to teach the devil a lesson -- see note to 69d.	f-h-m		v		a	ta	
771	79	78	a	2	اَكَشُشَا	akashushā	akashusha						-shuk-		v		a	ka	
703	72	71	a	2	كَيْرَا	kayrā	kayra		kaenda				-end-		v		b	ka	
753	77	76	a	1	اَكِيْزِنْغَ	akı̄zingha	akizingha		akizinga				-zing-	As the devil dodged,	v		b	ki	
722	74	73	a	1	اِبْلِسِ	iblisi	iblisi		ibilisi				b-l-s	The devil spoke:	persn		a		
772	79	78	a	3	مْوَنْڠُ	mwangu	mwangu		mwango				-angu		poss		b		
707	72	71	b	3	وَقَتِ	waqati	waqati		wakati				w-q-t		n		a		
700	70	70	d	1	هُمْلِرَّا	humlirrā	humlirra		humlinda				-lind-	and waited to talk to him.	v		b	hu	
733	75	74	a	2	هُتُكِ	hutuki	hutuki		hutoki				-to-		v		b	pres	y
768	78	77	d	1	كِفُنُوَا	kifunuwā	kifunuwa		kifunua				-fun-	lifted it up, and put [the devil underneath].	v		b	ki	
777	79	78	c	2	هُتِرِّ	hutirri	hutirri		hutendi										
778	79	78	c	3	كِجُنْغُ	kijunghu	kijunghu		kijongo										
780	79	78	d	2	مْبِغُ	mbighu	mbighu		mbingu										
781	79	78	d	3	اُكَغِيَا	ukaghiyā	ukaghiya		ukangiya										
800	82	80	c	2	لَيْتِ	layti	layti		laiti										
786	81	79	b	2	نِنْيَّنِ	ninı̄yani	niniyani	ninyyani	ni nyani			i.e. it is almost pointless trying to persuade the devil to change its ways.							
791	81	79	d	2	دَهْرِ	dahri	dahri		dahari	*									
815	84	82	a	2	كِپِيَانِ	kipiyāni	kipiyani		kipiani			One or more stanzas may be missing here, in which the Prophet tells Ali to release the devil.							
803	82	80	d	2	اُكَزِڠَتِيْيَا	ukazigatı̄yā	ukazigatiya		ukazingatiya										
839	86	84	d	2	نِتْوَاي	nitwāı̄	nitway		nitwae										
816	84	82	b	1	كَمْهُرَا	kamhurā	kamhura		kamhora			Ba. \\Swa{-hora} = \\Swa{-tupa}.		and threw him into the gutter.					
807	83	81	b	2	مْكُوْ	mkuu	mkuu												
824	85	83	b	1	تَعَدِ	taʿadi	taadi							the aggression he displayed towards me.					
809	83	81	c	1	هُنَلُوْ	hunaluu	hunaluu		hunalo					You do not have a single good [point]					
825	85	83	b	2	اَنِتِدِئوُا	anitidiwuā	anitidiwua	anitidiwū	anitendeo				-tend-		v		b	a	
830	86	84	a	1	اُسِيْوُنِ	usı̄wuni	usiwuni		usione					Don't think that this is the end [of the matter] --					
826	85	83	c	1	اُمِيَوُنَ	umiyawuna	umiyawuna		umeyaona					You have seen the [things] which [happened] today -- 					
827	85	83	c	2	يَئِوُ	yaiwu	yaiwu		ya yeo			i.e. \\Swa{mambo ya leo}							
828	85	83	d	1	يَلِنْدِنِ	yalindini	yalindini		yalindeni					watch out for the new [things that I will do next].					
843	87	85	a	3	هَيُ	hayu	hayu		hayo				h-		dem		ba		
790	81	79	d	1	كَتِكَ	katika	katika						kati	in the whole of history.	prep		ba		
796	82	80	b	1	هُوُنَ	huwuna	huwuna		huona				-on-	You think people are afraid of you.	verb		ba	hu	
782	81	79	a	1	مَبُ	mabu	mabu		mambo			\\Swa{mambo yako ya ajabu, mambo mabaya-mabaya}.	-amb-	Your doings, devil,	noun		ba		
779	79	78	d	1	نَوِ	nawi	nawi		nawe				na	you will not enter Heaven.	conj		ba		
831	86	84	a	2	رِيُ	riyu	riyu		ndiyo				ni		focus		ba		
776	79	78	c	1	ڠَاءَ	gaa	gaa		ngaa				ngaa	If you do not [stop] doing wicked things,	conj		ba		
810	83	81	c	2	مْمُيَ	mmuya	mmuya		moya	*			-oyo		noun		ba		
792	81	79	d	3	بِيَا	biyā	biya		piya	*			pia		adv		ba		
784	81	79	a	3	شَيْطَانِ	shayṭāni	shaytani		shaitani				sh-tw-n		noun		ar		
819	84	82	c	2	شَيْطَانِ	shayṭāni	shaytani		shaitani				sh-tw-n		noun		ar		
774	79	78	b	2	اُسُوْ	usuu	usuu		uso				-so		noun		ba		
867	89	87	b	4	وَكِ	waki	waki		wake				-ake		poss		ba		
783	81	79	a	2	يَكُ	yaku	yaku		yako				-ako		poss		ba		
788	81	79	c	2	هَپَنَ	hapana	hapana						-na		have		ba		
832	86	84	a	3	بَاسِ	bāsi	basi						b-s		conj		ar		
773	79	78	b	1	اَكَبَ	akaba	akaba		akamba			The devil, presumably, \\Swa{akaangua kilio, akalia}, \\E{burst out wailing}, so Ali rebukes him as set out in this stanza and the next two, showing that his punishment is well-deserved.	-amb-	and said: Your face [is that of] a liar.	verb		ba	ka	
818	84	82	c	1	اَكَنِيْنَ	akanı̄na	akanina		akanena				-nen-	The devil said:	verb		ba	ki	
802	82	80	d	1	نَوِ	nawi	nawi		nawe				na	and you think [yourself invincible].	conj		ba		
799	82	80	c	1	هُوْنَ	hūna	huna		huna				-na	You have no remorse,	have		ba		
789	81	79	c	3	كِفَنِ	kifani	kifani						-fan-		noun		ba		
806	83	81	b	1	كْوَ	kwa	kwa						-a	[and become] a great unbeliever.	ref		ba		
787	81	79	c	1	وَلَا	walā	wala						wala	In fact, there is nothing like [them] 	conj		ba		
797	82	80	b	2	وَتُ	watu	watu						-tu		noun		ba		
798	82	80	b	3	هُكُوْتَ	hukūta	hukuta						-kut-		v		b	hu	
842	87	85	a	2	هُيَنِيْنَ	huyanı̄na	huyanina		huyanena				-nen-		v		b	hu	
808	83	81	b	3	كَفِيْرِ	kafı̄ri	kafiri						k-f-r		n		a		
814	84	82	a	1	كَمْتُوَا	kamtuwā	kamtuwa		kamtoa				-to-	[Ali] took the devil our from under the pillar	v		b	ka	
785	81	79	b	1	اَيَوِزَاوُ	ayawizāwu	ayawizawu		ayawezao				-wez-	who is able to [equal them]?	v		b	a	
820	84	82	d	1	اُمِشُهُدِ	umishuhudi	umishuhudi		umeshuhudi				sh-h-d	Prophet, did you see that?	v		a	me	
811	83	81	c	3	لَخِيْرِ	lakhı̄ri	lahiri		la heri				kh-y-r		n		a		
801	82	80	c	3	كُوِتَ	kuwita	kuwita		kuweta				-let-		v		b	ku	
775	79	78	b	3	مْرُنْغُ	mrunghu	mrunghu		mrongo				-ongo-		n		b		
805	83	81	a	2	نَغُوْرِ	naghūri	naghuri		na ghuri			This line seems to have the same meaning as \\Swa{umejighuri}.	gh-r-r		n		a		
829	85	83	d	2	نَمَپِيَا	namapiyā	namapiya		na mapiya			The devil changes from pleading his innocence to making hollow threats: you haven't heard the last of this -- just you wait!  He is referring to the Swahili belief that people may sometimes behave unjustly towards you because they believe you do not have the power to retaliate.  He now warns that if Ali thought he would have everything his own way, he has another think coming.  However, his subsequent actions (see 85) suggest that his threats are just so many empty words -- he has been justly trounced, and he knows it.							
835	86	84	c	1	شَتِ	shati	shati												
836	86	84	c	2	نِتُوِ	nituwi	nituwi		nitoe					I must have revenge [on him],					
834	86	84	b	2	كُنِنُكُوْسِ	kuninukūsi	kuninukusi												
837	86	84	c	3	كِصَسِ	kiṣasi	kisasi												
840	86	84	d	3	نَدِيَا	nadiyā	nadiya		na diya			The devil demands absurd recompense for his disgrace.  \\Swa{kisasi}, \\E{execution}, is the Islamic penalty for murder.  The government executes the murderer on behalf of the family, so if they forgive him, the government remits the sentence of execution.  \\Swa{diya}, \\E{blood money}, is the Islamic penalty for manslaughter -- it may be paid in animals such as camels.  Neither penalty is applicable to the devil's case, and moreover he demands that both be paid for the one offence, which is impossible.							
887	91	89	b	3	هُرُدِ	hurudi	hurudi						r-d-d		v		b	hu	
898	92	90	d	1	اِسِمُ	isimu	isimu						2-s-m	he wept [to see] his prestige taken away from him.	n		a		
937	96	94	c	3	مُفَهَمُ	mufahamu	mufahamu						f-h-m		v		a	subj	
858	88	86	c	3	نِنْيَّنِ	ninı̄yani	niniyani	ninyyani	ni nyani										
882	90	88	d	2	كُتُنِئِلِيْيَا	kutuniilı̄yā	kutuniiliya		kutoniiliya			lit. \\q{why + he has + to not come to me}, i.e. \\q{does he have [the capability] not to come to me?}.							
897	92	90	c	2	سُلْطَنِ	sulṭani	sultani												
868	89	87	c	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m	Fatima said:	persn		ar		
859	88	86	d	1	هَتَّى	hattay	hattay		hata				h-t-t	that you should mention him to me?	conj		ar		
870	89	87	d	1	حِلَ	ḥila	hila		hela				hela	Well, tell me the news.	conj		ba		
844	87	85	b	1	هُكُوْا	hukuwā	hukuwa	hukū	huku				h-	he was running away at the same time.	dem		ba		
879	90	88	c	2	كَنِيْنَ	kanı̄na	kanina		kanena				-nen-		verb		ba	ka	
863	89	87	a	3	كْوَكِ	kwaki	kwaki		kwake				-ake		poss		ba		
846	87	85	b	3	مْبِيُ	mbiyu	mbiyu		mbiyo			The devil decides to get out while the going is good.  The complaint and threats were just a smokescreen for his escape.	-bele		adv		ba		
866	89	87	b	3	مكِ	mki	mki		mke				-ke		noun		ba		
841	87	85	a	1	نَيِ	nayi	nayi		naye				na	And while he was saying these [things],	conj		ba		
875	90	88	a	3	نْدِيَانِ	ndiyāni	ndiyani		ndiani				-jia		noun		ba		
855	88	86	b	2	شَيْطَانِ	shayṭāni	shaytani		shaitani				sh-tw-n		noun		ar		
883	91	89	a	1	يِوُ	yiwu	yiwu		yeo				-eo	He tried his best today,	adv		ba		
856	88	86	c	1	اَسَا	asā	asa						b-s	Hah! Who is Ali,	conj		ar		
847	87	85	c	1	ػَمْبِوَا	kʲambiwā	chambiwa						-amb-	When he was told: Look out! Ali [is coming after you!]	verb		ba	ki	
864	89	87	b	1	اَكِرَّا	akirrā	akirra		akenda				-end-	went to his wife.	verb		ba	ki	
869	89	87	c	2	اَتَمْكِ	atamki	atamki		atamke				-tamk-		verb		ba	past	
877	90	88	b	2	شَيْطَانِ	shayṭāni	shaytani		shaitani				sh-tw-n		noun		ar		
873	90	88	a	1	يِوُ	yiwu	yiwu		yeo				-eo	Today you went along the road --	adv		ba		
862	89	87	a	2	كُرُدِ	kurudi	kurudi						r-d-d		verb		ar	ku	
871	89	87	d	2	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
865	89	87	b	2	كْوَ	kwa	kwa						-a		ref		ba		
908	93	91	d	1	كْوَا	kwā	kwa						-a	from a distance.	ref		ba		
885	91	89	b	1	كْوَا	kwā	kwa						-a	knowing that [on the other two days] I had gone back.	ref		ba		
872	89	87	d	3	نَمْبِيَا	nambiyā	nambiya					Fatima knows that something has happened, because this time Ali did not return early.	-amb-		verb		ba	imp	
880	90	88	c	3	كْوَانِ	kwāni	kwani						nini		int		ba		
881	90	88	d	1	اُنَ	una	una						-na	He could not resist coming!	have		ba		
1193	123	120	c	1	وَ	wa	wa						w-a		conj		ar		
896	92	90	c	1	اَغَلِيَ	aghaliya	aghaliya		angalia				-ang-	[Ali replied:] Even though he was a master deceiver,	v		b	i	
874	90	88	a	2	اُكِنْرَا	ukinrā	ukinra		ukenda				-end-		v		b	ki	
845	87	85	b	2	ػِنِرَا	kʲinirā	chinira		chenenda				-end-		v		b	ki	
838	86	84	d	1	كِسَ	kisa	kisa						-ish-	and then I should get recompense as well.	v		b	ki	
833	86	84	b	1	اَلِيُ	aliyu	aliyu		aliyo				-li	whoever humiliates me,	v		b	past	
884	91	89	a	2	اُمِجِتَهِدِ	umijitahidi	umijitahidi		umejitahidi				j-h-d		v		a	me	
852	88	86	a	1	اَوْنَپُ	awnapu	aunapu		aonapo				-on-	When he looked and did not see [Ali following him],	v		b	a	
886	91	89	b	2	كُنِيُوَا	kuniyuwā	kuniyuwa						-ju-		v		b	ku	
888	91	89	c	1	تُپِنْبِنِ	tupim̱bini	tupimbini		tupembeni					We met and he spoke,					
910	93	91	d	3	حُنِكَتِيَا	ḥunikatiyā	hunikatiya					These two lines are unclear.  \\Swa{kumkatia mtu maneno}, \\E{to abuse someone}.							
900	93	91	a	1	كَمْپِجِيَا	kampijiyā	kampijiya		kampijia					[Ali] gave her the whole story,					
889	91	89	c	2	هُرَادِدِ	hurādidi	huradidi						r-d-d		v		b	hu	
895	92	90	b	2	اُمِمْتِرَّانِ	umimtirrāni	umimtirrani		umemtenda-ni				-tend-		v		b	me	
920	94	92	d	3	كِزِڠِيَا	kizigiyā	kizigiya		kizengeya			See 66d.	-zeng-		v		b	ki	
916	94	92	c	1	اُسِمِ	usimi	usimi		useme					and the talking stopped					
913	94	92	a	3	نِوَاتُكَ	niwātuka	niwatuka		niwatoka			< \\Swa{niwapo kutoka}.							
922	95	93	a	2	تَمَّتِ	tammati	tammati												
890	91	89	d	1	يَؤُرُنْڠُ	yaurungu	yaurungu		ya urongo				-ongo-	telling me his lies.	n		b		
921	95	93	a	1	قَدْ	qad	qad		qadi			The context of this stanza is unclear.  The first line seems to suggest that it is the epilogue of the episode of Ali and the devil (compare 197a), and the following lines may be a general reference to Satan.  However the overall sense, and especially 93d, seems to fit better with the preceding stanzas if we assume that Ali is making a final comment on the devil and his fate.  In either case, the transition to 94 is abrupt.		I have finished [bandying] words with you, [I said] --					
947	97	95	c	3	يَمَئِيْنَ	yamaı̄na	yamaina		ya maina				3-a-n		n		a		
927	95	93	c	1	اُلِوِوُ	uliwiwu	uliwiwu		uliweo					destined for Hell.					
929	95	93	d	1	اَجَلِ	ajali	ajali					\\Swa{ajali} means \\q{fate} in the sense of \\q{moment/manner of death}.  It is the end-point of one's \\Swa{umri}, \\E{allotted lifespan}.  Thus, you might say of someone who had a close shave with death, \\Swa{ajali yake hajafika}.  Hence \\Swa{-jaaliwa}, \\E{be predestined}, in the sense that all the main events of one's life have been written out in advance, especially the time, place and manner of death.  It can therefore be said, as here, that your \\Swa{ajali} seeks you out -- it is conceived of as an unavoidable, implacable force brought closer by every day of your life, and which it is pointless to try to escape (compare Muyaka).  It should be noted, though, that this idea of predestination, of everything having its allotted place and time, is seen as a consoling notion, and not necessarily one which leads to a fatalistic outlook on life, as so many Western authors on Islam imply.		His moment of death is coming looking for him.					
934	96	94	b	2	نِنُظُمُ	ninuẓumu	ninudhumu												
928	95	93	c	2	جَهَنَّمُ	jahannamu	jahannamu		jahanamu				j-hh-m		n		a		
933	96	94	b	1	نَمَغِيْنِ	namaghı̄ni	namaghini		na mangine				-ingine		qual		b		
950	97	95	d	3	اِوَاتِيَا	iwātiyā	iwatiya		~										
892	92	90	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m	Fatima said:	persn		ar		
930	95	93	d	2	حُمْزِڠِيَا	ḥumzigiyā	humzigiya		humzengeya				-zeng-		verb		ba	hu	
966	99	97	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
905	93	91	c	1	كَبَ	kaba	kaba		kamba				-amb-	[Ali] said: He abused me	verb		ba	ka	
982	101	99	b	3	خَبَرِا	khabariā	habaria	khabarī	habari				kh-b-r		noun		ar		
939	96	94	d	2	كُوَابِيَا	kuwābiyā	kuwabiya		kuwambiya				-amb-		verb		ba	ku	
968	99	97	d	2	مَوْلَنَا	mawlanā	maulana		Maulana				a-a-l		title		ar		
901	93	91	a	2	مْفَنُ	mfanu	mfanu		mfano				-fan-		noun		ba		
904	93	91	b	3	مْنُ	mnu	mnu		mno				mno		adv		ba		
949	97	95	d	2	نَلُوْ	naluu	naluu		naloiwatiya				-ach-		verb		ba	li	
938	96	94	d	1	نِمِپِنْدَ	nimipinda	nimipinda		nimependa				-pend-		verb		ba	me	
932	96	94	a	2	نِمِيَخِتِمُ	nimiyakhitimu	nimiyahitimu		nimeyahitimu				kh-t-m		verb		ar	me	
925	95	93	b	2	مِنْيِ	minyi	minyi		mwenye				-enye		noun		ba		
943	97	95	b	2	نِوَاپِ	niwāpi	niwapi		niwape				-p-		verb		ba	subj	
941	97	95	a	2	وَوُڠَوَانَ	wawugawāna	wawugawana		waungwana				-ungwana		noun		ba		
894	92	90	b	1	يِوُ	yiwu	yiwu		yeo				-eo	What did you do to him today?	adv		ba		
940	97	95	a	1	فَهَمُنِ	fahamuni	fahamuni						f-h-m		verb		ar	imp	
965	99	97	c	1	اَكَوازَوَا	akawāzawā	akawazawa		akazawa	*			-za-		verb		ba	ka	
969	99	97	d	3	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn		ar		
948	97	95	d	1	حُجَ	ḥuja	huja						hh-w-j		noun		ar		
931	96	94	a	1	حَيَ	ḥaya	haya						h-		dem		ba		
909	93	91	d	2	حُكُ	ḥuku	huku						h-		dem		ba		
891	91	89	d	2	هُنَمْبِيَا	hunambiyā	hunambiya						-amb-		verb		ba	hu	
926	95	93	b	3	كَلِمُ	kalimu	kalimu						k-l-m		noun		ar		
903	93	91	b	2	كَتِكَ	katika	katika		kateka				kati		prep		ba		
935	96	94	c	1	كْوَا	kwā	kwa						-a		ref		ba		
944	97	95	b	3	مَعَنَا	maʿanā	maana						m-3-n		noun		ar		
912	94	92	a	2	مِمِ	mimi	mimi						mimi		pron		ba		
951	98	96	a	1	نَلِئِوَاتَ	naliiwāta	naliiwata						-ach-		verb		ba	li	
911	94	92	a	1	نَا	nā	na						ni	But whenever I came out [of the mosque]	exist		ba		
906	93	91	c	2	اُنَ	una	una						-na		have		ba		
967	99	97	d	1	وَ	wa	wa						w-a		conj		ar		
946	97	95	c	2	يَنْڠُ	yangu	yangu						-angu		poss		ba		
917	94	92	c	2	اُتَوُنْرُكَ	utawunruka	utawunruka		utaondoka				-ondo-		v		b	ta	
914	94	92	b	1	ػِنِرَّا	kʲinirrā	chinirra		chenenda				-end-	and went [after him], he would tremble,	v		b	ki	
907	93	91	c	3	نَمَنِيْنُ	namanı̄nu	namaninu		na maneno				-nen-		n		b		
953	98	96	b	1	سِمَحَبَ	simaḥaba	simahaba		si mahaba										
1027	105	103	d	2	اَمِيْزُوِيَ	amı̄zuwiya	amizuwiya		amezoeya				-zoe-		v		b	me	
970	100	98	a	1	اَكَئِيَّڠَ	akaı̄yaga	akaiyaga		akayiaga										
958	98	96	d	1	اَكَصِيْرِ	akaṣı̄ri	akasiri												
1026	105	103	d	1	مْتُوِ	mtuwi	mtuwi		mtuwe				-tu		n		b		
915	94	92	b	2	اَتَشُتُكَ	atashutuka	atashutuka					Note that the \\Swa{-ta-} tense formative, usually translated as a future tense, here has a meaning of repetition or continuity.  So also in the sentence: \\Swa{ukimkopesha, hatakulipa}, \\E{if you lend him [money], he does not pay you back}.  Other tense formatives also have a much wider meaning than that usually given in the grammar-books.  For example, \\Swa{-a-}, usually translated as a present tense, may emphasise simultaneity (see note to 60c), or refer to the immediate future, as in \\Swa{mi nashuka ...}, \\E{I'll get off [the bus] at ...}.	-shitu-		v		b	ta	
973	100	98	b	2	وَكَفَنَ	wakafana	wakafana						-fan-		v		b	ka	
990	102	100	a	2	پِنْدَا	pindā	pinda		~										
998	102	100	d	2	كُتَنْڠَلِيَا	kutangaliyā	kutangaliya												
1008	103	101	d	1	نِوَازِ	niwāzi	niwazi		ni wazi										
1014	104	102	b	2	نَكُفِيْكِرِا	nakufı̄kiriā	nakufikiria	nakufīkirī	na kufikiri										
1005	103	101	b	3	يَتَكَ	yataka	yataka		~										
1018	104	102	d	2	كينِفُنُلِيَا	kı̄nifunuliyā	kinifunuliya												
1022	105	103	b	2	تَكِفِنِكَ	takifinika	takifinika												
975	100	98	c	2	اَلٗكِمُوُنَ	alokimuwuna	alokimuwuna		alokimuona				-on-		verb		ba	li	
1004	103	101	b	2	اَسِپُ	asipu	asipu		asipoyataka				-tak-		verb		ba	ki	
1033	106	104	c	1	بَوُ	bawu	bawu		bao				bao		noun		ba		
1012	104	102	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title		ar		
1010	104	102	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
1031	106	104	b	1	جَعفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
1016	104	102	c	2	مَكُفَرِا	makufariā	makufaria	makufarī	makufari				k-f-r		noun		ar		
991	102	100	a	3	مَنَانِ	manāni	manani		Manani				m-n-n		godn		ar		
996	102	100	c	3	مِتُنِ	mituni	mituni		mwituni				-itu		noun		ba		
1006	103	101	c	1	نَيِ	nayi	nayi		naye				na		conj		ba		
962	99	97	b	1	نْرِيُ	nriyu	nriyu		ndiyo				ni		focus		ba		
984	101	99	c	2	مْمُيَ	mmuya	mmuya		mmoya				-moja		num		ba		
999	103	101	a	1	تِنَ	tina	tina		tena				tena		conj		ba		
957	98	96	c	3	وَآلدِ	waãldi	waaldi		walidi	*			w-l-d		noun		ar		
1015	104	102	c	1	وَمِكُيَ	wamikuya	wamikuya		wamekuya				-j-		verb		ba	me	
964	99	97	b	3	يَلُجِيْرِ	yalujı̄ri	yalujiri		yalojiri				j-r-y		verb		ar	li	
1017	104	102	d	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
963	99	97	b	2	يُتِ	yuti	yuti		yote				-ote		qual		ba		
1020	105	103	a	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
1000	103	101	a	2	اَكِرَا	akirā	akira		akenda				-end-		verb		ba	ki	
989	102	100	a	1	اَلِپُ	alipu	alipu		alipopenda				-pend-		verb		ba	li	
1053	108	106	c	2	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
1054	108	106	c	3	اَكِرُدِ	akirudi	akirudi						r-d-d		verb		ar	ki	
1024	105	103	c	2	بُدِ	budi	budi						b-d-d		noun		ar		
987	101	99	d	1	هَكُنَ	hakuna	hakuna						-na		have		ba		
981	101	99	b	2	حَنَا	ḥanā	hana						-na		have		ba		
983	101	99	c	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
1029	106	104	a	2	حُكُ	ḥuku	huku						h-		dem		ba		
971	100	98	a	2	كِجَانَ	kijāna	kijana						-ana		noun		ba		
995	102	100	c	2	كِسِمَ	kisima	kisima						-sima		noun		ba		
1013	104	102	b	1	كِوَزَا	kiwazā	kiwaza						-waz-		verb		ba	ki	
974	100	98	c	1	كُلَ	kula	kula						k-l-l		pron		ar		
992	102	100	b	1	كُمْوَامْبِيَا	kumwāmbiyā	kumwambiya						-amb-		verb		ba	ku	
994	102	100	c	1	كُنَ	kuna	kuna						-na		have		ba		
1001	103	101	a	3	كْوَ	kwa	kwa						-a		ref		ba		
1052	108	106	c	1	كْوَانْدَا	kwāndā	kwanda						-anz-		verb		ba	ku	
955	98	96	c	1	مَرَا	marā	mara						m-r-r		noun		ar		
1003	103	101	b	1	مَاءِ	mai	mai						maji		noun		ba		
1035	106	104	d	1	مْبَلِ	mbali	mbali						-bali		num		ba		
993	102	100	b	2	مُعَيَانِ	muʿayāni	muayani						3-a-n		adv		ar		
1030	106	104	a	3	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
1002	103	101	a	4	شَكَ	shaka	shaka						sh-k-k		noun		ar		
1023	105	103	c	1	سِنَا	sinā	sina						-na		have		ba		
986	101	99	c	4	سِرِ	siri	siri						s-r-r		noun		ar		
976	100	98	d	1	سُوْرَ	sūra	sura						sw-w-r		noun		ar		
979	101	99	a	2	وَلِكِيْذُكُرِ	walikı̄dhukuri	walikidhukuri						dh-k-r		verb		ar	li	
978	101	99	a	1	وَتُ	watu	watu						-tu		noun		ba		
977	100	98	d	2	زَلِكِمْوِلِيَ	zalikimwiliya	zalikimwiliya		zalikimweleya				-ele-		v		b	ki	
1019	105	103	a	1	اَكِسَا	akisā	akisa						-ish-		v		b	ki	
956	98	96	c	2	حُوْزَاوَ	ḥūzāwa	huzawa		huzawa				-za-		v		b	hu	
1007	103	101	c	2	اَكَكِفِنِكَ	akakifinika	akakifinika						-funik-		v		b	ka	
972	100	98	b	1	نَبَبَكِ	nababaki	nababaki		na babake				baba		n		b		
1036	106	104	d	2	اَكَلِمْبِيْرِيَ	akalimbı̄riya	akalimbiriya												
1042	107	105	b	2	اُكُنْيُمَ	ukunyuma	ukunyuma		uko nyuma										
1063	109	107	c	2	هُپَتَ	hupata	hupata						-pat-		v		b	hu	
2180	221	215	d	1	فِرَاشَا	firāshā	firasha						f-r-sh	Make up the bed for me.	n		a		
876	90	88	b	1	حَكُوِپُ	ḥakuwipu	hakuwipu		hakuwepo				-w-	was the devil not there?	v		b	li	y
1065	109	107	d	1	غُوْ	ghuu	ghuu		ngoo										
1066	109	107	d	2	اُتَغِنِيْكِيَا	utaghinı̄kiyā	utaghinikiya		utanginikiya										
853	88	86	a	2	حَمُوْانِ	ḥamuwāni	hamuwani	ḥamūni	hamuoni				-on-		v		b	pres	y
1084	112	109	c	3	نَجِنِ	najini	najini		na jini										
1134	117	114	d	1	نَمَيُتُ	namayutu	namayutu		na mayuto										
1110	115	112	b	3	نِنْيَنِ	ninyani	ninyani		ni nyani										
1115	115	112	d	2	اُكَنِوَنِيَا	ukaniwaniyā	ukaniwaniya												
1117	116	113	a	2	اُنَنِ	unani	unani		u nani										
1060	109	107	b	1	اَيَپُ	ayapu	ayapu		ayapo				-j-		verb		ba	a	
1119	116	113	b	2	بَبَكُ	babaku	babaku		babako				baba		noun		ba		
1138	118	115	a	3	اَمْوَمْبِيِ	amwambiyi	amwambiyi		amwambie				-amb-		verb		ba	past	
1064	109	107	c	3	بَدَرِ	badari	badari		bandari				b-n-d-r		noun		ar		
1112	115	112	c	2	هَكُ	haku	haku		hako				LOC		loc		ba		
1137	118	115	a	2	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
1093	113	110	c	2	اِظْهَرِا	iẓhariā	idhharia	iẓharī	idhihari				zw-h-r		noun		ar		
1041	107	105	b	1	جَعَفَرِ	jaʿafari	jaafari		Jaafari				j-3-f-r		persn		ar		
1116	116	113	a	1	كَمُوُلِيْزَا	kamuwulı̄zā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
1096	114	111	a	1	كَمْڤُتِيَ	kamvutiya	kamvutiya		kamvutia				-vut-		verb		ba	ka	
1072	110	108	b	3	كَتُكَا	katukā	katuka		katoka				-to-		verb		ba	ka	
1086	112	109	d	2	كُكُسُمِيَا	kukusumiyā	kukusumiya		kukusomeya				-som-		verb		ba	ku	
1135	117	114	d	2	كُمْغِيَا	kumghiyā	kumghiya		kumngiya				-ingi-		verb		ba	ku	
1037	107	105	a	1	بُزِ	buzi	buzi		mbuzi				-buzi		noun		ba		
1073	110	108	c	1	مْكُوْنُ	mkūnu	mkunu		mkono				-kono		noun		ba		
1085	112	109	d	1	نَيُوَا	nayuwā	nayuwa						-ju-		verb		ba	a	
1044	107	105	c	2	نَأِ	nai	nai		naye				na		conj		ba		
1114	115	112	d	1	نْرِپُ	nripu	nripu		ndipo				ni		focus		ba		
1088	113	110	a	2	نِمِزُفَصِيْرِ	nimizufaṣı̄ri	nimizufasiri		nimezofasiri				f-s-r		verb		ar	me	
1089	113	110	b	1	سِكُيَنِنَ	sikuyanina	sikuyanina		sikuyanena				-nen-		verb		ba	li	
1081	112	109	b	3	سِنَنِ	sinani	sinani		sina-ni				-na		have		ba		
1091	113	110	b	3	سِرِا	siriā	siria	sirī	siri				s-r-r		noun		ar		
1099	114	111	b	2	وُ	wu	wu		wao	*			-ao		poss		ba		
1077	112	109	a	1	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
1109	115	112	b	2	اَدَمُ	adamu	adamu		~				a-d-m		noun		ar		
1056	108	106	d	2	اَكِيَا	akiyā	akiya						-j-		verb		ba	ki	
1061	109	107	b	2	اَتَنِكِيْرِا	atanikı̄riā	atanikiria	atanikīrī	atanikiri				q-r-r		verb		ar	ta	
1070	110	108	b	1	نَيِ	nayi	nayi		naye				na		conj		ba		
1074	110	108	c	2	اَكَمْشِيْكَ	akamshı̄ka	akamshika						-shik-		verb		ba	ka	
1076	110	108	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya						-amb-		verb		ba	ka	
1111	115	112	c	1	بَبَا	babā	baba						baba		noun		ba		
1113	115	112	c	3	دُنِيَانِ	duniyāni	duniyani		duniani				d-n-y		noun		ar		
1055	108	106	d	1	حَلِدِرِكى	ḥalidirikı̄	halidiriki						d-r-k		verb		ar	li	
1082	112	109	c	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
1062	109	107	c	1	حِلِ	ḥili	hili						h-		dem		ba		
1087	113	110	a	1	حَيَا	ḥayā	haya						h-		dem		ba		
1040	107	105	a	4	حِمَ	ḥima	hima						h-m-m		noun		ar		
1058	109	107	a	2	حُفَنْيَ	ḥufanya	hufanya						-fany-		verb		ba	hu	
1057	109	107	a	1	كَمَ	kama	kama						k-m-a		conj		ar		
1049	108	106	a	2	كَرَادِدِ	karādidi	karadidi						r-d-d		verb		ar	ka	
1153	119	116	c	2	كَتَكَلَمُ	katakalamu	katakalamu						k-l-m		verb		ar	ka	
1069	110	108	a	3	كَتِكَ	katika	katika		kateka				kati		prep		ba		
1102	114	111	c	2	كَڤُتَ	kavuta	kavuta						-vut-		verb		ba	ka	
1152	119	116	c	1	كِجَانَ	kijāna	kijana						-ana		noun		ba		
1039	107	105	a	3	كْوَا	kwā	kwa						-a		ref		ba		
1090	113	110	b	2	كْوَا	kwā	kwa						-a		ref		ba		
1079	112	109	b	1	مِمِ	mimi	mimi						mimi		pron		ba		
1108	115	112	b	1	مْوَانَ	mwāna	mwana		mwana-adamu				-ana		noun		ba		
1059	109	107	a	3	نِبِرِ	nibiri	nibiri						n-b-r		noun		ar		
1103	114	111	c	3	قَوْلِ	qawli	qauli						q-w-l		noun		ar		
1080	112	109	b	2	سِكُػِ	sikukʲi	sikuchi						-ch-		verb		ba	a	
1092	113	110	c	1	اُكِتَكَا	ukitakā	ukitaka						-tak-		verb		ba	ki	
1083	112	109	c	2	اُكِوَا	ukiwā	ukiwa						-w-		verb		ba	ki	
1098	114	111	b	1	وَكَوَنَ	wakawana	wakawana						-wan-		verb		ba	ka	
1038	107	105	a	2	وَكَيَ	wakaya	wakaya						-j-		verb		ba	ka	
1100	114	111	b	3	وَوِيْلِ	wawı̄li	wawili						-wili		num		ba		
1043	107	105	c	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
1120	116	113	b	3	نِنْيَنِ	ninyani	ninyani		ni nyani										
1139	118	115	b	1	سِغَلِ	sighali	sighali		singali										
1122	116	113	c	2	نِپِةِ	nipiẗi	nipiti		ni pete										
1140	118	115	b	2	نِكُپِجِيَا	nikupijiyā	nikupijiya		nikupijia										
1162	120	117	c	1	حُنِئُنْيَ	ḥuniunya	huniunya		hunionya				-on-		v		b	hu	
1131	117	114	b	3	نِلَكِ	nilaki	nilaki		ni lake										
1125	116	113	d	2	كَمْوَاغَلِيَا	kamwāghaliyā	kamwaghaliya		kamwangalia				-anga-		v		b	ka	
1173	121	118	c	1	اُمِنِتِيَا	uminitiyā	uminitiya		umenitia				-ti-		v		b	me	
1148	119	116	a	2	پُتِيْزَا	putı̄zā	putiza		~										
1164	120	117	d	1	وَلِأُنَ	waliuna	waliuna		waliona				-on-		v		b	li	
63	6	6	d	2	كَفُمْبَتِيَا	kafumbatiyā	kafumbatiya						-fumb-		v		b	ka	
1170	121	118	b	1	اُكِسَا	ukisā	ukisa												
952	98	96	a	2	كَسِدِ	kasidi	kasidi						q-sw-d		n		a		
1158	120	117	a	3	حُمُوُنَ	ḥumuwuna	humuwuna		humona				-on-		v		b	hu	
1176	121	118	d	2	كُنِنِيَا	kuniniyā	kuniniya		kunendeya				-end-		v		b	ku	
1145	118	115	d	2	نِمِمِ	nimimi	nimimi		ni mimi				mimi		pron		b		
1236	128	124	c	2	نِيَكُڤُلِ	niyakuvuli	niyakuvuli		ni ya kuvuli				-vuli		n		b		
1197	123	120	d	2	نِوَا	niwā	niwa		ni wa										
1202	124	121	b	1	اُكَوَا	ukawā	ukawa												
1184	122	119	c	3	اَتَمْكِ	atamki	atamki		atamke				-tamk-		verb		ba	past	
1183	122	119	c	2	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
1160	120	117	b	2	حُمُوُزِ	ḥumuwuzi	humuwuzi		humuuzi				-uz-		verb		ba	a	
1154	119	116	d	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1121	116	113	c	1	كَبَ	kaba	kaba		kamba				-amb-		verb		ba	ka	
1159	120	117	b	1	كْوَانْدَ	kwānda	kwanda						-anz-		verb		ba	ku	
1219	125	122	d	2	كِشُ	kishu	kishu		kesho				-kesh-		adv		ba		
1129	117	114	b	1	كِسُمَ	kisuma	kisuma		kisoma				-som-		verb		ba	ki	
1222	126	123	a	2	كُكِپَبَوُكَ	kukipabawuka	kukipabawuka		kukipambauka				-pambauk-		verb		ba	ki	
1128	117	114	a	3	كْوَكِ	kwaki	kwaki		kwake				-ake		poss		ba		
1166	121	118	a	1	كَنْدَا	kandā	kanda		kwanda				-anz-		verb		ba	ku	
1174	121	118	c	2	مَتُنْڠُ	matungu	matungu						-chungu		noun		ba		
1142	118	115	c	2	لَكُوْ	lakuu	lakuu		lako				-ako		poss		ba		
1182	122	119	c	1	نَيِ	nayi	nayi		naye				na		conj		ba		
1204	124	121	b	3	نْدِيَانِ	ndiyāni	ndiyani		ndiani				-jia		noun		ba		
1147	119	116	a	1	نِڠَلِ	nigali	nigali		ningalipoteza				-pote-		verb		ba	ngali	
1203	124	121	b	2	تِنَ	tina	tina		tena				tena		conj		ba		
1126	117	114	a	1	پِتِ	piti	piti		pete				-pet-		noun		ba		
1237	128	124	d	1	اُسِتَكِ	usitaki	usitaki		usitake				-tak-		verb		ba	subj	
1171	121	118	b	2	اُوِ	uwi	uwi		uwe				-w-		verb		ba	subj	
1199	124	121	a	1	وَتُوِ	watuwi	watuwi		watoe				-to-		verb		ba	imp	
1156	120	117	a	1	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
1155	119	116	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya						-amb-		verb		ba	ka	
1132	117	114	c	1	اَرُدِ	arudi	arudi						r-d-d		verb		ar	a	
1146	118	115	d	3	عَلِيَا	ʿaliyā	aliya		Aliya				3-l-y		persn		ar		
1133	117	114	c	2	اَسِكِتِكِ	asikitiki	asikitiki		asikitike				-sikitik-		verb		ba	subj	
1221	126	123	a	1	كِشُ	kishu	kishu		kesho				-kesh-		adv		ba		
1144	118	115	d	1	بَبَا	babā	baba						baba		noun		ba		
1123	116	113	c	3	ػَنْدَانِ	kʲandāni	chandani						-anda		noun		ba		
1149	119	116	a	3	دَامُ	dāmu	damu						d-m-m		noun		ar		
1141	118	115	c	1	اِنَ	ina	ina						-ina		noun		ba		
1130	117	114	b	2	اِنَ	ina	ina						-ina		noun		ba		
1187	122	119	d	3	كَمْوَمْبِيَا	kamwambiyā	kamwambiya						-amb-		verb		ba	ka	
1188	123	120	a	1	كَمْوَمْبِيَا	kamwambiyā	kamwambiya		kamwambia				-amb-		verb		ba	ka	
1186	122	119	d	2	لَكِ	laki	laki		lake				l-k-k		noun		ar		
1200	124	121	a	2	مْبُزِ	mbuzi	mbuzi						-buzi		noun		ba		
1190	123	120	b	1	مِمِ	mimi	mimi						mimi		pron		ba		
1157	120	117	a	2	مْتُ	mtu	mtu						-tu		noun		ba		
1201	124	121	a	3	مْوِتُوْنِ	mwitūni	mwituni						-itu		noun		ba		
1179	122	119	b	1	نَمُيُوَا	namuyuwā	namuyuwa						-ju-		verb		ba	a	
1264	132	127	b	2	نَا	nā	na						ni		exist		ba		
1167	121	118	a	2	نِپَا	nipā	nipa						-p-		verb		ba	imp	
1220	125	122	d	3	نِتَكُيَا	nitakuyā	nitakuya						-j-		verb		ba	ta	
1151	119	116	b	2	سِكُكُفَهَمُ	sikukufahamu	sikukufahamu						f-h-m		verb		ar	li	
1180	122	119	b	2	سُرَا	surā	sura						sw-w-r		noun		ar		
1165	120	117	d	2	تَكِمْبِيَا	takimbiyā	takimbiya						-kimb-		verb		ba	ki	
1198	123	120	d	3	تِسِيَا	tisiyā	tisiya						t-s-3		num		ar		
1169	121	118	a	4	يَنْڠُ	yangu	yangu						-angu		poss		ba		
1218	125	122	d	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
1175	121	118	d	1	مُيِلِنِ	muyilini	muyilini		muilini				-ili		n		b		
1051	108	106	b	2	كَسِدِ	kasidi	kasidi						q-sw-d		n		a		
1239	129	125	a	1	كَمْرُدِشَا	kamrudishā	kamrudisha						r-d-d		v		a	ka	
307	30	30	c	2	كَتَكَلَّمَ	katakallama	katakallama		katakalama				k-l-m		v		a	ka	
1189	123	120	a	2	كِفَصِيْرِ	kifaṣı̄ri	kifasiri						f-s-r		v		a	ki	
497	50	50	d	2	كُصَلِ	kuṣali	kusali						sw-l-w		v		a	ku	
443	45	45	b	1	كُتُوَا	kutuwā	kutuwa		kutoa				-to-	andFatima had calmed down,	v		b	ku	
3368	343	337	a	3	كُتُوَا	kutuwā	kutuwa		kutoa				-to-		v		b	ku	
1333	138	133	d	2	كُكْوِتِيَا	kukwitiyā	kukwitiya		kukweteya				-let-		v		b	ku	
1223	126	123	b	1	نَمَپِيْمَ	namapı̄ma	namapima		na mapema				-ema		adv		b		
1332	138	133	d	1	نَزَايْدِ	nazāı̄di	nazaydi		na zaidi				z-a-d		adv		a		
1263	132	127	b	1	اَزْوَاجِ	azwāji	azwaji		Aziwaji										
1304	136	131	b	1	نَوِنْغِ	nawinghi	nawinghi		na wingi										
1323	137	132	d	2	وَكُتَغُلِيَا	wakutaghuliyā	wakutaghuliya		wakutanguliya										
1278	133	128	c	2	هَيْدَارِ	haydāri	haydari		Haidari				h-d-r		title		ar		
1269	132	127	d	1	هَوُ	hawu	hawu		hao				-ao		poss		ba		
1272	133	128	a	2	هَپُ	hapu	hapu		hapo				h-		dem		ba		
1268	132	127	c	3	اِظْهَرِ	iẓhari	idhhari		idhihari				zw-h-r		noun		ar		
1208	124	121	d	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1275	133	128	b	2	كْوَا	kwā	kwa						-a		ref		ba		
1282	134	129	a	2	كَنْڠِيَا	kangiyā	kangiya		kangiya				-ingi-		verb		ba	ka	
1284	134	129	b	1	كِيْرَا	kı̄rā	kira		kenda				-end-		verb		ba	ka	
1238	128	124	d	2	كُپُتِيَا	kuputiyā	kuputiya		kupoteya				-pote-		verb		ba	ku	
1283	134	129	a	3	كْوَكِ	kwaki	kwaki		kwake				-ake		poss		ba		
1306	136	131	b	3	مَوُظِكُ	mawuẓiku	mawudhiku		maudhiko				3-zw-zw		noun		ar		
1279	133	128	d	1	مْغُ	mghu	mghu		Mngu				-ngu		godn		ba		
1286	134	129	b	3	مُعْلِمُ	muʿlimu	mulimu		mualimu	*			3-l-m		noun		ar		
1249	130	126	a	1	نَيِ	nayi	nayi		naye				na		conj		ba		
1213	125	122	b	1	نِنَا	ninā	nina						-na		have		ba		
1226	126	123	c	2	مُيَ	muya	muya		moya				-oyo		noun		ba		
1322	137	132	d	1	نْدِيِ	ndiyi	ndiyi		ndiye				ni		focus		ba		
1211	125	122	a	2	نِرَا	nirā	nira		nenda				-end-		verb		ba	a	
1216	125	122	c	1	نِمُوَانڠِ	nimuwāngi	nimuwangi		nimuage				-ag-		verb		ba	subj	
1231	128	124	a	2	قَوُلِ	qawuli	qawuli		qauli				q-w-l		noun		ar		
1224	126	123	b	2	تَيْنُكَا	taynukā	taynuka		tainuka				-inu-		verb		ba	ta	
1240	129	125	a	2	تَمْكُ	tamku	tamku		tamko				-tamk-		noun		ba		
1205	124	121	c	1	تْوِنِرِ	twiniri	twiniri		twenende				-end-		verb		ba	subj	
1232	128	124	b	1	اُيَپُ	uyapu	uyapu		uyapo				-j-		verb		ba	a	
1287	134	129	b	4	وَكِا	wakiā	wakia	wakī	wake				-ake		poss		ba		
1215	125	122	b	3	وَنْغُ	wanghu	wanghu		wangu				-angu		poss		ba		
1212	125	122	a	3	زَنْغُ	zanghu	zanghu		zangu				-angu		poss		ba		
1267	132	127	c	2	زَوُ	zawu	zawu		zao				-ao		poss		ba		
1230	128	124	a	1	اَكَمجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
1290	134	129	c	3	زَاكِيْ	zākii	zakii		zake				-ake		focus		ba		
1280	133	128	d	2	اَكَمُوُمبِيَا	akamuwumbiyā	akamuwumbiya		akamuombeya				-omb-		verb		ba	ka	
1262	132	127	a	3	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn		ar		
1257	130	126	c	3	اَقْرَابَ	aqrāba	aqraba						q-r-b		noun		ar		
1228	126	123	d	1	بَبَا	babā	baba						baba		noun		ba		
1256	130	126	c	2	هُوْكُ	hūku	huku						h-		dem		ba		
1271	133	128	a	1	بَاسِ	bāsi	basi						b-s		conj		ar		
1289	134	129	c	2	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
1242	129	125	b	2	هَيَ	haya	haya						h-		dem		ba		
1227	126	123	c	3	اِكِفِيْكَ	ikifı̄ka	ikifika						-fik-		verb		ba	ki	
1288	134	129	c	1	كَمْپَ	kampa	kampa						-p-		verb		ba	ka	
1285	134	129	b	2	كْوَا	kwā	kwa						-a		ref		ba		
1254	130	126	b	2	مَرَحَبَ	maraḥaba	marahaba						r-hh-b		noun		ar		
1245	129	125	c	1	مُعَلِمُ	muʿalimu	mualimu						3-l-m		noun		ar		
1250	130	126	a	2	مْوَانَ	mwāna	mwana						-ana		noun		ba		
1255	130	126	c	1	نَمِ	nami	nami						na		conj		ba		
1252	130	126	a	4	نَصَبَ	naṣaba	nasaba						n-s-b		noun		ar		
1270	132	127	d	2	نَوَافَهَمِيْيَا	nawāfahamı̄yā	nawafahamiya						f-h-m		verb		ar	a	
1233	128	124	b	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
1248	129	125	d	2	نِسَلِمِيْيَا	nisalimı̄yā	nisalimiya						s-l-m		verb		ar	imp	
1225	126	123	c	1	سَعَ	saʿa	saa						s-a-3		noun		ar		
1260	132	127	a	1	سَلَمُ	salamu	salamu						s-l-m		noun		ar		
1266	132	127	c	1	سُرَا	surā	sura						sw-w-r		noun		ar		
1229	126	123	d	2	تَكُوَاصِلِيَا	takuwāṣiliyā	takuwasiliya						w-sw-l		verb		ar	ta	
1251	130	126	a	3	وَ	wa	wa						w-a		conj		ar		
1305	136	131	b	2	وَ	wa	wa						w-a		conj		ar		
1307	136	131	c	1	وَلَا	walā	wala						wala		conj		ba		
1206	124	121	c	2	زِپُ	zipu	zipu		zipo				LOC		loc		b		
1345	140	135	b	1	كَمْوِلِيْزِ	kamwilı̄zi	kamwilizi		kamweleze				-ele-		v		b	ka	
1311	136	131	d	2	كُكُزِوِلِيَا	kukuziwiliyā	kukuziwiliya												
1324	138	133	a	1	نَكُكُكِيْرَا	nakukukı̄rā	nakukukira		na kukukinda										
1391	144	139	c	2	يَمَتُ	yamatu	yamatu		ya mato				-cho		n		b		
2724	276	270	b	3	كُوَابِرِ	kuwābiri	kuwabiri		kuabiri				3-b-r		v		a	ku	
1317	137	132	b	2	اُحُلِ	uḥuli	uhuli		u hali	*									
3251	330	324	d	2	كُوَانْدَمِيَا	kuwāndamiyā	kuwandamiya						-andam-		v		b	ku	
1350	140	135	d	2	تَكَيُ	takayu	takayu		takayokwambiya										
1351	140	135	d	3	كْوَمْبِيَا	kwambiyā	kwambiya		~										
1313	137	132	a	2	حِمُ	ḥimu	himu						h-m-m		n		a		
1328	138	133	b	3	نِحَكِيْ	niḥakii	nihakii		ni haki				h-q-q		n		a		
1387	144	139	b	1	نِيْرُيِ	nı̄ruyi	niruyi		ni nduye										
1388	144	139	b	2	كِنُنَ	kinuna	kinuna		kinona										
1363	141	136	d	3	اَكِغِيَا	akighiyā	akighiya		akingiya				-ingi-		verb		ba	ki	
1320	137	132	c	2	بَابَكُ	bābaku	babaku		babako				baba		noun		ba		
1389	144	139	b	3	ػَكِ	kʲaki	chaki		chake				-ake		poss		ba		
1300	135	130	d	1	هَيُ	hayu	hayu		hayo				h-		dem		ba		
1353	141	136	a	2	هِيُ	hiyu	hiyu		hiyo				h-		dem		ba		
1372	142	137	d	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1297	135	130	c	1	كَبَ	kaba	kaba		kamba				-amb-		verb		ba	ka	
1364	142	137	a	1	كَغِيَ	kaghiya	kaghiya		kangia				-ingi-		verb		ba	ka	
1365	142	137	a	2	كَوِكَ	kawika	kawika		kaweka				-wek-		verb		ba	ka	
1291	134	129	d	1	كْوَاوُ	kwāwu	kwawu		kwao				-ao		poss		ba		
1348	140	135	c	2	مَتَمْكُ	matamku	matamku		matamko				-tamk-		noun		ba		
1358	141	136	c	1	مُيُ	muyu	muyu		moyo				-oyo		noun		ba		
1319	137	132	c	1	نَايِ	nāyi	nayi		naye				na		conj		ba		
1325	138	133	a	2	سِتَكِ	sitaki	sitaki						-tak-		verb		ba	a	
1312	137	132	a	1	نِرَا	nirā	nira		nenda				-end-		verb		ba	a	
1424	147	142	d	2	نِكِكْوَاغَلِيَا	nikikwāghaliyā	nikikwaghaliya		nikikwangaliya				-anga-		verb		ba	ki	
1329	138	133	c	1	نِرَاضِ	nirāḍi	niradhi		ni radhi				r-a-zw		noun		ar		
1303	136	131	a	2	سِكِتِكُ	sikitiku	sikitiku		sikitiko				-sikitik-		noun		ba		
1310	136	131	d	1	سِوِزِ	siwizi	siwizi		siwezi				-wez-		verb		ba	a	
1301	135	130	d	2	اُمِزُنَمْبِيَا	umizunambiyā	umizunambiya		umezonambiya				-amb-		verb		ba	me	
1368	142	137	b	2	اُپُوْلِ	upūli	upuli		upole				-pole		noun		ba		
1347	140	135	c	1	اُسِكِيْزِ	usikı̄zi	usikizi		usikize				-siki-		verb		ba	subj	
1406	145	140	d	2	وَمِپُتِيَا	wamiputiyā	wamiputiya		wamepoteya				-pote-		verb		ba	me	
1298	135	130	c	2	وَانِتِيَ	wānitiya	wanitiya		wanitia				-ti-		verb		ba	a	
1309	136	131	c	3	وِنْرَاكُ	winrāku	winraku		wendako				-end-		verb		ba	a	
1315	137	132	a	4	وِنْدَانِ	windāni	windani		wendani				-end-		noun		ba		
1321	137	132	c	3	زَِاتَنِ	ziātani	ziatani	zītani	zitani				-ta		noun		ba		
1334	139	134	a	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia				-amb-		verb		ba	ka	
1330	138	133	c	2	اَلِفُ	alifu	alifu						2-l-f		num		ar		
1295	135	130	b	1	اَكَلِيَ	akaliya	akaliya		akalia				-li-		verb		ba	ka	
1337	139	134	b	2	اَيَفَهَمُ	ayafahamu	ayafahamu						f-h-m		verb		ar	a	
1349	140	135	d	1	نَيِ	nayi	nayi		naye				na		conj		ba		
1343	140	135	a	2	نِنْرَ	ninra	ninra		nenda				-end-		verb		ba	a	
1318	137	132	b	3	ڠَانِ	gāni	gani						nini		qual		ba		
1299	135	130	c	3	حَمُ	ḥamu	hamu						h-m-m		noun		ar		
1357	141	136	b	3	كَئَنْدَمَ	kaandama	kaandama						-andam-		verb		ba	ka	
1354	141	136	a	3	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
1339	139	134	c	2	كَلِيْمُ	kalı̄mu	kalimu						k-l-m		noun		ar		
1338	139	134	c	1	كَمْجِبِشَا	kamjibishā	kamjibisha						j-a-b		verb		ar	ka	
1371	142	137	c	2	كَتَعَجَبُ	kataʿajabu	kataajabu						3-j-b		verb		ar	ka	
1366	142	137	a	3	كِبُ	kibu	kibu						kibu		noun		ba		
1340	139	134	d	1	كُوَا	kuwā	kuwa						-w-		verb		ba	ku	
1314	137	132	a	3	كْوَا	kwā	kwa						-a		ref		ba		
1361	141	136	d	1	كْوَا	kwā	kwa						-a		ref		ba		
1331	138	133	c	3	لَكِ	laki	laki						l-k-k		noun		ar		
1326	138	133	b	1	كْوَانِ	kwāni	kwani						nini		int		ba		
1296	135	130	b	2	مُعَلِيْمُ	muʿalı̄mu	mualimu						3-l-m		noun		ar		
1335	139	134	a	2	مْوَالِيْمُ	mwālı̄mu	mwalimu						3-l-m		noun		ar		
1327	138	133	b	2	نَيُوَا	nayuwā	nayuwa						-ju-		verb		ba	a	
1356	141	136	b	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
1341	139	134	d	2	سِيَسِكِلِيَا	siyasikiliyā	siyasikiliya						-siki-		verb		ba	me	
1359	141	136	c	2	اُنَ	una	una						-na		have		ba		
1405	145	140	d	1	وَوِلِ	wawili	wawili						-wili		num		ba		
1293	135	130	a	1	اَكِسَ	akisa	akisa						-ish-		v		b	ki	
1352	141	136	a	1	اَكِسَ	akisa	akisa						-ish-		v		b	ki	
1316	137	132	b	1	نَهُوْكُ	nahūku	nahuku		na huko 				h-		poss		b		
1384	143	138	d	2	اَمِزُكِمْبِيَا	amizukimbiyā	amizukimbiya		amezokimbia				-kimb-		v		b	me	
1375	143	138	a	2	سِوِوِ	siwiwi	siwiwi		si wewe										
1377	143	138	b	1	وَاُتِشُوْ	wautishuu	wautishuu		wa utisho										
1378	143	138	b	2	نَجَوُرِ	najawuri	najawuri		na jauri										
1433	148	143	d	2	حَڠَلِيْكْوَمْبِيَا	ḥagalı̄kwambiyā	hagalikwambiya		hangalikwambiya				-amb-		v		b	ngali	y
1127	117	114	a	2	كْوَغَلِيَ	kwaghaliya	kwaghaliya		kwangalia				-anga-		v		b	ku	
2679	272	266	b	2	لَبَرَ	labara	labara		la bara				b-r-r		n		a		
1396	145	140	a	2	مَمَا	mamā	mama						mama		noun		ba		
1431	148	143	c	2	نِمْبَصِيْرِ	nimbaṣı̄ri	nimbasiri		ni mi Nasiri	*									
1435	149	144	a	2	نِرُيَكُ	niruyaku	niruyaku		ni nduyako										
1440	149	144	c	2	نِعَوْنِ	niʿawni	niauni		ni auni										
1443	149	144	d	2	كُمْتُكُلِيْيَا	kumtukulı̄yā	kumtukuliya												
1386	144	139	a	2	اَتَمْكِيْ	atamkii	atamkii		atamke				-tamk-		verb		ba	past	
1412	146	141	c	2	اَتُوْكَ	atūka	atuka		atoka				-to-		verb		ba	a	
1395	145	140	a	1	اِوِ	iwi	iwi		ewe				wewe		pron		ba		
1447	150	145	b	2	هَنِيْنِ	hanı̄ni	hanini		haneni				-nen-		verb		ba	a	
1425	148	143	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
1410	146	141	b	2	حَوَاوُنِ	ḥawāwuni	hawawuni		hawaoni				-on-		verb		ba	a	
1432	148	143	d	1	هَيُ	hayu	hayu		hayo				h-		dem		ba		
1513	156	151	d	1	خِرِ	khiri	hiri		heri				kh-y-r		noun		ar		
1379	143	138	c	1	هُغِيَ	hughiya	hughiya		hungia				-ingi-		verb		ba	hu	
1376	143	138	a	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1422	147	142	c	2	جَوُرِ	jawuri	jawuri		jauri				-euri		noun		ba		
1475	153	148	a	2	كَبَيِنِ	kabayini	kabayini		kabaini				b-a-n		verb		ar	ka	
1394	144	139	d	2	كُتْوَاغَلِيَا	kutwāghaliyā	kutwaghaliya		kutwangaliya				-anga-		verb		ba	ku	
1409	146	141	b	1	مِوَاتَنْڠَ	miwātanga	miwatanga		mewatanga				-tang-		verb		ba	me	
1437	149	144	b	2	مْتُتُ	mtutu	mtutu		mtoto				-toto		noun		ba		
1383	143	138	d	1	مْتُا	mtuā	mtua	mtū	mtu				-tu		noun		ba		
1436	149	144	b	1	مْوَانَغُ	mwānaghu	mwanaghu		mwanangu				-ana		noun		ba		
1449	150	145	c	2	مْوِنْدَانِ	mwindāni	mwindani		mwendani				-end-		noun		ba		
1385	144	139	a	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri				n-sw-r		persn		ar		
1451	150	145	d	2	نِمِزُكْوَامْبِيَا	nimizukwāmbiyā	nimizukwambiya		nimezokwambiya				-amb-		verb		ba	me	
1397	145	140	a	3	سِوُظِيْكِ	siwuẓı̄ki	siwudhiki		siudhike				3-zw-zw		verb		ar	imp	
1445	150	145	a	2	تِيْنِ	tı̄ni	tini						-chi		adv		ba		
1490	154	149	c	1	تِنَ	tina	tina		tena				tena		conj		ba		
1509	156	151	b	1	اُتَغِوُزَا	utaghiwuzā	utaghiwuza		utageuza				-geu-		verb		ba	ta	
1404	145	140	c	4	وَاكِ	wāki	waki		wake				-ake		poss		ba		
1438	149	144	b	3	وَاكُا	wākuā	wakua	wākū	wako				-ako		poss		ba		
1407	146	141	a	1	وَامِتُكَا	wāmitukā	wamituka		wametoka				-to-		verb		ba	me	
1392	144	139	c	3	يَكِ	yaki	yaki		yake				-ake		poss		ba		
1400	145	140	b	3	يَكِ	yaki	yaki		yake				-ake		poss		ba		
1441	149	144	c	3	يَكُا	yakuā	yakua	yakū	yako				-ako		poss		ba		
1448	150	145	c	1	يَمِكُپَتَ	yamikupata	yamikupata		yamekupata				-pat-		verb		ba	me	
1401	145	140	c	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
1423	147	142	d	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
1414	146	141	d	1	يُوَا	yuwā	yuwa		yua				-ua		noun		ba		
1473	152	147	d	2	زِمِكُپُتِايَا	zimikuputiāyā	zimikuputiaya	zimikuputīyā	zimekupoteya				-pote-		verb		ba	me	
1421	147	142	c	1	زِتَكُتُكَ	zitakutuka	zitakutuka		zitakutoka				-to-		verb		ba	ta	
1454	151	146	a	3	اَجِبُ	ajibu	ajibu						j-a-b		verb		ar	a	
1419	147	142	b	1	اَكَمْپِجَ	akampija	akampija						-pig-		verb		ba	ka	
1446	150	145	b	1	اَكِوُلِزْوَا	akiwulizwā	akiwulizwa		akiulizwa				-uz-		verb		ba	ki	
1452	151	146	a	1	هَپُ	hapu	hapu		hapo				h-		dem		ba		
1420	147	142	b	2	نَصِيْرِا	naṣı̄riā	nasiria	naṣı̄rī	Nasiri				n-sw-r		persn		ar		
1427	148	143	a	3	اسِكِيْرِ	āsikı̄ri	asikiri						q-r-r		verb		ar	past	
1393	144	139	d	1	هَتَكِ	hataki	hataki						-tak-		verb		ba	a	
1399	145	140	b	2	حُجَ	ḥuja	huja						hh-w-j		noun		ar		
1374	143	138	a	1	كَمَ	kama	kama						k-m-a		conj		ar		
1380	143	138	c	2	كَمَ	kama	kama						k-m-a		conj		ar		
1428	148	143	b	1	كَمْشِيْكَ	kamshı̄ka	kamshika						-shik-		verb		ba	ka	
1381	143	138	c	3	كْوَا	kwā	kwa						-a		ref		ba		
1403	145	140	c	3	مْبُوْزِ	mbūzi	mbuzi						-buzi		noun		ba		
1413	146	141	c	3	مْوِتُنِ	mwituni	mwituni						-itu		noun		ba		
1408	146	141	a	2	صَافُوْنِ	ṣāfūni	safuni						sw-f-f		noun		ar		
1382	143	138	c	4	سِرِ	siri	siri						s-r-r		noun		ar		
1402	145	140	c	2	اُنَ	una	una						-na		have		ba		
1442	149	144	d	1	وَتَ	wata	wata						-ach-		verb		ba	imp	
1411	146	141	c	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
1439	149	144	c	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
1527	158	153	a	2	كَبَيَنِ	kabayani	kabayani						b-a-n		v		a	ka	
1514	156	151	d	2	كُيْنْمَلِيَ	kuynmaliya	kuynmaliya		kuinyamalia	*			-nyama-		v		b	ku	
1456	151	146	b	2	حَتَعَدَبُ	ḥataʿadabu	hataadabu						a-d-b		v		a	pres	y
1459	151	146	c	3	نِهَرَابُ	niharābu	niharabu		ni harabu				kh-r-b		adj		a		
1484	153	148	d	3	نِمْپِيَا	nimpiyā	nimpiya		ni mpiya										
1489	154	149	b	3	جِبُ	jibu	jibu		~										
1508	156	151	a	2	نِمُوِنِ	nimuwini	nimuwini		ni muini										
1521	157	152	c	1	وِنْرِ	winri	winri		wende										
1561	161	156	b	3	يَكُزِيْمُ	yakuzı̄mu	yakuzimu		ya kuzimu										
1500	155	150	b	3	هَكُ	haku	haku		hako				LOC		loc		ba		
1520	157	152	b	3	حُكُيِسِ	ḥukuyisi	hukuyisi		hukuisi				-is-		verb		ba	a	
1483	153	148	d	2	اِوِ	iwi	iwi		iwe				wewe		pron		ba		
1468	152	147	b	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1496	155	150	a	1	كِكُوُلِزَ	kikuwuliza	kikuwuliza		kikuuliza				-uz-		verb		ba	ki	
1457	151	146	c	1	كِوَا	kiwā	kiwa						-w-		verb		ba	ki	
1482	153	148	d	1	كْوَاكُ	kwāku	kwaku		kwako				-ako		poss		ba		
1523	157	152	c	3	مَجْلِسِ	majlisi	majlisi		majilisi				j-l-s		noun		ar		
1519	157	152	b	2	مَكَ	maka	maka		Maka				m-k-k		placen		ar		
1510	156	151	b	2	مَغِيْنِ	maghı̄ni	maghini		mangine				-ingine		qual		ba		
1532	158	153	c	3	مُعَيَاَنِ	muʿayaani	muayaani		muayani				3-a-n		adv		ar		
1491	154	149	c	2	نَوُنَ	nawuna	nawuna		naona				-on-		verb		ba	a	
1455	151	146	b	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri				n-sw-r		persn		ar		
1461	151	146	d	2	نِيُوَا	niyuwā	niyuwa		nayua	*			-ju-		verb		ba	a	
1494	154	149	d	2	مِنْيِ	minyi	minyi		mwenye				-enye		noun		ba		
1479	153	148	c	1	نِكْوَامْبِيِ	nikwāmbiyi	nikwambiyi		nikwambie				-amb-		verb		ba	subj	
1538	159	154	b	2	سِيُ	siyu	siyu		siyo				si		focus		ba		
1462	151	146	d	3	طِبِيَا	ṭibiyā	tibiya		tabiya	*			tw-b-3		noun		ar		
1560	161	156	b	2	تُنْدُ	tundu	tundu						-tundu		noun		ba		
1501	155	150	c	1	تَنْغُ	tanghu	tanghu		tangu				tangu		adv		ba		
1528	158	153	b	1	تُمِوُنَنَ	tumiwunana	tumiwunana		tumeonana				-on-		verb		ba	me	
1524	157	152	d	1	اُكَمُوُنَ	ukamuwuna	ukamuwuna		ukamuona				-on-		verb		ba	ka	
1539	159	154	b	3	اُنِرُوْدِا	unirūdiā	unirudia	unirūdī	unirudi				r-d-d		verb		ar	subj	
1470	152	147	c	2	اُسِمِمِ	usimimi	usimimi		usimeme				-simam-		verb		ba	past	
1469	152	147	c	1	اُوْسُ	ūsu	usu		uso				-so		noun		ba		
1512	156	151	c	2	وَفِيْنِ	wafı̄ni	wafini		wafene				-fan-		verb		ba	past	
1458	151	146	c	2	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
1504	155	150	c	4	يَكُ	yaku	yaku		yako				-ako		poss		ba		
1516	157	152	a	2	حُيُوَا	ḥuyuwā	huyuwa		huyua				-ju-		v		b	hu	
1492	154	149	c	3	عَجَبُ	ʿajabu	ajabu						3-j-b		noun		ar		
1497	155	150	a	2	اَلِكُ	aliku	aliku		aliko				-li		verb		ba	li	
1531	158	153	c	2	زَاكِ	zāki	zaki		zake				-ake		focus		ba		
1525	157	152	d	2	عَلِيَا	ʿaliyā	aliya		Aliya				3-l-y		persn		ar		
1498	155	150	b	1	بَبَا	babā	baba						baba		noun		ba		
1506	155	150	d	2	دُنِيَا	duniyā	duniya						d-n-y		noun		ar		
1517	157	152	a	3	فَرِسِ	farisi	farisi						f-r-s		adj		ar		
1478	153	148	b	3	ڠَنِ	gani	gani						nini		qual		ba		
1466	152	147	b	1	حَبَا	ḥabā	haba						hh-b-b		noun		ar		
1471	152	147	c	3	حَرِ	ḥari	hari						hh-r-r		noun		ar		
1477	153	148	b	2	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
1499	155	150	b	2	هُنَمْبِيَا	hunambiyā	hunambiya		hunambia				-amb-		verb		ba	hu	
1486	154	149	a	2	كِعَرَبُ	kiʿarabu	kiarabu						3-r-b		noun		ar		
1485	154	149	a	1	كِكْوَامْبِيَ	kikwāmbiya	kikwambiya		kikwambia				-amb-		verb		ba	ki	
1537	159	154	b	1	كِوَ	kiwa	kiwa						-w-		verb		ba	ki	
1495	154	149	d	3	كُكْوَمْبِيَا	kukwambiyā	kukwambiya						-amb-		verb		ba	ku	
1480	153	148	c	2	لُوْغَ	lūgha	lugha						l-gh-a		noun		ar		
1503	155	150	c	3	مِمْبَ	mimba	mimba						mimba		noun		ba		
1493	154	149	d	1	مِمِ	mimi	mimi						mimi		pron		ba		
1529	158	153	b	2	مْوِتُنِ	mwituni	mwituni						-itu		noun		ba		
1460	151	146	d	1	نَمِ	nami	nami						na		conj		ba		
1502	155	150	c	2	نِنَا	ninā	nina						-na		have		ba		
1467	152	147	b	2	نِپَ	nipa	nipa						-p-		verb		ba	imp	
1535	159	154	a	1	نِسِكِزَا	nisikizā	nisikiza						-siki-		verb		ba	imp	
1530	158	153	c	1	صِفَا	ṣifā	sifa						sw-f-h		noun		ar		
1587	164	159	a	1	تَكُپَ	takupa	takupa						-p-		verb		ba	ta	
1533	158	153	d	1	اُكِتَكَ	ukitaka	ukitaka						-tak-		verb		ba	ki	
1559	161	156	b	1	اُوْنَ	ūna	una						-na		have		ba		
1511	156	151	c	1	اُتَنَمْبِيَا	utanambiyā	utanambiya						-amb-		verb		ba	ta	
1518	157	152	b	1	وَلَا	walā	wala						wala		conj		ba		
1522	157	152	c	2	وَاپِ	wāpi	wapi						-pi		int		ba		
1476	153	148	b	1	وَتَكَ	wataka	wataka						-tak-		verb		ba	a	
1578	163	158	a	2	اُنَمْبِيَوُ	unambiyawu	unambiyawu		unambiao										
1547	160	155	a	2	مْبَيَنِ	mbayani	mbayani					\\Swa{m-} = \\Swa{ni-}.  Compare 112a and 304c.	b-a-n		b		a	imp	
1552	160	155	c	1	هَكُمِيَا	hakumiyā	hakumiya		hakumea				-me-		v		b	li	y
3763	372	376	c	2	لَلُنِنِيْكَ	laluninı̄ka	laluninika		laloneneka				-nen-		v		b	li	
501	51	51	a	3	لَپِيْلِ	lapı̄li	lapili		la pili				-wili		num		b		
1579	163	158	b	1	نِكْوِيْلِ	nikwı̄li	nikwili		ni kweli										
1567	162	157	a	1	نِرَاءُفُ	niraufu	niraufu		ni raufu										
3268	332	326	d	2	لِلُوْمْزِدِيَا	lilūmzidiyā	lilumzidiya		lilomzidiya				z-a-d		v		a	li	
487	49	49	d	2	لِلُوْ	liluu	liluu		lilokuzidiya				z-a-d	what was it that prevented you?	v		a	li	
1574	162	157	c	2	مْفَنُ	mfanu	mfanu		mfano				-fan-		n		b		
1564	161	156	c	3	زِمِتِمُ	zimitimu	zimitimu		zimetimu				t-m-m		v		a	me	
1565	161	156	d	1	نِحِزُوْ	niḥizuu	nihizuu		ni hizo				h-		dem		b		
1584	163	158	c	3	يَوِوِ	yawiwi	yawiwi		yaweo										
1596	164	159	d	1	بِادِي	biādii	biadii												
1597	164	159	d	2	كِزِعِيْيَا	kiziʿı̄yā	kiziiya												
1592	164	159	b	3	نِثَقِيْلِ	nithaqı̄li	nithaqili		ni thaqili										
1609	165	160	d	3	زِنَدِيَ	zinadiya	zinadiya												
1607	165	160	d	1	حِرَا	ḥirā	hira												
1614	166	161	b	2	نِدِ	nidi	nidi		~										
1674	172	167	b	2	نِنْيَنِ	ninyani	ninyani		ni nyani										
1646	169	164	b	2	نِكِپُنْغُ	nikipunghu	nikipunghu		ni kipungu										
1610	166	161	a	1	حِنْرَا	ḥinrā	hinra		henda				-end-		verb		ba	ki	
1617	166	161	c	1	كَوُاُنَ	kawuuna	kawuuna		kaona				-on-		verb		ba	ku	
1623	167	162	a	1	كَوَاؤُنَ	kawauna	kawauna		kawaona				-on-		verb		ba	ka	
1540	159	154	c	1	كِيْمُ	kı̄mu	kimu		kimo				LOC		loc		ba		
1551	160	155	b	4	كِطَنِ	kiṭani	kitani		kitwani				-chwa		noun		ba		
1586	163	158	d	2	كُمْفَهَمِيْايَا	kumfahamiyāyā	kumfahamiyaya		kumfahamiya				f-h-m		verb		ar	ku	
1569	162	157	a	3	مَنِيْنُ	manı̄nu	maninu		maneno				-nen-		noun		ba		
1572	162	157	b	3	مْنُ	mnu	mnu		mno				mno		adv		ba		
1612	166	161	a	3	مُويُنِ	mūyuni	muyuni		moyoni				-oyo		noun		ba		
1580	163	158	b	2	نْرِيُ	nriyu	nriyu		ndiyo				ni		focus		ba		
1566	161	156	d	2	نِمِكْوَمْبِيَا	nimikwambiyā	nimikwambiya		nimekwambiya				-amb-		verb		ba	me	
1601	165	160	b	1	نِمِتَنْڠَ	nimitanga	nimitanga		nimetanga				-tang-		verb		ba	me	
1613	166	161	b	1	نِيْ	nii	nii		ninende				-end-		verb		ba	subj	
1548	160	155	b	1	نْيِيْ	nyii	nyii		nyee				-nywele		noun		ba		
1555	160	155	d	2	سِيُ	siyu	siyu		siyo				si		focus		ba		
1624	167	162	a	2	وَكُ	waku	waku		wako				-ako		poss		ba		
1621	166	161	d	2	وِنْدِمِ	windimi	windimi		wendeme				-andam-		verb		ba	past	
1589	164	159	a	3	اَوَالِ	awāli	awali						w-w-l		noun		ar		
1541	159	154	c	2	ػَكِ	kʲaki	chaki		chake				-ake		poss		ba		
1544	159	154	d	2	ػَنْغُ	kʲanghu	changhu		changu				-angu		noun		ba		
1563	161	156	c	2	زَكِ	zaki	zaki		zake				-ake		focus		ba		
1602	165	160	b	2	بَرَا	barā	bara						b-r-r		noun		ar		
1591	164	159	b	2	ػَكَ	kʲaka	chaka						-wak-		noun		ba		
1616	166	161	b	4	ڠَنِ	gani	gani						nini		qual		ba		
1542	159	154	c	3	هَكِزِيْدِ	hakizı̄di	hakizidi						z-a-d		verb		ar	a	
1585	163	158	d	1	هَتَا	hatā	hata						h-t-t		conj		ar		
1590	164	159	b	1	هِكِ	hiki	hiki						h-		dem		ba		
1603	165	160	b	3	هِيْلِ	hı̄li	hili						h-		dem		ba		
1575	162	157	d	1	هُوْنُ	hūnu	hunu						h-		dem		ba		
1615	166	161	b	3	جَنِبُ	janibu	janibu						j-n-b		noun		ar		
1583	163	158	c	2	جِنْسِ	jinsi	jinsi						j-n-s		qual		ar		
1543	159	154	d	1	كَمَ	kama	kama						k-m-a		conj		ar		
1608	165	160	d	2	كِوَا	kiwā	kiwa						-w-		verb		ba	ki	
1611	166	161	a	2	كِوَزَا	kiwazā	kiwaza						-waz-		verb		ba	ki	
1619	166	161	c	3	مْوِتُنِ	mwituni	mwituni						-itu		noun		ba		
1606	165	160	c	3	مَهَلِ	mahali	mahali						m-hh-l		noun		ar		
1594	164	159	c	2	مَئِ	mai	mai						maji		noun		ba		
1556	160	155	d	3	نَمْبِيَا	nambiyā	nambiya						-amb-		verb		ba	imp	
1622	166	161	d	3	نْدِيا	ndiyā	ndiya						-jia		noun		ba		
1582	163	158	c	1	نِپَ	nipa	nipa						-p-		verb		ba	imp	
1600	165	160	a	3	قَوْلِ	qawli	qauli						q-w-l		noun		ar		
1598	165	160	a	1	صَدِقِ	ṣadiqi	sadiqi						sw-d-q		verb		ar	imp	
1562	161	156	c	1	صِفَا	ṣifā	sifa						sw-f-h		noun		ar		
1588	164	159	a	2	تَنْڠُ	tangu	tangu						tangu		adv		ba		
1553	160	155	c	2	اُپَاءَانِ	upaāni	upaani						-paa		noun		ba		
1568	162	157	a	2	وَ	wa	wa						w-a		conj		ar		
1620	166	161	d	1	وَتَتُ	watatu	watatu						-tatu		num		ba		
1618	166	161	c	2	وَتُ	watu	watu						-tu		noun		ba		
1599	165	160	a	2	يَنْڠُ	yangu	yangu						-angu		poss		ba		
1550	160	155	b	3	زَا	zā	za						-a		ref		ba		
1570	162	157	b	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
1637	168	163	b	2	هَوَاكُيْيِسَا	hawākuyyisā	hawakuyyisa		hawakuyisa				-ish-		v		b	li	y
1629	167	162	c	2	نِكَوَاسَئِلِ	nikawāsaili	nikawasaili		nikawasili	*									
1688	173	168	d	1	هَيَپَسِ	hayapasi	hayapasi						-pat-		v		b	pres	y
2455	249	243	d	3	مْڠِيَا	mgiyā	mgiya		mengiya				-ingi-		v		b	me	
2716	275	269	c	2	مِتِرِ	mitiri	mitiri		mitende				-tende		n		b		
1655	170	165	a	3	سِزُوْرِ	sizūri	sizuri		si zuri										
1660	170	165	c	3	سِأَخِيْرِ	siakhı̄ri	siahiri		si ahiri										
1662	170	165	d	2	حُتُسِكِلِيْيَا	ḥutusikilı̄yā	hutusikiliya						-siki-		v		b	hu	
1678	172	167	d	2	كُتُخُفِيَا	kutukhufiyā	kutuhufiya		kutuhofiya										
1683	173	168	b	2	سِنْرُنْغُ	sinrunghu	sinrunghu		si ndugu										
1702	175	170	b	1	نِدِيْنِ	nidı̄ni	nidini		ni dini				d-y-n		n		a		
1691	174	169	a	2	نِمْوَانَ	nimwāna	nimwana		ni mwana										
1693	174	169	b	1	نِمْپُتِزَا	nimputizā	nimputiza		ni mpoteza										
1707	175	170	c	3	نِجُهَلِ	nijuhali	nijuhali		ni juhali										
1661	170	165	d	1	كَبَ	kaba	kaba		kamba				-amb-		verb		ba	ka	
1626	167	162	b	1	كَنِيْنَ	kanı̄na	kanina		kanena				-nen-		verb		ba	ka	
1670	171	166	d	2	كَنِئِلِيَا	kaniiliyā	kaniiliya		kaniyiliya				-j-		verb		ba	ka	
1652	169	164	d	2	كُپِرُكِيْيَا	kupirukı̄yā	kupirukiya		kupindukiya				-pindu-		verb		ba	ku	
1651	169	164	d	1	لِپَتِ	lipati	lipati		lipate				-pat-		verb		ba	subj	
1687	173	168	c	3	مَتَمْكُ	matamku	matamku		matamko				-tamk-		noun		ba		
1650	169	164	c	3	مُكِتِ	mukiti	mukiti		muketi				-ka-		verb		ba	subj	
1649	169	164	c	2	نْدُؤُنِ	nduuni	nduuni		ndooni				-j-		verb		ba	imp	
1708	175	170	d	1	مْبِيْ	mbii	mbii		mbee				-bele		adv		ba		
1638	168	163	c	1	نِوَائِنِ	niwaini	niwaini		niwawene				-on-		verb		ba	past	
1669	171	166	d	1	مْمُيَ	mmuya	mmuya		mmoya				-moja		num		ba		
1630	167	162	d	1	پِنْيِ	pinyi	pinyi		penye				-enye		noun		ba		
1640	168	163	d	1	سَلُامُ	saluāmu	saluamu		salamu				s-l-m		noun		ar		
1627	167	162	b	2	تَيْمُهُلِ	taymuhuli	taymuhuli		tayimuhuli				m-h-l		verb		ar	ta	
1698	174	169	d	2	تُيُوِ	tuyuwi	tuyuwi		tuyue				-ju-		verb		ba	subj	
1695	174	169	c	1	تْوَامْبِيِ	twāmbiyi	twambiyi		twambie				-amb-		verb		ba	imp	
1676	172	167	c	2	وَتُتَكِيَنِ	watutakiyani	watutakiyani		watutakia-ni				-tak-		verb		ba	a	
1690	174	169	a	1	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
1703	175	170	b	2	يَكِ	yaki	yaki		yake				-ake		poss		ba		
1681	173	168	a	3	يَكُ	yaku	yaku		yako				-ako		poss		ba		
1654	170	165	a	2	يُوَا	yuwā	yuwa		yua				-ua		noun		ba		
1653	170	165	a	1	نَهِلِ	nahili	nahili		na hili				h-		poss		b		
1659	170	165	c	2	زِوُ	ziwu	ziwu		zeo				-eo		noun		ba		
1692	174	169	a	3	اَدَامُ	adāmu	adamu						a-d-m		noun		ar		
1671	172	167	a	1	اَكِيَ	akiya	akiya						-j-		verb		ba	ki	
1686	173	168	c	2	حَيُ	ḥayu	hayu		hayo				h-		dem		ba		
1648	169	164	c	1	حِلَ	ḥila	hila		hela				hela		conj		ba		
1706	175	170	c	2	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
1675	172	167	c	1	اَوْ	aw	au						2-w		conj		ar		
1636	168	163	b	1	هَتَ	hata	hata						h-t-t		conj		ar		
1677	172	167	d	1	خَطَرِ	khaṭari	hatari						kh-tw-r		noun		ar		
1680	173	168	a	2	حَتُشِكِ	ḥatushiki	hatushiki						-shik-		verb		ba	a	
1731	178	173	a	2	هُمْجِبُ	humjibu	humjibu						j-a-b		verb		ar	hu	
1635	168	163	a	3	كَبِسَ	kabisa	kabisa						kabisa		adv		ba		
1664	171	166	a	2	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
1685	173	168	c	1	كَمَ	kama	kama						k-m-a		conj		ar		
1642	169	164	a	1	كَمبَ	kamba	kamba						-amb-		verb		ba	ka	
1634	168	163	a	2	كِڤُلِ	kivuli	kivuli						-vuli		noun		ba		
1705	175	170	c	1	كِوَا	kiwā	kiwa						-w-		verb		ba	ki	
1656	170	165	b	1	كُلَنْدَمَ	kulandama	kulandama						-andam-		verb		ba	ku	
1632	167	162	d	3	كُنَمْبِيَا	kunambiyā	kunambiya						-amb-		verb		ba	ku	
1689	173	168	d	2	كُتْوَامْبِيَا	kutwāmbiyā	kutwambiya						-amb-		verb		ba	ku	
1697	174	169	d	1	كْوَانْدَ	kwānda	kwanda						-anz-		verb		ba	ku	
1628	167	162	c	1	مَرَا	marā	mara						m-r-r		noun		ar		
1644	169	164	a	3	مَتِتِ	matiti	matiti						-titi		noun		ba		
1625	167	162	a	3	مْبَلِ	mbali	mbali						-bali		num		ba		
1666	171	166	b	2	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
1701	175	170	a	2	قَوْلِ	qawli	qauli						q-w-l		noun		ar		
1704	175	170	b	3	رَسُوْلِ	rasūli	rasuli						r-s-l		title		ar		
1679	173	168	a	1	سِسِ	sisi	sisi						sisi		pron		ba		
1696	174	169	c	2	تُكُفَهَمُ	tukufahamu	tukufahamu						f-h-m		verb		ar	subj	
1668	171	166	c	2	وَاكَسِمَمَ	wākasimama	wakasimama						-simam-		verb		ba	ka	
1639	168	163	c	2	وَاكِتُسَا	wākitusā	wakitusa						-tus-		verb		ba	ki	
1658	170	165	c	1	وَلَا	walā	wala						wala		conj		ba		
1667	171	166	c	1	وَاوِلِ	wāwili	wawili						-wili		num		ba		
1633	168	163	a	1	يَانَ	yāna	yana						jana		adv		ba		
1710	175	170	d	3	نِپُكِيَا	nipukiyā	nipukiya		nipokeya										
1733	178	173	b	2	بُنُ	bunu	bunu		binu	*									
1817	185	180	d	3	هُپُتِيَا	huputiyā	huputiya		hupoteya				-pote-		v		b	hu	
1773	182	177	a	1	وَنِوُزَا	waniwuzā	waniwuza		waniuza				-uz-		v		b	a	
1741	179	174	a	2	نِاَبُوْ	niabuu	niabuu		ni Abu										
860	88	86	d	2	مُكَنِتَيْيَا	mukanitayyā	mukanitayya		mukanitayiya			When he realises that the congregation is pretending and that Ali is not pursuing him, the devil claims that he is not afraid of Ali, and that there is no point in using Ali's name to frighten him.	-taj-		v		b	ka	
1752	180	175	a	2	زَوْجِ	zawji	zauji												
1717	176	171	c	2	وِوِ	wiwi	wiwi		wewe				wewe		pron		b		
1721	177	172	a	1	وَكِيَ	wakiya	wakiya						-j-		v		b	ki	
1739	178	173	d	3	هُنَغَلِيَا	hunaghaliyā	hunaghaliya		hunangaliya				-anga-		v		b	hu	
1743	179	174	b	1	نَحُيُ	naḥuyu	nahuyu		na huyu				h-		dem		b		
1750	179	174	d	2	نِكَلِسِكِيْيَا	nikalisikı̄yā	nikalisikiya						-siki-		v		b	ka	
1816	185	180	d	2	نْيِغِ	nyighi	nyighi		nyingi				-ingi		qual		b		
1735	178	173	c	1	مَمَ	mama	mama						mama		noun		ba		
1777	182	177	b	3	غَيْبُ	ghaybu	ghaybu		ghaibu										
1783	183	178	a	1	هُتَڠَا	hutagā	hutaga		hutanga										
1769	181	176	c	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1766	181	176	b	3	كَفَصِيْرِا	kafaṣı̄riā	kafasiria	kafaṣı̄rī	kafasiri				f-s-r		verb		ar	ka	
1725	177	172	c	1	كَبَ	kaba	kaba		kamba				-amb-		verb		ba	ka	
1711	176	171	a	1	كَسِكِيَ	kasikiya	kasikiya		kasikia				-siki-		verb		ba	ka	
1737	178	173	d	1	كْوَا	kwā	kwa						-a		ref		ba		
1760	180	175	d	2	لَكُ	laku	laku		lako				-ako		poss		ba		
1771	181	176	d	2	مَوْلَنَا	mawlanā	maulana		Maulana				a-a-l		title		ar		
1788	183	178	c	1	بُزِ	buzi	buzi		mbuzi				-buzi		noun		ba		
1761	180	175	d	3	نَمْبِيَ	nambiya	nambiya						-amb-		verb		ba	imp	
1746	179	174	c	1	نَوِ	nawi	nawi		nawe				na		conj		ba		
1716	176	171	c	1	اُنْدُ	undu	undu		ndoo	*			-j-		verb		ba	imp	
1781	182	177	d	1	نِتَكَلُ	nitakalu	nitakalu		nitakalo				-tak-		verb		ba	a	
1793	183	178	d	3	نْيُتَ	nyuta	nyuta		nyota				nyota		noun		ba		
1815	185	180	d	1	رُوْحُ	rūḥu	ruhu		roho				r-w-hh		noun		ar		
1787	183	178	b	2	سِيَوْنِ	siyawni	siyauni		siyaoni				-on-		verb		ba	me	
1734	178	173	b	3	خَطَبُ	khaṭabu	hatabu		Talibu	*			tw-l-b		persn		ar		
1723	177	172	b	1	اُسُوْ	usuu	usuu		uso				-so		noun		ba		
1728	177	172	d	2	وَاكِ	wāki	waki		wake				-ake		poss		ba		
1736	178	173	c	2	وَمِتَعَجَبُ	wamitaʿajabu	wamitaajabu		wametaajabu				3-j-b		verb		ar	me	
1775	182	177	b	1	وِنْرَاوُ	winrāwu	winrawu		wendao				-end-		verb		ba	a	
1738	178	173	d	2	وُتِ	wuti	wuti		wote				-ote		qual		ba		
1709	175	170	d	2	زَانْغُ	zānghu	zanghu		zangu				-angu		poss		ba		
1751	180	175	a	1	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
1715	176	171	b	3	بَكَرَِا	bakariā	bakaria	bakarī	Bakari				b-k-r		persn		ar		
1778	182	177	c	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
1785	183	178	a	3	بَرَانِ	barāni	barani						b-r-r		noun		ar		
1712	176	171	a	2	حُفَصِيْرِ	ḥufaṣı̄ri	hufasiri						f-s-r		verb		ar	hu	
1713	176	171	b	1	حُمْوِتَ	ḥumwita	humwita						-it-		verb		ba	hu	
1794	183	178	d	4	حُلِيَا	ḥuliyā	huliya						-li-		verb		ba	hu	
1740	179	174	a	1	هُيُ	huyu	huyu						h-		dem		ba		
1749	179	174	d	1	اِنَ	ina	ina						-ina		noun		ba		
1780	182	177	c	3	كَوَاجِبُ	kawājibu	kawajibu						j-a-b		verb		ar	ka	
1782	182	177	d	2	كَوَامْبِيَا	kawāmbiyā	kawambiya						-amb-		verb		ba	ka	
1792	183	178	d	2	كْوَ	kwa	kwa						-a		ref		ba		
1753	180	175	b	1	مِمِ	mimi	mimi						mimi		pron		ba		
1784	183	178	a	2	مَاءِ	mai	mai						maji		noun		ba		
1767	181	176	c	1	مِمِ	mimi	mimi						mimi		pron		ba		
1779	182	177	c	2	مَمَا	mamā	mama						mimi		pron		ba		
1729	177	172	d	3	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
1756	180	175	c	1	نَمِ	nami	nami						na		conj		ba		
1764	181	176	b	1	نَمِ	nami	nami						na		conj		ba		
1758	180	175	c	3	نَتَرَاجِ	natarāji	nataraji						r-j-a		verb		ar	a	
1757	180	175	c	2	سَسَا	sasā	sasa						sasa		adv		ba		
1791	183	178	d	1	سَسَا	sasā	sasa						sasa		adv		ba		
1774	182	177	a	2	تَرَاتِيْبُ	tarātı̄bu	taratibu						r-t-b		noun		ar		
1770	181	176	d	1	وَ	wa	wa						w-a		conj		ar		
1727	177	172	d	1	وَاجِهِ	wājihi	wajihi						w-j-h		noun		ar		
1720	176	171	d	2	وَكَيَا	wakayā	wakaya						-j-		verb		ba	ka	
1833	187	182	c	1	وَلَا	walā	wala						wala		conj		ba		
1776	182	177	b	2	وَپِ	wapi	wapi						-pi		int		ba		
1790	183	178	c	3	يَانِ	yāni	yani						-ani		noun		ba		
1724	177	172	b	2	وَاكِنِتِيْزَامَ	wākinitı̄zāma	wakinitizama						-tazam-		v		b	ki	
1759	180	175	d	1	نَاءِنَ	naina	naina		na ina				-ina		n		b		
1718	176	171	c	3	نَزُبِيْرِ	nazubı̄ri	nazubiri		na Zuberi				z-b-r		persn		a		
1874	192	186	d	2	وَيُوَا	wayuwā	wayuwa		wa yua				-ju-		v		b	a	
1835	187	182	d	1	نِسِسِ	nisisi	nisisi		ni sisi										
1810	185	180	b	3	سِمْبَلِ	simbali	simbali		si mbali										
1836	187	182	d	2	تْوَلُكْوَامْبِيَا	twalukwāmbiyā	twalukwambiya		twalokwambiya										
1798	184	179	b	2	هَمُكُيَكُتَ	hamukuyakuta	hamukuyakuta						-kut-		v		b	li	y
1820	186	181	a	3	نِمَتَمُ	nimatamu	nimatamu		ni matamu				-tamu		adj		b		
1854	189	184	c	3	كَتَزَامَ	katazāma	katazama						-tazam-		v		a	ka	
1828	186	181	d	2	كُكِكُرُبِيَا	kukikurubiyā	kukikurubiya												
1847	189	184	a	1	كِكُرُبِيَ	kikurubiya	kikurubiya		kikurubia										
1726	177	172	c	2	مُمِفَهَمَ	mumifahama	mumifahama		mumefahama				f-h-m		v		a	me	
1827	186	181	d	1	هُػَ	hukʲa	hucha						-ch-		v		b	hu	
1864	190	185	d	1	نِكَرُوْدِ	nikarūdi	nikarudi						r-d-d		v		a	ka	
1863	190	185	c	2	سِكِفِنِكِ	sikifiniki	sikifiniki		sikifinike										
1935	199	193	a	3	اُلِيْزَا	ulı̄zā	uliza		~										
1875	192	186	d	3	كُوِنِيَا	kuwiniyā	kuwiniya		kueneya										
1839	188	183	b	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
1818	186	181	a	1	حَيُ	ḥayu	hayu		hayo				h-		dem		ba		
1795	184	179	a	1	هُكُوْ	hukuu	hukuu		huku				h-		dem		ba		
1856	189	184	d	2	حُنَغَلِيْيَا	ḥunaghalı̄yā	hunaghaliya		hunangaliya				-anga-		verb		ba	hu	
1857	190	185	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
1841	188	183	b	3	كَفُوَاةَ	kafuwāẗa	kafuwata		kafuata				-fuat-		verb		ba	ka	
1808	185	180	b	1	كَبَ	kaba	kaba		kamba				-amb-		verb		ba	ka	
1872	192	186	c	2	كِوَاپِكَ	kiwāpika	kiwapika		kiwapeka				-pelek-		verb		ba	ki	
1867	192	186	a	2	كُكِپَبَوُكَ	kukipabawuka	kukipabawuka		kukipambauka				-pambauk-		verb		ba	ki	
1831	187	182	b	1	كُكُپِكَ	kukupika	kukupika		kukupeka				-pelek-		verb		ba	ku	
1811	185	180	c	1	لَكِيْ	lakii	lakii		lakini				l-k-n		conj		ar		
1849	189	184	b	1	لِپُوْ	lipuu	lipuu		lipo				LOC		loc		ba		
1821	186	181	b	1	مْفَنُ	mfanu	mfanu		mfano				-fan-		noun		ba		
1873	192	186	d	1	مْوِدَا	mwidā	mwida		muda	*			m-d-d		noun		ar		
1804	184	179	d	2	مْوَايُوَا	mwāyuwā	mwayuwa		mwayua				-ju-		verb		ba	a	
1900	195	189	c	2	نِكَلِسُكُمَ	nikalisukuma	nikalisukuma						-sukum-		verb		ba	ka	
1802	184	179	c	4	نْيُتَ	nyuta	nyuta		nyota				nyota		noun		ba		
1807	185	180	a	2	قَوْلِيْ	qawlii	qaulii		qauli				q-w-l		noun		ar		
1825	186	181	c	2	سِسِا	sisiā	sisia	sisī	sisi				sisi		pron		ba		
1832	187	182	b	2	تُطَيَرِا	tuṭayariā	tutayaria	tuṭayarī	tu tayari				tw-y-r		adj		ar		
1830	187	182	a	2	اُمِخِتَارِ	umikhitāri	umihitari		umehitari				kh-a-r		verb		ar	me	
1837	188	183	a	1	وَاكَنِوُنْيَ	wākaniwunya	wakaniwunya		wakanionya				-on-		verb		ba	ka	
1800	184	179	c	2	وَنْغُ	wanghu	wanghu		wangu				-angu		poss		ba		
1823	186	181	b	3	زَمْزَامُ	zamzāmu	zamzamu		Zamuzamu				z-m-z-m		placen		ar		
1858	190	185	a	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
1860	190	185	b	2	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn		ar		
1850	189	184	b	2	بَوُ	bawu	bawu		bao				bao		noun		ba		
1876	193	187	a	1	اَوَلِ	awali	awali						w-w-l		noun		ar		
1826	186	181	c	3	فَهَمُ	fahamu	fahamu						f-h-m		verb		ar	imp	
1869	192	186	b	2	فُرَحَا	furaḥā	furaha						f-r-hh		noun		ar		
1866	192	186	a	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
1803	184	179	d	1	كَمَ	kama	kama						k-m-a		conj		ar		
1851	189	184	b	3	كَسُكُمَ	kasukuma	kasukuma						-sukum-		verb		ba	ka	
1813	185	180	c	3	كِنَ	kina	kina						-na		have		ba		
1809	185	180	b	2	كِسِمَ	kisima	kisima						-sima		noun		ba		
1853	189	184	c	2	كِوَاڤُ	kiwāvu	kiwavu						-avu		noun		ba		
1865	190	185	d	2	كُكْوَمْبِيَا	kukwambiyā	kukwambiya						-amb-		verb		ba	ku	
1852	189	184	c	1	كْوَا	kwā	kwa						-a		ref		ba		
1842	188	183	c	1	كْوَا	kwā	kwa						-a		ref		ba		
1824	186	181	c	1	لَكِنِ	lakini	lakini						l-k-n		conj		ar		
1799	184	179	c	1	مْبُزِ	mbuzi	mbuzi						-buzi		noun		ba		
1843	188	183	c	2	مْوِتُنِ	mwituni	mwituni						-itu		noun		ba		
1805	184	179	d	3	نَمْبِيَا	nambiyā	nambiya						-amb-		verb		ba	imp	
1840	188	183	b	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
1812	185	180	c	2	نِ	ni	ni		~				ni		exist		ba		
1868	192	186	b	1	نِنَا	ninā	nina						-na		have		ba		
1814	185	180	c	4	ثَقِيْلِ	thaqı̄li	thaqili						th-q-l		noun		ar		
1834	187	182	c	2	اُسِتُفَصِيْرِ	usitufaṣı̄ri	usitufasiri						f-s-r		verb		ar	subj	
1822	186	181	b	2	وَ	wa	wa						w-a		conj		ar		
1806	185	180	a	1	وَاكَنِجِبُ	wākanijibu	wakanijibu						j-a-b		verb		ar	ka	
1844	188	183	c	3	واكَپِةَ	wākapiẗa	wakapita						-pit-		verb		ba	ka	
1801	184	179	c	3	وَنَا	wanā	wana						-na		have		ba		
1877	193	187	a	2	يَا	yā	ya						y-a		excl		ar		
1926	198	192	b	1	كَپِوْجَا	kapiwjā	kapiuja		kapijwa	*			-pig-		v		b	ka	
1901	195	189	d	1	نِوُنِ	niwuni	niwuni		nione										
1886	193	187	d	2	نَكُكِمْبِيَا	nakukimbiyā	nakukimbiya		na kukimbiya										
1940	199	193	d	1	يَپِتِ	yapiti	yapiti		ya pete				-pet-		n		b		
1919	197	191	c	1	كَوُلِزَا	kawulizā	kawuliza		kauliza				-uz-		v		b	ka	
1907	196	190	b	2	سِيَايَتِكَ	siyāyatika	siyayatika		siyayateka										
1897	195	189	b	1	كِفِنِشِيْوَ	kifinishı̄wa	kifinishiwa												
1911	196	190	d	1	يَغَضَبُ	yaghaḍabu	yaghadhabu		ya ghadhabu				gh-dh-b		n		a		
1923	197	191	d	2	كَمْڤُلِيَا	kamvuliyā	kamvuliya												
1946	200	194	b	2	زَنْيُبَا	zanyubā	zanyuba		za nyumba				-umb-		n		b		
1885	193	187	d	1	هُتِيْزَا	hutı̄zā	hutiza		huteza				-tez-		v		b	hu	
1942	200	194	a	1	مِنِكِيْزَا	minikı̄zā	minikiza		menekeza										
1941	199	193	d	2	كُنِتْوَاَلِيْيَا	kunitwaalı̄yā	kunitwaaliya		kunitwaliya				-twa-		v		b	ku	
1893	194	188	d	1	نِمِمِ	nimimi	nimimi		ni mimi				mimi		pron		b		
1945	200	194	b	1	نَصِيْفَا	naṣı̄fā	nasifa		na sifa										
1916	197	191	b	1	كَمْتَيَا	kamtayā	kamtaya						-taj-		v		b	ka	
1956	201	195	b	1	نِزَزِوِوُ	nizaziwiwu	nizaziwiwu		nizazeweo										
1892	194	188	c	2	هُوْفَلِيَنِ	hūfaliyani	hufaliyani		hufalia-ni				-fa-		verb		ba	hu	
1929	198	192	c	2	كَئِتَ	kaita	kaita		kaeta				-let-		verb		ba	ka	
1937	199	193	b	2	كَيْزَا	kayzā	kayza		kaiza				-iz-		verb		ba	ka	
1898	195	189	b	2	كِسِمَ	kisima	kisima						-sima		noun		ba		
1882	193	187	b	3	كْوَاسُةَ	kwāsuẗa	kwasuta		kawasuta	*			-sut-		verb		ba	ka	
1894	194	188	d	2	كُوَاتِكِيْيَا	kuwātikı̄yā	kuwatikiya		kuwatekeya				-chek-		verb		ba	ku	
1891	194	188	c	1	لَقِينِ	laqı̄ni	laqini		lakini				l-k-n		conj		ar		
1952	200	194	d	2	لَنْغُ	langhu	langhu		langu				-angu		poss		ba		
1939	199	193	c	2	مِوُجِيْزَا	miwujı̄zā	miwujiza		miujiza				w-j-z		noun		ar		
1904	196	190	a	1	مْكُوْنُ	mkūnu	mkunu		mkono				-kono		noun		ba		
1915	197	191	a	3	مْغُ	mghu	mghu		Mngu				-ngu		godn		ba		
1883	193	187	c	1	نَوُنَ	nawuna	nawuna		naona				-on-		verb		ba	a	
1954	201	195	a	1	نِكَمْوَمْبِيَا	nikamwambiyā	nikamwambiya		nikamwambia				-amb-		verb		ba	ka	
1984	204	198	a	2	نِوُمْبِيَ	niwumbiya	niwumbiya		niombea				-omb-		verb		ba	imp	
1936	199	193	b	1	نِسِمْوَمْبِيِ	nisimwambiyi	nisimwambiyi		nisimwambie				-amb-		verb		ba	past	
1950	200	194	c	3	تَمْكُ	tamku	tamku		tamko				-tamk-		noun		ba		
1983	204	198	a	1	تِنَا	tinā	tina		tena				tena		conj		ba		
1920	197	191	c	2	پِتِ	piti	piti		pete				-pet-		noun		ba		
1895	195	189	a	1	وَاكِرَا	wākirā	wakira		wakenda				-end-		verb		ba	ka	
1884	193	187	c	2	وَمِنِيْوَاتَ	waminı̄wāta	waminiwata		wameniwata				-ach-		verb		ba	me	
1947	200	194	b	3	يَكُ	yaku	yaku		yako				-ako		poss		ba		
1921	197	191	c	3	يَنْغُ	yanghu	yanghu		yangu				-angu		poss		ba		
1938	199	193	c	1	اَكَنِپَ	akanipa	akanipa						-p-		verb		ba	ka	
1957	201	195	b	2	حَقِيْكَ	ḥaqı̄ka	haqika		hakika				hh-q-q		adv		ar		
1880	193	187	b	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
1905	196	190	a	2	اَكَنِشِكَ	akanishika	akanishika						-shik-		verb		ba	ka	
1903	195	189	d	3	اَكِيَا	akiyā	akiya						-j-		verb		ba	ki	
1922	197	191	d	1	ػَنْدَانِ	kʲandāni	chandani						-anda		noun		ba		
1931	198	192	d	1	اِنَ	ina	ina						-ina		noun		ba		
1933	199	193	a	1	اِنَ	ina	ina						-ina		noun		ba		
1930	198	192	c	3	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
1912	196	190	d	2	كَمْوَمْبِيَا	kamwambiyā	kamwambiya						-amb-		verb		ba	ka	
1953	200	194	d	3	كَمْوَامْبِيَا	kamwāmbiyā	kamwambiya						-amb-		verb		ba	ka	
1910	196	190	c	3	كَتَمْكَ	katamka	katamka						-tamk-		verb		ba	ka	
1887	194	188	a	1	كَوَمْبِيَا	kawambiyā	kawambiya		kawambia				-amb-		verb		ba	ka	
1890	194	188	b	2	كِسِمَانِ	kisimāni	kisimani						-sima		noun		ba		
1914	197	191	a	2	كْوَا	kwā	kwa						-a		ref		ba		
1881	193	187	b	2	مْبُزِ	mbuzi	mbuzi						-buzi		noun		ba		
1906	196	190	b	1	مَئِ	mai	mai						maji		noun		ba		
1908	196	190	c	1	مَمَ	mama	mama						mimi		pron		ba		
1902	195	189	d	2	مْتُ	mtu	mtu						-tu		noun		ba		
1878	193	187	a	3	سَعَ	saʿa	saa						s-a-3		noun		ar		
1917	197	191	b	2	نَا	nā	na						ni		exist		ba		
1879	193	187	a	4	سِةَ	siẗa	sita						s-t-t		num		ar		
1896	195	189	a	2	وَكَسِمَامَ	wakasimāma	wakasimama						-simam-		verb		ba	ka	
1925	198	192	a	2	اَكَيْتَزَامَ	akaytazāma	akaytazama						-tazam-		v		b	ka	
1928	198	192	c	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
1934	199	193	a	2	اَلِيْپُ	alı̄pu	alipu		alipouliza				-uz-		v		b	li	
1913	197	191	a	1	نِكَحِمِدِ	nikaḥimidi	nikahimidi						hh-m-d		v		a	n	
1927	198	192	b	2	نَحَلِمَمَ	naḥalimama	nahalimama		na halimama				halimama		noun		ba		
1958	201	195	c	1	نِتِسِيَا	nitisiyā	nitisiya		ni tisia										
1998	205	199	c	1	كَتَرَادَدِ	katarādadi	kataradadi						r-d-d		v		a	ka	
1963	201	195	d	3	نِتِيْيَا	nitı̄yā	nitiya												
1796	184	179	a	2	مُمِزُكُپِةَ	mumizukupiẗa	mumizukupita		mumezokupita				-pit-		v		b	me	
1932	198	192	d	2	نَلِيْتَرَاجِيْيَا	nalı̄tarājı̄yā	nalitarajiya						r-j-a		v		a	li	
3451	351	345	b	1	نَمَوْلَنَا	namawlanā	namaulana		na Maulana				a-a-l		title		a		
1959	201	195	c	2	زَسُوْ	zasuu	zasuu		zaso				-li		exist		b		y
2034	209	203	a	2	هُوِ	huwi	huwi		huwi				-w-		v		b	pres	y
1989	204	198	c	1	نَمِكِسَا	namikisā	namikisa		nami kisa										
1977	203	197	b	2	نِسَفَارِ	nisafāri	nisafari												
2041	209	203	c	3	نَفِكِيْرَا	nafikı̄rā	nafikira		na fikira				f-k-r		n		a		
1981	203	197	d	1	نَرَضِ	naraḍi	naradhi		na radhi				r-a-zw		n		a		
2013	207	201	a	2	پَتَ	pata	pata		~										
2031	208	202	d	1	حِفُظِنِ	ḥifuẓini	hifudhini												
2022	208	202	a	2	اللّٰهُ	llähu	llahu		Allahu				l-a-h		noun		ar		
1988	204	198	b	3	بَبَنْغُ	babanghu	babanghu		babangu				baba		noun		ba		
2033	209	203	a	1	اِنِرَا	inirā	inira		enenda				-end-		verb		ba	imp	
1975	203	197	a	3	حِرِ	ḥiri	hiri		heri				kh-y-r		noun		ar		
1980	203	197	c	3	جَبَارِ	jabāri	jabari		Jabari				j-b-r		godn		ar		
2004	206	200	a	2	كَيَنْغُشَا	kayanghushā	kayanghusha		kayangusha				-angu-		verb		ba	ka	
2002	205	199	d	3	كَيْتِيَا	kaytiyā	kaytiya		kayitiya				-ti-		verb		ba	ka	
2003	206	200	a	1	كَيْتُرَا	kayturā	kaytura		kayitunda				-tund-		verb		ba	ka	
1993	204	198	d	2	كُوَانْغَلِيَا	kuwānghaliyā	kuwanghaliya		kuangaliya				-anga-		verb		ba	ku	
2001	205	199	d	2	مَكُنْرِّ	makunrri	makunrri		makonde				-konde		noun		ba		
1996	205	199	b	1	مَمَكِ	mamaki	mamaki		mamake				mama		noun		ba		
1985	204	198	a	3	مْغُ	mghu	mghu		Mngu				-ngu		godn		ba		
2023	208	202	a	3	مُوْلَ	mūla	mula		Mola				a-a-l		godn		ar		
2026	208	202	b	2	مْوَنَڠُ	mwanagu	mwanagu		mwanangu				-ana		noun		ba		
2039	209	203	c	1	نَوِ	nawi	nawi		nawe				na		conj		ba		
2008	206	200	c	2	غُوْ	ghuu	ghuu		nguo				nguo		noun		ba		
1967	202	196	b	1	نِمِكُپَ	nimikupa	nimikupa		nimekupa				-p-		verb		ba	me	
1971	202	196	d	1	نِمِرُدِ	nimirudi	nimirudi		nimerudi				r-d-d		verb		ar	me	
2025	208	202	b	1	نِنُوْصُرِيَ	ninūṣuriya	ninusuriya		ninusuria				n-sw-r		verb		ar	imp	
1978	203	197	c	1	نِوُمْبِيَ	niwumbiya	niwumbiya		niombea				-omb-		verb		ba	imp	
2036	209	203	b	1	نِرَضِ	niraḍi	niradhi		ni radhi				r-a-zw		noun		ar		
1995	205	199	a	2	قَوُلِ	qawuli	qawuli		qauli				q-w-l		noun		ar		
1962	201	195	d	2	تَارِخِ	tārikhi	tarihi		tarehe				a-r-kh		noun		ar		
1969	202	196	c	1	تِنَا	tinā	tina		tena				tena		conj		ba		
2068	212	206	a	2	اُوِ	uwi	uwi		uwe				-w-		verb		ba	subj	
1991	204	198	c	3	وَنْغُ	wanghu	wanghu		wangu				-angu		poss		ba		
2029	208	202	c	3	وِنْدَانِ	windāni	windani		wendani				-end-		noun		ba		
2006	206	200	b	2	اَكِجِيْرُشَا	akijı̄rushā	akijirusha						-ruk-		v		b	ki	
1965	202	196	a	2	زَانْغُ	zānghu	zanghu		zangu				-angu		poss		ba		
2018	207	201	c	2	اَكَتَكَلَمُ	akatakalamu	akatakalamu						k-l-m		verb		ar	ka	
2037	209	203	b	2	اَلِفُ	alifu	alifu						2-l-f		num		ar		
2012	207	201	a	1	أَلِپُ	alipu	alipu		alipopata				-pat-		verb		ba	li	
2019	207	201	d	1	مْغُ	mghu	mghu		Mngu				-ngu		godn		ba		
1994	205	199	a	1	اَكِسِكِيَ	akisikiya	akisikiya		akisikia				-siki-		verb		ba	ki	
1999	205	199	c	2	عَقِيْلِ	ʿaqı̄li	aqili						3-q-l		noun		ar		
1997	205	199	b	2	اَسِحِمِلِ	asiḥimili	asihimili						hh-m-l		verb		ar	past	
2014	207	201	a	3	فَهَمُ	fahamu	fahamu						f-h-m		verb		ar	imp	
1976	203	197	b	1	اَصُبُحِ	aṣubuḥi	asubuhi						sw-b-hh		noun		ar		
2007	206	200	c	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
1964	202	196	a	1	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
2009	206	200	c	3	كَمْڤِيْشَا	kamvı̄shā	kamvisha						-va-		verb		ba	ka	
1972	202	196	d	2	كُمْوَمْبِيَا	kumwambiyā	kumwambiya						-amb-		verb		ba	ku	
2000	205	199	d	1	كْوَا	kwā	kwa						-a		ref		ba		
2069	212	206	a	3	لِيْسَانِ	lı̄sāni	lisani						h-s-n		noun		ar		
2035	209	203	a	3	مَظَرَا	maẓarā	madhara						m-dh-r		noun		ar		
2038	209	203	b	3	مَرَا	marā	mara						m-r-r		noun		ar		
2032	208	202	d	2	نِتِلِيَا	nitiliyā	nitiliya						-ti-		verb		ba	imp	
1987	204	198	b	2	نَا	nā	na						ni		exist		ba		
1960	201	195	c	3	شَكَ	shaka	shaka						sh-k-k		noun		ar		
1992	204	198	d	1	تَكُيَ	takuya	takuya						-j-		verb		ba	ta	
1966	202	196	a	3	تِمَمُ	timamu	timamu						t-m-m		noun		ar		
2005	206	200	b	1	تِيَتِ	tiyati	tiyati						-chi		adv		ba		
2028	208	202	c	2	وَ	wa	wa						w-a		conj		ar		
2021	208	202	a	1	يَا	yā	ya		Ya				y-a		excl		ar		
2017	207	201	c	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
1990	204	198	c	2	مُيِ	muyi	muyi						-ji		n		b		
2043	209	203	d	2	نِمِكُرِضِيْيَا	nimikuriḍı̄yā	nimikuridhiya		nimekuridhiya										
2046	210	204	a	3	نِوُضِ	niwuḍi	niwudhi		~										
2047	210	204	b	1	سِتُتُكُوَا	situtukuwā	situtukuwa		sitotukua										
2085	213	207	c	2	اللّٰه	lläh	llah		~										
2052	210	204	d	1	نَكْوَا	nakwā	nakwa		na kwa										
2087	213	207	c	4	اللّٰه	lläh	llah		~										
2088	213	207	c	5	جِتِهَدِ	jitihadi	jitihadi						j-h-d		v		a	imp	
2062	211	205	c	1	نَأَتَكَلُ	naatakalu	naatakalu		na atakalobaini				b-a-n		v		b	ta	
2103	214	208	d	2	نَكْوَڠُكِيَا	nakwagukiyā	nakwagukiya		na kwangukiya				-angu-		v		b	ku	
2063	211	205	c	2	بَئِيْنِ	baı̄ni	baini		~										
2065	211	205	d	2	لِوِ	liwi	liwi		kiwe										
2067	212	206	a	1	اُكِسَ	ukisa	ukisa							When you speak					
2076	212	206	d	1	وَدَامِ	wadāmi	wadami		wandame					and copy his example.					
3829	379	383	d	1	نَمَوُلَنَا	namawulanā	namawulana		na Maulana				a-a-l		title		a		
2073	212	206	c	1	فُوَاتَ	fuwāta	fuwata		fuata				-fuat-	imitate the Trustworthy Prophet	v		b	imp	
2101	214	208	c	3	نَعَدَابُ	naʿadābu	naadabu		na adabu										
2071	212	206	b	2	رُزَكُ	ruzaku	ruzaku		nduzako				-dugu		n		b		
2102	214	208	d	1	اُطِيْعِ	uṭı̄ʿi	utii		utii										
2105	215	209	a	2	مَمَ	mama	mama						mama		noun		ba		
2113	215	209	d	2	اُسِيَڠِيْيَا	usiyagı̄yā	usiyagiya		usiyangiya			\\Swa{kabla ya usiku kuja}.							
2115	216	210	a	2	تِيْتِ	tı̄ti	titi					= \\Swa{mjomba}, \\E{mother's brother}.  Among the Swahili, maternal uncles are very important.  An individual can inherit from a maternal uncle, and this extends even to inheriting noble status.  This is a significant difference compared to Arabic culture, where the maternal side of the family is much less important.  If an individual has half-brothers, those on his mother's side are likely to be closer to him in relationship terms than those on his father's side.  							
2109	215	209	c	1	اِنْرَا	inrā	inra		enda				-end-	go and make your farewells	verb		ba	imp	
2048	210	204	b	2	غَيْضِيْ	ghayḍii	ghaydhii		ghaidhi				gh-y-dw		noun		ar		
2094	214	208	a	3	حَبِبُ	ḥabibu	habibu		Habibu				hh-b-b		title		ar		
2084	213	207	c	1	هَا	hā	ha		hala				l-a-h		conj		ar		
2108	215	209	b	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
2110	215	209	c	2	كَوَاڠِا	kawāgiā	kawagia	kawāgī	kawage				-ag-		verb		ba	ka	
2095	214	208	b	1	كِتِيْ	kitii	kitii		keti				-ka-		verb		ba	imp	
2099	214	208	c	1	كْوَاكِا	kwākiā	kwakia	kwākī	kwake				-ake		poss		ba		
2064	211	205	d	1	كْوَاكُ	kwāku	kwaku		kwako				-ako		poss		ba		
2042	209	203	d	1	مُوْيُ	mūyu	muyu		moyo				-oyo		noun		ba		
2080	213	207	a	2	مُحَمَّدِا	muḥammadiā	muhammadia	muḥammadī	Muhamadi				m-hh-m-d		persn		ar		
2051	210	204	c	3	رَاضِ	rāḍi	radhi						r-a-zw		noun		ar		
2096	214	208	b	2	نَيِ	nayi	nayi		naye				na		conj		ba		
2089	213	207	d	1	ڠَاءَ	gaa	gaa		ngaa				ngaa		conj		ba		
2057	211	205	a	3	نْيَّوُنِ	nı̄yawuni	niyawuni	nyyawuni	nyaoni				-ayo		noun		ba		
2074	212	206	c	2	تُمْوَا	tumwā	tumwa		Tumwa				-tum-		title		ba		
2090	213	207	d	2	اُپَتِ	upati	upati		upate				-pat-		verb		ba	subj	
2056	211	205	a	2	اُوِ	uwi	uwi		uwe				-w-		verb		ba	subj	
2045	210	204	a	2	اُيَپُ	uyapu	uyapu		uyaponiudhi				3-zw-zw		verb		ar	japo	
2120	216	210	b	4	وَاكُ	wāku	waku		wako				-ako		poss		ba		
2077	212	206	d	2	يَكِيْ	yakii	yakii		yake				-ake		poss		ba		
2116	216	210	a	3	يَكُ	yaku	yaku		yako				-ako		poss		ba		
2054	210	204	d	3	زِغِيَ	zighiya	zighiya		zengeya				-zeng-		verb		ba	imp	
2093	214	208	a	2	بِنْتِ	binti	binti						b-n-t		noun		ar		
2075	212	206	c	3	امِيْنِ	āmı̄ni	amini		Amini				a-m-n		title		ar		
2059	211	205	b	2	بَبَكُ	babaku	babaku		babako				baba		noun		ba		
2086	213	207	c	3	هَا	hā	ha		hala				l-a-h		conj		ar		
2082	213	207	b	2	بُدِ	budi	budi						b-d-d		noun		ar		
2081	213	207	b	1	حَنَا	ḥanā	hana						-na		have		ba		
2106	215	209	a	3	كَفَصِيْرِ	kafaṣı̄ri	kafasiri						f-s-r		verb		ar	ka	
2070	212	206	b	1	كْوَا	kwā	kwa						-a	on behalf of your brothers and friends,	ref		ba		
2066	211	205	d	3	مَرِضِيَا	mariḍiyā	maridhiya						r-a-zw		noun		ar		
2044	210	204	a	1	مِمِ	mimi	mimi						mimi		pron		ba		
2119	216	210	b	3	مْوَلِمُ	mwalimu	mwalimu					i.e. \\Swa{siyo mwalimu tu}, \\E{not just his teacher}.	3-l-m		noun		ar		
2092	214	208	a	1	مْوَانَ	mwāna	mwana		Mwana				-ana		noun		ba		
2078	212	206	d	3	طَبِيَا	ṭabiyā	tabiya					lit. \\q{go along with his character}: \\Swa{ni kuigiza tabia yake}.	tw-b-3		noun		ar		
2098	214	208	b	4	ثَوَبُ	thawabu	thawabu						th-w-b		noun		ar		
2061	211	205	b	4	تِيْنِ	tı̄ni	tini						-chi		adv		ba		
2112	215	209	d	1	اُسِكُ	usiku	usiku						-siku	before nightfall.	noun		ba		
2118	216	210	b	2	وَ	wa	wa						w-a		conj		ar		
2091	213	207	d	3	وَاصِيْيَا	wāṣı̄yā	wasiya						w-sw-a		noun		ar		
2050	210	204	c	2	وَتَكَ	wataka	wataka						-tak-		verb		ba	a	
2104	215	209	a	1	كِسَا	kisā	kisa						-ish-	Then his mother spoke,	v		b	ki	
2072	212	206	b	3	نَوِنْدَانِ	nawindāni	nawindani		na wendani				-end-		n		b		
2121	216	210	c	1	نَجَمِيْعِ	najamı̄ʿi	najamii		na jamii					and all your friends --					
2125	216	210	d	3	اُكِوَامْبِيَا	ukiwāmbiyā	ukiwambiya												
2156	219	213	c	3	نِوُمْبِيَنِ	niwumbiyani	niwumbiyani		niombeani			Ja'far, although only nine years old, is talking like an adult.							
2198	223	217	b	3	هُيْنُكَ	huynuka	huynuka		huinuka				-inuk-		v		b	hu	
2172	221	215	a	1	كَوَاڠَا	kawāgā	kawaga							He bade farewell to his friends,					
2157	219	213	d	1	نَمِمِ	namimi	namimi		na mimi				mimi	and I will pray for you.	pron		b		
2132	217	211	c	2	تِتِ	titi	titi												
2158	219	213	d	2	تَوَاُمْبِيَا	tawaumbiyā	tawaumbiya		tawaombeya										
1955	201	195	a	2	نَنْيَّكَ	nanı̄yaka	naniyaka		na nyaka				-aka		n		b		
2159	220	214	a	1	اِوَ	iwa	iwa							Let bygones be bygones, my brothers.					
2149	219	213	a	1	نِمِوَائَڠَ	nimiwaaga	nimiwaaga		nimewaaga			Use of the \\Swa{-me-} tense formative here to signify immediate present may be a dialectal feature -- compare Siyu \\Swa{mimetoka}, \\E{I am going out [now]}.		I am saying goodbye to [my] friends,					
2187	222	216	b	3	فِرَاشَا	firāshā	firasha						f-r-sh		n		a		
1536	159	154	a	2	نَرَادِيْدِ	narādı̄di	naradidi						r-d-d		v		a	a	
2167	220	214	c	2	نِمُيِ	nimuyi	nimuyi		ni muyi										
2186	222	216	b	2	پَنْرَّا	panrrā	panrra		~										
2122	216	210	c	2	يَوِزَاكُ	yawizāku	yawizaku		ya wenzako				-end-		n		b		
2171	220	214	d	3	كُرِجِيْيَا	kurijı̄yā	kurijiya		kurejeya				r-j-3		v		a	ku	
2144	218	212	c	2	كَوَاپَ	kawāpa	kawapa						-p-		v		b	ka	
2194	223	217	a	2	كُكُوْ	kukuu	kukuu		kuku										
2195	223	217	a	3	اَكِوِيْكَ	akiwı̄ka	akiwika												
2124	216	210	d	2	حِرِ	ḥiri	hiri		heri				kh-y-r		noun		ar		
2153	219	213	b	3	حِرِانِ	ḥiriāni	hiriani	ḥirīni	herini				kh-y-r		noun		ar		
2129	217	211	b	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far, and went out,	persn		ar		
2128	217	211	a	3	كَيْنُكَ	kaynuka	kaynuka		kainuka				-inu-		verb		ba	ka	
2164	220	214	b	2	كِتِ	kiti	kiti		keti				-ka-		verb		ba	imp	
2152	219	213	b	2	كْوِ	kwi	kwi		kwa	*			-a		ref		ba		
2140	218	212	b	2	مْكِ	mki	mki		mke				-ke		noun		ba		
2155	219	213	c	2	مْغُ	mghu	mghu		Mngu				-ngu		godn		ba		
2162	220	214	a	4	نْرُزَانْغُ	nruzānghu	nruzanghu		nduzangu				-dugu		noun		ba		
2147	218	212	d	2	نِنُ	ninu	ninu		neno				-nen-		noun		ba		
2174	221	215	a	3	نِوَاكِ	niwāki	niwaki		wake				-ake		poss		ba		
2168	220	214	c	3	وَنْغُ	wanghu	wanghu		wangu				-angu		poss		ba		
2173	221	215	a	2	وِنْدَا	windā	winda		wendani				-end-		noun		ba		
2143	218	212	c	1	وُتِ	wuti	wuti		wote				-ote	and gave all of them a full report --	qual		ba		
2133	217	211	c	3	يَكِ	yaki	yaki		yake				-ake		poss		ba		
2188	222	216	c	1	اَكَمْبَ	akamba	akamba						-amb-	he said: Mother, waken me [in the morning]	verb		ba	ka	
2137	218	212	a	1	اَكِنْرَا	akinrā	akinra		akenda				-end-	He went and made his greetings	verb		ba	ki	
2127	217	211	a	2	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
2177	221	215	b	3	زَاكِ	zāki	zaki		zake				-ake		focus		ba		
2197	223	217	b	2	زُتِ	zuti	zuti		zote				-ote		qual		ba		
2136	217	211	d	2	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya						-amb-		verb		ba	ka	
2170	220	214	d	2	بُدِ	budi	budi						b-d-d		noun		ar		
2138	218	212	a	2	اَكَنُظُمُ	akanuẓumu	akanudhumu						n-dw-m		verb		ar	ka	
2134	217	211	c	4	كَفِيْكَ	kafı̄ka	kafika						-fik-		verb		ba	ka	
2135	217	211	d	1	خَبَرِ	khabari	habari						kh-b-r	he told him the news.	noun		ar		
2148	218	212	d	3	كَوَمْبِيَا	kawambiyā	kawambiya						-amb-		verb		ba	ka	
2146	218	212	d	1	كُلَ	kula	kula						k-l-l	he told them every word.	pron		ar		
2151	219	213	b	1	كُوَامْبِيَ	kuwāmbiya	kuwambiya						-amb-	bidding you farewell --	verb		ba	ku	
2176	221	215	b	2	كُيَ	kuya	kuya						-j-		verb		ba	ku	
2123	216	210	d	1	كْوَا	kwā	kwa						-a	bid them farewell.	ref		ba		
2154	219	213	c	1	كْوَ	kwa	kwa						-a	pray for me to God,	ref		ba		
2193	223	217	a	1	مِمِ	mimi	mimi						mimi	I, when the cock crows,	pron		ba		
2142	218	212	b	4	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun		ar		
2161	220	214	a	3	رَضِ	raḍi	radhi					People ask for \\Swa{radhi} when they are dying, or going on a journey, or moving away.  Doing so is, in effect, asking for forgiveness for any past wrongs on either side. 	r-a-zw		noun		ar		
2160	220	214	a	2	نِ	ni	ni						ni		exist		ba		
2169	220	214	d	1	سِنَا	sinā	sina						-na	I have no doubt [but that I will] return [to visit].	have		ba		
2145	218	212	c	3	تِمَامُ	timāmu	timamu						t-m-m		noun		ar		
2141	218	212	b	3	وَا	wā	wa						w-a		conj		ar		
2126	217	211	a	1	كِسَا	kisā	kisa						-ish-	So then he got up,	v		b	ki	
2175	221	215	b	1	اَكَرُدِ	akarudi	akarudi						r-d-d	and returned the way he had come.	v		a	ka	
2185	222	216	b	1	اَلِپُ	alipu	alipu		alipopanda				-pand-	When he was getting into bed	v		b	li	
2165	220	214	b	3	نَبَبَنغُ	nababanghu	nababanghu		na babangu				baba		n		b		
2117	216	210	b	1	نَمْكِ	namki	namki		na mke				-ke	and your teacher's wife,	n		b		
2166	220	214	c	1	نَحُوْنُ	naḥūnu	nahunu		na hunu				h-	but this is my [home] town --	dem		b		
2190	222	216	c	3	نَمشَا	namshā	namsha												
2203	223	217	d	2	سِتُفَهَمِيَا	situfahamiyā	situfahamiya		sitofahamiya										
2212	224	218	d	1	نِوِكُ	niwiku	niwiku		niweko					I can be well on my way.					
2241	227	221	d	2	هُسِنْدِيَا	husindiyā	husindiya					lit. \\q{dozing}.							
2227	226	220	b	1	كَمْوَامْشَا	kamwāmshā	kamwamsha						-amk-	and wakened Ja'far:	v		b	ka	
2217	225	219	b	1	كُكُوُ	kukuwu	kukuwu		kuku					and when the first cock crowed					
2220	225	219	b	4	كُوِكَا	kuwikā	kuwika												
2260	229	223	d	2	اَكَيْصَلِيَا	akayṣaliyā	akaysaliya		akaisaliya										
1369	142	137	b	3	نَثَوَابُ	nathawābu	nathawabu		na thawabu				th-w-b		n		a		
2245	228	222	a	4	مَكِنِ	makini	makini					Note that because he is a good boy, Ja'far does not rush this.							
2246	228	222	b	1	نَكِسَ	nakisa	nakisa		na kisa					and then he said:					
2225	226	220	a	1	وَپِيْلِ	wapı̄li	wapili		wa pili			We understand \\Swa{kuku}, \\E{cockerel}.	-wili	When the second cock crowed, she spoke	num		b		
1719	176	171	d	1	وُوَاوِلِ	wuwāwili	wuwawili		wao wawili	*			-wili		num		b		
2237	227	221	b	2	سِكُيفَهَمُ	sikuyfahamu	sikuyfahamu		sikuyifahamu			lit. \\q{I was not conscious of [the day]}.							
2183	222	216	a	2	مَڠُوْ	maguu	maguu						-guu		n		b		
2251	228	222	d	2	نِيَمْشِيَا	niyamshiyā	niyamshiya		niamshiya				-amk-		v		b	imp	
2182	222	216	a	1	حَپُ	ḥapu	hapu		hapo				h-	Then he washed his feet.	dem		ba		
2284	232	226	b	4	حِرِا	ḥiriā	hiria	ḥirī	heri				kh-y-r		noun		ar		
2228	226	220	b	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
2211	224	218	c	2	كُكِپَبَوُكَ	kukipabawuka	kukipabawuka		kukipambauka				-pambauk-		verb		ba	ki	
2206	224	218	a	3	كُتُكَ	kutuka	kutuka		kutoka				-to-		verb		ba	ku	
2259	229	223	d	1	كْرَ	kra	kra		kwanda	*		\\Swa{kenda} would be another possible reading.	-anz-	first he prayed them.	verb		ba	ku	
2221	225	219	c	1	مَمَكِ	mamaki	mamaki		mamake				mama	his mother got up	noun		ba		
2271	231	225	a	2	مِكُنُ	mikunu	mikunu		mikono				-kono		noun		ba		
2250	228	222	d	1	ناصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r	Wake Nasir for me.	persn		ar		
2248	228	222	c	1	نِنْرَاوُ	ninrāwu	ninrawu		nendao				-end-	I am going to the mosque --	verb		ba	a	
2201	223	217	c	3	نِمِػُكَ	nimikʲuka	nimichuka		nimechoka				-chok-		verb		ba	me	
2230	226	220	c	2	نِا	niā	nia	nī	ni				ni		exist		ba		
2204	224	218	a	1	تِنَا	tinā	tina		tena				tena	And I want to set out	conj		ba		
2243	228	222	a	2	اُسُ	usu	usu		uso				-so		noun		ba		
2270	231	225	a	1	وَكَتَغَنْيَ	wakataghanya	wakataghanya		wakatanganya				-changany-		verb		ba	ka	
2200	223	217	c	2	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
2236	227	221	b	1	يِوُ	yiwu	yiwu		yeo				-eo	Today I was fast asleep.	adv		ba		
2231	226	220	c	3	ءَلْفَجِيْرِ	alfajı̄ri	alfajiri						f-j-r		noun		ar		
2210	224	218	c	1	هَتَ	hata	hata						h-t-t	so that when dawn comes	conj		ar		
2222	225	219	c	2	اَكَيْنُوْكَ	akaynūka	akaynuka		akainuka				-inu-		verb		ba	ka	
2240	227	221	d	1	اَكَتُكَ	akatuka	akatuka		akatoka				-to-	he went out, still half-asleep.	verb		ba	ka	
2238	227	221	c	1	حَپُ	ḥapu	hapu		hapo				h-	When he had spoken,	dem		ba		
2234	227	221	a	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r	Ja'far said:	persn		ar		
2199	223	217	c	1	اِلَا	ilā	ila						2-l-a	but today I am tired --	conj		ar		
2229	226	220	c	1	هَيَا	hayā	haya						h-	It's [time for] morning [prayers] --	dem		ba		
2191	222	216	d	1	كَمَ	kama	kama						k-m-a	if I am still asleep.	conj		ar		
2224	225	219	d	2	كَمْپِكِيْيَا	kampikı̄yā	kampikiya						-pik-		verb		ba	ka	
2213	224	218	d	2	كَتِكَ	katika	katika						kati		prep		ba		
2216	225	219	a	2	كِپُلِيْكَ	kipulı̄ka	kipulika					lit. \\q{he slept listening}, i.e. \\Swa{kulala kimato-mato}.	-pulik-		verb		ba	ki	
2242	228	222	a	1	كُوَ	kuwa	kuwa		koa				-w-	He washed his face carefully,	verb		ba	ku	
2244	228	222	a	3	كْوَا	kwā	kwa						-a		ref		ba		
2219	225	219	b	3	كْوَانْدَ	kwānda	kwanda						-anz-		verb		ba	ku	
2202	223	217	d	1	مَرَا	marā	mara						m-r-r	perhaps I will not wake up [on time].	noun		ar		
2249	228	222	c	2	مْسِكِتِنِ	msikitini	msikitini						s-j-d		noun		ar		
2205	224	218	a	2	نَتَكَ	nataka	nataka						-tak-		verb		ba	a	
2207	224	218	b	1	سَعَا	saʿā	saa						s-a-3	when the tenth hour arrives,	noun		ar		
2232	226	220	d	1	صَلَا	ṣalā	sala						sw-l-w	the prayers are starting.	noun		ar		
2192	222	216	d	2	سِكُفَهَمِيَا	sikufahamiyā	sikufahamiya					lit. \\q{if I am not conscious}	f-h-m		verb		ar	li	
2218	225	219	b	2	وَ	wa	wa						w-a		conj		ar		
2239	227	221	c	2	اَكَكَلِيْمُ	akakalı̄mu	akakalimu						k-l-m		v		a	ka	
2209	224	218	b	3	زِكِفِيْكَ	zikifı̄ka	zikifika						-fik-		v		b	ki	
2254	229	223	b	1	اَكِنِرَا	akinirā	akinira		akenenda				-end-	and as he went he repeated the names of God.	v		b	ki	
2261	230	224	a	1	اَكَرُدِ	akarudi	akarudi						r-d-d		v		a	ka	
2263	230	224	b	1	نَػَكُلَ	nakʲakula	nachakula		na chakula				-l-		n		b		
2189	222	216	c	2	مَمَا	mamā	mama						mama		noun		ba		
2314	235	229	b	2	اَمْفُوَاتَ	amfuwāta	amfuwata		amfuata				-fuat-		v		b	a	
2313	235	229	b	1	اَنِنْرِ	aninri	aninri		anende				-end-		v		b	subj	
2312	235	229	a	3	اَپِتَ	apita	apita						-pit-		v		b	a	
2331	237	231	b	1	هَپُ	hapu	hapu		hapo				h-		dem		b		
2255	229	223	b	2	كَذِكِرِا	kadhikiriā	kadhikiria	kadhikirī	kadhikiri			\\Swa{kutaja Mngu}, a ritual repetition of the names of God.	dh-k-r		v		a	ka	
2317	235	229	d	1	نَمغُ	namghu	namghu		na Mngu				-ngu		godn		b		
228	23	23	a	3	يَػَنْدَانِ	yakʲandāni	yachandani		ya chandani				-anda		n		b		
2289	232	226	d	2	تَكُوِتِيْيَا	takuwitı̄yā	takuwitiya		takuetea										
2286	232	226	c	2	رُدِ	rudi	rudi		~										
2292	233	227	b	1	نِتِيَ	nitiya	nitiya		nitia										
269	26	26	c	3	يَػَنْدَانِ	yakʲandāni	yachandani		ya chandani				-anda		n		b		
1682	173	168	b	1	وَلَوُ	walawu	walawu		walau				w-l-w		conj		a		
2952	300	294	c	1	يَپِسِيُوُ	yapisiyuwu	yapisiyuwu		yapisieyo	*			-pit-	what had happened in the past,	v		b	past	
2324	236	230	c	1	مْفُزِْشِ	mfuzishi	mfuzishi		mfunzishe				-fund-		v		b	subj	
2325	236	230	c	2	نَعِلِمُ	naʿilimu	nailimu		na ilimu				3-l-m		n		a		
2346	238	232	d	2	أِيُوْنَ	iyūna	iyuna		~										
2345	238	232	d	1	اَسِپُ	asipu	asipu		asipoiona				-on-		verb		ba	ki	
2344	238	232	c	2	هَڠَلِتُكَ	hagalituka	hagalituka		hangalitoka				-to-		verb		ba	ngali	
2301	234	228	a	2	هَپُ	hapu	hapu		hapo				h-		dem		ba		
2305	234	228	b	3	هُتُكَ	hutuka	hutuka		hutoka				-to-		verb		ba	hu	
2330	237	231	a	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
2307	234	228	c	2	كَيْنُكَ	kaynuka	kaynuka		kainuka				-inu-		verb		ba	ka	
2302	234	228	a	3	كَتَمْكَ	katamka	katamka						-tamk-		verb		ba	ka	
2309	234	228	d	2	كَمْتُلِيَا	kamtuliyā	kamtuliya		kamtoleya				-to-		verb		ba	ka	
2264	230	224	b	2	كِطَيَرِا	kiṭayariā	kitayaria	kiṭayarī	ki tayari				tw-y-r		adj		ar		
2299	233	227	d	2	كُمْوَغَلِيَا	kumwaghaliyā	kumwaghaliya		kumwangaliya				-anga-		verb		ba	ku	
2343	238	232	c	1	كُتُغَ	kutugha	kutugha		kutunga				-tung-		verb		ba	ku	
2311	235	229	a	2	مَمَكِ	mamaki	mamaki		mamake				mama		noun		ba		
2274	231	225	b	3	مْفَنُ	mfanu	mfanu		mfano				-fan-		noun		ba		
2322	236	230	b	1	مْسُمِشِ	msumishi	msumishi		msomeshe				-som-		verb		ba	subj	
2267	230	224	c	3	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri				n-sw-r		persn		ar		
2277	231	225	d	1	رُيَكِ	ruyaki	ruyaki		nduyake				-dugu		noun		ba		
2282	232	226	b	2	رُيَغُ	ruyaghu	ruyaghu		nduyangu				-dugu		noun		ba		
2295	233	227	c	1	نْيَّمَ	nı̄yama	niyama	nyyama	nyama				-ama		noun		ba		
2308	234	228	d	1	صَدَاقَ	ṣadāqa	sadaqa		sadaka				sw-d-q		noun		ar		
2285	232	226	c	1	تَكَپُ	takapu	takapu		takaporudi				r-d-d		verb		ar	ta	
2328	236	230	d	3	تَكْوِتِيَ	takwitiya	takwitiya		takweteya				-let-		verb		ba	ta	
2291	233	227	a	2	اُپِسِ	upisi	upisi		upesi				-pesi		noun		ba		
2272	231	225	b	1	وَكَكِتِ	wakakiti	wakakiti		wakaketi				-ka-		verb		ba	ka	
2355	239	233	c	3	وَاكُ	wāku	waku		wako				-ako		poss		ba		
2327	236	230	d	2	يَكِ	yaki	yaki		yake				-ake		poss		ba		
2281	232	226	b	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
2326	236	230	d	1	عَدَ	ʿada	ada						3-a-d		noun		ar		
2275	231	225	c	1	اَكَنِيْنَ	akanı̄na	akanina		akanena				-nen-		verb		ba	ki	
2329	237	231	a	1	اَكَتُكَ	akatuka	akatuka		akatoka				-to-		verb		ba	ka	
2323	236	230	b	2	اَخِتِيْمُ	akhitı̄mu	ahitimu						kh-t-m		verb		ar	subj	
2335	237	231	c	2	اَكَفَصِيْرِ	akafaṣı̄ri	akafasiri						f-s-r		verb		ar	ka	
2290	233	227	a	1	اَكَمْجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
2278	231	225	d	2	اَكِمْوَمْبِيَا	akimwambiyā	akimwambiya						-amb-		verb		ba	ki	
2258	229	223	c	3	الْفَجيْرِ	ālfajı̄ri	alfajiri						f-j-r		noun		ar		
2294	233	227	b	3	فَرَاسِ	farāsi	farasi						f-r-s		noun		ar		
2296	233	227	c	2	هُيُ	huyu	huyu						h-		dem		ba		
2303	234	228	b	1	هَيَا	hayā	haya						h-		dem		ba		
2319	236	230	a	1	هُيُ	huyu	huyu						h-		dem		ba		
2332	237	231	b	2	كَلِيَ	kaliya	kaliya		kalia				-li-		verb		ba	ka	
2265	230	224	c	1	كُلَ	kula	kula						k-l-l		pron		ar		
2273	231	225	b	2	كْوَ	kwa	kwa						-a		ref		ba		
2283	232	226	b	3	كْوَا	kwā	kwa						-a		ref		ba		
2304	234	228	b	2	مَمَنْڠُ	mamangu	mamangu						mama		noun		ba		
2321	236	230	a	3	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun		ar		
2293	233	227	b	2	نَمِ	nami	nami						na		conj		ba		
2298	233	227	d	1	نَتَكَا	natakā	nataka						-tak-		verb		ba	a	
2347	238	232	d	3	نْدِيَا	ndiyā	ndiya						-jia		noun		ba		
2287	232	226	c	3	سَفَرِ	safari	safari						s-f-r		noun		ar		
2297	233	227	c	3	سِمُئِسِ	simuisi	simuisi						-is-		verb		ba	a	
2288	232	226	d	1	تَمَشَا	tamashā	tamasha						-tamasha		noun		ba		
2257	229	223	c	2	يَا	yā	ya						y-a		excl		ar		
2315	235	229	c	1	اَكَمْتُپِيْيَ	akamtupı̄ya	akamtupiya		akamtupia				-tup-		v		b	ka	
2300	234	228	a	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
2350	239	233	a	3	سِكُوِكُ	sikuwiku	sikuwiku		sikuweko										
2351	239	233	b	1	اُكَمْوَمْبِيَ	ukamwambiya	ukamwambiya		ukamwambia										
2406	244	238	d	3	زَاكُغِيَا	zākughiyā	zakughiya		za kungiya				-ingi-		v		b	ku	
2374	241	235	c	2	نَنْنِ	nanni	nanni		na nini				nini		int		b		
2412	245	239	c	2	نَسَلِمِيْنِ	nasalimı̄ni	nasalimini		na salimini				s-l-m		n		a		
2372	241	235	b	2	اُمِلِلِيَنِ	umililiyani	umililiyani		umelilia-ni										
2378	242	236	a	2	هُكُرِظِيْكَ	hukuriẓı̄ka	hukuridhika						r-a-zw		v		a	hu	
2373	241	235	c	1	تْوَالِئَڠَانَ	twāliagāna	twaliagana												
2382	242	236	c	2	حَجَ	ḥaja	haja												
2429	247	241	a	3	جِلِيْسِ	jilı̄si	jilisi		~										
2391	243	237	c	1	سِكُزُتِ	sikuzuti	sikuzuti		siku zote										
2415	245	239	d	3	نَعَفِيَا	naʿafiyā	naafiya		na afiya										
2398	244	238	a	3	نِثَقِيْلِ	nithaqı̄li	nithaqili		ni thaqili										
2400	244	238	b	2	يَتَعَمَلِ	yataʿamali	yataamali		~										
2401	244	238	c	1	تَكُوَا	takuwā	takuwa												
2403	244	238	c	3	تُوْلِ	tūli	tuli		~										
2457	250	244	a	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
2409	245	239	b	1	اَتَكُپِكَ	atakupika	atakupika		atakupeka				-pelek-		verb		ba	ta	
2337	237	231	d	2	اَتَرِجِيَا	atarijiyā	atarijiya		atarejeya				r-j-3		verb		ar	ta	
2341	238	232	b	2	اِنْرَا	inrā	inra		enda				-end-		verb		ba	imp	
2394	243	237	d	1	هَمُنِوُنِ	hamuniwuni	hamuniwuni		hamunioni				-on-		verb		ba	a	
2416	246	240	a	1	هَپُ	hapu	hapu		hapo				h-		dem		ba		
2367	240	234	d	2	هَيُ	hayu	hayu		hayo				h-		dem		ba		
2362	240	234	b	2	هُتُكُلِيَنِ	hutukuliyani	hutukuliyani		hutukulia-ni				-chuku-		verb		ba	hu	
2369	241	235	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
2419	246	240	b	1	كِنِرَا	kinirā	kinira		kinenda				-end-		verb		ba	ki	
2420	246	240	b	2	كُتُسِمَامَ	kutusimāma	kutusimama		kutosimama				-simam-		verb		ba	ku	
2342	238	232	b	3	مَكَهْ	makah	makah		Maka				m-k-k		placen		ar		
2418	246	240	a	3	كَيَدَاَمَ	kayadaama	kayadaama		kayandama				-andam-		verb		ba	ka	
2375	241	235	d	1	مَنِنُ	maninu	maninu		maneno				-nen-		noun		ba		
2402	244	238	c	2	مَتُلِ	matuli	matuli		matuli-tuli				-tuli		noun		ba		
2338	238	232	a	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri				n-sw-r		persn		ar		
2371	241	235	b	1	سَسَا	sasā	sasa						sasa		adv		ba		
2361	240	234	b	1	غُوْ	ghuu	ghuu		nguo				nguo		noun		ba		
2399	244	238	b	1	نِمِزُ	nimizu	nimizu		nimezoyataamali				a-m-l		verb		ar	me	
2380	242	236	b	2	نِسِيَتُكَ	nisiyatuka	nisiyatuka		nisiyatoka				-to-		verb		ba	sija	
2384	242	236	d	1	سِكِتِكُ	sikitiku	sikitiku		sikitiko				-sikitik-		noun		ba		
2365	240	234	c	3	سِمُوُنِ	simuwuni	simuwuni		simuoni				-on-		verb		ba	a	
2352	239	233	b	2	تَمْكُ	tamku	tamku		tamko				-tamk-		noun		ba		
2359	240	234	a	2	وِنْرَا	winrā	winra		wenda				-end-		verb		ba	a	
2390	243	237	b	3	يَكُ	yaku	yaku		yako				-ako		poss		ba		
2356	239	233	d	1	يُتِ	yuti	yuti		yote				-ote		qual		ba		
2404	244	238	d	1	زِوُ	ziwu	ziwu		zeo				-eo		noun		ba		
2386	243	237	a	1	اَكَمْجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
2370	241	235	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
2339	238	232	a	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
2451	249	243	c	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia				-amb-		verb		ba	ka	
2348	239	233	a	1	اَوْ	aw	au						2-w		conj		ar		
2358	240	234	a	1	اَوْ	aw	au						2-w		conj		ar		
2366	240	234	d	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
2381	242	236	c	1	هُنَا	hunā	huna						-na		have		ba		
2395	243	237	d	2	كُلِيْيَا	kulı̄yā	kuliya						-li-		verb		ba	ku	
2389	243	237	b	2	هَيَ	haya	haya						h-		dem		ba		
2397	244	238	a	2	هَيَا	hayā	haya						h-		dem		ba		
2368	240	234	d	3	كُنَمْبِيَا	kunambiyā	kunambiya						-amb-		verb		ba	ku	
2385	242	236	d	2	كُنِتِيْيَا	kunitı̄yā	kunitiya						-ti-		verb		ba	ku	
2413	245	239	d	1	كْوَا	kwā	kwa						-a		ref		ba		
2430	247	241	b	1	كْوَا	kwā	kwa						-a		ref		ba		
2357	239	233	d	2	نَلِيَسِكِيَا	naliyasikiyā	naliyasikiya						-siki-		verb		ba	li	
2379	242	236	b	1	نَمْبِيَ	nambiya	nambiya		nambia				-amb-		verb		ba	imp	
2340	238	232	b	1	نَمُيُوَا	namuyuwā	namuyuwa		namuyua				-ju-		verb		ba	a	
2417	246	240	a	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
2411	245	239	c	1	سَلَامَ	salāma	salama						s-l-m		noun		ar		
2363	240	234	c	1	سِكُ	siku	siku						-siku		noun		ba		
2388	243	237	b	1	سِكُئِزَا	sikuizā	sikuiza						-iz-		verb		ba	li	
2336	237	231	d	1	اُسِكُ	usiku	usiku						-siku		noun		ba		
2349	239	233	a	2	يَانَ	yāna	yana						jana		adv		ba		
2440	248	242	b	1	اَكَمووْنَ	akamūwna	akamuna		akamwona				-on-		v		b	ka	
2442	248	242	c	1	اِنْدِمِيْنِ	indimı̄ni	indimini		endemene				-andam-		v		b	past	
2435	247	241	c	3	سِكُكِسِ	sikukisi	sikukisi												
2448	249	243	a	2	كَوَتَزَامَ	kawatazāma	kawatazama						-tazam-		v		b	ka	
507	51	51	d	1	هُمْلِرَّا	humlirrā	humlirra		humlinda				-lind-	was waiting to talk to him.	v		b	hu	
2460	250	244	b	3	نِنْيَنِ	ninyani	ninyani		ni nyani										
2392	243	237	c	2	هُوَا	huwā	huwa		huwa										
2461	250	244	c	1	وَسِكِيَ	wasikiya	wasikiya		wasikia										
2501	254	248	b	2	نِنْيَنِ	ninyani	ninyani		ni nyani										
2488	253	247	a	2	كْوِرَ	kwira	kwira		~										
2487	253	247	a	1	اَلِپُ	alipu	alipu		alipokwenda				-end-		verb		ba	li	
2497	253	247	d	3	عَلِيَا	ʿaliyā	aliya		Aliya				3-l-y		persn		ar		
2426	246	240	d	3	اَمِڠِيْيَا	amigı̄yā	amigiya		amengiya				-ingi-		verb		ba	me	
2482	252	246	c	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
2500	254	248	b	1	اَمْكُوَوُ	amkuwawu	amkuwawu		amkuao				-amku-		verb		ba	a	
2431	247	241	b	2	بَبَكِ	babaki	babaki		babake				baba		noun		ba		
2479	252	246	b	2	بَبَنْغُ	babanghu	babanghu		babangu				baba		noun		ba		
2444	248	242	c	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
2524	256	250	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
2469	251	245	b	2	حَبِبُ	ḥabibu	habibu		Habibu				hh-b-b		title		ar		
2496	253	247	d	2	هَكُ	haku	haku		hako				LOC		loc		ba		
2432	247	241	b	3	هَكُئِسِا	hakuisiā	hakuisia	hakuisī	hakuisi				-is-		verb		ba	a	
2476	252	246	a	2	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
2452	249	243	c	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima				h-sh-m		title		ar		
2492	253	247	b	3	هُوْدِ	hūdi	hudi		hodi				hodi		noun		ba		
2462	250	244	c	2	هُبَيِنِ	hubayini	hubayini		hubaini				b-a-n		verb		ar	hu	
2499	254	248	a	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni				hh-s-y-n		persn		ar		
2439	248	242	a	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
2481	252	246	c	1	كَمْتُكُوَا	kamtukuwā	kamtukuwa		kamtukua				-chuku-		verb		ba	ka	
2456	250	244	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
2483	252	246	d	1	كِنْرَا	kinrā	kinra		kenda				-end-		verb		ba	ka	
2425	246	240	d	2	مَكَ	maka	maka		Maka				m-k-k		placen		ar		
2410	245	239	b	2	مَنَّانِ	mannāni	mannani		Manani				m-n-n		godn		ar		
2453	249	243	d	1	مْڠِيْنِ	mgı̄ni	mgini		mgeni				-geni		noun		ba		
2464	250	244	d	2	مْكُنُ	mkunu	mkunu		mkono				-kono		noun		ba		
2434	247	241	c	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
2424	246	240	d	1	نَايِ	nāyi	nayi		naye				na		conj		ba		
2484	252	246	d	2	نَيِ	nayi	nayi		naye				na		conj		ba		
2490	253	247	b	1	نْدِ	ndi	ndi		nde				-je		adv		ba		
2463	250	244	d	1	نِپَ	nipa	nipa						-p-		verb		ba	imp	
2480	252	246	b	3	نِپِكَنِ	nipikani	nipikani		nipekani				-pelek-		verb		ba	imp	
2515	255	249	c	2	قَوْلِيْ	qawlii	qaulii		qauli				q-w-l		noun		ar		
2489	253	247	a	3	سَئِدِ	saidi	saidi		Sayidi				s-3-d		title		ar		
2473	251	245	d	2	وَكِ	waki	waki		wake				-ake		poss		ba		
2459	250	244	b	2	وِتُ	witu	witu		wetu				-etu		poss		ba		
2454	249	243	d	2	وِتُ	witu	witu		wetu				-etu		poss		ba		
2441	248	242	b	2	زُبِيْرِا	zubı̄riā	zubiria	zubı̄rī	Zuberi				z-b-r		persn		ar		
2471	251	245	c	2	اَكَمْجِيْبُ	akamjı̄bu	akamjibu						j-a-b		verb		ar	ka	
2525	256	250	d	2	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya						-amb-		verb		ba	ka	
2438	248	242	a	1	اَكَكِتِ	akakiti	akakiti		akaketi				-ka-		verb		ba	ka	
2530	257	251	c	1	بَبَا	babā	baba						baba		noun		ba		
2421	246	240	c	1	سَعَ	saʿa	saa						s-a-3		noun		ar		
2491	253	247	b	2	اَكَپِجَ	akapija	akapija						-pig-		verb		ba	ka	
2450	249	243	b	2	اَكَسِمَامَ	akasimāma	akasimama						-simam-		verb		ba	ka	
2514	255	249	c	1	اَكِسِكِيْيَ	akisikı̄ya	akisikiya		akisikia				-siki-		verb		ba	ki	
2433	247	241	c	1	كَمْبَ	kamba	kamba						-amb-		verb		ba	ka	
2467	251	245	a	2	كَتَعَجَبُ	kataʿajabu	kataajabu						3-j-b		verb		ar	ka	
2502	254	248	c	1	كِجَانَ	kijāna	kijana						-ana		noun		ba		
2422	246	240	c	2	كُمِ	kumi	kumi						-kumi		num		ba		
2478	252	246	b	1	كْوَا	kwā	kwa						-a		ref		ba		
2485	252	246	d	3	كْوَ	kwa	kwa						-a		ref		ba		
2436	247	241	d	1	كْوَانْدَ	kwānda	kwanda						-anz-		verb		ba	ku	
2447	249	243	a	1	مْكٗنٗ	mkono	mkono						-kono		noun		ba		
2445	248	242	d	1	مْكٗنٗ	mkono	mkono						-kono		noun		ba		
2465	250	244	d	3	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
2443	248	242	c	2	نَا	nā	na						ni		exist		ba		
2531	257	251	c	2	سِيَمْفَهَمُ	siyamfahamu	siyamfahamu						f-h-m		verb		ar	me	
2472	251	245	d	1	وَجِهِ	wajihi	wajihi						w-j-h		noun		ar		
2477	252	246	a	3	اَبَيِيْنِ	abayı̄ni	abayini		abaini				b-a-n		v		a	a	
2475	252	246	a	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
2446	248	242	d	2	اَكَوَيْنُلِيَ	akawaynuliya	akawaynuliya		akawainuliya				-inu-		v		b	ka	
2564	260	254	d	1	بَبَكُ	babaku	babaku		babako				baba		n		b		
2574	261	255	d	1	هُكْوَامْكُوَا	hukwāmkuwā	hukwamkuwa		kukwamkua				-amku-		v		b	hu	
2537	258	252	a	3	سِمُيُوِ	simuyuwi	simuyuwi		simuyui										
2585	262	256	d	1	نِهِلُ	nihilu	nihilu		ni hilo				h-		dem		b		
2508	255	249	a	1	نِجَدِ	nijadi	nijadi		ni jadi				j-d-d		n		a		
2597	264	258	a	1	سَلَامَُ	salāmua	salamua						s-l-m		n		a		
2559	260	254	a	3	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
2547	259	253	a	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
2579	262	256	b	1	ػِنْدِمِيْنِ	kʲindimı̄ni	chindimini		chendemene				-andam-		verb		ba	past	
2562	260	254	c	1	اِنِرَا	inirā	inira		enenda				-end-		verb		ba	imp	
2526	257	251	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
2553	259	253	c	3	حَيْدَارِ	ḥaydāri	haydari		Haidari				h-d-r		title		ar		
2557	260	254	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
2529	257	251	b	2	حَشِمُ	ḥashimu	hashimu		Hashimu				h-sh-m		title		ar		
2554	259	253	d	1	حِزُ	ḥizu	hizu		hizo				h-		dem		ba		
2561	260	254	b	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni				hh-s-y-n		persn		ar		
2568	261	255	a	3	حُسِيْنِ	ḥusı̄ni	husini		Huseni				hh-s-y-n		persn		ar		
2519	256	250	a	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
2520	256	250	b	1	كَمُوُلِيْزَا	kamuwulı̄zā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
2516	255	249	d	1	كَتُكَ	katuka	katuka		katoka				-to-		verb		ba	ka	
2567	261	255	a	2	كَتُكَ	katuka	katuka		katoka				-to-		verb		ba	ka	
2563	260	254	c	2	مْسِكِتِيْنِ	msikitı̄ni	msikitini						s-j-d		noun		ar		
2572	261	255	c	2	مِكُيَ	mikuya	mikuya		mekuya				-j-		verb		ba	me	
2573	261	255	c	3	مْغِيْنِ	mghı̄ni	mghini		mgeni				-geni		noun		ba		
2540	258	252	b	3	نْرِيِ	nriyi	nriyi		ndiye				ni		focus		ba		
2549	259	253	b	2	نْرِيِ	nriyi	nriyi		ndiye				ni		focus		ba		
2586	262	256	d	2	نِمِكْوَمْبِيَا	nimikwambiyā	nimikwambiya		nimekwambiya				-amb-		verb		ba	me	
2504	254	248	d	1	نِا	niā	nia	nī	ni				ni		exist		ba		
2507	254	248	d	4	سِكِيَا	sikiyā	sikiya						-siki-		verb		ba	imp	
2558	260	254	a	2	سَيِدِ	sayidi	sayidi		Sayidi				s-3-d		title		ar		
2535	258	252	a	1	سِكُوْ	sikuu	sikuu		siku				-siku		noun		ba		
2506	254	248	d	3	يَنْغُ	yanghu	yanghu		yangu				-angu		poss		ba		
2511	255	249	b	1	يِيِ	yiyi	yiyi		yeye				yeye		pron		ba		
2615	265	259	d	2	زَاوُ	zāwu	zawu		zao				-ao		poss		ba		
2560	260	254	b	1	اَكَمْتُمَ	akamtuma	akamtuma						-tum-		verb		ba	ka	
2536	258	252	a	2	زُتِ	zuti	zuti		zote				-ote		qual		ba		
2494	253	247	c	2	اَكَرَادِدِ	akarādidi	akaradidi						r-d-d		verb		ar	ka	
2545	258	252	d	2	اَكَمْوَمْبِيْيَ	akamwambı̄ya	akamwambiya						-amb-		verb		ba	ka	
2522	256	250	c	1	اَكِيْكُمَ	akı̄kuma	akikuma		akikoma				-kom-		verb		ba	ki	
2566	261	255	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
2571	261	255	c	1	بَبَا	babā	baba						baba		noun		ba		
2587	263	257	a	1	ػَمْبِوَا	kʲambiwā	chambiwa						-amb-		verb		ba	ki	
2556	259	253	d	3	هُكْوَمْبِيَا	hukwambiyā	hukwambiya						-amb-		verb		ba	hu	
2521	256	250	b	2	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
2533	257	251	d	2	هُيُ	huyu	huyu						h-		dem		ba		
2548	259	253	b	1	هُيُ	huyu	huyu						h-		dem		ba		
2538	258	252	b	1	اِنَ	ina	ina						-ina		noun		ba		
2583	262	256	c	2	اِنَ	ina	ina						-ina		noun		ba		
2505	254	248	d	2	جَدِ	jadi	jadi						j-d-d		noun		ar		
2523	256	250	c	2	كَفَصِيْرِ	kafaṣı̄ri	kafasiri						f-s-r		verb		ar	ka	
2569	261	255	b	1	كَفِيْكَ	kafı̄ka	kafika						-fik-		verb		ba	ka	
2527	257	251	a	2	كَتَكَلَمُ	katakalamu	katakalamu						k-l-m		verb		ar	ka	
2532	257	251	d	1	كِجَانَ	kijāna	kijana						-ana		noun		ba		
2517	255	249	d	2	كُمْوَنْڠَلِيَا	kumwangaliyā	kumwangaliya						-anga-		verb		ba	ku	
2576	262	256	a	1	كُوْنَ	kūna	kuna						-na		have		ba		
2539	258	252	b	2	لَكِ	laki	laki		lake				l-k-k		noun		ar		
2578	262	256	a	3	مْزُرِ	mzuri	mzuri						-zuri		adj		ba		
2575	261	255	d	2	نَبِيَا	nabiyā	nabiya						n-b-y		title		ar		
2534	257	251	d	3	نَمْبِيَا	nambiyā	nambiya						-amb-		verb		ba	imp	
2580	262	256	b	2	نَا	nā	na						ni		exist		ba		
2582	262	256	c	1	نَا	nā	na						ni		exist		ba		
2565	260	254	d	2	نَمْكُلِيَا	namkuliyā	namkuliya						-amku-		verb		ba	a	
2541	258	252	b	4	نْيَانِ	nyāni	nyani						nani		int		ba		
2510	255	249	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title		ar		
2555	259	253	d	2	سُوْرَ	sūra	sura						sw-w-r		noun		ar		
2551	259	253	c	1	وَ	wa	wa						w-a		conj		ar		
2528	257	251	b	1	اَكَمُوُلِزَا	akamuwulizā	akamuwuliza		akamuuliza				-uz-		v		b	ka	
2512	255	249	b	2	نَمْتُ	namtu	namtu		na mtu				-tu		n		b		
2670	271	265	b	3	يَپِلِ	yapili	yapili		ya pili				-willi		num		b		
2612	265	259	c	2	وَزِيْ	wazii	wazii		wazee										
2622	266	260	c	2	يَحُكُوْ	yaḥukuu	yahukuu		ya huku										
2654	269	263	d	3	يُنْدِيَا	yundiyā	yundiya		wa ndiya	*			-jia		n		b		
2667	271	265	a	2	يَكُڤُلِ	yakuvuli	yakuvuli		ya kuvuli				-vuli		n		b		
2651	269	263	c	3	نِمْبَلِ	nimbali	nimbali		ni mbali				-bali		adv		b		
2596	263	257	d	2	كَوَپِجِيَا	kawapijiyā	kawapijiya						-pig-		v		b	ka	
2620	266	260	b	2	نِسَلَامَ	nisalāma	nisalama		ni salama				s-l-m		n		a		
2694	273	267	c	2	نِكُمْوِتُنِ	nikumwituni	nikumwituni		niko mwituni										
2657	270	264	a	3	يَڠَاانِ	yagāāni	yagaani		yangani										
2686	272	266	d	3	رِجِيَا	rijiyā	rijiya		~										
2588	263	257	a	2	حِيُ	ḥiyu	hiyu		hiyo				h-		dem		ba		
2603	264	258	c	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
2683	272	266	c	3	كَيْوَاتَ	kaywāta	kaywata		kaiwata				-ach-		verb		ba	ka	
2605	264	258	d	2	كَمْپُكِيْيَا	kampukı̄yā	kampukiya		kampokeya				-pok-		verb		ba	ka	
2607	265	259	a	2	كِتَ	kita	kita		keta				-let-		verb		ba	ka	
2643	268	262	d	1	بُنَ	buna	buna		mbona				-on-		conj		ba		
2604	264	258	d	1	مْكُنُ	mkunu	mkunu		mkono				-kono		noun		ba		
2593	263	257	c	1	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni				-lango		noun		ba		
2662	270	264	c	2	مُيُوْنِ	muyūni	muyuni		moyoni				-oyo		noun		ba		
2659	270	264	b	2	مْتِرِ	mtiri	mtiri		mtende				-tende		noun		ba		
2623	266	260	c	3	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
2639	268	262	b	2	نْدِيَنِ	ndiyani	ndiyani		ndiani				-jia		noun		ba		
2638	268	262	b	1	نِمِكُغُوْجَا	nimikughūjā	nimikughuja		nimekungoja				-ngoj-		verb		ba	me	
2685	272	266	d	2	نِسِپُ	nisipu	nisipu		nisiporejeya				r-j-3		verb		ar	ki	
2619	266	260	b	1	نِتُكَكُوْ	nitukakuu	nitukakuu		nitokako				-to-		verb		ba	a	
2590	263	257	b	1	پَپُ	papu	papu		papo				h-		dem		ba		
2621	266	260	c	1	سِيُوِ	siyuwi	siyuwi		siyui				-ju-		verb		ba	a	
2627	267	261	a	1	تِنَ	tina	tina		tena				tena		conj		ba		
2653	269	263	d	2	اُرِفُ	urifu	urifu		urefu				-refu		noun		ba		
2610	265	259	b	2	اُتُكَكُ	utukaku	utukaku		utokako				-to-		verb		ba	a	
2632	267	261	c	1	وَعَلَيْكَ	waʿalayka	waalayka		wa-aleka				a-l-k		pron		ar		
2613	265	259	c	3	وَاكُ	wāku	waku		wako				-ako		poss		ba		
2640	268	262	c	1	وَلِتُكَ	walituka	walituka		walitoka				-to-		verb		ba	li	
2661	270	264	c	1	يَلِنِتُكَ	yalinituka	yalinituka		yalinitoka				-to-		verb		ba	li	
2641	268	262	c	2	زِؤُ	ziu	ziu		zeo				-eo		noun		ba		
2663	270	264	d	1	يَلِيْ	yalii	yalii		yale				-li		dem		ba		
2617	266	260	a	1	اَكَمْجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
2601	264	258	b	3	حَيْدَارِ	ḥaydāri	haydari		Haidari				h-d-r		title		ar		
2645	269	263	a	1	اَكَمْجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
2628	267	261	a	2	بَابَ	bāba	baba						baba		noun		ba		
2647	269	263	b	1	اَصُبُحِ	aṣubuḥi	asubuhi						sw-b-hh		noun		ar		
2650	269	263	c	2	بَبَا	babā	baba						baba		noun		ba		
2642	268	262	c	3	ڠَانِ	gāni	gani						nini		qual		ba		
2614	265	259	d	1	حَلِ	ḥali	hali						hh-a-l		noun		ar		
2671	271	265	c	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
2652	269	263	d	1	اِنَ	ina	ina						-ina		noun		ba		
2611	265	259	c	1	جُمْلَ	jumla	jumla						j-m-l		noun		ar		
2592	263	257	b	3	كَئَنْدَامَ	kaandāma	kaandama						-andam-		verb		ba	ka	
2589	263	257	a	3	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
2618	266	260	a	2	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
2656	270	264	a	2	كِپَتَ	kipata	kipata						-pat-		verb		ba	ki	
2626	266	260	d	3	كُكْوَمْبِيَا	kukwambiyā	kukwambiya						-amb-		verb		ba	ku	
2625	266	260	d	2	لَا	lā	la						-a		ref		ba		
2649	269	263	c	1	لَكِنِ	lakini	lakini						l-k-n		conj		ar		
2629	267	261	a	3	مُعَلِيْمُ	muʿalı̄mu	mualimu						3-l-m		noun		ar		
2648	269	263	b	2	نَلِيْصَلِ	nalı̄ṣali	nalisali						sw-l-w		verb		ar	li	
2665	270	264	d	3	نَمْبِيَا	nambiyā	nambiya		~				-amb-		verb		ba	imp	
2655	270	264	a	1	نَمِ	nami	nami						na		conj		ba		
2591	263	257	b	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
2658	270	264	b	1	پَانَ	pāna	pana						-na		have		ba		
2646	269	263	a	2	قَوْلِ	qawli	qauli						q-w-l		noun		ar		
2718	275	269	d	1	صَلٰ	ṣalä	sala						sw-l-w		noun		ar		
2595	263	257	d	1	سَلَامُ	salāmu	salamu						s-l-m		noun		ar		
2624	266	260	d	1	سِپَتِ	sipati	sipati						-pat-		verb		ba	a	
2631	267	261	b	2	وَاكُسَلِمُ	wākusalimu	wakusalimu						s-l-m		verb		ar	a	
2594	263	257	c	2	اَكَيْكُمَ	akaykuma	akaykuma		akaikoma				-kom-		v		b	ka	
2635	267	261	d	2	اَكِپُكِيْيَا	akipukı̄yā	akipukiya		akipokeya				-pok-		v		b	ki	
2630	267	261	b	1	نَمَمَ	namama	namama		na mama				mama		n		b		
2674	271	265	d	2	اِمِنِپُتِيْيَا	iminiputı̄yā	iminiputiya		imenipoteya				-pote-		v		b	me	
2734	277	271	c	1	كَلَمَ	kalama	kalama						k-l-m		n		a		
2726	276	270	c	2	يَكُيَ	yakuya	yakuya		ya kuya				-j-		v		b	ku	
547	55	55	d	2	هُيَسِكِلِيَا	huyasikiliyā	huyasikiliya					= \\Swa{-fika}.	-siki-		v		b	me	y
2721	276	270	a	2	يَأَظُهُرِ	yaaẓuhuri	yaadhuhuri		ya adhuhuri										
1292	134	129	d	2	هُيَسِكِلِيَا	huyasikiliyā	huyasikiliya						-siki-		v		b	me	y
2751	279	273	b	1	وَسِيُوْنِ	wasiyūni	wasiyuni												
2756	279	273	d	2	وِنْڠِ	wingi	wingi		wengi										
2717	275	269	c	3	كِكُمَ	kikuma	kikuma		kikoma				-kom-		v		b	ki	
2757	279	273	d	3	سِمْمُيَا	simmuyā	simmuya		si mmoya										
2741	278	272	b	1	سِحَبَ	siḥaba	sihaba		si haba										
2746	278	272	c	3	اَدَامَ	adāma	adama		~										
2759	280	274	a	2	اُپُ	upu	upu		upo										
2712	275	269	b	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
2748	278	272	d	2	هُمْزِغِيَا	humzighiyā	humzighiya		humzengeya				-zeng-		verb		ba	hu	
2678	272	266	b	1	اِيُ	iyu	iyu						juu		adv		ba		
2719	275	269	d	2	اِمِسِمَمِيَا	imisimamiyā	imisimamiya		imesimamiya				-simam-		verb		ba	me	
2677	272	266	a	3	كَيِتَ	kayita	kayita		kaeta				-let-		verb		ba	ka	
2737	277	271	d	2	كَنِنَ	kanina	kanina		kanena				-nen-		verb		ba	ka	
2681	272	266	c	1	اِلِيْ	ilii	ilii		ile				ili		conj		ba		
2708	274	268	d	3	كَرِجِيَا	karijiyā	karijiya		karejeya				r-j-3		verb		ar	ka	
2710	275	269	a	2	كَرُدِيَا	karudiyā	karudiya		karudia				r-d-d		verb		ar	ka	
2768	281	275	a	1	مْكُوْنُ	mkūnu	mkunu		mkono				-kono		noun		ba		
2691	273	267	b	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
2736	277	271	d	1	نَيِ	nayi	nayi		naye				na		conj		ba		
2779	282	276	a	2	رَانِ	rāni	rani		ndani				ndani		adv		ba		
2703	274	268	c	1	نِتَرُدِ	nitarudi	nitarudi						r-d-d		verb		ar	ta	
2722	276	270	b	1	رِپُ	ripu	ripu		ndipo				ni		focus		ba		
2711	275	269	a	3	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
2688	273	267	a	2	نِنْرَاوُ	ninrāwu	ninrawu		nendao				-end-		verb		ba	a	
2729	276	270	d	2	نِمِكْوَمْبِيَا	nimikwambiyā	nimikwambiya		nimekwambiya				-amb-		verb		ba	me	
2704	274	268	c	2	پَلِيْ	palii	palii		pale				-le		dem		ba		
2705	274	268	c	3	پَنْغُ	panghu	panghu		pangu				-angu		poss		ba		
2715	275	269	c	1	پِنْيِ	pinyi	pinyi		penye				-enye		noun		ba		
2692	273	267	b	3	سِئِيُوْنِ	siiyūni	siiyuni		siioni				-on-		verb		ba	a	
2735	277	271	c	2	اُمِسُمْبُكَ	umisumbuka	umisumbuka		umesumbuka				-sumb-		verb		ba	me	
2754	279	273	c	2	وَڠَلِمْزِدِ	wagalimzidi	wagalimzidi		wangalimzidi				z-a-d		verb		ar	ngali	
2699	274	268	a	3	زَانْغُ	zānghu	zanghu		zangu				-angu		poss		ba		
2727	276	270	c	3	اَخِيْرِ	akhı̄ri	ahiri						kh-kh-r		adj		ar		
2780	282	276	a	3	الِپُفِيْكَ	ālipufı̄ka	alipufika		alipofika				-fik-		verb		ba	li	
2758	280	274	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
2695	273	267	d	1	زُاتِ	zuāti	zuati	zūte	zote				-ote		qual		ba		
2771	281	275	b	2	اَكَفَهَمَ	akafahama	akafahama						f-h-m		verb		ar	ka	
2733	277	271	b	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
2720	276	270	a	1	اَوَالِ	awāli	awali						w-w-l		noun		ar		
2689	273	267	a	3	بَرَانِ	barāni	barani						b-r-r		noun		ar		
2698	274	268	a	2	فِكِرَا	fikirā	fikira						f-k-r		verb		ar	imp	
2701	274	268	b	2	ڠُوْ	guu	guu						-guu		noun		ba		
2747	278	272	d	1	حَطَرِ	ḥaṭari	hatari						kh-tw-r		noun		ar		
2725	276	270	c	1	هُجَ	huja	huja						hh-w-j		noun		ar		
2700	274	268	b	1	كَلَنْدَمَ	kalandama	kalandama						-andam-		verb		ba	ka	
2680	272	266	b	3	كَپِتَ	kapita	kapita						-pit-		verb		ba	ka	
2697	274	268	a	1	كِپِجَ	kipija	kipija						-pig-		verb		ba	ki	
2714	275	269	b	3	كَيَنْدَمَ	kayandama	kayandama						-andam-		verb		ba	ka	
2742	278	272	b	2	كُيَ	kuya	kuya						-j-		verb		ba	ku	
2702	274	268	b	3	لَنْڠُ	langu	langu						-angu		poss		ba		
2753	279	273	c	1	كْوَنِ	kwani	kwani						nini		int		ba		
2728	276	270	d	1	مَعَنَ	maʿana	maana						m-3-n		noun		ar		
2738	277	271	d	3	نَبِيْيَا	nabı̄yā	nabiya		Nabiya				n-b-y		title		ar		
2707	274	268	d	2	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
2673	271	265	d	1	سَعَ	saʿa	saa						s-a-3		noun		ar		
2706	274	268	d	1	سَسَا	sasā	sasa						sasa		adv		ba		
2743	278	272	b	3	سَلَامَ	salāma	salama						s-l-m		noun		ar		
2687	273	267	a	1	سُرَا	surā	sura						sw-w-r		noun		ar		
2676	272	266	a	2	اُوِنْڠَ	uwinga	uwinga						-inga		noun		ba		
2755	279	273	d	1	وَتُ	watu	watu						-tu		noun		ba		
2769	281	275	a	2	اَكَتَزَامَ	akatazāma	akatazama						-tazam-		v		b	ka	
2730	277	271	a	1	اَكِسَا	akisā	akisa						-ish-		v		b	ki	
2675	272	266	a	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
2745	278	272	c	2	اَلِيُ	aliyu	aliyu		aliyoandama				-andam-		v		b	li	
2798	284	278	b	1	َمِنِيُزَا	aminiyuzā	aminiyuza		ameniuza				-uz-		v		b	me	
2818	286	280	c	1	اَمْسِكِيَ	amsikiya	amsikiya		amsikia				-siki-		v		b	a	
2795	283	277	d	3	وَنْدِيَا	wandiyā	wandiya		wa ndiya				-jia		n		b		
2788	283	277	a	2	سِكُمَكِنِيْكَ	sikumakinı̄ka	sikumakinika		si kumakinika										
2837	288	282	c	1	كَمْرُدِشَا	kamrudishā	kamrudisha						r-d-d		v		a	ka	
2786	282	276	d	2	هُوَاتِلِيَ	huwātiliya	huwatiliya						-ach-		v		b	hu	
2809	285	279	c	1	نِمْتُمِيى	nimtumı̄ı̄	nimtumiyi		nimtumie										
721	73	72	d	2	كُمْكُرُبِيْيَا	kumkurubı̄yā	kumkurubiya						q-r-b		v		a	ku	
2796	284	278	a	1	نَزِؤُ	naziu	naziu	naziūlı̄zā	na zeo				-eo		n		b		
2826	287	281	c	1	وَلِيُكُ	waliyuku	waliyuku		walioko										
2767	280	274	d	2	عَلِيَا	ʿaliyā	aliya		Aliya				3-l-y		persn		ar		
2797	284	278	a	2	الِيْزَاتُكَ	ālı̄zātuka	alizatuka		alizotoka	*			-to-		verb		ba	li	
2749	279	273	a	1	اَمِمْكِيْڠَ	amimkı̄ga	amimkiga		amemkinga				-king-		verb		ba	a	
2762	280	274	b	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
2781	282	276	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
2799	284	278	b	2	حَقِيْكَ	ḥaqı̄ka	haqika		hakika				hh-q-q		adv		ar		
2810	285	279	c	2	حَسَانِ	ḥasāni	hasani		Hasani				hh-s-n		persn		ar		
2773	281	275	c	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima				h-sh-m		title		ar		
2808	285	279	b	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni				hh-s-y-n		persn		ar		
2839	288	282	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
2835	288	282	b	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
2852	290	284	b	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia				-amb-		verb		ba	ka	
2766	280	274	d	1	كَمْوامْكُوَا	kamwāmkuwā	kamwamkuwa		kamwamkua				-amku-		verb		ba	ka	
2760	280	274	a	3	كِتِنِ	kitini	kitini						-ti		noun		ba		
2874	292	286	b	2	كِيْكُ	kı̄ku	kiku		kiko				LOC		loc		ba		
2814	286	280	a	2	كِتُكَ	kituka	kituka		kitoka				-to-		verb		ba	ki	
2853	290	284	b	2	كْوِ	kwi	kwi		kwa	*			-a		ref		ba		
2803	284	278	d	1	مَنِنُيِ	maninuyi	maninuyi		manenoye				-nen-		noun		ba		
2842	289	283	a	2	مَتَمْكُ	matamku	matamku		matamko				-tamk-		noun		ba		
2764	280	274	c	2	مْكُنُ	mkunu	mkunu		mkono				-kono		noun		ba		
2791	283	277	c	1	مُيُ	muyu	muyu		moyo				-oyo		noun		ba		
2774	281	275	d	1	نِرَا	nirā	nira		nenda				-end-		verb		ba	a	
2777	281	275	d	4	مُيَا	muyā	muya		moya				-oyo		noun		ba		
2784	282	276	c	2	نِمِكِپِكَ	nimikipika	nimikipika		nimekipika				-pik-		verb		ba	me	
2750	279	273	a	2	وَدُدُ	wadudu	wadudu		Wadudi	*			w-d-d		godn		ar		
2830	287	281	d	2	وَكَمْپُكِيْيَا	wakampukı̄yā	wakampukiya		wakampokeya				-pok-		verb		ba	ka	
2829	287	281	d	1	وُتِ	wuti	wuti		wote				-ote		qual		ba		
2863	291	285	b	1	زِوُ	ziwu	ziwu		zeo				-eo		noun		ba		
2850	290	284	a	1	اَكَئِنُكَ	akainuka	akainuka						-inu-		verb		ba	ka	
2761	280	274	b	1	اَكَمْوِپُكَ	akamwipuka	akamwipuka		akamwepuka				-epuk-		verb		ba	ka	
2816	286	280	b	1	اَلِپُكِتِ	alipukiti	alipukiti		alipoketi				-ka-		verb		ba	li	
2782	282	276	b	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
2823	287	281	a	2	اَكَنُظُمُ	akanuẓumu	akanudhumu						n-dw-m		verb		ar	ka	
2790	283	277	b	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
2783	282	276	c	1	ػَكُلَ	kʲakula	chakula						-l-		noun		ba		
2873	292	286	b	1	ػَكُلَ	kʲakula	chakula						-l-		noun		ba		
2792	283	277	c	2	هُمْپَپَتِكَا	humpapatikā	humpapatika						-pap-		verb		ba	hu	
2789	283	277	b	1	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
2802	284	278	c	3	هُمْپُلِكَا	humpulikā	humpulika						-pulik-		verb		ba	hu	
2807	285	279	b	1	حُمْصُبِرِ	ḥumṣubiri	humsubiri						sw-b-r		verb		ar	hu	
2804	284	278	d	2	هُتْوَامْبِيَا	hutwāmbiyā	hutwambiya						-amb-		verb		ba	hu	
2838	288	282	c	2	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
2840	288	282	d	2	كَمْوَمْبِيَا	kamwambiyā	kamwambiya						-amb-		verb		ba	ka	
2817	286	280	b	2	كِتِيْنِ	kitı̄ni	kitini						-ti		noun		ba		
2812	285	279	d	2	كُمْوَنْدَمِيَا	kumwandamiyā	kumwandamiya						-andam-		verb		ba	ku	
2824	287	281	b	1	كُوَاپِسِيْزَا	kuwāpisı̄zā	kuwapisiza						-pit-		verb		ba	ku	
2763	280	274	c	1	كْوَ	kwa	kwa						-a		ref		ba		
2787	283	277	a	1	كْوَا	kwā	kwa						-a		ref		ba		
2793	283	277	d	1	كْوَ	kwa	kwa						-a		ref		ba		
2776	281	275	d	3	مَرَ	mara	mara						m-r-r		noun		ar		
2820	286	280	d	1	سَلَامُ	salāmu	salamu						s-l-m		noun		ar		
2800	284	278	c	1	نَا	nā	na						ni		exist		ba		
2836	288	282	b	2	سَلَامَ	salāma	salama						s-l-m		noun		ar		
2825	287	281	b	2	سَلَامُ	salāmu	salamu						s-l-m		noun		ar		
2801	284	278	c	2	سَسَا	sasā	sasa						sasa		adv		ba		
2828	287	281	c	3	تِمَامُ	timāmu	timamu						t-m-m		noun		ar		
2794	283	277	d	2	اُثَقِيْلِ	uthaqı̄li	uthaqili						th-q-l		noun		ar		
2811	285	279	d	1	مِكْوِرَ	mikwira	mikwira		mekwenda				-end-		v		b	me	
2848	289	283	d	1	اَيُوَوُ	ayuwawu	ayuwawu		ayuao				-ju-		v		b	a	
2869	291	285	d	2	سِيَرِجِيَا	siyarijiyā	siyarijiya		sijarejeya										
2917	296	290	d	1	وَوُ	wawu	wawu		wao				-ao		pron		b		
2731	277	271	a	2	كُمپُلِيْكَ	kumpulı̄ka	kumpulika						-pulik-		v		b	ku	
2015	207	201	b	1	كُمُحِمِدِ	kumuḥimidi	kumuhimidi						hh-m-d		v		a	ku	
50	5	5	d	2	كُمُوَاتِيَا	kumuwātiyā	kumuwatiya					\\q{I succeeded in leaving it with her}.	-ach-		v		b	ku	
2318	235	229	d	2	كُمُوُمْبِيَ	kumuwumbiya	kumuwumbiya		kumuombeya				-omb-		v		b	ku	
2849	289	283	d	2	نِجَلِيَا	nijaliyā	nijaliya		ni Jaliya				j-l-l		godn		a		
2897	294	288	d	2	وَكَهُظُرِيَا	wakahuẓuriyā	wakahudhuriya												
2927	297	291	d	2	اَكَسُكُتُلِيَا	akasukutuliyā	akasukutuliya												
2914	296	290	b	2	اَلِوُپِيْكَ	aliwupı̄ka	aliwupika		aliupeka				-pelek-		verb		ba	li	
2923	297	291	b	3	اَمِنِ	amini	amini		Amini				a-m-n		title		ar		
2907	295	289	d	2	اَسِلِ	asili	asili		asile				-l-		verb		ba	past	
2872	292	286	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
2881	293	287	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
2895	294	288	c	2	هَيْدَارِ	haydāri	haydari		Haidari				h-d-r		title		ar		
2867	291	285	c	3	حَقِيْكَ	ḥaqı̄ka	haqika		hakika				hh-q-q		adv		ar		
2878	292	286	d	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
2854	290	284	b	3	خِيْرِنِ	khı̄rini	hirini		herini				kh-y-r		noun		ar		
2859	290	284	d	2	هُتُكَ	hutuka	hutuka		hutoka				-to-		verb		ba	hu	
2877	292	286	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
2879	292	286	d	2	كَكِتِ	kakiti	kakiti		kaketi				-ka-		verb		ba	ka	
2870	292	286	a	1	كَبَ	kaba	kaba		kamba				-amb-		verb		ba	ka	
2856	290	284	c	2	كَنِنَ	kanina	kanina		kanena				-nen-		verb		ba	ka	
2921	297	291	b	1	كَپُوَا	kapuwā	kapuwa		kapoa				-po-		verb		ba	ka	
2889	293	287	d	2	كَوَاپِكِيَا	kawāpikiyā	kawapikiya		kawapekeya				-pelek-		verb		ba	ka	
2925	297	291	c	2	كِكُمْبِنِ	kikumbini	kikumbini		kikombeni				-komb-		noun		ba		
2900	295	289	a	3	مْفُنُ	mfunu	mfunu		mfano	*			-fan-		noun		ba		
2846	289	283	c	2	مْبِيِ	mbiyi	mbiyi		mbee				-bele		adv		ba		
2902	295	289	b	2	مِكُنُ	mikunu	mikunu		mikono				-kono		noun		ba		
2913	296	290	b	1	مكُنُ	mkunu	mkunu		mkono				-kono		noun		ba		
2865	291	285	c	1	سَعَ	saʿa	saa						s-a-3		noun		ar		
2926	297	291	d	1	نَيِ	nayi	nayi		naye				na		conj		ba		
2832	288	282	a	2	رَانِ	rāni	rani		ndani				ndani		adv		ba		
2847	289	283	c	3	نِنْرَاكُ	ninrāku	ninraku		nendako				-end-		verb		ba	a	
2844	289	283	b	2	نِتُكَكُ	nitukaku	nitukaku		nitokako				-to-		verb		ba	a	
2868	291	285	d	1	نْيُبَنِ	nyubani	nyubani		nyumbani				-umb-		noun		ba		
2892	294	288	b	1	پَمُيَا	pamuyā	pamuya		pamoya				-moja	along with Ja'far	adv		ba		
2845	289	283	c	1	سِيُوِ	siyuwi	siyuwi		siyui				-ju-		verb		ba	a	
2875	292	286	b	3	طَيَرِا	ṭayariā	tayaria	ṭayarī	tayari				tw-y-r		adj		ar		
2906	295	289	d	1	وَلَا	walā	wala						wala		conj		ba		
2876	292	286	c	1	تُمْلِشِ	tumlishi	tumlishi		tumlishe				-l-		verb		ba	subj	
2936	298	292	d	1	تُمْوَ	tumwa	tumwa		Tumwa				-tum-		title		ba		
2884	293	287	b	2	اُپِسِ	upisi	upisi		upesi				-pesi		noun		ba		
2898	295	289	a	1	وَكَكِتِ	wakakiti	wakakiti		wakaketi				-ka-		verb		ba	ka	
2896	294	288	d	1	وُتِيْ	wutii	wutii		wote				-ote	they all gathered together.	qual		ba		
2864	291	285	b	2	زِمِأَخِيْرِكَ	zimiakhı̄rika	zimiahirika		zimeahirika				kh-kh-r		verb		ar	me	
2862	291	285	a	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
2916	296	290	c	2	اَلِئِيْنُكَ	aliı̄nuka	aliinuka						-inu-		verb		ba	li	
2937	298	292	d	2	اَكَيْتُكِيْيَا	akaytukı̄yā	akaytukiya		akaitokeya				-to-		verb		ba	ka	
2947	299	293	d	2	اَكَوَاپِكِيْيَا	akawāpikı̄yā	akawapikiya		akawapekeya				-pelek-		verb		ba	ka	
2912	296	290	a	4	حَقِيْكَ	ḥaqı̄ka	haqika		hakika				hh-q-q		adv		ar		
2886	293	287	c	1	ػَكُلَ	kʲakula	chakula						-l-		noun		ba		
2903	295	289	c	1	جُمْلَ	jumla	jumla						j-m-l		noun		ar		
2960	301	295	c	1	كَمَ	kama	kama						k-m-a		conj		ar		
2920	297	291	a	2	كِتِيْنِ	kitı̄ni	kitini						-ti		noun		ba		
2831	288	282	a	1	كْوَا	kwā	kwa						-a		ref		ba		
2883	293	287	b	1	كْوَ	kwa	kwa						-a		ref		ba		
2909	296	290	a	1	مَرَا	marā	mara						m-r-r		noun		ar		
2857	290	284	c	3	كْوَانِ	kwāni	kwani						nini		int		ba		
2860	290	284	d	3	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
2871	292	286	a	2	سُبِرِ	subiri	subiri						sw-b-r		verb		ar	imp	
2910	296	290	a	2	تَتُ	tatu	tatu						-tatu		num		ba		
2866	291	285	c	2	تِسِيَا	tisiyā	tisiya		tisia				t-s-3		num		ar		
2904	295	289	c	2	وَتُ	watu	watu						-tu		noun		ba		
2915	296	290	c	1	اَكِسَ	akisa	akisa						-ish-		v		b	ki	
2887	293	287	c	2	اَكَكِيْوِكَ	akakı̄wika	akakiwika		akakiweka				-wek-		v		b	ka	
2929	298	292	a	2	يَكُخِتَرِ	yakukhitari	yakuhitari		ya kuhitari										
2992	304	298	c	2	اَمِكَصِيْرِكَ	amikaṣı̄rika	amikasirika		amekasirika				hh-s-r		v		b	me	
2943	299	293	b	3	وَمِكْوِسَا	wamikwisā	wamikwisa		wamekwisa				-ish-		v		b	me	
2993	304	298	d	1	بِبِيَنْغُ	bibiyanghu	bibiyanghu		bibi yangu				b-y-b		n		a		
2953	300	294	c	2	يَنْيُمَ	yanyuma	yanyuma		ya nyuma				nyuma		adv		b		
2970	302	296	c	2	نَلُ	nalu	nalu		nalo										
2969	302	296	c	1	نِلُوْ	niluu	niluu		nilo										
3003	305	299	d	2	سِكُمْسِكِيَا	sikumsikiyā	sikumsikiya												
3037	309	303	b	4	پْوِكِ	pwiki	pwiki		pweke				peke		adv		b		
2991	304	298	c	1	مَمَ	mama	mama						mama		excl		ba		
2997	305	299	b	1	مِكَسِيْرِكَ	mikası̄rika	mikasirika		mekasirika										
2983	303	297	c	3	اَمِينِ	amı̄ni	amini		Amini				a-m-n		title		ar		
2932	298	292	b	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
2949	300	294	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3001	305	299	c	2	هَكُبَيِنِ	hakubayini	hakubayini		hakubaini				b-a-n		verb		ar	a	
2930	298	292	b	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
2977	303	297	a	2	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn		ar		
2935	298	292	c	3	حِيْرِ	ḥı̄ri	hiri		heri				kh-y-r		noun		ar		
3008	306	300	b	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni				hh-s-y-n		persn		ar		
2995	305	299	a	1	كَمُوُلِيْزَ	kamuwulı̄za	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
2931	298	292	b	2	كَپُوَ	kapuwa	kapuwa		kapoa				-po-		verb		ba	ka	
2978	303	297	b	1	كَتُكَ	katuka	katuka		katoka				-to-		verb		ba	ka	
2979	303	297	b	2	كُلِ	kuli	kuli		kule				-le		dem		ba		
2938	299	293	a	1	كُتُكَ	kutuka	kutuka		kutoka				-to-	When the Prophet had gone,	verb		ba	ku	
2934	298	292	c	2	كْوِ	kwi	kwi		kwa	*			-a		ref		ba		
3005	306	300	a	2	كْوَاكِ	kwāki	kwaki		kwake				-ake		poss		ba		
2954	300	294	d	1	مَيُوْتُ	mayūtu	mayutu		mayuto				-jut-	remorse for it came back to her.	noun		ba		
2958	301	295	b	1	مْبُنَ	mbuna	mbuna		mbona				-on-		conj		ba		
3019	307	301	b	3	مْوِيْنِ	mwı̄ni	mwini		muini				-ji		noun		ba		
2941	299	293	b	1	نَوُ	nawu	nawu		nao				na	and they had finished eating,	conj		ba		
2974	302	296	d	2	نَوِ	nawi	nawi		nawe				na		conj		ba		
3006	306	300	a	3	نْدِيَانِ	ndiyāni	ndiyani		ndiani				-jia		noun		ba		
2963	301	295	d	2	نِكِكْوَنْغَلِيَ	nikikwanghaliya	nikikwanghaliya		nikikwangaliya				-anga-		verb		ba	ki	
2928	298	292	a	1	تَمْبُوُ	tambuwu	tambuwu		tambuu				n-b-l		noun		ar		
2939	299	293	a	2	تُمْوَ	tumwa	tumwa		Tumwa				-tum-		title		ba		
2950	300	294	b	1	پِتِ	piti	piti		pete				-pet-	the ring, and looked at it --	noun		ba		
2905	295	289	c	3	وَتَنُ	watanu	watanu		watano				-a		ref		ba		
2966	302	296	b	1	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
2962	301	295	d	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
2985	303	297	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya						-amb-		verb		ba	ka	
3007	306	300	b	1	اَكَمُوُنَ	akamuwuna	akamuwuna		akamuona				-on-		verb		ba	ka	
2981	303	297	c	1	اَكِنْرَّا	akinrrā	akinrra		akenda				-end-		verb		ba	ki	
2965	302	296	a	2	اَكَرَدِيْدِ	akaradı̄di	akaradidi						r-d-d		verb		ar	ka	
2957	301	295	a	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
2990	304	298	b	3	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
2933	298	292	c	1	اَكَوَاَڠَا	akawaagā	akawaaga						-ag-		verb		ba	ka	
2918	296	290	d	2	اَكَوَاتِيْيَا	akawātı̄yā	akawatiya						-ti-		verb		ba	ka	
2976	303	297	a	1	اَكِسِكِيَا	akisikiyā	akisikiya						-siki-		verb		ba	ki	
2968	302	296	b	3	بَعِيْدِ	baʿı̄di	baidi						b-3-d		adv		ar		
2972	302	296	c	4	بُدِ	budi	budi						b-d-d		noun		ar		
3002	305	299	d	1	حُجَا	ḥujā	huja						hh-w-j		noun		ar		
3018	307	301	b	2	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
2973	302	296	d	1	اِلَا	ilā	ila						2-l-a		conj		ar		
2987	304	298	a	2	كُفِيكَ	kufı̄ka	kufika						-fik-		verb		ba	ku	
2942	299	293	b	2	كُلَ	kula	kula						k-l-l		pron		ar		
3017	307	301	b	1	كُنَ	kuna	kuna						-na		have		ba		
3004	306	300	a	1	كُرُدِ	kurudi	kurudi						r-d-d		verb		ar	ku	
2982	303	297	c	2	كْوَ	kwa	kwa						-a		ref		ba		
2980	303	297	b	3	نْيُمْبَانِ	nyumbāni	nyumbani						-umb-		noun		ba		
2994	304	298	d	2	نَكْوَمْبِيَا	nakwambiyā	nakwambiya						-amb-		verb		ba	ku	
2971	302	296	c	3	سِنَا	sinā	sina						-na		have		ba		
2975	302	296	d	3	تَكْوَمْبِيَ	takwambiya	takwambiya						-amb-		verb		ba	ta	
2955	300	294	d	2	يَكَمْرُدِيَا	yakamrudiyā	yakamrudiya						r-d-d		verb		ar	ka	
2951	300	294	b	2	اَكَيْتَزَامَ	akaytazāma	akaytazama		akaitazama				-tazam-		v		b	ka	
2940	299	293	a	3	اَكِسَا	akisā	akisa						-ish-		v		b	ki	
2967	302	296	b	2	هِنِيْرِّ	hinı̄rri	hinirri		henendi				-end-		v		b	pres	y
2945	299	293	c	2	اَكَيْتُكُسَا	akaytukusā	akaytukusa		akaitokosa				-tokot-		v		b	ka	
3020	307	301	c	1	اُنِپِ	unipi	unipi		unipe										
3023	307	301	d	2	اَمِزُوَمْبِيَا	amizuwambiyā	amizuwambiya		amezoambiya				-amb-		v		b	me	
3048	310	304	c	1	اُمِكُيَ	umikuya	umikuya		umekuya				-j-		v		b	me	
3075	313	307	a	2	كَنُظُمُ	kanuẓumu	kanudhumu						n-dw-m		v		a	ka	
3042	309	303	d	2	مِئِنِيْيَا	miinı̄yā	miiniya		meeneya										
3063	311	305	d	2	يَكُتُمْوِلِيَا	yakutumwiliyā	yakutumwiliya		ya kutomweleya				-ele-		v		b	ku	y
3039	309	303	c	2	سِخِيْرِ	sikhı̄ri	sihiri		si heri										
3021	307	301	c	2	يَتَمْكِيْنِ	yatamkı̄ni	yatamkini		ya tamkini				m-k-n		adv		a		
3058	311	305	b	3	فَصِيْرِا	faṣı̄riā	fasiria	faṣı̄rī	~										
3129	318	312	c	1	هُيِسِ	huyisi	huyisi		huisi				-is-		v		b	a	y
3065	312	306	a	2	ككُيَ	kkuya	kkuya		kikuya	*			-j-		v		b	ki	
3068	312	306	b	2	هُكُوْظِيْيَنِ	hukūẓı̄yani	hukudhiyani		hukudhia-ni										
3070	312	306	c	2	اُتَمْوِكَ	utamwika	utamwika		utamweka										
3077	313	307	b	2	سِمْوَانَ	simwāna	simwana		si mwana										
3052	310	304	d	3	عَلِيْيَا	ʿalı̄yā	aliya		Aliya				3-l-y		persn		ar		
3047	310	304	b	3	اَنْصَارِا	anṣāriā	ansaria	anṣārī	Ansari				n-sw-r		title		ar		
3009	306	300	c	1	اَتِيْ	atii	atii		ati				ati		conj		ba		
3033	309	303	a	2	بَبَكِ	babaki	babaki		babake				baba		noun		ba		
3089	314	308	b	3	فَطييْمَ	faṭı̄yma	fatima		Fatima				f-t-m		persn		ar		
3055	311	305	a	3	حَِْدَارِ	ḥaidāri	haidari		Haidari				h-d-r		title		ar		
3053	311	305	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3073	312	306	d	2	هَتُتِمْبِيَ	hatutimbiya	hatutimbiya		hatotembeya				-temb-		verb		ba	ta	
3087	314	308	b	1	حِيْلَ	ḥı̄la	hila		hela				hela		conj		ba		
3067	312	306	b	1	هِلُ	hilu	hilu		hilo				h-		dem		ba		
3022	307	301	d	1	هِيُ	hiyu	hiyu		hiyo				h-		dem		ba		
2999	305	299	b	3	نِنِ	nini	nini						nini		int		ba		
3016	307	301	a	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni				hh-s-y-n		persn		ar		
3049	310	304	c	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
3032	309	303	a	1	كَمُوُلِيْزَ	kamuwulı̄za	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
3086	314	308	a	3	كَسِيْمَ	kası̄ma	kasima		kasema				-sem-		verb		ba	ka	
3043	310	304	a	1	كُمِپَنَنَ	kumipanana	kumipanana		kumepanana				-p-		verb		ba	me	
3013	306	300	d	2	كْوِنُ	kwinu	kwinu		kwenu				-enu		poss		ba		
3062	311	305	d	1	مَمْبُوْ	mambuu	mambuu		mambo				-amb-		noun		ba		
3051	310	304	d	2	مَوُلَنَا	mawulanā	mawulana		Maulana				a-a-l		title		ar		
3132	318	312	d	2	كْوِلِ	kwili	kwili		kweli				-le		dem		ba		
3010	306	300	c	2	مِكُيَ	mikuya	mikuya		mekuya				-j-		verb		ba	me	
3011	306	300	c	3	مْڠِيْنِ	mgı̄ni	mgini		mgeni				-geni		noun		ba		
3025	308	302	a	2	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni				-lango		noun		ba		
3079	313	307	c	1	مُيُ	muyu	muyu		moyo				-oyo		noun		ba		
3072	312	306	d	1	مُوِنِ	muwini	muwini		muini				-ji		noun		ba		
3071	312	306	c	3	نْرَانِ	nrāni	nrani		ndani				ndani		adv		ba		
3088	314	308	b	2	نْدُوْ	nduu	nduu		ndoo				-j-		verb		ba	imp	
3056	311	305	b	1	نِنُ	ninu	ninu		neno				-nen-		noun		ba		
3040	309	303	c	3	نِتُكِيْ	nitukii	nitukii		nitoke				-to-		verb		ba	subj	
3036	309	303	b	3	هُنِيْنَ	hunı̄na	hunina		pweke				peke		adv		ba		
3105	316	310	a	2	تَمْكُ	tamku	tamku		tamko				-tamk-		noun		ba		
3034	309	303	b	1	اُ	u	u		una-ni				-na		have		ba		
3015	307	301	a	1	اَكَمْجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
3031	308	302	d	2	اَلِوَاپُتِيَا	aliwāputiyā	aliwaputiya		aliwapoteya				-pote-		verb		ba	li	
3024	308	302	a	1	اَكَپِتَ	akapita	akapita						-pit-		verb		ba	ka	
3026	308	302	b	1	اَكَرَادِدِ	akarādidi	akaradidi						r-d-d		verb		ar	ka	
3028	308	302	c	1	اَسَ	asa	asa						b-s		conj		ar		
3069	312	306	c	1	اَوْ	aw	au						2-w		conj		ar		
3080	313	307	c	2	حَنَا	ḥanā	hana						-na		have		ba		
3078	313	307	b	3	حَرَامُ	ḥarāmu	haramu						hh-r-m		adj		ar		
3041	309	303	d	1	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
3044	310	304	a	2	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
3061	311	305	c	3	خَطَرِ	khaṭari	hatari						kh-tw-r		noun		ar		
3092	314	308	c	3	حِيْمَ	ḥı̄ma	hima						h-m-m		noun		ar		
3012	306	300	d	1	هُكُ	huku	huku						h-		dem		ba		
3103	315	309	d	2	هُكْوَامبِيَا	hukwāmbiyā	hukwambiya						-amb-		verb		ba	hu	
3045	310	304	b	1	جَمِعِ	jamiʿi	jamii						j-m-3		noun		ar		
3091	314	308	c	2	كْوَا	kwā	kwa						-a		ref		ba		
3035	309	303	b	2	نَنِ	nani	nani		hunena				nani		int		ba		
3076	313	307	b	1	كْوَنِ	kwani	kwani						nini		int		ba		
3081	313	307	c	3	تَبَسَمُ	tabasamu	tabasamu						b-s-m		noun		ar		
3060	311	305	c	2	اُنَ	una	una						-na		have		ba		
3059	311	305	c	1	اُوِنْڠَ	uwinga	uwinga						-inga		noun		ba		
3050	310	304	d	1	وَ	wa	wa						w-a		conj		ar		
3046	310	304	b	2	يَا	yā	ya						y-a		excl		ar		
3094	314	308	d	2	كَمْوِنرِيَا	kamwinriyā	kamwinriya		kamwendeya				-end-		v		b	ka	
3098	315	309	b	2	اُنَقِصِيْرَانِ	unaqiṣı̄rāni	unaqisirani		una kisirani										
3107	316	310	b	2	سِطَبِيَا	siṭabiyā	sitabiya		si tabia										
3093	314	308	d	1	مْكِوَاكِ	mkiwāki	mkiwaki		mke wake				-ke		n		b		
3168	322	316	a	2	نِمْڠِيْنِ	nimgı̄ni	nimgini		ni mgeni				-geni		n		b		
3110	316	310	c	2	سِكِجَانَ	sikijāna	sikijana		si kijana										
3117	317	311	b	1	سِئِيْلِ	siı̄li	siili		si ile										
3102	315	309	d	1	يَمَتُڠُ	yamatugu	yamatugu		ya matungu				-chungu		n		b		
3154	320	314	d	2	نِمِكُوِلِيَا	nimikuwiliyā	nimikuwiliya		nimekueleya				-ele-		v		b	me	
899	92	90	d	2	كُمُوُرُكِيَا	kumuwurukiyā	kumuwurukiya		kumwondokeya			lit. \\q{even though he cried, a king /  his name leaving him}. \\Swa{sultani} can be applied to someone who is brave, or a master of his craft.  \\Swa{isimu} here means \\q{good name, reputation}.  To make a proper translation in English, we have to separate the conditionality from the verb \\Swa{-lia} and attach it to \\Swa{sultani}.  Ali is saying that even though the devil was a past master at deluding people, he met his match today and was thoroughly beaten.	-ondo-		v		b	ku	
3130	318	312	c	2	وَغَلِوُظِكَ	waghaliwuẓika	waghaliwudhika		wangaliudhika										
3172	322	316	c	2	پَمِيَاتِيْنِ	pamiyātı̄ni	pamiyatini		pa miyateni				m-a-y		num		a		
3149	320	314	b	2	سِيَكُ	siyaku	siyaku		si ya kubadali										
3150	320	314	b	3	بَدَالِ	badāli	badali		~										
3179	323	317	b	2	اَمِصِفِيْكَ	amiṣifı̄ka	amisifika		amesifika				sw-f-h		verb		ar	me	
3111	316	310	c	3	ػَكُ	kʲaku	chaku		chako				-ako		poss		ba		
3115	317	311	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3138	319	313	b	3	غَيْضِا	ghayḍiā	ghaydhia	ghayḍī	ghaidhi				gh-y-dw		noun		ar		
3113	316	310	d	2	هَيُ	hayu	hayu		hayo				h-		dem		ba		
3106	316	310	b	1	هِيُ	hiyu	hiyu		hiyo				h-		dem		ba		
3095	315	309	a	1	كَمُوُلِيْزَا	kamuwulı̄zā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
3146	320	314	a	2	كِتَ	kita	kita		keta				-let-		verb		ba	ka	
3083	313	307	d	2	كُمْوَاغَلِيَا	kumwāghaliyā	kumwaghaliya		kumwangaliya				-anga-		verb		ba	ku	
3097	315	309	b	1	بُنَ	buna	buna		mbona				-on-		conj		ba		
3139	319	313	c	1	مُيُ	muyu	muyu		moyo				-oyo		noun		ba		
3161	321	315	c	1	نَوِ	nawi	nawi		nawe				na		conj		ba		
3127	318	312	b	1	رِيُ	riyu	riyu		ndiyo				ni		focus		ba		
3136	319	313	b	1	نْزُّيَغُ	nzzuyaghu	nzzuyaghu		nduyangu	*			-dugu		noun		ba		
3162	321	315	c	2	نِرَاپُ	nirāpu	nirapu		nendapo				-end-		verb		ba	a	
3160	321	315	b	3	نْيُبَنِ	nyubani	nyubani		nyumbani				-umb-		noun		ba		
3166	321	315	d	3	پَمُيَ	pamuya	pamuya		pamoya				-moja		adv		ba		
3158	321	315	b	1	پِنْيِ	pinyi	pinyi		penye				-enye		noun		ba		
3147	320	314	a	3	قَوُلِ	qawuli	qawuli		qauli				q-w-l		noun		ar		
3096	315	309	a	2	اُنَنِ	unani	unani		una-ni				-na		have		ba		
3141	319	313	c	3	اُوِ	uwi	uwi		uwe				-w-		verb		ba	subj	
3118	317	311	b	2	پِتِ	piti	piti		pete				-pet-		noun		ba		
3164	321	315	d	1	وَػِنْرَا	wakʲinrā	wachinra		wachenda				-end-		verb		ba	ki	
3155	321	315	a	1	وَكَكِتِ	wakakiti	wakakiti		wakaketi				-ka-		verb		ba	ka	
3140	319	313	c	2	وَنْغُ	wanghu	wanghu		wangu				-angu		poss		ba		
3165	321	315	d	2	وُتِ	wuti	wuti		wote				-ote		qual		ba		
3108	316	310	b	3	يَكُ	yaku	yaku		yako				-ako		poss		ba		
3123	317	311	d	2	زِيَپُ	ziyapu	ziyapu		ziapo				-ap-		noun		ba		
3126	318	312	a	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
3100	315	309	c	2	اَكَبَ	akaba	akaba		akamba				-amb-		verb		ba	ka	
3188	324	318	b	1	اَلَپُكْوِنْرَ	alapukwinra	alapukwinra		alipokwenda	*			-end-		verb		ba	li	
3176	323	317	a	2	اَكِتِمُ	akitimu	akitimu						t-m-m		verb		ar	ki	
3112	316	310	d	1	اَمْبَ	amba	amba						-amb-		verb		ba	imp	
3122	317	311	d	1	اَتِ	ati	ati						ati		conj		ba		
3119	317	311	b	3	ػَنْدَانِ	kʲandāni	chandani						-anda		noun		ba		
3175	323	317	a	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
3124	317	311	d	3	هُتِيَا	hutiyā	hutiya						-ti-		verb		ba	hu	
3189	324	318	b	2	جِهَدِ	jihadi	jihadi						j-h-d		noun		ar		
3131	318	312	d	1	كَمَ	kama	kama						k-m-a		conj		ar		
3133	318	312	d	3	كِكْوَمْبِيَا	kikwambiyā	kikwambiya						-amb-		verb		ba	ki	
3121	317	311	c	2	كِسِمَانِ	kisimāni	kisimani						-sima		noun		ba		
3148	320	314	b	1	كِتُ	kitu	kitu						-tu		noun		ba		
3156	321	315	a	2	كْوَ	kwa	kwa						-a		ref		ba		
3157	321	315	a	3	لِسَانِ	lisāni	lisani						h-s-n		noun		ar		
3109	316	310	c	1	مِمِ	mimi	mimi						mimi		pron		ba		
3177	323	317	a	3	مْوَاكَ	mwāka	mwaka						-aka		noun		ba		
3144	319	313	d	2	نَمْبِيَا	nambiyā	nambiya						-amb-		verb		ba	imp	
3142	319	313	c	4	رَاضِ	rāḍi	radhi						r-a-zw		noun		ar		
3128	318	312	b	2	اُكَكَصِيْرِكَ	ukakaṣı̄rika	ukakasirika						hh-s-r		verb		ar	ka	
3137	319	313	b	2	وَتَ	wata	wata						-ach-		verb		ba	imp	
3163	321	315	c	3	زِتَانِ	zitāni	zitani						-ta		noun		ba		
3184	323	317	d	2	سِكُيُوَا	sikuyuwā	sikuyuwa		si kuyuwa										
3237	329	323	b	1	اَسِئِمُهُلِ	asiimuhuli	asiimuhuli		asiyimuhuli				m-h-l		v		a	subj	y
3220	327	321	c	1	حُوِكِيْ	ḥuwikii	huwikii		huweki				-wek-		v		b	pres	y
3193	324	318	d	1	هُتْوَا	hutwā	hutwa												
3181	323	317	c	2	مِيَ	miya	miya		mia				m-a-y		num		a		
3194	324	318	d	2	مْپْوِكِ	mpwiki	mpwiki		mpweke				peke		adv		b		
3255	331	325	b	1	نَحَسَنِ	naḥasani	nahasani		na Hasani				hh-s-n		persn		a		
3231	328	322	c	2	نِنَيَقِيْنِ	ninayaqı̄ni	ninayaqini		nina yaqini										
3256	331	325	b	2	نَحُسِيْنِ	naḥusı̄ni	nahusini		na Huseni				hh-s-y-n		persn		a		
3180	323	317	c	1	سَبَعَ	sabaʿa	sabaa						s-b-3		num		a		
3247	330	324	c	1	اَمُوْ	amuu	amuu		amu										
3223	327	321	d	1	اَكُسَلِامُ	akusaliāmu	akusaliamu	akusalīmu	akusalimu				s-l-m		verb		ar	a	
3196	325	319	a	1	َالِپُ	ālipu	alipu		alipokuya				-j-		verb		ba	li	
3261	332	326	a	1	اَمِئِنُكَا	amiinukā	amiinuka		ameinuka				-inu-		verb		ba	me	
3202	325	319	c	2	اَمِينِ	amı̄ni	amini		Amini				a-m-n		title		ar		
3259	331	325	d	1	بَبَنْغُ	babanghu	babanghu		babangu				baba		noun		ba		
3208	326	320	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
3209	326	320	b	1	اِنِرِ	iniri	iniri		enende				-end-		verb		ba	past	
3245	330	324	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3273	333	327	b	2	حَيْدَارِ	ḥaydāri	haydari		Haidari				h-d-r		title		ar		
3182	323	317	c	3	حَقِيْكَ	ḥaqı̄ka	haqika		hakika				hh-q-q		adv		ar		
3240	329	323	d	1	هَپُ	hapu	hapu		hapo				h-		dem		ba		
3249	330	324	c	3	حُسِيْنِ	ḥusı̄ni	husini		Huseni				hh-s-y-n		persn		ar		
3248	330	324	c	2	هُتُكَ	hutuka	hutuka		hutoka				-to-		verb		ba	hu	
3214	326	320	d	1	هُتُشَا	hutushā	hutusha		hutosha				-to-		verb		ba	hu	
3211	326	320	b	3	جَعْفَرِا	jaʿfariā	jafaria	jaʿfarī	Jaafari				j-3-f-r		persn		ar		
3224	327	321	d	2	جَلِيْيَا	jalı̄yā	jaliya		Jaliya				j-l-l		godn		ar		
3217	327	321	a	2	جِبْرِيْلِ	jibrı̄li	jibrili		Jiburili				j-b-r-l		persn		ar		
3238	329	323	c	1	كَىْنُكَ	kaynuka	kaynuka		kainuka				-inu-		verb		ba	ka	
3190	324	318	c	1	لَكِيْ	lakii	lakii		laki				l-k-k		noun		ar		
3213	326	320	c	2	مَكُفَرِا	makufariā	makufaria	makufarī	makufari				k-f-r		noun		ar		
3244	330	324	a	2	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni				-lango		noun		ba		
3198	325	319	a	3	مُوِايْنِ	muwiāı̄ni	muwiayni	muwīı̄ni	muini				-ji		noun		ba		
3195	324	318	d	3	مْمُيَا	mmuyā	mmuya		mmoya				-moja		num		ba		
3282	334	328	b	2	موَانَڠُ	mwānagu	mwanagu		mwanangu				-ana		noun		ba		
3191	324	318	c	2	مُيَ	muya	muya		moya				-oyo		noun		ba		
3206	326	320	a	1	نَپِنْدَ	napinda	napinda		napenda				-pend-		verb		ba	a	
3242	329	323	d	3	دِيَ	diya	diya		ndia				-jia		noun		ba		
3210	326	320	b	2	پْوِكِ	pwiki	pwiki		pweke				peke		adv		ba		
3228	328	322	b	2	تْوِنْدِ	twindi	twindi		twende				-end-		verb		ba	subj	
3283	334	328	b	3	اُنَنِ	unani	unani		una-ni				-na		have		ba		
3250	330	324	d	1	اُيَوُ	uyawu	uyawu		uyao				-j-		verb		ba	a	
3204	325	319	d	2	يَمْبُ	yambu	yambu		yambo				-amb-		noun		ba		
3216	327	321	a	1	اَكَشُكَا	akashukā	akashuka						-shuk-		verb		ba	ka	
3225	328	322	a	1	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
3212	326	320	c	1	اَكَپِجِ	akapiji	akapiji		akapije				-pig-		verb		ba	ka	
3226	328	322	a	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
3234	329	323	a	1	ػَمْبِوَ	kʲambiwa	chambiwa						-amb-		verb		ba	ki	
3233	328	322	d	2	دُنِيَا	duniyā	duniya						d-n-y		noun		ar		
3257	331	325	c	1	غَافُلَ	ghāfula	ghafula						gh-f-l		adj		ar		
3185	324	318	a	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
3235	329	323	a	2	هِيٗ	hiyo	hiyo						h-		dem		ba		
3183	323	317	d	1	حُتِنْدَا	ḥutindā	hutinda						-chind-		verb		ba	hu	
3262	332	326	a	2	كِتِيْنِ	kitı̄ni	kitini						-ti		noun		ba		
3197	325	319	a	2	كُيَ	kuya	kuya		~				-j-		verb		ba	ku	
3192	324	318	c	3	مَيَهُدِ	mayahudi	mayahudi						y-h-d		noun		ar		
3186	324	318	a	2	مْوَاكَ	mwāka	mwaka						-aka		noun		ba		
3260	331	325	d	2	نَمْكُلِيَا	namkuliyā	namkuliya						-amku-		verb		ba	a	
3203	325	319	d	1	نِنَ	nina	nina						-na		have		ba		
3229	328	322	b	3	نْيُمْبَانِ	nyumbāni	nyumbani						-umb-		noun		ba		
3236	329	323	a	3	قَوْلِ	qawli	qauli						q-w-l		noun		ar		
3207	326	320	a	2	سَسَا	sasā	sasa						sasa		adv		ba		
3221	327	321	c	2	سِمْبَا	simbā	simba						simba		noun		ba		
3205	325	319	d	3	تَكْوَمْبِيَا	takwambiyā	takwambiya						-amb-		verb		ba	ta	
3187	324	318	a	3	اُكِزِدِ	ukizidi	ukizidi						z-a-d		verb		ar	ki	
3241	329	323	d	2	وَكَنْدَمَ	wakandama	wakandama						-andam-		verb		ba	ka	
3222	327	321	c	3	وَوِلِ	wawili	wawili						-wili		num		ba		
3243	330	324	a	1	اَكپِتَ	akpita	akpita		akipita	*			-pit-		v		b	ki	
3230	328	322	c	1	مْوَانَوُ	mwānawu	mwanawu		mwanawo				-ana		n		b		
3306	336	330	d	1	اَمِكْوِسَ	amikwisa	amikwisa		amekwisa				-ish-		v		b	me	
3325	338	332	d	2	اَسِكُيُوَا	asikuyuwā	asikuyuwa						-ju-		v		b	li	y
3299	336	330	a	1	كَمْوَاڠَلَِ	kamwāgalia	kamwagalia		kamwangalia				-anga-		v		b	ka	
3320	338	332	b	2	وَاكَيْنُكَ	wākaynuka	wakaynuka		wakainuka				-inuk-		v		b	ka	
3296	335	329	c	3	كَتَزَامَ	katazāma	katazama						-tazam-		v		a	ka	
3307	336	330	d	2	كُئفِيَا	kufiyā	kufiya						-f-		v		b	ku	
3342	340	334	c	3	كُپُكَ	kupuka	kupuka		~										
3327	339	333	a	2	كْوِسَ	kwisa	kwisa		~										
3344	340	334	d	2	اُكِمْوَغَلِيَا	ukimwaghaliyā	ukimwaghaliya		ukimwangaliya										
3280	334	328	a	2	اَكِبَيْنِ	akibayni	akibayni		akibaini				b-a-n		verb		ar	ki	
3304	336	330	c	1	اَكِيْكُمَ	akı̄kuma	akikuma		akikoma				-kom-		verb		ba	ki	
3295	335	329	c	2	ظَرُبُ	ẓarubu	dharubu						dw-r-b		noun		ar		
3253	331	325	a	2	اَلِپُ	alipu	alipu		alipo				-li		verb		ba	li	
3300	336	330	a	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
3277	333	327	d	2	بَبَكِ	babaki	babaki		babake				baba		noun		ba		
3314	337	331	c	2	بَاشِيْرِ	bāshı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
3310	337	331	a	3	حَيْدَارِ	ḥaydāri	haydari		Haidari				h-d-r		title		ar		
3269	333	327	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3265	332	326	c	1	حِلَ	ḥila	hila		hela				hela		conj		ba		
3275	333	327	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
3292	335	329	b	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
3287	334	328	d	1	كَتِكَ	katika	katika						kati		prep		ba		
3298	335	329	d	2	كَمْوَاغَلِيَ	kamwāghaliya	kamwaghaliya		kamwangaliya				-anga-		verb		ba	ka	
3318	338	332	a	2	كِپُلِيْكَ	kipulı̄ka	kipulika						-pulik-		verb		ba	ki	
3305	336	330	c	2	كُبَيِيْنِ	kubayı̄ni	kubayini		kubaini				b-a-n		verb		ar	ku	
3270	333	327	a	2	كِنِرَ	kinira	kinira		kenenda				-end-		verb		ba	ki	
3338	340	334	b	2	كْوَاكِ	kwāki	kwaki		kwake				-ake		poss		ba		
3331	339	333	c	1	مَنِيْنُ	manı̄nu	maninu		maneno				-nen-		noun		ba		
3315	337	331	d	1	مَصَحَبَ	maṣaḥaba	masahaba		Masahaba				sw-hh-b		title		ar		
3297	335	329	d	1	مَتُ	matu	matu		mato				-cho		noun		ba		
3357	342	336	a	3	مْنُ	mnu	mnu		mno				mno		adv		ba		
3343	340	334	d	1	نَوِ	nawi	nawi		nawe				na		conj		ba		
3289	334	328	d	3	دِيَا	diyā	diya		ndia				-jia		noun		ba		
3339	340	334	b	3	رَابُكَا	rābukā	rabuka		Rabuka				r-b-b		godn		ar		
3356	342	336	a	2	سِنِرِ	siniri	siniri		senende				-end-		verb		ba	subj	
3374	343	337	d	1	اُپَتِ	upati	upati		upate				-pat-		verb		ba	subj	
3281	334	328	b	1	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
3267	332	326	d	1	يَمْبُ	yambu	yambu		yambo				-amb-		noun		ba		
3303	336	330	b	3	يَسِيْنِ	yası̄ni	yasini		Ya Sini				y-s-n		noun		ar		
3311	337	331	b	1	يُتِ	yuti	yuti		yote				-ote		qual		ba		
3293	335	329	b	2	اَكَفَهَمَ	akafahama	akafahama						f-h-m		verb		ar	ka	
3334	339	333	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya						-amb-		verb		ba	ka	
3301	336	330	b	1	اَكَبَ	akaba	akaba		akamba				-amb-		verb		ba	ka	
3330	339	333	b	2	اَكَمُوِيْكَ	akamūı̄ka	akamuwika		akamuweka				-wek-		verb		ba	ka	
3276	333	327	d	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3313	337	331	c	1	اَكَسِمَامَ	akasimāma	akasimama						-simam-		verb		ba	ka	
3332	339	333	c	2	اَكَتَمْكَ	akatamka	akatamka						-tamk-		verb		ba	ka	
3290	335	329	a	1	اَكِسِكِيَ	akisikiya	akisikiya		akisikia				-siki-		verb		ba	ki	
3264	332	326	b	2	فِرَاشَنِ	firāshani	firashani						f-r-sh		noun		ar		
3286	334	328	c	3	ڠَنِ	gani	gani						nini		qual		ba		
3321	338	332	c	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
3319	338	332	b	1	جَمِعِ	jamiʿi	jamii						j-m-3		noun		ar		
3291	335	329	a	2	كَلِمَ	kalima	kalima						k-l-m		noun		ar		
3278	333	327	d	3	كَلِيَا	kaliyā	kaliya						-li-		verb		ba	ka	
3316	337	331	d	2	كَوَمْبِيَا	kawambiyā	kawambiya						-amb-		verb		ba	ka	
3323	338	332	c	3	كُزِيْكَ	kuzı̄ka	kuzika						-zik-		verb		ba	ku	
3328	339	333	a	3	كُزِكَ	kuzika	kuzika						-zik-		verb		ba	ku	
3294	335	329	c	1	كْوَا	kwā	kwa						-a		ref		ba		
3288	334	328	d	2	كْوَانْدَامَ	kwāndāma	kwandama						-andam-		verb		ba	ku	
3340	340	334	c	1	مْتُ	mtu	mtu						-tu		noun		ba		
3252	331	325	a	1	مْوَانَ	mwāna	mwana						-ana		noun		ba		
3378	344	338	a	3	نْدَ	nda	nda						-a		focus		ba		
3302	336	330	b	2	نِپَا	nipā	nipa						-p-		verb		ba	imp	
3337	340	334	b	1	صُبِرِ	ṣubiri	subiri						sw-b-r		verb		ar	imp	
3322	338	332	c	2	اَكِسَا	akisā	akisa						-ish-		v		b	ki	
3326	339	333	a	1	اَلِپُ	alipu	alipu		alipokwisa				-ish-		v		b	li	
3266	332	326	c	2	مْوَاغَلِيِيْنِ	mwāghaliı̄ni	mwaghaliyini		mwangalieni				-anga-		v		b	subj	
3347	341	335	a	3	نِمْتُ	nimtu	nimtu		ni mtu										
3417	347	341	d	2	اَسِپُ	asipu	asipu		asipozengeya				-zeng-		v		b	ki	y
3351	341	335	c	1	اَسِپُكُوَا	asipukuwā	asipukuwa		asipokuwa				-w-		v		b	ki	y
3354	341	335	d	2	وَافَهَمِيْيَا	wāfahamı̄yā	wafahamiya												
3384	344	338	c	2	سِتَمْكِ	sitamki	sitamki												
3386	344	338	d	2	فَرَغَا	faraghā	faragha												
3359	342	336	b	2	هُپِجَ	hupija	hupija						-pig-		v		b	hu	
3365	342	336	d	2	اِكَمْغِيْيَا	ikamghı̄yā	ikamghiya		ikamngiya				-ingi-		v		b	ka	
3404	346	340	c	2	يَمْوَالِمُ	yamwālimu	yamwalimu		ya mwalimu				3-l-m		n		a		
3428	348	342	d	2	كُمْڠِلِيَا	kumgiliyā	kumgiliya		kumngiliya				-ingi-		v		b	ku	
2184	222	216	a	3	كَوُشَى	kawushay	kawushay	kawushā	kawosha			This is standard practice before retiring for the night.  If a wife fails to provide water so that her husband can wash is feet, it can be cause for divorce.	-osh-		v		b	ka	
3595	365	359	b	2	كِيْفُنُوَا	kı̄funuwā	kifunuwa		kifunua				-fun-		v		b	ki	
3419	348	342	a	1	نَيِيِ	nayiyi	nayiyi		na yeye				yeye		pron		b		
3418	347	341	d	3	زِغِيْيَ	zighı̄ya	zighiya		~										
3425	348	342	c	2	اَسِپُ	asipu	asipu		asipofahamu				f-h-m		verb		ar	ki	
3412	347	341	b	2	اَسُمِ	asumi	asumi		asome				-som-		verb		ba	past	
3396	345	339	d	2	عَطِيَا	ʿaṭiyā	atiya		Atiya				3-tw-k		persn		ar		
3346	341	335	a	2	اَمَّا	ammā	amma		ama				a-m-m		conj		ar		
3402	346	340	b	3	اَتُكِ	atuki	atuki		atoke				-to-		verb		ba	past	
3373	343	337	c	3	بَرُوَ	baruwa	baruwa		barua				b-r-w		noun		ar		
3366	343	337	a	1	هَپُ	hapu	hapu		hapo				h-		dem		ba		
3403	346	340	c	1	اِلِيْ	ilii	ilii		ili				ili		conj		ba		
3441	350	344	a	3	كَفُوَاتَ	kafuwāta	kafuwata		kafuata				-fuat-		verb		ba	ka	
3391	345	339	b	2	كَرَطَسِ	karaṭasi	karatasi						q-r-tw-s		noun		ar		
3370	343	337	b	2	كَمْوَمْكُوَا	kamwamkuwā	kamwamkuwa		kamwamkua				-amku-		verb		ba	ka	
3390	345	339	b	1	كَپُكِيَ	kapukiya	kapukiya		kapokea				-pok-		verb		ba	ka	
3407	346	340	d	2	كُمْپِكِيْيَا	kumpikı̄yā	kumpikiya		kumpekeya				-pelek-		verb		ba	ku	
3375	343	337	d	2	كُنِپِكِيْيَا	kunipikı̄yā	kunipikiya		kunipekeya				-pelek-		verb		ba	ku	
3409	347	341	a	2	كُتُكَ	kutuka	kutuka		kutoka				-to-		verb		ba	ku	
3399	346	340	a	3	كْوَاكِ	kwāki	kwaki		kwake				-ake		poss		ba		
3379	344	338	a	4	مَمَكِ	mamaki	mamaki		mamake				mama		noun		ba		
3352	341	335	c	2	مَنَّانِ	mannāni	mannani		Manani				m-n-n		godn		ar		
3363	342	336	c	3	مَنِيْنُ	manı̄nu	maninu		maneno				-nen-		noun		ba		
3360	342	336	b	3	مْفَنُ	mfanu	mfanu		mfano				-fan-		noun		ba		
3458	352	346	a	1	مْوَانَمْكِ	mwānamki	mwanamki		mwanamke				-ke		noun		ba		
3430	349	343	a	2	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
3394	345	339	c	3	اُپِسِ	upisi	upisi		upesi				-pesi		noun		ba		
3382	344	338	b	3	وَاكِ	wāki	waki		wake				-ake		poss		ba		
3405	346	340	c	3	وَاكِ	wāki	waki		wake				-ake		poss		ba		
3411	347	341	b	1	يِيِ	yiyi	yiyi		yeye				yeye		pron		ba		
3369	343	337	b	1	زُبِيْرِ	zubı̄ri	zubiri		Zuberi				z-b-r		persn		ar		
3364	342	336	d	1	عَقِيْلِ	ʿaqı̄li	aqili		akili				3-q-l		noun		ar		
3389	345	339	a	2	اَسِجِلِسِ	asijilisi	asijilisi						j-l-s		verb		ar	past	
3367	343	337	a	2	اَكِنْدَ	akinda	akinda		akenda				-end-		verb		ba	ki	
3361	342	336	c	1	ػَمْبِوَا	kʲambiwā	chambiwa						-amb-		verb		ba	ki	
3439	350	344	a	1	هَپُ	hapu	hapu		hapo				h-		dem		ba		
3413	347	341	b	3	مَمَكِ	mamaki	mamaki		mamake				mama		noun		ba		
3350	341	335	b	2	دُنِيَانِ	duniyāni	duniyani						d-n-y		noun		ar		
3426	348	342	c	3	فَهَمُ	fahamu	fahamu		~				f-h-m		verb		ar	imp	
3348	341	335	a	4	ڠَنِ	gani	gani						nini		qual		ba		
3423	348	342	b	3	هُسَلِمُ	husalimu	husalimu						s-l-m		verb		ar	hu	
3362	342	336	c	2	هَيَ	haya	haya						h-		dem		ba		
3395	345	339	d	1	كَمْپِيْكِيَ	kampı̄kiya	kampikiya		kampekea				-pik-		verb		ba	ka	
3335	340	334	a	1	كَمْوَامْبِيَ	kamwāmbiya	kamwambiya		kamwambia				-amb-		verb		ba	ka	
3336	340	334	a	2	كِپُلِكَ	kipulika	kipulika						-pulik-		verb		ba	ki	
3398	346	340	a	2	كُمْپَ	kumpa	kumpa						-p-		verb		ba	ku	
3393	345	339	c	2	كْوَ	kwa	kwa						-a		ref		ba		
3416	347	341	d	1	مْتُ	mtu	mtu						-tu		noun		ba		
3381	344	338	b	2	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun		ar		
3440	350	344	a	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
3371	343	337	c	1	تَكُپَ	takupa	takupa						-p-		verb		ba	ta	
3427	348	342	d	1	اُسِيْكُ	usı̄ku	usiku						-siku		noun		ba		
3345	341	335	a	1	وَ	wa	wa						w-a		conj		ar		
3424	348	342	c	1	وَلَا	walā	wala						wala		conj		ba		
3372	343	337	c	2	زَنْڠُ	zangu	zangu						-angu		poss		ba		
3442	350	344	b	1	اَكِنِرَا	akinirā	akinira		akenenda				-end-		v		b	ki	
3400	346	340	b	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
3349	341	335	b	1	اَلُدُمُ	aludumu	aludumu		alodumu				d-a-m		v		a	li	
3433	349	343	b	2	تَغَكُرِا	taghakuriā	taghakuria	taghakurī	tangakuri										
3457	351	345	d	2	اِمِسِمَمِيَا	imisimamiyā	imisimamiya		imesimamia				-simam-		v		b	me	
3437	349	343	d	1	هُمآْزِڠِيَا	humãzigiyā	humazigiya		humazengea										
3536	359	353	d	1	اَمْبَالُ	ambālu	ambalu		ambalo				amb-		rel		b		
3472	353	347	b	2	سِكُئفَصِيْرِا	sikufaṣı̄riā	sikufasiria	sikufaṣı̄rī	sikufasiri										
3470	353	347	a	2	نِمِيَبِيْرِ	nimiyabı̄ri	nimiyabiri		nimeiabiri										
3443	350	344	b	2	اَسِكُتَ	asikuta	asikuta						-kut-		v		b	past	y
3516	357	351	c	2	كَنِيُوْنْيِنِ	kaniyūnyini	kaniyunyini		kanionyeni				-on-		v		b	ka	
3464	352	346	c	2	مُتَنِپِيْلِكَ	mutanipı̄lika	mutanipilika		mutanipeleka				-pelek-		v		b	ta	
3508	356	350	d	1	هَپُكَتُكَ	hapukatuka	hapukatuka		hapo katoka				-tok-		v		b	ka	
3511	357	351	a	2	اُپُ	upu	upu		upo										
3477	353	347	d	2	هَيَكُوِلِيْيَا	hayakuwilı̄yā	hayakuwiliya		hayakueleya				-ele-		v		b	li	y
3537	359	353	d	2	وَاكُتِيْزِيَ	wākutı̄ziya	wakutiziya		wakutezeya										
3446	350	344	c	3	كُپَتَ	kupata	kupata						-pat-		v		b	ku	
3445	350	344	c	2	يَكْوَنْدَ	yakwanda	yakwanda		ya kwanda				-anz-		v		b	ku	
3436	349	343	c	3	هُوَابِيْرِ	huwābı̄ri	huwabiri		huabiri				3-b-r		v		a	hu	
3499	355	349	d	2	كَمْبِشِيَا	kambishiyā	kambishiya												
1097	114	111	a	2	كْوَمْبَلِ	kwambali	kwambali		kwa mbali				-bali		adv		b		
3467	352	346	d	3	عَلِيْ	ʿalii	alii		Aliya				3-l-y		persn		ar		
3462	352	346	b	3	عَطِيْكَ	ʿaṭı̄ka	atika		Atika				3-tw-k		persn		ar		
3438	349	343	d	2	عَطِيَا	ʿaṭiyā	atiya		Atiya				3-tw-k		persn		ar		
3449	351	345	a	1	حَمْزَةِ	ḥamzaẗi	hamzati		Hamza				h-m-z		persn		ar		
3478	354	348	a	1	هَپُ	hapu	hapu		hapo				h-		dem		ba		
3513	357	351	b	1	حُلِيْيَ	ḥulı̄ya	huliya		hulia				-li-		verb		ba	hu	
3486	354	348	d	1	اِلِيْ	ilii	ilii		ili				ili		conj		ba		
3475	353	347	c	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
3501	356	350	a	2	كَمُوُلِيْزَ	kamuwulı̄za	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
3460	352	346	b	1	كَنِنَ	kanina	kanina		kanena				-nen-		verb		ba	ka	
3480	354	348	a	3	كَتُكَ	katuka	katuka		katoka				-to-		verb		ba	ka	
3489	355	349	a	2	كِتُكَ	kituka	kituka		kitoka				-to-		verb		ba	ki	
3434	349	343	c	1	كُلَّ	kulla	kulla		kula				k-l-l		pron		ar		
3527	358	352	d	1	مَنِيْنُ	manı̄nu	maninu		maneno				-nen-		noun		ba		
3466	352	346	d	2	مَوُلَنَا	mawulanā	mawulana		Maulana				a-a-l		title		ar		
3484	354	348	c	1	مْلَغُوْ	mlaghuu	mlaghuu		mlango				-lango		noun		ba		
3447	350	344	d	1	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni				-lango		noun		ba		
3512	357	351	a	3	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni				-lango		noun		ba		
3488	355	349	a	1	نْدِ	ndi	ndi		nde				-je		adv		ba		
3515	357	351	c	1	قَبُرِ	qaburi	qaburi						q-b-r		noun		ar		
3456	351	345	d	1	صَلَا	ṣalā	sala						sw-l-w		noun		ar		
3452	351	345	b	2	عُمَرِا	ʿumariā	umaria	ʿumarī	Umari				3-m-r		persn		ar		
3454	351	345	c	2	نِا	niā	nia	nī	ni				ni		exist		ba		
3474	353	347	c	2	اُمِيْ	umii	umii		Umi				u-m-m		title		ar		
3435	349	343	c	2	نْيُبَا	nyubā	nyuba		nyumba				nyuma		adv		ba		
3482	354	348	b	2	اُپِسِ	upisi	upisi		upesi				-pesi		noun		ba		
3510	357	351	a	1	يِيِ	yiyi	yiyi		yeye				yeye		pron		ba		
3421	348	342	b	1	يُوَا	yuwā	yuwa		yua				-ua		noun		ba		
3528	358	352	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya						-amb-		verb		ba	ka	
3485	354	348	c	2	اَكَوْشِيْكَا	akawshı̄kā	akaushika						-shik-		verb		ba	ka	
3514	357	351	b	2	اَكِبَيِنِ	akibayini	akibayini		akibaini				b-a-n		verb		ar	ki	
3491	355	349	a	4	حِمَ	ḥima	hima						h-m-m		noun		ar		
3479	354	348	a	2	حَمْزَا	ḥamzā	hamza		Hamza				h-m-z		persn		ar		
3492	355	349	b	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3420	348	342	a	2	اَكَنُظُمُ	akanuẓumu	akanudhumu						n-dw-m		verb		ar	ka	
3455	351	345	c	3	اَلْفَجِيْرِ	alfajı̄ri	alfajiri		alifajiri				f-j-r		noun		ar		
3453	351	345	c	1	هِنِ	hini	hini						h-		dem		ba		
3450	351	345	a	2	كَفَصِيْرِ	kafaṣı̄ri	kafasiri						f-s-r		verb		ar	ka	
3476	353	347	d	1	كَمَ	kama	kama						k-m-a		conj		ar		
3463	352	346	c	1	كَمْبَ	kamba	kamba						-amb-		verb		ba	ka	
3459	352	346	a	2	كَتَمْكَ	katamka	katamka						-tamk-		verb		ba	ka	
3526	358	352	c	3	كَتَمْكَ	katamka	katamka						-tamk-		verb		ba	ka	
3465	352	346	d	1	كْوَ	kwa	kwa						-a		ref		ba		
3494	355	349	b	3	كَيَنْدَامَ	kayandāma	kayandama						-andam-		verb		ba	ka	
3481	354	348	b	1	كْوَ	kwa	kwa						-a		ref		ba		
3461	352	346	b	2	مِمِ	mimi	mimi						mimi		pron		ba		
3469	353	347	a	1	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
3493	355	349	b	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
3468	352	346	d	4	يَا	yā	ya		~				y-a		excl		ar		
3473	353	347	c	1	نِمِمِ	nimimi	nimimi		ni mimi				mimi		pron		b		
3030	308	302	d	1	مْبْوِنُ	mbwinu	mbwinu		mbwenu				-enu		poss		b		
3507	356	350	c	2	هُكُوِيْزَا	hukūı̄zā	hukuwiza												
3517	357	351	d	1	نِپَتِ	nipati	nipati		nipate										
3554	361	355	b	2	هُرُوَا	huruwā	huruwa		hondoa				-ondo-		v		b	hu	
3506	356	350	c	1	نِمْغِنِ	nimghini	nimghini		ni mgeni				-geni		n		b		
3570	362	356	d	1	لَئَخِيْرِ	laakhı̄ri	laahiri		la aheri				kh-y-r		n		a		
3575	363	357	b	2	يَكِمْتُكَ	yakimtuka	yakimtuka		yakimtoka				-tok-		v		b	ki	
3540	360	354	a	3	نِمَمَكِ	nimamaki	nimamaki		ni mamake				mama		n		b		
3572	363	357	a	1	هُمُوْنْيَّ	humūnı̄ya	humuniya	humūnyya	humuonya				-on-		v		b	hu	
3571	362	356	d	2	نَدُنِيَا	naduniyā	naduniya		na duniya				d-n-y		n		a		
3639	369	363	d	2	تَپُكِيْيَا	tapukı̄yā	tapukiya		tapokeya										
3621	368	362	b	1	سِيَيَوِزَا	siyayawizā	siyayawiza		siyayaweza										
3578	363	357	c	3	عَطيْكَ	ʿaṭı̄ka	atika		Atika				3-tw-k		persn		ar		
3600	366	360	a	1	بَرُوَ	baruwa	baruwa		barua				b-r-w		noun		ar		
3622	368	362	b	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3569	362	356	c	3	فُنْغُ	funghu	funghu		fungu				-fung-		noun		ba		
3583	364	358	a	3	حَِْدَارِ	ḥaidāri	haidari		Haidari				h-d-r		title		ar		
3505	356	350	b	4	حَمْزَا	ḥamzā	hamza		Hamza				h-m-z		persn		ar		
3519	358	352	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3568	362	356	c	2	هُتُكُوْسَ	hutukūsa	hutukusa		hutokosa				-tokot-		verb		ba	hu	
3532	359	353	b	2	اِسْلَامُ	islāmu	islamu		isilamu				s-l-m		verb		ar	imp	
3530	359	353	a	2	كِنُظُمُ	kinuẓumu	kinudhumu						n-dw-m		verb		ar	ki	
3535	359	353	c	3	كَرِيْمَ	karı̄ma	karima		Karimu	*			k-r-m		godn		ar		
3521	358	352	a	3	كَتُكَ	katuka	katuka		katoka				-to-		verb		ba	ka	
3555	361	355	b	3	كَوِاكَ	kawiāka	kawiaka	kawīka	kaweka				-wek-		verb		ba	ka	
3543	360	354	b	3	كِتِ	kiti	kiti		kite				-te		noun		ba		
3518	357	351	d	2	كُيَڠَلِيَا	kuyagaliyā	kuyagaliya		kuyangaliya				-anga-		verb		ba	ku	
3534	359	353	c	2	كْوَاكِ	kwāki	kwaki		kwake				-ake		poss		ba		
3504	356	350	b	3	مِمِ	mimi	mimi						mimi		pron		ba		
3552	361	355	a	3	مَمْلَكَ	mamlaka	mamlaka		Mamlaka				m-l-k		noun		ar		
3522	358	352	b	1	مَتُوْزِ	matūzi	matuzi		matozi				-chozi		noun		ba		
3586	364	358	c	1	بُنَ	buna	buna		mbona				-on-		conj		ba		
3566	362	356	b	3	مغُ	mghu	mghu		Mngu				-ngu		godn		ba		
3551	361	355	a	2	مْوِنْيِ	mwinyi	mwinyi		Mwenye				-enye		noun		ba		
3542	360	354	b	2	مْوِنْيِ	mwinyi	mwinyi		mwenye				-enye		noun		ba		
3561	362	356	a	1	نَوِ	nawi	nawi		nawe				na		conj		ba		
3541	360	354	b	1	نْرِّيِ	nrriyi	nrriyi		ndiye				ni		focus		ba		
3563	362	356	a	3	رُيَنْغُ	ruyanghu	ruyanghu		nduyangu				-dugu		noun		ba		
3531	359	353	b	1	سِنْدِلِى	sindilii	sindilii		sendelee				-end-		verb		ba	imp	
3503	356	350	b	2	نِا	niā	nia	nī	ni				ni		exist		ba		
3597	365	359	c	2	سِيْكُمُيُوَا	sı̄kumuyuwā	sikumuyuwa		sikumuyua				-ju-		verb		ba	li	
3599	365	359	d	2	سِكُمْزِڠِيْيَا	sikumzigı̄yā	sikumzigiya		sikumzengeya				-zeng-		verb		ba	li	
3564	362	356	b	1	اُسِپُتِيْ	usiputii	usiputii		usipotee				-pote-		verb		ba	past	
3547	360	354	c	3	يَكِيْ	yakii	yakii		yake				-ake		poss		ba		
3550	361	355	a	1	يُوَا	yuwā	yuwa		yua				-ua		noun		ba		
3560	361	355	d	2	دُنِيَا	duniyā	duniya						d-n-y		noun		ar		
3587	364	358	c	2	هَكُيَ	hakuya	hakuya						-j-		verb		ba	li	
3585	364	358	b	2	اَكَفَصِيْرِا	akafaṣı̄riā	akafasiria	akafaṣı̄rī	akafasiri				f-s-r		verb		ar	ka	
3596	365	359	c	1	اَلِپُ	alipu	alipu		alipo				-li		verb		ba	li	
3594	365	359	b	1	كَتُكَ	katuka	katuka		katoka				-to-		verb		ba	ka	
3574	363	357	b	1	مَتُزِ	matuzi	matuzi		matozi				-chozi		noun		ba		
3524	358	352	c	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
3529	359	353	a	1	كَمْوَامْبِيَ	kamwāmbiya	kamwambiya		kamwambia				-amb-		verb		ba	ka	
3580	363	357	d	2	كُلِيْيَا	kulı̄yā	kuliya						-li-		verb		ba	ku	
3611	367	361	b	1	كُمْپَ	kumpa	kumpa						-p-		verb		ba	ku	
3573	363	357	a	2	كُپُلِكَ	kupulika	kupulika						-pulik-		verb		ba	ku	
3565	362	356	b	2	كْوَ	kwa	kwa						-a		ref		ba		
3553	361	355	b	1	لَكِ	laki	laki		lake				l-k-k		noun		ar		
3538	360	354	a	1	كْوَانِ	kwāni	kwani						nini		int		ba		
3548	360	354	d	1	نَتَكَ	nataka	nataka						-tak-		verb		ba	a	
3546	360	354	c	2	قَبُرِ	qaburi	qaburi						q-b-r		noun		ar		
3558	361	355	c	3	سِكُتَكَ	sikutaka	sikutaka						-tak-		verb		ba	li	
3533	359	353	c	1	صُبِرِ	ṣubiri	subiri						sw-b-r		verb		ar	imp	
3562	362	356	a	2	صُبِرِ	ṣubiri	subiri						sw-b-r		verb		ar	imp	
3556	361	355	c	1	وَلَا	walā	wala						wala		conj		ba		
3523	358	352	b	2	يَكِمْشُكَ	yakimshuka	yakimshuka						-shuk-		verb		ba	ki	
3610	367	361	a	2	اَكَمْكَلِيْمُ	akamkalı̄mu	akamkalimu						k-l-m		v		a	ka	
3579	363	357	d	1	اَكَنْيَمَاءَ	akanyamaa	akanyamaa						-nyama-		v		b	ka	
3584	364	358	b	1	َكِسَ	akisa	akisa						-ish-		v		b	ki	
3589	364	358	d	1	نِوِ	niwi	niwi		niwe										
3660	372	366	a	2	اَمُوِلِيْزِ	amuwilı̄zi	amuwilizi		amuulize				-uz-		v		b	subj	
3634	369	363	b	3	سِكِتُ	sikitu	sikitu		si kitu										
3618	367	361	d	2	نِمِيَسُمِيَا	nimiyasumiyā	nimiyasumiya		nimeyasomeya										
3638	369	363	d	1	يَكِيَقِيْ	yakiyaqii	yakiyaqii		yakiyake										
3650	371	365	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		b		
3645	370	364	b	3	يَتَكَ	yataka	yataka		~										
3641	370	364	a	2	كَتْوَا	katwā	katwa		katwaa				-twa-		v		b	ka	
3647	370	364	c	2	كَيَنْدِكَ	kayandika	kayandika						-andik-		v		b	ka	
3680	374	368	b	2	كْوِحِرِانِ	kwiḥiriāni	kwihiriani	kwiḥirīni	kwa herini	*			kh-y-r		n		a		
3656	371	365	c	3	يَشُشَا	yashushā	yashusha		~										
3646	370	364	c	1	مْدُوْمُوْنِ	mdūmūni	mdumuni		mdomoni				-domo		n		b		
3658	371	365	d	2	كَمْشُهُدِيَ	kamshuhudiya	kamshuhudiya												
3667	372	366	d	2	كَيْلَلِيَا	kaylaliyā	kaylaliya		kayilaliya				-lal-		v		b	ka	
3615	367	361	c	2	سَبَعَ	sabaʿa	sabaa						s-b-3		num		ar		
3665	372	366	c	2	اَمْوِلِيْزِ	amwilı̄zi	amwilizi		amweleze				-ele-		verb		ba	past	
3694	375	369	d	1	اَسِرِّ	asirri	asirri		asende				-end-		verb		ba	subj	
3644	370	364	b	2	اَسِپُ	asipu	asipu		asipoyataka				-tak-		verb		ba	ki	
3632	369	363	b	1	عَطِيْكَ	ʿaṭı̄ka	atika		Atika				3-tw-k		persn		ar		
3591	364	358	d	3	عَطِيْيَا	ʿaṭı̄yā	atiya		Atiya				3-tw-k		persn		ar		
3630	369	363	a	3	بْوَانَ	bwāna	bwana		Bwana				bwana		noun		ba		
3614	367	361	c	1	دُعَآ	duʿaã	duaa		dua				d-3-a		noun		ar		
3609	367	361	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3663	372	366	b	3	خَبَرِزِا	khabariziā	habarizia	khabarizī	habarize				kh-b-r		noun		ar		
3640	370	364	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3653	371	365	b	2	كَمُوْنْيِشَا	kamūnyishā	kamunyisha		kamuonyesha				-on-		verb		ba	ka	
3669	373	367	a	2	كُكِپَبَوُكَ	kukipabawuka	kukipabawuka		kukipambauka				-pambauk-		verb		ba	ki	
3608	366	360	d	2	كُنِيْغِيَا	kunı̄ghiyā	kunighiya		kuningiya				-ingi-		verb		ba	ku	
3657	371	365	d	1	مْڠُ	mgu	mgu		Mngu				-ngu		godn		ba		
3623	368	362	c	1	مُيُ	muyu	muyu		moyo				-oyo		noun		ba		
3683	374	368	c	3	مُيُوْنِ	muyūni	muyuni		moyoni				-oyo		noun		ba		
3681	374	368	c	1	مْوَنَڠُ	mwanagu	mwanagu		mwanangu				-ana		noun		ba		
3662	372	366	b	2	مْوَانَوِ	mwānawi	mwanawi		mwanawe				-ana		noun		ba		
3603	366	360	b	2	نَلِئِيَبِرِا	naliiyabiriā	naliiyabiria		naliiabiri				3-b-r		verb		ar	li	
3617	367	361	d	1	نْرَانِ	nrāni	nrani		ndani				ndani		adv		ba		
3635	369	363	c	1	پِجَ	pija	pija						-pig-		verb		ba	imp	
3590	364	358	d	2	پْوِكِيْ	pwikii	pwikii		pweke				peke		adv		ba		
3695	375	369	d	2	پْوِكِ	pwiki	pwiki		pweke				peke		adv		ba		
3626	368	362	d	1	رُوْحُا	rūḥuā	ruhua		ruhu				r-w-hh		noun		ar		
3682	374	368	c	2	اُكُ	uku	uku		uko				LOC		loc		ba		
3592	365	359	a	1	اُنِيِتِيْ	uniyitii	uniyitii		unietee				-let-		verb		ba	past	
3652	371	365	b	1	وَعَظِ	waʿaẓi	waadhi		waadhi				w-3-zw		noun		ar		
3631	369	363	a	4	وِتُ	witu	witu		Wetu				-etu		poss		ba		
3619	368	362	a	1	اَكَمْجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
3625	368	362	c	3	حَلِمَامَ	ḥalimāma	halimama						halimama		noun		ba		
3671	373	367	b	2	اَكَيْنُكَ	akaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
3655	371	365	c	2	اَلِپُ	alipu	alipu		alipoyashusha				-shuk-		verb		ba	li	
3648	370	364	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3604	366	360	c	1	حَنْدَ	ḥanda	handa						-anz-		verb		ba	hu	
3668	373	367	a	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
3627	368	362	d	2	حُنَمْبِيَا	ḥunambiyā	hunambiya						-amb-		verb		ba	hu	
3620	368	362	a	2	كَلِيْمَ	kalı̄ma	kalima						k-l-m		noun		ar		
3651	371	365	a	2	كَمْكَلِيْفِيْشَا	kamkalı̄fı̄shā	kamkalifisha						k-l-f		verb		ar	ka	
3601	366	360	a	2	كِئِفَصِيْرِ	kiifaṣı̄ri	kiifasiri						f-s-r		verb		ar	ki	
3606	366	360	c	3	كُفِكِرِ	kufikiri	kufikiri						f-k-r		verb		ar	ku	
3629	369	363	a	2	كْوَا	kwā	kwa						-a		ref		ba		
3636	369	363	c	2	مَتَمَ	matama	matama						-tama		noun		ba		
3613	367	361	b	3	مَتَمُ	matamu	matamu						-tamu		adj		ba		
3637	369	363	c	3	مَتَتُ	matatu	matatu						-tatu		num		ba		
3605	366	360	c	2	سَسَ	sasa	sasa						sasa		adv		ba		
3628	369	363	a	1	صُبِرِ	ṣubiri	subiri						sw-b-r		verb		ar	imp	
3607	366	360	d	1	تَنَبُحِ	tanabuḥi	tanabuhi						n-b-b		noun		ar		
3616	367	361	c	3	تِمَمُ	timamu	timamu						t-m-m		noun		ar		
3624	368	362	c	2	اُنَ	una	una						-na		have		ba		
3661	372	366	b	1	زَا	zā	za						-a		ref		ba		
3649	370	364	d	2	اَكَپُكِيْايَا	akapukiyāyā	akapukiyaya		akapokeya				-pok-		v		b	ka	
3762	372	376	c	1	اَمْابَلُ	amābalu	amabalu		ambalo	*			amb-	which had been spoken about --	rel		b		
3688	375	369	b	1	اَمْوَامْبِيَ	amwāmbiya	amwambiya		amwambia				-amb-		v		b	a	
3693	375	369	c	3	كَمْپِيْكَ	kampı̄ka	kampika		kampeka				-pek-		v		b	ka	
3779	374	378	b	1	مِيَا	miyā	miya		mia				m-a-y	[come to] three hundred, be assured,	num		a		
3765	372	376	d	2	كَوَاحَدِثِيَا	kawāḥadithiyā	kawahadithiya						hh-d-th		v		a	ka	
3714	377	371	c	3	كُتَمْكَ	kutamka	kutamka						-tamk-		v		b	ku	
3728	378	372	d	2	نِمَمُيَا	nimamuyā	nimamuya		ni mamoya				-moja		num		b		
3733	379	373	b	2	نَعَطِيْكَ	naʿaṭı̄ka	naatika		na Atika				3-tw-k		persn		a		
3686	375	369	a	1	نَفَطِيْمَ	nafaṭı̄ma	nafatima		na Fatima				f-t-m		persn		a		
3781	374	378	b	3	هُمْكِنِ	humkini	humkini												
3725	378	372	c	2	نِكَمَ	nikama	nikama		ni kama				k-m-a		conj		a		
3750	371	375	a	3	رُدِيْ	rudii	rudii		~										
3753	371	375	b	3	رَادِدِ	rādidi	radidi		~										
3735	379	373	c	2	اَكَمْپِيْكَ	akampı̄ka	akampika		akampeka				-pelek-		verb		ba	ka	
3738	379	373	d	3	اَكَغِيَا	akaghiyā	akaghiya		akangiya				-ingi-		verb		ba	ka	
3734	379	373	c	1	اَكِنْرَا	akinrā	akinra		akenda				-end-		verb		ba	ki	
3752	371	375	b	2	اَلِپُ	alipu	alipu		aliporadidi				r-d-d		verb		ar	li	
3749	371	375	a	2	اَلِپُ	alipu	alipu		aliporudi				r-d-d		verb		ar	li	
3673	373	367	c	2	عَطِيْكَ	ʿaṭı̄ka	atika		Atika				3-tw-k		persn		ar		
3708	377	371	a	2	ػِنْرَا	kʲinrā	chinra		chenda				-end-		verb		ba	ki	
3710	377	371	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3741	370	374	a	3	حَيْدَارِ	ḥaydāri	haydari		Haidari				h-d-r		title		ar		
3729	379	373	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3721	378	372	b	1	هَيَمُ	hayamu	hayamu		hayamo				LOC		loc		ba		
3716	377	371	d	2	حَيُ	ḥayu	hayu		hayo				h-		dem		ba		
3711	377	371	b	2	حُتُوُظِيْكَ	ḥutuwuẓı̄ka	hutuwudhika		hutoudhika				3-zw-zw		verb		ar	hu	
3712	377	371	c	1	كَبَ	kaba	kaba		kamba				-amb-		verb		ba	ka	
3732	379	373	b	1	كَدَمَنَ	kadamana	kadamana		kandamana				-andam-		verb		ba	ka	
3718	378	372	a	1	كَنِنَ	kanina	kanina		kanena				-nen-		verb		ba	ka	
3698	376	370	a	2	كَغِيَ	kaghiya	kaghiya		kangia				-ingi-		verb		ba	ka	
3731	379	373	a	3	كَتُكَ	katuka	katuka		katoka				-to-		verb		ba	ka	
3709	377	371	a	3	كِمْپِيْكَ	kimpı̄ka	kimpika		kimpeka				-pelek-		verb		ba	ki	
3737	379	373	d	2	كْوَوُ	kwawu	kwawu		kwao				-ao		poss		ba		
3754	371	375	c	1	مَنِنُ	maninu	maninu		maneno				-nen-		noun		ba		
3701	376	370	b	2	مْكُنُ	mkunu	mkunu		mkono				-kono		noun		ba		
3720	378	372	a	3	مْغُ	mghu	mghu		Mngu				-ngu		godn		ba		
3722	378	372	b	2	مُيُنِ	muyuni	muyuni		moyoni				-oyo		noun		ba		
3689	375	369	b	2	مُوْمِ	mūmi	mumi		mume				-ume		noun		ba		
3723	378	372	b	3	مْوَانْغُ	mwānghu	mwanghu		mwangu				-angu		poss		ba		
3691	375	369	c	1	نَوِ	nawi	nawi		nawe				na		conj		ba		
3751	371	375	b	1	رِپُ	ripu	ripu		ndipo				ni		focus		ba		
3726	378	372	c	3	رُيَغُ	ruyaghu	ruyaghu		nduyangu				-dugu		noun		ba		
3692	375	369	c	2	نِرَا	nirā	nira		nenda				-end-		verb		ba	a	
3767	373	377	a	2	نِمِتِيْيَ	nimitı̄ya	nimitiya		nimetia				-ti-		verb		ba	me	
3676	373	367	d	3	پَمُيَا	pamuyā	pamuya		pamoya				-moja		adv		ba		
3690	375	369	b	3	وَكِ	waki	waki		wake				-ake		poss		ba		
3675	373	367	d	2	وُتِ	wuti	wuti		wote				-ote		qual		ba		
3742	370	374	b	1	اَكَصَلِ	akaṣali	akasali						sw-l-w		verb		ar	ka	
3702	376	370	b	3	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
3703	376	370	c	1	اَكَىْنُكَ	akaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
3736	379	373	d	1	حَتَ	ḥata	hata						h-t-t		conj		ar		
3790	375	379	c	1	اَصُبُحِ	aṣubuḥi	asubuhi						sw-b-hh	morning and evening,	noun		ar		
3707	377	371	a	1	كَمَ	kama	kama						k-m-a		conj		ar		
3672	373	367	c	1	كَمْپِكِيَ	kampikiya	kampikiya		kampikia				-pik-		verb		ba	ka	
3704	376	370	c	2	كِتِيْنِ	kitı̄ni	kitini						-ti		noun		ba		
3717	377	371	d	3	كُنَمْبِيَا	kunambiyā	kunambiya						-amb-		verb		ba	ku	
3700	376	370	b	1	كْوَا	kwā	kwa						-a		ref		ba		
3684	374	368	d	1	مْتُ	mtu	mtu						-tu		noun		ba		
3766	373	377	a	1	نَمِ	nami	nami						na		conj		ba		
3724	378	372	c	1	سَسَا	sasā	sasa						sasa		adv		ba		
3719	378	372	a	2	شَهِدِ	shahidi	shahidi						sh-h-d		noun		ar		
3768	373	377	a	3	تَمُ	tamu	tamu						-tamu		adj		ba		
3780	374	378	b	2	تَتُ	tatu	tatu						-tatu		num		ba		
3674	373	367	d	1	وَكَلَ	wakala	wakala						-l-		verb		ba	ka	
3713	377	371	c	2	وَاتُ	wātu	watu						-tu		noun		ba		
3739	370	374	a	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
3747	370	374	d	2	اَكِرِجِيْيَا	akirijı̄yā	akirijiya		akirejeya				r-j-3		v		a	ki	
3791	375	379	c	2	نَيْيُوْنِ	nayyūni	nayyuni		na yioni										
3814	378	382	b	1	اِسْمُ	ismu	ismu		isimu				2-s-m	in the name of the Almighty	n		a		
3784	374	378	d	1	عَدَادِ	ʿadādi	adadi							I have told you the number.					
3785	374	378	d	2	نِمِوَمْبِيَ	nimiwambiya	nimiwambiya		nimewambiya										
3772	373	377	c	1	نَئَبَوُ	naabawu	naabawu		na ambao				amb-		rel		b		
3793	375	379	d	2	اِسِپُغُكِيْيَا	isipughukı̄yā	isipughukiya		isipungukiya										
3786	375	379	a	1	اَحِفَظِيُ	aḥifaẓiyu	ahifadhiyu		ahifadhiyo					Whoever learns [the stanzas] by heart,					
3799	376	380	c	2	تَمْكَ	tamka	tamka		~										
3801	376	380	d	2	تَمُوَافِكِيْيَا	tamuwāfikı̄yā	tamuwafikiya					God will make the person succeed in whatever he asks.							
3813	378	382	a	2	سَعِرِ	saʿiri	sairi												
3809	377	381	c	3	نَجَرِبُ	najaribu	najaribu		na jaribu			i.e. if you don't believe it, try it and see.							
3812	378	382	a	1	لَاطرد	lāṭrd	latrd		la taridi					Reject Hell					
3798	376	380	c	1	نَئَتَكَوُ	naatakawu	naatakawu		na atakaotamka atakaotamka				-tamk-		v		b	ta	
3773	373	377	c	2	وَزِسُمَ	wazisuma	wazisuma		wazisoma				-som-		v		b	a	
3761	372	376	b	2	لَلِلُوْتِرِّكَ	lalilūtirrika	lalilutirrika		lalilotendeka				-tend-		v		b	li	
3559	361	355	d	1	اَيْفَرِقِ	ayfariqi	ayfariqi		aifariki				f-r-q		verb		ar	subj	
3782	374	378	c	1	وَسَبَعَ	wasabaʿa	wasabaa		wa sabaa				s-b-3	and seven, and seventy --	num		a		
3783	374	378	c	2	وَسِتِيْنِ	wasitı̄ni	wasitini		wa sitini			In fact, the R version of the ballad has 383 stanzas, not 377.	s-t-t		num		a		
3795	376	380	a	2	حَتَظِلِلِيْكَ	ḥataẓililı̄ka	hatadhililika						dh-l-l		v		a	ta	y
817	84	82	b	2	مْكُوْرُنِ	mkūruni	mkuruni		mkondoni			\\Swa{mkondo} has the basic meaning of \\q{a place where water passes by}, hence when referring to the sea it means \\q{current}, and when referring, as here, to a town it means \\q{drain, gutter}.  It is commonly believed that spirits live in drains.  When a woman is possessed and speaks in tongues, and the woman's relatives succeed in appeasing the spirit, which then wants to leave, they take the woman to the \\Swa{mkondo} to throw the spirit out.  Ali therefore throws the devil into the drain to warn him to stay in his proper place.	-kondo		n		b		
3415	347	341	c	2	مْپْوِكِيَكِ	mpwikiyaki	mpwikiyaki		mpweke yake				peke		adv		b		
3816	378	382	b	3	جَبَارِ	jabāri	jabari		Jabari				j-b-r		godn		ar		
3756	371	375	d	1	مَصَحَبَ	maṣaḥaba	masahaba		Masahaba				sw-hh-b		title		ar		
3800	376	380	d	1	مُلَ	mula	mula		Mola				a-a-l		godn		ar		
3796	376	380	b	1	مْتُيِ	mtuyi	mtuyi		mtuye				-tu		noun		ba		
3792	375	379	d	1	مُيَ	muya	muya		moya				-oyo	not a [single] one being missed out.	noun		ba		
3787	375	379	a	2	مُيُوْنِ	muyūni	muyuni		moyoni				-oyo		noun		ba		
3804	377	381	a	3	وَهَابُ	wahābu	wahabu		Wahabu				w-h-b		godn		ar		
3818	378	382	c	2	وَكِ	waki	waki		wake				-ake		poss		ba		
3770	373	377	b	2	زَنْغُ	zanghu	zanghu		zangu				-angu		poss		ba		
3807	377	381	c	1	اَوْ	aw	au						2-w		conj		ar		
3775	373	377	d	2	زُتِ	zuti	zuti		zote				-ote		qual		ba		
3805	377	381	b	1	اَتَجِبِوَا	atajibiwā	atajibiwa						j-a-b		verb		ar	ta	
3810	377	381	d	1	اَدَلِلِشِيْ	adalilishii	adalilishii		adalilishe				d-l-l		verb		ar	subj	
3806	377	381	b	2	جَوَابُ	jawābu	jawabu						j-a-b		noun		ar		
222	22	22	c	2	اَبُوْ	abuu	abuu		Abu				a-b-w		title		ar		
1028	106	104	a	1	اَػُرُكَ	akʲuruka	achuruka		achondoka				-ondo-		verb		ba	ki	
3743	370	374	b	2	اَظُهُرِا	aẓuhuriā	adhuhuria	aẓuhurī	adhuhuri				zw-h-r		noun		ar		
2414	245	239	d	2	عَفُوَا	ʿafuwā	afuwa		afua				3-f-a		noun		ar		
1390	144	139	c	1	عَيْنِ	ʿayni	ayni		aini				3-a-n		noun		ar		
273	27	27	a	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini				b-a-n		verb		ar	ka	
893	92	90	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
3789	375	379	b	2	اَكَزِبَيِنِ	akazibayini	akazibayini		akazibaini				b-a-n		verb		ar	ka	
3740	370	374	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3802	377	381	a	1	اَوْمْبَلُ	awmbalu	aumbalu		aombalo				-omb-		verb		ba	a	
3769	373	377	b	1	بَىْتِ	bayti	bayti		baiti				b-y-t		noun		ar		
3777	374	378	a	1	بَىْتِيْزِ	baytı̄zi	baytizi		baitize				b-y-t	Know that its stanzas	noun		ar		
3771	373	377	b	3	حُكُمَ	ḥukuma	hukuma		hukoma				-kom-		verb		ba	hu	
3815	378	382	b	2	يَكِ	yaki	yaki		yake				-ake		poss		ba		
3757	371	375	d	2	كِوَامْبِيَا	kiwāmbiyā	kiwambiya						-amb-		verb		ba	ki	
3760	372	376	b	1	كُلَ	kula	kula						k-l-l	[about] everything that had been done,	pron		ar		
1107	115	112	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
3759	372	376	a	2	كُپُلِيْكَ	kupulı̄ka	kupulika						-pulik-		verb		ba	ku	
3774	373	377	d	1	كْوَ	kwa	kwa						-a		ref		ba		
3803	377	381	a	2	كْوَ	kwa	kwa						-a		ref		ba		
3794	376	380	a	1	كْوَنْدَ	kwanda	kwanda						-anz-		verb		ba	ku	
3788	375	379	b	1	مْتُ	mtu	mtu						-tu	that person [should] recite them	noun		ba		
3808	377	381	c	2	مْتُ	mtu	mtu						-tu		noun		ba		
3811	377	381	d	2	وَصِيْيَا	waṣı̄yā	wasiya						w-sw-a		noun		ar		
3776	373	377	d	3	زِتَوِلِيَ	zitawiliya	zitawiliya		zitaeleya				-ele-		v		b	ta	
3755	371	375	c	2	اَكَجِتَهِدِ	akajitahidi	akajitahidi						j-h-d		v		a	ka	
15	2	2	c	1	نَأَرَاحِيْمِ	naarāḥı̄mi	naarahimi		na ar-rahimi				r-hh-m		godn		a		
2893	294	288	b	2	نَجَعْفَرِا	najaʿfariā	najafaria	najaʿfarī	na Jaafari				j-3-f-r		persn		a		
1021	105	103	b	1	نَيِوُ	nayiwu	nayiwu		na yeo				-eo		adv		b		
1094	113	110	d	1	نَزَءِدِ	nazaidi	nazaidi		na zaidi				z-a-d		adv		a		
1657	170	165	b	2	نِخَطَارِ	nikhaṭāri	nihatari		ni hatari				kh-tw-r		n		a		
399	40	40	c	1	نِهَيُ	nihayu	nihayu		ni hayo				h-		dem		b		
2584	262	256	c	3	نِجَعْفَرِ	nijaʿfari	nijafari		ni Jaafari				j-3-f-r		persn		a		
1571	162	157	b	2	نِجَڠِنَ	nijagina	nijagina		ni jagina				jagina		n		b		
1415	146	141	d	2	نِكَلِ	nikali	nikali		ni kali				-kali		adj		b		
2672	271	265	c	2	نِكِتَعَمَلِيْ	nikitaʿamalii	nikitaamalii		nikitaamali				a-m-l		v		a	ki	
2843	289	283	b	1	نِسَلَامَ	nisalāma	nisalama		ni salama				s-l-m		n		a		
2609	265	259	b	1	نِسَلَامَ	nisalāma	nisalama						s-l-m		n		a		
2948	300	294	a	1	اَكَيِيُوْنَ	akayiyūna	akayiyuna		akaiona				-on-	Fatima saw it,	verb		ba	ka	
379	38	38	b	1	اَكَمْتَ	akamta	akamta		akamba	*			-amb-		verb		ba	ka	
2495	253	247	d	1	اَكَبَ	akaba	akaba		akamba				-amb-		verb		ba	ka	
2020	207	201	d	2	اَكَمُوُمْبِيَا	akamuwumbiyā	akamuwumbiya		akamuombeya				-omb-		verb		ba	ka	
3274	333	327	c	1	اَكَمُوُنَ	akamuwuna	akamuwuna		akamuona				-on-		verb		ba	ka	
3706	376	370	d	2	اَكَمْوِرِّيا	akamwirriyā	akamwirriya		akamwendeya				-end-		verb		ba	ka	
854	88	86	b	1	اَكَنِيْنَ	akanı̄na	akanina		akanena				-nen-	the devil said:	verb		ba	ki	
2739	278	272	a	1	اَكَنِيْنَ	akanı̄na	akanina		akanena				-nen-		verb		ba	ki	
3448	350	344	d	2	اَكَغِيْيَا	akaghı̄yā	akaghiya		akangiya				-ingi-		verb		ba	ka	
2130	217	211	b	2	اَكَتُكَ	akatuka	akatuka		akatoka				-to-		verb		ba	ka	
2252	229	223	a	1	اَكَتُكَ	akatuka	akatuka		akatoka				-to-	Ja'far went out,	verb		ba	ka	
3414	347	341	c	1	اَكَتُكَ	akatuka	akatuka		akatoka				-to-		verb		ba	ka	
293	29	29	a	2	اَكَوُضِيْكَ	akawuḍı̄ka	akawudhika		akaudhika				3-zw-zw		verb		ar	ka	
69	7	7	c	1	اَكِرَا	akirā	akira		akenda				-end-		verb		ba	ki	
718	73	72	c	2	اَكِرَا	akirā	akira		akenda				-end-		verb		ba	ki	
997	102	100	d	1	اَكِرَا	akirā	akira		akenda				-end-		verb		ba	ki	
3392	345	339	c	1	اَكِنْرَّا	akinrrā	akinrra		akenda				-end-		verb		ba	ki	
3497	355	349	c	3	اَكِيْكُمَ	akı̄kuma	akikuma		akikoma				-kom-		verb		ba	ki	
2518	256	250	a	1	اَكِتُكَا	akitukā	akituka		akitoka				-to-		verb		ba	ki	
1505	155	150	d	1	اَلِفَرِقِ	alifariqi	alifariqi		alifariki				f-r-q		verb		ar	li	
1444	150	145	a	1	اَلِئِنَمِيَا	aliinamiyā	aliinamiya		aliinamia				-inam-		verb		ba	li	
3057	311	305	b	2	اَلِلُوْ	aliluu	aliluu		alilofasiri				f-s-r		verb		ar	li	
2428	247	241	a	2	اَلِپُ	alipu	alipu		alipojilisi				j-l-s		verb		ar	li	
1772	181	176	d	3	عَلِيْيَا	ʿalı̄yā	aliya		Aliya				3-l-y		persn		ar		
2486	252	246	d	4	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn		ar		
3509	356	350	d	2	عَلِيَا	ʿaliyā	aliya		Aliya				3-l-y		persn		ar		
78	8	8	c	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
161	17	17	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
211	21	21	c	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
235	23	23	d	2	عَلِي	ʿalii	alii		Aliyi				3-l-y		persn		ar		
272	27	27	a	1	عَلِي	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1274	133	128	b	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia				-amb-		verb		ba	ka	
361	36	36	b	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia				-amb-		verb		ba	ka	
489	50	50	a	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia				-amb-	Ali told the Hashimite:	verb		ba	ka	
509	52	52	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia				-amb-	The devil said to him:	verb		ba	ka	
574	58	58	c	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia				-amb-	She told him: They are not true,	verb		ba	ka	
82	9	9	a	1	اَكَفَنْيَّ	akafanı̄ya	akafanyaU+0651	akafanyya	akafanya				-fany-		verb		ba	ka	
111	12	12	a	1	اَكَفَنْيَّا	akafanı̄yā	akafanyaU+0651a	akafanyyā	akafanya				-fany-		verb		ba	ka	
2226	226	220	a	2	اَكَفَصِيْرِا	akafaṣı̄riā	akafasiria	akafaṣı̄rī	akafasiri				f-s-r		verb		ar	ka	
296	29	29	c	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
1417	147	142	a	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
2882	293	287	a	2	اَكَيْنُكَ	akaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
2890	294	288	a	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka				-inu-	The Bearer of Good Tidings got up	verb		ba	ka	
2919	297	291	a	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
3090	314	308	c	1	اكَيْنُكَ	ākaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
292	29	29	a	1	عَلِي	ʿalii	alii		Aliyi				3-l-y		persn		ar		
306	30	30	c	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
357	35	35	d	1	عَلِى	ʿalii	alii		Aliyi				3-l-y		persn		ar		
363	36	36	c	1	عَلِي	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1453	151	146	a	2	مَمَكِ	mamaki	mamaki		mamake				mama		noun		ba		
646	65	65	c	1	اَمِپَرَا	amiparā	amipara		amepanda				-pand-	has he led the prayers [early],	verb		ba	me	
3263	332	326	b	1	اَمِپَرَا	amiparā	amipara		amepanda				-pand-		verb		ba	me	
136	14	14	c	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
480	49	49	a	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
2851	290	284	a	2	اَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title		ar		
2996	305	299	a	2	امِيْنِ	āmı̄ni	amini		Amini				a-m-n		title		ar		
1545	159	154	d	3	اَغَلِيَا	aghaliyā	aghaliya		angaliya				-anga-		verb		ba	imp	
3687	375	369	a	2	اَتَمْكِيْ	atamkii	atamkii		atamke				-tamk-		verb		ba	past	
3642	370	364	a	3	عَطِيْكَ	ʿaṭı̄ka	atika		Atika				3-tw-k		persn		ar		
3677	374	368	a	1	عَطِيْكَ	ʿaṭı̄ka	atika		Atika				3-tw-k		persn		ar		
1918	197	191	b	3	بَبَنْغُ	babanghu	babanghu		babangu				baba		noun		ba		
223	22	22	c	3	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn		ar		
1742	179	174	a	3	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn		ar		
1899	195	189	c	1	بَاوُ	bāwu	bawu		bao				bao		noun		ba		
3397	346	340	a	1	بَرُوَا	baruwā	baruwa		barua				b-r-w		noun		ar		
2581	262	256	b	3	بَشِيْرِا	bashı̄riā	bashiria	bashı̄rī	Bashiri				b-sh-r		title		ar		
3271	333	327	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
11	2	2	a	1	بِسْمِلَهِ	bismilahi	bismilahi		bismillahi				2-s-m		noun		ar		
3544	360	354	b	4	ػَكِ	kʲaki	chaki		chake				-ake		poss		ba		
924	95	93	b	1	اِنِرَا	inirā	inira		enenda				-end-	Go away, you braggart,	verb		ba	imp	
1253	130	126	b	1	كَمْوَامْبِيَ	kamwāmbiya	kamwambiya		kamwambia				-amb-		verb		ba	ka	
751	76	75	d	1	ڠُوُ	guwu	guwu		guu				-guu	[The devil] took to his heels.	noun		ba		
2740	278	272	a	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima				h-sh-m		title		ar		
1450	150	145	d	1	حَيُ	ḥayu	hayu		hayo				h-		dem		ba		
1577	163	158	a	1	هَيُ	hayu	hayu		hayo				h-		dem		ba		
850	87	85	d	1	هِرَا	hirā	hira		henda				-end-	he would turn [to see if it was true], and kept going.	verb		ba	ki	
458	46	46	d	1	خِيْرِ	khı̄ri	hiri		heri				kh-y-r	you might as well go back home.	noun		ar		
1276	133	128	b	3	حِيْرِا	ḥı̄riā	hiria	ḥı̄rī	heri				kh-y-r		noun		ar		
2669	271	265	b	2	حِيُ	ḥiyu	hiyu		hiyo				h-		dem		ba		
1047	107	105	d	2	حُموَاغَلِيَا	ḥumwāghaliyā	humwaghaliya		humwangaliya				-anga-		verb		ba	hu	
543	55	55	c	1	حُنِيْنَ	ḥunı̄na	hunina		hunena				-nen-	You said you were going to Friday [prayers],	verb		ba	hu	
498	50	50	d	3	هُغِيَا	hughiyā	hughiya		hungiya			The obvious translation is: "the congregation was already going in", but being late would not have prevented Ali going in -- being late for prayers is not a sin -- even though he might have been ashamed to be even a few minutes late.  We are probably to understand that Ali, misled by the devil, thought the prayers were completely over, i.e. \\Swa{wenye kusali hutoka}, \\E{those who had been praying were already coming out}.  \\Swa{hungia} may have been used instead of \\Swa{hutoka} because of the rhyming requirements -- in Sh.Yahya's view, there is often shoddy composition in ballads because the composers are not the best poets, and remain anonymous.	-ingi-		verb		ba	hu	
3027	308	302	b	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni				hh-s-y-n		persn		ar		
2423	246	240	c	3	اِكِكُمَ	ikikuma	ikikuma		ikikoma				-kom-		verb		ba	ki	
1949	200	194	c	2	كَيْتَ	kayta	kayta		kaeta				-let-		verb		ba	ka	
2690	273	267	b	1	اِلِيْ	ilii	ilii		ile				ili		conj		ba		
2233	226	220	d	2	اِمِسِمَمِيَا	imisimamiyā	imisimamiya		imesimamiya			Note that this is anachronistic -- Ja'far's town is at least a day's travel from Mecca, and at this early stage of Islam it is unlikely that its rituals would have spread this far.	-simam-		verb		ba	me	
1075	110	108	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
1104	114	111	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
1192	123	120	b	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1273	133	128	a	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1418	147	142	a	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1429	148	143	b	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
1474	153	148	a	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
2666	271	265	a	1	كَيِوَاتَ	kayiwāta	kayiwata		kaiwata				-ach-		verb		ba	ka	
349	35	35	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
3744	370	374	c	1	كَنَدَامَنَ	kanadāmana	kanadamana		kandamana	*			-andam-		verb		ba	ka	
2016	207	201	b	2	كَرِيْمُ	karı̄mu	karimu		Karimu				k-r-m		godn		ar		
267	26	26	c	1	پِتِ	piti	piti		pete				-pet-		noun		ba		
849	87	85	c	3	هُيُ	huyu	huyu		huyo			\\Swa{Huyo!} is a cry of warning, and may mean \\q{Stop, thief!}.  Here the congregation of the mosque amuse themselves by shouting \\Swa{huyo! yuwaja!} at the fleeing devil, to see him turn and look back in consternation.	h-		dem		ba		
1195	123	120	c	3	حَيْدَارِ	ḥaydāri	haydari		Haidari				h-d-r		title		ar		
84	9	9	b	1	فَطِمَ	faṭima	fatima		Fatima				f-t-m		persn		ar		
3341	340	334	c	2	هَنْغَالِ	hanghāli	hanghali		hangalikupoka				-pok-		verb		ba	ngali	
2310	235	229	a	1	هَپُ	hapu	hapu		hapo				h-		dem		ba		
2599	264	258	b	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3308	337	331	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3576	363	357	c	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3581	364	358	a	1	حَپُا	ḥapuā	hapua	hapū	hapo				h-		dem		ba		
3748	371	375	a	1	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
2819	286	280	c	2	حَسَانِ	ḥasāni	hasani		Hasani				hh-s-n		persn		ar		
2822	287	281	a	1	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn		ar		
1526	158	153	a	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
2470	251	245	c	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari				j-3-f-r		persn		ar		
697	70	70	c	1	كِنِرَّا	kinirrā	kinirra		kenenda				-end-	and [sure enough] the person who had deceived him went	verb		ba	ki	
1178	122	119	a	2	مَمَكِ	mamaki	mamaki		mamake				mama		n		ba		
3444	350	344	c	1	نْيُبا	nyubā	nyuba		nyumba				nyuma		adv		ba		
3471	353	347	b	1	نْيُبَ	nyuba	nyuba		nyumba				nyuma		adv		ba		
2353	239	233	c	1	كَوَاڠِا	kawāgiā	kawagia	kawāgī	kawage				-ag-		verb		ba	ka	
1507	156	151	a	1	كِكْوَامْبِيَا	kikwāmbiyā	kikwambiya		kikwambia				-amb-		verb		ba	ki	
1641	168	163	d	2	كَوَاپِسِيَا	kawāpisiyā	kawapisiya		kawapisiya				-pit-		verb		ba	ka	
300	29	29	d	3	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
3215	326	320	d	2	كِمْواغَلِيَا	kimwāghaliyā	kimwaghaliya		kimwangaliya				-anga-		verb		ba	ki	
1593	164	159	c	1	كِتَڠَ	kitaga	kitaga		kitanga				-tang-		verb		ba	ki	
3406	346	340	d	1	كِنِرَا	kinirā	kinira		kenenda				-end-		verb		ba	ki	
1870	192	186	b	3	كِتُكَ	kituka	kituka		kitoka				-to-		verb		ba	ki	
2083	213	207	b	3	كُكُزِيْدِا	kukuzı̄diā	kukuzidia	kukuzīdī	kukuzidi				z-a-d		verb		ar	ku	
3487	354	348	d	2	كُمْفُڠُلِيَا	kumfuguliyā	kumfuguliya		kumfunguliya				-fung-		verb		ba	ku	
1982	203	197	d	2	كُنِوِلِيَا	kuniwiliyā	kuniwiliya		kunieleya				-ele-		verb		ba	ku	
954	98	96	b	2	كُنِزِدِا	kunizidiā	kunizidia	kunizidī	kunizidi				z-a-d		verb		ar	ku	
3549	360	354	d	2	كُيَغَلِيْيَا	kuyaghalı̄yā	kuyaghaliya		kuyangaliya				-anga-		verb		ba	ku	
3410	347	341	a	3	كْوَاكِ	kwāki	kwaki		kwake				-ake		poss		ba		
3064	312	306	a	1	كْوِنُ	kwinu	kwinu		kwenu				-enu		poss		ba		
1871	192	186	c	1	مَلِشُوْنِ	malishūni	malishuni		malishoni				-l-		noun		ba		
1336	139	134	b	1	مَمَكُ	mamaku	mamaku		mamako				mama		noun		ba		
3358	342	336	b	1	مَبُ	mabu	mabu		mambo				-amb-		noun		ba		
542	55	55	b	3	مَپِمَ	mapima	mapima		mapema			Fatima is surprised that Ali has come back so soon after leaving, and supposes that it was not yet time for the prayers.	-ema		adv		ba		
2360	240	234	a	3	مَتُڠَانِ	matugāni	matugani		matungani				-tung-		noun		ba		
2858	290	284	d	1	بُنَ	buna	buna		mbona				-on-		conj		ba		
1845	188	183	d	1	مْبِيِ	mbiyi	mbiyi		mbee				-bele		adv		ba		
2458	250	244	b	1	مْڠِيْنِ	mgı̄ni	mgini		mgeni				-geni		noun		ba		
3066	312	306	a	3	مْڠِيْنِ	mgı̄ni	mgini		mgeni				-geni		noun		ba		
3498	355	349	d	1	مْلَڠُوْ	mlaguu	mlaguu		mlango				-lango		noun		ba		
3329	339	333	b	1	مْتُمِ	mtumi	mtumi		Mtumi				-tum-		title		ba		
730	74	73	d	1	مْمُيَ	mmuya	mmuya		mmoya				-moja	not one [person] is [still] praying there.	num		ba		
265	26	26	b	1	مْتُيِ	mtuyi	mtuyi		mtuye				-tu		noun		ba		
433	44	44	b	1	مْتُيِ	mtuyi	mtuyi		mtuye				-tu	[is that] that person was a devil --	noun		ba		
1889	194	188	b	1	مْوَاكُيُوَا	mwākuyuwā	mwakuyuwa		mwakuyua				-ju-		verb		ba	a	
1487	154	149	b	1	نَيُوَا	nayuwā	nayuwa		nayua				-ju-		verb		ba	a	
2682	272	266	c	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
1434	149	144	a	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri				n-sw-r		persn		ar		
2280	232	226	a	2	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri				n-sw-r		persn		ar		
2333	237	231	b	3	نَصِيْرِا	naṣı̄riā	nasiria	naṣı̄rī	Nasiri				n-sw-r		persn		ar		
2713	275	269	b	2	نْدِيَا	ndiyā	ndiya		ndia				-jia		noun		ba		
2775	281	275	d	2	رَانِ	rāni	rani		ndani				ndani		adv		ba		
2815	286	280	a	3	نْرَانِ	nrāni	nrani		ndani				ndani		adv		ba		
3699	376	370	a	3	نْرَانِ	nrāni	nrani		ndani				ndani		adv		ba		
17	2	2	d	1	رِيُ	riyu	riyu		ndiyo				ni		focus		ba		
251	25	25	a	3	رُيَنْغُ	ruyanghu	ruyanghu		nduyangu				-dugu		noun		ba		
1243	129	125	b	3	نِنْدَا	nindā	ninda		nenda				-end-		verb		ba	a	
2163	220	214	b	1	نِنْرَا	ninrā	ninra		nenda				-end-	I am going to stay with my father,	verb		ba	a	
3758	372	376	a	1	كَوَامْبِيَ	kawāmbiya	kawambiya		kawambia				-amb-	He told them as they listened,	verb		ba	ka	
1763	181	176	a	2	نِمِكِيْرِا	nimikı̄riā	nimikiria	nimikı̄rī	nimekiri				q-r-r		verb		ar	me	
1576	162	157	d	2	نِمْكُپِجِيَا	nimkupijiyā	nimkupijiya		nimekupijiya	*			-pig-		verb		ba	me	
1973	203	197	a	1	نِمِمُوَاڠَ	nimimuwāga	nimimuwaga		nimemuaga				-ag-		verb		ba	me	
3545	360	354	c	1	نِيُنْيَّ	niyunı̄ya	niyuniya	niyunyya	nionya				-on-		verb		ba	imp	
605	61	61	c	1	ڠُوْ	guu	guu		nguo				-guu	still wearing his good clothes.	noun		ba		
945	97	95	c	1	پِتِ	piti	piti		pete				-pet-		noun		ba		
2880	292	286	d	3	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
2908	295	289	d	3	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
2269	230	224	d	2	كَتُكِيْيَا	katukı̄yā	katukiya		katokeya				-to-		verb		ba	ka	
2723	276	270	b	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
1362	141	136	d	2	مَمَكِيْ	mamakii	mamakii		mamake				mama		noun		ba		
2320	236	230	a	2	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri				n-sw-r		persn		ar		
1745	179	174	b	3	زُبِيْرِا	zubı̄riā	zubiria	zubı̄rī	Zubiri				-ta		noun		ba		
1265	132	127	b	3	زُبِيْرِا	zubı̄riā	zubiria	zubīrī	Zubiri				-ta		noun		ba		
2437	247	241	d	2	تَيْكِتِلِيَا	taykitiliyā	taykitiliya		tayiketiliya				-ka-		verb		ba	ta	
430	44	44	a	1	تِنَ	tina	tina		tena				tena	And the conclusion in my heart	conj		ba		
1986	204	198	b	1	تُپِنْدَانِ	tupindāni	tupindani		tupendane				-pend-		verb		ba	subj	
1050	108	106	b	1	تُتَشِنْرَانَ	tutashinrāna	tutashinrana		tutashindana				-shind-		verb		ba	ta	
2055	211	205	a	1	اُػِنْرَا	ukʲinrā	uchinra		uchenda				-end-		verb		ba	ki	
2959	301	295	b	2	اُمِبَدِلِكَ	umibadilika	umibadilika		umebadilika				b-d-l		verb		ar	me	
3152	320	314	c	2	اُمِقُبَلِ	umiqubali	umiqubali		umekubali				q-b-l		verb		ar	me	
2644	268	262	d	2	اُمِلِمَتِيْيَ	umilimatı̄ya	umilimatiya		umelimatiya				-limat-		verb		ba	me	
3284	334	328	c	1	اُپِتْوِ	upitwi	upitwi		upetwe				-pat-		verb		ba	past	
1488	154	149	b	2	اُتَنِ	utani	utani		utanijibu				j-a-b		verb		ar	ta	
3827	379	383	c	1	اُتِنْدِ	utindi	utindi		utendi				-tend-		noun		ba		
2060	211	205	b	3	اُوِ	uwi	uwi		uwe				-w-		verb		ba	subj	
1846	188	183	d	2	وَاكَنِتُلِيَا	wākanituliyā	wakanituliya		wakanitoleya				-to-		verb		ba	ka	
2901	295	289	b	1	وَكَتَغَنْيَ	wakataghanya	wakataghanya		wakatanganya				-changany-		verb		ba	ka	
57	6	6	b	4	وَاكِ	wāki	waki		wake				-ake		poss		ba		
1663	171	166	a	1	وَكِسِلِيْيَ	wakisilı̄ya	wakisiliya		wakisikia	*			-siki-		verb		ba	ki	
1789	183	178	c	2	وَامِلِشَ	wāmilisha	wamilisha		wamelisha				-l-		verb		ba	me	
2024	208	202	a	4	وَننْغُ	wannghu	wannghu		wangu				-angu		poss		ba		
1302	136	131	a	1	وَنِتِيَ	wanitiya	wanitiya		wanitia				-ti-		verb		ba	a	
2150	219	213	a	2	وِنْدَانِ	windāni	windani		wendani				-end-		noun		ba		
1118	116	113	b	1	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
1515	157	152	a	1	وِوِ	wiwi	wiwi		wewe				wewe		pron		ba		
227	23	23	a	2	يَكُ	yaku	yaku		yako				-ako		poss		ba		
268	26	26	c	2	يَكُ	yaku	yaku		yako				-ako		poss		ba		
1581	163	158	b	3	يَليْوُ	yalı̄wu	yaliwu		yaliyo				-li		verb		ba	li	
3120	317	311	c	1	يَلُوْغِيْيَ	yalūghı̄ya	yalughiya		yalongia				-ingi-		verb		ba	li	
2509	255	249	a	2	يَنْغُ	yanghu	yanghu		yangu				-angu		poss		ba		
1944	200	194	a	3	زَاكُ	zāku	zaku		zako				-ako		poss		b		
942	97	95	b	1	يِوُ	yiwu	yiwu		yeo				-eo		adv		ba		
3764	372	376	d	1	يُتِ	yuti	yuti		yote				-ote	he recounted everything to them.	qual		ba		
2696	273	267	d	2	زِمِنِپُتِيَا	ziminiputiyā	ziminiputiya		zimenipoteya				-pote-		verb		ba	me	
1181	122	119	b	3	زَاكِ	zāki	zaki		zake				-ake		focus		ba		
1549	160	155	b	2	زَاكِ	zāki	zaki		zake				-ake		focus		ba		
3778	374	378	a	2	زِيُوِنِ	ziyuwini	ziyuwini		ziyueni				-ju-		verb		ba	imp	
2364	240	234	c	2	زُتِ	zuti	zuti		zote				-ote		qual		ba		
2449	249	243	b	1	زُبَيْرِ	zubayri	zubayri		Zuberi				z-b-r		persn		ar		
648	65	65	d	1	اِيُ	iyu	iyu		yeo				juu	she was telling me just now in the inner [rooms]	adv		ba		
3388	345	339	a	1	زُبِيْرِ	zubı̄ri	zubiri		Zuberi				z-b-r		persn		ar		
3401	346	340	b	2	زُبِيْرِ	zubı̄ri	zubiri		Zuberi				z-b-r		persn		ar		
97	10	10	c	3	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title		ar		
3408	347	341	a	1	زُبِيْرِ	zubı̄ri	zubiri		Zuberi				z-b-r		persn		ar		
3219	327	321	b	2	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title		ar		
1261	132	127	a	2	اَبُوْ	abuu	abuu		Abu				a-b-w		title		ar		
1714	176	171	b	2	اَبُوْ	abuu	abuu		Abu				a-b-w		title		ar		
1859	190	185	b	1	اَبُوْ	abuu	abuu		Abu				a-b-w		title		ar		
1672	172	167	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
2247	228	222	b	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
2408	245	239	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
2503	254	248	c	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
2543	258	252	c	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
1694	174	169	b	2	قَوْامُ	qawāmu	qawamu	qaūmu	qaumu				q-w-m		noun		ar		
1861	190	185	b	3	سِشُتُكِ	sishutuki	sishutuki		sishutuke				-shitu-		verb		ba	imp	
2100	214	208	c	2	اُوِ	uwi	uwi		uwe				-w-		verb		ba	subj	
3431	349	343	a	3	زُبِيْرِ	zubı̄ri	zubiri		Zuberi				z-b-r		persn		ar		
2602	264	258	c	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka				-inu-		verb		ba	ka	
3038	309	303	c	1	اَكَبَ	akaba	akaba		akamba				-amb-		verb		ba	ka	
1768	181	176	c	2	حِتْوَا	ḥitwā	hitwa						-it-		v		b	hu	
1191	123	120	b	2	حِتْوَا	ḥitwā	hitwa						-it-		v		b	hu	
511	52	52	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali, what can I say?	persn		ar		
528	54	54	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali was annoyed,	persn		ar		
548	56	56	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke	persn		ar		
602	61	61	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali was [sitting] on a chair,	persn		ar		
612	62	62	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali, son of Abu Talib,	persn		ar		
620	63	63	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke:	persn		ar		
660	67	67	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke	persn		ar		
692	70	70	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali waited	persn		ar		
702	72	71	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali went carefully	persn		ar		
848	87	85	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3312	337	331	b	2	اَسِيَفِكِيْرِا	asiyafikı̄riā	asiyafikiria	asiyafikirī	asiyafikiri				f-k-r		verb		ar	past	
3696	375	369	d	3	عَطِيَا	ʿaṭiyā	atiya		Atiya				3-tw-k		persn		ar		
124	13	13	b	2	بَشِيْرِا	bashı̄riā	bashiria	bashirī	Bashiri				b-sh-r		title		ar		
563	57	57	b	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
1373	142	137	d	2	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia				-amb-		verb		ba	ka	
3201	325	319	c	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia				-amb-		verb		ba	ka	
3218	327	321	b	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia				-amb-		verb		ba	ka	
2984	303	297	d	1	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
80	8	8	d	1	خَبَارِ	khabāri	habari						kh-b-r		noun		ar		
1465	152	147	a	3	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
1645	169	164	b	1	هِكِ	hiki	hiki						h-		dem		ba		
160	16	16	d	3	حُلِيَا	ḥuliyā	huliya						-li-		verb		ba	hu	
2693	273	267	c	1	هُوْنَا	hūnā	huna		huona				-na		have		ba		
3114	316	310	d	3	هُنَمْبِيَا	hunambiyā	hunambiya						-amb-		verb		ba	hu	
3014	306	300	d	3	هُسِكِيَا	husikiyā	husikiya						-siki-		verb		ba	hu	
2821	286	280	d	2	هُوَاپِسِيَا	huwāpisiyā	huwapisiya						-pit-		verb		ba	hu	
1161	120	117	b	3	اِنَ	ina	ina						-ina		noun		ba		
1185	122	119	d	1	اِنَ	ina	ina						-ina		noun		ba		
1765	181	176	b	2	اِنَ	ina	ina						-ina		noun		ba		
1951	200	194	d	1	اِنَ	ina	ina						-ina		noun		ba		
2668	271	265	b	1	كَئَنْدَمَ	kaandama	kaandama						-andam-		verb		ba	ka	
3279	334	328	a	1	كَلِيَ	kaliya	kaliya		kalia				-li-		verb		ba	ka	
3715	377	371	d	1	كَمَ	kama	kama						k-m-a		conj		ar		
3502	356	350	b	1	كَمْبَ	kamba	kamba						-amb-		verb		ba	ka	
1209	124	121	d	2	كَمْوَامْبِيَا	kamwāmbiyā	kamwambiya						-amb-		verb		ba	ka	
1210	125	122	a	1	كَمْوَامْبِيَا	kamwāmbiyā	kamwambiya		kamwambia				-amb-		verb		ba	ka	
2772	281	275	c	1	كَمْوَامْبِيَ	kamwāmbiya	kamwambiya		kamwambia				-amb-		verb		ba	ka	
1068	110	108	a	2	كَتِكَ	katika	katika		kateka				kati		prep		ba		
1700	175	170	a	1	كَوَاجِبِشَ	kawājibisha	kawajibisha						j-a-b		verb		ar	ka	
1762	181	176	a	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia				-amb-		verb		ba	ka	
3317	338	332	a	1	كَوَامبِيَا	kawāmbiyā	kawambiya		kawambia				-amb-		verb		ba	ka	
2577	262	256	a	2	كِجَانَ	kijāna	kijana						-ana		noun		ba		
1848	189	184	a	2	كِسِمَ	kisima	kisima						-sima		noun		ba		
1862	190	185	c	1	كِسِمَ	kisima	kisima						-sima		noun		ba		
793	82	80	a	1	كُلَ	kula	kula						k-l-l	You do every [wicked] thing.	pron		ar		
2383	242	236	c	3	كُؤُظِيْكَ	kuuẓı̄ka	kuudhika						3-zw-zw		verb		ar	ku	
1294	135	130	a	2	كُيَنُظُمُ	kuyanuẓumu	kuyanudhumu						n-dw-m		verb		ar	ku	
145	15	15	c	2	كْوَا	kwā	kwa						-a		ref		ba		
153	16	16	b	2	كْوَ	kwa	kwa						-a		ref		ba		
163	17	17	b	1	كْوَا	kwā	kwa						-a		ref		ba		
180	18	18	d	1	كْوَا	kwā	kwa						-a		ref		ba		
985	101	99	c	3	كْوَا	kwā	kwa						-a		ref		ba		
1367	142	137	b	1	كْوَ	kwa	kwa						-a		ref		ba		
1974	203	197	a	2	كْوَا	kwā	kwa						-a		ref		ba		
1979	203	197	c	2	كْوَ	kwa	kwa						-a		ref		ba		
2058	211	205	b	1	كْوَا	kwā	kwa						-a		ref		ba		
2097	214	208	b	3	كْوَا	kwā	kwa						-a		ref		ba		
2131	217	211	c	1	كْوَا	kwā	kwa						-a	and when he got to his uncle's	ref		ba		
1744	179	174	b	2	حِتْوَا	ḥitwā	hitwa						-it-		v		b	hu	
1754	180	175	b	2	حِتْوَا	ḥitwā	hitwa						-it-		v		b	hu	
1143	118	115	c	3	حِتْوَاأِيِ	ḥitwaiyi	hitwaiyi		hitwaye	*			-it-		v		b	hu	
3232	328	322	d	1	هُيْفَرِقِ	huyfariqi	huyfariqi		kuifariki				f-r-q		v		a	hu	
714	73	72	a	2	اِبْلِيْسِ	iblı̄si	iblisi		ibilisi				b-l-s		persn		a		
1034	106	104	c	2	اَكَلِسُكُمَ	akalisukuma	akalisukuma						-sukum-		v		b	ka	
2387	243	237	a	2	تَمْكُ	tamku	tamku		tamko				-tamk-		noun		ba		
2030	208	202	c	4	وَنْغُ	wanghu	wanghu		wangu				-angu		poss		ba		
2637	268	262	a	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini				b-a-n		verb		ar	ka	
2765	280	274	c	3	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
2806	285	279	a	2	َكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
3116	317	311	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
3200	325	319	b	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini				b-a-n		verb		ar	ka	
3258	331	325	c	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini				b-a-n		verb		ar	ka	
3246	330	324	b	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini				b-a-n		verb		ar	ka	
3678	374	368	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini				b-a-n		verb		ar	ka	
470	48	48	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	So Ali went back,	persn		ar		
482	49	49	b	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
502	51	51	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali set off early,	persn		ar		
1	1	1	a	1	بِسْمِلَهِ	bismilahi	bismilahi		bismillahi				2-s-m	\\q{In the name of God} at the beginning,	noun		ar		
1888	194	188	a	2	اِنِرَانِ	inirāni	inirani		enendani				-end-		verb		ba	imp	
405	41	41	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
391	39	39	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
2986	304	298	a	1	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn		ar		
350	35	35	a	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima				h-sh-m		title		ar		
2262	230	224	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
2253	229	223	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn		ar		
2550	259	253	b	3	جَعْفَرِا	jaʿfariā	jafaria	jaʿfarī	Jaafari				j-3-f-r		persn		ar		
1150	119	116	b	1	كَبَ	kaba	kaba		kamba				-amb-		verb		ba	ka	
2498	254	248	a	1	كَمُوُلِيْزَا	kamuwulı̄zā	kamuwuliza		kamuuliza				-uz-		verb		ba	ka	
1370	142	137	c	1	مَمَكِيْ	mamakii	mamakii		mamake				mama		noun		ba		
2179	221	215	c	2	مَمَكِيْ	mamakii	mamakii		mamake				mama		noun		ba		
2334	237	231	c	1	مَمَكِ	mamaki	mamaki		mamake				mama		noun		ba		
2407	245	239	a	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri				n-sw-r		persn		ar		
762	78	77	a	2	نَيِ	nayi	nayi		naye				na		conj		ba		
1355	141	136	b	1	نَيِ	nayi	nayi		naye				na		conj		ba		
2660	270	264	b	3	نْدِيَنِ	ndiyani	ndiyani		ndiani				-jia		noun		ba		
565	57	57	c	2	زِوُ	ziwu	ziwu		zeo			Ali means that he set out in good time, so his lateness is inexplicable.  Am. \\Swa{zeo} is from a Bantu root, whereas Mv. \\Swa{wakati} is from an Arabic root.  Compare Muyaka: \\Swa{njeo hizi kutavunda}, \\E{this era will come to an end}.	-eo	[But] the time [I set out] was not late,	noun		ba		
3588	364	358	c	3	زُبِيْرِا	zubı̄riā	zubiria	zubīrī	Zuberi				z-b-r		persn		ar		
1168	121	118	a	3	پِتِ	piti	piti		pete				-pet-		noun		ba		
1924	198	192	a	1	پِتِ	piti	piti		pete				-pet-		noun		ba		
651	65	66	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia				-amb-	The Hashimite told him:	verb		ba	ka	
1177	122	119	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia				-amb-		verb		ba	ka	
1342	140	135	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia				-amb-		verb		ba	ka	
2107	215	209	b	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia				-amb-	and told him: Ja'far,	verb		ba	ka	
2279	232	226	a	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia				-amb-		verb		ba	ka	
1730	178	173	a	1	حُسِكِيَ	ḥusikiya	husikiya		husikia				-siki-		verb		ba	hu	
2841	289	283	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia				-amb-		verb		ba	ka	
100	11	11	a	1	مْوَانَ	mwāna	mwana		Mwana				-ana		noun		ba		
821	84	82	d	2	نَبِيَا	nabiyā	nabiya		Nabiya			The cowardly devil, making out that he is the injured party, now tries to get the Prophet to rebuke Ali for using undue force.  If a child is being bullied by someone, he may appeal to the nearest adult by saying \\Swa{umeshuhudia}, \\E{you saw him}, in order to get the adult to intervene.	n-b-y		title		ar		
724	74	73	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali, you are in a hurry.	persn		ar		
743	76	75	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali uttered these words:	persn		ar		
878	90	88	c	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali said: Yes, of course!	persn		ar		
857	88	86	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
861	89	87	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	On returning [home], Ali	persn		ar		
960	99	97	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
980	101	99	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1011	104	102	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1046	107	105	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1071	110	108	b	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1124	116	113	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1194	123	120	c	2	عَلِى	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1732	178	173	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2053	210	204	d	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2552	259	253	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2600	264	258	b	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2606	265	259	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2634	267	261	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2636	268	262	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2732	277	271	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2770	281	275	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2805	285	279	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2813	286	280	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2855	290	284	c	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2956	301	295	a	1	عِلِيْ	ʿilii	ilii		Aliyi	*			3-l-y		persn		ar		
3054	311	305	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3082	313	307	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3084	314	308	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3125	318	312	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3309	337	331	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3355	342	336	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3324	338	332	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3333	339	333	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3496	355	349	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3500	356	350	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3520	358	352	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3582	364	358	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3697	376	370	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3730	379	373	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3227	328	322	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3837	380	384	c	1	على	ʿlı̄	li		Aliyi				3-l-y		persn		ar		
623	63	63	b	2	بَشِيْرِا	bashı̄riā	bashiria	bashīrī	Bashiri				b-sh-r		title		ar		
2891	294	288	a	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title		ar		
2544	258	252	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
115	12	12	b	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
159	16	16	d	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
167	17	17	c	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
179	18	18	c	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
312	31	31	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
353	35	35	b	3	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
902	93	91	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m	and Fatima laughed a lot.	persn		ar		
2493	253	247	c	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
2944	299	293	c	1	فَطِيمَ	faṭı̄ma	fatima		Fatima				f-t-m	Fatima boiled [water],	persn		ar		
2964	302	296	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3074	313	307	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3099	315	309	c	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3145	320	314	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3679	374	368	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
3670	373	367	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima				f-t-m		persn		ar		
1909	196	190	c	2	حَپُ	ḥapu	hapu		hapo				h-		dem		ba		
3104	316	310	a	1	اَكَمْجِبُ	akamjibu	akamjibu						j-a-b		verb		ar	ka	
310	31	31	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya						-amb-		verb		ba	ka	
1105	114	111	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya						-amb-		verb		ba	ka	
1106	115	112	a	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia				-amb-		verb		ba	ka	
2178	221	215	c	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya						-amb-	He told his mother:	verb		ba	ka	
2546	259	253	a	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia				-amb-		verb		ba	ka	
2223	225	219	d	1	ػَكُلَ	kʲakula	chakula					i.e. \\Swa{chakula cha safari}, compare Ar. \\AS{زاد}, \\Eit{zād}, \\E{provisions for a journey} > \\Swa{zawadi}, \\E{present brought back from a journey}.	-l-	and cooked food for him.	noun		ba		
1481	153	148	c	3	ڠَنِ	gani	gani						nini		qual		ba		
2139	218	212	b	1	كْوَا	kwā	kwa						-a	at [the home of] his teacher's wife,	ref		ba		
2827	287	281	c	2	كْوَ	kwa	kwa						-a		ref		ba		
2899	295	289	a	2	كْوَ	kwa	kwa						-a		ref		ba		
2911	296	290	a	3	كْوَ	kwa	kwa						-a		ref		ba		
2988	304	298	b	1	كْوَا	kwā	kwa						-a		ref		ba		
2998	305	299	b	2	كْوَ	kwa	kwa						-a		ref		ba		
3490	355	349	a	3	كْوَا	kwā	kwa						-a		ref		ba		
3495	355	349	c	1	كْوَا	kwā	kwa						-a		ref		ba		
3101	315	309	c	3	كْوَانِ	kwāni	kwani						nini		int		ba		
1631	167	162	d	2	مَاءِ	mai	mai						maji		noun		ba		
1067	110	108	a	1	مَئِ	mai	mai						maji		noun		ba		
1604	165	160	c	1	مَاءِ	mai	mai						maji		noun		ba		
1426	148	143	a	2	مَمَ	mama	mama						mimi		pron		ba		
709	72	71	c	2	مَتِيْتِ	matı̄ti	matiti						-titi		noun		ba		
2752	279	273	b	2	مَيَحُدِ	mayaḥudi	mayahudi						y-h-d		noun		ar		
3539	360	354	a	2	مِمِ	mimi	mimi						mimi		pron		ba		
3557	361	355	c	2	مِمِ	mimi	mimi						mimi		pron		ba		
758	77	76	c	2	مْسِكِتِنِ	msikitini	msikitini						s-j-d		noun		ar		
765	78	77	b	2	مْسِكِيْتِنِ	msikı̄tini	msikitini						s-j-d		noun		ar		
2570	261	255	b	2	مْسِكِتِنِ	msikitini	msikitini						s-j-d		noun		ar		
919	94	92	d	2	مْوِتُنِ	mwituni	mwituni						-itu		noun		ba		
280	27	27	d	3	نَبِيَا	nabiyā	nabiya		Nabiya			\\q{or go and ask the Prophet [if you don't believe me]}.	n-b-y		title		ar		
2474	251	245	d	3	نَبِيَا	nabiyā	nabiya		Nabiya				n-b-y		title		ar		
236	23	23	d	3	نَمْبِيَا	nambiyā	nambiya					\\q{tell me now, Ali}.	-amb-		verb		ba	imp	
261	25	25	d	3	نَمْبِيَا	nambiyā	nambiya					\\q{Come -- tell me [the name of] this person}.	-amb-		verb		ba	imp	
1463	152	147	a	1	نَتَكَ	nataka	nataka						-tak-		verb		ba	a	
2744	278	272	c	1	نْدِيَ	ndiya	ndiya		ndiya				-jia		noun		ba		
3602	366	360	b	1	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
1259	130	126	d	2	نِسَلِمِيَا	nisalimiyā	nisalimiya						s-l-m		verb		ar	imp	
2684	272	266	d	1	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
3153	320	314	d	1	رَاضِ	rāḍi	radhi						r-a-zw		noun		ar		
2256	229	223	c	1	صَلَا	ṣalā	sala						sw-l-w	The morning prayers	noun		ar		
2633	267	261	c	2	سَلَامُ	salāmu	salamu						s-l-m		noun		ar		
2396	244	238	a	1	سَسَا	sasā	sasa						sasa		adv		ba		
3685	374	368	d	2	سِكُمُوَاتِيَا	sikumuwātiyā	sikumuwatiya						-ach-		verb		ba	li	
1943	200	194	a	2	سُرَ	sura	sura						sw-w-r		noun		ar		
1699	174	169	d	3	طَبِيَا	ṭabiyā	tabiya						tw-b-3		noun		ar		
1095	113	110	d	2	تَكْوَامْبِيَا	takwāmbiyā	takwambiya						-amb-		verb		ba	ta	
1398	145	140	b	1	تَكْوَامْبِيَ	takwāmbiya	takwambiya		takwambia				-amb-		verb		ba	ta	
1534	158	153	d	2	تَكْوَمْبِيَا	takwambiyā	takwambiya		takwambia				-amb-		verb		ba	ta	
1025	105	103	c	3	تَمْشِيْكَ	tamshı̄ka	tamshika						-shik-		verb		ba	ta	
1558	161	156	a	2	اُفَهَمُ	ufahamu	ufahamu						f-h-m		verb		ar	subj	
1838	188	183	a	2	اُسِيْةَ	usı̄ẗa	usita						-sita		noun		ba		
1722	177	172	a	2	وَكَسِيْمَامَ	wakası̄māma	wakasimama						-simam-		verb		ba	ka	
3567	362	356	c	1	وَلَا	walā	wala						wala		conj		ba		
3598	365	359	d	1	وَلَا	walā	wala						wala		conj		ba		
43	5	5	a	2	يُوَانِ	yuwāni	yuwani		yuani				-ju-		verb		ba	imp	
918	94	92	d	1	زَ	za	za					We are to understand \\Swa{pande}, \\E{sides, edges, direction}.  Compare \\Swa{uko za Ulaya huko}, \\E{he is in Europe somewhere}.	-a	as he headed for the forest.	ref		ba		
3178	323	317	b	1	زِتَنِ	zitani	zitani						-ta		noun		ba		
3170	322	316	b	2	زِتَنِ	zitani	zitani						-ta		noun		ba		
2215	225	219	a	1	اَكَلَلَا	akalalā	akalala						-lal-	[Ja'far's mother] slept with one eye open,	v		b	ka	
1665	171	166	b	1	وَكَزُنْغُكِيَ	wakazunghukiya	wakazunghukiya		wakazungukia				-zungu-		v		b	ka	
1244	129	125	b	4	زَكُ	zaku	zaku		zako				-ako		poss		b		
1344	140	135	a	3	زَكُ	zaku	zaku		zako				-ako		poss		b		
1464	152	147	a	2	زَاكُ	zāku	zaku		zako				-ako		poss		b		
1684	173	168	b	3	زَاكُ	zāku	zaku		zako				-ako		poss		b		
2405	244	238	d	2	زَاكُ	zāku	zaku		zako				-ako		poss		b		
377	38	38	a	1	اَكَنْيَّمَاَءَ	akanı̄yamaaa	akaniyamaaa	akanyyamaaa	akanyamaa				-nyama-		v		b	ka	
3659	372	366	a	1	اَكِسَ	akisa	akisa						-ish-		v		b	ki	
3666	372	366	d	1	اَكِسَ	akisa	akisa						-ish-		v		b	ki	
74	8	8	a	1	اَكِنِرَا	akinirā	akinira		akenenda				-end-		v		b	ki	
338	34	34	a	1	اَتِرَا	atirā	atira		atenda				-tend-		v		v	a	
28	3	3	d	1	كِصَ	kiṣa	kisa						-ish-		v		b	ki	
1101	114	111	c	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
2709	275	269	a	1	كِسَ	kisa	kisa						-ish-		v		b	ki	
1045	107	105	c	3	اَكِڠِيْمَ	akigı̄ma	akigima		akegema				-egem-		v		b	ki	
1032	106	104	b	2	اَكِڠِيْمَ	akigı̄ma	akigima		akegema				-egem-		v		b	ki	
1048	108	106	a	1	اَكِڠِمَ	akigima	akigima		akegema				-egem-		v		b	ki	
2011	206	200	d	2	اَكِمْسُمِيْيَا	akimsumı̄yā	akimsumiya		akimsomeya				-som-		v		b	ki	
1009	103	101	d	2	اَكِتِيْرِيَ	akitı̄riya	akitiriya		akitendeya				-tend-		v		b	ki	
961	99	97	a	2	اَلُفِكِيْرِ	alufikı̄ri	alufikiri		alofikiri				f-k-r		v		a	li	
988	101	99	d	2	اَلُمْوَمْبِيَا	alumwambiyā	alumwambiya		alomwambiya				-amb-		v		b	li	
607	61	61	c	3	مُوِلِنِ	muwilini	muwilini					lit. "[his] clothes were on [his] body".  Ali is wearing the equivalent of "Sunday best" (see also 64d). The Prophet is amazed because Ali has obviously dressed in preparation for going to the prayers, but never showed up.	-ili		n		b		
1207	124	121	c	3	مُيِيْنِ	muyı̄ni	muyini						-ji		n		b		
1281	134	129	a	1	مُوْيِنِ	mūyini	muyini						-ji		n		b		
3746	370	374	d	1	مُيِنِ	muyini	muyini						-ji		n		b		
3029	308	302	c	2	مْوَمْتَكِيَنِ	mwamtakiyani	mwamtakiyani		mwamtakia-ni				-tak-		v		b	a	
2885	293	287	b	3	نَحَرَكَ	naḥaraka	naharaka		na haraka				hh-r-k		n		a		
3483	354	348	b	3	نَحَرَكَ	naḥaraka	naharaka		na haraka				hh-r-k		n		a		
585	59	59	c	2	نَحَرَاكَ	naḥarāka	naharaka		na haraka				hh-r-k		n		a		
3429	349	343	a	1	نَهُكُ	nahuku	nahuku		na huko				h-		poss		b		
1308	136	131	c	2	نَهُكُ	nahuku	nahuku		na huko				h-		poss		b		
3151	320	314	c	1	نَكَمَ	nakama	nakama		na kama				k-m-a		conj		a		
2377	242	236	a	1	نَكَمَ	nakama	nakama		na kama				k-m-a		conj		a		
189	19	19	c	1	نَكَمَ	nakama	nakama		na kama				k-m-a		conj		a		
1554	160	155	d	1	نَكَمَ	nakama	nakama		na kama				k-m-a		conj		a		
1970	202	196	c	2	نَكَمْوَالِيْمُ	nakamwālı̄mu	nakamwalimu		na kwa mwalimu				3-l-m		n		a		
2376	241	235	d	2	نَكُكْوَمْبِيَا	nakukwambiyā	nakukwambiya		na kukwambiya				-amb-		v		b	ku	
1546	160	155	a	1	نَلَپِلِ	nalapili	nalapili		na la pili				-wili		num		b		
669	67	67	d	1	نَلَتَتُ	nalatatu	nalatatu		na la tatu				-tatu	and he will come for a third.	num		b		
1557	161	156	a	1	نَلَتَتُ	nalatatu	nalatatu		na la tatu				-tatu		num		b		
2306	234	228	c	1	نَمَمَكِ	namamaki	namamaki		na mamake				mama		n		b		
1246	129	125	c	2	نَمَامَكِ	namāmaki	namamaki		na mamake				mama		n		b		
1346	140	135	b	2	نَمَمَكُ	namamaku	namamaku		na mamako				mama		n		b		
1217	125	122	c	2	نَمَمَنْغُ	namamanghu	namamanghu		na mamangu				mama		n		b		
2276	231	225	c	2	نَمَنِيْنُ	namanı̄nu	namaninu		na maneno				-nen-		n		b		
2316	235	229	c	2	نَمَتُ	namatu	namatu		na mato				-cho		n		b		
2888	293	287	d	1	نَمَيِ	namayi	namayi		na mayi				-ji		n		b		
244	24	24	c	2	نَمْكِيْ	namkii	namkii		na mke				-ke		n		b		
388	39	39	b	2	نَمُمِوُ	namumiwu	namumiwu		na mumewo				-ume		n		b		
1196	123	120	d	1	نَمْوَاكَا	namwākā	namwaka		na mwaka				-aka		n		b		
1214	125	122	b	2	نَمْوَالِيْمُ	namwālı̄mu	namwalimu		na mwalimu				3-l-m		n		a		
2268	230	224	d	1	نَمْوَلِمُ	namwalimu	namwalimu		na mwalimu				3-l-m		n		a		
3159	321	315	b	2	نَمْوَانِ	namwāni	namwani		na mwana	*			-ana		n		b		
1247	129	125	d	1	نَنْدُزُ	nanduzu	nanduzu		na nduzu				-dugu		n		b		
2266	230	224	c	2	نَنْرُيِ	nanruyi	nanruyi		na nduye				-dugu		n		b		
1647	169	164	b	3	نَنْتِ	nanti	nanti		na nti				-chi		n		b		
3727	378	372	d	1	نَقَسِيْمُ	naqası̄mu	naqasimu		na Qasimu				q-s-m		persn		a		
3239	329	323	c	2	نَرَسُوْلِ	narasūli	narasuli		na Rasuli				r-s-l		title		a		
2785	282	276	d	1	نَسَسَا	nasasā	nasasa		na sasa				sasa		adv		b		
3134	319	313	a	1	نَسَسَا	nasasā	nasasa		na sasa				sasa		adv		b		
1241	129	125	b	1	نَاسِ	nāsi	nasi						na		conj		b		
1258	130	126	d	1	نَتُمْوَا	natumwā	natumwa		na Tumwa				-tum-		title		b		
1573	162	157	c	1	نَوْكِتَكَ	nawkitaka	naukitaka		na ukitaka				-tak-		v		b	ki	
2027	208	202	c	1	نَوَنَ	nawana	nawana		na wana				-ana		n		b		
1855	189	184	d	1	نَوَوُ	nawawu	nawawu		na wao				-ao		poss		b		
1961	201	195	d	1	نَوِوِ	nawiwi	nawiwi		na wewe				wewe		pron		b		
3353	341	335	d	1	نَوِوِ	nawiwi	nawiwi		na wewe				wewe		pron		b		
3143	319	313	d	1	نَوُتَكَلُ	nawutakalu	nawutakalu		na utakalo				-tak-		v		b	pres	
3285	334	328	c	2	نَيَمْبُ	nayambu	nayambu		na yambo				-amb-		n		b		
3745	370	374	c	2	نَزُبِيْرِ	nazubı̄ri	nazubiri		na Zuberi				z-b-r		persn		a		
2616	265	259	d	3	نِئَمْبِيَا	niambiyā	niambiya						-amb-		v		b	imp	
1172	121	118	b	3	نِبَبَڠُ	nibabagu	nibabagu		ni babangu				baba		n		b		
1595	164	159	c	3	نِبَلِ	nibali	nibali		ni mbali				-bali		adv		b		
683	69	69	a	1	نِػَغَلِيَ	nikʲaghaliya	nichaghaliya		nichangalia				-anga-	Indeed, when I consider [things, I realise that]	v		b	ki	
2181	221	215	d	2	نِػَنْدِكِيَا	nikʲandikiyā	nichandikiya						-andik-		v		b	ki	
1968	202	196	b	2	نِفَهَمُ	nifahamu	nifahamu						f-h-m		v		a	imp	
3135	319	313	a	2	نِڠَكُوُظِ	nigakuwuẓi	nigakuwudhi		ningakuudhi				3-zw-zw		v		a	nge	
2924	297	291	c	1	نَيَكُنْوَا	nayakunwā	nayakunwa		na ya kunwa				-nyw-		v		b	ku	
\.


--
-- Name: jaafari_r_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_r_words_word_id_seq', 3845, true);


--
-- Name: jaafari_r_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY jaafari_r_words
    ADD CONSTRAINT jaafari_r_words_pk PRIMARY KEY (word_id);


--
-- PostgreSQL database dump complete
--

