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
-- Name: jaafari; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE jaafari (
    poemline_id integer NOT NULL,
    msno integer,
    stanza integer,
    loc character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.jaafari OWNER TO kevin;

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
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY jaafari ALTER COLUMN poemline_id SET DEFAULT nextval('jaafari_poemline_id_seq'::regclass);


--
-- Data for Name: jaafari; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY jaafari (poemline_id, msno, stanza, loc, arabic, close, standard, english) FROM stdin;
1	1	1	a	بِسْمِ اللّٰهِ إِخْوَانِ	bismi llähi ikhwāni	bismi llahi ihwani	
2	1	1	b	پَمْوٖ نَ رَحْمٰنِ	pamwe na raḥmäni	pamwe na rahmani	
3	1	1	c	نَ الرَّحِيْمُ يُوَنِ	na rraḥı̄mu yuwani	na rrahimu yuwani	
4	1	1	d	نْدِيٗ يَلٗأَنْدَمِيَ	ndiyo yaloandamiya	ndiyo yaloandamiya	
5	2	2	a	پُلِكَنِ نْدُزَنْڠُ	pulikani nduzangu	pulikani nduzangu	
6	2	2	b	كهٖنْدَ مَتٖمْبٖزِ يَنْڠُ	kʰenda matembezi yangu	kenda matembezi yangu	
7	2	2	c	نِوَپٖ خَبَرِ زَنْڠُ	niwape khabari zangu	niwape habari zangu	
8	2	2	d	قِصَ چَلٗنِجِرِيَ	qiṣa chalonijiriya	qisa chalonijiriya	
9	3	3	a	نِلِ نٖنْدَءٗ نْدِيَنِ	nili nendao ndiyani	nili nendao ndiyani	
10	3	3	b	كْوَلِ نَ مْٹُ چُمْبَنِ	kwali na mţu chumbani	kwali na mtu chumbani	
11	3	3	c	مٗيٗ أُكَمْتَمَنِ	moyo ukamtamani	moyo ukamtamani	
12	3	3	d	كْوَ حَلَالِ كُرِضِيَ 	kwa ḥalāli kuriḍiya	kwa halali kuridhiya	
13	4	4	a	نَ مَهَرِيٖ يُوَنِ	na mahariye yuwani	na mahariye yuwani	
14	4	4	b	نَلٗمْپَ زَيْدَنِ	nalompa zaydani	nalompa zaydani	
15	4	4	c	نَلِنَ پٖٹٖ چَنْدَنِ	nalina peţe chandani	nalina pete chandani	
16	4	4	d	كَوَهِ كُمْڤَلِيَ	kawahi kumvaliya	kawahi kumvaliya	
17	5	5	a	عَلِى كُتٗكَ كْوَكٖ	ʿalii kutoka kwake	alii kutoka kwake	
18	5	5	b	أُنَ رُبَ مٗيٗ وَكٖ	una ruba moyo wake	una ruba moyo wake	
19	5	5	c	أَكٖنْدَ كْوَ مْكٖ وَكٖ	akenda kwa mke wake	akenda kwa mke wake	
20	5	5	d	مْكٗنٗ هُمْفُمْبِيَ	mkono humfumbiya	mkono humfumbiya	
21	6	6	a	مْوَنَ بِنْتِ رَسُوْلِ	mwana binti rasūli	mwana binti rasuli	
22	6	6	b	يَلِ هَيَتَأَمَلِ	yali hayataamali	yali hayataamali	
23	6	6	c	كَنٖنْدَ مْوٖنْيٖ عَقِلِ	kanenda mwenye ʿaqili	kanenda mwenye aqili	
24	6	6	d	خَبَرِ أَكَمْوَمْبِيَ	khabari akamwambiya	habari akamwambiya	
25	7	7	a	أَكٖنٖنْدَءٖ كِزٖيْ	akenendae kizee	akenendae kizee	
26	7	7	b	فَاطِمَه أَكَمْوَمْبِيٖ	fāṭimah akamwambiye	fatimah akamwambiye	
27	7	7	c	شٖيْخٖ عَلِيْ أُوٗزٖيْ	shēkhe ʿalii uwozee	shehe alii uwozee	
28	7	7	d	خَبَرِ هُكِسِكِيَ	khabari hukisikiya	habari hukisikiya	
29	8	8	a	أَكَفَنْيَ مْشَوَشَ	akafanya mshawasha	akafanya mshawasha	
30	8	8	b	فَاطِمَه كَمْكَنُشَ	fāṭimah kamkanusha	fatimah kamkanusha	
31	8	8	c	عَلَامَ كَمُؤٗنٖشَ	ʿalāma kamuonesha	alama kamuonesha	
32	8	8	d	أُتُنْڠُ أَكَمْٹِيَ	utungu akamţiya	utungu akamtiya	
33	9	9	a	مْوَنَ بِنْتِ أَمِيْنِ	mwana binti amı̄ni	mwana binti amini	
34	9	9	b	هِيٗ نْدِيٗ تَمْكِنِ	hiyo ndiyo tamkini	hiyo ndiyo tamkini	
35	9	9	c	أَلِ نَ پٖٹٖ چَنْدَنِ	ali na peţe chandani	ali na pete chandani	
36	9	9	d	كَوَهِ كُمْڤُلِيَ	kawahi kumvuliya	kawahi kumvuliya	
37	10	10	a	سِجُوِ كهَنٖنَ نِ كوٖلِ	sijuwi kʰanena ni kweli	sijuwi kanena ni kweli	
38	10	10	b	مِمِ سِمتَأَمَلِ	mimi simtaamali	mimi simtaamali	
39	10	10	c	أَرُدِپٗ كْوَ رَسُوْلِ	arudipo kwa rasūli	arudipo kwa rasuli	
40	10	10	d	يٖئٗ تهَمْزِنْڠَتِيَ	yeo tʰamzingatiya	yeo tamzingatiya	
41	11	11	a	أَكَفَنْيَ هِمَ هِمَ	akafanya hima hima	akafanya hima hima	
42	11	11	b	أَسِئِوٖزٖ فَاطِمَه	asiiweze fāṭimah	asiiweze fatimah	
43	11	11	c	حَسَنِ أَكَمْٹُمَ	ḥasani akamţuma	hasani akamtuma	
44	11	11	d	بَبَكٗ نَمْكُلِيَ	babako namkuliya	babako namkuliya	
45	12	12	a	نَمْكُلِيَ كْوَ سِرِ	namkuliya kwa siri	namkuliya kwa siri	
46	12	12	b	أَسِسِكِيٖ بَشِيْرِ	asisikiye bashı̄ri	asisikiye bashiri	
47	12	12	c	كٖنٖنْدَ أَكَفَسِرِ	kenenda akafasiri	kenenda akafasiri	
48	12	12	d	مْبٖلٖ زَ ٹُمْوَ نَبِيَ	mbele za ţumwa nabiya	mbele za tumwa nabiya	
49	13	13	a	كَفَسِرِ مُعَيَنِ	kafasiri muʿayani	kafasiri muayani	
50	13	13	b	هَمْكُلِوَ نْيُمْبَنِ	hamkuliwa nyumbani	hamkuliwa nyumbani	
51	13	13	c	أَكِسِكِيَ أَمِيْنِ	akisikiya amı̄ni	akisikiya amini	
52	13	13	d	عَجَبُ إِكَمْنْڠِيَ	ʿajabu ikamngiya	ajabu ikamngiya	
53	14	14	a	أَكَمُؤُزَ هَشِمَ	akamuuza hashima	akamuuza hashima	
54	14	14	b	يٖئٗ أُنَنِ فَاطِمَه	yeo unani fāṭimah	yeo unani fatimah	
55	14	14	c	هُكْوَمْكُوَ كْوَ هِمَ	hukwamkuwa kwa hima	hukwamkuwa kwa hima	
56	14	14	d	نَايٗ سِيٗ مَزٗوٖيَ	nāyo siyo mazoweya	nayo siyo mazoweya	
57	15	15	a	عَلِى أَكَئِنُكَ	ʿalii akainuka	alii akainuka	
58	15	15	b	أَكَنٖنْدَ كْوَ هَرَكَ	akanenda kwa haraka	akanenda kwa haraka	
59	15	15	c	هَتَ نْيُمْبَنِ كِفِكَ	hata nyumbani kifika	hata nyumbani kifika	
60	15	15	d	مْوَنَ فَاطِمَ هُلِيَ	mwana fāṭima huliya	mwana fatima huliya	
61	16	16	a	هُرُمَ زِكَمْشِكَ	huruma zikamshika	huruma zikamshika	
62	16	16	b	عَلِيْ كَشَوِشِكَ	ʿalii kashawishika	alii kashawishika	
63	16	16	c	كَمْبَ فَتُمَ پُلِكَ	kamba fatuma pulika	kamba fatuma pulika	
64	16	16	d	أُلِلٗنَلٗ نَمْبِيَ	ulilonalo nambiya	ulilonalo nambiya	
65	17	17	a	أُنَ كِتْوَ هُكُؤُمَ	una kitwa hukuuma	una kitwa hukuuma	
66	17	17	b	أَمَ أُمٖشِكْوَ نِ حُمَ	ama umeshikwa ni ḥuma	ama umeshikwa ni huma	
67	17	17	c	أَكَمْجِبُ فَتُمَ	akamjibu fatuma	akamjibu fatuma	
68	17	17	d	كْوَ مَرَضِ سِكُلِيَ	kwa maraḍi sikuliya	kwa maradhi sikuliya	
69	18	18	a	مِمِ هَپَ نَلِتٗكَ	mimi hapa nalitoka	mimi hapa nalitoka	
70	18	18	b	وٖوٖ هُنٖنَ هُتٖكَ	wewe hunena huteka	wewe hunena huteka	
71	18	18	c	نَ كَمَ كهِٹُ وَتَكَ	na kama kʰiţu wataka	na kama kitu wataka	
72	18	18	d	أُسِخٗفُ كُنَمْبِيَ	usikhofu kunambiya	usihofu kunambiya	
73	19	19	a	وَتَكَ نِنِ نْدُيَنْڠُ	wataka nini nduyangu	wataka nini nduyangu	
74	19	19	b	نِئِفِدِ رٗحٗ يَنْڠُ	niifidi roḥo yangu	niifidi roho yangu	
75	19	19	c	مٗيٗ أُوَتٖ مَتُنْڠُ	moyo uwate matungu	moyo uwate matungu	
76	19	19	d	نَوٖ أُكٗمٖ كُلِيَ	nawe ukome kuliya	nawe ukome kuliya	
77	20	20	a	فَتُمَ أَكَتَمْكَ	fatuma akatamka	fatuma akatamka	
78	20	20	b	پٖٹٖ يَكٗ نَئِتَكَ	peţe yako naitaka	pete yako naitaka	
79	20	20	c	عَلِى أَكَشُٹُكَ	ʿalii akashuţuka	alii akashutuka	
80	20	20	d	هَؤٗنِ لَ كُمْوَمْبِيَ	haoni la kumwambiya	haoni la kumwambiya	
81	21	21	a	كِشَ عَلِيْ حَيْدَرِ	kisha ʿalii ḥaydari	kisha alii haydari	
82	21	21	b	نٖنٗ أَلِلٗفَسِرِ	neno alilofasiri	neno alilofasiri	
83	21	21	c	أَنَيٗ أَبُوْ بَكَرِ	anayo abuu bakari	anayo abuu bakari	
84	21	21	d	تهَكْوٖنْدَ كُٹْوَلِيَ	tʰakwenda kuţwaliya	takwenda kutwaliya	
85	22	22	a	پٖٹٖ يَكٗ يَ چَنْدَنِ	peţe yako ya chandani	pete yako ya chandani	
86	22	22	b	أَبُوْ بَكَرِ سِ كِفَنِ	abuu bakari si kifani	abuu bakari si kifani	
87	22	22	c	نِمٖٹْوَاءَ تَمْكِنِ	nimeţwaa tamkini	nimetwaa tamkini	
88	22	22	d	كْوَ أُلِيٗنَمْبِيَ	kwa uliyonambiya	kwa uliyonambiya	
89	21	23	a	هُنُ مْوٖزِ نِ وَ پِلِ	hunu mwezi ni wa pili	hunu mwezi ni wa pili	
90	21	23	b	مِمِ سِكُتَأَمَلِ	mimi sikutaamali	mimi sikutaamali	
91	21	23	c	أُنَ نَ مْكٖ وَ پِلِ	una na mke wa pili	una na mke wa pili	
92	21	23	d	هَبَرِ نِمٖسِكِيَ	habari nimesikiya	habari nimesikiya	
93	22	24	a	نَأَپَ وَاللّٰهِ نْدُيَنْڠُ	naapa wallähi nduyangu	naapa wallahi nduyangu	
94	22	24	b	نِ وٖيْ پْوٖكٖ مْكٖ وَنْڠُ	ni wee pweke mke wangu	ni wee pweke mke wangu	
95	22	24	c	نِ نَنِ عَدُوِ يَنْڠُ	ni nani ʿaduwi yangu	ni nani aduwi yangu	
96	22	24	d	هُيٗ أَلٗنِزُلِيَ	huyo alonizuliya	huyo alonizuliya	
97	23	25	a	كَمْجِبُ كْوَ لِسَنِ	kamjibu kwa lisani	kamjibu kwa lisani	
98	23	25	b	مْٹُيٖ سِمْبَئِنِ	mţuye simbaini	mtuye simbaini	
99	23	25	c	پٖٹٖ أُمْپٖيْ نَنِ	peţe umpee nani	pete umpee nani	
100	23	25	d	أُنِپَپٗ تهَرِضِيَ	unipapo tʰariḍiya	unipapo taridhiya	
101	24	26	a	عَلِى أَكَبَئِنِ	ʿalii akabaini	alii akabaini	
102	24	26	b	تهَكْوَمْبِيَ تَمْكِنِ	tʰakwambiya tamkini	takwambiya tamkini	
103	24	26	c	يَلِنْڠِيَ كِسِمَنِ	yalingiya kisimani	yalingiya kisimani	
104	24	26	d	تهَكْوٖنْدَ كُكُتٗلٖيَ	tʰakwenda kukutoleya	takwenda kukutoleya	
105	25	27	a	هَيَ نٖنَ پٖٹٖ يَكٗ	haya nena peţe yako	haya nena pete yako	
106	25	27	b	مَهَلٖ أُئِوٖسٖپٗ	mahale uiwesepo	mahale uiwesepo	
107	25	27	c	كَمَ هَيَ مَتَمْكٗ	kama haya matamko	kama haya matamko	
108	25	27	d	بَبَنْڠُ سِتٗمْوَمْبِيَ	babangu sitomwambiya	babangu sitomwambiya	
109	26	28	a	عَلِيْ أَكَؤُذِكَ	ʿalii akaudhika	alii akaudhika	
110	26	28	b	فَتُمَ كُكَسِرِكَ	fatuma kukasirika	fatuma kukasirika	
111	26	28	c	أَلِئِنُكَ كَتٗكَ	aliinuka katoka	aliinuka katoka	
112	26	28	d	أَكَنٖنْدَ كْوَ نَبِيَ	akanenda kwa nabiya	akanenda kwa nabiya	
113	27	29	a	أَكَمُؤُزَ هَشِمَ	akamuuza hashima	akamuuza hashima	
114	27	29	b	أَلِ نَ نِنِ فَتُمَ	ali na nini fatuma	ali na nini fatuma	
115	27	29	c	أَلِكهَاٹَ كَلِمَ	alikʰāţa kalima	alikata kalima	
116	27	29	d	مْٹُمٖ أَكَمْوَمْبِيَ	mţume akamwambiya	mtume akamwambiya	
117	28	30	a	أَكَمْوَمْبِيَ شَرِيْفُ	akamwambiya sharı̄fu	akamwambiya sharifu	
118	28	30	b	فَتُمَ مٖنِكَلِفُ	fatuma menikalifu	fatuma menikalifu	
119	28	30	c	زِيَپٗ زِسِزٗ خٗوْفُ	ziyapo zisizo khōfu	ziyapo zisizo hofu	
120	28	30	d	زِنْڠِ نِمٖمْٹِلِيَ	zingi nimemţiliya	zingi nimemtiliya	
121	29	31	a	أَلِكِلِيَ يَا رَسُوْلِ	alikiliya yā rasūli	alikiliya ya rasuli	
122	29	31	b	نَمِ نِمٖٹٖنْدَ كْوٖلِ	nami nimeţenda kweli	nami nimetenda kweli	
123	29	31	c	كُمْوَمْبِيَ سِهِمِلِ	kumwambiya sihimili	kumwambiya sihimili	
124	29	31	d	خٗوْفُ زِمٖنِنْڠِيَ	khōfu zimeningiya	hofu zimeningiya	
125	30	32	a	تٖنَ إٖنٖنْدَ سَيِدِ	tena enenda sayidi	tena enenda sayidi	
126	30	32	b	أُمُؤٗنْيٖ أَبُرُدِ	umuonye aburudi	umuonye aburudi	
127	30	32	c	كَئِنُكَ مُحَمَدِ	kainuka muḥamadi	kainuka muhamadi	
128	30	32	d	هَپٗ كَأَنْدَمَ نْدِيَ	hapo kaandama ndiya	hapo kaandama ndiya	
129	31	33	a	أَكٖنْدَ أَكَجِلِسِ	akenda akajilisi	akenda akajilisi	
130	31	33	b	مٗيٗ أُنَ وَسِوَسِ	moyo una wasiwasi	moyo una wasiwasi	
131	31	33	c	كَئِفَنْيَ كَمَ هَئِسِ	kaifanya kama haisi	kaifanya kama haisi	
132	31	33	d	إٖنٖنْدٖيْ كُمْوَنْڠَلِيَ	enendee kumwangaliya	enendee kumwangaliya	
133	32	34	a	كَمُؤُلِزَ هَشِمَ	kamuuliza hashima	kamuuliza hashima	
134	32	34	b	وَلِ نَ نِنِ فَتُمَ	wali na nini fatuma	wali na nini fatuma	
135	32	34	c	حَسَنِ مٖكُيَ هِمَ	ḥasani mekuya hima	hasani mekuya hima	
136	32	34	d	عَلِيْ كُمْوَنْدَمِيَ	ʿalii kumwandamiya	alii kumwandamiya	
137	33	35	a	فَتُمَ هَكُكَسِرِ	fatuma hakukasiri	fatuma hakukasiri	
138	33	35	b	أَكَمْوَمْبِيَ بَشِيْرِ	akamwambiya bashı̄ri	akamwambiya bashiri	
139	33	35	c	عَلِيْ نْدَكٖ هَبَرِ	ʿalii ndake habari	alii ndake habari	
140	33	35	d	يٖؤٗ نِمٖزِسِكِيَ	yeo nimezisikiya	yeo nimezisikiya	
141	34	36	a	أَكَمُؤُزَ أَمِيْنِ	akamuuza amı̄ni	akamuuza amini	
142	34	36	b	نِ كَمَ هَبَرِ ڠَنِ	ni kama habari gani	ni kama habari gani	
143	34	36	c	أُسِمْنْڠٗجٖ نْيُمْبَنِ	usimngoje nyumbani	usimngoje nyumbani	
144	34	36	d	أُكَجَ أُكَمُأَمْكُوَ	ukaja ukamuamkuwa	ukaja ukamuamkuwa	
145	35	37	a	أَكَئِنَمَ فَتُمَ	akainama fatuma	akainama fatuma	
146	35	37	b	كُمْسِتَحِ هَشِمَ	kumsitaḥi hashima	kumsitahi hashima	
147	35	37	c	يَلٗمْتٗكَ كَلِمَ	yalomtoka kalima	yalomtoka kalima	
148	35	37	d	بَبَكٖ أَكَمْوَمْبِيَ	babake akamwambiya	babake akamwambiya	
149	36	38	a	يَوَتٖ مَنٖنٗ هَيٗ	yawate maneno hayo	yawate maneno hayo	
150	36	38	b	أُسِٹٖٹٖ نَ مُمٖئٗ	usiţeţe na mumeo	usitete na mumeo	
151	36	38	c	أَكَرُدِشَ كِلِيٗ	akarudisha kiliyo	akarudisha kiliyo	
152	36	38	d	فَاطِمَة الزَّهْرِيَّة	fāṭimaẗ zzahrı̄yaẗ	fatimat zzahriyat	
153	37	39	a	أَكَمْوَمْبِيَ مْوَنَنْڠُ	akamwambiya mwanangu	akamwambiya mwanangu	
154	37	39	b	أُتَكَپٗ رَضِ يَنْڠُ	utakapo raḍi yangu	utakapo radhi yangu	
155	37	39	c	نِ هَيَ مَنٖنٗ يَنْڠُ	ni haya maneno yangu	ni haya maneno yangu	
156	37	39	d	يُوَ أُكِيَسِكِيَ	yuwa ukiyasikiya	yuwa ukiyasikiya	
157	38	40	a	كُتٗكَ كْوَكٖ فَتُمَ	kutoka kwake fatuma	kutoka kwake fatuma	
158	38	40	b	يَلٖ أَكَيَسُكُمَ	yale akayasukuma	yale akayasukuma	
159	38	40	c	كِشَ كَڤُٹَ كَلِمَ	kisha kavuţa kalima	kisha kavuta kalima	
160	38	40	d	بَبَكٖ أَكَمْوَمْبِيَ	babake akamwambiya	babake akamwambiya	
161	39	41	a	أَكَمْوَمْبِيَ بَبَنْڠُ	akamwambiya babangu	akamwambiya babangu	
162	39	41	b	ٹُنَنِ نَ مُمٖ وَنْڠُ	ţunani na mume wangu	tunani na mume wangu	
163	39	41	c	كَبِسَ مَؤٗڤُ يَنْڠُ	kabisa maovu yangu	kabisa maovu yangu	
164	39	41	d	سِ مْوٖنْيٖ كُپٖنْدٖلٖيَ	si mwenye kupendeleya	si mwenye kupendeleya	
165	40	42	a	نَ مْٹُ أَلٗنِغُرِ	na mţu alonighuri	na mtu alonighuri	
166	40	42	b	سَسَ نِمٖفِكِرِ	sasa nimefikiri	sasa nimefikiri	
167	40	42	c	هَٹُپٖنْدٖلٖئِ خٖيْرِ	haţupendelei khēri	hatupendelei heri	
168	40	42	d	هَوٖزِ كُٹْوَنْڠَلِيَ	hawezi kuţwangaliya	hawezi kutwangaliya	
169	41	43	a	تٖنَ هُضُمُ مٗيٗنِ	tena huḍumu moyoni	tena hudhumu moyoni	
170	41	43	b	مْٹُيٖ نِ شَيْطَانِ	mţuye ni shayṭāni	mtuye ni shaytani	
171	41	43	c	مْلَنِوَ مَلْعُوْنِ	mlaniwa malʿūni	mlaniwa maluni	
172	41	43	d	نِيَه مْبٗڤُ كُنِٹِيَ	niyah mbovu kuniţiya	niyah mbovu kunitiya	
173	42	44	a	هَيَ نِمٖيَخِتِمُ	haya nimeyakhitimu	haya nimeyahitimu	
174	42	44	b	نَ مٖنْڠِنٖ تهَنُظُمُ	na mengine tʰanuẓumu	na mengine tanudhumu	
175	42	44	c	جَمِيْعِ مُيَفَهَمُ	jamı̄ʿi muyafahamu	jamii muyafahamu	
176	42	44	d	نِمٖپٖنْدَ كُوَمْبِيَ	nimependa kuwambiya	nimependa kuwambiya	
177	43	45	a	فَهَمُنِ وَؤُنْڠْوَنَ	fahamuni waungwana	fahamuni waungwana	
178	43	45	b	يٖؤٗ نِوَپٖ مَعَنَ	yeo niwape maʿana	yeo niwape maana	
179	43	45	c	پٖٹٖ يَنْڠُ يَ عَيْنَ	peţe yangu ya ʿayna	pete yangu ya ayna	
180	43	45	d	حُجَ نَلٗئِوَتِيَ	ḥuja naloiwatiya	huja naloiwatiya	
181	44	46	a	نَلِئِوَتَ قَصِدِ	naliiwata qaṣidi	naliiwata qasidi	
182	44	46	b	سِ مَهَبَ كُنِزِدِ	si mahaba kunizidi	si mahaba kunizidi	
183	44	46	c	مَرَ هُزَءَ وَلِدِ	mara huzaa walidi	mara huzaa walidi	
184	44	46	d	أَصِلِ إِكَپٗتٖيَ	aṣili ikapoteya	asili ikapoteya	
185	45	47	a	بَسِ نَلٗيَفِكِرِ	basi naloyafikiri	basi naloyafikiri	
186	45	47	b	نْدِيٗ يٗتٖ يَلٗجِرِ	ndiyo yote yalojiri	ndiyo yote yalojiri	
187	45	47	c	أَكَزَوَ جَعْفَرِ	akazawa jaʿfari	akazawa jafari	
188	45	47	d	وَ مَوْلَانَا عَلِيَ	wa mawlānā ʿaliya	wa maulana aliya	
189	46	48	a	أَكَئِسِنْڠَ كِجَنَ	akaisinga kijana	akaisinga kijana	
190	46	48	b	نَ بَبَكٖ وَكِفَنَ	na babake wakifana	na babake wakifana	
191	46	48	c	كُلَ أَلٗكِمُؤٗنَ	kula alokimuona	kula alokimuona	
192	46	48	d	صُوْرَ زَلِكِمْوَمْبِيَ	ṣūra zalikimwambiya	sura zalikimwambiya	
193	47	49	a	وَٹُ وَلِكِنُكُرِ	waţu walikinukuri	watu walikinukuri	
194	47	49	b	عَلِى هَنَ هَبَرِ	ʿalii hana habari	alii hana habari	
195	47	49	c	هَتَ مْمٗيَ كْوَ سِرِ	hata mmoya kwa siri	hata mmoya kwa siri	
196	47	49	d	أَكَفِكَ كُمْوَمْبِيَ	akafika kumwambiya	akafika kumwambiya	
197	48	50	a	أَلِپٗپٖنْدَ مَنَانِ	alipopenda manāni	alipopenda manani	
198	48	50	b	كَمُؤٗنَ مُعَيَنِ	kamuona muʿayani	kamuona muayani	
199	48	50	c	كُنَ كِسِمَ مْوِٹُنِ	kuna kisima mwiţuni	kuna kisima mwituni	
200	48	50	d	أَكٖنْدَ كُچَنْڠَلِيَ	akenda kuchangaliya	akenda kuchangaliya	
201	49	51	a	نَاءٖ أَكٖنْدَ كْوَ شَكَ	nae akenda kwa shaka	nae akenda kwa shaka	
202	49	51	b	مَاءِ أَسِپٗيَتَكَ	mai asipoyataka	mai asipoyataka	
203	49	51	c	نَاءٖ أَلِكِفُنِكَ	nae alikifunika	nae alikifunika	
204	49	51	d	كِوَزِ أَكِچٖنْدٖيَ	kiwazi akichendeya	kiwazi akichendeya	
205	50	52	a	هَپٗ عَلِى حَيْدَرِ	hapo ʿalii ḥaydari	hapo alii haydari	
206	50	52	b	كِوَزَ نَ كُفِكِرِ	kiwaza na kufikiri	kiwaza na kufikiri	
207	50	52	c	وَمٖكُيَ مَكَفِرِ	wamekuya makafiri	wamekuya makafiri	
208	50	52	d	يٖؤٗ كُنِفُنُلِيَ	yeo kunifunuliya	yeo kunifunuliya	
209	51	53	a	كِشَ أَكَتَمْكَ	kisha akatamka	kisha akatamka	
210	51	53	b	نَ يٖؤٗ تهَكِفُنِكَ	na yeo tʰakifunika	na yeo takifunika	
211	51	53	c	سِنَ بُدِ تهَمْشِكَ	sina budi tʰamshika	sina budi tamshika	
212	51	53	d	مْٹُيٖ أَمٖزٗوٖيَ	mţuye amezoweya	mtuye amezoweya	
213	52	54	a	أَچٗنْدٗكَ هُكُ نْيُمَ	achondoka huku nyuma	achondoka huku nyuma	
214	52	54	b	جَعْفَرِ كَئٖڠٖمَ	jaʿfari kaegema	jafari kaegema	
215	52	54	c	لِلٖ بَاءٗ كَسُكُمَ	lile bao kasukuma	lile bao kasukuma	
216	52	54	d	مْبَلِ أَكَلَتِلِيَ	mbali akalatiliya	mbali akalatiliya	
217	53	55	a	مْبُزِ وَكَنْوَ كْوَ هِمَ	mbuzi wakanwa kwa hima	mbuzi wakanwa kwa hima	
218	53	55	b	جَعْفَرِ أُكَلِكٗ نْيُمَ	jaʿfari ukaliko nyuma	jafari ukaliko nyuma	
219	53	55	c	كِشَ نَاءٖ كَئٖڠٖمَ	kisha nae kaegema	kisha nae kaegema	
220	53	55	d	عَلِيْ هُمْوَنْڠَلِيَ	ʿalii humwangaliya	alii humwangaliya	
221	54	56	a	أَچٖڠٖمَ كَرَدِدِ	achegema karadidi	achegema karadidi	
222	54	56	b	ٹُتَشِنْدَنَ قَصِدِ	ţutashindana qaṣidi	tutashindana qasidi	
223	54	56	c	كْوَندَ يٖؤٗ أَكِرُدِ	kwanda yeo akirudi	kwanda yeo akirudi	
224	54	56	d	هَلِدِرِكِ أَكِيَ	halidiriki akiya	halidiriki akiya	
225	55	57	a	چَمْبَ هُفَنْيَ نِ بِرِ	chamba hufanya ni biri	chamba hufanya ni biri	
226	55	57	b	أَيَپٗ أَتَنِكِرِ	ayapo atanikiri	ayapo atanikiri	
227	55	57	c	هِلِ لِپٖٹٖ بَنْدَرِ	hili lipeţe bandari	hili lipete bandari	
228	55	57	d	نْڠٗٹَ تهَمْفِنِكِيَ	ngoţa tʰamfinikiya	ngota tamfinikiya	
229	56	58	a	مَاءِ كَٹِكَ كُٹٖكَ	mai kaţika kuţeka	mai katika kuteka	
230	56	58	b	نَ عَلِى أَكَتٗكَ	na ʿalii akatoka	na alii akatoka	
231	56	58	c	مْكٗنٗ أَكَمْشِكَ	mkono akamshika	mkono akamshika	
232	56	58	d	جَعْفَرِ كَمْوَمْبِيَ	jaʿfari kamwambiya	jafari kamwambiya	
233	57	59	a	وٖوٖ هُنِشِكِيَنِ	wewe hunishikiyani	wewe hunishikiyani	
234	57	59	b	مِمِ سِكُچِ سِنَنِ	mimi sikuchi sinani	mimi sikuchi sinani	
235	57	59	c	هَتَ أُكِوَ نِ جِنِ	hata ukiwa ni jini	hata ukiwa ni jini	
236	57	59	d	نَيُوَ كُكُسٗمٖيَ	nayuwa kukusomeya	nayuwa kukusomeya	
237	58	60	a	هَيَ نِمٖزٗفَسِرِ	haya nimezofasiri	haya nimezofasiri	
238	58	60	b	سِكُيَنٖنَ كْوَ سِرِ	sikuyanena kwa siri	sikuyanena kwa siri	
239	58	60	c	أُكِتَكَ أَظْهَرِ	ukitaka aẓhari	ukitaka adhhari	
240	58	60	d	نَ زَيْدِ تهَكْوَمْبِيَ	na zaydi tʰakwambiya	na zaydi takwambiya	
241	59	61	a	كَمْڤُٹِيَ كْوَ مْبَلِ	kamvuţiya kwa mbali	kamvutiya kwa mbali	
242	59	61	b	وَكَوَنَ سَاءَ مْبِلِ	wakawana saa mbili	wakawana saa mbili	
243	59	61	c	كِشَ كَڤُٹَ قَوْلِ	kisha kavuţa qawli	kisha kavuta qauli	
244	59	61	d	جَعْفَرِ كَمْوَمْبِيَ	jaʿfari kamwambiya	jafari kamwambiya	
245	60	62	a	كَمْوَمْبِيَ مْبَئِنِ	kamwambiya mbaini	kamwambiya mbaini	
246	60	62	b	مْوَنَ آدَمُ نْ نَنِ	mwana ãdamu n nani	mwana adamu n nani	
247	60	62	c	بَبَ هَكٗ دُنِيَنِ	baba hako duniyani	baba hako duniyani	
248	60	62	d	نْدِپٗ أُكَنِؤٗنٖيَ	ndipo ukanioneya	ndipo ukanioneya	
249	61	63	a	كَمُؤُزَ هُنٖنَنِ	kamuuza hunenani	kamuuza hunenani	
250	61	63	b	وٖوٖ بَبَكٗ نِ نَنِ	wewe babako ni nani	wewe babako ni nani	
251	61	63	c	كَمْبَ نِ پٖٹٖ چَنْدَنِ	kamba ni peţe chandani	kamba ni pete chandani	
252	61	63	d	عَلِى كَيَنْڠَلِيَ	ʿalii kayangaliya	alii kayangaliya	
253	62	64	a	پٖٹٖ كُئِيٗنَ كْوَكٖ	peţe kuiyona kwake	pete kuiyona kwake	
254	62	64	b	كِسٗمَ نَ جِنَ لَكٖ	kisoma na jina lake	kisoma na jina lake	
255	62	64	c	أَرُدِ أَسِكِتِكٖ	arudi asikitike	arudi asikitike	
256	62	64	d	نَ مَيُتٗ كُمْنْڠِيَ	na mayuto kumngiya	na mayuto kumngiya	
257	63	65	a	كِشَ هَپٗ أَمْوَمْبِئٖ	kisha hapo amwambie	kisha hapo amwambie	
258	63	65	b	سِنْڠَلِكُپِجِئٖ	singalikupijie	singalikupijie	
259	63	65	c	إِنَ لَكٗ هُئِٹْوَيٖ	ina lako huiţwaye	ina lako huitwaye	
260	63	65	d	بَبَكٗ نْدِيٖ عَلِيَ	babako ndiye ʿaliya	babako ndiye aliya	
261	64	66	a	نِنْڠَلِپٗتٖزَ دَمُ	ningalipoteza damu	ningalipoteza damu	
262	64	66	b	كَمَ سِكُكُفَهَمُ	kama sikukufahamu	kama sikukufahamu	
263	64	66	c	أَكِشَ كَتَكَلَمُ	akisha katakalamu	akisha katakalamu	
264	64	66	d	جَعْفَرِ كَمْوَمْبِيَ	jaʿfari kamwambiya	jafari kamwambiya	
265	65	67	a	وٖوٖ مْٹُ هُمُؤٗنَ	wewe mţu humuona	wewe mtu humuona	
266	65	67	b	هُمُؤُزِ لَكٖ إِنَ	humuuzi lake ina	humuuzi lake ina	
267	65	67	c	هُجِؤٗنَ أُجَڠِنَ	hujiona ujagina	hujiona ujagina	
268	65	67	d	أُلِؤٗنَ تهَكِمْبِيَ	uliona tʰakimbiya	uliona takimbiya	
269	66	68	a	كْوَنْزَ نِپَ پٖٹٖ يَنْڠُ	kwanza nipa peţe yangu	kwanza nipa pete yangu	
270	66	68	b	إِنُكَ إٖوٖ بَبَنْڠُ	inuka ewe babangu	inuka ewe babangu	
271	66	68	c	هُنْڠَلِوٖزَ مَتُنْڠُ	hungaliweza matungu	hungaliweza matungu	
272	66	68	d	مْوِلِنِ كُنِٹِيَ	mwilini kuniţiya	mwilini kunitiya	
273	67	69	a	أَكَمْوَمْبِيَ مَمَكٖ	akamwambiya mamake	akamwambiya mamake	
274	67	69	b	نَمُيُوَ سُرَ زَكٖ	namuyuwa sura zake	namuyuwa sura zake	
275	67	69	c	نَاءٖ هَپٗ أَتَمْكٖ	nae hapo atamke	nae hapo atamke	
276	67	69	d	إِنَ لَكٖ أَمْوَمْبِيٖ	ina lake amwambiye	ina lake amwambiye	
277	68	70	a	كِمْوَمْبِيَ كَفَسِرِ	kimwambiya kafasiri	kimwambiya kafasiri	
278	68	70	b	مِمِ هُئِٹْوَ جَعْفَرِ	mimi huiţwa jaʿfari	mimi huitwa jafari	
279	68	70	c	وَ عَلِيْ حَيْدَرِ	wa ʿalii ḥaydari	wa alii haydari	
280	68	70	d	نَ مْوَكَ نِ وَ تِسِيَ	na mwaka ni wa tisiya	na mwaka ni wa tisiya	
281	69	71	a	وَتٗوٖ مْبُزِ مْوِٹُنِ	watowe mbuzi mwiţuni	watowe mbuzi mwituni	
282	69	71	b	نَ أُوَپٖكٖ نْدِيَنِ	na uwapeke ndiyani	na uwapeke ndiyani	
283	69	71	c	ٹْوٖنٖنْدٖ زٖٹُ مُئِنِ	ţwenende zeţu muini	twenende zetu muini	
284	69	71	d	جَعْفَرِ كَمْوَمْبِيَ	jaʿfari kamwambiya	jafari kamwambiya	
285	70	72	a	كَمْوَمْبِيَ نٖنْدَ زَنْڠُ	kamwambiya nenda zangu	kamwambiya nenda zangu	
286	70	72	b	نِنَ نَ مْوَلِمُ وَنْڠُ	nina na mwalimu wangu	nina na mwalimu wangu	
287	70	72	c	نِمُوَڠٖ نَ مَمَنْڠُ	nimuwage na mamangu	nimuwage na mamangu	
288	70	72	d	كِشَ كٖشٗ نِتَكُيَ	kisha kesho nitakuya	kisha kesho nitakuya	
289	71	73	a	كٖشٗ كُكِپَمْبَؤُكَ	kesho kukipambauka	kesho kukipambauka	
290	71	73	b	نَ مَپِمَ تَئِنُكَ	na mapima tainuka	na mapima tainuka	
291	71	73	c	سَاءَ مٗيَ إِكِفِكَ	saa moya ikifika	saa moya ikifika	
292	71	73	d	بَبَ تَكُوَصِلِيَ	baba takuwaṣiliya	baba takuwasiliya	
293	72	74	a	أَكَمْطِبُ قَوْلِ	akamṭibu qawli	akamtibu qauli	
294	72	74	b	أُيَپٗ نْدِيَ يَ مْبَلِ	uyapo ndiya ya mbali	uyapo ndiya ya mbali	
295	72	74	c	يَ مَكَه نِ يَ كُڤُلِ	ya makah ni ya kuvuli	ya makah ni ya kuvuli	
296	72	74	d	أُسِتَكٖ كُپٗتٖيَ	usitake kupoteya	usitake kupoteya	
297	73	75	a	كَمْرُدِشِيَ تَمْكٗ	kamrudishiya tamko	kamrudishiya tamko	
298	73	75	b	بَسِ هَيَ نٖنْدَ زَكٗ	basi haya nenda zako	basi haya nenda zako	
299	73	75	c	مْوَلِمُ نَ مَمَكٗ	mwalimu na mamako	mwalimu na mamako	
300	73	75	d	نَ نْدُزٗ نِسَلِمِيَ	na nduzo nisalimiya	na nduzo nisalimiya	
301	74	76	a	نَاءٖ مْوَنَ وَ نَسَبَ	nae mwana wa nasaba	nae mwana wa nasaba	
302	74	76	b	كَمْوَمْبِيَ مَرْحَبَا	kamwambiya marḥabā	kamwambiya marhaba	
303	74	76	c	نَمِ هُكٗ أَقْرَبَ	nami huko aqraba	nami huko aqraba	
304	74	76	d	أُچٖنْدَ نِسَلِمِيَ	uchenda nisalimiya	uchenda nisalimiya	
305	75	77	a	سَلَامُ أَبُوْ بَكَرِ	salāmu abuu bakari	salamu abuu bakari	
306	75	77	b	أَزْوَاجِ نَ ذُرِيَ	azwāji na dhuriya	azwaji na dhuriya	
307	75	77	c	سُزَاءٗ نَ إِظْهَارِ	suzao na iẓhāri	suzao na idhhari	
308	75	77	d	هَؤٗ نَوَفَهَمِيَ	hao nawafahamiya	hao nawafahamiya	
309	76	78	a	بَسِ هَپٗ جَعْفَرِ	basi hapo jaʿfari	basi hapo jafari	
310	76	78	b	أَكَمْوَمْبِيَ كْوَ هٖرِ	akamwambiya kwa heri	akamwambiya kwa heri	
311	76	78	c	نَ عَلِى حَيْدَرِ	na ʿalii ḥaydari	na alii haydari	
312	76	78	d	مْنْڠُ أَكَمُؤٗمْبٖيَ	mngu akamuombeya	mngu akamuombeya	
313	77	79	a	مُئِنِ كُنْڠِيَ كْوَكٖ	muini kungiya kwake	muini kungiya kwake	
314	77	79	b	كٖنْدَ كْوَ مْوَلِمُ وَكٖ	kenda kwa mwalimu wake	kenda kwa mwalimu wake	
315	77	79	c	كَمْپَ هَبَرِ زَكٖ	kampa habari zake	kampa habari zake	
316	77	79	d	كْوَءٗ هَيَسِكِلِيَ	kwao hayasikiliya	kwao hayasikiliya	
317	78	80	a	أَكِشَ كُيَنُظُمُ	akisha kuyanuẓumu	akisha kuyanudhumu	
318	78	80	b	أَكَلِيَ مُعَلِمُ	akaliya muʿalimu	akaliya mualimu	
319	78	80	c	كَمبَ وَنِٹِيَ هَمُ	kamba waniţiya hamu	kamba wanitiya hamu	
320	78	80	d	هَيٗ أُمٖزٗنَمْبِيَ	hayo umezonambiya	hayo umezonambiya	
321	79	81	a	وَنِٹِيَ سِكِتِكٗ	waniţiya sikitiko	wanitiya sikitiko	
322	79	81	b	نَ وِنْڠِ وَ مَؤُذِكٗ	na wingi wa maudhiko	na wingi wa maudhiko	
323	79	81	c	وَلَ نَ هُكٗ وٖنْدَكٗ	wala na huko wendako	wala na huko wendako	
324	79	81	d	سِوٖزِ كُكُزِوِيَ	siwezi kukuziwiya	siwezi kukuziwiya	
325	80	82	a	سِ رَحِمُ كُئٖنْدَنِ	si raḥimu kuendani	si rahimu kuendani	
326	80	82	b	نَ هُكٗ أُ حَلِ ڠَنِ	na huko u ḥali gani	na huko u hali gani	
327	80	82	c	نَاءٖ بَبَكٗ زِٹَنِ	nae babako ziţani	nae babako zitani	
328	80	82	d	نْدِيٖ وَ كُٹَنْڠُلِيَ	ndiye wa kuţanguliya	ndiye wa kutanguliya	
329	81	83	a	نَ كُكِكِنْدَ سِتَكِ	na kukikinda sitaki	na kukikinda sitaki	
330	81	83	b	كْوَنِ نَيُوَ نِ هَكِ	kwani nayuwa ni haki	kwani nayuwa ni haki	
331	81	83	c	نِ رَضِ أَلْفُ لَكِ	ni raḍi alfu laki	ni radhi alfu laki	
332	81	83	d	نَ زَيْدِ كِكْوٖٹٖيَ	na zaydi kikweţeya	na zaydi kikweteya	
333	82	84	a	أَكَمْوَمْبِيَ مْوَلِمُ	akamwambiya mwalimu	akamwambiya mwalimu	
334	82	84	b	مَمَكٗ أَيَفَهَمُ	mamako ayafahamu	mamako ayafahamu	
335	82	84	c	كَمْجِبِشَ كَلِمُ	kamjibisha kalimu	kamjibisha kalimu	
336	82	84	d	كْوَكٖ سِيَسِكِلِيَ	kwake siyasikiliya	kwake siyasikiliya	
337	83	85	a	كَمْوَمْبِيَ إٖنْدَ زَكٗ	kamwambiya enda zako	kamwambiya enda zako	
338	83	85	b	أُكَمُؤُلِزٖ مَمَكٗ	ukamuulize mamako	ukamuulize mamako	
339	83	85	c	أُسِكِزٖ مَتَمْكٗ	usikize matamko	usikize matamko	
340	83	85	d	نَاءٖ تَكَلٗكْوَمْبِيَ	nae takalokwambiya	nae takalokwambiya	
341	84	86	a	َكِشَ هِيٗ كَلِمَ	akisha hiyo kalima	akisha hiyo kalima	
342	84	86	b	هَپٗ نْدِيَ كَيَنْدَمَ	hapo ndiya kayandama	hapo ndiya kayandama	
343	84	86	c	مٗيٗ أُنَ هَلِمَمَ	moyo una halimama	moyo una halimama	
344	84	86	d	كْوَ مَمَكٖ أَكِنْڠِيَ	kwa mamake akingiya	kwa mamake akingiya	
345	85	87	a	كِنْڠِيَ كَوٖكَ كِبُ	kingiya kaweka kibu	kingiya kaweka kibu	
346	85	87	b	كْوَ أُپٗلٖ نَ تَرَتِبُ	kwa upole na taratibu	kwa upole na taratibu	
347	85	87	c	مَمَكٖ كَتَعَجَبُ	mamake kataʿajabu	mamake kataajabu	
348	85	87	d	جَعْفَرِ أَكَمْوَمْبِيَ	jaʿfari akamwambiya	jafari akamwambiya	
349	86	88	a	كَمْبَ سِوٖ جَعْفَرِ	kamba siwe jaʿfari	kamba siwe jafari	
350	86	88	b	وَٹُؤٗنٖشَ جَوْرِ	waţuonesha jawri	watuonesha jauri	
351	86	88	c	هُنْڠِيَ كَمَ كْوَ سِرِ	hungiya kama kwa siri	hungiya kama kwa siri	
352	86	88	d	مْٹُ أَمٖزٗكِمْبِيَ	mţu amezokimbiya	mtu amezokimbiya	
353	87	89	a	نَاصِرِ نِ نْدُڠُ يَكٖ	nāṣiri ni ndugu yake	nasiri ni ndugu yake	
354	87	89	b	پَپٗ هَپٗ أَتَمْكٖ	papo hapo atamke	papo hapo atamke	
355	87	89	c	عَيْنِ يَ مَتٗ يَكٖ	ʿayni ya mato yake	ayni ya mato yake	
356	87	89	d	هَتَكِ كُٹْوَنْڠَلِيَ	hataki kuţwangaliya	hataki kutwangaliya	
357	88	90	a	إٖوٖ مَمَ سِؤُذِكٖ	ewe mama siudhike	ewe mama siudhike	
358	88	90	b	تَكْوَمْبِيَ حُجَ يَكٖ	takwambiya ḥuja yake	takwambiya huja yake	
359	88	90	c	يٖؤٗ أُنَ مْبُزِ وَكٖ	yeo una mbuzi wake	yeo una mbuzi wake	
360	88	90	d	وَوِلِ وَمٖپٗتٖيَ	wawili wamepoteya	wawili wamepoteya	
361	89	91	a	وَمٖتٗكَ صَفُنِ	wametoka ṣafuni	wametoka safuni	
362	89	91	b	مٖوَتَنْڠَ هَوَؤٗنِ	mewatanga hawaoni	mewatanga hawaoni	
363	89	91	c	كِشَ أَتٗكَ مْوِٹُنِ	kisha atoka mwiţuni	kisha atoka mwituni	
364	89	91	d	يُوَ نِ كَلِ لَ نْدِيَ	yuwa ni kali la ndiya	yuwa ni kali la ndiya	
365	90	92	a	كَئِنُكَ جَعْفَرِ	kainuka jaʿfari	kainuka jafari	
366	90	92	b	أَكَمْپِجَ نَاصِرِ	akampija nāṣiri	akampija nasiri	
367	90	92	c	زِتَكُتٗكَ جٖؤُرِ	zitakutoka jeuri	zitakutoka jeuri	
368	90	92	d	يٖؤٗ نِكِكْوَنْڠَلِيَ	yeo nikikwangaliya	yeo nikikwangaliya	
369	91	93	a	هَپٗ مَمَ أَسِكِرِ	hapo mama asikiri	hapo mama asikiri	
370	91	93	b	كَمْشِكَ جَعْفَرِ	kamshika jaʿfari	kamshika jafari	
371	91	93	c	إِوَپٗ نِ مِيْ نَاصِرِ	iwapo ni mii nāṣiri	iwapo ni mii nasiri	
372	91	93	d	هَپٗ سِنْڠٖلِكِمْبِيَ	hapo singelikimbiya	hapo singelikimbiya	
373	92	94	a	نَاصِرِ نِ نْدُڠُ يَكٗ	nāṣiri ni ndugu yako	nasiri ni ndugu yako	
374	92	94	b	مْوَنَنْڠُ مْٹٗٹٗ وَكٗ	mwanangu mţoţo wako	mwanangu mtoto wako	
375	92	94	c	كِشَ نِ عَوْنِ يَكٗ	kisha ni ʿawni yako	kisha ni auni yako	
376	92	94	d	وَتَ كُمْٹَنْڠُلِيَ	wata kumţanguliya	wata kumtanguliya	
377	93	95	a	أَلِئِنَمِيَ تِنِ	aliinamiya tini	aliinamiya tini	
378	93	95	b	أَكِؤُلِزْوَ هَنٖنِ	akiulizwa haneni	akiulizwa haneni	
379	93	95	c	يَمٖكُپَٹَ مْوٖنْدَنِ	yamekupaţa mwendani	yamekupata mwendani	
380	93	95	d	هَيَ نِمٖزٗكْوَمْبِيَ	haya nimezokwambiya	haya nimezokwambiya	
381	94	96	a	هَپٗ مَمَكٖ أَجِبُ	hapo mamake ajibu	hapo mamake ajibu	
382	94	96	b	نَاصِرِ هُتَأَدَبُ	nāṣiri hutaadabu	nasiri hutaadabu	
383	94	96	c	كِوَ وٖوٖ نِ هَرَبُ	kiwa wewe ni harabu	kiwa wewe ni harabu	
384	94	96	d	نَمِ نَيُوَ طَبِيَ	nami nayuwa ṭabiya	nami nayuwa tabiya	
385	95	97	a	نَتَكَ زَكٗ هَبَرِ	nataka zako habari	nataka zako habari	
386	95	97	b	هَيَ نِپَ جَعْفَرِ	haya nipa jaʿfari	haya nipa jafari	
387	95	97	c	أُسٗ أُسِمٖمٖ هَرِ	uso usimeme hari	uso usimeme hari	
388	95	97	d	صُوْرَ زِمٖكُپٗتٖيَ	ṣūra zimekupoteya	sura zimekupoteya	
389	96	98	a	جَعْفَرِ أَكَبَئِنِ	jaʿfari akabaini	jafari akabaini	
390	96	98	b	وَتَكَ هَبَرِ ڠَنِ	wataka habari gani	wataka habari gani	
391	96	98	c	نِكْوَمْبِيٖ لُغَ ڠَنِ	nikwambiye lugha gani	nikwambiye lugha gani	
392	96	98	d	كْوَكٗ إِوٖ نِ پِيَ	kwako iwe ni piya	kwako iwe ni piya	
393	97	99	a	كِكْوَمْبِيَ كِعَرَبُ	kikwambiya kiʿarabu	kikwambiya kiarabu	
394	97	99	b	نَيُوَ أُتَنِجِبُ	nayuwa utanijibu	nayuwa utanijibu	
395	97	99	c	تٖنَ نَؤٗنَ عَجَبُ	tena naona ʿajabu	tena naona ajabu	
396	97	99	d	مِمِ مْوٖنْيٖوٖ كُكْوَمْبِيَ	mimi mwenyewe kukwambiya	mimi mwenyewe kukwambiya	
397	98	100	a	كِكُؤُلِزَ أَلِكٗ	kikuuliza aliko	kikuuliza aliko	
398	98	100	b	بَبَ هُنَمْبِيَ هَكٗ	baba hunambiya hako	baba hunambiya hako	
399	98	100	c	تَنْڠُ نِنَ مِمْبَ يَكٗ	tangu nina mimba yako	tangu nina mimba yako	
400	98	100	d	أَلِفَرِكِ دُنِيَ	alifariki duniya	alifariki duniya	
401	99	101	a	كِكْوَمْبِيَ يُمُئِنِ	kikwambiya yumuini	kikwambiya yumuini	
402	99	101	b	أُتَڠٖؤُزَ مَنْڠِنٖ	utageuza mangine	utageuza mangine	
403	99	101	c	أُتَنَمْبِيَ وَفٖنٖ	utanambiya wafene	utanambiya wafene	
404	99	101	d	خٖيْرِ كُئِنْيَمَزِيَ	khēri kuinyamaziya	heri kuinyamaziya	
405	100	102	a	وٖوٖ هُيَوَ فَرِسِ	wewe huyawa farisi	wewe huyawa farisi	
406	100	102	b	وَلَ مَكَه هُكُئِسِ	wala makah hukuisi	wala makah hukuisi	
407	100	102	c	وٖنْدٖلٖپِ مَجْلِسِ	wendelepi majlisi	wendelepi majlisi	
408	100	102	d	أُكَمُؤٗنَ عَلِيَ	ukamuona ʿaliya	ukamuona aliya	
409	101	103	a	جَعْفَرِ كَبَئِنِ	jaʿfari kabaini	jafari kabaini	
410	101	103	b	ٹُمٖؤٗنَنَ مْوِٹُنِ	ţumeonana mwiţuni	tumeonana mwituni	
411	101	103	c	صِفَ زَكٖ مُعَيَنِ	ṣifa zake muʿayani	sifa zake muayani	
412	101	103	d	أُكِتَكَ تَكْوَمْبِيَ	ukitaka takwambiya	ukitaka takwambiya	
413	102	104	a	نِسِكِزَ نِرَدِدِ	nisikiza niradidi	nisikiza niradidi	
414	102	104	b	كِوَ سِيٗ أُنِرُدِ	kiwa siyo unirudi	kiwa siyo unirudi	
415	102	104	c	كِمٗ چَكٖ هَكِزِدِ	kimo chake hakizidi	kimo chake hakizidi	
416	102	104	d	كَمَ چَنْڠُ أَنْڠَلِيَ	kama changu angaliya	kama changu angaliya	
417	103	105	a	نَ لَ پِلِ نِبَئِنِ	na la pili nibaini	na la pili nibaini	
418	103	105	b	نْيٖيْ زَكٖ زَ كِتْوَنِ	nyee zake za kitwani	nyee zake za kitwani	
419	103	105	c	هَكُمٖيَ أُپَآنِ	hakumeya upaãni	hakumeya upaani	
420	103	105	d	نَ كَمَ سِيٗ نَمْبِيَ	na kama siyo nambiya	na kama siyo nambiya	
421	104	106	a	نَ يَ ٹَاٹُ أُفَهَمُ	na ya ţāţu ufahamu	na ya tatu ufahamu	
422	104	106	b	أُنَ ٹُنْدُ يَ كُزِمُ	una ţundu ya kuzimu	una tundu ya kuzimu	
423	104	106	c	صِفَ زَكٖ زٖمٖتِمُ	ṣifa zake zemetimu	sifa zake zemetimu	
424	104	106	d	نِ هِزٗ نِمٖكْوَمْبِيَ	ni hizo nimekwambiya	ni hizo nimekwambiya	
425	105	107	a	نِ رَعُوفُ وَ مَنٖنٗ	ni raʿūfu wa maneno	ni raufu wa maneno	
426	105	107	b	كِشَ نِ جَڠِنَ مْنٗ	kisha ni jagina mno	kisha ni jagina mno	
427	105	107	c	نَ أُكِتَكَ مْفَنٗ	na ukitaka mfano	na ukitaka mfano	
428	105	107	d	هُنُ نِمٖكُپِجِيَ	hunu nimekupijiya	hunu nimekupijiya	
429	106	108	a	هَيٗ أُنَمْبِزِيٖؤٗ	hayo unambiziyeo	hayo unambiziyeo	
430	106	108	b	نِ كْوٖلِ نْدِيٗ يَلِيٗ	ni kweli ndiyo yaliyo	ni kweli ndiyo yaliyo	
431	106	108	c	نِپَ جِنْسِ يَوٖءٖؤٗ	nipa jinsi yaweeo	nipa jinsi yaweeo	
432	106	108	d	هَتَ كُمْفَهَمِيَ	hata kumfahamiya	hata kumfahamiya	
433	107	109	a	تَكُپَ ٹَنْڠُ أَوَلِ	takupa ţangu awali	takupa tangu awali	
434	107	109	b	هِكِ چَكَ نِ ثَقِلِ	hiki chaka ni thaqili	hiki chaka ni thaqili	
435	107	109	c	كِتَنْڠَ مَاءِ نِ غَالِ	kitanga mai ni ghāli	kitanga mai ni ghali	
436	107	109	d	نِكَتَكَسَ نَ نْدِيَ	nikatakasa na ndiya	nikatakasa na ndiya	
437	108	110	a	صَدِقِ يَنْڠُ قَوْلِ	ṣadiqi yangu qawli	sadiqi yangu qauli	
438	108	110	b	نِمٖتَنْڠَ بَرَ هِلِ	nimetanga bara hili	nimetanga bara hili	
439	108	110	c	مَاءِ هَپَنَ مَهَلِ	mai hapana mahali	mai hapana mahali	
440	108	110	d	نِ خٖيْرِ كَئِرُدِيَ	ni khēri kairudiya	ni heri kairudiya	
441	109	111	a	هٖنْدَ هِوَزَ مٗيٗنِ	henda hiwaza moyoni	henda hiwaza moyoni	
442	109	111	b	نٖنٖنْدٖ جَنِبُ ڠَنِ	nenende janibu gani	nenende janibu gani	
443	109	111	c	كُؤٗنَ وَٹُ وٖنْڠِنٖ	kuona waţu wengine	kuona watu wengine	
444	109	111	d	وَٹَٹُ وٖنْدٖمٖ نْدِيَ	waţaţu wendeme ndiya	watatu wendeme ndiya	
445	110	112	a	كَوَءٗنَ وَكٗ مْبَلِ	kawaona wako mbali	kawaona wako mbali	
446	110	112	b	كَنٖنَ تَئِمُهُلِ	kanena taimuhuli	kanena taimuhuli	
447	110	112	c	مَرَ نِكِوَصِلِ	mara nikiwaṣili	mara nikiwasili	
448	110	112	d	مَاءِ وَتَنَمْبِيَ	mai watanambiya	mai watanambiya	
449	111	113	a	پَنَ كِڤُلِ كِنْيٖسَ	pana kivuli kinyesa	pana kivuli kinyesa	
450	111	113	b	هَتَ نَاءٗ وَكَپِٹَ	hata nao wakapiţa	hata nao wakapita	
451	111	113	c	نِوَوٖنٖ وَكِنُسَ	niwawene wakinusa	niwawene wakinusa	
452	111	113	d	سَلَامُ كَوَپِسِيَ	salāmu kawapisiya	salamu kawapisiya	
453	112	114	a	كَمْبَ مْوٖنْدَپِ مَتِتِ	kamba mwendapi matiti	kamba mwendapi matiti	
454	112	114	b	هِكِ نِ كِپُنْڠُ كَٹِ	hiki ni kipungu kaţi	hiki ni kipungu kati	
455	112	114	c	هٖلَ نْدٗنِ مُكٖيْتِ	hela ndoni mukēti	hela ndoni muketi	
456	112	114	d	لِپَٹٖ كُپِنْدُكِيَ	lipaţe kupindukiya	lipate kupindukiya	
457	113	115	a	نَ هِلِ يُوَ سِ زُرِ	na hili yuwa si zuri	na hili yuwa si zuri	
458	113	115	b	كُلَنْدَمَ نِ خَطَرِ	kulandama ni khaṭari	kulandama ni hatari	
459	113	115	c	وَلَ زٖؤٗ سِ أَخِرِ	wala zeo si akhiri	wala zeo si ahiri	
460	113	115	d	كَمَ مُتَلِمَٹِيَ	kama mutalimaţiya	kama mutalimatiya	
461	114	116	a	وَكِسِكِيَ كَلِمَ	wakisikiya kalima	wakisikiya kalima	
462	114	116	b	وَكِزُنْڠُكِيَ نْيُمَ	wakizungukiya nyuma	wakizungukiya nyuma	
463	114	116	c	وَوِلِ وَكَسِمَمَ	wawili wakasimama	wawili wakasimama	
464	114	116	d	مْمٗيَ كَنِئِلِيَ	mmoya kaniiliya	mmoya kaniiliya	
465	115	117	a	أَكِجَ أَكَبَئِنِ	akija akabaini	akija akabaini	
466	115	117	b	كَنِؤُزَ نْدِوٖ نَنِ	kaniuza ndiwe nani	kaniuza ndiwe nani	
467	115	117	c	أَوْ وَٹُتَكِيَنِ	aw waţutakiyani	au watutakiyani	
468	115	117	d	خَطَرِ كُٹُفِكِيَ	khaṭari kuţufikiya	hatari kutufikiya	
469	116	118	a	سِسِ هَٹُشِكِ يَكٗ	sisi haţushiki yako	sisi hatushiki yako	
470	116	118	b	وَلَ سِ نْدُڠُ زَكٗ	wala si ndugu zako	wala si ndugu zako	
471	116	118	c	أُئٖٹَيٗ مَتَمْكٗ	ueţayo matamko	uetayo matamko	
472	116	118	d	يَپٖسٖنِ كُٹْوَمْبِيَ	yapeseni kuţwambiya	yapeseni kutwambiya	
473	117	119	a	وٖوٖ نِ مْوَنَ آدَمُ	wewe ni mwana ãdamu	wewe ni mwana adamu	
474	117	119	b	نِ مْپٗتٖزَ قَوْمُ	ni mpoteza qawmu	ni mpoteza qaumu	
475	117	119	c	ٹْوَمْبِيٖ ٹُكُفَهَمُ	ţwambiye ţukufahamu	twambiye tukufahamu	
476	117	119	d	كْوَنْدَ ٹُيُوٖ طَبِيَ	kwanda ţuyuwe ṭabiya	kwanda tuyuwe tabiya	
477	118	120	a	كَوَجِبِشَ قَوْلِ	kawajibisha qawli	kawajibisha qauli	
478	118	120	b	نِ دِيْنِ يَكٖ رَسُوْلِ	ni dı̄ni yake rasūli	ni dini yake rasuli	
479	118	120	c	كِوَ وٖوٖ نِ جَهِلِ	kiwa wewe ni jahili	kiwa wewe ni jahili	
480	118	120	d	مْبٖلٖ زَنْڠُ نٗنْدٗكٖيَ	mbele zangu nondokeya	mbele zangu nondokeya	
481	119	121	a	كَسِكِيَ هُفَسِرِ	kasikiya hufasiri	kasikiya hufasiri	
482	119	121	b	هُمْوِٹَ أَبُوْ بَكَرِ	humwiţa abuu bakari	humwita abuu bakari	
483	119	121	c	نْدٗوْ وٖوٖ نَ زُبَيْرِ	ndoo wewe na zubayri	ndoo wewe na zubayri	
484	119	121	d	وٗتٖ وَوِلِ وَكَيَ	wote wawili wakaya	wote wawili wakaya	
485	120	122	a	وَكَيَ وَكَسِمَمَ	wakaya wakasimama	wakaya wakasimama	
486	120	122	b	أُسٗ وَكَنِٹِزَمَ	uso wakaniţizama	uso wakanitizama	
487	120	122	c	كَمْبَ مُكِمْفَهَمَ	kamba mukimfahama	kamba mukimfahama	
488	120	122	d	وَجْهِ وَكٖ نَبِيَ	wajhi wake nabiya	wajhi wake nabiya	
489	121	123	a	هُسِكِيَ هُنِجِبُ	husikiya hunijibu	husikiya hunijibu	
490	121	123	b	عَلِي بِنْ طَالِبُ	ʿalii bin ṭālibu	alii bin talibu	
491	121	123	c	مَمَ وَمٖتَعَجَبُ	mama wametaʿajabu	mama wametaajabu	
492	121	123	d	كْوَ وٗتٖ هُنَنْڠَلِيَ	kwa wote hunangaliya	kwa wote hunangaliya	
493	122	124	a	هٗىٗ نِ أَبُوْ بَكَرِ	hoyo ni abuu bakari	hoyo ni abuu bakari	
494	122	124	b	نَ هٗيٗ هُئِٹْوَ زُبٖئْرِ	na hoyo huiţwa zuberi	na hoyo huitwa zuberi	
495	122	124	c	نَوٖ لَكٗ هُفَسِرِ	nawe lako hufasiri	nawe lako hufasiri	
496	122	124	d	أِنَ ٹُكَلِسِكِيَ	ina ţukalisikiya	ina tukalisikiya	
497	123	125	a	أَكَتَمْكَ مْبُجِ	akatamka mbuji	akatamka mbuji	
498	123	125	b	مِمِ هُئِٹْوَ أَزْوَجِ	mimi huiţwa azwaji	mimi huitwa azwaji	
499	123	125	c	نَمِ سَسَ نَتَرَجِ	nami sasa nataraji	nami sasa nataraji	
500	123	125	d	نَ إِنَ لَكٗ نَمْبِيَ	na ina lako nambiya	na ina lako nambiya	
501	124	126	a	كَوَمْبِيَ نِمٖكِرِ	kawambiya nimekiri	kawambiya nimekiri	
502	124	126	b	نَمِ إِنَ كُفَسِرِ	nami ina kufasiri	nami ina kufasiri	
503	124	126	c	مِمِ نْدِيٖ جَعْفَرِ	mimi ndiye jaʿfari	mimi ndiye jafari	
504	124	126	d	وَ مَوْلَانَا عَلِيَّ	wa mawlānā ʿaliyaّ	wa maulana aliyaU+0651	
505	125	127	a	وَنِؤُزٖ تَرَتِبُ	waniuze taratibu	waniuze taratibu	
506	125	127	b	وٖنْدَءٗ وَپِ غَرِيْبُ	wendao wapi gharı̄bu	wendao wapi gharibu	
507	125	127	c	هَپٗ مَمَ كَوَجِبُ	hapo mama kawajibu	hapo mama kawajibu	
508	125	127	d	نِتَكَلٗ كَوَمْبِيَ	nitakalo kawambiya	nitakalo kawambiya	
509	126	128	a	نِمٖتَنْڠَ مَاءِ بَرَنِ	nimetanga mai barani	nimetanga mai barani	
510	126	128	b	نِمٖچٗكَ سِيَؤٗنِ	nimechoka siyaoni	nimechoka siyaoni	
511	126	128	c	مْبُزِ وَمٖلِشَ يَنِ	mbuzi wamelisha yani	mbuzi wamelisha yani	
512	126	128	d	سَسَ كُيُتَ هَلِيَ	sasa kuyuta haliya	sasa kuyuta haliya	
513	127	129	a	هُكٗ مْمٖزٗپِٹَ	huko mmezopiţa	huko mmezopita	
514	127	129	b	مَاءِ هَمْكُيَكُٹَ	mai hamkuyakuţa	mai hamkuyakuta	
515	127	129	c	مْبُزِ وَنْڠُ وَنَ نْيٗٹَ	mbuzi wangu wana nyoţa	mbuzi wangu wana nyota	
516	127	129	d	چَمْبَ مْوَيُوَ نَمْبِيَ	chamba mwayuwa nambiya	chamba mwayuwa nambiya	
517	128	130	a	وَكَنِجِبُ قَوْلِ	wakanijibu qawli	wakanijibu qauli	
518	128	130	b	كٔوَمْبَ كِسِمَ سِ مْبَلِ	kwamba kisima si mbali	kwamba kisima si mbali	
519	128	130	c	لَكِنِ كِنَ ثَقِلِ	lakini kina thaqili	lakini kina thaqili	
520	128	130	d	هِيٗ نْدٗوْ كُئِٹِيَ	hiyo ndoo kuiţiya	hiyo ndoo kuitiya	
521	129	131	a	هَيٗ مَاءِ نِ مَتَمُ	hayo mai ni matamu	hayo mai ni matamu	
522	129	131	b	مْفَنٗ وَ زَمْزَمُ	mfano wa zamzamu	mfano wa zamzamu	
523	129	131	c	لَكِنِ سِسِ فَهَمُ	lakini sisi fahamu	lakini sisi fahamu	
524	129	131	d	كُكُؤٗنْيَ هُچٖلٖيَ	kukuonya hucheleya	kukuonya hucheleya	
525	130	132	a	أُوَپٗ أُمٖخِتَرِ	uwapo umekhitari	uwapo umehitari	
526	130	132	b	كُكُپٖكَ ٹُتَيَرِ	kukupeka ţutayari	kukupeka tutayari	
527	130	132	c	وَلَ أُسِٹُفَسِرِ	wala usiţufasiri	wala usitufasiri	
528	130	132	d	نِ سِسِ ٹٗلٗكْوَمْبِيَ	ni sisi ţolokwambiya	ni sisi tolokwambiya	
529	131	133	a	وَكَنِؤٗنْيَ أُسِٹَ	wakanionya usiţa	wakanionya usita	
530	131	133	b	هَپٗ نْدِيَ كَفُوَٹَ	hapo ndiya kafuwaţa	hapo ndiya kafuwata	
531	131	133	c	كْوَ مْوِٹُنِ وَكَپِٹَ	kwa mwiţuni wakapiţa	kwa mwituni wakapita	
532	131	133	d	مْبِيٗ وَكَنِتٗلٖيَ	mbiyo wakanitoleya	mbiyo wakanitoleya	
533	132	134	a	هَتَ كِدُسَ كِسِمَ	hata kidusa kisima	hata kidusa kisima	
534	132	134	b	لِپٗ بَاءٗ كَسُكُمَ	lipo bao kasukuma	lipo bao kasukuma	
535	132	134	c	كْوَ كِوَڤُ كُٹِزَمَ	kwa kiwavu kuţizama	kwa kiwavu kutizama	
536	132	134	d	وَءٗ هُنِئَنْڠَلِيَ	wao huniangaliya	wao huniangaliya	
537	133	135	a	جَعْفَرِ أَتَمْكٖ	jaʿfari atamke	jafari atamke	
538	133	135	b	بُوْ بَكَرِ سِشُٹُكٖ	buu bakari sishuţuke	buu bakari sishutuke	
539	133	135	c	كِسِمَ سِكِفُنِكٖ	kisima sikifunike	kisima sikifunike	
540	133	135	d	نِتَرُدِ كُكْوَمْبِيَ	nitarudi kukwambiya	nitarudi kukwambiya	
541	134	136	a	سِنَ خٗوْفُ مٗيٗ وَنْڠُ	sina khōfu moyo wangu	sina hofu moyo wangu	
542	134	136	b	كُنْوَ مَاءِ مْبُزِ وَنْڠُ	kunwa mai mbuzi wangu	kunwa mai mbuzi wangu	
543	134	136	c	كَنٖنَ نٖنْدَ زَنْڠُ	kanena nenda zangu	kanena nenda zangu	
544	134	136	d	نِزِتَكَسٖ نَ نْدِيَ	nizitakase na ndiya	nizitakase na ndiya	
545	135	137	a	يُوَ كُكِپَمْبَؤُكَ	yuwa kukipambauka	yuwa kukipambauka	
546	135	137	b	نِنَ فُرَهَ هُتٖكَ	nina furaha huteka	nina furaha huteka	
547	135	137	c	مَلِشٗنِ كِوَپٖكَ	malishoni kiwapeka	malishoni kiwapeka	
548	135	137	d	مُدَ وَ يُوَ كُوَاءَ	muda wa yuwa kuwaa	muda wa yuwa kuwaa	
549	136	138	a	أَوَلِ يَ سَاءَ سِتَ	awali ya saa sita	awali ya saa sita	
550	136	138	b	هَپٗ مْبُزِ كَوَسُتَ	hapo mbuzi kawasuta	hapo mbuzi kawasuta	
551	136	138	c	نَؤٗنَ وَمٖنِوَتَ	naona wameniwata	naona wameniwata	
552	136	138	d	هُتُرَ نَ كُكُمْبِيَ	hutura na kukumbiya	hutura na kukumbiya	
553	137	139	a	كَوَمْبِيَ إٖنٖنْدَنِ	kawambiya enendani	kawambiya enendani	
554	137	139	b	مْوَكُيُوَ كِسِمَنِ	mwakuyuwa kisimani	mwakuyuwa kisimani	
555	137	139	c	لَكِنِ هُفَلِيَنِ	lakini hufaliyani	lakini hufaliyani	
556	137	139	d	نْدِمِ وَ كُوَٹٖكٖيَ	ndimi wa kuwaţekeya	ndimi wa kuwatekeya	
557	138	140	a	وَكٖنْدَ وَكَسِمَمَ	wakenda wakasimama	wakenda wakasimama	
558	138	140	b	كُفُنِشِوٖ كِسِمَ	kufunishiwe kisima	kufunishiwe kisima	
559	138	140	c	بَاءٗ نِكَلِسُكُمَ	bao nikalisukuma	bao nikalisukuma	
560	138	140	d	نِمٗنٖ مْٹُ أَكِيَ	nimone mţu akiya	nimone mtu akiya	
561	139	141	a	أَكِيَ أَكَنِشِكَ	akiya akanishika	akiya akanishika	
562	139	141	b	مَاءٖ نِسِيَٹٖكَ	mae nisiyaţeka	mae nisiyateka	
563	139	141	c	مَمَ هَپٗ كَتَمْكَ	mama hapo katamka	mama hapo katamka	
564	139	141	d	يَ غَضَبُ كَمْوَمْبِيَ	ya ghaḍabu kamwambiya	ya ghadhabu kamwambiya	
565	140	142	a	نِكَمُحِمِدِ مْنْڠُ	nikamuḥimidi mngu	nikamuhimidi mngu	
566	140	142	b	كُنٖٹٖيَ بَبَنْڠُ	kuneţeya babangu	kuneteya babangu	
567	140	142	c	كَنِؤُزَ پٖٹٖ يَنْڠُ	kaniuza peţe yangu	kaniuza pete yangu	
568	140	142	d	چَنْدَنِ كَمْتٗلٖيَ	chandani kamtoleya	chandani kamtoleya	
569	141	143	a	پٖٹٖ أَكَئِٹِزَمَ	peţe akaiţizama	pete akaitizama	
570	141	143	b	كَپِجَ نَ هَلِمَمَ	kapija na halimama	kapija na halimama	
571	141	143	c	يَپِسِيٖ يَ نْيُمَ	yapisiye ya nyuma	yapisiye ya nyuma	
572	141	143	d	يٗتٖ يَكَمْرُدِيَ	yote yakamrudiya	yote yakamrudiya	
573	142	144	a	جِنَ أَلِپٗنِؤُلِزَ	jina aliponiuliza	jina aliponiuliza	
574	142	144	b	نِسِمْوَمْبِيٖ كَئِزَ	nisimwambiye kaiza	nisimwambiye kaiza	
575	142	144	c	أَكَنِپَ مِؤُجِزَ	akanipa miujiza	akanipa miujiza	
576	142	144	d	پِيَ نَ كُنِپِجِيَ	piya na kunipijiya	piya na kunipijiya	
577	143	145	a	أُنِپِيٖ صُوْرَ زَكٗ	unipiye ṣūra zako	unipiye sura zako	
578	143	145	b	نَ صِفَ زَ نْيُمْبَ يَكٗ	na ṣifa za nyumba yako	na sifa za nyumba yako	
579	143	145	c	هَپٗ كَئٖٹَ تَمْكٗ	hapo kaeţa tamko	hapo kaeta tamko	
580	143	145	d	إِنَ لَنْڠُ كَمْوَمْبِيَ	ina langu kamwambiya	ina langu kamwambiya	
581	144	146	a	نِكَمْوَمْبِيَ نْيَكَ	nikamwambiya nyaka	nikamwambiya nyaka	
582	144	146	b	نِزٖزٗوٖءٗ هَكِكَ	nizezoweo hakika	nizezoweo hakika	
583	144	146	c	نِ تِسِيَ زِسِزٗ شَكَ	ni tisiya zisizo shaka	ni tisiya zisizo shaka	
584	144	146	d	نَ وٖوٖ تَرٖهٖ ٹِيَ	na wewe tarehe ţiya	na wewe tarehe tiya	
585	145	147	a	خَبَرِ زَكٖ تِمَمُ	khabari zake timamu	habari zake timamu	
586	145	147	b	نِمٖكُپَ أُفَهَمُ	nimekupa ufahamu	nimekupa ufahamu	
587	145	147	c	تٖنَ نَ كْوَ مْوَلِمُ	tena na kwa mwalimu	tena na kwa mwalimu	
588	145	147	d	نِمٖرُدِ كُمْوَمْبِيَ	nimerudi kumwambiya	nimerudi kumwambiya	
589	146	148	a	نِمٖمُؤَڠَ كْوَ خٖيْرِ	nimemuaga kwa khēri	nimemuaga kwa heri	
590	146	148	b	أَسُبهِ نِ سَفَرِ	asubhi ni safari	asubhi ni safari	
591	146	148	c	نِؤٗمْبٖيَ كْوَ جَبَارِ	niombeya kwa jabāri	niombeya kwa jabari	
592	146	148	d	نَ رَضِ كُنِوٖيَ	na raḍi kuniweya	na radhi kuniweya	
593	147	149	a	تٖنَ نِؤٗمْبٖيَ مْنْڠُ	tena niombeya mngu	tena niombeya mngu	
594	147	149	b	ٹُپٖنْدَنٖ نَ بَبَنْڠُ	ţupendane na babangu	tupendane na babangu	
595	147	149	c	نَمِ كِشَ مُئِ وَنڠُ	nami kisha mui wangu	nami kisha mui wangu	
596	147	149	d	تَكُيَ كُوَنْڠَلِيَ	takuya kuwangaliya	takuya kuwangaliya	
597	148	150	a	أَكِسِكِيَ قَوْلِ	akisikiya qawli	akisikiya qauli	
598	148	150	b	مَمَكٖ أَسِحِمِلِ	mamake asiḥimili	mamake asihimili	
599	148	150	c	أَكَتَرَدَدِ عَقِلِ	akataradadi ʿaqili	akataradadi aqili	
600	148	150	d	كْوَ مَكٗنْدٖ كَئِٹِيَ	kwa makonde kaiţiya	kwa makonde kaitiya	
601	149	151	a	كَئِٹُنْدَ كَيِنْڠُشَ	kaiţunda kayingusha	kaitunda kayingusha	
602	149	151	b	تِيَتِ أَكَئِرُشَ	tiyati akairusha	tiyati akairusha	
603	149	151	c	هَتَ نْڠُوٗ كَمْڤِشَ	hata nguwo kamvisha	hata nguwo kamvisha	
604	149	151	d	إِكَوَ كُمْسٗمٖيَ	ikawa kumsomeya	ikawa kumsomeya	
605	150	152	a	أَلِپٗپَٹَ فَهَمُ	alipopaţa fahamu	alipopata fahamu	
606	150	152	b	كَمُحِمِدِ كَرِيْمُ	kamuḥimidi karı̄mu	kamuhimidi karimu	
607	150	152	c	كِشَ أَكَتَكَلَمُ	kisha akatakalamu	kisha akatakalamu	
608	150	152	d	مْنْڠُ أَكَمُؤٗمْبٖيَ	mngu akamuombeya	mngu akamuombeya	
609	151	153	a	يَا أَللّٰهُ مٗلَ وَنْڠُ	yā alllähu mola wangu	ya alllahu mola wangu	
610	151	153	b	نِنُصُرِيَ مْوَنَنْڠُ	ninuṣuriya mwanangu	ninusuriya mwanangu	
611	151	153	c	نَ وَٹٗٹٗ وَ وٖنْزَنْڠُ	na waţoţo wa wenzangu	na watoto wa wenzangu	
612	151	153	d	حِفَظِنِ نِٹِلِيَ	ḥifaẓini niţiliya	hifadhini nitiliya	
613	152	154	a	إٖنٖنْدَ هُنَ مَضَرَ	enenda huna maḍara	enenda huna madhara	
614	152	154	b	نِرَضِ أَلْفُ مَرَ	niraḍi alfu mara	niradhi alfu mara	
615	152	154	c	نَاوٖ أُوٖ نَ فِكِرَ	nāwe uwe na fikira	nawe uwe na fikira	
616	152	154	d	مٗيٗ نِمٖكُؤُصِيَ	moyo nimekuuṣiya	moyo nimekuusiya	
617	153	155	a	مِمِ أُيَپٗنِؤُذِ	mimi uyaponiudhi	mimi uyaponiudhi	
618	153	155	b	سِتٗكُوَ نَ غَيْظِ	sitokuwa na ghayẓi	sitokuwa na ghaydhi	
619	153	155	c	إِوَپٗ وَتَكَ رَضِ	iwapo wataka raḍi	iwapo wataka radhi	
620	153	155	d	نَ كْوَ عَلِيْ زٖنْڠٖيَ	na kwa ʿalii zengeya	na kwa alii zengeya	
621	154	156	a	إِتُنْدٖ أُوٖ نْيَؤٗنِ	itunde uwe nyaoni	itunde uwe nyaoni	
622	154	156	b	كْوَ بَبَكٗ أُوٖ تِنِ	kwa babako uwe tini	kwa babako uwe tini	
623	154	156	c	نَ أَتَكَلٗبَئِنِ	na atakalobaini	na atakalobaini	
624	154	156	d	كْوَكٗ لِوٖ مَرْضِيَ	kwako liwe marḍiya	kwako liwe mardhiya	
625	155	157	a	نَ مْٹُمٖ مُحَمَدِ	na mţume muḥamadi	na mtume muhamadi	
626	155	157	b	هَنَ بُدِ كُكُزِدِ	hana budi kukuzidi	hana budi kukuzidi	
627	155	157	c	أَللّٰهَ اللّٰهَ جِتَهِدِ	allläha lläha jitahidi	alllaha llaha jitahidi	
628	155	157	d	نْڠَاءَ أُپَٹٖ وَصِيَ	ngaa upaţe waṣiya	ngaa upate wasiya	
629	156	158	a	نَاءٖ بِنْتِ حَبِيْبُ	nae binti ḥabı̄bu	nae binti habibu	
630	156	158	b	كٖتِ نَاءٖ كْوَ ثَوَابُ	keti nae kwa thawābu	keti nae kwa thawabu	
631	156	158	c	كْوَكٖ أُوٖ نَ أَدَبُ	kwake uwe na adabu	kwake uwe na adabu	
632	156	158	d	أُمْطِيْ نَ كُمْوَنْڠُكِيَ	umṭii na kumwangukiya	umtii na kumwangukiya	
633	157	159	a	أَكَتٗكَ جَعْفَرِ	akatoka jaʿfari	akatoka jafari	
634	157	159	b	نَ چَكُلَ كِتَيَرِ	na chakula kitayari	na chakula kitayari	
635	157	159	c	كَلَ نَ نْدُيٖ نَاصِرِ	kala na nduye nāṣiri	kala na nduye nasiri	
636	157	159	d	نَ مْوَلِمُ كَتٗكٖيَ	na mwalimu katokeya	na mwalimu katokeya	
637	158	160	a	وَكَتَنْڠَنْيَ مِكٗنٗ	wakatanganya mikono	wakatanganya mikono	
638	158	160	b	وٗتٖ وَٹَٹُ مفَنٗ	wote waţaţu mfano	wote watatu mfano	
639	158	160	c	أَكِنٖنَ نَ مَنٖنٗ	akinena na maneno	akinena na maneno	
640	158	160	d	نْدُڠُيٖ أَكِمْوَمْبِيَ	nduguye akimwambiya	nduguye akimwambiya	
641	159	161	a	أَكَمْوَمْبِيَ نَاصِرِ	akamwambiya nāṣiri	akamwambiya nasiri	
642	159	161	b	يٖؤٗ نْدُيَنْڠُ كْوَ خٖيْرِ	yeo nduyangu kwa khēri	yeo nduyangu kwa heri	
643	159	161	c	تَكَپٗرُدِ سَفَرِ	takaporudi safari	takaporudi safari	
644	159	161	d	تَمَشَ تَكُلٖٹٖيَ	tamasha takuleţeya	tamasha takuleteya	
645	160	162	a	أَكَمْجِبُ أُپٖسِ	akamjibu upesi	akamjibu upesi	
646	160	162	b	نِئٖٹٖيَ نَ فَرَسِ	nieţeya na farasi	nieteya na farasi	
647	160	162	c	نْيَمَ هُيٗ سِمُئِسِ	nyama huyo simuisi	nyama huyo simuisi	
648	160	162	d	نَتَكَ كُمْوَنْڠَلِيَ	nataka kumwangaliya	nataka kumwangaliya	
649	161	163	a	كِشَ هَپٗ كَتَمْكَ	kisha hapo katamka	kisha hapo katamka	
650	161	163	b	أَكَمْبَ مَمَ هُتٗكَ	akamba mama hutoka	akamba mama hutoka	
651	161	163	c	مَمَكٖ أَكَئِنُكَ	mamake akainuka	mamake akainuka	
652	161	163	d	صَدَكَ كَمْتٗلٖيَ	ṣadaka kamtoleya	sadaka kamtoleya	
653	162	164	a	هَپٗ مَمَكٖ أَتٗكٖ	hapo mamake atoke	hapo mamake atoke	
654	162	164	b	إٖنٖنْدٖ أَمْفُوَتٖ	enende amfuwate	enende amfuwate	
655	162	164	c	أَكِمْٹٖمٖيَ مَٹٖ	akimţemeya maţe	akimtemeya mate	
656	162	164	d	مْنْڠُ أَكِمُؤٗمْبٖيَ	mngu akimuombeya	mngu akimuombeya	
657	163	165	a	هُيٗ نَاصِرِ مْوَلِمُ	huyo nāṣiri mwalimu	huyo nasiri mwalimu	
658	163	165	b	مْسٗمٖشٖ أَهِتِمُ	msomeshe ahitimu	msomeshe ahitimu	
659	163	165	c	أُمْفُنْدٖ نَ عِلِمُ	umfunde na ʿilimu	umfunde na ilimu	
660	163	165	d	عَادَ يَكٗ تَكْوٖٹٖيَ	ʿāda yako takweţeya	ada yako takweteya	
661	164	166	a	أَكِتٗكَ جَعْفَرِ	akitoka jaʿfari	akitoka jafari	
662	164	166	b	هَپٗ كَلِيَ نَاصِرِ	hapo kaliya nāṣiri	hapo kaliya nasiri	
663	164	166	c	مَمَكٖ أَكَفَسِرِ	mamake akafasiri	mamake akafasiri	
664	164	166	d	أُسِكُ أَتَرٖجٖيَ	usiku atarejeya	usiku atarejeya	
665	165	167	a	نَاصِرِ أَكَتَمْكَ	nāṣiri akatamka	nasiri akatamka	
666	165	167	b	نَمُيُوَ إٖنْدَ مَكَه	namuyuwa enda makah	namuyuwa enda makah	
667	165	167	c	كُتُنْڠَ هَنْڠَلِتٗكَ	kutunga hangalitoka	kutunga hangalitoka	
668	165	167	d	أَسِپٗئِيٗنَ نْدِيَ	asipoiyona ndiya	asipoiyona ndiya	
669	166	168	a	أَوْ يَنَ سِكُوَكٗ	aw yana sikuwako	au yana sikuwako	
670	166	168	b	أُكِمْوَمْبِيَ تَمْكٗ	ukimwambiya tamko	ukimwambiya tamko	
671	166	168	c	كَوَڠٖ وٖنْدَنِ وَكٗ	kawage wendani wako	kawage wendani wako	
672	166	168	d	يٗتٖ نَلِيَسِكِيَ	yote naliyasikiya	yote naliyasikiya	
673	167	169	a	أَوْ وٖنْدَ مَتُنْڠَنِ	aw wenda matungani	au wenda matungani	
674	167	169	b	نْڠُوٗ هُتُكُلِيَنِ	nguwo hutukuliyani	nguwo hutukuliyani	
675	167	169	c	سِكُ زٗتِ سِمُؤٗنِ	siku zoti simuoni	siku zoti simuoni	
676	167	169	d	هَتَ هَيٗ كُنَمْبِيَ	hata hayo kunambiya	hata hayo kunambiya	
677	168	170	a	جَعْفَرِ كَبَئِنِ	jaʿfari kabaini	jafari kabaini	
678	168	170	b	بَسِ وَلِلِيَنِ	basi waliliyani	basi waliliyani	
679	168	170	c	أَوْ ٹْوَلِأڠَنَنِ	aw ţwaliganani	au twaliganani	
680	168	170	d	مَنٖنٗ نَلٗكْوَمْبِيَ	maneno nalokwambiya	maneno nalokwambiya	
681	169	171	a	نَ كَمَ هُكِرِضِكَ	na kama hukiriḍika	na kama hukiridhika	
682	169	171	b	نَمْبِيَ نِسِيَتٗكَ	nambiya nisiyatoka	nambiya nisiyatoka	
683	169	171	c	هُنَ هَتَ كُؤُذِكَ	huna hata kuudhika	huna hata kuudhika	
684	169	171	d	سِكِتِكٗ كُنِٹِيَ	sikitiko kuniţiya	sikitiko kunitiya	
685	170	172	a	أَكَجِبُ تَمْكٗ	akajibu tamko	akajibu tamko	
686	170	172	b	سِكُئِزَ هَيٗ يَكٗ	sikuiza hayo yako	sikuiza hayo yako	
687	170	172	c	سِكُ زٗتٖ نِكٗ	siku zote niko	siku zote niko	
688	170	172	d	هَمُنِؤٗنِ كُلِيَ	hamunioni kuliya	hamunioni kuliya	
689	171	173	a	سَسَ هَيَ نْدَ عَقِلِ	sasa haya nda ʿaqili	sasa haya nda aqili	
690	171	173	b	نِمٖزٗيَتَأَمَلِ	nimezoyataamali	nimezoyataamali	
691	171	173	c	نَ كُوَ مَتُلِ تُلِ	na kuwa matuli tuli	na kuwa matuli tuli	
692	171	173	d	زٖءٗ زَكٗ زَ كُئِنُكِيَ	zeo zako za kuinukiya	zeo zako za kuinukiya	
693	172	174	a	أَكَمْوَمْبِيَ نْدُيَكٖ	akamwambiya nduyake	akamwambiya nduyake	
694	172	174	b	هى إِنُكَ أُتٗكٖ	hı̄ inuka utoke	hi inuka utoke	
695	172	174	c	جَعْفَرِ أَتَمْكٖ	jaʿfari atamke	jafari atamke	
696	172	174	d	كْوَنْدَ مْنْڠُ نِؤٗمْبٖيَ	kwanda mngu niombeya	kwanda mngu niombeya	
697	173	175	a	نَاصِرِ أَكَبَئِنِ	nāṣiri akabaini	nasiri akabaini	
698	173	175	b	أَتَكُپٖكَ مَنَنِ	atakupeka manani	atakupeka manani	
699	173	175	c	سَلَامَ سَلِمِيْنِ	salāma salimı̄ni	salama salimini	
700	173	175	d	كْوَ عَفِيَ نَ عَفُوَ	kwa ʿafiya na ʿafuwa	kwa afiya na afuwa	
701	174	176	a	هَپٗ نْدِيَ كَيَنْدَمَ	hapo ndiya kayandama	hapo ndiya kayandama	
702	174	176	b	كِنٖنْدَ كُتٗسِمَمَ	kinenda kutosimama	kinenda kutosimama	
703	174	176	c	سَاءَ كُمِ إِكِكٗمَ	saa kumi ikikoma	saa kumi ikikoma	
704	174	176	d	نَاءٖ مَكَه أَمٖنْڠِيَ	nae makah amengiya	nae makah amengiya	
705	175	177	a	مَكَه أَلِپٗجِلِسِ	makah alipojilisi	makah alipojilisi	
706	175	177	b	كْوَ بَبَكٖ هَكُئِسِ	kwa babake hakuisi	kwa babake hakuisi	
707	175	177	c	كَمْبَ نْدِيَ سِتَكَسِ	kamba ndiya sitakasi	kamba ndiya sitakasi	
708	175	177	d	كْوَنْدَ تَئِكٖتِلِيَ	kwanda taiketiliya	kwanda taiketiliya	
709	176	178	a	أَكَكٖتِ جَعْفَرِ	akaketi jaʿfari	akaketi jafari	
710	176	178	b	أَكَمُؤٗنَ زُبٖيْرِ	akamuona zubēri	akamuona zuberi	
711	176	178	c	وٖنْدٖمٖنٖ نَ بَشِيْرِ	wendemene na bashı̄ri	wendemene na bashiri	
712	176	178	d	مِكٗنٗ كَمْوِنُلِيَ	mikono kamwinuliya	mikono kamwinuliya	
713	177	179	a	مْكٗنٗ كَؤُٹِزَمَ	mkono kauţizama	mkono kautizama	
714	177	179	b	زُبٖيْرِ أَكَسِمَمَ	zubēri akasimama	zuberi akasimama	
715	177	179	c	أَكَمْوَمْبِيَ هَشِمَ	akamwambiya hashima	akamwambiya hashima	
716	177	179	d	مْڠٖنِ وٖٹُ هُنْڠِيَ	mgeni weţu hungiya	mgeni wetu hungiya	
717	178	180	a	أَكَمُؤُزَ أَمِيْنِ	akamuuza amı̄ni	akamuuza amini	
718	178	180	b	مْڠٖنِ وٖٹُ نِ نَنِ	mgeni weţu ni nani	mgeni wetu ni nani	
719	178	180	c	وَسِكِيٖ هُبَئِنِ	wasikiye hubaini	wasikiye hubaini	
720	178	180	d	مْكٗنٗ نِپٖ نَبِيَ	mkono nipe nabiya	mkono nipe nabiya	
721	179	181	a	زُبٖيْرِ كَتَعَجَبُ	zubēri kataʿajabu	zuberi kataajabu	
722	179	181	b	وَمُيُوَپِ حَبِيْبُ	wamuyuwapi ḥabı̄bu	wamuyuwapi habibu	
723	179	181	c	جَعْفَرِ كَمْجِبُ	jaʿfari kamjibu	jafari kamjibu	
724	179	181	d	وَجْهِ وَكٖ نَبِيَ	wajhi wake nabiya	wajhi wake nabiya	
725	180	182	a	كِشَ هَپٗ كَبَئِنِ	kisha hapo kabaini	kisha hapo kabaini	
726	180	182	b	كْوَ بَبَنْڠُ نِپٖكٖنِ	kwa babangu nipekeni	kwa babangu nipekeni	
727	180	182	c	كَمْتُكُوَ أَمِيْنِ	kamtukuwa amı̄ni	kamtukuwa amini	
728	180	182	d	كٖنْدَ نَاءٖ كْوَ عَلِيَ	kenda nae kwa ʿaliya	kenda nae kwa aliya	
729	181	183	a	أَلِپٗكْوٖنْدَ سَيِّدِ	alipokwenda sayyidi	alipokwenda sayyidi	
730	181	183	b	كْوَءٗ أَكَپِجَ هٗدِ	kwao akapija hodi	kwao akapija hodi	
731	181	183	c	فَتُمَ أَكَرَدِدِ	fatuma akaradidi	fatuma akaradidi	
732	181	183	d	أَكَمْبَ هَكٗ نَبِيَ	akamba hako nabiya	akamba hako nabiya	
733	182	184	a	أَكَمُؤُزَ حُسَيْنِ	akamuuza ḥusayni	akamuuza husayni	
734	182	184	b	أَمْكُوَءٗ نِ نْيَانِ	amkuwao ni nyāni	amkuwao ni nyani	
735	182	184	c	كِجَنَ أَكَبَئِنِ	kijana akabaini	kijana akabaini	
736	182	184	d	نِ جَدِ يَنْڠُ سِكِيَ	ni jadi yangu sikiya	ni jadi yangu sikiya	
737	183	185	a	نَ جَدِ يَنْڠُ رَسُوْلِ	na jadi yangu rasūli	na jadi yangu rasuli	
738	183	185	b	يٖيٖ نَ وَٹُ وَوِلِ	yeye na waţu wawili	yeye na watu wawili	
739	183	185	c	كُسِكِيَكْوٖ قَوْلِ	kusikiyakwe qawli	kusikiyakwe qauli	
740	183	185	d	كَتٗكَ كَمْوَنْڠَلِيَ	katoka kamwangaliya	katoka kamwangaliya	
741	184	186	a	أَكِتٗكَ جَعْفَرِ	akitoka jaʿfari	akitoka jafari	
742	184	186	b	كَمُؤُلِزَ خَبَرِ	kamuuliza khabari	kamuuliza habari	
743	184	186	c	أَكِكٗمَ كَفَسِرِ	akikoma kafasiri	akikoma kafasiri	
744	184	186	d	فَتُمَ كَمْپٗكٖيَ	fatuma kampokeya	fatuma kampokeya	
745	185	187	a	فَتُمَ كَتَكَلَمُ	fatuma katakalamu	fatuma katakalamu	
746	185	187	b	أَكَمُؤُزَ هَشِمُ	akamuuza hashimu	akamuuza hashimu	
747	185	187	c	بَبَ سِيَمْفَهَمُ	baba siyamfahamu	baba siyamfahamu	
748	185	187	d	كِجَنَ هُيُ نَبِيَ	kijana huyu nabiya	kijana huyu nabiya	
749	186	188	a	سِكُ زٗتٖ سِمُؤٗنِ	siku zote simuoni	siku zote simuoni	
750	186	188	b	إِنَ لَكٖ نٔدِيٖ نَنِ	ina lake ndiye nani	ina lake ndiye nani	
751	186	188	c	مْٹُمِ أَكَبَئِنِ	mţumi akabaini	mtumi akabaini	
752	186	188	d	فَتُمَ أَكَمْوَمْبِيَ	fatuma akamwambiya	fatuma akamwambiya	
753	187	189	a	أَكَمْوَمْبِيَ بَشِيْرِ	akamwambiya bashı̄ri	akamwambiya bashiri	
754	187	189	b	هُيُ نْدِيٖ جَعْفَرِ	huyu ndiye jaʿfari	huyu ndiye jafari	
755	187	189	c	وَ عَلِيْ حَيْدَرِ	wa ʿalii ḥaydari	wa alii haydari	
756	187	189	d	هِزٗ صُوْرَ هُكْوَمْبِيَ	hizo ṣūra hukwambiya	hizo sura hukwambiya	
757	188	190	a	هَپٗ سَيِدِ أَمِيْنِ	hapo sayidi amı̄ni	hapo sayidi amini	
758	188	190	b	أَكَمْٹُمَ حُسَيْنِ	akamţuma ḥusayni	akamtuma husayni	
759	188	190	c	إٖنٖنْدَ مْسِكِٹِنِ	enenda msikiţini	enenda msikitini	
760	188	190	d	بَبَكٗ نَمْكُلِيَ	babako namkuliya	babako namkuliya	
761	189	191	a	هَپٗ كَتٗكَ حُسَيْنِ	hapo katoka ḥusayni	hapo katoka husayni	
762	189	191	b	كَفِكَ مْسِكِٹِنِ	kafika msikiţini	kafika msikitini	
763	189	191	c	بَبَ كُئِيٖ مْڠٖنِ	baba kuiye mgeni	baba kuiye mgeni	
764	189	191	d	ٹُمِوٖ كُكْوَنْدَمِيَ	ţumiwe kukwandamiya	tumiwe kukwandamiya	
765	190	192	a	كُنَ كِجَنَ مْزُرِ	kuna kijana mzuri	kuna kijana mzuri	
766	190	192	b	چٖنْدٖمٖنٖ نَ بَشِيْرِ	chendemene na bashı̄ri	chendemene na bashiri	
767	190	192	c	نَ إِنَ نِ جَعْفَرِ	na ina ni jaʿfari	na ina ni jafari	
768	190	192	d	نِ هِلٗ نِمٖكْوَمْبِيَ	ni hilo nimekwambiya	ni hilo nimekwambiya	
769	191	193	a	چَنْبِوَ هِيٗ كَلِمَ	cham̱biwa hiyo kalima	chambiwa hiyo kalima	
770	191	193	b	پَپٗ نْدِيَ كَيَنْدَمَ	papo ndiya kayandama	papo ndiya kayandama	
771	191	193	c	مْلَنْڠٗنِ أَكِكٗمَ	mlangoni akikoma	mlangoni akikoma	
772	191	193	d	سَلَامُ كَوَپِسِيَ	salāmu kawapisiya	salamu kawapisiya	
773	192	194	a	سَلَامُ أَكِفَسِرِ	salāmu akifasiri	salamu akifasiri	
774	192	194	b	هَپٗ عَلِيْ حَيْدَرِ	hapo ʿalii ḥaydari	hapo alii haydari	
775	192	194	c	كَئِنُكَ جَعْفَرِ	kainuka jaʿfari	kainuka jafari	
776	192	194	d	مكٗنٗ كَمْپٗكٖيَ	mkono kampokeya	mkono kampokeya	
777	193	195	a	عَلِيْ كٖٹَ تَمْكٗ	ʿalii keţa tamko	alii keta tamko	
778	193	195	b	نِ سَلَامَ أُتٗكَكٗ	ni salāma utokako	ni salama utokako	
779	193	195	c	جُمْلَ وٖنْدَنِ وَكٗ	jumla wendani wako	jumla wendani wako	
780	193	195	d	حَالِ زَءٗ نَمْبِيَ	ḥāli zao nambiya	hali zao nambiya	
781	194	196	a	أَكَمْجِبُ كَلَمُ	akamjibu kalamu	akamjibu kalamu	
782	194	196	b	نِتٗكَكٗ نِ سَلَامَ	nitokako ni salāma	nitokako ni salama	
783	194	196	c	سِيُوِ يَ هٗكٗ نْيُمَ	siyuwi ya hoko nyuma	siyuwi ya hoko nyuma	
784	194	196	d	سِپَٹِ لَكُكْوَمْبِيَ	sipaţi lakukwambiya	sipati lakukwambiya	
785	195	197	a	تٖنَ بَبَ مْوَلِمُ	tena baba mwalimu	tena baba mwalimu	
786	195	197	b	نَ مَمَ وَكُسَلِمُ	na mama wakusalimu	na mama wakusalimu	
787	195	197	c	وَعَلَيْكَ السَّلَامَ	waʿalayka āssaّlāma	waalayka assaU+0651lama	
788	195	197	d	عَلِيْ كَپٗكٖيَ	ʿalii kapokeya	alii kapokeya	
789	196	198	a	عَلِيْ أَكَبَئِنِ	ʿalii akabaini	alii akabaini	
790	196	198	b	نِمٖكُنْڠٗجَ نْدِيَنِ	nimekungoja ndiyani	nimekungoja ndiyani	
791	196	198	c	وَلِتٗكَ زٖءٗ ڠَنِ	walitoka zeo gani	walitoka zeo gani	
792	196	198	d	مْبٗنَ أُمٖلِمَٹِيَ	mbona umelimaţiya	mbona umelimatiya	
793	197	199	a	أَكَمْجِبُ قَوْلِ	akamjibu qawli	akamjibu qauli	
794	197	199	b	أَصُبُحِ نَلِصَلِ	aṣubuḥi naliṣali	asubuhi nalisali	
795	197	199	c	لَكِنِ بَبَ نِ مْبَلِ	lakini baba ni mbali	lakini baba ni mbali	
796	197	199	d	إِنَ أُرٖفُ وَ نْدِيَ	ina urefu wa ndiya	ina urefu wa ndiya	
797	198	200	a	نَمِ كِپَٹَ پَنْڠٗنِ	nami kipaţa pangoni	nami kipata pangoni	
798	198	200	b	پَنَ مْٹٖنْدٖ نْدِيَنِ	pana mţende ndiyani	pana mtende ndiyani	
799	198	200	c	يَلِنِتٗكَ مٗيٗنِ	yalinitoka moyoni	yalinitoka moyoni	
800	198	200	d	يَلٖ وَلٗنَمْبِيَ	yale walonambiya	yale walonambiya	
801	199	201	a	كَئِوَتَ يَ كُڤُلِ	kaiwata ya kuvuli	kaiwata ya kuvuli	
802	199	201	b	كَأَنْدَمَ إِلٗ مْبَلِ	kaandama ilo mbali	kaandama ilo mbali	
803	199	201	c	هَتَ كِتَأَمَلِ	hata kitaamali	hata kitaamali	
804	199	201	d	سَاءَ إِمٖنِپِٹِيَ	saa imenipiţiya	saa imenipitiya	
805	200	202	a	كِشَ أُوِنْڠَ كَئٖٹَ	kisha uwinga kaeţa	kisha uwinga kaeta	
806	200	202	b	إِيُ لَ بَرَ كَپِٹَ	iyu la bara kapiţa	iyu la bara kapita	
807	200	202	c	إِلِ نْدِيَ كُئِوَتَ	ili ndiya kuiwata	ili ndiya kuiwata	
808	200	202	d	نْيُمَ نِسِپٗرٖجٖيَ	nyuma nisiporejeya	nyuma nisiporejeya	
809	201	203	a	سُرَ نٖنْدَءٗ بَرَنِ	sura nendao barani	sura nendao barani	
810	201	203	b	إِلٖ نْدِيَ سِئِيٗنِ	ile ndiya siiyoni	ile ndiya siiyoni	
811	201	203	c	هُؤٗنَ نِكٗ بَرَنِ	huona niko barani	huona niko barani	
812	201	203	d	زٗتٖ زِمٖنِپٗتٖيَ	zote zimenipoteya	zote zimenipoteya	
813	202	204	a	كِپِجَ فِكِرَ زَنْڠُ	kipija fikira zangu	kipija fikira zangu	
814	202	204	b	كَلَنْدَمَ ڠُوْ لَنْڠُ	kalandama guu langu	kalandama guu langu	
815	202	204	c	نَرُدِيَ پَلٖ پَنْڠُ	narudiya pale pangu	narudiya pale pangu	
816	202	204	d	كِشَ نْيُمَ كَرٖجٖيَ	kisha nyuma karejeya	kisha nyuma karejeya	
817	203	205	a	كِشَ كَرُدِيَ نْيُمَ	kisha karudiya nyuma	kisha karudiya nyuma	
818	203	205	b	هَپٗ نْدِيَ كَيَنْدَمَ	hapo ndiya kayandama	hapo ndiya kayandama	
819	203	205	c	پٖنْيٖ مْٹٖنْدٖ كَكٗمَ	penye mţende kakoma	penye mtende kakoma	
820	203	205	d	صَالَ إِمٖنِسِمَمِيَ	ṣāla imenisimamiya	sala imenisimamiya	
821	204	206	a	أَوَلِ يَ أَظُهُرِ	awali ya aẓuhuri	awali ya adhuhuri	
822	204	206	b	نْدِپٗ نْدِيَ كَعَبِرِ	ndipo ndiya kaʿabiri	ndipo ndiya kaabiri	
823	204	206	c	حُجَ يَ كُجَ أَخِيْرِ	ḥuja ya kuja akhı̄ri	huja ya kuja ahiri	
824	204	206	d	مَعَانَ نِمٖكْوَمْبِيَ	maʿāna nimekwambiya	maana nimekwambiya	
825	205	207	a	كِمَلِزَ كُپُلِكَ	kimaliza kupulika	kimaliza kupulika	
826	205	207	b	عَلِيْ أَكَتَمْكَ	ʿalii akatamka	alii akatamka	
827	205	207	c	مْوَنَنْڠُ أُمٖسُمْبُكَ	mwanangu umesumbuka	mwanangu umesumbuka	
828	205	207	d	هَپٗ كَنٖنَ نَبِيَ	hapo kanena nabiya	hapo kanena nabiya	
829	206	208	a	هَپٗ كَنٖنَ هَشِمَ	hapo kanena hashima	hapo kanena hashima	
830	206	208	b	سِ هَبَ كُيَ سَلَام	si haba kuya salām	si haba kuya salam	
831	206	208	c	نْدِيَ مٖزٗإِيَنْدَمَ	ndiya mezoiyandama	ndiya mezoiyandama	
832	206	208	d	خَطَرِ هُمْزٖنْڠٖيَ	khaṭari humzengeya	hatari humzengeya	
833	207	209	a	أَمْكِنْڠَ وَدُوْدِ	amkinga wadūdi	amkinga wadudi	
834	207	209	b	أَسِؤٗوْنٖ مَيَهُوْدِ	asiōne mayahūdi	asione mayahudi	
835	207	209	c	كْوَنِ وَنْڠَلِمْزِدِ	kwani wangalimzidi	kwani wangalimzidi	
836	207	209	d	وَٹُ وَنْڠِ سِ مْمٗيَ	waţu wangi si mmoya	watu wangi si mmoya	
837	208	210	a	فَتُمَ أُكٗ كِٹِنِ	fatuma uko kiţini	fatuma uko kitini	
838	208	210	b	أَكَمْوٖپُكَ أَمِيْنِ	akamwepuka amı̄ni	akamwepuka amini	
839	208	210	c	كْوَ مْكٗنٗ كَبَئِنِ	kwa mkono kabaini	kwa mkono kabaini	
840	208	210	d	نَ نْدَنِ كَمُأَمْكُوَ	na ndani kamuamkuwa	na ndani kamuamkuwa	
841	209	211	a	مكٗنٗ كِؤُٹِزَمَ	mkono kiuţizama	mkono kiutizama	
842	209	211	b	عَلِيْ أَكَفَهَمَ	ʿalii akafahama	alii akafahama	
843	209	211	c	أَكَمْوَمْبِيَ هَشِمَ	akamwambiya hashima	akamwambiya hashima	
844	209	211	d	نٖنْدَ نْدَنِ مَرَ مٗيَ	nenda ndani mara moya	nenda ndani mara moya	
845	210	212	a	كْوَ نْدَنِ أَلِپٗفِكَ	kwa ndani alipofika	kwa ndani alipofika	
846	210	212	b	فَتُمَ أَكَتَمْكَ	fatuma akatamka	fatuma akatamka	
847	210	212	c	چَكُلَ نِمٖكِپِكَ	chakula nimekipika	chakula nimekipika	
848	210	212	d	هَيَتَسَ كْوَنْدِكِوَ	hayatasa kwandikiwa	hayatasa kwandikiwa	
849	211	213	a	كْوَنْدَ سِكُمَكِنِكَ	kwanda sikumakinika	kwanda sikumakinika	
850	211	213	b	خَبَرِ أَكَتَمْكَ	khabari akatamka	habari akatamka	
851	211	213	c	مٗيٗ هُمْپَپَٹِكَ	moyo humpapaţika	moyo humpapatika	
852	211	213	d	كْوَ أُثَقِلِ وَ نْدِيَ	kwa uthaqili wa ndiya	kwa uthaqili wa ndiya	
853	212	214	a	نَ زٖءٗ أَلِزٗتٗكَ	na zeo alizotoka	na zeo alizotoka	
854	212	214	b	أُمٖزِيُوَ هَكِكَ	umeziyuwa hakika	umeziyuwa hakika	
855	212	214	c	نَ سِسِ هُمْپُلِكَ	na sisi humpulika	na sisi humpulika	
856	212	214	d	مَنٖنٗيٖ هُٹْوَمْبِيَ	manenoye huţwambiya	manenoye hutwambiya	
857	213	215	a	عَلِيْ أَكَبَئِنِ	ʿalii akabaini	alii akabaini	
858	213	215	b	هُمْصُبِرِ حُسَيْنِ	humṣubiri ḥusayni	humsubiri husayni	
859	213	215	c	نِمٖمْٹُمَ حَسَنِ	nimemţuma ḥasani	nimemtuma hasani	
860	213	215	d	إٖنْدٖ كُمُؤَمْكُوَ	ende kumuamkuwa	ende kumuamkuwa	
861	214	216	a	عَلِيْ كُتٗكَ نْدَنِ	ʿalii kutoka ndani	alii kutoka ndani	
862	214	216	b	أَلِپٗكٖتِ كِٹِنِ	alipoketi kiţini	alipoketi kitini	
863	214	216	c	أَمْسِكِيٖ حَسَنِ	amsikiye ḥasani	amsikiye hasani	
864	214	216	d	سَلَامُ هُوَپِسِيَ	salāmu huwapisiya	salamu huwapisiya	
865	215	217	a	حَسَنِ أَكَنُظُمُ	ḥasani akanuẓumu	hasani akanudhumu	
866	215	217	b	كُوَپِسِزَ سَلَامُ	kuwapisiza salāmu	kuwapisiza salamu	
867	215	217	c	أَمْرُدِشٖ كَلِمُ	amrudishe kalimu	amrudishe kalimu	
868	215	217	d	جَعْفَرِ كَمْوَمْبِيَ	jaʿfari kamwambiya	jafari kamwambiya	
869	216	218	a	كْوَ أُنْدَنِ كْوِمَ	kwa undani kwima	kwa undani kwima	
870	216	218	b	كَمُؤُلِزَ سَلَامَ	kamuuliza salāma	kamuuliza salama	
871	216	218	c	وَلِؤٗپٗ وَكَسِمَ	waliopo wakasima	waliopo wakasima	
872	216	218	d	وٗتٖ وَكَمْپٗكٖيَ	wote wakampokeya	wote wakampokeya	
873	217	219	a	كَمْوَمْبِيَ مَتَمْكٗ	kamwambiya matamko	kamwambiya matamko	
874	217	219	b	نِ سَلَامَ نِتٗكَكٗ	ni salāma nitokako	ni salama nitokako	
875	217	219	c	سِيُوِ مْبٖيْ نٖنْدَكٗ	siyuwi mbee nendako	siyuwi mbee nendako	
876	217	219	d	أَيُوَءٖ نِ جَلِيَ	ayuwae ni jaliya	ayuwae ni jaliya	
877	218	220	a	أَكَتَمْكَ أَمِيْنِ	akatamka amı̄ni	akatamka amini	
878	218	220	b	كَوَمْبِيَ كْوَ هٖرِنِ	kawambiya kwa herini	kawambiya kwa herini	
879	218	220	c	عَلِيْ أَكَبَئِنِ	ʿalii akabaini	alii akabaini	
880	218	220	d	مْبٗنَ هُتٗكَ نَبِيَ	mbona hutoka nabiya	mbona hutoka nabiya	
881	219	221	a	مْٹُمٖ أَكَتَمْكَ	mţume akatamka	mtume akatamka	
882	219	221	b	زٖءٗ زِمٖأَخِرِكَ	zeo zimeakhirika	zeo zimeahirika	
883	219	221	c	سَاءَ تِسِيَ هَكِكَ	saa tisiya hakika	saa tisiya hakika	
884	219	221	d	نْيُمْبَنِ سِيَرٖجٖيَ	nyumbani siyarejeya	nyumbani siyarejeya	
885	220	222	a	كَمْبَ صُبِرِ بَشِيْرِ	kamba ṣubiri bashı̄ri	kamba subiri bashiri	
886	220	222	b	ٹُمْلِشٖ جَعْفَرِ	ţumlishe jaʿfari	tumlishe jafari	
887	220	222	c	چَكُلَ كِكٗ تَيَرِ	chakula kiko tayari	chakula kiko tayari	
888	220	222	d	هَپٗ كَكٖتِ نَبِيَ	hapo kaketi nabiya	hapo kaketi nabiya	
889	221	223	a	فَتُمَ أَكَئِنُكَ	fatuma akainuka	fatuma akainuka	
890	221	223	b	كْوَ أُپٖسِ نَ هَرَكَ	kwa upesi na haraka	kwa upesi na haraka	
891	221	223	c	تَمَشَ أَكَئِوٖكَ	tamasha akaiweka	tamasha akaiweka	
892	221	223	d	نَ مَاءِ كَوَپٖكٖيَ	na mai kawapekeya	na mai kawapekeya	
893	222	224	a	وَكَكٖتِ كْوَ مْفَنٗ	wakaketi kwa mfano	wakaketi kwa mfano	
894	222	224	b	وَكَتَنْڠَنْيَ مِكٗنٗ	wakatanganya mikono	wakatanganya mikono	
895	222	224	c	جُمْلَ وَٹُ وَ تَنٗ	jumla waţu wa tano	jumla watu wa tano	
896	222	224	d	وَلَ أَسِلٖ نَبِيَ	wala asile nabiya	wala asile nabiya	
897	223	225	a	مَرَ ٹَاٹُ كْوَ هَكِكَ	mara ţāţu kwa hakika	mara tatu kwa hakika	
898	223	225	b	مْكٗنٗ أَلِؤُپٖكَ	mkono aliupeka	mkono aliupeka	
899	223	225	c	أَكِشَ أَكَئِنُكَ	akisha akainuka	akisha akainuka	
900	223	225	d	وَءٗ أَكَوَتِيَ	wao akawatiya	wao akawatiya	
901	224	226	a	أَكَئِنُكَ كِٹِنِ	akainuka kiţini	akainuka kitini	
902	224	226	b	كَپٗوَ مَاءِ أَمِيْنِ	kapowa mai amı̄ni	kapowa mai amini	
903	224	226	c	نَ يَ كُنْوَ كِكٗمْبٖنِ	na ya kunwa kikombeni	na ya kunwa kikombeni	
904	224	226	d	نَاءٖ أَكَسُكُتُوَ	nae akasukutuwa	nae akasukutuwa	
905	225	227	a	تَمْبُوْ يَ كُخِتَرِ	tambuu ya kukhitari	tambuu ya kuhitari	
906	225	227	b	هَپٗ كَپٗوَ بَشِيْرِ	hapo kapowa bashı̄ri	hapo kapowa bashiri	
907	225	227	c	أَكَوَآڠَ كْوَ هٖرِ	akawaãga kwa heri	akawaaga kwa heri	
908	225	227	d	ٹُمْوَ أَكَئِتٗكٖيَ	ţumwa akaitokeya	tumwa akaitokeya	
909	226	228	a	ٹُمْوَ أَكِشَ كُتٗكَ	ţumwa akisha kutoka	tumwa akisha kutoka	
910	226	228	b	نَاءٗ كُلَ وَمٖكْوِشَ	nao kula wamekwisha	nao kula wamekwisha	
911	226	228	c	فَتُمَ أَكَئِنُكَ	fatuma akainuka	fatuma akainuka	
912	226	228	d	مَاءِ أَكَوَپٖكٖيَ	mai akawapekeya	mai akawapekeya	
913	227	229	a	أَكَئِيٗنَ فَتُمَ	akaiyona fatuma	akaiyona fatuma	
914	227	229	b	پٹٖ أَكَئِٹِزَمَ	pţe akaiţizama	pte akaitizama	
915	227	229	c	يَپِسِيٗ يَ نْيُمَ	yapisiyo ya nyuma	yapisiyo ya nyuma	
916	227	229	d	يٗتٖ يَكَمْرُدِيَ	yote yakamrudiya	yote yakamrudiya	
917	228	230	a	عَلِيْ أَكَتَمْكَ	ʿalii akatamka	alii akatamka	
918	228	230	b	مْبٗنَ أُمٖبَدِلِكَ	mbona umebadilika	mbona umebadilika	
919	228	230	c	كَمَ أُمٖزٗؤُذِكَ	kama umezoudhika	kama umezoudhika	
920	228	230	d	يٖؤٗ نِكِكْوَنْڠَلِيَ	yeo nikikwangaliya	yeo nikikwangaliya	
921	229	231	a	فَتُمَ َكَرَدِدِ	fatuma akaradidi	fatuma akaradidi	
922	229	231	b	وٖوٖ هُنٖنْدِ بَعِيْدِ	wewe hunendi baʿı̄di	wewe hunendi baidi	
923	229	231	c	نِلٗنَلٗ سِنَ بُدِ	nilonalo sina budi	nilonalo sina budi	
924	229	231	d	إِلَّا نَاوٖ كُكْوَمْبِيَ	illā nāwe kukwambiya	illa nawe kukwambiya	
925	230	232	a	أَكِسِكِيَ حَسَنِ	akisikiya ḥasani	akisikiya hasani	
926	230	232	b	كَتٗكَ كُلٖ نْيُمْبَنِ	katoka kule nyumbani	katoka kule nyumbani	
927	230	232	c	أَكَنٖنْدَ كْوَ أَمِيْنِ	akanenda kwa amı̄ni	akanenda kwa amini	
928	230	232	d	حبر أَكَمْوَمْبِيَ	ḥbr akamwambiya	hbr akamwambiya	
929	231	233	a	حَسَنِ كِشَ كُفِكَ	ḥasani kisha kufika	hasani kisha kufika	
930	231	233	b	كْوَ مْٹُمٖ كَتَمْكَ	kwa mţume katamka	kwa mtume katamka	
931	231	233	c	مِمِ أَمٖكَسِرِكَ	mimi amekasirika	mimi amekasirika	
932	231	233	d	بِبِ يَنْڠُ نَكْوَمْبِيَ	bibi yangu nakwambiya	bibi yangu nakwambiya	
933	232	234	a	أَكَمُؤُزَ أَمِيْنِ	akamuuza amı̄ni	akamuuza amini	
934	232	234	b	مٖكَسِرِكِيَ نِنِ	mekasirikiya nini	mekasirikiya nini	
935	232	234	c	مْوٖنْيٖوٖ هَكُبَئِنِ	mwenyewe hakubaini	mwenyewe hakubaini	
936	232	234	d	مٗيَ سِكُفَهَمِيَ	moya sikufahamiya	moya sikufahamiya	
937	233	235	a	كُرُدِ كْوَكٖ نْدِيَنِ	kurudi kwake ndiyani	kurudi kwake ndiyani	
938	233	235	b	أَكَمُؤٗنَ حُسَيْنِ	akamuona ḥusayni	akamuona husayni	
939	233	235	c	آٹِ مٖكُيَ مْڠٖنِ	ãţi mekuya mgeni	ati mekuya mgeni	
940	233	235	d	هُكُ كْوٖٹُ نَسِكِيَ	huku kweţu nasikiya	huku kwetu nasikiya	
941	234	236	a	أَكَمْجِبُ حَسَنِ	akamjibu ḥasani	akamjibu hasani	
942	234	236	b	مْوٖنْيٖ خَبَرِ مُئِنِ	mwenye khabari muini	mwenye habari muini	
943	234	236	c	إِنَ يٖيٖ تَمْكِنِ	ina yeye tamkini	ina yeye tamkini	
944	234	236	d	هٗيٗ أَمٖزٗوَمْبِيَ	hoyo amezowambiya	hoyo amezowambiya	
945	235	237	a	أَكَپِٹَ مْلَنْڠٗنِ	akapiţa mlangoni	akapita mlangoni	
946	235	237	b	أَكَرَدِدِ حُسَيْنِ	akaradidi ḥusayni	akaradidi husayni	
947	235	237	c	آسَ وَمْتَكِيَنِ	ãsa wamtakiyani	asa wamtakiyani	
948	235	237	d	پٖنُ أَلِوَپٗتٖيَ	penu aliwapoteya	penu aliwapoteya	
949	236	238	a	أَكَمُؤُزَ بَبَكٖ	akamuuza babake	akamuuza babake	
950	236	238	b	أُنَنِ هُنٖنَ پْوٖكٖ	unani hunena pweke	unani hunena pweke	
951	236	238	c	أَكَمْبَ خٖيْرِ نِتٗكٖ	akamba khēri nitoke	akamba heri nitoke	
952	236	238	d	خَبَرِ زِمٖئٖنٖيَ	khabari zimeeneya	habari zimeeneya	
953	237	239	a	كُمٖپَنَنَ خَبَرِ	kumepanana khabari	kumepanana habari	
954	237	239	b	جَمِيْعِ يَ أَنْصَارِ	jamı̄ʿi ya anṣāri	jamii ya ansari	
955	237	239	c	أَمٖكُيَ جَعْفَرِ	amekuya jaʿfari	amekuya jafari	
956	237	239	d	وَ مَوْلَانَا عَلِيَ	wa mawlānā ʿaliya	wa maulana aliya	
957	238	240	a	هَپٗ عَلِيْ حَيْدَرِ	hapo ʿalii ḥaydari	hapo alii haydari	
958	238	240	b	نٖنٗ أَلِلٗفَسِرِ	neno alilofasiri	neno alilofasiri	
959	238	240	c	أُوِنْڠَ أُنَ خَطَرِ	uwinga una khaṭari	uwinga una hatari	
960	238	240	d	مَمْبٗ يَكِتُمِلِيَ	mambo yakitumiliya	mambo yakitumiliya	
961	239	241	a	كْوٖنُ كُئِيٖ مْڠٖنِ	kwenu kuiye mgeni	kwenu kuiye mgeni	
962	239	241	b	هِلٗ هُكُؤُذِيَنِ	hilo hukuudhiyani	hilo hukuudhiyani	
963	239	241	c	تَمُوٖكَ هُكُ نْيُمْبَنِ	tamuweka huku nyumbani	tamuweka huku nyumbani	
964	239	241	d	مُئِنِ هَتٗتٖمْبٖيَ	muini hatotembeya	muini hatotembeya	
965	240	242	a	فَتُمَ أَكَنُطُمُ	fatuma akanuṭumu	fatuma akanutumu	
966	240	242	b	كْوَنِ سِ مْوَنَ حَرَمُ	kwani si mwana ḥaramu	kwani si mwana haramu	
967	240	242	c	مْوَنَ هَنَ تَبَسَمُ	mwana hana tabasamu	mwana hana tabasamu	
968	240	242	d	عَلِيْ كِمْوَنْڠَلِيَ	ʿalii kimwangaliya	alii kimwangaliya	
969	241	243	a	عَلِيْ هَپٗ كَسٖمَ	ʿalii hapo kasema	alii hapo kasema	
970	241	243	b	هٖلَ نْدٗوْ فَطُمَ	hela ndoo faṭuma	hela ndoo fatuma	
971	241	243	c	أَكَئِنُكَ كْوَ هِمَ	akainuka kwa hima	akainuka kwa hima	
972	241	243	d	مْكٖوٖ كَمُئٖنْدٖيَ	mkewe kamuendeya	mkewe kamuendeya	
973	242	244	a	أَكَمُؤُزَ أُنَنِ	akamuuza unani	akamuuza unani	
974	242	244	b	مْبٗنَ أُنَ كِسِرَنِ	mbona una kisirani	mbona una kisirani	
975	242	244	c	فَتُمَ أَكَمْبَ كُنِ	fatuma akamba kuni	fatuma akamba kuni	
976	242	244	d	يَ مَتُنْڠُ هُكْوَمْبِيَ	ya matungu hukwambiya	ya matungu hukwambiya	
977	243	245	a	أَكَمْجِبُ تَمْكٗ	akamjibu tamko	akamjibu tamko	
978	243	245	b	هِيٗ سِ طَبِيَ يَكٗ	hiyo si ṭabiya yako	hiyo si tabiya yako	
979	243	245	c	مِمِ سِ كِجَنَ چَكٗ	mimi si kijana chako	mimi si kijana chako	
980	243	245	d	أَمْبَ هَيٗ هُنَمْبِيَ	amba hayo hunambiya	amba hayo hunambiya	
981	244	246	a	فَتُمَ أَكَبَئِنِ	fatuma akabaini	fatuma akabaini	
982	244	246	b	سِ إِلٖ پٖٹٖ چَنْدَنِ	si ile peţe chandani	si ile pete chandani	
983	244	246	c	يَلٗنْڠِيَ كِسِمَنِ	yalongiya kisimani	yalongiya kisimani	
984	244	246	d	آٹِ زِيَپٗ هُٹِيَ	ãţi ziyapo huţiya	ati ziyapo hutiya	
985	245	247	a	عَلِيْ أَكَمْبَ هَكِكَ	ʿalii akamba hakika	alii akamba hakika	
986	245	247	b	نْدِپٗ أُكَكَسِرِكَ	ndipo ukakasirika	ndipo ukakasirika	
987	245	247	c	پَلٖ أُنْڠٖلِؤُذِكَ	pale ungeliudhika	pale ungeliudhika	
988	245	247	d	كَمَ كِلٖ نَكْوَمْبِيَ	kama kile nakwambiya	kama kile nakwambiya	
989	246	248	a	نَ سَسَ نٖنْڠٖكُؤُذِ	na sasa nengekuudhi	na sasa nengekuudhi	
990	246	248	b	نْدُڠُ يَنْڠُ وَتَ غَرَضِ	ndugu yangu wata gharaḍi	ndugu yangu wata gharadhi	
991	246	248	c	مٗيٗ وَكٖ أُوٖ رَضِ	moyo wake uwe raḍi	moyo wake uwe radhi	
992	246	248	d	نَ أُتَكَلٗ نَمْبِيَ	na utakalo nambiya	na utakalo nambiya	
993	247	249	a	فَتُمَ كٖٹَ قَوْلِ	fatuma keţa qawli	fatuma keta qauli	
994	247	249	b	كِٹُ سِ يَ كُلَ دَلِيْلِ	kiţu si ya kula dalı̄li	kitu si ya kula dalili	
995	247	249	c	أُوَپٗ أُمٖكُبَلِ	uwapo umekubali	uwapo umekubali	
996	247	249	d	رَضِ نِمٖكْوٖلٖيَ	raḍi nimekweleya	radhi nimekweleya	
997	248	250	a	وَكَكٖتِ كْوَ لِسَنِ	wakaketi kwa lisani	wakaketi kwa lisani	
998	248	250	b	يٖيٖ نَ مْوَنَ نْيُمْبَنِ	yeye na mwana nyumbani	yeye na mwana nyumbani	
999	248	250	c	نَوٖ نٖنْدَپٗ زِٹَنِ	nawe nendapo ziţani	nawe nendapo zitani	
1000	248	250	d	وَچٖنْدَ وٗتٖ پَمٗيَ	wachenda wote pamoya	wachenda wote pamoya	
1001	249	251	a	جَعْفَرِ نِ مْڠٖنِ	jaʿfari ni mgeni	jafari ni mgeni	
1002	249	251	b	هَيَزٗوٖيَ زِٹَنِ	hayazoweya ziţani	hayazoweya zitani	
1003	249	251	c	مَهَلَ پَ مَيْتِنِ	mahala pa maytini	mahala pa maytini	
1004	249	251	d	عَلِيْ أَكِمْوٖنْدٖلٖيَ	ʿalii akimwendeleya	alii akimwendeleya	
1005	250	252	a	هَتَ أَكِتِمُ مْوَكَ	hata akitimu mwaka	hata akitimu mwaka	
1006	250	252	b	زِٹَنِ أَمٖصِفِكَ	ziţani ameṣifika	zitani amesifika	
1007	250	252	c	سَبَا مِيَ هَكِكَ	sabā miya hakika	saba miya hakika	
1008	250	252	d	هُتِنْدَ أَسِپٗيُوَ	hutinda asipoyuwa	hutinda asipoyuwa	
1009	251	253	a	هَتَ مْوَكَ أُكِزِدِ	hata mwaka ukizidi	hata mwaka ukizidi	
1010	251	253	b	هَپٗ أَكٖنْدَ جِهَدِ	hapo akenda jihadi	hapo akenda jihadi	
1011	251	253	c	لَكِ مٗيَ مَيَهُدِ	laki moya mayahudi	laki moya mayahudi	
1012	251	253	d	هَكُنَ هَتَ مْمٗيَ	hakuna hata mmoya	hakuna hata mmoya	
1013	252	254	a	أَلِپٗكُيَ مُئِنِ	alipokuya muini	alipokuya muini	
1014	252	254	b	عَلِيْ أَكَبَئِنِ	ʿalii akabaini	alii akabaini	
1015	252	254	c	أَكَمْوَمْبِيَ أَمِنِ	akamwambiya amini	akamwambiya amini	
1016	252	254	d	نِنَ يَمْبٗ تَكْوَمْبِيَ	nina yambo takwambiya	nina yambo takwambiya	
1017	253	255	a	نَپٖنْدَ سَسَ بَشِرِ	napenda sasa bashiri	napenda sasa bashiri	
1018	253	255	b	إٖنْدٖ پْوٖكٖ جَعْفَرِ	ende pweke jaʿfari	ende pweke jafari	
1019	253	255	c	أَكَپِجٖ مَكُفَرِ	akapije makufari	akapije makufari	
1020	253	255	d	هُتٗشَ كِمْوَنْڠَلِيَ	hutosha kimwangaliya	hutosha kimwangaliya	
1021	254	256	a	أَكَشُكَ جِبْرِيْلِ	akashuka jibrı̄li	akashuka jibrili	
1022	254	256	b	أَكَمْوَمْبِيَ رَسُوْلِ	akamwambiya rasūli	akamwambiya rasuli	
1023	254	256	c	هَوٖكِ سِمْبَ وَوِلِ	haweki simba wawili	haweki simba wawili	
1024	254	256	d	أَكُسَلِمُ نَبِيَ	akusalimu nabiya	akusalimu nabiya	
1025	255	257	a	أَكَتَمْكَ أَمِيْنِ	akatamka amı̄ni	akatamka amini	
1026	255	257	b	عَلِيْ ٹْوٖنْدٖ نْيُمْبَنِ	ʿalii ţwende nyumbani	alii twende nyumbani	
1027	255	257	c	مْوَنٗ هُيٗ يَقِيْنِ	mwano huyo yaqı̄ni	mwano huyo yaqini	
1028	255	257	d	هُئِفَرِكِ دُنِيَ	huifariki duniya	huifariki duniya	
1029	256	258	a	چَمْبِوَ هِيٗ قَوْلِ	chambiwa hiyo qawli	chambiwa hiyo qauli	
1030	256	258	b	هَپٗ أَسِيَمُهَلِ	hapo asiyamuhali	hapo asiyamuhali	
1031	256	258	c	كَئِنُكَ نَ رَسُوْلِ	kainuka na rasūli	kainuka na rasuli	
1032	256	258	d	هَپٗ وَكَنْدَمَ نْدِيَ	hapo wakandama ndiya	hapo wakandama ndiya	
1033	257	259	a	أَكِپَٹَ مْلَنْڠٗنِ	akipaţa mlangoni	akipata mlangoni	
1034	257	259	b	فَتُمَ أَكَبَئِنِ	fatuma akabaini	fatuma akabaini	
1035	257	259	c	أَلِهُتٗكَ حَسَنِ	alihutoka ḥasani	alihutoka hasani	
1036	257	259	d	أُيَاءٗ كُكْوَنْدَمِيَ	uyao kukwandamiya	uyao kukwandamiya	
1037	258	260	a	مْوَنٗ أَلِپٗ كِٹِنِ	mwano alipo kiţini	mwano alipo kitini	
1038	258	260	b	نَ حَسَنِ نَ حُسَيْنِ	na ḥasani na ḥusayni	na hasani na husayni	
1039	258	260	c	غَفُلَ أَكَبَئِنِ	ghafula akabaini	ghafula akabaini	
1040	258	260	d	بَبَنْڠُ نَمْكُلِيَ	babangu namkuliya	babangu namkuliya	
1041	259	261	a	أَمٖئِنُكَ كِٹِنِ	ameinuka kiţini	ameinuka kitini	
1042	259	261	b	أَمٖپَنْدَ فِرَشَنِ	amepanda firashani	amepanda firashani	
1043	259	261	c	نَاءٖ مْوَنْڠَلِيِنِ	nae mwangaliyini	nae mwangaliyini	
1044	259	261	d	يَمْبٗ لَلٗمْزِدِيَ	yambo lalomzidiya	yambo lalomzidiya	
1045	260	262	a	هَپٗ أَكٖنْدَ بَشِيْرِ	hapo akenda bashı̄ri	hapo akenda bashiri	
1046	260	262	b	نَ عَلِىْ حَىْدَرِ	na ʿalii ḥaydari	na alii haydari	
1047	260	262	c	كِمْوٗنَ جَعْفَرِ	kimwona jaʿfari	kimwona jafari	
1048	260	262	d	هَپٗ بَبَكٖ كَلِيَ	hapo babake kaliya	hapo babake kaliya	
1049	261	263	a	أَكَلِيَ كِبَنِ	akaliya kibani	akaliya kibani	
1050	261	263	b	إٖوٖ مْوَنَنْڠُ أُنَنِ	ewe mwanangu unani	ewe mwanangu unani	
1051	261	263	c	أُپٖٹْوٖ نِ يَمْبٗ ڠَنِ	upeţwe ni yambo gani	upetwe ni yambo gani	
1052	261	263	d	كَٹِكَ كْوَنْدَم نْدِيَ	kaţika kwandam ndiya	katika kwandam ndiya	
1053	262	264	a	أَكِسِكِيَ كَلِمَ	akisikiya kalima	akisikiya kalima	
1054	262	264	b	جَعْفَرِ كَفَهَمَ	jaʿfari kafahama	jafari kafahama	
1055	262	264	c	كْوَ ضَرُبُ كَٹِزَمَ	kwa ḍarubu kaţizama	kwa dharubu katizama	
1056	262	264	d	مَتٗ أَكَمْوَنْڠَلِيَ	mato akamwangaliya	mato akamwangaliya	
1057	263	265	a	كِمْوَنْڠَلِيَ أَمِيْنِ	kimwangaliya amı̄ni	kimwangaliya amini	
1058	263	265	b	أَكَمْبَ نِپَ يَسِنِ	akamba nipa yasini	akamba nipa yasini	
1059	263	265	c	أَكِكٗمَ كُبَئِنِ	akikoma kubaini	akikoma kubaini	
1060	263	265	d	أَمٖكْوِشَ كُئِفِيَ	amekwisha kuifiya	amekwisha kuifiya	
1061	264	266	a	هَپٗ عَلِيْ حَيْدَرِ	hapo ʿalii ḥaydari	hapo alii haydari	
1062	264	266	b	يٗتٖ أَسِيَفِكِرِ	yote asiyafikiri	yote asiyafikiri	
1063	264	266	c	أَكَسِمَمَ بَشِيْرِ	akasimama bashı̄ri	akasimama bashiri	
1064	264	266	d	مَصَحَبَ كَوَمْبِيَ	maṣaḥaba kawambiya	masahaba kawambiya	
1065	265	267	a	كَوَمْبِيَ كِپُلِكَ	kawambiya kipulika	kawambiya kipulika	
1066	265	267	b	نَ جَمِيْعِ وَكَتٗكَ	na jamı̄ʿi wakatoka	na jamii wakatoka	
1067	265	267	c	هَيَ وَكِشَ كُزِكَ	haya wakisha kuzika	haya wakisha kuzika	
1068	265	267	d	عَلِيْ أَسِپٗيُوَ	ʿalii asipoyuwa	alii asipoyuwa	
1069	266	268	a	أَلِپٗكْوِشَ كُزِكَ	alipokwisha kuzika	alipokwisha kuzika	
1070	266	268	b	مْٹُمِ أَكَمُوٖكَ	mţumi akamuweka	mtumi akamuweka	
1071	266	268	c	مَنٖنٗ أَكَتَمْكَ	maneno akatamka	maneno akatamka	
1072	266	268	d	عَلِيْ أَكَمْوَمْبِيَ	ʿalii akamwambiya	alii akamwambiya	
1073	267	269	a	كَمْوَمْبِيَ كِپُلِكَ	kamwambiya kipulika	kamwambiya kipulika	
1074	267	269	b	صُبِرِ كْوَكٖ رَبُك	ṣubiri kwake rabuk	subiri kwake rabuk	
1075	267	269	c	مْٹُ هَنْڠَلِكُپٗكَ	mţu hangalikupoka	mtu hangalikupoka	
1076	267	269	d	نَوٖ أُكَمْوَنْڠَلِيَ	nawe ukamwangaliya	nawe ukamwangaliya	
1077	268	270	a	وَ أَمَّا نِ مْٹُ ڠَنِ	wa ammā ni mţu gani	wa amma ni mtu gani	
1078	268	270	b	أَدُمُوٗ دُنِيَنِ	adumuwo duniyani	adumuwo duniyani	
1079	268	270	c	إِسِپٗكُوَ مَنَّانِ	isipokuwa mannāni	isipokuwa mannani	
1080	268	270	d	نَوٖ وَيَفَهَمِيَ	nawe wayafahamiya	nawe wayafahamiya	
1081	269	271	a	عَلِيْ سٖنٖنْدٖ مْنٗ	ʿalii senende mno	alii senende mno	
1082	269	271	b	مَمْبٗ هُپِجْوَ مْفَنٗ	mambo hupijwa mfano	mambo hupijwa mfano	
1083	269	271	c	كَپٖوَ هَيٗ مَنٖنٗ	kapewa hayo maneno	kapewa hayo maneno	
1084	269	271	d	عَقِلِ إِكَمْنْڠِيَ	ʿaqili ikamngiya	aqili ikamngiya	
1085	270	272	a	هَپٗ أَكِشَ كُتٗوَ	hapo akisha kutowa	hapo akisha kutowa	
1086	270	272	b	زُبَيْرِ كَمْوَمْكُوَ	zubayri kamwamkuwa	zubayri kamwamkuwa	
1087	270	272	c	تَكُپَ زَنْڠُ بَرُوَ	takupa zangu baruwa	takupa zangu baruwa	
1088	270	272	d	أُپَٹٖ كُنِپٖكٖيَ	upaţe kunipekeya	upate kunipekeya	
1089	271	273	a	هِيْ مٗيَ نْدَ مَمَكٖ	hii moya nda mamake	hii moya nda mamake	
1090	271	273	b	مٗيَ نْدَ مْوَلِمُ وَكٖ	moya nda mwalimu wake	moya nda mwalimu wake	
1091	271	273	c	نَ أُچٖنْدَ سِتَمْكٖ	na uchenda sitamke	na uchenda sitamke	
1092	271	273	d	نٖنٗ مٗيَ كُوَمْبِيَ	neno moya kuwambiya	neno moya kuwambiya	
1093	272	274	a	زُبَيْرِ أَسِجِلِسِ	zubayri asijilisi	zubayri asijilisi	
1094	272	274	b	كَپٗكٖيَ كَرَتَسِ	kapokeya karatasi	kapokeya karatasi	
1095	272	274	c	كَنٖنْدَ نَزٗ أُپٖسِ	kanenda nazo upesi	kanenda nazo upesi	
1096	272	274	d	كَمْپٖكٖيَ عَطِيَ	kampekeya ʿaṭiya	kampekeya atiya	
1097	273	275	a	بَرُوَ كُمْپَ كْوَكٖ	baruwa kumpa kwake	baruwa kumpa kwake	
1098	273	275	b	كِشَ زُبٖىْرِ أَتٗكٖ	kisha zubēri atoke	kisha zuberi atoke	
1099	273	275	c	إِلٖ يَ مْوَلِمُ وَكٖ	ile ya mwalimu wake	ile ya mwalimu wake	
1100	273	275	d	كٖنٖنْدَ كُمْپٖكٖيَ	kenenda kumpekeya	kenenda kumpekeya	
1101	274	276	a	زُبَىْرِ كُتٗكَ كْوَكٖ	zubayri kutoka kwake	zubayri kutoka kwake	
1102	274	276	b	يٖيٖ أَسٗمٖ مَمَكٖ	yeye asome mamake	yeye asome mamake	
1103	274	276	c	أَكَتٗكَ پْوٖكٖ يَكٖ	akatoka pweke yake	akatoka pweke yake	
1104	274	276	d	مْٹُ أَسِپٗزٖنْڠٖيَ	mţu asipozengeya	mtu asipozengeya	
1105	275	277	a	نَاءٖ أَكِيَنُظُمُ	nae akiyanuẓumu	nae akiyanudhumu	
1106	275	277	b	يُوَ لِمٗ هُسَلِمُ	yuwa limo husalimu	yuwa limo husalimu	
1107	275	277	c	وَلَ أَسِپٗفَهَمُ	wala asipofahamu	wala asipofahamu	
1108	275	277	d	أُسِكُ هُمْنْڠِلِيَ	usiku humngiliya	usiku humngiliya	
1109	276	278	a	نَ هُكٗ نْيُمَ زُبٖيْرِ	na huko nyuma zubēri	na huko nyuma zuberi	
1110	276	278	b	أَسِپَٹٖ تَقْصِيْرِ	asipaţe taqṣı̄ri	asipate taqsiri	
1111	276	278	c	كِلَ نْيُمَ كِعَبِرِ	kila nyuma kiʿabiri	kila nyuma kiabiri	
1112	276	278	d	كِمْزٖنْڠٖيَ عَطِيَ	kimzengeya ʿaṭiya	kimzengeya atiya	
1113	277	279	a	هَتَ نْدِيَ كِفُوَٹَ	hata ndiya kifuwaţa	hata ndiya kifuwata	
1114	277	279	b	كِنٖنْدَ كِتٗمْكُٹَ	kinenda kitomkuţa	kinenda kitomkuta	
1115	277	279	c	نْيُمْبَ يَ كْوَنْدَ كِپَٹَ	nyumba ya kwanda kipaţa	nyumba ya kwanda kipata	
1116	277	279	d	مْلَنْڠٗنِ أَكِنْڠِيَ	mlangoni akingiya	mlangoni akingiya	
1117	278	280	a	حَمْزَة أَكَفَسِرِ	ḥamzaẗ akafasiri	hamzat akafasiri	
1118	278	280	b	نَ مَوْلَانَا عُمَرِ	na mawlānā ʿumari	na maulana umari	
1119	278	280	c	هِنِ نِ أَلْفَجِرِ	hini ni alfajiri	hini ni alfajiri	
1120	278	280	d	صَلَ إِمٖسِمَمِيَ	ṣala imesimamiya	sala imesimamiya	
1121	279	281	a	مْوَنَمْكٖ كَتَمْكَ	mwanamke katamka	mwanamke katamka	
1122	279	281	b	كَنٖنَ نْدِمِ أَتْوِكَ	kanena ndimi atwika	kanena ndimi atwika	
1123	279	281	c	چَمْبَ مْتَنِپِلٖكَ	chamba mtanipileka	chamba mtanipileka	
1124	279	281	d	كْوَ مَوْلَانَا عَلِيَ	kwa mawlānā ʿaliya	kwa maulana aliya	
1125	280	282	a	نْدِيَ نِمٖعَبِرِ	ndiya nimeʿabiri	ndiya nimeabiri	
1126	280	282	b	نْيُمْبَ سِكُئِفَسِرِ	nyumba sikuifasiri	nyumba sikuifasiri	
1127	280	282	c	نْدِمِ أُمِ جَعْفَرِ	ndimi umi jaʿfari	ndimi umi jafari	
1128	280	282	d	كَمَ هَيَ يَوٖلٖيَ	kama haya yaweleya	kama haya yaweleya	
1129	281	283	a	هَپٗ حَمْزَ كَتٗكَ	hapo ḥamza katoka	hapo hamza katoka	
1130	281	283	b	كْوَ أُپٖسِ نَ هَرَكَ	kwa upesi na haraka	kwa upesi na haraka	
1131	281	283	c	مْلَنْڠٗ أَكَؤُشِكَ	mlango akaushika	mlango akaushika	
1132	281	283	d	إِلِ كُمْفُنْڠُلِيَ	ili kumfunguliya	ili kumfunguliya	
1133	282	284	a	نْدٖ كِتٗكَ كَٹِكَ هٖمَ	nde kitoka kaţika hema	nde kitoka katika hema	
1134	282	284	b	هَپٗ نْدِيَ هَيَنْدَمَ	hapo ndiya hayandama	hapo ndiya hayandama	
1135	282	284	c	كْوَ عَلِيْ أَكِكٗمَ	kwa ʿalii akikoma	kwa alii akikoma	
1136	282	284	d	مْلَنْڠٗ كِمْبِشِيَ	mlango kimbishiya	mlango kimbishiya	
1137	283	285	a	كِنٖنَ أَكِمَلِزَ	kinena akimaliza	kinena akimaliza	
1138	283	285	b	عَلِيْ نْدِمِ حَمْزَ	ʿalii ndimi ḥamza	alii ndimi hamza	
1139	283	285	c	مْڠٖنِ هُكُؤُلِزَ	mgeni hukuuliza	mgeni hukuuliza	
1140	283	285	d	هَپٗ كَتٗكَ عَلِيَ	hapo katoka ʿaliya	hapo katoka aliya	
1141	284	286	a	يٖيٖ يُپٗ مْلَنْڠٗنِ	yeye yupo mlangoni	yeye yupo mlangoni	
1142	284	286	b	هُلِيَ أَكِبَئِنِ	huliya akibaini	huliya akibaini	
1143	284	286	c	قَبُرِنِ نِپٖكَنِ	qaburini nipekani	qaburini nipekani	
1144	284	286	d	نَپٖنْدَ كُيَنْڠَلِيَ	napenda kuyangaliya	napenda kuyangaliya	
1145	285	287	a	هَپٗ عَلِيْ كَتٗكَ	hapo ʿalii katoka	hapo alii katoka	
1146	285	287	b	مَتٗزِ يَكِمْشُكَ	matozi yakimshuka	matozi yakimshuka	
1147	285	287	c	هَتَ نْدٖ كَتَمْكَ	hata nde katamka	hata nde katamka	
1148	285	287	d	مَنٖنٗ أَكَمْوَمْبِيَ	maneno akamwambiya	maneno akamwambiya	
1149	286	288	a	كَمْوَمْبِيَ كِنُظُمُ	kamwambiya kinuẓumu	kamwambiya kinudhumu	
1150	286	288	b	سٖنْدٖلٖيْ إِسِلَامُ	sendelee isilāmu	sendelee isilamu	
1151	286	288	c	صُبِرِ كْوَكٖ كَرِيْمُ	ṣubiri kwake karı̄mu	subiri kwake karimu	
1152	286	288	d	أَمْبَيٗ أَكُلٖٹٖيَ	ambayo akuleţeya	ambayo akuleteya	
1153	287	289	a	مِمِ هُىُ نِ مَمَكٖ	mimi huyu ni mamake	mimi huyu ni mamake	
1154	287	289	b	نْدِيٖ مْوٖنْي كِٹِ چَكٖ	ndiye mwenı̄ kiţi chake	ndiye mweni kiti chake	
1155	287	289	c	نِؤٗنْيَ قَبُرِ يَكٖ	nionya qaburi yake	nionya qaburi yake	
1156	287	289	d	نَتَكَ كُيَنْڠَلِيَ	nataka kuyangaliya	nataka kuyangaliya	
1157	288	290	a	يٗوَ مْوٖنْيٖ مَمْلَكَه	yowa mwenye mamlakah	yowa mwenye mamlakah	
1158	288	290	b	لَكٖ هٗنْدٗوَ كِوٖكَ	lake hondowa kiweka	lake hondowa kiweka	
1159	288	290	c	وَلَ مِمِ سِكُتَكَ	wala mimi sikutaka	wala mimi sikutaka	
1160	288	290	d	أَئِفَرِكِ دُنِيَ	aifariki duniya	aifariki duniya	
1161	289	291	a	نَوٖ صُبِرِ نْدُيَنْڠُ	nawe ṣubiri nduyangu	nawe subiri nduyangu	
1162	289	291	b	أُسِپٗتٖيْ كْوَ مْنْڠُ	usipotee kwa mngu	usipotee kwa mngu	
1163	289	291	c	وَلَ هُتٗكٗسَ فُنْڠُ	wala hutokosa fungu	wala hutokosa fungu	
1164	289	291	d	لَ أَخٖرَ نَ دُنِيَ	la akhera na duniya	la ahera na duniya	
1165	290	292	a	هُمُؤٗوَ كِپُلِكَ	humuowa kipulika	humuowa kipulika	
1166	290	292	b	مَتٗزِ يَكِمْشُكَ	matozi yakimshuka	matozi yakimshuka	
1167	290	292	c	هَپٗ كَشُكَ عَطِكَ	hapo kashuka ʿaṭika	hapo kashuka atika	
1168	290	292	d	أَكَتَمْكَ عَلِيَ	akatamka ʿaliya	akatamka aliya	
1169	291	293	a	هَپٗ عَلِيْ حَيْدَرِ	hapo ʿalii ḥaydari	hapo alii haydari	
1170	291	293	b	بَسِ نَاءٖ كَفَسِرِ	basi nae kafasiri	basi nae kafasiri	
1171	291	293	c	مْبٗنَ هَكُيَ زُبٖيْرِ	mbona hakuya zubēri	mbona hakuya zuberi	
1172	291	293	d	أُيِيٖ پْوٖكٖ عَلِيَ	uyiye pweke ʿaliya	uyiye pweke aliya	
1173	292	294	a	أُنِئٖٹٖيْ بَرُوَ	unieţee baruwa	unietee baruwa	
1174	292	294	b	كَٹِكَ كُئِفُنْڠُوَ	kaţika kuifunguwa	katika kuifunguwa	
1175	292	294	c	أَلِپٗ سِكُمُيُوَ	alipo sikumuyuwa	alipo sikumuyuwa	
1176	292	294	d	وَلَ سِكُمْزٖنْڠٖيَ	wala sikumzengeya	wala sikumzengeya	
1177	293	295	a	بَرُوَ كِئِفَسِرِ	baruwa kiifasiri	baruwa kiifasiri	
1178	293	295	b	نْدِيَ نَلِئِعَبِرِ	ndiya naliiʿabiri	ndiya naliiabiri	
1179	293	295	c	هَنْدَ سَسَ كُفِكِرِ	handa sasa kufikiri	handa sasa kufikiri	
1180	293	295	d	تَنَبُهِ كُنِنْڠِيَ	tanabuhi kuningiya	tanabuhi kuningiya	
1181	294	296	a	فَطِمَ كَمْكَلِمُ	faṭima kamkalimu	fatima kamkalimu	
1182	294	296	b	أَكَمْپَ مَجِ تَمُ	akampa maji tamu	akampa maji tamu	
1183	294	296	c	دُعَ سَبَا تِمَمُ	duʿa sabā timamu	dua saba timamu	
1184	294	296	d	نْدَنِ أَلِيَسٗمٖيَ	ndani aliyasomeya	ndani aliyasomeya	
1185	295	297	a	أَكَمْجِبُ كَلِمَ	akamjibu kalima	akamjibu kalima	
1186	295	297	b	سِيَوٖزِ يَ فَتُمَ	siyawezi ya fatuma	siyawezi ya fatuma	
1187	295	297	c	مٗيٗ نِنَ هَلِمَمَ	moyo nina halimama	moyo nina halimama	
1188	295	297	d	رُوْحُ يَتَكَ كُلِيَ	rūḥu yataka kuliya	ruhu yataka kuliya	
1189	296	298	a	صُبِرِ كْوَ بْوَنَ وٖٹُ	ṣubiri kwa bwana weţu	subiri kwa bwana wetu	
1190	296	298	b	عَطِكَ مَاءِ سِ كِٹُ	ʿaṭika mai si kiţu	atika mai si kitu	
1191	296	298	c	پِجَ مَٹَمَ مَٹَٹُ	pija maţama maţaţu	pija matama matatu	
1192	296	298	d	يَبَكِيٖؤٗ تَٹُوَ	yabakiyeo taţuwa	yabakiyeo tatuwa	
1193	297	299	a	مَاءِ أَسِپٗيَتَكَ	mai asipoyataka	mai asipoyataka	
1194	297	299	b	مِيٗمٗنِ كَيَپٖكَ	miyomoni kayapeka	miyomoni kayapeka	
1195	297	299	c	أَكَٹُمْوَ نَ عَطِكَ	akaţumwa na ʿaṭika	akatumwa na atika	
1196	297	299	d	فَتُمَ كَمْپٗكٖيَ	fatuma kampokeya	fatuma kampokeya	
1197	298	300	a	هَپٗ كَمْكَلِفِشَ	hapo kamkalifisha	hapo kamkalifisha	
1198	298	300	b	وَعَظِ كُمُؤٗنٖشَ	waʿaẓi kumuonesha	waadhi kumuonesha	
1199	298	300	c	مَاءِ أَلِپٗيَشُشَ	mai alipoyashusha	mai alipoyashusha	
1200	298	300	d	مُنْڠُ أَكَمُؤٗمْبٖيَ	mungu akamuombeya	mungu akamuombeya	
1201	299	301	a	بَسِ هَپٗ أَمُؤُزٖ	basi hapo amuuze	basi hapo amuuze	
1202	299	301	b	زَ مْوَنَوٖ خَبَرِزٖ	za mwanawe khabarize	za mwanawe habarize	
1203	299	301	c	نَ عَلِيْ أَمْوٖلٖزٖ	na ʿalii amweleze	na alii amweleze	
1204	299	301	d	كِشَ أَكِلِيَ	kisha akiliya	kisha akiliya	
1205	300	302	a	هَتَ كُكِپَمْبَؤُكَ	hata kukipambauka	hata kukipambauka	
1206	300	302	b	فَتُمَ أَكَئِنُكَ	fatuma akainuka	fatuma akainuka	
1207	300	302	c	كَمْپِكِيَ عَطِكَ	kampikiya ʿaṭika	kampikiya atika	
1208	300	302	d	وَكَلَ وٗتٖ پَمٗيَ	wakala wote pamoya	wakala wote pamoya	
1209	301	303	a	عَطِكَ أَكَبَئِنِ	ʿaṭika akabaini	atika akabaini	
1210	301	303	b	سَسَ نَمِ كْوَ خٖرِنِ	sasa nami kwa kherini	sasa nami kwa herini	
1211	301	303	c	مْوَنَنْڠُ أُكٗ مُئِنِ	mwanangu uko muini	mwanangu uko muini	
1212	301	303	d	مْٹُ سِكُمُوَتِيَ	mţu sikumuwatiya	mtu sikumuwatiya	
1213	302	304	a	نَ فَتُمَ أَتَمْكٖ	na fatuma atamke	na fatuma atamke	
1214	302	304	b	أَمْوَمْبِيٖ مُمٖ وَكٖ	amwambiye mume wake	amwambiye mume wake	
1215	302	304	c	نَاوٖ نٖنْدَ كَمْپٖكٖ	nāwe nenda kampeke	nawe nenda kampeke	
1216	302	304	d	أَسٖنْدٖ پْوٖكٖ عَطِيَ	asende pweke ʿaṭiya	asende pweke atiya	
1217	303	305	a	عَلِيْ كَنْڠِيَ نْدَنِ	ʿalii kangiya ndani	alii kangiya ndani	
1218	303	305	b	كْوَ مْكٗنٗ كَبَئِنِ	kwa mkono kabaini	kwa mkono kabaini	
1219	303	305	c	أَكَئِنُكَ كِٹِنِ	akainuka kiţini	akainuka kitini	
1220	303	305	d	فَتُمَ أَكَمْوٖنْدٖيَ	fatuma akamwendeya	fatuma akamwendeya	
1221	304	306	a	كَمْبَ چٖنْدَ كِمْپٖكَ	kamba chenda kimpeka	kamba chenda kimpeka	
1222	304	306	b	فَتُمَ هُتٗؤُذِكَ	fatuma hutoudhika	fatuma hutoudhika	
1223	304	306	c	كْوَمْبَ وَٹُ هُتَمْكَ	kwamba waţu hutamka	kwamba watu hutamka	
1224	304	306	d	كَمَ هَيٗ كُنَمْبِيَ	kama hayo kunambiya	kama hayo kunambiya	
1225	305	307	a	كَنٖنَ شَهِدِ مْنْڠُ	kanena shahidi mngu	kanena shahidi mngu	
1226	305	307	b	هَيَمٗ مٗيٗنِ مْوَنڠُ	hayamo moyoni mwangu	hayamo moyoni mwangu	
1227	305	307	c	سَسَ نِ كَمَ نْدُيَنْڠُ	sasa ni kama nduyangu	sasa ni kama nduyangu	
1228	305	307	d	نَ قَاسِمُ نِ مَمٗيَ	na qāsimu ni mamoya	na qasimu ni mamoya	
1229	306	308	a	هَپٗ عَلِيْ كَتٗكَ	hapo ʿalii katoka	hapo alii katoka	
1230	306	308	b	كَنْدَمَنَ نَ عَطِكَ	kandamana na ʿaṭika	kandamana na atika	
1231	306	308	c	أَكٖنْدَ أَكَمْپٖكَ	akenda akampeka	akenda akampeka	
1232	306	308	d	هَتَ كْوَءٗ أَكَنْڠِيَ	hata kwao akangiya	hata kwao akangiya	
1233	307	309	a	هَپٗ عَلِيْ حَيْدَرِ	hapo ʿalii ḥaydari	hapo alii haydari	
1234	307	309	b	أَكَصَلِ أَظُهُرِ	akaṣali aẓuhuri	akasali adhuhuri	
1235	307	309	c	كَنْدَمَنَ نَ زُبٖيْرِ	kandamana na zubēri	kandamana na zuberi	
1236	307	309	d	مُئِنِ أَكَرٖجٖيَ 	muini akarejeya	muini akarejeya	
1237	308	310	a	نَ هَپٗ أَلِپٗرُدِ	na hapo aliporudi	na hapo aliporudi	
1238	308	310	b	نْدِپٗ أَلِپٗرَدِدِ	ndipo aliporadidi	ndipo aliporadidi	
1239	308	310	c	مَنٖنٗ كِجِتَهِدِ	maneno kijitahidi	maneno kijitahidi	
1240	308	310	d	مَصَحَبَ كِوَمْبِيَ	maṣaḥaba kiwambiya	masahaba kiwambiya	
1241	309	311	a	هَپَ نِمٖٹِيَ تَمَ	hapa nimeţiya tama	hapa nimetiya tama	
1242	309	311	b	بَيْتِ زَنْڠُ هُكٗمَ	bayti zangu hukoma	bayti zangu hukoma	
1243	309	311	c	نَ أَمْبَؤٗ وَتَسٗمَ	na ambao watasoma	na ambao watasoma	
1244	309	311	d	كْوَ زٗتٖ زِكَوٖلٖيَ	kwa zote zikaweleya	kwa zote zikaweleya	
1245	304	312	a	بَيْتِزٖ زِيُوٖنِ	baytize ziyuweni	baytize ziyuweni	
1246	304	312	b	مْٹُ أَكَزِبَئِنِ	mţu akazibaini	mtu akazibaini	
1247	304	312	c	أَصُبُحِ نَ جِيٗنِ	aṣubuḥi na jiyoni	asubuhi na jiyoni	
1248	304	312	d	مٗيٗ أُسٗپُنْڠُلِيَ	moyo usopunguliya	moyo usopunguliya	
1249	305	313	a	كْوَنْدَ هَتٗذَلِلِكَ	kwanda hatodhalilika	kwanda hatodhalilika	
1250	305	313	b	مْٹُيٖ هَتٗسُمْبُكَ	mţuye hatosumbuka	mtuye hatosumbuka	
1251	305	313	c	نَ أَتَكَلٗتَمْكَ	na atakalotamka	na atakalotamka	
1252	305	313	d	مٗلَ هُمُوَفِقِيَ	mola humuwafiqiya	mola humuwafiqiya	
1253	306	314	a	أَؤٗمْبَلٗ كْوَ وَهَابُ	aombalo kwa wahābu	aombalo kwa wahabu	
1254	306	314	b	أَتَجِبِوَ جَوَبُ	atajibiwa jawabu	atajibiwa jawabu	
1255	306	314	c	أَوْ مْٹُ نَجَرِبُ	aw mţu najaribu	au mtu najaribu	
1256	306	314	d	أَدَلِلِشٖ وَصِيَ	adalilishe waṣiya	adalilishe wasiya	
1257	307	315	a	نِمٖپٖنْدَ كُكَرِرِ	nimependa kukariri	nimependa kukariri	
1258	307	315	b	نَنْيِ سٗمَنِ ضَمِيْرِ	nanyi somani ḍamı̄ri	nanyi somani dhamiri	
1259	307	315	c	أُتٖنْدِ وَ جَعْفَرِ	utendi wa jaʿfari	utendi wa jafari	
1260	307	315	d	وَ مَوْلَانَا عَلِيَ	wa mawlānā ʿaliya	wa maulana aliya	
\.


--
-- Name: jaafari_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_poemline_id_seq', 1260, true);


--
-- Name: jaafari_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY jaafari
    ADD CONSTRAINT jaafari_pk PRIMARY KEY (poemline_id);


--
-- PostgreSQL database dump complete
--

