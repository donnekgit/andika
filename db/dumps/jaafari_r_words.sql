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
    english character varying(250) DEFAULT ''::character varying NOT NULL
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

COPY jaafari_r_words (word_id, msno, stanza, loc, "position", arabic, close, standard, edclose, edstan, emend, variant, note, root, english) FROM stdin;
88	9	9	d	1	تَنَبُحِ	tanabuḥi	tanabuhi					\\q{and made her aware}.		
3820	378	382	c	1	اُرُادِ	uruādi	uruadi	urūdi	urudi					
65	7	7	a	2	بِنْتِ	binti	binti							
2	1	1	a	2	اَوَّلِ	awwali	auwali		awali					
30	3	3	d	3	نِجِرِيَا	nijiriyā	nijiriya		~					
7	1	1	c	2	نْجِمَ	njima	njima		njema					
46	5	5	c	1	نَلِنَ	nalina	nalina							
47	5	5	c	2	پِتِ	piti	piti		pete					
48	5	5	c	3	ػَنْدَانِ	kʲandāni	chandani							
11	2	2	a	1	بِسْمِلَهِ	bismilahi	bismilahi		bismillahi					
31	4	4	a	1	نَلِ	nali	nali							
32	4	4	a	2	نِرَاؤُ	nirau	nirau		nendao					
13	2	2	b	1	پَمِ	pami	pami		pamwe					
14	2	2	b	2	نَأَرَاحَمَنِ	naarāḥamani	naarahamani		na ar-rahamani					
33	4	4	a	3	دِيَنِ	diyani	diyani		ndiani					
15	2	2	c	1	نَأَرَاحِيْمِ	naarāḥı̄mi	naarahimi		na ar-rahimi					
16	2	2	c	2	يُوَانِ	yuwāni	yuwani							
17	2	2	d	1	رِيُ	riyu	riyu		ndiyo					
18	2	2	d	2	يَلُتَغُلِىَ	yalutaghuliya	yalutaghuliya		yalotanguliya					
3818	378	382	b	2	يَكِ	yaki	yaki		yake					
19	3	3	a	1	كَتِكَ	katika	katika							
20	3	3	a	2	سِكٔ	sik	sik							
21	3	3	a	3	رُزَنْڠُ	ruzangu	ruzangu		nduzangu					
34	4	4	b	1	كَأُنَ	kauna	kauna		kaona					
35	4	4	b	2	مْتُ	mtu	mtu							
36	4	4	b	3	نْيُمْبانِ	nyumbāni	nyumbani							
22	3	3	b	1	كْوِرَا	kwirā	kwira		kwenda					
23	3	3	b	2	مَتِنْبِزِ	matim̱bizi	matimbizi		matembezi					
24	3	3	b	3	كْوَنْڠُ	kwangu	kwangu							
58	6	6	c	1	اَكِرَا	akirā	akira		akenda					
25	3	3	c	1	نِوَاپِ	niwāpi	niwapi		niwape					
26	3	3	c	2	خَبَارِ	khabāri	habari							
27	3	3	c	3	يَنْڠُ	yangu	yangu							
49	5	5	d	1	كَوَاحِ	kawāḥi	kawahi							
37	4	4	c	1	مُيُوِ	muyuwi	muyuwi		moyowe					
38	4	4	c	2	اُكَتَمَنِ	ukatamani	ukatamani							
39	4	4	d	1	كْوَا	kwā	kwa							
40	4	4	d	2	حَلَلِا	ḥalaliā	halalia	ḥalalī	halali					
41	4	4	d	3	كَرِضِيَا	kariḍiyā	karidhiya							
59	6	6	c	2	كْوَ	kwa	kwa							
42	5	5	a	1	نَمَهَرِيِ	namahariyi	namahariyi		na mahariye					
43	5	5	a	2	يُوَانِ	yuwāni	yuwani		yuani					
60	6	6	c	3	مْكِى	mkii	mkii		mke					
61	6	6	c	4	وَاكِ	wāki	waki		wake					
44	5	5	b	1	نَلُمْپَ	nalumpa	nalumpa		nalompa					
45	5	5	b	2	زَيْدَانِ	zaydāni	zaydani		zaidani					
51	6	6	a	1	عَلِى	ʿalii	alii		Ali					
52	6	6	a	2	كِتُكَ	kituka	kituka		kitoka					
53	6	6	a	3	كْوَاكِ	kwāki	kwaki		kwake					
55	6	6	b	2	رُبَ	ruba	ruba							
56	6	6	b	3	مُيُ	muyu	muyu		moyo					
57	6	6	b	4	وَاكِ	wāki	waki		wake					
62	6	6	d	1	مْكُنُ	mkunu	mkunu		mkono					
63	6	6	d	2	كَفُمْبَتِيَا	kafumbatiyā	kafumbatiya							
67	7	7	b	1	حَيُ	ḥayu	hayu		hayo					
64	7	7	a	1	مْوَانَ	mwāna	mwana		Mwana					
68	7	7	b	2	اَسِتَعَمَلِ	asitaʿamali	asitaamali							
79	8	8	c	2	اُوْزِايِ	ūziāyi	uziayi	ūzīyi	uozee					
81	8	8	d	2	هُيَسِكِيَا	huyasikiyā	huyasikiya							
74	8	8	a	1	اَكِنِرَا	akinirā	akinira		akenenda					
69	7	7	c	1	اَكِرَا	akirā	akira		akenda					
72	7	7	d	1	خَبَارِ	khabāri	habari							
73	7	7	d	2	اَكَمْوَابِيَا	akamwābiyā	akamwabiya		akamwambiya					
76	8	8	b	1	فَطِمَ	faṭima	fatima		Fatima					
77	8	8	b	2	نِكْوَابِيِ	nikwābiyi	nikwabiyi		nikwambie					
78	8	8	c	1	عَلِيْ	ʿalii	alii		Ali					
83	9	9	a	2	مْشَوَاشَ	mshawāsha	mshawasha							
80	8	8	d	1	خَبَارِ	khabāri	habari							
85	9	9	b	2	اَكَمْكَنُشَا	akamkanushā	akamkanusha							
82	9	9	a	1	اَكَفَنْيَّ	akafanı̄ya	akafanyaU+0651	akafanyya	akafanya					
84	9	9	b	1	فَطِمَ	faṭima	fatima		Fatima					
131	14	14	a	1	كَفَصِيْرِ	kafaṣı̄ri	kafasiri							
86	9	9	c	1	اَلَمَ	alama	alama							
87	9	9	c	2	كَمُوُنِيْشَ	kamuwunı̄sha	kamuwunisha		kamuonyesha					
114	12	12	b	1	اَسِوِزِ	asiwizi	asiwizi		asiwezi					
115	12	12	b	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
89	9	9	d	2	كَمْتِيَا	kamtiyā	kamtiya							
232	23	23	c	1	نِمِتَكَ	nimitaka	nimitaka		nimetaka			\\q{I want the real reason}.  The \\Swa{-me-} tense formative is used here as an immediate present -- compare 214a.		
236	23	23	d	3	نَمْبِيَا	nambiyā	nambiya					\\q{tell me now, Ali}.		
71	7	7	c	3	عَقِلِ	ʿaqili	aqili		akili					
75	8	8	a	2	اُغِيْزِيِ	ughı̄ziyi	ughiziyi		ungizie			\\q{and entered [the house]}		
159	16	16	d	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3461	352	346	a	2	كَتَمْكَ	katamka	katamka							
3455	351	345	c	1	هِنِ	hini	hini							
3465	352	346	c	1	كَمْبَ	kamba	kamba							
3458	351	345	d	1	صَلَا	ṣalā	sala							
3463	352	346	b	2	مِمِ	mimi	mimi							
3467	352	346	d	1	كْوَ	kwa	kwa							
3478	353	347	d	1	كَمَ	kama	kama							
3483	354	348	b	1	كْوَ	kwa	kwa							
3526	358	352	c	1	حَتَ	ḥata	hata							
3487	354	348	c	2	اَكَوْشِيْكَا	akawshı̄kā	akaushika							
3492	355	349	a	3	كْوَا	kwā	kwa							
3493	355	349	a	4	حِمَ	ḥima	hima							
3528	358	352	c	3	كَتَمْكَ	katamka	katamka							
3496	355	349	b	3	كَيَنْدَامَ	kayandāma	kayandama							
3497	355	349	c	1	كْوَا	kwā	kwa							
3501	355	349	d	2	كَمْبِشِيَا	kambishiyā	kambishiya							
3548	360	354	c	2	قَبُرِ	qaburi	qaburi							
3504	356	350	b	1	كَمْبَ	kamba	kamba							
3506	356	350	b	3	مِمِ	mimi	mimi							
3517	357	351	c	1	قَبُرِ	qaburi	qaburi							
3530	358	352	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya							
3532	359	353	a	2	كِنُظُمُ	kinuẓumu	kinudhumu							
280	27	27	d	3	نَبِيَا	nabiyā	nabiya		Nabiya			\\q{or go and ask the Prophet [if you don't believe me]}.		
291	28	28	d	2	سِتُمُوَابِيَا	situmuwābiyā	situmuwabiya		sitomwambiya					
241	24	24	b	1	مِمِ	mimi	mimi							
245	24	24	c	3	وَ	wa	wa							
132	14	14	a	2	مُعَيَنِ	muʿayani	muayani							
90	10	10	a	1	سِپَتٖ	sipate	sipate							
91	10	10	a	2	كْوَمْبَا	kwambā	kwamba							
92	10	10	a	3	نِكْوِلِ	nikwili	nikwili		ni kweli					
116	12	12	c	1	حَسَنِ	ḥasani	hasani		Hasani					
93	10	10	b	1	حُجَ	ḥuja	huja		hoja					
94	10	10	b	2	سِكُتَعَمَلِ	sikutaʿamali	sikutaamali							
117	12	12	c	2	اَكَمْتُمَ	akamtuma	akamtuma							
95	10	10	c	1	اَرُدِپُ	arudipu	arudipu		arudipo					
96	10	10	c	2	كْوَا	kwā	kwa							
97	10	10	c	3	رَسُوْلِ	rasūli	rasuli		Rasuli					
141	15	15	b	1	يِوُ	yiwu	yiwu		yeo					
98	10	10	d	1	اِيُ	iyu	iyu		yeo					
99	10	10	d	2	تَمُوَاغَلِيْيَ	tamuwāghalı̄ya	tamuwaghaliya		tamuangaliya					
118	12	12	d	1	بَبَكُ	babaku	babaku		babako					
119	12	12	d	2	نَمْكُلِيَا	namkuliyā	namkuliya							
100	11	11	a	1	مْوَانَ	mwāna	mwana		Mwana					
101	11	11	a	2	بِنْتِ	binti	binti							
102	11	11	a	3	أمِيْنِ	mı̄ni	mini		Amini					
142	15	15	b	2	اُنَنِ	unani	unani		una-ni					
103	11	11	b	1	حَيُ	ḥayu	hayu		hayo					
104	11	11	b	2	نْرِيُ	nriyu	nriyu		ndiyo					
105	11	11	b	3	تَمْكِنِ	tamkini	tamkini							
133	14	14	b	1	حَمْكُلِوَا	ḥamkuliwā	hamkuliwa							
134	14	14	b	2	نْيُمْبَانِ	nyumbāni	nyumbani							
106	11	11	c	1	اَلِنَ	alina	alina		ali na					
107	11	11	c	2	پِتِ	piti	piti		pete					
108	11	11	c	3	ػَنْدَانِ	kʲandāni	chandani							
121	13	13	a	2	كْوَا	kwā	kwa							
122	13	13	a	3	سِرِ	siri	siri							
109	11	11	d	1	كَوَاحِ	kawāḥi	kawahi							
110	11	11	d	2	كُمْڤُلِيَا	kumvuliyā	kumvuliya							
111	12	12	a	1	اَكَفَنْيَّا	akafanı̄yā	akafanyaU+0651a	akafanyyā	akafanya					
112	12	12	a	2	حَلِ	ḥali	hali		halimama					
113	12	12	a	3	مَمَ	mama	mama		~					
123	13	13	b	1	اَسِكُيُوِا	asikuyuwiā	asikuyuwia	asikuyuwī	asikuyue					
124	13	13	b	2	بَشِيْرِا	bashı̄riā	bashiria	bashirī	Bashiri					
143	15	15	b	3	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
125	13	13	c	1	اَػِنْرَا	akʲinrā	achinra		achenda					
126	13	13	c	2	اَكَفَصِيْرِ	akafaṣı̄ri	akafasiri							
135	14	14	c	1	كُسِكِيَكْوِ	kusikiyakwi	kusikiyakwi		kusikiakwe					
136	14	14	c	2	اَمِيْنِ	amı̄ni	amini		Amini					
127	13	13	d	1	مْبِيْ	mbii	mbii		mbee					
128	13	13	d	2	زَ	za	za							
129	13	13	d	3	تُمْوَا	tumwā	tumwa		Tumwa					
130	13	13	d	4	نَبِيَا	nabiyā	nabiya		Nabiya					
162	17	17	a	2	كَشَوِشِكَ	kashawishika	kashawishika							
137	14	14	d	1	عَجَبُ	ʿajabu	ajabu							
138	14	14	d	2	اِكَمْڠِيْيَا	ikamgı̄yā	ikamgiya		ikamngiya					
150	16	16	a	1	عَلِيْ	ʿalii	alii		Ali					
151	16	16	a	2	اَكَيْنُكَ	akaynuka	akaynuka		akainuka					
139	15	15	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza					
140	15	15	a	2	هَشِيْمَ	hashı̄ma	hashima		Hashima					
144	15	15	c	1	حُكْوَمْكُوَ	ḥukwamkuwa	hukwamkuwa		hukuamkua					
145	15	15	c	2	كْوَا	kwā	kwa							
146	15	15	c	3	حِيْمَ	ḥı̄ma	hima							
164	17	17	b	2	رُحُمَ	ruḥuma	ruhuma							
147	15	15	d	1	نَيُ	nayu	nayu		nayo					
148	15	15	d	2	سِيُ	siyu	siyu		siyo					
149	15	15	d	3	مَزُوِيَا	mazuwiyā	mazuwiya		mazoeya					
156	16	16	c	2	نْيُمْبَانِ	nyumbāni	nyumbani							
152	16	16	b	1	اَكِنِرَا	akinirā	akinira		akenenda					
153	16	16	b	2	كْوَ	kwa	kwa							
154	16	16	b	3	حَرَاكَ	ḥarāka	haraka							
157	16	16	c	3	كِفِكَ	kifika	kifika							
158	16	16	d	1	مْوَانَ	mwāna	mwana		Mwana					
160	16	16	d	3	حُلِيَا	ḥuliyā	huliya							
161	17	17	a	1	عَلِيْ	ʿalii	alii		Ali					
165	17	17	b	3	كَمْشِيْكَ	kamshı̄ka	kamshika							
167	17	17	c	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
163	17	17	b	1	كْوَا	kwā	kwa							
168	17	17	c	3	پُلِكَ	pulika	pulika							
170	17	17	d	2	نَلُ	nalu	nalu		nalo					
166	17	17	c	1	كْوَانْدَا	kwāndā	kwanda							
169	17	17	d	1	اُلِلُ	ulilu	ulilu		ulilo					
171	17	17	d	3	نَمْبِيَا	nambiyā	nambiya							
242	24	24	b	2	سِكُتَعَمَلِ	sikutaʿamali	sikutaamali							
120	13	13	a	1	نَمْكُلِيَ	namkuliya	namkuliya		namkulia					
155	16	16	c	1	حَيَ	ḥaya	haya		hata					
319	32	32	a	1	يَكْوِلِيَوِ	yakwiliyawi	yakwiliyawi		yakweleawe			\\q{to make it clear to you, Prophet}.		
303	30	30	b	1	وَلِوُ	waliwu	waliwu		walio					
200	20	20	c	1	مُوْيُ	mūyu	muyu		moyo					
172	18	18	a	1	اُنَ	una	una							
173	18	18	a	2	كِطَ	kiṭa	kita		kitwa					
174	18	18	a	3	حُكُؤُمَ	ḥukuuma	hukuuma							
201	20	20	c	2	اُپُوِ	upuwi	upuwi		upoe					
202	20	20	c	3	مَتُنْڠُ	matungu	matungu							
175	18	18	b	1	اَوْ	aw	au							
176	18	18	b	2	وَاشِكْوَا	wāshikwā	washikwa							
177	18	18	b	3	نَحُمَ	naḥuma	nahuma		na huma					
178	18	18	c	1	اَكَمْجِبُ	akamjibu	akamjibu							
179	18	18	c	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
218	22	22	b	1	نِنُ	ninu	ninu		neno					
219	22	22	b	2	اُلِلُا	uliluā	ulilua	ulilū	ulilofasiri					
220	22	22	b	3	فَصِيْرِا	faṣı̄riā	fasiria	faṣı̄rī	~					
180	18	18	d	1	كْوَا	kwā	kwa							
181	18	18	d	2	مَرَضِيْ	maraḍii	maradhii		maradhi					
182	18	18	d	3	سِكُلِيَا	sikuliyā	sikuliya							
203	20	20	d	1	نَوِ	nawi	nawi		nawe					
204	20	20	d	2	اُكُمِ	ukumi	ukumi		ukome					
205	20	20	d	3	كُلِيْيَا	kulı̄yā	kuliya							
183	19	19	a	1	مِمِ	mimi	mimi							
184	19	19	a	2	حَپَ	ḥapa	hapa							
185	19	19	a	3	نِمْتُكَ	nimtuka	nimtuka		nimetoka					
186	19	19	b	1	وِوِ	wiwi	wiwi		wewe					
187	19	19	b	2	حُنِنَ	ḥunina	hunina		hunena					
188	19	19	b	3	هُتِيْكَ	hutı̄ka	hutika		huteka					
206	21	21	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
207	21	21	a	2	اَكَتَمْكَ	akatamka	akatamka							
189	19	19	c	1	نَكَمَ	nakama	nakama		na kama					
190	19	19	c	2	كِتُ	kitu	kitu							
191	19	19	c	3	وَاتَكَ	wātaka	wataka							
192	19	19	d	1	اُسِخُفُ	usikhufu	usihufu		usihofu					
193	19	19	d	2	كُنَمْبِيَا	kunambiyā	kunambiya							
229	23	23	b	1	بُوْ	buu	buu		Bu					
194	20	20	a	1	وَتَكَ	wataka	wataka							
195	20	20	a	2	مْنِ	mni	mni		nini	*				
196	20	20	a	3	رُيَنْڠُ	ruyangu	ruyangu		nduyangu					
230	23	23	b	2	بَكَرِ	bakari	bakari		Bakari					
208	21	21	b	1	پِتِ	piti	piti		pete					
209	21	21	b	2	يَكُ	yaku	yaku		yako					
197	20	20	b	1	كَثَمِيْنِ	kathamı̄ni	kathamini							
198	20	20	b	2	رُحُ	ruḥu	ruhu		roho					
199	20	20	b	3	يَنْڠُ	yangu	yangu							
210	21	21	b	3	نَيْتَكَ	naytaka	naytaka		naitaka					
231	23	23	b	3	سِكِفَنِ	sikifani	sikifani		si kifani					
221	22	22	c	1	اُنَيُ	unayu	unayu		unayo					
211	21	21	c	1	عَلِيْ	ʿalii	alii		Ali					
212	21	21	c	2	اَكَشُتُكَ	akashutuka	akashutuka							
222	22	22	c	2	اَبُوْ	abuu	abuu		Abu					
223	22	22	c	3	بَكَرِ	bakari	bakari		Bakari					
213	21	21	d	1	هُوَزَا	huwazā	huwaza							
214	21	21	d	2	نِكُوْمْوَبِيَا	nikūmwabiyā	nikumwabiya		ni kumwambiya					
215	22	22	a	1	كِسَ	kisa	kisa							
216	22	22	a	2	عَلِيْ	ʿalii	alii		Ali					
217	22	22	a	3	حَيْدَارِ	ḥaydāri	haydari		Haidari					
224	22	22	d	1	تَكْوِنْرَ	takwinra	takwinra		takwenda					
225	22	22	d	2	كُكُتْوَلِيَا	kukutwaliyā	kukutwaliya							
237	24	24	a	1	هُوْنُ	hūnu	hunu							
2805	285	279	a	2	َكَبَيِنِ	akabayini	akabayini		akabaini					
226	23	23	a	1	پِتِ	piti	piti		pete					
227	23	23	a	2	يَكُ	yaku	yaku		yako					
228	23	23	a	3	يَػَنْدَانِ	yakʲandāni	yachandani		ya chandani					
233	23	23	c	2	تَمْكِنِ	tamkini	tamkini							
238	24	24	a	2	مْوِزِ	mwizi	mwizi		mwezi					
239	24	24	a	3	نِوَا	niwā	niwa		ni wa					
234	23	23	d	1	يِوُ	yiwu	yiwu		yeo					
235	23	23	d	2	عَلِي	ʿalii	alii		Ali					
243	24	24	c	1	اُنَ	una	una							
244	24	24	c	2	نَمْكِيْ	namkii	namkii		na mke					
248	24	24	d	2	نِمْسِكِيَا	nimsikiyā	nimsikiya		nimesikiya					
250	25	25	a	2	وَاللَّهِ	wallahi	wallahi							
247	24	24	d	1	خَبَارِ	khabāri	habari							
246	24	24	c	4	پِيْلِ	pı̄li	pili							
251	25	25	a	3	رُيَنْغُ	ruyanghu	ruyanghu		nduyangu					
253	25	25	b	2	پْوِكِ	pwiki	pwiki		pweke					
249	25	25	a	1	كَمْبَ	kamba	kamba							
254	25	25	b	3	مْكِ	mki	mki		mke					
255	25	25	b	4	وَنْغُ	wanghu	wanghu		wangu					
257	25	25	c	2	عَدُوِ	ʿaduwi	aduwi		adui					
252	25	25	b	1	نِوِ	niwi	niwi		niwe					
258	25	25	c	3	يَنْڠُ	yangu	yangu							
256	25	25	c	1	نِنْيَّنِ	ninı̄yani	niniyani	ninyyani	ni nyani					
325	32	32	c	2	سِحِمِلِ	siḥimili	sihimili							
398	40	40	b	3	يَنْڠُ	yangu	yangu							
370	37	37	b	1	نِكَمَ	nikama	nikama		ni kama					
304	30	30	b	2	نَنِ	nani	nani							
305	30	30	b	3	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
259	25	25	d	1	حِلَ	ḥila	hila		hela					
260	25	25	d	2	مْتُيِ	mtuyi	mtuyi		mtuye					
287	28	28	c	1	كَمَ	kama	kama							
288	28	28	c	2	هَيَ	haya	haya							
289	28	28	c	3	مَتَمْكُ	matamku	matamku		matamko					
262	26	26	a	1	كَمْجِبُ	kamjibu	kamjibu							
263	26	26	a	2	كْوَا	kwā	kwa							
264	26	26	a	3	لِسَنِ	lisani	lisani							
265	26	26	b	1	مْتُيِ	mtuyi	mtuyi		mtuye					
266	26	26	b	2	سِمْبَاءِنِ	simbaini	simbaini					A marginal note in the MS gives an alternate spelling: \\AS{بَيْنِ}		
290	28	28	d	1	بَبَغُ	babaghu	babaghu		babangu					
267	26	26	c	1	پِتِ	piti	piti		pete					
268	26	26	c	2	يَكُ	yaku	yaku		yako					
269	26	26	c	3	يَػَنْدَانِ	yakʲandāni	yachandani		ya chandani					
2807	285	279	b	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni					
270	26	26	d	1	اُنِپَپٗ	unipapo	unipapo							
271	26	26	d	2	تَرِظيْيَا	tariẓı̄yā	taridhiya							
314	31	31	c	1	زِيَپُ	ziyapu	ziyapu		ziapo					
272	27	27	a	1	عَلِي	ʿalii	alii		Ali					
273	27	27	a	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini					
315	31	31	c	2	زِنْيِ	zinyi	zinyi		zenye					
292	29	29	a	1	عَلِي	ʿalii	alii		Ali					
274	27	27	b	1	نِكْوَمْبِيَ	nikwambiya	nikwambiya		nikwambia					
275	27	27	b	2	تَمْكِنِ	tamkini	tamkini							
293	29	29	a	2	اَكَوُضِيْكَ	akawuḍı̄ka	akawudhika		akaudhika					
276	27	27	c	1	يَلِغِيَ	yalighiya	yalighiya		yalingia					
277	27	27	c	2	كِسِمَانِ	kisimāni	kisimani							
306	30	30	c	1	عَلِيْ	ʿalii	alii		Ali					
307	30	30	c	2	كَتَكَلَّمَ	katakallama	katakallama		katakalama					
278	27	27	d	1	اَوُ	awu	awu		au					
279	27	27	d	2	مُوُزِ	muwuzi	muwuzi		muuze					
2808	285	279	c	1	نِمْتُمِيى	nimtumı̄ı̄	nimtumiyi		nimtumie					
294	29	29	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
295	29	29	b	2	كُكَصِيْرِكَ	kukaṣı̄rika	kukasirika							
281	28	28	a	1	مُيَ	muya	muya		moya					
282	28	28	a	2	نِنَ	nina	nina		nena					
283	28	28	a	3	پِتِ	piti	piti		pete					
284	28	28	a	4	يَكُ	yaku	yaku		yako					
285	28	28	b	1	مَحَلِ	maḥali	mahali							
286	28	28	b	2	اُيْوِتِيْكُ	uywitı̄ku	uywitiku		uiweteko					
296	29	29	c	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka					
297	29	29	c	2	اَكَتُكَ	akatuka	akatuka		akatoka					
316	31	31	c	3	مَخُفُ	makhufu	mahufu		mahofu					
308	30	30	d	1	مْتُمِ	mtumi	mtumi		Mtume					
298	29	29	d	1	اَكِنِرَا	akinirā	akinira		akenenda					
299	29	29	d	2	كْوَا	kwā	kwa							
300	29	29	d	3	نَبِيَا	nabiyā	nabiya		Nabiya					
309	30	30	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya							
301	30	30	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza					
302	30	30	a	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima					
321	32	32	b	1	نَمِ	nami	nami							
322	32	32	b	2	نَلِفَنْيَ	nalifanya	nalifanya							
317	31	31	d	1	زِنْڠِ	zingi	zingi							
318	31	31	d	2	نِمِمْتِلِيَا	nimimtiliyā	nimimtiliya		nimemtiliya					
310	31	31	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya							
311	31	31	a	2	شَرِفُ	sharifu	sharifu		Sharifu					
312	31	31	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
313	31	31	b	2	مِنِكَلِفُ	minikalifu	minikalifu		menikalifu					
323	32	32	b	3	كْوِلِ	kwili	kwili		kweli					
326	32	32	d	1	خُفُ	khufu	hufu		hofu					
327	32	32	d	2	زِمِزُنِغِيَا	zimizunighiyā	zimizunighiya		zimezoningiya					
2809	285	279	c	2	حَسَانِ	ḥasāni	hasani		Hasani					
320	32	32	a	2	رَسُوْلِ	rasūli	rasuli		Rasuli					
324	32	32	c	1	كُمْوَامْبِيَ	kumwāmbiya	kumwambiya							
2810	285	279	d	1	مِكْوِرَ	mikwira	mikwira		mekwenda					
329	33	33	a	2	وِوِ	wiwi	wiwi		wewe					
330	33	33	a	3	سَيّدِ	sayı̄di	sayidi		Sayidi					
331	33	33	b	1	كَمُوُنْيِّ	kamuwunı̄yi	kamuwuniyi	kamuwunyyi	kamuonye					
332	33	33	b	2	اَبُرُدِ	aburudi	aburudi							
328	33	33	a	1	اِنِرَا	inirā	inira		enenda					
334	33	33	c	2	مُحَمَّدِا	muḥammadiā	muhammadia	muḥammadī	Muhamadi					
336	33	33	d	2	كَأَنْدَامَ	kaandāma	kaandama							
333	33	33	c	1	كَيْنُكَا	kaynukā	kaynuka		kainuka					
261	25	25	d	3	نَمْبِيَا	nambiyā	nambiya					\\q{Come -- tell me [the name of] this person}.		
2812	286	280	a	1	عَلِيْ	ʿalii	alii		Ali					
2813	286	280	a	2	كِتُكَ	kituka	kituka		kitoka					
425	43	43	b	2	نِمِمْفِكِرِا	nimimfikiriā	nimimfikiria	nimimfikirī	nimemfikiri					
337	33	33	d	3	نْدِيَا	ndiyā	ndiya							
335	33	33	d	1	حَپُ	ḥapu	hapu		hapo					
2814	286	280	a	3	نْرَانِ	nrāni	nrani		ndani					
338	34	34	a	1	اَتِرَا	atirā	atira		atenda					
343	34	34	b	3	نَكَسِ	nakasi	nakasi		na kasi					
2815	286	280	b	1	اَلِپُكِتِ	alipukiti	alipukiti		alipoketi					
344	34	34	c	1	كَفَنْيَ	kafanya	kafanya							
345	34	34	c	2	كَمَ	kama	kama							
346	34	34	c	3	هَيْسِ	haysi	haysi		haisi					
371	37	37	b	2	خَبَارِ	khabāri	habari							
372	37	37	b	3	غَانِ	ghāni	ghani		gani					
347	34	34	d	1	مِكْوِنْرَ	mikwinra	mikwinra		mekwenda					
348	34	34	d	2	كُمْوَاڠَلِيَا	kumwāgaliyā	kumwagaliya		kumwangaliya					
349	35	35	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza					
350	35	35	a	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima					
387	39	39	b	1	مُسِتِتِ	musititi	musititi		musitete					
388	39	39	b	2	نَمُمِوُ	namumiwu	namumiwu		na mumewo					
373	37	37	c	1	اُسِمْغُجِ	usimghuji	usimghuji		usimngoje					
351	35	35	b	1	وَلِوُ	waliwu	waliwu		walio					
352	35	35	b	2	نَنِ	nani	nani							
353	35	35	b	3	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
374	37	37	c	2	نْيُمْبَانِ	nyumbāni	nyumbani							
354	35	35	c	1	حَسَانِ	ḥasāni	hasani		Hasani					
355	35	35	c	2	اُيْيِ	uyyi	uyyi		uiye					
356	35	35	c	3	حِمَ	ḥima	hima							
357	35	35	d	1	عَلِى	ʿalii	alii		Ali					
358	35	35	d	2	كُمْوَادَمِيَا	kumwādamiyā	kumwadamiya		kumwandamiya					
375	37	37	d	1	اُكَيَ	ukaya	ukaya							
376	37	37	d	2	كُمْوَنْدَامِيَا	kumwandāmiyā	kumwandamiya							
359	36	36	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
360	36	36	a	2	حَكُكَصِيْرِ	ḥakukaṣı̄ri	hakukasiri							
361	36	36	b	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia					
362	36	36	b	2	بَشِيْرِا	bashı̄riā	bashiria	bashīrī	Bashiri					
377	38	38	a	1	اَكَنْيَّمَاَءَ	akanı̄yamaaa	akaniyamaaa	akanyyamaaa	akanyamaa					
363	36	36	c	1	عَلِي	ʿalii	alii		Ali					
364	36	36	c	2	زَاكِى	zākii	zakii		zake					
365	36	36	c	3	خَبَارِ	khabāri	habari							
2817	286	280	c	1	اَمْسِكِيَ	amsikiya	amsikiya		amsikia					
366	36	36	d	1	يِوُ	yiwu	yiwu		yeo					
367	36	36	d	2	نِمِزِسِكِيَا	nimizisikiyā	nimizisikiya		nimezisikiya					
389	39	39	c	1	اَكَرُدُفُ	akarudufu	akarudufu							
368	37	37	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza					
369	37	37	a	2	اَمِيْنِ	amı̄ni	amini		Amini					
390	39	39	c	2	كِلِيْوُ	kilı̄wu	kiliwu		kilio					
2818	286	280	c	2	حَسَانِ	ḥasāni	hasani		Hasani					
2821	287	281	a	1	حَسَنِ	ḥasani	hasani		Hasani					
405	41	41	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
381	38	38	c	1	اِلُوْمْتُكَ	ilūmtuka	ilumtuka		ilomtoka					
382	38	38	c	2	كَلِيْمَ	kalı̄ma	kalima							
391	39	39	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
383	38	38	d	1	نَيَكْوِلِيِ	nayakwiliyi	nayakwiliyi		nayakwelee					
2825	287	281	c	1	وَلِيُكُ	waliyuku	waliyuku		walioko					
392	39	39	d	2	لِزَاهَرِيَا	lizāhariyā	lizahariya		li-Zahariya					
385	39	39	a	1	يَوَاتِ	yawāti	yawati		yawate					
2828	287	281	d	1	وُتِ	wuti	wuti		wote					
399	40	40	c	1	نِهَيُ	nihayu	nihayu		ni hayo					
400	40	40	c	2	مَنِيْنُ	manı̄nu	maninu		maneno					
393	40	40	a	1	اَكَمْبَ	akamba	akamba							
394	40	40	a	2	تِنَ	tina	tina		tena					
395	40	40	a	3	مْوَانَغُ	mwānaghu	mwanaghu		mwanangu					
401	40	40	c	3	يَغُ	yaghu	yaghu		yangu					
410	41	41	c	3	كَلِيْمَ	kalı̄ma	kalima							
396	40	40	b	1	اُتَكَپُ	utakapu	utakapu		utakapo					
397	40	40	b	2	رَضِ	raḍi	radhi							
406	41	41	b	1	يُتِ	yuti	yuti		yote					
402	40	40	d	1	يِوُ	yiwu	yiwu		yeo					
2829	287	281	d	2	وَكَمْپُكِيْيَا	wakampukı̄yā	wakampukiya		wakampokeya					
407	41	41	b	2	اَكَيَسُكُمَ	akayasukuma	akayasukuma							
404	41	41	a	1	كُوَمْبِوَاكْوِ	kuwambiwākwi	kuwambiwakwi		kuambiwakwe					
418	42	42	c	2	مَؤُڤُ	mauvu	mauvu		maovu					
419	42	42	c	3	يَنْڠُ	yangu	yangu							
413	42	42	a	1	اَكَمْوَمْبِيَ	akamwambiya	akamwambiya							
408	41	41	c	1	كِسَ	kisa	kisa							
409	41	41	c	2	كَڤُتَ	kavuta	kavuta							
339	34	34	a	2	حَيَ	ḥaya	haya		hayajilisi					
340	34	34	a	3	جِلِسِ	jilisi	jilisi		~					
2831	288	282	a	2	رَانِ	rāni	rani		ndani					
564	57	57	c	1	وَلَا	walā	wala							
411	41	41	d	1	بَبَكِ	babaki	babaki		babake					
412	41	41	d	2	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya							
414	42	42	a	2	بَبَڠُ	babagu	babagu		babangu					
415	42	42	b	1	تُنَنِ	tunani	tunani		tuna-ni					
416	42	42	b	2	نَمُمِوَانْڠُ	namumiwāngu	namumiwangu		na mume wangu					
421	42	42	d	2	كُپِنْدِلِيَا	kupindiliyā	kupindiliya		kupendeleya					
417	42	42	c	1	نَيُوَا	nayuwā	nayuwa		nayua					
423	43	43	a	2	وَلِنِغُرِ	walinighuri	walinighuri		walonighuri					
420	42	42	d	1	سِمْوِنْيِ	simwinyi	simwinyi		si mwenye					
422	43	43	a	1	نِمْتُ	nimtu	nimtu		ni mtu					
424	43	43	b	1	سَسَا	sasā	sasa							
453	46	46	a	2	نْدِيَانِ	ndiyāni	ndiyani		ndiani					
426	43	43	c	1	هَتُپِنْدِلِيِ	hatupindiliyi	hatupindiliyi		hatupendelei					
427	43	43	c	2	خِيْرِ	khı̄ri	hiri		heri					
493	50	50	b	3	جُمَ	juma	juma					It is unfortunate that Ali does not tell the Prophet of his meeting with the person who stopped him on the way -- the Prophet would have known immediately that it was a devil.		
428	43	43	d	1	حَوِزِ	ḥawizi	hawizi		hawezi					
429	43	43	d	2	كُتْوَاغَلِيْيَ	kutwāghalı̄ya	kutwaghaliya		kutwangaliya					
454	46	46	b	1	اَكِمْوَامْبِيَا	akimwāmbiyā	akimwambiya		akimwambia					the devil said to him:
455	46	46	b	2	شَيْطَانِ	shayṭāni	shaytani		shaitani			In Swahili \\Swa{shetani} can also be used to mean "temptation".  For instance, if you have some work to do and a friend persuades you that you should put off the work and go out for a walk with him instead, you may say: \\Swa{haya, shetani mekuja}, \\E{alright, I'll give in to the temptation}.		
430	44	44	a	1	تِنَ	tina	tina		tena					And the conclusion in my heart
431	44	44	a	2	هُظُمُ	huẓumu	hudhumu							
432	44	44	a	3	مُيُنِ	muyuni	muyuni		moyoni					
433	44	44	b	1	مْتُيِ	mtuyi	mtuyi		mtuye					[is that] that person was a devil --
434	44	44	b	2	نِشَيْطَانِ	nishayṭāni	nishaytani		ni shaitani					
489	50	50	a	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia					Ali told the Hashimite:
470	48	48	a	1	عَلِيْ	ʿalii	alii		Ali					So Ali went back,
435	44	44	c	1	وَلِكُيَ	walikuya	walikuya							it came to curse me,
436	44	44	c	2	كُنِلِنِ	kunilini	kunilini							
456	46	46	c	1	تُصَلِيْپُ	tuṣalı̄pu	tusalipu		tusalipo					We have already prayed there --
457	46	46	c	2	زَامَانِ	zāmāni	zamani							
437	44	44	d	1	نِيَ	niya	niya		nia					planting evil intentions in me.
438	44	44	d	2	مْبُڤُ	mbuvu	mbuvu		mbovu					
439	44	44	d	3	كُنِتِيَا	kunitiyā	kunitiya							
471	48	48	a	2	هَپُ	hapu	hapu		hapo					
472	48	48	a	3	كَرُدِ	karudi	karudi							
440	45	45	a	1	بَعْدَ	baʿda	bada		baada					After these [things] were over,
441	45	45	a	2	هَيُ	hayu	hayu		hayo					
442	45	45	a	3	كُكُمَ	kukuma	kukuma		kukoma					
458	46	46	d	1	خِيْرِ	khı̄ri	hiri		heri					you might as well go back home.
459	46	46	d	2	اُكَيْرُدِيَا	ukayrudiyā	ukayrudiya		ukairudiya					
443	45	45	b	1	كُتُوَا	kutuwā	kutuwa		kutoa					andFatima had calmed down,
444	45	45	b	2	كْوَاكِى	kwākii	kwakii		kwake					
445	45	45	b	3	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
446	45	45	c	1	اَلِيْػِنْرَا	alı̄kʲinrā	alichinra		alichenda					[Ali] was going [to the mosque], and stopped,
447	45	45	c	2	كِسِمَ	kisima	kisima		kisimama			Because a devil (see 46b), disguised as a human being, wanted to speak to him -- the disguise makes it easier for them to lead people astray.  This devil, who has already upset Fatima, and is now trying to deceive Ali, is probably disguised as a pious and inoffensive old man ( see \\Swa{abu} in 51c.		
448	45	45	c	3	مَ	ma	ma		~					
460	47	47	a	1	سِيِوُ	siyiwu	siyiwu		si yeo			lit. "it is not today that we were waiting".  Similarly, in the English of Northern Ireland, when two people meet for the first time in a number of years, one may say to the other: "It's not the day [today] nor yesterday we saw each other".		We we sitting for ages
461	47	47	a	2	تُكِتِزِيِ	tukitiziyi	tukitiziyi		tuketizie					
449	45	45	d	1	سِكُ	siku	siku							[because] Friday had come.
450	45	45	d	2	يَجُمَ	yajuma	yajuma		ya juma			= \\Sw{Ijumaa}.  The Friday prayers are the most important of the week.		
451	45	45	d	3	اِكِيَا	ikiyā	ikiya							
481	49	49	b	1	يِوُ	yiwu	yiwu		yeo					What is the matter today, Ali?
452	46	46	a	1	اَكِسِمَمَ	akisimama	akisimama							When he stopped on the road
482	49	49	b	2	عَلِيْ	ʿalii	alii		Ali					
473	48	48	b	1	اُكَتِكَ	ukatika	ukatika		u katika					muttering to himself.
474	48	48	b	2	كُرَادِادِ	kurādiādi	kuradiadi	kurādīdi	kuradidi			He is saying things like: \\Swa{a! nimechelewa!}, \\E{how did I let myself be late?}		
462	47	47	b	1	حُكُغُجَ	ḥukughuja	hukughuja		hukungoja					waiting for you to come.
463	47	47	b	2	وِوِ	wiwi	wiwi		wewe					
464	47	47	b	3	اُيِ	uyi	uyi		uye					
483	49	49	b	3	اُنَنِ	unani	unani		una-ni					
341	34	34	b	1	اُسُ	usu	usu		uso			\\q{with a sharp and stern look}.		
594	60	60	c	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima					
465	47	47	c	1	لِغُجِ	lighuji	lighuji		lingoje					Wait for next [Friday] to come --
466	47	47	c	2	لِغِيْنِ	lighı̄ni	lighini		lingine					
467	47	47	c	3	لِيْيِ	lı̄yi	liyi		liye					
475	48	48	c	1	اُمُوْنِ	umūni	umuni		umuone					Muhammad saw him
468	47	47	d	1	يِوُ	yiwu	yiwu		yeo					today you had no intention [of coming to pray].
469	47	47	d	2	حُكُعَظِمِيْيَا	ḥukuʿaẓimı̄yā	hukuadhimiya					The devil taunts Ali by saying that if he had really wanted to come to the prayers he would have made sure he was in plenty of time.		
476	48	48	c	2	مُحَمَّدِ	muḥammadi	muhammadi		Muhamadi					
490	50	50	a	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima					
477	48	48	d	1	نْيُمْبَانِ	nyumbāni	nyumbani							and went into the house to him.
478	48	48	d	2	كِمْغِلِيَا	kimghiliyā	kimghiliya		kimngiliya					
484	49	49	c	1	حُكُيَ	ḥukuya	hukuya							You did not come to the mosque -- 
2834	288	282	b	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza					
480	49	49	a	2	اَمِيْنِ	amı̄ni	amini		Amini					
485	49	49	c	2	مْسِكِيْتِنِ	msikı̄tini	msikitini							
486	49	49	d	1	لِپِ	lipi	lipi							
487	49	49	d	2	لِلُوْ	liluu	liluu		lilokuzidiya					what was it that prevented you?
488	49	49	d	3	كُزِدِيْيَا	kuzidı̄yā	kuzidiya		~			\\Swa{-zidia} refers to something out of the ordinary happening, which is "too much for you" (\\Swa{-zidi}, \\E{increase}), and therefore overwhelms you or prevents you from doing something.  See also 328d.		
497	50	50	d	2	كُصَلِ	kuṣali	kusali							
500	51	51	a	2	نِجُمَ	nijuma	nijuma		ni juma					
491	50	50	b	1	يِوُ	yiwu	yiwu		yeo					Today I did not manage [to attend] Friday [prayers].
492	50	50	b	2	سِكُوَاحِ	sikuwāḥi	sikuwahi							
501	51	51	a	3	لَپِيْلِ	lapı̄li	lapili		la pili					
494	50	50	c	1	كِلِغَنَ	kilighana	kilighana		kilingana					As I drew near the well, those who were at prayers [had left the mosque] and were entering [their homes].
495	50	50	c	2	نَكِسِمَ	nakisima	nakisima		na kisima			Every mosque has a well for ablutions.  But in the early days of Islam, when these events are supposed to take place, the mosques did not have a well -- these were introduced later.  So this is an example of a contemporary situation being projected back in time.		
496	50	50	d	1	وِنْيِ	winyi	winyi		wenye					
498	50	50	d	3	هُغِيَا	hughiyā	hughiya		hungiya			The obvious translation is: "the congregation was already going in", but being late would not have prevented Ali going in -- being late for prayers is not a sin -- even though he might have been ashamed to be even a few minutes late.  We are probably to understand that Ali, misled by the devil, thought the prayers were completely over, i.e. \\Swa{wenye kusali hutoka}, \\E{those who had been praying were already coming out}.  \\Swa{hungia} may have been used instead of \\Swa{hutoka} because of the rhyming requirements -- in Sh.Yahya's view, there is often shoddy composition in ballads because the composers are not the best poets, and remain anonymous.		
503	51	51	b	2	كِرَا	kirā	kira		kenda					
499	51	51	a	1	حَتَ	ḥata	hata							So, the second Friday
504	51	51	b	3	اَوَالِيْ	awālii	awalii		awali			lit. "first".		
506	51	51	c	2	اَسُتَجَمَلِيْ	asutajamalii	asutajamalii		asotajamali			lit. "who was not used to doing good deeds".		
502	51	51	b	1	عَلِيْ	ʿalii	alii		Ali					Ali set off early,
508	51	51	d	2	كُمْوَمْبِيَا	kumwambiyā	kumwambiya							
505	51	51	c	1	اَبُ	abu	abu					\\Swa{abu}, \\E{father} shows that the devil has disguised himself as a pious old man.  		but the wicked devil
507	51	51	d	1	هُمْلِرَّا	humlirrā	humlirra		humlinda					was waiting to talk to him.
535	54	54	d	1	مْكِ	mki	mki		mke					his wife spoke to him.
509	52	52	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia					The devil said to him:
510	52	52	a	2	شِيْطَانِ	shı̄ṭāni	shitani		shetani					
536	54	54	d	2	وَكِ	waki	waki		wake					
537	54	54	d	3	كَمْوَامْبِيَا	kamwāmbiyā	kamwambiya							
511	52	52	b	1	عَلِيْ	ʿalii	alii		Ali					Ali, what can I say?
512	52	52	b	2	نِكْوَامبِيِيْنِ	nikwāmbiı̄ni	nikwambiyini		nikwambie-ni			This expresses a scornful rebuke.		
565	57	57	c	2	زِوُ	ziwu	ziwu		zeo			Ali means that he set out in good time, so his lateness is inexplicable.  Am. \\Swa{zeo} is from a Bantu root, whereas Mv. \\Swa{wakati} is from an Arabic root.  Compare Muyaka: \\Swa{njeo hizi kutavunda}, \\E{this era will come to an end}.		[But] the time [I set out] was not late,
513	52	52	c	1	لَبُدَا	labudā	labuda							Perhaps, your home there,
514	52	52	c	2	هُكُ	huku	huku							
515	52	52	c	3	نْيُمْبَانِ	nyumbāni	nyumbani							
553	56	56	c	1	مِمِ	mimi	mimi							When I got to the road
538	55	55	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza					Fatima asked him:
516	52	52	d	1	كُتُكَ	kutuka	kutuka		kutoka					it is difficult for you to leave it.
3525	358	352	b	2	يَكِمْشُكَ	yakimshuka	yakimshuka							
342	34	34	b	2	اُكَلِى	ukalii	ukalii		u kali					
708	72	71	c	1	اَكَيْتُوَا	akaytuwā	akaytuwa		akaitoa					then he acted quickly
517	52	52	d	2	هُكُوِمِيَا	hukuwimiyā	hukuwimiya		hukuemeya			The devil criticises Ali again, as he did in 47d, this time saying he was late for the prayers because he did not really want to leave the comfort of his home.  This taunt is \\Swa{kali}, \\E{biting, cutting}, because the devil is insinuating that Ali is succumbing to temporal blandishments, and should force himself to think of more spiritual things.		
539	55	55	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
518	53	53	a	1	نَيِوُ	nayiwu	nayiwu		na yeo					You had better go home today too,
519	53	53	a	2	خِيْرِ	khı̄ri	hiri		heri					
520	53	53	a	3	اُرُوْدِ	urūdi	urudi							
554	56	56	c	2	كِكُمَ	kikuma	kikuma		kikoma					
555	56	56	c	3	دِيَنِ	diyani	diyani		ndiani	*				
521	53	53	b	1	كْوَانِ	kwāni	kwani							because this [behaviour] is on purpose -- 
522	53	53	b	2	حِيْزُ	ḥı̄zu	hizu		hizo					
523	53	53	b	3	نِكَصِدِ	nikaṣidi	nikasidi		ni kasidi			That is, Ali's lateness was not an accident, but was deliberate.  This too is a cutting taunt, and gains force from the fact that this is the second time that Ali has (according to the devil) missed prayers -- it begins to look as though he is making a habit of it.		
540	55	55	b	1	لَبْدَا	labdā	labda							Perhaps it is still early?
524	53	53	c	1	اُكُمُ	ukumu	ukumu		ukomo			lit. "end". \\Swa{ukomo ni ...}, \\E{it is getting to the stage where ...}.		it has ended up with Muhammad
525	53	53	c	2	نِمُحَمَّدِ	nimuḥammadi	nimuhammadi		ni Muhamadi					
541	55	55	b	2	كُكَلِ	kukali	kukali							
542	55	55	b	3	مَپِمَ	mapima	mapima		mapema			Fatima is surprised that Ali has come back so soon after leaving, and supposes that it was not yet time for the prayers.		
526	53	53	d	1	يِوُ	yiwu	yiwu		yeo					being annoyed with you today.
527	53	53	d	2	مِكُوُظِكِيَا	mikuwuẓikiyā	mikuwudhikiya		mekuudhikiya					
528	54	54	a	1	عَلِيْ	ʿalii	alii		Ali					Ali was annoyed,
529	54	54	a	2	اَكَوُظِيْكَ	akawuẓı̄ka	akawudhika		akaudhika					
530	54	54	b	1	كُرُدِ	kurudi	kurudi		karudi	*				and went back [home] without really wanting to.
531	54	54	b	2	اَسِيُتَكَ	asiyutaka	asiyutaka		asiyotaka					
566	57	57	c	3	سِأَخِيْرِ	siakhı̄ri	siahiri		si aheri					
543	55	55	c	1	حُنِيْنَ	ḥunı̄na	hunina		hunena					You said you were going to Friday [prayers],
532	54	54	c	1	حَتَ	ḥata	hata							And when he came into the house
533	54	54	c	2	نْيُبَنِ	nyubani	nyubani		nyumbani					
534	54	54	c	3	كِفِكَ	kifika	kifika							
544	55	55	c	2	وِنْدِ	windi	windi		wende					
545	55	55	c	3	جُمَ	juma	juma							
556	56	56	d	1	وَنْيِ	wanyi	wanyi		wenye	*				the people who were at prayers were going into [their homes].
557	56	56	d	2	كُصَلِ	kuṣali	kusali							
546	55	55	d	1	وِوِ	wiwi	wiwi		wewe					but you cannot have arrived yet [at the mosque].
547	55	55	d	2	هُيَسِكِلِيَا	huyasikiliyā	huyasikiliya					= \\Swa{-fika}.		
558	56	56	d	3	هُغِيَا	hughiyā	hughiya		hungiya					
548	56	56	a	1	عَلِيْ	ʿalii	alii		Ali					Ali spoke
549	56	56	a	2	اَكَبَئِيْنِ	akabaı̄ni	akabaini							
572	58	58	b	1	هَيُ	hayu	hayu		hayo					did not accept that.
550	56	56	b	1	كَبَ	kaba	kaba		kamba					and said: What do you mean, early?
551	56	56	b	2	مَپِمَ	mapima	mapima		mapema					
552	56	56	b	3	يَنِيْنِ	yanı̄ni	yanini		ya nini			lit: "early of what", which expresses indignation: "how can it be early?"  See also the note to 109d.		
573	58	58	b	2	اَسِيَقُبَلِ	asiyaqubali	asiyaqubali		asiyakubali					
567	57	57	d	1	وَوُ	wawu	wawu		wao					even if they had already [started] praying.
568	57	57	d	2	وَغَئِصَلِيَ	waghaiṣaliya	waghaisaliya		wangaisaliya					
559	57	57	a	1	تِنَا	tinā	tina		tena					Also, I have received word
560	57	57	a	2	نِپِتِ	nipiti	nipiti		nipete					
561	57	57	a	3	خَبَارِ	khabāri	habari							
562	57	57	b	1	اَمِوُظِكَ	amiwuẓika	amiwudhika		ameudhika					that the Bringer of Good Tidings is annoyed with me.
563	57	57	b	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
577	58	58	d	2	اُمِزُنَمْبِيَا	umizunambiyā	umizunambiya		umezonambiya					
574	58	58	c	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia					She told him: They are not true,
575	58	58	c	2	سِكْوِلِ	sikwili	sikwili		si kweli					
569	58	58	a	1	كْوَنْدَ	kwanda	kwanda							At first the daughter of the Prophet
570	58	58	a	2	بِنْتِ	binti	binti							
571	58	58	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli					
582	59	59	b	2	سِتَ	sita	sita							
585	59	59	c	2	نَحَرَاكَ	naḥarāka	naharaka		na haraka					
576	58	58	d	1	حَيُ	ḥayu	hayu		hayo					these [things] you have told me.
587	59	59	d	2	نَبِيَا	nabiyā	nabiya		Nabiya					
581	59	59	b	1	سَعَ	saʿa	saa							the sixth hour had [just] arrived.
578	59	59	a	1	وِوِ	wiwi	wiwi		wewe					When you left here
579	59	59	a	2	حَپَ	ḥapa	hapa							
378	38	38	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima			\\q{}Fatima was silent}.		
2838	288	282	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari					
2840	289	283	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya		kamwambia					
794	82	80	a	2	يَابُ	yābu	yabu		yambo					
580	59	59	a	3	اُكِتُكَا	ukitukā	ukituka		ukitoka					
583	59	59	b	3	اِمِفِكَ	imifika	imifika		imefika			Fatima suspects there is more to this than meets the eye.		
584	59	59	c	1	اَمِكُوَا	amikuwā	amikuwa		amekuwa					Was he in a hurry
589	60	60	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
586	59	59	d	1	يَكُصَلِيْشَ	yakuṣalı̄sha	yakusalisha		ya kusalisha			That is, did the Prophet for some reason start the prayers so early that Ali still missed them?		to lead the prayers, the Prophet?
591	60	60	b	2	حِيُ	ḥiyu	hiyu		hiyo					
588	60	60	a	1	نَبَدَءِ	nabadai	nabadai		na baadaye					And after Fatima
592	60	60	b	3	كَلِمَ	kalima	kalima							
590	60	60	b	1	كُتِدَا	kutidā	kutida		kutenda					had made this comment,
593	60	60	c	1	وَمْسِكِيْيَ	wamsikı̄ya	wamsikiya		wamsikia			The use of the \\Swa{-a-} tense here emphasises the simultaneity of Fatima's finishing talking and the Prophet's \\Swa{hodi} ("May I come in" -- the equivalent of a knock on the door in the West).		they heard the Hashimite
640	64	64	d	2	سِيَزَاغَلِيَا	siyazāghaliyā	siyazaghaliya		siyazangaliya					
2841	289	283	a	2	مَتَمْكُ	matamku	matamku		matamko					
623	63	63	b	2	بَشِيْرِا	bashı̄riā	bashiria	bashīrī	Bashiri					
595	60	60	d	1	حُدِ	ḥudi	hudi		hodi					asking them if he could come in.
597	60	60	d	3	جِيَا	jiyā	jiya		~					
598	61	61	a	1	تُمْوَا	tumwā	tumwa		Tumwa					When the Prophet came inside
599	61	61	a	2	كِغِيَ	kighiya	kighiya		kingia					
601	61	61	a	4	نْرَانِ	nrāni	nrani		ndani					
658	65	66	d	1	سَاسَ	sāsa	sasa							He has gone around now looking to [trap] you.
624	63	63	c	1	وَيُوَا	wayuwā	wayuwa		wayua					you know I have no impudence
602	61	61	b	1	عَلِيْ	ʿalii	alii		Ali					Ali was [sitting] on a chair,
603	61	61	b	2	اُپُ	upu	upu		upo					
604	61	61	b	3	كِتِيْنِ	kitı̄ni	kitini							
625	63	63	c	2	سِنَا	sinā	sina							
379	38	38	b	1	اَكَمْتَ	akamta	akamta		akamba	*				
626	63	63	c	3	جَوُرِ	jawuri	jawuri		jauri					
605	61	61	c	1	ڠُوْ	guu	guu		nguo					still wearing his good clothes.
606	61	61	c	2	زِلِيْ	zilii	zilii		zili					
607	61	61	c	3	مُوِلِنِ	muwilini	muwilini					lit. "[his] clothes were on [his] body".  Ali is wearing the equivalent of "Sunday best" (see also 64d). The Prophet is amazed because Ali has obviously dressed in preparation for going to the prayers, but never showed up.		
608	61	61	d	1	مْتُمِ	mtumi	mtumi		Mtume					The Prophet looked at him [in surprise].
609	61	61	d	2	كِمْوَاغَلِيَا	kimwāghaliyā	kimwaghaliya		kimwangaliya					
651	65	66	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia					The Hashimite told him:
652	65	66	a	2	حَشِيْمُ	ḥashı̄mu	hashimu		Hashimu			A passage seems to be missing here, where Ali tells the Prophet about his encounters with the devil.  See note to 50b.		
610	62	62	a	1	اَكَتَمْكَا	akatamkā	akatamka							The Beloved of God spoke:
611	62	62	a	2	حَبِبُ	ḥabibu	habibu		Habibu					
641	65	65	a	1	حَتَى	ḥatay	hatay		hata					Even Fatima, Beloved of God,
627	63	63	d	1	زَا	zā	za							to show to the Almighty.
628	63	63	d	2	كُمُوُنْيَّ	kumuwunı̄ya	kumuwuniya	kumuwunyya	kumuonya					
612	62	62	b	1	عَلِيْ	ʿalii	alii		Ali					Ali, son of Abu Talib,
613	62	62	b	2	بُنْ	bun	bun							
614	62	62	b	3	طَلِبُ	ṭalibu	talibu		Talibu					
629	63	63	d	3	جَلِيَا	jaliyā	jaliya		Jaliya			In other words, he does not mean to offend God.		
615	62	62	c	1	نَيِوْ	nayiw	nayiu		na yeo					and today do you have a reason
616	62	62	c	2	نِنَ	nina	nina		una	*				
617	62	62	c	3	صِبَبُ	ṣibabu	sibabu		sababu	*				
618	62	62	d	1	جُمَ	juma	juma							for not coming to Friday [prayers]?
619	62	62	d	2	يَكُتُئِلِيْيَا	yakutuilı̄yā	yakutuiliya		ya kutoiliya					
642	65	65	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
643	65	65	a	3	حَبِبُ	ḥabibu	habibu		Habibu					
620	63	63	a	1	عَلِيْ	ʿalii	alii		Ali					Ali spoke:
621	63	63	a	2	اَكَفَصِْرِ	akafaṣiri	akafasiri							
630	64	64	a	1	تِنَا	tinā	tina		tena					And today I was nervous [about being late],
631	64	64	a	2	يِوُ	yiwu	yiwu		yeo					
632	64	64	a	3	نِنَا	ninā	nina							
633	64	64	a	4	مَتِ	mati	mati							
644	65	65	b	1	يِوُ	yiwu	yiwu		yeo					was amazed today:
634	64	64	b	1	نِمِتُكَ	nimituka	nimituka		nimetoka					[so] I left [the house] on time,
635	64	64	b	2	كْوَ	kwa	kwa							
636	64	64	b	3	وَقَتِ	waqati	waqati		wakati					
645	65	65	b	2	اَمِتَعَجَبُ	amitaʿajabu	amitaajabu		ametaajabu					
380	38	38	b	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima					
384	38	38	d	2	نَبِيَا	nabiyā	nabiya		Nabiya			\\q{let me explain it to you, Prophet}.		
775	79	78	b	3	مْرُنْغُ	mrunghu	mrunghu		mrongo					
851	87	85	d	2	اَكِزُنْڠُكِيَا	akizungukiyā	akizungukiya							
637	64	64	c	1	نِرُدِشِوْزِ	nirudishiwzi	nirudishiuzi		nirudishizwe	*				but I was quickly made to come back --
638	64	64	c	2	مَتِةِ	matiẗi	matiti							
639	64	64	d	1	غُوْ	ghuu	ghuu		nguo					I haven't even attended to my clothes yet.
659	65	66	d	2	اَمِكُوْزِغِيَا	amikūzighiyā	amikuzighiya		amekuzengeya			The Arabic script is ambiguous as to whether the verb is \\Swa{-zingia}, \\E{go about}, or \\Swa{-zengea}, \\E{look for}.		
646	65	65	c	1	اَمِپَرَا	amiparā	amipara		amepanda					has he led the prayers [early],
647	65	65	c	2	مِحِرَابُ	miḥirābu	mihirabu					Ali is repeating Fatima's comment in 59cd, but (perhaps because of his confusion) mixes up two things: \\Swa{-panda mimbari} is when the imam goes up the minaret to call the people to prayers, and \\Swa{-ngia mihirabu} is when the imam goes into the mosque to lead the prayers, with the people standing behind him.  Note that the key word of Fatima's comment, \\Swa{mapema}, \\E{early}, is omitted.		
653	65	66	b	1	حُيُ	ḥuyu	huyu		huyo					this is not a human being --
654	65	66	b	2	سِمْوَانَ	simwāna	simwana		si mwana-adamu					
648	65	65	d	1	اِيُ	iyu	iyu		yeo					she was telling me just now in the inner [rooms]
649	65	65	d	2	نْرَانِ	nrāni	nrani		ndani					
650	65	65	d	3	هُنَمْبِيَا	hunambiyā	hunambiya							
655	65	66	b	3	اَدَمُ	adamu	adamu		~					
668	67	67	c	3	نِلَپِلِ	nilapili	nilapili		ni la pili					
2842	289	283	b	1	نِسَلَامَ	nisalāma	nisalama		ni salama					
657	65	66	c	2	فَهَمُ	fahamu	fahamu							
669	67	67	d	1	نَلَتَتُ	nalatatu	nalatatu		na la tatu					and he will come for a third.
663	67	67	b	1	كْوَمْبَ	kwamba	kwamba							saying: You know, that's true!
664	67	67	b	2	وَيُوَا	wayuwā	wayuwa		wayua					
660	67	67	a	1	عَلِيْ	ʿalii	alii		Ali					Ali spoke
662	67	67	a	3	قَوْلِيْ	qawlii	qaulii		qauli					
665	67	67	b	3	نِكْوِلِ	nikwili	nikwili		ni kweli					
666	67	67	c	1	حِلِ	ḥili	hili							This is the second Friday [he has been here],
667	67	67	c	2	جُمَ	juma	juma							
672	68	68	a	2	سَ	sa	sa		sasa					Now, Muhammad,
673	68	68	a	3	سَا	sā	sa		~					
670	67	67	d	2	اَتَكُيَا	atakuyā	atakuya							
674	68	68	a	4	مُحَمَدِ	muḥamadi	muhamadi		Muhamadi					
676	68	68	b	2	عَهَدِ	ʿahadi	ahadi							
671	68	68	a	1	نَمِ	nami	nami							
678	68	68	c	2	تَمْرُدِ	tamrudi	tamrudi							
675	68	68	b	1	نِمْئِپِكَ	nimipika	nimipika		nimepeka					I have made a promise
680	68	68	d	2	زَا	zā	za							
2843	289	283	b	2	نِتُكَكُ	nitukaku	nitukaku		nitokako					
679	68	68	d	1	مْبِيْ	mbii	mbii		mbee					in front of all the people.
709	72	71	c	2	مَتِيْتِ	matı̄ti	matiti							
681	68	68	d	3	جَفِرِ	jafiri	jafiri							
682	68	68	d	4	پِيَا	piyā	piya							
683	69	69	a	1	نِػَغَلِيَ	nikʲaghaliya	nichaghaliya		nichangalia					Indeed, when I consider [things, I realise that]
684	69	69	a	2	حَقِيْكَ	ḥaqı̄ka	haqika		hakika					
737	75	74	c	1	اَسَا	asā	asa							Who are you trying to fool?
738	75	74	c	2	هُمْتِزَ	humtiza	humtiza		humteza					
685	69	69	b	1	اُنَ	una	una							he had something [in mind] that he wanted [to achieve].
686	69	69	b	2	يَبُ	yabu	yabu		yambo					
687	69	69	b	3	وَلِتَكَ	walitaka	walitaka							
739	75	74	c	3	نْيَاَنِ	nyaani	nyaani		nyani					
710	72	71	d	1	هَپُ	hapu	hapu		hapo					
688	69	69	c	1	نَيِ	nayi	nayi		naye					And when he remembers me [in future]
689	69	69	c	2	اَتَنِكُمْبُكَ	atanikumbuka	atanikumbuka							
711	72	71	d	2	كَيَنْدَامَ	kayandāma	kayandama							and headed along the road.
712	72	71	d	3	نْدِيَا	ndiyā	ndiya							
690	69	69	d	1	سِكُزُتِ	sikuzuti	sikuzuti		siku zote					he will cry every day.
691	69	69	d	2	اَكِلِيَا	akiliyā	akiliya					In English we must reverse the \\Swa{-ta-} and \\Swa{-ki-} tenses.  Ali is determined to teach the devil a lesson he will not forget.		
692	70	70	a	1	عَلِيْ	ʿalii	alii		Ali					Ali waited
693	70	70	a	2	اَكَصُبِرِ	akaṣubiri	akasubiri							
727	74	73	c	1	سِيْ	sii	sii		sisi	*				[But] we have already come out of Friday [prayers] --
728	74	73	c	2	جُمَعْ	jumaʿ	juma							
713	73	72	a	1	اُمُوْنِ	umūni	umuni		umuone					He saw the devil,
694	70	70	b	1	حَتَ	ḥata	hata							until Friday came round again,
695	70	70	b	2	جُمَعْ	jumaʿ	juma							
696	70	70	b	3	لِكَجِرِا	likajiriā	likajiria	likajirī	likajiri					
697	70	70	c	1	كِنِرَّا	kinirrā	kinirra		kenenda					and [sure enough] the person who had deceived him went
698	70	70	c	2	مْوِنْيِ	mwinyi	mwinyi		mwenye					
699	70	70	c	3	كُمُوْغُرِ	kumūghuri	kumughuri							
729	74	73	c	3	تُمِشُكَا	tumishukā	tumishuka		tumeshuka					
714	73	72	a	2	اِبْلِيْسِ	iblı̄si	iblisi		ibilisi					
2844	289	283	c	1	سِيُوِ	siyuwi	siyuwi		siyui					
2845	289	283	c	2	مْبِيِ	mbiyi	mbiyi		mbee					
2846	289	283	c	3	نِنْرَاكُ	ninrāku	ninraku		nendako					
2847	289	283	d	1	اَيُوَوُ	ayuwawu	ayuwawu		ayuao					
936	96	94	c	2	جَمِعِ	jamiʿi	jamii							
700	70	70	d	1	هُمْلِرَّا	humlirrā	humlirra		humlinda					and waited to talk to him.
701	70	70	d	2	كُمْوَمْبِيَا	kumwambiyā	kumwambiya							
715	73	72	b	1	اُيَوُ	uyawu	uyawu		uyao					who was coming along well-dressed,
716	73	72	b	2	مِئِلَبِيْسِ	miilabı̄si	miilabisi					There is also the connotation here of being well-disguised.		
702	72	71	a	1	عَلِيْ	ʿalii	alii		Ali					Ali went carefully
703	72	71	a	2	كَيْرَا	kayrā	kayra		kaenda					
704	72	71	a	3	تِيْتِ	tı̄ti	titi					The meaning of \\Swa{titi} is uncertain.  It may be related to \\Swa{matiti}, \\E{fast}, (71c), or the vowels signs in the Arabic may have been miswritten (\\AS{تِيْتِ} instead of \\AS{تِيَتِ})and we should read \\Swa{tiyati}, \\E{ground}, i.e. "he went along".  Sh. Yahya's view was that the general meaning seemed to be \\Swa{taratibu-taratibu}, \\E{carefully}.		
705	72	71	b	1	هَتَى	hatay	hatay		hata					until the [proper] moment came,
706	72	71	b	2	اُكَيَ	ukaya	ukaya							
707	72	71	b	3	وَقَتِ	waqati	waqati		wakati					
730	74	73	d	1	مْمُيَ	mmuya	mmuya		mmoya					not one [person] is [still] praying there.
731	74	73	d	2	هَكُسَلِيَا	hakusaliyā	hakusaliya							
717	73	72	c	1	نَيِ	nayi	nayi		naye					and he went quickly
718	73	72	c	2	اَكِرَا	akirā	akira		akenda					
719	73	72	c	3	اُپِسِ	upisi	upisi		upesi					
720	73	72	d	1	اِلِ	ili	ili							to get near to him.
721	73	72	d	2	كُمْكُرُبِيْيَا	kumkurubı̄yā	kumkurubiya							
723	74	73	a	2	كَتَمْكَا	katamkā	katamka							
756	77	76	b	2	مْكُنُنِ	mkununi	mkununi		mkononi					
753	77	76	a	1	اَكِيْزِنْغَ	akı̄zingha	akizingha		akizinga					As the devil dodged,
732	75	74	a	1	وِوِ	wiwi	wiwi		wewe					You don't leave home [early enough]
724	74	73	b	1	عَلِيْ	ʿalii	alii		Ali					Ali, you are in a hurry.
725	74	73	b	2	اُنَ	una	una							
726	74	73	b	3	هَرَاكَ	harāka	haraka							
733	75	74	a	2	هُتُكِ	hutuki	hutuki		hutoki					
734	75	74	a	3	نْيُبَنِ	nyubani	nyubani		nyumbani					
751	76	75	d	1	ڠُوُ	guwu	guwu		guu					[The devil] took to his heels.
740	75	74	d	1	تُوْنِ	tūni	tuni		tuone					We have seen [you put] this world before [the next].
735	75	74	b	1	لَكُيَ	lakuya	lakuya		la kuya			We understand \\Swa{jambo}: "as regards this matter of coming to the mosque".		to come to the mosque.
736	75	74	b	2	مْسِكِتِنِ	msikitini	msikitini							
746	76	75	b	1	اُوْرُنْغُ	ūrunghu	urunghu		urongo					Your lying is over.
747	76	75	b	2	وَكُ	waku	waku		wako					
748	76	75	b	3	هُكُمَ	hukuma	hukuma		hukoma					
741	75	74	d	2	مْبِيْ	mbii	mbii		mbee					
742	75	74	d	3	دُنِيَا	duniyā	duniya					The meaning of this line is unclear.		
752	76	75	d	2	لِكَمْپُتِيَا	likamputiyā	likamputiya		likampoteya			lit. \\q{the foot was lost to him}.  The devil realises the game is up, and takes off.		
743	76	75	a	1	عَلِيْ	ʿalii	alii		Ali					Ali uttered these words:
744	76	75	a	2	كِيْتَ	kı̄ta	kita		keta					
745	76	75	a	3	كَلِيْمَ	kalı̄ma	kalima							
749	76	75	c	1	يِوُ	yiwu	yiwu		yeo					Today you will see what's what.
750	76	75	c	2	اُتَنِفَهَمُ	utanifahamu	utanifahamu					lit. \\q{you will recognise me}.  Ali is going to teach the devil a lesson -- see note to 69d.		
758	77	76	c	2	مْسِكِتِنِ	msikitini	msikitini							
2848	289	283	d	2	نِجَلِيَا	nijaliyā	nijaliya		ni Jaliya					
755	77	76	b	1	مِمْتِيَ	mimtiya	mimtiya		memtia					[Ali] grabbed him by the arm 
760	77	76	d	2	كُكِمْبِيَا	kukimbiyā	kukimbiya							
757	77	76	c	1	تْوِنِرِ	twiniri	twiniri		twenende					[and said:] Let us go to the mosque --
762	78	77	a	2	نَيِ	nayi	nayi		naye					
2850	290	284	a	2	اَمِيْنِ	amı̄ni	amini		Amini					
763	78	77	a	3	شَيْطَانِ	shayṭāni	shaytani		shaitani					
765	78	77	b	2	مْسِكِيْتِنِ	msikı̄tini	msikitini							
761	78	77	a	1	كِنْرَا	kinrā	kinra		kenda					He took the devil
764	78	77	b	1	مْپَكَ	mpaka	mpaka							right up to the mosque.
822	85	83	a	1	اُمِشُهُدِ	umishuhudi	umishuhudi		umeshuhudi					You have seen your son-in-law,
793	82	80	a	1	كُلَ	kula	kula							You do every [wicked] thing.
766	78	77	c	1	كَفُزِيَ	kafuziya	kafuziya		kafuzia			\\Swa{-fuzia} is related to \\Swa{-fuliza}, \\E{continue without interruption, hurry to do something}, and implies that Ali went single-mindedly to the pillar, and nowhere else.		He went straight up to the pillar supporting the roof,
386	39	39	a	2	وَابِزِوِوُ	wābiziwiwu	wabiziwiwu		wambiziweo			\\q{leave off what you have said}.		
767	78	77	c	2	كِپِيَانِ	kipiyāni	kipiyani		kipiani					
795	82	80	a	3	هُلِوِتَ	huliwita	huliwita		huliweta			\\Swa{-weta} = \\Swa{-leta}.		
722	74	73	a	1	اِبْلِسِ	iblisi	iblisi		ibilisi					The devil spoke:
957	98	96	c	3	وَآلدِ	waãldi	waaldi		walidi	*				
991	102	100	a	3	مَنَانِ	manāni	manani		Manani					
1100	114	111	b	3	وَوِيْلِ	wawı̄li	wawili							
1078	112	109	a	2	حُنِشِيْكِيَنِ	ḥunishı̄kiyani	hunishikiyani		hunishikia-ni					
768	78	77	d	1	كِفُنُوَا	kifunuwā	kifunuwa		kifunua					lifted it up, and put [the devil underneath].
769	78	77	d	2	كِمْتِيْيَا	kimtı̄yā	kimtiya							
770	79	78	a	1	حَپَ	ḥapa	hapa							Then he set down the pillar
771	79	78	a	2	اَكَشُشَا	akashushā	akashusha							
772	79	78	a	3	مْوَنْڠُ	mwangu	mwangu		mwango					
823	85	83	a	2	مْكْوِوُ	mkwiwu	mkwiwu		mkwewo					
812	83	81	d	1	اَمْبَلُ	ambalu	ambalu		ambalo					which you could take pride in.
813	83	81	d	2	وَفُرَاحِيَا	wafurāḥiyā	wafurahiya					Ali means that if someone listens to their conscience, they feel unhappy after doing something bad; however, this unhappiness can be tempered by the knowledge that they have done a few good things in their time.  The devil feels not remorse to begin with, and even if he did, he has done absolutely nothing that he could feel happy about were he to listen to his conscience.		
773	79	78	b	1	اَكَبَ	akaba	akaba		akamba			The devil, presumably, \\Swa{akaangua kilio, akalia}, \\E{burst out wailing}, so Ali rebukes him as set out in this stanza and the next two, showing that his punishment is well-deserved.		and said: Your face [is that of] a liar.
774	79	78	b	2	اُسُوْ	usuu	usuu		uso					
796	82	80	b	1	هُوُنَ	huwuna	huwuna		huona					You think people are afraid of you.
797	82	80	b	2	وَتُ	watu	watu							
798	82	80	b	3	هُكُوْتَ	hukūta	hukuta							
776	79	78	c	1	ڠَاءَ	gaa	gaa		ngaa					If you do not [stop] doing wicked things,
777	79	78	c	2	هُتِرِّ	hutirri	hutirri		hutendi					
778	79	78	c	3	كِجُنْغُ	kijunghu	kijunghu		kijongo					
779	79	78	d	1	نَوِ	nawi	nawi		nawe					you will not enter Heaven.
780	79	78	d	2	مْبِغُ	mbighu	mbighu		mbingu					
781	79	78	d	3	اُكَغِيَا	ukaghiyā	ukaghiya		ukangiya					
782	81	79	a	1	مَبُ	mabu	mabu		mambo			\\Swa{mambo yako ya ajabu, mambo mabaya-mabaya}.		Your doings, devil,
783	81	79	a	2	يَكُ	yaku	yaku		yako					
784	81	79	a	3	شَيْطَانِ	shayṭāni	shaytani		shaitani					
799	82	80	c	1	هُوْنَ	hūna	huna		huna					You have no remorse,
800	82	80	c	2	لَيْتِ	layti	layti		laiti					
785	81	79	b	1	اَيَوِزَاوُ	ayawizāwu	ayawizawu		ayawezao					who is able to [equal them]?
786	81	79	b	2	نِنْيَّنِ	ninı̄yani	niniyani	ninyyani	ni nyani			i.e. it is almost pointless trying to persuade the devil to change its ways.		
801	82	80	c	3	كُوِتَ	kuwita	kuwita		kuweta					
787	81	79	c	1	وَلَا	walā	wala							In fact, there is nothing like [them] 
788	81	79	c	2	هَپَنَ	hapana	hapana							
789	81	79	c	3	كِفَنِ	kifani	kifani							
814	84	82	a	1	كَمْتُوَا	kamtuwā	kamtuwa		kamtoa					[Ali] took the devil our from under the pillar
802	82	80	d	1	نَوِ	nawi	nawi		nawe					and you think [yourself invincible].
790	81	79	d	1	كَتِكَ	katika	katika							in the whole of history.
791	81	79	d	2	دَهْرِ	dahri	dahri		dahari	*				
815	84	82	a	2	كِپِيَانِ	kipiyāni	kipiyani		kipiani			One or more stanzas may be missing here, in which the Prophet tells Ali to release the devil.		
803	82	80	d	2	اُكَزِڠَتِيْيَا	ukazigatı̄yā	ukazigatiya		ukazingatiya					
839	86	84	d	2	نِتْوَاي	nitwāı̄	nitway		nitwae					
804	83	81	a	1	اُمِئِفَنْيَّ	umiifanı̄ya	umiifaniya	umiifanyya	umeifanya					You have misled yourself,
805	83	81	a	2	نَغُوْرِ	naghūri	naghuri		na ghuri			This line seems to have the same meaning as \\Swa{umejighuri}.		
842	87	85	a	2	هُيَنِيْنَ	huyanı̄na	huyanina		huyanena					
816	84	82	b	1	كَمْهُرَا	kamhurā	kamhura		kamhora			Ba. \\Swa{-hora} = \\Swa{-tupa}.		and threw him into the gutter.
817	84	82	b	2	مْكُوْرُنِ	mkūruni	mkuruni		mkondoni			\\Swa{mkondo} has the basic meaning of \\q{a place where water passes by}, hence when referring to the sea it means \\q{current}, and when referring, as here, to a town it means \\q{drain, gutter}.  It is commonly believed that spirits live in drains.  When a woman is possessed and speaks in tongues, and the woman's relatives succeed in appeasing the spirit, which then wants to leave, they take the woman to the \\Swa{mkondo} to throw the spirit out.  Ali therefore throws the devil into the drain to warn him to stay in his proper place.		
806	83	81	b	1	كْوَ	kwa	kwa							[and become] a great unbeliever.
807	83	81	b	2	مْكُوْ	mkuu	mkuu							
808	83	81	b	3	كَفِيْرِ	kafı̄ri	kafiri							
824	85	83	b	1	تَعَدِ	taʿadi	taadi							the aggression he displayed towards me.
809	83	81	c	1	هُنَلُوْ	hunaluu	hunaluu		hunalo					You do not have a single good [point]
811	83	81	c	3	لَخِيْرِ	lakhı̄ri	lahiri		la heri					
825	85	83	b	2	اَنِتِدِئوُا	anitidiwuā	anitidiwua	anitidiwū	anitendeo					
818	84	82	c	1	اَكَنِيْنَ	akanı̄na	akanina		akanena					The devil said:
819	84	82	c	2	شَيْطَانِ	shayṭāni	shaytani		shaitani					
820	84	82	d	1	اُمِشُهُدِ	umishuhudi	umishuhudi		umeshuhudi					Prophet, did you see that?
403	40	40	d	2	اُكَنِرِظِيْيَا	ukaniriẓı̄yā	ukaniridhiya					\\q{and today you will make me happy}.		
479	49	49	a	1	كُمُوُلِزَا	kumuwulizā	kumuwuliza		kamuuliza	*				The Trustworthy One asked him:
1163	120	117	c	2	اُجَڠِيْنَ	ujagı̄na	ujagina							
1136	118	115	a	1	كِسَ	kisa	kisa							
821	84	82	d	2	نَبِيَا	nabiyā	nabiya		Nabiya			The cowardly devil, making out that he is the injured party, now tries to get the Prophet to rebuke Ali for using undue force.  If a child is being bullied by someone, he may appeal to the nearest adult by saying \\Swa{umeshuhudia}, \\E{you saw him}, in order to get the adult to intervene.		
843	87	85	a	3	هَيُ	hayu	hayu		hayo					
830	86	84	a	1	اُسِيْوُنِ	usı̄wuni	usiwuni		usione					Don't think that this is the end [of the matter] --
831	86	84	a	2	رِيُ	riyu	riyu		ndiyo					
832	86	84	a	3	بَاسِ	bāsi	basi							
826	85	83	c	1	اُمِيَوُنَ	umiyawuna	umiyawuna		umeyaona					You have seen the [things] which [happened] today -- 
2851	290	284	b	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia					
828	85	83	d	1	يَلِنْدِنِ	yalindini	yalindini		yalindeni					watch out for the new [things that I will do next].
829	85	83	d	2	نَمَپِيَا	namapiyā	namapiya		na mapiya			The devil changes from pleading his innocence to making hollow threats: you haven't heard the last of this -- just you wait!  He is referring to the Swahili belief that people may sometimes behave unjustly towards you because they believe you do not have the power to retaliate.  He now warns that if Ali thought he would have everything his own way, he has another think coming.  However, his subsequent actions (see 85) suggest that his threats are just so many empty words -- he has been justly trounced, and he knows it.		
835	86	84	c	1	شَتِ	shati	shati							
836	86	84	c	2	نِتُوِ	nituwi	nituwi		nitoe					I must have revenge [on him],
833	86	84	b	1	اَلِيُ	aliyu	aliyu		aliyo					whoever humiliates me,
834	86	84	b	2	كُنِنُكُوْسِ	kuninukūsi	kuninukusi							
837	86	84	c	3	كِصَسِ	kiṣasi	kisasi							
838	86	84	d	1	كِسَ	kisa	kisa							and then I should get recompense as well.
840	86	84	d	3	نَدِيَا	nadiyā	nadiya		na diya			The devil demands absurd recompense for his disgrace.  \\Swa{kisasi}, \\E{execution}, is the Islamic penalty for murder.  The government executes the murderer on behalf of the family, so if they forgive him, the government remits the sentence of execution.  \\Swa{diya}, \\E{blood money}, is the Islamic penalty for manslaughter -- it may be paid in animals such as camels.  Neither penalty is applicable to the devil's case, and moreover he demands that both be paid for the one offence, which is impossible.		
845	87	85	b	2	ػِنِرَا	kʲinirā	chinira		chenenda					
841	87	85	a	1	نَيِ	nayi	nayi		naye					And while he was saying these [things],
846	87	85	b	3	مْبِيُ	mbiyu	mbiyu		mbiyo			The devil decides to get out while the going is good.  The complaint and threats were just a smokescreen for his escape.		
848	87	85	c	2	عَلِيْ	ʿalii	alii		Ali					
844	87	85	b	1	هُكُوْا	hukuwā	hukuwa	hukū	huku					he was running away at the same time.
849	87	85	c	3	هُيُ	huyu	huyu		huyo			\\Swa{Huyo!} is a cry of warning, and may mean \\q{Stop, thief!}.  Here the congregation of the mosque amuse themselves by shouting \\Swa{huyo! yuwaja!} at the fleeing devil, to see him turn and look back in consternation.		
847	87	85	c	1	ػَمْبِوَا	kʲambiwā	chambiwa							When he was told: Look out! Ali [is coming after you!]
850	87	85	d	1	هِرَا	hirā	hira		henda					he would turn [to see if it was true], and kept going.
937	96	94	c	3	مُفَهَمُ	mufahamu	mufahamu							
907	93	91	c	3	نَمَنِيْنُ	namanı̄nu	namaninu		na maneno					
911	94	92	a	1	نَا	nā	na							But whenever I came out [of the mosque]
912	94	92	a	2	مِمِ	mimi	mimi							
913	94	92	a	3	نِوَاتُكَ	niwātuka	niwatuka		niwatoka			< \\Swa{niwapo kutoka}.		
917	94	92	c	2	اُتَوُنْرُكَ	utawunruka	utawunruka		utaondoka					
995	102	100	c	2	كِسِمَ	kisima	kisima							
915	94	92	b	2	اَتَشُتُكَ	atashutuka	atashutuka					Note that the \\Swa{-ta-} tense formative, usually translated as a future tense, here has a meaning of repetition or continuity.  So also in the sentence: \\Swa{ukimkopesha, hatakulipa}, \\E{if you lend him [money], he does not pay you back}.  Other tense formatives also have a much wider meaning than that usually given in the grammar-books.  For example, \\Swa{-a-}, usually translated as a present tense, may emphasise simultaneity (see note to 60c), or refer to the immediate future, as in \\Swa{mi nashuka ...}, \\E{I'll get off [the bus] at ...}.		
878	90	88	c	1	عَلِيْ	ʿalii	alii		Ali					Ali said: Yes, of course!
852	88	86	a	1	اَوْنَپُ	awnapu	aunapu		aonapo					When he looked and did not see [Ali following him],
853	88	86	a	2	حَمُوْانِ	ḥamuwāni	hamuwani	ḥamūni	hamuoni					
879	90	88	c	2	كَنِيْنَ	kanı̄na	kanina		kanena					
854	88	86	b	1	اَكَنِيْنَ	akanı̄na	akanina		akanena					the devil said:
855	88	86	b	2	شَيْطَانِ	shayṭāni	shaytani		shaitani					
856	88	86	c	1	اَسَا	asā	asa							Hah! Who is Ali,
857	88	86	c	2	عَلِيْ	ʿalii	alii		Ali					
858	88	86	c	3	نِنْيَّنِ	ninı̄yani	niniyani	ninyyani	ni nyani					
896	92	90	c	1	اَغَلِيَ	aghaliya	aghaliya		angalia					[Ali replied:] Even though he was a master deceiver,
881	90	88	d	1	اُنَ	una	una							He could not resist coming!
859	88	86	d	1	هَتَّى	hattay	hattay		hata					that you should mention him to me?
3535	359	353	c	1	صُبِرِ	ṣubiri	subiri							
596	60	60	d	2	اَكِوَاپِ	akiwāpi	akiwapi		akiwapijiya			lit. \\q{calling out hodi to them}.		
2852	290	284	b	2	كْوِ	kwi	kwi		kwa	*				
1253	130	126	c	1	نَمِ	nami	nami							
860	88	86	d	2	مُكَنِتَيْيَا	mukanitayyā	mukanitayya		mukanitayiya			when he realises that the congregation is pretending and that Ali is not pursuing him, the devil claims that he is not afraid of Ali, and that there is no point in using Ali's name to frighten him.		
882	90	88	d	2	كُتُنِئِلِيْيَا	kutuniilı̄yā	kutuniiliya		kutoniiliya			lit. \\q{why + he has + to not come to me}, i.e. \\q{does he have [the capability] not to come to me?}.		
861	89	87	a	1	عَلِيْ	ʿalii	alii		Ali					On returning [home], Ali
862	89	87	a	2	كُرُدِ	kurudi	kurudi							
863	89	87	a	3	كْوَكِ	kwaki	kwaki		kwake					
897	92	90	c	2	سُلْطَنِ	sulṭani	sultani							
883	91	89	a	1	يِوُ	yiwu	yiwu		yeo					He tried his best today,
884	91	89	a	2	اُمِجِتَهِدِ	umijitahidi	umijitahidi		umejitahidi					
864	89	87	b	1	اَكِرَّا	akirrā	akirra		akenda					went to his wife.
865	89	87	b	2	كْوَ	kwa	kwa							
866	89	87	b	3	مكِ	mki	mki		mke					
867	89	87	b	4	وَكِ	waki	waki		wake					
868	89	87	c	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					Fatima said:
869	89	87	c	2	اَتَمْكِ	atamki	atamki		atamke					
870	89	87	d	1	حِلَ	ḥila	hila		hela					Well, tell me the news.
871	89	87	d	2	خَبَرِ	khabari	habari							
872	89	87	d	3	نَمْبِيَا	nambiyā	nambiya					Fatima knows that something has happened, because this time Ali did not return early.		
908	93	91	d	1	كْوَا	kwā	kwa							from a distance.
885	91	89	b	1	كْوَا	kwā	kwa							knowing that [on the other two days] I had gone back.
886	91	89	b	2	كُنِيُوَا	kuniyuwā	kuniyuwa							
873	90	88	a	1	يِوُ	yiwu	yiwu		yeo					Today you went along the road --
874	90	88	a	2	اُكِنْرَا	ukinrā	ukinra		ukenda					
875	90	88	a	3	نْدِيَانِ	ndiyāni	ndiyani		ndiani					
887	91	89	b	3	هُرُدِ	hurudi	hurudi							
876	90	88	b	1	حَكُوِپُ	ḥakuwipu	hakuwipu		hakuwepo					was the devil not there?
877	90	88	b	2	شَيْطَانِ	shayṭāni	shaytani		shaitani					
898	92	90	d	1	اِسِمُ	isimu	isimu							he wept [to see] his prestige taken away from him.
899	92	90	d	2	كُمُوُرُكِيَا	kumuwurukiyā	kumuwurukiya		kumuondokeya			lit. \\q{even though he cried, a king /  his name leaving him}. \\Swa{sultani} can be applied to someone who is brave, or a master of his craft.  \\Swa{isimu} here meands \\Q=q{good name, reputation}.  To make a proper translation in English, we have to separate the conditionality from the verb \\Swa{-lia} and attach it to \\Swa{sultani}.  Ali is saying that even though the devil was a past master at deluding people, he met his match today and was thoroughly beaten.		
888	91	89	c	1	تُپِنْبِنِ	tupim̱bini	tupimbini		tupembeni					We met and he spoke,
889	91	89	c	2	هُرَادِدِ	hurādidi	huradidi							
909	93	91	d	2	حُكُ	ḥuku	huku							
910	93	91	d	3	حُنِكَتِيَا	ḥunikatiyā	hunikatiya					These two lines are unclear.  \\Swa{kumkatia mtu maneno}, \\E{to abuse someone}.		
890	91	89	d	1	يَؤُرُنْڠُ	yaurungu	yaurungu		ya urongo					telling me his lies.
891	91	89	d	2	هُنَمْبِيَا	hunambiyā	hunambiya							
900	93	91	a	1	كَمْپِجِيَا	kampijiyā	kampijiya		kampijia					[Ali] gave her the whole story,
901	93	91	a	2	مْفَنُ	mfanu	mfanu		mfano					
892	92	90	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					Fatima said:
893	92	90	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
894	92	90	b	1	يِوُ	yiwu	yiwu		yeo					What did you do to him today?
895	92	90	b	2	اُمِمْتِرَّانِ	umimtirrāni	umimtirrani		umemtenda-ni					
902	93	91	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					and Fatima laughed a lot.
903	93	91	b	2	كَتِكَ	katika	katika		kateka					
904	93	91	b	3	مْنُ	mnu	mnu		mno					
919	94	92	d	2	مْوِتُنِ	mwituni	mwituni							
920	94	92	d	3	كِزِڠِيَا	kizigiyā	kizigiya		kizengeya			See 66d.		
916	94	92	c	1	اُسِمِ	usimi	usimi		useme					and the talking stopped
905	93	91	c	1	كَبَ	kaba	kaba		kamba					[Ali] said: He abused me
906	93	91	c	2	اُنَ	una	una							
914	94	92	b	1	ػِنِرَّا	kʲinirrā	chinirra		chenenda					and went [after him], he would tremble,
922	95	93	a	2	تَمَّتِ	tammati	tammati							
923	95	93	a	3	كَلِمُ	kalimu	kalimu					\\Swa{Maneno yametimia sasa}.  This could eiter mean \\q{this part of the story is over}, or \\q{the time for talking is over}.		
918	94	92	d	1	زَ	za	za					We are to understand \\Swa{pande}, \\E{sides, edges, direction}.  Compare \\Swa{uko za Ulaya huko}, \\E{he is in Europe somewhere}.		as he headed for the forest.
928	95	93	c	2	جَهَنَّمُ	jahannamu	jahannamu		jahanamu					
930	95	93	d	2	حُمْزِڠِيَا	ḥumzigiyā	humzigiya		humzengeya					
2853	290	284	b	3	خِيْرِنِ	khı̄rini	hirini		herini					
925	95	93	b	2	مِنْيِ	minyi	minyi		mwenye					
2854	290	284	c	1	عَلِيْ	ʿalii	alii		Ali					
2855	290	284	c	2	كَنِنَ	kanina	kanina		kanena					
2858	290	284	d	2	هُتُكَ	hutuka	hutuka		hutoka					
2859	290	284	d	3	نَبِيَا	nabiyā	nabiya		Nabiya					
2860	291	285	a	1	مْتُمِ	mtumi	mtumi		Mtume					
2862	291	285	b	1	زِوُ	ziwu	ziwu		zeo					
2863	291	285	b	2	زِمِأَخِيْرِكَ	zimiakhı̄rika	zimiahirika		zimeahirika					
924	95	93	b	1	اِنِرَا	inirā	inira		enenda					Go away, you braggart,
926	95	93	b	3	كَلِمُ	kalimu	kalimu							
927	95	93	c	1	اُلِوِوُ	uliwiwu	uliwiwu		uliweo					destined for Hell.
932	96	94	a	2	نِمِيَخِتِمُ	nimiyakhitimu	nimiyahitimu		nimeyahitimu					
929	95	93	d	1	اَجَلِ	ajali	ajali					\\Swa{ajali} means \\q{fate} in the sense of \\q{moment/manner of death}.  It is the end-point of one's \\Swa{umri}, \\E{allotted lifespan}.  Thus, you might say of someone who had a close shave with death, \\Swa{ajali yake hajafika}.  Hence \\Swa{-jaaliwa}, \\E{be predestined}, in the sense that all the main events of one's life have been written out in advance, especially the time, place and manner of death.  It can therefore be said, as here, that your \\Swa{ajali} seeks you out -- it is conceived of as an unavoidable, implacable force brought closer by every day of your life, and which it is pointless to try to escape (compare Muyaka).  It should be noted, though, that this idea of predestination, of everything having its allotted place and time, is seen as a consoling notion, and not necessarily one which leads to a fatalistic outlook on life, as so many Western authors on Islam imply.		His moment of death is coming looking for him.
934	96	94	b	2	نِنُظُمُ	ninuẓumu	ninudhumu							
931	96	94	a	1	حَيَ	ḥaya	haya							
933	96	94	b	1	نَمَغِيْنِ	namaghı̄ni	namaghini		na mangine					
935	96	94	c	1	كْوَا	kwā	kwa							
982	101	99	b	3	خَبَرِا	khabariā	habaria	khabarī	habari					
938	96	94	d	1	نِمِپِنْدَ	nimipinda	nimipinda		nimependa					
939	96	94	d	2	كُوَابِيَا	kuwābiyā	kuwabiya		kuwambiya					
2865	291	285	c	2	تِسِيَا	tisiyā	tisiya		tisia					
2866	291	285	c	3	حَقِيْكَ	ḥaqı̄ka	haqika		hakika					
940	97	95	a	1	فَهَمُنِ	fahamuni	fahamuni							
941	97	95	a	2	وَوُڠَوَانَ	wawugawāna	wawugawana		waungwana					
942	97	95	b	1	يِوُ	yiwu	yiwu		yeo					
943	97	95	b	2	نِوَاپِ	niwāpi	niwapi		niwape					
944	97	95	b	3	مَعَنَا	maʿanā	maana							
945	97	95	c	1	پِتِ	piti	piti		pete					
946	97	95	c	2	يَنْڠُ	yangu	yangu							
947	97	95	c	3	يَمَئِيْنَ	yamaı̄na	yamaina		ya maina					
967	99	97	d	1	وَ	wa	wa							
968	99	97	d	2	مَوْلَنَا	mawlanā	maulana		Maulana					
969	99	97	d	3	عَلِيَ	ʿaliya	aliya		Aliya					
948	97	95	d	1	حُجَ	ḥuja	huja							
949	97	95	d	2	نَلُوْ	naluu	naluu		naloiwatiya					
950	97	95	d	3	اِوَاتِيَا	iwātiyā	iwatiya		~					
951	98	96	a	1	نَلِئِوَاتَ	naliiwāta	naliiwata							
952	98	96	a	2	كَسِدِ	kasidi	kasidi							
999	103	101	a	1	تِنَ	tina	tina		tena					
1000	103	101	a	2	اَكِرَا	akirā	akira		akenda					
2867	291	285	d	1	نْيُبَنِ	nyubani	nyubani		nyumbani					
954	98	96	b	2	كُنِزِدِا	kunizidiā	kunizidia	kunizidī	kunizidi					
971	100	98	a	2	كِجَانَ	kijāna	kijana							
955	98	96	c	1	مَرَا	marā	mara							
956	98	96	c	2	حُوْزَاوَ	ḥūzāwa	huzawa		huzawa					
1001	103	101	a	3	كْوَ	kwa	kwa							
958	98	96	d	1	اَكَصِيْرِ	akaṣı̄ri	akasiri							
959	98	96	d	2	كُپُتِيْيَا	kuputı̄yā	kuputiya		kupoteya					
994	102	100	c	1	كُنَ	kuna	kuna							
972	100	98	b	1	نَبَبَكِ	nababaki	nababaki		na babake					
960	99	97	a	1	عَلِيْ	ʿalii	alii		Ali					
961	99	97	a	2	اَلُفِكِيْرِ	alufikı̄ri	alufikiri		alofikiri					
973	100	98	b	2	وَكَفَنَ	wakafana	wakafana							
962	99	97	b	1	نْرِيُ	nriyu	nriyu		ndiyo					
963	99	97	b	2	يُتِ	yuti	yuti		yote					
964	99	97	b	3	يَلُجِيْرِ	yalujı̄ri	yalujiri		yalojiri					
983	101	99	c	1	حَتَ	ḥata	hata							
984	101	99	c	2	مْمُيَ	mmuya	mmuya		mmoya					
974	100	98	c	1	كُلَ	kula	kula							
975	100	98	c	2	اَلٗكِمُوُنَ	alokimuwuna	alokimuwuna		alokimuona					
985	101	99	c	3	كْوَا	kwā	kwa							
986	101	99	c	4	سِرِ	siri	siri							
976	100	98	d	1	سُوْرَ	sūra	sura							
977	100	98	d	2	زَلِكِمْوِلِيَ	zalikimwiliya	zalikimwiliya		zalikimweleya					
978	101	99	a	1	وَتُ	watu	watu							
979	101	99	a	2	وَلِكِيْذُكُرِ	walikı̄dhukuri	walikidhukuri							
996	102	100	c	3	مِتُنِ	mituni	mituni		mwituni					
980	101	99	b	1	عَلِيْ	ʿalii	alii		Ali					
981	101	99	b	2	حَنَا	ḥanā	hana							
987	101	99	d	1	هَكُنَ	hakuna	hakuna							
988	101	99	d	2	اَلُمْوَمْبِيَا	alumwambiyā	alumwambiya		alomwambiya					
1002	103	101	a	4	شَكَ	shaka	shaka							
989	102	100	a	1	اَلِپُ	alipu	alipu		alipopenda					
997	102	100	d	1	اَكِرَا	akirā	akira		akenda					
998	102	100	d	2	كُتَنْڠَلِيَا	kutangaliyā	kutangaliya							
622	63	63	b	1	يَكْوِلِيَوِ	yakwiliyawi	yakwiliyawi		yakweleawe					To explain to you, Bringer of Good Tidings, 
1302	136	131	b	1	نَوِنْغِ	nawinghi	nawinghi		na wingi					
2868	291	285	d	2	سِيَرِجِيَا	siyarijiyā	siyarijiya		sijarejeya					
1436	149	144	b	3	وَاكُا	wākuā	wakua	wākū	wako					
992	102	100	b	1	كُمْوَامْبِيَا	kumwāmbiyā	kumwambiya							
993	102	100	b	2	مُعَيَانِ	muʿayāni	muayani							
1008	103	101	d	1	نِوَازِ	niwāzi	niwazi		ni wazi					
1009	103	101	d	2	اَكِتِيْرِيَ	akitı̄riya	akitiriya		akitendeya					
1006	103	101	c	1	نَيِ	nayi	nayi		naye					
1007	103	101	c	2	اَكَكِفِنِكَ	akakifinika	akakifinika							
1014	104	102	b	2	نَكُفِيْكِرِا	nakufı̄kiriā	nakufikiria	nakufīkirī	na kufikiri					
1003	103	101	b	1	مَاءِ	mai	mai							
1004	103	101	b	2	اَسِپُ	asipu	asipu		asipoyataka					
1005	103	101	b	3	يَتَكَ	yataka	yataka		~					
1016	104	102	c	2	مَكُفَرِا	makufariā	makufaria	makufarī	makufari					
1011	104	102	a	2	عَلِيْ	ʿalii	alii		Ali					
1010	104	102	a	1	حَپُ	ḥapu	hapu		hapo					
1012	104	102	a	3	حَيْدَرِ	ḥaydari	haydari		Haidari					
1013	104	102	b	1	كِوَزَا	kiwazā	kiwaza							
1018	104	102	d	2	كينِفُنُلِيَا	kı̄nifunuliyā	kinifunuliya							
1015	104	102	c	1	وَمِكُيَ	wamikuya	wamikuya		wamekuya					
1020	105	103	a	2	اَكَتَمْكَ	akatamka	akatamka							
1017	104	102	d	1	يِوُ	yiwu	yiwu		yeo					
1019	105	103	a	1	اَلِسَا	alisā	alisa							
1021	105	103	b	1	نَيِوُ	nayiwu	nayiwu		na yeo					
1022	105	103	b	2	تَكِفِنِكَ	takifinika	takifinika							
1050	108	106	b	1	تُتَشِنْرَانَ	tutashinrāna	tutashinrana		tutashindana					
1051	108	106	b	2	كَسِدِ	kasidi	kasidi							
1023	105	103	c	1	سِنَا	sinā	sina							
1024	105	103	c	2	بُدِ	budi	budi							
1025	105	103	c	3	تَمْشِيْكَ	tamshı̄ka	tamshika							
1026	105	103	d	1	مْتُوِ	mtuwi	mtuwi		mtuwe					
1027	105	103	d	2	اَمِيْزُوِيَ	amı̄zuwiya	amizuwiya		amezoeya					
1067	110	108	a	1	مَئِ	mai	mai							
1028	106	104	a	1	اَػُرُكَ	akʲuruka	achuruka		achondoka					
1029	106	104	a	2	حُكُ	ḥuku	huku							
1030	106	104	a	3	نْيُمَ	nyuma	nyuma							
1068	110	108	a	2	كَتِكَ	katika	katika		kateka					
1052	108	106	c	1	كْوَانْدَا	kwāndā	kwanda							
1031	106	104	b	1	جَعفَرِ	jaʿfari	jafari		Jaafari					
1032	106	104	b	2	اَكِڠِيْمَ	akigı̄ma	akigima		akegema					
1053	108	106	c	2	يِوُ	yiwu	yiwu		yeo					
1054	108	106	c	3	اَكِرُدِ	akirudi	akirudi							
1033	106	104	c	1	بَوُ	bawu	bawu		bao					
1034	106	104	c	2	اَكَلِسُكُمَ	akalisukuma	akalisukuma							
1035	106	104	d	1	مْبَلِ	mbali	mbali							
1036	106	104	d	2	اَكَلِمْبِيْرِيَ	akalimbı̄riya	akalimbiriya							
1069	110	108	a	3	كَتِكَ	katika	katika		kateka					
1055	108	106	d	1	حَلِدِرِكى	ḥalidirikı̄	halidiriki							
1056	108	106	d	2	اَكِيَا	akiyā	akiya							
1037	107	105	a	1	بُزِ	buzi	buzi		mbuzi					
1038	107	105	a	2	وَكَيَ	wakaya	wakaya							
1039	107	105	a	3	كْوَا	kwā	kwa							
1040	107	105	a	4	حِمَ	ḥima	hima							
1041	107	105	b	1	جَعَفَرِ	jaʿafari	jaafari		Jaafari					
1042	107	105	b	2	اُكُنْيُمَ	ukunyuma	ukunyuma		uko nyuma					
1043	107	105	c	1	كِسَ	kisa	kisa							
1044	107	105	c	2	نَأِ	nai	nai		naye					
1045	107	105	c	3	اَكِڠِيْمَ	akigı̄ma	akigima		akegema					
1057	109	107	a	1	كَمَ	kama	kama							
1046	107	105	d	1	عَلِيْ	ʿalii	alii		Ali					
1047	107	105	d	2	حُموَاغَلِيَا	ḥumwāghaliyā	humwaghaliya		humwangaliya					
1058	109	107	a	2	حُفَنْيَ	ḥufanya	hufanya							
1059	109	107	a	3	نِبِرِ	nibiri	nibiri							
1048	108	106	a	1	اَكِڠِمَ	akigima	akigima		akegema					
1049	108	106	a	2	كَرَادِدِ	karādidi	karadidi							
1085	112	109	d	1	نَيُوَا	nayuwā	nayuwa							
1086	112	109	d	2	كُكُسُمِيَا	kukusumiyā	kukusumiya		kukusomeya					
1060	109	107	b	1	اَيَپُ	ayapu	ayapu		ayapo					
1061	109	107	b	2	اَتَنِكِيْرِا	atanikı̄riā	atanikiria	atanikīrī	atanikiri					
1070	110	108	b	1	نَيِ	nayi	nayi		naye					
1071	110	108	b	2	عَلِيْ	ʿalii	alii		Ali					
1072	110	108	b	3	كَتُكَا	katukā	katuka		katoka					
1062	109	107	c	1	حِلِ	ḥili	hili							
1063	109	107	c	2	هُپَتَ	hupata	hupata							
1064	109	107	c	3	بَدَرِ	badari	badari		bandari					
1065	109	107	d	1	غُوْ	ghuu	ghuu		ngoo					
1066	109	107	d	2	اُتَغِنِيْكِيَا	utaghinı̄kiyā	utaghinikiya		utanginikiya					
1079	112	109	b	1	مِمِ	mimi	mimi							
1073	110	108	c	1	مْكُوْنُ	mkūnu	mkunu		mkono					
1074	110	108	c	2	اَكَمْشِيْكَ	akamshı̄ka	akamshika							
1080	112	109	b	2	سِكُػِ	sikukʲi	sikuchi							
656	65	66	c	1	نِشِيْطَانِ	nishı̄ṭāni	nishitani		ni sheitani					know that it is a devil.
2957	301	295	b	1	مْبُنَ	mbuna	mbuna		mbona					
1081	112	109	b	3	سِنَنِ	sinani	sinani		sina-ni					
1075	110	108	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari					
1076	110	108	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya							
1077	112	109	a	1	وِوِ	wiwi	wiwi		wewe					
1089	113	110	b	1	سِكُيَنِنَ	sikuyanina	sikuyanina		sikuyanena					
1090	113	110	b	2	كْوَا	kwā	kwa							
1087	113	110	a	1	حَيَا	ḥayā	haya							
1082	112	109	c	1	حَتَ	ḥata	hata							
1083	112	109	c	2	اُكِوَا	ukiwā	ukiwa							
1084	112	109	c	3	نَجِنِ	najini	najini		na jini					
1091	113	110	b	3	سِرِا	siriā	siria	sirī	siri					
1088	113	110	a	2	نِمِزُفَصِيْرِ	nimizufaṣı̄ri	nimizufasiri		nimezofasiri					
1093	113	110	c	2	اِظْهَرِا	iẓhariā	idhharia	iẓharī	idhihari					
1095	113	110	d	2	تَكْوَامْبِيَا	takwāmbiyā	takwambiya							
1092	113	110	c	1	اُكِتَكَا	ukitakā	ukitaka							
1099	114	111	b	2	وُ	wu	wu		wao	*				
1094	113	110	d	1	نَزَءِدِ	nazaidi	nazaidi		na zaidi					
1097	114	111	a	2	كْوَمْبَلِ	kwambali	kwambali		kwa mbali					
1096	114	111	a	1	كَمْڤُتِيَ	kamvutiya	kamvutiya		kamvutia					
1102	114	111	c	2	كَڤُتَ	kavuta	kavuta							
1098	114	111	b	1	وَكَوَنَ	wakawana	wakawana							
1103	114	111	c	3	قَوْلِ	qawli	qauli							
1105	114	111	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya							
1101	114	111	c	1	كِسَ	kisa	kisa							
1104	114	111	d	1	جَعْفَرِ	jaʿfari	jafari		Jaafari					
2958	301	295	b	2	اُمِبَدِلِكَ	umibadilika	umibadilika		umebadilika					
2960	301	295	c	2	اُمِزُاُظِيْكَ	umizuuẓı̄ka	umizuudhika		umeziudhika					
1134	117	114	d	1	نَمَيُتُ	namayutu	namayutu		na mayuto					
1135	117	114	d	2	كُمْغِيَا	kumghiyā	kumghiya		kumngiya					
2962	301	295	d	2	نِكِكْوَنْغَلِيَ	nikikwanghaliya	nikikwanghaliya		nikikwangaliya					
2963	302	296	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
1110	115	112	b	3	نِنْيَنِ	ninyani	ninyani		ni nyani					
1152	119	116	c	1	كِجَانَ	kijāna	kijana							
1111	115	112	c	1	بَبَا	babā	baba							
1112	115	112	c	2	هَكُ	haku	haku		hako					
1113	115	112	c	3	دُنِيَانِ	duniyāni	duniyani		duniani					
1153	119	116	c	2	كَتَكَلَمُ	katakalamu	katakalamu							
1114	115	112	d	1	نْرِپُ	nripu	nripu		ndipo					
1115	115	112	d	2	اُكَنِوَنِيَا	ukaniwaniyā	ukaniwaniya							
1137	118	115	a	2	حَپُ	ḥapu	hapu		hapo					
1116	116	113	a	1	كَمُوُلِيْزَا	kamuwulı̄zā	kamuwuliza		kamuuliza					
1117	116	113	a	2	اُنَنِ	unani	unani		u nani					
1138	118	115	a	3	اَمْوَمْبِيِ	amwambiyi	amwambiyi		amwambie					
1118	116	113	b	1	وِوِ	wiwi	wiwi		wewe					
1119	116	113	b	2	بَبَكُ	babaku	babaku		babako					
1120	116	113	b	3	نِنْيَنِ	ninyani	ninyani		ni nyani					
1139	118	115	b	1	سِغَلِ	sighali	sighali		singali					
1121	116	113	c	1	كَبَ	kaba	kaba		kamba					
1122	116	113	c	2	نِپِةِ	nipiẗi	nipiti		ni pete					
1123	116	113	c	3	ػَنْدَانِ	kʲandāni	chandani							
1140	118	115	b	2	نِكُپِجِيَا	nikupijiyā	nikupijiya		nikupijia					
1124	116	113	d	1	عَلِيْ	ʿalii	alii		Ali					
1125	116	113	d	2	كَمْوَاغَلِيَا	kamwāghaliyā	kamwaghaliya		kamwangalia					
2965	302	296	b	1	وِوِ	wiwi	wiwi		wewe					
1126	117	114	a	1	پِتِ	piti	piti		pete					
1127	117	114	a	2	كْوَغَلِيَ	kwaghaliya	kwaghaliya		kwangalia					
1128	117	114	a	3	كْوَكِ	kwaki	kwaki		kwake					
2966	302	296	b	2	هِنِيْرِّ	hinı̄rri	hinirri		henendi					
1155	119	116	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya							
1141	118	115	c	1	اِنَ	ina	ina							
1129	117	114	b	1	كِسُمَ	kisuma	kisuma		kisoma					
1130	117	114	b	2	اِنَ	ina	ina							
1131	117	114	b	3	نِلَكِ	nilaki	nilaki		ni lake					
1142	118	115	c	2	لَكُوْ	lakuu	lakuu		lako					
2968	302	296	c	1	نِلُوْ	niluu	niluu		nilo					
1132	117	114	c	1	اَرُدِ	arudi	arudi							
1133	117	114	c	2	اَسِكِتِكِ	asikitiki	asikitiki		asikitike					
1144	118	115	d	1	بَبَا	babā	baba							
2969	302	296	c	2	نَلُ	nalu	nalu		nalo					
2973	302	296	d	2	نَوِ	nawi	nawi		nawe					
2976	303	297	a	2	حَسَنِ	ḥasani	hasani		Hasani					
2977	303	297	b	1	كَتُكَ	katuka	katuka		katoka					
1165	120	117	d	2	تَكِمْبِيَا	takimbiyā	takimbiya							
2978	303	297	b	2	كُلَ	kula	kula		kule					
2980	303	297	c	1	اَكِنْرَّا	akinrrā	akinrra		akenda					
1149	119	116	a	3	دَامُ	dāmu	damu							
1157	120	117	a	2	مْتُ	mtu	mtu							
677	68	68	c	1	شِيْطَانِ	shı̄ṭāni	shitani		sheitani					that I will get my own back on the devil,
1444	150	145	b	1	اَكِوُلِزْوَا	akiwulizwā	akiwulizwa		akiulizwa					
1531	158	153	d	1	اُكِتَكَ	ukitaka	ukitaka							
1151	119	116	b	2	سِكُكُفَهَمُ	sikukufahamu	sikukufahamu							
1159	120	117	b	1	كْوَانْدَ	kwānda	kwanda							
2982	303	297	c	3	اَمِينِ	amı̄ni	amini		Amini					
1161	120	117	b	3	اِنَ	ina	ina							
2985	304	298	a	1	حَسَنِ	ḥasani	hasani		Hasani					
2988	304	298	b	2	مْتُمِ	mtumi	mtumi		Mtume					
1170	121	118	b	1	اُكِسَا	ukisā	ukisa							
2992	304	298	d	1	بِبِيَنْغُ	bibiyanghu	bibiyanghu		bibi yangu					
3019	307	301	c	1	اُنِپِ	unipi	unipi		unipe					
3020	307	301	c	2	يَتَمْكِيْنِ	yatamkı̄ni	yatamkini		ya tamkini					
1167	121	118	a	2	نِپَا	nipā	nipa							
3022	307	301	d	2	اَمِزُوَمْبِيَا	amizuwambiyā	amizuwambiya		amezoambiya					
1169	121	118	a	4	يَنْڠُ	yangu	yangu							
3024	308	302	a	2	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni					
3026	308	302	b	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni					
1174	121	118	c	2	مَتُنْڠُ	matungu	matungu							
3028	308	302	c	2	مْوَمْتَكِيَنِ	mwamtakiyani	mwamtakiyani		mwamtakia-ni					
3029	308	302	d	1	مْبْوِنُ	mbwinu	mbwinu		mbwenu					
1180	122	119	b	2	سُرَا	surā	sura							
1179	122	119	b	1	نَمُيُوِا	namuyuwiā	namuyuwia							
3030	308	302	d	2	اَلِوُابُتِيَا	aliwuābutiyā	aliwuabutiya		aliwapoteya					
3031	309	303	a	1	كَمُوُلِيْزَ	kamuwulı̄za	kamuwuliza		kamuuliza					
3032	309	303	a	2	بَبَكِ	babaki	babaki		babake					
1187	122	119	d	3	كَمْوَمْبِيَا	kamwambiyā	kamwambiya							
1189	123	120	a	2	كِفَصِيْرِ	kifaṣı̄ri	kifasiri							
1185	122	119	d	1	اِنَ	ina	ina							
3034	309	303	b	2	نَنِ	nani	nani		hunena					
1190	123	120	b	1	مِمِ	mimi	mimi							
1254	130	126	c	2	هُوْكُ	hūku	huku							
1191	123	120	b	2	حِتْوَا	ḥitwā	hitwa							
3035	309	303	b	3	هُنِيْنَ	hunı̄na	hunina		pweke					
1218	125	122	d	1	كِسَ	kisa	kisa							
1193	123	120	c	1	وَ	wa	wa							
3037	309	303	c	1	ََكَبَ	aakaba	aakaba		akamba					
1220	125	122	d	3	نِتَكُيَا	nitakuyā	nitakuya							
1198	123	120	d	3	تِسِيَا	tisiyā	tisiya							
1200	124	121	a	2	مْبُزِ	mbuzi	mbuzi							
1201	124	121	a	3	مْوِتُوْنِ	mwitūni	mwituni							
1202	124	121	b	1	اُكَوَا	ukawā	ukawa							
1255	130	126	c	3	اَقْرَابَ	aqrāba	aqraba							
1207	124	121	c	3	مُيِيْنِ	muyı̄ni	muyini							
1209	124	121	d	2	كَمْوَامْبِيَا	kamwāmbiyā	kamwambiya							
1238	129	125	a	1	كَمْرُدِشَا	kamrudishā	kamrudisha							
1225	126	123	c	1	سَعَ	saʿa	saa							
1213	125	122	b	1	نِنَا	ninā	nina							
1227	126	123	c	3	اِكِفِيْكَ	ikifı̄ka	ikifika							
1228	126	123	d	1	بَبَا	babā	baba							
1229	126	123	d	2	تَكُوَاصِلِيَا	takuwāṣiliyā	takuwasiliya							
1230	128	124	a	1	اَكَمجِبُ	akamjibu	akamjibu							
1248	130	126	a	2	مْوَانَ	mwāna	mwana							
1249	130	126	a	3	وَ	wa	wa							
1240	129	125	b	1	نَاسِ	nāsi	nasi							
1241	129	125	b	2	هَيَنِنْدَا	hayanindā	hayaninda							
1158	120	117	a	3	حُمُوُنَ	ḥumuwuna	humuwuna		humona					
1199	124	121	a	1	وَتُوِ	watuwi	watuwi		watoe					
1203	124	121	b	2	تِنَ	tina	tina		tena					
1204	124	121	b	3	نْدِيَانِ	ndiyāni	ndiyani		ndiani					
1205	124	121	c	1	تْوِنِرِ	twiniri	twiniri		twenende					
1206	124	121	c	2	زِپُ	zipu	zipu		zipo					
1208	124	121	d	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1210	125	122	a	1	كَمْوَامْبِيَا	kamwāmbiyā	kamwambiya		kamwambia					
1211	125	122	a	2	نِرَا	nirā	nira		nenda					
1212	125	122	a	3	زَنْغُ	zanghu	zanghu		zangu					
1214	125	122	b	2	نَمْوَالِيْمُ	namwālı̄mu	namwalimu		na mwalimu					
1215	125	122	b	3	وَنْغُ	wanghu	wanghu		wangu					
1216	125	122	c	1	نِمُوَانڠِ	nimuwāngi	nimuwangi		nimuage					
1217	125	122	c	2	نَمَمَنْغُ	namamanghu	namamanghu		na mamangu					
1219	125	122	d	2	كِشُ	kishu	kishu		kesho					
1221	126	123	a	1	كِشُ	kishu	kishu		kesho					
1222	126	123	a	2	كُكِپَبَوُكَ	kukipabawuka	kukipabawuka		kukipambauka					
1223	126	123	b	1	نَمَپِيْمَ	namapı̄ma	namapima		na mapema					
1224	126	123	b	2	تَيْنُكَا	taynukā	taynuka		tainuka					
1226	126	123	c	2	مُيَ	muya	muya		moya					
1232	128	124	b	1	اُيَپُنْدِيَا	uyapundiyā	uyapundiya		uyapo					
1233	128	124	b	2	نِمْبِلِ	nimbili	nimbili		ndia					
1234	128	124	c	1	يَمَكَ	yamaka	yamaka		ya Maka					
1236	128	124	d	1	اُسِتَكِ	usitaki	usitaki		usitake					
1237	128	124	d	2	كُپُتِيَا	kuputiyā	kuputiya		kupoteya					
1239	129	125	a	2	تَمْكُ	tamku	tamku		tamko					
1247	130	126	a	1	نَيِ	nayi	nayi		naye					
3038	309	303	c	2	سِخِيْرِ	sikhı̄ri	sihiri		si heri					
3039	309	303	c	3	نِتُكِيْ	nitukii	nitukii		nitoke					
1250	130	126	a	4	نَصَبَ	naṣaba	nasaba							
1243	129	125	c	1	مُعَلِمُ	muʿalimu	mualimu							
3041	309	303	d	2	مِئِنِيْيَا	miinı̄yā	miiniya		meeneya					
3042	310	304	a	1	كُمِپَنَنَ	kumipanana	kumipanana		kumepanana					
1246	129	125	d	2	نِسَلِمِيْيَا	nisalimı̄yā	nisalimiya							
3047	310	304	c	1	اُمِكُيَ	umikuya	umikuya		umekuya					
3048	310	304	c	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1252	130	126	b	2	مَرَحَبَ	maraḥaba	marahaba							
1258	132	127	a	1	سَلَمُ	salamu	salamu							
3050	310	304	d	2	مَوُلَنَا	mawulanā	mawulana		Maulana					
3051	310	304	d	3	عَلِيْيَا	ʿalı̄yā	aliya		Aliya					
3052	311	305	a	1	حَپُ	ḥapu	hapu		hapo					
1257	130	126	d	2	نِسَلِمِيَا	nisalimiyā	nisalimiya							
3053	311	305	a	2	عَلِيْ	ʿalii	alii		Ali					
1262	132	127	b	2	نَا	nā	na							
1268	132	127	d	2	نَوَافَهَمِيْيَا	nawāfahamı̄yā	nawafahamiya							
3054	311	305	a	3	حَِْدَارِ	ḥaidāri	haidari		Haidari					
1264	132	127	c	1	سُرَا	surā	sura							
3055	311	305	b	1	نِنُ	ninu	ninu		neno					
3056	311	305	b	2	اَلِلُوْ	aliluu	aliluu		alilofasiri					
3061	311	305	d	1	مَمْبُوْ	mambuu	mambuu		mambo					
3062	311	305	d	2	يَكُتُمْوِلِيَا	yakutumwiliyā	yakutumwiliya		ya kutomweleya					
1273	133	128	b	2	كْوَا	kwā	kwa							
1269	133	128	a	1	نَاسِ	nāsi	nasi							
3063	312	306	a	1	كْوِنُ	kwinu	kwinu		kwenu					
3064	312	306	a	2	لَكُيَ	lakuya	lakuya		kikuya	*				
3065	312	306	a	3	مْڠِيْنِ	mgı̄ni	mgini		mgeni					
3066	312	306	b	1	هِلُ	hilu	hilu		hilo					
1303	136	131	b	2	وَ	wa	wa							
3067	312	306	b	2	هُكُوْظِيْيَنِ	hukūẓı̄yani	hukudhiyani		hukudhia-ni					
3069	312	306	c	2	اُتَمْوِكَ	utamwika	utamwika		utamweka					
1279	134	129	a	1	مُوْيِنِ	mūyini	muyini							
3070	312	306	c	3	نْرَانِ	nrāni	nrani		ndani					
3071	312	306	d	1	مُوِنِ	muwini	muwini		muini					
1333	139	134	a	2	مْوَالِيْمُ	mwālı̄mu	mwalimu							
1305	136	131	c	1	وَلَا	walā	wala							
3072	312	306	d	2	هَتُتِمْبِيَ	hatutimbiya	hatutimbiya		hatotembeya					
1283	134	129	b	2	كْوَا	kwā	kwa							
3073	313	307	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3076	313	307	b	2	سِمْوَانَ	simwāna	simwana		si mwana					
1286	134	129	c	1	كَمْپَ	kampa	kampa							
1287	134	129	c	2	خَبَرِ	khabari	habari							
3078	313	307	c	1	مُيُ	muyu	muyu		moyo					
1323	138	133	a	2	سِتَكِ	sitaki	sitaki							
3081	313	307	d	1	عَلِيْ	ʿalii	alii		Ali					
1290	134	129	d	2	هُيَسِكِلِيَا	huyasikiliyā	huyasikiliya							
1291	135	130	a	1	اَكِسَ	akisa	akisa							
1292	135	130	a	2	كُيَنُظُمُ	kuyanuẓumu	kuyanudhumu							
1309	136	131	d	2	كُكُزِوِلِيَا	kukuziwiliyā	kukuziwiliya							
1294	135	130	b	2	مُعَلِيْمُ	muʿalı̄mu	mualimu							
1297	135	130	c	3	حَمُ	ḥamu	hamu							
1324	138	133	b	1	كْوَانِ	kwāni	kwani							
1325	138	133	b	2	نَيُوَا	nayuwā	nayuwa							
1311	137	132	a	2	حِمُ	ḥimu	himu							
1312	137	132	a	3	كْوَا	kwā	kwa							
1316	137	132	b	3	ڠَانِ	gāni	gani							
1335	139	134	b	2	اَيَفَهَمُ	ayafahamu	ayafahamu							
1235	128	124	c	2	نِيَكُڤُلِ	niyakuvuli	niyakuvuli		ni ya kuvuli					
1300	136	131	a	1	وَنِتِيَ	wanitiya	wanitiya		wanitia					
1301	136	131	a	2	سِكِتِكُ	sikitiku	sikitiku		sikitiko					
1304	136	131	b	3	مَوُظِكُ	mawuẓiku	mawudhiku		maudhiko					
1306	136	131	c	2	نَهُكُ	nahuku	nahuku		na huko					
1307	136	131	c	3	وِنْرَاكُ	winrāku	winraku		wendako					
1308	136	131	d	1	سِوِزِ	siwizi	siwizi		siwezi					
1310	137	132	a	1	نِرَا	nirā	nira		nenda					
1313	137	132	a	4	وِنْدَانِ	windāni	windani		wendani					
1314	137	132	b	1	نَهُوْكُ	nahūku	nahuku		na huko 					
1315	137	132	b	2	اُحُلِ	uḥuli	uhuli		u hali	*				
1317	137	132	c	1	نَايِ	nāyi	nayi		naye					
1318	137	132	c	2	بَابَكُ	bābaku	babaku		babako					
1319	137	132	c	3	زَِاتَنِ	ziātani	ziatani	zītani	zitani					
1322	138	133	a	1	نَكُكُكِيْرَا	nakukukı̄rā	nakukukira		na kukukinda					
1326	138	133	b	3	نِحَكِيْ	niḥakii	nihakii		ni haki					
1327	138	133	c	1	نِرَاضِ	nirāḍi	niradhi		ni radhi					
1332	139	134	a	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia					
1334	139	134	b	1	مَمَكُ	mamaku	mamaku		mamako					
1344	140	135	b	2	نَمَمَكُ	namamaku	namamaku		na mamako					
1674	172	167	b	1	كَنِوُلِزَا	kaniwulizā	kaniwuliza		kaniuliza					
3082	313	307	d	2	كُمْوَاغَلِيَا	kumwāghaliyā	kumwaghaliya		kumwangaliya					
1749	179	174	c	3	هُفَصِيْرِ	hufaṣı̄ri	hufasiri							
3083	314	308	a	1	عَلِيْ	ʿalii	alii		Ali					
1328	138	133	c	2	اَلِفُ	alifu	alifu							
1329	138	133	c	3	لَكِ	laki	laki							
3084	314	308	a	2	حَپُ	ḥapu	hapu		hapo					
3085	314	308	a	3	كَسِيْمَ	kası̄ma	kasima		kasema					
3086	314	308	b	1	حِيْلَ	ḥı̄la	hila		hela					
3087	314	308	b	2	نْدُوْ	nduu	nduu		ndoo					
1336	139	134	c	1	كَمْجِبِشَا	kamjibishā	kamjibisha							
1337	139	134	c	2	كَلِيْمُ	kalı̄mu	kalimu							
1338	139	134	d	1	كُوَا	kuwā	kuwa							
1339	139	134	d	2	سِيَسِكِلِيَا	siyasikiliyā	siyasikiliya							
3088	314	308	b	3	فَطييْمَ	faṭı̄yma	fatima		Fatima					
1352	141	136	a	3	كَلِيْمَ	kalı̄ma	kalima							
3089	314	308	c	1	اكَيْنُكَ	ākaynuka	akaynuka		akainuka					
3092	314	308	d	1	مْكِوَاكِ	mkiwāki	mkiwaki		mke wake					
3093	314	308	d	2	كَمْوِنرِيَا	kamwinriyā	kamwinriya		kamwendeya					
3094	315	309	a	1	كَمُوُلِيْزَا	kamuwulı̄zā	kamuwuliza		kamuuliza					
3095	315	309	a	2	اُنَنِ	unani	unani		una-ni					
3096	315	309	b	1	بُنَ	buna	buna		mbona					
3097	315	309	b	2	اُنَقِصِيْرَانِ	unaqiṣı̄rāni	unaqisirani		una kisirani					
1350	141	136	a	1	اَكِسَ	akisa	akisa							
1355	141	136	b	3	كَئَنْدَمَ	kaandama	kaandama							
1357	141	136	c	2	اُنَ	una	una							
3098	315	309	c	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
1358	141	136	c	3	حَلِيْمَمَ	ḥalı̄mama	halimama							
3099	315	309	c	2	اَكَبَ	akaba	akaba		akamba					
3101	315	309	d	1	يَمَتُڠُ	yamatugu	yamatugu		ya matungu					
1359	141	136	d	1	كْوَا	kwā	kwa							
3104	316	310	a	2	تَمْكُ	tamku	tamku		tamko					
3105	316	310	b	1	هِيُ	hiyu	hiyu		hiyo					
3106	316	310	b	2	سِظَبِيَا	siẓabiyā	sidhabiya		si tabia					
3107	316	310	b	3	يَكُ	yaku	yaku		yako					
1364	142	137	a	3	كِبُ	kibu	kibu							
3109	316	310	c	2	سِكِجَانَ	sikijāna	sikijana		si kijana					
1365	142	137	b	1	كْوَ	kwa	kwa							
3110	316	310	c	3	ػَكُ	kʲaku	chaku		chako					
3112	316	310	d	2	هَيُ	hayu	hayu		hayo					
3114	317	311	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
1369	142	137	c	2	كَتَعَجَبُ	kataʿajabu	kataajabu							
1391	144	139	d	1	هَتَكِ	hataki	hataki							
3115	317	311	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
3116	317	311	b	1	سِئِيْلِ	siı̄li	siili		si ile					
3117	317	311	b	2	پِتِ	piti	piti		pete					
1372	143	138	a	1	كَمَ	kama	kama							
3119	317	311	c	1	يَلُوْغِيْيَ	yalūghı̄ya	yalughiya		yalongia					
3122	317	311	d	2	زِيَپُ	ziyapu	ziyapu		ziapo					
3124	318	312	a	1	عَلِيْ	ʿalii	alii		Ali					
3126	318	312	b	1	رِيُ	riyu	riyu		ndiyo					
3128	318	312	c	1	هُيِسِ	huyisi	huyisi		huisi					
1394	145	140	a	2	مَمَا	mamā	mama							
3129	318	312	c	2	وَغَلِوُظِكَ	waghaliwuẓika	waghaliwudhika		wangaliudhika					
3131	318	312	d	2	كْوِلِ	kwili	kwili		kweli					
1378	143	138	c	2	كَمَ	kama	kama							
1379	143	138	c	3	كْوَا	kwā	kwa							
1380	143	138	c	4	سِرِ	siri	siri							
3134	319	313	a	2	نِڠَكُوُظِ	nigakuwuẓi	nigakuwudhi		ningakuudhi					
3135	319	313	b	1	نْزُّ	nzzu	nzzu		nduyangu	*				
3137	319	313	b	3	وَتَ	wata	wata	ghayḍī	ghaidhi					
3139	319	313	c	1	مُيُ	muyu	muyu		moyo					
3140	319	313	c	2	وَنْغُ	wanghu	wanghu		wangu					
3141	319	313	c	3	اُوِ	uwi	uwi		uwe					
3143	319	313	d	1	نَوُتَكَلُ	nawutakalu	nawutakalu		na utakalo					
3145	320	314	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
1409	146	141	c	1	كِسَ	kisa	kisa							
3146	320	314	a	2	كِتَ	kita	kita		keta					
3147	320	314	a	3	قَوُلِ	qawuli	qawuli		qauli					
1411	146	141	c	3	مْوِتُنِ	mwituni	mwituni							
1400	145	140	c	2	اُنَ	una	una							
1401	145	140	c	3	مْبُوْزِ	mbūzi	mbuzi							
1425	148	143	b	1	كَمْشِيْكَ	kamshı̄ka	kamshika							
1403	145	140	d	1	وَوِلِ	wawili	wawili							
1320	137	132	d	1	نْدِيَ	ndiya	ndiya		ndiye					
1342	140	135	a	3	زَكُ	zaku	zaku		zaku					
1407	146	141	b	1	مِوَاتَنْڠَ	miwātanga	miwatanga		mewatanga					
1408	146	141	b	2	حَوَاوُنِ	ḥawāwuni	hawawuni		hawaoni					
1410	146	141	c	2	اَتُوْكَ	atūka	atuka		atoka					
1412	146	141	d	1	يُوَا	yuwā	yuwa		yua					
1413	146	141	d	2	نِكَلِلَنْدِيَا	nikalilandiyā	nikalilandiya		ni kali					
1418	147	142	c	1	زِتَكُتُكَ	zitakutuka	zitakutuka		zitakutoka					
1419	147	142	c	2	جَوُرِ	jawuri	jawuri		jauri					
1748	179	174	c	2	لَكُ	laku	laku		lako					
3149	320	314	b	2	سِيَكُ	siyaku	siyaku		si ya kubadali					
1406	146	141	a	2	صَافُوْنِ	ṣāfūni	safuni							
3150	320	314	b	3	بَدَالِ	badāli	badali		~					
3151	320	314	c	1	نَكَمَ	nakama	nakama		na kama					
3152	320	314	c	2	اُمِقُبَلِ	umiqubali	umiqubali		umekubali					
3154	320	314	d	2	نِمِكُوِلِيَا	nimikuwiliyā	nimikuwiliya		nimekueleya					
3155	321	315	a	1	وَكَكِتِ	wakakiti	wakakiti		wakaketi					
1416	147	142	b	1	اَكَمْپِجَ	akampija	akampija							
3158	321	315	b	1	پِنْيِ	pinyi	pinyi		penye					
3159	321	315	b	2	نَمْوَانِ	namwāni	namwani		na mwana	*				
3160	321	315	b	3	نْيُبَنِ	nyubani	nyubani		nyumbani					
1423	148	143	a	2	مَمَ	mama	mama							
1424	148	143	a	3	اسِكِيْرِ	āsikı̄ri	asikiri							
3161	321	315	c	1	نَوِ	nawi	nawi		nawe					
1427	148	143	c	1	اِكِوَا	ikiwā	ikiwa							
3162	321	315	c	2	نِرَاپُ	nirāpu	nirapu		nendapo					
3164	321	315	d	1	وَػِنْرَا	wakʲinrā	wachinra		wachenda					
3165	321	315	d	2	وُتِ	wuti	wuti		wote					
3166	321	315	d	3	پَمُيَ	pamuya	pamuya		pamoya					
3167	322	316	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari					Ja'far was a stranger [to war],
3168	322	316	a	2	نِمْڠِيْنِ	nimgı̄ni	nimgini		ni mgeni					
3171	322	316	c	1	مَحَلِ	maḥali	mahali							where there were 200 [opponents],
3172	322	316	c	2	پَمِيَاتِيْنِ	pamiyātı̄ni	pamiyatini		pa miyateni					
1441	149	144	d	2	كُمْتُكُلِيْيَا	kumtukulı̄yā	kumtukuliya							
1437	149	144	c	1	كِسَ	kisa	kisa							
1443	150	145	a	2	تِيْنِ	tı̄ni	tini							
1440	149	144	d	1	وَتَ	wata	wata							
3173	322	316	d	1	وَلْ	wal	wal		wala	*				he would not attack there.
3174	322	316	d	2	اَكِمْوَارُلِيَا	akimwāruliyā	akimwaruliya		akimwanduliya					
1509	156	151	c	1	اُتَنَمْبِيَا	utanambiyā	utanambiya							
3179	323	317	b	2	اَمِصِفِيْكَ	amiṣifı̄ka	amisifika		amesifika					
3181	323	317	c	2	مِيَ	miya	miya		mia					
3182	323	317	c	3	حَقِيْكَ	ḥaqı̄ka	haqika		hakika					
1491	154	149	d	1	مِمِ	mimi	mimi							
1474	153	148	b	1	وَتَكَ	wataka	wataka							
3184	323	317	d	2	سِكُيُوَا	sikuyuwā	sikuyuwa		si kuyuwa					
1475	153	148	b	2	خَبَارِ	khabāri	habari							
1476	153	148	b	3	ڠَنِ	gani	gani							
1452	151	146	a	3	اَجِبُ	ajibu	ajibu							
1454	151	146	b	2	حَتَعَدَبُ	ḥataʿadabu	hataadabu							
1493	154	149	d	3	كُكْوَمْبِيَا	kukwambiyā	kukwambiya							
1455	151	146	c	1	كِوَا	kiwā	kiwa							
1478	153	148	c	2	لُوْغَ	lūgha	lugha							
1479	153	148	c	3	ڠَنِ	gani	gani							
1458	151	146	d	1	نَمِ	nami	nami							
1461	152	147	a	1	نَتَكَ	nataka	nataka							
1463	152	147	a	3	خَبَرِ	khabari	habari							
1504	155	150	d	2	دُنِيَا	duniyā	duniya							
1464	152	147	b	1	حَبَا	ḥabā	haba							
1465	152	147	b	2	نِپَ	nipa	nipa							
1469	152	147	c	3	حَرِ	ḥari	hari							
1470	152	147	d	1	سُرَا	surā	sura							
1484	154	149	a	2	كِعَرَبُ	kiʿarabu	kiarabu							
1490	154	149	c	3	عَجَبُ	ʿajabu	ajabu							
1496	155	150	b	1	بَبَا	babā	baba							
1405	146	141	a	1	وَامِتُكَا	wāmitukā	wamituka		wametoka					
1450	151	146	a	1	هَپُ	hapu	hapu		hapo					
1451	151	146	a	2	مَمَكِ	mamaki	mamaki		mamke					
1453	151	146	b	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri					
1456	151	146	c	2	وِوِ	wiwi	wiwi		wewe					
1457	151	146	c	3	نِهَرَابُ	niharābu	niharabu		ni harabu					
1459	151	146	d	2	نِيُوَا	niyuwā	niyuwa		nayua	*				
1460	151	146	d	3	طِبِيَا	ṭibiyā	tibiya		tabiya	*				
1462	152	147	a	2	زَاكُ	zāku	zaku		zako					
1466	152	147	b	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1467	152	147	c	1	اُوْسُ	ūsu	usu		uso					
1468	152	147	c	2	اُسِمِمِ	usimimi	usimimi		usimeme					
1471	152	147	d	2	زِمِكُپُتِايَا	zimikuputiāyā	zimikuputiaya	zimikuputīyā	zimekupoteya					
1472	153	148	a	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1473	153	148	a	2	كَبَيِنِ	kabayini	kabayini		kabaini					
1477	153	148	c	1	نِكْوَامْبِيِ	nikwāmbiyi	nikwambiyi		nikwambie					
1480	153	148	d	1	كْوَاكُ	kwāku	kwaku		kwako					
1481	153	148	d	2	اِوِ	iwi	iwi		iwe					
1482	153	148	d	3	نِمْپِيَا	nimpiyā	nimpiya		ni mpiya					
1483	154	149	a	1	كِكْوَامْبِيَ	kikwāmbiya	kikwambiya		kikwambia					
1485	154	149	b	1	نَيُوَا	nayuwā	nayuwa		nayua					
1486	154	149	b	2	اُتَنِ	utani	utani		utanijibu					
1487	154	149	b	3	جِبُ	jibu	jibu		~					
1488	154	149	c	1	تِنَ	tina	tina		tena					
1489	154	149	c	2	نَوُنَ	nawuna	nawuna		naona					
1787	183	178	b	1	نِمٖػُوْكَ	nimekʲūka	nimechuka		nimechoka					
3188	324	318	b	1	اَلَپُكْوِنْرَ	alapukwinra	alapukwinra		alipokwenda	*				
1878	193	187	a	2	يَا	yā	ya							
3190	324	318	c	1	لَكِيْ	lakii	lakii		laki					
3191	324	318	c	2	مُيَ	muya	muya		moya					
3194	324	318	d	2	مْپْوِكِ	mpwiki	mpwiki		mpweke					
3195	324	318	d	3	مْمُيَا	mmuyā	mmuya		mmoya					
1500	155	150	c	2	نِنَا	ninā	nina							
1501	155	150	c	3	مِمْبَ	mimba	mimba							
3217	327	321	a	2	جِبْرِيْلِ	jibrı̄li	jibrili		Jiburili					
3218	327	321	b	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia					
3220	327	321	c	1	حُوِكِيْ	ḥuwikii	huwikii		huweke					
3223	327	321	d	1	اَكُسَلِامُ	akusaliāmu	akusaliamu	akusalīmu	akusalimu					
3224	327	321	d	2	جَلِيْيَا	jalı̄yā	jaliya		Jaliya					
1515	157	152	a	3	فَرِسِ	farisi	farisi							
3226	328	322	a	2	اَمِيْنِ	amı̄ni	amini		Amini					
3227	328	322	b	1	عَلِيْ	ʿalii	alii		Ali					
1516	157	152	b	1	وَلَا	walā	wala							
3228	328	322	b	2	تْوِنْدِ	twindi	twindi		twende					
3230	328	322	c	1	مْوَانَوُ	mwānawu	mwanawu		mwanawo					
3231	328	322	c	2	نِنَيَقِيْنِ	ninayaqı̄ni	ninayaqini		nina yaqini					
3232	328	322	d	1	هُيْفَرِقِ	huyfariqi	huyfariqi		kuifariki					
3237	329	323	b	1	اَسِئِمُهُلِ	asiimuhuli	asiimuhuli		asiyimuhuli					
3238	329	323	c	1	كَىْنُكَ	kaynuka	kaynuka		kainuka					
1520	157	152	c	2	وَاپِ	wāpi	wapi							
3239	329	323	c	2	نَرَسُوْلِ	narasūli	narasuli		na Rasuli					
1527	158	153	b	2	مْوِتُنِ	mwituni	mwituni							
3240	329	323	d	1	هَپُ	hapu	hapu		hapo					
3242	329	323	d	3	دِيَ	diya	diya		ndia					
3243	330	324	a	1	اَكپِتَ	akpita	akpita		akipita	*				
3244	330	324	a	2	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni					
1528	158	153	c	1	صِفَا	ṣifā	sifa							
3245	330	324	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3246	330	324	b	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini					
3247	330	324	c	1	اَمُوْ	amuu	amuu		amu					
1533	159	154	a	1	نِسِكِزَا	nisikizā	nisikiza							
1534	159	154	a	2	نَرَادِيْدِ	narādı̄di	naradidi							
1560	161	156	c	1	صِفَا	ṣifā	sifa							
1535	159	154	b	1	كِوَ	kiwa	kiwa							
3248	330	324	c	2	هُتُكَ	hutuka	hutuka		hutoka					
3249	330	324	c	3	حُسِيْنِ	ḥusı̄ni	husini		Huseni					
3250	330	324	d	1	اُيَوُ	uyawu	uyawu		uyao					
1563	161	156	c	4	مِتِمُ	mitimu	mitimu							
3253	331	325	a	2	اَلِپُ	alipu	alipu		alipo					
3255	331	325	b	1	نَحَسَنِ	naḥasani	nahasani		na Hasani					
1540	159	154	c	3	هَكِزِيْدِ	hakizı̄di	hakizidi							
1541	159	154	d	1	كَمَ	kama	kama							
3256	331	325	b	2	نَحُسِيْنِ	naḥusı̄ni	nahusini		na Huseni					
3258	331	325	c	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini					
1589	164	159	a	3	اَوَالِ	awāli	awali							
3259	331	325	d	1	بَبَنْغُ	babanghu	babanghu		babangu					
3261	332	326	a	1	اَمِئِنُكَا	amiinukā	amiinuka		ameinuka					
3263	332	326	b	1	اَمِپَرَا	amiparā	amipara		amepanda					
3265	332	326	c	1	حِلَ	ḥila	hila		hela					
3266	332	326	c	2	مْوَاغَلِيِيْنِ	mwāghaliı̄ni	mwaghaliyini		mwangalieni					
3267	332	326	d	1	يَمْبُ	yambu	yambu		yambo					
1548	160	155	b	3	زَا	zā	za							
3268	332	326	d	2	لِلُوْمْزِدِيَا	lilūmzidiyā	lilumzidiya		lilomzidiya					
3269	333	327	a	1	حَپُ	ḥapu	hapu		hapo					
1551	160	155	c	2	اُپَاءَانِ	upaāni	upaani							
3270	333	327	a	2	كِنِرَ	kinira	kinira		kenenda					
3271	333	327	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
1567	162	157	a	2	وَ	wa	wa							
3272	333	327	b	1	نَعَلِيْ	naʿalii	naalii		na Ali					
3273	333	327	b	2	حَيْدَارِ	ḥaydāri	haydari		Haidari					
1554	160	155	d	3	نَمْبِيَا	nambiyā	nambiya							
3274	333	327	c	1	اَكَمُوُنَ	akamuwuna	akamuwuna		akamuona					
3275	333	327	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari					
1556	161	156	a	2	اُفَهَمُ	ufahamu	ufahamu							
3276	333	327	d	1	حَپُ	ḥapu	hapu		hapo					
1557	161	156	b	1	اُوْنَ	ūna	una							
1558	161	156	b	2	تُنْدُ	tundu	tundu							
3277	333	327	d	2	بَبَكِ	babaki	babaki		babake					
3279	334	328	a	1	كَلِيَ	kaliya	kaliya		kalia					
1569	162	157	b	1	كِسَ	kisa	kisa							
1573	162	157	c	2	كِتَكَ	kitaka	kitaka							
1596	164	159	d	1	بِادِي	biādii	biadii							
1597	164	159	d	2	كِزِعِيْيَا	kiziʿı̄yā	kiziiya							
1575	162	157	d	1	هُوْنُ	hūnu	hunu							
1590	164	159	b	1	هِكِ	hiki	hiki							
1497	155	150	b	2	هُنَمْبِيَا	hunambiyā	hunambiya		hunambia					
1562	161	156	c	3	زَ	za	za		zimetimu					
1872	192	186	c	1	مَلِشُوْنِ	malishūni	malishuni		malishoni					
2011	206	200	d	1	هُكُ	huku	huku							
1582	163	158	c	1	نِپَ	nipa	nipa							
1583	163	158	c	2	جِنْسِ	jinsi	jinsi							
1591	164	159	b	2	ػَكَ	kʲaka	chaka							
3280	334	328	a	2	اَكِبَيْنِ	akibayni	akibayni		akibaini					
1585	163	158	d	1	هَتَا	hatā	hata							
3281	334	328	b	1	وِوِ	wiwi	wiwi		wewe					
1587	164	159	a	1	تَكُپَ	takupa	takupa							
1588	164	159	a	2	يَنْڠُ	yangu	yangu							
1606	165	160	c	3	مَهَلِ	mahali	mahali							
3282	334	328	b	2	موَانَڠُ	mwānagu	mwanagu		mwanangu					
1594	164	159	c	2	مَئِ	mai	mai							
3283	334	328	b	3	اُنَنِ	unani	unani		una-ni					
1609	165	160	d	3	زِنَدِيَ	zinadiya	zinadiya							
3284	334	328	c	1	اُپِيْوِ	upı̄wi	upiwi		upetwe					
1602	165	160	b	2	بَرَا	barā	bara							
1598	165	160	a	1	صَدِقِ	ṣadiqi	sadiqi							
1599	165	160	a	2	يَنْڠُ	yangu	yangu							
1600	165	160	a	3	قَوْلِ	qawli	qauli							
1603	165	160	b	3	هِيْلِ	hı̄li	hili							
1604	165	160	c	1	مَاءِ	mai	mai							
1605	165	160	c	2	هَكُوْنَ	hakūna	hakuna							
1611	166	161	a	2	كِوَزَا	kiwazā	kiwaza							
1607	165	160	d	1	حِرَا	ḥirā	hira							
1608	165	160	d	2	كِوَا	kiwā	kiwa							
1615	166	161	b	3	جَنِبُ	janibu	janibu							
1616	166	161	b	4	ڠَنِ	gani	gani							
1618	166	161	c	2	وَتُ	watu	watu							
1619	166	161	c	3	مْوِتُنِ	mwituni	mwituni							
3285	334	328	c	2	نَيَمْبُ	nayambu	nayambu		na yambo					
1646	169	164	b	1	هِكِ	hiki	hiki							
3289	334	328	d	3	نِ	ni	ni		ndia					
1620	166	161	d	1	وَتَتُ	watatu	watatu							
1622	166	161	d	3	نْدِيا	ndiyā	ndiya							
3291	335	329	a	1	اَكِسِكِيَ	akisikiya	akisikiya		akisikia					
3293	335	329	b	1	جَعْفَرِ	jaʿfari	jafari		Jaafari					
3298	335	329	d	1	مَتُ	matu	matu		mato					
1625	167	162	a	3	مْبَلِ	mbali	mbali							
3299	335	329	d	2	كَمْوَاغَلِيَ	kamwāghaliya	kamwaghaliya		kamwangaliya					
3301	336	330	a	2	اَمِيْنِ	amı̄ni	amini		Amini					
3302	336	330	b	1	اَكَبَ	akaba	akaba		akamba					
1665	171	166	a	2	كَلِيْمَ	kalı̄ma	kalima							
1628	167	162	c	1	مَرَا	marā	mara							
3304	336	330	b	3	يَسِيْنِ	yası̄ni	yasini		Ya Sini					
3305	336	330	c	1	اَكِيْكُمَ	akı̄kuma	akikuma		akikoma					
3306	336	330	c	2	كُبَيِيْنِ	kubayı̄ni	kubayini		kubaini					
3307	336	330	d	1	اَمِكْوِسَ	amikwisa	amikwisa		amekwisa					
3309	337	331	a	1	حَپُ	ḥapu	hapu		hapo					
1631	167	162	d	2	مَاءِ	mai	mai							
1632	167	162	d	3	كُنَمْبِيَا	kunambiyā	kunambiya							
1633	168	163	a	1	يَانَ	yāna	yana							
1634	168	163	a	2	كِڤُلِ	kivuli	kivuli							
1635	168	163	a	3	كَبِسَ	kabisa	kabisa							
3310	337	331	a	2	عَلِيْ	ʿalii	alii		Ali					
1636	168	163	b	1	هَتَ	hata	hata							
3311	337	331	a	3	حَيْدَارِ	ḥaydāri	haydari		Haidari					
3312	337	331	b	1	يُتِ	yuti	yuti		yote					
3313	337	331	b	2	اَسِيَفِكِيْرِا	asiyafikı̄riā	asiyafikiria	asiyafikirī	asiyafikiri					
1639	168	163	c	2	وَاكِتُسَا	wākitusā	wakitusa							
3315	337	331	c	2	بَاشِيْرِ	bāshı̄ri	bashiri		Bashiri					
3316	337	331	d	1	مَصَحَبَ	maṣaḥaba	masahaba		Masahaba					
1642	168	163	d	3	پِسِيَا	pisiyā	pisiya							
3318	338	332	a	1	كَوَامبِيَا	kawāmbiyā	kawambiya		kawambia					
1667	171	166	b	2	نْيُمَ	nyuma	nyuma							
3321	338	332	b	2	وَاكَيْنُكَ	wākaynuka	wakaynuka		wakainuka					
1643	169	164	a	1	كَمبَ	kamba	kamba							
3325	338	332	d	1	عَلِيْ	ʿalii	alii		Ali					
1645	169	164	a	3	مَتِتِ	matiti	matiti							
3327	339	333	a	1	اَلِپُ	alipu	alipu		alipokwisa					
3328	339	333	a	2	كْوِسَ	kwisa	kwisa		~					
3330	339	333	b	1	مْتُمِ	mtumi	mtumi		Mtumi					
1657	170	165	b	1	كُلَنْدَمَ	kulandama	kulandama							
3331	339	333	b	2	اَكَمُوِيْكَ	akamūı̄ka	akamuwika		akamuweka					
1668	171	166	c	1	وَاوِلِ	wāwili	wawili							
1669	171	166	c	2	وَاكَسِمَمَ	wākasimama	wakasimama							
1659	170	165	c	1	وَلَا	walā	wala							
3332	339	333	c	1	مَنِيْنُ	manı̄nu	maninu		maneno					
1663	170	165	d	2	حُتُسِكِلِيْيَا	ḥutusikilı̄yā	hutusikiliya							
1584	163	158	c	3	يَوِوِ	yawiwi	yawiwi		yaweo					
1610	166	161	a	1	حِنْرَا	ḥinrā	hinra		henda					
1612	166	161	a	3	مُويُنِ	mūyuni	muyuni		moyoni					
1613	166	161	b	1	نِيْ	nii	nii		ninende					
1614	166	161	b	2	نِدِ	nidi	nidi		~					
1617	166	161	c	1	كَوُاُنَ	kawuuna	kawuuna		kaona					
1621	166	161	d	2	وِنْدِمِ	windimi	windimi		wendeme					
2041	209	203	c	2	اِوَا	iwā	iwa							
1676	172	167	c	1	اَوْ	aw	au							
3334	339	333	d	1	عَلِيْ	ʿalii	alii		Ali					
3336	340	334	a	1	كَمْوَامْبِيَ	kamwāmbiya	kamwambiya		kamwambia					
1672	172	167	a	1	اَكِيَ	akiya	akiya							
3339	340	334	b	2	كْوَاكِ	kwāki	kwaki		kwake					
1689	173	168	d	1	هَيَپَسِ	hayapasi	hayapasi							
1686	173	168	c	1	كَمَ	kama	kama							
1678	172	167	d	1	خَطَرِ	khaṭari	hatari							
3340	340	334	b	3	رَابُكَا	rābukā	rabuka		Rabuka					
3342	340	334	c	2	هَنْغَالِ	hanghāli	hanghali		hangalikupoka					
3343	340	334	c	3	كُپُكَ	kupuka	kupuka		~					
3344	340	334	d	1	نَوِ	nawi	nawi		nawe					
1680	173	168	a	1	سِسِ	sisi	sisi							
1681	173	168	a	2	حَتُشِكِ	ḥatushiki	hatushiki							
3345	340	334	d	2	اُكِمْوَغَلِيَا	ukimwaghaliyā	ukimwaghaliya		ukimwangaliya					
3347	341	335	a	2	اَمَّا	ammā	amma		ama					
1690	173	168	d	2	كُتْوَامْبِيَا	kutwāmbiyā	kutwambiya							
3348	341	335	a	3	نِمْتُ	nimtu	nimtu		ni mtu					
1697	174	169	c	2	تُكُفَهَمُ	tukufahamu	tukufahamu							
3350	341	335	b	1	اَلُدُمُ	aludumu	aludumu		alodumu					
3352	341	335	c	1	اَسِپُكُوَا	asipukuwā	asipukuwa		asipokuwa					
1693	174	169	a	3	اَدَامُ	adāmu	adamu							
3353	341	335	c	2	مَنَّانِ	mannāni	mannani		Manani					
3354	341	335	d	1	نَوِوِ	nawiwi	nawiwi		na wewe					
3356	342	336	a	1	عَلِيْ	ʿalii	alii		Ali					
1700	174	169	d	3	طَبِيَا	ṭabiyā	tabiya							
1702	175	170	a	2	قَوْلِ	qawli	qauli							
1698	174	169	d	1	كْوَانْدَ	kwānda	kwanda							
1701	175	170	a	1	كَوَاجِبِشَ	kawājibisha	kawajibisha							
3357	342	336	a	2	سِنِرِ	siniri	siniri		senende					
3358	342	336	a	3	مْنُ	mnu	mnu		mno					
3359	342	336	b	1	مَبُ	mabu	mabu		mambo					
1705	175	170	b	3	رَسُوْلِ	rasūli	rasuli							
1732	178	173	a	2	هُمْجِبُ	humjibu	humjibu							
1706	175	170	c	1	كِوَا	kiwā	kiwa							
3361	342	336	b	3	مْفَنُ	mfanu	mfanu		mfano					
3364	342	336	c	3	مَنِيْنُ	manı̄nu	maninu		maneno					
3366	342	336	d	2	اِكَمْغِيْيَا	ikamghı̄yā	ikamghiya		ikamgiya					
3367	343	337	a	1	هَپُ	hapu	hapu		hapo					
3368	343	337	a	2	اَكِنْدَ	akinda	akinda		akenda					
3369	343	337	a	3	كُتُوَا	kutuwā	kutuwa		kutoa					
3370	343	337	b	1	زُبِيْرِ	zubı̄ri	zubiri		Zuberi					
1713	176	171	a	2	حُفَصِيْرِ	ḥufaṣı̄ri	hufasiri							
3371	343	337	b	2	كَمْوَمْكُوَا	kamwamkuwā	kamwamkuwa		kamwamkua					
3374	343	337	c	3	بَرُوَ	baruwa	baruwa		barua					
1714	176	171	b	1	حُمْوَتَ	ḥumwata	humwata							
3375	343	337	d	1	اُپَتِ	upati	upati		upate					
3376	343	337	d	2	كُنِپِكِيْيَا	kunipikı̄yā	kunipikiya		kunipekeya					
1750	179	174	d	1	اِنَ	ina	ina							
3377	344	338	a	1	هِنِ	hini	hini							This one is for his mother
1718	176	171	c	2	وِوِ	wiwi	wiwi							
3378	344	338	a	2	مُيَ	muya	muya		moya					
1736	178	173	c	1	مَمَ	mama	mama							
3380	344	338	a	4	مَمَكِ	mamaki	mamaki		mamake					
3381	344	338	b	1	نَهِيْنِ	nahı̄ni	nahini		na hini					and this one for his teacher,
1721	176	171	d	2	وَكَيَا	wakayā	wakaya							
1722	177	172	a	1	وَكِيَ	wakiya	wakiya							
1723	177	172	a	2	وَكَسِيْمَامَ	wakası̄māma	wakasimama							
1751	179	174	d	2	نِكَلِسِكِيْيَا	nikalisikı̄yā	nikalisikiya							
3383	344	338	b	3	وَاكِ	wāki	waki		wake					
1725	177	172	b	2	وَاكِنِتِيْزَامَ	wākinitı̄zāma	wakinitizama							
3386	344	338	c	3	سِتَمْكِ	sitamki	sitamki		sitamke					
3410	347	341	a	1	زُبِيْرِ	zubı̄ri	zubiri		Zuberi					
1738	178	173	d	1	كْوَا	kwā	kwa							
3411	347	341	a	2	كُتُكَ	kutuka	kutuka		kutoka					
3412	347	341	a	3	كْوَاكِ	kwāki	kwaki		kwake					
1728	177	172	d	1	وَاجِهِ	wājihi	wajihi							
3413	347	341	b	1	يِيِ	yiyi	yiyi		yeye					
3414	347	341	b	2	اَسُمِ	asumi	asumi		asome					
1752	180	175	a	1	اَكَتَمْكَ	akatamka	akatamka							
3415	347	341	b	3	مَمَكِ	mamaki	mamaki		mamake					
3416	347	341	c	1	اَكَتُكَ	akatuka	akatuka		akatoka					
3417	347	341	c	2	مْپْوِكِيَكِ	mpwikiyaki	mpwikiyaki		mpweke yake					
1753	180	175	a	2	زَوْجِ	zawji	zauji							
1745	179	174	b	2	جِيْوَا	jı̄wā	jiwa							
1762	180	175	d	3	نَمْبِيَ	nambiya	nambiya							
1754	180	175	b	1	مِمِ	mimi	mimi							
1670	171	166	d	1	مْمُيَ	mmuya	mmuya		mmoya					
1760	180	175	d	1	نَاءِنَ	naina	naina		na ina					
1761	180	175	d	2	لَكُ	laku	laku		lako					
1767	181	176	b	3	كَفَصِيْرِا	kafaṣı̄riā	kafasiria	kafaṣı̄rī	kafasiri					
2197	223	217	b	1	سِكُ	siku	siku							get up [immediately] each day,
1755	180	175	b	2	حِتْوَا	ḥitwā	hitwa							
3419	347	341	d	2	اَسِپُ	asipu	asipu		asipozingiya					
3420	347	341	d	3	زِغِيْيَ	zighı̄ya	zighiya		~					
3421	348	342	a	1	نَيِيِ	nayiyi	nayiyi		na yeye					
1757	180	175	c	1	نَمِ	nami	nami							
1758	180	175	c	2	سَسَا	sasā	sasa							
1759	180	175	c	3	نَتَرَاجِ	natarāji	nataraji							
1771	181	176	d	1	وَ	wa	wa							
3423	348	342	b	1	يُوَا	yuwā	yuwa		yua					
3424	348	342	b	2	لِمُ	limu	limu		limo					
1765	181	176	b	1	نَمِ	nami	nami							
1766	181	176	b	2	اِنَ	ina	ina							
1768	181	176	c	1	مِمِ	mimi	mimi							
1769	181	176	c	2	حِتْوَا	ḥitwā	hitwa							
3427	348	342	c	2	اَسِپُ	asipu	asipu		asipofahamu					
1775	182	177	a	2	تَرَاتِيْبُ	tarātı̄bu	taratibu							
1780	182	177	c	2	مَمَا	mamā	mama							
1781	182	177	c	3	كَوَاجِبُ	kawājibu	kawajibu							
1777	182	177	b	2	وَپِ	wapi	wapi							
3428	348	342	c	3	فَهَمُ	fahamu	fahamu		~					
3430	348	342	d	2	كُمْڠِلِيَا	kumgiliyā	kumgiliya		kumngiliya					
1783	182	177	d	2	كَوَامْبِيَا	kawāmbiyā	kawambiya							
3431	349	343	a	1	نَهُكُ	nahuku	nahuku		na huko					
1785	183	178	a	2	مَاءِ	mai	mai							
3433	349	343	a	3	زُبِيْرِ	zubı̄ri	zubiri		Zuberi					
1786	183	178	a	3	بَرَانِ	barāni	barani							
3434	349	343	b	1	اَسِوَاتِ	asiwāti	asiwati		asiwate					
3435	349	343	b	2	تَغَكُرِا	taghakuriā	taghakuria	taghakurī	tangakuri					
1834	187	182	c	1	وَلَا	walā	wala							
3436	349	343	c	1	كُلَّ	kulla	kulla		kula					
3437	349	343	c	2	نْيُبَا	nyubā	nyuba		nyumba					
3438	349	343	c	3	هُوَابِيْرِ	huwābı̄ri	huwabiri		huabiri					
3439	349	343	d	1	هُمآْزِڠِيَا	humãzigiyā	humazigiya		humazengea					
1791	183	178	c	3	يَانِ	yāni	yani							
3440	349	343	d	2	عَطِيَا	ʿaṭiyā	atiya		Atiya					
1792	183	178	d	1	سَسَا	sasā	sasa							
1793	183	178	d	2	كْوَ	kwa	kwa							
3441	350	344	a	1	هَپُ	hapu	hapu		hapo					
1795	183	178	d	4	حُلِيَا	ḥuliyā	huliya							
1835	187	182	c	2	اُسِتُفَصِيْرِ	usitufaṣı̄ri	usitufasiri							
3442	350	344	a	2	نْدِيَا	ndiyā	ndiya		ndia					
3443	350	344	a	3	كَفُوَاتَ	kafuwāta	kafuwata		kafuata					
1798	184	179	b	1	مَيِ	mayi	mayi							
1799	184	179	b	2	هَمُكُيَكُتَ	hamukuyakuta	hamukuyakuta							
1820	186	181	a	2	مَيِ	mayi	mayi							
1800	184	179	c	1	مْبُزِ	mbuzi	mbuzi							
3444	350	344	b	1	اَكِنِرَا	akinirā	akinira		akenenda					
3446	350	344	c	1	نْيُبا	nyubā	nyuba		nyumba					
1804	184	179	d	1	كَمَ	kama	kama							
3447	350	344	c	2	يَكْوَنْدَ	yakwanda	yakwanda		ya kwanda					
1806	184	179	d	3	نَمْبِيَا	nambiyā	nambiya							
1807	185	180	a	1	وَاكَنِجِبُ	wākanijibu	wakanijibu							
3449	350	344	d	1	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni					
1823	186	181	b	2	وَ	wa	wa							
1810	185	180	b	2	كِسِمَ	kisima	kisima							
1814	185	180	c	3	كِنَ	kina	kina							
1815	185	180	c	4	ثَقِيْلِ	thaqı̄li	thaqili							
1825	186	181	c	1	لَكِنِ	lakini	lakini							
1827	186	181	c	3	فَهَمُ	fahamu	fahamu							
1839	188	183	a	2	اُسِيْةَ	usı̄ẗa	usita							
1828	186	181	d	1	هُػَ	hukʲa	hucha							
1829	186	181	d	2	كُكِكُرُبِيَا	kukikurubiyā	kukikurubiya							
1830	187	182	a	1	اِكِوَا	ikiwā	ikiwa							
1853	189	184	c	1	كْوَا	kwā	kwa							
1756	180	175	b	3	اَزْوَاجِ	azwāji	azwaji		Azuwaji					
1813	185	180	c	2	نِ	ni	ni		~					
1819	186	181	a	1	حَيُ	ḥayu	hayu		hayo					
1821	186	181	a	3	نِمَتَمُ	nimatamu	nimatamu		ni matamu					
1822	186	181	b	1	مْفَنُ	mfanu	mfanu		mfano					
1824	186	181	b	3	زَمْزَامُ	zamzāmu	zamzamu		Zamuzamu					
1826	186	181	c	2	سِسِا	sisiā	sisia	sisī	sisi					
1831	187	182	a	2	اُمِخِيَارِ	umikhiyāri	umihiyari		umehitari					
1832	187	182	b	1	كُكُپِكَ	kukupika	kukupika		kukupeka					
1833	187	182	b	2	تُطَيَرِا	tuṭayariā	tutayaria	tuṭayarī	tu tayari					
1836	187	182	d	1	نِسِسِس	nisisis	nisisis		ni sisi					
1837	187	182	d	2	تْوَلُكْوَامْبِيَا	twalukwāmbiyā	twalukwambiya		twalokwambiya					
1838	188	183	a	1	وَاكَنِوُنْيَ	wākaniwunya	wakaniwunya		wakanionya					
1846	188	183	d	1	مْبِيِ	mbiyi	mbiyi		mbee					
1847	188	183	d	2	وَاكَنِتُلِيَا	wākanituliyā	wakanituliya		wakanitoleya					
1858	190	185	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari					
1862	190	185	b	3	سِشُتُكِ	sishutuki	sishutuki		sishutuke					
2215	224	218	d	3	نْدِيَا	ndiyā	ndiya							
3450	350	344	d	2	اَكَغِيْيَا	akaghı̄yā	akaghiya		akangiya					
3451	351	345	a	1	حَمْزَةِ	ḥamzaẗi	hamzati		Hamza					
3453	351	345	b	1	نَمَوْلَنَا	namawlanā	namaulana		na Maulana					
1849	189	184	a	2	كِسِمَ	kisima	kisima							
1843	188	183	c	1	كْوَا	kwā	kwa							
1844	188	183	c	2	مْوِتُنِ	mwituni	mwituni							
1845	188	183	c	3	واكَپِةَ	wākapiẗa	wakapita							
1854	189	184	c	2	كِوَاڤُ	kiwāvu	kiwavu							
1855	189	184	c	3	كَتَزَامَ	katazāma	katazama							
3454	351	345	b	2	عُمَرِا	ʿumariā	umaria	ʿumarī	Umari					
3456	351	345	c	2	نِا	niā	nia	nī	ni					
1852	189	184	b	3	كَسُكُمَ	kasukuma	kasukuma							
1859	190	185	a	2	اَكَتَمْكَ	akatamka	akatamka							
3457	351	345	c	3	اَلْفَجِيْرِ	alfajı̄ri	alfajiri		alifajiri					
3459	351	345	d	2	اِمِسِمَمِيَا	imisimamiyā	imisimamiya		imesimamia					
1866	190	185	d	2	كُكْوَمْبِيَا	kukwambiyā	kukwambiya							
3460	352	346	a	1	مْوَانَمْكِ	mwānamki	mwanamki		mwanamke					
3462	352	346	b	1	كَنِنَ	kanina	kanina		kanena					
3464	352	346	b	3	عَطِيْكَ	ʿaṭı̄ka	atika		Atika					
1863	190	185	c	1	كِسِمَ	kisima	kisima							
3466	352	346	c	2	مُتَنِپِيْلِكَ	mutanipı̄lika	mutanipilika		mutanipeleka					
1865	190	185	d	1	نِكَرُوْدِ	nikarūdi	nikarudi							
1870	192	186	b	2	فُرَحَا	furaḥā	furaha							
1867	192	186	a	1	حَتَ	ḥata	hata							
3468	352	346	d	2	مَوُلَنَا	mawulanā	mawulana		Maulana					
1869	192	186	b	1	نِنَا	ninā	nina							
3469	352	346	d	3	عَلِيْ	ʿalii	alii		Aliya					
3470	352	346	d	4	يَا	yā	ya		~					
3471	353	347	a	1	نْدِيَ	ndiya	ndiya		ndia					
3472	353	347	a	2	نِمِيَبِيْرِ	nimiyabı̄ri	nimiyabiri		nimeiabiri					
3473	353	347	b	1	نْيُبَ	nyuba	nyuba		nyumba					
3474	353	347	b	2	سِكُئفَصِيْرِا	sikufaṣı̄riā	sikufasiria	sikufaṣı̄rī	sikufasiri					
1901	195	189	c	2	نِكَلِسُكُمَ	nikalisukuma	nikalisukuma							
1877	193	187	a	1	اَوَلِ	awali	awali							
1879	193	187	a	3	سَعَ	saʿa	saa							
1880	193	187	a	4	سِةَ	siẗa	sita							
1917	197	191	b	1	كَمْتَيَا	kamtayā	kamtaya							
1918	197	191	b	2	نَا	nā	na							
3475	353	347	c	1	نِمِمِ	nimimi	nimimi		ni mimi					
3476	353	347	c	2	اُمِيْ	umii	umii		Umi					
1882	193	187	b	2	مْبُزِ	mbuzi	mbuzi							
3477	353	347	c	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
3479	353	347	d	2	هَيَكُوِلِيْيَا	hayakuwilı̄yā	hayakuwiliya		hayakueleya					
1903	195	189	d	2	مْتُ	mtu	mtu							
3480	354	348	a	1	هَپُ	hapu	hapu		hapo					
3481	354	348	a	2	حَمْزَا	ḥamzā	hamza		Hamza					
1904	195	189	d	3	اَكِيَا	akiyā	akiya							
3482	354	348	a	3	كَتُكَ	katuka	katuka		katoka					
3484	354	348	b	2	اُپِسِ	upisi	upisi		upesi					
3485	354	348	b	3	نَحَرَكَ	naḥaraka	naharaka		na haraka					
3486	354	348	c	1	مْلَغُوْ	mlaghuu	mlaghuu		mlango					
3488	354	348	d	1	اِلِيْ	ilii	ilii		ili					
3489	354	348	d	2	كُمْڠُڠُلِيَا	kumguguliyā	kumguguliya		kumfunguliya					
1891	194	188	b	2	كِسِمَانِ	kisimāni	kisimani							
1906	196	190	a	2	اَكَنِشِكَ	akanishika	akanishika							
3490	355	349	a	1	نْدِ	ndi	ndi		nde					
3491	355	349	a	2	كِتُكَ	kituka	kituka		kitoka					
3494	355	349	b	1	حَپُ	ḥapu	hapu		hapo					
3495	355	349	b	2	نْدِيَا	ndiyā	ndiya		ndia					
1907	196	190	b	1	مَئِ	mai	mai							
3498	355	349	c	2	عَلِيْ	ʿalii	alii		Ali					
1897	195	189	a	2	وَكَسِمَامَ	wakasimāma	wakasimama							
3499	355	349	c	3	اَكِيْكُمَ	akı̄kuma	akikuma		akikoma					
1898	195	189	b	1	كِفِنِشِيْوَ	kifinishı̄wa	kifinishiwa							
1899	195	189	b	2	كِسِمَ	kisima	kisima							
1929	198	192	c	1	كِسَ	kisa	kisa							
3500	355	349	d	1	مْلَڠُوْ	mlaguu	mlaguu		mlango					
3502	356	350	a	1	عَلِيْ	ʿalii	alii		Ali					
1909	196	190	c	1	مَمَ	mama	mama							
3503	356	350	a	2	كَمُوُلِيْزَ	kamuwulı̄za	kamuwuliza		kamuuliza					
1911	196	190	c	3	كَتَمْكَ	katamka	katamka							
3505	356	350	b	2	نِا	niā	nia	nī	ni					
3507	356	350	b	4	حَمْزَا	ḥamzā	hamza		Hamza					
1913	196	190	d	2	كَمْوَمْبِيَا	kamwambiyā	kamwambiya							
1931	198	192	c	3	كَلِيْمَ	kalı̄ma	kalima							
1914	197	191	a	1	نِكَحِمِدِ	nikaḥimidi	nikahimidi							
1915	197	191	a	2	كْوَا	kwā	kwa							
1923	197	191	d	1	ػَنْدَانِ	kʲandāni	chandani							
1924	197	191	d	2	كَمْڤُلِيَا	kamvuliyā	kamvuliya							
1944	200	194	a	2	سُرَ	sura	sura							
1840	188	183	b	1	حَپُ	ḥapu	hapu		hapo					
3508	356	350	c	1	نِمْغِنِ	nimghini	nimghini		ni mgeni					
3509	356	350	c	2	هُكُوِيْزَا	hukūı̄zā	hukuwiza							
1926	198	192	a	2	اَكَمْتَزَامَ	akamtazāma	akamtazama							
1932	198	192	d	1	اِنَ	ina	ina							
1933	198	192	d	2	نَلِيْتَرَاجِيْيَا	nalı̄tarājı̄yā	nalitarajiya							
3510	356	350	d	1	هَپُكَتُكَ	hapukatuka	hapukatuka		hapo katoka					
3511	356	350	d	2	عَلِيَا	ʿaliyā	aliya		Aliya					
3512	357	351	a	1	يِيِ	yiyi	yiyi		yeye					
3513	357	351	a	2	اُپُ	upu	upu		upo					
3514	357	351	a	3	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni					
1934	199	193	a	1	اِنَ	ina	ina							
3515	357	351	b	1	حُلِيْيَ	ḥulı̄ya	huliya		hulia					
3516	357	351	b	2	اَكِبَيِنِ	akibayini	akibayini		akibaini					
1939	199	193	c	1	اَكَنِپَ	akanipa	akanipa							
3518	357	351	c	2	كَنِيُوْنْيِنِ	kaniyūnyini	kaniyunyini		kanionyeni					
3519	357	351	d	1	نِپَتِ	nipati	nipati		nipate					
3520	357	351	d	2	كُيَڠَلِيَا	kuyagaliyā	kuyagaliya		kuyangaliya					
3521	358	352	a	1	حَپُ	ḥapu	hapu		hapo					
3522	358	352	a	2	عَلِيْ	ʿalii	alii		Ali					
3523	358	352	a	3	كَتُكَ	katuka	katuka		katoka					
3524	358	352	b	1	مَتُوْزِ	matūzi	matuzi		matozi					
3527	358	352	c	2	نْدِ	ndi	ndi		nde					
3529	358	352	d	1	مَنِيْنُ	manı̄nu	maninu		maneno					
1954	200	194	d	3	كَمْوَامْبِيَا	kamwāmbiyā	kamwambiya							
1952	200	194	d	1	اِنَ	ina	ina							
3531	359	353	a	1	كَمْوَامْبِيَ	kamwāmbiya	kamwambiya		kamwambia					
3533	359	353	b	1	سِنْدِلِى	sindilii	sindilii		sendelee					
3534	359	353	b	2	اِسْلَامُ	islāmu	islamu		isilamu					
3538	359	353	d	1	اَمْبَالُ	ambālu	ambalu		ambalo					
3539	359	353	d	2	وَاكُتِيْزِيَ	wākutı̄ziya	wakutiziya		wakutezeya					
3542	360	354	a	3	نِمَمَكِ	nimamaki	nimamaki		ni mamake					
3543	360	354	b	1	نْرِّيِ	nrriyi	nrriyi		ndiye					
3544	360	354	b	2	مْوِنْيِ	mwinyi	mwinyi		mwenye					
1961	201	195	c	3	شَكَ	shaka	shaka							
3547	360	354	c	1	نِيُنْيَّ	niyunı̄ya	niyuniya	niyunyya	nionya					
3549	360	354	c	3	يَكِيْ	yakii	yakii		yake					
3551	360	354	d	2	كُيَغَلِيْيَا	kuyaghalı̄yā	kuyaghaliya		kuyangaliya					
3552	361	355	a	1	يُوَا	yuwā	yuwa		yua					
2001	205	199	d	1	كْوَا	kwā	kwa							
3553	361	355	a	2	مْوِنْيِ	mwinyi	mwinyi		Mwenye					
1965	202	196	a	1	خَبَرِ	khabari	habari							
3554	361	355	a	3	مَمْلَكَ	mamlaka	mamlaka		Mamlaka					
1967	202	196	a	3	تِمَمُ	timamu	timamu							
3555	361	355	b	1	لَكِ	laki	laki		lake					
3556	361	355	b	2	هُرُ	huru	huru		hondoa					
3557	361	355	b	3	وَاكَوِاكَ	wākawiāka	wakawiaka	kawīka	kaweka					
1969	202	196	b	2	نِفَهَمُ	nifahamu	nifahamu							
1988	204	198	b	2	نَا	nā	na							
3561	361	355	d	1	اَيْفَرِقِ	ayfariqi	ayfariqi		aifariki					
3563	362	356	a	1	نَوِ	nawi	nawi		nawe					
3565	362	356	a	3	رُيَنْغُ	ruyanghu	ruyanghu		nduyangu					
3566	362	356	b	1	اُسِپُتِيْ	usiputii	usiputii		usipotee					
1973	202	196	d	2	كُمْوَمْبِيَا	kumwambiyā	kumwambiya							
3568	362	356	b	3	مغُ	mghu	mghu		Mngu					
1975	203	197	a	2	كْوَا	kwā	kwa							
3570	362	356	c	2	هُتُكُوْسَ	hutukūsa	hutukusa		hutokosa					
3571	362	356	c	3	فُنْغُ	funghu	funghu		fungu					
1977	203	197	b	1	اَصُبُحِ	aṣubuḥi	asubuhi							
1978	203	197	b	2	نِسَفَارِ	nisafāri	nisafari							
1991	204	198	c	2	مُيِ	muyi	muyi							
3572	362	356	d	1	لَئَخِيْرِ	laakhı̄ri	laahiri		la aheri					
3573	362	356	d	2	نَدُنِيَا	naduniyā	naduniya		na duniya					
1980	203	197	c	2	كْوَ	kwa	kwa							
3574	363	357	a	1	هُمُوْنْيَّ	humūnı̄ya	humuniya	humūnyya	humuonya					
3576	363	357	b	1	مَتُزِ	matuzi	matuzi		matozi					
3578	363	357	c	1	حَپُ	ḥapu	hapu		hapo					
1993	204	198	d	1	تَكُيَ	takuya	takuya							
3579	363	357	c	2	كَتُوَا	katuwā	katuwa		katoa					
2019	207	201	c	2	اَكَتَكَلَمُ	akatakalamu	akatakalamu							
1998	205	199	b	2	اَسِحِمِلِ	asiḥimili	asihimili							
2006	206	200	b	1	تِيَتِ	tiyati	tiyati							
1999	205	199	c	1	كَتَرَادَدِ	katarādadi	kataradadi							
2000	205	199	c	2	عَقِيْلِ	ʿaqı̄li	aqili							
2007	206	200	b	2	اَكِجِيْرُشَا	akijı̄rushā	akijirusha							
1925	198	192	a	1	پِتِ	piti	piti		pete					
2004	206	200	a	1	كَيْتُرَا	kayturā	kaytura		kayitunda					
2005	206	200	a	2	كَيَنْغُشَا	kayanghushā	kayanghusha		kayangusha					
2012	206	200	d	2	اَكِمْسُمِيْيَا	akimsumı̄yā	akimsumiya		akimsomeya					
2013	207	201	a	1	أَلِپُ	alipu	alipu		alipopata					
2355	239	233	c	2	وِنْدَانِ	windāni	windani		wendani					
3580	363	357	c	3	عَطيْكَ	ʿaṭı̄ka	atika		Atika					
3583	364	358	a	1	حَپُا	ḥapuā	hapua	hapū	hapo					
2008	206	200	c	1	حَتَ	ḥata	hata							
2010	206	200	c	3	كَمْڤِيْشَا	kamvı̄shā	kamvisha							
2029	208	202	c	2	وَ	wa	wa							
3584	364	358	a	2	عَلِيْ	ʿalii	alii		Ali					
2015	207	201	a	3	فَهَمُ	fahamu	fahamu							
3585	364	358	a	3	حَِْدَارِ	ḥaidāri	haidari		Haidari					
3587	364	358	b	2	اَكَفَصِيْرِا	akafaṣı̄riā	akafasiria	akafaṣı̄rī	akafasiri					
2016	207	201	b	1	كُمُحِمِدِ	kumuḥimidi	kumuhimidi							
3588	364	358	c	1	بُنَ	buna	buna		mbona					
3590	364	358	c	3	زُبِيْرِا	zubı̄riā	zubiria	zubīrī	Zuberi					
2018	207	201	c	1	كِسَ	kisa	kisa							
3591	364	358	d	1	نِوِ	niwi	niwi		niwe					
3592	364	358	d	2	پْوِكِيْ	pwikii	pwikii		pweke					
3593	364	358	d	3	عَطِيْيَا	ʿaṭı̄yā	atiya		Atiya					
3632	369	363	a	3	بْوَانَ	bwāna	bwana		Bwana					
3633	369	363	a	4	وِتُ	witu	witu		Wetu					
2033	208	202	d	2	نِتِلِيَا	nitiliyā	nitiliya							
3640	369	363	d	1	يَكِيَقِيْ	yakiyaqii	yakiyaqii		yakiyake					
3642	370	364	a	1	حَپُ	ḥapu	hapu		hapo					
3644	370	364	a	3	عَطِيْكَ	ʿaṭı̄ka	atika		Atika					
2032	208	202	d	1	حِفُظِنِ	ḥifuẓini	hifudhini							
2036	209	203	a	3	مَظَرَا	maẓarā	madhara							
2038	209	203	b	2	اَلِفُ	alifu	alifu							
3646	370	364	b	2	اَسِپُ	asipu	asipu		asipoyataka					
2039	209	203	b	3	مَرَا	marā	mara							
3647	370	364	b	3	يَتَكَ	yataka	yataka		~					
3648	370	364	c	1	مْدُوْ	mduu	mduu		mdomoni					
3651	370	364	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2069	212	206	a	2	اُوِ	uwi	uwi		uwe					
2070	212	206	a	3	لِيْسَانِ	lı̄sāni	lisani							
3652	370	364	d	2	اَكَپُكِيْايَا	akapukiyāyā	akapukiyaya		akapokeya					
3656	371	365	b	2	عَطِكَمُوْنْيِشَا	ʿaṭikamūnyishā	atikamunyisha		kamuonyesha					
2045	210	204	a	1	مِمِ	mimi	mimi							
3658	371	365	c	2	اَلِپُ	alipu	alipu		alipoyashusha					
3659	371	365	c	3	يَشُشَا	yashushā	yashusha		~					
2099	214	208	b	4	ثَوَبُ	thawabu	thawabu							
3660	371	365	d	1	مْڠُ	mgu	mgu		Mngu					
3663	372	366	a	2	اَمُوِلِيْزِ	amuwilı̄zi	amuwilizi		amuulize					
3665	372	366	b	2	مْوَانَوِ	mwānawi	mwanawi		mwanawe					
3666	372	366	b	3	خَبَرِزِا	khabariziā	habarizia	khabarizī	habarize					
2071	212	206	b	1	كْوَا	kwā	kwa							on behalf of your brothers and friends,
2072	212	206	b	2	رُزَكُ	ruzaku	ruzaku		nduzako					
2050	210	204	c	1	اِكِوَا	ikiwā	ikiwa							
2051	210	204	c	2	وَتَكَ	wataka	wataka							
2052	210	204	c	3	رَاضِ	rāḍi	radhi							
2073	212	206	b	3	نَوِنْدَانِ	nawindāni	nawindani		na wendani					
3667	372	366	c	1	نَعَلِيْ	naʿalii	naalii		na Ali					
3668	372	366	c	2	اَمْوِلِيْزِ	amwilı̄zi	amwilizi		amweleze					
3670	372	366	d	2	كَيْلَلِيَا	kaylaliyā	kaylaliya		kayilaliya					
3672	373	367	a	2	كُكِپَبَوُكَ	kukipabawuka	kukipabawuka		kukipambauka					
3673	373	367	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3674	373	367	b	2	اَكَيْنُكَ	akaynuka	akaynuka		akainuka					
3675	373	367	c	1	كَمْپِكِيَ	kampikiya	kampikiya		kampikia					
3676	373	367	c	2	عَطِيْكَ	ʿaṭı̄ka	atika		Atika					
2089	213	207	c	5	جِتِهَدِ	jitihadi	jitihadi							
2074	212	206	c	1	فُوَاتَ	fuwāta	fuwata		fuata					imitate the Trustworthy Prophet
2075	212	206	c	2	تُمْوَا	tumwā	tumwa		Tumwa					
2076	212	206	c	3	امِيْنِ	āmı̄ni	amini		Amini					
2059	211	205	b	1	كْوَا	kwā	kwa							
3678	373	367	d	2	وُتِ	wuti	wuti		wote					
3679	373	367	d	3	پَمُيَا	pamuyā	pamuya		pamoya					
2062	211	205	b	4	تِيْنِ	tı̄ni	tini							
3680	374	368	a	1	عَطِيْكَ	ʿaṭı̄ka	atika		Atika					
3681	374	368	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
3682	374	368	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3683	374	368	b	2	كْوِحِرِانِ	kwiḥiriāni	kwihiriani	kwiḥirīni	kwa herini	*				
2067	211	205	d	3	مَرِضِيَا	mariḍiyā	maridhiya							
2068	212	206	a	1	اُكِسَ	ukisa	ukisa							When you speak
2077	212	206	d	1	وَدَامِ	wadāmi	wadami		wandame					and copy his example.
2078	212	206	d	2	يَكِيْ	yakii	yakii		yake					
2079	212	206	d	3	طَبِيَا	ṭabiyā	tabiya					lit. \\q{go along with his character}: \\Swa{ni kuigiza tabia yake}.		
2092	213	207	d	3	وَاصِيْيَا	wāṣı̄yā	wasiya							
2082	213	207	b	1	حَنَا	ḥanā	hana							
2083	213	207	b	2	بُدِ	budi	budi							
2106	215	209	a	2	مَمَ	mama	mama							
2107	215	209	a	3	كَفَصِيْرِ	kafaṣı̄ri	kafasiri							
2009	206	200	c	2	غُوْ	ghuu	ghuu		nguo					
2429	247	241	a	3	جِلِيْسِ	jilı̄si	jilisi		~					
3536	359	353	c	2	كْوَاكِ	kwāki	kwaki		kwake					
3684	374	368	c	1	مْوَنَڠُ	mwanagu	mwanagu		mwanangu					
3685	374	368	c	2	اُلُ	ulu	ulu		uko					
3686	374	368	c	3	مُيُوْنِ	muyūni	muyuni		moyoni					
2094	214	208	a	2	بِنْتِ	binti	binti							
2113	215	209	d	1	اُسِكُ	usiku	usiku							before nightfall.
2110	215	209	c	1	اِنْرَا	inrā	inra		enda					go and make your farewells
3689	375	369	a	1	نَفَطِيْمَ	nafaṭı̄ma	nafatima		na Fatima					
3690	375	369	a	2	اَتَمْكِيْ	atamkii	atamkii		atamke					
2098	214	208	b	3	كْوَا	kwā	kwa							
3691	375	369	b	1	اَمْوَامْبِيَ	amwāmbiya	amwambiya		amwambia					
3692	375	369	b	2	مُوْمِ	mūmi	mumi		mume					
2108	215	209	b	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia					and told him: Ja'far,
2111	215	209	c	2	كَوَاڠِا	kawāgiā	kawagia	kawāgī	kawage					
2112	215	209	c	3	سَفَارِ	safāri	safari					I would be rude not to say goodbye to your closest friends and relatives before going on a journey, especially if it is a long one.		
2105	215	209	a	1	كِسَا	kisā	kisa							Then his mother spoke,
2109	215	209	b	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
2114	215	209	d	2	اُسِيَڠِيْيَا	usiyagı̄yā	usiyagiya		usiyangiya			\\Swa{kabla ya usiku kuja}.		
2120	216	210	b	3	مْوَلِمُ	mwalimu	mwalimu					i.e. \\Swa{siyo mwalimu tu}, \\E{not just his teacher}.		
2116	216	210	a	2	تِيْتِ	tı̄ti	titi					= \\Swa{mjomba}, \\E{mother's brother}.  Among the Swahili, maternal uncles are very important.  An individual can inherit from a maternal uncle, and this extends even to inheriting noble status.  This is a significant difference compared to Arabic culture, where the maternal side of the family is much less important.  If an individual has half-brothers, those on his mother's side are likely to be closer to him in relationship terms than those on his father's side.  		
2115	216	210	a	1	كَمُوَاڠِا	kamuwāgiā	kamuwagia	kamuwāgī	kamuage					Say farewell to your uncle,
2117	216	210	a	3	يَكُ	yaku	yaku		yako					
2121	216	210	b	4	وَاكُ	wāku	waku		wako					
2123	216	210	c	2	يَوِزَاكُ	yawizāku	yawizaku		ya wenzako					
2118	216	210	b	1	نَمْكِ	namki	namki		na mke					and your teacher's wife,
2125	216	210	d	2	حِرِ	ḥiri	hiri		heri					
2122	216	210	c	1	نَجَمِيْعِ	najamı̄ʿi	najamii		na jamii					and all your friends --
2126	216	210	d	3	اُكِوَامْبِيَا	ukiwāmbiyā	ukiwambiya							
2124	216	210	d	1	كْوَا	kwā	kwa							bid them farewell.
2127	217	211	a	1	كِسَا	kisā	kisa							So then he got up,
2155	219	213	c	1	كْوَ	kwa	kwa							pray for me to God,
2128	217	211	a	2	حَپُ	ḥapu	hapu		hapo					
2129	217	211	a	3	كَيْنُكَ	kaynuka	kaynuka		kainuka					
2156	219	213	c	2	مْغُ	mghu	mghu		Mngu					
2157	219	213	c	3	نِوُمْبِيَنِ	niwumbiyani	niwumbiyani		niombeani			Ja'far, although only nine years old, is talking like an adult.		
2130	217	211	b	1	جَعْفَرِ	jaʿfari	jafari		Jaafari					Ja'far, and went out,
2131	217	211	b	2	اَكَتُكَ	akatuka	akatuka		akatoka					
2173	221	215	a	1	كَوَاڠَا	kawāgā	kawaga							He bade farewell to his friends,
2174	221	215	a	2	وِنْدَا	windā	winda		wendani					
2132	217	211	c	1	كْوَا	kwā	kwa							and when he got to his uncle's
2133	217	211	c	2	تِتِ	titi	titi							
2134	217	211	c	3	يَكِ	yaki	yaki		yake					
2135	217	211	c	4	كَفِيْكَ	kafı̄ka	kafika							
2158	219	213	d	1	نَمِمِ	namimi	namimi		na mimi					and I will pray for you.
2159	219	213	d	2	تَوَاُمْبِيَا	tawaumbiyā	tawaumbiya		tawaombeya					
2136	217	211	d	1	خَبَرِ	khabari	habari							he told him the news.
2137	217	211	d	2	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya							
2138	218	212	a	1	اَكِنْرَا	akinrā	akinra		akenda					He went and made his greetings
2139	218	212	a	2	اَكَنُظُمُ	akanuẓumu	akanudhumu							
2175	221	215	a	3	نِوَاكِ	niwāki	niwaki		wake					
2140	218	212	b	1	كْوَا	kwā	kwa							at [the home of] his teacher's wife,
2141	218	212	b	2	مْكِ	mki	mki		mke					
2142	218	212	b	3	وَا	wā	wa							
2143	218	212	b	4	مْوَلِمُ	mwalimu	mwalimu							
2160	220	214	a	1	اِوَ	iwa	iwa							Let bygones be bygones, my brothers.
2144	218	212	c	1	وُتِ	wuti	wuti		wote					and gave all of them a full report --
2145	218	212	c	2	كَوَاپَ	kawāpa	kawapa							
2146	218	212	c	3	تِمَامُ	timāmu	timamu							
2161	220	214	a	2	نِ	ni	ni							
2162	220	214	a	3	رَضِ	raḍi	radhi					People ask for \\Swa{radhi} when they are dying, or going on a journey, or moving away.  Doing so is, in effect, asking for forgiveness for any past wrongs on either side. 		
2163	220	214	a	4	نْرُزَانْغُ	nruzānghu	nruzanghu		nduzangu					
2147	218	212	d	1	كُلَ	kula	kula							he told them every word.
2148	218	212	d	2	نِنُ	ninu	ninu		neno					
2149	218	212	d	3	كَوَمْبِيَا	kawambiyā	kawambiya							
2093	214	208	a	1	مْوَانَ	mwāna	mwana		Mwana					
2095	214	208	a	3	حَبِبُ	ḥabibu	habibu		Habibu					
2495	253	247	d	1	اَكبَ	akba	akba		akamba					
2535	258	252	a	1	سِكُوْ	sikuu	sikuu		siku					
3545	360	354	b	3	كِتِ	kiti	kiti		kite					
2150	219	213	a	1	نِمِوَائَڠَ	nimiwaaga	nimiwaaga		nimewaaga			Use of the \\Swa{-me-} tense formative here to signify immediate present may be a dialectal feature -- compare Siyu \\Swa{mimetoka}, \\E{I am going out [now]}.		I am saying goodbye to [my] friends,
2151	219	213	a	2	وِنْدَانِ	windāni	windani		wendani					
2198	223	217	b	2	زُتِ	zuti	zuti		zote					
2199	223	217	b	3	هُيْنُكَ	huynuka	huynuka		huinuka					
2152	219	213	b	1	كُوَامْبِيَ	kuwāmbiya	kuwambiya							bidding you farewell --
2153	219	213	b	2	كْوِ	kwi	kwi		kwa	*				
2154	219	213	b	3	حِرِانِ	ḥiriāni	hiriani	ḥirīni	herini					
2186	222	216	b	1	اَلِپُ	alipu	alipu		alipopanda					When he was getting into bed
2176	221	215	b	1	اَكَرُدِ	akarudi	akarudi							and returned the way he had come.
2177	221	215	b	2	كُيَ	kuya	kuya							
2164	220	214	b	1	نِنْرَا	ninrā	ninra		nenda					I am going to stay with my father,
2165	220	214	b	2	كِتِ	kiti	kiti		keti					
2166	220	214	b	3	نَبَبَنغُ	nababanghu	nababanghu		na babangu					
2178	221	215	b	3	زَاكِ	zāki	zaki		zake					
2167	220	214	c	1	نَحُوْنُ	naḥūnu	nahunu		na hunu					but this is my [home] town --
2168	220	214	c	2	نِمُيِ	nimuyi	nimuyi		ni muyi					
2169	220	214	c	3	وَنْغُ	wanghu	wanghu		wangu					
2187	222	216	b	2	پَنْرَّا	panrrā	panrra		~					
2188	222	216	b	3	فِرَاشَا	firāshā	firasha							
2179	221	215	c	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya							He told his mother:
2170	220	214	d	1	سِنَا	sinā	sina							I have no doubt [but that I will] return [to visit].
2171	220	214	d	2	بُدِ	budi	budi							
2172	220	214	d	3	كُرِجِيْيَا	kurijı̄yā	kurijiya		kurejeya					
2180	221	215	c	2	مَمَكِيْ	mamakii	mamakii		mamake					
2194	223	217	a	1	مِمِ	mimi	mimi							I, when the cock crows,
2181	221	215	d	1	فِرَاشَا	firāshā	firasha							Make up the bed for me.
2182	221	215	d	2	نِػَنْدِكِيَا	nikʲandikiyā	nichandikiya							
2195	223	217	a	2	كُكُوْ	kukuu	kukuu		kuku					
2196	223	217	a	3	اَكِوِيْكَ	akiwı̄ka	akiwika							
2189	222	216	c	1	اَكَمْبَ	akamba	akamba							he said: Mother, waken me [in the morning]
2183	222	216	a	1	حَپُ	ḥapu	hapu		hapo					Then he washed his feet.
2184	222	216	a	2	مَڠُوْ	maguu	maguu							
2185	222	216	a	3	كَوُشَى	kawushay	kawushay	kawushā	kawosha			This is standard practice before retiring for the night.  If a wife fails to provide water so that her husband can wash is feet, it can be cause for divorce.		
2190	222	216	c	2	مَمَا	mamā	mama							
2191	222	216	c	3	نَمشَا	namshā	namsha							
2192	222	216	d	1	كَمَ	kama	kama							if I am still asleep.
2193	222	216	d	2	سِكُفَهَمِيَا	sikufahamiyā	sikufahamiya					lit. \\q{if I am not conscious}		
2200	223	217	c	1	اِلَا	ilā	ila							but today I am tired --
2201	223	217	c	2	يِوُ	yiwu	yiwu		yeo					
2202	223	217	c	3	نِمِػُكَ	nimikʲuka	nimichuka		nimechoka					
2206	224	218	a	2	نَتَكَ	nataka	nataka							
2203	223	217	d	1	مَرَا	marā	mara							perhaps I will not wake up [on time].
2204	223	217	d	2	سِتُفَهَمِيَا	situfahamiyā	situfahamiya		sitofahamiya					
2207	224	218	a	3	كُتُكَ	kutuka	kutuka		kutoka					
2209	224	218	b	2	كُمِ	kumi	kumi					i.e. 4.00am,		
2205	224	218	a	1	تِنَا	tinā	tina		tena					And I want to set out
2210	224	218	b	3	زِكِفِيْكَ	zikifı̄ka	zikifika							
2212	224	218	c	2	كُكِپَبَوُكَ	kukipabawuka	kukipabawuka		kukipambauka					
2208	224	218	b	1	سَعَا	saʿā	saa							when the tenth hour arrives,
2214	224	218	d	2	كَتِكَ	katika	katika							
2211	224	218	c	1	هَتَ	hata	hata							so that when dawn comes
2213	224	218	d	1	نِوِكُ	niwiku	niwiku		niweko					I can be well on my way.
2242	227	221	d	2	هُسِنْدِيَا	husindiyā	husindiya					lit. \\q{dozing}.		
2216	225	219	a	1	اَكَلَلَا	akalalā	akalala							[Ja'far's mother] slept with one eye open,
2217	225	219	a	2	كِپُلِيْكَ	kipulı̄ka	kipulika					lit. \\q{he slept listening}, i.e. \\Swa{kulala kimato-mato}.		
3546	360	354	b	4	ػَكِ	kʲaki	chaki		chake					
2218	225	219	b	1	كُكُوُ	kukuwu	kukuwu		kuku					and when the first cock crowed
2219	225	219	b	2	وَ	wa	wa							
2220	225	219	b	3	كْوَانْدَ	kwānda	kwanda							
2221	225	219	b	4	كُوِكَا	kuwikā	kuwika							
2260	229	223	d	1	كْرَ	kra	kra		kwanda	*		\\Swa{kenda} would be another possible reading.		first he prayed them.
2222	225	219	c	1	مَمَكِ	mamaki	mamaki		mamake					his mother got up
2223	225	219	c	2	اَكَيْنُوْكَ	akaynūka	akaynuka		akainuka					
3693	375	369	b	3	وَكِ	waki	waki		wake					
2301	234	228	a	1	كِسَ	kisa	kisa							
3694	375	369	c	1	نَوِ	nawi	nawi		nawe					
2243	228	222	a	1	كُوَ	kuwa	kuwa		koa					He washed his face carefully,
2579	262	256	b	1	ػِنْدِمِيْنِ	kʲindimı̄ni	chindimini		chendemene					
3695	375	369	c	2	نِرَا	nirā	nira		nenda					
3696	375	369	c	3	كَمْپِيْكَ	kampı̄ka	kampika		kampeka					
2706	274	268	d	2	نْيُمَ	nyuma	nyuma							
3697	375	369	d	1	اَسِرِّ	asirri	asirri		asende					
2224	225	219	d	1	ػَكُلَ	kʲakula	chakula					i.e. \\Swa{chakula cha safari}, compare Ar. AS{زاد}, \\Eit{zād}, \\E{provisions for a journey} > \\Swa{zawadi}, \\E{present brought back from a journey}.		and cooked food for him.
2225	225	219	d	2	كَمْپِكِيْيَا	kampikı̄yā	kampikiya							
2244	228	222	a	2	اُسُ	usu	usu		uso					
2245	228	222	a	3	كْوَا	kwā	kwa							
2226	226	220	a	1	وَپِيْلِ	wapı̄li	wapili		wa pili			We understand \\Swa{kuku}, \\E{cockerel}.		When the second cock crowed, she spoke
2227	226	220	a	2	اَكَفَصِيْرِا	akafaṣı̄riā	akafasiria	akafaṣı̄rī	akafasiri					
2246	228	222	a	4	مَكِنِ	makini	makini					Note that because he is a good boy, Ja'far does not rush this.		
2228	226	220	b	1	كَمْوَامْشَا	kamwāmshā	kamwamsha							and wakened Ja'far:
2229	226	220	b	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
2230	226	220	c	1	هَيَا	hayā	haya							It's [time for] morning [prayers] --
2231	226	220	c	2	نِا	niā	nia	nī	ni					
2232	226	220	c	3	ءَلْفَجِيْرِ	alfajı̄ri	alfajiri							
2247	228	222	b	1	نَكِسَ	nakisa	nakisa		na kisa					and then he said:
2248	228	222	b	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
2233	226	220	d	1	صَلَا	ṣalā	sala							the prayers are starting.
2234	226	220	d	2	اِمِسِمَمِيَا	imisimamiyā	imisimamiya		imesimamiya			Note that this is anachronistic -- Ja'far's town is at least a day's travel from Mecca, and at this early stage of Islam it is unlikely that its rituals would have spread this far.		
2235	227	221	a	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari					Ja'far said:
2236	227	221	a	2	كَنُظُمُ	kanuẓumu	kanudhumu							
3698	375	369	d	2	پْوِكِ	pwiki	pwiki		pweke					
3699	375	369	d	3	عَطِيَا	ʿaṭiyā	atiya		Atiya					
2237	227	221	b	1	يِوُ	yiwu	yiwu		yeo					Today I was fast asleep.
3700	376	370	a	1	عَلِيْ	ʿalii	alii		Ali					
2249	228	222	c	1	نِنْرَاوُ	ninrāwu	ninrawu		nendao					I am going to the mosque --
2250	228	222	c	2	مْسِكِتِنِ	msikitini	msikitini							
2239	227	221	c	1	حَپُ	ḥapu	hapu		hapo					When he had spoken,
2240	227	221	c	2	اَكَكَلِيْمُ	akakalı̄mu	akakalimu							
2262	230	224	a	1	اَكَرُدِ	akarudi	akarudi							
2241	227	221	d	1	اَكَتُكَ	akatuka	akatuka		akatoka					he went out, still half-asleep.
2263	230	224	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari					
3701	376	370	a	2	كَغِيَ	kaghiya	kaghiya		kangia					
2252	228	222	d	2	نِيَمْشِيَا	niyamshiyā	niyamshiya		niamshiya					
2253	229	223	a	1	اَكَتُكَ	akatuka	akatuka		akatoka					Ja'far went out,
2254	229	223	a	2	جَعْفَرِ	jaʿfari	jafari		Jaafari					
2264	230	224	b	1	نَػَكُلَ	nakʲakula	nachakula		na chakula					
2255	229	223	b	1	اَكِنِرَا	akinirā	akinira		akenenda					and as he went he repeated the names of God.
2256	229	223	b	2	كَذِكِرِا	kadhikiriā	kadhikiria	kadhikirī	kadhikiri			\\Swa{kutaja Mngu}, a ritual repetition of the names of God.		
2265	230	224	b	2	كِطَيَرِا	kiṭayariā	kitayaria	kiṭayarī	ki tayari					
2257	229	223	c	1	صَلَا	ṣalā	sala							The morning prayers
2258	229	223	c	2	يَا	yā	ya							
2259	229	223	c	3	الْفَجيْرِ	ālfajı̄ri	alfajiri							
3702	376	370	a	3	نْرَانِ	nrāni	nrani		ndani					
2279	231	225	d	2	اَكِمْوَمْبِيَا	akimwambiyā	akimwambiya							
2266	230	224	c	1	كُلَ	kula	kula							
2267	230	224	c	2	نَنْرُيِ	nanruyi	nanruyi		na nduye					
2268	230	224	c	3	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri					
3704	376	370	b	2	مْكُنُ	mkunu	mkunu		mkono					
2269	230	224	d	1	نَمْوَلِمُ	namwalimu	namwalimu		na mwalimu					
2270	230	224	d	2	كَتُكِيْيَا	katukı̄yā	katukiya		katokeya					
2274	231	225	b	2	كْوَ	kwa	kwa							
3705	376	370	b	3	اَكَبَيِنِ	akabayini	akabayini		akabaini					
3706	376	370	c	1	اَكَىْنُكَ	akaynuka	akaynuka		akainuka					
3708	376	370	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3709	376	370	d	2	اَكَمْوِرِّيا	akamwirriyā	akamwirriya		akamwendeya					
3711	377	371	a	2	ػِنْرَا	kʲinrā	chinra		chenda					
3712	377	371	a	3	كِمْپِيْكَ	kimpı̄ka	kimpika		kimpeka					
3713	377	371	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3714	377	371	b	2	حُتُوُظِيْكَ	ḥutuwuẓı̄ka	hutuwudhika		hutoudhika					
2284	232	226	b	3	كْوَا	kwā	kwa							
3715	377	371	c	1	كَبَ	kaba	kaba		kamba					
2289	232	226	d	1	تَمَشَا	tamashā	tamasha							
2288	232	226	c	3	سَفَرِ	safari	safari							
2294	233	227	b	2	نَمِ	nami	nami							
2291	233	227	a	1	اَكَمْجِبُ	akamjibu	akamjibu							
2295	233	227	b	3	فَرَاسِ	farāsi	farasi							
2297	233	227	c	2	هُيُ	huyu	huyu							
754	77	76	a	2	شِطَانِ	shiṭāni	shitani		sheitani			The devil is too slow -- \\Swa{akigeuka tu, Ali akamshika}, \\E{no matter how he twisted, Ali grabbed him}.		
2694	273	267	d	1	زُاتِ	zuāti	zuati	zūte	zote					
3719	377	371	d	2	حَيُ	ḥayu	hayu		hayo					
2724	276	270	c	1	هُجَ	huja	huja							
3721	378	372	a	1	كَنِنَ	kanina	kanina		kanena					
2298	233	227	c	3	سِمُئِسِ	simuisi	simuisi							
3723	378	372	a	3	مْغُ	mghu	mghu		Mngu					
3724	378	372	b	1	هَيَمُ	hayamu	hayamu		hayamo					
2299	233	227	d	1	نَتَكَا	natakā	nataka							
3726	378	372	b	3	مْوَانْغُ	mwānghu	mwanghu		mwangu					
3728	378	372	c	2	نِكَمَ	nikama	nikama		ni kama					
2327	236	230	d	1	عَدَ	ʿada	ada							
3729	378	372	c	3	رُيَغُ	ruyaghu	ruyaghu		nduyangu					
2303	234	228	a	3	كَتَمْكَ	katamka	katamka							
3730	378	372	d	1	نَقَسِيْمُ	naqası̄mu	naqasimu		na Qasimu					
2304	234	228	b	1	هَيَا	hayā	haya							
2305	234	228	b	2	مَمَنْڠُ	mamangu	mamangu							
3731	378	372	d	2	نِمَمُيَا	nimamuyā	nimamuya		ni mamoya					
3732	379	373	a	1	حَپُ	ḥapu	hapu		hapo					
3733	379	373	a	2	عَلِيْ	ʿalii	alii		Ali					
3734	379	373	a	3	كَتُكَ	katuka	katuka		katoka					
3735	379	373	b	1	كَدَمَنَ	kadamana	kadamana		kandamana					
3736	379	373	b	2	نَعَطِيْكَ	naʿaṭı̄ka	naatika		na Atika					
3737	379	373	c	1	اَكِنْرَا	akinrā	akinra		akenda					
3738	379	373	c	2	اَكَمْپِيْكَ	akampı̄ka	akampika		akampeka					
3740	379	373	d	2	كْوَوُ	kwawu	kwawu		kwao					
2313	235	229	a	3	اَپِتَ	apita	apita							
3741	379	373	d	3	اَكَغِيَا	akaghiyā	akaghiya		akangiya					
2332	237	231	b	1	هَپُ	hapu	hapu							
2320	236	230	a	1	هُيُ	huyu	huyu							
2322	236	230	a	3	مْوَلِمُ	mwalimu	mwalimu							
2324	236	230	b	2	اَخِتِيْمُ	akhitı̄mu	ahitimu							
2336	237	231	c	2	اَكَفَصِيْرِ	akafaṣı̄ri	akafasiri							
2348	238	232	d	3	نْدِيَا	ndiyā	ndiya							
2337	237	231	d	1	اُسِكُ	usiku	usiku							
2340	238	232	a	2	اَكَتَمْكَ	akatamka	akatamka							
2358	239	233	d	2	نَلِيَسِكِيَا	naliyasikiyā	naliyasikiya							
2349	239	233	a	1	اَوْ	aw	au							
2350	239	233	a	2	يَانَ	yāna	yana							
2367	240	234	d	1	حَتَ	ḥata	hata							
2359	240	234	a	1	اَوْ	aw	au							
2364	240	234	c	1	سِكُ	siku	siku							
2369	240	234	d	3	كُنَمْبِيَا	kunambiyā	kunambiya							
2372	241	235	b	1	سَسَا	sasā	sasa							
2377	241	235	d	2	نَكُكْوَمْبِيَا	nakukwambiyā	nakukwambiya							
2374	241	235	c	1	تْوَالِئَڠَانَ	twāliagāna	twaliagana							
2379	242	236	a	2	هُكُرِظِيْكَ	hukuriẓı̄ka	hukuridhika							
759	77	76	d	1	سِؤُپِسِ	siupisi	siupisi		si upesi					[you] will not quickly escape.
2723	276	270	b	3	كُوَابِرِ	kuwābiri	kuwabiri		kuabiri					
2833	288	282	a	4	كْوِمَ	kwima	kwima							
2806	285	279	b	1	حُمْصُبِرِ	ḥumṣubiri	humsubiri							
2383	242	236	c	2	حَجَ	ḥaja	haja							
3801	376	380	c	1	نَئَتَكَوُ	naatakawu	naatakawu		na atakaotamka atakaotamka					
2382	242	236	c	1	هُنَا	hunā	huna							
2384	242	236	c	3	كُؤُظِيْكَ	kuuẓı̄ka	kuudhika							
2411	245	239	c	1	سَلَامَ	salāma	salama							
2386	242	236	d	2	كُنِتِيْيَا	kunitı̄yā	kunitiya							
2387	243	237	a	1	اَكَمْجِبُ	akamjibu	akamjibu							
2389	243	237	b	1	سِكُئِزَا	sikuizā	sikuiza							
2390	243	237	b	2	هَيَ	haya	haya							
2413	245	239	d	1	كْوَا	kwā	kwa							
2395	243	237	d	2	كُلِيْيَا	kulı̄yā	kuliya							
2396	244	238	a	1	سَسَا	sasā	sasa							
2397	244	238	a	2	هَيَا	hayā	haya							
2401	244	238	c	1	تَكُوَا	takuwā	takuwa							
2430	247	241	b	1	كْوَا	kwā	kwa							
2421	246	240	c	1	سَعَ	saʿa	saa							
2422	246	240	c	2	كُمِ	kumi	kumi							
2433	247	241	c	1	كَمْبَ	kamba	kamba							
2447	249	243	a	1	مْكٗنٗ	mkono	mkono							
2435	247	241	c	3	سِكُكِسِ	sikukisi	sikukisi							
2448	249	243	a	2	كَوَتَزَامَ	kawatazāma	kawatazama							
2436	247	241	d	1	كْوَانْدَ	kwānda	kwanda							
2443	248	242	c	2	نَا	nā	na							
2445	248	242	d	1	مْكٗنٗ	mkono	mkono							
2450	249	243	b	2	اَكَسِمَامَ	akasimāma	akasimama							
792	81	79	d	3	بِيَا	biyā	biya		piya	*				
810	83	81	c	2	مْمُيَ	mmuya	mmuya		moya	*				
2391	243	237	b	3	يَكُ	yaku	yaku		yako					
2407	245	239	a	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri					
2408	245	239	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
2409	245	239	b	1	اَتَكُپِكَ	atakupika	atakupika		atakupeka					
2410	245	239	b	2	مَنَّانِ	mannāni	mannani		Manani					
2412	245	239	c	2	نَسَلِمِيْنِ	nasalimı̄ni	nasalimini		na salamini					
2414	245	239	d	2	عَفُوَا	ʿafuwā	afuwa		afua					
2415	245	239	d	3	نَعَفِيَا	naʿafiyā	naafiya		na afiya					
2416	246	240	a	1	هَپُ	hapu	hapu		hapo					
2417	246	240	a	2	نْدِيَا	ndiyā	ndiya		ndia					
2418	246	240	a	3	كَيَدَاَمَ	kayadaama	kayadaama		kayandama					
2419	246	240	b	1	كِنِرَا	kinirā	kinira		kinenda					
2420	246	240	b	2	كُتُسِمَامَ	kutusimāma	kutusimama		kutosimama					
2423	246	240	c	3	اِكِكُمَ	ikikuma	ikikuma		ikikoma					
2917	296	290	d	2	اَكَوَاتِيْيَا	akawātı̄yā	akawatiya							
2945	299	293	d	1	مَيِ	mayi	mayi							and brought [it] to them.
2467	251	245	a	2	كَتَعَجَبُ	kataʿajabu	kataajabu							
2463	250	244	d	1	نِپَ	nipa	nipa							
2471	251	245	c	2	اَكَمْجِيْبُ	akamjı̄bu	akamjibu							
2472	251	245	d	1	وَجِهِ	wajihi	wajihi							
2475	252	246	a	1	كِسَ	kisa	kisa							
2478	252	246	b	1	كْوَا	kwā	kwa							
2485	252	246	d	3	كْوَ	kwa	kwa							
2525	256	250	d	2	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya							
2502	254	248	c	1	كِجَانَ	kijāna	kijana							
2491	253	247	b	2	اَكَپِجَ	akapija	akapija							
2494	253	247	c	2	اَكَرَادِدِ	akarādidi	akaradidi							
2517	255	249	d	2	كُمْوَنْڠَلِيَا	kumwangaliyā	kumwangaliya							
2505	254	248	d	2	جَدِ	jadi	jadi							
2507	254	248	d	4	سِكِيَا	sikiyā	sikiya							
2521	256	250	b	2	خَبَارِ	khabāri	habari							
2527	257	251	a	2	كَتَكَلَمُ	katakalamu	katakalamu							
2523	256	250	c	2	كَفَصِيْرِ	kafaṣı̄ri	kafasiri							
2532	257	251	d	1	كِجَانَ	kijāna	kijana							
2533	257	251	d	2	هُيُ	huyu	huyu							
2534	257	251	d	3	نَمْبِيَا	nambiyā	nambiya							
2530	257	251	c	1	بَبَا	babā	baba							
2531	257	251	c	2	سِيَمْفَهَمُ	siyamfahamu	siyamfahamu							
2541	258	252	b	4	نْيَانِ	nyāni	nyani							
2538	258	252	b	1	اِنَ	ina	ina							
2545	258	252	d	2	اَكَمْوَمْبِيْيَ	akamwambı̄ya	akamwambiya							
827	85	83	c	2	يَئِوُ	yaiwu	yaiwu		ya yeo			i.e. \\Swa{mambo ya leo}		
2461	250	244	c	1	وَسِكِيَ	wasikiya	wasikiya		wasikia					
2999	305	299	c	1	مْوِنْيِوِ	mwinyiwi	mwinyiwi		mwenyewe					
3033	309	303	b	1	اُ	u	u		una-ni					
2548	259	253	b	1	هُيُ	huyu	huyu							
2580	262	256	b	2	نَا	nā	na							
2555	259	253	d	2	سُوْرَ	sūra	sura							
2556	259	253	d	3	هُكْوَمْبِيَا	hukwambiyā	hukwambiya							
2560	260	254	b	1	اَكَمْتُمَ	akamtuma	akamtuma							
2582	262	256	c	1	نَا	nā	na							
2583	262	256	c	2	اِنَ	ina	ina							
2563	260	254	c	2	مْسِكِتِيْنِ	msikitı̄ni	msikitini							
2564	260	254	d	1	بَبَكُ	babaku	babaku							
2565	260	254	d	2	نَمْكُلِيَا	namkuliyā	namkuliya							
2569	261	255	b	1	كَفِيْكَ	kafı̄ka	kafika							
2570	261	255	b	2	مْسِكِتِنِ	msikitini	msikitini							
2571	261	255	c	1	بَبَا	babā	baba							
2575	261	255	d	2	نَبِيَا	nabiyā	nabiya							
2587	263	257	a	1	ػَمْبِوَا	kʲambiwā	chambiwa							
2576	262	256	a	1	كُوْنَ	kūna	kuna							
2577	262	256	a	2	كِجَانَ	kijāna	kijana							
2578	262	256	a	3	مْزُرِ	mzuri	mzuri							
2616	266	260	a	1	اَكَمْجِبُ	akamjibu	akamjibu							
2589	263	257	a	3	كَلِيْمَ	kalı̄ma	kalima							
2592	263	257	b	3	كَئَنْدَامَ	kaandāma	kaandama							
2617	266	260	a	2	كَلِيْمَ	kalı̄ma	kalima							
2595	263	257	d	1	سَلَامُ	salāmu	salamu							
2596	263	257	d	2	كَوَپِجِيَا	kawapijiyā	kawapijiya							
2597	264	258	a	1	سَلَامَُكَفَصِيْرِ	salāmuakafaṣı̄ri	salamuakafasiri							
2610	265	259	c	1	جُمْلَ	jumla	jumla							
2608	265	259	b	1	نِسَلَامَ	nisalāma	nisalama							
2627	267	261	a	2	بَابَ	bāba	baba							
2613	265	259	d	1	حَلِ	ḥali	hali							
2615	265	259	d	3	نِئَمْبِيَا	niambiyā	niambiya							
2622	266	260	c	3	نْيُمَ	nyuma	nyuma							
2623	266	260	d	1	سِپَتِ	sipati	sipati							
2624	266	260	d	2	لَا	lā	la							
2630	267	261	b	2	وَاكُسَلِمُ	wākusalimu	wakusalimu							
2632	267	261	c	2	سَلَامُ	salāmu	salamu							
2625	266	260	d	3	كُكْوَمْبِيَا	kukwambiyā	kukwambiya							
2544	258	252	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2549	259	253	b	2	نْرِيِ	nriyi	nriyi		ndiye					
2552	259	253	c	2	عَلِيْ	ʿalii	alii		Ali					
2553	259	253	c	3	حَيْدَارِ	ḥaydāri	haydari		Haidari					
2554	259	253	d	1	حِزُ	ḥizu	hizu		hizo					
2557	260	254	a	1	حَپُ	ḥapu	hapu		hapo					
2605	265	259	a	1	عَلِيْ	ʿalii	alii		Ali					
2606	265	259	a	2	كِتَ	kita	kita		keta					
2607	265	259	a	3	تَمْكُ	tamku	tamku		tamko					
2609	265	259	b	2	اُتُكَكُ	utukaku	utukaku		utokako					
2611	265	259	c	2	وَزِيْ	wazii	wazii		wazee					
2612	265	259	c	3	وَاكُ	wāku	waku		wako					
2614	265	259	d	2	زَاوُ	zāwu	zawu		zao					
2618	266	260	b	1	نِتُكُوْ	nitukuu	nitukuu		nitokako					
2619	266	260	b	2	نِسَلَامَ	nisalāma	nisalama		ni salama					
2620	266	260	c	1	سِيُوِ	siyuwi	siyuwi		siyui					
2621	266	260	c	2	يَحُكُوْ	yaḥukuu	yahukuu		ya huku					
2626	267	261	a	1	تِنَ	tina	tina		tena					
2628	267	261	a	3	مُعَلِيْمُ	muʿalı̄mu	mualimu							
3057	311	305	b	3	فَصِيْرِا	faṣı̄riā	fasiria	faṣı̄rī	~					
2641	268	262	c	3	ڠَانِ	gāni	gani							
2683	272	266	d	1	نْيُمَ	nyuma	nyuma							
2644	269	263	a	1	اَكَمْجِبُ	akamjibu	akamjibu							
2645	269	263	a	2	قَوْلِ	qawli	qauli							
2667	271	265	b	1	كَئَنْدَمَ	kaandama	kaandama							
2646	269	263	b	1	اَصُبُحِ	aṣubuḥi	asubuhi							
2647	269	263	b	2	نَلِيْصَلِ	nalı̄ṣali	nalisali							
2648	269	263	c	1	لَكِنِ	lakini	lakini							
2649	269	263	c	2	بَبَا	babā	baba							
2651	269	263	d	1	اِنَ	ina	ina							
2670	271	265	c	1	حَتَ	ḥata	hata							
2654	270	264	a	1	نَمِ	nami	nami							
2655	270	264	a	2	كِپَتَ	kipata	kipata							
2657	270	264	b	1	پَانَ	pāna	pana							
2674	272	266	a	1	كِسَ	kisa	kisa							
2675	272	266	a	2	اُوِنْڠَ	uwinga	uwinga							
2686	273	267	a	1	سُرَا	surā	sura							
2688	273	267	a	3	وُبَرَانِ	wubarāni	wubarani							
2677	272	266	b	1	اِيُ	iyu	iyu							
2679	272	266	b	3	كَپِتَ	kapita	kapita							
2702	274	268	c	1	نِتَرُدِ	nitarudi	nitarudi							
2696	274	268	a	1	كِپِجَ	kipija	kipija							
2697	274	268	a	2	فِكِرَا	fikirā	fikira							
2699	274	268	b	1	كَلَنْدَمَ	kalandama	kalandama							
2700	274	268	b	2	ڠُوْ	guu	guu							
2701	274	268	b	3	لَنْڠُ	langu	langu							
2710	275	269	a	3	نْيُمَ	nyuma	nyuma							
2705	274	268	d	1	سَسَا	sasā	sasa							
2708	275	269	a	1	كِسَ	kisa	kisa							
2713	275	269	b	3	كَيَنْدَمَ	kayandama	kayandama							
2629	267	261	b	1	نَمَمَ	namama	namama		na mama					
2640	268	262	c	2	زِؤُ	ziu	ziu		zeo					
2703	274	268	c	2	پَلِيْ	palii	palii		pale					
2704	274	268	c	3	پَنْغُ	panghu	panghu		pangu					
2707	274	268	d	3	كَرِجِيَا	karijiyā	karijiya		karejeya					
2709	275	269	a	2	كَرُدِيَا	karudiyā	karudiya		karudia					
2711	275	269	b	1	حَپُ	ḥapu	hapu		hapo					
2712	275	269	b	2	نْدِيَا	ndiyā	ndiya		ndia					
2715	275	269	c	2	مِيِرِ	miyiri	miyiri		mitende					
2716	275	269	c	3	كِكُمَ	kikuma	kikuma		kikoma					
2718	275	269	d	2	اِمِسِمَمِيَا	imisimamiyā	imisimamiya		imesimamiya					
3169	322	316	b	1	حَيَازُوِيَ	ḥayāzuwiya	hayazuwiya		hayazoea					he was not yet accustoed to battle --
2717	275	269	d	1	صَلٰ	ṣalä	sala							
2719	276	270	a	1	اَوَالِ	awāli	awali							
2750	279	273	b	1	وَسِيُوْنِ	wasiyūni	wasiyuni							
2751	279	273	b	2	مَيَحُدِ	mayaḥudi	mayahudi							
2726	276	270	c	3	اَخِيْرِ	akhı̄ri	ahiri							
2727	276	270	d	1	مَعَنَ	maʿana	maana							
2768	281	275	a	2	اَكَتَزَامَ	akatazāma	akatazama							
2729	277	271	a	1	اَكِسَا	akisā	akisa							
2730	277	271	a	2	كُمپُلِيْكَ	kumpulı̄ka	kumpulika							
2752	279	273	c	1	كْوَنِ	kwani	kwani							
2732	277	271	b	2	اَكَتَمْكَ	akatamka	akatamka							
2733	277	271	c	1	كَلَمَ	kalama	kalama							
2754	279	273	d	1	وَتُ	watu	watu							
2741	278	272	b	2	كُيَ	kuya	kuya							
2742	278	272	b	3	سَلَامَ	salāma	salama							
2770	281	275	b	2	اَكَفَهَمَ	akafahama	akafahama							
2746	278	272	d	1	حَطَتِ	ḥaṭati	hatati							
2759	280	274	a	3	كِتِنِ	kitini	kitini							
2792	283	277	d	1	كْوَ	kwa	kwa							
2762	280	274	c	1	كْوَ	kwa	kwa							
2781	282	276	b	2	اَكَتَمْكَ	akatamka	akatamka							
2786	283	277	a	1	كْوَا	kwā	kwa							
2775	281	275	d	3	مَرَ	mara	mara							
2782	282	276	c	1	ػَكُلَ	kʲakula	chakula							
2777	282	276	a	1	كْوَا	kwā	kwa							
2791	283	277	c	2	هُمْپَپَتِكَا	humpapatikā	humpapatika							
2785	282	276	d	2	هُوَاتِلِيَ	huwātiliya	huwatiliya							
2788	283	277	b	1	خَبَرِ	khabari	habari							
2789	283	277	b	2	اَكَتَمْكَ	akatamka	akatamka							
2793	283	277	d	2	اُثَقِيْلِ	uthaqı̄li	uthaqili							
2800	284	278	c	2	سَسَا	sasā	sasa							
2801	284	278	c	3	هُمْپُلِكَا	humpulikā	humpulika							
2714	275	269	c	1	پِنْيِ	pinyi	pinyi		penye					
2721	276	270	b	1	رِپُ	ripu	ripu		ndipo					
3295	335	329	c	1	كْوَا	kwā	kwa							
2803	284	278	d	2	هُتْوَامْنِيَا	hutwāmniyā	hutwamniya							
2799	284	278	c	1	نَا	nā	na							
2811	285	279	d	2	كُمْوَنْدَمِيَا	kumwandamiyā	kumwandamiya							
2835	288	282	b	2	سَلَامَ	salāma	salama							
2816	286	280	b	2	كِتِيْنِ	kitı̄ni	kitini							
2836	288	282	c	1	كَمْرُدِشَا	kamrudishā	kamrudisha							
2837	288	282	c	2	كَلِيْمَ	kalı̄ma	kalima							
2819	286	280	d	1	سَلَامُ	salāmu	salamu							
2820	286	280	d	2	هُوَاپِسِيَا	huwāpisiyā	huwapisiya							
2872	292	286	b	1	ػَكُلَ	kʲakula	chakula							
2822	287	281	a	2	اَكَنُظُمُ	akanuẓumu	akanudhumu							
2873	292	286	b	2	كِيْكُ	kı̄ku	kiku		kiko					
2823	287	281	b	1	كُوَاپِسِيْزَا	kuwāpisı̄zā	kuwapisiza							
2824	287	281	b	2	سَلَامُ	salāmu	salamu							
2839	288	282	d	2	كَمْوَمْبِيَا	kamwambiyā	kamwambiya							
2826	287	281	c	2	كْوَ	kwa	kwa							
2827	287	281	c	3	تِمَامُ	timāmu	timamu							
2830	288	282	a	1	كْوَا	kwā	kwa							
2832	288	282	a	3	كِسَا	kisā	kisa							
2849	290	284	a	1	اَكَئِنُكَ	akainuka	akainuka							
2856	290	284	c	3	كْوَانِ	kwāni	kwani							
2874	292	286	b	3	طَيَرِا	ṭayariā	tayaria	ṭayarī	tayari					
2869	292	286	a	1	كَبَ	kaba	kaba		kamba					
2870	292	286	a	2	سُبِرِ	subiri	subiri							
2864	291	285	c	1	سَعَ	saʿa	saa							
2861	291	285	a	2	اَكَتَمْكَ	akatamka	akatamka							
2871	292	286	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2876	292	286	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari					
2877	292	286	d	1	حَپُ	ḥapu	hapu		hapo					
2875	292	286	c	1	تُمْلِشِ	tumlishi	tumlishi		tumlishe					
2881	293	287	a	2	اَكَيْنُكَ	akaynuka	akaynuka		akainuka					
2883	293	287	b	2	اُپِسِ	upisi	upisi		upesi					
2880	293	287	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2878	292	286	d	2	كَكِتِ	kakiti	kakiti		kaketi					
2879	292	286	d	3	نَبِيَا	nabiyā	nabiya		Nabiya					
2884	293	287	b	3	نَحَرَكَ	naḥaraka	naharaka		na haraka					
2886	293	287	c	2	اَكَكِيْوِكَ	akakı̄wika	akakiwika		akakiweka					
2802	284	278	d	1	مَنِنُيِ	maninuyi	maninuyi		manenoye					
2804	285	279	a	1	عَلِيْ	ʿalii	alii		Ali					
2882	293	287	b	1	كْوَ	kwa	kwa							
2888	293	287	d	2	كَوَاپِكِيَا	kawāpikiyā	kawapikiya		kawapekeya					
2885	293	287	c	1	ػَكُلَ	kʲakula	chakula							
2887	293	287	d	1	نَمَيِ	namayi	namayi		na mayi					
2889	294	288	a	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka					The Bearer of Good Tidings got up
2890	294	288	a	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2946	299	293	d	2	اَكَوَاپِكِيْيَا	akawāpikı̄yā	akawapikiya		akawapekeya					
2918	297	291	a	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka					
2891	294	288	b	1	پَمُيَا	pamuyā	pamuya		pamoya					along with Ja'far
2892	294	288	b	2	نَجَعْفَرِا	najaʿfariā	najafaria	najaʿfarī	na Jaafari					
2919	297	291	a	2	كِتِيْنِ	kitı̄ni	kitini							
2893	294	288	c	1	نَعَلِيْ	naʿalii	naalii		na Ali					and Ali the Lionlike --
2894	294	288	c	2	هَيْدَارِ	haydāri	haydari		Haidari					
2895	294	288	d	1	وُتِيْ	wutii	wutii		wote					they all gathered together.
2896	294	288	d	2	وَكَهُظُرِيَا	wakahuẓuriyā	wakahudhuriya							
2935	298	292	d	1	تُمْوَ	tumwa	tumwa		Tumwa					
2936	298	292	d	2	اَكَيْتُكِيْيَا	akaytukı̄yā	akaytukiya		akaitokeya					
2897	295	289	a	1	وَكَكِتِ	wakakiti	wakakiti		wakaketi					
2898	295	289	a	2	كْوَ	kwa	kwa							
2899	295	289	a	3	مْفُنُ	mfunu	mfunu		mfano	*				
2920	297	291	b	1	كَپُوَا	kapuwā	kapuwa		kapoa					
2921	297	291	b	2	مَايِ	māyi	mayi							
2900	295	289	b	1	وَكَتَغَنْيَ	wakataghanya	wakataghanya		wakatanganya					
2901	295	289	b	2	مِكُنُ	mikunu	mikunu		mikono					
2922	297	291	b	3	اَمِنِ	amini	amini		Amini					
2902	295	289	c	1	جُمْلَ	jumla	jumla							
2903	295	289	c	2	وَتُ	watu	watu							
2904	295	289	c	3	وَتَنُ	watanu	watanu							
2923	297	291	c	1	نَيَكُنْوَا	nayakunwā	nayakunwa		na ya kunwa					
2905	295	289	d	1	وَلَا	walā	wala							
2906	295	289	d	2	اَسِلِ	asili	asili		asile					
2907	295	289	d	3	نَبِيَا	nabiyā	nabiya		Nabiya					
2924	297	291	c	2	كِكُمْبِنِ	kikumbini	kikumbini		kikombeni					
2908	296	290	a	1	مَرَا	marā	mara							
2909	296	290	a	2	تَتُ	tatu	tatu							
2910	296	290	a	3	كْوَ	kwa	kwa							
2911	296	290	a	4	حَقِيْكَ	ḥaqı̄ka	haqika		hakika					
2925	297	291	d	1	نَيِ	nayi	nayi		naye					
2912	296	290	b	1	مكُنُ	mkunu	mkunu		mkono					
2913	296	290	b	2	اَلِوُپِيْكَ	aliwupı̄ka	aliwupika		aliupeka					
2926	297	291	d	2	اَكَسُكُتُلِيَا	akasukutuliyā	akasukutuliya							
2914	296	290	c	1	اَكِسَ	akisa	akisa							
2915	296	290	c	2	اَلِئِيْنُكَ	aliı̄nuka	aliinuka							
2959	301	295	c	1	كَمَ	kama	kama							
2916	296	290	d	1	وَوُ	wawu	wawu							
2937	299	293	a	1	كُتُكَ	kutuka	kutuka		kutoka					When the Prophet had gone,
2927	298	292	a	1	تَمْبُوُ	tambuwu	tambuwu		tambuu					
2928	298	292	a	2	يَكُخِتَرِ	yakukhitari	yakuhitari		ya kuhitari					
2938	299	293	a	2	تُمْوَ	tumwa	tumwa		Tumwa					
2939	299	293	a	3	اَكِسَا	akisā	akisa							
2929	298	292	b	1	حَپُ	ḥapu	hapu		hapo					
2930	298	292	b	2	كَپُوَ	kapuwa	kapuwa		kapoa					
2931	298	292	b	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2932	298	292	c	1	اَكَوَاَڠَا	akawaagā	akawaaga							
2933	298	292	c	2	كْوِ	kwi	kwi		kwa	*				
2934	298	292	c	3	حِيْرِ	ḥı̄ri	hiri		heri					
2947	300	294	a	1	اَكَيِيُوْنَ	akayiyūna	akayiyuna		akaiona					Fatima saw it,
2948	300	294	a	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2940	299	293	b	1	نَوُ	nawu	nawu		nao					and they had finished eating,
2941	299	293	b	2	كُلَ	kula	kula							
2942	299	293	b	3	وَمِكْوِسَا	wamikwisā	wamikwisa		wamekwisa					
2943	299	293	c	1	فَطِيمَ	faṭı̄ma	fatima		Fatima					Fatima boiled [water],
2944	299	293	c	2	اَكَيْتُكُسَا	akaytukusā	akaytukusa		akaitokosa					
2953	300	294	d	1	مَيُوْتُ	mayūtu	mayutu		mayuto					remorse for it came back to her.
2954	300	294	d	2	يَكَمْرُدِيَا	yakamrudiyā	yakamrudiya							
2949	300	294	b	1	پِتِ	piti	piti		pete					the ring, and looked at it --
2950	300	294	b	2	اَكَيْتَزَامَ	akaytazāma	akaytazama		akaitazama					
2951	300	294	c	1	يَپِسِيُوُ	yapisiyuwu	yapisiyuwu		yapisieyo	*				what had happened in the past,
2952	300	294	c	2	يَنْيُمَ	yanyuma	yanyuma		ya nyuma					
2956	301	295	a	2	اَكَتَمْكَ	akatamka	akatamka							
2964	302	296	a	2	اَكَرَدِيْدِ	akaradı̄di	akaradidi							
2955	301	295	a	1	عِلِيْ	ʿilii	ilii		Ali	*				
3365	342	336	d	1	عَقِيْلِ	ʿaqı̄li	aqili		akili					
3452	351	345	a	2	كَفَصِيْرِ	kafaṣı̄ri	kafasiri							
2967	302	296	b	3	بَعِيْدِ	baʿı̄di	baidi							
2970	302	296	c	3	سِنَا	sinā	sina							
2971	302	296	c	4	بُدِ	budi	budi							
2972	302	296	d	1	اِلَا	ilā	ila							
2974	302	296	d	3	تَكْوَمْبِيَ	takwambiya	takwambiya							
2975	303	297	a	1	اَكِسِكِيَا	akisikiyā	akisikiya							
3016	307	301	b	1	كُنَ	kuna	kuna							
3017	307	301	b	2	جَبَرِ	jabari	jabari							
3001	305	299	d	1	حُجَا	ḥujā	huja							
2979	303	297	b	3	نْيُمْبَانِ	nyumbāni	nyumbani							
3002	305	299	d	2	سِكُمْسِكِيَا	sikumsikiyā	sikumsikiya							
2981	303	297	c	2	كْوَ	kwa	kwa							
2983	303	297	d	1	خَبَرِ	khabari	habari							
2984	303	297	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya							
2986	304	298	a	2	كُفِيكَ	kufı̄ka	kufika							
3003	306	300	a	1	كُرُدِ	kurudi	kurudi							
2987	304	298	b	1	كْوَا	kwā	kwa							
2989	304	298	b	3	اَكَتَمْكَ	akatamka	akatamka							
2990	304	298	c	1	مَمَ	mama	mama							
2991	304	298	c	2	اَمِكَصِيْرِكَ	amikaṣı̄rika	amikasirika							
3036	309	303	b	4	پْوِكِ	pwiki	pwiki							
2993	304	298	d	2	نَكْوَمْبِيَا	nakwambiyā	nakwambiya							
2997	305	299	b	2	كْوَ	kwa	kwa							
2998	305	299	b	3	نِنِ	nini	nini							
3011	306	300	d	1	هُكُ	huku	huku							
3013	306	300	d	3	هُسِكِيَا	husikiyā	husikiya							
3014	307	301	a	1	اَكَمْجِبُ	akamjibu	akamjibu							
3023	308	302	a	1	اَكَپِتَ	akapita	akapita							
3025	308	302	b	1	اَكَرَادِدِ	akarādidi	akaradidi							
3027	308	302	c	1	اَسَ	asa	asa							
3040	309	303	d	1	خَبَرِ	khabari	habari							
3045	310	304	b	2	يَا	yā	ya							
3044	310	304	b	1	جَمِعِ	jamiʿi	jamii							
2961	301	295	d	1	يِوُ	yiwu	yiwu		yeo					
2994	305	299	a	1	كَمُوُلِيْزَ	kamuwulı̄za	kamuwuliza		kamuuliza					
2995	305	299	a	2	امِيْنِ	āmı̄ni	amini		Amini					
2996	305	299	b	1	مِكَسِيْرِكَ	mikası̄rika	mikasirika		mekasirika					
3000	305	299	c	2	هَكُبَيِنِ	hakubayini	hakubayini		hakubaini					
3004	306	300	a	2	كْوَاكِ	kwāki	kwaki		kwake					
3005	306	300	a	3	نْدِيَانِ	ndiyāni	ndiyani		ndiani					
3006	306	300	b	1	اَكَمُوُنَ	akamuwuna	akamuwuna		akamuona					
3007	306	300	b	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni					
3008	306	300	c	1	اَتِيْ	atii	atii		ati					
3009	306	300	c	2	مِكُيَ	mikuya	mikuya		mekuya					
3010	306	300	c	3	مْڠِيْنِ	mgı̄ni	mgini		mgeni					
3012	306	300	d	2	كْوِنُ	kwinu	kwinu		kwenu					
3015	307	301	a	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni					
3018	307	301	b	3	مْوِيْنِ	mwı̄ni	mwini		muini					
3021	307	301	d	1	هِيُ	hiyu	hiyu		hiyo					
3043	310	304	a	2	خَبَرِ	khabari	habari							
3049	310	304	d	1	وَ	wa	wa							
3058	311	305	c	1	اُوِنْڠَ	uwinga	uwinga							
3059	311	305	c	2	اُنَ	una	una							
3060	311	305	c	3	خَطَرِ	khaṭari	hatari							
3102	315	309	d	2	هُكاوَامبِيَا	hukāwāmbiyā	hukawambiya							
3068	312	306	c	1	اَوْ	aw	au							
3103	316	310	a	1	اَكَمْجِبُ	akamjibu	akamjibu							
3074	313	307	a	2	كَنُظُمُ	kanuẓumu	kanudhumu							
3090	314	308	c	2	كْوَا	kwā	kwa							
3091	314	308	c	3	حِيْمَ	ḥı̄ma	hima							
3075	313	307	b	1	كْوَنِ	kwani	kwani							
3077	313	307	b	3	حَرَامُ	ḥarāmu	haramu							
3079	313	307	c	2	حَنَا	ḥanā	hana							
3080	313	307	c	3	تَبَسَمُ	tabasamu	tabasamu							
3100	315	309	c	3	كْوَانِ	kwāni	kwani							
3121	317	311	d	1	اَتِ	ati	ati							
3108	316	310	c	1	مِمِ	mimi	mimi							
3111	316	310	d	1	اَمْبَ	amba	amba							
3113	316	310	d	3	هُنَمْبِيَا	hunambiyā	hunambiya							
3118	317	311	b	3	ػَنْدَانِ	kʲandāni	chandani							
3123	317	311	d	3	هُتِيَا	hutiyā	hutiya							
3120	317	311	c	2	كِسِمَانِ	kisimāni	kisimani							
3127	318	312	b	2	اُكَكَصِيْرِكَ	ukakaṣı̄rika	ukakasirika							
3125	318	312	a	2	اَكَتَمْكَ	akatamka	akatamka							
3540	360	354	a	1	كْوَانِ	kwāni	kwani							
3046	310	304	b	3	اَنْصَارِا	anṣāriā	ansaria	anṣārī	Ansari					
3537	359	353	c	3	كَرِيْمَ	karı̄ma	karima		Karimu	*				
3621	368	362	a	1	اَكَمْجِبُ	akamjibu	akamjibu							
3136	319	313	b	2	يَغُ	yaghu	yaghu							
3130	318	312	d	1	كَمَ	kama	kama							
3132	318	312	d	3	كِكْوَمْبِيَا	kikwambiyā	kikwambiya							
3138	319	313	b	4	غَيْضِا	ghayḍiā	ghaydhia							
3142	319	313	c	4	رَاضِ	rāḍi	radhi							
3170	322	316	b	2	زِتَنِ	zitani	zitani							
3144	319	313	d	2	نَمْبِيَا	nambiyā	nambiya							
3148	320	314	b	1	كِتُ	kitu	kitu							
3189	324	318	b	2	جِهَدِ	jihadi	jihadi							
3153	320	314	d	1	رَاضِ	rāḍi	radhi							
3156	321	315	a	2	كْوَ	kwa	kwa							
3157	321	315	a	3	لِسَانِ	lisāni	lisani							
3175	323	317	a	1	حَتَ	ḥata	hata							
3176	323	317	a	2	اَكِتِمُ	akitimu	akitimu							
3163	321	315	c	3	زِتَانِ	zitāni	zitani							
3177	323	317	a	3	مْوَاكَ	mwāka	mwaka							
3178	323	317	b	1	زِتَنِ	zitani	zitani							
3192	324	318	c	3	مَيَهُدِ	mayahudi	mayahudi							
3180	323	317	c	1	سَبَعَ	sabaʿa	sabaa							
3183	323	317	d	1	حُتِنْدَا	ḥutindā	hutinda							
3185	324	318	a	1	حَتَ	ḥata	hata							
3186	324	318	a	2	مْوَاكَ	mwāka	mwaka							
3187	324	318	a	3	اُكِزِدِ	ukizidi	ukizidi							
3193	324	318	d	1	هُتْوَا	hutwā	hutwa							
3207	326	320	a	2	سَسَا	sasā	sasa							
3203	325	319	d	1	نِنَ	nina	nina							
3205	325	319	d	3	تَكْوَمْبِيَا	takwambiyā	takwambiya							
3221	327	321	c	2	سِمْبَا	simbā	simba							
3133	319	313	a	1	نَسَسَا	nasasā	nasasa		na sasa					
3196	325	319	a	1	َالِپُ	ālipu	alipu		alipokuya					
3197	325	319	a	2	كُيَ	kuya	kuya		~					
3198	325	319	a	3	مُوِايْنِ	muwiāı̄ni	muwiayni	muwīı̄ni	muini					
3199	325	319	b	1	عَلِيْ	ʿalii	alii		Ali					
3200	325	319	b	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini					
3201	325	319	c	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia					
3202	325	319	c	2	اَمِينِ	amı̄ni	amini		Amini					
3204	325	319	d	2	يَمْبُ	yambu	yambu		yambo					
3206	326	320	a	1	نَپِنْدَ	napinda	napinda		napenda					
3208	326	320	a	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
3209	326	320	b	1	اِنِرِ	iniri	iniri		enende					
3210	326	320	b	2	پْوِكِ	pwiki	pwiki		pweke					
3211	326	320	b	3	جَعْفَرِا	jaʿfariā	jafaria	jaʿfarī	Jaafari					
3212	326	320	c	1	اَكَپِجِ	akapiji	akapiji		akapije					
3214	326	320	d	1	هُتُشَا	hutushā	hutusha		hutosha					
3215	326	320	d	2	كِمْواغَلِيَا	kimwāghaliyā	kimwaghaliya		kimwangaliya					
3219	327	321	b	2	رَسُوْلِ	rasūli	rasuli		Rasuli					
3216	327	321	a	1	اَكَشُكَا	akashukā	akashuka							
3222	327	321	c	3	وَوِلِ	wawili	wawili							
3225	328	322	a	1	اَكَتَمْكَ	akatamka	akatamka							
3252	331	325	a	1	مْوَانَ	mwāna	mwana							
3254	331	325	a	3	كِتِيْنِ	kitı̄ni	kitini							
3229	328	322	b	3	نْيُمْبَانِ	nyumbāni	nyumbani							
3287	334	328	d	1	كَتِكَ	katika	katika							
3233	328	322	d	2	دُنِيَا	duniyā	duniya							
3234	329	323	a	1	ػَمْبِوَ	kʲambiwa	chambiwa							
3235	329	323	a	2	هِيٗ	hiyo	hiyo							
3236	329	323	a	3	قَوْلِ	qawli	qauli							
3257	331	325	c	1	غَافُلَ	ghāfula	ghafula							
3241	329	323	d	2	وَكَنْدَمَ	wakandama	wakandama							
3260	331	325	d	2	نَمْكُلِيَا	namkuliyā	namkuliya							
3288	334	328	d	2	كْوَانْدَامَ	kwāndāma	kwandama							
3251	330	324	d	2	كُوَانْدَمِيَا	kuwāndamiyā	kuwandamiya							
3262	332	326	a	2	كِتِيْنِ	kitı̄ni	kitini							
3264	332	326	b	2	فِرَاشَنِ	firāshani	firashani							
3278	333	327	d	3	كَلِيَا	kaliyā	kaliya							
3290	334	328	d	4	يَا	yā	ya							
3286	334	328	c	3	ڠَنِ	gani	gani							
3294	335	329	b	2	اَكَفَهَمَ	akafahama	akafahama							
3292	335	329	a	2	كَلِمَ	kalima	kalima							
3296	335	329	c	2	ظَرُبُ	ẓarubu	dharubu							
3213	326	320	c	2	مَكُفَرِا	makufariā	makufaria	makufarī	makufari					
3725	378	372	b	2	مُيُنِ	muyuni	muyuni		moyoni					
3798	376	380	a	2	حَتَظِلِلِيْكَ	ḥataẓililı̄ka	hatadhililika							
3297	335	329	c	3	كَتَزَامَ	katazāma	katazama							
3303	336	330	b	2	نِپَا	nipā	nipa							
3308	336	330	d	2	كُئفِيَا	kufiyā	kufiya							
3337	340	334	a	2	كِپُلِكَ	kipulika	kipulika							
3314	337	331	c	1	اَكَسِمَامَ	akasimāma	akasimama							
3317	337	331	d	2	كَوَمْبِيَا	kawambiyā	kawambiya							
3355	341	335	d	2	وَافَهَمِيْيَا	wāfahamı̄yā	wafahamiya							
3338	340	334	b	1	صُبِرِ	ṣubiri	subiri							
3319	338	332	a	2	كِپُلِيْكَ	kipulı̄ka	kipulika							
3320	338	332	b	1	جَمِعِ	jamiʿi	jamii							
3322	338	332	c	1	حَتَ	ḥata	hata							
3323	338	332	c	2	اَكِسَا	akisā	akisa							
3324	338	332	c	3	كُزِيْكَ	kuzı̄ka	kuzika							
3326	338	332	d	2	اَسِكُيُوَا	asikuyuwā	asikuyuwa							
3341	340	334	c	1	مْتُ	mtu	mtu							
3329	339	333	a	3	كُزِكَ	kuzika	kuzika							
3333	339	333	c	2	اَكَتَمْكَ	akatamka	akatamka							
3335	339	333	d	2	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya							
3346	341	335	a	1	وَ	wa	wa							
3349	341	335	a	4	ڠَنِ	gani	gani							
3351	341	335	b	2	دُنِيَانِ	duniyāni	duniyani							
3372	343	337	c	1	تَكُپَ	takupa	takupa							
3373	343	337	c	2	زَنْڠُ	zangu	zangu							
3360	342	336	b	2	هُپِجَ	hupija	hupija							
3362	342	336	c	1	ػَمْبِوَا	kʲambiwā	chambiwa							
3363	342	336	c	2	هَيَ	haya	haya							
3379	344	338	a	3	نْدَ	nda	nda							
3300	336	330	a	1	كَمْوَاڠَلَِ	kamwāgalia	kamwagalia		kamwangalia					
921	95	93	a	1	قَدْ	qad	qad		qadi			The context of this stanza is unclear.  The first line seems to suggest that it is the epilogue of the episode of Ali and the devil (compare 197a), and the following lines may be a general reference to Satan.  However the overall sense, and especially 93d, seems to fit better with the preceding stanzas if we assume that Ali is making a final comment on the devil and his fate.  In either case, the transition to 94 is abrupt.		I have finished [bandying] words with you, [I said] --
953	98	96	b	1	سِمَحَبُ	simaḥabu	simahabu		si mahaba					
965	99	97	c	1	اَكَوازَوَا	akawāzawā	akawazawa		akazawa	*				
966	99	97	c	2	جَعْفَرِ	jaʿfari	jafari		Jaafari					
970	100	98	a	1	اَكَئِيَّڠَ	akaı̄yaga	akaiyaga		akayiaga					
990	102	100	a	2	پِنْدَا	pindā	pinda		~					
1	1	1	a	1	بِسِْمِلَهِ	bisimilahi	bisimilahi		bismillahi					\\q{In the name of God} at the beginning,
3	1	1	b	1	پْوِكِ	pwiki	pwiki		pweke					alone, without equal,
6	1	1	c	1	بِنْڠُ	bingu	bingu		mbingu					[Creator of] Paradise, the Beneficent -- 
8	1	1	c	3	مْفَضِلِ	mfaḍili	mfadhili		Mfadhili					
9	1	1	d	1	رِيُ	riyu	riyu		ndiyo					that is what is written [first].
66	7	7	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli					
12	2	2	a	2	اِخْوَانِ	ikhwāni	ihwani		ihiwani					
50	5	5	d	2	كُمُوَاتِيَا	kumuwātiyā	kumuwatiya					\\q{I succeeded in leaving it with her}.		
10	1	1	d	2	اَلُتَنْرِكِوَ	alutanrikiwa	alutanrikiwa		alotandikiwa					
28	3	3	d	1	كِصَ	kiṣa	kisa		kisa					
29	3	3	d	2	ػَلُ	kʲalu	chalu		chalonijiriya					
4	1	1	b	2	اَسِيُ	asiyu	asiyu		asiyo					
5	1	1	b	3	مِثَلِ	mithali	mithali							
1106	115	112	a	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia					
1107	115	112	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
1108	115	112	b	1	مْوَانَ	mwāna	mwana		mwana-adamu					
1109	115	112	b	2	اَدَمُ	adamu	adamu		~					
1143	118	115	c	3	حِتْوَاأِيِ	ḥitwaiyi	hitwaiyi		hitwaye	*				
1145	118	115	d	2	نِمِمِ	nimimi	nimimi		ni mimi					
1146	118	115	d	3	عَلِيَا	ʿaliyā	aliya		Aliya					
1147	119	116	a	1	نِڠَلِ	nigali	nigali		ningalipoteza					
1148	119	116	a	2	پُتِيْزَا	putı̄zā	putiza		~					
1150	119	116	b	1	كَبَ	kaba	kaba		kamba					
1154	119	116	d	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1156	120	117	a	1	وِوِ	wiwi	wiwi		wewe					
1160	120	117	b	2	حُمُوُزِ	ḥumuwuzi	humuwuzi		humuuzi					
1162	120	117	c	1	حُنِئُنْيَ	ḥuniunya	huniunya		hunionya					
1164	120	117	d	1	وَلِأُنَ	waliuna	waliuna		waliona					
1166	121	118	a	1	كَنْدَا	kandā	kanda		kwanda					
1168	121	118	a	3	پِتِ	piti	piti		pete					
1171	121	118	b	2	اُوِ	uwi	uwi		uwe					
1172	121	118	b	3	نِبَبَڠُ	nibabagu	nibabagu		ni babangu					
1173	121	118	c	1	اُمِنِتِيَا	uminitiyā	uminitiya		umenitia					
1175	121	118	d	1	مُيِلِنِ	muyilini	muyilini		muilini					
1176	121	118	d	2	كُنِنِيَا	kuniniyā	kuniniya		kunendeya					
1177	122	119	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia					
1178	122	119	a	2	مَمَكِ	mamaki	mamaki		mamake					
1181	122	119	b	3	زَاكِ	zāki	zaki		zake					
1182	122	119	c	1	نَيِ	nayi	nayi		naye					
1183	122	119	c	2	حَپُ	ḥapu	hapu		hapo					
1184	122	119	c	3	اَتَمْكِ	atamki	atamki		atamke					
1186	122	119	d	2	لَكِ	laki	laki		lake					
1188	123	120	a	1	كَمْوَمْبِيَا	kamwambiyā	kamwambiya		kamwambia					
1192	123	120	b	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1194	123	120	c	2	عَلِى	ʿalii	alii		Ali					
1195	123	120	c	3	حَيْدَارِ	ḥaydāri	haydari		Haidari					
1196	123	120	d	1	نَمْوَاكَا	namwākā	namwaka		na mwaka					
1197	123	120	d	2	نِوَا	niwā	niwa		ni wa					
1231	128	124	a	2	قَوُلِ	qawuli	qawuli		qauli					
1242	129	125	b	3	زَكُ	zaku	zaku		nenda					
1244	129	125	c	2	نَمَامَكِ	namāmaki	namamaki		na mamake					
1245	129	125	d	1	نَنْدُزُ	nanduzu	nanduzu		na nduzu					
1251	130	126	b	1	كَمْوَامْبِيَ	kamwāmbiya	kamwambiya		kamwambia					
1256	130	126	d	1	نَتُمْوَا	natumwā	natumwa		na Tumwa					
1259	132	127	a	2	اَبُوْ	abuu	abuu		Abu					
1260	132	127	a	3	بَكرَرِ	bakrari	bakrari		Bakari					
1261	132	127	b	1	اَزْوَاجِ	azwāji	azwaji		Aziwaji					
1263	132	127	b	3	زُبِيْرِا	zubı̄riā	zubiria	zubīrī	Zubiri					
1265	132	127	c	2	زَوُ	zawu	zawu		zao					
1266	132	127	c	3	اِظْهَرِ	iẓhari	idhhari		idhihari					
1267	132	127	d	1	هَوُ	hawu	hawu		hao					
1270	133	128	a	2	هَپُ	hapu	hapu		hapo					
1271	133	128	a	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1272	133	128	b	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia					
1274	133	128	b	3	حِيْرِا	ḥı̄riā	hiria	ḥı̄rī	heri					
1275	133	128	c	1	نَعَلِيْ	naʿalii	naalii		na Ali					
1276	133	128	c	2	هَيْدَارِ	haydāri	haydari		Haidari					
1277	133	128	d	1	مْغُ	mghu	mghu		Mngu					
1278	133	128	d	2	اَكَمُوُمبِيَا	akamuwumbiyā	akamuwumbiya		akamuombeya					
1280	134	129	a	2	كَنْڠِيَا	kangiyā	kangiya		kangiya					
1281	134	129	a	3	كْوَكِ	kwaki	kwaki		kwake					
1282	134	129	b	1	كِيْرَا	kı̄rā	kira		kenda					
1284	134	129	b	3	مُعْلِمُ	muʿlimu	mulimu		mualimu	*				
1285	134	129	b	4	وَكِا	wakiā	wakia	wakī	wake					
1288	134	129	c	3	زَاكِيْ	zākii	zakii		zake					
1289	134	129	d	1	كْوَاوُ	kwāwu	kwawu		kwao					
1293	135	130	b	1	اَكَلِيَ	akaliya	akaliya		akalia					
1295	135	130	c	1	كَبَ	kaba	kaba		kamba					
1296	135	130	c	2	وَانِتِيَ	wānitiya	wanitiya		wanitia					
1298	135	130	d	1	هَيُ	hayu	hayu		hayo					
1299	135	130	d	2	اُمِزُنَمْبِيَا	umizunambiyā	umizunambiya		umezonambiya					
1321	137	132	d	2	وَكُتَغُلِيَا	wakutaghuliyā	wakutaghuliya		wakutanguliya					
1330	138	133	d	1	نَزَايْدِ	nazāı̄di	nazaydi		na zaidi					
1331	138	133	d	2	كُكْوِتِيَا	kukwitiyā	kukwitiya		kukweteya					
1340	140	135	a	1	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia					
1341	140	135	a	2	نِنْرَ	ninra	ninra		nenda					
1343	140	135	b	1	كَمْوِلِيْزِ	kamwilı̄zi	kamwilizi		kamweleze					
1345	140	135	c	1	اُسِكِيْزِ	usikı̄zi	usikizi		usikize					
1346	140	135	c	2	مَتَمْكُ	matamku	matamku		matamko					
1347	140	135	d	1	نَيِ	nayi	nayi		naye					
1348	140	135	d	2	تَكَيُ	takayu	takayu		takayokwambiya					
1349	140	135	d	3	كْوَمْبِيَا	kwambiyā	kwambiya		~					
1351	141	136	a	2	هِيُ	hiyu	hiyu		hiyo					
70	7	7	c	2	مْوِنْيِ	mwinyi	mwinyi		mwenye					
54	6	6	b	1	اُنَ	una	una							
1353	141	136	b	1	نَيِ	nayi	nayi		naye					
1354	141	136	b	2	نْدِيَا	ndiyā	ndiya		ndia					
1356	141	136	c	1	مُيُ	muyu	muyu		moyo					
1360	141	136	d	2	مَمَكِيْ	mamakii	mamakii		mamake					
1361	141	136	d	3	اَكِغِيَا	akighiyā	akighiya		akingiya					
1362	142	137	a	1	كَغِيَ	kaghiya	kaghiya		kangia					
1363	142	137	a	2	كَوِكَ	kawika	kawika		kaweka					
1366	142	137	b	2	اُپُوْلِ	upūli	upuli		upole					
1367	142	137	b	3	نَثَوَابُ	nathawābu	nathawabu		na thawabu					
1368	142	137	c	1	مَمَكِيْ	mamakii	mamakii		mamake					
1370	142	137	d	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1371	142	137	d	2	اَكَمْوَامْبِيَا	akamwāmbiyā	akamwambiya		akamwambia					
1373	143	138	a	2	سِوِوِ	siwiwi	siwiwi		si wewe					
1374	143	138	a	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1375	143	138	b	1	وَاُتِشُوْ	wautishuu	wautishuu		wa utisho					
1376	143	138	b	2	نَجَوُرِ	najawuri	najawuri		na jauri					
1377	143	138	c	1	هُغِيَ	hughiya	hughiya		hungia					
1381	143	138	d	1	مْتُا	mtuā	mtua	mtū	mtu					
1382	143	138	d	2	اَمِزُكِمْبِيَا	amizukimbiyā	amizukimbiya		amezokimbia					
1383	144	139	a	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri					
1384	144	139	a	2	اَتَمْكِيْ	atamkii	atamkii		atamke					
1385	144	139	b	1	نِيْرُيِ	nı̄ruyi	niruyi		ni nduye					
1386	144	139	b	2	كِنُنَ	kinuna	kinuna		kinona					
1387	144	139	b	3	ػَكِ	kʲaki	chaki		chake					
1388	144	139	c	1	عَيْنِ	ʿayni	ayni		aini					
1389	144	139	c	2	يَمَتُ	yamatu	yamatu		ya mato					
1390	144	139	c	3	يَكِ	yaki	yaki		yake					
1392	144	139	d	2	كُتْوَاغَلِيَا	kutwāghaliyā	kutwaghaliya		kutwangaliya					
1393	145	140	a	1	اِوِ	iwi	iwi		ewe					
1395	145	140	a	3	سِوُظِيْكِ	siwuẓı̄ki	siwudhiki		siudhike					
1396	145	140	b	1	تَكْوَامْبِيَ	takwāmbiya	takwambiya		takwambia					
1397	145	140	b	2	حُجَ	ḥuja	huja							
1398	145	140	b	3	يَكِ	yaki	yaki		yake					
1399	145	140	c	1	يِوُ	yiwu	yiwu		yeo					
1402	145	140	c	4	وَاكِ	wāki	waki		wake					
1404	145	140	d	2	وَمِپُتِيَا	wamiputiyā	wamiputiya		wamepoteya					
1414	147	142	a	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka					
1415	147	142	a	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1417	147	142	b	2	نَصِيْرِا	naṣı̄riā	nasiria	naṣı̄rī	Nasiri					
1420	147	142	d	1	يِوُ	yiwu	yiwu		yeo					
1421	147	142	d	2	نِكِكْوَاغَلِيَا	nikikwāghaliyā	nikikwaghaliya		nikikwangaliya					
1422	148	143	a	1	حَپُ	ḥapu	hapu		hapo					
1426	148	143	b	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1428	148	143	c	2	نِمْبَصِيْرِ	nimbaṣı̄ri	nimbasiri		ni mi Nasiri	*				
1429	148	143	d	1	هَيُ	hayu	hayu		hayo					
1430	148	143	d	2	حَڠَلِيْكْوَمْبِيَا	ḥagalı̄kwambiyā	hagalikwambiya		hangalikwambiya					
1431	149	144	a	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri					
1432	149	144	a	2	نِرُ	niru	niru		ni nduyako					
1433	149	144	a	3	يَكُ	yaku	yaku							
1434	149	144	b	1	مْوَانَغُ	mwānaghu	mwanaghu		mwanangu					
1435	149	144	b	2	مْتُتُ	mtutu	mtutu		mtoto					
1438	149	144	c	2	نِعَوْنِ	niʿawni	niauni		ni auni					
1439	149	144	c	3	يَكُا	yakuā	yakua	yakū	yako					
1442	150	145	a	1	اَلِئِنَمِيَا	aliinamiyā	aliinamiya		aliinamia					
1445	150	145	b	2	هَنِيْنِ	hanı̄ni	hanini		haneni					
1446	150	145	c	1	يَمِكُپَتَ	yamikupata	yamikupata		yamekupata					
1447	150	145	c	2	مْوِنْدَانِ	mwindāni	mwindani		mwendani					
1448	150	145	d	1	حَيُ	ḥayu	hayu		hayo					
1449	150	145	d	2	نِمِزُكْوَامْبِيَا	nimizukwāmbiyā	nimizukwambiya		nimezokwambiya					
1492	154	149	d	2	مِنْيِ	minyi	minyi		mwenye					
1494	155	150	a	1	كِكُوُلِزَ	kikuwuliza	kikuwuliza		kikuuliza					
1495	155	150	a	2	اَلِكُ	aliku	aliku		aliko					
1498	155	150	b	3	هَكُ	haku	haku		hako					
1499	155	150	c	1	تَنْغُ	tanghu	tanghu		tangu					
1502	155	150	c	4	يَكُ	yaku	yaku		yako					
1503	155	150	d	1	اَلِفَرِقِ	alifariqi	alifariqi		alifariki					
1505	156	151	a	1	كِكْوَامْبِيَا	kikwāmbiyā	kikwambiya		kikwambia					
1506	156	151	a	2	نِمُوِنِ	nimuwini	nimuwini		ni muini					
1507	156	151	b	1	اُتَغِوُزَا	utaghiwuzā	utaghiwuza		utageuza					
1508	156	151	b	2	مَغِيْنِ	maghı̄ni	maghini		mangine					
1510	156	151	c	2	وَفِيْنِ	wafı̄ni	wafini		wafene					
1511	156	151	d	1	خِرِ	khiri	hiri		heri					
1512	156	151	d	2	كُيْنْمَلِيَ	kuynmaliya	kuynmaliya		kuinyamalia	*				
1513	157	152	a	1	وِوِ	wiwi	wiwi		wewe					
1514	157	152	a	2	حُيُوَا	ḥuyuwā	huyuwa		huyua					
1517	157	152	b	2	مَكَ	maka	maka		Maka					
1518	157	152	b	3	حُكُيِسِ	ḥukuyisi	hukuyisi		hukuisi					
1519	157	152	c	1	وِنْرِ	winri	winri		wende					
1521	157	152	c	3	مَجْلِسِ	majlisi	majlisi		majilisi					
1522	157	152	d	1	اُكَمُوُنَ	ukamuwuna	ukamuwuna		ukamuona					
1523	157	152	d	2	عَلِيَا	ʿaliyā	aliya		Aliya					
1524	158	153	a	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1525	158	153	a	2	كَبَيَنِ	kabayani	kabayani							
1526	158	153	b	1	تُمِوُنَنَ	tumiwunana	tumiwunana		tumeonana					
1529	158	153	c	2	زَاكِ	zāki	zaki		zake					
1530	158	153	c	3	مُعَيَاَنِ	muʿayaani	muayaani		muayani					
1532	158	153	d	2	تَكْوَمْبِيَا	takwambiyā	takwambiya		takwambia					
1536	159	154	b	2	سِيُ	siyu	siyu		siyo					
1537	159	154	b	3	اُنِرُوْدِا	unirūdiā	unirudia	unirūdī	unirudi					
1538	159	154	c	1	كِيْمُ	kı̄mu	kimu		kimo					
1539	159	154	c	2	ػَكِ	kʲaki	chaki		chake					
1542	159	154	d	2	ػَنْغُ	kʲanghu	changhu		changu					
1543	159	154	d	3	اَغَلِيَا	aghaliyā	aghaliya		angaliya					
1544	160	155	a	1	نَلَپِلِ	nalapili	nalapili		na la pili					
1545	160	155	a	2	مْبَيَنِ	mbayani	mbayani					\\Swa{m-} = \\Swa{ni-}.  Compare 112a and 304c.		
1546	160	155	b	1	نْيِيْ	nyii	nyii		nyee					
1547	160	155	b	2	زَاكِ	zāki	zaki		zake					
1549	160	155	b	4	كِطَنِ	kiṭani	kitani		kitwani					
1550	160	155	c	1	هَكُمِيَا	hakumiyā	hakumiya		hakumea					
1552	160	155	d	1	نَكَمَ	nakama	nakama		na kama					
1553	160	155	d	2	سِيُ	siyu	siyu		siyo					
1555	161	156	a	1	نَلَتَتُ	nalatatu	nalatatu		na la tatu					
1559	161	156	b	3	يَكُزِيْمُ	yakuzı̄mu	yakuzimu		ya kuzimu					
1561	161	156	c	2	زَكِ	zaki	zaki		zake					
1564	161	156	d	1	نِحِزُوْ	niḥizuu	nihizuu		ni hizo					
1565	161	156	d	2	نِمِكْوَمْبِيَا	nimikwambiyā	nimikwambiya		nimekwambiya					
1566	162	157	a	1	نِرَاءُفُ	niraufu	niraufu		ni raufu					
1568	162	157	a	3	مَنِيْنُ	manı̄nu	maninu		maneno					
1570	162	157	b	2	نِجَڠِنَ	nijagina	nijagina		ni jagina					
1571	162	157	b	3	مْنُ	mnu	mnu		mno					
1572	162	157	c	1	نَوْ	naw	nau		na ukitaka					
1574	162	157	c	3	مْفَنُ	mfanu	mfanu		mfano					
1576	162	157	d	2	نِمْكُپِجِيَا	nimkupijiyā	nimkupijiya		nimekupijiya	*				
1577	163	158	a	1	هَيُ	hayu	hayu		hayo					
1578	163	158	a	2	اُنَمْبِيَوُ	unambiyawu	unambiyawu		unambiao					
1579	163	158	b	1	نِكْوِيْلِ	nikwı̄li	nikwili		ni kweli					
1580	163	158	b	2	نْرِيُ	nriyu	nriyu		ndiyo					
1581	163	158	b	3	يَليْوُ	yalı̄wu	yaliwu		yaliyo					
1586	163	158	d	2	كُمْفَهَمِيْايَا	kumfahamiyāyā	kumfahamiyaya		kumfahamiya					
1592	164	159	b	3	نِثَقِيْلِ	nithaqı̄li	nithaqili		ni thaqili					
1593	164	159	c	1	كِتَڠَ	kitaga	kitaga		kitanga					
1595	164	159	c	3	نِبَلِ	nibali	nibali		ni mbali					
1601	165	160	b	1	نِمِتَنْڠَ	nimitanga	nimitanga		nimetanga					
1623	167	162	a	1	كَوَاؤُنَ	kawauna	kawauna		kawaona					
1624	167	162	a	2	وَكُ	waku	waku		wako					
1626	167	162	b	1	كَنِيْنَ	kanı̄na	kanina		kanena					
1627	167	162	b	2	تَيْمُهُلِ	taymuhuli	taymuhuli		tayimuhuli					
1629	167	162	c	2	نِكَوَاسَئِلِ	nikawāsaili	nikawasaili		nikawasili	*				
1630	167	162	d	1	پِنْيِ	pinyi	pinyi		penye					
1637	168	163	b	2	هَوَاكُيْيِسَا	hawākuyyisā	hawakuyyisa		hawakuyisa					
1638	168	163	c	1	نِوَائِنَ	niwaina	niwaina		niwawene					
1640	168	163	d	1	سَلُا	saluā	salua		salamu					
1641	168	163	d	2	مُكَوَا	mukawā	mukawa		kawapisiya					
1644	169	164	a	2	مْوِنْدَاپِ	mwindāpi	mwindapi		mwendapi					
1647	169	164	b	2	نِكِپُنْغُ	nikipunghu	nikipunghu		ni kipungu					
1648	169	164	b	3	نَنْتِ	nanti	nanti		na nti					
1649	169	164	c	1	حِلَ	ḥila	hila		hela					
1650	169	164	c	2	نْدُؤُنِ	nduuni	nduuni		ndooni					
1651	169	164	c	3	مُكِتِ	mukiti	mukiti		muketi					
1652	169	164	d	1	لِپَتِ	lipati	lipati		lipate					
1653	169	164	d	2	كُپِرُكِيْيَا	kupirukı̄yā	kupirukiya		kupindukiya					
1654	170	165	a	1	نَهِلِ	nahili	nahili		na hili					
1655	170	165	a	2	يُوَا	yuwā	yuwa		yua					
1656	170	165	a	3	سِزُوْرِ	sizūri	sizuri		si zuri					
1658	170	165	b	2	نِزَطَارِ	nizaṭāri	nizatari		ni hatari					
1660	170	165	c	2	زِوُسِأَ	ziwusia	ziwusia		zeo					
1661	170	165	c	3	خِيْرِ	khı̄ri	hiri		si ahiri					
1662	170	165	d	1	كَبَ	kaba	kaba		kamba					
1664	171	166	a	1	وَكِسِلِيْيَ	wakisilı̄ya	wakisiliya		wakisikia	*				
1666	171	166	b	1	وَكَزُنْغُكِيَ	wakazunghukiya	wakazunghukiya		wakazungukia					
1671	171	166	d	2	كَنِئِلِيَا	kaniiliyā	kaniiliya		kaniyiliya					
1673	172	167	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
1675	172	167	b	2	نِنْيَنِ	ninyani	ninyani		ni nyani					
1677	172	167	c	2	وَتُتَكِيَنِ	watutakiyani	watutakiyani		watutakia-ni					
1679	172	167	d	2	كُتُخُفِيَا	kutukhufiyā	kutuhufiya		kutuhofiya					
1682	173	168	a	3	يْكُ	ı̄ku	iku		yako					
1683	173	168	b	1	وَلَوُ	walawu	walawu		walau					
1684	173	168	b	2	سِنْرُنْغُ	sinrunghu	sinrunghu		si ndugu					
1685	173	168	b	3	زَاكُ	zāku	zaku		zako					
1687	173	168	c	2	حَيُ	ḥayu	hayu		hayo					
1688	173	168	c	3	مَتَمْكُ	matamku	matamku		matamko					
240	24	24	a	4	پِلِ	pili	pili							
1691	174	169	a	1	وِوِ	wiwi	wiwi		wewe					
1692	174	169	a	2	نِمْوَانَ	nimwāna	nimwana		ni mwana					
1694	174	169	b	1	نِمْپُتِزَا	nimputizā	nimputiza		ni mpoteza					
1695	174	169	b	2	قَوْامُ	qawāmu	qawamu	qaūmu	qaumu					
1696	174	169	c	1	تْوَامْبِيِ	twāmbiyi	twambiyi		twambie					
1699	174	169	d	2	تُيُوِ	tuyuwi	tuyuwi		tuyue					
1703	175	170	b	1	نِنِيْنِ	ninı̄ni	ninini		ni dini					
1704	175	170	b	2	يَكِ	yaki	yaki		yake					
1707	175	170	c	2	وِوِ	wiwi	wiwi		wewe					
1708	175	170	c	3	نِجُهَلِ	nijuhali	nijuhali		ni juhali					
1709	175	170	d	1	مْبِيْ	mbii	mbii		mbee					
1710	175	170	d	2	زَانْغُ	zānghu	zanghu		zangu					
1711	175	170	d	3	نِپُكِيَا	nipukiyā	nipukiya		nipokeya					
1712	176	171	a	1	كَسِكِيَ	kasikiya	kasikiya		kasikia					
1715	176	171	b	2	اَبُوْ	abuu	abuu		Abu					
1716	176	171	b	3	بَكَرَِا	bakariā	bakaria	bakarī	Bakari					
1717	176	171	c	1	اُنْدُ	undu	undu		ndoo	*				
1719	176	171	c	3	نَزُبِيْرِ	nazubı̄ri	nazubiri		na Zubiri					
1720	176	171	d	1	وُوَاوِلِ	wuwāwili	wuwawili		wao wawili	*				
1724	177	172	b	1	اُسُوْ	usuu	usuu		uso					
1726	177	172	c	1	كَبَ	kaba	kaba		kamba					
1727	177	172	c	2	مُمِفَهَمَ	mumifahama	mumifahama		mumefahama					
1729	177	172	d	2	وَاكِ	wāki	waki		wake					
1730	177	172	d	3	نَبِيَا	nabiyā	nabiya		Nabiya					
1731	178	173	a	1	حُسِكِيَ	ḥusikiya	husikiya		husikia					
1733	178	173	b	1	عَلِيْ	ʿalii	alii		Ali					
1734	178	173	b	2	بُنُ	bunu	bunu		binu	*				
1735	178	173	b	3	خَطَبُ	khaṭabu	hatabu		Talibu	*				
1737	178	173	c	2	وَمِتَعَجَبُ	wamitaʿajabu	wamitaajabu		wametaajabu					
1739	178	173	d	2	وُتِ	wuti	wuti		wote					
1740	178	173	d	3	هُنَغَلِيَا	hunaghaliyā	hunaghaliya		hunagaliya					
1741	179	174	a	1	هُيُ	huyu	huyu							
1742	179	174	a	2	نِاَبُوْ	niabuu	niabuu		ni Abu					
1743	179	174	a	3	بَكَرِ	bakari	bakari		Bakari					
1744	179	174	b	1	نَحُيُ	naḥuyu	nahuyu		na huyu					
1746	179	174	b	3	زُبِيْرِا	zubı̄riā	zubiria	zubı̄rī	Zubiri					
1747	179	174	c	1	نَوِ	nawi	nawi		nawe					
1763	181	176	a	1	كَوَمْبِيَ	kawambiya	kawambiya		kawambia					
1764	181	176	a	2	نِمِكِيْرِا	nimikı̄riā	nimikiria	nimikı̄rī	nimekiri					
1770	181	176	c	3	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
1772	181	176	d	2	مَوْلَنَا	mawlanā	maulana		Maulana					
1773	181	176	d	3	عَلِيْيَا	ʿalı̄yā	aliya		Aliya					
1774	182	177	a	1	وَنِوُزَا	waniwuzā	waniwuza		waniuza					
1776	182	177	b	1	وِنْرَاوُ	winrāwu	winrawu		wendao					
1778	182	177	b	3	غَيْبُ	ghaybu	ghaybu		ghaibu					
1779	182	177	c	1	حَپُ	ḥapu	hapu		hapo					
1782	182	177	d	1	نِتَكَلُ	nitakalu	nitakalu		nitakalo					
1784	183	178	a	1	هُتَڤَا	hutavā	hutava		hutanga					
1788	183	178	b	2	سِيَوْنِ	siyawni	siyauni		siyaoni					
1789	183	178	c	1	بُزِ	buzi	buzi		mbuzi					
1790	183	178	c	2	وَامِلِشَ	wāmilisha	wamilisha		wamelisha					
1794	183	178	d	3	نْيُمَ	nyuma	nyuma		nyota					
1796	184	179	a	1	هُكُوْ	hukuu	hukuu		huku					
1797	184	179	a	2	مُمِزُكُپِةَ	mumizukupiẗa	mumizukupita		mumezokupita					
1801	184	179	c	2	وَنْغُ	wanghu	wanghu		wangu					
1803	184	179	c	4	نْيُتَ	nyuta	nyuta		nyota					
1805	184	179	d	2	مْوَايُوَا	mwāyuwā	mwayuwa		mwayua					
1808	185	180	a	2	قَوْلِيْ	qawlii	qaulii		qauli					
1809	185	180	b	1	كَبَ	kaba	kaba		kamba					
1811	185	180	b	3	سِمْبَلِ	simbali	simbali		si mbali					
1812	185	180	c	1	لَكِيْ	lakii	lakii		lakini					
1816	185	180	d	1	رُوْحُ	rūḥu	ruhu		roho					
1817	185	180	d	2	نْيِغِ	nyighi	nyighi		nyingi					
1818	185	180	d	3	هُپُتِيَا	huputiyā	huputiya		hupoteya					
1841	188	183	b	2	نْدِيَا	ndiyā	ndiya		ndia					
1842	188	183	b	3	كَفُوَاةَ	kafuwāẗa	kafuwata		kafuata					
1848	189	184	a	1	كِكُرُبِيَ	kikurubiya	kikurubiya		kikurubia					
1850	189	184	b	1	لِپُوْ	lipuu	lipuu		lipo					
1851	189	184	b	2	بَوُ	bawu	bawu		bao					
1856	189	184	d	1	نَوَوُ	nawawu	nawawu		na wao					
1857	189	184	d	2	حُنَغَلِيْيَا	ḥunaghalı̄yā	hunaghaliya		hunangaliya					
1860	190	185	b	1	اَبُوْ	abuu	abuu		Abu					
1861	190	185	b	2	بَكَرِ	bakari	bakari		Bakari					
1864	190	185	c	2	سِكِفِنِكِ	sikifiniki	sikifiniki		sikifinike					
1868	192	186	a	2	كُكِپَبَوُكَ	kukipabawuka	kukipabawuka		kukipambauka					
1871	192	186	b	3	كِتُكَ	kituka	kituka		kitoka					
1873	192	186	c	2	كِوَاپِكَ	kiwāpika	kiwapika		kiwapeka					
1874	192	186	d	1	مْوِدَا	mwidā	mwida		muda	*				
1875	192	186	d	2	وَيُوَا	wayuwā	wayuwa		wa yua					
1876	192	186	d	3	كُوِنِيَا	kuwiniyā	kuwiniya		kueneya					
1881	193	187	b	1	حَپُ	ḥapu	hapu		hapo					
1883	193	187	b	3	كْوَاسُةَ	kwāsuẗa	kwasuta		kawasuta	*				
1884	193	187	c	1	نَوُنَ	nawuna	nawuna		naona					
1885	193	187	c	2	وَمِنِيْوَاتَ	waminı̄wāta	waminiwata		wameniwata					
1886	193	187	d	1	هُتِيْزَا	hutı̄zā	hutiza		huteza					
1887	193	187	d	2	نَكُكِمْبِيَا	nakukimbiyā	nakukimbiya		na kukimbiya					
1888	194	188	a	1	كَوَمْبِيَا	kawambiyā	kawambiya		kawambia					
1889	194	188	a	2	اِنِرَانِ	inirāni	inirani		enendani					
1890	194	188	b	1	مْوَاكُيُوَا	mwākuyuwā	mwakuyuwa		mwakuyua					
1892	194	188	c	1	لَقِينِ	laqı̄ni	laqini		lakini					
1893	194	188	c	2	هُوْفَلِيَنِ	hūfaliyani	hufaliyani		hufalia-ni					
1894	194	188	d	1	نِمِمِ	nimimi	nimimi		ni mimi					
1895	194	188	d	2	كُوَاتِكِيْيَا	kuwātikı̄yā	kuwatikiya		kuwatekeya					
1896	195	189	a	1	وَاكِرَا	wākirā	wakira		wakenda					
1900	195	189	c	1	بَاوُ	bāwu	bawu		bao					
1902	195	189	d	1	نِوُنِ	niwuni	niwuni		nione					
1905	196	190	a	1	مْكُوْنُ	mkūnu	mkunu		mkono					
1908	196	190	b	2	سِيَايَتِكَ	siyāyatika	siyayatika		siyayateka					
1910	196	190	c	2	حَپُ	ḥapu	hapu		hapo					
1912	196	190	d	1	يَغَضَبُ	yaghaḍabu	yaghadhabu		ya ghadhabu					
1916	197	191	a	3	مْغُ	mghu	mghu		Mngu					
1919	197	191	b	3	بَبَنْغُ	babanghu	babanghu		babangu					
1920	197	191	c	1	كَوُلِزَا	kawulizā	kawuliza		kauliza					
1921	197	191	c	2	پِتِ	piti	piti		pete					
1922	197	191	c	3	يَنْغُ	yanghu	yanghu		yangu					
1927	198	192	b	1	كَپِوْجَا	kapiwjā	kapiuja		kapijwa	*				
1928	198	192	b	2	نَحَلِمَمَ	naḥalimama	nahalimama		na halimama					
1930	198	192	c	2	كَئِتَ	kaita	kaita		kaeta					
1935	199	193	a	2	اَلِيْپُ	alı̄pu	alipu		alipouliza					
1936	199	193	a	3	اُلِيْزَا	ulı̄zā	uliza		~					
1937	199	193	b	1	نِسِمْوَمْبِيِ	nisimwambiyi	nisimwambiyi		nisimwambie					
1938	199	193	b	2	كَيْزَا	kayzā	kayza		kaiza					
1940	199	193	c	2	مِوُجِيْزَا	miwujı̄zā	miwujiza		miujiza					
1941	199	193	d	1	يَپِتِ	yapiti	yapiti		ya pete					
1942	199	193	d	2	كُنِيْوَاَلِيْيَا	kunı̄waalı̄yā	kuniwaaliya		kunitwaliya					
1943	200	194	a	1	مِنِكِيْزَا	minikı̄zā	minikiza		menekeza					
1945	200	194	a	3	زَاكُ	zāku	zaku		zako					
1946	200	194	b	1	نَصِيْفَا	naṣı̄fā	nasifa		na sifa					
1947	200	194	b	2	زَنْيُبَا	zanyubā	zanyuba		za nyumba					
1948	200	194	b	3	يَكُ	yaku	yaku		yako					
1949	200	194	c	1	حَپُ	ḥapu	hapu		kaeta					
1950	200	194	c	2	كَيْتَ	kayta	kayta		kaeta					
1951	200	194	c	3	تَمْكُ	tamku	tamku		tamko					
1953	200	194	d	2	لَنْغُ	langhu	langhu		langu					
1955	201	195	a	1	نِكَمْوَمْبِيَا	nikamwambiyā	nikamwambiya		nikamwambia					
1956	201	195	a	2	نَنْيَّكَ	nanı̄yaka	naniyaka		na nyaka					
1957	201	195	b	1	نِزَزِوِوُ	nizaziwiwu	nizaziwiwu		nizazeweo					
1958	201	195	b	2	حَقِيْكَ	ḥaqı̄ka	haqika		hakika					
1959	201	195	c	1	نِتِسِيَا	nitisiyā	nitisiya		ni tisia					
1960	201	195	c	2	زَسُوْ	zasuu	zasuu		zaso					
1962	201	195	d	1	نَوِوِ	nawiwi	nawiwi		na wewe					
1963	201	195	d	2	تَارِخِ	tārikhi	tarihi		tarehe					
1964	201	195	d	3	نِتِيْيَا	nitı̄yā	nitiya							
1966	202	196	a	2	زَانْغُ	zānghu	zanghu		zangu					
1968	202	196	b	1	نِمِكُپَ	nimikupa	nimikupa		nimekupa					
1970	202	196	c	1	تِنَا	tinā	tina		tena					
1971	202	196	c	2	نَكَمْوَالِيْمُ	nakamwālı̄mu	nakamwalimu		na kwa mwalimu					
1972	202	196	d	1	نِمِرُدِ	nimirudi	nimirudi		nimerudi					
1974	203	197	a	1	نِمِمُوَاڠَ	nimimuwāga	nimimuwaga		nimemuaga					
1976	203	197	a	3	حِرِ	ḥiri	hiri		heri					
1979	203	197	c	1	نِوُمْبِيَ	niwumbiya	niwumbiya		niombea					
1981	203	197	c	3	جَبَارِ	jabāri	jabari		Jabari					
1982	203	197	d	1	نَرَضِ	naraḍi	naradhi		na radhi					
1983	203	197	d	2	كُنِوِلِيَا	kuniwiliyā	kuniwiliya		kunieleya					
1984	204	198	a	1	تِنَا	tinā	tina		tena					
1985	204	198	a	2	نِوُمْبِيَ	niwumbiya	niwumbiya		niombea					
1986	204	198	a	3	مْغُ	mghu	mghu		Mngu					
1987	204	198	b	1	تُپِنْدَانِ	tupindāni	tupindani		tupendane					
1989	204	198	b	3	بَبَنْغُ	babanghu	babanghu		babangu					
1990	204	198	c	1	نَمِكِسَا	namikisā	namikisa		nami kisa					
1992	204	198	c	3	وَنْغُ	wanghu	wanghu		wangu					
1994	204	198	d	2	كْوَانْغَلِيَا	kwānghaliyā	kwanghaliya		kuangaliya					
1995	205	199	a	1	اَكِسِكِيَ	akisikiya	akisikiya		akisikia					
1996	205	199	a	2	قَوُلِ	qawuli	qawuli		qauli					
1997	205	199	b	1	مَمَكِ	mamaki	mamaki		mamake					
2002	205	199	d	2	مَكُنْرِّ	makunrri	makunrri		makonde					
2003	205	199	d	3	كَيْتِيَا	kaytiyā	kaytiya		kayitiya					
2014	207	201	a	2	پَتَ	pata	pata		~					
2017	207	201	b	2	كَرِيْمُ	karı̄mu	karimu		Karimu					
2020	207	201	d	1	مْغُ	mghu	mghu		Mngu					
2021	207	201	d	2	اَكَمُوُمْبِيَا	akamuwumbiyā	akamuwumbiya		akamuombeya					
2022	208	202	a	1	يَا	yā	ya		Ya					
2023	208	202	a	2	اللّٰهُ	llähu	llahu		Allahu					
2024	208	202	a	3	مُوْلَ	mūla	mula		Mola					
2025	208	202	a	4	وَننْغُ	wannghu	wannghu		wangu					
2026	208	202	b	1	نِنُوْصُرِيَ	ninūṣuriya	ninusuriya		ninusuria					
2027	208	202	b	2	مْوَنَڠُ	mwanagu	mwanagu		mwanangu					
2028	208	202	c	1	نَوَنَ	nawana	nawana		na wana					
2030	208	202	c	3	وِنْدَانِ	windāni	windani		wendani					
2031	208	202	c	4	وَنْغُ	wanghu	wanghu		wangu					
2034	209	203	a	1	اِنِرَا	inirā	inira		enenda					
2035	209	203	a	2	هُوِ	huwi	huwi		huwe					
2037	209	203	b	1	نِرَضِ	niraḍi	niradhi		ni radhi					
2040	209	203	c	1	نَوِ	nawi	nawi		nawe					
2042	209	203	c	3	نَفِكِيْرَا	nafikı̄rā	nafikira		na fikira					
2043	209	203	d	1	مُوْيُ	mūyu	muyu		moyo					
2044	209	203	d	2	نِمِكُرِضِيْيَا	nimikuriḍı̄yā	nimikuridhiya		nimekuridhiya					
2046	210	204	a	2	اُيَپُ	uyapu	uyapu		uyaponiudhi					
2047	210	204	a	3	نِوُضِ	niwuḍi	niwudhi		~					
2048	210	204	b	1	سِتُتُكُوَا	situtukuwā	situtukuwa		sitotukua					
2049	210	204	b	2	غَيْضِيْ	ghayḍii	ghaydhii		ghaidhi					
2053	210	204	d	1	نَكْوَا	nakwā	nakwa		na kwa					
2054	210	204	d	2	عَلِيْ	ʿalii	alii		Ali					
2055	210	204	d	3	زِغِيَ	zighiya	zighiya		zengeya					
2056	211	205	a	1	اُػِنْرَا	ukʲinrā	uchinra		uchenda					
2057	211	205	a	2	اُوِ	uwi	uwi		uwe					
2058	211	205	a	3	نْيَّوُنِ	nı̄yawuni	niyawuni	nyyawuni	nyaoni					
2060	211	205	b	2	بَبَكُ	babaku	babaku		babako					
2061	211	205	b	3	اُوِ	uwi	uwi		uwe					
2063	211	205	c	1	نَأَتَكَلُ	naatakalu	naatakalu		na atakalobaini					
2064	211	205	c	2	بَئِيْنِ	baı̄ni	baini		~					
2065	211	205	d	1	كْوَاكُ	kwāku	kwaku		kwako					
2066	211	205	d	2	لِوِ	liwi	liwi		kiwe					
2080	213	207	a	1	نَمْتُمِ	namtumi	namtumi		na Mtume					
2081	213	207	a	2	مُحَمَّدِا	muḥammadiā	muhammadia	muḥammadī	Muhamadi					
2084	213	207	b	3	كُكُزِيْدِا	kukuzı̄diā	kukuzidia	kukuzīdī	kukuzidi					
2085	213	207	c	1	هَا	hā	ha		hala					
2086	213	207	c	2	اللّٰه	lläh	llah		~					
2087	213	207	c	3	هَا	hā	ha		hala					
2088	213	207	c	4	اللّٰه	lläh	llah		~					
2090	213	207	d	1	ڠَاءَ	gaa	gaa		ngaa					
2091	213	207	d	2	اُپَتِ	upati	upati		upate					
2096	214	208	b	1	كِتِيْ	kitii	kitii		keti					
2097	214	208	b	2	نَيِ	nayi	nayi		naye					
2100	214	208	c	1	كْوَاكِا	kwākiā	kwakia	kwākī	kwake					
2101	214	208	c	2	اُوِ	uwi	uwi		uwe					
2102	214	208	c	3	نَعَدَابُ	naʿadābu	naadabu		na adabu					
2103	214	208	d	1	اُطِيْعِ	uṭı̄ʿi	utii		utii					
2104	214	208	d	2	نَكْوَڠُكِيَا	nakwagukiyā	nakwagukiya		na kwangukiya					
2238	227	221	b	2	سِكُيفَهَمُ	sikuyfahamu	sikuyfahamu		sikuyifahamu			lit. \\q{I was not conscious of [the day]}.		
2251	228	222	d	1	ناصِرِ	nāṣiri	nasiri		Nasiri					Wake Nasir for me.
2261	229	223	d	2	اَكَيْصَلِيَا	akayṣaliyā	akaysaliya		akaisaliya					
2271	231	225	a	1	وَكَتَغَنْيَ	wakataghanya	wakataghanya		wakatanganya					
2272	231	225	a	2	مِكُنُ	mikunu	mikunu		mikono					
2273	231	225	b	1	وَكَكِتِ	wakakiti	wakakiti		wakaketi					
2275	231	225	b	3	مْفَنُ	mfanu	mfanu		mfano					
2276	231	225	c	1	اَكَنِيْنَ	akanı̄na	akanina		akanena					
2277	231	225	c	2	نَمَنِيْنُ	namanı̄nu	namaninu		na maneno					
2278	231	225	d	1	رُيَكِ	ruyaki	ruyaki		nduyake					
2280	232	226	a	1	اَكَمْوَمْبِيَا	akamwambiyā	akamwambiya		akamwambia					
2281	232	226	a	2	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri					
2282	232	226	b	1	يِوُ	yiwu	yiwu		yeo					
2283	232	226	b	2	رُيَغُ	ruyaghu	ruyaghu		nduyangu					
2285	232	226	b	4	حِرِا	ḥiriā	hiria	ḥirī	heri					
2286	232	226	c	1	تَكَپُ	takapu	takapu		takaporudi					
2287	232	226	c	2	رُدِ	rudi	rudi		~					
2290	232	226	d	2	تَكُوِتِيْيَا	takuwitı̄yā	takuwitiya		takuetea					
2292	233	227	a	2	اُپِسِ	upisi	upisi		upesi					
2293	233	227	b	1	نِتِيَ	nitiya	nitiya		nitia					
2296	233	227	c	1	نْيَّمَ	nı̄yama	niyama	nyyama	nyama					
2300	233	227	d	2	كُمْوَغَلِيَا	kumwaghaliyā	kumwaghaliya		kumwangaliya					
2302	234	228	a	2	هَپُ	hapu	hapu		hapo					
2306	234	228	b	3	هُتُكَ	hutuka	hutuka		hutoka					
2307	234	228	c	1	نَمَمَكِ	namamaki	namamaki		na mamake					
2308	234	228	c	2	كَيْنُكَ	kaynuka	kaynuka		kainuka					
2309	234	228	d	1	صَدَاقَ	ṣadāqa	sadaqa		sadaka					
2310	234	228	d	2	كَمْتُلِيَا	kamtuliyā	kamtuliya		kamtoleya					
2311	235	229	a	1	هَپُ	hapu	hapu		hapo					
2312	235	229	a	2	مَمَكِ	mamaki	mamaki		mamake					
2314	235	229	b	1	اَنِنْرِ	aninri	aninri		anende					
2315	235	229	b	2	اَمْفُوَاتَ	amfuwāta	amfuwata		amfuata					
2316	235	229	c	1	اَكَمْتُپِيْيَ	akamtupı̄ya	akamtupiya		akamtupia					
2317	235	229	c	2	نَمَتُ	namatu	namatu		na mato					
2318	235	229	d	1	نَمغُ	namghu	namghu		na Mngu					
2319	235	229	d	2	كُمُوُمْبِيَ	kumuwumbiya	kumuwumbiya		kumuombeya					
2321	236	230	a	2	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri					
2323	236	230	b	1	مْسُمِشِ	msumishi	msumishi		msomeshe					
2325	236	230	c	1	مْفُزِْشِ	mfuzishi	mfuzishi		mfunzishe					
2326	236	230	c	2	نَعِلِمُ	naʿilimu	nailimu		na ilimu					
2328	236	230	d	2	يَكِ	yaki	yaki		yake					
2329	236	230	d	3	تَكْوِتِيَ	takwitiya	takwitiya		takweteya					
2330	237	231	a	1	اَكَتُكَ	akatuka	akatuka		akatoka					
2331	237	231	a	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
2333	237	231	b	2	كَلِيَ	kaliya	kaliya		kalia					
2334	237	231	b	3	نَصِيْرِا	naṣı̄riā	nasiria	naṣı̄rī	Nasiri					
2335	237	231	c	1	مَمَكِ	mamaki	mamaki		mamake					
2338	237	231	d	2	اَتَرِجِيَا	atarijiyā	atarijiya		atarejeya					
2339	238	232	a	1	نَصِيْرِ	naṣı̄ri	nasiri		Nasiri					
2341	238	232	b	1	نَمُيُوَا	namuyuwā	namuyuwa		namuyua					
2342	238	232	b	2	اِنْرَا	inrā	inra		enda					
2343	238	232	b	3	مَكَهْ	makah	makah		Maka					
2344	238	232	c	1	كُتُغَ	kutugha	kutugha		kutunga					
2345	238	232	c	2	هَڠَلِتُكَ	hagalituka	hagalituka		hangalitoka					
2346	238	232	d	1	اَسِپُ	asipu	asipu		asipoiona					
2347	238	232	d	2	أِيُوْنَ	iyūna	iyuna		~					
2351	239	233	a	3	سِكُوِكُ	sikuwiku	sikuwiku		sikuweko					
2352	239	233	b	1	اُكَمْوَمْبِيَ	ukamwambiya	ukamwambiya		ukamwambia					
2353	239	233	b	2	تَمْكُ	tamku	tamku		tamko					
2354	239	233	c	1	كَوَاڠِا	kawāgiā	kawagia	kawāgī	kawage					
2356	239	233	c	3	وَاكُ	wāku	waku		wako					
2357	239	233	d	1	يُتِ	yuti	yuti		yote					
2360	240	234	a	2	وِنْرَا	winrā	winra		wenda					
2361	240	234	a	3	مَتُڠَانِ	matugāni	matugani		matungani					
2362	240	234	b	1	غُوْ	ghuu	ghuu		nguo					
2363	240	234	b	2	هُتُكُلِيَنِ	hutukuliyani	hutukuliyani		hutukulia-ni					
2365	240	234	c	2	زُتِ	zuti	zuti		zote					
2366	240	234	c	3	سِمُوُنِ	simuwuni	simuwuni		simuoni					
2368	240	234	d	2	هَيُ	hayu	hayu		hayo					
2370	241	235	a	1	جَعْفَرِ	jaʿfari	jafari		Jaafari					
2371	241	235	a	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
2373	241	235	b	2	اُمِلِلِيَنِ	umililiyani	umililiyani		umelilia-ni					
2375	241	235	c	2	نَنْنِ	nanni	nanni		na nini					
2376	241	235	d	1	مَنِنُ	maninu	maninu		maneno					
2378	242	236	a	1	نَكَمَ	nakama	nakama		na kama					
2380	242	236	b	1	نَمْبِيَ	nambiya	nambiya		nambia					
2381	242	236	b	2	نِسِيَتُكَ	nisiyatuka	nisiyatuka		nisiyatoka					
2385	242	236	d	1	سِكِتِكُ	sikitiku	sikitiku		sikitiko					
2388	243	237	a	2	تَمْكُ	tamku	tamku		tamko					
2392	243	237	c	1	سِكُزُتِ	sikuzuti	sikuzuti		siku zote					
2393	243	237	c	2	هُوَانِكُ	huwāniku	huwaniku		huwa niko					
2394	243	237	d	1	هَمُنِوُنِ	hamuniwuni	hamuniwuni		hamunioni					
2398	244	238	a	3	نِثَقِيْلِ	nithaqı̄li	nithaqili		ni thaqili					
2399	244	238	b	1	نِمِزُ	nimizu	nimizu		nimezoyataamali					
2400	244	238	b	2	يَتَعَمَلِ	yataʿamali	yataamali		~					
2402	244	238	c	2	مَتُلِ	matuli	matuli		matuli-tuli					
2403	244	238	c	3	تُوْلِ	tūli	tuli		~					
2404	244	238	d	1	زِوُ	ziwu	ziwu		zeo					
2405	244	238	d	2	زَاكُ	zāku	zaku		zako					
2406	244	238	d	3	زَاكُغِيَا	zākughiyā	zakughiya		za kungiya					
2424	246	240	d	1	نَايِ	nāyi	nayi		naye					
2425	246	240	d	2	مَكَ	maka	maka		Maka					
2426	246	240	d	3	اَمِڠِيْيَا	amigı̄yā	amigiya		amengiya					
2427	247	241	a	1	مَكَ	maka	maka		Maka					
2428	247	241	a	2	اَلِپُ	alipu	alipu		alipojilisi					
2431	247	241	b	2	بَبَكِ	babaki	babaki		babake					
2432	247	241	b	3	هَكُئِسِا	hakuisiā	hakuisia	hakuisī	hakuisi					
2434	247	241	c	2	نْدِيَا	ndiyā	ndiya		ndia					
2437	247	241	d	2	تَيْكِتِلِيَا	taykitiliyā	taykitiliya		tayiketiliya					
2438	248	242	a	1	اَكَكِتِ	akakiti	akakiti		akaketi					
2439	248	242	a	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
2440	248	242	b	1	اَكَمووْنَ	akamūwna	akamuna		akamwona					
2441	248	242	b	2	زُبِيْرِا	zubı̄riā	zubiria	zubı̄rī	Zuberi					
2442	248	242	c	1	اِنْدِمِيْنِ	indimı̄ni	indimini		endemene					
2444	248	242	c	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2446	248	242	d	2	اَكَوَيْنُلِيَ	akawaynuliya	akawaynuliya		akawainuliya					
2449	249	243	b	1	زُبَيْرِ	zubayri	zubayri		Zuberi					
2451	249	243	c	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia					
2452	249	243	c	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima					
2453	249	243	d	1	مْڠِيْنِ	mgı̄ni	mgini		mgeni					
2454	249	243	d	2	وِتُ	witu	witu		wetu					
2455	249	243	d	3	مْڠِيَا	mgiyā	mgiya		mengiya					
2456	250	244	a	1	كَمُوُلِزَا	kamuwulizā	kamuwuliza		kamuuliza					
2457	250	244	a	2	اَمِيْنِ	amı̄ni	amini		Amini					
2458	250	244	b	1	مْڠِيْنِ	mgı̄ni	mgini		mgeni					
2459	250	244	b	2	وِتُ	witu	witu		wetu					
2460	250	244	b	3	نِنْيَنِ	ninyani	ninyani		ni nyani					
2462	250	244	c	2	هُبَيِنِ	hubayini	hubayini		hubaini					
2464	250	244	d	2	مْكُنُ	mkunu	mkunu		mkono					
2465	250	244	d	3	نَبِيَا	nabiyā	nabiya		Nabiya					
2466	251	245	a	1	زُبِيْرِ	zubı̄ri	zubiri		Zuberi					
2468	251	245	b	1	وَمُيُوَاپِ	wamuyuwāpi	wamuyuwapi		wamuyuapi					
2469	251	245	b	2	حَبِبُ	ḥabibu	habibu		Habibu					
2470	251	245	c	1	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
2473	251	245	d	2	وَكِ	waki	waki		wake					
2474	251	245	d	3	نَبِيَا	nabiyā	nabiya		Nabiya					
2476	252	246	a	2	حَپُ	ḥapu	hapu		hapo					
2477	252	246	a	3	اَبَيِيْنِ	abayı̄ni	abayini		abaini					
2479	252	246	b	2	بَبَنْغُ	babanghu	babanghu		babangu					
2480	252	246	b	3	نِپِكَنِ	nipikani	nipikani		nipekani					
2481	252	246	c	1	كَمْتُكُوَا	kamtukuwā	kamtukuwa		kamtukua					
2482	252	246	c	2	اَمِيْنِ	amı̄ni	amini		Amini					
2483	252	246	d	1	كِنْرَا	kinrā	kinra		kenda					
2484	252	246	d	2	نَيِ	nayi	nayi		naye					
2486	252	246	d	4	عَلِيَ	ʿaliya	aliya		Aliya					
2487	253	247	a	1	اَلِپُ	alipu	alipu		alipokwenda					
2488	253	247	a	2	كْوِرَ	kwira	kwira		~					
2489	253	247	a	3	سئِدِ	sidi	sidi		Sayidi					
2490	253	247	b	1	نْدِ	ndi	ndi		nde					
2492	253	247	b	3	هُوْدِ	hūdi	hudi		hodi					
2493	253	247	c	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2496	253	247	d	2	هَكُ	haku	haku		hako					
2497	253	247	d	3	عَلِيَا	ʿaliyā	aliya		Aliya					
2498	254	248	a	1	كَمُوُلِيْزَا	kamuwulı̄zā	kamuwuliza		kamuuliza					
2499	254	248	a	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni					
2500	254	248	b	1	اَمْكُوَوُ	amkuwawu	amkuwawu		amkuao					
2501	254	248	b	2	نِنْيَنِ	ninyani	ninyani		ni nyani					
2503	254	248	c	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
2504	254	248	d	1	نِا	niā	nia	nī	ni					
2506	254	248	d	3	يَنْغُ	yanghu	yanghu		yangu					
2508	255	249	a	1	نِجَدِ	nijadi	nijadi		ni jadi					
2509	255	249	a	2	يَنْغُ	yanghu	yanghu		yangu					
2510	255	249	a	3	رَسُوْلِ	rasūli	rasuli		Rasuli					
2511	255	249	b	1	يِيِ	yiyi	yiyi		yeye					
2512	255	249	b	2	نَمْتُ	namtu	namtu		na mtu					
2513	255	249	b	3	وَپِيْلِ	wapı̄li	wapili		wa pili					
2514	255	249	c	1	اَكِسِكِيْيَ	akisikı̄ya	akisikiya		akisikia					
2515	255	249	c	2	قَوْلِيْ	qawlii	qaulii		qauli					
2516	255	249	d	1	كَتُكَ	katuka	katuka		katoka					
2518	256	250	a	1	اَكِتُكَا	akitukā	akituka		akitoka					
2519	256	250	a	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
2520	256	250	b	1	كَمُوُلِيْزَا	kamuwulı̄zā	kamuwuliza		kamuuliza					
2522	256	250	c	1	اَكِيْكُمَ	akı̄kuma	akikuma		akikoma					
2524	256	250	d	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2526	257	251	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2528	257	251	b	1	اَكَمُوُلِزَا	akamuwulizā	akamuwuliza		akamuuliza					
600	61	61	a	3	كْوَا	kwā	kwa							
2529	257	251	b	2	حَشِمُ	ḥashimu	hashimu		Hashimu					
2536	258	252	a	2	زُتِ	zuti	zuti		zote					
2537	258	252	a	3	سِمُيُوِ	simuyuwi	simuyuwi		simuyui					
2539	258	252	b	2	لَكِ	laki	laki		lake					
2540	258	252	b	3	نْرِيِ	nriyi	nriyi		ndiye					
2542	258	252	c	1	مْتُمِ	mtumi	mtumi		Mtume					
2543	258	252	c	2	اَكَبَيِنِ	akabayini	akabayini		akabaini					
2546	259	253	a	1	اَكَمْوَامْبِيَ	akamwāmbiya	akamwambiya		akamwambia					
2547	259	253	a	2	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
2550	259	253	b	3	جَعْفَرِا	jaʿfariā	jafaria	jaʿfarī	Jaafari					
2558	260	254	a	2	سَيِدِ	sayidi	sayidi		Sayidi					
2559	260	254	a	3	اَمِيْنِ	amı̄ni	amini		Amini					
2561	260	254	b	2	حُسِيْنِ	ḥusı̄ni	husini		Huseni					
2562	260	254	c	1	اِنِرَا	inirā	inira		enenda					
2566	261	255	a	1	حَپُ	ḥapu	hapu		hapo					
2567	261	255	a	2	كَتُكَ	katuka	katuka		katoka					
2568	261	255	a	3	حُسِيْنِ	ḥusı̄ni	husini		Huseni					
2572	261	255	c	2	مِكُيَ	mikuya	mikuya		mekuya					
2573	261	255	c	3	مْغِيْنِ	mghı̄ni	mghini		mgeni					
2574	261	255	d	1	هُكْوَامْكُوَا	hukwāmkuwā	hukwamkuwa		kukwamkua					
2581	262	256	b	3	بَشِيْرِا	bashı̄riā	bashiria	bashı̄rī	Bashiri					
2584	262	256	c	3	نِجَعْفَرِ	nijaʿfari	nijafari		ni Jaafari					
2585	262	256	d	1	نِهِلُ	nihilu	nihilu		ni hilo					
2586	262	256	d	2	نِمِكْوَمْبِيَا	nimikwambiyā	nimikwambiya		nimekwambiya					
2588	263	257	a	2	حِيُ	ḥiyu	hiyu		hiyo					
2590	263	257	b	1	پَپُ	papu	papu		papo					
2591	263	257	b	2	نْدِيَا	ndiyā	ndiya		ndia					
2593	263	257	c	1	مْلَغُوْنِ	mlaghūni	mlaghuni		mlangoni					
2594	263	257	c	2	اَكَيْكُمَ	akaykuma	akaykuma		akaikoma					
2598	264	258	b	1	حَپُ	ḥapu	hapu		hapo					
2599	264	258	b	2	عَلِيْ	ʿalii	alii		Ali					
2600	264	258	b	3	حَيْدَارِ	ḥaydāri	haydari		Haidari					
2601	264	258	c	1	اَكَيْنُكَ	akaynuka	akaynuka		akainuka					
2602	264	258	c	2	جَعْفَارِ	jaʿfāri	jafari		Jaafari					
2603	264	258	d	1	مْكُنُ	mkunu	mkunu		mkono					
2604	264	258	d	2	كَمْپُكِيْيَا	kampukı̄yā	kampukiya		kampokeya					
2631	267	261	c	1	وَعَلَيْكَ	waʿalayka	waalayka		wa-aleka					
2633	267	261	d	1	عَلِيْ	ʿalii	alii		Ali					
2634	267	261	d	2	اَكِپُكِيْيَا	akipukı̄yā	akipukiya		akipokeya					
2635	268	262	a	1	عَلِيْ	ʿalii	alii		Ali					
2636	268	262	a	2	اَكَبَيِيْنِ	akabayı̄ni	akabayini		akabaini					
2637	268	262	b	1	مِنِكُغُوْجَا	minikughūjā	minikughuja		nimekungoja					
2638	268	262	b	2	نْدِيَنِ	ndiyani	ndiyani		ndiani					
2639	268	262	c	1	وَلِتُكَ	walituka	walituka		walitoka					
2642	268	262	d	1	بُنَ	buna	buna		mbona					
2643	268	262	d	2	اُمِلِمَتِيْيَ	umilimatı̄ya	umilimatiya		umelimatiya					
2650	269	263	c	3	نِمْبَلِ	nimbali	nimbali		ni mbali					
2652	269	263	d	2	اُرِفُ	urifu	urifu		urefu					
2653	269	263	d	3	يُنْدِيَا	yundiyā	yundiya		wa ndiya	*				
2656	270	264	a	3	يَڠَاانِ	yagāāni	yagaani		yangani					
2658	270	264	b	2	مْتِرِ	mtiri	mtiri		mtende					
2659	270	264	b	3	نْدِيَنِ	ndiyani	ndiyani		ndiani					
2660	270	264	c	1	يَلِنِتُكَ	yalinituka	yalinituka		yalinitoka					
2661	270	264	c	2	مُيُوْنِ	muyūni	muyuni		moyoni					
2662	270	264	d	1	يَلِيْ	yalii	yalii		yale					
2663	270	264	d	2	وَلِيُ	waliyu	waliyu		waliyonambiya					
2664	270	264	d	3	نَمْبِيَا	nambiyā	nambiya		~					
2665	271	265	a	1	كَيِوَاتَ	kayiwāta	kayiwata		kaiwata					
2666	271	265	a	2	يَكُڤُلِ	yakuvuli	yakuvuli		ya kuvuli					
2668	271	265	b	2	حِيُ	ḥiyu	hiyu		hiyo					
2669	271	265	b	3	يَپِلِ	yapili	yapili		ya pili					
2671	271	265	c	2	نِكِتَعَمَلِيْ	nikitaʿamalii	nikitaamalii		nikitaamali					
2673	271	265	d	2	اِمِنِپُتِيْيَا	iminiputı̄yā	iminiputiya		imenipoteya					
2676	272	266	a	3	كَيِتَ	kayita	kayita		kaeta					
2678	272	266	b	2	لَبَرَ	labara	labara		la bara					
2680	272	266	c	1	اِلِيُ	iliyu	iliyu		ile					
2681	272	266	c	2	نْدِيَا	ndiyā	ndiya		ndia					
2682	272	266	c	3	كَيْوَاتَ	kaywāta	kaywata		kaiwata					
2684	272	266	d	2	نِسِپُ	nisipu	nisipu		nisiporejeya					
2685	272	266	d	3	رِجِيَا	rijiyā	rijiya		~					
2687	273	267	a	2	نِنْرَا	ninrā	ninra		nendao					
2689	273	267	b	1	اِلِيُ	iliyu	iliyu		ile					
2690	273	267	b	2	نْدِيَا	ndiyā	ndiya		ndia					
2691	273	267	b	3	سِئِيُوْنِ	siiyūni	siiyuni		siioni					
2692	273	267	c	1	هُوْنَا	hūnā	huna		huona					
2693	273	267	c	2	نِكُمْوِتُنِ	nikumwituni	nikumwituni		niko mwituni					
2695	273	267	d	2	زِمِنِپُتِيَا	ziminiputiyā	ziminiputiya		zimenipoteya					
2698	274	268	a	3	زَانْغُ	zānghu	zanghu		zangu					
661	67	67	a	2	كِتَ	kita	kita		keta					
2720	276	270	a	2	يَأَظُهُرِ	yaaẓuhuri	yaadhuhuri		ya adhuhuri					
2722	276	270	b	2	نْدِيَ	ndiya	ndiya		ndia					
2725	276	270	c	2	يَكُيَ	yakuya	yakuya		ya kuya					
2728	276	270	d	2	نِمِكْوَمْبِيَا	nimikwambiyā	nimikwambiya		nimekwambiya					
2731	277	271	b	1	عَلِيْ	ʿalii	alii		Ali					
2734	277	271	c	2	اُمِسُمْبُكَ	umisumbuka	umisumbuka		umesumbuka					
2735	277	271	d	1	نَيِ	nayi	nayi		naye					
2736	277	271	d	2	كَنِنَ	kanina	kanina		kanena					
2737	277	271	d	3	نَبِيْيَا	nabı̄yā	nabiya		Nabiya					
2738	278	272	a	1	اَكَنِيْنَ	akanı̄na	akanina		akanena					
2739	278	272	a	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima					
2740	278	272	b	1	سِحَبَ	siḥaba	sihaba		si haba					
2743	278	272	c	1	نْدِيَ	ndiya	ndiya		ndiya					
2744	278	272	c	2	اَلِيُ	aliyu	aliyu		aliyoandama					
2745	278	272	c	3	اَدَامَ	adāma	adama		~					
2747	278	272	d	2	هُمْزِغِيَا	humzighiyā	humzighiya		humzengeya					
2748	279	273	a	1	اَمِمْكِيْڠَ	amimkı̄ga	amimkiga		amemkinga					
2749	279	273	a	2	وَدُدُ	wadudu	wadudu		Wadudi	*				
2753	279	273	c	2	وَڠَلِمْزِنِ	wagalimzini	wagalimzini		wangalimzidi					
2755	279	273	d	2	وِنْڠِ	wingi	wingi		wengi					
2756	279	273	d	3	سِمْمُيَا	simmuyā	simmuya		si mmoya					
2757	280	274	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2758	280	274	a	2	اُپُ	upu	upu		upo					
2760	280	274	b	1	اَكَمْوِپُكَ	akamwipuka	akamwipuka		akamwepuka					
2761	280	274	b	2	اَمِيْنِ	amı̄ni	amini		Amini					
2763	280	274	c	2	مْكُنُ	mkunu	mkunu		mkono					
2764	280	274	c	3	اَكَبَيِنِ	akabayini	akabayini		akabaini					
2765	280	274	d	1	كَمْوامْكُوَا	kamwāmkuwā	kamwamkuwa		kamwamkua					
2766	280	274	d	2	عَلِيَا	ʿaliyā	aliya		Aliya					
2767	281	275	a	1	مْكُوْنُ	mkūnu	mkunu		mkono					
2769	281	275	b	1	عَلِيْ	ʿalii	alii		Ali					
2771	281	275	c	1	كَمْوَامْبِيَ	kamwāmbiya	kamwambiya		kamwambia					
2772	281	275	c	2	حَشِيْمَ	ḥashı̄ma	hashima		Hashima					
2773	281	275	d	1	نِرَا	nirā	nira		nenda					
2774	281	275	d	2	رَانِ	rāni	rani		ndani					
2776	281	275	d	4	مُيَا	muyā	muya		moya					
2778	282	276	a	2	رَانِ	rāni	rani		ndani					
2779	282	276	a	3	الِپُفِيْكَ	ālipufı̄ka	alipufika		alipofika					
2780	282	276	b	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
2783	282	276	c	2	نِمِكِپِكَ	nimikipika	nimikipika		nimekipika					
2784	282	276	d	1	نَسَسَا	nasasā	nasasa		na sasa					
2787	283	277	a	2	سِكُمَكِنِيْكَ	sikumakinı̄ka	sikumakinika		si kumakinika					
2790	283	277	c	1	مُيُ	muyu	muyu		moyo					
2794	283	277	d	3	وَنْدِيَا	wandiyā	wandiya		wa ndiya					
2795	284	278	a	1	نَزِؤُالِيْزَا	naziuālı̄zā	naziualiza	naziūlı̄zā	na zeo					
2796	284	278	a	2	يُكَ	yuka	yuka		alizotoka	*				
2797	284	278	b	1	َمِنِيُزَا	aminiyuzā	aminiyuza		ameniuza					
2798	284	278	b	2	حَقِيْكَ	ḥaqı̄ka	haqika		hakika					
880	90	88	c	3	كْوَانِ	kwāni	kwani							
1802	184	179	c	3	وَنَا	wanā	wana							
2119	216	210	b	2	وَ	wa	wa							
2551	259	253	c	1	وَ	wa	wa							
2672	271	265	d	1	سَعَ	saʿa	saa							
2857	290	284	d	1	بُنَ	buna	buna		mbona					
3766	372	376	c	2	لَلُنِنِيْكَ	laluninı̄ka	laluninika		laloneneka					
3384	344	338	c	1	نَوْ	naw	nau		na uchenda					and when you go there do not speak
3385	344	338	c	2	ػِنْرَا	kʲinrā	chinra							
3387	344	338	d	1	كْوَا	kwā	kwa							privately to tell them [what has happened].
3390	345	339	a	1	زُبِيْرِ	zubı̄ri	zubiri		Zuberi					
3392	345	339	b	1	كَپُكِيَ	kapukiya	kapukiya		kapokea					
3394	345	339	c	1	اَكِنْرَّا	akinrrā	akinrra		akenda					
3396	345	339	c	3	اُپِسِ	upisi	upisi		upesi					
3397	345	339	d	1	كَمْپِيْكِيَ	kampı̄kiya	kampikiya		kampekea					
3398	345	339	d	2	عَطِيَا	ʿaṭiyā	atiya		Atiya					
3399	346	340	a	1	بَرُوَا	baruwā	baruwa		barua					
3401	346	340	a	3	كْوَاكِ	kwāki	kwaki		kwake					
3403	346	340	b	2	زُبِيْرِ	zubı̄ri	zubiri		Zuberi					
3404	346	340	b	3	اَتُكِ	atuki	atuki		atoke					
3405	346	340	c	1	اِلِيْ	ilii	ilii		ili					
3406	346	340	c	2	يَمْوَالِمُ	yamwālimu	yamwalimu		ya mwalimu					
3407	346	340	c	3	وَاكِ	wāki	waki		wake					
3408	346	340	d	1	كِنِرَا	kinirā	kinira		kenenda					
3409	346	340	d	2	كُمْپِكِيْيَا	kumpikı̄yā	kumpikiya		kumpekeya					
3382	344	338	b	2	مْوَلِمُ	mwalimu	mwalimu							
3388	344	338	d	2	فَرَغَا	faraghā	faragha							
3389	344	338	d	3	كُوَمْبِيَا	kuwambiyā	kuwambiya							
3391	345	339	a	2	اَسِجِلِسِ	asijilisi	asijilisi							
3393	345	339	b	2	كَرَطَسِ	karaṭasi	karatasi							
3395	345	339	c	2	كْوَ	kwa	kwa							
3425	348	342	b	3	هُسَلِمَ	husalima	husalima							
3400	346	340	a	2	كُمْپَ	kumpa	kumpa							
3402	346	340	b	1	كِسَ	kisa	kisa							
3426	348	342	c	1	وَلَا	walā	wala							
3429	348	342	d	1	اُسِيْكُ	usı̄ku	usiku							
3418	347	341	d	1	مْتُ	mtu	mtu							
3422	348	342	a	2	اَكَنُظُمُ	akanuẓumu	akanudhumu							
3432	349	343	a	2	نْيُمَ	nyuma	nyuma							
3445	350	344	b	2	اَسِكُتَ	asikuta	asikuta							
3448	350	344	c	3	كُپَتَ	kupata	kupata							
3830	379	383	c	1	اُتِنْدِ	utindi	utindi		utendi					
3837	380	384	b	1	عمت	ʿmt	mt		amati					
3541	360	354	a	2	مِمِ	mimi	mimi							
3550	360	354	d	1	نَتَكَ	nataka	nataka							
3559	361	355	c	2	مِمِ	mimi	mimi							
3560	361	355	c	3	سِكُتَكَ	sikutaka	sikutaka							
3562	361	355	d	2	دُنِيَا	duniyā	duniya							
3558	361	355	c	1	وَلَا	walā	wala							
3564	362	356	a	2	صُبِرِ	ṣubiri	subiri							
3622	368	362	a	2	كَلِيْمَ	kalı̄ma	kalima							
3567	362	356	b	2	كْوَ	kwa	kwa							
3569	362	356	c	1	وَلَا	walā	wala							
3612	367	361	a	2	اَكَمْكَلِيْمُ	akamkalı̄mu	akamkalimu							
3575	363	357	a	2	كُپُلِكَ	kupulika	kupulika							
3577	363	357	b	2	يَكِمْتُكَ	yakimtuka	yakimtuka							
3581	363	357	d	1	اَكَنْيَمَاءَ	akanyamaa	akanyamaa							
3582	363	357	d	2	كُلِيْيَا	kulı̄yā	kuliya							
3600	365	359	d	1	وَلَا	walā	wala							
3586	364	358	b	1	َكِسَ	akisa	akisa							
3589	364	358	c	2	هَكُيَ	hakuya	hakuya							
3603	366	360	a	2	كِئِفَصِيْرِ	kiifaṣı̄ri	kiifasiri							
3613	367	361	b	1	كُمْپَ	kumpa	kumpa							
3614	367	361	b	2	مَيِ	mayi	mayi							
3615	367	361	b	3	مَتَمُ	matamu	matamu							
3606	366	360	c	1	حَنْدَ	ḥanda	handa							
3607	366	360	c	2	سَسَ	sasa	sasa							
3608	366	360	c	3	كُفِكِرِ	kufikiri	kufikiri							
3629	368	362	d	2	حُنَمْبِيَا	ḥunambiyā	hunambiya							
3609	366	360	d	1	تَنَبُحِ	tanabuḥi	tanabuhi							
3618	367	361	c	3	تِمَمُ	timamu	timamu							
3638	369	363	c	2	مَتَمَ	matama	matama							
3626	368	362	c	2	اُنَ	una	una							
3627	368	362	c	3	حَلِمَامَ	ḥalimāma	halimama							
3635	369	363	b	2	مَيِ	mayi	mayi							
3630	369	363	a	1	صُبِرِ	ṣubiri	subiri							
3594	365	359	a	1	اُنِيِتِيْ	uniyitii	uniyitii		unietee					
3595	365	359	a	2	بَرُوَا	baruwā	baruwa		barua					
3596	365	359	b	1	كَتُكَ	katuka	katuka		katoka					
3597	365	359	b	2	كِيْفُنُوَا	kı̄funuwā	kifunuwa		kifunua					
3598	365	359	c	1	اَلِپُ	alipu	alipu		alipo					
3599	365	359	c	2	سِيْكُمُيُوَا	sı̄kumuyuwā	sikumuyuwa		sikumuyua					
3601	365	359	d	2	سِكُمْزِڠِيْيَا	sikumzigı̄yā	sikumzigiya		sikumzengeya					
3602	366	360	a	1	بَرُوَ	baruwa	baruwa		barua					
3604	366	360	b	1	نْدِيَ	ndiya	ndiya		ndia					
3605	366	360	b	2	نَلِئِيَبِرِا	naliiyabiriā	naliiyabiria		naliiabiri					
3610	366	360	d	2	كُنِيْغِيَا	kunı̄ghiyā	kunighiya		kuningiya					
3611	367	361	a	1	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3616	367	361	c	1	دُعَآ	duʿaã	duaa		dua					
3617	367	361	c	2	سَبَعَ	sabaʿa	sabaa		saba					
3619	367	361	d	1	نْرَانِ	nrāni	nrani		ndani					
3620	367	361	d	2	نِمِيَسُمِيَا	nimiyasumiyā	nimiyasumiya		nimeyasomeya					
3623	368	362	b	1	سِيَيَوزَا	siyayawzā	siyayauza		siyayaweza					
3624	368	362	b	2	فَطِيْمَ	faṭı̄ma	fatima		Fatima					
3625	368	362	c	1	مُيُ	muyu	muyu		moyo					
3628	368	362	d	1	رُوْحُا	rūḥuā	ruhua		ruhu					
3634	369	363	b	1	عَطِيْكَ	ʿaṭı̄ka	atika		Atika					
3636	369	363	b	3	سِكِتُ	sikitu	sikitu		si kitu					
3641	369	363	d	2	تَپُكِيْيَا	tapukı̄yā	tapukiya		tapokeya					
3643	370	364	a	2	كَتْوَا	katwā	katwa		katwaa					
3631	369	363	a	2	كْوَا	kwā	kwa							
3637	369	363	c	1	پِجَ	pija	pija							
3639	369	363	c	3	مَتَتُ	matatu	matatu							
3649	370	364	c	2	مُوْنِ	mūni	muni							
3645	370	364	b	1	مَيِ	mayi	mayi							
3650	370	364	c	3	كَيَنْدِكَ	kayandika	kayandika							
3677	373	367	d	1	وَكَلَ	wakala	wakala							
3653	371	365	a	1	حَپُ	ḥapu	hapu							
3654	371	365	a	2	كَمْكَلِيْفِيْشَا	kamkalı̄fı̄shā	kamkalifisha							
3657	371	365	c	1	مَيِ	mayi	mayi							
3661	371	365	d	2	كَمْشُهُدِيَ	kamshuhudiya	kamshuhudiya							
3662	372	366	a	1	اَكِسَ	akisa	akisa							
3664	372	366	b	1	زَا	zā	za							
3669	372	366	d	1	اَكِسَ	akisa	akisa							
3671	373	367	a	1	حَتَ	ḥata	hata							
3707	376	370	c	2	كِتِيْنِ	kitı̄ni	kitini							
3687	374	368	d	1	مْتُ	mtu	mtu							
3688	374	368	d	2	سِكُمُوَاتِيَا	sikumuwātiyā	sikumuwatiya							
3703	376	370	b	1	كْوَا	kwā	kwa							
3710	377	371	a	1	كَمَ	kama	kama							
3718	377	371	d	1	كَمَ	kama	kama							
3716	377	371	c	2	وَاتُ	wātu	watu							
3717	377	371	c	3	كُتَمْكَ	kutamka	kutamka							
3720	377	371	d	3	كُنَمْبِيَا	kunambiyā	kunambiya							
3722	378	372	a	2	شَهِدِ	shahidi	shahidi							
3655	371	365	b	1	وَ	wa	wa		waadhi					
3727	378	372	c	1	سَسَا	sasā	sasa							
3780	374	378	a	1	بَىْتِيْزِ	baytı̄zi	baytizi		baitize					Know that its stanzas
3763	372	376	b	1	كُلَ	kula	kula							[about] everything that had been done,
3764	372	376	b	2	لَلِلُوْتِرِّكَ	lalilūtirrika	lalilutirrika		lalilotendeka					
3739	379	373	d	1	حَتَ	ḥata	hata							
3781	374	378	a	2	زِيُوِنِ	ziyuwini	ziyuwini		ziyueni					
3765	372	376	c	1	اَمْابَلُ	amābalu	amabalu		ambalo	*				which had been spoken about --
3742	370	374	a	1	كِسَ	kisa	kisa							
3745	370	374	b	1	اَكَصَلِ	akaṣali	akasali							
3767	372	376	d	1	يُتِ	yuti	yuti		yote					he recounted everything to them.
3749	370	374	d	1	مُيِنِ	muyini	muyini							
3768	372	376	d	2	كَوَاحَدِثِيَا	kawāḥadithiyā	kawahadithiya							
3751	371	375	a	1	حَپُ	ḥapu	hapu		hapo					
3752	371	375	a	2	اَلِپُ	alipu	alipu		aliporudi					
3753	371	375	a	3	رُدِيْ	rudii	rudii		~					
3791	375	379	b	1	مْتُ	mtu	mtu							that person [should] recite them
3792	375	379	b	2	اَكَزِبَيِنِ	akazibayini	akazibayini		akazibaini					
3754	371	375	b	1	رِپُ	ripu	ripu		ndipo					
3755	371	375	b	2	اَلِپُ	alipu	alipu		aliporadidi					
3756	371	375	b	3	رَادِدِ	rādidi	radidi		~					
3769	373	377	a	1	نَمِ	nami	nami							
3757	371	375	c	1	مَنِنُ	maninu	maninu		maneno					
3758	371	375	c	2	اَكَجِتَهِدِ	akajitahidi	akajitahidi							
3770	373	377	a	2	نِمِتِيْيَ	nimitı̄ya	nimitiya		nimetia					
3771	373	377	a	3	تَمُ	tamu	tamu							
3760	371	375	d	2	كِوَامْبِيَا	kiwāmbiyā	kiwambiya							
3762	372	376	a	2	كُپُلِيْكَ	kupulı̄ka	kupulika							
3782	374	378	b	1	مِيَا	miyā	miya		mia					[come to] three hundred, be assured,
3783	374	378	b	2	تَتُ	tatu	tatu							
3784	374	378	b	3	هُمْكِنِ	humkini	humkini							
3773	373	377	b	2	زَنْغُ	zanghu	zanghu		zangu					
3774	373	377	b	3	حُكُمَ	ḥukuma	hukuma		hukoma					
3775	373	377	c	1	نَئَبَوُ	naabawu	naabawu		na ambao					
3776	373	377	c	2	وَزِسُمَ	wazisuma	wazisuma		wazisoma					
3785	374	378	c	1	وَسَبَعَ	wasabaʿa	wasabaa		wa sabaa					and seven, and seventy --
3777	373	377	d	1	كْوَ	kwa	kwa							
3778	373	377	d	2	زُتِ	zuti	zuti		zote					
3779	373	377	d	3	زِتَوِلِيَ	zitawiliya	zitawiliya		zitaeleya					
3786	374	378	c	2	وَسِتِيْنِ	wasitı̄ni	wasitini		wa sitini			In fact, this version of the ballad has 384 stanzas, not 377.		
3793	375	379	c	1	اَصُبُحِ	aṣubuḥi	asubuhi							morning and evening,
3794	375	379	c	2	نَيْيُوْنِ	nayyūni	nayyuni		na yioni					
3787	374	378	d	1	عَدَادِ	ʿadādi	adadi							I have told you the number.
3788	374	378	d	2	نِمِوَمْبِيَ	nimiwambiya	nimiwambiya		nimewambiya					
3789	375	379	a	1	اَحِفَظِيُ	aḥifaẓiyu	ahifadhiyu		ahifadhiyo					Whoever learns [the stanzas] by heart,
3790	375	379	a	2	مُيُوْنِ	muyūni	muyuni		moyoni					
3811	377	381	c	2	مْتُ	mtu	mtu							
3812	377	381	c	3	نَجَرِبُ	najaribu	najaribu		na jaribu			i.e. if you don't believe it, try it and see.		
3799	376	380	b	1	مْتُيِ	mtuyi	mtuyi		mtuye					
3795	375	379	d	1	مُيَ	muya	muya		moya					not a [single] one being missed out.
3796	375	379	d	2	اِسِپُغُكِيْيَا	isipughukı̄yā	isipughukiya		isipungukiya					
3800	376	380	b	2	هَتُسُمْبُكَ	hatusumbuka	hatusumbuka		hatosumbuka			i.e. he will not remain poor.		
3803	376	380	d	1	مُلَ	mula	mula		Mola					
3797	376	380	a	1	كْوَنْدَ	kwanda	kwanda							
3804	376	380	d	2	تَمُوَافِكِيْيَا	tamuwāfikı̄yā	tamuwafikiya					God will make the person succeed in whatever he asks.		
3802	376	380	c	2	تَمْكَ	tamka	tamka		~					
3808	377	381	b	1	اَتَجِبِوَا	atajibiwā	atajibiwa							
3805	377	381	a	1	اَوْمْبَلُ	awmbalu	aumbalu		aombalo					
3743	370	374	a	2	عَلِيْ	ʿalii	alii		Ali					
3744	370	374	a	3	حَيْدَارِ	ḥaydāri	haydari		Haidari					
3746	370	374	b	2	اَظُهُرِا	aẓuhuriā	adhuhuria	aẓuhurī	adhuhuri					
3747	370	374	c	1	كَنَدَامَنَ	kanadāmana	kanadamana		kandamana	*				
3748	370	374	c	2	نَزُبِيْرِ	nazubı̄ri	nazubiri		na Zuberi					
3750	370	374	d	2	اَكِرِجِيْيَا	akirijı̄yā	akirijiya		akirejeya					
3759	371	375	d	1	مَصَحَبَ	maṣaḥaba	masahaba		Masahaba					
3761	372	376	a	1	كَوَامْبِيَ	kawāmbiya	kawambiya		kawambia					He told them as they listened,
3772	373	377	b	1	بَىْتِ	bayti	bayti		baiti					
3806	377	381	a	2	كْوَ	kwa	kwa							
3807	377	381	a	3	وَهَابُ	wahābu	wahabu		Wahabu					
3809	377	381	b	2	جَوَابُ	jawābu	jawabu							
3814	377	381	d	2	وَصِيْيَا	waṣı̄yā	wasiya							
3810	377	381	c	1	اَوْ	aw	au							
3816	378	382	a	2	سَعِرِ	saʿiri	sairi							
3813	377	381	d	1	اَدَلِلِشِيْ	adalilishii	adalilishii		adalilishe					
3819	378	382	b	3	جَبَارِ	jabāri	jabari		Jabari					
3815	378	382	a	1	لَاطرد	lāṭrd	latrd		la taridi					Reject Hell
3817	378	382	b	1	اِسْمُ	ismu	ismu		isimu					in the name of the Almighty
3848	380	384	d	5	وسلم	ūslm	uslm		wa salamu					
3821	378	382	c	2	وَكِ	waki	waki		wake					
3822	378	382	c	3	بَشِيْرِ	bashı̄ri	bashiri		Bashiri					
3823	378	382	d	1	مْوِسُ	mwisu	mwisu		mwiso					
3824	378	382	d	2	اَصِزُتِلِوَى	aṣizutiliway	asizutiliway		asizotiliwa					
3825	379	383	a	1	نِمِكْوَانْدَ	nimikwānda	nimikwanda		nimekwanda					
3826	379	383	a	2	كِكَرِرِ	kikariri	kikariri							
3827	379	383	b	1	نَوِ	nawi	nawi		nawe					
3828	379	383	b	2	سُمَ	suma	suma		soma					
3829	379	383	b	3	اِظْهَرِا	iẓhariā	idhharia	iẓharī	idhihari					
3831	379	383	c	2	وَجَعْفَرِ	wajaʿfari	wajafari		wa Jaafari					
3832	379	383	d	1	نَمَوُلَنَا	namawulanā	namawulana		na Maulana					
3833	379	383	d	2	عَلِيْايَا	ʿaliyāyā	aliyaya		Aliya					
3834	380	384	a	1	تمت	tmt	tmt		tamati					It is accomplished with blessing.
3835	380	384	a	2	وايا	wāyā	waya		wa					
3836	380	384	a	3	الخير	ālkhı̄r	alhir		al-heri					
3838	380	384	b	2	وصآ	wṣã	usa		wasi					
3839	380	384	b	3	اللّٰه	lläh	llah		al-llahi					
3840	380	384	c	1	على	ʿlı̄	li		Ali					
3841	380	384	c	2	سيّد	sı̄yd	sid		Sayidi					
3842	380	384	c	3	نا	nā	na							
3843	380	384	c	4	محمد	mḥmd	mhmd		Muhamadi					
3844	380	384	d	1	و	w	u		wa					
3845	380	384	d	2	على	ʿlı̄	li		alehe					
3846	380	384	d	3	اله	ālh	alh		~					
3847	380	384	d	4	وصحبه	wṣḥbh	ushbh		wa sahabihi					
\.


--
-- Name: jaafari_r_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_r_words_word_id_seq', 3848, true);


--
-- Name: jaafari_r_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY jaafari_r_words
    ADD CONSTRAINT jaafari_r_words_pk PRIMARY KEY (word_id);


--
-- PostgreSQL database dump complete
--

