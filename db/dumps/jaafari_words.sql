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
    english character varying(250) DEFAULT ''::character varying NOT NULL,
    pos character varying(25) DEFAULT ''::character varying NOT NULL,
    slot character varying(25) DEFAULT ''::character varying,
    lg character varying(25) DEFAULT ''::character varying,
    tense character varying(20) DEFAULT ''::character varying,
    neg character varying(10) DEFAULT ''::character varying
);


ALTER TABLE public.jaafari_words OWNER TO kevin;

--
-- Name: jaafari_words_pos_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE jaafari_words_pos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jaafari_words_pos_seq OWNER TO kevin;

--
-- Name: jaafari_words_pos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE jaafari_words_pos_seq OWNED BY jaafari_words.pos;


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

COPY jaafari_words (word_id, msno, stanza, loc, "position", arabic, close, standard, edclose, edstan, emend, variant, note, root, english, pos, slot, lg, tense, neg) FROM stdin;
1682	154	156	d	2	لِوٖ	liwe	liwe						-w-	without demur.	verb		ba	subj	
1977	183	185	a	4	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title	final	ar		
2021	187	189	c	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
2027	188	190	a	3	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
2049	190	192	b	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
2071	192	194	b	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
2216	205	207	d	3	نَبِيَ	nabiya	nabiya		Nabiya				n-b-y		title	final	ar		
2242	208	210	b	2	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
2254	209	211	c	2	هَشِمَ	hashima	hashima		Hashima				h-sh-m		title	final	ar		
2334	218	220	a	2	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
2342	218	220	d	3	نَبِيَ	nabiya	nabiya		Nabiya				n-b-y		title	final	ar		
2354	220	222	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
2400	224	226	b	3	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
2412	225	227	b	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
2463	230	232	c	3	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
2478	232	234	a	2	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
2536	238	240	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
2697	252	254	c	2	أَمِنِ	amini	amini		Amini				a-m-n		title	final	ar		
343	31	33	b	3	وَسِوَسِ	wasiwasi	wasiwasi						w-s		noun	final	ar		
1624	149	151	c	2	نْڠُوٗ	nguwo	nguwo		nguo				nguo		noun		ba		
1606	147	149	c	3	مُئِ	mui	mui						-ji		noun		ba		
1617	148	150	d	2	مَكٗنْدٖ	makonde	makonde						-konde		noun		ba		
1658	152	154	d	1	مٗيٗ	moyo	moyo		moya	*		We understand \\Swa{jambo}, i.e. this is the one important thing she asks him to do.	-oyo	is the one [thing] I charge you to do.	noun		ba		
1681	154	156	d	1	كْوَكٗ	kwako	kwako						-ako		poss		ba		
1719	157	159	d	1	نَ	na	na						na	and then his teacher arrived [while they were eating].	conj		ba		
1703	156	158	c	1	كْوَكٖ	kwake	kwake						-ake	be courteous towards her,	poss		ba		
1687	155	157	b	1	هَنَ	hana	hana						-na	there is no doubt that he is better than you,	have		ba		
1725	158	160	b	2	وَٹَٹُ	waţaţu	watatu						-tatu		num		ba		
1716	157	159	c	2	نَ	na	na						na		conj		ba		
118	12	12	a	3	سِرِ	siri	siri						s-r-r		noun	final	ar		
507	47	49	c	4	سِرِ	siri	siri						s-r-r		noun	final	ar		
522	49	51	a	4	شَكَ	shaka	shaka						sh-k-k		noun	final	ar		
616	58	60	b	3	سِرِ	siri	siri						s-r-r		noun	final	ar		
630	59	61	c	3	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
766	72	74	a	2	قَوْلِ	qawli	qauli					\\Swa{akampa maneno mazuri}, \\E{he gave him words of advice}.	q-w-l		noun	final	ar		
932	86	88	c	4	سِرِ	siri	siri						s-r-r		noun	final	ar		
961	89	91	a	2	صَفُنِ	ṣafuni	safuni						sw-f-f		noun	final	ar		
1023	94	96	d	3	طَبِيَ	ṭabiya	tabiya						tw-b-3		noun	final	ar		
1160	107	109	a	3	أَوَلِ	awali	awali						w-w-l		noun	final	ar		
1174	108	110	a	3	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
1275	117	119	b	3	قَوْمُ	qawmu	qaumu					i.e. a jinn or devil.	q-w-m		noun	final	ar		
1280	117	119	d	3	طَبِيَ	ṭabiya	tabiya						tw-b-3		noun	final	ar		
1282	118	120	a	2	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
1394	128	130	a	2	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
1627	149	151	d	2	كُمْسٗمٖيَ	kumsomeya	kumsomeya					This is somewhat exaggerated in this situation.  The point is that her behaviour makes her look as if she is ill, and in such a case a common practice is to read to the sick person from the Qur'an, especially Chapter 36, \\Eit{Ya Sin}.  The main message of this chapter is that human beings are created by God, and wholly dependent upon him.  Reading it comforts the sick person and their relatives, and is a sign of sympathy.  Reciting the Word of God has beneficial effects in general.  For instance, a rich man may pay a \\Swa{mwalimu}, \\E{Islamic scholar} to read the Qur'an over the man's wife every Friday, to keep her safe.  If someone is going on a long journey, wellwishers may pass verses from the Qur'an around them while saying \\Swa{Ngwakuhifadhi}, \\E{may God protect you}, and then give them the verses to protect them.	-som-		verb	final	ba	ku	
140	14	14	c	1	هُكْوَمْكُوَ	hukwamkuwa	hukwamkuwa		hukuamkua				-amku-	She wants you in a hurry, 	verb		ba	hu	
1666	153	155	c	2	وَتَكَ	wataka	wataka						-tak-		verb		ba	a	
3292	304	312	a	2	زِيُوٖنِ	ziyuweni	ziyuweni		ziyueni				-ju-		verb	final	ba	imp	
1673	154	156	a	2	أُوٖ	uwe	uwe						-w-		verb		ba	subj	
59	6	6	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli			i.e. Fatima.	r-s-l		title	final	ar		
104	10	10	c	3	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title	final	ar		
299	26	28	d	3	نَبِيَ	nabiya	nabiya		Nabiya				n-b-y		title	final	ar		
311	28	30	a	2	شَرِيْفُ	sharı̄fu	sharifu		Sharifu				sh-r-f		title	final	ar		
321	29	31	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title	final	ar		
1286	118	120	b	4	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title	final	ar		
1314	120	122	d	3	نَبِيَ	nabiya	nabiya		Nabiya				n-b-y		title	final	ar		
1954	181	183	a	2	سَيِّدِ	sayyidi	sayyidi		Sayidi				s-3-d		title	final	ar		
1962	181	183	d	3	نَبِيَ	nabiya	nabiya		Nabiya			\\Swa{alifikiri mtu anamtaka Mtume} -- Fatima thinks that someone has come to the house looking for the Prophet.	n-b-y		title	final	ar		
2362	220	222	d	3	نَبِيَ	nabiya	nabiya		Nabiya				n-b-y		title	final	ar		
1665	153	155	c	1	إِوَپٗ	iwapo	iwapo						-w-	If you want a blessing [from him],	verb		ba	a	
2385	222	224	d	3	نَبِيَ	nabiya	nabiya		Nabiya				n-b-y		title	final	ar		
2703	253	255	a	3	بَشِرِ	bashiri	bashiri		Bashiri				b-sh-r		title	final	ar		
2721	255	257	a	2	أَمِيْنِ	amı̄ni	amini		Amini			Unlike Ali, the Prophet immediately understands the implications of the angel's message.	a-m-n		title	final	ar		
2770	260	262	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
2773	260	262	b	3	حَىْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
2801	263	265	a	2	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
2811	264	266	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
2815	264	266	c	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
3093	291	293	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
3262	307	309	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
1545	142	144	c	2	مِؤُجِزَ	miujiza	miujiza					i.e. unless he really was Ja'far's father.	w-j-z		noun	final	ar		
1577	145	147	a	3	تِمَمُ	timamu	timamu						t-m-m		noun	final	ar		
1591	146	148	b	3	سَفَرِ	safari	safari						s-f-r		noun	final	ar		
1611	148	150	a	2	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
1667	153	155	c	3	رَضِ	raḍi	radhi						r-a-zw		noun	final	ar		
1702	156	158	b	4	ثَوَابُ	thawābu	thawabu					i.e. \\Swa{vizuri, kama mama wa kambo}, \\E{nicely, as with a stepmother}.  Because Ja'far will be living in Ali's house, he must be a polite guest.	th-w-b		noun	final	ar		
1739	159	161	c	2	سَفَرِ	safari	safari						s-f-r		noun	final	ar		
1877	173	175	c	2	سَلِمِيْنِ	salimı̄ni	salimini						s-l-m		noun	final	ar		
1983	183	185	c	2	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
2031	188	190	c	2	مْسِكِٹِنِ	msikiţini	msikitini					-sikiti	s-j-d		noun	final	ar		
2038	189	191	b	2	مْسِكِٹِنِ	msikiţini	msikitini					-sikiti	s-j-d		noun	final	ar		
2092	194	196	b	3	سَلَامَ	salāma	salama						s-l-m		noun	final	ar		
2106	195	197	c	2	السَّلَامَ	āssaّlāma	assaU+0651lama	ās-salāma	as-salamu	*			s-l-m		noun	final	ar		
1712	157	159	b	1	نَ	na	na						na	and a meal was ready.	conj		ba		
1753	161	163	a	2	هَپٗ	hapo	hapo						h-		dem		ba		
1767	162	164	c	1	أَكِمْٹٖمٖيَ	akimţemeya	akimtemeya		akimtemea				-tem-	spitting at him,	verb		ba	ki	
1907	176	178	c	1	وٖنْدٖمٖنٖ	wendemene	wendemene						-andam-	he was walking along with the Bearer of Good News --	verb		ba	past	
2975	280	282	a	2	نِمٖعَبِرِ	nimeʿabiri	nimeabiri						3-b-r		verb	final	ar	me	
2149	199	201	d	2	إِمٖنِپِٹِيَ	imenipiţiya	imenipitiya					We are to understand, \\q{and I still hadn't found the place I was trying to go to}.	-pit-		verb	final	ba	me	
2172	201	203	d	2	زِمٖنِپٗتٖيَ	zimenipoteya	zimenipoteya						-pote-		verb	final	ba	me	
2195	203	205	d	2	إِمٖنِسِمَمِيَ	imenisimamiya	imenisimamiya						-simam-		verb	final	ba	me	
2346	219	221	b	2	زِمٖأَخِرِكَ	zimeakhirika	zimeahirika						kh-kh-r		verb	final	ar	me	
2674	250	252	b	2	أَمٖصِفِكَ	ameṣifika	amesifika						sw-f-h		verb	final	ar	me	
1704	156	158	c	2	أُوٖ	uwe	uwe						-w-		verb		ba	subj	
588	55	57	c	3	بَنْدَرِ	bandari	bandari					lit. \\q{this [boat, \\Swa{jahazi}] has gained the harbour}, i.e. this state of affairs must come to an end.	b-n-d-r		noun	final	ar		
2979	280	282	c	2	أُمِ	umi	umi		Umi				u-m-m		title		ar		
2957	278	280	b	2	مَوْلَانَا	mawlānā	maulana		Maulana				a-a-l		title		ar		
1987	184	186	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
2018	187	189	b	3	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
2073	192	194	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
2528	237	239	b	3	أَنْصَارِ	anṣāri	ansari		Ansari			The \\Swa{Ansari} are the tribes of Medina who gave sanctuary to the Prophet after the \\Swa{hijra}, when he was forced to flee from Mecca in 622 CE.	n-sw-r		title	final	ar		
2530	237	239	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
2714	254	256	b	2	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title	final	ar		
2719	254	256	d	2	نَبِيَ	nabiya	nabiya		Nabiya				n-b-y		title	final	ar		
2737	256	258	c	3	رَسُوْلِ	rasūli	rasuli		Rasuli				r-s-l		title	final	ar		
857	80	82	a	2	رَحِمُ	raḥimu	rahimu						r-hh-m		adj		ar		
527	49	51	d	1	كِوَزِ	kiwazi	kiwazi		ki wazi				w-dw-hh	it was open when he got there.	adj		ar		
2845	268	270	a	1	وَ	wa	wa						w-a	And indeed, what kind of person is it	conj		ar		
3325	307	315	c	3	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
304	27	29	b	3	نِنِ	nini	nini					The northern form of \\Swa{alikuwa na nini}, based respectively on two verbs meaning \\q{be}: \\Swa{-li} and \\Swa{-wa}.	nini		int		ba		
451	42	44	a	2	نِمٖيَخِتِمُ	nimeyakhitimu	nimeyahitimu					The first part of the ballad, describing the \\Swa{mke wa siri}, and the resulting friction between Ali and Fatima, and its resolution, is now complete.  The next portion of the tale (\\q{\\Swa{mengine}}), describing Ja'far's meeting with his father Ali, and its results, now begins.	kh-t-m		verb	final	ar	me	
580	55	57	a	1	چَمْبَ	chamba	chamba					\\Swa{chamba}, \\E{if}.	-amb-	If he is challenging me, 	conj		ba		
954	88	90	c	1	يٖؤٗ	yeo	yeo						-eo	today he was with his goats,	adv		ba		
1734	159	161	b	1	يٖؤٗ	yeo	yeo						-eo	Goodbye today, my brother --	adv		ba		
1668	153	155	d	1	نَ	na	na						na	then go and visit Ali.	conj		ba		
1602	147	149	b	2	نَ	na	na						na		conj		ba		
554	52	54	c	1	لِلٖ	lile	lile						-le	pushed off the plank [covering the well],	dem		ba		
1727	158	160	c	1	أَكِنٖنَ	akinena	akinena		akanena	*			-nen-	Then [Ja'far] said these words,	verb		ba	ki	
1142	105	107	c	1	نَ	na	na						na	If you want a likeness of him,	conj		ba		
2423	226	228	b	3	وَمٖكْوِشَ	wamekwisha	wamekwisha						-ish-		verb	final	ba	me	
2505	234	236	d	2	أَمٖزٗوَمْبِيَ	amezowambiya	amezowambiya						-amb-		verb	final	ba	me	
1351	124	126	a	2	نِمٖكِرِ	nimekiri	nimekiri						q-r-r		verb	final	ar	me	
434	40	42	b	2	نِمٖفِكِرِ	nimefikiri	nimefikiri						f-k-r		verb	final	ar	me	
613	58	60	a	2	نِمٖزٗفَسِرِ	nimezofasiri	nimezofasiri						f-s-r		verb	final	ar	me	
2440	228	230	b	2	أُمٖبَدِلِكَ	umebadilika	umebadilika						b-d-l		verb	final	ar	me	
2442	228	230	c	2	أُمٖزٗؤُذِكَ	umezoudhika	umezoudhika					Like \\Swa{ambaye mekasirika}, \\E{someone who is angry}.	3-zw-zw		verb	final	ar	me	
1418	130	132	a	2	أُمٖخِتَرِ	umekhitari	umehitari						kh-a-r		verb	final	ar	me	
1584	145	147	d	1	نِمٖرُدِ	nimerudi	nimerudi						r-d-d	I came back to tell him [about it].	verb		ar	me	
2292	213	215	c	1	نِمٖمْٹُمَ	nimemţuma	nimemtuma						-tum-	I have sent Hasan	verb		ba	me	
2281	212	214	b	1	أُمٖزِيُوَ	umeziyuwa	umeziyuwa						-ju-	you know it well,	verb		ba	me	
655	61	63	d	2	كَيَنْڠَلِيَ	kayangaliya	kayangaliya						-anga-		verb	final	ba	ka	
2215	205	207	d	2	كَنٖنَ	kanena	kanena						-nen-		verb		ba	ka	
1558	143	145	c	2	كَئٖٹَ	kaeţa	kaeta						-let-		verb		ba	ka	
643	60	62	d	2	أُكَنِؤٗنٖيَ	ukanioneya	ukanioneya					i.e. why are you picking on an orphan?	-on-		verb	final	ba	ka	
418	39	41	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia				-amb-	She said: Father,	verb		ba	ka	
1435	131	133	d	2	وَكَنِتٗلٖيَ	wakanitoleya	wakanitoleya					\\Swa{-toleya}, \\E{give directions by accompanying a person to a good place to give them from}.	-to-		verb	final	ba	ka	
645	61	63	a	2	هُنٖنَنِ	hunenani	hunenani		hunena-ni				-nen-		verb	final	ba	hu	
1446	132	134	d	2	هُنِئَنْڠَلِيَ	huniangaliya	huniangaliya						-anga-		verb	final	ba	hu	
678	64	66	a	1	نِنْڠَلِپٗتٖزَ	ningalipoteza	ningalipoteza					\\Swa{-poteza} = \\Swa{-tupa}.	-pote-	I would have spilt your blood	verb		ba	ngali	
3103	292	294	a	1	أُنِئٖٹٖيْ	unieţee	unietee						-let-	[Atika said:] He brought me a letter,	verb		ba	past	
709	67	69	b	1	نَمُيُوَ	namuyuwa	namuyuwa						-ju-	I recognise her features [in you].	verb		ba	a	
853	79	81	c	4	وٖنْدَكٗ	wendako	wendako						-end-		verb	final	ba	a	
735	69	71	b	2	أُوَپٖكٖ	uwapeke	uwapeke						-pelek-	and herd them along the road	verb		ba	subj	
1599	147	149	a	2	نِؤٗمْبٖيَ	niombeya	niombeya		niombea				-omb-		verb		ba	imp	
3133	295	297	b	2	يَ	ya	ya						y-a		excl		ar		
1022	94	96	d	2	نَيُوَ	nayuwa	nayuwa		nayua				-ju-		verb		ba	a	
1637	151	153	a	2	أَللّٰهُ	alllähu	alllahu		Allahu				l-a-h		noun		ar		
830	77	79	c	1	كَمْپَ	kampa	kampa						-p-	and gave him his news --	verb		ba	ka	
895	83	85	b	1	أُكَمُؤُلِزٖ	ukamuulize	ukamuulize						-uz-	and ask your mother.	verb		ba	ka	
925	86	88	a	2	سِوٖ	siwe	siwe						-w-		focus		ba		
1503	138	140	a	2	وَكَسِمَمَ	wakasimama	wakasimama						-simam-		verb	final	ba	ka	
1507	138	140	c	2	نِكَلِسُكُمَ	nikalisukuma	nikalisukuma						-sukum-		verb	final	ba	ka	
1949	180	182	d	1	كٖنْدَ	kenda	kenda						-end-	and took him to Ali's [house].	verb		ba	ka	
691	65	67	b	3	إِنَ	ina	ina						-ina		noun	final	ba		
2776	260	262	d	1	هَپٗ	hapo	hapo						h-	his father wept.	dem		ba		
2768	260	262	a	1	هَپٗ	hapo	hapo						h-	So the Bringer of Good Tidings went in	dem		ba		
668	63	65	a	1	كِشَ	kisha	kisha						-ish-	Then he told [Ja'far]:	conj		ba		
752	70	72	d	1	كِشَ	kisha	kisha						-ish-	Then I will come tomorrow.	conj		ba		
964	89	91	c	1	كِشَ	kisha	kisha						-ish-	And of course he is coming back from the forest --	conj		ba		
998	92	94	c	1	كِشَ	kisha	kisha						-ish-	you can depend on him [when you need help],	conj		ba		
1138	105	107	b	1	كِشَ	kisha	kisha						-ish-	and further, he is a great warrior.	conj		ba		
1941	180	182	a	1	كِشَ	kisha	kisha						-ish-	Then he said:	conj		ba		
2150	200	202	a	1	كِشَ	kisha	kisha						-ish-	Then I did something stupid -- 	conj		ba		
2182	202	204	d	1	كِشَ	kisha	kisha						-ish-	and finally I got back.	conj		ba		
2185	203	205	a	1	كِشَ	kisha	kisha						-ish-	At last I turned back	conj		ba		
1289	118	120	c	3	نِ	ni	ni						ni		exist		ba		
1163	107	109	b	3	نِ	ni	ni						ni		exist		ba		
723	68	70	c	1	وَ	wa	wa						-a	[son] of Ali the Lion-like	ref		ba		
1410	129	131	b	2	وَ	wa	wa						-a		ref		ba		
2019	187	189	c	1	وَ	wa	wa						-a	[son] of Ali the Lion-like --	ref		ba		
2128	197	199	d	3	وَ	wa	wa						-a		ref		ba		
2531	237	239	d	1	وَ	wa	wa						-a	[the son] of Lord Ali.	ref		ba		
1669	153	155	d	2	كْوَ	kwa	kwa						-a		ref		ba		
1944	180	182	b	1	كْوَ	kwa	kwa						-a	Could you show me to my father's [house]?	ref		ba		
1347	123	125	d	2	إِنَ	ina	ina						-ina		noun		ba		
2051	190	192	c	2	إِنَ	ina	ina						-ina		noun		ba		
1336	122	124	d	1	أِنَ	ina	ina						-ina	name for us to hear it.	noun		ba		
2006	186	188	b	1	إِنَ	ina	ina						-ina	What is his name?	noun		ba		
1514	139	141	b	2	نِسِيَٹٖكَ	nisiyaţeka	nisiyateka						-chek-		verb	final	ba	sija	y
1453	133	135	c	2	سِكِفُنِكٖ	sikifunike	sikifunike					-funik-	-funik-		verb	final	ba	imp	y
1006	93	95	b	1	أَكِؤُلِزْوَ	akiulizwa	akiulizwa						-uz-	he did not answer when spoken to.	verb		ba	ki	
762	71	73	c	3	إِكِفِكَ	ikifika	ikifika					i.e. around 7.00pm.	-fik-		verb	final	ba	ki	
1353	124	126	b	2	إِنَ	ina	ina						-ina		noun		ba		
672	63	65	c	1	إِنَ	ina	ina						-ina	As for the name you are to be called,	noun		ba		
715	67	69	d	1	إِنَ	ina	ina						-ina	in order to tell [Ali] his name.	noun		ba		
2200	204	206	b	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
2183	202	204	d	2	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
2160	200	202	d	1	نْيُمَ	nyuma	nyuma						nyuma	instead of going back.	adv		ba		
770	72	74	b	4	مْبَلِ	mbali	mbali		mbili	*			-bali		num	final	ba		
1489	136	138	c	2	وَمٖنِوَتَ	wameniwata	wameniwata						-ach-		verb	final	ba	me	
2529	237	239	c	1	أَمٖكُيَ	amekuya	amekuya						-j-	Ja'far has arrived,	verb		ba	me	
2762	259	261	b	1	أَمٖپَنْدَ	amepanda	amepanda						-pand-	and climbed onto the bed.	verb		ba	me	
2760	259	261	a	1	أَمٖئِنُكَ	ameinuka	ameinuka						-inu-	He got up from the chair	verb		ba	me	
2538	238	240	b	2	أَلِلٗفَسِرِ	alilofasiri	alilofasiri					\\Swa{Ali anamlaumu mtoto wake}, \\E{Ali is criticising his son [Hasan]}.  i.e. Ali is telling them they should not be upset by gossip.	f-s-r		verb	final	ar	li	
871	81	83	a	2	كُكِكِنْدَ	kukikinda	kukikinda		kukukinda	*			-king-		verb		ba	ku	
1480	135	137	d	4	كُوَاءَ	kuwaa	kuwaa					\\Swa{-waa} = \\Swa{-waka}, \\E{burn}.	-wa-		verb	final	ba	ku	
983	91	93	b	1	كَمْشِكَ	kamshika	kamshika						-shik-	and grabbed Ja'far [and said to Nasir:]	verb		ba	ka	
1487	136	138	b	3	كَوَسُتَ	kawasuta	kawasuta					Amu \\Swa{-suta} = Mvita \\Swa{-shunga, -fukuza}, \\E{shoo animals on, drive animals along}.	-sut-		verb	final	ba	ka	
1517	139	141	c	3	كَتَمْكَ	katamka	katamka						-tamk-		verb	final	ba	ka	
849	79	81	b	4	مَؤُذِكٗ	maudhiko	maudhiko					lit. \\q{you are bringing me sadness and many anxieties}.	3-zw-zw		noun	final	ar		
976	90	92	c	1	زِتَكُتٗكَ	zitakutoka	zitakutoka						-to-	Your impudence will leave you	verb		ba	ta	
893	83	85	a	2	إٖنْدَ	enda	enda						-end-		verb		ba	imp	
2042	189	191	d	1	ٹُمِوٖ	ţumiwe	tumiwe						-tum-	I have been sent to fetch you.	verb		ba	past	
230	22	22	c	1	نِمٖٹْوَاءَ	nimeţwaa	nimetwaa						-twa-	"I have discovered the real reason	verb		ba	me	
170	17	17	b	2	أُمٖشِكْوَ	umeshikwa	umeshikwa						-shik-		verb		ba	me	
190	19	19	a	1	وَتَكَ	wataka	wataka						-tak-	What do you want, my dear, 	verb		ba	a	
126	12	12	d	4	نَبِيَ	nabiya	nabiya		Nabiya			In other words, the child forgot to give the message privately (\\Swa{hakusema kwa siri}).  In any case, for a man to be called away from the \\Swa{baraza} by a message from home is very worrying, since it implies some emergency for which his presence is required.	n-b-y		title	final	ar		
200	19	19	d	2	أُكٗمٖ	ukome	ukome						-kom-		verb		ba	subj	
278	24	26	d	1	تهَكْوٖنْدَ	tʰakwenda	takwenda						-end-	I'l go and get it out for you.	verb		ba	ta	
297	26	28	d	1	أَكَنٖنْدَ	akanenda	akanenda						-end-	and went to the Prophet.	verb		ba	ka	
281	25	27	a	2	نٖنَ	nena	nena					Or we could emend to \\Swa{huyanena}, \\E{you still haven't said}.	-nen-		verb		ba	imp	
450	42	44	a	1	هَيَ	haya	haya						h-	I have completed these [things],	dem		ba		
1010	93	95	d	1	هَيَ	haya	haya						h-	what I said to you."	dem		ba		
2399	224	226	b	2	مَاءِ	mai	mai						maji		noun		ba		
523	49	51	b	1	مَاءِ	mai	mai						maji	not wanting water.	noun		ba		
1203	110	112	d	1	مَاءِ	mai	mai						maji	they can tell me [where to find] water."	noun		ba		
1166	107	109	c	2	مَاءِ	mai	mai						maji		noun		ba		
3020	284	286	b	1	هُلِيَ	huliya	huliya		hulia				-li-	weeping and saying:	verb		ba	hu	
578	54	56	d	1	هَلِدِرِكِ	halidiriki	halidiriki						d-r-k	he will not find [the plank] when he gets here.	verb		ar	li	
2047	190	192	b	1	چٖنْدٖمٖنٖ	chendemene	chendemene					Sh. Yahya felt that \\Swa{endemene} would be better here, since \\Swa{kijana} (Class 7) is not a diminutive.	-andam-	He came with the Bringer of Good Tidings,	verb		ba	past	
2113	196	198	c	1	وَلِتٗكَ	walitoka	walitoka						-to-	what time did you set out?	verb		ba	li	
1774	163	165	b	1	مْسٗمٖشٖ	msomeshe	msomeshe					Ja'far's mother asks the \\Swa{mwalimu} to \\q{cause Nasir to read}, i.e. teach him how to read the Qur'an.  Being able to read the Qur'an, even without understanding the detailed meaning of the words, is considered a first step in learning.  The student will attend the \\Swa{chuo}, \\E{school}, for 3-4 years, and while he is there the \\Swa{mfunzi} has wide latitude in terms of discipline -- the student may be chastised with a \\Swa{kikoto}, \\E{whip made of plaited grass}, made by the student himself, if he makes mistakes, and it is said that the only constraint on the \\Swa{mfunzi} is that \\Swa{asaze mifupa na mato}, \\E{he should omit [damaging] the bones and the eyes}.  The books used will all have brown or tan covers, because white is considered harmful.  Taha Hussein's \\E{The Stream of Days} includes a passage on his similar schooling in Egypt in the early 1900s.	-som-	teach him to read [the Qur'an] so that he may complete it.	verb		ba	subj	
2111	196	198	b	1	نِمٖكُنْڠٗجَ	nimekungoja	nimekungoja						-ngoj-	I waited for you on the road -- 	verb		ba	me	
858	80	82	a	3	كُئٖنْدَنِ	kuendani	kuendani					i.e. the journey is dangerous.	-end-		verb	final	ba	ku	
1444	132	134	c	3	كُٹِزَمَ	kuţizama	kutizama					The meaning of this line is unclear. 	-tazam-		verb	final	ba	ku	
1982	183	185	c	1	كُسِكِيَكْوٖ	kusikiyakwe	kusikiyakwe		kusikiakwe				-siki-	When she heard these words,	verb		ba	ku	
2745	257	259	c	1	أَلِهُتٗكَ	alihutoka	alihutoka						-to-	Hasan has [just] left 	verb		ba	li	
1471	135	137	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka						-pambauk-		verb	final	ba	ki	
1782	164	166	a	1	أَكِتٗكَ	akitoka	akitoka						-to-	As Ja'far was setting off	verb		ba	ki	
1889	174	176	c	3	إِكِكٗمَ	ikikoma	ikikoma						-kom-		verb	final	ba	ki	
3107	292	294	c	1	أَلِپٗ	alipo	alipo						-li	I took no heed of where he was,	verb		ba	li	
295	26	28	c	1	أَلِئِنُكَ	aliinuka	aliinuka						-inu-	He got up and left,	verb		ba	li	
306	27	29	c	1	أَلِكهَاٹَ	alikʰāţa	alikata						-kat-	[Ali] interrupted him,	verb		ba	li	
694	65	67	d	1	أُلِؤٗنَ	uliona	uliona						-on-	and you thought I would run away.	verb		ba	li	
1886	174	176	b	2	كُتٗسِمَمَ	kutosimama	kutosimama						-simam-		verb	final	ba	ku	
1501	137	139	d	3	كُوَٹٖكٖيَ	kuwaţekeya	kuwatekeya					i.e. there is no point in the goats running ahead of Ja'far and reaching the well before him, because once they are there they will have to stand and wait for him to get the water for them.	-chek-		verb	final	ba	ku	
349	32	34	a	1	كَمُؤُلِزَ	kamuuliza	kamuuliza						-uz-	The Hashimite asked her:	verb		ba	ka	
1984	183	185	d	1	كَتٗكَ	katoka	katoka						-to-	[Fatima] went out to see him.	verb		ba	ka	
2072	192	194	c	1	كَئِنُكَ	kainuka	kainuka						-inu-	Ja'far got up	verb		ba	ka	
1884	174	176	a	3	كَيَنْدَمَ	kayandama	kayandama					\\Swa{fuata ndia}.	-andam-		verb	final	ba	ka	
369	34	36	a	1	أَكَمُؤُزَ	akamuuza	akamuuza						-uz-	The Trustworthy One asked her:	verb		ba	ka	
397	37	39	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-	He told her: My child, 	verb		ba	ka	
330	30	32	a	2	إٖنٖنْدَ	enenda	enenda						-end-		verb		ba	imp	
383	35	37	c	1	يَلٗمْتٗكَ	yalomtoka	yalomtoka						-to-	and words came tumbling out, 	verb		ba	li	
3171	299	301	a	1	بَسِ	basi	basi						b-s	Then [Atika] asked	conj		ar		
1626	149	151	d	1	إِكَوَ	ikawa	ikawa						-w-	as if she was being read over.	verb		ba	ka	
1168	107	109	c	4	غَالِ	ghāli	ghali						gh-a-l		adj	final	ar		
2228	207	209	a	1	أَمْكِنْڠَ	amkinga	amkinga		amemkinga	*			-king-	The Loving One protected him	verb		ba	a	
2255	209	211	d	1	نٖنْدَ	nenda	nenda						-end-	I am just now going to the inner [room].	verb		ba	a	
145	14	14	d	3	مَزٗوٖيَ	mazoweya	mazoweya		mazoeya				-zoe-		noun	final	ba		
697	66	68	a	2	نِپَ	nipa	nipa						-p-		verb		ba	imp	
721	68	70	b	2	هُئِٹْوَ	huiţwa	huitwa						-it-		verb		ba	hu	
1672	154	156	a	1	إِتُنْدٖ	itunde	itunde						-tund-	Take care that you be humble	verb		ba	subj	
622	59	61	a	1	كَمْڤُٹِيَ	kamvuţiya	kamvutiya		kamvutia				-vut-	He pulled away from [Ali]	verb		ba	ka	
625	59	61	b	1	وَكَوَنَ	wakawana	wakawana						-wan-	and they fought for two hours.	verb		ba	ka	
1352	124	126	b	1	نَمِ	nami	nami						na	to speak my name too.	conj		ba		
2652	248	250	b	3	مْوَنَ	mwana	mwana						-ana		noun		ba		
1271	117	119	a	3	مْوَنَ	mwana	mwana						-ana		noun		ba		
791	74	76	a	2	مْوَنَ	mwana	mwana						-ana		noun		ba		
154	15	15	d	1	مْوَنَ	mwana	mwana		Mwana				-ana	Lady Fatima was crying.	noun		ba		
2316	216	218	b	1	كَمُؤُلِزَ	kamuuliza	kamuuliza						-uz-	he asked how [Ja'far] was.	verb		ba	ka	
2117	196	198	d	2	أُمٖلِمَٹِيَ	umelimaţiya	umelimatiya					Amu \\Swa{-limatia} = Zanzibar, Mvita \\Swa{-chelewa}, Mvita \\Swa{-kawia}.	-limat-		verb	final	ba	me	
2335	218	220	b	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia				-amb-	and bade them goodbye.	verb		ba	ka	
1628	150	152	a	1	أَلِپٗپَٹَ	alipopaţa	alipopata						-pat-	When she regained her senses	verb		ba	li	
2307	215	217	b	1	كُوَپِسِزَ	kuwapisiza	kuwapisiza						-pit-	and greeted them	verb		ba	ku	
2297	214	216	a	2	كُتٗكَ	kutoka	kutoka						-to-		verb		ba	ku	
2159	200	202	c	3	كُئِوَتَ	kuiwata	kuiwata						-ach-		verb	final	ba	ku	
667	62	64	d	3	كُمْنْڠِيَ	kumngiya	kumngiya					The motif of a father and son unknowingly fighting each other is a recurrent one in literature -- the most famous example is that of Sohrab and Rustum.  Fortunately, in this case the father recognises his son before any damage has been done.	-ingi-		verb	final	ba	ku	
1226	112	114	d	2	كُپِنْدُكِيَ	kupindukiya	kupindukiya					We are to understand \\Swa{jua}, \\E{sun}.  \\Swa{-pindukia} is lit. \\q{change direction}, i.e. the sun ascends through the sky until noon, and then begins to decline.	-pindu-		verb	final	ba	ku	
2295	213	215	d	2	كُمُؤَمْكُوَ	kumuamkuwa	kumuamkuwa					This is another attempt to put off the moment of truth -- they cannot eat until the boys return.	-amku-		verb	final	ba	ku	
2156	200	202	b	4	كَپِٹَ	kapiţa	kapita					Where, of course, there are no paths.	-pit-		verb	final	ba	ka	
2190	203	205	b	3	كَيَنْدَمَ	kayandama	kayandama						-andam-		verb	final	ba	ka	
2248	208	210	d	3	كَمُأَمْكُوَ	kamuamkuwa	kamuamkuwa					\\Swa{kumwita ndani}, \\E{to call him into the private quarters}.	-amku-		verb	final	ba	ka	
2241	208	210	b	1	أَكَمْوٖپُكَ	akamwepuka	akamwepuka						-epuk-	She moved back from the Trustworthy One	verb		ba	ka	
2333	218	220	a	1	أَكَتَمْكَ	akatamka	akatamka						-tamk-	The Trustworthy One spoke	verb		ba	ka	
2344	219	221	a	2	أَكَتَمْكَ	akatamka	akatamka						-tamk-		verb	final	ba	ka	
2370	221	223	c	2	أَكَئِوٖكَ	akaiweka	akaiweka						-wek-		verb	final	ba	ka	
1722	158	160	a	1	وَكَتَنْڠَنْيَ	wakatanganya	wakatanganya						-changany-	They all put their hands [in the communal bowl]	verb		ba	ka	
2341	218	220	d	2	هُتٗكَ	hutoka	hutoka						-to-		verb		ba	hu	
2173	202	204	a	1	كِپِجَ	kipija	kipija						-pig-	I cudgelled my brains	verb		ba	ki	
2208	205	207	a	1	كِمَلِزَ	kimaliza	kimaliza						-maliz-	When he had finished listening	verb		ba	ki	
1610	148	150	a	1	أَكِسِكِيَ	akisikiya	akisikiya		akisikia				-siki-	When she heard these words	verb		ba	ki	
2090	194	196	b	1	نِتٗكَكٗ	nitokako	nitokako						-to-	Everything is well where I come from,	verb		ba	a	
2227	206	208	d	2	هُمْزٖنْڠٖيَ	humzengeya	humzengeya					He could have been attacked by robbers, lions, etc.	-zeng-		verb	final	ba	hu	
1608	147	149	d	1	تَكُيَ	takuya	takuya					i.e. he will return to his town for periodic visits.	-j-	I will come and visit them.	verb		ba	ta	
1363	125	127	b	1	وٖنْدَءٗ	wendao	wendao						-end-	Where are you going, stranger?	verb		ba	a	
2301	214	216	c	1	أَمْسِكِيٖ	amsikiye	amsikiye		amsikie				-siki-	He heard Hasan	verb		ba	past	
2330	217	219	d	1	أَيُوَءٖ	ayuwae	ayuwae		ayuaye				-ju-	the one who knows is the Almighty.	verb		ba	a	
2098	194	196	d	2	لَكُكْوَمْبِيَ	lakukwambiya	lakukwambiya		la kukwambiya				-amb-		verb	final	ba	ku	
158	16	16	a	2	زِكَمْشِكَ	zikamshika	zikamshika						-shik-		verb	final	ba	ka	
1806	166	168	c	2	وٖنْدَنِ	wendani	wendani						-end-		noun		ba		
187	18	18	c	4	وَتَكَ	wataka	wataka						-tak-		verb	final	ba	a	
302	27	29	b	1	أَلِ	ali	ali						-li	What was wrong with Fatima?	verb		ba	li	
520	49	51	a	2	أَكٖنْدَ	akenda	akenda						-end-		verb		ba	ki	
560	53	55	a	2	وَكَنْوَ	wakanwa	wakanwa						-nyw-		verb		ba	ka	
1793	165	167	b	1	نَمُيُوَ	namuyuwa	namuyuwa						-ju-	I know he is going to Mecca.	verb		ba	a	
308	27	29	d	1	مْٹُمٖ	mţume	mtume		Mtume				-tum-	and told the Prophet:	title		ba		
153	15	15	c	3	كِفِكَ	kifika	kifika						-fik-		verb	final	ba	ki	
1888	174	176	c	2	كُمِ	kumi	kumi						-kumi		num		ba		
1776	163	165	c	1	أُمْفُنْدٖ	umfunde	umfunde						-fund-	Teach him knowledge.	verb		ba	subj	
517	48	50	d	1	أَكٖنْدَ	akenda	akenda						-end-	and [Ali] went to have a look at it.	verb		ba	ki	
305	27	29	b	4	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn	final	ar		
462	43	45	b	2	نِوَپٖ	niwape	niwape						-p-		verb		ba	subj	
2428	227	229	a	1	أَكَئِيٗنَ	akaiyona	akaiyona		akaiona				-on-	And Fatima saw it -- 	verb		ba	ka	
168	17	17	a	3	هُكُؤُمَ	hukuuma	hukuuma						-um-		verb	final	ba	hu	
476	44	46	c	2	هُزَءَ	huzaa	huzaa						-za-		verb		ba	hu	
2488	233	235	b	1	أَكَمُؤٗنَ	akamuona	akamuona						-on-	he saw Husayn [who said:]	verb		ba	ka	
1750	160	162	d	1	نَتَكَ	nataka	nataka					Nasir considers the horse an exotic animal, which suggests he comes from an isolated village.  People may say: \\Swa{yeyeni maskini ameona ngamia -- labda anakaa mji mdogo}, \\E{that poor fellow there has just seen a camel [for the first time] -- he must live in a little village}.	-tak-	I would like to see one.	verb		ba	a	
84	9	9	a	1	مْوَنَ	mwana	mwana		Mwana				-ana	Lady, daughter of the Trustworthy One, 	noun		ba		
57	6	6	a	1	مْوَنَ	mwana	mwana		Mwana				-ana	The Lady daughter of the Prophet	noun		ba		
508	47	49	d	1	أَكَفِكَ	akafika	akafika						-fik-	arrived to tell him.	verb		ba	ka	
457	42	44	d	1	نِمٖپٖنْدَ	nimependa	nimependa						-pend-	I have been pleased to tell you [them].	verb		ba	me	
163	16	16	c	3	پُلِكَ	pulika	pulika						-pulik-		verb	final	ba	imp	
201	19	19	d	3	كُلِيَ	kuliya	kuliya						-li-		verb	final	ba	ku	
33	3	3	d	3	كُرِضِيَ	kuriḍiya	kuridhiya					Ali did not want to sin by committing adultery with her, so he decides \\Swa{kuoa kwa siri}, \\E{to marry in secret}.  Among the Swahili it is possible to have an \\Swa{mke wa siri}, \\E{secret wife}, if it is thought that the first wife or other people would object.  An \\Swa{mke wa siri} has all the rights of an ordinary wife, except that the marriage is not publicised.	r-a-zw		verb	final	ar	ku	
2911	273	275	d	2	كُمْپٖكٖيَ	kumpekeya	kumpekeya						-pelek-		verb	final	ba	ku	
3025	284	286	d	2	كُيَنْڠَلِيَ	kuyangaliya	kuyangaliya						-anga-		verb	final	ba	ku	
3057	287	289	d	2	كُيَنْڠَلِيَ	kuyangaliya	kuyangaliya						-anga-		verb	final	ba	ku	
1460	134	136	b	1	كُنْوَ	kunwa	kunwa						-nyw-	that my goats should drink the water.	verb		ba	ku	
1523	140	142	b	1	كُنٖٹٖيَ	kuneţeya	kuneteya						-let-	to send me my father.	verb		ba	ku	
1855	171	173	c	2	كُوَ	kuwa	kuwa						-w-		verb		ba	ku	
2485	233	235	a	1	كُرُدِ	kurudi	kurudi						r-d-d	As [Hasan] went back along the road	verb		ar	ku	
1543	142	144	b	2	كَئِزَ	kaiza	kaiza						-iz-		verb	final	ba	ka	
1988	184	186	b	1	كَمُؤُلِزَ	kamuuliza	kamuuliza						-uz-	asked her how she was.	verb		ba	ka	
1715	157	159	c	1	كَلَ	kala	kala						-l-	He ate with his brother Nasir	verb		ba	ka	
512	48	50	b	1	كَمُؤٗنَ	kamuona	kamuona						-on-	[Ali] saw [Ja'far] in the flesh.	verb		ba	ka	
1520	139	141	d	3	كَمْوَمْبِيَ	kamwambiya	kamwambiya						-amb-		verb	final	ba	ka	
1529	140	142	d	2	كَمْتٗلٖيَ	kamtoleya	kamtoleya						-to-		verb	final	ba	ka	
1562	143	145	d	3	كَمْوَمْبِيَ	kamwambiya	kamwambiya						-amb-		verb	final	ba	ka	
1618	148	150	d	3	كَئِٹِيَ	kaiţiya	kaitiya		kayitiya				-ti-		verb	final	ba	ka	
490	46	48	a	1	أَكَئِسِنْڠَ	akaisinga	akaisinga		akayisinga			lit. \\q{he moulded himself} to the appearance of his father.	-sing-	The boy grew up	verb		ba	ka	
485	45	47	c	1	أَكَزَوَ	akazawa	akazawa						-za-	Ja'far was born,	verb		ba	ka	
2384	222	224	d	2	أَسِلٖ	asile	asile						-l-		verb		ba	past	y
1380	126	128	d	2	كُيُتَ	kuyuta	kuyuta		kwa nyota	*			-jut-		noun		ba		
495	46	48	c	1	كُلَ	kula	kula						k-l-l	[To] everyone who saw him,	pron		ar		
2641	247	249	b	4	كُلَ	kula	kula						k-l-l		qual		ar		
2326	217	219	b	3	نِتٗكَكٗ	nitokako	nitokako					This is an echo of 196b, but neatly turns it to refer to time instead of space.	-to-		verb	final	ba	a	
346	31	33	c	3	هَئِسِ	haisi	haisi						-is-		verb	final	ba	a	y
573	54	56	b	1	ٹُتَشِنْدَنَ	ţutashindana	tutashindana						-shind-	We will compete tit-for-tat --	verb		ba	ta	
584	55	57	b	1	أَيَپٗ	ayapo	ayapo						-j-	when he gets here he will submit to me.	verb		ba	a	
549	52	54	a	1	أَچٗنْدٗكَ	achondoka	achondoka						-ondo-	When he had gone off [to hide], in the meantime	verb		ba	ki	
406	37	39	d	1	يُوَ	yuwa	yuwa						-ju-	you know, if you'll listen to it.	verb		ba	imp	
2395	223	225	d	2	أَكَوَتِيَ	akawatiya	akawatiya					In other words, the Prophet stays for a little while for politeness' sake, but leaves as soon as he can.	-ti-		verb	final	ba	ka	
2620	245	247	d	3	نَكْوَمْبِيَ	nakwambiya	nakwambiya					In other words, \\q{You would have got angry if I had not told you lies}.	-amb-		verb	final	ba	a	
2126	197	199	d	1	إِنَ	ina	ina						-ina	the road is a long one.	noun		ba		
1634	150	152	d	1	مْنْڠُ	mngu	mngu		Mngu				-ngu	and prayed to God.	godn		ba		
908	84	86	c	2	أُنَ	una	una						-na		have		ba		
1124	104	106	b	1	أُنَ	una	una						-na	he has a hole [leading to the] Underworld (?).	have		ba		
2540	238	240	c	2	أُنَ	una	una						-na		have		ba		
47	5	5	b	1	أُنَ	una	una						-na	his heart was troubled --	have		ba		
241	21	23	c	1	أُنَ	una	una						-na	You have a second wife --	have		ba		
342	31	33	b	2	أُنَ	una	una						-na		have		ba		
955	88	90	c	2	أُنَ	una	una						-na		have		ba		
166	17	17	a	1	أُنَ	una	una						-na	Do you have a headache,	have		ba		
2579	242	244	b	2	أُنَ	una	una						-na		have		ba		
1147	106	108	a	1	هَيٗ	hayo	hayo						h-	[His mother said:] These things you have told me	dem		ba		
1405	129	131	a	1	هَيٗ	hayo	hayo						h-	The water is sweet,	dem		ba		
1819	167	169	d	2	هَيٗ	hayo	hayo						h-		dem		ba		
1842	170	172	b	2	هَيٗ	hayo	hayo						h-		dem		ba		
2863	269	271	c	2	هَيٗ	hayo	hayo						h-		dem		ba		
2843	267	269	d	1	نَوٖ	nawe	nawe						na	even if you were to stand watch over him.	conj		ba		
1091	101	103	c	2	زَكٖ	zake	zake						-ake		poss		ba		
1333	122	124	c	1	نَوٖ	nawe	nawe						na	But you have not spoken your	conj		ba		
2454	229	231	d	2	نَاوٖ	nāwe	nawe						na		conj		ba		
2654	248	250	c	1	نَوٖ	nawe	nawe		naye	*			na	When [Ali] went to war	conj		ba		
3069	289	291	a	1	نَوٖ	nawe	nawe						na	And have trust [in God], my dear,	conj		ba		
3208	302	304	c	1	نَاوٖ	nāwe	nawe						na	And you go and accompany her	conj		ba		
2878	271	273	a	2	مٗيَ	moya	moya						-moja		num		ba		
2889	271	273	d	2	مٗيَ	moya	moya						-moja		num		ba		
1079	100	102	b	1	وَلَ	wala	wala						wala	nor do you know Mecca --	conj		ba		
2256	209	211	d	2	نْدَنِ	ndani	ndani						ndani		adv		ba		
2260	210	212	a	2	نْدَنِ	ndani	ndani						ndani		adv		ba		
2247	208	210	d	2	نْدَنِ	ndani	ndani						ndani		adv		ba		
2808	263	265	d	2	كُئِفِيَ	kuifiya	kuifiya		kuyifiya				-f-		verb	final	ba	ku	
2523	236	238	d	2	زِمٖئٖنٖيَ	zimeeneya	zimeeneya					In other words, Ali thinks it would be better to give the word officially, instead of having people gossip about it as a scandal.	-ene-		verb	final	ba	me	
2513	235	237	d	2	أَلِوَپٗتٖيَ	aliwapoteya	aliwapoteya					The meaning seems to be that there is no justification for any gossip, because it is not as if Ja'far has gone wandering around the town like a child or a pet, giving people cause to talk about it.	-pote-		verb	final	ba	li	
629	59	61	c	2	كَڤُٹَ	kavuţa	kavuta						-vut-		verb		ba	ka	
1625	149	151	c	3	كَمْڤِشَ	kamvisha	kamvisha					The \\Swa{kanga} is a wraparound garment, which is knotted, not sewn closed, so if someone is ill, tossing and turning, it can become undone.  Ja'far holds it on and re-knots it.  Similarly, it is considered unwise for a man to go into the kitchen, because while the woman is working there her \\Swa{leso}, \\E{upper garment}, may become undone.	-va-		verb	final	ba	ka	
2108	195	197	d	2	كَپٗكٖيَ	kapokeya	kapokeya						-pok-		verb	final	ba	ka	
2427	226	228	d	2	أَكَوَپٖكٖيَ	akawapekeya	akawapekeya						-pelek-		verb	final	ba	ka	
581	55	57	a	2	هُفَنْيَ	hufanya	hufanya						-fany-		verb		ba	hu	
2287	212	214	d	2	هُٹْوَمْبِيَ	huţwambiya	hutwambiya						-amb-		verb	final	ba	hu	
2444	228	230	d	2	نِكِكْوَنْڠَلِيَ	nikikwangaliya	nikikwangaliya						-anga-		verb	final	ba	ki	
2543	238	240	d	2	يَكِتُمِلِيَ	yakitumiliya	yakitumiliya		yakitokweleya	*			-tum-		verb	final	ba	ki	
2586	242	244	d	3	هُكْوَمْبِيَ	hukwambiya	hukwambiya						-amb-		verb	final	ba	hu	
532	50	52	b	1	كِوَزَ	kiwaza	kiwaza						-waz-	pondered and considered:	verb		ba	ki	
2564	240	242	d	2	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya					In spite of supporting Ali's comments, Fatima is still upset about her discovery.	-anga-		verb	final	ba	ki	
2819	265	267	a	2	كِپُلِكَ	kipulika	kipulika						-pulik-		verb	final	ba	ki	
2599	243	245	d	3	هُنَمْبِيَ	hunambiya	hunambiya						-amb-		verb	final	ba	hu	
36	4	4	a	3	يُوَنِ	yuwani	yuwani		yuani				-ju-		verb	final	ba	imp	
1865	172	174	b	2	إِنُكَ	inuka	inuka						-inu-		verb		ba	imp	
2950	277	279	c	3	كْوَنْدَ	kwanda	kwanda						-anz-		verb		ba	ku	
587	55	57	c	2	لِپٖٹٖ	lipeţe	lipete						-pat-		verb		ba	past	
722	68	70	b	3	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
2053	190	192	c	4	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
2842	267	269	c	2	هَنْڠَلِكُپٗكَ	hangalikupoka	hangalikupoka					Amu \\Swa{-poka} = Mvita \\Swa{-pokonya}, \\E{seize}.	-pok-		verb	final	ba	ngali	y
2231	207	209	b	2	مَيَهُوْدِ	mayahūdi	mayahudi					Although the literal meaning is \\q{Jews}, this word has a much wider meaning of unbelievers in general, \\Swa{makafiri}, because the Jewish Arabic tribes at the time of the Prophet threw in their lot with the pagans.  At the time of the \\Swa{hijra} (622 CE), all the Arabic tribes of Yathrib (Medina) made treaties with the Muslims.  The three tribes who followed Judaism (the Qaynuqa, the Nadir and the Qurayza) each in turn broke these treaties by conspiring with the Quraysh of Mecca against the Muslims.  On the first two occasions, the Qaynuqa and Nadir were allowed to leave Medina, taking the bulk of their property with them, but they continued fomenting opposition to the Muslims from outside Medina.  The last Jewish tribe in Medina, the Qurayza, opened negotiations with the Meccan army for a "fifth column" attack during the Battle of the Trench (627 CE), and after the Meccan defeat the Qurayza were charged with treachery before an arbitrator: a leader of the Qurayza's allied tribe, the Aws.  He sentenced them in accordance with the Torah (Deuteronomy 20:10-14) -- the men were executed, and the women and children sold into slavery.	y-h-d		noun	final	ar		
2775	260	262	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
973	90	92	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
1357	124	126	c	3	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
557	52	54	d	1	مْبَلِ	mbali	mbali						-bali	and threw it far away.	adv		ba		
1230	113	115	a	4	سِ	si	si						si		exist		ba		
967	89	91	d	1	يُوَ	yuwa	yuwa						-ua	the sun is fierce on the way.	noun		ba		
1229	113	115	a	3	يُوَ	yuwa	yuwa		yua				-ua		noun		ba		
1470	135	137	a	1	يُوَ	yuwa	yuwa		yua				-ua	When the sun rose [next day]	noun		ba		
1479	135	137	d	3	يُوَ	yuwa	yuwa		yua				-ua		noun		ba		
2925	275	277	b	1	يُوَ	yuwa	yuwa		yua				-ua	the sun was going down,	noun		ba		
87	9	9	b	1	هِيٗ	hiyo	hiyo						h-	[said the old woman], this is true.	dem		ba		
902	84	86	a	2	هِيٗ	hiyo	hiyo						h-		dem		ba		
1402	128	130	d	1	هِيٗ	hiyo	hiyo						h-	to put the bucket into it.	dem		ba		
2058	191	193	a	2	هِيٗ	hiyo	hiyo						h-		dem		ba		
2969	279	281	c	1	چَمْبَ	chamba	chamba						-amb-	perhaps you could show me	conj		ba		
2589	243	245	b	1	هِيٗ	hiyo	hiyo						h-	This is not like you.	dem		ba		
257	22	24	c	2	نَنِ	nani	nani						nani		int		ba		
3197	301	303	c	1	مْوَنَنْڠُ	mwanangu	mwanangu						-ana	My son is [back] at home	noun		ba		
995	92	94	b	1	مْوَنَنْڠُ	mwanangu	mwanangu						-ana	my son, your younger brother --	noun		ba		
2212	205	207	c	1	مْوَنَنْڠُ	mwanangu	mwanangu						-ana	My child, you have been through a lot.	noun		ba		
2782	261	263	b	2	مْوَنَنْڠُ	mwanangu	mwanangu						-ana		noun		ba		
1528	140	142	d	1	چَنْدَنِ	chandani	chandani						-anda	on my finger, and I gave it to him.	noun		ba		
124	12	12	d	2	زَ	za	za						-a		ref		ba		
1554	143	145	b	3	زَ	za	za						-a		ref		ba		
3174	299	301	b	1	زَ	za	za						-a	for news of her son,	ref		ba		
2154	200	202	b	2	لَ	la	la						-a		ref		ba		
1304	119	121	d	2	وَوِلِ	wawili	wawili						-wili		num		ba		
958	88	90	d	1	وَوِلِ	wawili	wawili						-wili	[and] two of them went missing.	num		ba		
1245	114	116	c	1	وَوِلِ	wawili	wawili						-wili	Two stood where they were,	num		ba		
860	80	82	b	2	هُكٗ	huko	huko						h-		dem		ba		
797	74	76	c	2	هُكٗ	huko	huko						h-		dem		ba		
1382	127	129	a	1	هُكٗ	huko	huko						h-	In that area you've passed through,	dem		ba		
2933	276	278	a	2	هُكٗ	huko	huko						h-		dem		ba		
3033	285	287	c	3	كَتَمْكَ	katamka	katamka						-tamk-		verb	final	ba	ka	
1344	123	125	c	2	سَسَ	sasa	sasa						sasa		adv		ba		
1039	96	98	b	3	ڠَنِ	gani	gani						nini		qual	final	ba		
2240	208	210	a	3	كِٹِنِ	kiţini	kitini						-ti		noun	final	ba		
2152	200	202	a	3	كَئٖٹَ	kaeţa	kaeta					i.e. \\Swa{-fanya jinga la kipumbavu}, \\E{do something blockheaded}, lit. \\q{do the stupidity of an idiot}.	-let-		verb	final	ba	ka	
2193	203	205	c	3	كَكٗمَ	kakoma	kakoma						-kom-		verb	final	ba	ka	
2373	221	223	d	3	كَوَپٖكٖيَ	kawapekeya	kawapekeya						-pelek-		verb	final	ba	ka	
1493	137	139	a	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia				-amb-	I told them: On you go --	verb		ba	ka	
3096	291	293	b	3	كَفَسِرِ	kafasiri	kafasiri						f-s-r		verb	final	ar	ka	
3219	303	305	b	3	كَبَئِنِ	kabaini	kabaini					He does not want Atika to hear.	b-a-n		verb	final	ar	ka	
1805	166	168	c	1	كَوَڠٖ	kawage	kawage						-ag-	"Go and say goodbye to your friends."	verb		ba	ka	
2245	208	210	c	3	كَبَئِنِ	kabaini	kabaini					\\Swa{kumwambia siri}, \\E{to tell him a secret}.	b-a-n		verb	final	ar	ka	
572	54	56	a	2	كَرَدِدِ	karadidi	karadidi					The original Arabic word means \\q{repeat}, but in Swahili it is another word for \\Swa{-sema}, \\E{speak}.	r-d-d		verb	final	ar	ka	
2618	245	247	d	1	كَمَ	kama	kama						k-m-a	if I had told you the truth.	conj		ar		
1239	113	115	d	1	كَمَ	kama	kama						k-m-a	that you will be delayed [if you stop here]."	conj		ar		
1830	169	171	a	2	كَمَ	kama	kama						k-m-a	And if you are not pleased,	conj		ar		
335	30	32	c	2	مُحَمَدِ	muḥamadi	muhamadi		Muhamadi				m-hh-m-d		persn	final	ar		
740	69	71	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	He told Ja'far.	persn		ar		
1086	101	103	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Jaafar said:	persn		ar		
1447	133	135	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far said:	persn		ar		
407	37	39	d	2	أُكِيَسِكِيَ	ukiyasikiya	ukiyasikiya						-siki-		verb	final	ba	ki	
1936	179	181	c	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far answered him:	persn		ar		
2793	262	264	b	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far regained consciousness	persn		ar		
486	45	47	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari			We might surmise that he was named Ja'far after Ali's brother Ja'far, who died at the battle of Mu'tah in 629 CE.	j-3-f-r		persn	final	ar		
984	91	93	b	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
1029	95	97	b	3	جَعْفَرِ	jaʿfari	jafari		Jaafari			She knows something has happened.	j-3-f-r		persn	final	ar		
930	86	88	c	2	كَمَ	kama	kama						k-m-a		conj		ar		
2981	280	282	d	1	كَمَ	kama	kama						k-m-a	if that clarifies things for you.	conj		ar		
479	44	46	d	2	إِكَپٗتٖيَ	ikapoteya	ikapoteya					That is, the child would not know who his father was -- this would be very unfortunate, and Ali is anxious for this not to happen	-pote-		verb	final	ba	ka	
3243	305	307	c	3	كَمَ	kama	kama						k-m-a		conj		ar		
548	51	53	d	2	أَمٖزٗوٖيَ	amezoweya	amezoweya						-zoe-		verb	final	ba	me	
2706	253	255	b	3	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
680	64	66	b	1	كَمَ	kama	kama						k-m-a	if I had not recognised you.	conj		ar		
526	49	51	c	2	أَلِكِفُنِكَ	alikifunika	alikifunika					Because in such a climate water is very valuable.	-fun-		verb	final	ba	li	
458	42	44	d	2	كُوَمْبِيَ	kuwambiya	kuwambiya						-amb-		verb	final	ba	ku	
509	47	49	d	2	كُمْوَمْبِيَ	kumwambiya	kumwambiya						-amb-		verb	final	ba	ku	
593	56	58	a	3	كُٹٖكَ	kuţeka	kuteka						-chek-		verb	final	ba	ku	
556	52	54	c	3	كَسُكُمَ	kasukuma	kasukuma						-sukum-		verb	final	ba	ka	
262	23	25	a	1	كَمْجِبُ	kamjibu	kamjibu						j-a-b	She replied eloquently:	verb		ar	ka	
1281	118	120	a	1	كَوَجِبِشَ	kawajibisha	kawajibisha						j-a-b	I answered them with the words:	verb		ar	ka	
2186	203	205	a	2	كَرُدِيَ	karudiya	karudiya		karudia				r-d-d		verb		ar	ka	
127	13	13	a	1	كَفَسِرِ	kafasiri	kafasiri						f-s-r	He addressed [Ali] openly [saying:]	verb		ar	ka	
778	73	75	a	1	كَمْرُدِشِيَ	kamrudishiya	kamrudishiya		kamrudishia			This seems out of place, since Ja'far has not actually said anything for Ali to reply to.  Perhaps we should emend by reading 122, 124, 123, 125.	r-d-d	[Ali] replied to [Ja'far]:	verb		ar	ka	
2143	199	201	b	1	كَأَنْدَمَ	kaandama	kaandama						-andam-	and walked on for a long way	verb		ba	ka	
2140	199	201	a	1	كَئِوَتَ	kaiwata	kaiwata						-ach-	I left behind the [road] to the right	verb		ba	ka	
2176	202	204	b	1	كَلَنْدَمَ	kalandama	kalandama						-andam-	and then retraced my footsteps	verb		ba	ka	
2398	224	226	b	1	كَپٗوَ	kapowa	kapowa		kapoa				-po-	and accepted water, the Trustworthy One,	verb		ba	ka	
2411	225	227	b	2	كَپٗوَ	kapowa	kapowa		kapoa				-po-		verb		ba	ka	
2836	267	269	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia				-amb-	He told him as [Ali] listened:	verb		ba	ka	
2895	272	274	c	1	كَنٖنْدَ	kanenda	kanenda						-end-	and went quickly with them.	verb		ba	ka	
286	25	27	c	1	كَمَ	kama	kama						k-m-a	for these words --	conj		ar		
558	52	54	d	2	أَكَلَتِلِيَ	akalatiliya	akalatiliya					\\Swa{-atilia} means \\q{drop} in Mvita and \\q{throw} in Amu.	-ach-		verb	final	ba	ka	
602	57	59	a	2	هُنِشِكِيَنِ	hunishikiyani	hunishikiyani		hunishikia-ni				-shik-		verb	final	ba	hu	
590	55	57	d	2	تهَمْفِنِكِيَ	tʰamfinikiya	tamfinikiya						-fun-		verb	final	ba	ta	
496	46	48	c	2	أَلٗكِمُؤٗنَ	alokimuona	alokimuona						-on-		verb	final	ba	li	
1711	157	159	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
1783	164	166	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
1904	176	178	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
3044	286	288	d	2	أَكُلٖٹٖيَ	akuleţeya	akuleteya						-let-		verb	final	ba	a	
2660	249	251	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far was a stranger [to war],	persn		ar		
657	62	64	a	2	كُئِيٗنَ	kuiyona	kuiyona		kuiona				-on-		verb		ba	ku	
2222	206	208	b	3	كُيَ	kuya	kuya						-j-		verb		ba	ku	
742	70	72	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya						-amb-	[But Ja'far] told him: I am going off --	verb		ba	ka	
2311	215	217	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	He spoke to Ja'far.	persn		ar		
1821	168	170	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far spoke:	persn		ar		
1867	172	174	c	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far said:	persn		ar		
2712	254	256	a	2	جِبْرِيْلِ	jibrı̄li	jibrili		Jiburili				j-b-r-l		persn	final	ar		
743	70	72	a	2	نٖنْدَ	nenda	nenda						-end-		verb		ba	a	
3105	292	294	b	1	كَٹِكَ	kaţika	katika						kati	and when I opened it	prep		ba		
1694	155	157	d	2	أُپَٹٖ	upaţe	upate						-pat-		verb		ba	subj	
737	69	71	c	1	ٹْوٖنٖنْدٖ	ţwenende	twenende						-end-	so that we may go on towards the town,	verb		ba	subj	
3063	288	290	b	3	كِوٖكَ	kiweka	kiweka					God has the power to do whatever he likes -- he sustains people or brings their life to an end, and we are not in a position to understand his motives.	-wek-		verb	final	ba	ki	
3221	303	305	c	2	كِٹِنِ	kiţini	kitini						-ti		noun	final	ba		
524	49	51	b	2	أَسِپٗيَتَكَ	asipoyataka	asipoyataka						-tak-		verb	final	ba	ki	y
528	49	51	d	2	أَكِچٖنْدٖيَ	akichendeya	akichendeya						-end-		verb	final	ba	ki	
689	65	67	b	1	هُمُؤُزِ	humuuzi	humuuzi						-uz-	you do not even ask his name.	verb		ba	a	y
2300	214	216	b	2	كِٹِنِ	kiţini	kitini						-ti		noun	final	ba		
2397	224	226	a	2	كِٹِنِ	kiţini	kitini						-ti		noun	final	ba		
2546	239	241	a	3	مْڠٖنِ	mgeni	mgeni					Ali is asking Hasan: \\Swa{kwa nini umekasirika?}, \\E{why are you angry?}.  You must know that I have a duty of care to Ja'far -- I cannot disown him and leave him to wander around the town by himself.	-geni		noun	final	ba		
732	69	71	a	2	مْبُزِ	mbuzi	mbuzi						-buzi		noun		ba		
1409	129	131	b	1	مْفَنٗ	mfano	mfano						-fan-	just like Zamzam's,	noun		ba		
5	1	1	b	2	نَ	na	na						na		conj		ba		
7	1	1	c	1	نَ	na	na						na	and \\q{the Merciful} -- know	conj		ba		
1364	125	127	b	2	وَپِ	wapi	wapi						-pi		int		ba		
3279	309	311	a	1	هَپَ	hapa	hapa						h-	Here I have finished,	dem		ba		
3128	294	296	d	1	نْدَنِ	ndani	ndani						ndani	she had read into it.	adv		ba		
1649	152	154	a	2	هُنَ	huna	huna						-na		have		ba		
3247	305	307	d	3	نِ	ni	ni						ni		exist		ba		
2661	249	251	a	2	نِ	ni	ni						ni		exist		ba		
31	3	3	d	1	كْوَ	kwa	kwa						-a	and I was gratified lawfully.	ref		ba		
1808	166	168	d	1	يٗتٖ	yote	yote						-ote	I heard everything.	qual		ba		
1513	139	141	b	1	مَاءٖ	mae	mae		mai	*			maji	before I had drawn any water.	noun		ba		
2224	206	208	c	1	نْدِيَ	ndiya	ndiya		ndia				-jia	[on] the road he came along	noun		ba		
29	3	3	c	1	مٗيٗ	moyo	moyo						-oyo	and my heart desired her,	noun		ba		
152	15	15	c	2	نْيُمْبَنِ	nyumbani	nyumbani						-umb-		noun		ba		
2350	219	221	d	1	نْيُمْبَنِ	nyumbani	nyumbani						-umb-	and I have not yet returned home.	noun		ba		
794	74	76	b	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia				-amb-	told him: Thank you.	verb		ba	ka	
3265	307	309	c	1	كَنْدَمَنَ	kandamana	kandamana						-andam-	and walked along with Zubayr	verb		ba	ka	
3131	295	297	a	2	كَلِمَ	kalima	kalima						k-l-m		noun	final	ar		
384	35	37	c	2	كَلِمَ	kalima	kalima					\\Swa{ametokwa na maneno} -- this occurs when one feels particularly when one feels strongly about something.  If you want to emphasise a speaker's volubility, you can say \\Swa{ametokwa na maneno yake na ya kuwazimu}, lit. \\E{he was come out of by his own words and those of his ancestors}.	k-l-m		noun	final	ar		
185	18	18	c	2	كَمَ	kama	kama						k-m-a		conj		ar		
3232	304	306	d	1	كَمَ	kama	kama						k-m-a	and gossip about me?	conj		ar		
372	34	36	b	2	كَمَ	kama	kama						k-m-a		conj		ar		
2441	228	230	c	1	كَمَ	kama	kama						k-m-a	as if you are angry,	conj		ar		
345	31	33	c	2	كَمَ	kama	kama						k-m-a		conj		ar		
1117	103	105	d	2	كَمَ	kama	kama						k-m-a		conj		ar		
1103	102	104	d	1	كَمَ	kama	kama						k-m-a	than my own, look.	conj		ar		
2997	282	284	a	3	كَٹِكَ	kaţika	katika						kati		prep		ba		
2894	272	274	b	2	كَرَتَسِ	karatasi	karatasi						q-r-tw-s		noun	final	ar		
2142	199	201	a	3	كُڤُلِ	kuvuli	kuvuli						-vuli		noun	final	ba		
2792	262	264	a	2	كَلِمَ	kalima	kalima						k-l-m		noun	final	ar		
674	63	65	c	3	هُئِٹْوَيٖ	huiţwaye	huitwaye						-it-		verb	final	ba	hu	
782	73	75	b	3	نٖنْدَ	nenda	nenda						-end-		verb		ba	a	
1825	168	170	c	1	أَوْ	aw	au						2-w	Did we not agree	conj		ar		
2374	222	224	a	1	وَكَكٖتِ	wakaketi	wakaketi						-ka-	They sat equally,	verb		ba	ka	
815	76	78	b	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia				-amb-	said goodbye to him,	verb		ba	ka	
929	86	88	c	1	هُنْڠِيَ	hungiya	hungiya		hungia				-ingi-	entering as if secretly,	verb		ba	hu	
15	2	2	b	2	مَتٖمْبٖزِ	matembezi	matembezi						-temb-		noun		ba		
76	8	8	a	1	أَكَفَنْيَ	akafanya	akafanya						-fany-	She tried to convince Fatima,	verb		ba	ka	
107	11	11	a	1	أَكَفَنْيَ	akafanya	akafanya						-fany-	But Fatima then acted immediately --	verb		ba	ka	
167	17	17	a	2	كِتْوَ	kitwa	kitwa						-chwa		noun		ba		
254	22	24	b	4	مْكٖ	mke	mke						-ke		noun		ba		
664	62	64	c	2	أَسِكِتِكٖ	asikitike	asikitike					-sikitik-	-sikitik-		verb	final	ba	subj	
37	4	4	b	1	نَلٗمْپَ	nalompa	nalompa						-p-	which I gave her as well, 	verb		ba	li	
116	12	12	a	1	نَمْكُلِيَ	namkuliya	namkuliya		namkulia				-amku-	I am summoning him secretly, 	verb		ba	a	
17	2	2	c	1	نِوَپٖ	niwape	niwape						-p-	Let me give you my story, 	verb		ba	subj	
34	4	4	a	1	نَ	na	na						na		conj		ba		
26	3	3	b	2	نَ	na	na						na		conj		ba		
4	1	1	b	1	پَمْوٖ	pamwe	pamwe						-mwe	along with \\q{the Compassionate}	adv		ba		
39	4	4	c	1	نَلِنَ	nalina	nalina						-na	I had a ring on my finger,	have		ba		
2557	240	242	b	2	سِ	si	si						si		exist		ba		
114	11	11	d	1	بَبَكٗ	babako	babako						baba	"I am summoning your father."	noun		ba		
143	14	14	d	1	نَايٗ	nāyo	nayo						na	and that is not like her.	conj		ba		
123	12	12	d	1	مْبٖلٖ	mbele	mbele						-bele	in front of the Messenger, the Prophet.	adv		ba		
100	10	10	b	1	مِمِ	mimi	mimi						mimi	I didn't pay him any heed.	pron		ba		
217	21	21	c	1	أَنَيٗ	anayo	anayo						-na	Abu Bakr has it --	have		ba		
138	14	14	b	2	أُنَنِ	unani	unani		una-ni				-na		have		ba		
98	10	10	a	3	نِ	ni	ni						ni		exist		ba		
92	9	9	c	3	پٖٹٖ	peţe	pete						-pet-		noun		ba		
3121	294	296	a	2	كَمْكَلِمُ	kamkalimu	kamkalimu						k-l-m		verb	final	ar	ka	
144	14	14	d	2	سِيٗ	siyo	siyo						-li		focus		ba		
141	14	14	c	2	كْوَ	kwa	kwa						-a		ref		ba		
117	12	12	a	2	كْوَ	kwa	kwa						-a		ref		ba		
103	10	10	c	2	كْوَ	kwa	kwa						-a		ref		ba		
149	15	15	b	2	كْوَ	kwa	kwa						-a		ref		ba		
1728	158	160	c	2	نَ	na	na						na		conj		ba		
1242	114	116	a	2	كَلِمَ	kalima	kalima						k-l-m		noun	final	ar		
3280	309	311	a	2	نِمٖٹِيَ	nimeţiya	nimetiya		nimetia				-ti-		verb		ba	me	
2059	191	193	a	3	كَلِمَ	kalima	kalima						k-l-m		noun	final	ar		
164	16	16	d	1	أُلِلٗنَلٗ	ulilonalo	ulilonalo		ulilo nalo				-li	tell me what's wrong with you.	verb		ba	li	
12	2	2	a	1	پُلِكَنِ	pulikani	pulikani						-pulik-	Listen, my brothers,	verb		ba	imp	
839	78	80	c	1	كَمبَ	kamba	kamba						-amb-	and said: You are  making me worried	verb		ba	ka	
2352	220	222	a	1	كَمْبَ	kamba	kamba						-amb-	[Ali] said: Wait, Bringer of Good Tidings,	verb		ba	ka	
2361	220	222	d	2	كَكٖتِ	kaketi	kaketi						-ka-		verb		ba	ka	
97	10	10	a	2	كهَنٖنَ	kʰanena	kanena						-nen-		verb		ba	ka	
2089	194	196	a	2	كَلَمُ	kalamu	kalamu						k-l-m		noun	final	ar		
2310	215	217	c	2	كَلِمُ	kalimu	kalimu						k-l-m		noun	final	ar		
307	27	29	c	2	كَلِمَ	kalima	kalima					lit. \\q{cut the words}.	k-l-m		noun	final	ar		
2044	190	192	a	1	كُنَ	kuna	kuna						-na	There is a handsome boy there.	have		ba		
2459	230	232	b	2	كُلٖ	kule	kule						-le		dem		ba		
2788	261	263	d	1	كَٹِكَ	kaţika	katika						kati	as you went on your way?	prep		ba		
135	14	14	a	1	أَكَمُؤُزَ	akamuuza	akamuuza						-uz-	The Hashimite asked [Ali]:	verb		ba	ka	
844	79	81	a	1	وَنِٹِيَ	waniţiya	wanitiya		wanitia				-ti-	You are making me sad	verb		ba	a	
840	78	80	c	2	وَنِٹِيَ	waniţiya	wanitiya		wanitia				-ti-		verb		ba	a	
2626	246	248	b	3	وَتَ	wata	wata						-ach-		verb		ba	imp	
22	3	3	a	1	نِلِ	nili	nili						-li	I was going along the road,	verb		ba	li	
2597	243	245	d	1	أَمْبَ	amba	amba						-amb-	say what it is, and tell me.	verb		ba	imp	
25	3	3	b	1	كْوَلِ	kwali	kwali						-li	and there was a person in a room,	verb		ba	li	
1411	129	131	b	3	زَمْزَمُ	zamzamu	zamzamu		Zamuzamu			Zamzam is a sacred spring in Mecca, situated close to the Ka'aba.	z-m-z-m		placen	final	ar		
2755	258	260	b	4	حُسَيْنِ	ḥusayni	husayni		Huseni				hh-s-y-n		persn	final	ar		
1254	115	117	c	1	أَوْ	aw	au						2-w	And why are you concerned about us,	conj		ar		
1515	139	141	c	1	مَمَ	mama	mama					\\Swa{mama!} -- see 173c.	mama	Gosh!  At that point I spoke,	noun		ba		
204	20	20	b	1	پٖٹٖ	peţe	pete						-pet-	I want your ring.	noun		ba		
1329	122	124	b	1	نَ	na	na						na	and this is Zubayr.	conj		ba		
129	13	13	b	1	هَمْكُلِوَ	hamkuliwa	hamkuliwa						-amku-	You are wanted at home.	verb		ba	hu	
224	22	22	a	3	يَ	ya	ya						-a		ref		ba		
237	21	23	a	4	وَ	wa	wa						-a		ref		ba		
298	26	28	d	2	كْوَ	kwa	kwa						-a		ref		ba		
263	23	25	a	2	كْوَ	kwa	kwa						-a		ref		ba		
232	22	22	d	1	كْوَ	kwa	kwa						-a	for what you told me.	ref		ba		
256	22	24	c	1	نِ	ni	ni						ni	Who is this enemy of mine	exist		ba		
236	21	23	a	3	نِ	ni	ni						ni		exist		ba		
181	18	18	b	1	وٖوٖ	wewe	wewe						wewe	you were talking and laughing.	pron		ba		
175	17	17	d	1	كْوَ	kwa	kwa						-a	I am not crying because I am ill.	ref		ba		
210	20	20	d	2	لَ	la	la						-a		ref		ba		
235	21	23	a	2	مْوٖزِ	mwezi	mwezi						-ezi		noun		ba		
196	19	19	c	1	مٗيٗ	moyo	moyo						-oyo	so that your heart will leave aside pain, 	noun		ba		
186	18	18	c	3	كهِٹُ	kʰiţu	kitu						-tu		noun		ba		
265	23	25	b	1	مْٹُيٖ	mţuye	mtuye						-tu	I will not disclose that person.	noun		ba		
215	21	21	b	1	نٖنٗ	neno	neno						-nen-	the utterance that he spoke [was this:]	noun		ba		
1340	123	125	b	1	مِمِ	mimi	mimi						mimi	I am called Azwaj,	pron		ba		
125	12	12	d	3	ٹُمْوَ	ţumwa	tumwa		Tumwa				-tum-		title		ba		
191	19	19	a	2	نِنِ	nini	nini						nini		int		ba		
105	10	10	d	1	يٖئٗ	yeo	yeo						-eo	today, I will ask him.	adv		ba		
137	14	14	b	1	يٖئٗ	yeo	yeo						-eo	What is the matter with Fatima today?	adv		ba		
222	22	22	a	1	پٖٹٖ	peţe	pete						-pet-	[But Fatima said:] "Your ring is for [your] finger --	noun		ba		
280	25	27	a	1	هَيَ	haya	haya						h-	[Fatima said:] Well, your ring -- say	dem		ba		
352	32	34	b	2	نَ	na	na						na		conj		ba		
371	34	36	b	1	نِ	ni	ni						ni	What sort of news is it	exist		ba		
411	38	40	b	1	يَلٖ	yale	yale						-le	weighed those [words] carefully,	dem		ba		
244	21	23	c	4	وَ	wa	wa						-a		ref		ba		
317	28	30	d	1	زِنْڠِ	zingi	zingi						-ingi	I have told her many of them.	qual		ba		
385	35	37	d	1	بَبَكٖ	babake	babake						baba	and she told [everything] to her father.	noun		ba		
289	25	27	d	1	بَبَنْڠُ	babangu	babangu						baba	I do not [want to] tell my father [about them]."	noun		ba		
119	12	12	b	1	أَسِسِكِيٖ	asisikiye	asisikiye		asisikie				-siki-	so that the Bearer of Good Tidings does not hear.	verb		ba	subj	y
131	13	13	c	1	أَكِسِكِيَ	akisikiya	akisikiya		akisikia				-siki-	When the Trustworthy One heard this	verb		ba	ki	
1216	112	114	a	2	مْوٖنْدَپِ	mwendapi	mwendapi		mwenda-pi				-end-		verb		ba	a	
314	28	30	c	1	زِيَپٗ	ziyapo	ziyapo		ziapo			\\Swa{-apa}, \\E{curse}, but \\Swa{-tia kiapo}, \\E{swear an oath}, such as \\Swa{nife nili kaffir}, \\E{may I die an unbeliever}.  Ali has sworn a few oaths to Fatima out of necessity, but he is not bound by them because he swore them in order to preserve marital harmony.	-ap-	white lies,	noun		ba		
267	23	25	c	1	پٖٹٖ	peţe	pete						-pet-	Who have you given the ring to?	noun		ba		
276	24	26	c	1	يَلِنْڠِيَ	yalingiya	yalingiya						-ingi-	It fell into a well --	verb		ba	li	
325	29	31	c	1	كُمْوَمْبِيَ	kumwambiya	kumwambiya						-amb-	I haven't the nerve to tell her.	verb		ba	ku	
2263	210	212	b	2	أَكَتَمْكَ	akatamka	akatamka						-tamk-		verb	final	ba	ka	
837	78	80	b	1	أَكَلِيَ	akaliya	akaliya		akalia				-li-	the teacher wept,	verb		ba	ka	
148	15	15	b	1	أَكَنٖنْدَ	akanenda	akanenda						-end-	and went in haste	verb		ba	ka	
3035	285	287	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
300	27	29	a	1	أَكَمُؤُزَ	akamuuza	akamuuza						-uz-	The Hashimite asked him:	verb		ba	ka	
1759	161	163	c	2	أَكَئِنُكَ	akainuka	akainuka						-inu-		verb	final	ba	ka	
1792	165	167	a	2	أَكَتَمْكَ	akatamka	akatamka						-tamk-		verb	final	ba	ka	
274	24	26	b	1	تهَكْوَمْبِيَ	tʰakwambiya	takwambiya						-amb-	I will tell you what really happened.	verb		ba	ta	
351	32	34	b	1	وَلِ	wali	wali						-li	Was there anything wrong, Fatima?	verb		ba	li	
197	19	19	c	2	أُوَتٖ	uwate	uwate						-ach-		verb		ba	subj	
121	12	12	c	1	كٖنٖنْدَ	kenenda	kenenda						-end-	[But Hasan] went and spoke [openly],	verb		ba	ka	
248	22	24	a	1	نَأَپَ	naapa	naapa						-ap-	[Ali said:] I swear to God, dearest --	verb		ba	a	
1488	136	138	c	1	نَؤٗنَ	naona	naona					The tense here gives the nuance of \\q{suddenly}.  See also the notes to 60c and 92b.	-on-	and I saw that they had broken away from me,	verb		ba	a	
2980	280	282	c	3	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
814	76	78	a	3	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
926	86	88	a	3	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r		persn	final	ar		
552	52	54	b	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far approached,	persn		ar		
563	53	55	b	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	and Jaafar was there behind them.	persn		ar		
599	56	58	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Jaafari said to him:	persn		ar		
1686	155	157	a	3	مُحَمَدِ	muḥamadi	muhamadi						m-hh-m-d		persn	final	ar		
1964	182	184	a	2	حُسَيْنِ	ḥusayni	husayni		Huseni				hh-s-y-n		persn	final	ar		
631	59	61	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far, and addressed him.	persn		ar		
684	64	66	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Jaafar spoke to him:	persn		ar		
922	85	87	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	and spoke to Ja'far.	persn		ar		
2029	188	190	b	2	حُسَيْنِ	ḥusayni	husayni		Huseni				hh-s-y-n		persn	final	ar		
2036	189	191	a	3	حُسَيْنِ	ḥusayni	husayni		Huseni				hh-s-y-n		persn	final	ar		
2291	213	215	b	2	حُسَيْنِ	ḥusayni	husayni		Huseni				hh-s-y-n		persn	final	ar		
717	67	69	d	3	أَمْوَمْبِيٖ	amwambiye	amwambiye						-amb-		verb	final	ba	past	
1035	96	98	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari				j-3-f-r	Ja'far said:	persn		ar		
1685	155	157	a	2	مْٹُمٖ	mţume	mtume		Mtume				-tum-		title		ba		
2010	186	188	c	1	مْٹُمِ	mţumi	mtumi		Mtumi				-tum-	The Prophet spoke	title		ba		
2489	233	235	b	2	حُسَيْنِ	ḥusayni	husayni		Huseni				hh-s-y-n		persn	final	ar		
2509	235	237	b	2	حُسَيْنِ	ḥusayni	husayni		Huseni				hh-s-y-n		persn	final	ar		
2343	219	221	a	1	مْٹُمٖ	mţume	mtume		Mtume				-tum-	The Prophet spoke:	title		ba		
2416	225	227	d	1	ٹُمْوَ	ţumwa	tumwa		Tumwa				-tum-	the Prophet went off.	title		ba		
2418	226	228	a	1	ٹُمْوَ	ţumwa	tumwa		Tumwa				-tum-	When the Prophet had left	title		ba		
2470	231	233	b	2	مْٹُمٖ	mţume	mtume		Mtume				-tum-		title		ba		
2830	266	268	b	1	مْٹُمِ	mţumi	mtumi		Mtumi				-tum-	the Prophet sat [Ali] down	title		ba		
706	66	68	d	2	كُنِٹِيَ	kuniţiya	kunitiya						-ti-		verb	final	ba	ku	
1633	150	152	c	2	أَكَتَكَلَمُ	akatakalamu	akatakalamu						k-l-m		verb	final	ar	ka	
2306	215	217	a	2	أَكَنُظُمُ	akanuẓumu	akanudhumu						n-dw-m		verb	final	ar	ka	
2844	267	269	d	2	أُكَمْوَنْڠَلِيَ	ukamwangaliya	ukamwangaliya						-anga-		verb	final	ba	ka	
2744	257	259	b	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
2955	278	280	a	2	أَكَفَسِرِ	akafasiri	akafasiri						f-s-r		verb	final	ar	ka	
3192	301	303	a	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
3294	304	312	b	2	أَكَزِبَئِنِ	akazibaini	akazibaini						b-a-n		verb	final	ar	ka	
1732	159	161	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-	He told Nasir:	verb		ba	ka	
3269	307	309	d	2	أَكَرٖجٖيَ	akarejeya	akarejeya						r-j-3		verb	final	ar	ka	
30	3	3	c	2	أُكَمْتَمَنِ	ukamtamani	ukamtamani					Note that in the Y version it is Ali who desires Atika, but that in the R version it is Atika who desires Ali.	m-n-a		verb	final	ar	ka	
2028	188	190	b	1	أَكَمْٹُمَ	akamţuma	akamtuma						-tum-	sent Husayn:	verb		ba	ka	
2918	274	276	c	1	أَكَتٗكَ	akatoka	akatoka						-to-	and she left home on her own	verb		ba	ka	
110	11	11	b	1	أَسِئِوٖزٖ	asiiweze	asiiweze		asiyiweze			\\Swa{hakuweza kustahimili}.	-wez-	she could not restrain herself.	verb		ba	past	y
756	71	73	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka						-pambauk-		verb	final	ba	ki	
2118	197	199	a	1	أَكَمْجِبُ	akamjibu	akamjibu						j-a-b	[ja'far] answered him with the words:	verb		ar	ka	
3130	295	297	a	1	أَكَمْجِبُ	akamjibu	akamjibu						j-a-b	[Atika] answered her with the words:	verb		ar	ka	
2477	232	234	a	1	أَكَمُؤُزَ	akamuuza	akamuuza						-uz-	The Trustworthy One asked him:	verb		ba	ka	
2413	225	227	c	1	أَكَوَآڠَ	akawaãga	akawaaga						-ag-	and he bade them farewell -- 	verb		ba	ka	
2514	236	238	a	1	أَكَمُؤُزَ	akamuuza	akamuuza						-uz-	His father asked him:	verb		ba	ka	
2571	241	243	c	1	أَكَئِنُكَ	akainuka	akainuka						-inu-	He got up carefully	verb		ba	ka	
2720	255	257	a	1	أَكَتَمْكَ	akatamka	akatamka						-tamk-	The Trustworthy One spoke:	verb		ba	ka	
2713	254	256	b	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-	and told the Prophet:	verb		ba	ka	
3085	290	292	b	2	يَكِمْشُكَ	yakimshuka	yakimshuka						-shuk-		verb	final	ba	ki	
2837	267	269	a	2	كِپُلِكَ	kipulika	kipulika						-pulik-		verb	final	ba	ki	
1331	122	124	b	3	هُئِٹْوَ	huiţwa	huitwa						-it-		verb		ba	hu	
1800	166	168	a	1	أَوْ	aw	au						2-w	For was I not there yesterday	conj		ar		
1810	167	169	a	1	أَوْ	aw	au						2-w	Or if he is going to the pastures,	conj		ar		
2510	235	237	c	1	آسَ	ãsa	asa		basi	*			b-s	So, why are you bothering me?	conj		ar		
571	54	56	a	1	أَچٖڠٖمَ	achegema	achegema						-egem-	As Ja'far approached, he was saying:	verb		ba	ki	
960	89	91	a	1	وَمٖتٗكَ	wametoka	wametoka						-to-	They left the herd,	verb		ba	me	
243	21	23	c	3	مْكٖ	mke	mke						-ke		noun		ba		
282	25	27	a	3	پٖٹٖ	peţe	pete						-pet-		noun		ba		
928	86	88	b	2	جَوْرِ	jawri	jauri						-euri		noun	final	ba		
453	42	44	b	2	مٖنْڠِنٖ	mengine	mengine						-ingine		qual		ba		
416	38	40	d	1	بَبَكٖ	babake	babake						baba	and told her father:	noun		ba		
431	40	42	a	2	مْٹُ	mţu	mtu						-tu		noun		ba		
442	41	43	b	1	مْٹُيٖ	mţuye	mtuye						-tu	[is that] that person was a devil,	noun		ba		
365	33	35	c	2	نْدَكٖ	ndake	ndake		zake	*			-ake		focus		ba		
388	36	38	a	2	مَنٖنٗ	maneno	maneno						-nen-		noun		ba		
404	37	39	c	3	مَنٖنٗ	maneno	maneno						-nen-		noun		ba		
492	46	48	b	1	نَ	na	na						na	resembling his father.	conj		ba		
519	49	51	a	1	نَاءٖ	nae	nae		naye				na	And he went from suspicion,	conj		ba		
482	45	47	b	1	نْدِيٗ	ndiyo	ndiyo						ni	was exactly what happened.	focus		ba		
483	45	47	b	2	يٗتٖ	yote	yote						-ote		qual		ba		
493	46	48	b	2	بَبَكٖ	babake	babake						baba		noun		ba		
252	22	24	b	2	وٖيْ	wee	wee		we				wewe		pron		ba		
353	32	34	b	3	نِنِ	nini	nini						nini		int		ba		
541	51	53	b	1	نَ	na	na						na	I will cover it again today,	conj		ba		
550	52	54	a	2	هُكُ	huku	huku						h-		dem		ba		
586	55	57	c	1	هِلِ	hili	hili						h-	I'm at the end of my tether --	dem		ba		
533	50	52	b	2	نَ	na	na						na		conj		ba		
594	56	58	b	1	نَ	na	na						na		conj		ba		
567	53	55	c	2	نَاءٖ	nae	nae		naye				na		conj		ba		
566	53	55	c	1	كِشَ	kisha	kisha						-ish-	Then he too came forward, 	conj		ba		
539	51	53	a	1	كِشَ	kisha	kisha						-ish-	Then he said:	conj		ba		
561	53	55	a	3	كْوَ	kwa	kwa						-a		ref		ba		
591	56	58	a	1	مَاءِ	mai	mai						maji	[But] while he was drawing water,	noun		ba		
597	56	58	c	1	مْكٗنٗ	mkono	mkono						-kono	and grabbed him by the arm.	noun		ba		
547	51	53	d	1	مْٹُيٖ	mţuye	mtuye						-tu	that person who is behaving like that.	noun		ba		
603	57	59	b	1	مِمِ	mimi	mimi						mimi	I'm not in the least afraid of you.	pron		ba		
601	57	59	a	1	وٖوٖ	wewe	wewe						wewe	Why are you grabbing hold of me?	pron		ba		
544	51	53	c	1	سِنَ	sina	sina						-na	and doubtless I will catch	have		ba		
608	57	59	c	3	نِ	ni	ni						ni		exist		ba		
619	58	60	d	1	نَ	na	na						na	I will say even more to you."	conj		ba		
665	62	64	d	1	نَ	na	na						na	and was filled with remorse.	conj		ba		
628	59	61	c	1	كِشَ	kisha	kisha						-ish-	Eventually he spoke,	conj		ba		
637	60	62	b	3	نْ	n	n		ni				ni		exist		ba		
651	61	63	c	2	نِ	ni	ni						ni		exist		ba		
701	66	68	b	2	إٖوٖ	ewe	ewe					Ja'far is suspicious.	wewe		pron		ba		
639	60	62	c	1	بَبَ	baba	baba						baba	[My] father is no longer in this world,	noun		ba		
648	61	63	b	3	نِ	ni	ni						ni		exist		ba		
612	58	60	a	1	هَيَ	haya	haya						h-	These [things] I have said,	dem		ba		
408	38	40	a	1	كُتٗكَ	kutoka	kutoka						-to-	For her part, Fatima	verb		ba	ku	
334	30	32	c	1	كَئِنُكَ	kainuka	kainuka						-inu-	Muhammad got up,	verb		ba	ka	
535	50	52	c	1	وَمٖكُيَ	wamekuya	wamekuya						-j-	Unbelievers have come here	verb		ba	me	
414	38	40	c	2	كَڤُٹَ	kavuţa	kavuta						-vut-		verb		ba	ka	
379	35	37	a	1	أَكَئِنَمَ	akainama	akainama					Good children are shy in front of their parents, and show them respect.	-inam-	Fatima bowed down	verb		ba	ka	
592	56	58	a	2	كَٹِكَ	kaţika	katika						kati		prep		ba		
377	34	36	d	1	أُكَجَ	ukaja	ukaja						-j-	and ended up sending for him?	verb		ba	ka	
564	53	55	b	2	أُكَلِكٗ	ukaliko	ukaliko						-li		verb		ba	ka	
268	23	25	c	2	أُمْپٖيْ	umpee	umpee						-p-		verb		ba	past	
428	39	41	d	2	مْوٖنْيٖ	mwenye	mwenye						-enye		qual		ba		
387	36	38	a	1	يَوَتٖ	yawate	yawate						-ach-	Leave off these words, [he said].	verb		ba	imp	
965	89	91	c	2	أَتٗكَ	atoka	atoka						-to-		verb		ba	a	
610	57	59	d	1	نَيُوَ	nayuwa	nayuwa						-ju-	I would know how to read [the Qur'an] against you.	verb		ba	a	
48	5	5	b	2	رُبَ	ruba	ruba						r-a-b		noun		ar		
1376	126	128	c	1	مْبُزِ	mbuzi	mbuzi						-buzi	The goats have eaten all the grass,	noun		ba		
91	9	9	c	2	نَ	na	na						na		conj		ba		
88	9	9	b	2	نْدِيٗ	ndiyo	ndiyo						ni		focus		ba		
646	61	63	b	1	وٖوٖ	wewe	wewe						wewe	Who is your father?	pron		ba		
640	60	62	c	2	هَكٗ	hako	hako						LOC		loc		ba		
690	65	67	b	2	لَكٖ	lake	lake						-ake		poss		ba		
755	71	73	a	1	كٖشٗ	kesho	kesho						-kesh-	When tomorrow has dawned,	adv		ba		
376	34	36	c	2	نْيُمْبَنِ	nyumbani	nyumbani						-umb-		noun	final	ba		
753	70	72	d	2	كٖشٗ	kesho	kesho						-kesh-		adv		ba		
720	68	70	b	1	مِمِ	mimi	mimi						mimi	I am called Ja'far,	pron		ba		
745	70	72	b	1	نِنَ	nina	nina						-na	I have my teacher	have		ba		
726	68	70	d	1	نَ	na	na						na	and I am nine years old.	conj		ba		
2443	228	230	d	1	يٖؤٗ	yeo	yeo					In this case, \\Swa{yeo / leo}, \\E{today}, means \\q{now}.	-eo	now as I look at you?	adv		ba		
781	73	75	b	2	هَيَ	haya	haya						h-		dem		ba		
1408	129	131	a	4	مَتَمُ	matamu	matamu						-tamu		adj	final	ba		
842	78	80	d	1	هَيٗ	hayo	hayo						h-	with these [things] you have told me.	dem		ba		
757	71	73	b	1	نَ	na	na						na	I will get up early, 	conj		ba		
750	70	72	c	2	نَ	na	na						na		conj		ba		
787	73	75	d	1	نَ	na	na						na	and your relatives -- give them my best wishes."	conj		ba		
859	80	82	b	1	نَ	na	na						na	and what sort of situation will you be in there,	conj		ba		
712	67	69	c	1	نَاءٖ	nae	nae		naye				na	And then [Ja'far] spoke	conj		ba		
790	74	76	a	1	نَاءٖ	nae	nae		naye				na	And [Ja'far], the noble child,	conj		ba		
673	63	65	c	2	لَكٗ	lako	lako						-ako		poss		ba		
738	69	71	c	2	زٖٹُ	zeţu	zetu						-etu		poss		ba		
763	71	73	d	1	بَبَ	baba	baba						baba	I will arrive with you, father.	noun		ba		
705	66	68	d	1	مْوِلِنِ	mwilini	mwilini						-ili	to inflict injuries on my body.	noun		ba		
768	72	74	b	2	نْدِيَ	ndiya	ndiya		ndia				-jia	When you come to the fork in the road,	noun		ba		
687	65	67	a	2	مْٹُ	mţu	mtu						-tu		noun		ba		
698	66	68	a	3	پٖٹٖ	peţe	pete						-pet-		noun		ba		
867	80	82	d	1	نْدِيٖ	ndiye	ndiye						ni	always in the front line?"	focus		ba		
758	71	73	b	2	مَپِمَ	mapima	mapima		mapema				-ema		adv		ba		
948	88	90	a	1	إٖوٖ	ewe	ewe					= \\Swa{wewe}.	wewe	Don't worry, mother --	pron		ba		
821	76	78	d	1	مْنْڠُ	mngu	mngu		Mngu				-ngu	commended him to God's care.	godn		ba		
875	81	83	b	3	نِ	ni	ni						ni		exist		ba		
856	80	82	a	1	سِ	si	si						si	It is not easy to go there,	exist		ba		
810	75	77	d	1	هَؤٗ	hao	hao						-ao	I have heard of them.	poss		ba		
833	77	79	d	1	كْوَءٗ	kwao	kwao						-ao	before going home.	poss		ba		
852	79	81	c	3	هُكٗ	huko	huko						h-		dem		ba		
813	76	78	a	2	هَپٗ	hapo	hapo						h-		dem		ba		
808	75	77	c	2	نَ	na	na						na		conj		ba		
818	76	78	c	1	نَ	na	na						na	and Ali the Lion-like	conj		ba		
846	79	81	b	1	نَ	na	na						na	and and very anxious.	conj		ba		
851	79	81	c	2	نَ	na	na						na		conj		ba		
870	81	83	a	1	نَ	na	na						na	Yet I don't intend to oppose you,	conj		ba		
890	82	84	d	1	كْوَكٖ	kwake	kwake						-ake	"I have not yet gone home.	poss		ba		
881	81	83	d	1	نَ	na	na						na	and I give you [even] more [than that].	conj		ba		
918	85	87	b	3	نَ	na	na						na		conj		ba		
1729	158	160	c	3	مَنٖنٗ	maneno	maneno						-nen-		noun	final	ba		
686	65	67	a	1	وٖوٖ	wewe	wewe						wewe	When you see someone,	pron		ba		
1572	144	146	d	2	وٖوٖ	wewe	wewe						wewe		pron		ba		
1708	156	158	d	2	نَ	na	na						na		conj		ba		
824	77	79	a	2	كُنْڠِيَ	kungiya	kungiya		kungia				-ingi-		verb		ba	ku	
644	61	63	a	1	كَمُؤُزَ	kamuuza	kamuuza						-uz-	[Ali] asked him: What are you saying?	verb		ba	ka	
650	61	63	c	1	كَمْبَ	kamba	kamba						-amb-	[Jaafar] said: He is the ring on my finger.	verb		ba	ka	
914	85	87	a	2	كَوٖكَ	kaweka	kaweka						-wek-		verb		ba	ka	
707	67	69	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia				-amb-	[Ali] told him [who] his mother [was]:	verb		ba	ka	
692	65	67	c	1	هُجِؤٗنَ	hujiona	hujiona						-on-	You see yourself as a warrior,	verb		ba	hu	
703	66	68	c	1	هُنْڠَلِوٖزَ	hungaliweza	hungaliweza						-wez-	you would not have been able 	verb		ba	hu	
659	62	64	b	1	كِسٗمَ	kisoma	kisoma						-som-	and read his name [on it],	verb		ba	ki	
718	68	70	a	1	كِمْوَمْبِيَ	kimwambiya	kimwambiya		kimwambia				-amb-	He spoke, saying:	verb		ba	ki	
927	86	88	b	1	وَٹُؤٗنٖشَ	waţuonesha	watuonesha		watuonyesha				-on-	are you being insolent to us,	verb		ba	a	
375	34	36	c	1	أُسِمْنْڠٗجٖ	usimngoje	usimngoje						-ngoj-	that you couldn't wait for him at home,	verb		ba	subj	y
270	23	25	d	1	أُنِپَپٗ	unipapo	unipapo						-p-	[Only] when you give [it to me] will I be satisfied.	verb		ba	a	
700	66	68	b	1	إِنُكَ	inuka	inuka						-inu-	and get up, father --	verb		ba	imp	
826	77	79	b	1	كٖنْدَ	kenda	kenda						-end-	he went to his teacher's house,	verb		ba	ka	
874	81	83	b	2	نَيُوَ	nayuwa	nayuwa						-ju-		verb		ba	a	
696	66	68	a	1	كْوَنْزَ	kwanza	kwanza						-anz-	First, give me back my ring,	verb		ba	ku	
1031	95	97	c	2	أُسِمٖمٖ	usimeme	usimeme						-simam-		verb		ba	past	
1041	96	98	c	2	لُغَ	lugha	lugha						l-gh-a		noun		ar		
3089	290	292	d	1	أَكَتَمْكَ	akatamka	akatamka						-tamk-	and Ali spoke.	verb		ba	ka	
320	29	31	a	2	يَا	yā	ya						y-a		excl		ar		
3149	296	298	c	1	پِجَ	pija	pija						-pig-	take three sips,	verb		ba	imp	
861	80	82	b	3	أُ	u	u						wewe		pron		ba		
968	89	91	d	2	نِ	ni	ni						ni		exist		ba		
899	83	85	d	1	نَاءٖ	nae	nae		naye				na	that she will tell you.	conj		ba		
936	87	89	a	2	نِ	ni	ni						ni		exist		ba		
904	84	86	b	1	هَپٗ	hapo	hapo						h-	[Ja'far] then continued on his way.	dem		ba		
939	87	89	b	1	پَپٗ	papo	papo						h-	and at that moment he spoke up:	dem		ba		
877	81	83	c	1	نِ	ni	ni						ni	you have my consent a hundred thousand times,	exist		ba		
251	22	24	b	1	نِ	ni	ni						ni	you are my only wife.	exist		ba		
3106	292	294	b	2	كُئِفُنْڠُوَ	kuifunguwa	kuifunguwa		kuifungua				-fung-		verb	final	ba	ku	
944	87	89	c	3	مَتٗ	mato	mato						-cho		noun		ba		
937	87	89	a	3	نْدُڠُ	ndugu	ndugu						-dugu		noun		ba		
905	84	86	b	2	نْدِيَ	ndiya	ndiya						-jia		noun		ba		
907	84	86	c	1	مٗيٗ	moyo	moyo						-oyo	His heart was heavy	noun		ba		
917	85	87	b	2	أُپٗلٖ	upole	upole						-pole		noun		ba		
933	86	88	d	1	مْٹُ	mţu	mtu						-tu	[like] a person who has run away [and is trying to hide]?	noun		ba		
1111	103	105	b	2	زَكٖ	zake	zake						-ake		poss		ba		
999	92	94	c	2	نِ	ni	ni						ni		exist		ba		
1045	96	98	d	3	نِ	ni	ni						ni		exist		ba		
987	91	93	c	3	مِيْ	mii	mii		mi				mimi		pron		ba		
1054	97	99	d	1	مِمِ	mimi	mimi						mimi	[even if] I myself tell you.	pron		ba		
1063	98	100	c	2	نِنَ	nina	nina						-na		have		ba		
1551	143	145	a	3	زَكٗ	zako	zako						-ako		poss	final	ba		
1012	94	96	a	1	هَپٗ	hapo	hapo						h-	Then his mother retorted:	dem		ba		
1027	95	97	b	1	هَيَ	haya	haya						h-	tell it to me, Ja'far.	dem		ba		
1132	104	106	d	2	هِزٗ	hizo	hizo						h-		dem		ba		
1145	105	107	d	1	هُنُ	hunu	hunu						h-	I have given you this one.	dem		ba		
1106	103	105	a	1	نَ	na	na						na	And let me tell you the second thing:	conj		ba		
1116	103	105	d	1	نَ	na	na						na	and if that is not so, tell me.	conj		ba		
1120	104	106	a	1	نَ	na	na						na	And know the third thing:	conj		ba		
1025	95	97	a	2	زَكٗ	zako	zako						-ako		poss		ba		
1159	107	109	a	2	ٹَنْڠُ	ţangu	tangu						tangu		adv		ba		
1044	96	98	d	2	إِوٖ	iwe	iwe					Ja'far is angry that his mother hid the truth about his father from him.	wewe	so that it will be new to you?	pron		ba		
1149	106	108	b	1	نِ	ni	ni						ni	are indeed exactly correct.	exist		ba		
1139	105	107	b	2	نِ	ni	ni						ni		exist		ba		
1131	104	106	d	1	نِ	ni	ni						ni	it consists of these things that I have told you.	exist		ba		
1134	105	107	a	1	نِ	ni	ni						ni	He is courteous of speech,	exist		ba		
3119	293	295	d	2	كُنِنْڠِيَ	kuningiya	kuningiya						-ingi-		verb	final	ba	ku	
3122	294	296	b	1	أَكَمْپَ	akampa	akampa						-p-	and gave her sweet water --	verb		ba	ka	
3087	290	292	c	2	كَشُكَ	kashuka	kashuka		kachoka	*			-shuk-		verb		ba	ka	
3028	285	287	a	3	كَتٗكَ	katoka	katoka						-to-		verb	final	ba	ka	
972	90	92	a	1	كَئِنُكَ	kainuka	kainuka						-inu-	Ja'far got up	verb		ba	ka	
3220	303	305	c	1	أَكَئِنُكَ	akainuka	akainuka						-inu-	She rose from her chair,	verb		ba	ka	
3188	300	302	d	1	وَكَلَ	wakala	wakala						-l-	and they all ate together.	verb		ba	ka	
3076	289	291	c	2	هُتٗكٗسَ	hutokosa	hutokosa					If you \\Swa{subiri}, you will receive a reward from God: \\Swa{hutakosa maneno kwa Mungu}, \\E{you will not fail [to receive] comfort from God}.	-tokot-		verb		ba	hu	
3115	293	295	c	1	هَنْدَ	handa	handa					Amu for \\Swa{naanza}.	-anz-	I am beginning now to realise	verb		ba	hu	
1097	102	104	b	1	كِوَ	kiwa	kiwa						-w-	if it is not him, correct me --	verb		ba	ki	
3013	283	285	c	2	هُكُؤُلِزَ	hukuuliza	hukuuliza						-uz-		verb	final	ba	hu	
3139	295	297	d	2	يَتَكَ	yataka	yataka						-tak-		verb		ba	a	
962	89	91	b	1	مٖوَتَنْڠَ	mewatanga	mewatanga					\\Swa{-tanga}, \\E{scatter, spread out}.	-tang-	they went off and he couldn't find them.	verb		ba	me	
1153	106	108	c	1	نِپَ	nipa	nipa						-p-	Tell me how it was	verb		ba	imp	
3321	307	315	b	2	سٗمَنِ	somani	somani						-som-		verb		ba	imp	
480	45	47	a	1	بَسِ	basi	basi						b-s	Indeed, what I had foreseen	conj		ar		
589	55	57	d	1	نْڠٗٹَ	ngoţa	ngota						???	I'll teach him a lesson."	unk		u		
525	49	51	c	1	نَاءٖ	nae	nae		naye				na	 [Although] he had [earlier] covered it,	conj		ba		
1121	104	106	a	2	يَ	ya	ya						-a		ref		ba		
1104	102	104	d	2	چَنْڠُ	changu	changu						-angu		noun		ba		
1263	116	118	b	3	نْدُڠُ	ndugu	ndugu						-dugu		noun		ba		
3098	291	293	c	2	هَكُيَ	hakuya	hakuya						-j-		verb		ba	li	y
1143	105	107	c	2	أُكِتَكَ	ukitaka	ukitaka						-tak-		verb		ba	ki	
854	79	81	d	1	سِوٖزِ	siwezi	siwezi						-wez-	I cannot keep you back from it.	verb		ba	a	y
1110	103	105	b	1	نْيٖيْ	nyee	nyee						-nywele	the hair on his head	noun		ba		
1030	95	97	c	1	أُسٗ	uso	uso						-so	Your face is flushed,	noun		ba		
1197	110	112	a	2	وَكٗ	wako	wako						-ako		poss		ba		
1228	113	115	a	2	هِلِ	hili	hili						h-		dem		ba		
1218	112	114	b	1	هِكِ	hiki	hiki						h-	This is high noon --	dem		ba		
1222	112	114	c	1	هٖلَ	hela	hela					Amu \\Swa{hela} = Mvita \\Swa{hebu}.  Ja'far's invitation to the three men is not as polite as it might be, which partly accounts for their response.	hela	why don't you come and sit down	conj		ba		
1170	107	109	d	2	نَ	na	na						na		conj		ba		
1173	108	110	a	2	يَنْڠُ	yangu	yangu						-angu		poss		ba		
1227	113	115	a	1	نَ	na	na						na	You should know that this [sun] is not good [for you] --	conj		ba		
1179	108	110	c	2	هَپَنَ	hapana	hapana						-na		have		ba		
1205	111	113	a	1	پَنَ	pana	pana						-na	Waiting (?) there in the shade	have		ba		
1233	113	115	b	2	نِ	ni	ni						ni		exist		ba		
1219	112	114	b	2	نِ	ni	ni						ni		exist		ba		
1181	108	110	d	1	نِ	ni	ni						ni	[and I thought] I'd better come back.	exist		ba		
1167	107	109	c	3	نِ	ni	ni						ni		exist		ba		
1237	113	115	c	3	سِ	si	si						si		exist		ba		
1193	109	111	d	1	وَٹَٹُ	waţaţu	watatu						-tatu	three of them, coming along the road.	num		ba		
1151	106	108	b	3	نْدِيٗ	ndiyo	ndiyo						ni		focus		ba		
1191	109	111	c	2	وَٹُ	waţu	watu						-tu		noun		ba		
1125	104	106	b	2	ٹُنْدُ	ţundu	tundu						-tundu		noun		ba		
1206	111	113	a	2	كِڤُلِ	kivuli	kivuli						-vuli		noun		ba		
1162	107	109	b	2	چَكَ	chaka	chaka					\\Swa{chaka} < \\Swa{-waka}, \\E{burn}.	-wak-		noun		ba		
1313	120	122	d	2	وَكٖ	wake	wake						-ake		poss		ba		
1283	118	120	b	1	نِ	ni	ni						ni	[My religion] is the religion of the Prophet ---	exist		ba		
1285	118	120	b	3	يَكٖ	yake	yake						-ake		poss		ba		
288	25	27	c	3	مَتَمْكٗ	matamko	matamko						-tamk-		noun	final	ba		
1736	159	161	b	3	كْوَ	kwa	kwa						-a		ref		ba		
1292	118	120	d	2	زَنْڠُ	zangu	zangu						-angu		poss		ba		
1291	118	120	d	1	مْبٖلٖ	mbele	mbele						-bele	go away from in front of me.	adv		ba		
1258	116	118	a	1	سِسِ	sisi	sisi						sisi	We will not take your [advice] --	pron		ba		
1288	118	120	c	2	وٖوٖ	wewe	wewe						wewe		pron		ba		
1252	115	117	b	2	نْدِوٖ	ndiwe	ndiwe						ni		focus		ba		
1303	119	121	d	1	وٗتٖ	wote	wote						-ote	And both of them came over.	qual		ba		
1190	109	111	c	1	كُؤٗنَ	kuona	kuona		kaona	*			-on-	I saw some people,	verb		ba	ku	
1232	113	115	b	1	كُلَنْدَمَ	kulandama	kulandama					\\Swa{-andama} = \\Swa{-fuata}.  See 34d.	-andam-	to go about in it [for long] is dangerous,	verb		ba	ku	
1088	101	103	b	1	ٹُمٖؤٗنَنَ	ţumeonana	tumeonana						-on-	We met in the forest --	verb		ba	me	
1175	108	110	b	1	نِمٖتَنْڠَ	nimetanga	nimetanga						-tang-	I wandered around in the hinterland,	verb		ba	me	
1199	110	112	b	1	كَنٖنَ	kanena	kanena					Note that \\Swa{-nena}, \\E{speak, say}, here means \\q{intend}.	-nen-	and I said to myself that I should wait --	verb		ba	ka	
1196	110	112	a	1	كَوَءٗنَ	kawaona	kawaona						-on-	I saw them when they were far off,	verb		ba	ka	
1084	100	102	d	1	أُكَمُؤٗنَ	ukamuona	ukamuona						-on-	that you saw Ali?"	verb		ba	ka	
208	20	20	c	2	أَكَشُٹُكَ	akashuţuka	akashutuka						-shitu-		verb	final	ba	ka	
822	76	78	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya					lit. \\q{interceded for him to God}.  If a parent is punishing a child, and a neighbour is present, the neighbour may plead for the child by saying, \\Swa{namuombea, namuombea}, \\E{I ask mercy for him, I intercede for him}.  If the child is let off lightly, the neighbour will warn the child not to be naughty again, because he will not plead for him a second time.	-omb-		verb	final	ba	ka	
1416	129	131	d	2	هُچٖلٖيَ	hucheleya	hucheleya					\\Swa{tunaogopa}.  Because they are not sure how Ali will react to someone else using the well.	-ele-		verb	final	ba	hu	
1255	115	117	c	2	وَٹُتَكِيَنِ	waţutakiyani	watutakiyani		watutakia-ni				-tak-		verb	final	ba	a	
1223	112	114	c	2	نْدٗنِ	ndoni	ndoni		ndooni				-j-		verb		ba	imp	
1184	109	111	a	1	هٖنْدَ	henda	henda						-end-	As I went along, pondering in my heart	verb		ba	ki	
1185	109	111	a	2	هِوَزَ	hiwaza	hiwaza						-waz-		verb		ba	ki	
1187	109	111	b	1	نٖنٖنْدٖ	nenende	nenende		ninende	*			-end-	which direction I should take,	verb		ba	subj	
1055	97	99	d	2	مْوٖنْيٖوٖ	mwenyewe	mwenyewe						-enye		noun		ba		
422	39	41	b	3	مُمٖ	mume	mume						-ume		noun		ba		
2189	203	205	b	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
2158	200	202	c	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
1883	174	176	a	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
1565	144	146	b	1	نِزٖزٗوٖءٗ	nizezoweo	nizezoweo		nizeweo	*		= \\Swa{nilizozaliwa}.	-za-	since I was born -- definitely	verb		ba	past	
477	44	46	c	3	وَلِدِ	walidi	walidi						w-l-d		noun	final	ar		
2329	217	219	c	3	نٖنْدَكٗ	nendako	nendako						-end-		verb	final	ba	a	
1040	96	98	c	1	نِكْوَمْبِيٖ	nikwambiye	nikwambiye		nikwambie				-amb-	In what language should I tell you,	verb		ba	subj	
2083	193	195	c	2	وٖنْدَنِ	wendani	wendani					\\Swa{wendani} can also cover friends as well as relatives.	-end-		noun		ba		
1934	179	181	b	1	وَمُيُوَپِ	wamuyuwapi	wamuyuwapi		wamuyua-pi				-ju-	How do you know the Prophet?	verb		ba	a	
1037	96	98	b	1	وَتَكَ	wataka	wataka						-tak-	What news do you want?	verb		ba	a	
1082	100	102	c	1	وٖنْدٖلٖپِ	wendelepi	wendelepi		wendele-pi				-end-	where did you go among people,	verb		ba	past	
1052	97	99	c	2	نَؤٗنَ	naona	naona						-on-		verb		ba	a	
1140	105	107	b	3	جَڠِنَ	jagina	jagina					See 117c.	jagina		noun		ba		
823	77	79	a	1	مُئِنِ	muini	muini						-ji	When [Ja'far] entered his village	noun		ba		
1912	177	179	a	1	مْكٗنٗ	mkono	mkono						-kono	Zubayr saw the wave	noun		ba		
1899	175	177	c	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
1320	121	123	c	1	مَمَ	mama	mama					\\Swa{mama!} is an expression of disbelief.	mama	Impossible!, they [said] in amazement,	noun		ba		
1049	97	99	b	1	نَيُوَ	nayuwa	nayuwa						-ju-	I know you will answer:	verb		ba	a	
3129	294	296	d	2	أَلِيَسٗمٖيَ	aliyasomeya	aliyasomeya					This is anachronistic, in that this would not have been done at the time the story is supposed to take place.  The reference is to the practice of reading the Qur'an and then breathing into the water -- the efficacy of the verses is piously considered to transfer into the water.	-som-		verb	final	ba	li	
1008	93	95	c	1	يَمٖكُپَٹَ	yamekupaţa	yamekupata						-pat-	[Nasir said:] "It was right on the mark, my friend,	verb		ba	me	
245	21	23	c	5	پِلِ	pili	pili						-wili		num	final	ba		
2136	198	200	c	1	يَلِنِتٗكَ	yalinitoka	yalinitoka						-to-	but they left my mind,	verb		ba	li	
2783	261	263	b	3	أُنَنِ	unani	unani		una-ni			= \\Swa{una nini?}.  See 305b, 311a.	-na		have	final	ba		
1905	176	178	b	1	أَكَمُؤٗنَ	akamuona	akamuona						-on-	and saw Zubayr --	verb		ba	ka	
896	83	85	b	2	مَمَكٗ	mamako	mamako					The teacher is reminding Ja'far of his duty to his mother -- he must also get her consent.	mama		noun	final	ba		
915	85	87	a	3	كِبُ	kibu	kibu					\\Swa{fimbo ya mbuzi} (?)	kibu		noun	final	ba		
953	88	90	b	3	يَكٖ	yake	yake					Nasir teases Ja'far, saying that he knows why Ja'far is quiet: (1) he lost two of the goats he was herding (140d), which would be a shameful thing, and (2) he is not strong enough to put up with the midday heat (141d).	-ake		poss	final	ba		
1705	156	158	c	3	نَ	na	na						na		conj		ba		
1700	156	158	b	2	نَاءٖ	nae	nae		naye				na		conj		ba		
1512	139	141	a	2	أَكَنِشِكَ	akanishika	akanishika					What happens next has already been described in 108 ff.	-shik-		verb	final	ba	ka	
1095	102	104	a	1	نِسِكِزَ	nisikiza	nisikiza						-siki-	Listen to me, let me speak --	verb		ba	imp	
1070	99	101	b	1	أُتَڠٖؤُزَ	utageuza	utageuza						-geu-	you will change to other [words] --	verb		ba	ta	
1299	119	121	c	1	نْدٗوْ	ndoo	ndoo						-j-	come here, and you Zubayr!	verb		ba	imp	
1028	95	97	b	2	نِپَ	nipa	nipa						-p-		verb		ba	imp	
780	73	75	b	1	بَسِ	basi	basi						b-s	So, now, off you go,	conj		ar		
812	76	78	a	1	بَسِ	basi	basi						b-s	So then Ja'far	conj		ar		
807	75	77	c	1	سُزَاءٗ	suzao	suzao						???	both close and extended family --	unk		u		
3241	305	307	c	1	سَسَ	sasa	sasa						sasa	[Atika] is like a sister to me -- 	adv		ba		
3045	287	289	a	1	مِمِ	mimi	mimi						mimi	[Atika said:] I am his mother!	pron		ba		
3017	284	286	a	1	يٖيٖ	yeye	yeye						yeye	[Atika] was at the door,	pron		ba		
3086	290	292	c	1	هَپٗ	hapo	hapo						h-	Then Atika stopped [crying]	dem		ba		
443	41	43	b	2	نِ	ni	ni						ni		exist		ba		
68	7	7	a	2	كِزٖيْ	kizee	kizee					This old woman is likely a devil in disguise, whose aim is to stir up enmity between Fatima and Ali.  Fatima realises this later (44).  This devil reappears in a different disguise in an extended episode in R (45-93), where he tries to get the better of Ali.	-za-		noun	final	ba		
693	65	67	c	2	أُجَڠِنَ	ujagina	ujagina					According to Sacleux, \\Swa{ujagina} comes from a Galla word meaning \\q{brave, courageous}.  It is said that \\Swa{Ali sifa yake ni shujaa}, \\E{Ali is famed as a warrior}, and Ja'far inherits this martial attribute, as his spirited fighting shows.  Ali was a short man, but very strong.  It is said that once he plunged his sword into the ground and challenged others to pull it out, but it was buried so deep that no-one could.  Again, it is said that once when Ali was praying in the mosque his friends jokingly took his sandals (which in accordance with ritual he had of course removed before entering the mosque) and placed them on top of the lintel, where Ali, being short, could not reach them.  As a retort, Ali took their sandals, grabbed hold of the mosque wall, lifted it up, put the sandals under the wall, and set it down again.  Other important Muslims have their own attributes -- Uthman, for instance, was known for his shyness, Hamza for his happy (even boisterous) disposition, and so on.	jagina		noun	final	ba		
2277	211	213	d	4	نْدِيَ	ndiya	ndiya					i.e. \\Swa{taabu ya ndiani}.	-jia		noun	final	ba		
1195	109	111	d	3	نْدِيَ	ndiya	ndiya					The three of them were walking along \\Swa{moja kwa moja} in Indian file - see the note to 35d.	-jia		noun	final	ba		
681	64	66	b	2	سِكُكُفَهَمُ	sikukufahamu	sikukufahamu						f-h-m		verb	final	ar	li	y
1802	166	168	a	3	سِكُوَكٗ	sikuwako	sikuwako						-w-		verb	final	ba	li	y
3038	286	288	b	1	سٖنْدٖلٖيْ	sendelee	sendelee					i.e. \\Swa{usifanye sana}.  If you get carried away by grief, you may say something that is \\Swa{kufru}, i.e. something an unbeliever might say.  So a wife at the death of her husband may say that he was her lion, or her pillar in the world, or tht she depended on him, and she will be told: don't say that, or you will become a \\Swa{kafiri}.  On the contrary, you have to be loyal to God even in a time of grief, and endure whatever he sends you.  Debate on the \\q{problem of evil} (why does a good God allow bad things to happen) is unknown in Islam -- God knows best, and we cannot begin to fathom His motives.	-end-	don't go on so -- submit to God's will,	verb		ba	imp	y
1077	100	102	a	2	هُيَوَ	huyawa	huyawa					< \\Swa{kuwa}.	-w-		verb		ba	me	y
1093	101	103	d	1	أُكِتَكَ	ukitaka	ukitaka						-tak-	if you want it, I will tell you.	verb		ba	ki	
1505	138	140	b	2	كِسِمَ	kisima	kisima					i.e. the well has been covered over again, in spite of Ja'far uncovering it the day before (184d) and telling Abu Bakr that there was no point in covering it (185c).  The reason, of course, as we know from Ali's account earlier, is that he came to check on the well, and covered it (103b) when he found it uncovered.	-sima		noun	final	ba		
2135	198	200	b	3	نْدِيَنِ	ndiyani	ndiyani		ndiani			These points were presumably part of the directions that Ali gave Ja'far in 124.	-jia		noun	final	ba		
1709	156	158	d	3	كُمْوَنْڠُكِيَ	kumwangukiya	kumwangukiya					\\Swa{-angukia}, \\E{fall down before, prostrate oneself before}, = \\Swa{-sujudia}, i.e. submit.  This would normally be humiliating (the only time you prostrate yourself should be before God), but Ja'far's mother is impressing on him the need for humility.	-angu-		verb	final	ba	ku	
777	72	74	d	2	كُپٗتٖيَ	kupoteya	kupoteya					Ali gives more directions than the ones here (see 266a/b), but in the event Ja'far forgets them all and almost gets lost in the scrubland (see 268-9).	-pote-		verb	final	ba	ku	
2207	204	206	d	2	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya						-amb-		verb	final	ba	me	
2213	205	207	c	2	أُمٖسُمْبُكَ	umesumbuka	umesumbuka					\\Swa{umepata taabu}.	-sumb-		verb	final	ba	me	
2261	210	212	a	3	أَلِپٗفِكَ	alipofika	alipofika						-fik-		verb	final	ba	li	
2280	212	214	a	3	أَلِزٗتٗكَ	alizotoka	alizotoka						-to-		verb	final	ba	li	
2209	205	207	a	2	كُپُلِكَ	kupulika	kupulika					\\Swa{-pulika} = \\Swa{-sikiza}, \\E{listen carefully}.	-pulik-		verb	final	ba	ku	
2211	205	207	b	2	أَكَتَمْكَ	akatamka	akatamka						-tamk-		verb	final	ba	ka	
2271	211	213	b	2	أَكَتَمْكَ	akatamka	akatamka					It looks as if Ali is trying to postpone the point at which Fatima will hear that Ja'far is his son, but in fact the Prophet has already told her this (255), so Ali may be more concerned about whether Fatima will see her ring on Ja'far's finger as she serves the food.  This happens in 296, and upsets Fatima.	-tamk-		verb	final	ba	ka	
2319	216	218	c	2	وَكَسِمَ	wakasima	wakasima		wakasema	*			-sim-		verb	final	ba	ka	
2285	212	214	c	3	هُمْپُلِكَ	humpulika	humpulika						-pulik-		verb	final	ba	hu	
2511	235	237	c	2	وَمْتَكِيَنِ	wamtakiyani	wamtakiyani		wamtakia-ni			\\Swa{-m-} here = \\Swa{-ni-}. i.e. it is no-one else's business. See also 112a and 155a (R).	-tak-		verb	final	ba	a	
2225	206	208	c	2	مٖزٗإِيَنْدَمَ	mezoiyandama	mezoiyandama		mezoiandama				-andam-		verb	final	ba	me	
1828	168	170	d	2	نَلٗكْوَمْبِيَ	nalokwambiya	nalokwambiya					Referring to their earlier conversation in 227-8.  \\Swa{amkumbusha, umesahau ...}, \\E{he reminds him, you have forgotten ...}.  He says something like: \\q{You said you wanted a horse -- how can I get one if I don't go?}	-amb-		verb	final	ba	li	
2315	216	218	a	3	كْوِمَ	kwima	kwima						-im-		verb	final	ba	ku	
1215	112	114	a	1	كَمْبَ	kamba	kamba						-amb-	I said: Where are you going in such a hurry?	verb		ba	ka	
1009	93	95	c	2	مْوٖنْدَنِ	mwendani	mwendani						-end-		noun	final	ba		
605	57	59	b	3	سِنَنِ	sinani	sinani		sina-ni			\\Swa{sina-ni} emphasises the negative -- a person accused of theft may say \\Swa{sikuiba sina-ni}, \\E{I didn't do any stealing at all}. It may be shortened to \\Swa{sini}.  Thus the poem: \\Swa{kidege na uliwani? / silicha mtu sina-ni}.  The story is told of a witty tailor from Takaungu.  A group of people had dropped into his shop for a chat, and after a while the tailor got up and went out to answer nature's call to urinate.  He came back very quickly, which made some of the men there ask him jokingly why he had been so fast.  He replied: \\Swa{sina kisonono sini!}, \\E{I don't have gonorrhea at all!}, which was greeted with laughter.  The men then said that even if this were the case, he should still have taken longer, since it takes some time to wash (\\Swa{kutama}) after going to the toilet.  The tailor replied, \\Swa{siṣali sini!}, \\E{I'm not doing any praying!}.  This made everyone collapse with laughter -- people may not pray, but they certainly would not tell other people that.	-na		have	final	ba		
2267	210	212	d	2	كْوَنْدِكِوَ	kwandikiwa	kwandikiwa						-andik-		verb	final	ba	ku	
2831	266	268	b	2	أَكَمُوٖكَ	akamuweka	akamuweka					i.e. in a chair.	-wek-		verb	final	ba	ka	
2232	207	209	c	1	كْوَنِ	kwani	kwani						nini	for they would have overwhelmed him -- 	conj		ba		
1018	94	96	c	2	وٖوٖ	wewe	wewe						wewe		pron		ba		
2480	232	234	b	2	نِنِ	nini	nini						nini		int	final	ba		
2382	222	224	c	4	تَنٗ	tano	tano		~				-tano		num	final	ba		
2096	194	196	c	4	نْيُمَ	nyuma	nyuma						nyuma		adv	final	ba		
2187	203	205	a	3	نْيُمَ	nyuma	nyuma						nyuma		adv	final	ba		
1696	156	158	a	1	نَاءٖ	nae	nae		naye				na	And as for the daughter of the Beloved One,	conj		ba		
1011	93	95	d	2	نِمٖزٗكْوَمْبِيَ	nimezokwambiya	nimezokwambiya		nimezokwambia			Nasir says that his words have affected Ja'far, so there must have been some truth in them.  But the mother stops his teasing this time.	-amb-		verb	final	ba	me	
934	86	88	d	2	أَمٖزٗكِمْبِيَ	amezokimbiya	amezokimbiya					\\Swa{anajifita}, \\E{he is hiding himself}.	-kimb-		verb	final	ba	me	
2265	210	212	c	2	نِمٖكِپِكَ	nimekipika	nimekipika						-pik-		verb	final	ba	me	
2056	190	192	d	3	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya					i.e. I have told you the real cause.  He tells the whole story in case Ali gets worried that there has been a crisis at home.  Compare 13.	-amb-		verb	final	ba	me	
2869	270	272	a	3	كُتٗوَ	kutowa	kutowa		kutua	*			-tu-		verb	final	ba	ku	
1455	133	135	d	2	كُكْوَمْبِيَ	kukwambiya	kukwambiya		nakwambiya	*		Presumably Ja'far means that now he has found this well he will come back each day with his goats, so there is no point covering the well. 	-amb-		verb	final	ba	ku	
1585	145	147	d	2	كُمْوَمْبِيَ	kumwambiya	kumwambiya						-amb-		verb	final	ba	ku	
1749	160	162	c	3	سِمُئِسِ	simuisi	simuisi					\\Swa{-isa}, \\E{not know}, is only used in the negative.	-is-		verb	final	ba	a	y
963	89	91	b	2	هَوَؤٗنِ	hawaoni	hawaoni						-on-		verb	final	ba	a	y
1820	167	169	d	3	كُنَمْبِيَ	kunambiya	kunambiya						-amb-		verb	final	ba	ku	
1047	97	99	a	1	كِكْوَمْبِيَ	kikwambiya	kikwambiya		kikwambia				-amb-	If I tell you in Arabic	verb		ba	ki	
2024	187	189	d	3	هُكْوَمْبِيَ	hukwambiya	hukwambiya					In the Mombasa expression, \\Swa{umejizaa mwenyewe}, \\E{he's the spitting image of you}.	-amb-		verb	final	ba	hu	
1158	107	109	a	1	تَكُپَ	takupa	takupa						-p-	[Jaafar said:] "I will give you [the whole story] from the beginning.	verb		ba	ta	
941	87	89	b	3	أَتَمْكٖ	atamke	atamke						-tamk-		verb	final	ba	past	
2759	258	260	d	2	نَمْكُلِيَ	namkuliya	namkuliya					lit. \\q{call my father for me}.	-amku-		verb	final	ba	a	
2838	267	269	b	1	صُبِرِ	ṣubiri	subiri					The Prophet tells Ali thing like: \\q{You have to endure whatever God sends you.  If someone wanted to take your child, you would not just stand there and look at him, but what else can you do in this case?}	sw-b-r	Have trust in Him, your Lord --	verb		ar	imp	
3141	296	298	a	1	صُبِرِ	ṣubiri	subiri						sw-b-r	[Fatima replied:] Trust in our Lord,	verb		ar	imp	
147	15	15	a	2	أَكَئِنُكَ	akainuka	akainuka						-inu-		verb	final	ba	ka	
2920	274	276	c	3	يَكٖ	yake	yake					Usually if a mother is going somewhere and she has a small child she will take the child with her, but in this case Atika is  so distraught that she rushes out immediately, forgetting about Nasir.	-ake		poss	final	ba		
565	53	55	b	3	نْيُمَ	nyuma	nyuma						nyuma		adv	final	ba		
1537	141	143	c	3	نْيُمَ	nyuma	nyuma					\\Swa{yale mambo yaliyopita zamani}.	nyuma		adv	final	ba		
1600	147	149	a	3	مْنْڠُ	mngu	mngu		Mngu				-ngu		godn	final	ba		
2492	233	235	c	3	مْڠٖنِ	mgeni	mgeni						-geni		noun	final	ba		
2500	234	236	b	3	مُئِنِ	muini	muini					Hasan is annoyed because someone is spreading gossip about the fact that Ali has a hitherto-unknown son.  To avoid confirming the rumours he does a typically Swahili thing -- if someone asks you if such-and-such a rumour is true, you say: \\q{The one who told you is the one who knows -- go back and ask him}.	-ji		noun	final	ba		
2693	252	254	a	2	مُئِنِ	muini	muini						-ji		noun	final	ba		
3074	289	291	b	3	مْنْڠُ	mngu	mngu		Mngu				-ngu		godn	final	ba		
3199	301	303	c	3	مُئِنِ	muini	muini						-ji		noun	final	ba		
3237	305	307	a	3	مْنْڠُ	mngu	mngu		Mngu				-ngu		godn	final	ba		
287	25	27	c	2	هَيَ	haya	haya						h-		dem		ba		
41	4	4	c	3	چَنْدَنِ	chandani	chandani						-anda		noun	final	ba		
93	9	9	c	4	چَنْدَنِ	chandani	chandani						-anda		noun	final	ba		
225	22	22	a	4	چَنْدَنِ	chandani	chandani						-anda		noun	final	ba		
269	23	25	c	3	نَنِ	nani	nani						nani		int	final	ba		
389	36	38	a	3	هَيٗ	hayo	hayo						h-		dem	final	ba		
398	37	39	a	2	مْوَنَنْڠُ	mwanangu	mwanangu						-ana		noun	final	ba		
2515	236	238	a	2	بَبَكٖ	babake	babake						baba		noun	final	ba		
1726	158	160	b	3	مفَنٗ	mfano	mfano						-fan-		noun	final	ba		
1981	183	185	b	4	وَوِلِ	wawili	wawili						-wili		num	final	ba		
2112	196	198	b	2	نْدِيَنِ	ndiyani	ndiyani		ndiani				-jia		noun	final	ba		
2125	197	199	c	4	مْبَلِ	mbali	mbali						-bali		adv	final	ba		
2145	199	201	b	3	مْبَلِ	mbali	mbali						-bali		adv	final	ba		
2376	222	224	a	3	مْفَنٗ	mfano	mfano					i.e. \\Swa{kwa sawasawa}.	-fan-		noun	final	ba		
2717	254	256	c	3	وَوِلِ	wawili	wawili						-wili		num	final	ba		
2861	269	271	b	3	مْفَنٗ	mfano	mfano						-fan-		noun	final	ba		
13	2	2	a	2	نْدُزَنْڠُ	nduzangu	nduzangu						-dugu		noun	final	ba		
16	2	2	b	3	يَنْڠُ	yangu	yangu						-angu		poss	final	ba		
19	2	2	c	3	زَنْڠُ	zangu	zangu						-angu		poss	final	ba		
2460	230	232	b	3	نْيُمْبَنِ	nyumbani	nyumbani						-umb-		noun	final	ba		
2487	233	235	a	3	نْدِيَنِ	ndiyani	ndiyani		ndiani				-jia		noun	final	ba		
2518	236	238	b	3	پْوٖكٖ	pweke	pweke						peke		adv	final	ba		
2551	239	241	c	3	نْيُمْبَنِ	nyumbani	nyumbani						-umb-		noun	final	ba		
2653	248	250	b	4	نْيُمْبَنِ	nyumbani	nyumbani						-umb-		noun	final	ba		
2691	251	253	d	3	مْمٗيَ	mmoya	mmoya						-moja		num	final	ba		
2724	255	257	b	3	نْيُمْبَنِ	nyumbani	nyumbani						-umb-		noun	final	ba		
2740	256	258	d	3	نْدِيَ	ndiya	ndiya		ndia				-jia		noun	final	ba		
54	5	5	c	4	وَكٖ	wake	wake						-ake		poss	final	ba		
99	10	10	a	4	كوٖلِ	kweli	kweli						kweli		noun	final	ba		
924	86	88	a	1	كَمْبَ	kamba	kamba						-amb-	She said: That's not [like] you, Ja'far --	verb		ba	ka	
1985	183	185	d	2	كَمْوَنْڠَلِيَ	kamwangaliya	kamwangaliya						-anga-		verb	final	ba	ka	
79	8	8	b	2	كَمْكَنُشَ	kamkanusha	kamkanusha						-kan-		verb	final	ba	ka	
81	8	8	c	2	كَمُؤٗنٖشَ	kamuonesha	kamuonesha		kamuonyesha				-on-		verb	final	ba	ka	
70	7	7	b	2	أَكَمْوَمْبِيٖ	akamwambiye	akamwambiye		akamwambie				-amb-		verb	final	ba	ka	
83	8	8	d	2	أَكَمْٹِيَ	akamţiya	akamtiya						-ti-		verb	final	ba	ka	
66	6	6	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
113	11	11	c	2	أَكَمْٹُمَ	akamţuma	akamtuma						-tum-		verb	final	ba	ka	
872	81	83	a	3	سِتَكِ	sitaki	sitaki					\\Swa{sitaki kushinda na wewe}.	-tak-		verb	final	ba	a	y
1007	93	95	b	2	هَنٖنِ	haneni	haneni						-nen-		verb	final	ba	a	y
1246	114	116	c	2	وَكَسِمَمَ	wakasimama	wakasimama						-simam-		verb	final	ba	ka	
73	7	7	c	3	أُوٗزٖيْ	uwozee	uwozee		uozee				-o-		verb	final	ba	past	
11	1	1	d	2	يَلٗأَنْدَمِيَ	yaloandamiya	yaloandamiya						-andam-		verb	final	ba	li	
3278	308	310	d	2	كِوَمْبِيَ	kiwambiya	kiwambiya						-amb-		verb	final	ba	ki	
56	5	5	d	2	هُمْفُمْبِيَ	humfumbiya	humfumbiya					i.e. to hide the fact that he was not wearing the ring.	-fumb-		verb	final	ba	hu	
115	11	11	d	2	نَمْكُلِيَ	namkuliya	namkuliya					N. \\Swa{-amkulia} = S. \\Swa{-itia}	-amku-		verb	final	ba	a	
799	74	76	d	1	أُچٖنْدَ	uchenda	uchenda						-end-	when you go [there], greet them for me.	verb		ba	ki	
1425	130	132	d	3	ٹٗلٗكْوَمْبِيَ	ţolokwambiya	tolokwambiya		tulokwambiya	*			-amb-		verb	final	ba	li	
1318	121	123	b	2	بِنْ	bin	bin		bini				b-n		noun		ar		
1165	107	109	c	1	كِتَنْڠَ	kitanga	kitanga						-tang-	and wandering around [looking for] water was difficult,	verb		ba	ki	
183	18	18	b	3	هُتٖكَ	huteka	huteka					This is a common expression meaning \\q{you were in a good mood}.	-chek-		verb	final	ba	hu	
134	13	13	d	2	إِكَمْنْڠِيَ	ikamngiya	ikamngiya						-ingi-		verb	final	ba	ka	
956	88	90	c	3	مْبُزِ	mbuzi	mbuzi						-buzi		noun		ba		
203	20	20	a	2	أَكَتَمْكَ	akatamka	akatamka						-tamk-		verb	final	ba	ka	
309	27	29	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
1136	105	107	a	3	وَ	wa	wa						-a		ref		ba		
198	19	19	c	3	مَتُنْڠُ	matungu	matungu						-chungu		noun	final	ba		
238	21	23	a	5	پِلِ	pili	pili						-wili		num	final	ba		
192	19	19	a	3	نْدُيَنْڠُ	nduyangu	nduyangu						-dugu		noun	final	ba		
195	19	19	b	3	يَنْڠُ	yangu	yangu						-angu		poss	final	ba		
229	22	22	b	4	كِفَنِ	kifani	kifani						-fan-		noun	final	ba		
250	22	24	a	3	نْدُيَنْڠُ	nduyangu	nduyangu						-dugu		noun	final	ba		
259	22	24	c	4	يَنْڠُ	yangu	yangu						-angu		poss	final	ba		
199	19	19	d	1	نَوٖ	nawe	nawe						na	so that you will stop crying?	conj		ba		
277	24	26	c	2	كِسِمَنِ	kisimani	kisimani					Another lie, again to gain some time, \\Swa{kamuulize Nabiya}, \\E{so that he can go and ask the Prophet}.  But Fatima does not fall for this one either.	-sima		noun	final	ba		
283	25	27	a	4	يَكٗ	yako	yako						-ako		poss	final	ba		
324	29	31	b	3	كْوٖلِ	kweli	kweli						kweli		noun	final	ba		
2787	261	263	c	4	ڠَنِ	gani	gani						nini		qual	final	ba		
551	52	54	a	3	نْيُمَ	nyuma	nyuma						nyuma		adv	final	ba		
825	77	79	a	3	كْوَكٖ	kwake	kwake						-ake		poss	final	ba		
699	66	68	a	4	يَنْڠُ	yangu	yangu						-angu		poss	final	ba		
702	66	68	b	3	بَبَنْڠُ	babangu	babangu						baba		noun	final	ba		
233	22	22	d	2	أُلِيٗنَمْبِيَ	uliyonambiya	uliyonambiya						-amb-		verb	final	ba	li	
156	15	15	d	3	هُلِيَ	huliya	huliya						-li-		verb	final	ba	hu	
247	21	23	d	2	نِمٖسِكِيَ	nimesikiya	nimesikiya						-siki-		verb	final	ba	me	
318	28	30	d	2	نِمٖمْٹِلِيَ	nimemţiliya	nimemtiliya						-ti-		verb	final	ba	me	
1251	115	117	b	1	كَنِؤُزَ	kaniuza	kaniuza						-uz-	and asked me: Who are you?	verb		ba	ka	
1294	119	121	a	1	كَسِكِيَ	kasikiya	kasikiya		kasikia				-siki-	And I heard him speak	verb		ba	ka	
180	18	18	a	3	نَلِتٗكَ	nalitoka	nalitoka						-to-		verb	final	ba	li	
189	18	18	d	2	كُنَمْبِيَ	kunambiya	kunambiya						-amb-		verb	final	ba	ku	
211	20	20	d	3	كُمْوَمْبِيَ	kumwambiya	kumwambiya						-amb-		verb	final	ba	ku	
221	21	21	d	2	كُٹْوَلِيَ	kuţwaliya	kutwaliya					Ali tells this lie to gain some time, but it doesn't work.	-twa-		verb	final	ba	ku	
279	24	26	d	2	كُكُتٗلٖيَ	kukutoleya	kukutoleya						-to-		verb	final	ba	ku	
1310	120	122	c	1	كَمْبَ	kamba	kamba						-amb-	[The first man] said: When you look at him closely,	verb		ba	ka	
296	26	28	c	2	كَتٗكَ	katoka	katoka						-to-		verb	final	ba	ka	
553	52	54	b	2	كَئٖڠٖمَ	kaegema	kaegema					The Swahili belief would be that the boy has been led to that particular place \\q{by the blood}, i.e. because he is a son of his father's, the two have a bodily affinity, and tend to be attracted to each other, like magnets.	-egem-		verb	final	ba	ka	
568	53	55	c	3	كَئٖڠٖمَ	kaegema	kaegema						-egem-		verb	final	ba	ka	
596	56	58	b	3	أَكَتٗكَ	akatoka	akatoka						-to-		verb	final	ba	ka	
598	56	58	c	2	أَكَمْشِكَ	akamshika	akamshika						-shik-		verb	final	ba	ka	
1306	120	122	a	1	وَكَيَ	wakaya	wakaya						-j-	They came over and stood,	verb		ba	ka	
1220	112	114	b	3	كِپُنْڠُ	kipungu	kipungu						-pungu-		noun		ba		
543	51	53	b	3	تهَكِفُنِكَ	tʰakifunika	takifunika						-fun-		verb	final	ba	ta	
1241	114	116	a	1	وَكِسِكِيَ	wakisikiya	wakisikiya		wakisikia				-siki-	When they heard my words,	verb		ba	ki	
546	51	53	c	3	تهَمْشِكَ	tʰamshika	tamshika						-shik-		verb	final	ba	ta	
570	53	55	d	2	هُمْوَنْڠَلِيَ	humwangaliya	humwangaliya						-anga-		verb	final	ba	hu	
261	22	24	d	2	أَلٗنِزُلِيَ	alonizuliya	alonizuliya						-zu-		verb	final	ba	li	
206	20	20	b	3	نَئِتَكَ	naitaka	naitaka						-tak-		verb	final	ba	a	
165	16	16	d	2	نَمْبِيَ	nambiya	nambiya						-amb-		verb	final	ba	imp	
285	25	27	b	2	أُئِوٖسٖپٗ	uiwesepo	uiwesepo						-let-		verb	final	ba	past	
172	17	17	b	4	حُمَ	ḥuma	huma						hh-m-m		noun	final	ar		
579	54	56	d	2	أَكِيَ	akiya	akiya						-j-		verb	final	ba	ki	
2356	220	222	b	2	جَعْفَرِ	jaʿfari	jafari		Jaafari			i.e. \\Swa{tule naye}, \\E{so that we may share a meal with him}.  Sharing a meal with someone shows respect.	j-3-f-r		persn	final	ar		
883	81	83	d	3	كِكْوٖٹٖيَ	kikweţeya	kikweteya						-let-		verb	final	ba	ki	
1391	127	129	d	2	مْوَيُوَ	mwayuwa	mwayuwa		mwayua				-ju-		verb		ba	a	
1296	119	121	b	1	هُمْوِٹَ	humwiţa	humwita						-it-	and call: "Abu Bakr,	verb		ba	hu	
1315	121	123	a	1	هُسِكِيَ	husikiya	husikiya		husikia			\\Swa{hu-} here = \\Swa{waka-}.	-siki-	When [the others] heard this, [they said:] He reminds me	verb		ba	hu	
775	72	74	c	5	كُڤُلِ	kuvuli	kuvuli					\\Swa{kuvuli} = \\Swa{kulia}.	-vuli		noun	final	ba		
3154	297	299	a	1	مَاءِ	mai	mai						maji	Although [Atika] did not really want the water,	noun		ba		
1338	123	125	a	1	أَكَتَمْكَ	akatamka	akatamka						-tamk-	This gentleman spoke:	verb		ba	ka	
708	67	69	a	2	مَمَكٖ	mamake	mamake						mama		noun	final	ba		
711	67	69	b	3	زَكٖ	zake	zake						-ake		poss	final	ba		
744	70	72	a	3	زَنْڠُ	zangu	zangu						-angu		poss	final	ba		
751	70	72	c	3	مَمَنْڠُ	mamangu	mamangu						mama		noun	final	ba		
779	73	75	a	2	تَمْكٗ	tamko	tamko						-tamk-		noun	final	ba		
783	73	75	b	4	زَكٗ	zako	zako						-ako		poss	final	ba		
832	77	79	c	3	زَكٖ	zake	zake						-ake		poss	final	ba		
845	79	81	a	2	سِكِتِكٗ	sikitiko	sikitiko					-sikitik-	-sikitik-		noun	final	ba		
863	80	82	b	5	ڠَنِ	gani	gani						nini		qual	final	ba		
866	80	82	c	3	زِٹَنِ	ziţani	zitani						-ta		noun	final	ba		
894	83	85	a	3	زَكٗ	zako	zako						-ako		poss	final	ba		
909	84	86	c	3	هَلِمَمَ	halimama	halimama					\\Swa{halimama} = \\Swa{wasiwasi}.	halimama		noun	final	ba		
938	87	89	a	4	يَكٖ	yake	yake						-ake		poss	final	ba		
945	87	89	c	4	يَكٖ	yake	yake						-ake		poss	final	ba		
957	88	90	c	4	وَكٖ	wake	wake						-ake		poss	final	ba		
966	89	91	c	3	مْوِٹُنِ	mwiţuni	mwituni						-itu		noun	final	ba		
923	85	87	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
1341	123	125	b	2	هُئِٹْوَ	huiţwa	huitwa						-it-		verb		ba	hu	
1377	126	128	c	2	وَمٖلِشَ	wamelisha	wamelisha						-l-		verb		ba	me	
843	78	80	d	2	أُمٖزٗنَمْبِيَ	umezonambiya	umezonambiya						-amb-		verb	final	ba	me	
959	88	90	d	2	وَمٖپٗتٖيَ	wamepoteya	wamepoteya						-pote-		verb	final	ba	me	
1056	97	99	d	3	كُكْوَمْبِيَ	kukwambiya	kukwambiya						-amb-		verb	final	ba	ku	
106	10	10	d	2	تهَمْزِنْڠَتِيَ	tʰamzingatiya	tamzingatiya						-zingat-		verb	final	ba	ta	
855	79	81	d	2	كُكُزِوِيَ	kukuziwiya	kukuziwiya						-zu-		verb	final	ba	ku	
869	80	82	d	3	كُٹَنْڠُلِيَ	kuţanguliya	kutanguliya						-tanguli-		verb	final	ba	ku	
1350	124	126	a	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia				-amb-	And I told them: I have decided	verb		ba	ka	
906	84	86	b	3	كَيَنْدَمَ	kayandama	kayandama						-andam-		verb	final	ba	ka	
1243	114	116	b	1	وَكِزُنْڠُكِيَ	wakizungukiya	wakizungukiya		wakizungukia				-zungu-	they turned round.	verb		ba	ki	
759	71	73	b	3	تَئِنُكَ	tainuka	tainuka						-inu-		verb	final	ba	ta	
754	70	72	d	3	نِتَكُيَ	nitakuya	nitakuya						-j-		verb	final	ba	ta	
714	67	69	c	3	أَتَمْكٖ	atamke	atamke						-tamk-		verb	final	ba	past	
1361	125	127	a	1	وَنِؤُزٖ	waniuze	waniuze						-uz-	And they asked me politely,	verb		ba	a	
1274	117	119	b	2	مْپٗتٖزَ	mpoteza	mpoteza						-pote-		noun		ba		
1127	104	106	b	4	كُزِمُ	kuzimu	kuzimu					The meaning of this line is unclear.  \\Swa{tundu} means \\q{hole, pit}, and \\Swa{kuzimu} means \\q{the Underworld} -- (\\Swa{kuzimu hakuna nyota}, \\E{in the Underworld there are no stars}) -- but the implication here is obscure.	-zimu		noun	final	ba		
1221	112	114	b	4	كَٹِ	kaţi	kati					\\Swa{kipungu-kati} = \\Swa{mti-kati, saa sita, jua kali}.	kati		noun	final	ba		
1305	119	121	d	3	وَكَيَ	wakaya	wakaya						-j-		verb	final	ba	ka	
1207	111	113	a	3	كِنْيٖسَ	kinyesa	kinyesa						-nyes-		verb	final	ba	ki	
1212	111	113	c	2	وَكِنُسَ	wakinusa	wakinusa		wakitusa	*			-tus-		verb	final	ba	ki	
1210	111	113	b	3	وَكَپِٹَ	wakapiţa	wakapita						-pit-		verb	final	ba	ka	
739	69	71	c	3	مُئِنِ	muini	muini						-ji		noun	final	ba		
994	92	94	a	4	يَكٗ	yako	yako						-ako		poss	final	ba		
997	92	94	b	3	وَكٗ	wako	wako						-ako		poss	final	ba		
1001	92	94	c	4	يَكٗ	yako	yako						-ako		poss	final	ba		
1005	93	95	a	2	تِنِ	tini	tini						-chi		adv	final	ba		
1171	107	109	d	3	نْدِيَ	ndiya	ndiya					This comes very close to the English expression \\q{hit the road}. \\Swa{-takasa}, \\E{stride along making a noise when your feet hit the ground}.	-jia		noun	final	ba		
1177	108	110	b	3	هِلِ	hili	hili						h-		dem	final	ba		
1189	109	111	b	3	ڠَنِ	gani	gani						nini		qual	final	ba		
1192	109	111	c	3	وٖنْڠِنٖ	wengine	wengine					Or we could emend to \\Swa{wageni}, \\E{strangers}.	-ingine		qual	final	ba		
912	84	86	d	3	أَكِنْڠِيَ	akingiya	akingiya						-ingi-		verb	final	ba	ki	
891	82	84	d	2	سِيَسِكِلِيَ	siyasikiliya	siyasikiliya					Amu \\Swa{-sika} = \\Swa{fika}.  Compare \\Swa{-sita / fita}.	-siki-		verb	final	ba	me	y
900	83	85	d	2	تَكَلٗكْوَمْبِيَ	takalokwambiya	takalokwambiya						-amb-		verb	final	ba	ta	
1265	116	118	c	1	أُئٖٹَيٗ	ueţayo	uetayo						-let-	The words you have spoken,	verb		ba	a	
1217	112	114	a	3	مَتِتِ	matiti	matiti					\\Swa{kama Wazungu}, \\E{like Europeans}!	-titi		noun	final	ba		
1270	117	119	a	2	نِ	ni	ni						ni		exist		ba		
3231	304	306	c	3	هُتَمْكَ	hutamka	hutamka						-tamk-		verb	final	ba	hu	
3207	302	304	b	3	وَكٖ	wake	wake						-ake		poss	final	ba		
1244	114	116	b	2	نْيُمَ	nyuma	nyuma						nyuma		adv	final	ba		
1260	116	118	a	3	يَكٗ	yako	yako					We understand \\Swa{maneno}.  This is very rude.  There is a saying: \\Swa{usishike maneno ya wanawake}, \\E{don't take the word of women}.	-ako		poss	final	ba		
2550	239	241	c	2	هُكُ	huku	huku						h-		dem		ba		
979	90	92	d	2	نِكِكْوَنْڠَلِيَ	nikikwangaliya	nikikwangaliya					If someone is impudent, and you try to remind him that he should behave better by asking him where his manners are, he may say: \\Swa{zimeningia kwa huku, zimetoka kwa huku}, \\E{they came into me here, and went out there}, that is, they went in one ear and out the other.  If this is too much for the other person, he may say, like Ja'far: \\Swa{zitakutoka jeuri, zitakuingia adabu}, \\E{your insolence will leave you, and good manners will enter you}, and proceed to teach him a lesson, after which he may say, if successful: \\Swa{umekwisha pata adabu}, \\E{you have finished getting manners}, that is, I've taught you a lesson.	-anga-		verb	final	ba	ki	
1204	110	112	d	2	وَتَنَمْبِيَ	watanambiya	watanambiya						-amb-		verb	final	ba	ta	
368	33	35	d	2	نِمٖزِسِكِيَ	nimezisikiya	nimezisikiya						-siki-		verb	final	ba	me	
1133	104	106	d	3	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya						-amb-		verb	final	ba	me	
1374	126	128	b	1	نِمٖچٗكَ	nimechoka	nimechoka						-chok-	I am tired and I still haven't seen any.	verb		ba	me	
947	87	89	d	2	كُٹْوَنْڠَلِيَ	kuţwangaliya	kutwangaliya						-anga-		verb	final	ba	ku	
1155	106	108	c	3	يَوٖءٖؤٗ	yaweeo	yaweeo					Amu \\Swa{yaweeo} = Mvita \\Swa{yalivyokuwa}.	-w-		verb	final	ba	past	
1214	111	113	d	2	كَوَپِسِيَ	kawapisiya	kawapisiya					Amu \\Swa{-pisa salamu} = Mvita \\Swa{-toa salamu}.  The greeting \\Swa{salaam alekum} is used only to groups of more than one person.	-pit-		verb	final	ba	ka	
1224	112	114	c	3	مُكٖيْتِ	mukēti	muketi						-ka-		verb	final	ba	subj	
1240	113	115	d	2	مُتَلِمَٹِيَ	mutalimaţiya	mutalimatiya					\\Swa{-limatiya} = \\Swa{-chelewa}.  In other words, if they stop for a bit, they will not arrive at their destination so late that they will sleep in the next morning.	-limat-		verb	final	ba	ta	
1148	106	108	a	2	أُنَمْبِزِيٖؤٗ	unambiziyeo	unambiziyeo						-amb-		verb	final	ba	past	
670	63	65	a	3	أَمْوَمْبِئٖ	amwambie	amwambie					The following stanzas are a bit unclear.  The gist seems to be that Ali says he is Ja'far's father, Ja'far reproaches him for his earlier bullying behaviour, still suspicious and unsure whether or not to believe him, whereupon Ali describes Ja'far's mother to him, which convinces Ja'far.	-amb-		verb	final	ba	past	
3167	298	300	c	1	مَاءِ	mai	mai						maji	When [Atika] had swallowed the water	noun		ba		
2716	254	256	c	2	سِمْبَ	simba	simba					Ali is known as \\Swa{simba wa Mungu}, or \\Swa{haidari} -- see note to 22a.	simba		noun		ba		
2560	240	242	c	1	مْوَنَ	mwana	mwana						-ana	[But] the Lady [Fatima] appeared sad	noun		ba		
27	3	3	b	3	مْٹُ	mţu	mtu					The woman's name is Atika, but we are not told this until 348b, with an end-of-line variant, Atiya, in 341d.	-tu		noun		ba		
1504	138	140	b	1	كُفُنِشِوٖ	kufunishiwe	kufunishiwe						-fun-	where the well had been covered over.	verb		ba	past	
1415	129	131	d	1	كُكُؤٗنْيَ	kukuonya	kukuonya						-on-	are afraid to show it to you.	verb		ba	ku	
1419	130	132	b	1	كُكُپٖكَ	kukupeka	kukupeka						-pelek-	we are ready to take you there,	verb		ba	ku	
2966	279	281	b	1	كَنٖنَ	kanena	kanena						-nen-	and said: I am Atika.	verb		ba	ka	
2898	272	274	d	1	كَمْپٖكٖيَ	kampekeya	kampekeya						-pelek-	He delivered one to Atika [Ja'far's mother].	verb		ba	ka	
3252	306	308	b	1	كَنْدَمَنَ	kandamana	kandamana						-andam-	and went along with Atika.	verb		ba	ka	
3186	300	302	c	1	كَمْپِكِيَ	kampikiya	kampikiya						-pik-	and cooked [food] for Atika	verb		ba	ka	
3158	297	299	c	1	أَكَٹُمْوَ	akaţumwa	akatumwa						-tum-	[The cup] was given back by Atika,	verb		ba	ka	
1426	131	133	a	1	وَكَنِؤٗنْيَ	wakanionya	wakanionya						-on-	They showed me the way,	verb		ba	ka	
1437	132	134	a	2	كِدُسَ	kidusa	kidusa		kidosa	*		\\Swa{-dosa} = \\Swa{-gota, -gogota}, \\E{knock, rap}.  As Ja'far walks over the planks covering the well, he hears the resonating sound of the well beneath them.	-dos-		verb		ba	ki	
2941	276	278	d	1	كِمْزٖنْڠٖيَ	kimzengeya	kimzengeya					\\Swa{anamtafuta}.	-zeng-	while Atika was looking for him.	verb		ba	ki	
3082	290	292	a	1	هُمُؤٗوَ	humuowa	humuowa		humuoa			\\Swa{anamtizama}.	-on-	[Atika] looked at him, listening,	verb		ba	hu	
2709	253	255	d	1	هُتٗشَ	hutosha	hutosha					i.e. he is capable of achieving something.	-to-	He is fully able, in my opinion.	verb		ba	hu	
3100	291	293	d	1	أُيِيٖ	uyiye	uyiye						-j-	Did you come by yourself, Atika?	verb		ba	past	
2803	263	265	b	2	نِپَ	nipa	nipa					lit. \\q{give me}, as a favour.  The sick person will also be offered water.	-p-		verb		ba	imp	
1467	134	136	d	1	نِزِتَكَسٖ	nizitakase	nizitakase					\\Swa{-takasa}, \\E{shake}, with \\Swa{nyayo}, \\E{footsteps} understood.  The meaning is to shake the road by travelling a lot.	-takas-	so that I can herd them along the road."	verb		ba	subj	
1383	127	129	a	2	مْمٖزٗپِٹَ	mmezopiţa	mmezopita						-pit-		verb	final	ba	me	
1257	115	117	d	2	كُٹُفِكِيَ	kuţufikiya	kutufikiya		kitufikiya	*			-fik-		verb	final	ba	ku	
1268	116	118	d	2	كُٹْوَمْبِيَ	kuţwambiya	kutwambiya						-amb-		verb	final	ba	ku	
1248	114	116	d	2	كَنِئِلِيَ	kaniiliya	kaniiliya		kaniyiliya				-j-		verb	final	ba	ka	
1511	139	141	a	1	أَكِيَ	akiya	akiya						-j-	When he arrived he grabbed hold of me	verb		ba	ki	
1369	125	127	d	1	نِتَكَلٗ	nitakalo	nitakalo						-tak-	telling them what I had [earlier] intended.	verb		ba	a	
1430	131	133	b	3	كَفُوَٹَ	kafuwaţa	kafuwata		kafuata				-fuat-		verb	final	ba	ka	
1370	125	127	d	2	كَوَمْبِيَ	kawambiya	kawambiya						-amb-		verb	final	ba	ka	
1525	140	142	c	1	كَنِؤُزَ	kaniuza	kaniuza						-uz-	[The man] asked me about the ring	verb		ba	ka	
1532	141	143	b	1	كَپِجَ	kapija	kapija						-pig-	and became anxious.	verb		ba	ka	
1309	120	122	b	2	وَكَنِٹِزَمَ	wakaniţizama	wakanitizama						-tazam-		verb	final	ba	ka	
1337	122	124	d	2	ٹُكَلِسِكِيَ	ţukalisikiya	tukalisikiya						-siki-		verb	final	ba	ka	
1476	135	137	c	2	كِوَپٖكَ	kiwapeka	kiwapeka						-pelek-		verb	final	ba	ki	
1490	136	138	d	1	هُتُرَ	hutura	hutura					\\Swa{-tura} = \\Swa{-ruka}, \\E{jump, bound}.	-tur-	running and frisking.	verb		ba	hu	
1502	138	140	a	1	وَكٖنْدَ	wakenda	wakenda						-end-	They went on and stood	verb		ba	ka	
1535	141	143	c	1	يَپِسِيٖ	yapisiye	yapisiye		yapisie				-pit-	everything that had happened in the past,	verb		ba	past	
1495	137	139	b	1	مْوَكُيُوَ	mwakuyuwa	mwakuyuwa		mwakuyua				-ju-	you know where the well is.	verb		ba	a	
1349	123	125	d	4	نَمْبِيَ	nambiya	nambiya						-amb-		verb	final	ba	imp	
1508	138	140	d	1	نِمٗنٖ	nimone	nimone					Again, the tense gives the nuance of \\Eit{suddenly} -- see 138c.	-on-	and I saw someone coming.	verb		ba	past	
1592	146	148	c	1	نِؤٗمْبٖيَ	niombeya	niombeya		niombea				-omb-	Intercede for me to the Almighty,	verb		ba	imp	
1293	118	120	d	3	نٗنْدٗكٖيَ	nondokeya	nondokeya						-ondo-		verb	final	ba	imp	
1605	147	149	c	2	كِشَ	kisha	kisha						-ish-		conj		ba		
1953	181	183	a	1	أَلِپٗكْوٖنْدَ	alipokwenda	alipokwenda						-end-	When the Lord got there	verb		ba	li	
1548	142	144	d	3	كُنِپِجِيَ	kunipijiya	kunipijiya					\\Swa{-piga mifano}, \\E{give examples}.	-pig-		verb	final	ba	ku	
1620	149	151	a	2	كَيِنْڠُشَ	kayingusha	kayingusha		kayangusha				-angu-		verb	final	ba	ka	
1898	175	177	c	1	كَمْبَ	kamba	kamba						-amb-	He said: I will not [try to] guess the road,	verb		ba	ka	
1635	150	152	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya						-omb-		verb	final	ba	ka	
1903	176	178	a	1	أَكَكٖتِ	akaketi	akaketi						-ka-	Ja'far sat down	verb		ba	ka	
1956	181	183	b	2	أَكَپِجَ	akapija	akapija						-pig-		verb		ba	ka	
1862	172	174	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-	He told his brother:	verb		ba	ka	
1563	144	146	a	1	نِكَمْوَمْبِيَ	nikamwambiya	nikamwambiya		nikamwambia				-amb-	I told him [the number of] years	verb		ba	ka	
1874	173	175	b	1	أَتَكُپٖكَ	atakupeka	atakupeka					\\Swa{-peka} = \\Swa{-peleka}, \\E{send}.  In other words, may God make it possible for you to go.	-pelek-	May Providence keep you	verb		ba	ta	
1072	99	101	c	1	أُتَنَمْبِيَ	utanambiya	utanambiya						-amb-	you will tell me [I've seen someone who] looks like him,	verb		ba	ta	
1832	169	171	b	1	نَمْبِيَ	nambiya	nambiya						-amb-	tell me before I go.	verb		ba	imp	
1574	144	146	d	4	ٹِيَ	ţiya	tiya					= \\Swa{kumbuka tarehe}.	-ti-		verb	final	ba	imp	
1330	122	124	b	2	هٗيٗ	hoyo	hoyo						h-		dem		ba		
1325	122	124	a	1	هٗىٗ	hoyo	hoyo						h-	This is Abu Bakr, [said the first man],	dem		ba		
1366	125	127	c	1	هَپٗ	hapo	hapo						h-	Then, Mother, I answered them:	dem		ba		
1428	131	133	b	1	هَپٗ	hapo	hapo						h-	and then I followed the path.	dem		ba		
1346	123	125	d	1	نَ	na	na						na	[you] will tell me your name too.	conj		ba		
1379	126	128	d	1	سَسَ	sasa	sasa						sasa	and now they are bleating for want of water.	adv		ba		
2381	222	224	c	3	وَ	wa	wa		watano				-a		ref		ba		
1824	168	170	b	2	وَلِلِيَنِ	waliliyani	waliliyani		walilia-ni				-li-		verb	final	ba	li	
1848	170	172	d	2	كُلِيَ	kuliya	kuliya						-li-		verb	final	ba	ku	
1838	169	171	d	2	كُنِٹِيَ	kuniţiya	kunitiya						-ti-		verb	final	ba	ku	
1761	161	163	d	2	كَمْتٗلٖيَ	kamtoleya	kamtoleya						-to-		verb	final	ba	ka	
1721	157	159	d	3	كَتٗكٖيَ	katokeya	katokeya						-to-		verb	final	ba	ka	
1947	180	182	c	1	كَمْتُكُوَ	kamtukuwa	kamtukuwa		kamtukua			\\Swa{-enda naye}.	-chuku-	The Trustworthy One accompanied him	verb		ba	ka	
1622	149	151	b	2	أَكَئِرُشَ	akairusha	akairusha		akayirusha			She does not know what she is doing.	-ruk-		verb	final	ba	ka	
1885	174	176	b	1	كِنٖنْدَ	kinenda	kinenda						-end-	going on, not stopping, 	verb		ba	ki	
1814	167	169	b	2	هُتُكُلِيَنِ	hutukuliyani	hutukuliyani		hutukulia-ni				-chuku-		verb	final	ba	hu	
1871	172	174	d	3	نِؤٗمْبٖيَ	niombeya	niombeya						-omb-		verb	final	ba	imp	
1861	171	173	d	4	كُئِنُكِيَ	kuinukiya	kuinukiya					\\Swa{wakati wako wa kutoka}.  Being sad is natural for Nasir -- his brother has stopped being a playmate and has now become a young man.  	-inu-		verb	final	ba	ku	
1911	176	178	d	2	كَمْوِنُلِيَ	kamwinuliya	kamwinuliya					lit. \\q{raised his hands to him}.	-inu-		verb	final	ba	ka	
1913	177	179	a	2	كَؤُٹِزَمَ	kauţizama	kautizama					= \\Swa{}akauona.	-tazam-		verb	final	ba	ka	
2866	269	271	d	2	إِكَمْنْڠِيَ	ikamngiya	ikamngiya					He realised the truth -- to be sorrowful is a mistake, as the Prophet has said.  This sort of bereavement has always happened -- it is the same for everyone, and you cannot help it.  The Swahili practice is to console people by saying things like this -- if the bereaved family thought that they were the only ones to whom this was happening, they would become very distraught.	-ingi-		verb	final	ba	ka	
1900	175	177	c	3	سِتَكَسِ	sitakasi	sitakasi		sitakisi	*		= \\Swa{siioni}.	-takas-		verb	final	ba	ta	y
1451	133	135	b	3	سِشُٹُكٖ	sishuţuke	sishutuke						-shitu-		verb	final	ba	imp	y
1542	142	144	b	1	نِسِمْوَمْبِيٖ	nisimwambiye	nisimwambiye		nisimwambie				-amb-	I wouldn't tell him -- I refused.	verb		ba	past	y
1798	165	167	d	1	أَسِپٗئِيٗنَ	asipoiyona	asipoiyona		asipoiona				-on-	he would not take that road.	verb		ba	ki	y
2013	186	188	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
1973	182	184	d	4	سِكِيَ	sikiya	sikiya						-siki-		verb	final	ba	imp	
1920	177	179	d	3	هُنْڠِيَ	hungiya	hungiya					\\Swa{anaanza kufika sasa}, \\E{he is arriving just now}.	-ingi-		verb	final	ba	hu	
1902	175	177	d	2	تَئِكٖتِلِيَ	taiketiliya	taiketiliya		tayiketiliya				-ka-		verb	final	ba	ta	
1826	168	170	c	2	ٹْوَلِأڠَنَنِ	ţwaliganani	twaliganani		twaliagana-ni	*			-ag-		verb	final	ba	li	
1178	108	110	c	1	مَاءِ	mai	mai						maji	but there was no water anywhere,	noun		ba		
1384	127	129	b	1	مَاءِ	mai	mai						maji	have you not come upon any water there?	noun		ba		
1372	126	128	a	2	مَاءِ	mai	mai						maji		noun		ba		
1406	129	131	a	2	مَاءِ	mai	mai						maji		noun		ba		
1461	134	136	b	2	مَاءِ	mai	mai						maji		noun		ba		
2372	221	223	d	2	مَاءِ	mai	mai					This could either be \\Swa{ya kunawa}, \\E{to wash with}, or \\Swa{ya kunwa}, \\E{to drink}.  The Swahili custom is not to eat food without water.	maji		noun		ba		
2426	226	228	d	1	مَاءِ	mai	mai						maji	and offered them water.	noun		ba		
1850	171	173	a	2	هَيَ	haya	haya						h-		dem		ba		
2982	280	282	d	2	هَيَ	haya	haya						h-		dem		ba		
1343	123	125	c	1	نَمِ	nami	nami						na	and I now hope	conj		ba		
322	29	31	b	1	نَمِ	nami	nami						na	I've really done it now.	conj		ba		
796	74	76	c	1	نَمِ	nami	nami						na	And from me to your relatives there,	conj		ba		
3194	301	303	b	2	نَمِ	nami	nami						na		conj		ba		
2130	198	200	a	1	نَمِ	nami	nami						na	And when I reached the cave	conj		ba		
1604	147	149	c	1	نَمِ	nami	nami						na	And then [the people] in my town	conj		ba		
1021	94	96	d	1	نَمِ	nami	nami						na	I can tell from your behaviour.	conj		ba		
2524	237	239	a	1	كُمٖپَنَنَ	kumepanana	kumepanana						-p-	The news is being passed about	verb		ba	me	
2391	223	225	b	2	أَلِؤُپٖكَ	aliupeka	aliupeka						-pelek-		verb	final	ba	li	
2506	235	237	a	1	أَكَپِٹَ	akapiţa	akapita						-pit-	He came to the door [of Ali's house]	verb		ba	ka	
2377	222	224	b	1	وَكَتَنْڠَنْيَ	wakatanganya	wakatanganya						-changany-	sharing the same dish,	verb		ba	ka	
2250	209	211	a	2	كِؤُٹِزَمَ	kiuţizama	kiutizama						-tazam-		verb	final	ba	ki	
2630	246	248	c	3	أُوٖ	uwe	uwe						-w-		verb		ba	subj	
2569	241	243	b	2	نْدٗوْ	ndoo	ndoo						-j-		verb		ba	imp	
3109	292	294	d	1	وَلَ	wala	wala						wala	and I did not look for him.	conj		ba		
3064	288	290	c	1	وَلَ	wala	wala						wala	and I did not want 	conj		ba		
2928	275	277	c	1	وَلَ	wala	wala						wala	but she did not realise	conj		ba		
2383	222	224	d	1	وَلَ	wala	wala						wala	though the Prophet did not eat [much].	conj		ba		
1421	130	132	c	1	وَلَ	wala	wala						wala	but do not mention us,	conj		ba		
1235	113	115	c	1	وَلَ	wala	wala						wala	nor is the time so late	conj		ba		
1870	172	174	d	2	مْنْڠُ	mngu	mngu		Mngu				-ngu		godn		ba		
2807	263	265	d	1	أَمٖكْوِشَ	amekwisha	amekwisha						-ish-	[Ja'far] was already dead.	verb		ba	me	
2828	266	268	a	1	أَلِپٗكْوِشَ	alipokwisha	alipokwisha						-ish-	When he had completed the burial	verb		ba	li	
2862	269	271	c	1	كَپٖوَ	kapewa	kapewa					The passive of \\Swa{-pa}, \\E{give} is \\Swa{powa} in Amu, \\Swa{-pawa} in Mvita, and \\Swa{-pewa} in Zanzibar.	-p-	And when he was given this advice	verb		ba	ka	
2576	242	244	a	1	أَكَمُؤُزَ	akamuuza	akamuuza						-uz-	He asked her: What is the matter?	verb		ba	ka	
2814	264	266	c	1	أَكَسِمَمَ	akasimama	akasimama					\\Swa{-simama} does not mean just \\q{stand up}; it also means \\q{do anything that needs to be done}, i.e. in this case, step into the breach as regards the aftermath of Ja'far's death.	-simam-	The Bringer of Good Tidings had to do the needful,	verb		ba	ka	
2824	265	267	c	2	وَكِشَ	wakisha	wakisha						-ish-		verb		ba	ki	
2789	261	263	d	2	كْوَنْدَم	kwandam	kwandam		kwandama	*			-andam-		verb		ba	ku	
2784	261	263	c	1	أُپٖٹْوٖ	upeţwe	upetwe						-pat-	What misfortune has stricken you	verb		ba	past	
2501	234	236	c	1	إِنَ	ina	ina						-ina	[Ja'far's] name, certainly,	noun		ba		
1580	145	147	c	1	تٖنَ	tena	tena						tena	And via my teacher's [house]	conj		ba		
2483	232	234	d	1	مٗيَ	moya	moya						-moja	I don't understand [a thing about it].	num		ba		
2687	251	253	c	2	مٗيَ	moya	moya						-moja		num		ba		
1918	177	179	d	1	مْڠٖنِ	mgeni	mgeni						-geni	Our guest has just arrived.	noun		ba		
1923	178	180	b	1	مْڠٖنِ	mgeni	mgeni						-geni	Who is our guest?	noun		ba		
2552	239	241	d	1	مُئِنِ	muini	muini						-ji	so that he will not wander around the town?	noun		ba		
2881	271	273	b	1	مٗيَ	moya	moya						-moja	and this one for his teacher,	num		ba		
761	71	73	c	2	مٗيَ	moya	moya						-moja		num		ba		
2901	273	275	a	2	كُمْپَ	kumpa	kumpa						-p-		verb		ba	ku	
2396	224	226	a	1	أَكَئِنُكَ	akainuka	akainuka					This and the previous stanza are very vivid depictions of Swahili customs.	-inu-	He rose from his chair	verb		ba	ka	
2996	282	284	a	2	كِتٗكَ	kitoka	kitoka						-to-		verb		ba	ki	
575	54	56	c	1	كْوَندَ	kwanda	kwanda						-anz-	if he comes back today,	verb		ba	ku	
1278	117	119	d	1	كْوَنْدَ	kwanda	kwanda						-anz-	let us first know your character.	verb		ba	ku	
1869	172	174	d	1	كْوَنْدَ	kwanda	kwanda						-anz-	First intercede to God for me.	verb		ba	ku	
1901	175	177	d	1	كْوَنْدَ	kwanda	kwanda						-anz-	first I will sit myself down.	verb		ba	ku	
2268	211	213	a	1	كْوَنْدَ	kwanda	kwanda						-anz-	[Ali said:] First he must relax	verb		ba	ku	
2081	193	195	b	3	أُتٗكَكٗ	utokako	utokako						-to-		verb	final	ba	a	
1598	147	149	a	1	تٖنَ	tena	tena						tena	And intercede for me to God	conj		ba		
439	41	43	a	1	تٖنَ	tena	tena						tena	And the conclusion in my heart	conj		ba		
329	30	32	a	1	تٖنَ	tena	tena						tena	So you go, my Lord,	conj		ba		
2099	195	197	a	1	تٖنَ	tena	tena						tena	Also, father, [my] teacher	conj		ba		
1051	97	99	c	1	تٖنَ	tena	tena						tena	"I am perplexed again"	conj		ba		
1386	127	129	c	1	مْبُزِ	mbuzi	mbuzi						-buzi	My goats are thirsty --	noun		ba		
1462	134	136	b	3	مْبُزِ	mbuzi	mbuzi						-buzi		noun		ba		
1486	136	138	b	2	مْبُزِ	mbuzi	mbuzi						-buzi		noun		ba		
3012	283	285	c	1	مْڠٖنِ	mgeni	mgeni					i.e. \\Swa{kuna mgeni wako hapa}.	-geni	A visitor is asking for you.	noun		ba		
2751	258	260	a	3	كِٹِنِ	kiţini	kitini						-ti		noun	final	ba		
2761	259	261	a	2	كِٹِنِ	kiţini	kitini						-ti		noun	final	ba		
2849	268	270	a	5	ڠَنِ	gani	gani						nini		qual	final	ba		
986	91	93	c	2	نِ	ni	ni						ni		exist		ba		
773	72	74	c	3	نِ	ni	ni						ni		exist		ba		
728	68	70	d	3	نِ	ni	ni						ni		exist		ba		
2847	268	270	a	3	نِ	ni	ni						ni		exist		ba		
2331	217	219	d	2	نِ	ni	ni						ni		exist		ba		
2960	278	280	c	2	نِ	ni	ni						ni		exist		ba		
2527	237	239	b	2	يَ	ya	ya						-a		ref		ba		
2963	278	280	d	2	إِمٖسِمَمِيَ	imesimamiya	imesimamiya					\\Swa{yali tayari sala}.	-simam-		verb	final	ba	me	
2871	270	272	b	2	كَمْوَمْكُوَ	kamwamkuwa	kamwamkuwa		kamwamkua				-amku-		verb	final	ba	ka	
3015	283	285	d	2	كَتٗكَ	katoka	katoka						-to-		verb		ba	ka	
2965	279	281	a	2	كَتَمْكَ	katamka	katamka						-tamk-		verb	final	ba	ka	
2986	281	283	a	3	كَتٗكَ	katoka	katoka						-to-		verb	final	ba	ka	
2947	277	279	b	2	كِتٗمْكُٹَ	kitomkuţa	kitomkuta						-kut-		verb	final	ba	ki	
559	53	55	a	1	مْبُزِ	mbuzi	mbuzi						-buzi	His goats drank greedily	noun		ba		
1107	103	105	a	2	لَ	la	la						-a		ref		ba		
970	89	91	d	4	لَ	la	la						-a		ref		ba		
3078	289	291	d	1	لَ	la	la						-a	in the next world and this one.	ref		ba		
676	63	65	d	2	نْدِيٖ	ndiye	ndiye						ni		focus		ba		
3049	287	289	b	1	نْدِيٖ	ndiye	ndiye						ni	I bore his birthpangs!	focus		ba		
2017	187	189	b	2	نْدِيٖ	ndiye	ndiye						ni		focus		ba		
1356	124	126	c	2	نْدِيٖ	ndiye	ndiye						ni		focus		ba		
2008	186	188	b	3	نٔدِيٖ	ndiye	ndiye						ni		focus		ba		
2595	243	245	c	3	كِجَنَ	kijana	kijana						-ana		noun		ba		
1968	182	184	c	1	كِجَنَ	kijana	kijana						-ana	And the boy answered:	noun		ba		
2045	190	192	a	2	كِجَنَ	kijana	kijana						-ana		noun		ba		
2000	185	187	d	1	كِجَنَ	kijana	kijana						-ana	this boy, Prophet.	noun		ba		
1858	171	173	d	1	زٖءٗ	zeo	zeo						-eo	it is time for you to go.	noun		ba		
1236	113	115	c	2	زٖؤٗ	zeo	zeo					Amu \\Swa{zeo}, 9/10 = Mvita \\Swa{wakati}.  Compare \\Swa{njeo} in Muyaka.	-eo		noun		ba		
2345	219	221	b	1	زٖءٗ	zeo	zeo						-eo	the time is late -- 	noun		ba		
2279	212	214	a	2	زٖءٗ	zeo	zeo					Amu \\Swa{zeo} = Mvita \\Swa{wakati}, Mu \\Swa{njeo}.	-eo		noun		ba		
2114	196	198	c	2	زٖءٗ	zeo	zeo						-eo		noun		ba		
1960	181	183	d	1	أَكَمْبَ	akamba	akamba						-amb-	and said: The Prophet is not here.	verb		ba	ka	
2519	236	238	c	1	أَكَمْبَ	akamba	akamba						-amb-	Then [Ali] said: It is best I go out.	verb		ba	ka	
2582	242	244	c	2	أَكَمْبَ	akamba	akamba						-amb-		verb		ba	ka	
2612	245	247	a	2	أَكَمْبَ	akamba	akamba						-amb-		verb		ba	ka	
2802	263	265	b	1	أَكَمْبَ	akamba	akamba						-amb-	he said: Read me [the chapter] Ya Sin.	verb		ba	ka	
45	5	5	a	2	كُتٗكَ	kutoka	kutoka						-to-		verb		ba	ku	
60	6	6	b	1	يَلِ	yali	yali		yale	*			-li	was unaware of these things	dem		ba		
62	6	6	c	1	كَنٖنْدَ	kanenda	kanenda						-end-	[until] someone in the know went	verb		ba	ka	
52	5	5	c	2	كْوَ	kwa	kwa						-a		ref		ba		
10	1	1	d	1	نْدِيٗ	ndiyo	ndiyo						ni	that that is what goes first.	focus		ba		
82	8	8	d	1	أُتُنْڠُ	utungu	utungu						-chungu	and made her worried.	noun		ba		
14	2	2	b	1	كهٖنْدَ	kʰenda	kenda						-end-	I went on a journey.	verb		ba	ka	
53	5	5	c	3	مْكٖ	mke	mke						-ke		noun		ba		
55	5	5	d	1	مْكٗنٗ	mkono	mkono						-kono	he hid his hand from her.	noun		ba		
40	4	4	c	2	پٖٹٖ	peţe	pete					This ring is an important factor in the rest of the story, because it had been given to Ali by his wife Fatima.	-pet-		noun		ba		
23	3	3	a	2	نٖنْدَءٗ	nendao	nendao						-end-		verb		ba	a	
51	5	5	c	1	أَكٖنْدَ	akenda	akenda						-end-	when he went to his wife [Fatima],	verb		ba	ki	
67	7	7	a	1	أَكٖنٖنْدَءٖ	akenendae	akenendae		akenendaye				-end-	The person who went was an old woman,	verb		ba	ki	
171	17	17	b	3	نِ	ni	ni		na	*			ni		exist		ba		
228	22	22	b	3	سِ	si	si						si		exist		ba		
184	18	18	c	1	نَ	na	na						na	And if there's anything you want,	conj		ba		
179	18	18	a	2	هَپَ	hapa	hapa						h-		dem		ba		
234	21	23	a	1	هُنُ	hunu	hunu						h-	"This is the second month [that you have not worn it] --	dem		ba		
901	84	86	a	1	َكِشَ	akisha	akisha						-ish-	Once [the teacher] had finished these words,	verb		ba	ki	
63	6	6	c	2	مْوٖنْيٖ	mwenye	mwenye						-enye		qual		ba		
315	28	30	c	2	زِسِزٗ	zisizo	zisizo						-li		exist		ba		y
260	22	24	d	1	هُيٗ	huyo	huyo						h-	who has told you this lie about me?"	dem		ba		
242	21	23	c	2	نَ	na	na						na		conj		ba		
303	27	29	b	2	نَ	na	na						na		conj		ba		
205	20	20	b	2	يَكٗ	yako	yako						-ako		poss		ba		
161	16	16	c	1	كَمْبَ	kamba	kamba						-amb-	He said: Fatima, listen -- 	verb		ba	ka	
223	22	22	a	2	يَكٗ	yako	yako						-ako		poss		ba		
212	21	21	a	1	كِشَ	kisha	kisha						-ish-	Then Ali the Lion-like,	conj		ba		
239	21	23	b	1	مِمِ	mimi	mimi						mimi	I did not realise this before.	pron		ba		
178	18	18	a	1	مِمِ	mimi	mimi						mimi	[Ali said:] When I left here	pron		ba		
182	18	18	b	2	هُنٖنَ	hunena	hunena						-nen-		verb		ba	hu	
220	21	21	d	1	تهَكْوٖنْدَ	tʰakwenda	takwenda						-end-	I'll go and fetch it.	verb		ba	ta	
409	38	40	a	2	كْوَكٖ	kwake	kwake						-ake		poss		ba		
336	30	32	d	1	هَپٗ	hapo	hapo						h-	and then set out on the way [to Ali's house].	dem		ba		
403	37	39	c	2	هَيَ	haya	haya						h-		dem		ba		
452	42	44	b	1	نَ	na	na						na	and I will compose other [things],	conj		ba		
430	40	42	a	1	نَ	na	na						na	And the person who deceived me --	conj		ba		
421	39	41	b	2	نَ	na	na						na		conj		ba		
391	36	38	b	2	نَ	na	na						na		conj		ba		
413	38	40	c	1	كِشَ	kisha	kisha						-ish-	then she spoke [these] words,	conj		ba		
433	40	42	b	1	سَسَ	sasa	sasa						sasa	now I have realised	adv		ba		
402	37	39	c	1	نِ	ni	ni						ni	this is my advice --	exist		ba		
472	44	46	b	1	سِ	si	si						si	not of increasing [her] love for me,	exist		ba		
427	39	41	d	1	سِ	si	si						si	and I am not pleased [to have done it].	exist		ba		
977	90	92	c	2	جٖؤُرِ	jeuri	jeuri						-euri		noun	final	ba		
729	68	70	d	4	وَ	wa	wa						-a		ref		ba		
323	29	31	b	2	نِمٖٹٖنْدَ	nimeţenda	nimetenda						-tend-		verb		ba	me	
337	30	32	d	2	كَأَنْدَمَ	kaandama	kaandama						-andam-		verb		ba	ka	
344	31	33	c	1	كَئِفَنْيَ	kaifanya	kaifanya		kayifanya				-fany-	He pretended he knew nothing,	verb		ba	ka	
424	39	41	c	1	كَبِسَ	kabisa	kabisa						kabisa		adv		ba		
310	28	30	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-	He told the Noble One:	verb		ba	ka	
362	33	35	b	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-	she told the Bearer of Glad Tidings:	verb		ba	ka	
356	32	34	c	2	مٖكُيَ	mekuya	mekuya						-j-		verb		ba	me	
339	31	33	a	1	أَكٖنْدَ	akenda	akenda						-end-	He went [to the house] and sat down.	verb		ba	ki	
332	30	32	b	1	أُمُؤٗنْيٖ	umuonye	umuonye						-on-	and tell her to calm down.	verb		ba	subj	
367	33	35	d	1	يٖؤٗ	yeo	yeo						-eo	I heard it today.	adv		ba		
529	50	52	a	1	هَپٗ	hapo	hapo						h-	Then Ali the Lion-like	dem		ba		
502	47	49	b	2	هَنَ	hana	hana						-na		have		ba		
420	39	41	b	1	ٹُنَنِ	ţunani	tunani		tuna-ni				-na	what quarrel do I have with my husband?	have		ba		
505	47	49	c	2	مْمٗيَ	mmoya	mmoya						-moja		num		ba		
555	52	54	c	2	بَاءٗ	bao	bao						bao		noun		ba		
487	45	47	d	1	وَ	wa	wa						-a	[son of] Lord Ali.	ref		ba		
521	49	51	a	3	كْوَ	kwa	kwa						-a		ref		ba		
506	47	49	c	3	كْوَ	kwa	kwa						-a		ref		ba		
515	48	50	c	2	كِسِمَ	kisima	kisima						-sima		noun		ba		
499	47	49	a	1	وَٹُ	waţu	watu						-tu	People were talking about it,	noun		ba		
465	43	45	c	2	يَنْڠُ	yangu	yangu						-angu		poss		ba		
425	39	41	c	2	مَؤٗڤُ	maovu	maovu						-ovu		adj		ba		
448	41	43	d	2	مْبٗڤُ	mbovu	mbovu						-ovu		adj		ba		
470	44	46	a	1	نَلِئِوَتَ	naliiwata	naliiwata						-ach-	I left it for the purpose,	verb		ba	li	
675	63	65	d	1	بَبَكٗ	babako	babako						baba	your father is [me], Ali.	noun		ba		
647	61	63	b	2	بَبَكٗ	babako	babako						baba		noun		ba		
623	59	61	a	2	كْوَ	kwa	kwa						-a		ref		ba		
615	58	60	b	2	كْوَ	kwa	kwa						-a		ref		ba		
642	60	62	d	1	نْدِپٗ	ndipo	ndipo						ni	and that is why you are bullying me.	focus		ba		
727	68	70	d	2	مْوَكَ	mwaka	mwaka						-aka		noun		ba		
635	60	62	b	1	مْوَنَ	mwana	mwana		mwana-adamu				-ana	what sort of person you are.	noun		ba		
661	62	64	b	3	جِنَ	jina	jina						-ina		noun		ba		
666	62	64	d	2	مَيُتٗ	mayuto	mayuto						-jut-		noun		ba		
652	61	63	c	3	پٖٹٖ	peţe	pete						-pet-		noun		ba		
660	62	64	b	2	نَ	na	na						na		conj		ba		
734	69	71	b	1	نَ	na	na						na		conj		ba		
716	67	69	d	2	لَكٖ	lake	lake						-ake		poss		ba		
542	51	53	b	2	يٖؤٗ	yeo	yeo						-eo		adv		ba		
1429	131	133	b	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
49	5	5	b	3	مٗيٗ	moyo	moyo						-oyo		noun		ba		
341	31	33	b	1	مٗيٗ	moyo	moyo						-oyo	His heart was confused,	noun		ba		
1458	134	136	a	3	مٗيٗ	moyo	moyo						-oyo		noun		ba		
2272	211	213	c	1	مٗيٗ	moyo	moyo						-oyo	his heart is fluttering	noun		ba		
3298	304	312	d	1	مٗيٗ	moyo	moyo		moya	*			-oyo	not omitting one.	noun		ba		
656	62	64	a	1	پٖٹٖ	peţe	pete						-pet-	Once he saw the ring	noun		ba		
347	31	33	d	1	إٖنٖنْدٖيْ	enendee	enendee		endee	*			-end-	[that] he had just come to look in on her.	verb		ba	past	
399	37	39	b	1	أُتَكَپٗ	utakapo	utakapo						-tak-	if you want my blessing,	verb		ba	a	
464	43	45	c	1	پٖٹٖ	peţe	pete						-pet-	my distinctive ring --	noun		ba		
3268	307	309	d	1	مُئِنِ	muini	muini						-ji	and returned to the town.	noun		ba		
1555	143	145	b	4	نْيُمْبَ	nyumba	nyumba						-umb-		noun		ba		
1643	151	153	c	2	وَٹٗٹٗ	waţoţo	watoto						-toto		noun		ba		
1713	157	159	b	2	چَكُلَ	chakula	chakula					A meal with someone before they go on a journey is traditional, but  \\Swa{watu wakenda mbali, chakula hukosa baraka}, \\E{if people are going far away, food lacks savour, lit. blessing}.	-l-		noun		ba		
2948	277	279	c	1	نْيُمْبَ	nyumba	nyumba						-umb-	When she reached the first house	noun		ba		
2976	280	282	b	1	نْيُمْبَ	nyumba	nyumba						-umb-	and I don't know the house.	noun		ba		
633	60	62	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia				-amb-	He said to him: Explain to me	verb		ba	ka	
461	43	45	b	1	يٖؤٗ	yeo	yeo						-eo	so that today I may give you an explanation:	adv		ba		
3036	286	288	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia				-amb-	He spoke, saying:	verb		ba	ka	
537	50	52	d	1	يٖؤٗ	yeo	yeo						-eo	to uncover it today in spite of me.	adv		ba		
978	90	92	d	1	يٖؤٗ	yeo	yeo						-eo	today, I'll see to it.	adv		ba		
576	54	56	c	2	يٖؤٗ	yeo	yeo						-eo		adv		ba		
898	83	85	c	2	مَتَمْكٗ	matamko	matamko						-tamk-		noun	final	ba		
971	89	91	d	5	نْدِيَ	ndiya	ndiya						-jia		noun	final	ba		
1469	134	136	d	3	نْدِيَ	ndiya	ndiya						-jia		noun	final	ba		
1799	165	167	d	2	نْدِيَ	ndiya	ndiya					\\Swa{kama hakuona ndia}, as if he does not know the right road, i.e. he is going in a completely different direction to his normal route.	-jia		noun	final	ba		
2378	222	224	b	2	مِكٗنٗ	mikono	mikono					i.e. they eat together, \\Swa{kula pamoja}, which brings \\Swa{baraka}, \\E{blessings}.	-kono		noun	final	ba		
785	73	75	c	2	نَ	na	na						na		conj		ba		
805	75	77	b	2	نَ	na	na						na		conj		ba		
1424	130	132	d	2	سِسِ	sisi	sisi						sisi		pron		ba		
1413	129	131	c	2	سِسِ	sisi	sisi						sisi		pron		ba		
1076	100	102	a	1	وٖوٖ	wewe	wewe						wewe	[His mother said:] You are not worldly-wise,	pron		ba		
669	63	65	a	2	هَپٗ	hapo	hapo						h-		dem		ba		
713	67	69	c	2	هَپٗ	hapo	hapo						h-		dem		ba		
746	70	72	b	2	نَ	na	na						na		conj		ba		
864	80	82	c	1	نَاءٖ	nae	nae		naye				na	with your father at war,	conj		ba		
850	79	81	c	1	وَلَ	wala	wala						wala	Yet that place you are going to --	conj		ba		
847	79	81	b	2	وِنْڠِ	wingi	wingi						-ingi		qual		ba		
865	80	82	c	2	بَبَكٗ	babako	babako						baba		noun		ba		
771	72	74	c	1	يَ	ya	ya						-a	the way to Mecca is the one on the right --	ref		ba		
769	72	74	b	3	يَ	ya	ya						-a		ref		ba		
774	72	74	c	4	يَ	ya	ya						-a		ref		ba		
792	74	76	a	3	وَ	wa	wa						-a		ref		ba		
848	79	81	b	3	وَ	wa	wa						-a		ref		ba		
868	80	82	d	2	وَ	wa	wa						-a		ref		ba		
816	76	78	b	2	كْوَ	kwa	kwa						-a		ref		ba		
827	77	79	b	2	كْوَ	kwa	kwa						-a		ref		ba		
788	73	75	d	2	نْدُزٗ	nduzo	nduzo					\\Swa{nduzo} < \\Swa{ndugu zako}.  \\Swa{ndugu} can mean \\q{cousin} as well as \\q{brother}.	-dugu		noun		ba		
731	69	71	a	1	وَتٗوٖ	watowe	watowe		watoe				-to-	Bring your goats out of the forest, [said Ali],	verb		ba	imp	
749	70	72	c	1	نِمُوَڠٖ	nimuwage	nimuwage		nimuage				-ag-	whom I must take leave of, and my mother.	verb		ba	subj	
943	87	89	c	2	يَ	ya	ya						-a		ref		ba		
910	84	86	d	1	كْوَ	kwa	kwa						-a	as he went in to his mother's [house].	ref		ba		
916	85	87	b	1	كْوَ	kwa	kwa						-a	quietly and carefully.	ref		ba		
931	86	88	c	3	كْوَ	kwa	kwa						-a		ref		ba		
1645	151	153	c	4	وٖنْزَنْڠُ	wenzangu	wenzangu					It would be selfish to pray only for yourself or your own children.  The proper thing is to pray for others too, e.g. Muslims, or unbelievers who will become Muslims.	-end-		noun	final	ba		
920	85	87	c	1	مَمَكٖ	mamake	mamake						mama	His mother was surprised, 	noun		ba		
911	84	86	d	2	مَمَكٖ	mamake	mamake						mama		noun		ba		
886	82	84	b	1	مَمَكٗ	mamako	mamako						mama	Is your mother aware of these [things]?	noun		ba		
3168	298	300	c	2	أَلِپٗيَشُشَ	alipoyashusha	alipoyashusha						-shuk-		verb	final	ba	li	
1541	142	144	a	2	أَلِپٗنِؤُلِزَ	aliponiuliza	aliponiuliza						-uz-		verb	final	ba	li	
3166	298	300	b	2	كُمُؤٗنٖشَ	kumuonesha	kumuonesha		kumuonyesha				-on-		verb	final	ba	ku	
892	83	85	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia				-amb-	And [the teacher] told him: Off you go,	verb		ba	ka	
3185	300	302	b	2	أَكَئِنُكَ	akainuka	akainuka						-inu-		verb	final	ba	ka	
3223	303	305	d	2	أَكَمْوٖنْدٖيَ	akamwendeya	akamwendeya						-end-		verb	final	ba	ka	
884	82	84	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia				-amb-	The teacher said to him:	verb		ba	ka	
913	85	87	a	1	كِنْڠِيَ	kingiya	kingiya		kingia				-ingi-	When he went in he put his stick away	verb		ba	ki	
3153	296	298	d	2	تَٹُوَ	taţuwa	tatuwa		tatwaa	*			-twa-		verb	final	ba	ta	
951	88	90	b	1	تَكْوَمْبِيَ	takwambiya	takwambiya		takwambia				-amb-	I'll tell you the reason:	verb		ba	ta	
3305	305	313	c	2	أَتَكَلٗتَمْكَ	atakalotamka	atakalotamka						-tamk-		verb	final	ba	ta	
1661	153	155	a	2	أُيَپٗنِؤُذِ	uyaponiudhi	uyaponiudhi						3-zw-zw		verb	final	ar	japo	
3303	305	313	b	2	هَتٗسُمْبُكَ	hatosumbuka	hatosumbuka						-sumb-		verb	final	ba	ta	y
3155	297	299	a	2	أَسِپٗيَتَكَ	asipoyataka	asipoyataka						-tak-		verb	final	ba	ki	y
3173	299	301	a	3	أَمُؤُزٖ	amuuze	amuuze						-uz-		verb	final	ba	past	
3179	299	301	c	3	أَمْوٖلٖزٖ	amweleze	amweleze						-ele-		verb	final	ba	past	
940	87	89	b	2	هَپٗ	hapo	hapo						h-		dem		ba		
980	91	93	a	1	هَپٗ	hapo	hapo						h-	But his mother would have none of that,	dem		ba		
989	91	93	d	1	هَپٗ	hapo	hapo						h-	I would not have run away just now.	dem		ba		
1019	94	96	c	3	نِ	ni	ni						ni		exist		ba		
992	92	94	a	2	نِ	ni	ni						ni		exist		ba		
1059	98	100	b	1	بَبَ	baba	baba						baba	my father, you tell me he is not:	noun		ba		
981	91	93	a	2	مَمَ	mama	mama						mama		noun		ba		
949	88	90	a	2	مَمَ	mama	mama						mama		noun		ba		
1013	94	96	a	2	مَمَكٖ	mamake	mamake						mama		noun		ba		
993	92	94	a	3	نْدُڠُ	ndugu	ndugu						-dugu		noun		ba		
996	92	94	b	2	مْٹٗٹٗ	mţoţo	mtoto					Mvita \\Swa{mdogo}. \\E{small} = Amu \\Swa{mtoto} = Gunya \\Swa{mdodi}.	-toto		noun		ba		
1101	102	104	c	2	چَكٖ	chake	chake						-ake		poss		ba		
1122	104	106	a	3	ٹَاٹُ	ţāţu	tatu						-tatu		num		ba		
1108	103	105	a	3	پِلِ	pili	pili						-wili		num		ba		
1100	102	104	c	1	كِمٗ	kimo	kimo						LOC	his height is not much taller	loc		ba		
1129	104	106	c	2	زَكٖ	zake	zake						-ake		poss		ba		
1043	96	98	d	1	كْوَكٗ	kwako	kwako						-ako		poss		ba		
1004	93	95	a	1	أَلِئِنَمِيَ	aliinamiya	aliinamiya		aliinamia				-inam-	[Ja'far] lay down --	verb		ba	li	
969	89	91	d	3	كَلِ	kali	kali						-kali		adj		ba		
1068	99	101	a	1	كِكْوَمْبِيَ	kikwambiya	kikwambiya						-amb-	If I tell you he is in the town,	verb		ba	ki	
1057	98	100	a	1	كِكُؤُلِزَ	kikuuliza	kikuuliza						-uz-	If I ask you [whether] he is alive,	verb		ba	ki	
1060	98	100	b	2	هُنَمْبِيَ	hunambiya	hunambiya						-amb-		verb		ba	hu	
1002	92	94	d	1	وَتَ	wata	wata					Perhaps emend to \\Swa{kumshanguliya}.  The mother tells Ja'far not to hit Nasir, because he was not serious and he was only teasing.  She also reminds him that blood is thicker than water, and that in the last resort your family is your best friend.	-ach-	so do not attack him.	verb		ba	imp	
1126	104	106	b	3	يَ	ya	ya						-a		ref		ba		
873	81	83	b	1	كْوَنِ	kwani	kwani						nini	because I know it is proper.	conj		ba		
1112	103	105	b	3	زَ	za	za						-a		ref		ba		
95	9	9	d	2	كُمْڤُلِيَ	kumvuliya	kumvuliya						-vu-		verb	final	ba	ku	
1150	106	108	b	2	كْوٖلِ	kweli	kweli						kweli		noun		ba		
1957	181	183	b	3	هٗدِ	hodi	hodi						hodi		noun	final	ba		
1064	98	100	c	3	مِمْبَ	mimba	mimba						mimba		noun		ba		
1942	180	182	a	2	هَپٗ	hapo	hapo						h-		dem		ba		
2203	204	206	c	2	يَ	ya	ya						-a		ref		ba		
2786	261	263	c	3	يَمْبٗ	yambo	yambo						-amb-		noun		ba		
3253	306	308	b	2	نَ	na	na						na		conj		ba		
1062	98	100	c	1	تَنْڠُ	tangu	tangu						tangu	"When I was still pregnant with you	adv		ba		
1161	107	109	b	1	هِكِ	hiki	hiki					\\Swa{hiki} implies that the mother knows what drought he is referring to, i.e. she has experienced it too.	h-	This drought was severe,	dem		ba		
1273	117	119	b	1	نِ	ni	ni						ni	or [a spirit] who makes people lose their way?	exist		ba		
1262	116	118	b	2	سِ	si	si						si		exist		ba		
1247	114	116	d	1	مْمٗيَ	mmoya	mmoya						-moja	and one came up to me.	num		ba		
1301	119	121	c	3	نَ	na	na						na		conj		ba		
1209	111	113	b	2	نَاءٗ	nao	nao						na		conj		ba		
1261	116	118	b	1	وَلَ	wala	wala						wala	we are not relatives of yours.	conj		ba		
510	48	50	a	1	أَلِپٗپٖنْدَ	alipopenda	alipopenda						-pend-	When it pleased Providence	verb		ba	li	
319	29	31	a	1	أَلِكِلِيَ	alikiliya	alikiliya		alikilia			\\Swa{-liki-} is a past continuous tense.  See also 98d, 99a.	-li-	[Ali] was weeping: Oh Prophet!	verb		ba	li	
514	48	50	c	1	كُنَ	kuna	kuna						-na	There was a well in the forest,	have		ba		
974	90	92	b	1	أَكَمْپِجَ	akampija	akampija						-pig-	and hit Nasir:	verb		ba	ka	
1169	107	109	d	1	نِكَتَكَسَ	nikatakasa	nikatakasa						-takas-	so I travelled further afield.	verb		ba	ka	
1017	94	96	c	1	كِوَ	kiwa	kiwa						-w-	when you are being naughty	verb		ba	ki	
2131	198	200	a	2	كِپَٹَ	kipaţa	kipata					Contrast \\Swa{-pata}, \\E{arrive at somewhere en route to a destination}, and \\Swa{-fika}, \\E{arrive at the destination itself}.	-pat-		verb		ba	ki	
1194	109	111	d	2	وٖنْدٖمٖ	wendeme	wendeme						-andam-		verb		ba	past	
1267	116	118	d	1	يَپٖسٖنِ	yapeseni	yapeseni		yapese-ni			\\Swa{ilifaa vipi}. \\Swa{-pasa}, \\E{be obliged to, have to}.	-pat-	what good is it to tell us them?"	verb		ba	past	
1024	95	97	a	1	نَتَكَ	nataka	nataka						-tak-	[She told Ja'far:] I want [to hear] your news,	verb		ba	a	
1225	112	114	d	1	لِپَٹٖ	lipaţe	lipate						-pat-	until the sun goes down a bit?	verb		ba	subj	
1211	111	113	c	1	نِوَوٖنٖ	niwawene	niwawene						-on-	when I had seen them go by	verb		ba	past	
3053	287	289	c	1	نِؤٗنْيَ	nionya	nionya						-on-	Show me his grave --	verb		ba	imp	
2710	253	255	d	2	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya					Compare: \\Swa{kila kimwangaliya, naona ana mambo yule}, \\E{every time I look at him, I see that guy has something going on}.	-anga-		verb	final	ba	ki	
985	91	93	c	1	إِوَپٗ	iwapo	iwapo						-w-	If I were you, Nasir, 	verb		ba	a	
1098	102	104	b	2	سِيٗ	siyo	siyo						-li		focus		ba		
1118	103	105	d	3	سِيٗ	siyo	siyo						-li		focus		ba		
1647	151	153	d	2	نِٹِلِيَ	niţiliya	nitiliya					In other words, she is giving Ja'far her \\Swa{radhi} -- see 133c.  In order to leave, Ja'far must have this.  Hence the verse: \\Swa{mwate asumbuke / hana radhi ya mamake}, \\E{let him remain troubled / he does not have the blessing of his mother}.  Likewise, an unsuccessful person may be referred to as someone \\Swa{asiyekupata radhi ya babake}, \\E{sho did not get his father's blessing}.  However, \\Swa{watoto wa jeuri}, \\E{cheeky children}, will say things like \\Swa{radhi yako kaiweke mbuyuni}, \\E{stick your blessing in a baobab tree}. 	-ti-		verb	final	ba	imp	
2577	242	244	a	2	أُنَنِ	unani	unani		una-ni			= \\Swa{una nini?}.  See 305b, 330b.	-na		have	final	ba		
733	69	71	a	3	مْوِٹُنِ	mwiţuni	mwituni					Ali suggests going back with him to Mecca, but Ja'far wishes to take leave of his family first.  He must also ask permission of his teacher (122b), since he cannot leave the \\Swa{chuo}, \\E{school}, without being allowed.  See also the note to 129b.	-itu		noun	final	ba		
748	70	72	b	4	وَنْڠُ	wangu	wangu						-angu		poss	final	ba		
2681	251	253	a	2	مْوَكَ	mwaka	mwaka					\\Swa{mwaka}, \\E{year}, is used here to mean \\q{time} in general.  Compare \\Swa{saa} in 267d.	-aka		noun		ba		
829	77	79	b	4	وَكٖ	wake	wake					These stanzas show the great importance of the teacher in traditional Swahili life.  The Islamic teacher is greatly respected and honoured.  Ja'far, as a good-mannered child (\\Swa{mwana wa nasaba}, 126a), tells his teacher of his plans even before telling his mother.  Among the Swahili, to bring someone his shoes is humiliating, making you look like a servant, but to bring a teacher his shoes is a mark of respect, and not something humiliating. Teachers get prestige, but no money, and the more students they have, the more esteemed they are.  It is usual, indeed considered necessary, to stay with the same teacher, and to finish your course of instruction with him.  It is said of one important sheikh that he was forced to move his abode to the next town because of a quarrel.  Even though the next town was a fair distance away, all his original students from the first town came to his classes there.  But after a while, one of them stopped coming.  When he next saw this student, the teacher asked him the reason for this, and the student replied that he was prevented from attending the classes because his mother was sick, and, since caring for your parents is a duty in Islam, he had stayed at home to nurse her.  The teacher said that because the student was so dutiful he would have a long life, but since he had unfortunately missed the classes he would never be successful in teaching.  This prediction turned out to be true.	-ake		poss	final	ba		
741	69	71	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya						-amb-		verb	final	ba	ka	
1069	99	101	a	2	يُمُئِنِ	yumuini	yumuini		yu muini			i.e. that he has seen someone who might be his father.	-ji		noun	final	ba		
695	65	67	d	2	تهَكِمْبِيَ	tʰakimbiya	takimbiya						-kimb-		verb	final	ba	ki	
2304	214	216	d	2	هُوَپِسِيَ	huwapisiya	huwapisiya					Hasan has obviously not left yet in spite of Ali's comment in 281  (assuming Ali has even told him to fetch Husayn), because he is still greeting the visitors.	-pit-		verb	final	ba	hu	
1094	101	103	d	2	تَكْوَمْبِيَ	takwambiya	takwambiya						-amb-		verb	final	ba	ta	
255	22	24	b	5	وَنْڠُ	wangu	wangu					This is, at best, only half-true.  Note that \\Swa{kusema urongo asitete ni vizuri, si vibaya} -- that is, it is justifiable to tell white lies to console your spouse, or in the interests of conciliation and marital harmony.  For instance, once a husband arrived home late accompanied by a friend.  The wife asked the husband why he was late and became suspicious when he did not reply.  The friend saw trouble brewing and stepped in with the lie that the husband had been seeing about getting some money for her as a present, which of course placated her.	-angu		poss	final	ba		
1264	116	118	b	4	زَكٗ	zako	zako					Again, very rude.	-ako		poss	final	ba		
1466	134	136	c	3	زَنْڠُ	zangu	zangu						-angu		poss	final	ba		
498	46	48	d	2	زَلِكِمْوَمْبِيَ	zalikimwambiya	zalikimwambiya						-amb-		verb	final	ba	li	
2994	281	283	d	2	كُمْفُنْڠُلِيَ	kumfunguliya	kumfunguliya					When someone asks you directions, the Swahili consider it polite to accompany them to their destination, call the person they are looking for, and hand over the visitor to them: \\Swa{nakuletea mgeni wako}, \\E{I'm bringing your visitor to you}.  This is what Hamza does (352c).	-fung-		verb	final	ba	ku	
417	38	40	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
1392	127	129	d	3	نَمْبِيَ	nambiya	nambiya						-amb-		verb	final	ba	imp	
653	61	63	c	4	چَنْدَنِ	chandani	chandani						-anda		noun	final	ba		
1198	110	112	a	3	مْبَلِ	mbali	mbali						-bali		adv	final	ba		
1253	115	117	b	3	نَنِ	nani	nani					This is a rude response.  They are suspicious because he is being over-familiar, and yet they do not know him.	nani		int	final	ba		
1398	128	130	b	4	مْبَلِ	mbali	mbali						-bali		adv	final	ba		
2009	186	188	b	4	نَنِ	nani	nani						nani		int	final	ba		
2041	189	191	c	3	مْڠٖنِ	mgeni	mgeni						-geni		noun	final	ba		
2258	209	211	d	4	مٗيَ	moya	moya						-moja		num	final	ba		
2298	214	216	a	3	نْدَنِ	ndani	ndani						ndani		adv	final	ba		
2605	244	246	b	4	چَنْدَنِ	chandani	chandani						-anda		noun	final	ba		
3216	303	305	a	3	نْدَنِ	ndani	ndani						ndani		adv	final	ba		
24	3	3	a	3	نْدِيَنِ	ndiyani	ndiyani		ndiani				-jia		noun	final	ba		
130	13	13	b	2	نْيُمْبَنِ	nyumbani	nyumbani						-umb-		noun	final	ba		
491	46	48	a	2	كِجَنَ	kijana	kijana						-ana		noun	final	ba		
736	69	71	b	3	نْدِيَنِ	ndiyani	ndiyani		ndiani				-jia		noun	final	ba		
1144	105	107	c	3	مْفَنٗ	mfano	mfano					\\Swa{-piga mfano}, \\E{give an example of}.	-fan-		noun	final	ba		
2364	221	223	a	2	أَكَئِنُكَ	akainuka	akainuka						-inu-		verb	final	ba	ka	
2393	223	225	c	2	أَكَئِنُكَ	akainuka	akainuka						-inu-		verb	final	ba	ka	
2425	226	228	c	2	أَكَئِنُكَ	akainuka	akainuka						-inu-		verb	final	ba	ka	
75	7	7	d	2	هُكِسِكِيَ	hukisikiya	hukisikiya						-siki-		verb	final	ba	hu	
9	1	1	c	3	يُوَنِ	yuwani	yuwani						-ju-		verb	final	ba	imp	
3248	305	307	d	4	مَمٗيَ	mamoya	mamoya		mmoya	*			-moja		num	final	ba		
253	22	24	b	3	پْوٖكٖ	pweke	pweke						peke		adv		ba		
3101	291	293	d	2	پْوٖكٖ	pweke	pweke						peke		adv		ba		
3212	302	304	d	2	پْوٖكٖ	pweke	pweke						peke		adv		ba		
2919	274	276	c	2	پْوٖكٖ	pweke	pweke						peke		adv		ba		
2705	253	255	b	2	پْوٖكٖ	pweke	pweke						peke		adv		ba		
28	3	3	b	4	چُمْبَنِ	chumbani	chumbani					Atika probably went indoors to hide from Ali.  The custom is for  women to hide from men of their own status.  Therefore, if they hide when they see a man coming, the man will be pleased, because it is a compliment to him to be considered of noble status.  On the other hand, if the woman does not hide, the man may be angry, because he will think she is looking down on him. Thus, women will not hide from lascivious people, but only from those who aren't, because they are worthy of more respect.	-umb-		noun	final	ba		
46	5	5	a	3	كْوَكٖ	kwake	kwake						-ake		poss	final	ba		
50	5	5	b	4	وَكٖ	wake	wake						-ake		poss	final	ba		
2748	257	259	d	2	كُكْوَنْدَمِيَ	kukwandamiya	kukwandamiya						-andam-		verb	final	ba	ku	
43	4	4	d	2	كُمْڤَلِيَ	kumvaliya	kumvaliya						-va-		verb	final	ba	ku	
2951	277	279	c	4	كِپَٹَ	kipaţa	kipata						-pat-		verb	final	ba	ki	
394	36	38	c	2	كِلِيٗ	kiliyo	kiliyo						-li-		noun	final	ba		
338	30	32	d	3	نْدِيَ	ndiya	ndiya						-jia		noun	final	ba		
374	34	36	b	4	ڠَنِ	gani	gani						nini		qual	final	ba		
392	36	38	b	3	مُمٖئٗ	mumeo	mumeo						-ume		noun	final	ba		
401	37	39	b	3	يَنْڠُ	yangu	yangu						-angu		poss	final	ba		
405	37	39	c	4	يَنْڠُ	yangu	yangu						-angu		poss	final	ba		
419	39	41	a	2	بَبَنْڠُ	babangu	babangu						baba		noun	final	ba		
423	39	41	b	4	وَنْڠُ	wangu	wangu						-angu	[It was] my fault entirely,	poss	final	ba		
426	39	41	c	3	يَنْڠُ	yangu	yangu						-angu		poss	final	ba		
441	41	43	a	3	مٗيٗنِ	moyoni	moyoni						-oyo		noun	final	ba		
460	43	45	a	2	وَؤُنْڠْوَنَ	waungwana	waungwana						-ungwana		noun	final	ba		
516	48	50	c	3	مْوِٹُنِ	mwiţuni	mwituni						-itu		noun	final	ba		
328	29	31	d	2	زِمٖنِنْڠِيَ	zimeningiya	zimeningiya						-ingi-		verb	final	ba	me	
348	31	33	d	2	كُمْوَنْڠَلِيَ	kumwangaliya	kumwangaliya						-anga-		verb	final	ba	ku	
359	32	34	d	2	كُمْوَنْدَمِيَ	kumwandamiya	kumwandamiya					\\Swa{-andama}, \\E{follow someone directly, the two of you together}, but \\Swa{-andamia}, \\E{follow someone who has already gone ahead, so that each person is travelling alone}, = \\Swa{-fuatia}.	-andam-		verb	final	ba	ku	
449	41	43	d	3	كُنِٹِيَ	kuniţiya	kunitiya						-ti-		verb	final	ba	ku	
429	39	41	d	3	كُپٖنْدٖلٖيَ	kupendeleya	kupendeleya						-pend-		verb	final	ba	ku	
438	40	42	d	2	كُٹْوَنْڠَلِيَ	kuţwangaliya	kutwangaliya						-anga-		verb	final	ba	ku	
518	48	50	d	2	كُچَنْڠَلِيَ	kuchangaliya	kuchangaliya						-anga-		verb	final	ba	ku	
538	50	52	d	2	كُنِفُنُلِيَ	kunifunuliya	kunifunuliya					To annoy and frustrate him.	-fun-		verb	final	ba	ku	
378	34	36	d	2	أُكَمُأَمْكُوَ	ukamuamkuwa	ukamuamkuwa		ukamwamkuwa				-amku-		verb	final	ba	ka	
386	35	37	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
412	38	40	b	2	أَكَيَسُكُمَ	akayasukuma	akayasukuma						-sukum-		verb	final	ba	ka	
540	51	53	a	2	أَكَتَمْكَ	akatamka	akatamka						-tamk-		verb	final	ba	ka	
494	46	48	b	3	وَكِفَنَ	wakifana	wakifana						-fan-		verb	final	ba	ki	
469	43	45	d	2	نَلٗئِوَتِيَ	naloiwatiya	naloiwatiya						-ach-		verb	final	ba	li	
466	43	45	c	3	يَ	ya	ya						-a		ref		ba		
611	57	59	d	2	كُكُسٗمٖيَ	kukusomeya	kukusomeya						-som-		verb	final	ba	ku	
624	59	61	a	3	مْبَلِ	mbali	mbali						-bali		adv	final	ba		
627	59	61	b	3	مْبِلِ	mbili	mbili					For a small boy to be able to hold his own against Ali, the champion warrior, is no mean feat.	-wili		num	final	ba		
638	60	62	b	4	نَنِ	nani	nani						nani		int	final	ba		
649	61	63	b	4	نَنِ	nani	nani						nani		int	final	ba		
658	62	64	a	3	كْوَكٖ	kwake	kwake						-ake		poss	final	ba		
662	62	64	b	4	لَكٖ	lake	lake						-ake		poss	final	ba		
704	66	68	c	2	مَتُنْڠُ	matungu	matungu						-chungu		noun	final	ba		
786	73	75	c	3	مَمَكٗ	mamako	mamako						mama		noun	final	ba		
600	56	58	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya						-amb-		verb	final	ba	ka	
632	59	61	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya						-amb-		verb	final	ba	ka	
685	64	66	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya						-amb-		verb	final	ba	ka	
688	65	67	a	3	هُمُؤٗنَ	humuona	humuona						-on-		verb	final	ba	hu	
621	58	60	d	3	تهَكْوَمْبِيَ	tʰakwambiya	takwambiya						-amb-		verb	final	ba	ta	
1137	105	107	a	4	مَنٖنٗ	maneno	maneno						-nen-		noun	final	ba		
1141	105	107	b	4	مْنٗ	mno	mno						mno		adv	final	ba		
1042	96	98	c	3	ڠَنِ	gani	gani						nini		qual	final	ba		
1046	96	98	d	4	پِيَ	piya	piya					Amu \\Swa{piya} = Mvita \\Swa{mpya}.	pia		adv	final	ba		
1061	98	100	b	3	هَكٗ	hako	hako					\\Swa{hako} is the negative form of \\Swa{yuko}, \\E{he is there}, just as \\Swa{siko} is the negative form of \\Swa{niko}, \\E{I am there}.	LOC		loc	final	ba		
1065	98	100	c	4	يَكٗ	yako	yako						-ako		poss	final	ba		
1071	99	101	b	2	مَنْڠِنٖ	mangine	mangine						-ingine		qual	final	ba		
1089	101	103	b	2	مْوِٹُنِ	mwiţuni	mwituni						-itu		noun	final	ba		
1186	109	111	a	3	مٗيٗنِ	moyoni	moyoni						-oyo		noun	final	ba		
1231	113	115	a	5	زُرِ	zuri	zuri					Even though he is only a child, Ja'far gives advice to the men.	-zuri		adj	final	ba		
1113	103	105	b	4	كِتْوَنِ	kitwani	kitwani						-chwa		noun	final	ba		
1115	103	105	c	2	أُپَآنِ	upaãni	upaani					lit. \\q{does not grow on the bald patch [that he has]}.  \\Swa{ana upaa [mkubwa]}, \\E{he's bald}.	-paa		noun	final	ba		
1034	95	97	d	2	زِمٖكُپٗتٖيَ	zimekupoteya	zimekupoteya					lit. \\q{[your] features have changed}.  \\Swa{-poteya} here = \\Swa{-geuka, -badilika}.	-pote-		verb	final	ba	me	
1146	105	107	d	2	نِمٖكُپِجِيَ	nimekupijiya	nimekupijiya						-pig-		verb	final	ba	me	
1058	98	100	a	2	أَلِكٗ	aliko	aliko						-li		verb	final	ba	li	
1152	106	108	b	4	يَلِيٗ	yaliyo	yaliyo						-li		verb	final	ba	li	
1003	92	94	d	2	كُمْٹَنْڠُلِيَ	kumţanguliya	kumtanguliya						-tanguli-		verb	final	ba	ku	
1075	99	101	d	2	كُئِنْيَمَزِيَ	kuinyamaziya	kuinyamaziya						-nyama-		verb	final	ba	ku	
1073	99	101	c	2	وَفٖنٖ	wafene	wafene						-fan-		verb	final	ba	past	
1119	103	105	d	4	نَمْبِيَ	nambiya	nambiya						-amb-		verb	final	ba	imp	
1105	102	104	d	3	أَنْڠَلِيَ	angaliya	angaliya						-anga-		verb	final	ba	imp	
128	13	13	a	2	مُعَيَنِ	muʿayani	muayani						3-a-n		adv	final	ar		
513	48	50	b	2	مُعَيَنِ	muʿayani	muayani					lit. \\q{clearly}.	3-a-n		adv	final	ar		
1092	101	103	c	3	مُعَيَنِ	muʿayani	muayani						3-a-n		adv	final	ar		
1266	116	118	c	2	مَتَمْكٗ	matamko	matamko						-tamk-		noun	final	ba		
1404	128	130	d	3	كُئِٹِيَ	kuiţiya	kuitiya					Because Ali has covered it up.	-ti-		verb	final	ba	ku	
1307	120	122	a	2	وَكَسِمَمَ	wakasimama	wakasimama						-simam-		verb	final	ba	ka	
1324	121	123	d	3	هُنَنْڠَلِيَ	hunangaliya	hunangaliya						-anga-		verb	final	ba	hu	
1339	123	125	a	2	مْبُجِ	mbuji	mbuji						-buji		noun	final	ba		
1378	126	128	c	3	يَنِ	yani	yani						-ani		noun	final	ba		
1389	127	129	c	4	نْيٗٹَ	nyoţa	nyota						nyota		noun	final	ba		
1433	131	133	c	3	وَكَپِٹَ	wakapiţa	wakapita						-pit-		verb	final	ba	ka	
1427	131	133	a	2	أُسِٹَ	usiţa	usita					\\Swa{usita} = \\Swa{barabara}.	-sita		noun	final	ba		
2746	257	259	c	2	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn	final	ar		
3052	287	289	b	4	چَكٖ	chake	chake						-ake		poss	final	ba		
1991	184	186	c	2	كَفَسِرِ	kafasiri	kafasiri						f-s-r		verb	final	ar	ka	
77	8	8	a	2	مْشَوَشَ	mshawasha	mshawasha						sh-a-sh		noun	final	ar		
1951	180	182	d	3	كْوَ	kwa	kwa						-a		ref		ba		
1492	136	138	d	3	كُكُمْبِيَ	kukumbiya	kukumbiya		kukimbiya				-kumb-		verb	final	ba	ku	
1852	171	173	a	4	عَقِلِ	ʿaqili	aqili		akili				3-q-l		noun	final	ar		
2449	229	231	b	3	بَعِيْدِ	baʿı̄di	baidi					\\Swa{baidi} = \\Swa{mbali}, \\E{far}, but here it has the meaning \\q{yet}.  i.e. Ali is going to be there for a while, so she will tell him now.	b-3-d		adv	final	ar		
1438	132	134	a	3	كِسِمَ	kisima	kisima						-sima		noun	final	ba		
3114	293	295	b	2	نَلِئِعَبِرِ	naliiʿabiri	naliiabiri						3-b-r		verb	final	ar	li	
1459	134	136	a	4	وَنْڠُ	wangu	wangu						-angu		poss	final	ba		
1463	134	136	b	4	وَنْڠُ	wangu	wangu						-angu		poss	final	ba		
1524	140	142	b	2	بَبَنْڠُ	babangu	babangu						baba		noun	final	ba		
1308	120	122	b	1	أُسٗ	uso	uso						-so	and looked at my face.	noun		ba		
1496	137	139	b	2	كِسِمَنِ	kisimani	kisimani						-sima		noun	final	ba		
1522	140	142	a	2	مْنْڠُ	mngu	mngu		Mngu				-ngu		godn	final	ba		
1527	140	142	c	3	يَنْڠُ	yangu	yangu						-angu		poss	final	ba		
1534	141	143	b	3	هَلِمَمَ	halimama	halimama						halimama		noun	final	ba		
1603	147	149	b	3	بَبَنْڠُ	babangu	babangu						baba		noun	final	ba		
1607	147	149	c	4	وَنڠُ	wangu	wangu						-angu		poss	final	ba		
1678	154	156	b	4	تِنِ	tini	tini						-chi		adv	final	ba		
2942	276	278	d	2	عَطِيَ	ʿaṭiya	atiya		Atiya				3-tw-k		persn	final	ar		
2968	279	281	b	3	أَتْوِكَ	atwika	atwika		Atika				3-tw-k		persn	final	ar		
3134	295	297	b	3	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn	final	ar		
3160	297	299	c	3	عَطِكَ	ʿaṭika	atika		Atika				3-tw-k		persn	final	ar		
3187	300	302	c	2	عَطِكَ	ʿaṭika	atika		Atika				3-tw-k		persn	final	ar		
3213	302	304	d	3	عَطِيَ	ʿaṭiya	atiya		Atiya				3-tw-k		persn	final	ar		
1536	141	143	c	2	يَ	ya	ya						-a		ref		ba		
1556	143	145	b	5	يَكٗ	yako	yako						-ako		poss	final	ba		
1559	143	145	c	3	تَمْكٗ	tamko	tamko						-tamk-		noun	final	ba		
1564	144	146	a	2	نْيَكَ	nyaka	nyaka						-aka		noun	final	ba		
111	11	11	b	2	فَاطِمَه	fāṭimah	fatimah		Fatima				f-t-m		persn	final	ar		
1321	121	123	c	2	وَمٖتَعَجَبُ	wametaʿajabu	wametaajabu						3-j-b		verb	final	ar	me	
1853	171	173	b	1	نِمٖزٗيَتَأَمَلِ	nimezoyataamali	nimezoyataamali						a-m-l	[the things] which I observed.	verb	final	ar	me	
1597	146	148	d	3	كُنِوٖيَ	kuniweya	kuniweya		kunieleya				-ele-		verb	final	ba	ku	
1609	147	149	d	2	كُوَنْڠَلِيَ	kuwangaliya	kuwangaliya		kuangaliya				-anga-		verb	final	ba	ku	
1081	100	102	b	3	هُكُئِسِ	hukuisi	hukuisi						-is-		verb	final	ba	a	y
1381	126	128	d	3	هَلِيَ	haliya	haliya		huliya	*			-li-		verb	final	ba	hu	
2929	275	277	c	2	أَسِپٗفَهَمُ	asipofahamu	asipofahamu						f-h-m		verb	final	ar	ki	y
1375	126	128	b	2	سِيَؤٗنِ	siyaoni	siyaoni						-on-		verb	final	ba	me	y
921	85	87	c	2	كَتَعَجَبُ	kataʿajabu	kataajabu						3-j-b		verb	final	ar	ka	
1933	179	181	a	2	كَتَعَجَبُ	kataʿajabu	kataajabu						3-j-b		verb	final	ar	ka	
1441	132	134	b	3	كَسُكُمَ	kasukuma	kasukuma						-sukum-		verb	final	ba	ka	
273	24	26	a	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
292	26	28	a	2	أَكَؤُذِكَ	akaudhika	akaudhika						3-zw-zw		verb	final	ar	ka	
1873	173	175	a	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
1969	182	184	c	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
2011	186	188	c	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
2110	196	198	a	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
2695	252	254	b	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
2757	258	260	c	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
1531	141	143	a	2	أَكَئِٹِزَمَ	akaiţizama	akaitizama						-tazam-		verb	final	ba	ka	
1448	133	135	a	2	أَتَمْكٖ	atamke	atamke					Past tense.	-tamk-		verb	final	ba	past	
2940	276	278	c	3	كِعَبِرِ	kiʿabiri	kiabiri					i.e. going to every house and calling \\Swa{hodi!}  Zubayr is trying to find the \\Swa{mwalimu}'s house, to deliver his second letter (273b, 275).  He could not simply ask Atika where it was, because he was told by Ali not to speak to the recipients (273c/d).	3-b-r		verb	final	ar	ki	
2548	239	241	b	2	هُكُؤُذِيَنِ	hukuudhiyani	hukuudhiyani		hukuudhia-ni				3-zw-zw		verb	final	ar	hu	
3228	304	306	b	2	هُتٗؤُذِكَ	hutoudhika	hutoudhika						3-zw-zw		verb	final	ar	hu	
1474	135	137	b	3	هُتٖكَ	huteka	huteka						-chek-		verb	final	ba	hu	
1498	137	139	c	2	هُفَلِيَنِ	hufaliyani	hufaliyani		hufalia-ni				-fa-		verb	final	ba	hu	
2623	246	248	a	3	نٖنْڠٖكُؤُذِ	nengekuudhi	nengekuudhi						3-zw-zw		verb	final	ar	nge	
1494	137	139	a	2	إٖنٖنْدَنِ	enendani	enendani						-end-		verb	final	ba	imp	
1157	106	108	d	2	كُمْفَهَمِيَ	kumfahamiya	kumfahamiya						f-h-m		verb	final	ar	ku	
139	14	14	b	3	فَاطِمَه	fāṭimah	fatimah		Fatima				f-t-m		persn	final	ar		
219	21	21	c	3	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn	final	ar		
354	32	34	b	4	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn	final	ar		
1751	160	162	d	2	كُمْوَنْڠَلِيَ	kumwangaliya	kumwangaliya						-anga-		verb	final	ba	ku	
803	75	77	a	3	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn	final	ar		
2899	272	274	d	2	عَطِيَ	ʿaṭiya	atiya		Atiya			\\q{Atika} is changed to \\q{Atiya} at the end of the line for the sake of the rhyme.  See also 278d, 293d, and 304d	3-tw-k		persn	final	ar		
1639	151	153	a	4	وَنْڠُ	wangu	wangu						-angu		poss	final	ba		
1641	151	153	b	2	مْوَنَنْڠُ	mwanangu	mwanangu						-ana		noun	final	ba		
500	47	49	a	2	وَلِكِنُكُرِ	walikinukuri	walikinukuri		walikidhukuri	*			dh-k-r		verb	final	ar	li	
1300	119	121	c	2	وٖوٖ	wewe	wewe						wewe		pron		ba		
1674	154	156	a	3	نْيَؤٗنِ	nyaoni	nyaoni					lit. \\q{take care that you are under his feet}.  That is, be humble, and also obedient.	-ayo		noun	final	ba		
1723	158	160	a	2	مِكٗنٗ	mikono	mikono					They all eat from the same bowl, since this is a special day -- Ja'far is leaving.  When you do not know if you will meet again, sharing a meal brings a special feeling of closeness.	-kono		noun	final	ba		
1743	160	162	a	2	أُپٖسِ	upesi	upesi						-pesi		noun	final	ba		
2662	249	251	a	3	مْڠٖنِ	mgeni	mgeni						-geni		noun	final	ba		
2192	203	205	c	2	مْٹٖنْدٖ	mţende	mtende						-tende		noun		ba		
174	17	17	c	2	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn	final	ar		
1566	144	146	b	2	هَكِكَ	hakika	hakika						hh-q-q		adv	final	ar		
2282	212	214	b	2	هَكِكَ	hakika	hakika						hh-q-q		adv	final	ar		
2349	219	221	c	3	هَكِكَ	hakika	hakika						hh-q-q		adv	final	ar		
2389	223	225	a	4	هَكِكَ	hakika	hakika						hh-q-q		noun	final	ar		
2613	245	247	a	3	هَكِكَ	hakika	hakika						hh-q-q		adv	final	ar		
1768	162	164	c	2	مَٹٖ	maţe	mate					Making gentle spitting sounds (\\Eit{pp-pp-pp}) at him, \\Swa{-mtia mate}, signifies that she thinks he is \\Swa{sharifu}, \\E{noble}, and to be admired.	-te		noun	final	ba		
1804	166	168	b	2	تَمْكٗ	tamko	tamko						-tamk-		noun	final	ba		
1807	166	168	c	3	وَكٗ	wako	wako						-ako		poss	final	ba		
1812	167	169	a	3	مَتُنْڠَنِ	matungani	matungani						-tung-		noun	final	ba		
1823	168	170	b	1	بَسِ	basi	basi						b-s	So why are you crying?	conj		ar		
1809	166	168	d	2	نَلِيَسِكِيَ	naliyasikiya	naliyasikiya						-siki-		verb	final	ba	li	
2794	262	264	b	2	كَفَهَمَ	kafahama	kafahama						f-h-m		verb	final	ar	ka	
1754	161	163	a	3	كَتَمْكَ	katamka	katamka						-tamk-		verb	final	ba	ka	
1036	96	98	a	2	أَكَبَئِنِ	akabaini	akabaini					\\Swa{-baini} = \\Swa{-sema}.	b-a-n		verb	final	ar	ka	
2252	209	211	b	2	أَكَفَهَمَ	akafahama	akafahama						f-h-m		verb	final	ar	ka	
1311	120	122	c	2	مُكِمْفَهَمَ	mukimfahama	mukimfahama						f-h-m		verb	final	ar	ki	
1757	161	163	b	3	هُتٗكَ	hutoka	hutoka					= \\Swa{natoka}.	-to-		verb	final	ba	hu	
1797	165	167	c	2	هَنْڠَلِتٗكَ	hangalitoka	hangalitoka						-to-		verb	final	ba	ngali	y
950	88	90	a	3	سِؤُذِكٖ	siudhike	siudhike						3-zw-zw		verb	final	ar	imp	y
1770	162	164	d	2	أَكِمُؤٗمْبٖيَ	akimuombeya	akimuombeya						-omb-		verb	final	ba	ki	
1731	158	160	d	2	أَكِمْوَمْبِيَ	akimwambiya	akimwambiya						-amb-		verb	final	ba	ki	
1741	159	161	d	2	تَكُلٖٹٖيَ	takuleţeya	takuleteya						-let-		verb	final	ba	ta	
1781	163	165	d	3	تَكْوٖٹٖيَ	takweţeya	takweteya						-let-		verb	final	ba	ta	
1671	153	155	d	4	زٖنْڠٖيَ	zengeya	zengeya					\\Swa{-zengeya} = \\Swa{-tafuta}.  She is telling him: \\Swa{fanya bidii kupata radhi ya Ali}, \\E{make an effort to secure Ali's blessing}.	-zeng-		verb	final	ba	imp	
887	82	84	b	2	أَيَفَهَمُ	ayafahamu	ayafahamu						f-h-m		verb	final	ar	a	
811	75	77	d	2	نَوَفَهَمِيَ	nawafahamiya	nawafahamiya					\\Swa{-fahamia}, \\E{know of someone, hear about someone, while not knowing them personally}.	f-h-m		verb	final	ar	a	
1414	129	131	c	3	فَهَمُ	fahamu	fahamu						f-h-m		verb	final	ar	imp	
1766	162	164	b	2	أَمْفُوَتٖ	amfuwate	amfuwate		amfuate				-fuat-		verb	final	ba	past	
1764	162	164	a	3	أَتٗكٖ	atoke	atoke					Past tense.	-to-		verb	final	ba	past	
294	26	28	b	2	كُكَسِرِكَ	kukasirika	kukasirika						hh-s-r		verb	final	ar	ku	
380	35	37	a	2	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn	final	ar		
410	38	40	a	3	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn	final	ar		
531	50	52	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
1078	100	102	a	3	فَرِسِ	farisi	farisi					\\Swa{farisi}, \\E{clever, skilful}, originally meant \\q{horseman, rider}, for which skill is necessary.  Compare \\Swa{farasi}, \\E{horse}, 228b.  Both words are related to \\AS{فرس}, \\E{Persians}, who were renowned for their heavy cavalry.	f-r-s		adj	final	ar		
1298	119	121	b	3	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn	final	ar		
1328	122	124	a	4	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn	final	ar		
2134	198	200	b	2	مْٹٖنْدٖ	mţende	mtende						-tende		noun		ba		
2197	204	206	a	2	يَ	ya	ya						-a		ref		ba		
2243	208	210	c	1	كْوَ	kwa	kwa						-a	and made a sign with her hand	ref		ba		
2429	227	229	a	2	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn	final	ar		
2559	240	242	b	4	حَرَمُ	ḥaramu	haramu						hh-r-m		adj	final	ar		
2259	210	212	a	1	كْوَ	kwa	kwa						-a	When he entered the inner [room]	ref		ba		
1840	170	172	a	2	تَمْكٗ	tamko	tamko						-tamk-		noun	final	ba		
1843	170	172	b	3	يَكٗ	yako	yako						-ako		poss	final	ba		
1846	170	172	c	3	نِكٗ	niko	niko						LOC		loc	final	ba		
1863	172	174	a	2	نْدُيَكٖ	nduyake	nduyake						-dugu		noun	final	ba		
1926	178	180	b	4	نَنِ	nani	nani						nani		int	final	ba		
1967	182	184	b	3	نْيَانِ	nyāni	nyani						nani		int	final	ba		
2046	190	192	a	3	مْزُرِ	mzuri	mzuri						-zuri		adj	final	ba		
2078	193	195	a	3	تَمْكٗ	tamko	tamko						-tamk-		noun	final	ba		
2084	193	195	c	3	وَكٗ	wako	wako						-ako		poss	final	ba		
2115	196	198	c	3	ڠَنِ	gani	gani						nini		qual	final	ba		
2129	197	199	d	4	نْدِيَ	ndiya	ndiya						-jia		noun	final	ba		
2132	198	200	a	3	پَنْڠٗنِ	pangoni	pangoni						-pango		noun	final	ba		
2137	198	200	c	2	مٗيٗنِ	moyoni	moyoni					i.e. \\Swa{nilisahau}, \\E{I forgot}.	-oyo		noun	final	ba		
2274	211	213	d	1	كْوَ	kwa	kwa						-a	because of the hardships of the journey.	ref		ba		
3312	306	314	b	2	جَوَبُ	jawabu	jawabu						j-a-b		noun	final	ar		
2175	202	204	a	3	زَنْڠُ	zangu	zangu						-angu		poss	final	ba		
2178	202	204	b	3	لَنْڠُ	langu	langu						-angu		poss	final	ba		
2181	202	204	c	3	پَنْڠُ	pangu	pangu						-angu		poss	final	ba		
2237	207	209	d	4	مْمٗيَ	mmoya	mmoya					\\Swa{mtu mmoya si sawasawa na watu wengi}, \\E{one person is no match for many}.	-moja		num	final	ba		
2323	217	219	a	2	مَتَمْكٗ	matamko	matamko						-tamk-		noun	final	ba		
1355	124	126	c	1	مِمِ	mimi	mimi						mimi	I am Ja'far,	pron		ba		
1892	174	176	d	3	أَمٖنْڠِيَ	amengiya	amengiya						-ingi-		verb	final	ba	me	
2043	189	191	d	2	كُكْوَنْدَمِيَ	kukwandamiya	kukwandamiya					= \\Swa{nimetumwa kukufuatia}.	-andam-		verb	final	ba	ku	
2615	245	247	b	2	أُكَكَسِرِكَ	ukakasirika	ukakasirika						hh-s-r		verb	final	ar	ka	
1993	184	186	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya					= \\Swa{-itikia}.	-pok-		verb	final	ba	ka	
2062	191	193	b	3	كَيَنْدَمَ	kayandama	kayandama						-andam-		verb	final	ba	ka	
2066	191	193	d	2	كَوَپِسِيَ	kawapisiya	kawapisiya					\\Swa{-pisiya} = \\Swa{-pitisha}.  In other words, he said \\Swa{salaam alekum}.	-pit-		verb	final	ba	ka	
2075	192	194	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya						-pok-		verb	final	ba	ka	
1915	177	179	b	2	أَكَسِمَمَ	akasimama	akasimama						-simam-		verb	final	ba	ka	
1868	172	174	c	2	أَتَمْكٖ	atamke	atamke						-tamk-		verb	final	ba	past	
2139	198	200	d	2	وَلٗنَمْبِيَ	walonambiya	walonambiya						-amb-		verb	final	ba	li	
1866	172	174	b	3	أُتٗكٖ	utoke	utoke						-to-		verb	final	ba	past	
432	40	42	a	3	أَلٗنِغُرِ	alonighuri	alonighuri						gh-r-r		verb	final	ar	li	
21	2	2	d	2	چَلٗنِجِرِيَ	chalonijiriya	chalonijiriya						j-r-y		verb	final	ar	li	
2033	188	190	d	2	نَمْكُلِيَ	namkuliya	namkuliya					= \\Swa{nimtia, namwita}.	-amku-		verb	final	ba	a	
1403	128	130	d	2	نْدٗوْ	ndoo	ndoo						-j-		verb		ba	imp	
1613	148	150	b	2	أَسِحِمِلِ	asiḥimili	asihimili						hh-m-l		verb	final	ar	past	y
2064	191	193	c	2	أَكِكٗمَ	akikoma	akikoma						-kom-		verb	final	ba	ki	
326	29	31	c	2	سِهِمِلِ	sihimili	sihimili						hh-m-l		verb	final	ar	a	y
2087	193	195	d	3	نَمْبِيَ	nambiya	nambiya						-amb-		verb	final	ba	imp	
1857	171	173	c	4	تُلِ	tuli	tuli		~				-li		noun	final	ba		
1946	180	182	b	3	نِپٖكٖنِ	nipekeni	nipekeni						-pelek-		verb	final	ba	subj	
1894	175	177	a	2	أَلِپٗجِلِسِ	alipojilisi	alipojilisi					\\Swa{-jilisi} = \\Swa{-keti}.	j-l-s		verb	final	ar	li	
2404	224	226	c	4	كِكٗمْبٖنِ	kikombeni	kikombeni						-komb-		noun	final	ba		
1238	113	115	c	4	أَخِرِ	akhiri	ahiri					lit. \\q{end}.	kh-kh-r		adj	final	ar		
1290	118	120	c	4	جَهِلِ	jahili	jahili					\\Swa{jahili}, \\E{someone ignorant of the truth}, in this case of Islam.	j-h-l		adj	final	ar		
1594	146	148	c	3	جَبَارِ	jabāri	jabari		Jabari				j-b-r		godn	final	ar		
2219	206	208	a	3	هَشِمَ	hashima	hashima		Hashima				h-sh-m		title	final	ar		
2332	217	219	d	3	جَلِيَ	jaliya	jaliya		Jaliya				j-l-l		godn	final	ar		
2541	238	240	c	3	خَطَرِ	khaṭari	hatari						kh-tw-r		noun	final	ar		
2570	241	243	b	3	فَطُمَ	faṭuma	fatuma		Fatuma				f-t-m		persn	final	ar		
2434	227	229	c	3	نْيُمَ	nyuma	nyuma						nyuma		adv	final	ba		
2507	235	237	a	2	مْلَنْڠٗنِ	mlangoni	mlangoni						-lango		noun	final	ba		
2336	218	220	b	2	كْوَ	kwa	kwa						-a		ref		ba		
795	74	76	b	2	مَرْحَبَا	marḥabā	marhaba		marahaba				r-hh-b		noun	final	ar		
988	91	93	c	4	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r		persn	final	ar		
1020	94	96	c	4	هَرَبُ	harabu	harabu						kh-r-b		adj	final	ar		
1795	165	167	b	3	مَكَه	makah	makah		Maka			Nasir is not stupid, and sees through her words.	m-k-k		placen	final	ar		
1875	173	175	b	2	مَنَنِ	manani	manani		Manani				m-n-n		godn	final	ar		
2205	204	206	c	4	أَخِيْرِ	akhı̄ri	ahiri						kh-kh-r		adj	final	ar		
2312	215	217	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya						-amb-		verb	final	ba	ka	
2420	226	228	a	3	كُتٗكَ	kutoka	kutoka						-to-		verb	final	ba	ku	
2455	229	231	d	3	كُكْوَمْبِيَ	kukwambiya	kukwambiya						-amb-		verb	final	ba	ku	
2468	231	233	a	3	كُفِكَ	kufika	kufika						-fik-		verb	final	ba	ku	
836	78	80	a	2	كُيَنُظُمُ	kuyanuẓumu	kuyanudhumu					\\Swa{-nudhumu} usually means \\q{compose}, (\\Swa{-tunga}), but here it means \\q{explain}, (\\Swa{-eleza}).	n-dw-m		verb	final	ar	ku	
1368	125	127	c	3	كَوَجِبُ	kawajibu	kawajibu						j-a-b		verb	final	ar	ka	
2406	224	226	d	2	أَكَسُكُتُوَ	akasukutuwa	akasukutuwa					After eating, you rinse your mouth with water and spit it out.	-sukut-		verb	final	ba	ka	
1937	179	181	c	2	كَمْجِبُ	kamjibu	kamjibu						j-a-b		verb	final	ar	ka	
2417	225	227	d	2	أَكَئِتٗكٖيَ	akaitokeya	akaitokeya						-to-		verb	final	ba	ka	
2471	231	233	b	3	كَتَمْكَ	katamka	katamka						-tamk-		verb	final	ba	ka	
2035	189	191	a	2	كَتٗكَ	katoka	katoka						-to-		verb		ba	ka	
1631	150	152	b	2	كَرِيْمُ	karı̄mu	karimu		Karimu				k-r-m		godn	final	ar		
3042	286	288	c	3	كَرِيْمُ	karı̄mu	karimu		Karimu				k-r-m		godn	final	ar		
340	31	33	a	2	أَكَجِلِسِ	akajilisi	akajilisi					\\Swa{-jilisi} = \\Swa{-keti}.  The Prophet is being subtle, and pretends he does not know what has happened, so that he can get to the bottom of things.	j-l-s		verb	final	ar	ka	
2431	227	229	b	2	أَكَئِٹِزَمَ	akaiţizama	akaitizama						-tazam-		verb	final	ba	ka	
2438	228	230	a	2	أَكَتَمْكَ	akatamka	akatamka						-tamk-		verb	final	ba	ka	
2465	230	232	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
2321	216	218	d	2	وَكَمْپٗكٖيَ	wakampokeya	wakampokeya					i.e. answered \\Swa{wa alekum as-salaam}.	-pok-		verb	final	ba	ka	
1831	169	171	a	3	هُكِرِضِكَ	hukiriḍika	hukiridhika						r-a-zw		verb	final	ar	ki	
3276	308	310	c	2	كِجِتَهِدِ	kijitahidi	kijitahidi						j-h-d		verb	final	ar	ki	
2273	211	213	c	2	هُمْپَپَٹِكَ	humpapaţika	humpapatika						-pap-		verb	final	ba	hu	
1316	121	123	a	2	هُنِجِبُ	hunijibu	hunijibu		humjibu	*			j-a-b		verb	final	ar	hu	
1200	110	112	b	2	تَئِمُهُلِ	taimuhuli	taimuhuli		tayimuhuli			\\Swa{-yi-muhuli} = \\Swa{-ji-ngojesha}.	m-h-l		verb	final	ar	ta	
1050	97	99	b	2	أُتَنِجِبُ	utanijibu	utanijibu						j-a-b		verb	final	ar	ta	
484	45	47	b	3	يَلٗجِرِ	yalojiri	yalojiri						j-r-y		verb	final	ar	li	
1692	155	157	c	3	جِتَهِدِ	jitahidi	jitahidi						j-h-d		verb	final	ar	imp	
2476	231	233	d	3	نَكْوَمْبِيَ	nakwambiya	nakwambiya						-amb-		verb	final	ba	a	
2495	233	235	d	3	نَسِكِيَ	nasikiya	nasikiya						-siki-		verb	final	ba	a	
1014	94	96	a	3	أَجِبُ	ajibu	ajibu						j-a-b		verb	final	ar	a	
1775	163	165	b	2	أَهِتِمُ	ahitimu	ahitimu					\\Swa{kumaliza Kurani}.	kh-t-m		verb	final	ar	subj	
2446	229	231	a	2	َكَرَدِدِ	akaradidi	akaradidi						r-d-d		verb	final	ar	ka	
2667	249	251	c	3	مَيْتِنِ	maytini	maytini		miyateni	*			m-a-y		num	final	ar		
2853	268	270	c	2	مَنَّانِ	mannāni	mannani		Manani			\\Swa{ela Manani tu}.  \\Swa{Manani} < \\AS{المنّان}, the Benevolent One, < \\AS{مَنُّ}, \\E{bestow favours}.	m-n-n		godn	final	ar		
2503	234	236	c	3	تَمْكِنِ	tamkini	tamkini					= \\Swa{hakika}, \\E{certainly}.	m-k-n		adv	final	ar		
2473	231	233	c	2	أَمٖكَسِرِكَ	amekasirika	amekasirika						hh-s-r		verb	final	ar	me	
2892	272	274	a	2	أَسِجِلِسِ	asijilisi	asijilisi					i.e. Zubayr did not sit and wait.	j-l-s		verb	final	ar	past	y
2167	201	203	b	3	سِئِيٗنِ	siiyoni	siiyoni		siioni				-on-		verb	final	ba	a	y
2005	186	188	a	3	سِمُؤٗنِ	simuoni	simuoni						-on-		verb	final	ba	a	y
89	9	9	b	3	تَمْكِنِ	tamkini	tamkini					\\Swa{tamkini = hakika, kweli}	m-k-n		adv	final	ar		
231	22	22	c	2	تَمْكِنِ	tamkini	tamkini						m-k-n		adv	final	ar		
275	24	26	b	2	تَمْكِنِ	tamkini	tamkini						m-k-n		adv	final	ar		
919	85	87	b	4	تَرَتِبُ	taratibu	taratibu					Ja'far is trying to sneak back into the house.  He is apprehensive about what he is going to tell his mother, and is also hurt that she did not tell him the full story about his past (150-1).	r-t-b		noun	final	ar		
6	1	1	b	3	رَحْمٰنِ	raḥmäni	rahmani		rahamani				r-hh-m		godn	final	ar		
331	30	32	a	3	سَيِدِ	sayidi	sayidi		Sayidi				s-3-d		title	final	ar		
511	48	50	a	2	مَنَانِ	manāni	manani		Manani				m-n-n		godn	final	ar		
2588	243	245	a	2	تَمْكٗ	tamko	tamko						-tamk-		noun	final	ba		
2592	243	245	b	4	يَكٗ	yako	yako						-ako		poss	final	ba		
2596	243	245	c	4	چَكٗ	chako	chako					It is said: \\Swa{mtu mzima, huwezi kumdanganya}, \\E{you cannot hoodwink a mature person}.  Ali is telling Fatima: \\Swa{usinihadae, mimi si mtoto}, \\E{don't try to fool me, I am not a child}.  He knows something is troubling her, and wants her to say what it is.	-ako		poss	final	ba		
1269	117	119	a	1	وٖوٖ	wewe	wewe						wewe	Are you a human being,	pron		ba		
2533	237	239	d	3	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn	final	ar		
2840	267	269	b	3	رَبُك	rabuk	rabuk		Rabuka	*			r-b-b		godn	final	ar		
2958	278	280	b	3	عُمَرِ	ʿumari	umari		Umari				3-m-r		persn	final	ar		
2973	279	281	d	3	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn	final	ar		
3016	283	285	d	3	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn	final	ar		
3088	290	292	c	3	عَطِكَ	ʿaṭika	atika		Atika				3-tw-k		persn	final	ar		
3090	290	292	d	2	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn	final	ar		
2644	247	249	c	2	أُمٖكُبَلِ	umekubali	umekubali						q-b-l		verb	final	ar	me	
3102	291	293	d	3	عَلِيَ	ʿaliya	aliya		Atiya	*			3-l-y		persn	final	ar		
3254	306	308	b	3	عَطِكَ	ʿaṭika	atika		Atika				3-tw-k		persn	final	ar		
1362	125	127	a	2	تَرَتِبُ	taratibu	taratibu						r-t-b		adv	final	ar		
1401	128	130	c	3	ثَقِلِ	thaqili	thaqili						th-q-l		noun	final	ar		
2607	244	246	c	2	كِسِمَنِ	kisimani	kisimani						-sima		noun	final	ba		
38	4	4	b	2	زَيْدَنِ	zaydani	zaydani		zaidani				z-a-d		adv	final	ar		
396	36	38	d	2	الزَّهْرِيَّة	zzahrı̄yaẗ	zzahriyat		az-Zahariya				z-h-r		adj	final	ar		
489	45	47	d	3	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn	final	ar		
474	44	46	b	3	كُنِزِدِ	kunizidi	kunizidi						z-a-d		verb	final	ar	ku	
3272	308	310	a	3	أَلِپٗرُدِ	aliporudi	aliporudi						r-d-d		verb	final	ar	li	
3274	308	310	b	2	أَلِپٗرَدِدِ	aliporadidi	aliporadidi						r-d-d		verb	final	ar	li	
3164	298	300	a	2	كَمْكَلِفِشَ	kamkalifisha	kamkalifisha					\\Swa{-kalifisha} =  \\Swa{-lazimisha}.	k-l-f		verb	final	ar	ka	
2567	241	243	a	3	كَسٖمَ	kasema	kasema						-sem-		verb	final	ba	ka	
2575	241	243	d	2	كَمُئٖنْدٖيَ	kamuendeya	kamuendeya						-end-		verb	final	ba	ka	
2583	242	244	c	3	كُنِ	kuni	kuni		kwani	*		\\Swa{kwani}, \\E{why?}.	nini		int	final	ba		
2555	240	242	a	2	أَكَنُطُمُ	akanuṭumu	akanutumu		akanudhumu	*		Fatima supports the point Ali is making to his children -- they should not be ashamed of Ja'far.	n-dw-m		verb	final	ar	ka	
2927	275	277	b	3	هُسَلِمُ	husalimu	husalimu					It is dangerous for a woman to be out alone at night, but she is grief-stricken.	s-l-m		verb	final	ar	hu	
3037	286	288	a	2	كِنُظُمُ	kinuẓumu	kinudhumu						n-dw-m		verb	final	ar	ki	
2610	244	246	d	3	هُٹِيَ	huţiya	hutiya						-ti-		verb	final	ba	hu	
271	23	25	d	2	تهَرِضِيَ	tʰariḍiya	taridhiya						r-a-zw		verb	final	ar	ta	
454	42	44	b	3	تهَنُظُمُ	tʰanuẓumu	tanudhumu					\\Swa{nuzumu}, \\E{compose}.	n-dw-m		verb	final	ar	ta	
2700	252	254	d	3	تَكْوَمْبِيَ	takwambiya	takwambiya						-amb-		verb	final	ba	ta	
585	55	57	b	2	أَتَنِكِرِ	atanikiri	atanikiri						q-r-r		verb	final	ar	ta	
3039	286	288	b	2	إِسِلَامُ	isilāmu	isilamu						s-l-m		verb	final	ar	imp	
313	28	30	b	2	مٖنِكَلِفُ	menikalifu	menikalifu						k-l-f		verb	final	ar	me	
2521	236	238	c	3	نِتٗكٖ	nitoke	nitoke					We have to assume that Hasan and Husayn have told Ali what they were talking about.	-to-		verb	final	ba	subj	
677	63	65	d	3	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn	final	ar		
1085	100	102	d	2	عَلِيَ	ʿaliya	aliya		Aliya			i.e. your daily life does not take you to the sorts of places where you might meet Ali. 	3-l-y		persn	final	ar		
1164	107	109	b	4	ثَقِلِ	thaqili	thaqili					Because of this, Ja'far had to travel farther than normal with his goats to find water, and this led to his meeting up with Ali.	th-q-l		adj	final	ar		
1360	124	126	d	3	عَلِيَّ	ʿaliyaّ	aliyaU+0651	ʿaliyya	Aliya				3-l-y		persn	final	ar		
1420	130	132	b	2	ٹُتَيَرِ	ţutayari	tutayari		tu tayari				tw-y-r		adj	final	ar		
1484	136	138	a	4	سِتَ	sita	sita						s-t-t		num	final	ar		
1952	180	182	d	4	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn	final	ar		
2656	248	250	c	3	زِٹَنِ	ziţani	zitani						-ta		noun	final	ba		
2659	248	250	d	3	پَمٗيَ	pamoya	pamoya					i.e. Ali took Ja'far with him on his campaigns.	-moja		adv	final	ba		
2734	256	258	b	2	أَسِيَمُهَلِ	asiyamuhali	asiyamuhali					i.e. he did not delay.	m-h-l		verb	final	ar	sija	y
577	54	56	c	3	أَكِرُدِ	akirudi	akirudi						r-d-d		verb	final	ar	ki	
2924	275	277	a	2	أَكِيَنُظُمُ	akiyanuẓumu	akiyanudhumu						n-dw-m		verb	final	ar	ki	
2664	249	251	b	2	زِٹَنِ	ziţani	zitani						-ta		noun	final	ba		
2672	250	252	a	3	مْوَكَ	mwaka	mwaka						-aka		noun	final	ba		
2742	257	259	a	2	مْلَنْڠٗنِ	mlangoni	mlangoni					i.e. \\Swa{hajangia ndani} -- he has not gone into the house yet.	-lango		noun	final	ba		
2328	217	219	c	2	مْبٖيْ	mbee	mbee						-bele		adv		ba		
2790	261	263	d	3	نْدِيَ	ndiya	ndiya						-jia		noun	final	ba		
3011	283	285	b	3	حَمْزَ	ḥamza	hamza		Hamza				h-m-z		persn	final	ar		
3127	294	296	c	3	تِمَمُ	timamu	timamu						t-m-m		noun	final	ar		
3310	306	314	a	3	وَهَابُ	wahābu	wahabu		Wahabu				w-h-b		godn	final	ar		
2727	255	257	c	3	يَقِيْنِ	yaqı̄ni	yaqini						y-q-n		adv	final	ar		
2858	269	271	a	3	مْنٗ	mno	mno					\\Swa{usizidi huzuni sana}, \\E{do not wallow in sadness}.	mno		adv	final	ba		
2864	269	271	c	3	مَنٖنٗ	maneno	maneno						-nen-		noun	final	ba		
2880	271	273	a	4	مَمَكٖ	mamake	mamake						mama		noun	final	ba		
2884	271	273	b	4	وَكٖ	wake	wake						-ake		poss	final	ba		
2897	272	274	c	3	أُپٖسِ	upesi	upesi						-pesi		noun	final	ba		
2902	273	275	a	3	كْوَكٖ	kwake	kwake						-ake		poss	final	ba		
2909	273	275	c	4	وَكٖ	wake	wake						-ake		poss	final	ba		
64	6	6	c	3	عَقِلِ	ʿaqili	aqili		akili				3-q-l		noun	final	ar		
86	9	9	a	3	أَمِيْنِ	amı̄ni	amini		Amini			The Prophet was called \\Eit{al-Amin} from his teenage years onward, because he was reliable and even-handed to all.	a-m-n		title	final	ar		
2825	265	267	c	3	كُزِكَ	kuzika	kuzika						-zik-		verb	final	ba	ku	
2646	247	249	d	2	نِمٖكْوٖلٖيَ	nimekweleya	nimekweleya					= \\Swa{nimekusamehe}, \\E{I have forgiven you}.    The mollification works -- Fatima forgives him.	-ele-		verb	final	ba	me	
2778	260	262	d	3	كَلِيَ	kaliya	kaliya						-li-		verb	final	ba	ka	
2121	197	199	b	2	نَلِصَلِ	naliṣali	nalisali					i.e. he had got up in time for prayers at 5.00am.	sw-l-w		verb	final	ar	li	
2829	266	268	a	2	كُزِكَ	kuzika	kuzika						-zik-		verb	final	ba	ku	
2876	270	272	d	2	كُنِپٖكٖيَ	kunipekeya	kunipekeya						-pelek-		verb	final	ba	ku	
2890	271	273	d	3	كُوَمْبِيَ	kuwambiya	kuwambiya						-amb-		verb	final	ba	ku	
1183	108	110	d	3	كَئِرُدِيَ	kairudiya	kairudiya						r-d-d		verb	final	ar	ka	
2797	262	264	c	3	كَٹِزَمَ	kaţizama	katizama						-tazam-		verb	final	ba	ka	
2817	264	266	d	2	كَوَمْبِيَ	kawambiya	kawambiya						-amb-		verb	final	ba	ka	
2799	262	264	d	2	أَكَمْوَنْڠَلِيَ	akamwangaliya	akamwangaliya						-anga-		verb	final	ba	ka	
2833	266	268	c	2	أَكَتَمْكَ	akatamka	akatamka						-tamk-		verb	final	ba	ka	
2835	266	268	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya						-amb-		verb	final	ba	ka	
2822	265	267	b	3	وَكَتٗكَ	wakatoka	wakatoka					With Ja'far's corpse.	-to-		verb	final	ba	ka	
3307	305	313	d	2	هُمُوَفِقِيَ	humuwafiqiya	humuwafiqiya					These claims are somewhat overblown -- this is not a religious text.	w-f-q		verb	final	ar	hu	
2233	207	209	c	2	وَنْڠَلِمْزِدِ	wangalimzidi	wangalimzidi					i.e. \\q{they would have been too much for him} -- \\Swa{-zidi} here = \\Swa{shinda}.	z-a-d		verb	final	ar	ngali	
764	71	73	d	2	تَكُوَصِلِيَ	takuwaṣiliya	takuwasiliya						w-sw-l		verb	final	ar	ta	
2104	195	197	b	3	وَكُسَلِمُ	wakusalimu	wakusalimu						s-l-m		verb	final	ar	a	
2767	259	261	d	2	لَلٗمْزِدِيَ	lalomzidiya	lalomzidiya					Or: \\q{what misfortune has overwhelmed him?}.  Compare \\Swa{kumezidi nini?}, \\E{what has happened?} for something disastrous or catastrophic.	z-a-d		verb	final	ar	li	
2634	246	248	d	3	نَمْبِيَ	nambiya	nambiya					Ali is trying to mollify his wife.	-amb-		verb	final	ba	imp	
2905	273	275	b	3	أَتٗكٖ	atoke	atoke						-to-		verb	final	ba	past	
789	73	75	d	3	نِسَلِمِيَ	nisalimiya	nisalimiya					\\Swa{-salimu} is used for a person-to-person greeting, and this is the indirect form: \\q{greet them on my behalf}.	s-l-m		verb	final	ar	imp	
800	74	76	d	2	نِسَلِمِيَ	nisalimiya	nisalimiya						s-l-m		verb	final	ar	imp	
3140	295	297	d	3	كُلِيَ	kuliya	kuliya						-li-		verb	final	ba	ku	
730	68	70	d	5	تِسِيَ	tisiya	tisiya						t-s-3		num	final	ar		
809	75	77	c	3	إِظْهَارِ	iẓhāri	idhhari		idhihari			This reading is uncertain -- it seems to mean \\Swa{nde na ndani}.  Perhaps we should adopt that of R, and translate \\q{I know (have heard of) their general qualities}.	zw-h-r		noun	final	ar		
1342	123	125	b	3	أَزْوَجِ	azwaji	azwaji			Aziwaji		\\Swa{azwaji} is literally \\q{spouse}, so this name is strange.  See also 127b.	z-w-j		noun	final	ar		
1714	157	159	b	3	كِتَيَرِ	kitayari	kitayari		ki tayari				tw-y-r		adj	final	ar		
1718	157	159	c	4	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r		persn	final	ar		
1733	159	161	a	2	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r		persn	final	ar		
1786	164	166	b	3	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r		persn	final	ar		
2002	185	187	d	3	نَبِيَ	nabiya	nabiya		Nabiya				n-b-y		title	final	ar		
2229	207	209	a	2	وَدُوْدِ	wadūdi	wadudi		Wadudi				w-d-d		godn	final	ar		
2293	213	215	c	2	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn	final	ar		
2302	214	216	c	2	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn	final	ar		
2359	220	222	c	3	تَيَرِ	tayari	tayari						tw-y-r		adj	final	ar		
2765	259	261	c	2	مْوَنْڠَلِيِنِ	mwangaliyini	mwangaliyini		mwangaliyeni	*			-anga-		verb	final	ba	imp	
2827	265	267	d	2	أَسِپٗيُوَ	asipoyuwa	asipoyuwa						-ju-		verb	final	ba	ki	y
2669	249	251	d	2	أَكِمْوٖنْدٖلٖيَ	akimwendeleya	akimwendeleya					Unlike Ali, Ja'far cannot yet fight 200 opponents alone!	-end-		verb	final	ba	ki	
2457	230	232	a	2	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn	final	ar		
2497	234	236	a	2	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn	final	ar		
2914	274	276	a	3	كْوَكٖ	kwake	kwake					i.e. immediately he left.	-ake		poss	final	ba		
2917	274	276	b	3	مَمَكٖ	mamake	mamake						mama		noun	final	ba		
3019	284	286	a	3	مْلَنْڠٗنِ	mlangoni	mlangoni						-lango		noun	final	ba		
3048	287	289	a	4	مَمَكٖ	mamake	mamake						mama		noun	final	ba		
3055	287	289	c	3	يَكٖ	yake	yake						-ake		poss	final	ba		
3071	289	291	a	3	نْدُيَنْڠُ	nduyangu	nduyangu						-dugu		noun	final	ba		
3077	289	291	c	3	فُنْڠُ	fungu	fungu						-fung-		noun	final	ba		
3137	295	297	c	3	هَلِمَمَ	halimama	halimama						halimama		noun	final	ba		
3144	296	298	a	4	وٖٹُ	weţu	wetu		Wetu			i.e. \\Swa{Mungu}.	-etu		poss	final	ba		
3148	296	298	b	4	كِٹُ	kiţu	kitu					i.e. it is not food, so if she is fasting because of the bereavement it is reasonable to take it.	-tu		noun	final	ba		
3151	296	298	c	3	مَٹَٹُ	maţaţu	matatu						-tatu		num	final	ba		
641	60	62	c	3	دُنِيَنِ	duniyani	duniyani						d-n-y		noun	final	ar		
679	64	66	a	2	دَمُ	damu	damu						d-m-m		noun	final	ar		
806	75	77	b	3	ذُرِيَ	dhuriya	dhuriya		dhuria				dh-r-y		noun	final	ar		
1689	155	157	b	3	كُكُزِدِ	kukuzidi	kukuzidi					i.e. it goes without saying that \\Swa{anakushinda}, \\E{he is superior to you}.	z-a-d		verb	final	ar	ku	
838	78	80	b	2	مُعَلِمُ	muʿalimu	mualimu					\\Swa{anampenda yule mwanafunzi wake}, \\E{he is very fond of that pupil of his}.	3-l-m		noun	final	ar		
885	82	84	a	2	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun	final	ar		
1048	97	99	a	2	كِعَرَبُ	kiʿarabu	kiarabu						3-r-b		noun	final	ar		
1130	104	106	c	3	زٖمٖتِمُ	zemetimu	zemetimu						t-m-m		verb	final	ar	me	
1659	152	154	d	2	نِمٖكُؤُصِيَ	nimekuuṣiya	nimekuusiya						w-sw-a		verb	final	ar	me	
3157	297	299	b	2	كَيَپٖكَ	kayapeka	kayapeka						-pelek-		verb	final	ba	ka	
3162	297	299	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya						-pok-		verb	final	ba	ka	
2992	281	283	c	2	أَكَؤُشِكَ	akaushika	akaushika						-shik-		verb	final	ba	ka	
3170	298	300	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya						-omb-		verb	final	ba	ka	
1202	110	112	c	2	نِكِوَصِلِ	nikiwaṣili	nikiwasili						w-sw-l		verb	final	ar	ki	
3030	285	287	b	2	يَكِمْشُكَ	yakimshuka	yakimshuka						-shuk-		verb	final	ba	ki	
2931	275	277	d	2	هُمْنْڠِلِيَ	humngiliya	humngiliya						-ingi-		verb	final	ba	hu	
2970	279	281	c	2	مْتَنِپِلٖكَ	mtanipileka	mtanipileka		mtanipeleka	*			-pelek-		verb	final	ba	ta	
2983	280	282	d	3	يَوٖلٖيَ	yaweleya	yaweleya						-ele-		verb	final	ba	a	
3001	282	284	b	3	هَيَنْدَمَ	hayandama	hayandama		kayandama	*			-andam-		verb	final	ba	ka	
2945	277	279	a	3	كِفُوَٹَ	kifuwaţa	kifuwata		kifuata				-fuat-		verb	final	ba	ki	
3006	282	284	d	2	كِمْبِشِيَ	kimbishiya	kimbishiya						-bish-		verb	final	ba	ki	
3083	290	292	a	2	كِپُلِكَ	kipulika	kipulika						-pulik-		verb	final	ba	ki	
3023	284	286	c	2	نِپٖكَنِ	nipekani	nipekani						-pelek-		verb	final	ba	imp	
1067	98	100	d	2	دُنِيَ	duniya	duniya						d-n-y		noun	final	ar		
1272	117	119	a	4	آدَمُ	ãdamu	adamu						a-d-m		noun	final	ar		
1373	126	128	a	3	بَرَنِ	barani	barani						b-r-r		noun	final	ar		
1583	145	147	c	4	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun	final	ar		
1615	148	150	c	2	عَقِلِ	ʿaqili	aqili						3-q-l		noun	final	ar		
1706	156	158	c	4	أَدَبُ	adabu	adabu						a-d-b		noun	final	ar		
1773	163	165	a	3	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun	final	ar		
1778	163	165	c	3	عِلِمُ	ʿilimu	ilimu						3-l-m		noun	final	ar		
2101	195	197	a	3	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun	final	ar		
2164	201	203	a	3	بَرَنِ	barani	barani						b-r-r		noun	final	ar		
2170	201	203	c	3	بَرَنِ	barani	barani						b-r-r		noun	final	ar		
2642	247	249	b	5	دَلِيْلِ	dalı̄li	dalili					The meaning of this line is not entirely clear.  \\Swa{dalili} is usuallly translated as \\q{sign}, but it is also a term for \\q{proof}, as used in logic.  So the line might be paraphrased as: \\q{between us, the issue (\\Swa{kitu}) does not need to be proved on every point, because we love each other}.	d-l-l		noun	final	ar		
2729	255	257	d	2	دُنِيَ	duniya	duniya						d-n-y		noun	final	ar		
2874	270	272	c	3	بَرُوَ	baruwa	baruwa		barua				b-r-w		noun	final	ar		
3068	288	290	d	2	دُنِيَ	duniya	duniya						d-n-y		noun	final	ar		
3081	289	291	d	4	دُنِيَ	duniya	duniya						d-n-y		noun	final	ar		
3104	292	294	a	2	بَرُوَ	baruwa	baruwa		barua				b-r-w		noun	final	ar		
3190	300	302	d	3	پَمٗيَ	pamoya	pamoya						-moja		adv	final	ba		
3183	300	302	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka						-pambauk-		verb	final	ba	ki	
3004	282	284	c	3	أَكِكٗمَ	akikoma	akikoma					\\Swa{-koma} here means \\q{end up at}.  Compare \\Swa{ndia hii imekoma wapi?}, \\E{where does this road go to?}	-kom-		verb	final	ba	ki	
2682	251	253	a	3	أُكِزِدِ	ukizidi	ukizidi						z-a-d		verb	final	ar	ki	
1102	102	104	c	3	هَكِزِدِ	hakizidi	hakizidi					See note to 117c.  People believe anecdotes about famous people, even if they are not likely or academically proven -- as the many magazines retailing celebrity gossip can attest.	z-a-d		verb	final	ar	a	y
3124	294	296	b	3	تَمُ	tamu	tamu						-tamu		adj	final	ba		
3240	305	307	b	3	مْوَنڠُ	mwangu	mwangu					Fatima, in contrast to her behaviour at the beginning of the ballad, has learnt to be magnanimous.	-angu		poss	final	ba		
3244	305	307	c	4	نْدُيَنْڠُ	nduyangu	nduyangu						-dugu		noun	final	ba		
3297	304	312	c	3	جِيٗنِ	jiyoni	jiyoni		jioni				jio		adv	final	ba		
1390	127	129	d	1	چَمْبَ	chamba	chamba						-amb-	if you know of [a well], tell me."	conj		ba		
1348	123	125	d	3	لَكٗ	lako	lako						-ako		poss		ba		
1334	122	124	c	2	لَكٗ	lako	lako						-ako		poss		ba		
1387	127	129	c	2	وَنْڠُ	wangu	wangu						-angu		poss		ba		
2624	246	248	b	1	نْدُڠُ	ndugu	ndugu						-dugu	stop being angry, my dear.	noun		ba		
2990	281	283	b	4	هَرَكَ	haraka	haraka						hh-r-k		noun	final	ar		
2998	282	284	a	4	هٖمَ	hema	hema						kh-y-m		noun	final	ar		
3176	299	301	b	3	خَبَرِزٖ	khabarize	habarize						kh-b-r		noun	final	ar		
1445	132	134	d	1	وَءٗ	wao	wao						-ao	looking at me.	poss		ba		
1326	122	124	a	2	نِ	ni	ni						ni		exist		ba		
1397	128	130	b	3	سِ	si	si						si		exist		ba		
1358	124	126	d	1	وَ	wa	wa						-a	[son] of Lord Ali.	ref		ba		
1322	121	123	d	1	كْوَ	kwa	kwa						-a	as they all stared at me.	ref		ba		
1323	121	123	d	2	وٗتٖ	wote	wote						-ote		qual		ba		
1440	132	134	b	2	بَاءٗ	bao	bao						bao		noun		ba		
1367	125	127	c	2	مَمَ	mama	mama						mama		noun		ba		
1432	131	133	c	2	مْوِٹُنِ	mwiţuni	mwituni						-itu		noun		ba		
1396	128	130	b	2	كِسِمَ	kisima	kisima						-sima		noun		ba		
1571	144	146	d	1	نَ	na	na						na	and you should remember the number.	conj		ba		
1533	141	143	b	2	نَ	na	na						na		conj		ba		
109	11	11	a	3	هِمَ	hima	hima						h-m-m		noun	final	ar		
142	14	14	c	3	هِمَ	hima	hima						h-m-m		noun	final	ar		
150	15	15	b	3	هَرَكَ	haraka	haraka						hh-r-k		noun	final	ar		
1371	126	128	a	1	نِمٖتَنْڠَ	nimetanga	nimetanga						-tang-	I have wandered about [searching for] water in the scrubland --	verb		ba	me	
357	32	34	c	3	هِمَ	hima	hima						h-m-m		noun	final	ar		
366	33	35	c	3	هَبَرِ	habari	habari						kh-b-r		noun	final	ar		
503	47	49	b	3	هَبَرِ	habari	habari						kh-b-r		noun	final	ar		
3234	304	306	d	3	كُنَمْبِيَ	kunambiya	kunambiya						-amb-		verb	final	ba	ku	
3210	302	304	c	3	كَمْپٖكٖ	kampeke	kampeke						-pelek-		verb	final	ba	ka	
3251	306	308	a	3	كَتٗكَ	katoka	katoka						-to-		verb	final	ba	ka	
3256	306	308	c	2	أَكَمْپٖكَ	akampeka	akampeka						-pelek-		verb	final	ba	ka	
3259	306	308	d	3	أَكَنْڠِيَ	akangiya	akangiya						-ingi-		verb	final	ba	ka	
3290	309	311	d	3	زِكَوٖلٖيَ	zikaweleya	zikaweleya						-ele-		verb	final	ba	ka	
3284	309	311	b	3	هُكٗمَ	hukoma	hukoma						-kom-		verb	final	ba	hu	
3204	302	304	a	3	أَتَمْكٖ	atamke	atamke						-tamk-		verb	final	ba	past	
3226	304	306	a	3	كِمْپٖكَ	kimpeka	kimpeka						-pelek-		verb	final	ba	ki	
1287	118	120	c	1	كِوَ	kiwa	kiwa						-w-	if you are an unbeliever,	verb		ba	ki	
3287	309	311	c	3	وَتَسٗمَ	watasoma	watasoma						-som-		verb	final	ba	ta	
1279	117	119	d	2	ٹُيُوٖ	ţuyuwe	tuyuwe		tuyue				-ju-		verb		ba	subj	
1395	128	130	b	1	كٔوَمْبَ	kwamba	kwamba						-amb-	that there was a well not far away.	verb		ba	ku	
1276	117	119	c	1	ٹْوَمْبِيٖ	ţwambiye	twambiye		twambie				-amb-	Tell us so that we can know you,	verb		ba	imp	
536	50	52	c	2	مَكَفِرِ	makafiri	makafiri						k-f-r		noun	final	ar		
562	53	55	a	4	هِمَ	hima	hima						h-m-m		noun	final	ar		
609	57	59	c	4	جِنِ	jini	jini						j-n-n		noun	final	ar		
1464	134	136	c	1	كَنٖنَ	kanena	kanena						-nen-	I said: I am going now,	verb		ba	ka	
841	78	80	c	3	هَمُ	hamu	hamu					Everybody, even a teacher, is apprehensive about the future.	h-m-m		noun	final	ar		
876	81	83	b	4	هَكِ	haki	haki						h-q-q		noun	final	ar		
1026	95	97	a	3	هَبَرِ	habari	habari						kh-b-r		noun	final	ar		
1032	95	97	c	3	هَرِ	hari	hari					\\Swa{hari} = \\Swa{jasho}.	hh-r-r		noun	final	ar		
1234	113	115	b	3	خَطَرِ	khaṭari	hatari						kh-tw-r		noun	final	ar		
1365	125	127	b	3	غَرِيْبُ	gharı̄bu	gharibu					\\Swa{gharibu} = \\Swa{mgeni}.	gh-r-b		noun	final	ar		
1664	153	155	b	3	غَيْظِ	ghayẓi	ghaydhi		ghaidhi			\\Swa{ghaidhi} = \\Swa{hasira}, \\E{crossness, annoyance}.  A mother is always soft-hearted towards her children, unlike a father.	gh-y-dw		noun	final	ar		
1746	160	162	b	3	فَرَسِ	farasi	farasi						f-r-s		noun	final	ar		
1989	184	186	b	2	خَبَرِ	khabari	habari					i.e. he asked \\Swa{hujambo?}	kh-b-r		noun	final	ar		
2368	221	223	b	4	هَرَكَ	haraka	haraka					After being told not to serve the food yet (279-81), she now has to do it in a hurry.	hh-r-k		noun	final	ar		
2525	237	239	a	2	خَبَرِ	khabari	habari						kh-b-r		noun	final	ar		
2573	241	243	c	3	هِمَ	hima	hima					= \\Swa{taratibu}.	h-m-m		noun	final	ar		
2627	246	248	b	4	غَرَضِ	gharaḍi	gharadhi					\\Swa{gharadhi} = \\Swa{hasira}.	gh-r-dw		noun	final	ar		
2649	248	250	a	3	لِسَنِ	lisani	lisani		hisani	*		\\Swa{hisani}, \\E{kindness, goodness}.	h-s-n		noun	final	ar		
2685	251	253	b	3	جِهَدِ	jihadi	jihadi						j-h-d		noun	final	ar		
2708	253	255	c	2	مَكُفَرِ	makufari	makufari						k-f-r		noun	final	ar		
2763	259	261	b	2	فِرَشَنِ	firashani	firashani						f-r-sh		noun	final	ar		
2851	268	270	b	2	دُنِيَنِ	duniyani	duniyani						d-n-y		noun	final	ar		
3181	299	301	d	2	أَكِلِيَ	akiliya	akiliya						-li-		verb	final	ba	ki	
2961	278	280	c	3	أَلْفَجِرِ	alfajiri	alfajiri		alifajiri			\\Swa{alfajiri}, \\E{dawn}.  In other words, it was time for morning prayers.	f-j-r		noun	final	ar		
1499	137	139	d	1	نْدِمِ	ndimi	ndimi						ni	when I'm the only one who can draw water for you?	focus		ba		
1547	142	144	d	2	نَ	na	na						na		conj		ba		
1400	128	130	c	2	كِنَ	kina	kina						-na		have		ba		
1456	134	136	a	1	سِنَ	sina	sina						-na	I have no fear [in] my heart	have		ba		
1423	130	132	d	1	نِ	ni	ni						ni	[that] it was us who told you [about it].	exist		ba		
1407	129	131	a	3	نِ	ni	ni						ni		exist		ba		
1439	132	134	b	1	لِپٗ	lipo	lipo						LOC	there was a plank there that I pushed away.	loc		ba		
1491	136	138	d	2	نَ	na	na						na		conj		ba		
1468	134	136	d	2	نَ	na	na						na		conj		ba		
1434	131	133	d	1	مْبِيٗ	mbiyo	mbiyo		mbee	*			-bele	and directed me onwards.	adv		ba		
1506	138	140	c	1	بَاءٗ	bao	bao						bao	I pushed away the plank,	noun		ba		
1443	132	134	c	2	كِوَڤُ	kiwavu	kiwavu						-avu		noun		ba		
1431	131	133	c	1	كْوَ	kwa	kwa						-a	They went into the forest,	ref		ba		
1442	132	134	c	1	كْوَ	kwa	kwa						-a	They watched me from one side,	ref		ba		
1452	133	135	c	1	كِسِمَ	kisima	kisima						-sima	do not cover the well.	noun		ba		
1475	135	137	c	1	مَلِشٗنِ	malishoni	malishoni						-l-	and took [the goats] to the pastures	noun		ba		
1576	145	147	a	2	زَكٖ	zake	zake						-ake		poss		ba		
1561	143	145	d	2	لَنْڠُ	langu	langu						-angu		poss		ba		
2937	276	278	b	2	تَقْصِيْرِ	taqṣı̄ri	taqsiri					\\Swa{-fanya taksiri}, \\E{put in the effort, do the needful}.  Note that the Swahili negative here corresponds to a positive in English.	q-sw-r		noun	final	ar		
3060	288	290	a	3	مَمْلَكَه	mamlakah	mamlakah		Mamlaka				m-l-k		noun	final	ar		
3196	301	303	b	4	خٖرِنِ	kherini	herini						kh-y-r		noun	final	ar		
1482	136	138	a	2	يَ	ya	ya						-a		ref		ba		
1518	139	141	d	1	يَ	ya	ya						-a	and addressed him angrily.	ref		ba		
1595	146	148	d	1	نَ	na	na						na	and give me your blessing.	conj		ba		
1478	135	137	d	2	وَ	wa	wa						-a		ref		ba		
1567	144	146	c	1	نِ	ni	ni						ni	it is nine, and no mistake;	exist		ba		
1590	146	148	b	2	نِ	ni	ni						ni		exist		ba		
1485	136	138	b	1	هَپٗ	hapo	hapo						h-	I was then driving the goats along,	dem		ba		
1516	139	141	c	2	هَپٗ	hapo	hapo						h-		dem		ba		
1581	145	147	c	2	نَ	na	na						na		conj		ba		
1552	143	145	b	1	نَ	na	na						na	and the characteristics of your house.	conj		ba		
1546	142	144	d	1	پِيَ	piya	piya		pia				pia	giving me example after example.	adv		ba		
1612	148	150	b	1	مَمَكٖ	mamake	mamake						mama	his mother could not bear it.	noun		ba		
1500	137	139	d	2	وَ	wa	wa						-a		ref		ba		
3147	296	298	b	3	سِ	si	si						si		exist		ba		
1544	142	144	c	1	أَكَنِپَ	akanipa	akanipa						-p-	He told me things he could not have known [unless he was my father]	verb		ba	ka	
1465	134	136	c	2	نٖنْدَ	nenda	nenda						-end-		verb		ba	a	
415	38	40	c	3	كَلِمَ	kalima	kalima						k-l-m		noun	final	ar		
1616	148	150	d	1	كْوَ	kwa	kwa						-a	and beat herself with her fists.	ref		ba		
1582	145	147	c	3	كْوَ	kwa	kwa						-a		ref		ba		
1587	146	148	a	2	كْوَ	kwa	kwa						-a		ref		ba		
1593	146	148	c	2	كْوَ	kwa	kwa						-a		ref		ba		
436	40	42	c	2	خٖيْرِ	khēri	heri						kh-y-r		noun	final	ar		
446	41	43	c	2	مَلْعُوْنِ	malʿūni	maluni		malauni				l-3-n		noun	final	ar		
1553	143	145	b	2	صِفَ	ṣifa	sifa						sw-f-h		noun		ar		
2486	233	235	a	2	كْوَكٖ	kwake	kwake						-ake		poss		ba		
2989	281	283	b	3	نَ	na	na						na		conj		ba		
1655	152	154	c	2	أُوٖ	uwe	uwe						-w-		verb		ba	subj	
1578	145	147	b	1	نِمٖكُپَ	nimekupa	nimekupa						-p-	I have completed it so that you may understand.	verb		ba	me	
1586	146	148	a	1	نِمٖمُؤَڠَ	nimemuaga	nimemuaga						-ag-	I have said farewell to him.	verb		ba	me	
1677	154	156	b	3	أُوٖ	uwe	uwe						-w-		verb		ba	subj	
1601	147	149	b	1	ٹُپٖنْدَنٖ	ţupendane	tupendane						-pend-	that my father and I will get along well together.	verb		ba	subj	
1549	143	145	a	1	أُنِپِيٖ	unipiye	unipiye		unipee	*			-pig-	He described your features to me,	verb		ba	past	
1648	152	154	a	1	إٖنٖنْدَ	enenda	enenda						-end-	[To Ja'far she said:] Off you go -- no harm will come to you.	verb		ba	imp	
463	43	45	b	3	مَعَنَ	maʿana	maana						m-3-n		noun	final	ar		
471	44	46	a	2	قَصِدِ	qaṣidi	qasidi					Amu \\Swa{qasidi} = Mvita \\Swa{maqusudi}.	q-sw-d		noun	final	ar		
574	54	56	b	2	قَصِدِ	qaṣidi	qasidi					lit. \\q{we will compete in aim}.  Ali covered the well, Ja'far (as explained later in 184-5) has uncovered it, Ali have covered it again, and now Ja'far is uncovering it once more.  Both are annoyed.	q-sw-d		noun	final	ar		
583	55	57	a	4	بِرِ	biri	biri		~			i.e. if Ali is daring Ja'far to do something.  (?) \\Swa{nibiri}, \\E{challenge} < \\AS{نبر}, \\E{raise one's voice, shout}.	n-b-r		noun	final	ar		
793	74	76	a	4	نَسَبَ	nasaba	nasaba					Ja'far will therefore do what is right and expected of him.	n-s-b		noun	final	ar		
798	74	76	c	3	أَقْرَبَ	aqraba	aqraba						q-r-b		noun	final	ar		
817	76	78	b	3	هٖرِ	heri	heri						kh-y-r		noun	final	ar		
880	81	83	c	4	لَكِ	laki	laki						l-k-k		noun	final	ar		
1180	108	110	c	3	مَهَلِ	mahali	mahali						m-hh-l		noun	final	ar		
1417	130	132	a	1	أُوَپٗ	uwapo	uwapo						-w-	If you want to risk it,	verb		ba	a	
1588	146	148	a	3	خٖيْرِ	khēri	heri						kh-y-r		noun	final	ar		
1650	152	154	a	3	مَضَرَ	maḍara	madhara						m-dh-r		noun	final	ar		
1653	152	154	b	3	مَرَ	mara	mara						m-r-r		noun	final	ar		
1737	159	161	b	4	خٖيْرِ	khēri	heri						kh-y-r		noun	final	ar		
2337	218	220	b	3	هٖرِنِ	herini	herini						kh-y-r		noun	final	ar		
2415	225	227	c	3	هٖرِ	heri	heri						kh-y-r		noun	final	ar		
1560	143	145	d	1	إِنَ	ina	ina						-ina	and told him my name.	noun		ba		
1540	142	144	a	1	جِنَ	jina	jina						-ina	When he asked me my name	noun		ba		
1509	138	140	d	2	مْٹُ	mţu	mtu						-tu		noun		ba		
1526	140	142	c	2	پٖٹٖ	peţe	pete						-pet-		noun		ba		
1530	141	143	a	1	پٖٹٖ	peţe	pete						-pet-	He looked at the ring	noun		ba		
1679	154	156	c	1	نَ	na	na						na	and [accept] whatever he says to you	conj		ba		
1388	127	129	c	3	وَنَ	wana	wana						-na		have		ba		
1656	152	154	c	3	نَ	na	na						na		conj		ba		
1557	143	145	c	1	هَپٗ	hapo	hapo						h-	Then I spoke	dem		ba		
1663	153	155	b	2	نَ	na	na						na		conj		ba		
1642	151	153	c	1	نَ	na	na						na	and the children of my friends,	conj		ba		
1684	155	157	a	1	نَ	na	na						na	And the Prophet Muhammad,	conj		ba		
1654	152	154	c	1	نَاوٖ	nāwe	nawe						na	And that you should be sensible	conj		ba		
2119	197	199	a	2	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
2223	206	208	b	4	سَلَام	salām	salam		salama	*		\\Swa{ingawa umetaabika}, \\E{even though you were in distress}.	s-l-m		noun	final	ar		
2308	215	217	b	2	سَلَامُ	salāmu	salamu						s-l-m		noun	final	ar		
2317	216	218	b	2	سَلَامَ	salāma	salama						s-l-m		noun	final	ar		
2631	246	248	c	4	رَضِ	raḍi	radhi						r-a-zw		noun	final	ar		
2637	247	249	a	3	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
2732	256	258	a	3	قَوْلِ	qawli	qauli						q-w-l		noun	final	ar		
1621	149	151	b	1	تِيَتِ	tiyati	tiyati						-chi	she hurled herself to the ground,	adv		ba		
1644	151	153	c	3	وَ	wa	wa						-a		ref		ba		
1675	154	156	b	1	كْوَ	kwa	kwa						-a	and subservient to your father,	ref		ba		
1538	141	143	d	1	يٗتٖ	yote	yote						-ote	all of it came back to him.	qual		ba		
1676	154	156	b	2	بَبَكٗ	babako	babako						baba		noun		ba		
1619	149	151	a	1	كَئِٹُنْدَ	kaiţunda	kaitunda		kayitunda			Amu \\Swa{-tunda} = Mvita \\Swa{-twaa}.	-tund-	She took and threw herself down,	verb		ba	ka	
889	82	84	c	2	كَلِمُ	kalimu	kalimu						k-l-m		noun	final	ar		
903	84	86	a	3	كَلِمَ	kalima	kalima						k-l-m		noun	final	ar		
1935	179	181	b	2	حَبِيْبُ	ḥabı̄bu	habibu		Habibu				hh-b-b		title	final	ar		
2198	204	206	a	3	أَظُهُرِ	aẓuhuri	adhuhuri					Midday, when the sun is approaching its zenith, or just afterwards.	zw-h-r		noun	final	ar		
2688	251	253	c	3	مَيَهُدِ	mayahudi	mayahudi					See 275b.  This word can be used for anyone who is bad or evil.	y-h-d		noun	final	ar		
2804	263	265	b	3	يَسِنِ	yasini	yasini		Ya Sini			See note to 201d.  Chapter 36, \\Eit{Ya Sin}, of the Qur'an is read over the sick or dying.  It is considered unfortunate to die without having it read over you.	y-s-n		noun	final	ar		
3264	307	309	b	2	أَظُهُرِ	aẓuhuri	adhuhuri						zw-h-r		noun	final	ar		
3281	309	311	a	3	تَمَ	tama	tama						t-m-m		noun	final	ar		
1693	155	157	d	1	نْڠَاءَ	ngaa	ngaa					\\Swa{ngaa}, \\E{even without} is similar to \\Swa{ingawa}, \\E{although, even though}, but distinct from it.  Compare: \\Swa{ngaa hungii ndani ukauliza}, \\E{even without getting in you can ask, even if you don't get in you can ask} and \\Swa{ingawa umengia ndani, lakini ...}, \\E{even though you get in, yet ..., even if you've got in, still ...}.  In this line, the meaning is that even if Ja'far picks up little or no wisdom, he should still attempt to do it.	ngaa	to gain even a little wisdom [from him].	conj		ba		
1698	156	158	a	3	حَبِيْبُ	ḥabı̄bu	habibu		Habibu			i.e. Fatima.  The Prophet is also known as \\Swa{habibu'llah}, \\E{Beloved of God}.	hh-b-b		title	final	ar		
3080	289	291	d	3	نَ	na	na						na		conj		ba		
534	50	52	b	3	كُفِكِرِ	kufikiri	kufikiri						f-k-r		verb	final	ar	ku	
216	21	21	b	2	أَلِلٗفَسِرِ	alilofasiri	alilofasiri						f-s-r		verb	final	ar	li	
1354	124	126	b	3	كُفَسِرِ	kufasiri	kufasiri						f-s-r		verb	final	ar	ku	
2806	263	265	c	2	كُبَئِنِ	kubaini	kubaini						b-a-n		verb	final	ar	ku	
3117	293	295	c	3	كُفِكِرِ	kufikiri	kufikiri						f-k-r		verb	final	ar	ku	
719	68	70	a	2	كَفَسِرِ	kafasiri	kafasiri						f-s-r		verb	final	ar	ka	
1087	101	103	a	2	كَبَئِنِ	kabaini	kabaini						b-a-n		verb	final	ar	ka	
1822	168	170	a	2	كَبَئِنِ	kabaini	kabaini					\\Swa{-baini}, lit. \\E{explain}.	b-a-n		verb	final	ar	ka	
1943	180	182	a	3	كَبَئِنِ	kabaini	kabaini					\\Swa{akasema}.	b-a-n		verb	final	ar	ka	
1250	115	117	a	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
1788	164	166	c	2	أَكَفَسِرِ	akafasiri	akafasiri						f-s-r		verb	final	ar	ka	
2289	213	215	a	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
2339	218	220	c	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
2601	244	246	a	2	أَكَبَئِنِ	akabaini	akabaini						b-a-n		verb	final	ar	ka	
122	12	12	c	2	أَكَفَسِرِ	akafasiri	akafasiri					\\Swa{-fasiri} lit. means \\q{explain}.	f-s-r		verb	final	ar	ka	
1539	141	143	d	2	يَكَمْرُدِيَ	yakamrudiya	yakamrudiya						r-d-d		verb	final	ar	ka	
1657	152	154	c	4	فِكِرَ	fikira	fikira					In other words, \\Swa{siwe kama ng'ombe}, \\E{don't act stupidly}.	f-k-r		verb	final	ar	imp	
1569	144	146	c	3	زِسِزٗ	zisizo	zisizo						-li		exist		ba		y
1016	94	96	b	2	هُتَأَدَبُ	hutaadabu	hutaadabu						a-d-b		verb	final	ar	hu	
1295	119	121	a	2	هُفَسِرِ	hufasiri	hufasiri						f-s-r		verb	final	ar	hu	
1335	122	124	c	3	هُفَسِرِ	hufasiri	hufasiri					\\Swa{mbona husemi?}, \\E{why aren't you speaking?}	f-s-r		verb	final	ar	hu	
2147	199	201	c	2	كِتَأَمَلِ	kitaamali	kitaamali						a-m-l		verb	final	ar	ki	
2780	261	263	a	2	كِبَنِ	kibani	kibani		kibaini	*			b-a-n		verb	final	ar	ki	
1928	178	180	c	2	هُبَئِنِ	hubaini	hubaini						b-a-n		verb	final	ar	hu	
1680	154	156	c	2	أَتَكَلٗبَئِنِ	atakalobaini	atakalobaini					\\Swa{-baini}, \\E{say}.	b-a-n		verb	final	ar	ta	
2855	268	270	d	2	وَيَفَهَمِيَ	wayafahamiya	wayafahamiya						f-h-m		verb	final	ar	a	
481	45	47	a	2	نَلٗيَفِكِرِ	naloyafikiri	naloyafikiri					Amu \\Swa{n[i]-al[i]-o} = Mvita \\Swa{ni-l[i]-o}, subject prefix + past marker + relative marker.	f-k-r		verb	final	ar	li	
1277	117	119	c	2	ٹُكُفَهَمُ	ţukufahamu	tukufahamu						f-h-m		verb	final	ar	subj	
634	60	62	a	2	مْبَئِنِ	mbaini	mbaini					\\Swa{-m-} here = \\Swa{-ni-}.  Compare 155a (R) and 304b.	b-a-n		verb	final	ar	imp	
1109	103	105	a	4	نِبَئِنِ	nibaini	nibaini						b-a-n		verb	final	ar	imp	
1579	145	147	b	2	أُفَهَمُ	ufahamu	ufahamu						f-h-m		verb	final	ar	subj	
1123	104	106	a	4	أُفَهَمُ	ufahamu	ufahamu						f-h-m		verb	final	ar	subj	
1906	176	178	b	2	زُبٖيْرِ	zubēri	zuberi		Zuberi				z-b-r		persn	final	ar		
1752	161	163	a	1	كِشَ	kisha	kisha						-ish-	When he had finished, then [Ja'far] spoke,	conj		ba		
1701	156	158	b	3	كْوَ	kwa	kwa						-a		ref		ba		
1724	158	160	b	1	وٗتٖ	wote	wote						-ote	all three of them as equals.	qual		ba		
1730	158	160	d	1	نْدُڠُيٖ	nduguye	nduguye						-dugu	speaking to his brother:	noun		ba		
1735	159	161	b	2	نْدُيَنْڠُ	nduyangu	nduyangu						-dugu		noun		ba		
1717	157	159	c	3	نْدُيٖ	nduye	nduye						-dugu		noun		ba		
120	12	12	b	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
132	13	13	c	2	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
136	14	14	a	2	هَشِمَ	hashima	hashima		Hashima			The Prophet belonged to the clan of Hashim in the tribe of Quraysh of the Hollow.	h-sh-m		title	final	ar		
214	21	21	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari			\\Swa{haidari}, \\E{lion}.  The epithet, \\q{lion-like}, is so closely associated with Ali that it is now more of a name than a descriptive metaphor.	h-d-r		title	final	ar		
1909	176	178	c	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
1917	177	179	c	2	هَشِمَ	hashima	hashima		Hashima				h-sh-m		title	final	ar		
1922	178	180	a	2	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
1931	178	180	d	3	نَبِيَ	nabiya	nabiya		Nabiya			Ja'far, despite never having met the Prophet, recognises him immediately.	n-b-y		title	final	ar		
2935	276	278	a	4	زُبٖيْرِ	zubēri	zuberi		Zuberi				z-b-r		persn	final	ar		
3099	291	293	c	3	زُبٖيْرِ	zubēri	zuberi		Zuberi				z-b-r		persn	final	ar		
3267	307	309	c	3	زُبٖيْرِ	zubēri	zuberi		Zuberi				z-b-r		persn	final	ar		
1740	159	161	d	1	تَمَشَ	tamasha	tamasha					i.e. \\Swa{zawadi}, \\E{a present}.	-tamasha	I will bring you something nice.	noun		ba		
1780	163	165	d	2	يَكٗ	yako	yako						-ako		poss		ba		
1777	163	165	c	2	نَ	na	na					This knowledge would include detailed exegesis of the Qur'an, intricate knowledge of \\Swa{fikhri}, \\E{grammar}, awareness of religious ritual, etc.	na		conj		ba		
1745	160	162	b	2	نَ	na	na						na		conj		ba		
1769	162	164	d	1	مْنْڠُ	mngu	mngu		Mngu				-ngu	praying to God for him.	godn		ba		
1834	169	171	c	1	هُنَ	huna	huna						-na	You have no cause to be hurt	have		ba		
301	27	29	a	2	هَشِمَ	hashima	hashima		Hashima				h-sh-m		title	final	ar		
350	32	34	a	2	هَشِمَ	hashima	hashima		Hashima				h-sh-m		title	final	ar		
363	33	35	b	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
370	34	36	a	2	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
382	35	37	b	2	هَشِمَ	hashima	hashima		Hashima				h-sh-m		title	final	ar		
725	68	70	c	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
820	76	78	c	3	حَيْدَرِ	ḥaydari	haydari		Haidari				h-d-r		title	final	ar		
975	90	92	b	2	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r		persn	final	ar		
1302	119	121	c	4	زُبَيْرِ	zubayri	zubayri		Zuberi			Abu Bakr and Zubayr are two of the \\Swa{masahaba}, the Companions of the Prophet, who made the \\Swa{hijra} with him.	z-b-r		persn	final	ar		
1319	121	123	b	3	طَالِبُ	ṭālibu	talibu		Talibu				tw-l-b		persn	final	ar		
1332	122	124	b	4	زُبٖئْرِ	zuberi	zuberi		Zuberi				z-b-r		persn	final	ar		
1748	160	162	c	2	هُيٗ	huyo	huyo					Mvita \\Swa{huyo} = Amu \\Swa{hoyo}.	h-		dem		ba		
1771	163	165	a	1	هُيٗ	huyo	huyo						h-	[Then she said:] Teacher, Nasir here,	dem		ba		
1762	162	164	a	1	هَپٗ	hapo	hapo						h-	Then his mother went out [after him],	dem		ba		
1784	164	166	b	1	هَپٗ	hapo	hapo						h-	then Nasir began to cry.	dem		ba		
1851	171	173	a	3	نْدَ	nda	nda						-a		focus		ba		
1756	161	163	b	2	مَمَ	mama	mama						mama		noun		ba		
1422	130	132	c	2	أُسِٹُفَسِرِ	usiţufasiri	usitufasiri						f-s-r		verb	final	ar	subj	y
2617	245	247	c	2	أُنْڠٖلِؤُذِكَ	ungeliudhika	ungeliudhika						3-zw-zw		verb	final	ar	ngali	
266	23	25	b	2	سِمْبَئِنِ	simbaini	simbaini						b-a-n		verb	final	ar	a	y
1999	185	187	c	2	سِيَمْفَهَمُ	siyamfahamu	siyamfahamu						f-h-m		verb	final	ar	me	y
1758	161	163	c	1	مَمَكٖ	mamake	mamake						mama	His mother got up	noun		ba		
1763	162	164	a	2	مَمَكٖ	mamake	mamake						mama		noun		ba		
1787	164	166	c	1	مَمَكٖ	mamake	mamake						mama	His mother said:	noun		ba		
1813	167	169	b	1	نْڠُوٗ	nguwo	nguwo		nguo				nguo	what is he carrying clothes for?	noun		ba		
1747	160	162	c	1	نْيَمَ	nyama	nyama						-ama	I don't know [what] that animal [looks like],	noun		ba		
2284	212	214	c	2	سِسِ	sisi	sisi						sisi		pron		ba		
3	1	1	a	3	إِخْوَانِ	ikhwāni	ihwani		ihiwani				kh-w-n		noun	final	ar		
3095	291	293	b	2	نَاءٖ	nae	nae		naye				na		conj		ba		
2409	225	227	a	3	كُخِتَرِ	kukhitari	kuhitari					\\Swa{ya kuteua nzuri}.	kh-a-r		verb	final	ar	ku	
2184	202	204	d	3	كَرٖجٖيَ	karejeya	karejeya						r-j-3		verb	final	ar	ka	
1710	157	159	a	1	أَكَتٗكَ	akatoka	akatoka						-to-	Ja'far arose [the next morning]	verb		ba	ka	
2436	227	229	d	2	يَكَمْرُدِيَ	yakamrudiya	yakamrudiya						r-d-d		verb	final	ar	ka	
1345	123	125	c	3	نَتَرَجِ	nataraji	nataraji						r-j-a		verb	final	ar	a	
1099	102	104	b	3	أُنِرُدِ	unirudi	unirudi						r-d-d		verb	final	ar	subj	
1699	156	158	b	1	كٖتِ	keti	keti						-ka-	stay with her politely;	verb		ba	imp	
1096	102	104	a	2	نِرَدِدِ	niradidi	niradidi						r-d-d		verb	final	ar	subj	
316	28	30	c	3	خٗوْفُ	khōfu	hofu					i.e. oaths that have no frightening consequences.	kh-a-f		noun	final	ar		
1940	179	181	d	3	نَبِيَ	nabiya	nabiya		Nabiya			i.e. \\Swa{uso wake unamwonyesha}, \\E{his countenance identifies him} -- the Prophet's features show a qualitative difference (\\Swa{tofauti}) from everyone elses's.	n-b-y		title	final	ar		
1948	180	182	c	2	أَمِيْنِ	amı̄ni	amini		Amini				a-m-n		title	final	ar		
1997	185	187	b	2	هَشِمُ	hashimu	hashimu		Hashimu				h-sh-m		title	final	ar		
2015	187	189	a	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri				b-sh-r		title	final	ar		
3328	307	315	d	3	عَلِيَ	ʿaliya	aliya		Aliya				3-l-y		persn	final	ar		
1827	168	170	d	1	مَنٖنٗ	maneno	maneno						-nen-	on the things I said to you?	noun		ba		
1925	178	180	b	3	نِ	ni	ni						ni		exist		ba		
1864	172	174	b	1	هى	hı̄	hi		haya	*			h-	So, off you go.	dem		ba		
1908	176	178	c	2	نَ	na	na						na		conj		ba		
1880	173	175	d	3	نَ	na	na						na		conj		ba		
1854	171	173	c	1	نَ	na	na						na	I am sad [because]	conj		ba		
1829	169	171	a	1	نَ	na	na						na		conj		ba		
1859	171	173	d	2	زَكٗ	zako	zako						-ako		poss		ba		
1955	181	183	b	1	كْوَءٗ	kwao	kwao						-ao	he called: Hello!	poss		ba		
1801	166	168	a	2	يَنَ	yana	yana						jana		adv		ba		
1849	171	173	a	1	سَسَ	sasa	sasa						sasa	Now, these [things] are [a matter of] commonsense,	adv		ba		
1860	171	173	d	3	زَ	za	za						-a		ref		ba		
1845	170	172	c	2	زٗتٖ	zote	zote						-ote		qual		ba		
1816	167	169	c	2	زٗتِ	zoti	zoti		zote	*			-ote		qual		ba		
1910	176	178	d	1	مِكٗنٗ	mikono	mikono						-kono	and Ja'far waved to him.	noun		ba		
1844	170	172	c	1	سِكُ	siku	siku						-siku	all the days of my life	noun		ba		
1815	167	169	c	1	سِكُ	siku	siku						-siku	I have never seen him [do that before].	noun		ba		
1856	171	173	c	3	مَتُلِ	matuli	matuli		matuli-tuli				-tuli		noun		ba		
1837	169	171	d	1	سِكِتِكٗ	sikitiko	sikitiko					-sikitik-	-sikitik-	and make me feel sad.	noun		ba		
1979	183	185	b	2	نَ	na	na						na		conj		ba		
1974	183	185	a	1	نَ	na	na		ni	*			na	It is my grandfather the Prophet,	conj		ba		
1950	180	182	d	2	نَاءٖ	nae	nae		naye				na		conj		ba		
1890	174	176	d	1	نَاءٖ	nae	nae		naye				na	he entered Mecca.	conj		ba		
2004	186	188	a	2	زٗتٖ	zote	zote						-ote		qual		ba		
1882	174	176	a	1	هَپٗ	hapo	hapo						h-	Then [Ja'far] set out,	dem		ba		
2001	185	187	d	2	هُيُ	huyu	huyu						h-		dem		ba		
2016	187	189	b	1	هُيُ	huyu	huyu						h-	This is Ja'far	dem		ba		
2022	187	189	d	1	هِزٗ	hizo	hizo						h-	his features would tell you that.	dem		ba		
1978	183	185	b	1	يٖيٖ	yeye	yeye						yeye	he and two people.	pron		ba		
1966	182	184	b	2	نِ	ni	ni						ni		exist		ba		
1970	182	184	d	1	نِ	ni	ni						ni	Listen -- it is my grandfather.	exist		ba		
264	23	25	a	3	لِسَنِ	lisani	lisani					\\Swa{lisani} < \\AS{لسان}, \\E{tongue}.  We could also emend to \\Swa{hisani}, \\E{kindness, goodness}, i.e. politely.  See also 317a.	l-s-n		noun	final	ar		
618	58	60	c	2	أَظْهَرِ	aẓhari	adhhari		adhuhari			\\Swa{adhuhari} = \\Swa{wazi-wazi, zaidi}.	zw-h-r		noun	final	ar		
1053	97	99	c	3	عَجَبُ	ʿajabu	ajabu						3-j-b		noun	final	ar		
1785	164	166	b	2	كَلِيَ	kaliya	kaliya		kalia				-li-		verb		ba	ka	
2040	189	191	c	2	كُئِيٖ	kuiye	kuiye						-j-		verb		ba	past	
1796	165	167	c	1	كُتُنْڠَ	kutunga	kutunga					\\Swa{-tunga}, \\E{graze}.	-tung-	If he were going [to take the animals] to graze	verb		ba	ku	
160	16	16	b	2	كَشَوِشِكَ	kashawishika	kashawishika					\\Swa{-shawishika} = \\Swa{-fanya wasiwasi, -fanya tashwish}	sh-a-sh		verb	final	ar	ka	
1755	161	163	b	1	أَكَمْبَ	akamba	akamba						-amb-	and said: Mother, I am leaving.	verb		ba	ka	
1921	178	180	a	1	أَكَمُؤُزَ	akamuuza	akamuuza						-uz-	The Trustworthy One asked:	verb		ba	ka	
1916	177	179	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia				-amb-	He told the Hashimite:	verb		ba	ka	
2014	187	189	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia				-amb-	The Bringer of Good Tidings told her:	verb		ba	ka	
2161	200	202	d	2	نِسِپٗرٖجٖيَ	nisiporejeya	nisiporejeya					i.e. instead of trying to retrace his footsteps.	r-j-3		verb	final	ar	ki	y
1927	178	180	c	1	وَسِكِيٖ	wasikiye	wasikiye		wasikie				-siki-	And they heard [Ja'far] say:	verb		ba	past	
1811	167	169	a	2	وٖنْدَ	wenda	wenda						-end-		verb		ba	a	
1930	178	180	d	2	نِپٖ	nipe	nipe						-p-		verb		ba	subj	
1794	165	167	b	2	إٖنْدَ	enda	enda						-end-		verb		ba	imp	
1744	160	162	b	1	نِئٖٹٖيَ	nieţeya	nieteya		nietea				-let-	Bring me a horse --	verb		ba	imp	
1765	162	164	b	1	إٖنٖنْدٖ	enende	enende					= \\Swa{alienda}.	-end-	she went and followed him,	verb		ba	past	
2030	188	190	c	1	إٖنٖنْدَ	enenda	enenda						-end-	Go to the mosque,	verb		ba	imp	
1083	100	102	c	2	مَجْلِسِ	majlisi	majlisi		majilisi			\\Swa{majlisi} = \\Swa{baraza}: a meeting-place where men gather to chat and pass the time.	j-l-s		noun	final	ar		
1570	144	146	c	4	شَكَ	shaka	shaka						sh-k-k		noun	final	ar		
1683	154	156	d	3	مَرْضِيَ	marḍiya	mardhiya		maridhiya			That is, do not refuse anything -- the opposite of \\Swa{-legea}, \\E{be remiss}.	r-a-zw		noun	final	ar		
1695	155	157	d	3	وَصِيَ	waṣiya	wasiya					\\Swa{wasia} is often translated as \\q{last will}, but its wider meaning is \\q{wisdom}, or \\q{dos and donts}.	w-sw-a		noun	final	ar		
1881	173	175	d	4	عَفُوَ	ʿafuwa	afuwa		afua			The verb \\Swa{-afu}, \\E{preserve, deliver}, is the opposite of \\Swa{-tesa}, \\E{suffer, be afflicted by}, e.g. sickness, poverty, love.	3-f-a		noun	final	ar		
2452	229	231	c	3	بُدِ	budi	budi						b-d-d		noun	final	ar		
2562	240	242	c	3	تَبَسَمُ	tabasamu	tabasamu					Since \\Swa{mwana} in the previous line meant \\E{child}, it would make sense to continue that meaning here, with the implication that Ja'far  \\Swa{amehuzunika}, \\E{has become sad}, because everyone seems to be against him.  However, this makes the transition to the next stanza somewhat abrupt, so it may be better to assume that \\Swa{mwana} in this line is used as a respectful title, \\E{lady, mistress}, and refers to Fatima.	b-s-m		noun	final	ar		
2580	242	244	b	3	كِسِرَنِ	kisirani	kisirani					\\Swa{haṯeki}, \\E{she is not laughing}.  If someone is in a bad mood, you might say: \\Swa{ameamka na kisirani}, \\E{he got out of the wrong side of the bed}.  A \\Swa{siku wa kisirani} is a \\q{bad hair day}, a day on which nothing goes right.	k-s-r		noun	final	ar		
3317	306	314	d	2	وَصِيَ	waṣiya	wasiya					In other words, if the hearer is doubtful that this is true, let him just try it.  See also the note to 208d.	w-sw-a		noun	final	ar		
444	41	43	b	3	شَيْطَانِ	shayṭāni	shaytani		shaitani				sh-tw-n		noun	final	ar		
467	43	45	c	4	عَيْنَ	ʿayna	ayna		aina			\\Swa{ya aina}, \\E{one of a kind}, i.e. \\Swa{nzuri}.	3-a-n		noun	final	ar		
3322	307	315	b	3	ضَمِيْرِ	ḍamı̄ri	dhamiri						dw-m-r		adj	final	ar		
2677	250	252	c	3	هَكِكَ	hakika	hakika						hh-q-q		adv	final	ar		
1998	185	187	c	1	بَبَ	baba	baba						baba	Father, I still don't recognise	noun		ba		
1896	175	177	b	2	بَبَكٖ	babake	babake						baba		noun		ba		
2032	188	190	d	1	بَبَكٗ	babako	babako						baba	and call your father for me.	noun		ba		
1878	173	175	d	1	كْوَ	kwa	kwa						-a	in health and free from affliction.	ref		ba		
1895	175	177	b	1	كْوَ	kwa	kwa						-a	he did not know his father's home.	ref		ba		
1945	180	182	b	2	بَبَنْڠُ	babangu	babangu						baba		noun		ba		
1929	178	180	d	1	مْكٗنٗ	mkono	mkono						-kono	Give me your hand, Prophet.	noun		ba		
1980	183	185	b	3	وَٹُ	waţu	watu						-tu		noun		ba		
2007	186	188	b	2	لَكٖ	lake	lake						-ake		poss		ba		
1939	179	181	d	2	وَكٖ	wake	wake						-ake		poss		ba		
1976	183	185	a	3	يَنْڠُ	yangu	yangu						-angu		poss		ba		
1972	182	184	d	3	يَنْڠُ	yangu	yangu						-angu		poss		ba		
1924	178	180	b	2	وٖٹُ	weţu	wetu						-etu		poss		ba		
1919	177	179	d	2	وٖٹُ	weţu	wetu						-etu		poss		ba		
2086	193	195	d	2	زَءٗ	zao	zao						-ao		poss		ba		
1636	151	153	a	1	يَا	yā	ya		Ya				y-a	Oh God,	excl		ar		
1449	133	135	b	1	بُوْ	buu	buu		Bu				b-w	Abu Bakr, do not worry --	noun		ar		
1472	135	137	b	1	نِنَ	nina	nina						-na	I was laughing with joy,	have		ba		
1632	150	152	c	1	كِشَ	kisha	kisha						-ish-	and then she spoke	conj		ba		
1660	153	155	a	1	مِمِ	mimi	mimi						mimi	Even if you were to anger me	pron		ba		
1789	164	166	d	1	أُسِكُ	usiku	usiku						-siku	[ja'far] will be back by nightfall.	noun		ba		
3319	307	315	a	2	كُكَرِرِ	kukariri	kukariri						k-r-r		verb	final	ar	ku	
1836	169	171	c	3	كُؤُذِكَ	kuudhika	kuudhika					\\Swa{haina maana}, \\E{there is no justification for it}.	3-zw-zw		verb	final	ar	ku	
2201	204	206	b	3	كَعَبِرِ	kaʿabiri	kaabiri					\\Swa{-abiri} < \\AS{عبر}, \\E{traverse, cross} was used in older Swahili to mean \\E{travel from continent to continent in a ship}, but now it refers to travel in general.	3-b-r		verb	final	ar	ka	
1959	181	183	c	2	أَكَرَدِدِ	akaradidi	akaradidi						r-d-d		verb	final	ar	ka	
1963	182	184	a	1	أَكَمُؤُزَ	akamuuza	akamuuza					\\Swa{-uza} = \\Swa{-uliza}.	-uz-	She asked Husayn:	verb		ba	ka	
1996	185	187	b	1	أَكَمُؤُزَ	akamuuza	akamuuza						-uz-	And asked the Hashimite:	verb		ba	ka	
1790	164	166	d	2	أَتَرٖجٖيَ	atarejeya	atarejeya					She tries to comfort the child by saying things like \\Swa{hendi mbali -- atakuja atakuletea peremendi}, \\E{he is not going far -- he will come back and bring you sweets}.	r-j-3		verb	final	ar	ta	
3112	293	295	a	2	كِئِفَسِرِ	kiifasiri	kiifasiri						f-s-r		verb	final	ar	ki	
3315	306	314	c	3	نَجَرِبُ	najaribu	najaribu		ajaribu	*			j-r-b		verb	final	ar	a	
1990	184	186	c	1	أَكِكٗمَ	akikoma	akikoma						-kom-	When he had finished speaking	verb		ba	ki	
101	10	10	b	2	سِمتَأَمَلِ	simtaamali	simtaamali						a-m-l		verb	final	ar	a	y
1847	170	172	d	1	هَمُنِؤٗنِ	hamunioni	hamunioni						-on-	you have never seen me cry.	verb		ba	a	y
456	42	44	c	2	مُيَفَهَمُ	muyafahamu	muyafahamu					\\q{that you may all understand it}, or \\q{that you may understand it all}.	f-h-m		verb	final	ar	subj	
333	30	32	b	2	أَبُرُدِ	aburudi	aburudi					He is speaking as if \\Swa{iko moto nyumbani}, \\E{there is a fire at home}, and he wants Fatima to \\Swa{apoe}, \\E{cool down}.\n 	b-r-d		verb	final	ar	subj	
1965	182	184	b	1	أَمْكُوَءٗ	amkuwao	amkuwao		amkuao			= \\Swa{aitaye}.	-amku-	Who is calling?	verb		ba	a	
2324	217	219	b	1	نِ	ni	ni						ni	All is well where I come from;	exist		ba		
2165	201	203	b	1	إِلٖ	ile	ile						-le	I couldn't find the road --	dem		ba		
2025	188	190	a	1	هَپٗ	hapo	hapo						h-	Then the Lord, the Trustworthy One,	dem		ba		
2034	189	191	a	1	هَپٗ	hapo	hapo						h-	So Husayn went off	dem		ba		
2736	256	258	c	2	نَ	na	na						na		conj		ba		
3094	291	293	b	1	بَسِ	basi	basi						b-s	spoke to her then:	conj		ar		
2453	229	231	d	1	إِلَّا	illā	illa		ila				2-l-a	but to tell you.	conj		ar		
504	47	49	c	1	هَتَ	hata	hata						h-t-t	not a single [person] secretly	conj		ar		
2690	251	253	d	2	هَتَ	hata	hata						h-t-t		conj		ar		
2680	251	253	a	1	هَتَ	hata	hata						h-t-t	Until, as time went by,	conj		ar		
1208	111	113	b	1	هَتَ	hata	hata						h-t-t	until they had passed,	conj		ar		
3182	300	302	a	1	هَتَ	hata	hata						h-t-t	Until, when dawn came,	conj		ar		
151	15	15	c	1	هَتَ	hata	hata						h-t-t	until he arrived home.	conj		ar		
3257	306	308	d	1	هَتَ	hata	hata						h-t-t	until he reached her home.	conj		ar		
2670	250	252	a	1	هَتَ	hata	hata						h-t-t	Until at the end of one year	conj		ar		
1623	149	151	c	1	هَتَ	hata	hata						h-t-t	so that her clothing came undone,	conj		ar		
1	1	1	a	1	بِسْمِ	bismi	bismi		bismillahi				2-s-m	\\q{In the name of God}, my friends	noun		ar		
1000	92	94	c	3	عَوْنِ	ʿawni	auni						3-a-n		noun		ar		
90	9	9	c	1	أَلِ	ali	ali						3-l-y	He had a ring on his finger, 	persn		ar		
2834	266	268	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	and addressed Ali.	persn		ar		
213	21	21	a	2	عَلِيْ	ʿalii	alii		Ali				3-l-y		persn		ar		
146	15	15	a	1	عَلِى	ʿalii	alii		Aliyi				3-l-y	Ali got up	persn		ar		
159	16	16	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	and became perplexed.	persn		ar		
207	20	20	c	1	عَلِى	ʿalii	alii		Aliyi				3-l-y	Ali was startled --	persn		ar		
272	24	26	a	1	عَلِى	ʿalii	alii		Aliyi				3-l-y	Ali declared:	persn		ar		
291	26	28	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali was worried	persn		ar		
358	32	34	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	to fetch Ali.	persn		ar		
364	33	35	c	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	The news about Ali --	persn		ar		
3261	307	309	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3250	306	308	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3214	303	305	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali went into the inner [room]	persn		ar		
2722	255	257	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali, let us go to your house --	persn		ar		
2694	252	254	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke	persn		ar		
2668	249	251	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali would go to him [to help].	persn		ar		
569	53	55	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	and Ali watched him.	persn		ar		
2611	245	247	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali said: Indeed, 	persn		ar		
2565	241	243	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	So Ali said:	persn		ar		
2563	240	242	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	when Ali looked at her.	persn		ar		
2535	238	240	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2437	228	230	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke:	persn		ar		
2338	218	220	c	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke:	persn		ar		
595	56	58	b	2	عَلِى	ʿalii	alii		Aliyi				3-l-y	Ali came out [of hiding]	persn		ar		
654	61	63	d	1	عَلِى	ʿalii	alii		Aliyi				3-l-y	Ali looked at it.	persn		ar		
44	5	5	a	1	عَلِى	ʿalii	alii		Aliyi				3-l-y	When Ali left [Atika]	persn		ar		
724	68	70	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2105	195	197	c	1	وَعَلَيْكَ	waʿalayka	waalayka		wa-aleka				a-l-k	Peace be with you, 	pron		ar		
1638	151	153	a	3	مٗلَ	mola	mola		Mola				a-a-l	my Lord,	godn		ar		
3306	305	313	d	1	مٗلَ	mola	mola		Mola				a-a-l	the Lord will bring to him.	godn		ar		
169	17	17	b	1	أَمَ	ama	ama						a-m-m	or have you a temperature?	conj		ar		
2846	268	270	a	2	أَمَّا	ammā	amma		ama				a-m-m		conj		ar		
819	76	78	c	2	عَلِى	ʿalii	alii		Aliyi				3-l-y		persn		ar		
1317	121	123	b	1	عَلِي	ʿalii	alii		Aliyi				3-l-y	of Ali ibn Talib.	persn		ar		
1670	153	155	d	3	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2020	187	189	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2076	193	195	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke:	persn		ar		
2070	192	194	b	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2107	195	197	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali answered.	persn		ar		
2109	196	198	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke:	persn		ar		
2210	205	207	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali spoke:	persn		ar		
2251	209	211	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali understood [what it meant].	persn		ar		
2288	213	215	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali said:	persn		ar		
2296	214	216	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali came back from the inner [room]	persn		ar		
2772	260	262	b	2	عَلِىْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2810	264	266	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2826	265	267	d	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali still insensible.	persn		ar		
2856	269	271	a	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali, don't go on about this too much -- 	persn		ar		
3003	282	284	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3009	283	285	b	1	عَلِيْ	ʿalii	alii		Aliyi				3-l-y	Ali, it's me,  Hamza.	persn		ar		
3027	285	287	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3313	306	314	c	1	أَوْ	aw	au						2-w	and let the person try [it],	conj		ar		
3320	307	315	b	1	نَنْيِ	nanyi	nanyi						na	and you, read it inwardly --	conj		ba		
3145	296	298	b	1	عَطِكَ	ʿaṭika	atika		Atika				3-tw-k	Atika, the water is not something [to eat] --	persn		ar		
3191	301	303	a	1	عَطِكَ	ʿaṭika	atika		Atika				3-tw-k	Atika said:	persn		ar		
1450	133	135	b	2	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn		ar		
227	22	22	b	2	بَكَرِ	bakari	bakari		Bakari				b-k-r		persn		ar		
2012	186	188	d	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	and addressed Fatima.	persn		ar		
3120	294	296	a	1	فَطِمَ	faṭima	fatima		Fatima				f-t-m	Fatima spoke to her,	persn		ar		
155	15	15	d	2	فَاطِمَ	fāṭima	fatima		Fatima				f-t-m		persn		ar		
78	8	8	b	1	فَاطِمَه	fāṭimah	fatimah		Fatima				f-t-m	but Fatima refused to believe her,	persn		ar		
69	7	7	b	1	فَاطِمَه	fāṭimah	fatimah		Fatima				f-t-m	and she said to Fatima:	persn		ar		
395	36	38	d	1	فَاطِمَة	fāṭimaẗ	fatimat		Fatima				f-t-m	Fatima the Radiant.	persn		ar		
2743	257	259	b	1	فَتُمَ	fatuma	fatuma		Fatuma			In a fairytale we would immediately conclude that \\Swa{mama wa kambo anamdhuru}, \\E{his stepmother is doing him harm}, but nothing could be further from the truth in this case -- it is God who has determined Ja'far's fate.	f-t-m	Fatima spoke:	persn		ar		
360	33	35	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima did not hesitate,	persn		ar		
1958	181	183	c	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima answered	persn		ar		
3227	304	306	b	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima, will you not be angry	persn		ar		
1992	184	186	d	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima answered him.	persn		ar		
2756	258	260	c	1	غَفُلَ	ghafula	ghafula						gh-f-l	and all of a sudden he said:	adj		ar		
32	3	3	d	2	حَلَالِ	ḥalāli	halali						hh-l-l		adj		ar		
1994	185	187	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima spoke	persn		ar		
2238	208	210	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima had been sitting down.	persn		ar		
2262	210	212	b	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima spoke:	persn		ar		
2363	221	223	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima got up	persn		ar		
312	28	30	b	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima is annoyed with me --	persn		ar		
2445	229	231	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima replied:	persn		ar		
2554	240	242	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima spoke [to the boys]:	persn		ar		
3203	302	304	a	2	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn		ar		
3222	303	305	d	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima, and went to him.	persn		ar		
2424	226	228	c	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima got up	persn		ar		
162	16	16	c	2	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m		persn		ar		
1156	106	108	d	1	هَتَ	hata	hata						h-t-t	that you came to recognise him."	conj		ar		
1436	132	134	a	1	هَتَ	hata	hata						h-t-t	Until, when I came to the well,	conj		ar		
1818	167	169	d	1	هَتَ	hata	hata						h-t-t	So explain these [things] to me.	conj		ar		
1835	169	171	c	2	هَتَ	hata	hata						h-t-t		conj		ar		
2943	277	279	a	1	هَتَ	hata	hata						h-t-t	So as she followed the road	conj		ar		
606	57	59	c	1	هَتَ	hata	hata						h-t-t	Even if you were a jinn	conj		ar		
2146	199	201	c	1	هَتَ	hata	hata						h-t-t	until I realised	conj		ar		
3031	285	287	c	1	هَتَ	hata	hata						h-t-t	and outside he spoke,	conj		ar		
202	20	20	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima replied:	persn		ar		
2600	244	246	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima spoke:	persn		ar		
2581	242	244	c	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima said: What is the point	persn		ar		
3184	300	302	b	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima got up	persn		ar		
2635	247	249	a	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	Fatima spoke these words:	persn		ar		
3161	297	299	d	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	and Fatima took it. (?)	persn		ar		
293	26	28	b	1	فَتُمَ	fatuma	fatuma		Fatuma				f-t-m	that Fatima was angry.	persn		ar		
381	35	37	b	1	كُمْسِتَحِ	kumsitaḥi	kumsitahi						h-w-a	to show honour to the Hashimite,	verb		ar	ku	
1630	150	152	b	1	كَمُحِمِدِ	kamuḥimidi	kamuhimidi						hh-m-d	she thanked the Generous One,	verb		ar	ka	
1839	170	172	a	1	أَكَجِبُ	akajibu	akajibu						j-a-b	[Nasir] answered with the words	verb		ar	ka	
1521	140	142	a	1	نِكَمُحِمِدِ	nikamuḥimidi	nikamuhimidi					Compare 202b. 	hh-m-d	I pleaded with God	verb		ar	ka	
193	19	19	b	1	نِئِفِدِ	niifidi	niifidi					\\Swa{niifidi} =  \\Swa{niokoe}.  Therefore, lit., \\q{so that I may save my soul, so that I will not be in distress}.  This expresses humility, and shows that the speaker cares very much about the other person.	f-a-d	so that I may console you,	verb		ar	subj	
459	43	45	a	1	فَهَمُنِ	fahamuni	fahamuni					It seems that here we should envisage Ali explaining, after the events of the rest of the ballad, about the ring, and why he left it with Atika.	f-h-m	[Ali said:] Pay attention, noble [listeners],	verb		ar	imp	
2850	268	270	b	1	أَدُمُوٗ	adumuwo	adumuwo					\\Swa{-dumu} < \\AS{دَامَ}, \\E{endure}, cognate of \\Swa{daima}, \\E{always}.	d-a-m	who remains in existence,	verb		ar	a	
2464	230	232	d	1	حبر	ḥbr	hbr		habari	*			kh-b-r	and told him the news.	noun		ar		
1256	115	117	d	1	خَطَرِ	khaṭari	hatari						kh-tw-r	and about danger coming to us?	noun		ar		
2985	281	283	a	2	حَمْزَ	ḥamza	hamza		Hamza				h-m-z		persn		ar		
2954	278	280	a	1	حَمْزَة	ḥamzaẗ	hamzat		Hamza				h-m-z	Hamza was talking	persn		ar		
1690	155	157	c	1	أَللّٰهَ	allläha	alllaha		hala			\\Swa{hala} = \\Swa{hara}, an exhortation to effort, as in \\Swa{hara mbee!}, \\E{forward!} \\Swa{hala hala} is used when someone wants you to do something, and wants you not to forget, e.g. \\Swa{hala hala ukifika ulete barua}, \\E{make sure you deliver the letter when you arrive}.	l-a-h	so mind you exert yourself	conj		ar		
1691	155	157	c	2	اللّٰهَ	lläha	llaha		hala				l-a-h		conj		ar		
1399	128	130	c	1	لَكِنِ	lakini	lakini						l-k-n	But, [they said,] it is difficult	conj		ar		
1412	129	131	c	1	لَكِنِ	lakini	lakini						l-k-n	but we, you understand,	conj		ar		
2122	197	199	c	1	لَكِنِ	lakini	lakini						l-k-n	but, father, it is far --	conj		ar		
1497	137	139	c	1	لَكِنِ	lakini	lakini						l-k-n	But what good will it do you,	conj		ar		
1080	100	102	b	2	مَكَه	makah	makah		Maka				m-k-k		placen		ar		
772	72	74	c	2	مَكَه	makah	makah		Maka				m-k-k		placen		ar		
1891	174	176	d	2	مَكَه	makah	makah		Maka				m-k-k		placen		ar		
1893	175	177	a	1	مَكَه	makah	makah		Maka				m-k-k	When he arrived in Mecca	placen		ar		
1135	105	107	a	2	رَعُوفُ	raʿūfu	raufu					= \\Swa{taratibu}, \\E{polite}.	r-a-f		adj		ar		
8	1	1	c	2	الرَّحِيْمُ	rraḥı̄mu	rrahimu		ar-rahimu				r-hh-m		godn		ar		
1791	165	167	a	1	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r	Nasir spoke:	persn		ar		
3246	305	307	d	2	قَاسِمُ	qāsimu	qasimu		Qasimu			Qasim was Fatima's brother, and died in infancy.  The Prophet had 7 children (3 boys and 4 girls), but they all pre-deceased him except Fatima.	q-s-m		persn		ar		
3092	291	293	a	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
3178	299	301	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
530	50	52	a	2	عَلِى	ʿalii	alii		Aliyi				3-l-y		persn		ar		
888	82	84	c	1	كَمْجِبِشَ	kamjibisha	kamjibisha						j-a-b	And [Ja'far] answered him:	verb		ar	ka	
2496	234	236	a	1	أَكَمْجِبُ	akamjibu	akamjibu						j-a-b	Hasan answered him:	verb		ar	ka	
2088	194	196	a	1	أَكَمْجِبُ	akamjibu	akamjibu						j-a-b	And [Ja'far] answered him with the words:	verb		ar	ka	
2587	243	245	a	1	أَكَمْجِبُ	akamjibu	akamjibu						j-a-b	[Ali] answered her with the words:	verb		ar	ka	
1742	160	162	a	1	أَكَمْجِبُ	akamjibu	akamjibu						j-a-b	[Nasir] answered him quickly:	verb		ar	ka	
173	17	17	c	1	أَكَمْجِبُ	akamjibu	akamjibu						j-a-b	And Fatima replied:	verb		ar	ka	
2508	235	237	b	1	أَكَرَدِدِ	akaradidi	akaradidi						r-d-d	and told Husayn:	verb		ar	ka	
393	36	38	c	1	أَكَرُدِشَ	akarudisha	akarudisha						r-d-d	And he comforted her,	verb		ar	ka	
1614	148	150	c	1	أَكَتَرَدَدِ	akataradadi	akataradadi					\\Swa{taradadi} = \\Swa{-badilika}.	r-d-d	She went out of her mind	verb		ar	ka	
1393	128	130	a	1	وَكَنِجِبُ	wakanijibu	wakanijibu						j-a-b	They answered me with word	verb		ar	ka	
2290	213	215	b	1	هُمْصُبِرِ	humṣubiri	humsubiri					\\Swa{-subiri} = \\Swa{-ngoja}.	sw-b-r	we are [still] waiting for Husayn --	verb		ar	hu	
3311	306	314	b	1	أَتَجِبِوَ	atajibiwa	atajibiwa						j-a-b	he will be vouchsafed an answer,	verb		ar	ta	
2718	254	256	d	1	أَكُسَلِمُ	akusalimu	akusalimu						s-l-m	and he greets you, Prophet.	verb		ar	a	
2353	220	222	a	2	صُبِرِ	ṣubiri	subiri						sw-b-r		verb		ar	imp	
3070	289	291	a	2	صُبِرِ	ṣubiri	subiri						sw-b-r		verb		ar	imp	
188	18	18	d	1	أُسِخٗفُ	usikhofu	usihofu						kh-a-f	don't be afraid to ask me [for it].	verb		ar	imp	
102	10	10	c	1	أَرُدِپٗ	arudipo	arudipo						r-d-d	When he comes back from the Prophet's	verb		ar	a	
2309	215	217	c	1	أَمْرُدِشٖ	amrudishe	amrudishe		wamrudishe	*			r-d-d	so that they could return the greeting.	verb		ar	subj	
1640	151	153	b	1	نِنُصُرِيَ	ninuṣuriya	ninusuriya		ninusuria				n-sw-r	protect my child for me,	verb		ar	imp	
663	62	64	c	1	أَرُدِ	arudi	arudi						r-d-d	he stepped back greatly saddened	verb		ar	a	
620	58	60	d	2	زَيْدِ	zaydi	zaydi		zaidi			This is fighting talk -- \\Swa{jeuri}!	z-a-d		adv		ar		
882	81	83	d	2	زَيْدِ	zaydi	zaydi		zaidi				z-a-d		adv		ar		
1568	144	146	c	2	تِسِيَ	tisiya	tisiya		tisia				t-s-3		num		ar		
2348	219	221	c	2	تِسِيَ	tisiya	tisiya		tisia				t-s-3		num		ar		
112	11	11	c	1	حَسَنِ	ḥasani	hasani		Hasani			Hasan was Ali and Fatima's elder son, and Husayn (250) their younger.	hh-s-n	She sent Hasan, [saying:]	persn		ar		
2305	215	217	a	1	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n	Hasan spoke	persn		ar		
2466	231	233	a	1	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n	When Hassan got there	persn		ar		
2753	258	260	b	2	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n		persn		ar		
355	32	34	c	1	حَسَنِ	ḥasani	hasani		Hasani				hh-s-n	Hasan came [to us] in a hurry	persn		ar		
804	75	77	b	1	أَزْوَاجِ	azwāji	azwaji		aziwaji			Azwaj and Zubayr are the two people with Abu Bakr when Ja'far meets them on the road (174, 175).  This part of the story (i.e. how Ja'far came to be at the well) has not been told yet -- it is contained in a flashback a little later in the ballad.  In Y it would seem that the name Azwaj has been confused with the word for \\q{wife} (understandable in this context), and that \\Swa{dhuria}, \\E{children}, has then been substituted for Zubeir (as making better sense) -- note that \\Swa{dhuria} does not rhyme, whereas \\Swa{Zubiri} would.	z-w-j	your wives and children,	noun		ar		
1015	94	96	b	1	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r	You are ill-mannered, Nasir --	persn		ar		
879	81	83	c	3	أَلْفُ	alfu	alfu						2-l-f		num		ar		
1652	152	154	b	2	أَلْفُ	alfu	alfu		alifu				2-l-f		num		ar		
1154	106	108	c	2	جِنْسِ	jinsi	jinsi						j-n-s		qual		ar		
2938	276	278	c	1	كِلَ	kila	kila						k-l-l	calling at every house	qual		ar		
478	44	46	d	1	أَصِلِ	aṣili	asili						2-sw-l	its heritage should be lost.	noun		ar		
1779	163	165	d	1	عَادَ	ʿāda	ada					These fees will be paid in stages once certain portions of the Qur'an have been learned, and can be paid in kind (e.g. in food items such as \\Swa{bisi}, \\E{roasted corn}).	3-a-d	I will pay your fee.	noun		ar		
942	87	89	c	1	عَيْنِ	ʿayni	ayni		aini				3-a-n	To judge by his eyes,	noun		ar		
258	22	24	c	3	عَدُوِ	ʿaduwi	aduwi		adui				3-d-w		noun		ar		
1879	173	175	d	2	عَفِيَ	ʿafiya	afiya		afia			To preserve the rhyme, \\Swa{afia} and \\Swa{afua} should be swapped around, as in R.	3-f-a		noun		ar		
133	13	13	d	1	عَجَبُ	ʿajabu	ajabu						3-j-b	he was filled with wonder.	noun		ar		
80	8	8	c	1	عَلَامَ	ʿalāma	alama						3-l-m	but [the old woman] gave her proof,	noun		ar		
747	70	72	b	3	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun		ar		
2908	273	275	c	3	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun		ar		
1720	157	159	d	2	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun		ar		
784	73	75	c	1	مْوَلِمُ	mwalimu	mwalimu						3-l-m	the teacher and your mother	noun		ar		
2883	271	273	b	3	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun		ar		
828	77	79	b	3	مْوَلِمُ	mwalimu	mwalimu						3-l-m		noun		ar		
2865	269	271	d	1	عَقِلِ	ʿaqili	aqili		akili				3-q-l	[Ali] regained his senses.	noun		ar		
636	60	62	b	2	آدَمُ	ãdamu	adamu		~				a-d-m		noun		ar		
1573	144	146	d	3	تَرٖهٖ	tarehe	tarehe						a-r-kh		noun		ar		
1688	155	157	b	2	بُدِ	budi	budi						b-d-d		noun		ar		
545	51	53	c	2	بُدِ	budi	budi						b-d-d		noun		ar		
58	6	6	a	2	بِنْتِ	binti	binti						b-n-t		noun		ar		
1697	156	158	a	2	بِنْتِ	binti	binti						b-n-t		noun		ar		
85	9	9	a	2	بِنْتِ	binti	binti						b-n-t		noun		ar		
2155	200	202	b	3	بَرَ	bara	bara						b-r-r		noun		ar		
1176	108	110	b	2	بَرَ	bara	bara						b-r-r		noun		ar		
2900	273	275	a	1	بَرُوَ	baruwa	baruwa		barua				b-r-w	When he had given her the letter	noun		ar		
3111	293	295	a	1	بَرُوَ	baruwa	baruwa		barua				b-r-w	When I realised what was in the letter	noun		ar		
2474	231	233	d	1	بِبِ	bibi	bibi					\\Swa{bibi} is a more polite way of saying \\Swa{mama}.	b-y-b	my mother - I'm telling you.	noun		ar		
3282	309	311	b	1	بَيْتِ	bayti	bayti		baiti				b-y-t	my verses have come to an end,	noun		ar		
3291	304	312	a	1	بَيْتِزٖ	baytize	baytize		baitize				b-y-t	Learn [the poem's] verses,	noun		ar		
3125	294	296	c	1	دُعَ	duʿa	dua						d-3-a	seven whole prayers	noun		ar		
1872	173	175	a	1	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r	Nasir said:	persn		ar		
2504	234	236	d	1	هٗيٗ	hoyo	hoyo						h-	[it is] this person who has told [people] that.	dem		ba		
42	4	4	d	1	كَوَهِ	kawahi	kawahi						w-kh-kh	and I persuaded her to wear it.	verb		ar	ka	
94	9	9	d	1	كَوَهِ	kawahi	kawahi						w-kh-kh	and he took it off [to leave it] with her."	verb		ar	ka	
3263	307	309	b	1	أَكَصَلِ	akaṣali	akasali						sw-l-w	said the midday prayers	verb		ar	ka	
765	72	74	a	1	أَكَمْطِبُ	akamṭibu	akamtibu						tw-a-b	[Ali] gave [Ja'far] some advice:	verb		ar	ka	
3040	286	288	c	1	صُبِرِ	ṣubiri	subiri					Compare 336b, where the Prophet says much the same to Ali.	sw-b-r	trust in Providence	verb		ar	imp	
1172	108	110	a	1	صَدِقِ	ṣadiqi	sadiqi						sw-d-q	Believe my words:	verb		ar	imp	
1707	156	158	d	1	أُمْطِيْ	umṭii	umtii						tw-a-3	obey her and be humble towards her.	verb		ar	subj	
2796	262	264	c	2	ضَرُبُ	ḍarubu	dharubu					\\Swa{dharubu} = \\Swa{taabu, mashaka}	dw-r-b		noun		ar		
1284	118	120	b	2	دِيْنِ	dı̄ni	dini						d-y-n		noun		ar		
1646	151	153	d	1	حِفَظِنِ	ḥifaẓini	hifadhini						f-dh-n	place them for me in your care.	noun		ar		
1473	135	137	b	2	فُرَهَ	furaha	furaha						f-r-hh		noun		ar		
1519	139	141	d	2	غَضَبُ	ghaḍabu	ghadhabu						gh-dh-b		noun		ar		
440	41	43	a	2	هُضُمُ	huḍumu	hudhumu						h-dh-m		noun		ar		
2085	193	195	d	1	حَالِ	ḥāli	hali						hh-a-l	tell me how they are.	noun		ar		
862	80	82	b	4	حَلِ	ḥali	hali						hh-a-l		noun		ar		
2221	206	208	b	2	هَبَ	haba	haba						hh-b-b		noun		ar		
473	44	46	b	2	مَهَبَ	mahaba	mahaba						hh-b-b		noun		ar		
2202	204	206	c	1	حُجَ	ḥuja	huja					\\Swa{huja}, \\E{reason, argument, proof}.	hh-w-j	Regarding coming late,	noun		ar		
468	43	45	d	1	حُجَ	ḥuja	huja						hh-w-j	the reason I left it behind.	noun		ar		
952	88	90	b	2	حُجَ	ḥuja	huja						hh-w-j		noun		ar		
108	11	11	a	2	هِمَ	hima	hima						h-m-m		noun		ar		
1971	182	184	d	2	جَدِ	jadi	jadi					= \\Swa{babu}.	j-d-d		noun		ar		
1975	183	185	a	2	جَدِ	jadi	jadi						j-d-d		noun		ar		
2526	237	239	b	1	جَمِيْعِ	jamı̄ʿi	jamii						j-m-3	among all the Helpers:	noun		ar		
455	42	44	c	1	جَمِيْعِ	jamı̄ʿi	jamii						j-m-3	so that all of you may understand them -- 	noun		ar		
2821	265	267	b	2	جَمِيْعِ	jamı̄ʿi	jamii						j-m-3		noun		ar		
2379	222	224	c	1	جُمْلَ	jumla	jumla						j-m-l	all five of them,	noun		ar		
2082	193	195	c	1	جُمْلَ	jumla	jumla						j-m-l	All your relatives,	noun		ar		
1188	109	111	b	2	جَنِبُ	janibu	janibu					\\Swa{janibu} = \\Swa{upande}.	j-n-b		noun		ar		
1457	134	136	a	2	خٗوْفُ	khōfu	hofu						kh-a-f		noun		ar		
327	29	31	d	1	خٗوْفُ	khōfu	hofu						kh-a-f	I'm filled with fear.	noun		ar		
831	77	79	c	2	هَبَرِ	habari	habari						kh-b-r		noun		ar		
373	34	36	b	3	هَبَرِ	habari	habari						kh-b-r		noun		ar		
1038	96	98	b	2	هَبَرِ	habari	habari						kh-b-r		noun		ar		
18	2	2	c	2	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
246	21	23	d	1	هَبَرِ	habari	habari						kh-b-r	I have heard the news.	noun		ar		
2499	234	236	b	2	خَبَرِ	khabari	habari						kh-b-r		noun		ar		
65	6	6	d	1	خَبَرِ	khabari	habari						kh-b-r	and told her the news.	noun		ar		
2522	236	238	d	1	خَبَرِ	khabari	habari						kh-b-r	The news has spread.	noun		ar		
1575	145	147	a	1	خَبَرِ	khabari	habari						kh-b-r	The news about him is finished.	noun		ar		
2270	211	213	b	1	خَبَرِ	khabari	habari						kh-b-r	and tell his news -- 	noun		ar		
2226	206	208	d	1	خَطَرِ	khaṭari	hatari						kh-tw-r	danger stalked him.	noun		ar		
3079	289	291	d	2	أَخٖرَ	akhera	ahera					It is said: \\Swa{ukisema mambo mabaya, utapata madhambi kwa Mungu; ukisubiri, utapata malipo mazuri}, \\E{if you say irreligious things, God will judge you as having sinned; on the other hand, if you trust [in him], you will be well-rewarded}.	kh-y-r		noun		ar		
1182	108	110	d	2	خٖيْرِ	khēri	heri						kh-y-r		noun		ar		
2520	236	238	c	2	خٖيْرِ	khēri	heri						kh-y-r		noun		ar		
1074	99	101	d	1	خٖيْرِ	khēri	heri						kh-y-r	and it's better to keep quiet about it.	noun		ar		
445	41	43	c	1	مْلَنِوَ	mlaniwa	mlaniwa						l-3-n	a cursed one, a damned one,	noun		ar		
2	1	1	a	2	اللّٰهِ	llähi	llahi		~				l-a-h		noun		ar		
249	22	24	a	2	وَاللّٰهِ	wallähi	wallahi						l-a-h		noun		ar		
2686	251	253	c	1	لَكِ	laki	laki					\\Swa{laki} < \\AS{لَكٌّ}, \\E{100,000}.	l-k-k	of 100,000 unbelievers	noun		ar		
2206	204	206	d	1	مَعَانَ	maʿāna	maana						m-3-n	I have told you the reason.	noun		ar		
1477	135	137	d	1	مُدَ	muda	muda						m-d-d	when the sun was burning hot.	noun		ar		
2665	249	251	c	1	مَهَلَ	mahala	mahala						m-hh-l	where there were 200 [opponents]	noun		ar		
284	25	27	b	1	مَهَلٖ	mahale	mahale		mahali	*			m-hh-l	where you have put it,	noun		ar		
35	4	4	a	2	مَهَرِيٖ	mahariye	mahariye						m-h-r	And know that as for her dowry,	noun		ar		
475	44	46	c	1	مَرَ	mara	mara						m-r-r	[but lest] once the child was born,	noun		ar		
2386	223	225	a	1	مَرَ	mara	mara						m-r-r	Three times indeed	noun		ar		
2257	209	211	d	3	مَرَ	mara	mara						m-r-r		noun		ar		
1201	110	112	c	1	مَرَ	mara	mara					\\Swa{mara} here = \\Swa{pengine}.	m-r-r	once I get there	noun		ar		
3118	293	295	d	1	تَنَبُهِ	tanabuhi	tanabuhi					= \\Swa{hatari}.	n-b-b	I put myself in danger.	noun		ar		
2407	225	227	a	1	تَمْبُوْ	tambuu	tambuu					\\Swa{tambuu} is lime wrapped in a betel leaf, used like chewing tobacco.  Protracted use stains the teeth red.  Offering \\Swa{tambuu} is a particular feature of northern Swahili culture.  However, it is very unlikely that \\Swa{tambuu} would have been offered in the original Arabian setting of the story, and it is even less likely that the Prophet would have accepted it even if it was.	n-b-l	Choice tambuu	noun		ar		
582	55	57	a	3	نِ	ni	ni		nibiri				n-b-r		noun		ar		
447	41	43	d	1	نِيَه	niyah	niyah		nia				n-y-y	planting evil intentions in me.	noun		ar		
3054	287	289	c	2	قَبُرِ	qaburi	qaburi						q-b-r		noun		ar		
3022	284	286	c	1	قَبُرِنِ	qaburini	qaburini						q-b-r	Take me to his grave -- 	noun		ar		
20	2	2	d	1	قِصَ	qiṣa	qisa						q-sw-sw	an account of what happened to me.	noun		ar		
176	17	17	d	2	مَرَضِ	maraḍi	maradhi						r-a-zw		noun		ar		
1651	152	154	b	1	نِرَضِ	niraḍi	niradhi		ni radhi				r-a-zw	I bless you a thousand times.	noun		ar		
2645	247	249	d	1	رَضِ	raḍi	radhi						r-a-zw	I forgive you.	noun		ar		
1596	146	148	d	2	رَضِ	raḍi	radhi						r-a-zw		noun		ar		
2493	233	235	d	1	هُكُ	huku	huku						h-	to our house, I hear.	dem		ba		
878	81	83	c	2	رَضِ	raḍi	radhi					\\Swa{radhi}, \\E{consent, blessing}, is of great importance to a person, whether it be from his mother, his father, or his teacher.  People will become afraid if any of these three persons withhold their \\Swa{radhi}, since it is held that without \\Swa{radhi} you cannot prosper -- anything you set your hand to will be blighted and fail.  The teacher here gives Ja'far his \\Swa{radhi} -- if he had not given it, Ja'far would not have gone -- and says that not only will he give his complete consent, but also (133d) that he will not change his mind once Ja'far has gone.	r-a-zw		noun		ar		
157	16	16	a	1	هُرُمَ	huruma	huruma						r-hh-m	Ali was seized with pity,	noun		ar		
194	19	19	b	2	رٗحٗ	roḥo	roho						r-w-hh		noun		ar		
3138	295	297	d	1	رُوْحُ	rūḥu	ruhu					\\Swa{ruhu} = \\Swa{roho}.	r-w-hh	and my soul wants to cry out.	noun		ar		
1887	174	176	c	1	سَاءَ	saa	saa						s-a-3	and at four o'clock	noun		ar		
626	59	61	b	2	سَاءَ	saa	saa						s-a-3		noun		ar		
2347	219	221	c	1	سَاءَ	saa	saa						s-a-3	it is now the ninth hour for certain,	noun		ar		
2148	199	201	d	1	سَاءَ	saa	saa					\\Swa{saa}, \\E{hour}, is used here to signify the passage of time.	s-a-3	a long time had passed.	noun		ar		
1483	136	138	a	3	سَاءَ	saa	saa						s-a-3		noun		ar		
760	71	73	c	1	سَاءَ	saa	saa						s-a-3	and when the first hour comes	noun		ar		
3236	305	307	a	2	شَهِدِ	shahidi	shahidi						sh-h-d		noun		ar		
1876	173	175	c	1	سَلَامَ	salāma	salama						s-l-m	safe and sound,	noun		ar		
2325	217	219	b	2	سَلَامَ	salāma	salama						s-l-m		noun		ar		
2080	193	195	b	2	سَلَامَ	salāma	salama						s-l-m		noun		ar		
801	75	77	a	1	سَلَامُ	salāmu	salamu						s-l-m	Greetings to Abu Bakr,	noun		ar		
1213	111	113	d	1	سَلَامُ	salāmu	salamu						s-l-m	I greeted them.	noun		ar		
2065	191	193	d	1	سَلَامُ	salāmu	salamu						s-l-m	he greeted [those inside].	noun		ar		
2067	192	194	a	1	سَلَامُ	salāmu	salamu						s-l-m	While he was greeting [them],	noun		ar		
2303	214	216	d	1	سَلَامُ	salāmu	salamu						s-l-m	greeting them.	noun		ar		
1589	146	148	b	1	أَسُبهِ	asubhi	asubhi		asubuhi				sw-b-hh	[tomorrow] morning I will set off [to go to my father].	noun		ar		
2120	197	199	b	1	أَصُبُحِ	aṣubuḥi	asubuhi						sw-b-hh	I prayed in the morning,	noun		ar		
1760	161	163	d	1	صَدَكَ	ṣadaka	sadaka					Contrast \\Swa{sadaka} with \\Swa{kafara}, \\E{expiatory offering} -- the former is given before doing something, the latter after doing something.  The purpose of the \\Swa{sadaka} is to protect Ja'far.  If a person is ill, you might put money under his pillow, or rice under his bed, and then give that away as alms, in the hope that he will get better.  Or to bring blessings to someone, you might circle them three times with the \\Swa{sadaka}, and then give it away (compare the note to 201d).	sw-d-q	and gave alms for him.	noun		ar		
1090	101	103	c	1	صِفَ	ṣifa	sifa						sw-f-h	a clear description,	noun		ar		
1128	104	106	c	1	صِفَ	ṣifa	sifa						sw-f-h	His description is complete --	noun		ar		
2194	203	205	d	1	صَالَ	ṣāla	sala						sw-l-w	it was time to pray.	noun		ar		
2962	278	280	d	1	صَلَ	ṣala	sala						sw-l-w	and prayers were about to begin.	noun		ar		
710	67	69	b	2	سُرَ	sura	sura						sw-w-r		noun		ar		
2162	201	203	a	1	سُرَ	sura	sura					= \\Swa{namna yeyote}, \\E{whatever kind}.	sw-w-r	Wherever I went in the scrubland	noun		ar		
497	46	48	d	1	صُوْرَ	ṣūra	sura						sw-w-r	his features said who he was.	noun		ar		
1033	95	97	d	1	صُوْرَ	ṣūra	sura						sw-w-r	and you are not your ordinary self.	noun		ar		
2023	187	189	d	2	صُوْرَ	ṣūra	sura						sw-w-r		noun		ar		
1550	143	145	a	2	صُوْرَ	ṣūra	sura						sw-w-r		noun		ar		
2275	211	213	d	2	أُثَقِلِ	uthaqili	uthaqili						th-q-l		noun		ar		
2591	243	245	b	3	طَبِيَ	ṭabiya	tabiya						tw-b-3		noun		ar		
3165	298	300	b	1	وَعَظِ	waʿaẓi	waadhi						w-3-zw	and showed her [what to do] by exhortation.	noun		ar		
1938	179	181	d	1	وَجْهِ	wajhi	wajhi		wajihi				w-j-h	His face is that of the Prophet.	noun		ar		
1312	120	122	d	1	وَجْهِ	wajhi	wajhi		wajihi			\\Swa{wajhi} = \\Swa{uso}.	w-j-h	his face [resembles] the Prophet's.	noun		ar		
1481	136	138	a	1	أَوَلِ	awali	awali						w-w-l	Just before the sixth hour (noon),	noun		ar		
2196	204	206	a	1	أَوَلِ	awali	awali						w-w-l	Just after noon	noun		ar		
935	87	89	a	1	نَاصِرِ	nāṣiri	nasiri		Nasiri			We are not told who Nasir's father is.	n-sw-r	Nasir was [Ja'far's] brother,	persn		ar		
1772	163	165	a	2	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r		persn		ar		
991	92	94	a	1	نَاصِرِ	nāṣiri	nasiri		Nasiri				n-sw-r	[To Jaafar she said:] "Nasir is your brother,	persn		ar		
2870	270	272	b	1	زُبَيْرِ	zubayri	zubayri		Zuberi				z-b-r	He summoned Zubayr [and said:]	persn		ar		
1066	98	100	d	1	أَلِفَرِكِ	alifariki	alifariki						f-r-q	he passed away from this world."	verb		ar	li	
2174	202	204	a	2	فِكِرَ	fikira	fikira						f-k-r		verb		ar	imp	
2728	255	257	d	1	هُئِفَرِكِ	huifariki	huifariki						f-r-q	is departing this world.	verb		ar	hu	
1454	133	135	d	1	نِتَرُدِ	nitarudi	nitarudi						r-d-d	I will return, I tell you.	verb		ar	ta	
3152	296	298	d	1	يَبَكِيٖؤٗ	yabakiyeo	yabakiyeo		yabakieyo				b-q-y	and whatever is left I will take.	verb		ar	past	
2179	202	204	c	1	نَرُدِيَ	narudiya	narudiya		narudia				r-d-d	and returned to my [correct] place	verb		ar	a	
3067	288	290	d	1	أَئِفَرِكِ	aifariki	aifariki						f-r-q	[ja'far] to pass away.	verb		ar	subj	
2891	272	274	a	1	زُبَيْرِ	zubayri	zubayri		Zuberi				z-b-r	Zubayr did not delay --	persn		ar		
2912	274	276	a	1	زُبَىْرِ	zubayri	zubayri		Zuberi				z-b-r	When Zubayr had left	persn		ar		
2904	273	275	b	2	زُبٖىْرِ	zubēri	zuberi		Zuberi				z-b-r		persn		ar		
1932	179	181	a	1	زُبٖيْرِ	zubēri	zuberi		Zuberi				z-b-r	Zubayr was amazed:	persn		ar		
1914	177	179	b	1	زُبٖيْرِ	zubēri	zuberi		Zuberi				z-b-r	and stopped.	persn		ar		
3295	304	312	c	1	أَصُبُحِ	aṣubuḥi	asubuhi						sw-b-hh	morning and evening,	noun		ar		
2060	191	193	b	1	پَپٗ	papo	papo						h-	[Ali] set off immediately.	dem		ba		
501	47	49	b	1	عَلِى	ʿalii	alii		Aliyi				3-l-y	[but] Ali knew nothing of it --	persn		ar		
74	7	7	d	1	خَبَرِ	khabari	habari						kh-b-r	have you heard the news?	noun		ar		
400	37	39	b	2	رَضِ	raḍi	radhi					See note to 133c.	r-a-zw		noun		ar		
72	7	7	c	2	عَلِيْ	ʿalii	alii		Aliyi				3-l-y		persn		ar		
2676	250	252	c	2	مِيَ	miya	miya						m-a-y		num		ar		
1359	124	126	d	2	مَوْلَانَا	mawlānā	maulana		Maulana				a-a-l		title		ar		
488	45	47	d	2	مَوْلَانَا	mawlānā	maulana		Maulana				a-a-l		title		ar		
2972	279	281	d	2	مَوْلَانَا	mawlānā	maulana		Maulana				a-a-l		title		ar		
2532	237	239	d	2	مَوْلَانَا	mawlānā	maulana		Maulana				a-a-l		title		ar		
1297	119	121	b	2	أَبُوْ	abuu	abuu		Abu				a-b-w		title		ar		
1327	122	124	a	3	أَبُوْ	abuu	abuu		Abu				a-b-w		title		ar		
226	22	22	b	1	أَبُوْ	abuu	abuu		Abu				a-b-w	it will not fit Abu Bakr.	title		ar		
218	21	21	c	2	أَبُوْ	abuu	abuu		Abu				a-b-w		title		ar		
802	75	77	a	2	أَبُوْ	abuu	abuu		Abu				a-b-w		title		ar		
2026	188	190	a	2	سَيِدِ	sayidi	sayidi		Sayidi				s-3-d		title		ar		
71	7	7	c	1	شٖيْخٖ	shēkhe	shehe		Shehe				sh-y-kh	Sheikh Ali has got married --	title		ar		
3277	308	310	d	1	مَصَحَبَ	maṣaḥaba	masahaba		Masahaba				sw-hh-b	telling the Companions.	title		ar		
2816	264	266	d	1	مَصَحَبَ	maṣaḥaba	masahaba		Masahaba				sw-hh-b	and spoke to the Companions.	title		ar		
3327	307	315	d	2	مَوْلَانَا	mawlānā	maulana		Maulana				a-a-l		title		ar		
2095	194	196	c	3	هٗكٗ	hoko	hoko		huko	*			h-		dem		ba		
2055	190	192	d	2	هِلٗ	hilo	hilo						h-		dem		ba		
2069	192	194	b	1	هَپٗ	hapo	hapo						h-	Ali the Lion-like,	dem		ba		
2188	203	205	b	1	هَپٗ	hapo	hapo						h-	and then I followed the road.	dem		ba		
1961	181	183	d	2	هَكٗ	hako	hako						LOC		loc		ba		
2102	195	197	b	1	نَ	na	na						na	and [my] mother greet you.	conj		ba		
2050	190	192	c	1	نَ	na	na						na	and his name is Ja'far -- 	conj		ba		
2048	190	192	b	2	نَ	na	na						na		conj		ba		
2116	196	198	d	1	مْبٗنَ	mbona	mbona						-on-	Why are you late?	conj		ba		
2091	194	196	b	2	نِ	ni	ni						ni		exist		ba		
2052	190	192	c	3	نِ	ni	ni						ni		exist		ba		
2054	190	192	d	1	نِ	ni	ni						ni	I have told you everything now.	exist		ba		
2079	193	195	b	1	نِ	ni	ni						ni	Is everything well where you came from?	exist		ba		
2094	194	196	c	2	يَ	ya	ya						-a		ref		ba		
2039	189	191	c	1	بَبَ	baba	baba						baba	Father, a visitor has come -- 	noun		ba		
2100	195	197	a	2	بَبَ	baba	baba						baba		noun		ba		
2103	195	197	b	2	مَمَ	mama	mama						mama		noun		ba		
2061	191	193	b	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
2074	192	194	d	1	مكٗنٗ	mkono	mkono						-kono	and took his hand.	noun		ba		
2063	191	193	c	1	مْلَنْڠٗنِ	mlangoni	mlangoni						-lango	When he reached the door [of his house]	noun		ba		
2003	186	188	a	1	سِكُ	siku	siku						-siku	I have never seen him before,	noun		ba		
2239	208	210	a	2	أُكٗ	uko	uko						LOC		loc		ba		
2169	201	203	c	2	نِكٗ	niko	niko						LOC		loc		ba		
2157	200	202	c	1	إِلِ	ili	ili		ile	*			ili	and left the road behind,	conj		ba		
2153	200	202	b	1	إِيُ	iyu	iyu						juu	I walked out into the scrubland	adv		ba		
2133	198	200	b	1	پَنَ	pana	pana						-na	there was the date-tree by the road,	have		ba		
2180	202	204	c	2	پَلٖ	pale	pale						-le		dem		ba		
2138	198	200	d	1	يَلٖ	yale	yale						-le	the [directions] you had told me.	dem		ba		
2124	197	199	c	3	نِ	ni	ni						ni		exist		ba		
2141	199	201	a	2	يَ	ya	ya						-a		ref		ba		
2199	204	206	b	1	نْدِپٗ	ndipo	ndipo						ni	was when I set out [again] on the road.	focus		ba		
2168	201	203	c	1	هُؤٗنَ	huona	huona						-on-	I realised I was [lost] in the scrubland, 	verb		ba	hu	
2037	189	191	b	1	كَفِكَ	kafika	kafika						-fik-	and arrived at the mosque.	verb		ba	ka	
2057	191	193	a	1	چَنْبِوَ	cham̱biwa	chambiwa						-amb-	When these words had been said	verb		ba	ki	
2163	201	203	a	2	نٖنْدَءٗ	nendao	nendao						-end-		verb		ba	a	
2077	193	195	a	2	كٖٹَ	keţa	keta						-let-		verb		ba	ka	
3316	306	314	d	1	أَدَلِلِشٖ	adalilishe	adalilishe						d-l-l	that he may demonstrate its wisdom.	verb		ar	subj	
2144	199	201	b	2	إِلٗ	ilo	ilo						-li		verb		ba	li	
2171	201	203	d	1	زٗتٖ	zote	zote					We understand \\Swa{ndia}, \\E{paths}.	-ote	and I had lost track of all [the roads].	qual		ba		
2123	197	199	c	2	بَبَ	baba	baba						baba		noun		ba		
2177	202	204	b	2	ڠُوْ	guu	guu						-guu		noun		ba		
2151	200	202	a	2	أُوِنْڠَ	uwinga	uwinga						-inga		noun		ba		
2166	201	203	b	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
2127	197	199	d	2	أُرٖفُ	urefu	urefu						-refu		noun		ba		
2214	205	207	d	1	هَپٗ	hapo	hapo						h-	Then the Prophet spoke.	dem		ba		
2217	206	208	a	1	هَپٗ	hapo	hapo					Note the use of \\Swa{hapo} to refer to time instead of place: \\q{at this point}.	h-	Then the Hashimite spoke:	dem		ba		
2283	212	214	c	1	نَ	na	na						na	and we are listening to him	conj		ba		
2246	208	210	d	1	نَ	na	na						na	and beckoned [Ali] into the inner [room].	conj		ba		
2278	212	214	a	1	نَ	na	na						na	And the time he took [to get here],	conj		ba		
2340	218	220	d	1	مْبٗنَ	mbona	mbona						-on-	Surely you are not leaving, Prophet?	conj		ba		
2220	206	208	b	1	سِ	si	si						si	It is no small thing to arrive safely --	exist		ba		
2236	207	209	d	3	سِ	si	si						si		exist		ba		
2313	216	218	a	1	كْوَ	kwa	kwa						-a	With politeness (?)	ref		ba		
2235	207	209	d	2	وَنْڠِ	wangi	wangi						-ingi		qual		ba		
2320	216	218	d	1	وٗتٖ	wote	wote						-ote	and all returned his greeting.	qual		ba		
2244	208	210	c	2	مْكٗنٗ	mkono	mkono						-kono		noun		ba		
2249	209	211	a	1	مكٗنٗ	mkono	mkono						-kono	When he saw her hand [sign]	noun		ba		
2234	207	209	d	1	وَٹُ	waţu	watu						-tu	one against many.	noun		ba		
2264	210	212	c	1	چَكُلَ	chakula	chakula						-l-	I have cooked some food	noun		ba		
2314	216	218	a	2	أُنْدَنِ	undani	undani					= \\Swa{kwa taratibu}. (?)	ndani		noun		ba		
2390	223	225	b	1	مْكٗنٗ	mkono	mkono						-kono	he put his hand [into the dish]	noun		ba		
2366	221	223	b	2	أُپٖسِ	upesi	upesi						-pesi		noun		ba		
2358	220	222	c	2	كِكٗ	kiko	kiko						LOC		loc		ba		
2394	223	225	d	1	وَءٗ	wao	wao						-ao	and left [the food] to them.	poss		ba		
2360	220	222	d	1	هَپٗ	hapo	hapo						h-	So the Prophet sat down.	dem		ba		
2367	221	223	b	3	نَ	na	na						na		conj		ba		
2371	221	223	d	1	نَ	na	na						na	and brought them water.	conj		ba		
2512	235	237	d	1	پٖنُ	penu	penu					We understand \\Swa{pahali}.	-enu	Has he left our house [and gone wandering about]?	poss		ba		
2401	224	226	c	1	نَ	na	na						na	in a cup to drink,	conj		ba		
2405	224	226	d	1	نَاءٖ	nae	nae		naye				na	and rinsed his mouth.	conj		ba		
2191	203	205	c	1	پٖنْيٖ	penye	penye						-enye	At the place with the date-tree I stopped --	qual		ba		
2594	243	245	c	2	سِ	si	si						si		exist		ba		
2387	223	225	a	2	ٹَاٹُ	ţāţu	tatu						-tatu		num		ba		
2369	221	223	c	1	تَمَشَ	tamasha	tamasha					\\Swa{vitu vizuri vizuri}.	-tamasha	and placed delicacies [before them]	noun		ba		
2380	222	224	c	2	وَٹُ	waţu	watu						-tu		noun		ba		
2276	211	213	d	3	وَ	wa	wa						-a		ref		ba		
2402	224	226	c	2	يَ	ya	ya						-a		ref		ba		
2365	221	223	b	1	كْوَ	kwa	kwa						-a	quickly, in a hurry,	ref		ba		
2375	222	224	a	2	كْوَ	kwa	kwa						-a		ref		ba		
2388	223	225	a	3	كْوَ	kwa	kwa						-a		ref		ba		
2357	220	222	c	1	چَكُلَ	chakula	chakula						-l-	The food is ready.	noun		ba		
2286	212	214	d	1	مَنٖنٗيٖ	manenoye	manenoye						-nen-	as he tells us his story.	noun		ba		
2481	232	234	c	1	مْوٖنْيٖوٖ	mwenyewe	mwenyewe						-enye	[Hasan said:] Myself I don't know -- 	noun		ba		
2561	240	242	c	2	هَنَ	hana	hana						-na		have		ba		
2450	229	231	c	1	نِلٗنَلٗ	nilonalo	nilonalo						-na	[the thing] I have [in my heart], I have no choice	have		ba		
2430	227	229	b	1	پٹٖ	pţe	pte		pete	*			-pet-	she caught sight of the ring.	noun		ba		
2451	229	231	c	2	سِنَ	sina	sina						-na		have		ba		
2516	236	238	b	1	أُنَنِ	unani	unani		una-ni			= \\Swa{una nini?}.  See 244a, 263b.	-na	What's the matter?  You are speaking amongst yourselves.	have		ba		
2410	225	227	b	1	هَپٗ	hapo	hapo						h-	he was then given, the Bearer of Good Tidings,	dem		ba		
2204	204	206	c	3	كُجَ	kuja	kuja						-j-		verb		ba	ku	
2299	214	216	b	1	أَلِپٗكٖتِ	alipoketi	alipoketi						-ka-	and sat down on a chair.	verb		ba	li	
2318	216	218	c	1	وَلِؤٗپٗ	waliopo	waliopo						-li	Those present spoke	verb		ba	li	
2403	224	226	c	3	كُنْوَ	kunwa	kunwa						-nyw-		verb		ba	ku	
2218	206	208	a	2	كَنٖنَ	kanena	kanena						-nen-		verb		ba	ka	
2322	217	219	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia				-amb-	[ja'far] spoke [these] words to him:	verb		ba	ka	
2253	209	211	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia				-amb-	He told the Hashimite:	verb		ba	ka	
2355	220	222	b	1	ٹُمْلِشٖ	ţumlishe	tumlishe						-l-	until we have given Ja'far something to eat.	verb		ba	subj	
2294	213	215	d	1	إٖنْدٖ	ende	ende						-end-	to go and fetch him.	verb		ba	subj	
2547	239	241	b	1	هِلٗ	hilo	hilo						h-	why does this disturb you?	dem		ba		
2421	226	228	b	1	نَاءٗ	nao	nao						na	and they had finished eating	conj		ba		
2467	231	233	a	2	كِشَ	kisha	kisha						-ish-		conj		ba		
2439	228	230	b	1	مْبٗنَ	mbona	mbona						-on-	Why has [your mood] changed,	conj		ba		
2475	231	233	d	2	يَنْڠُ	yangu	yangu						-angu		poss		ba		
2408	225	227	a	2	يَ	ya	ya						-a		ref		ba		
2433	227	229	c	2	يَ	ya	ya						-a		ref		ba		
2414	225	227	c	2	كْوَ	kwa	kwa						-a		ref		ba		
2469	231	233	b	1	كْوَ	kwa	kwa						-a	he told the Prophet:	ref		ba		
2462	230	232	c	2	كْوَ	kwa	kwa						-a		ref		ba		
2435	227	229	d	1	يٗتٖ	yote	yote						-ote	all came back to her.	qual		ba		
2447	229	231	b	1	وٖوٖ	wewe	wewe						wewe	You are not leaving yet. 	pron		ba		
2502	234	236	c	2	يٖيٖ	yeye	yeye					i.e. Ja'far's name.	yeye		pron		ba		
2472	231	233	c	1	مِمِ	mimi	mimi		mama	*			mimi	she is angry,	pron		ba		
2619	245	247	d	2	كِلٖ	kile	kile		kweli	*			-le		dem		ba		
2556	240	242	b	1	كْوَنِ	kwani	kwani						nini	For he is not an illegitimate child.	conj		ba		
2590	243	245	b	2	سِ	si	si						si		exist		ba		
2602	244	246	b	1	سِ	si	si						si	That ring on his finger, is it not [the one]	exist		ba		
2629	246	248	c	2	وَكٖ	wake	wake						-ake		poss		ba		
2572	241	243	c	2	كْوَ	kwa	kwa						-a		ref		ba		
2534	238	240	a	1	هَپٗ	hapo	hapo						h-	Then Ali the Lionlike,	dem		ba		
2598	243	245	d	2	هَيٗ	hayo	hayo						h-		dem		ba		
2603	244	246	b	2	إِلٖ	ile	ile						-le		dem		ba		
2616	245	247	c	1	پَلٖ	pale	pale						-le	you would have got angry at that time [as well],	dem		ba		
2490	233	235	c	1	آٹِ	ãţi	ati						ati	So, a visitor has come	conj		ba		
2608	244	246	d	1	آٹِ	ãţi	ati					\\Swa{ati} here implies that what was said is a lie.	ati	as you swore?	conj		ba		
2621	246	248	a	1	نَ	na	na						na	And now, even if I have hurt you,	conj		ba		
2578	242	244	b	1	مْبٗنَ	mbona	mbona						-on-	Why are you frowning?	conj		ba		
2625	246	248	b	2	يَنْڠُ	yangu	yangu						-angu		poss		ba		
2622	246	248	a	2	سَسَ	sasa	sasa						sasa		adv		ba		
2593	243	245	c	1	مِمِ	mimi	mimi						mimi	I am not your child,	pron		ba		
2544	239	241	a	1	كْوٖنُ	kwenu	kwenu						-enu	A visitor has come to your house --	poss		ba		
2494	233	235	d	2	كْوٖٹُ	kweţu	kwetu						-etu		poss		ba		
2585	242	244	d	2	مَتُنْڠُ	matungu	matungu					\\E{bitterness}.	-chungu		noun		ba		
2539	238	240	c	1	أُوِنْڠَ	uwinga	uwinga					Cognate with \\Swa{jinga} in 202a.	-inga	Foolishness is dangerous,	noun		ba		
2542	238	240	d	1	مَمْبٗ	mambo	mambo						-amb-	if someone does not understand how things are.	noun		ba		
2609	244	246	d	2	زِيَپٗ	ziyapo	ziyapo		ziapo			\\E{oaths}.	-ap-		noun		ba		
2537	238	240	b	1	نٖنٗ	neno	neno						-nen-	the words that he said [were]:	noun		ba		
2604	244	246	b	3	پٖٹٖ	peţe	pete						-pet-		noun		ba		
2230	207	209	b	1	أَسِؤٗوْنٖ	asiōne	asione						-on-	so that he met no unbelievers,	verb		ba	past	y
2498	234	236	b	1	مْوٖنْيٖ	mwenye	mwenye						-enye	the gossip-monger in the town,	qual		ba		
2448	229	231	b	2	هُنٖنْدِ	hunendi	hunendi						-end-		verb		ba	a	y
2614	245	247	b	1	نْدِپٗ	ndipo	ndipo					\\E{that is why}.	ni	so that's why you are angry --	focus		ba		
2568	241	243	b	1	هٖلَ	hela	hela					= \\Swa{hebu}.	hela	Come now, Fatima.	conj		ba		
2632	246	248	d	1	نَ	na	na						na	and tell me what you want.	conj		ba		
2566	241	243	a	2	هَپٗ	hapo	hapo						h-		dem		ba		
2683	251	253	b	1	هَپٗ	hapo	hapo						h-	when he went on a crusade,	dem		ba		
2771	260	262	b	1	نَ	na	na						na	with Ali the Lion-like.	conj		ba		
2658	248	250	d	2	وٗتٖ	wote	wote						-ote		qual		ba		
2651	248	250	b	2	نَ	na	na						na		conj		ba		
2650	248	250	b	1	يٖيٖ	yeye	yeye						yeye	[Ali] and the boy, in the house.	pron		ba		
2689	251	253	d	1	هَكُنَ	hakuna	hakuna						-na	there was not one [left alive].	have		ba		
2698	252	254	d	1	نِنَ	nina	nina						-na	I have something to tell you.	have		ba		
2639	247	249	b	2	سِ	si	si						si		exist		ba		
2545	239	241	a	2	كُئِيٖ	kuiye	kuiye						-j-		verb		ba	past	
2461	230	232	c	1	أَكَنٖنْدَ	akanenda	akanenda						-end-	and went to the Trustworthy One	verb		ba	ka	
2458	230	232	b	1	كَتٗكَ	katoka	katoka						-to-	he left the house	verb		ba	ka	
2517	236	238	b	2	هُنٖنَ	hunena	hunena						-nen-		verb		ba	hu	
2678	250	252	d	1	هُتِنْدَ	hutinda	hutinda						-chind-	he would cut down with no effort.	verb		ba	hu	
2549	239	241	c	1	تَمُوٖكَ	tamuweka	tamuweka						-wek-	Should I keep him here in the house	verb		ba	ta	
2657	248	250	d	1	وَچٖنْدَ	wachenda	wachenda						-end-	they both went together.	verb		ba	ki	
2606	244	246	c	1	يَلٗنْڠِيَ	yalongiya	yalongiya		yalongia				-ingi-	which "fell into the well",	verb		ba	li	
2432	227	229	c	1	يَپِسِيٗ	yapisiyo	yapisiyo						-pit-	What had happened in the past	verb		ba	past	
2491	233	235	c	2	مٖكُيَ	mekuya	mekuya						-j-		verb		ba	me	
2684	251	253	b	2	أَكٖنْدَ	akenda	akenda						-end-		verb		ba	ki	
2636	247	249	a	2	كٖٹَ	keţa	keta						-let-		verb		ba	ka	
2584	242	244	d	1	يَ	ya	ya						-a	of telling you bitter things.	ref		ba		
2640	247	249	b	3	يَ	ya	ya						-a		ref		ba		
2648	248	250	a	2	كْوَ	kwa	kwa						-a		ref		ba		
2558	240	242	b	3	مْوَنَ	mwana	mwana						-ana		noun		ba		
2574	241	243	d	1	مْكٖوٖ	mkewe	mkewe						-ke	and went to his wife.	noun		ba		
2628	246	248	c	1	مٗيٗ	moyo	moyo						-oyo	let your heart be forgiving	noun		ba		
2673	250	252	b	1	زِٹَنِ	ziţani	zitani						-ta	he was renowned in battle.	noun		ba		
2638	247	249	b	1	كِٹُ	kiţu	kitu						-tu	the matter is of little importance.	noun		ba		
2699	252	254	d	2	يَمْبٗ	yambo	yambo						-amb-		noun		ba		
2752	258	260	b	1	نَ	na	na						na	with Hasan and Husayn	conj		ba		
2754	258	260	b	3	نَ	na	na						na		conj		ba		
2726	255	257	c	2	هُيٗ	huyo	huyo						h-		dem		ba		
2731	256	258	a	2	هِيٗ	hiyo	hiyo						h-		dem		ba		
2733	256	258	b	1	هَپٗ	hapo	hapo						h-	[Ali] did not linger there --	dem		ba		
2738	256	258	d	1	هَپٗ	hapo	hapo					i.e. \\Swa{pale pale}, \\E{then and there}.	h-	and then they set out on the road.	dem		ba		
2764	259	261	c	1	نَاءٖ	nae	nae		naye				na	Go and look at him --	conj		ba		
2702	253	255	a	2	سَسَ	sasa	sasa						sasa		adv		ba		
2781	261	263	b	1	إٖوٖ	ewe	ewe						wewe	Oh, my son, what is the matter with you?	pron		ba		
2666	249	251	c	2	پَ	pa	pa						-a		ref		ba		
2795	262	264	c	1	كْوَ	kwa	kwa						-a	and looked about with difficulty	ref		ba		
2879	271	273	a	3	نْدَ	nda	nda						-a		focus		ba		
2882	271	273	b	2	نْدَ	nda	nda						-a		focus		ba		
2777	260	262	d	2	بَبَكٖ	babake	babake						baba		noun		ba		
2758	258	260	d	1	بَبَنْڠُ	babangu	babangu						baba	I need to call my father.	noun		ba		
2749	258	260	a	1	مْوَنٗ	mwano	mwano						-ana	Your son was sitting there	noun		ba		
2725	255	257	c	1	مْوَنٗ	mwano	mwano					= \\Swa{mwanayo, mwana wako, mtoto wako}.	-ana	this son of yours, it seems,	noun		ba		
2766	259	261	d	1	يَمْبٗ	yambo	yambo						-amb-	what has happened to him?	noun		ba		
2906	273	275	c	1	إِلٖ	ile	ile						-le	and the one for [Ja'far's] teacher	dem		ba		
2820	265	267	b	1	نَ	na	na						na	and they all went out	conj		ba		
2809	264	266	a	1	هَپٗ	hapo	hapo						h-	Then Ali the Lion-like	dem		ba		
2823	265	267	c	1	هَيَ	haya	haya						h-	and they completed the burial ceremony,	dem		ba		
2915	274	276	b	1	يٖيٖ	yeye	yeye						yeye	[ja'far's] mother read [the letter],	pron		ba		
2785	261	263	c	2	نِ	ni	ni						ni		exist		ba		
2812	264	266	b	1	يٗتٖ	yote	yote						-ote	became insensible to anything.	qual		ba		
2798	262	264	d	1	مَتٗ	mato	mato						-cho	and focussed his eyes on him.	noun		ba		
2841	267	269	c	1	مْٹُ	mţu	mtu						-tu	a person may be seized [by death]	noun		ba		
2832	266	268	c	1	مَنٖنٗ	maneno	maneno						-nen-	and spoke [these] words	noun		ba		
2839	267	269	b	2	كْوَكٖ	kwake	kwake						-ake		poss		ba		
2735	256	258	c	1	كَئِنُكَ	kainuka	kainuka						-inu-	he got up with the Prophet	verb		ba	ka	
2696	252	254	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya		akamwambia				-amb-	and told the Trustworthy One:	verb		ba	ka	
2692	252	254	a	1	أَلِپٗكُيَ	alipokuya	alipokuya						-j-	When he came back to the town [after one campaign]	verb		ba	li	
2750	258	260	a	2	أَلِپٗ	alipo	alipo						-li		verb		ba	li	
2893	272	274	b	1	كَپٗكٖيَ	kapokeya	kapokeya		kapokea				-pok-	he took the papers	verb		ba	ka	
2711	254	256	a	1	أَكَشُكَ	akashuka	akashuka						-shuk-	Gabriel descended	verb		ba	ka	
2707	253	255	c	1	أَكَپِجٖ	akapije	akapije						-pig-	to fight the unbelievers.	verb		ba	ka	
2779	261	263	a	1	أَكَلِيَ	akaliya	akaliya		akalia				-li-	He wept, saying:	verb		ba	ka	
2647	248	250	a	1	وَكَكٖتِ	wakaketi	wakaketi						-ka-	They lived happily,	verb		ba	ka	
2739	256	258	d	2	وَكَنْدَمَ	wakandama	wakandama						-andam-		verb		ba	ka	
2800	263	265	a	1	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya		kimwangalia				-anga-	When he saw the Trustworthy One	verb		ba	ki	
2774	260	262	c	1	كِمْوٗنَ	kimwona	kimwona						-on-	and when he saw Ja'far	verb		ba	ki	
2730	256	258	a	1	چَمْبِوَ	chambiwa	chambiwa						-amb-	When he was told these words	verb		ba	ki	
2701	253	255	a	1	نَپٖنْدَ	napenda	napenda						-pend-	I would now like, Bringer of Good Tidings,	verb		ba	a	
2655	248	250	c	2	نٖنْدَپٗ	nendapo	nendapo		wendapo	*			-end-		verb		ba	a	
2769	260	262	a	2	أَكٖنْدَ	akenda	akenda						-end-		verb		ba	ki	
2704	253	255	b	1	إٖنْدٖ	ende	ende						-end-	for Ja'far to go on his own	verb		ba	subj	
2723	255	257	b	2	ٹْوٖنْدٖ	ţwende	twende						-end-		verb		ba	subj	
2993	281	283	d	1	إِلِ	ili	ili						ili	to open it for her.	conj		ba		
2926	275	277	b	2	لِمٗ	limo	limo						LOC		loc		ba		
2978	280	282	c	1	نْدِمِ	ndimi	ndimi						ni	I am Ja'far's mother	focus		ba		
2967	279	281	b	2	نْدِمِ	ndimi	ndimi						ni		focus		ba		
2885	271	273	c	1	نَ	na	na						na	and when you go there do not say	conj		ba		
2932	276	278	a	1	نَ	na	na						na	And meanwhile Zubayr	conj		ba		
2956	278	280	b	1	نَ	na	na						na	with Lord Umar [in the house].	conj		ba		
2867	270	272	a	1	هَپٗ	hapo	hapo						h-	So when he had calmed down	dem		ba		
2877	271	273	a	1	هِيْ	hii	hii						h-	This one is for his mother	dem		ba		
2923	275	277	a	1	نَاءٖ	nae	nae		naye				na	And as she repeated [the contents]	conj		ba		
2854	268	270	d	1	نَوٖ	nawe	nawe						na	and you know that well.	conj		ba		
2896	272	274	c	2	نَزٗ	nazo	nazo						na		conj		ba		
2903	273	275	b	1	كِشَ	kisha	kisha						-ish-	then Zubayr left,	conj		ba		
2873	270	272	c	2	زَنْڠُ	zangu	zangu						-angu		poss		ba		
2907	273	275	c	2	يَ	ya	ya						-a		ref		ba		
2971	279	281	d	1	كْوَ	kwa	kwa						-a	to Lord Ali's [house]?	ref		ba		
2987	281	283	b	1	كْوَ	kwa	kwa						-a	quickly and speedily	ref		ba		
2991	281	283	c	1	مْلَنْڠٗ	mlango	mlango						-lango	and took hold of the door	noun		ba		
2952	277	279	d	1	مْلَنْڠٗنِ	mlangoni	mlangoni					In other words, \\Swa{alikwenda usiku kucha}, \\E{she travelled all night}, and arrived at Mecca, where she immediately makes for the first house in the village -- this just happens to be one where Hamza and Umar are present.  Note that in her distress Atika does not even ask permission to enter (\\Swa{Hodi!}).	-lango	she went in the door.	noun		ba		
2988	281	283	b	2	أُپٖسِ	upesi	upesi						-pesi		noun		ba		
2848	268	270	a	4	مْٹُ	mţu	mtu						-tu		noun		ba		
2921	274	276	d	1	مْٹُ	mţu	mtu						-tu	without telling anyone.	noun		ba		
2859	269	271	b	1	مَمْبٗ	mambo	mambo						-amb-	things have turned out like this.	noun		ba		
2888	271	273	d	1	نٖنٗ	neno	neno						-nen-	one word to tell them [what has happened].	noun		ba		
3041	286	288	c	2	كْوَكٖ	kwake	kwake						-ake		poss		ba		
3061	288	290	b	1	لَكٖ	lake	lake						-ake	[his way] is to take people away and bring [them into existence],	poss		ba		
3018	284	286	a	2	يُپٗ	yupo	yupo						LOC		loc		ba		
2984	281	283	a	1	هَپٗ	hapo	hapo						h-	Then Hamza went out	dem		ba		
2959	278	280	c	1	هِنِ	hini	hini						h-	It was dawn	dem		ba		
3046	287	289	a	2	هُىُ	huyu	huyu						h-		dem		ba		
2934	276	278	a	3	نْيُمَ	nyuma	nyuma						nyuma		adv		ba		
2939	276	278	c	2	نْيُمَ	nyuma	nyuma		nyumba	*			nyuma		adv		ba		
3047	287	289	a	3	نِ	ni	ni						ni		exist		ba		
2949	277	279	c	2	يَ	ya	ya						-a		ref		ba		
3002	282	284	c	1	كْوَ	kwa	kwa						-a	When he finally came to Ali's [house]	ref		ba		
3010	283	285	b	2	نْدِمِ	ndimi	ndimi						ni		focus		ba		
3029	285	287	b	1	مَتٗزِ	matozi	matozi						-chozi	his tears flowing,	noun		ba		
2944	277	279	a	2	نْدِيَ	ndiya	ndiya		ndia				-jia		noun		ba		
2974	280	282	a	1	نْدِيَ	ndiya	ndiya		ndia				-jia	I have come along the road	noun		ba		
3000	282	284	b	2	نْدِيَ	ndiya	ndiya						-jia		noun		ba		
2964	279	281	a	1	مْوَنَمْكٖ	mwanamke	mwanamke						-ke	The woman spoke:	noun		ba		
2930	275	277	d	1	أُسِكُ	usiku	usiku						-siku	that night was drawing on.	noun		ba		
3051	287	289	b	3	كِٹِ	kiţi	kiti		kite	*		\\Swa{kite}, \\E{birth pangs}.  These give a mother a special love (\\Swa{huruma}) for her child -- she will willingly sacrifice herself for the child.  We see this even in animals.	-te		noun		ba		
3034	285	287	d	1	مَنٖنٗ	maneno	maneno						-nen-	telling her these words.	noun		ba		
2913	274	276	a	2	كُتٗكَ	kutoka	kutoka						-to-		verb		ba	ku	
2818	265	267	a	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia				-amb-	He spoke to them and they listened,	verb		ba	ka	
2805	263	265	c	1	أَكِكٗمَ	akikoma	akikoma						-kom-	By the time he had finished speaking,	verb		ba	ki	
3059	288	290	a	2	مْوٖنْيٖ	mwenye	mwenye		Mwenye				-enye		qual		ba		
2633	246	248	d	2	أُتَكَلٗ	utakalo	utakalo						-tak-		verb		ba	a	
2747	257	259	d	1	أُيَاءٗ	uyao	uyao						-j-	to go and fetch you.	verb		ba	a	
2860	269	271	b	2	هُپِجْوَ	hupijwa	hupijwa						-pig-		verb		ba	hu	
2946	277	279	b	1	كِنٖنْدَ	kinenda	kinenda		kenenda	*			-end-	she went on without finding him.	verb		ba	ki	
3007	283	285	a	1	كِنٖنَ	kinena	kinena						-nen-	And he said, explaining [things] to him:	verb		ba	ki	
2872	270	272	c	1	تَكُپَ	takupa	takupa						-p-	I will give you my letters	verb		ba	ta	
2910	273	275	d	1	كٖنٖنْدَ	kenenda	kenenda						-end-	he went on to deliver [it] to him.	verb		ba	ka	
3024	284	286	d	1	نَپٖنْدَ	napenda	napenda						-pend-	I want to see it.	verb		ba	a	
3056	287	289	d	1	نَتَكَ	nataka	nataka						-tak-	I want to see it.	verb		ba	a	
2886	271	273	c	2	أُچٖنْدَ	uchenda	uchenda						-end-		verb		ba	ki	
2875	270	272	d	1	أُپَٹٖ	upaţe	upate						-pat-	so that you may deliver them for me.	verb		ba	subj	
2916	274	276	b	2	أَسٗمٖ	asome	asome						-som-		verb		ba	past	
3043	286	288	d	1	أَمْبَيٗ	ambayo	ambayo						amb-	who has brought you here.	rel		ba		
2999	282	284	b	1	هَپٗ	hapo	hapo						h-	he set out on the way.	dem		ba		
3014	283	285	d	1	هَپٗ	hapo	hapo						h-	Then Ali went out.	dem		ba		
3026	285	287	a	1	هَپٗ	hapo	hapo						h-	Then Ali went out,	dem		ba		
3091	291	293	a	1	هَپٗ	hapo	hapo						h-	So Ali the Lion-like	dem		ba		
3075	289	291	c	1	وَلَ	wala	wala						wala	or you will not receive your share	conj		ba		
3097	291	293	c	1	مْبٗنَ	mbona	mbona						-on-	Why did Zubayr not come [with you]?	conj		ba		
3116	293	295	c	2	سَسَ	sasa	sasa						sasa		adv		ba		
2995	282	284	a	1	نْدٖ	nde	nde						-je	Then, leaving the tent,	adv		ba		
3032	285	287	c	2	نْدٖ	nde	nde						-je		adv		ba		
3065	288	290	c	2	مِمِ	mimi	mimi						mimi		pron		ba		
3073	289	291	b	2	كْوَ	kwa	kwa						-a		ref		ba		
3146	296	298	b	2	مَاءِ	mai	mai						maji		noun		ba		
3123	294	296	b	2	مَجِ	maji	maji						maji		noun		ba		
3084	290	292	b	1	مَتٗزِ	matozi	matozi						-chozi	tears falling.	noun		ba		
3050	287	289	b	2	مْوٖنْي	mwenı̄	mweni		mwenye	*			-enye		noun		ba		
3113	293	295	b	1	نْدِيَ	ndiya	ndiya		ndia				-jia	I set out on the road -- 	noun		ba		
3005	282	284	d	1	مْلَنْڠٗ	mlango	mlango						-lango	he knocked on the door.	noun		ba		
3135	295	297	c	1	مٗيٗ	moyo	moyo						-oyo	my heart is in confusion,	noun		ba		
3159	297	299	c	2	نَ	na	na						na		conj		ba		
3195	301	303	b	3	كْوَ	kwa	kwa						-a		ref		ba		
3217	303	305	b	1	كْوَ	kwa	kwa						-a	and signalled [Fatima] with his hand.	ref		ba		
3142	296	298	a	2	كْوَ	kwa	kwa						-a		ref		ba		
3198	301	303	c	2	أُكٗ	uko	uko						LOC		loc		ba		
3163	298	300	a	1	هَپٗ	hapo	hapo						h-	So Fatima persuaded her	dem		ba		
3172	299	301	a	2	هَپٗ	hapo	hapo						h-		dem		ba		
3177	299	301	c	1	نَ	na	na						na	and Ali explained [everything] to her,	conj		ba		
3202	302	304	a	1	نَ	na	na						na	And Fatima spoke	conj		ba		
3180	299	301	d	1	كِشَ	kisha	kisha						-ish-	weeping at the end.	conj		ba		
3193	301	303	b	1	سَسَ	sasa	sasa						sasa	Now I [bid you] farewell.	adv		ba		
3169	298	300	d	1	مُنْڠُ	mungu	mungu		Mungu				-ngu	[Fatima] interceded to God for her.	godn		ba		
3136	295	297	c	2	نِنَ	nina	nina						-na		have		ba		
3189	300	302	d	2	وٗتٖ	wote	wote						-ote		qual		ba		
3175	299	301	b	2	مْوَنَوٖ	mwanawe	mwanawe						-ana		noun		ba		
3156	297	299	b	1	مِيٗمٗنِ	miyomoni	miyomoni						-domo	she took some into her mouth.	noun		ba		
3218	303	305	b	2	مْكٗنٗ	mkono	mkono						-kono		noun		ba		
3150	296	298	c	2	مَٹَمَ	maţama	matama					\\Swa{-piga tama} or \\Swa{-shika tama}, \\E{take a drink, fill your mouth with liquid}.	-tama		noun		ba		
3143	296	298	a	3	بْوَنَ	bwana	bwana		Bwana				bwana		noun		ba		
3200	301	303	d	1	مْٹُ	mţu	mtu						-tu	and I left no-one with him.	noun		ba		
3206	302	304	b	2	مُمٖ	mume	mume						-ume		noun		ba		
3238	305	307	b	1	هَيَمٗ	hayamo	hayamo						LOC	[such things] are not in my heart.	loc		ba		
3273	308	310	b	1	نْدِپٗ	ndipo	ndipo						ni	it was then that he told [the story],	focus		ba		
3289	309	311	d	2	زٗتٖ	zote	zote						-ote		qual		ba		
3304	305	313	c	1	نَ	na	na						na	and whatever he asks for	conj		ba		
3286	309	311	c	2	أَمْبَؤٗ	ambao	ambao						amb-		rel		ba		
3249	306	308	a	1	هَپٗ	hapo	hapo						h-	So Ali went out	dem		ba		
3260	307	309	a	1	هَپٗ	hapo	hapo						h-	Then Ali the Lion-like	dem		ba		
3233	304	306	d	2	هَيٗ	hayo	hayo						h-		dem		ba		
3271	308	310	a	2	هَپٗ	hapo	hapo						h-		dem		ba		
3296	304	312	c	2	نَ	na	na						na		conj		ba		
3245	305	307	d	1	نَ	na	na						na	exactly the same as Qasim.	conj		ba		
3266	307	309	c	2	نَ	na	na						na		conj		ba		
3270	308	310	a	1	نَ	na	na						na	And when he returned,	conj		ba		
3285	309	311	c	1	نَ	na	na						na	and whoever reads [them]	conj		ba		
3242	305	307	c	2	نِ	ni	ni						ni		exist		ba		
3239	305	307	b	2	مٗيٗنِ	moyoni	moyoni						-oyo		noun		ba		
3324	307	315	c	2	وَ	wa	wa						-a		ref		ba		
3326	307	315	d	1	وَ	wa	wa						-a	and Lord Ali.	ref		ba		
3235	305	307	a	1	كَنٖنَ	kanena	kanena						-nen-	She said: I swear to God,	verb		ba	ka	
2791	262	264	a	1	أَكِسِكِيَ	akisikiya	akisikiya		akisikia				-siki-	When he heard these words	verb		ba	ki	
2852	268	270	c	1	إِسِپٗكُوَ	isipokuwa	isipokuwa						-w-	unless it is God alone,	verb		ba	ki	y
3072	289	291	b	1	أُسِپٗتٖيْ	usipotee	usipotee						-pote-	so that you do not go astray from God's [path].	verb		ba	past	
3058	288	290	a	1	يٗوَ	yowa	yowa		yuwa	*			-ju-	[Ali said:] Know that the Almighty	verb		ba	imp	
3225	304	306	a	2	چٖنْدَ	chenda	chenda						-end-		verb		ba	ki	
3209	302	304	c	2	نٖنْدَ	nenda	nenda						-end-		verb		ba	a	
3229	304	306	c	1	كْوَمْبَ	kwamba	kwamba						-amb-	if people talk [about it]	verb		ba	ku	
3255	306	308	c	1	أَكٖنْدَ	akenda	akenda						-end-	He went and accompanied her	verb		ba	ki	
3062	288	290	b	2	هٗنْدٗوَ	hondowa	hondowa					We understand \\Swa{watu}, \\E{human beings}.  	-ondo-		verb		ba	ki	
3205	302	304	b	1	أَمْوَمْبِيٖ	amwambiye	amwambiye		amwambie				-amb-	and said to her husband:	verb		ba	past	
3288	309	311	d	1	كْوَ	kwa	kwa						-a	will be made aware of everything [that happened].	ref		ba		
3309	306	314	a	2	كْوَ	kwa	kwa						-a		ref		ba		
3293	304	312	b	1	مْٹُ	mţu	mtu						-tu	so that a person may say them	noun		ba		
3314	306	314	c	2	مْٹُ	mţu	mtu						-tu		noun		ba		
3230	304	306	c	2	وَٹُ	waţu	watu						-tu		noun		ba		
3275	308	310	c	1	مَنٖنٗ	maneno	maneno						-nen-	striving for [exact] words,	noun		ba		
3323	307	315	c	1	أُتٖنْدِ	utendi	utendi						-tend-	the Ballad of Ja'far	noun		ba		
3283	309	311	b	2	زَنْڠُ	zangu	zangu						-angu		poss		ba		
3258	306	308	d	2	كْوَءٗ	kwao	kwao						-ao		poss		ba		
3302	305	313	b	1	مْٹُيٖ	mţuye	mtuye						-tu	that person, he will not be troubled,	noun		ba		
3318	307	315	a	1	نِمٖپٖنْدَ	nimependa	nimependa						-pend-	I have been pleased to recite it,	verb		ba	me	
3224	304	306	a	1	كَمْبَ	kamba	kamba						-amb-	He said: If I go and accompany her,	verb		ba	ka	
3215	303	305	a	2	كَنْڠِيَ	kangiya	kangiya		kangia				-ingi-		verb		ba	ka	
3300	305	313	a	1	كْوَنْدَ	kwanda	kwanda						-anz-	First, he will never be brought low,	verb		ba	ku	
3308	306	314	a	1	أَؤٗمْبَلٗ	aombalo	aombalo						-omb-	Whatever he prays for from the Generous One,	verb		ba	a	
2484	232	234	d	2	سِكُفَهَمِيَ	sikufahamiya	sikufahamiya					Some stanzas may be lost here, because the story of Hasan telling the Prophet about the upset at home (299-301) goes nowhere (for instance, the Prophet does not return to the house, even though he has done something similar several times before in the ballad).  Alternatively, these stanzas may be just a lead-in to the (somewhat jumbled) episode of Hasan and Husayn (i.e. Hasan tells the Prophet in passing as he looks for Husayn).	f-h-m		verb	final	ar	li	y
2977	280	282	b	2	سِكُئِفَسِرِ	sikuifasiri	sikuifasiri					\\Swa{-fasiri} = \\Swa{-jua}.	f-s-r		verb	final	ar	li	y
1841	170	172	b	1	سِكُئِزَ	sikuiza	sikuiza						-iz-	I don't disagree with these [plans] of yours --	verb		ba	li	y
177	17	17	d	3	سِكُلِيَ	sikuliya	sikuliya						-li-		verb	final	ba	li	y
2269	211	213	a	2	سِكُمَكِنِكَ	sikumakinika	sikumakinika		ni kumakinika	*			m-k-n		verb	final	ar	li	y
3201	301	303	d	2	سِكُمُوَتِيَ	sikumuwatiya	sikumuwatiya						-ach-		verb	final	ba	li	y
3108	292	294	c	2	سِكُمُيُوَ	sikumuyuwa	sikumuyuwa		sikumuyua				-ju-		verb	final	ba	li	y
3110	292	294	d	2	سِكُمْزٖنْڠٖيَ	sikumzengeya	sikumzengeya						-zeng-		verb	final	ba	li	y
240	21	23	b	2	سِكُتَأَمَلِ	sikutaamali	sikutaamali						a-m-l		verb	final	ar	li	y
3066	288	290	c	3	سِكُتَكَ	sikutaka	sikutaka						-tak-		verb	final	ba	li	y
614	58	60	b	1	سِكُيَنٖنَ	sikuyanena	sikuyanena						-nen-	I have not spoken secretly -- 	verb		ba	li	y
3301	305	313	a	2	هَتٗذَلِلِكَ	hatodhalilika	hatodhalilika					\\Swa{-dhalilika}, \\E{be humble, be humiliated, no agent specified}.	dh-l-l		verb	final	ar	ta	y
2553	239	241	d	2	هَتٗتٖمْبٖيَ	hatotembeya	hatotembeya					This is a rhetorical question: Ali is saying that trying to keep Ja'far's existence secret by locking him in the house would be just as bad as disowning him and leaving him to wander about like a beggar.	-temb-		verb	final	ba	ta	y
1662	153	155	b	1	سِتٗكُوَ	sitokuwa	sitokuwa						-w-	I would not hold it against you.	verb		ba	ta	y
290	25	27	d	2	سِتٗمْوَمْبِيَ	sitomwambiya	sitomwambiya					\\Swa{anamwogopa sana} -- Ali is greatly in awe of him.	-amb-		verb	final	ba	ta	y
3211	302	304	d	1	أَسٖنْدٖ	asende	asende						-end-	so that Atika [need] not go on her own.	verb		ba	subj	y
2857	269	271	a	2	سٖنٖنْدٖ	senende	senende						-end-		verb		ba	subj	y
2887	271	273	c	3	سِتَمْكٖ	sitamke	sitamke						-tamk-		verb	final	ba	subj	y
897	83	85	c	1	أُسِكِزٖ	usikize	usikize						-siki-	Pay heed to the things	verb		ba	subj	
776	72	74	d	1	أُسِتَكٖ	usitake	usitake					\\Swa{usitake} = \\Swa{usije}.	-tak-	just so you don't get lost.	verb		ba	subj	y
390	36	38	b	1	أُسِٹٖٹٖ	usiţeţe	usitete						-tet-	Don't quarrel with your husband.	verb		ba	subj	y
671	63	65	b	1	سِنْڠَلِكُپِجِئٖ	singalikupijie	singalikupijie						-pig-	I should not have attacked you.	verb	final	ba	ngali	y
990	91	93	d	2	سِنْڠٖلِكِمْبِيَ	singelikimbiya	singelikimbiya					i.e. don't run away from a fight.	-kimb-		verb	final	ba	ngali	y
361	33	35	a	2	هَكُكَسِرِ	hakukasiri	hakukasiri					i.e. \\Swa{pale pale kampa habari yote}, \\E{there and then she gave him the whole story}.	k-s-r		verb	final	ar	li	y
1114	103	105	c	1	هَكُمٖيَ	hakumeya	hakumeya						-me-	does not cover his bald patch,	verb		ba	li	y
834	77	79	d	2	هَيَسِكِلِيَ	hayasikiliya	hayasikiliya						-siki-		verb	final	ba	me	y
435	40	42	c	1	هَٹُپٖنْدٖلٖئِ	haţupendelei	hatupendelei						-pend-	she did not want good fortune for us --	verb		ba	a	y
437	40	42	d	1	هَوٖزِ	hawezi	hawezi						-wez-	she couldn't look at us [without envy].	verb		ba	a	y
96	10	10	a	1	سِجُوِ	sijuwi	sijuwi		sijui			It makes more sense to follow R here, and place this stanza before the one beginning \\q{Mwana binti Amini...}.	-ju-	I don't know, said [Fatima], if that is true.	verb		ba	a	y
1817	167	169	c	3	سِمُؤٗنِ	simuoni	simuoni						-on-		verb	final	ba	a	y
1833	169	171	b	2	نِسِيَتٗكَ	nisiyatoka	nisiyatoka						-to-		verb	final	ba	sija	y
982	91	93	a	3	أَسِكِرِ	asikiri	asikiri						q-r-r		verb	final	ar	past	y
2936	276	278	b	1	أَسِپَٹٖ	asipaţe	asipate		asifanye	*			-pat-	was doing his best [to find the teacher's house],	verb		ba	past	y
2813	264	266	b	2	أَسِيَفِكِرِ	asiyafikiri	asiyafikiri					\\Swa{hajui mambo}.  Usually only women are in this state after someone has died -- the men try to concentrate on making the funeral arrangements.  In this case, the Prophet steps in to organise the funeral.	f-k-r		verb	final	ar	past	y
3299	304	312	d	2	أُسٗپُنْڠُلِيَ	usopunguliya	usopunguliya						-pungu-		verb	final	ba	so	y
2679	250	252	d	2	أَسِپٗيُوَ	asipoyuwa	asipoyuwa					i.e. he could do it without realising.	-ju-		verb	final	ba	ki	y
2922	274	276	d	2	أَسِپٗزٖنْڠٖيَ	asipozengeya	asipozengeya						-zeng-		verb	final	ba	ki	y
61	6	6	b	2	هَيَتَأَمَلِ	hayataamali	hayataamali					\\Swa{-taamali}, \\E{observe}.	a-m-l		verb	final	ar	me	y
2266	210	212	d	1	هَيَتَسَ	hayatasa	hayatasa						-tas-	is it not time for it to be served?	verb		ba	me	y
2663	249	251	b	1	هَيَزٗوٖيَ	hayazoweya	hayazoweya						-zoe-	he was not yet accustomed to battle --	verb		ba	me	y
2351	219	221	d	2	سِيَرٖجٖيَ	siyarejeya	siyarejeya						r-j-3		verb	final	ar	me	y
3132	295	297	b	1	سِيَوٖزِ	siyawezi	siyawezi					She means \\Swa{chakula hakinishuki}, \\E{I have no heart for eating}.  If someone dies, he is buried the next day, and the women keen and lament all day and night.  They may not eat at all until after the burial.  People who are not close relatives of the deceased may make food and bring it secretly, encouraging the bereaved to eat, as if they were sick.	-wez-	I cannot [take it], oh Fatima --	verb		ba	me	y
3021	284	286	b	2	أَكِبَئِنِ	akibaini	akibaini						b-a-n		verb	final	ar	ki	
2068	192	194	a	2	أَكِفَسِرِ	akifasiri	akifasiri						f-s-r		verb	final	ar	ki	
1249	115	117	a	1	أَكِجَ	akija	akija						-j-	When he came over he spoke,	verb		ba	ki	
3008	283	285	a	2	أَكِمَلِزَ	akimaliza	akimaliza		akimweleza	*			-maliz-		verb	final	ba	ki	
2953	277	279	d	2	أَكِنْڠِيَ	akingiya	akingiya		akingia				-ingi-		verb	final	ba	ki	
2741	257	259	a	1	أَكِپَٹَ	akipaţa	akipata						-pat-	When he got to the door	verb		ba	ki	
682	64	66	c	1	أَكِشَ	akisha	akisha						-ish-	When he finished speaking,	verb		ba	ki	
2868	270	272	a	2	أَكِشَ	akisha	akisha						-ish-		verb		ba	ki	
2392	223	225	c	1	أَكِشَ	akisha	akisha						-ish-	and then he got up	verb		ba	ki	
2419	226	228	a	2	أَكِشَ	akisha	akisha						-ish-		verb		ba	ki	
835	78	80	a	1	أَكِشَ	akisha	akisha						-ish-	When he had finished explaining [everything],	verb		ba	ki	
2456	230	232	a	1	أَكِسِكِيَ	akisikiya	akisikiya		akisikia				-siki-	When Hasan heard this	verb		ba	ki	
2671	250	252	a	2	أَكِتِمُ	akitimu	akitimu						t-m-m		verb		ar	ki	
1986	184	186	a	1	أَكِتٗكَ	akitoka	akitoka						-to-	When she came out, Ja'far	verb		ba	ki	
1510	138	140	d	3	أَكِيَ	akiya	akiya						-j-		verb	final	ba	ki	
1738	159	161	c	1	تَكَپٗرُدِ	takaporudi	takaporudi						r-d-d	when I come back from my journey	verb		ar	ta	
1803	166	168	b	1	أُكِمْوَمْبِيَ	ukimwambiya	ukimwambiya						-amb-	when you said him [those] words to him:	verb		ba	ki	
617	58	60	c	1	أُكِتَكَ	ukitaka	ukitaka						-tak-	if you want it in plain terms	verb		ba	ki	
607	57	59	c	2	أُكِوَ	ukiwa	ukiwa						-w-		verb		ba	ki	
1629	150	152	a	2	فَهَمُ	fahamu	fahamu						f-h-m		verb	final	ar	ku	
2479	232	234	b	1	مٖكَسِرِكِيَ	mekasirikiya	mekasirikiya						hh-s-r	Why has she got angry?	verb		ar	me	
683	64	66	c	2	كَتَكَلَمُ	katakalamu	katakalamu						k-l-m		verb	final	ar	ka	
1995	185	187	a	2	كَتَكَلَمُ	katakalamu	katakalamu						k-l-m		verb	final	ar	ka	
2422	226	228	b	2	كُلَ	kula	kula						k-l-l		verb		ar	ku	
2097	194	196	d	1	سِپَٹِ	sipaţi	sipati						-pat-	I have nothing to tell you [since my departure].	verb		ba	a	
946	87	89	d	1	هَتَكِ	hataki	hataki						-tak-	he doesn't want to look at us.	verb		ba	a	y
2643	247	249	c	1	أُوَپٗ	uwapo	uwapo					= \\Swa{ukiwa}.	-w-	Since you have now agreed [you were wrong],	verb		ba	a	
767	72	74	b	1	أُيَپٗ	uyapo	uyapo						-j-		verb		ba	a	
604	57	59	b	2	سِكُچِ	sikuchi	sikuchi						-ch-		verb		ba	a	y
1259	116	118	a	2	هَٹُشِكِ	haţushiki	hatushiki						-shik-		verb		ba	a	y
1385	127	129	b	2	هَمْكُيَكُٹَ	hamkuyakuţa	hamkuyakuta						-kut-		verb	final	ba	a	y
2482	232	234	c	2	هَكُبَئِنِ	hakubaini	hakubaini		sikubaini	*			b-a-n		verb	final	ar	a	y
2715	254	256	c	1	هَوٖكِ	haweki	haweki					We understand \\Swa{Mungu}, \\E{God}.	-wek-	[God] cannot have two Lions,	verb		ba	a	y
1897	175	177	b	3	هَكُئِسِ	hakuisi	hakuisi						-is-		verb	final	ba	a	y
209	20	20	d	1	هَؤٗنِ	haoni	haoni						-on-	he could not see what he could tell her.	verb		ba	a	y
2093	194	196	c	1	سِيُوِ	siyuwi	siyuwi		siyui				-ju-	[though] I don't know about after [I left].	verb		ba	a	y
2327	217	219	c	1	سِيُوِ	siyuwi	siyuwi		siyui				-ju-	I do not know about where I am going --	verb		ba	a	y
2675	250	252	c	1	سَبَا	sabā	saba		sabaa				s-b-3	Indeed, 700 [opponents]	num		ar		
3126	294	296	c	2	سَبَا	sabā	saba		sabaa				s-b-3		num		ar		
\.


--
-- Name: jaafari_words_pos_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_words_pos_seq', 3328, true);


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

