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
-- Name: jaafari_r; Type: TABLE; Schema: public; Owner: kevin; Tablespace: 
--

CREATE TABLE jaafari_r (
    poemline_id integer NOT NULL,
    msno integer,
    stanza integer,
    loc character varying(5),
    arabic text,
    close text,
    standard text,
    english text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.jaafari_r OWNER TO kevin;

--
-- Name: jaafari_r_poemline_id_seq; Type: SEQUENCE; Schema: public; Owner: kevin
--

CREATE SEQUENCE jaafari_r_poemline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jaafari_r_poemline_id_seq OWNER TO kevin;

--
-- Name: jaafari_r_poemline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kevin
--

ALTER SEQUENCE jaafari_r_poemline_id_seq OWNED BY jaafari_r.poemline_id;


--
-- Name: poemline_id; Type: DEFAULT; Schema: public; Owner: kevin
--

ALTER TABLE ONLY jaafari_r ALTER COLUMN poemline_id SET DEFAULT nextval('jaafari_r_poemline_id_seq'::regclass);


--
-- Data for Name: jaafari_r; Type: TABLE DATA; Schema: public; Owner: kevin
--

COPY jaafari_r (poemline_id, msno, stanza, loc, arabic, close, standard, english) FROM stdin;
1	1	1	a	بِسْمِلَهِ اَوَّلِ	bismilahi awwali	bismilahi auwali	
2	1	1	b	پْوِكِ اَسِيُ مِثَلِ	pwiki asiyu mithali	pwiki asiyu mithali	
3	1	1	c	بِنْڠُ نْجِمَ مْفَضِلِ	bingu njima mfaḍili	bingu njima mfadhili	
4	1	1	d	رِيُ اَلُتَنْرِكِوَ	riyu alutanrikiwa	riyu alutanrikiwa	
5	2	2	a	بِسْمِلَهِ اِخْوَانِ	bismilahi ikhwāni	bismilahi ihwani	
6	2	2	b	پَمِ نَأَرَاحَمَنِ	pami naarāḥamani	pami naarahamani	
7	2	2	c	نَأَرَاحِيْمِ يُوَانِ	naarāḥı̄mi yuwāni	naarahimi yuwani	
8	2	2	d	رِيُ يَلُتَغُلِىَ	riyu yalutaghuliya	riyu yalutaghuliya	
9	3	3	a	كَتِكَ سِكُ رُزَنْڠُ	katika siku ruzangu	katika siku ruzangu	
10	3	3	b	كْوِرَا مَتِنْبِزِ كْوَنْڠُ	kwirā matim̱bizi kwangu	kwira matimbizi kwangu	
11	3	3	c	نِوَاپِ خَبَارِ يَنْڠُ	niwāpi khabāri yangu	niwapi habari yangu	
12	3	3	d	كِصَ ػَلُ نِجِرِيَا	kiṣa kʲalu nijiriyā	kisa chalu nijiriya	
13	4	4	a	نَلِ نِرَاؤُ دِيَنِ	nali nirau diyani	nali nirau diyani	
14	4	4	b	كَأُنَ مْتُ نْيُمْبانِ	kauna mtu nyumbāni	kauna mtu nyumbani	
15	4	4	c	مُيُوِ اُكَتَمَنِ	muyuwi ukatamani	muyuwi ukatamani	
16	4	4	d	كْوَا حَلَلِا كَرِضِيَا	kwā ḥalalī kariḍiyā	kwa halali karidhiya	
17	5	5	a	نَمَهَرِيِ يُوَانِ	namahariyi yuwāni	namahariyi yuwani	
18	5	5	b	نَلُمْپَ زَيْدَانِ	nalumpa zaydāni	nalumpa zaydani	
19	5	5	c	نَلِنَ پِتِ ػَنْدَانِ	nalina piti kʲandāni	nalina piti chandani	
20	5	5	d	كَوَاحِ كُمُوَاتِيَا	kawāḥi kumuwātiyā	kawahi kumuwatiya	
21	6	6	a	عَلِى كِتُكَ كْوَاكِ	ʿalii kituka kwāki	alii kituka kwaki	
22	6	6	b	اُنَ رُبَ مُيُ وَاكِ	una ruba muyu wāki	una ruba muyu waki	
23	6	6	c	اَكِرَا كْوَ مْكِى وَاكِ	akirā kwa mkii wāki	akira kwa mkii waki	
24	6	6	d	مْكُنُ كَفُمْبَتِيَا	mkunu kafumbatiyā	mkunu kafumbatiya	
25	7	7	a	مْوَانَ بِنْتِ رَسُوْلِ	mwāna binti rasūli	mwana binti rasuli	
26	7	7	b	حَيُ اَسِتَعَمَلِ	ḥayu asitaʿamali	hayu asitaamali	
27	7	7	c	اَكِرَا مْوِنْيِ عَقِلِ	akirā mwinyi ʿaqili	akira mwinyi aqili	
28	7	7	d	خَبَارِ اَكَمْوَابِيَا	khabāri akamwābiyā	habari akamwabiya	
29	8	8	a	اَكِنِرَا اُغِيْزِيِ	akinirā ughı̄ziyi	akinira ughiziyi	
30	8	8	b	فَطِمَ نِكْوَابِيِ	faṭima nikwābiyi	fatima nikwabiyi	
31	8	8	c	عَلِيْ اُوْزِايِ	ʿalii ūziāyi	alii uziayi	
32	8	8	d	خَبَارِ هُيَسِكِيَا	khabāri huyasikiyā	habari huyasikiya	
33	9	9	a	اَكَفَنْيَّ مْشَوَاشَ	akafanı̄ya mshawāsha	akafanyaU+0651 mshawasha	
34	9	9	b	فَطِمَ اَكَمْكَنُشَا	faṭima akamkanushā	fatima akamkanusha	
35	9	9	c	اَلَمَ كَمُوُنِيْشَ	alama kamuwunı̄sha	alama kamuwunisha	
36	9	9	d	تَنَبُحِ كَمْتِيَا	tanabuḥi kamtiyā	tanabuhi kamtiya	
37	10	10	a	سِپَتٖ كْوَمْبَا نِكْوِلِ	sipate kwambā nikwili	sipate kwamba nikwili	
38	10	10	b	حُجَ سِكُتَعَمَلِ	ḥuja sikutaʿamali	huja sikutaamali	
39	10	10	c	اَرُدِپُ كْوَا رَسُوْلِ	arudipu kwā rasūli	arudipu kwa rasuli	
40	10	10	d	اِيُ تَمُوَاغَلِيْيَ	iyu tamuwāghalı̄ya	iyu tamuwaghaliya	
41	11	11	a	مْوَانَ بِنْتِ أمِيْنِ	mwāna binti mı̄ni	mwana binti mini	
42	11	11	b	حَيُ نْرِيُ تَمْكِنِ	ḥayu nriyu tamkini	hayu nriyu tamkini	
43	11	11	c	اَلِنَ پِتِ ػَنْدَانِ	alina piti kʲandāni	alina piti chandani	
44	11	11	d	كَوَاحِ كُمْڤُلِيَا	kawāḥi kumvuliyā	kawahi kumvuliya	
45	12	12	a	اَكَفَنْيَّا حَلِ مَمَ	akafanı̄yā ḥali mama	akafanyaU+0651a hali mama	
46	12	12	b	اَسِوِزِ فَطِيْمَ	asiwizi faṭı̄ma	asiwizi fatima	
47	12	12	c	حَسَنِ اَكَمْتُمَ	ḥasani akamtuma	hasani akamtuma	
48	12	12	d	بَبَكُ نَمْكُلِيَا	babaku namkuliyā	babaku namkuliya	
49	13	13	a	نَمْكُلِيَ كْوَا سِرِ	namkuliya kwā siri	namkuliya kwa siri	
50	13	13	b	اَسِكُيُوِا بَشِيْرِا	asikuyūī bashı̄rī	asikuyuwi bashiri	
51	13	13	c	اَػِنْرَا اَكَفَصِيْرِ	akʲinrā akafaṣı̄ri	achinra akafasiri	
52	13	13	d	مْبِيْ زَ تُمْوَا نَبِيَا	mbii za tumwā nabiyā	mbii za tumwa nabiya	
53	14	14	a	كَفَصِيْرِ مُعَيَنِ	kafaṣı̄ri muʿayani	kafasiri muayani	
54	14	14	b	حَمْكُلِوَا نْيُمْبَانِ	ḥamkuliwā nyumbāni	hamkuliwa nyumbani	
55	14	14	c	كُسِكِيَكْوِ اَمِيْنِ	kusikiyakwi amı̄ni	kusikiyakwi amini	
56	14	14	d	عَجَبُ اِكَمْڠِيْيَا	ʿajabu ikamgı̄yā	ajabu ikamgiya	
57	15	15	a	كَمُوُلِزَا هَشِيْمَ	kamuwulizā hashı̄ma	kamuwuliza hashima	
58	15	15	b	يِوُ اُنَنِ فَطِيْمَ	yiwu unani faṭı̄ma	yiwu unani fatima	
59	15	15	c	حُكْوَمْكُوَ كْوَا حِيْمَ	ḥukwamkuwa kwā ḥı̄ma	hukwamkuwa kwa hima	
60	15	15	d	نَيُ سِيُ مَزُوِيَا	nayu siyu mazuwiyā	nayu siyu mazuwiya	
61	16	16	a	عَلِيْ اَكَيْنُكَ	ʿalii akaynuka	alii akaynuka	
62	16	16	b	اَكِنِرَا كْوَ حَرَاكَ	akinirā kwa ḥarāka	akinira kwa haraka	
63	16	16	c	حَتَى نْيُمْبَانِ كِفِكَ	ḥatay nyumbāni kifika	hatay nyumbani kifika	
64	16	16	d	مْوَانَ فَطِيْمَ حُلِيَا	mwāna faṭı̄ma ḥuliyā	mwana fatima huliya	
65	17	17	a	عَلِيْ كَشَوِشِكَ	ʿalii kashawishika	alii kashawishika	
66	17	17	b	كْوَا رُحُمَ كَمْشِيْكَ	kwā ruḥuma kamshı̄ka	kwa ruhuma kamshika	
67	17	17	c	كْوَانْدَا فَطِيْمَ پُلِكَ	kwāndā faṭı̄ma pulika	kwanda fatima pulika	
68	17	17	d	اُلِلُ نَلُ نَمْبِيَا	ulilu nalu nambiyā	ulilu nalu nambiya	
69	18	18	a	اُنَ كِطَ حُكُؤُمَ	una kiṭa ḥukuuma	una kita hukuuma	
70	18	18	b	اَوْ وَاشِكْوَا نَحُمَ	aw wāshikwā naḥuma	au washikwa nahuma	
71	18	18	c	اَكَمْجِبُ فَطِيْمَ	akamjibu faṭı̄ma	akamjibu fatima	
72	18	18	d	كْوَا مَرَضِيْ سِكُلِيَا	kwā maraḍii sikuliyā	kwa maradhii sikuliya	
73	19	19	a	مِمِ حَپَ نِمْتُكَ	mimi ḥapa nimtuka	mimi hapa nimtuka	
74	19	19	b	وِوِ حُنِنَ هُتِيْكَ	wiwi ḥunina hutı̄ka	wiwi hunina hutika	
75	19	19	c	نَكَمَ كِتُ وَاتَكَ	nakama kitu wātaka	nakama kitu wataka	
76	19	19	d	اُسِخُفُ كُنَمْبِيَا	usikhufu kunambiyā	usihufu kunambiya	
77	20	20	a	وَتَكَ مْنِ رُيَنْڠُ	wataka mni ruyangu	wataka mni ruyangu	
78	20	20	b	كَثَمِيْنِ رُحُ يَنْڠُ	kathamı̄ni ruḥu yangu	kathamini ruhu yangu	
79	20	20	c	مُوْيُ اُپُوِ مَتُنْڠُ	mūyu upuwi matungu	muyu upuwi matungu	
80	20	20	d	نَوِ اُكُمِ كُلِيْيَا	nawi ukumi kulı̄yā	nawi ukumi kuliya	
81	21	21	a	فَطِيْمَ اَكَتَمْكَ	faṭı̄ma akatamka	fatima akatamka	
82	21	21	b	پِتِ يَكُ نَيْتَكَ	piti yaku naytaka	piti yaku naytaka	
83	21	21	c	عَلِيْ اَكَشُتُكَ	ʿalii akashutuka	alii akashutuka	
84	21	21	d	هُوَزَا نِكُوْمْوَبِيَا	huwazā nikūmwabiyā	huwaza nikumwabiya	
85	22	22	a	كِسَ عَلِيْ حَيْدَارِ	kisa ʿalii ḥaydāri	kisa alii haydari	
86	22	22	b	نِنُ اُلِلُا فَصِيْرِا	ninu ulilū faṣı̄rī	ninu ulilu fasiri	
87	22	22	c	اُنَيُ اَبُوْ بَكَرِ	unayu abuu bakari	unayu abuu bakari	
88	22	22	d	تَكْوِنْرَ كُكُتْوَلِيَا	takwinra kukutwaliyā	takwinra kukutwaliya	
89	23	23	a	پِتِ يَكُ يَػَنْدَانِ	piti yaku yakʲandāni	piti yaku yachandani	
90	23	23	b	بُوْ بَكَرِ سِكِفَنِ	buu bakari sikifani	buu bakari sikifani	
91	23	23	c	نِمِتَكَ تَمْكِنِ	nimitaka tamkini	nimitaka tamkini	
92	23	23	d	يِوُ عَلِي نَمْبِيَا	yiwu ʿalii nambiyā	yiwu alii nambiya	
93	24	24	a	هُوْنُ مْوِزِ نِوَا پِلِ	hūnu mwizi niwā pili	hunu mwizi niwa pili	
94	24	24	b	مِمِ سِكُتَعَمَلِ	mimi sikutaʿamali	mimi sikutaamali	
95	24	24	c	اُنَ نَمْكِيْ وَ پِيْلِ	una namkii wa pı̄li	una namkii wa pili	
96	24	24	d	خَبَارِ نِمْسِكِيَا	khabāri nimsikiyā	habari nimsikiya	
97	25	25	a	كَمْبَ وَاللَّهِ رُيَنْغُ	kamba wallahi ruyanghu	kamba wallahi ruyanghu	
98	25	25	b	نِوِ پْوِكِ مْكِ وَنْغُ	niwi pwiki mki wanghu	niwi pwiki mki wanghu	
99	25	25	c	نِنْيَّنِ عَدُوِ يَنْڠُ	ninı̄yani ʿaduwi yangu	niniyani aduwi yangu	
100	25	25	d	حِلَ مْتُيِ نَمْبِيَا	ḥila mtuyi nambiyā	hila mtuyi nambiya	
101	26	26	a	كَمْجِبُ كْوَا لِسَنِ	kamjibu kwā lisani	kamjibu kwa lisani	
102	26	26	b	مْتُيِ سِمْبَاءِنِ	mtuyi simbaini	mtuyi simbaini	
103	26	26	c	پِتِ يَكُ يَػَنْدَانِ	piti yaku yakʲandāni	piti yaku yachandani	
104	26	26	d	اُنِپَپٗ تَرِظيْيَا	unipapo tariẓı̄yā	unipapo taridhiya	
105	27	27	a	عَلِي اَكَبَيِيْنِ	ʿalii akabayı̄ni	alii akabayini	
106	27	27	b	نِكْوَمْبِيَ تَمْكِنِ	nikwambiya tamkini	nikwambiya tamkini	
107	27	27	c	يَلِغِيَ كِسِمَانِ	yalighiya kisimāni	yalighiya kisimani	
108	27	27	d	اَوُ مُوُزِ نَبِيَا	awu muwuzi nabiyā	awu muwuzi nabiya	
109	28	28	a	مُيَ نِنَ پِتِ يَكُ	muya nina piti yaku	muya nina piti yaku	
110	28	28	b	مَحَلِ اُيْوِتِيْكُ	maḥali uywitı̄ku	mahali uywitiku	
111	28	28	c	كَمَ هَيَ مَتَمْكُ	kama haya matamku	kama haya matamku	
112	28	28	d	بَبَغُ سِتُمُوَابِيَا	babaghu situmuwābiyā	babaghu situmuwabiya	
113	29	29	a	عَلِي اَكَوُضِيْكَ	ʿalii akawuḍı̄ka	alii akawudhika	
114	29	29	b	فَطِيْمَ كُكَصِيْرِكَ	faṭı̄ma kukaṣı̄rika	fatima kukasirika	
115	29	29	c	اَكَيْنُكَ اَكَتُكَ	akaynuka akatuka	akaynuka akatuka	
116	29	29	d	اَكِنِرَا كْوَا نَبِيَا	akinirā kwā nabiyā	akinira kwa nabiya	
117	30	30	a	كَمُوُلِزَا حَشِيْمَ	kamuwulizā ḥashı̄ma	kamuwuliza hashima	
118	30	30	b	وَلِوُ نَنِ فَطِيْمَ	waliwu nani faṭı̄ma	waliwu nani fatima	
119	30	30	c	عَلِيْ كَتَكَلَّمَ	ʿalii katakallama	alii katakallama	
120	30	30	d	مْتُمِ اَكَمْوَمْبِيَا	mtumi akamwambiyā	mtumi akamwambiya	
121	31	31	a	اَكَمْوَامْبِيَا شَرِفُ	akamwāmbiyā sharifu	akamwambiya sharifu	
122	31	31	b	فَطِيْمَ مِنِكَلِفُ	faṭı̄ma minikalifu	fatima minikalifu	
123	31	31	c	زِيَپُ زِنْيِ مَخُفُ	ziyapu zinyi makhufu	ziyapu zinyi mahufu	
124	31	31	d	زِنْڠِ نِمِمْتِلِيَا	zingi nimimtiliyā	zingi nimimtiliya	
125	32	32	a	يَكْوِلِيَوِ رَسُوْلِ	yakwiliyawi rasūli	yakwiliyawi rasuli	
126	32	32	b	نَمِ نَلِفَنْيَ كْوِلِ	nami nalifanya kwili	nami nalifanya kwili	
127	32	32	c	كُمْوَامْبِيَ سِحِمِلِ	kumwāmbiya siḥimili	kumwambiya sihimili	
128	32	32	d	خُفُ زِمِزُنِغِيَا	khufu zimizunighiyā	hufu zimizunighiya	
129	33	33	a	اِنِرَا وِوِ سَيّدِ	inirā wiwi sayı̄di	inira wiwi sayidi	
130	33	33	b	كَمُوُنْيِّ اَبُرُدِ	kamuwunı̄yi aburudi	kamuwuniyi aburudi	
131	33	33	c	كَيْنُكَا مُحَمَّدِا	kaynukā muḥammadī	kaynuka muhammadi	
132	33	33	d	حَپُ كَأَنْدَامَ نْدِيَا	ḥapu kaandāma ndiyā	hapu kaandama ndiya	
133	34	34	a	اَتِرَا حَيَ جِلِسِ	atirā ḥaya jilisi	atira haya jilisi	
134	34	34	b	اُسُ اُكَلِى نَكَسِ	usu ukalii nakasi	usu ukalii nakasi	
135	34	34	c	كَفَنْيَ كَمَ هَيْسِ	kafanya kama haysi	kafanya kama haysi	
136	34	34	d	مِكْوِنْرَ كُمْوَاڠَلِيَا	mikwinra kumwāgaliyā	mikwinra kumwagaliya	
137	35	35	a	كَمُوُلِزَا حَشِيْمَ	kamuwulizā ḥashı̄ma	kamuwuliza hashima	
138	35	35	b	وَلِوُ نَنِ فَطِيْمَ	waliwu nani faṭı̄ma	waliwu nani fatima	
139	35	35	c	حَسَانِ اُيْيِ حِمَ	ḥasāni uyyi ḥima	hasani uyyi hima	
140	35	35	d	عَلِى كُمْوَادَمِيَا	ʿalii kumwādamiyā	alii kumwadamiya	
141	36	36	a	فَطِيْمَ حَكُكَصِيْرِ	faṭı̄ma ḥakukaṣı̄ri	fatima hakukasiri	
142	36	36	b	اَكَمْوَامْبِيَ بَشِيْرِا	akamwāmbiya bashı̄rī	akamwambiya bashiri	
143	36	36	c	عَلِي زَاكِى خَبَارِ	ʿalii zākii khabāri	alii zakii habari	
144	36	36	d	يِوُ نِمِزِسِكِيَا	yiwu nimizisikiyā	yiwu nimizisikiya	
145	37	37	a	كَمُوُلِزَا اَمِيْنِ	kamuwulizā amı̄ni	kamuwuliza amini	
146	37	37	b	نِكَمَ خَبَارِ غَانِ	nikama khabāri ghāni	nikama habari ghani	
147	37	37	c	اُسِمْغُجِ نْيُمْبَانِ	usimghuji nyumbāni	usimghuji nyumbani	
148	37	37	d	اُكَيَ كُمْوَنْدَامِيَا	ukaya kumwandāmiyā	ukaya kumwandamiya	
149	38	38	a	اَكَنْيَّمَاَءَ فَطِيْمَ	akanı̄yamaaa faṭı̄ma	akaniyamaaa fatima	
150	38	38	b	اَكَمْتَ حَشِيْمَ	akamta ḥashı̄ma	akamta hashima	
151	38	38	c	اِلُوْمْتُكَ كَلِيْمَ	ilūmtuka kalı̄ma	ilumtuka kalima	
152	38	38	d	نَيَكْوِلِيِ نَبِيَا	nayakwiliyi nabiyā	nayakwiliyi nabiya	
153	39	39	a	يَوَاتِ وَابِزِوِوُ	yawāti wābiziwiwu	yawati wabiziwiwu	
154	39	39	b	مُسِتِتِ نَمُمِوُ	musititi namumiwu	musititi namumiwu	
155	39	39	c	اَكَرُدُفُ كِلِيْوُ	akarudufu kilı̄wu	akarudufu kiliwu	
156	39	39	d	فَطِيْمَ لِزَاهَرِيَا	faṭı̄ma lizāhariyā	fatima lizahariya	
157	40	40	a	اَكَمْبَ تِنَ مْوَانَغُ	akamba tina mwānaghu	akamba tina mwanaghu	
158	40	40	b	اُتَكَپُ رَضِ يَنْڠُ	utakapu raḍi yangu	utakapu radhi yangu	
159	40	40	c	نِهَيُ مَنِيْنُ يَغُ	nihayu manı̄nu yaghu	nihayu maninu yaghu	
160	40	40	d	يِوُ اُكَنِرِظِيْيَا	yiwu ukaniriẓı̄yā	yiwu ukaniridhiya	
161	41	41	a	كُوَمْبِوَاكْوِ فَطِيْمَ	kuwambiwākwi faṭı̄ma	kuwambiwakwi fatima	
162	41	41	b	يُتِ اَكَيَسُكُمَ	yuti akayasukuma	yuti akayasukuma	
163	41	41	c	كِسَ كَڤُتَ كَلِيْمَ	kisa kavuta kalı̄ma	kisa kavuta kalima	
164	41	41	d	بَبَكِ اَكَمْوَامْبِيَا	babaki akamwāmbiyā	babaki akamwambiya	
165	42	42	a	اَكَمْوَمْبِيَ بَبَڠُ	akamwambiya babagu	akamwambiya babagu	
166	42	42	b	تُنَنِ نَمُمِوَانْڠُ	tunani namumiwāngu	tunani namumiwangu	
167	42	42	c	نَيُوَا مَؤُڤُ يَنْڠُ	nayuwā mauvu yangu	nayuwa mauvu yangu	
168	42	42	d	سِمْوِنْيِ كُپِنْدِلِيَا	simwinyi kupindiliyā	simwinyi kupindiliya	
169	43	43	a	نِمْتُ وَلِنِغُرِ	nimtu walinighuri	nimtu walinighuri	
170	43	43	b	سَسَا نِمِمْفِكِرِا	sasā nimimfikirī	sasa nimimfikiri	
171	43	43	c	هَتُپِنْدِلِيِ خِيْرِ	hatupindiliyi khı̄ri	hatupindiliyi hiri	
172	43	43	d	حَوِزِ كُتْوَاغَلِيْيَ	ḥawizi kutwāghalı̄ya	hawizi kutwaghaliya	
173	44	44	a	تِنَ هُظُمُ مُيُنِ	tina huẓumu muyuni	tina hudhumu muyuni	
174	44	44	b	مْتُيِ نِشَيْطَانِ	mtuyi nishayṭāni	mtuyi nishaytani	
175	44	44	c	وَلِكُيَ كُنِلِنِ	walikuya kunilini	walikuya kunilini	
176	44	44	d	نِيَ مْبُڤُ كُنِتِيَا	niya mbuvu kunitiyā	niya mbuvu kunitiya	
177	45	45	a	بَعْدَ هَيُ كُكُمَ	baʿda hayu kukuma	bada hayu kukuma	
178	45	45	b	كُتُوَا كْوَاكِى فَطِيْمَ	kutuwā kwākii faṭı̄ma	kutuwa kwakii fatima	
179	45	45	c	اَلِيْػِنْرَا كِسِمَ مَ	alı̄kʲinrā kisima ma	alichinra kisima ma	
180	45	45	d	سِكُ يَجُمَ اِكِيَا	siku yajuma ikiyā	siku yajuma ikiya	
181	46	46	a	اَكِسِمَمَ نْدِيَانِ	akisimama ndiyāni	akisimama ndiyani	
182	46	46	b	اَكِمْوَامْبِيَا شَيْطَانِ	akimwāmbiyā shayṭāni	akimwambiya shaytani	
183	46	46	c	تُصَلِيْپُ زَامَانِ	tuṣalı̄pu zāmāni	tusalipu zamani	
184	46	46	d	خِيْرِ اُكَيْرُدِيَا	khı̄ri ukayrudiyā	hiri ukayrudiya	
185	47	47	a	سِيِوُ تُكِتِزِيِ	siyiwu tukitiziyi	siyiwu tukitiziyi	
186	47	47	b	حُكُغُجَ وِوِ اُيِ	ḥukughuja wiwi uyi	hukughuja wiwi uyi	
187	47	47	c	لِغُجِ لِغِيْنِ لِيْيِ	lighuji lighı̄ni lı̄yi	lighuji lighini liyi	
188	47	47	d	يِوُ حُكُعَظِمِيْيَا	yiwu ḥukuʿaẓimı̄yā	yiwu hukuadhimiya	
189	48	48	a	عَلِيْ هَپُ كَرُدِ	ʿalii hapu karudi	alii hapu karudi	
190	48	48	b	اُكَتِكَ كُرَادِادِ	ukatika kurādiādi	ukatika kuradiadi	
191	48	48	c	اُمُوْنِ مُحَمَّدِ	umūni muḥammadi	umuni muhammadi	
192	48	48	d	نْيُمْبَانِ كِمْغِلِيَا	nyumbāni kimghiliyā	nyumbani kimghiliya	
193	49	49	a	كُمُوُلِزَا اَمِيْنِ	kumuwulizā amı̄ni	kumuwuliza amini	
194	49	49	b	يِوُ عَلِيْ اُنَنِ	yiwu ʿalii unani	yiwu alii unani	
195	49	49	c	حُكُيَ مْسِكِيْتِنِ	ḥukuya msikı̄tini	hukuya msikitini	
196	49	49	d	لِپِ لِلُوْ كُزِدِيْيَا	lipi liluu kuzidı̄yā	lipi liluu kuzidiya	
197	50	50	a	اَكَمْوَمْبِيَا حَشِيْمَ	akamwambiyā ḥashı̄ma	akamwambiya hashima	
198	50	50	b	يِوُ سِكُوَاحِ جُمَ	yiwu sikuwāḥi juma	yiwu sikuwahi juma	
199	50	50	c	كِلِغَنَ نَكِسِمَ	kilighana nakisima	kilighana nakisima	
200	50	50	d	وِنْيِ كُصَلِ هُغِيَا	winyi kuṣali hughiyā	winyi kusali hughiya	
201	51	51	a	حَتَ نِجُمَ لَپِيْلِ	ḥata nijuma lapı̄li	hata nijuma lapili	
202	51	51	b	عَلِيْ كِرَا اَوَالِيْ	ʿalii kirā awālii	alii kira awalii	
203	51	51	c	اَبُ اَسُتَجَمَلِيْ	abu asutajamalii	abu asutajamalii	
204	51	51	d	هُمْلِرَّا كُمْوَمْبِيَا	humlirrā kumwambiyā	humlirra kumwambiya	
205	52	52	a	اَكَمْوَامْبِيَا شِيْطَانِ	akamwāmbiyā shı̄ṭāni	akamwambiya shitani	
206	52	52	b	عَلِيْ نِكْوَامبِيِيْنِ	ʿalii nikwāmbiı̄ni	alii nikwambiyini	
207	52	52	c	لَبُدَا هُكُ نْيُمْبَانِ	labudā huku nyumbāni	labuda huku nyumbani	
208	52	52	d	كُتُكَ هُكُوِمِيَا	kutuka hukuwimiyā	kutuka hukuwimiya	
209	53	53	a	نَيِوُ خِيْرِ اُرُوْدِ	nayiwu khı̄ri urūdi	nayiwu hiri urudi	
210	53	53	b	كْوَانِ حِيْزُ نِكَصِدِ	kwāni ḥı̄zu nikaṣidi	kwani hizu nikasidi	
211	53	53	c	اُكُمُ نِمُحَمَّدِ	ukumu nimuḥammadi	ukumu nimuhammadi	
212	53	53	d	يِوُ مِكُوُظِكِيَا	yiwu mikuwuẓikiyā	yiwu mikuwudhikiya	
213	54	54	a	عَلِيْ اَكَوُظِيْكَ	ʿalii akawuẓı̄ka	alii akawudhika	
214	54	54	b	كُرُدِ اَسِيُتَكَ	kurudi asiyutaka	kurudi asiyutaka	
215	54	54	c	حَتَ نْيُبَنِ كِفِكَ	ḥata nyubani kifika	hata nyubani kifika	
216	54	54	d	مْكِ وَكِ كَمْوَامْبِيَا	mki waki kamwāmbiyā	mki waki kamwambiya	
217	55	55	a	كَمُوُلِزَا فَطِيْمَ	kamuwulizā faṭı̄ma	kamuwuliza fatima	
218	55	55	b	لَبْدَا كُكَلِ مَپِمَ	labdā kukali mapima	labda kukali mapima	
219	55	55	c	حُنِيْنَ وِنْدِ جُمَ	ḥunı̄na windi juma	hunina windi juma	
220	55	55	d	وِوِ هُيَسِكِلِيَا	wiwi huyasikiliyā	wiwi huyasikiliya	
221	56	56	a	عَلِيْ اَكَبَئِيْنِ	ʿalii akabaı̄ni	alii akabaini	
222	56	56	b	كَبَ مَپِمَ يَنِيْنِ	kaba mapima yanı̄ni	kaba mapima yanini	
223	56	56	c	مِمِ كِكُمَ دِيَنِ	mimi kikuma diyani	mimi kikuma diyani	
224	56	56	d	وَنْيِ كُصَلِ هُغِيَا	wanyi kuṣali hughiyā	wanyi kusali hughiya	
225	57	57	a	تِنَا نِپِتِ خَبَارِ	tinā nipiti khabāri	tina nipiti habari	
226	57	57	b	اَمِوُظِكَ بَشِيْرِ	amiwuẓika bashı̄ri	amiwudhika bashiri	
227	57	57	c	وَلَا زِوُ سِأَخِيْرِ	walā ziwu siakhı̄ri	wala ziwu siahiri	
228	57	57	d	وَوُ وَغَئِصَلِيَ	wawu waghaiṣaliya	wawu waghaisaliya	
229	58	58	a	كْوَنْدَ بِنْتِ رَسُوْلِ	kwanda binti rasūli	kwanda binti rasuli	
230	58	58	b	هَيُ اَسِيَقُبَلِ	hayu asiyaqubali	hayu asiyaqubali	
231	58	58	c	اَكَمْوَمْبِيَا سِكْوِلِ	akamwambiyā sikwili	akamwambiya sikwili	
232	58	58	d	حَيُ اُمِزُنَمْبِيَا	ḥayu umizunambiyā	hayu umizunambiya	
233	59	59	a	وِوِ حَپَ اُكِتُكَا	wiwi ḥapa ukitukā	wiwi hapa ukituka	
234	59	59	b	سَعَ سِتَ اِمِفِكَ	saʿa sita imifika	saa sita imifika	
235	59	59	c	اَمِكُوَا نَحَرَاكَ	amikuwā naḥarāka	amikuwa naharaka	
236	59	59	d	يَكُصَلِيْشَ نَبِيَا	yakuṣalı̄sha nabiyā	yakusalisha nabiya	
237	60	60	a	نَبَدَءِ فَطِيْمَ	nabadai faṭı̄ma	nabadai fatima	
238	60	60	b	كُتِدَا حِيُ كَلِمَ	kutidā ḥiyu kalima	kutida hiyu kalima	
239	60	60	c	وَمْسِكِيْيَ حَشِيْمَ	wamsikı̄ya ḥashı̄ma	wamsikiya hashima	
240	60	60	d	حُدِ اَكِوَاپِ جِيَا	ḥudi akiwāpi jiyā	hudi akiwapi jiya	
241	61	61	a	تُمْوَا كِغِيَ كْوَا نْرَانِ	tumwā kighiya kwā nrāni	tumwa kighiya kwa nrani	
242	61	61	b	عَلِيْ اُپُ كِتِيْنِ	ʿalii upu kitı̄ni	alii upu kitini	
243	61	61	c	ڠُوْ زِلِيْ مُوِلِنِ	guu zilii muwilini	guu zilii muwilini	
244	61	61	d	مْتُمِ كِمْوَاغَلِيَا	mtumi kimwāghaliyā	mtumi kimwaghaliya	
245	62	62	a	اَكَتَمْكَا حَبِبُ	akatamkā ḥabibu	akatamka habibu	
246	62	62	b	عَلِيْ بُنْ طَلِبُ	ʿalii bun ṭalibu	alii bun talibu	
247	62	62	c	نَيِوْ نِنَ صِبَبُ	nayiw nina ṣibabu	nayiu nina sibabu	
248	62	62	d	جُمَ يَكُتُئِلِيْيَا	juma yakutuilı̄yā	juma yakutuiliya	
249	63	63	a	عَلِيْ اَكَفَصِْرِ	ʿalii akafaṣiri	alii akafasiri	
250	63	63	b	يَكْوِلِيَوِ بَشِيْرِا	yakwiliyawi bashı̄rī	yakwiliyawi bashiri	
251	63	63	c	وَيُوَا سِنَا جَوُرِ	wayuwā sinā jawuri	wayuwa sina jawuri	
252	63	63	d	زَا كُمُوُنْيَّ جَلِيَا 	zā kumuwunı̄ya jaliyā	za kumuwuniya jaliya	
253	64	64	a	تِنَا يِوُ نِنَا مَتِ	tinā yiwu ninā mati	tina yiwu nina mati	
254	64	64	b	نِمِتُكَ كْوَ وَقَتِ	nimituka kwa waqati	nimituka kwa waqati	
255	64	64	c	نِرُدِشِوْزِ مَتِةِ	nirudishiwzi matiẗi	nirudishiuzi matiti	
256	64	64	d	غُوْ سِيَزَاغَلِيَا	ghuu siyazāghaliyā	ghuu siyazaghaliya	
257	65	65	a	حَتَى فَطِيْمَ حَبِبُ	ḥatay faṭı̄ma ḥabibu	hatay fatima habibu	
258	65	65	b	يِوُ اَمِتَعَجَبُ	yiwu amitaʿajabu	yiwu amitaajabu	
259	65	65	c	اَمِپَرَا مِحِرَابُ	amiparā miḥirābu	amipara mihirabu	
260	65	65	d	اِيُ نْرَانِ هُنَمْبِيَا	iyu nrāni hunambiyā	iyu nrani hunambiya	
261	65	66	a	اَكَمْوَامْبِيَا حَشِيْمُ	akamwāmbiyā ḥashı̄mu	akamwambiya hashimu	
262	65	66	b	حُيُ سِمْوَانَ اَدَمُ	ḥuyu simwāna adamu	huyu simwana adamu	
263	65	66	c	نِشِيْطَانِ فَهَمُ	nishı̄ṭāni fahamu	nishitani fahamu	
264	65	66	d	سَاسَ اَمِكُوْزِغِيَا	sāsa amikūzighiyā	sasa amikuzighiya	
265	67	67	a	عَلِيْ كِتَ قَوْلِيْ	ʿalii kita qawlii	alii kita qaulii	
266	67	67	b	كْوَمْبَ وَيُوَا نِكْوِلِ	kwamba wayuwā nikwili	kwamba wayuwa nikwili	
267	67	67	c	حِلِ جُمَ نِلَپِلِ	ḥili juma nilapili	hili juma nilapili	
268	67	67	d	نَلَتَتُ اَتَكُيَا	nalatatu atakuyā	nalatatu atakuya	
269	68	68	a	نَمِ سَ سَا مُحَمَدِ	nami sa sā muḥamadi	nami sa sa muhamadi	
270	68	68	b	نِمْئِپِكَ عَهَدِ	nimipika ʿahadi	nimipika ahadi	
271	68	68	c	شِيْطَانِ تَمْرُدِ	shı̄ṭāni tamrudi	shitani tamrudi	
272	68	68	d	مْبِيْ زَا جَفِرِ پِيَا	mbii zā jafiri piyā	mbii za jafiri piya	
273	69	69	a	نِػَغَلِيَ حَقِيْكَ	nikʲaghaliya ḥaqı̄ka	nichaghaliya haqika	
274	69	69	b	اُنَ يَبُ وَلِتَكَ	una yabu walitaka	una yabu walitaka	
275	69	69	c	نَيِ اَتَنِكُمْبُكَ	nayi atanikumbuka	nayi atanikumbuka	
276	69	69	d	سِكُزُتِ اَكِلِيَا	sikuzuti akiliyā	sikuzuti akiliya	
277	70	70	a	عَلِيْ اَكَصُبِرِ	ʿalii akaṣubiri	alii akasubiri	
278	70	70	b	حَتَ جُمَعْ لِكَجِرِا	ḥata jumaʿ likajirī	hata juma likajiri	
279	70	70	c	كِنِرَّا مْوِنْيِ كُمُوْغُرِ	kinirrā mwinyi kumūghuri	kinirra mwinyi kumughuri	
280	70	70	d	هُمْلِرَّا كُمْوَمْبِيَا	humlirrā kumwambiyā	humlirra kumwambiya	
281	72	71	a	عَلِيْ كَيْرَا تِيْتِ	ʿalii kayrā tı̄ti	alii kayra titi	
282	72	71	b	هَتَى اُكَيَ وَقَتِ	hatay ukaya waqati	hatay ukaya waqati	
283	72	71	c	اَكَيْتُوَا مَتِيْتِ	akaytuwā matı̄ti	akaytuwa matiti	
284	72	71	d	هَپُ كَيَنْدَامَ نْدِيَا	hapu kayandāma ndiyā	hapu kayandama ndiya	
285	73	72	a	اُمُوْنِ اِبْلِيْسِ	umūni iblı̄si	umuni iblisi	
286	73	72	b	اُيَوُ مِئِلَبِيْسِ	uyawu miilabı̄si	uyawu miilabisi	
287	73	72	c	نَيِ اَكِرَا اُپِسِ	nayi akirā upisi	nayi akira upisi	
288	73	72	d	اِلِ كُمْكُرُبِيْيَا	ili kumkurubı̄yā	ili kumkurubiya	
289	74	73	a	اِبْلِسِ كَتَمْكَا	iblisi katamkā	iblisi katamka	
290	74	73	b	عَلِيْ اُنَ هَرَاكَ	ʿalii una harāka	alii una haraka	
291	74	73	c	سِيْ جُمَعْ تُمِشُكَا	sii jumaʿ tumishukā	sii juma tumishuka	
292	74	73	d	مْمُيَ هَكُسَلِيَا	mmuya hakusaliyā	mmuya hakusaliya	
293	75	74	a	وِوِ هُتُكِ نْيُبَنِ	wiwi hutuki nyubani	wiwi hutuki nyubani	
294	75	74	b	لَكُيَ مْسِكِتِنِ	lakuya msikitini	lakuya msikitini	
295	75	74	c	اَسَا هُمْتِزَ نْيَاَنِ	asā humtiza nyaani	asa humtiza nyaani	
296	75	74	d	تُوْنِ مْبِيْ دُنِيَا	tūni mbii duniyā	tuni mbii duniya	
297	76	75	a	عَلِيْ كِيْتَ كَلِيْمَ	ʿalii kı̄ta kalı̄ma	alii kita kalima	
298	76	75	b	اُوْرُنْغُ وَكُ هُكُمَ	ūrunghu waku hukuma	urunghu waku hukuma	
299	76	75	c	يِوُ اُتَنِفَهَمُ	yiwu utanifahamu	yiwu utanifahamu	
300	76	75	d	ڠُوُ لِكَمْپُتِيَا	guwu likamputiyā	guwu likamputiya	
301	77	76	a	اَكِيْزِنْغَ شِطَانِ	akı̄zingha shiṭāni	akizingha shitani	
302	77	76	b	مِمْتِيَ مْكُنُنِ	mimtiya mkununi	mimtiya mkununi	
303	77	76	c	تْوِنِرِ مْسِكِتِنِ	twiniri msikitini	twiniri msikitini	
304	77	76	d	سِؤُپِسِ كُكِمْبِيَا	siupisi kukimbiyā	siupisi kukimbiya	
305	78	77	a	كِنْرَا نَيِ شَيْطَانِ	kinrā nayi shayṭāni	kinra nayi shaytani	
306	78	77	b	مْپَكَ مْسِكِيْتِنِ	mpaka msikı̄tini	mpaka msikitini	
307	78	77	c	كَفُزِيَ كِپِيَانِ	kafuziya kipiyāni	kafuziya kipiyani	
308	78	77	d	كِفُنُوَا كِمْتِيْيَا	kifunuwā kimtı̄yā	kifunuwa kimtiya	
309	79	78	a	حَپَ اَكَشُشَا مْوَنْڠُ	ḥapa akashushā mwangu	hapa akashusha mwangu	
310	79	78	b	اَكَبَ اُسُوْ مْرُنْغُ	akaba usuu mrunghu	akaba usuu mrunghu	
311	79	78	c	ڠَاءَ هُتِرِّ كِجُنْغُ	gaa hutirri kijunghu	gaa hutirri kijunghu	
312	79	78	d	نَوِ مْبِغُ اُكَغِيَا	nawi mbighu ukaghiyā	nawi mbighu ukaghiya	
313	81	79	a	مَبُ يَكُ شَيْطَانِ	mabu yaku shayṭāni	mabu yaku shaytani	
314	81	79	b	اَيَوِزَاوُ نِنْيَّنِ	ayawizāwu ninı̄yani	ayawizawu niniyani	
315	81	79	c	وَلَا هَپَنَ كِفَنِ	walā hapana kifani	wala hapana kifani	
316	81	79	d	كَتِكَ دَهْرِ بِيَا	katika dahri biyā	katika dahri biya	
317	82	80	a	كُلَ يَابُ هُلِوِتَ	kula yābu huliwita	kula yabu huliwita	
318	82	80	b	هُوُنَ وَتُ هُكُوْتَ	huwuna watu hukūta	huwuna watu hukuta	
319	82	80	c	هُوْنَ لَيْتِ كُوِتَ	hūna layti kuwita	huna layti kuwita	
320	82	80	d	نَوِ اُكَزِڠَتِيْيَا	nawi ukazigatı̄yā	nawi ukazigatiya	
321	83	81	a	اُمِئِفَنْيَّ نَغُوْرِ	umiifanı̄ya naghūri	umiifaniya naghuri	
322	83	81	b	كْوَ مْكُوْ كَفِيْرِ	kwa mkuu kafı̄ri	kwa mkuu kafiri	
323	83	81	c	هُنَلُوْ مْمُيَ لَخِيْرِ	hunaluu mmuya lakhı̄ri	hunaluu mmuya lahiri	
324	83	81	d	اَمْبَلُ وَفُرَاحِيَا	ambalu wafurāḥiyā	ambalu wafurahiya	
325	84	82	a	كَمْتُوَا كِپِيَانِ	kamtuwā kipiyāni	kamtuwa kipiyani	
326	84	82	b	كَمْهُرَا مْكُوْرُنِ	kamhurā mkūruni	kamhura mkuruni	
327	84	82	c	اَكَنِيْنَ شَيْطَانِ	akanı̄na shayṭāni	akanina shaytani	
328	84	82	d	اُمِشُهُدِ نَبِيَا	umishuhudi nabiyā	umishuhudi nabiya	
329	85	83	a	اُمِشُهُدِ مْكْوِوُ	umishuhudi mkwiwu	umishuhudi mkwiwu	
330	85	83	b	تَعَدِ اَنِتِدِئوُا	taʿadi anitidiwū	taadi anitidiwu	
331	85	83	c	اُمِيَوُنَ يَئِوُ	umiyawuna yaiwu	umiyawuna yaiwu	
332	85	83	d	يَلِنْدِنِ نَمَپِيَا	yalindini namapiyā	yalindini namapiya	
333	86	84	a	اُسِيْوُنِ رِيُ بَاسِ	usı̄wuni riyu bāsi	usiwuni riyu basi	
334	86	84	b	اَلِيُ كُنِنُكُوْسِ	aliyu kuninukūsi	aliyu kuninukusi	
335	86	84	c	شَتِ نِتُوِ كِصَسِ	shati nituwi kiṣasi	shati nituwi kisasi	
336	86	84	d	كِسَ نِتْوَاي نَدِيَا	kisa nitwāı̄ nadiyā	kisa nitway nadiya	
337	87	85	a	نَيِ هُيَنِيْنَ هَيُ	nayi huyanı̄na hayu	nayi huyanina hayu	
338	87	85	b	هُكُوْا ػِنِرَا مْبِيُ	hukuwā kʲinirā mbiyu	hukuwa chinira mbiyu	
339	87	85	c	ػَمْبِوَا عَلِيْ هُيُ	kʲambiwā ʿalii huyu	chambiwa alii huyu	
340	87	85	d	هِرَا اَكِزُنْڠُكِيَا	hirā akizungukiyā	hira akizungukiya	
341	88	86	a	اَوْنَپُ حَمُوْانِ	awnapu ḥamuwāni	aunapu hamuwani	
342	88	86	b	اَكَنِيْنَ شَيْطَانِ	akanı̄na shayṭāni	akanina shaytani	
343	88	86	c	اَسَا عَلِيْ نِنْيَّنِ	asā ʿalii ninı̄yani	asa alii niniyani	
344	88	86	d	هَتَّى مُكَنِتَيْيَا	hattay mukanitayyā	hattay mukanitayya	
345	89	87	a	عَلِيْ كُرُدِ كْوَكِ	ʿalii kurudi kwaki	alii kurudi kwaki	
346	89	87	b	اَكِرَّا كْوَ مكِ وَكِ	akirrā kwa mki waki	akirra kwa mki waki	
347	89	87	c	فَطِيْمَ اَتَمْكِ	faṭı̄ma atamki	fatima atamki	
348	89	87	d	حِلَ خَبَرِ نَمْبِيَا	ḥila khabari nambiyā	hila habari nambiya	
349	90	88	a	يِوُ اُكِنْرَا نْدِيَانِ	yiwu ukinrā ndiyāni	yiwu ukinra ndiyani	
350	90	88	b	حَكُوِپُ شَيْطَانِ	ḥakuwipu shayṭāni	hakuwipu shaytani	
351	90	88	c	عَلِيْ كَنِيْنَ كْوَانِ	ʿalii kanı̄na kwāni	alii kanina kwani	
352	90	88	d	اُنَ كُتُنِئِلِيْيَا	una kutuniilı̄yā	una kutuniiliya	
353	91	89	a	يِوُ اُمِجِتَهِدِ	yiwu umijitahidi	yiwu umijitahidi	
354	91	89	b	كْوَا كُنِيُوَا هُرُدِ	kwā kuniyuwā hurudi	kwa kuniyuwa hurudi	
355	91	89	c	تُپِنْبِنِ هُرَادِدِ	tupim̱bini hurādidi	tupimbini huradidi	
356	91	89	d	يَؤُرُنْڠُ هُنَمْبِيَا	yaurungu hunambiyā	yaurungu hunambiya	
357	92	90	a	فَطِيْمَ اَكَبَيِنِ	faṭı̄ma akabayini	fatima akabayini	
358	92	90	b	يِوُ اُمِمْتِرَّانِ	yiwu umimtirrāni	yiwu umimtirrani	
359	92	90	c	اَغَلِيَ سُلْطَنِ	aghaliya sulṭani	aghaliya sultani	
360	92	90	d	اِسِمُ كُمُوُرُكِيَا	isimu kumuwurukiyā	isimu kumuwurukiya	
361	93	91	a	كَمْپِجِيَا مْفَنُ	kampijiyā mfanu	kampijiya mfanu	
362	93	91	b	فَطِيْمَ كَتِكَ مْنُ	faṭı̄ma katika mnu	fatima katika mnu	
363	93	91	c	كَبَ اُنَ نَمَنِيْنُ	kaba una namanı̄nu	kaba una namaninu	
364	93	91	d	كْوَا حُكُ حُنِكَتِيَا	kwā ḥuku ḥunikatiyā	kwa huku hunikatiya	
365	94	92	a	نَا مِمِ نِوَاتُكَ	nā mimi niwātuka	na mimi niwatuka	
366	94	92	b	ػِنِرَّا اَتَشُتُكَ	kʲinirrā atashutuka	chinirra atashutuka	
367	94	92	c	اُسِمِ اُتَوُنْرُكَ	usimi utawunruka	usimi utawunruka	
368	94	92	d	زَ مْوِتُنِ كِزِڠِيَا	za mwituni kizigiyā	za mwituni kizigiya	
369	95	93	a	قَدْ تَمَّتِ كَلِمُ	qad tammati kalimu	qad tammati kalimu	
370	95	93	b	اِنِرَا مِنْيِ كَلِمُ	inirā minyi kalimu	inira minyi kalimu	
371	95	93	c	اُلِوِوُ جَهَنَّمُ	uliwiwu jahannamu	uliwiwu jahannamu	
372	95	93	d	اَجَلِ حُمْزِڠِيَا	ajali ḥumzigiyā	ajali humzigiya	
373	96	94	a	حَيَ نِمِيَخِتِمُ	ḥaya nimiyakhitimu	haya nimiyahitimu	
374	96	94	b	نَمَغِيْنِ نِنُظُمُ	namaghı̄ni ninuẓumu	namaghini ninudhumu	
375	96	94	c	كْوَا جَمِعِ مُفَهَمُ	kwā jamiʿi mufahamu	kwa jamii mufahamu	
376	96	94	d	نِمِپِنْدَ كُوَابِيَا	nimipinda kuwābiyā	nimipinda kuwabiya	
377	97	95	a	فَهَمُنِ وَوُڠَوَانَ	fahamuni wawugawāna	fahamuni wawugawana	
378	97	95	b	يِوُ نِوَاپِ مَعَنَا	yiwu niwāpi maʿanā	yiwu niwapi maana	
379	97	95	c	پِتِ يَنْڠُ يَمَئِيْنَ	piti yangu yamaı̄na	piti yangu yamaina	
380	97	95	d	حُجَ نَلُوْ اِوَاتِيَا	ḥuja naluu iwātiyā	huja naluu iwatiya	
381	98	96	a	نَلِئِوَاتَ كَسِدِ	naliiwāta kasidi	naliiwata kasidi	
382	98	96	b	سِمَحَبَ كُنِزِدِا	simaḥaba kunizidī	simahaba kunizidi	
383	98	96	c	مَرَا حُوْزَاوَ وَآلدِ	marā ḥūzāwa waãldi	mara huzawa waaldi	
384	98	96	d	اَكَصِيْرِ كُپُتِيْيَا	akaṣı̄ri kuputı̄yā	akasiri kuputiya	
385	99	97	a	عَلِيْ اَلُفِكِيْرِ	ʿalii alufikı̄ri	alii alufikiri	
386	99	97	b	نْرِيُ يُتِ يَلُجِيْرِ	nriyu yuti yalujı̄ri	nriyu yuti yalujiri	
387	99	97	c	اَكَوازَوَا جَعْفَرِ	akawāzawā jaʿfari	akawazawa jafari	
388	99	97	d	وَ مَوْلَنَا عَلِيَ	wa mawlanā ʿaliya	wa maulana aliya	
389	100	98	a	اَكَئِيَّڠَ كِجَانَ	akaı̄yaga kijāna	akaiyaga kijana	
390	100	98	b	نَبَبَكِ وَكَفَنَ	nababaki wakafana	nababaki wakafana	
391	100	98	c	كُلَ اَلٗكِمُوُنَ	kula alokimuwuna	kula alokimuwuna	
392	100	98	d	سُوْرَ زَلِكِمْوِلِيَ	sūra zalikimwiliya	sura zalikimwiliya	
393	101	99	a	وَتُ وَلِكِيْذُكُرِ	watu walikı̄dhukuri	watu walikidhukuri	
394	101	99	b	عَلِيْ حَنَا خَبَرِا	ʿalii ḥanā khabarī	alii hana habari	
395	101	99	c	حَتَ مْمُيَ كْوَا سِرِ	ḥata mmuya kwā siri	hata mmuya kwa siri	
396	101	99	d	هَكُنَ اَلُمْوَمْبِيَا	hakuna alumwambiyā	hakuna alumwambiya	
397	102	100	a	اَلِپُ پِنْدَا مَنَانِ	alipu pindā manāni	alipu pinda manani	
398	102	100	b	كُمْوَامْبِيَا مُعَيَانِ	kumwāmbiyā muʿayāni	kumwambiya muayani	
399	102	100	c	كُنَ كِسِمَ مِتُنِ	kuna kisima mituni	kuna kisima mituni	
400	102	100	d	اَكِرَا كُتَنْڠَلِيَا	akirā kutangaliyā	akira kutangaliya	
401	103	101	a	تِنَ اَكِرَا كْوَ شَكَ	tina akirā kwa shaka	tina akira kwa shaka	
402	103	101	b	مَاءِ اَسِپُ يَتَكَ	mai asipu yataka	mai asipu yataka	
403	103	101	c	نَيِ اَكَكِفِنِكَ	nayi akakifinika	nayi akakifinika	
404	103	101	d	نِوَازِ اَكِتِيْرِيَ	niwāzi akitı̄riya	niwazi akitiriya	
405	104	102	a	حَپُ عَلِيْ حَيْدَرِ	ḥapu ʿalii ḥaydari	hapu alii haydari	
406	104	102	b	كِوَزَا نَكُفِيْكِرِا	kiwazā nakufı̄kirī	kiwaza nakufikiri	
407	104	102	c	وَمِكُيَ مَكُفَرِا	wamikuya makufarī	wamikuya makufari	
408	104	102	d	يِوُ كينِفُنُلِيَا	yiwu kı̄nifunuliyā	yiwu kinifunuliya	
409	105	103	a	اَكِسَا اَكَتَمْكَ	akisā akatamka	akisa akatamka	
410	105	103	b	نَيِوُ تَكِفِنِكَ	nayiwu takifinika	nayiwu takifinika	
411	105	103	c	سِنَا بُدِ تَمْشِيْكَ	sinā budi tamshı̄ka	sina budi tamshika	
412	105	103	d	مْتُوِ اَمِيْزُوِيَ	mtuwi amı̄zuwiya	mtuwi amizuwiya	
413	106	104	a	اَػُرُكَ حُكُ نْيُمَ	akʲuruka ḥuku nyuma	achuruka huku nyuma	
414	106	104	b	جَعفَرِ اَكِڠِيْمَ	jaʿfari akigı̄ma	jafari akigima	
415	106	104	c	بَوُ اَكَلِسُكُمَ	bawu akalisukuma	bawu akalisukuma	
416	106	104	d	مْبَلِ اَكَلِمْبِيْرِيَ	mbali akalimbı̄riya	mbali akalimbiriya	
417	107	105	a	بُزِ وَكَيَ كْوَا حِمَ	buzi wakaya kwā ḥima	buzi wakaya kwa hima	
418	107	105	b	جَعَفَرِ اُكُنْيُمَ	jaʿafari ukunyuma	jaafari ukunyuma	
419	107	105	c	كِسَ نَأِ اَكِڠِيْمَ	kisa nai akigı̄ma	kisa nai akigima	
420	107	105	d	عَلِيْ حُموَاغَلِيَا	ʿalii ḥumwāghaliyā	alii humwaghaliya	
421	108	106	a	اَكِڠِمَ كَرَادِدِ	akigima karādidi	akigima karadidi	
422	108	106	b	تُتَشِنْرَانَ كَسِدِ	tutashinrāna kasidi	tutashinrana kasidi	
423	108	106	c	كْوَانْدَا يِوُ اَكِرُدِ	kwāndā yiwu akirudi	kwanda yiwu akirudi	
424	108	106	d	حَلِدِرِكى اَكِيَا	ḥalidirikı̄ akiyā	halidiriki akiya	
425	109	107	a	كَمَ حُفَنْيَ نِبِرِ	kama ḥufanya nibiri	kama hufanya nibiri	
426	109	107	b	اَيَپُ اَتَنِكِيْرِا	ayapu atanikı̄rī	ayapu atanikiri	
427	109	107	c	حِلِ هُپَتَ بَدَرِ	ḥili hupata badari	hili hupata badari	
428	109	107	d	غُوْ اُتَغِنِيْكِيَا	ghuu utaghinı̄kiyā	ghuu utaghinikiya	
429	110	108	a	مَئِ كَتِكَ كَتِكَ	mai katika katika	mai katika katika	
430	110	108	b	نَيِ عَلِيْ كَتُكَا	nayi ʿalii katukā	nayi alii katuka	
431	110	108	c	مْكُوْنُ اَكَمْشِيْكَ	mkūnu akamshı̄ka	mkunu akamshika	
432	110	108	d	جَعْفَرِ اَكَمْوَمْبِيَا	jaʿfari akamwambiyā	jafari akamwambiya	
433	112	109	a	وِوِ حُنِشِيْكِيَنِ	wiwi ḥunishı̄kiyani	wiwi hunishikiyani	
434	112	109	b	مِمِ سِكُػِ سِنَنِ	mimi sikukʲi sinani	mimi sikuchi sinani	
435	112	109	c	حَتَ اُكِوَا نَجِنِ	ḥata ukiwā najini	hata ukiwa najini	
436	112	109	d	نَيُوَا كُكُسُمِيَا	nayuwā kukusumiyā	nayuwa kukusumiya	
437	113	110	a	حَيَا نِمِزُفَصِيْرِ	ḥayā nimizufaṣı̄ri	haya nimizufasiri	
438	113	110	b	سِكُيَنِنَ كْوَا سِرِا	sikuyanina kwā sirī	sikuyanina kwa siri	
439	113	110	c	اُكِتَكَا اِظْهَرِا	ukitakā iẓharī	ukitaka idhhari	
440	113	110	d	نَزَءِدِ تَكْوَامْبِيَا	nazaidi takwāmbiyā	nazaidi takwambiya	
441	114	111	a	كَمْڤُتِيَ كْوَمْبَلِ	kamvutiya kwambali	kamvutiya kwambali	
442	114	111	b	وَكَوَنَ وُ وَوِيْلِ	wakawana wu wawı̄li	wakawana wu wawili	
443	114	111	c	كِسَ كَڤُتَ قَوْلِ	kisa kavuta qawli	kisa kavuta qauli	
444	114	111	d	جَعْفَرِ اَكَمْوَمْبِيَا	jaʿfari akamwambiyā	jafari akamwambiya	
445	115	112	a	اَكَمْوَمْبِيَا اَكَبَيِنِ	akamwambiyā akabayini	akamwambiya akabayini	
446	115	112	b	مْوَانَ اَدَمُ نِنْيَنِ	mwāna adamu ninyani	mwana adamu ninyani	
447	115	112	c	بَبَا هَكُ دُنِيَانِ	babā haku duniyāni	baba haku duniyani	
448	115	112	d	نْرِپُ اُكَنِوَنِيَا	nripu ukaniwaniyā	nripu ukaniwaniya	
449	116	113	a	كَمُوُلِيْزَا اُنَنِ	kamuwulı̄zā unani	kamuwuliza unani	
450	116	113	b	وِوِ بَبَكُ نِنْيَنِ	wiwi babaku ninyani	wiwi babaku ninyani	
451	116	113	c	كَبَ نِپِةِ ػَنْدَانِ	kaba nipiẗi kʲandāni	kaba nipiti chandani	
452	116	113	d	عَلِيْ كَمْوَاغَلِيَا	ʿalii kamwāghaliyā	alii kamwaghaliya	
453	117	114	a	پِتِ كْوَغَلِيَ كْوَكِ	piti kwaghaliya kwaki	piti kwaghaliya kwaki	
454	117	114	b	كِسُمَ اِنَ نِلَكِ	kisuma ina nilaki	kisuma ina nilaki	
455	117	114	c	اَرُدِ اَسِكِتِكِ	arudi asikitiki	arudi asikitiki	
456	117	114	d	نَمَيُتُ كُمْغِيَا	namayutu kumghiyā	namayutu kumghiya	
457	118	115	a	كِسَ حَپُ اَمْوَمْبِيِ	kisa ḥapu amwambiyi	kisa hapu amwambiyi	
458	118	115	b	سِغَلِ نِكُپِجِيَا	sighali nikupijiyā	sighali nikupijiya	
459	118	115	c	اِنَ لَكُوْ حِتْوَاأِيِ	ina lakuu ḥitwaiyi	ina lakuu hitwaiyi	
460	118	115	d	بَبَا نِمِمِ عَلِيَا	babā nimimi ʿaliyā	baba nimimi aliya	
461	119	116	a	نِڠَلِ پُتِيْزَا دَامُ	nigali putı̄zā dāmu	nigali putiza damu	
462	119	116	b	كَبَ سِكُكُفَهَمُ	kaba sikukufahamu	kaba sikukufahamu	
463	119	116	c	كِجَانَ كَتَكَلَمُ	kijāna katakalamu	kijana katakalamu	
464	119	116	d	جَعْفَارِ اَكَمْوَمْبِيَا	jaʿfāri akamwambiyā	jafari akamwambiya	
465	120	117	a	وِوِ مْتُ حُمُوُنَ	wiwi mtu ḥumuwuna	wiwi mtu humuwuna	
466	120	117	b	كْوَانْدَ حُمُوُزِ اِنَ	kwānda ḥumuwuzi ina	kwanda humuwuzi ina	
467	120	117	c	حُنِئُنْيَ اُجَڠِيْنَ	ḥuniunya ujagı̄na	huniunya ujagina	
468	120	117	d	وَلِأُنَ تَكِمْبِيَا	waliuna takimbiyā	waliuna takimbiya	
469	121	118	a	كَنْدَا نِپَا پِتِ يَنْڠُ	kandā nipā piti yangu	kanda nipa piti yangu	
470	121	118	b	اُكِسَا اُوِ نِبَبَڠُ	ukisā uwi nibabagu	ukisa uwi nibabagu	
471	121	118	c	اُمِنِتِيَا مَتُنْڠُ	uminitiyā matungu	uminitiya matungu	
472	121	118	d	مُيِلِنِ كُنِنِيَا	muyilini kuniniyā	muyilini kuniniya	
473	122	119	a	اَكَمْوَامْبِيَا مَمَكِ	akamwāmbiyā mamaki	akamwambiya mamaki	
474	122	119	b	نَمُيُوَا سُرَا زَاكِ	namuyuwā surā zāki	namuyuwa sura zaki	
475	122	119	c	نَيِ حَپُ اَتَمْكِ	nayi ḥapu atamki	nayi hapu atamki	
476	122	119	d	اِنَ لَكِ كَمْوَمْبِيَا	ina laki kamwambiyā	ina laki kamwambiya	
477	123	120	a	كَمْوَمْبِيَا كِفَصِيْرِ	kamwambiyā kifaṣı̄ri	kamwambiya kifasiri	
478	123	120	b	مِمِ حِتْوَا جَعْفَارِ	mimi ḥitwā jaʿfāri	mimi hitwa jafari	
479	123	120	c	وَ عَلِى حَيْدَارِ	wa ʿalii ḥaydāri	wa alii haydari	
480	123	120	d	نَمْوَاكَا نِوَا تِسِيَا	namwākā niwā tisiyā	namwaka niwa tisiya	
481	124	121	a	وَتُوِ مْبُزِ مْوِتُوْنِ	watuwi mbuzi mwitūni	watuwi mbuzi mwituni	
482	124	121	b	اُكَوَا تِنَ نْدِيَانِ	ukawā tina ndiyāni	ukawa tina ndiyani	
483	124	121	c	تْوِنِرِ زِپُ مُيِيْنِ	twiniri zipu muyı̄ni	twiniri zipu muyini	
484	124	121	d	جَعْفَارِ كَمْوَامْبِيَا	jaʿfāri kamwāmbiyā	jafari kamwambiya	
485	125	122	a	كَمْوَامْبِيَا نِرَا زَنْغُ	kamwāmbiyā nirā zanghu	kamwambiya nira zanghu	
486	125	122	b	نِنَا نَمْوَالِيْمُ وَنْغُ	ninā namwālı̄mu wanghu	nina namwalimu wanghu	
487	125	122	c	نِمُوَانڠِ نَمَمَنْغُ	nimuwāngi namamanghu	nimuwangi namamanghu	
488	125	122	d	كِسَ كِشُ نِتَكُيَا	kisa kishu nitakuyā	kisa kishu nitakuya	
489	126	123	a	كِشُ كُكِپَبَوُكَ	kishu kukipabawuka	kishu kukipabawuka	
490	126	123	b	نَمَپِيْمَ تَيْنُكَا	namapı̄ma taynukā	namapima taynuka	
491	126	123	c	سَعَ مُيَ اِكِفِيْكَ	saʿa muya ikifı̄ka	saa muya ikifika	
492	126	123	d	بَبَا تَكُوَاصِلِيَا	babā takuwāṣiliyā	baba takuwasiliya	
493	128	124	a	اَكَمجِبُ قَوُلِ	akamjibu qawuli	akamjibu qawuli	
494	128	124	b	اُيَپُ نْدِيَا نِمْبِلِ	uyapu ndiyā nimbili	uyapu ndiya nimbili	
495	128	124	c	يَمَكَ نِيَكُڤُلِ	yamaka niyakuvuli	yamaka niyakuvuli	
496	128	124	d	اُسِتَكِ كُپُتِيَا	usitaki kuputiyā	usitaki kuputiya	
497	129	125	a	كَمْرُدِشَا تَمْكُ	kamrudishā tamku	kamrudisha tamku	
498	129	125	b	نَاسِ هَيَ نِنْدَا زَكُ	nāsi haya nindā zaku	nasi haya ninda zaku	
499	129	125	c	مُعَلِمُ نَمَامَكِ	muʿalimu namāmaki	mualimu namamaki	
500	129	125	d	نَنْدُزُ نِسَلِمِيْيَا	nanduzu nisalimı̄yā	nanduzu nisalimiya	
501	130	126	a	نَيِ مْوَانَ وَ نَصَبَ	nayi mwāna wa naṣaba	nayi mwana wa nasaba	
502	130	126	b	كَمْوَامْبِيَ مَرَحَبَ	kamwāmbiya maraḥaba	kamwambiya marahaba	
503	130	126	c	نَمِ هُوْكُ اَقْرَابَ	nami hūku aqrāba	nami huku aqraba	
504	130	126	d	نَتُمْوَا نِسَلِمِيَا	natumwā nisalimiyā	natumwa nisalimiya	
505	132	127	a	سَلَمُ اَبُوْ بَكَرِ	salamu abuu bakari	salamu abuu bakari	
506	132	127	b	اَزْوَاجِ نَا زُبِيْرِا	azwāji nā zubı̄rī	azwaji na zubiri	
507	132	127	c	سُرَا زَوُ اِظْهَرِ	surā zawu iẓhari	sura zawu idhhari	
508	132	127	d	هَوُ نَوَافَهَمِيْيَا	hawu nawāfahamı̄yā	hawu nawafahamiya	
509	133	128	a	بَاسِ هَپُ جَعْفَارِ	bāsi hapu jaʿfāri	basi hapu jafari	
510	133	128	b	اَكَمْوَامْبِيَ كْوَا حِيْرِا	akamwāmbiya kwā ḥı̄rī	akamwambiya kwa hiri	
511	133	128	c	نَعَلِيْ هَيْدَارِ	naʿalii haydāri	naalii haydari	
512	133	128	d	مْغُ اَكَمُوُمبِيَا	mghu akamuwumbiyā	mghu akamuwumbiya	
513	134	129	a	مُوْيِنِ كَنْڠِيَا كْوَكِ	mūyini kangiyā kwaki	muyini kangiya kwaki	
514	134	129	b	كِيْرَا كْوَا مُعْلِمُ وَكِا	kı̄rā kwā muʿlimu wakī	kira kwa mulimu waki	
515	134	129	c	كَمْپَ خَبَرِ زَاكِيْ	kampa khabari zākii	kampa habari zakii	
516	134	129	d	كْوَاوُ هُيَسِكِلِيَا	kwāwu huyasikiliyā	kwawu huyasikiliya	
517	135	130	a	اَكِسَ كُيَنُظُمُ	akisa kuyanuẓumu	akisa kuyanudhumu	
518	135	130	b	اَكَلِيَ مُعَلِيْمُ	akaliya muʿalı̄mu	akaliya mualimu	
519	135	130	c	كَبَ وَانِتِيَ حَمُ	kaba wānitiya ḥamu	kaba wanitiya hamu	
520	135	130	d	هَيُ اُمِزُنَمْبِيَا	hayu umizunambiyā	hayu umizunambiya	
521	136	131	a	وَنِتِيَ سِكِتِكُ	wanitiya sikitiku	wanitiya sikitiku	
522	136	131	b	نَوِنْغِ وَ مَوُظِكُ	nawinghi wa mawuẓiku	nawinghi wa mawudhiku	
523	136	131	c	وَلَا نَهُكُ وِنْرَاكُ	walā nahuku winrāku	wala nahuku winraku	
524	136	131	d	سِوِزِ كُكُزِوِلِيَا	siwizi kukuziwiliyā	siwizi kukuziwiliya	
525	137	132	a	نِرَا حِمُ كْوَا وِنْدَانِ	nirā ḥimu kwā windāni	nira himu kwa windani	
526	137	132	b	نَهُوْكُ اُحُلِ ڠَانِ	nahūku uḥuli gāni	nahuku uhuli gani	
527	137	132	c	نَايِ بَابَكُ زَِاتَنِ	nāyi bābaku ziātani	nayi babaku ziatani	
528	137	132	d	نْدِيِ وَكُتَغُلِيَا	ndiyi wakutaghuliyā	ndiyi wakutaghuliya	
529	138	133	a	نَكُكُكِيْرَا سِتَكِ	nakukukı̄rā sitaki	nakukukira sitaki	
530	138	133	b	كْوَانِ نَيُوَا نِحَكِيْ	kwāni nayuwā niḥakii	kwani nayuwa nihakii	
531	138	133	c	نِرَاضِ اَلِفُ لَكِ	nirāḍi alifu laki	niradhi alifu laki	
532	138	133	d	نَزَايْدِ كُكْوِتِيَا	nazāı̄di kukwitiyā	nazaydi kukwitiya	
533	139	134	a	اَكَمْوَمْبِيَا مْوَالِيْمُ	akamwambiyā mwālı̄mu	akamwambiya mwalimu	
534	139	134	b	مَمَكُ اَيَفَهَمُ	mamaku ayafahamu	mamaku ayafahamu	
535	139	134	c	كَمْجِبِشَا كَلِيْمُ	kamjibishā kalı̄mu	kamjibisha kalimu	
536	139	134	d	كُوَا سِيَسِكِلِيَا	kuwā siyasikiliyā	kuwa siyasikiliya	
537	140	135	a	اَكَمْوَامْبِيَا نِنْرَ زَكُ	akamwāmbiyā ninra zaku	akamwambiya ninra zaku	
538	140	135	b	كَمْوِلِيْزِ نَمَمَكُ	kamwilı̄zi namamaku	kamwilizi namamaku	
539	140	135	c	اُسِكِيْزِ مَتَمْكُ	usikı̄zi matamku	usikizi matamku	
540	140	135	d	نَيِ تَكَيُ كْوَمْبِيَا	nayi takayu kwambiyā	nayi takayu kwambiya	
541	141	136	a	اَكِسَ هِيُ كَلِيْمَ	akisa hiyu kalı̄ma	akisa hiyu kalima	
542	141	136	b	نَيِ نْدِيَا كَئَنْدَمَ	nayi ndiyā kaandama	nayi ndiya kaandama	
543	141	136	c	مُيُ اُنَ حَلِيْمَمَ	muyu una ḥalı̄mama	muyu una halimama	
544	141	136	d	كْوَا مَمَكِيْ اَكِغِيَا	kwā mamakii akighiyā	kwa mamakii akighiya	
545	142	137	a	كَغِيَ كَوِكَ كِبُ	kaghiya kawika kibu	kaghiya kawika kibu	
546	142	137	b	كْوَ اُپُوْلِ نَثَوَابُ	kwa upūli nathawābu	kwa upuli nathawabu	
547	142	137	c	مَمَكِيْ كَتَعَجَبُ	mamakii kataʿajabu	mamakii kataajabu	
548	142	137	d	جَعْفَارِ اَكَمْوَامْبِيَا	jaʿfāri akamwāmbiyā	jafari akamwambiya	
549	143	138	a	كَمَ سِوِوِ جَعْفَارِ	kama siwiwi jaʿfāri	kama siwiwi jafari	
550	143	138	b	وَاُتِشُوْ نَجَوُرِ	wautishuu najawuri	wautishuu najawuri	
551	143	138	c	هُغِيَ كَمَ كْوَا سِرِ	hughiya kama kwā siri	hughiya kama kwa siri	
552	143	138	d	مْتُا اَمِزُكِمْبِيَا	mtū amizukimbiyā	mtu amizukimbiya	
553	144	139	a	نَصِيْرِ اَتَمْكِيْ	naṣı̄ri atamkii	nasiri atamkii	
554	144	139	b	نِيْرُيِ كِنُنَ ػَكِ	nı̄ruyi kinuna kʲaki	niruyi kinuna chaki	
555	144	139	c	عَيْنِ يَمَتُ يَكِ	ʿayni yamatu yaki	ayni yamatu yaki	
556	144	139	d	هَتَكِ كُتْوَاغَلِيَا	hataki kutwāghaliyā	hataki kutwaghaliya	
557	145	140	a	اِوِ مَمَا سِوُظِيْكِ	iwi mamā siwuẓı̄ki	iwi mama siwudhiki	
558	145	140	b	تَكْوَامْبِيَ حُجَ يَكِ	takwāmbiya ḥuja yaki	takwambiya huja yaki	
559	145	140	c	يِوُ اُنَ مْبُوْزِ وَاكِ	yiwu una mbūzi wāki	yiwu una mbuzi waki	
560	145	140	d	وَوِلِ وَمِپُتِيَا	wawili wamiputiyā	wawili wamiputiya	
561	146	141	a	وَامِتُكَا صَافُوْنِ	wāmitukā ṣāfūni	wamituka safuni	
562	146	141	b	مِوَاتَنْڠَ حَوَاوُنِ	miwātanga ḥawāwuni	miwatanga hawawuni	
563	146	141	c	كِسَ اَتُوْكَ مْوِتُنِ	kisa atūka mwituni	kisa atuka mwituni	
564	146	141	d	يُوَا نِكَلِ لَنْدِيَا	yuwā nikali landiyā	yuwa nikali landiya	
565	147	142	a	اَكَيْنُكَ جَعْفَارِ	akaynuka jaʿfāri	akaynuka jafari	
566	147	142	b	اَكَمْپِجَ نَصِيْرِا	akampija naṣı̄rī	akampija nasiri	
567	147	142	c	زِتَكُتُكَ جَوُرِ	zitakutuka jawuri	zitakutuka jawuri	
568	147	142	d	يِوُ نِكِكْوَاغَلِيَا	yiwu nikikwāghaliyā	yiwu nikikwaghaliya	
569	148	143	a	حَپُ مَمَ اسِكِيْرِ	ḥapu mama āsikı̄ri	hapu mama asikiri	
570	148	143	b	كَمْشِيْكَ جَعْفَارِ	kamshı̄ka jaʿfāri	kamshika jafari	
571	148	143	c	اِكِوَا نِمْبَصِيْرِ	ikiwā nimbaṣı̄ri	ikiwa nimbasiri	
572	148	143	d	هَيُ حَڠَلِيْكْوَمْبِيَا	hayu ḥagalı̄kwambiyā	hayu hagalikwambiya	
573	149	144	a	نَصِيْرِ نِرُيَكُ	naṣı̄ri niruyaku	nasiri niruyaku	
574	149	144	b	مْوَانَغُ مْتُتُ وَاكُا	mwānaghu mtutu wākū	mwanaghu mtutu waku	
575	149	144	c	كِسَ نِعَوْنِ يَكُا	kisa niʿawni yakū	kisa niauni yaku	
576	149	144	d	وَتَ كُمْتُكُلِيْيَا	wata kumtukulı̄yā	wata kumtukuliya	
577	150	145	a	اَلِئِنَمِيَا تِيْنِ	aliinamiyā tı̄ni	aliinamiya tini	
578	150	145	b	اَكِوُلِزْوَا هَنِيْنِ	akiwulizwā hanı̄ni	akiwulizwa hanini	
579	150	145	c	يَمِكُپَتَ مْوِنْدَانِ	yamikupata mwindāni	yamikupata mwindani	
580	150	145	d	حَيُ نِمِزُكْوَامْبِيَا	ḥayu nimizukwāmbiyā	hayu nimizukwambiya	
581	151	146	a	هَپُ مَمَكِ اَجِبُ	hapu mamaki ajibu	hapu mamaki ajibu	
582	151	146	b	نَصِيْرِ حَتَعَدَبُ	naṣı̄ri ḥataʿadabu	nasiri hataadabu	
583	151	146	c	كِوَا وِوِ نِهَرَابُ	kiwā wiwi niharābu	kiwa wiwi niharabu	
584	151	146	d	نَمِ نِيُوَا طِبِيَا	nami niyuwā ṭibiyā	nami niyuwa tibiya	
585	152	147	a	نَتَكَ زَاكُ خَبَرِ	nataka zāku khabari	nataka zaku habari	
586	152	147	b	حَبَا نِپَ جَعْفَارِ	ḥabā nipa jaʿfāri	haba nipa jafari	
587	152	147	c	اُوْسُ اُسِمِمِ حَرِ	ūsu usimimi ḥari	usu usimimi hari	
588	152	147	d	سُرَا زِمِكُپُتِايَا	surā zimikuputiāyā	sura zimikuputiaya	
589	153	148	a	جَعْفَارِ كَبَيِنِ	jaʿfāri kabayini	jafari kabayini	
590	153	148	b	وَتَكَ خَبَارِ ڠَنِ	wataka khabāri gani	wataka habari gani	
591	153	148	c	نِكْوَامْبِيِ لُوْغَ ڠَنِ	nikwāmbiyi lūgha gani	nikwambiyi lugha gani	
592	153	148	d	كْوَاكُ اِوِ نِمْپِيَا	kwāku iwi nimpiyā	kwaku iwi nimpiya	
593	154	149	a	كِكْوَامْبِيَ كِعَرَبُ	kikwāmbiya kiʿarabu	kikwambiya kiarabu	
594	154	149	b	نَيُوَا اُتَنِ جِبُ	nayuwā utani jibu	nayuwa utani jibu	
595	154	149	c	تِنَ نَوُنَ عَجَبُ	tina nawuna ʿajabu	tina nawuna ajabu	
596	154	149	d	مِمِ مِنْيِ كُكْوَمْبِيَا	mimi minyi kukwambiyā	mimi minyi kukwambiya	
597	155	150	a	كِكُوُلِزَ اَلِكُ	kikuwuliza aliku	kikuwuliza aliku	
598	155	150	b	بَبَا هُنَمْبِيَا هَكُ	babā hunambiyā haku	baba hunambiya haku	
599	155	150	c	تَنْغُ نِنَا مِمْبَ يَكُ	tanghu ninā mimba yaku	tanghu nina mimba yaku	
600	155	150	d	اَلِفَرِقِ دُنِيَا	alifariqi duniyā	alifariqi duniya	
601	156	151	a	كِكْوَامْبِيَا نِمُوِنِ	kikwāmbiyā nimuwini	kikwambiya nimuwini	
602	156	151	b	اُتَغِوُزَا مَغِيْنِ	utaghiwuzā maghı̄ni	utaghiwuza maghini	
603	156	151	c	اُتَنَمْبِيَا وَفِيْنِ	utanambiyā wafı̄ni	utanambiya wafini	
604	156	151	d	خِرِ كُيْنْمَلِيَ	khiri kuynmaliya	hiri kuynmaliya	
605	157	152	a	وِوِ حُيُوَا فَرِسِ	wiwi ḥuyuwā farisi	wiwi huyuwa farisi	
606	157	152	b	وَلَا مَكَ حُكُيِسِ	walā maka ḥukuyisi	wala maka hukuyisi	
607	157	152	c	وِنْرِ وَاپِ مَجْلِسِ	winri wāpi majlisi	winri wapi majlisi	
608	157	152	d	اُكَمُوُنَ عَلِيَا	ukamuwuna ʿaliyā	ukamuwuna aliya	
609	158	153	a	جَعْفَارِ كَبَيَنِ	jaʿfāri kabayani	jafari kabayani	
610	158	153	b	تُمِوُنَنَ مْوِتُنِ	tumiwunana mwituni	tumiwunana mwituni	
611	158	153	c	صِفَا زَاكِ مُعَيَاَنِ	ṣifā zāki muʿayaani	sifa zaki muayaani	
612	158	153	d	اُكِتَكَ تَكْوَمْبِيَا	ukitaka takwambiyā	ukitaka takwambiya	
613	159	154	a	نِسِكِزَا نَرَادِيْدِ	nisikizā narādı̄di	nisikiza naradidi	
614	159	154	b	كِوَ سِيُ اُنِرُوْدِا	kiwa siyu unirūdī	kiwa siyu unirudi	
615	159	154	c	كِيْمُ ػَكِ هَكِزِيْدِ	kı̄mu kʲaki hakizı̄di	kimu chaki hakizidi	
616	159	154	d	كَمَ ػَنْغُ اَغَلِيَا	kama kʲanghu aghaliyā	kama changhu aghaliya	
617	160	155	a	نَلَپِلِ مْبَيَنِ	nalapili mbayani	nalapili mbayani	
618	160	155	b	نْيِيْ زَاكِ زَا كِطَنِ	nyii zāki zā kiṭani	nyii zaki za kitani	
619	160	155	c	هَكُمِيَا اُپَاءَانِ	hakumiyā upaāni	hakumiya upaani	
620	160	155	d	نَكَمَ سِيُ نَمْبِيَا	nakama siyu nambiyā	nakama siyu nambiya	
621	161	156	a	نَلَتَتُ اُفَهَمُ	nalatatu ufahamu	nalatatu ufahamu	
622	161	156	b	اُوْنَ تُنْدُ يَكُزِيْمُ	ūna tundu yakuzı̄mu	una tundu yakuzimu	
623	161	156	c	صِفَا زَكِ زِمِتِمُ	ṣifā zaki zimitimu	sifa zaki zimitimu	
624	161	156	d	نِحِزُوْ نِمِكْوَمْبِيَا	niḥizuu nimikwambiyā	nihizuu nimikwambiya	
625	162	157	a	نِرَاءُفُ وَ مَنِيْنُ	niraufu wa manı̄nu	niraufu wa maninu	
626	162	157	b	كِسَ نِجَڠِنَ مْنُ	kisa nijagina mnu	kisa nijagina mnu	
627	162	157	c	نَوْكِتَكَ مْفَنُ	nawkitaka mfanu	naukitaka mfanu	
628	162	157	d	هُوْنُ نِمْكُپِجِيَا	hūnu nimkupijiyā	hunu nimkupijiya	
629	163	158	a	هَيُ اُنَمْبِيَوُ	hayu unambiyawu	hayu unambiyawu	
630	163	158	b	نِكْوِيْلِ نْرِيُ يَليْوُ	nikwı̄li nriyu yalı̄wu	nikwili nriyu yaliwu	
631	163	158	c	نِپَ جِنْسِ يَوِوِ	nipa jinsi yawiwi	nipa jinsi yawiwi	
632	163	158	d	هَتَا كُمْفَهَمِيْايَا	hatā kumfahamiyāyā	hata kumfahamiyaya	
633	164	159	a	تَكُپَ تَنْڠُ اَوَالِ	takupa tangu awāli	takupa tangu awali	
634	164	159	b	هِكِ ػَكَ نِثَقِيْلِ	hiki kʲaka nithaqı̄li	hiki chaka nithaqili	
635	164	159	c	كِتَڠَ مَئِ نِبَلِ	kitaga mai nibali	kitaga mai nibali	
636	164	159	d	بِادِي كِزِعِيْيَا	biādii kiziʿı̄yā	biadii kiziiya	
637	165	160	a	صَدِقِ يَنْڠُ قَوْلِ	ṣadiqi yangu qawli	sadiqi yangu qauli	
638	165	160	b	نِمِتَنْڠَ بَرَا هِيْلِ	nimitanga barā hı̄li	nimitanga bara hili	
639	165	160	c	مَاءِ هَكُوْنَ مَهَلِ	mai hakūna mahali	mai hakuna mahali	
640	165	160	d	حِرَا كِوَا زِنَدِيَ	ḥirā kiwā zinadiya	hira kiwa zinadiya	
641	166	161	a	حِنْرَا كِوَزَا مُويُنِ	ḥinrā kiwazā mūyuni	hinra kiwaza muyuni	
642	166	161	b	نِيْ نِدِ جَنِبُ ڠَنِ	nii nidi janibu gani	nii nidi janibu gani	
643	166	161	c	كَوُاُنَ وَتُ مْوِتُنِ	kawuuna watu mwituni	kawuuna watu mwituni	
644	166	161	d	وَتَتُ وِنْدِمِ نْدِيا	watatu windimi ndiyā	watatu windimi ndiya	
645	167	162	a	كَوَاؤُنَ وَكُ مْبَلِ	kawauna waku mbali	kawauna waku mbali	
646	167	162	b	كَنِيْنَ تَيْمُهُلِ	kanı̄na taymuhuli	kanina taymuhuli	
647	167	162	c	مَرَا نِكَوَاسَئِلِ	marā nikawāsaili	mara nikawasaili	
648	167	162	d	پِنْيِ مَاءِ كُنَمْبِيَا	pinyi mai kunambiyā	pinyi mai kunambiya	
649	168	163	a	يَانَ كِڤُلِ كَبِسَ	yāna kivuli kabisa	yana kivuli kabisa	
650	168	163	b	هَتَ هَوَاكُيْيِسَا	hata hawākuyyisā	hata hawakuyyisa	
651	168	163	c	نِوَائِنِ وَاكِتُسَا	niwaini wākitusā	niwaini wakitusa	
652	168	163	d	سَلُامُ كَوَاپِسِيَا	saluāmu kawāpisiyā	saluamu kawapisiya	
653	169	164	a	كَمبَ مْوِنْدَاپِ مَتِتِ	kamba mwindāpi matiti	kamba mwindapi matiti	
654	169	164	b	هِكِ نِكِپُنْغُ نَنْتِ	hiki nikipunghu nanti	hiki nikipunghu nanti	
655	169	164	c	حِلَ نْدُؤُنِ مُكِتِ	ḥila nduuni mukiti	hila nduuni mukiti	
656	169	164	d	لِپَتِ كُپِرُكِيْيَا	lipati kupirukı̄yā	lipati kupirukiya	
657	170	165	a	نَهِلِ يُوَا سِزُوْرِ	nahili yuwā sizūri	nahili yuwa sizuri	
658	170	165	b	كُلَنْدَمَ نِخَطَارِ	kulandama nikhaṭāri	kulandama nihatari	
659	170	165	c	وَلَا زِوُ سِأَخِيْرِ	walā ziwu siakhı̄ri	wala ziwu siahiri	
660	170	165	d	كَبَ حُتُسِكِلِيْيَا	kaba ḥutusikilı̄yā	kaba hutusikiliya	
661	171	166	a	وَكِسِلِيْيَ كَلِيْمَ	wakisilı̄ya kalı̄ma	wakisiliya kalima	
662	171	166	b	وَكَزُنْغُكِيَ نْيُمَ	wakazunghukiya nyuma	wakazunghukiya nyuma	
663	171	166	c	وَاوِلِ وَاكَسِمَمَ	wāwili wākasimama	wawili wakasimama	
664	171	166	d	مْمُيَ كَنِئِلِيَا	mmuya kaniiliyā	mmuya kaniiliya	
665	172	167	a	اَكِيَ اَكَبَيِنِ	akiya akabayini	akiya akabayini	
666	172	167	b	كَنِوُلِزَا نِنْيَنِ	kaniwulizā ninyani	kaniwuliza ninyani	
667	172	167	c	اَوْ وَتُتَكِيَنِ	aw watutakiyani	au watutakiyani	
668	172	167	d	خَطَرِ كُتُخُفِيَا	khaṭari kutukhufiyā	hatari kutuhufiya	
669	173	168	a	سِسِ حَتُشِكِ يَكُ	sisi ḥatushiki yaku	sisi hatushiki yaku	
670	173	168	b	وَلَوُ سِنْرُنْغُ زَاكُ	walawu sinrunghu zāku	walawu sinrunghu zaku	
671	173	168	c	كَمَ حَيُ مَتَمْكُ	kama ḥayu matamku	kama hayu matamku	
672	173	168	d	هَيَپَسِ كُتْوَامْبِيَا	hayapasi kutwāmbiyā	hayapasi kutwambiya	
673	174	169	a	وِوِ نِمْوَانَ اَدَامُ	wiwi nimwāna adāmu	wiwi nimwana adamu	
674	174	169	b	نِمْپُتِزَا قَوْامُ	nimputizā qawāmu	nimputiza qawamu	
675	174	169	c	تْوَامْبِيِ تُكُفَهَمُ	twāmbiyi tukufahamu	twambiyi tukufahamu	
676	174	169	d	كْوَانْدَ تُيُوِ طَبِيَا	kwānda tuyuwi ṭabiyā	kwanda tuyuwi tabiya	
677	175	170	a	كَوَاجِبِشَ قَوْلِ	kawājibisha qawli	kawajibisha qauli	
678	175	170	b	نِدِيْنِ يَكِ رَسُوْلِ	nidı̄ni yaki rasūli	nidini yaki rasuli	
679	175	170	c	كِوَا وِوِ نِجُهَلِ	kiwā wiwi nijuhali	kiwa wiwi nijuhali	
680	175	170	d	مْبِيْ زَانْغُ نِپُكِيَا	mbii zānghu nipukiyā	mbii zanghu nipukiya	
681	176	171	a	كَسِكِيَ حُفَصِيْرِ	kasikiya ḥufaṣı̄ri	kasikiya hufasiri	
682	176	171	b	حُمْوِتَ اَبُوْ بَكَرَِا	ḥumwita abuu bakariā	humwita abuu bakaria	
683	176	171	c	اُنْدُ وِوِ نَزُبِيْرِ	undu wiwi nazubı̄ri	undu wiwi nazubiri	
684	176	171	d	وُوَاوِلِ وَكَيَا	wuwāwili wakayā	wuwawili wakaya	
685	177	172	a	وَكِيَ وَكَسِيْمَامَ	wakiya wakası̄māma	wakiya wakasimama	
686	177	172	b	اُسُوْ وَاكِنِتِيْزَامَ	usuu wākinitı̄zāma	usuu wakinitizama	
687	177	172	c	كَبَ مُمِفَهَمَ	kaba mumifahama	kaba mumifahama	
688	177	172	d	وَاجِهِ وَاكِ نَبِيَا	wājihi wāki nabiyā	wajihi waki nabiya	
689	178	173	a	حُسِكِيَ هُمْجِبُ	ḥusikiya humjibu	husikiya humjibu	
690	178	173	b	عَلِيْ بُنُ خَطَبُ	ʿalii bunu khaṭabu	alii bunu hatabu	
691	178	173	c	مَمَ وَمِتَعَجَبُ	mama wamitaʿajabu	mama wamitaajabu	
692	178	173	d	كْوَا وُتِ هُنَغَلِيَا	kwā wuti hunaghaliyā	kwa wuti hunaghaliya	
693	179	174	a	هُيُ نِاَبُوْ بَكَرِ	huyu niabuu bakari	huyu niabuu bakari	
694	179	174	b	نَحُيُ حِتْوَا زُبِيْرِا	naḥuyu ḥitwā zubı̄rī	nahuyu hitwa zubiri	
695	179	174	c	نَوِ لَكُ هُفَصِيْرِ	nawi laku hufaṣı̄ri	nawi laku hufasiri	
696	179	174	d	اِنَ نِكَلِسِكِيْيَا	ina nikalisikı̄yā	ina nikalisikiya	
697	180	175	a	اَكَتَمْكَ زَوْجِ	akatamka zawji	akatamka zauji	
698	180	175	b	مِمِ حِتْوَا اَزْوَاجِ	mimi ḥitwā azwāji	mimi hitwa azwaji	
699	180	175	c	نَمِ سَسَا نَتَرَاجِ	nami sasā natarāji	nami sasa nataraji	
700	180	175	d	نَاءِنَ لَكُ نَمْبِيَ	naina laku nambiya	naina laku nambiya	
701	181	176	a	كَوَمْبِيَ نِمِكِيْرِا	kawambiya nimikı̄rī	kawambiya nimikiri	
702	181	176	b	نَمِ اِنَ كَفَصِيْرِا	nami ina kafaṣı̄rī	nami ina kafasiri	
703	181	176	c	مِمِ حِتْوَا جَعْفَارِ	mimi ḥitwā jaʿfāri	mimi hitwa jafari	
704	181	176	d	وَ مَوْلَنَا عَلِيْيَا	wa mawlanā ʿalı̄yā	wa maulana aliya	
705	182	177	a	وَنِوُزَا تَرَاتِيْبُ	waniwuzā tarātı̄bu	waniwuza taratibu	
706	182	177	b	وِنْرَاوُ وَپِ غَيْبُ	winrāwu wapi ghaybu	winrawu wapi ghaybu	
707	182	177	c	حَپُ مَمَا كَوَاجِبُ	ḥapu mamā kawājibu	hapu mama kawajibu	
708	182	177	d	نِتَكَلُ كَوَامْبِيَا	nitakalu kawāmbiyā	nitakalu kawambiya	
709	183	178	a	هُتَڠَا مَاءِ بَرَانِ	hutagā mai barāni	hutaga mai barani	
710	183	178	b	نِمٖػُوْكَ سِيَوْنِ	nimekʲūka siyawni	nimechuka siyauni	
711	183	178	c	بُزِ وَامِلِشَ يَانِ	buzi wāmilisha yāni	buzi wamilisha yani	
712	183	178	d	سَسَا كْوَ نْيُتَ حُلِيَا	sasā kwa nyuta ḥuliyā	sasa kwa nyuta huliya	
713	184	179	a	هُكُوْ مُمِزُكُپِةَ	hukuu mumizukupiẗa	hukuu mumizukupita	
714	184	179	b	مَيِ هَمُكُيَكُتَ	mayi hamukuyakuta	mayi hamukuyakuta	
715	184	179	c	مْبُزِ وَنْغُ وَنَا نْيُتَ	mbuzi wanghu wanā nyuta	mbuzi wanghu wana nyuta	
716	184	179	d	كَمَ مْوَايُوَا نَمْبِيَا	kama mwāyuwā nambiyā	kama mwayuwa nambiya	
717	185	180	a	وَاكَنِجِبُ قَوْلِيْ	wākanijibu qawlii	wakanijibu qaulii	
718	185	180	b	كَبَ كِسِمَ سِمْبَلِ	kaba kisima simbali	kaba kisima simbali	
719	185	180	c	لَكِيْ نِ كِنَ ثَقِيْلِ	lakii ni kina thaqı̄li	lakii ni kina thaqili	
720	185	180	d	رُوْحُ نْيِغِ هُپُتِيَا	rūḥu nyighi huputiyā	ruhu nyighi huputiya	
721	186	181	a	حَيُ مَيِ نِمَتَمُ	ḥayu mayi nimatamu	hayu mayi nimatamu	
722	186	181	b	مْفَنُ وَ زَمْزَامُ	mfanu wa zamzāmu	mfanu wa zamzamu	
723	186	181	c	لَكِنِ سِسِا فَهَمُ	lakini sisī fahamu	lakini sisi fahamu	
724	186	181	d	هُػَ كُكِكُرُبِيَا	hukʲa kukikurubiyā	hucha kukikurubiya	
725	187	182	a	اِكِوَا اُمِخِتَارِ	ikiwā umikhitāri	ikiwa umihitari	
726	187	182	b	كُكُپِكَ تُطَيَرِا	kukupika tuṭayarī	kukupika tutayari	
727	187	182	c	وَلَا اُسِتُفَصِيْرِ	walā usitufaṣı̄ri	wala usitufasiri	
728	187	182	d	نِسِسِ تْوَلُكْوَامْبِيَا	nisisi twalukwāmbiyā	nisisi twalukwambiya	
729	188	183	a	وَاكَنِوُنْيَ اُسِيْةَ	wākaniwunya usı̄ẗa	wakaniwunya usita	
730	188	183	b	حَپُ نْدِيَا كَفُوَاةَ	ḥapu ndiyā kafuwāẗa	hapu ndiya kafuwata	
731	188	183	c	كْوَا مْوِتُنِ واكَپِةَ	kwā mwituni wākapiẗa	kwa mwituni wakapita	
732	188	183	d	مْبِيِ وَاكَنِتُلِيَا	mbiyi wākanituliyā	mbiyi wakanituliya	
733	189	184	a	كِكُرُبِيَ كِسِمَ	kikurubiya kisima	kikurubiya kisima	
734	189	184	b	لِپُوْ بَوُ كَسُكُمَ	lipuu bawu kasukuma	lipuu bawu kasukuma	
735	189	184	c	كْوَا كِوَاڤُ كَتَزَامَ	kwā kiwāvu katazāma	kwa kiwavu katazama	
736	189	184	d	نَوَوُ حُنَغَلِيْيَا	nawawu ḥunaghalı̄yā	nawawu hunaghaliya	
737	190	185	a	جَعْفَرِ اَكَتَمْكَ	jaʿfari akatamka	jafari akatamka	
738	190	185	b	اَبُوْ بَكَرِ سِشُتُكِ	abuu bakari sishutuki	abuu bakari sishutuki	
739	190	185	c	كِسِمَ سِكِفِنِكِ	kisima sikifiniki	kisima sikifiniki	
740	190	185	d	نِكَرُوْدِ كُكْوَمْبِيَا	nikarūdi kukwambiyā	nikarudi kukwambiya	
741	192	186	a	حَتَ كُكِپَبَوُكَ	ḥata kukipabawuka	hata kukipabawuka	
742	192	186	b	نِنَا فُرَحَا كِتُكَ	ninā furaḥā kituka	nina furaha kituka	
743	192	186	c	مَلِشُوْنِ كِوَاپِكَ	malishūni kiwāpika	malishuni kiwapika	
744	192	186	d	مْوِدَا وَيُوَا كُوِنِيَا	mwidā wayuwā kuwiniyā	mwida wayuwa kuwiniya	
745	193	187	a	اَوَلِ يَا سَعَ سِةَ	awali yā saʿa siẗa	awali ya saa sita	
746	193	187	b	حَپُ مْبُزِ كْوَاسُةَ	ḥapu mbuzi kwāsuẗa	hapu mbuzi kwasuta	
747	193	187	c	نَوُنَ وَمِنِيْوَاتَ	nawuna waminı̄wāta	nawuna waminiwata	
748	193	187	d	هُتِيْزَا نَكُكِمْبِيَا	hutı̄zā nakukimbiyā	hutiza nakukimbiya	
749	194	188	a	كَوَمْبِيَا اِنِرَانِ	kawambiyā inirāni	kawambiya inirani	
750	194	188	b	مْوَاكُيُوَا كِسِمَانِ	mwākuyuwā kisimāni	mwakuyuwa kisimani	
751	194	188	c	لَقِينِ هُوْفَلِيَنِ	laqı̄ni hūfaliyani	laqini hufaliyani	
752	194	188	d	نِمِمِ كُوَاتِكِيْيَا	nimimi kuwātikı̄yā	nimimi kuwatikiya	
753	195	189	a	وَاكِرَا وَكَسِمَامَ	wākirā wakasimāma	wakira wakasimama	
754	195	189	b	كِفِنِشِيْوَ كِسِمَ	kifinishı̄wa kisima	kifinishiwa kisima	
755	195	189	c	بَاوُ نِكَلِسُكُمَ	bāwu nikalisukuma	bawu nikalisukuma	
756	195	189	d	نِوُنِ مْتُ اَكِيَا	niwuni mtu akiyā	niwuni mtu akiya	
757	196	190	a	مْكُوْنُ اَكَنِشِكَ	mkūnu akanishika	mkunu akanishika	
758	196	190	b	مَئِ سِيَايَتِكَ	mai siyāyatika	mai siyayatika	
759	196	190	c	مَمَ حَپُ كَتَمْكَ	mama ḥapu katamka	mama hapu katamka	
760	196	190	d	يَغَضَبُ كَمْوَمْبِيَا	yaghaḍabu kamwambiyā	yaghadhabu kamwambiya	
761	197	191	a	نِكَحِمِدِ كْوَا مْغُ	nikaḥimidi kwā mghu	nikahimidi kwa mghu	
762	197	191	b	كَمْتَيَا نَا بَبَنْغُ	kamtayā nā babanghu	kamtaya na babanghu	
763	197	191	c	كَوُلِزَا پِتِ يَنْغُ	kawulizā piti yanghu	kawuliza piti yanghu	
764	197	191	d	ػَنْدَانِ كَمْڤُلِيَا	kʲandāni kamvuliyā	chandani kamvuliya	
765	198	192	a	پِتِ اَكَيْتَزَامَ	piti akaytazāma	piti akaytazama	
766	198	192	b	كَپِوْجَا نَحَلِمَمَ	kapiwjā naḥalimama	kapiuja nahalimama	
767	198	192	c	كِسَ كَئِتَ كَلِيْمَ	kisa kaita kalı̄ma	kisa kaita kalima	
768	198	192	d	اِنَ نَلِيْتَرَاجِيْيَا	ina nalı̄tarājı̄yā	ina nalitarajiya	
769	199	193	a	اِنَ اَلِيْپُ اُلِيْزَا	ina alı̄pu ulı̄zā	ina alipu uliza	
770	199	193	b	نِسِمْوَمْبِيِ كَيْزَا	nisimwambiyi kayzā	nisimwambiyi kayza	
771	199	193	c	اَكَنِپَ مِوُجِيْزَا	akanipa miwujı̄zā	akanipa miwujiza	
772	199	193	d	يَپِتِ كُنِتْوَاَلِيْيَا	yapiti kunitwaalı̄yā	yapiti kunitwaaliya	
773	200	194	a	مِنِكِيْزَا سُرَ زَاكُ	minikı̄zā sura zāku	minikiza sura zaku	
774	200	194	b	نَصِيْفَا زَنْيُبَا يَكُ	naṣı̄fā zanyubā yaku	nasifa zanyuba yaku	
775	200	194	c	حَپُ كَيْتَ تَمْكُ	ḥapu kayta tamku	hapu kayta tamku	
776	200	194	d	اِنَ لَنْغُ كَمْوَامْبِيَا	ina langhu kamwāmbiyā	ina langhu kamwambiya	
777	201	195	a	نِكَمْوَمْبِيَا نَنْيَّكَ	nikamwambiyā nanı̄yaka	nikamwambiya naniyaka	
778	201	195	b	نِزَزِوِوُ حَقِيْكَ	nizaziwiwu ḥaqı̄ka	nizaziwiwu haqika	
779	201	195	c	نِتِسِيَا زَسُوْ شَكَ	nitisiyā zasuu shaka	nitisiya zasuu shaka	
780	201	195	d	نَوِوِ تَارِخِ نِتِيْيَا	nawiwi tārikhi nitı̄yā	nawiwi tarihi nitiya	
781	202	196	a	خَبَرِ زَانْغُ تِمَمُ	khabari zānghu timamu	habari zanghu timamu	
782	202	196	b	نِمِكُپَ نِفَهَمُ	nimikupa nifahamu	nimikupa nifahamu	
783	202	196	c	تِنَا نَكَمْوَالِيْمُ	tinā nakamwālı̄mu	tina nakamwalimu	
784	202	196	d	نِمِرُدِ كُمْوَمْبِيَا	nimirudi kumwambiyā	nimirudi kumwambiya	
785	203	197	a	نِمِمُوَاڠَ كْوَا حِرِ	nimimuwāga kwā ḥiri	nimimuwaga kwa hiri	
786	203	197	b	اَصُبُحِ نِسَفَارِ	aṣubuḥi nisafāri	asubuhi nisafari	
787	203	197	c	نِوُمْبِيَ كْوَ جَبَارِ	niwumbiya kwa jabāri	niwumbiya kwa jabari	
788	203	197	d	نَرَضِ كُنِوِلِيَا	naraḍi kuniwiliyā	naradhi kuniwiliya	
789	204	198	a	تِنَا نِوُمْبِيَ مْغُ	tinā niwumbiya mghu	tina niwumbiya mghu	
790	204	198	b	تُپِنْدَانِ نَا بَبَنْغُ	tupindāni nā babanghu	tupindani na babanghu	
791	204	198	c	نَمِكِسَا مُيِ وَنْغُ	namikisā muyi wanghu	namikisa muyi wanghu	
792	204	198	d	تَكُيَ كُوَانْغَلِيَا	takuya kuwānghaliyā	takuya kuwanghaliya	
793	205	199	a	اَكِسِكِيَ قَوُلِ	akisikiya qawuli	akisikiya qawuli	
794	205	199	b	مَمَكِ اَسِحِمِلِ	mamaki asiḥimili	mamaki asihimili	
795	205	199	c	كَتَرَادَدِ عَقِيْلِ	katarādadi ʿaqı̄li	kataradadi aqili	
796	205	199	d	كْوَا مَكُنْرِّ كَيْتِيَا	kwā makunrri kaytiyā	kwa makunrri kaytiya	
797	206	200	a	كَيْتُرَا كَيَنْغُشَا	kayturā kayanghushā	kaytura kayanghusha	
798	206	200	b	تِيَتِ اَكِجِيْرُشَا	tiyati akijı̄rushā	tiyati akijirusha	
799	206	200	c	حَتَ غُوْ كَمْڤِيْشَا	ḥata ghuu kamvı̄shā	hata ghuu kamvisha	
800	206	200	d	هُكُ اَكِمْسُمِيْيَا	huku akimsumı̄yā	huku akimsumiya	
801	207	201	a	أَلِپُ پَتَ فَهَمُ	alipu pata fahamu	alipu pata fahamu	
802	207	201	b	كُمُحِمِدِ كَرِيْمُ	kumuḥimidi karı̄mu	kumuhimidi karimu	
803	207	201	c	كِسَ اَكَتَكَلَمُ	kisa akatakalamu	kisa akatakalamu	
804	207	201	d	مْغُ اَكَمُوُمْبِيَا	mghu akamuwumbiyā	mghu akamuwumbiya	
805	208	202	a	يَا اللّٰهُ مُوْلَ وَننْغُ	yā llähu mūla wannghu	ya llahu mula wannghu	
806	208	202	b	نِنُوْصُرِيَ مْوَنَڠُ	ninūṣuriya mwanagu	ninusuriya mwanagu	
807	208	202	c	نَوَنَ وَ وِنْدَانِ وَنْغُ	nawana wa windāni wanghu	nawana wa windani wanghu	
808	208	202	d	حِفُظِنِ نِتِلِيَا	ḥifuẓini nitiliyā	hifudhini nitiliya	
809	209	203	a	اِنِرَا هُوِ مَظَرَا	inirā huwi maẓarā	inira huwi madhara	
810	209	203	b	نِرَضِ اَلِفُ مَرَا	niraḍi alifu marā	niradhi alifu mara	
811	209	203	c	نَوِ اِوَا نَفِكِيْرَا	nawi iwā nafikı̄rā	nawi iwa nafikira	
812	209	203	d	مُوْيُ نِمِكُرِضِيْيَا	mūyu nimikuriḍı̄yā	muyu nimikuridhiya	
813	210	204	a	مِمِ اُيَپُ نِوُضِ	mimi uyapu niwuḍi	mimi uyapu niwudhi	
814	210	204	b	سِتُتُكُوَا غَيْضِيْ	situtukuwā ghayḍii	situtukuwa ghaydhii	
815	210	204	c	اِكِوَا وَتَكَ رَاضِ	ikiwā wataka rāḍi	ikiwa wataka radhi	
816	210	204	d	نَكْوَا عَلِيْ زِغِيَ	nakwā ʿalii zighiya	nakwa alii zighiya	
817	211	205	a	اُػِنْرَا اُوِ نْيَّوُنِ	ukʲinrā uwi nı̄yawuni	uchinra uwi niyawuni	
818	211	205	b	كْوَا بَبَكُ اُوِ تِيْنِ	kwā babaku uwi tı̄ni	kwa babaku uwi tini	
819	211	205	c	نَأَتَكَلُ بَئِيْنِ	naatakalu baı̄ni	naatakalu baini	
820	211	205	d	كْوَاكُ لِوِ مَرِضِيَا	kwāku liwi mariḍiyā	kwaku liwi maridhiya	
821	212	206	a	اُكِسَ اُوِ لِيْسَانِ	ukisa uwi lı̄sāni	ukisa uwi lisani	
822	212	206	b	كْوَا رُزَكُ نَوِنْدَانِ	kwā ruzaku nawindāni	kwa ruzaku nawindani	
823	212	206	c	فُوَاتَ تُمْوَا امِيْنِ	fuwāta tumwā āmı̄ni	fuwata tumwa amini	
824	212	206	d	وَدَامِ يَكِيْ طَبِيَا	wadāmi yakii ṭabiyā	wadami yakii tabiya	
825	213	207	a	نَمْتُمِ مُحَمَّدِا	namtumi muḥammadī	namtumi muhammadi	
826	213	207	b	حَنَا بُدِ كُكُزِيْدِا	ḥanā budi kukuzı̄dī	hana budi kukuzidi	
827	213	207	c	هَا اللّٰه هَا اللّٰه جِتِهَدِ	hā lläh hā lläh jitihadi	ha llah ha llah jitihadi	
828	213	207	d	ڠَاءَ اُپَتِ وَاصِيْيَا	gaa upati wāṣı̄yā	gaa upati wasiya	
829	214	208	a	مْوَانَ بِنْتِ حَبِبُ	mwāna binti ḥabibu	mwana binti habibu	
830	214	208	b	كِتِيْ نَيِ كْوَا ثَوَبُ	kitii nayi kwā thawabu	kitii nayi kwa thawabu	
831	214	208	c	كْوَاكِا اُوِ نَعَدَابُ	kwākī uwi naʿadābu	kwaki uwi naadabu	
832	214	208	d	اُطِيْعِ نَكْوَڠُكِيَا	uṭı̄ʿi nakwagukiyā	utii nakwagukiya	
833	215	209	a	كِسَا مَمَ كَفَصِيْرِ	kisā mama kafaṣı̄ri	kisa mama kafasiri	
834	215	209	b	اَكَمْوَمْبِيَا جَعْفَارِ	akamwambiyā jaʿfāri	akamwambiya jafari	
835	215	209	c	اِنْرَا كَوَاڠِا سَفَارِ	inrā kawāgī safāri	inra kawagi safari	
836	215	209	d	اُسِكُ اُسِيَڠِيْيَا	usiku usiyagı̄yā	usiku usiyagiya	
837	216	210	a	كَمُوَاڠِا تِيْتِ يَكُ	kamuwāgī tı̄ti yaku	kamuwagi titi yaku	
838	216	210	b	نَمْكِ وَ مْوَلِمُ وَاكُ	namki wa mwalimu wāku	namki wa mwalimu waku	
839	216	210	c	نَجَمِيْعِ يَوِزَاكُ	najamı̄ʿi yawizāku	najamii yawizaku	
840	216	210	d	كْوَا حِرِ اُكِوَامْبِيَا	kwā ḥiri ukiwāmbiyā	kwa hiri ukiwambiya	
841	217	211	a	كِسَا حَپُ كَيْنُكَ	kisā ḥapu kaynuka	kisa hapu kaynuka	
842	217	211	b	جَعْفَرِ اَكَتُكَ	jaʿfari akatuka	jafari akatuka	
843	217	211	c	كْوَا تِتِ يَكِ كَفِيْكَ	kwā titi yaki kafı̄ka	kwa titi yaki kafika	
844	217	211	d	خَبَرِ اَكَمْوَامْبِيَا	khabari akamwāmbiyā	habari akamwambiya	
845	218	212	a	اَكِنْرَا اَكَنُظُمُ	akinrā akanuẓumu	akinra akanudhumu	
846	218	212	b	كْوَا مْكِ وَا مْوَلِمُ	kwā mki wā mwalimu	kwa mki wa mwalimu	
847	218	212	c	وُتِ كَوَاپَ تِمَامُ	wuti kawāpa timāmu	wuti kawapa timamu	
848	218	212	d	كُلَ نِنُ كَوَمْبِيَا	kula ninu kawambiyā	kula ninu kawambiya	
849	219	213	a	نِمِوَائَڠَ وِنْدَانِ	nimiwaaga windāni	nimiwaaga windani	
850	219	213	b	كُوَامْبِيَ كْوِ حِرِانِ	kuwāmbiya kwi ḥiriāni	kuwambiya kwi hiriani	
851	219	213	c	كْوَ مْغُ نِوُمْبِيَنِ	kwa mghu niwumbiyani	kwa mghu niwumbiyani	
852	219	213	d	نَمِمِ تَوَاُمْبِيَا	namimi tawaumbiyā	namimi tawaumbiya	
853	220	214	a	اِوَ نِ رَضِ نْرُزَانْغُ	iwa ni raḍi nruzānghu	iwa ni radhi nruzanghu	
854	220	214	b	نِنْرَا كِتِ نَبَبَنغُ	ninrā kiti nababanghu	ninra kiti nababanghu	
855	220	214	c	نَحُوْنُ نِمُيِ وَنْغُ	naḥūnu nimuyi wanghu	nahunu nimuyi wanghu	
856	220	214	d	سِنَا بُدِ كُرِجِيْيَا	sinā budi kurijı̄yā	sina budi kurijiya	
857	221	215	a	كَوَاڠَا وِنْدَا نِوَاكِ	kawāgā windā niwāki	kawaga winda niwaki	
858	221	215	b	اَكَرُدِ كُيَ زَاكِ	akarudi kuya zāki	akarudi kuya zaki	
859	221	215	c	اَكَمْوَمْبِيَا مَمَكِيْ	akamwambiyā mamakii	akamwambiya mamakii	
860	221	215	d	فِرَاشَا نِػَنْدِكِيَا	firāshā nikʲandikiyā	firasha nichandikiya	
861	222	216	a	حَپُ مَڠُوْ كَوُشَى	ḥapu maguu kawushay	hapu maguu kawushay	
862	222	216	b	اَلِپُ پَنْرَّا فِرَاشَا	alipu panrrā firāshā	alipu panrra firasha	
863	222	216	c	اَكَمْبَ مَمَا نَمشَا	akamba mamā namshā	akamba mama namsha	
864	222	216	d	كَمَ سِكُفَهَمِيَا	kama sikufahamiyā	kama sikufahamiya	
865	223	217	a	مِمِ كُكُوْ اَكِوِيْكَ	mimi kukuu akiwı̄ka	mimi kukuu akiwika	
866	223	217	b	سِكُ زُتِ هُيْنُكَ	siku zuti huynuka	siku zuti huynuka	
867	223	217	c	اِلَا يِوُ نِمِػُكَ	ilā yiwu nimikʲuka	ila yiwu nimichuka	
868	223	217	d	مَرَا سِتُفَهَمِيَا	marā situfahamiyā	mara situfahamiya	
869	224	218	a	تِنَا نَتَكَ كُتُكَ	tinā nataka kutuka	tina nataka kutuka	
870	224	218	b	سَعَا كُمِ زِكِفِيْكَ	saʿā kumi zikifı̄ka	saa kumi zikifika	
871	224	218	c	هَتَ كُكِپَبَوُكَ	hata kukipabawuka	hata kukipabawuka	
872	224	218	d	نِوِكُ كَتِكَ نْدِيَا	niwiku katika ndiyā	niwiku katika ndiya	
873	225	219	a	اَكَلَلَا كِپُلِيْكَ	akalalā kipulı̄ka	akalala kipulika	
874	225	219	b	كُكُوُ وَ كْوَانْدَ كُوِكَا	kukuwu wa kwānda kuwikā	kukuwu wa kwanda kuwika	
875	225	219	c	مَمَكِ اَكَيْنُوْكَ	mamaki akaynūka	mamaki akaynuka	
876	225	219	d	ػَكُلَ كَمْپِكِيْيَا	kʲakula kampikı̄yā	chakula kampikiya	
877	226	220	a	وَپِيْلِ اَكَفَصِيْرِا	wapı̄li akafaṣı̄rī	wapili akafasiri	
878	226	220	b	كَمْوَامْشَا جَعْفَارِ	kamwāmshā jaʿfāri	kamwamsha jafari	
879	226	220	c	هَيَا نِا ءَلْفَجِيْرِ	hayā nī alfajı̄ri	haya ni alfajiri	
880	226	220	d	صَلَا اِمِسِمَمِيَا	ṣalā imisimamiyā	sala imisimamiya	
881	227	221	a	جَعْفَارِ كَنُظُمُ	jaʿfāri kanuẓumu	jafari kanudhumu	
882	227	221	b	يِوُ سِكُيفَهَمُ	yiwu sikuyfahamu	yiwu sikuyfahamu	
883	227	221	c	حَپُ اَكَكَلِيْمُ	ḥapu akakalı̄mu	hapu akakalimu	
884	227	221	d	اَكَتُكَ هُسِنْدِيَا	akatuka husindiyā	akatuka husindiya	
885	228	222	a	كُوَ اُسُ كْوَا مَكِنِ	kuwa usu kwā makini	kuwa usu kwa makini	
886	228	222	b	نَكِسَ اَكَبَيِنِ	nakisa akabayini	nakisa akabayini	
887	228	222	c	نِنْرَاوُ مْسِكِتِنِ	ninrāwu msikitini	ninrawu msikitini	
888	228	222	d	ناصِرِ نِيَمْشِيَا	nāṣiri niyamshiyā	nasiri niyamshiya	
889	229	223	a	اَكَتُكَ جَعْفَرِ	akatuka jaʿfari	akatuka jafari	
890	229	223	b	اَكِنِرَا كَذِكِرِا	akinirā kadhikirī	akinira kadhikiri	
891	229	223	c	صَلَا يَا الْفَجيْرِ	ṣalā yā ālfajı̄ri	sala ya alfajiri	
892	229	223	d	كْرَ اَكَيْصَلِيَا	kra akayṣaliyā	kra akaysaliya	
893	230	224	a	اَكَرُدِ جَعْفَرِ	akarudi jaʿfari	akarudi jafari	
894	230	224	b	نَػَكُلَ كِطَيَرِا	nakʲakula kiṭayarī	nachakula kitayari	
895	230	224	c	كُلَ نَنْرُيِ نَصِيْرِ	kula nanruyi naṣı̄ri	kula nanruyi nasiri	
896	230	224	d	نَمْوَلِمُ كَتُكِيْيَا	namwalimu katukı̄yā	namwalimu katukiya	
897	231	225	a	وَكَتَغَنْيَ مِكُنُ	wakataghanya mikunu	wakataghanya mikunu	
898	231	225	b	وَكَكِتِ كْوَ مْفَنُ	wakakiti kwa mfanu	wakakiti kwa mfanu	
899	231	225	c	اَكَنِيْنَ نَمَنِيْنُ	akanı̄na namanı̄nu	akanina namaninu	
900	231	225	d	رُيَكِ اَكِمْوَمْبِيَا	ruyaki akimwambiyā	ruyaki akimwambiya	
901	232	226	a	اَكَمْوَمْبِيَا نَصِيْرِ	akamwambiyā naṣı̄ri	akamwambiya nasiri	
902	232	226	b	يِوُ رُيَغُ كْوَا حِرِا	yiwu ruyaghu kwā ḥirī	yiwu ruyaghu kwa hiri	
903	232	226	c	تَكَپُ رُدِ سَفَرِ	takapu rudi safari	takapu rudi safari	
904	232	226	d	تَمَشَا تَكُوِتِيْيَا	tamashā takuwitı̄yā	tamasha takuwitiya	
905	233	227	a	اَكَمْجِبُ اُپِسِ	akamjibu upisi	akamjibu upisi	
906	233	227	b	نِتِيَ نَمِ فَرَاسِ	nitiya nami farāsi	nitiya nami farasi	
907	233	227	c	نْيَّمَ هُيُ سِمُئِسِ	nı̄yama huyu simuisi	niyama huyu simuisi	
908	233	227	d	نَتَكَا كُمْوَغَلِيَا	natakā kumwaghaliyā	nataka kumwaghaliya	
909	234	228	a	كِسَ هَپُ كَتَمْكَ	kisa hapu katamka	kisa hapu katamka	
910	234	228	b	هَيَا مَمَنْڠُ هُتُكَ	hayā mamangu hutuka	haya mamangu hutuka	
911	234	228	c	نَمَمَكِ كَيْنُكَ	namamaki kaynuka	namamaki kaynuka	
912	234	228	d	صَدَاقَ كَمْتُلِيَا	ṣadāqa kamtuliyā	sadaqa kamtuliya	
913	235	229	a	هَپُ مَمَكِ اَپِتَ	hapu mamaki apita	hapu mamaki apita	
914	235	229	b	اَنِنْرِ اَمْفُوَاتَ	aninri amfuwāta	aninri amfuwata	
915	235	229	c	اَكَمْتُپِيْيَ نَمَتُ	akamtupı̄ya namatu	akamtupiya namatu	
916	235	229	d	نَمغُ كُمُوُمْبِيَ	namghu kumuwumbiya	namghu kumuwumbiya	
917	236	230	a	هُيُ نَصِيْرِ مْوَلِمُ	huyu naṣı̄ri mwalimu	huyu nasiri mwalimu	
918	236	230	b	مْسُمِشِ اَخِتِيْمُ	msumishi akhitı̄mu	msumishi ahitimu	
919	236	230	c	مْفُزِْشِ نَعِلِمُ	mfuzishi naʿilimu	mfuzishi nailimu	
920	236	230	d	عَدَ يَكِ تَكْوِتِيَ	ʿada yaki takwitiya	ada yaki takwitiya	
921	237	231	a	اَكَتُكَ جَعْفَارِ	akatuka jaʿfāri	akatuka jafari	
922	237	231	b	هَپُ كَلِيَ نَصِيْرِا	hapu kaliya naṣı̄rī	hapu kaliya nasiri	
923	237	231	c	مَمَكِ اَكَفَصِيْرِ	mamaki akafaṣı̄ri	mamaki akafasiri	
924	237	231	d	اُسِكُ اَتَرِجِيَا	usiku atarijiyā	usiku atarijiya	
925	238	232	a	نَصِيْرِ اَكَتَمْكَ	naṣı̄ri akatamka	nasiri akatamka	
926	238	232	b	نَمُيُوَا اِنْرَا مَكَهْ	namuyuwā inrā makah	namuyuwa inra makah	
927	238	232	c	كُتُغَ هَڠَلِتُكَ	kutugha hagalituka	kutugha hagalituka	
928	238	232	d	اَسِپُ أِيُوْنَ نْدِيَا	asipu iyūna ndiyā	asipu iyuna ndiya	
929	239	233	a	اَوْ يَانَ سِكُوِكُ	aw yāna sikuwiku	au yana sikuwiku	
930	239	233	b	اُكَمْوَمْبِيَ تَمْكُ	ukamwambiya tamku	ukamwambiya tamku	
931	239	233	c	كَوَاڠِا وِنْدَانِ وَاكُ	kawāgī windāni wāku	kawagi windani waku	
932	239	233	d	يُتِ نَلِيَسِكِيَا	yuti naliyasikiyā	yuti naliyasikiya	
933	240	234	a	اَوْ وِنْرَا مَتُڠَانِ	aw winrā matugāni	au winra matugani	
934	240	234	b	غُوْ هُتُكُلِيَنِ	ghuu hutukuliyani	ghuu hutukuliyani	
935	240	234	c	سِكُ زُتِ سِمُوُنِ	siku zuti simuwuni	siku zuti simuwuni	
936	240	234	d	حَتَ هَيُ كُنَمْبِيَا	ḥata hayu kunambiyā	hata hayu kunambiya	
937	241	235	a	جَعْفَرِ اَكَبَيِنِ	jaʿfari akabayini	jafari akabayini	
938	241	235	b	سَسَا اُمِلِلِيَنِ	sasā umililiyani	sasa umililiyani	
939	241	235	c	تْوَالِئَڠَانَ نَنْنِ	twāliagāna nanni	twaliagana nanni	
940	241	235	d	مَنِنُ نَكُكْوَمْبِيَا	maninu nakukwambiyā	maninu nakukwambiya	
941	242	236	a	نَكَمَ هُكُرِظِيْكَ	nakama hukuriẓı̄ka	nakama hukuridhika	
942	242	236	b	نَمْبِيَ نِسِيَتُكَ	nambiya nisiyatuka	nambiya nisiyatuka	
943	242	236	c	هُنَا حَجَ كُؤُظِيْكَ	hunā ḥaja kuuẓı̄ka	huna haja kuudhika	
944	242	236	d	سِكِتِكُ كُنِتِيْيَا	sikitiku kunitı̄yā	sikitiku kunitiya	
945	243	237	a	اَكَمْجِبُ تَمْكُ	akamjibu tamku	akamjibu tamku	
946	243	237	b	سِكُئِزَا هَيَ يَكُ	sikuizā haya yaku	sikuiza haya yaku	
947	243	237	c	سِكُزُتِ هُوَا نِكُ	sikuzuti huwā niku	sikuzuti huwa niku	
948	243	237	d	هَمُنِوُنِ كُلِيْيَا	hamuniwuni kulı̄yā	hamuniwuni kuliya	
949	244	238	a	سَسَا هَيَا نِثَقِيْلِ	sasā hayā nithaqı̄li	sasa haya nithaqili	
950	244	238	b	نِمِزُ يَتَعَمَلِ	nimizu yataʿamali	nimizu yataamali	
951	244	238	c	تَكُوَا مَتُلِ تُوْلِ	takuwā matuli tūli	takuwa matuli tuli	
952	244	238	d	زِوُ زَاكُ زَاكُغِيَا	ziwu zāku zākughiyā	ziwu zaku zakughiya	
953	245	239	a	نَصِيْرِ اَكَبَيِنِ	naṣı̄ri akabayini	nasiri akabayini	
954	245	239	b	اَتَكُپِكَ مَنَّانِ	atakupika mannāni	atakupika mannani	
955	245	239	c	سَلَامَ نَسَلِمِيْنِ	salāma nasalimı̄ni	salama nasalimini	
956	245	239	d	كْوَا عَفُوَا نَعَفِيَا	kwā ʿafuwā naʿafiyā	kwa afuwa naafiya	
957	246	240	a	هَپُ نْدِيَا كَيَدَاَمَ	hapu ndiyā kayadaama	hapu ndiya kayadaama	
958	246	240	b	كِنِرَا كُتُسِمَامَ	kinirā kutusimāma	kinira kutusimama	
959	246	240	c	سَعَ كُمِ اِكِكُمَ	saʿa kumi ikikuma	saa kumi ikikuma	
960	246	240	d	نَايِ مَكَ اَمِڠِيْيَا	nāyi maka amigı̄yā	nayi maka amigiya	
961	247	241	a	مَكَ اَلِپُ جِلِيْسِ	maka alipu jilı̄si	maka alipu jilisi	
962	247	241	b	كْوَا بَبَكِ هَكُئِسِا	kwā babaki hakuisī	kwa babaki hakuisi	
963	247	241	c	كَمْبَ نْدِيَا سِكُكِسِ	kamba ndiyā sikukisi	kamba ndiya sikukisi	
964	247	241	d	كْوَانْدَ تَيْكِتِلِيَا	kwānda taykitiliyā	kwanda taykitiliya	
965	248	242	a	اَكَكِتِ جَعْفَارِ	akakiti jaʿfāri	akakiti jafari	
966	248	242	b	اَكَمووْنَ زُبِيْرِا	akamūwna zubı̄rī	akamuna zubiri	
967	248	242	c	اِنْدِمِيْنِ نَا بَشِيْرِ	indimı̄ni nā bashı̄ri	indimini na bashiri	
968	248	242	d	مْكٗنٗ اَكَوَيْنُلِيَ	mkono akawaynuliya	mkono akawaynuliya	
969	249	243	a	مْكٗنٗ كَوَتَزَامَ	mkono kawatazāma	mkono kawatazama	
970	249	243	b	زُبَيْرِ اَكَسِمَامَ	zubayri akasimāma	zubayri akasimama	
971	249	243	c	اَكَمْوَامْبِيَ حَشِيْمَ	akamwāmbiya ḥashı̄ma	akamwambiya hashima	
972	249	243	d	مْڠِيْنِ وِتُ مْڠِيَا	mgı̄ni witu mgiyā	mgini witu mgiya	
973	250	244	a	كَمُوُلِزَا اَمِيْنِ	kamuwulizā amı̄ni	kamuwuliza amini	
974	250	244	b	مْڠِيْنِ وِتُ نِنْيَنِ	mgı̄ni witu ninyani	mgini witu ninyani	
975	250	244	c	وَسِكِيَ هُبَيِنِ	wasikiya hubayini	wasikiya hubayini	
976	250	244	d	نِپَ مْكُنُ نَبِيَا	nipa mkunu nabiyā	nipa mkunu nabiya	
977	251	245	a	زُبِيْرِ كَتَعَجَبُ	zubı̄ri kataʿajabu	zubiri kataajabu	
978	251	245	b	وَمُيُوَاپِ حَبِبُ	wamuyuwāpi ḥabibu	wamuyuwapi habibu	
979	251	245	c	جَعْفَارِ اَكَمْجِيْبُ	jaʿfāri akamjı̄bu	jafari akamjibu	
980	251	245	d	وَجِهِ وَكِ نَبِيَا	wajihi waki nabiyā	wajihi waki nabiya	
981	252	246	a	كِسَ حَپُ اَبَيِيْنِ	kisa ḥapu abayı̄ni	kisa hapu abayini	
982	252	246	b	كْوَا بَبَنْغُ نِپِكَنِ	kwā babanghu nipikani	kwa babanghu nipikani	
983	252	246	c	كَمْتُكُوَا اَمِيْنِ	kamtukuwā amı̄ni	kamtukuwa amini	
984	252	246	d	كِنْرَا نَيِ كْوَ عَلِيَ	kinrā nayi kwa ʿaliya	kinra nayi kwa aliya	
985	253	247	a	اَلِپُ كْوِرَ سَئِدِ	alipu kwira saidi	alipu kwira saidi	
986	253	247	b	نْدِ اَكَپِجَ هُوْدِ	ndi akapija hūdi	ndi akapija hudi	
987	253	247	c	فَطِيْمَ اَكَرَادِدِ	faṭı̄ma akarādidi	fatima akaradidi	
988	253	247	d	اَكَبَ هَكُ عَلِيَا	akaba haku ʿaliyā	akaba haku aliya	
989	254	248	a	كَمُوُلِيْزَا حُسِيْنِ	kamuwulı̄zā ḥusı̄ni	kamuwuliza husini	
990	254	248	b	اَمْكُوَوُ نِنْيَنِ	amkuwawu ninyani	amkuwawu ninyani	
991	254	248	c	كِجَانَ اَكَبَيِنِ	kijāna akabayini	kijana akabayini	
992	254	248	d	نِا جَدِ يَنْغُ سِكِيَا	nī jadi yanghu sikiyā	ni jadi yanghu sikiya	
993	255	249	a	نِجَدِ يَنْغُ رَسُوْلِ	nijadi yanghu rasūli	nijadi yanghu rasuli	
994	255	249	b	يِيِ نَمْتُ وَپِيْلِ	yiyi namtu wapı̄li	yiyi namtu wapili	
995	255	249	c	اَكِسِكِيْيَ قَوْلِيْ	akisikı̄ya qawlii	akisikiya qaulii	
996	255	249	d	كَتُكَ كُمْوَنْڠَلِيَا	katuka kumwangaliyā	katuka kumwangaliya	
997	256	250	a	اَكِتُكَا جَعْفَارِ	akitukā jaʿfāri	akituka jafari	
998	256	250	b	كَمُوُلِيْزَا خَبَارِ	kamuwulı̄zā khabāri	kamuwuliza habari	
999	256	250	c	اَكِيْكُمَ كَفَصِيْرِ	akı̄kuma kafaṣı̄ri	akikuma kafasiri	
1000	256	250	d	فَطِيْمَ اَكَمْوَامْبِيَا	faṭı̄ma akamwāmbiyā	fatima akamwambiya	
1001	257	251	a	فَطِيْمَ كَتَكَلَمُ	faṭı̄ma katakalamu	fatima katakalamu	
1002	257	251	b	اَكَمُوُلِزَا حَشِمُ	akamuwulizā ḥashimu	akamuwuliza hashimu	
1003	257	251	c	بَبَا سِيَمْفَهَمُ	babā siyamfahamu	baba siyamfahamu	
1004	257	251	d	كِجَانَ هُيُ نَمْبِيَا	kijāna huyu nambiyā	kijana huyu nambiya	
1005	258	252	a	سِكُوْ زُتِ سِمُيُوِ	sikuu zuti simuyuwi	sikuu zuti simuyuwi	
1006	258	252	b	اِنَ لَكِ نْرِيِ نْيَانِ	ina laki nriyi nyāni	ina laki nriyi nyani	
1007	258	252	c	مْتُمِ اَكَبَيِنِ	mtumi akabayini	mtumi akabayini	
1008	258	252	d	فَطِيْمَ اَكَمْوَمْبِيْيَ	faṭı̄ma akamwambı̄ya	fatima akamwambiya	
1009	259	253	a	اَكَمْوَامْبِيَ بَشِيْرِ	akamwāmbiya bashı̄ri	akamwambiya bashiri	
1010	259	253	b	هُيُ نْرِيِ جَعْفَرِا	huyu nriyi jaʿfarī	huyu nriyi jafari	
1011	259	253	c	وَ عَلِيْ حَيْدَارِ	wa ʿalii ḥaydāri	wa alii haydari	
1012	259	253	d	حِزُ سُوْرَ هُكْوَمْبِيَا	ḥizu sūra hukwambiyā	hizu sura hukwambiya	
1013	260	254	a	حَپُ سَيِدِ اَمِيْنِ	ḥapu sayidi amı̄ni	hapu sayidi amini	
1014	260	254	b	اَكَمْتُمَ حُسِيْنِ	akamtuma ḥusı̄ni	akamtuma husini	
1015	260	254	c	اِنِرَا مْسِكِتِيْنِ	inirā msikitı̄ni	inira msikitini	
1016	260	254	d	بَبَكُ نَمْكُلِيَا	babaku namkuliyā	babaku namkuliya	
1017	261	255	a	حَپُ كَتُكَ حُسِيْنِ	ḥapu katuka ḥusı̄ni	hapu katuka husini	
1018	261	255	b	كَفِيْكَ مْسِكِتِنِ	kafı̄ka msikitini	kafika msikitini	
1019	261	255	c	بَبَا مِكُيَ مْغِيْنِ	babā mikuya mghı̄ni	baba mikuya mghini	
1020	261	255	d	هُكْوَامْكُوَا نَبِيَا	hukwāmkuwā nabiyā	hukwamkuwa nabiya	
1021	262	256	a	كُوْنَ كِجَانَ مْزُرِ	kūna kijāna mzuri	kuna kijana mzuri	
1022	262	256	b	ػِنْدِمِيْنِ نَا بَشِيْرِا	kʲindimı̄ni nā bashı̄rī	chindimini na bashiri	
1023	262	256	c	نَا اِنَ نِجَعْفَرِ	nā ina nijaʿfari	na ina nijafari	
1024	262	256	d	نِهِلُ نِمِكْوَمْبِيَا	nihilu nimikwambiyā	nihilu nimikwambiya	
1025	263	257	a	ػَمْبِوَا حِيُ كَلِيْمَ	kʲambiwā ḥiyu kalı̄ma	chambiwa hiyu kalima	
1026	263	257	b	پَپُ نْدِيَا كَئَنْدَامَ	papu ndiyā kaandāma	papu ndiya kaandama	
1027	263	257	c	مْلَغُوْنِ اَكَيْكُمَ	mlaghūni akaykuma	mlaghuni akaykuma	
1028	263	257	d	سَلَامُ كَوَپِجِيَا	salāmu kawapijiyā	salamu kawapijiya	
1029	264	258	a	سَلَامَُ كَفَصِيْرِ	salāmua kafaṣı̄ri	salamua kafasiri	
1030	264	258	b	حَپُ عَلِيْ حَيْدَارِ	ḥapu ʿalii ḥaydāri	hapu alii haydari	
1031	264	258	c	اَكَيْنُكَ جَعْفَارِ	akaynuka jaʿfāri	akaynuka jafari	
1032	264	258	d	مْكُنُ كَمْپُكِيْيَا	mkunu kampukı̄yā	mkunu kampukiya	
1033	265	259	a	عَلِيْ كِتَ تَمْكُ	ʿalii kita tamku	alii kita tamku	
1034	265	259	b	نِسَلَامَ اُتُكَكُ	nisalāma utukaku	nisalama utukaku	
1035	265	259	c	جُمْلَ وَزِيْ وَاكُ	jumla wazii wāku	jumla wazii waku	
1036	265	259	d	حَلِ زَاوُ نِئَمْبِيَا	ḥali zāwu niambiyā	hali zawu niambiya	
1037	266	260	a	اَكَمْجِبُ كَلِيْمَ	akamjibu kalı̄ma	akamjibu kalima	
1038	266	260	b	نِتُكَكُوْ نِسَلَامَ	nitukakuu nisalāma	nitukakuu nisalama	
1039	266	260	c	سِيُوِ يَحُكُوْ نْيُمَ	siyuwi yaḥukuu nyuma	siyuwi yahukuu nyuma	
1040	266	260	d	سِپَتِ لَا كُكْوَمْبِيَا	sipati lā kukwambiyā	sipati la kukwambiya	
1041	267	261	a	تِنَ بَابَ مُعَلِيْمُ	tina bāba muʿalı̄mu	tina baba mualimu	
1042	267	261	b	نَمَمَ وَاكُسَلِمُ	namama wākusalimu	namama wakusalimu	
1043	267	261	c	وَعَلَيْكَ سَلَامُ	waʿalayka salāmu	waalayka salamu	
1044	267	261	d	عَلِيْ اَكِپُكِيْيَا	ʿalii akipukı̄yā	alii akipukiya	
1045	268	262	a	عَلِيْ اَكَبَيِيْنِ	ʿalii akabayı̄ni	alii akabayini	
1046	268	262	b	نِمِكُغُوْجَا نْدِيَنِ	nimikughūjā ndiyani	nimikughuja ndiyani	
1047	268	262	c	وَلِتُكَ زِؤُ ڠَانِ	walituka ziu gāni	walituka ziu gani	
1048	268	262	d	بُنَ اُمِلِمَتِيْيَ	buna umilimatı̄ya	buna umilimatiya	
1049	269	263	a	اَكَمْجِبُ قَوْلِ	akamjibu qawli	akamjibu qauli	
1050	269	263	b	اَصُبُحِ نَلِيْصَلِ	aṣubuḥi nalı̄ṣali	asubuhi nalisali	
1051	269	263	c	لَكِنِ بَبَا نِمْبَلِ	lakini babā nimbali	lakini baba nimbali	
1052	269	263	d	اِنَ اُرِفُ يُنْدِيَا	ina urifu yundiyā	ina urifu yundiya	
1053	270	264	a	نَمِ كِپَتَ يَڠَاانِ	nami kipata yagāāni	nami kipata yagaani	
1054	270	264	b	پَانَ مْتِرِ نْدِيَنِ	pāna mtiri ndiyani	pana mtiri ndiyani	
1055	270	264	c	يَلِنِتُكَ مُيُوْنِ	yalinituka muyūni	yalinituka muyuni	
1056	270	264	d	يَلِيْ وَلِيُ نَمْبِيَا	yalii waliyu nambiyā	yalii waliyu nambiya	
1057	271	265	a	كَيِوَاتَ يَكُڤُلِ	kayiwāta yakuvuli	kayiwata yakuvuli	
1058	271	265	b	كَئَنْدَمَ حِيُ يَپِلِ	kaandama ḥiyu yapili	kaandama hiyu yapili	
1059	271	265	c	حَتَ نِكِتَعَمَلِيْ	ḥata nikitaʿamalii	hata nikitaamalii	
1060	271	265	d	سَعَ اِمِنِپُتِيْيَا	saʿa iminiputı̄yā	saa iminiputiya	
1061	272	266	a	كِسَ اُوِنْڠَ كَيِتَ	kisa uwinga kayita	kisa uwinga kayita	
1062	272	266	b	اِيُ لَبَرَ كَپِتَ	iyu labara kapita	iyu labara kapita	
1063	272	266	c	اِلِيْ نْدِيَا كَيْوَاتَ	ilii ndiyā kaywāta	ilii ndiya kaywata	
1064	272	266	d	نْيُمَ نِسِپُ رِجِيَا	nyuma nisipu rijiyā	nyuma nisipu rijiya	
1065	273	267	a	سُرَا نِنْرَاوُ بَرَانِ	surā ninrāwu barāni	sura ninrawu barani	
1066	273	267	b	اِلِيْ نْدِيَا سِئِيُوْنِ	ilii ndiyā siiyūni	ilii ndiya siiyuni	
1067	273	267	c	هُوْنَا نِكُمْوِتُنِ	hūnā nikumwituni	huna nikumwituni	
1068	273	267	d	زُاتِ زِمِنِپُتِيَا	zuāti ziminiputiyā	zuati ziminiputiya	
1069	274	268	a	كِپِجَ فِكِرَا زَانْغُ	kipija fikirā zānghu	kipija fikira zanghu	
1070	274	268	b	كَلَنْدَمَ ڠُوْ لَنْڠُ	kalandama guu langu	kalandama guu langu	
1071	274	268	c	نِتَرُدِ پَلِيْ پَنْغُ	nitarudi palii panghu	nitarudi palii panghu	
1072	274	268	d	سَسَا نْيُمَ كَرِجِيَا	sasā nyuma karijiyā	sasa nyuma karijiya	
1073	275	269	a	كِسَ كَرُدِيَا نْيُمَ	kisa karudiyā nyuma	kisa karudiya nyuma	
1074	275	269	b	حَپُ نْدِيَا كَيَنْدَمَ	ḥapu ndiyā kayandama	hapu ndiya kayandama	
1075	275	269	c	پِنْيِ مِتِرِ كِكُمَ	pinyi mitiri kikuma	pinyi mitiri kikuma	
1076	275	269	d	صَلٰ اِمِسِمَمِيَا	ṣalä imisimamiyā	sala imisimamiya	
1077	276	270	a	اَوَالِ يَأَظُهُرِ	awāli yaaẓuhuri	awali yaadhuhuri	
1078	276	270	b	رِپُ نْدِيَ كُوَابِرِ	ripu ndiya kuwābiri	ripu ndiya kuwabiri	
1079	276	270	c	هُجَ يَكُيَ اَخِيْرِ	huja yakuya akhı̄ri	huja yakuya ahiri	
1080	276	270	d	مَعَنَ نِمِكْوَمْبِيَا	maʿana nimikwambiyā	maana nimikwambiya	
1081	277	271	a	اَكِسَا كُمپُلِيْكَ	akisā kumpulı̄ka	akisa kumpulika	
1082	277	271	b	عَلِيْ اَكَتَمْكَ	ʿalii akatamka	alii akatamka	
1083	277	271	c	كَلَمَ اُمِسُمْبُكَ	kalama umisumbuka	kalama umisumbuka	
1084	277	271	d	نَيِ كَنِنَ نَبِيْيَا	nayi kanina nabı̄yā	nayi kanina nabiya	
1085	278	272	a	اَكَنِيْنَ حَشِيْمَ	akanı̄na ḥashı̄ma	akanina hashima	
1086	278	272	b	سِحَبَ كُيَ سَلَامَ	siḥaba kuya salāma	sihaba kuya salama	
1087	278	272	c	نْدِيَ اَلِيُ اَدَامَ	ndiya aliyu adāma	ndiya aliyu adama	
1088	278	272	d	حَطَرِ هُمْزِغِيَا	ḥaṭari humzighiyā	hatari humzighiya	
1089	279	273	a	اَمِمْكِيْڠَ وَدُدُ	amimkı̄ga wadudu	amimkiga wadudu	
1090	279	273	b	وَسِيُوْنِ مَيَحُدِ	wasiyūni mayaḥudi	wasiyuni mayahudi	
1091	279	273	c	كْوَنِ وَڠَلِمْزِدِ	kwani wagalimzidi	kwani wagalimzidi	
1092	279	273	d	وَتُ وِنْڠِ سِمْمُيَا	watu wingi simmuyā	watu wingi simmuya	
1093	280	274	a	فَطِيْمَ اُپُ كِتِنِ	faṭı̄ma upu kitini	fatima upu kitini	
1094	280	274	b	اَكَمْوِپُكَ اَمِيْنِ	akamwipuka amı̄ni	akamwipuka amini	
1095	280	274	c	كْوَ مْكُنُ اَكَبَيِنِ	kwa mkunu akabayini	kwa mkunu akabayini	
1096	280	274	d	كَمْوامْكُوَا عَلِيَا	kamwāmkuwā ʿaliyā	kamwamkuwa aliya	
1097	281	275	a	مْكُوْنُ اَكَتَزَامَ	mkūnu akatazāma	mkunu akatazama	
1098	281	275	b	عَلِيْ اَكَفَهَمَ	ʿalii akafahama	alii akafahama	
1099	281	275	c	كَمْوَامْبِيَ حَشِيْمَ	kamwāmbiya ḥashı̄ma	kamwambiya hashima	
1100	281	275	d	نِرَا رَانِ مَرَ مُيَا	nirā rāni mara muyā	nira rani mara muya	
1101	282	276	a	كْوَا رَانِ الِپُفِيْكَ	kwā rāni ālipufı̄ka	kwa rani alipufika	
1102	282	276	b	فَطِيْمَ اَكَتَمْكَ	faṭı̄ma akatamka	fatima akatamka	
1103	282	276	c	ػَكُلَ نِمِكِپِكَ	kʲakula nimikipika	chakula nimikipika	
1104	282	276	d	نَسَسَا هُوَاتِلِيَ	nasasā huwātiliya	nasasa huwatiliya	
1105	283	277	a	كْوَا سِكُمَكِنِيْكَ	kwā sikumakinı̄ka	kwa sikumakinika	
1106	283	277	b	خَبَرِ اَكَتَمْكَ	khabari akatamka	habari akatamka	
1107	283	277	c	مُيُ هُمْپَپَتِكَا	muyu humpapatikā	muyu humpapatika	
1108	283	277	d	كْوَ اُثَقِيْلِ وَنْدِيَا	kwa uthaqı̄li wandiyā	kwa uthaqili wandiya	
1109	284	278	a	نَزِؤُ الِيْزَاتُكَ	naziu ālı̄zātuka	naziu alizatuka	
1110	284	278	b	َمِنِيُزَا حَقِيْكَ	aminiyuzā ḥaqı̄ka	aminiyuza haqika	
1111	284	278	c	نَا سَسَا هُمْپُلِكَا	nā sasā humpulikā	na sasa humpulika	
1112	284	278	d	مَنِنُيِ هُتْوَامْبِيَا	maninuyi hutwāmbiyā	maninuyi hutwambiya	
1113	285	279	a	عَلِيْ َكَبَيِنِ	ʿalii akabayini	alii akabayini	
1114	285	279	b	حُمْصُبِرِ حُسِيْنِ	ḥumṣubiri ḥusı̄ni	humsubiri husini	
1115	285	279	c	نِمْتُمِيى حَسَانِ	nimtumı̄ı̄ ḥasāni	nimtumiyi hasani	
1116	285	279	d	مِكْوِرَ كُمْوَنْدَمِيَا	mikwira kumwandamiyā	mikwira kumwandamiya	
1117	286	280	a	عَلِيْ كِتُكَ نْرَانِ	ʿalii kituka nrāni	alii kituka nrani	
1118	286	280	b	اَلِپُكِتِ كِتِيْنِ	alipukiti kitı̄ni	alipukiti kitini	
1119	286	280	c	اَمْسِكِيَ حَسَانِ	amsikiya ḥasāni	amsikiya hasani	
1120	286	280	d	سَلَامُ هُوَاپِسِيَا	salāmu huwāpisiyā	salamu huwapisiya	
1121	287	281	a	حَسَنِ اَكَنُظُمُ	ḥasani akanuẓumu	hasani akanudhumu	
1122	287	281	b	كُوَاپِسِيْزَا سَلَامُ	kuwāpisı̄zā salāmu	kuwapisiza salamu	
1123	287	281	c	وَلِيُكُ كْوَ تِمَامُ	waliyuku kwa timāmu	waliyuku kwa timamu	
1124	287	281	d	وُتِ وَكَمْپُكِيْيَا	wuti wakampukı̄yā	wuti wakampukiya	
1125	288	282	a	كْوَا رَانِ كِسَا كْوِمَ	kwā rāni kisā kwima	kwa rani kisa kwima	
1126	288	282	b	كَمُوُلِزَا سَلَامَ	kamuwulizā salāma	kamuwuliza salama	
1127	288	282	c	كَمْرُدِشَا كَلِيْمَ	kamrudishā kalı̄ma	kamrudisha kalima	
1128	288	282	d	جَعْفَرِ كَمْوَمْبِيَا	jaʿfari kamwambiyā	jafari kamwambiya	
1129	289	283	a	كَمْوَمْبِيَ مَتَمْكُ	kamwambiya matamku	kamwambiya matamku	
1130	289	283	b	نِسَلَامَ نِتُكَكُ	nisalāma nitukaku	nisalama nitukaku	
1131	289	283	c	سِيُوِ مْبِيِ نِنْرَاكُ	siyuwi mbiyi ninrāku	siyuwi mbiyi ninraku	
1132	289	283	d	اَيُوَوُ نِجَلِيَا	ayuwawu nijaliyā	ayuwawu nijaliya	
1133	290	284	a	اَكَئِنُكَ اَمِيْنِ	akainuka amı̄ni	akainuka amini	
1134	290	284	b	كَوَمْبِيَ كْوِ خِيْرِنِ	kawambiya kwi khı̄rini	kawambiya kwi hirini	
1135	290	284	c	عَلِيْ كَنِنَ كْوَانِ	ʿalii kanina kwāni	alii kanina kwani	
1136	290	284	d	بُنَ هُتُكَ نَبِيَا	buna hutuka nabiyā	buna hutuka nabiya	
1137	291	285	a	مْتُمِ اَكَتَمْكَ	mtumi akatamka	mtumi akatamka	
1138	291	285	b	زِوُ زِمِأَخِيْرِكَ	ziwu zimiakhı̄rika	ziwu zimiahirika	
1139	291	285	c	سَعَ تِسِيَا حَقِيْكَ	saʿa tisiyā ḥaqı̄ka	saa tisiya haqika	
1140	291	285	d	نْيُبَنِ سِيَرِجِيَا	nyubani siyarijiyā	nyubani siyarijiya	
1141	292	286	a	كَبَ سُبِرِ بَشِيْرِ	kaba subiri bashı̄ri	kaba subiri bashiri	
1142	292	286	b	ػَكُلَ كِيْكُ طَيَرِا	kʲakula kı̄ku ṭayarī	chakula kiku tayari	
1143	292	286	c	تُمْلِشِ جَعْفَرِ	tumlishi jaʿfari	tumlishi jafari	
1144	292	286	d	حَپُ كَكِتِ نَبِيَا	ḥapu kakiti nabiyā	hapu kakiti nabiya	
1145	293	287	a	فَطِيْمَ اَكَيْنُكَ	faṭı̄ma akaynuka	fatima akaynuka	
1146	293	287	b	كْوَ اُپِسِ نَحَرَكَ	kwa upisi naḥaraka	kwa upisi naharaka	
1147	293	287	c	ػَكُلَ اَكَكِيْوِكَ	kʲakula akakı̄wika	chakula akakiwika	
1148	293	287	d	نَمَيِ كَوَاپِكِيَا	namayi kawāpikiyā	namayi kawapikiya	
1149	294	288	a	اَكَيْنُكَ بَشِيْرِ	akaynuka bashı̄ri	akaynuka bashiri	
1150	294	288	b	پَمُيَا نَجَعْفَرِا	pamuyā najaʿfarī	pamuya najafari	
1151	294	288	c	نَعَلِيْ هَيْدَارِ	naʿalii haydāri	naalii haydari	
1152	294	288	d	وُتِيْ وَكَهُظُرِيَا	wutii wakahuẓuriyā	wutii wakahudhuriya	
1153	295	289	a	وَكَكِتِ كْوَ مْفُنُ	wakakiti kwa mfunu	wakakiti kwa mfunu	
1154	295	289	b	وَكَتَغَنْيَ مِكُنُ	wakataghanya mikunu	wakataghanya mikunu	
1155	295	289	c	جُمْلَ وَتُ وَتَنُ	jumla watu watanu	jumla watu watanu	
1156	295	289	d	وَلَا اَسِلِ نَبِيَا	walā asili nabiyā	wala asili nabiya	
1157	296	290	a	مَرَا تَتُ كْوَ حَقِيْكَ	marā tatu kwa ḥaqı̄ka	mara tatu kwa haqika	
1158	296	290	b	مكُنُ اَلِوُپِيْكَ	mkunu aliwupı̄ka	mkunu aliwupika	
1159	296	290	c	اَكِسَ اَلِئِيْنُكَ	akisa aliı̄nuka	akisa aliinuka	
1160	296	290	d	وَوُ اَكَوَاتِيْيَا	wawu akawātı̄yā	wawu akawatiya	
1161	297	291	a	اَكَيْنُكَ كِتِيْنِ	akaynuka kitı̄ni	akaynuka kitini	
1162	297	291	b	كَپُوَا مَايِ اَمِنِ	kapuwā māyi amini	kapuwa mayi amini	
1163	297	291	c	نَيَكُنْوَا كِكُمْبِنِ	nayakunwā kikumbini	nayakunwa kikumbini	
1164	297	291	d	نَيِ اَكَسُكُتُلِيَا	nayi akasukutuliyā	nayi akasukutuliya	
1165	298	292	a	تَمْبُوُ يَكُخِتَرِ	tambuwu yakukhitari	tambuwu yakuhitari	
1166	298	292	b	حَپُ كَپُوَ بَشِيْرِ	ḥapu kapuwa bashı̄ri	hapu kapuwa bashiri	
1167	298	292	c	اَكَوَاَڠَا كْوِ حِيْرِ	akawaagā kwi ḥı̄ri	akawaaga kwi hiri	
1168	298	292	d	تُمْوَ اَكَيْتُكِيْيَا	tumwa akaytukı̄yā	tumwa akaytukiya	
1169	299	293	a	كُتُكَ تُمْوَ اَكِسَا	kutuka tumwa akisā	kutuka tumwa akisa	
1170	299	293	b	نَوُ كُلَ وَمِكْوِسَا	nawu kula wamikwisā	nawu kula wamikwisa	
1171	299	293	c	فَطِيمَ اَكَيْتُكُسَا	faṭı̄ma akaytukusā	fatima akaytukusa	
1172	299	293	d	مَيِ اَكَوَاپِكِيْيَا	mayi akawāpikı̄yā	mayi akawapikiya	
1173	300	294	a	اَكَيِيُوْنَ فَطِيْمَ	akayiyūna faṭı̄ma	akayiyuna fatima	
1174	300	294	b	پِتِ اَكَيْتَزَامَ	piti akaytazāma	piti akaytazama	
1175	300	294	c	يَپِسِيُوُ يَنْيُمَ	yapisiyuwu yanyuma	yapisiyuwu yanyuma	
1176	300	294	d	مَيُوْتُ يَكَمْرُدِيَا	mayūtu yakamrudiyā	mayutu yakamrudiya	
1177	301	295	a	عِلِيْ اَكَتَمْكَ	ʿilii akatamka	ilii akatamka	
1178	301	295	b	مْبُنَ اُمِبَدِلِكَ	mbuna umibadilika	mbuna umibadilika	
1179	301	295	c	كَمَ اُمِزُاُظِيْكَ	kama umizuuẓı̄ka	kama umizuudhika	
1180	301	295	d	يِوُ نِكِكْوَنْغَلِيَ	yiwu nikikwanghaliya	yiwu nikikwanghaliya	
1181	302	296	a	فَطِيْمَ اَكَرَدِيْدِ	faṭı̄ma akaradı̄di	fatima akaradidi	
1182	302	296	b	وِوِ هِنِيْرِّ بَعِيْدِ	wiwi hinı̄rri baʿı̄di	wiwi hinirri baidi	
1183	302	296	c	نِلُوْ نَلُ سِنَا بُدِ	niluu nalu sinā budi	niluu nalu sina budi	
1184	302	296	d	اِلَا نَوِ تَكْوَمْبِيَ	ilā nawi takwambiya	ila nawi takwambiya	
1185	303	297	a	اَكِسِكِيَا حَسَنِ	akisikiyā ḥasani	akisikiya hasani	
1186	303	297	b	كَتُكَ كُلِ نْيُمْبَانِ	katuka kuli nyumbāni	katuka kuli nyumbani	
1187	303	297	c	اَكِنْرَّا كْوَ اَمِينِ	akinrrā kwa amı̄ni	akinrra kwa amini	
1188	303	297	d	خَبَرِ اَكَمْوَمْبِيَا	khabari akamwambiyā	habari akamwambiya	
1189	304	298	a	حَسَنِ كُفِيكَ	ḥasani kufı̄ka	hasani kufika	
1190	304	298	b	كْوَا مْتُمِ اَكَتَمْكَ	kwā mtumi akatamka	kwa mtumi akatamka	
1191	304	298	c	مَمَ اَمِكَصِيْرِكَ	mama amikaṣı̄rika	mama amikasirika	
1192	304	298	d	بِبِيَنْغُ نَكْوَمْبِيَا	bibiyanghu nakwambiyā	bibiyanghu nakwambiya	
1193	305	299	a	كَمُوُلِيْزَ امِيْنِ	kamuwulı̄za āmı̄ni	kamuwuliza amini	
1194	305	299	b	مِكَسِيْرِكَ كْوَ نِنِ	mikası̄rika kwa nini	mikasirika kwa nini	
1195	305	299	c	مْوِنْيِوِ هَكُبَيِنِ	mwinyiwi hakubayini	mwinyiwi hakubayini	
1196	305	299	d	حُجَا سِكُمْسِكِيَا	ḥujā sikumsikiyā	huja sikumsikiya	
1197	306	300	a	كُرُدِ كْوَاكِ نْدِيَانِ	kurudi kwāki ndiyāni	kurudi kwaki ndiyani	
1198	306	300	b	اَكَمُوُنَ حُسِيْنِ	akamuwuna ḥusı̄ni	akamuwuna husini	
1199	306	300	c	اَتِيْ مِكُيَ مْڠِيْنِ	atii mikuya mgı̄ni	atii mikuya mgini	
1200	306	300	d	هُكُ كْوِنُ هُسِكِيَا	huku kwinu husikiyā	huku kwinu husikiya	
1201	307	301	a	اَكَمْجِبُ حُسِيْنِ	akamjibu ḥusı̄ni	akamjibu husini	
1202	307	301	b	كُنَ خَبَرِ مْوِيْنِ	kuna khabari mwı̄ni	kuna habari mwini	
1203	307	301	c	اُنِپِ يَتَمْكِيْنِ	unipi yatamkı̄ni	unipi yatamkini	
1204	307	301	d	هِيُ اَمِزُوَمْبِيَا	hiyu amizuwambiyā	hiyu amizuwambiya	
1205	308	302	a	اَكَپِتَ مْلَغُوْنِ	akapita mlaghūni	akapita mlaghuni	
1206	308	302	b	اَكَرَادِدِ حُسِيْنِ	akarādidi ḥusı̄ni	akaradidi husini	
1207	308	302	c	اَسَ مْوَمْتَكِيَنِ	asa mwamtakiyani	asa mwamtakiyani	
1208	308	302	d	مْبْوِنُ اَلِوَاپُتِيَا	mbwinu aliwāputiyā	mbwinu aliwaputiya	
1209	309	303	a	كَمُوُلِيْزَ بَبَكِ	kamuwulı̄za babaki	kamuwuliza babaki	
1210	309	303	b	اُ نَنِ هُنِيْنَ پْوِكِ	u nani hunı̄na pwiki	u nani hunina pwiki	
1211	309	303	c	اَكَبَ سِخِيْرِ نِتُكِيْ	akaba sikhı̄ri nitukii	akaba sihiri nitukii	
1212	309	303	d	خَبَرِ مِئِنِيْيَا	khabari miinı̄yā	habari miiniya	
1213	310	304	a	كُمِپَنَنَ خَبَرِ	kumipanana khabari	kumipanana habari	
1214	310	304	b	جَمِعِ يَا اَنْصَارِا	jamiʿi yā anṣārī	jamii ya ansari	
1215	310	304	c	اُمِكُيَ جَعْفَارِ	umikuya jaʿfāri	umikuya jafari	
1216	310	304	d	وَ مَوُلَنَا عَلِيْيَا	wa mawulanā ʿalı̄yā	wa mawulana aliya	
1217	311	305	a	حَپُ عَلِيْ حَِْدَارِ	ḥapu ʿalii ḥaidāri	hapu alii haidari	
1218	311	305	b	نِنُ اَلِلُوْ فَصِيْرِا	ninu aliluu faṣı̄rī	ninu aliluu fasiri	
1219	311	305	c	اُوِنْڠَ اُنَ خَطَرِ	uwinga una khaṭari	uwinga una hatari	
1220	311	305	d	مَمْبُوْ يَكُتُمْوِلِيَا	mambuu yakutumwiliyā	mambuu yakutumwiliya	
1221	312	306	a	كْوِنُ ككُيَ مْڠِيْنِ	kwinu kkuya mgı̄ni	kwinu kkuya mgini	
1222	312	306	b	هِلُ هُكُوْظِيْيَنِ	hilu hukūẓı̄yani	hilu hukudhiyani	
1223	312	306	c	اَوْ اُتَمْوِكَ نْرَانِ	aw utamwika nrāni	au utamwika nrani	
1224	312	306	d	مُوِنِ هَتُتِمْبِيَ	muwini hatutimbiya	muwini hatutimbiya	
1225	313	307	a	فَطِيْمَ كَنُظُمُ	faṭı̄ma kanuẓumu	fatima kanudhumu	
1226	313	307	b	كْوَنِ سِمْوَانَ حَرَامُ	kwani simwāna ḥarāmu	kwani simwana haramu	
1227	313	307	c	مُيُ حَنَا تَبَسَمُ	muyu ḥanā tabasamu	muyu hana tabasamu	
1228	313	307	d	عَلِيْ كُمْوَاغَلِيَا	ʿalii kumwāghaliyā	alii kumwaghaliya	
1229	314	308	a	عَلِيْ حَپُ كَسِيْمَ	ʿalii ḥapu kası̄ma	alii hapu kasima	
1230	314	308	b	حِيْلَ نْدُوْ فَطييْمَ	ḥı̄la nduu faṭı̄yma	hila nduu fatima	
1231	314	308	c	اكَيْنُكَ كْوَا حِيْمَ	ākaynuka kwā ḥı̄ma	akaynuka kwa hima	
1232	314	308	d	مْكِوَاكِ كَمْوِنرِيَا	mkiwāki kamwinriyā	mkiwaki kamwinriya	
1233	315	309	a	كَمُوُلِيْزَا اُنَنِ	kamuwulı̄zā unani	kamuwuliza unani	
1234	315	309	b	بُنَ اُنَقِصِيْرَانِ	buna unaqiṣı̄rāni	buna unaqisirani	
1235	315	309	c	فَطِيْمَ اَكَبَ كْوَانِ	faṭı̄ma akaba kwāni	fatima akaba kwani	
1236	315	309	d	يَمَتُڠُ هُكْوَامبِيَا	yamatugu hukwāmbiyā	yamatugu hukwambiya	
1237	316	310	a	اَكَمْجِبُ تَمْكُ	akamjibu tamku	akamjibu tamku	
1238	316	310	b	هِيُ سِطَبِيَا يَكُ	hiyu siṭabiyā yaku	hiyu sitabiya yaku	
1239	316	310	c	مِمِ سِكِجَانَ ػَكُ	mimi sikijāna kʲaku	mimi sikijana chaku	
1240	316	310	d	اَمْبَ هَيُ هُنَمْبِيَا	amba hayu hunambiyā	amba hayu hunambiya	
1241	317	311	a	فَطِيْمَ اَكَبَيِنِ	faṭı̄ma akabayini	fatima akabayini	
1242	317	311	b	سِئِيْلِ پِتِ ػَنْدَانِ	siı̄li piti kʲandāni	siili piti chandani	
1243	317	311	c	يَلُوْغِيْيَ كِسِمَانِ	yalūghı̄ya kisimāni	yalughiya kisimani	
1244	317	311	d	اَتِ زِيَپُ هُتِيَا	ati ziyapu hutiyā	ati ziyapu hutiya	
1245	318	312	a	عَلِيْ اَكَتَمْكَ	ʿalii akatamka	alii akatamka	
1246	318	312	b	رِيُ اُكَكَصِيْرِكَ	riyu ukakaṣı̄rika	riyu ukakasirika	
1247	318	312	c	هُيِسِ وَغَلِوُظِكَ	huyisi waghaliwuẓika	huyisi waghaliwudhika	
1248	318	312	d	كَمَ كْوِلِ كِكْوَمْبِيَا	kama kwili kikwambiyā	kama kwili kikwambiya	
1249	319	313	a	نَسَسَا نِڠَكُوُظِ	nasasā nigakuwuẓi	nasasa nigakuwudhi	
1250	319	313	b	نْزُّيَغُ وَتَ غَيْضِا	nzzuyaghu wata ghayḍī	nzzuyaghu wata ghaydhi	
1251	319	313	c	مُيُ وَنْغُ اُوِ رَاضِ	muyu wanghu uwi rāḍi	muyu wanghu uwi radhi	
1252	319	313	d	نَوُتَكَلُ نَمْبِيَا	nawutakalu nambiyā	nawutakalu nambiya	
1253	320	314	a	فَطِيْمَ كِتَ قَوُلِ	faṭı̄ma kita qawuli	fatima kita qawuli	
1254	320	314	b	كِتُ سِيَكُ بَدَالِ	kitu siyaku badāli	kitu siyaku badali	
1255	320	314	c	نَكَمَ اُمِقُبَلِ	nakama umiqubali	nakama umiqubali	
1256	320	314	d	رَاضِ نِمِكُوِلِيَا	rāḍi nimikuwiliyā	radhi nimikuwiliya	
1257	321	315	a	وَكَكِتِ كْوَ لِسَانِ	wakakiti kwa lisāni	wakakiti kwa lisani	
1258	321	315	b	پِنْيِ نَمْوَانِ نْيُبَنِ	pinyi namwāni nyubani	pinyi namwani nyubani	
1259	321	315	c	نَوِ نِرَاپُ زِتَانِ	nawi nirāpu zitāni	nawi nirapu zitani	
1260	321	315	d	وَػِنْرَا وُتِ پَمُيَ	wakʲinrā wuti pamuya	wachinra wuti pamuya	
1261	322	316	a	جَعْفَرِ نِمْڠِيْنِ	jaʿfari nimgı̄ni	jafari nimgini	
1262	322	316	b	حَيَازُوِيَ زِتَنِ	ḥayāzuwiya zitani	hayazuwiya zitani	
1263	322	316	c	مَحَلِ پَمِيَاتِيْنِ	maḥali pamiyātı̄ni	mahali pamiyatini	
1264	322	316	d	وَلْ اَكِمْوَارُلِيَا	wal akimwāruliyā	wal akimwaruliya	
1265	323	317	a	حَتَ اَكِتِمُ مْوَاكَ	ḥata akitimu mwāka	hata akitimu mwaka	
1266	323	317	b	زِتَنِ اَمِصِفِيْكَ	zitani amiṣifı̄ka	zitani amisifika	
1267	323	317	c	سَبَعَ مِيَ حَقِيْكَ	sabaʿa miya ḥaqı̄ka	sabaa miya haqika	
1268	323	317	d	حُتِنْدَا سِكُيُوَا	ḥutindā sikuyuwā	hutinda sikuyuwa	
1269	324	318	a	حَتَ مْوَاكَ اُكِزِدِ	ḥata mwāka ukizidi	hata mwaka ukizidi	
1270	324	318	b	اَلَپُكْوِنْرَ جِهَدِ	alapukwinra jihadi	alapukwinra jihadi	
1271	324	318	c	لَكِيْ مُيَ مَيَهُدِ	lakii muya mayahudi	lakii muya mayahudi	
1272	324	318	d	هُتْوَا مْپْوِكِ مْمُيَا	hutwā mpwiki mmuyā	hutwa mpwiki mmuya	
1273	325	319	a	َالِپُ كُيَ مُوِايْنِ	ālipu kuya muwiāı̄ni	alipu kuya muwiayni	
1274	325	319	b	عَلِيْ اَكَبَيِيْنِ	ʿalii akabayı̄ni	alii akabayini	
1275	325	319	c	اَكَمْوَامْبِيَ اَمِينِ	akamwāmbiya amı̄ni	akamwambiya amini	
1276	325	319	d	نِنَ يَمْبُ تَكْوَمْبِيَا	nina yambu takwambiyā	nina yambu takwambiya	
1277	326	320	a	نَپِنْدَ سَسَا بَشِيْرِ	napinda sasā bashı̄ri	napinda sasa bashiri	
1278	326	320	b	اِنِرِ پْوِكِ جَعْفَرِا	iniri pwiki jaʿfarī	iniri pwiki jafari	
1279	326	320	c	اَكَپِجِ مَكُفَرِا	akapiji makufarī	akapiji makufari	
1280	326	320	d	هُتُشَا كِمْواغَلِيَا	hutushā kimwāghaliyā	hutusha kimwaghaliya	
1281	327	321	a	اَكَشُكَا جِبْرِيْلِ	akashukā jibrı̄li	akashuka jibrili	
1282	327	321	b	اَكَمْوَمْبِيَا رَسُوْلِ	akamwambiyā rasūli	akamwambiya rasuli	
1283	327	321	c	حُوِكِيْ سِمْبَا وَوِلِ	ḥuwikii simbā wawili	huwikii simba wawili	
1284	327	321	d	اَكُسَلِامُ جَلِيْيَا	akusaliāmu jalı̄yā	akusaliamu jaliya	
1285	328	322	a	اَكَتَمْكَ اَمِيْنِ	akatamka amı̄ni	akatamka amini	
1286	328	322	b	عَلِيْ تْوِنْدِ نْيُمْبَانِ	ʿalii twindi nyumbāni	alii twindi nyumbani	
1287	328	322	c	مْوَانَوُ نِنَيَقِيْنِ	mwānawu ninayaqı̄ni	mwanawu ninayaqini	
1288	328	322	d	هُيْفَرِقِ دُنِيَا	huyfariqi duniyā	huyfariqi duniya	
1289	329	323	a	ػَمْبِوَ هِيٗ قَوْلِ	kʲambiwa hiyo qawli	chambiwa hiyo qauli	
1290	329	323	b	اَسِئِمُهُلِ	asiimuhuli	asiimuhuli	
1291	329	323	c	كَىْنُكَ نَرَسُوْلِ	kaynuka narasūli	kaynuka narasuli	
1292	329	323	d	هَپُ وَكَنْدَمَ دِيَ	hapu wakandama diya	hapu wakandama diya	
1293	330	324	a	اَكپِتَ مْلَغُوْنِ	akpita mlaghūni	akpita mlaghuni	
1294	330	324	b	فَطِيْمَ اَكَبَيِيْنِ	faṭı̄ma akabayı̄ni	fatima akabayini	
1295	330	324	c	اَمُوْ هُتُكَ حُسِيْنِ	amuu hutuka ḥusı̄ni	amuu hutuka husini	
1296	330	324	d	اُيَوُ كُوَانْدَمِيَا	uyawu kuwāndamiyā	uyawu kuwandamiya	
1297	331	325	a	مْوَانَ اَلِپُ كِتِيْنِ	mwāna alipu kitı̄ni	mwana alipu kitini	
1298	331	325	b	نَحَسَنِ نَحُسِيْنِ	naḥasani naḥusı̄ni	nahasani nahusini	
1299	331	325	c	غَافُلَ اَكَبَيِيْنِ	ghāfula akabayı̄ni	ghafula akabayini	
1300	331	325	d	بَبَنْغُ نَمْكُلِيَا	babanghu namkuliyā	babanghu namkuliya	
1301	332	326	a	اَمِئِنُكَا كِتِيْنِ	amiinukā kitı̄ni	amiinuka kitini	
1302	332	326	b	اَمِپَرَا فِرَاشَنِ	amiparā firāshani	amipara firashani	
1303	332	326	c	حِلَ مْوَاغَلِيِيْنِ	ḥila mwāghaliı̄ni	hila mwaghaliyini	
1304	332	326	d	يَمْبُ لِلُوْمْزِدِيَا	yambu lilūmzidiyā	yambu lilumzidiya	
1305	333	327	a	حَپُ كِنِرَ بَشِيْرِ	ḥapu kinira bashı̄ri	hapu kinira bashiri	
1306	333	327	b	نَعَلِيْ حَيْدَارِ	naʿalii ḥaydāri	naalii haydari	
1307	333	327	c	اَكَمُوُنَ جَعْفَرِ	akamuwuna jaʿfari	akamuwuna jafari	
1308	333	327	d	حَپُ بَبَكِ كَلِيَا	ḥapu babaki kaliyā	hapu babaki kaliya	
1309	334	328	a	كَلِيَ اَكِبَيْنِ	kaliya akibayni	kaliya akibayni	
1310	334	328	b	وِوِ موَانَڠُ اُنَنِ	wiwi mwānagu unani	wiwi mwanagu unani	
1311	334	328	c	اُپِتْوِ نَيَمْبُ ڠَنِ	upitwi nayambu gani	upitwi nayambu gani	
1312	334	328	d	كَتِكَ كْوَانْدَامَ دِيَا	katika kwāndāma diyā	katika kwandama diya	
1313	335	329	a	اَكِسِكِيَ كَلِمَ	akisikiya kalima	akisikiya kalima	
1314	335	329	b	جَعْفَرِ اَكَفَهَمَ	jaʿfari akafahama	jafari akafahama	
1315	335	329	c	كْوَا ظَرُبُ كَتَزَامَ	kwā ẓarubu katazāma	kwa dharubu katazama	
1316	335	329	d	مَتُ كَمْوَاغَلِيَ	matu kamwāghaliya	matu kamwaghaliya	
1317	336	330	a	كَمْوَاڠَلَِ اَمِيْنِ	kamwāgalia amı̄ni	kamwagalia amini	
1318	336	330	b	اَكَبَ نِپَا يَسِيْنِ	akaba nipā yası̄ni	akaba nipa yasini	
1319	336	330	c	اَكِيْكُمَ كُبَيِيْنِ	akı̄kuma kubayı̄ni	akikuma kubayini	
1320	336	330	d	اَمِكْوِسَ كُئفِيَا	amikwisa kufiyā	amikwisa kufiya	
1321	337	331	a	حَپُ عَلِيْ حَيْدَارِ	ḥapu ʿalii ḥaydāri	hapu alii haydari	
1322	337	331	b	يُتِ اَسِيَفِكِيْرِا	yuti asiyafikı̄rī	yuti asiyafikiri	
1323	337	331	c	اَكَسِمَامَ بَاشِيْرِ	akasimāma bāshı̄ri	akasimama bashiri	
1324	337	331	d	مَصَحَبَ كَوَمْبِيَا	maṣaḥaba kawambiyā	masahaba kawambiya	
1325	338	332	a	كَوَامبِيَا كِپُلِيْكَ	kawāmbiyā kipulı̄ka	kawambiya kipulika	
1326	338	332	b	جَمِعِ وَاكَيْنُكَ	jamiʿi wākaynuka	jamii wakaynuka	
1327	338	332	c	حَتَ اَكِسَا كُزِيْكَ	ḥata akisā kuzı̄ka	hata akisa kuzika	
1328	338	332	d	عَلِيْ اَسِكُيُوَا	ʿalii asikuyuwā	alii asikuyuwa	
1329	339	333	a	اَلِپُ كْوِسَ كُزِكَ	alipu kwisa kuzika	alipu kwisa kuzika	
1330	339	333	b	مْتُمِ اَكَمُوِيْكَ	mtumi akamūı̄ka	mtumi akamuwika	
1331	339	333	c	مَنِيْنُ اَكَتَمْكَ	manı̄nu akatamka	maninu akatamka	
1332	339	333	d	عَلِيْ اَكَمْوَمْبِيَا	ʿalii akamwambiyā	alii akamwambiya	
1333	340	334	a	كَمْوَامْبِيَ كِپُلِكَ	kamwāmbiya kipulika	kamwambiya kipulika	
1334	340	334	b	صُبِرِ كْوَاكِ رَابُكَا	ṣubiri kwāki rābukā	subiri kwaki rabuka	
1335	340	334	c	مْتُ هَنْغَالِ كُپُكَ	mtu hanghāli kupuka	mtu hanghali kupuka	
1336	340	334	d	نَوِ اُكِمْوَغَلِيَا	nawi ukimwaghaliyā	nawi ukimwaghaliya	
1337	341	335	a	وَ اَمَّا نِمْتُ ڠَنِ	wa ammā nimtu gani	wa amma nimtu gani	
1338	341	335	b	اَلُدُمُ دُنِيَانِ	aludumu duniyāni	aludumu duniyani	
1339	341	335	c	اَسِپُكُوَا مَنَّانِ	asipukuwā mannāni	asipukuwa mannani	
1340	341	335	d	نَوِوِ وَافَهَمِيْيَا	nawiwi wāfahamı̄yā	nawiwi wafahamiya	
1341	342	336	a	عَلِيْ سِنِرِ مْنُ	ʿalii siniri mnu	alii siniri mnu	
1342	342	336	b	مَبُ هُپِجَ مْفَنُ	mabu hupija mfanu	mabu hupija mfanu	
1343	342	336	c	ػَمْبِوَا هَيَ مَنِيْنُ	kʲambiwā haya manı̄nu	chambiwa haya maninu	
1344	342	336	d	عَقِيْلِ اِكَمْغِيْيَا	ʿaqı̄li ikamghı̄yā	aqili ikamghiya	
1345	343	337	a	هَپُ اَكِنْدَ كُتُوَا	hapu akinda kutuwā	hapu akinda kutuwa	
1346	343	337	b	زُبِيْرِ كَمْوَمْكُوَا	zubı̄ri kamwamkuwā	zubiri kamwamkuwa	
1347	343	337	c	تَكُپَ زَنْڠُ بَرُوَ	takupa zangu baruwa	takupa zangu baruwa	
1348	343	337	d	اُپَتِ كُنِپِكِيْيَا	upati kunipikı̄yā	upati kunipikiya	
1349	344	338	a	هِنِ مُيَ نْدَ مَمَكِ	hini muya nda mamaki	hini muya nda mamaki	
1350	344	338	b	نَهِيْنِ مْوَلِمُ وَاكِ	nahı̄ni mwalimu wāki	nahini mwalimu waki	
1351	344	338	c	نَوْػِنْرَا سِتَمْكِ	nawkʲinrā sitamki	nauchinra sitamki	
1352	344	338	d	كْوَا فَرَغَا كُوَمْبِيَا	kwā faraghā kuwambiyā	kwa faragha kuwambiya	
1353	345	339	a	زُبِيْرِ اَسِجِلِسِ	zubı̄ri asijilisi	zubiri asijilisi	
1354	345	339	b	كَپُكِيَ كَرَطَسِ	kapukiya karaṭasi	kapukiya karatasi	
1355	345	339	c	اَكِنْرَّا كْوَ اُپِسِ	akinrrā kwa upisi	akinrra kwa upisi	
1356	345	339	d	كَمْپِيْكِيَ عَطِيَا	kampı̄kiya ʿaṭiyā	kampikiya atiya	
1357	346	340	a	بَرُوَا كُمْپَ كْوَاكِ	baruwā kumpa kwāki	baruwa kumpa kwaki	
1358	346	340	b	كِسَ زُبِيْرِ اَتُكِ	kisa zubı̄ri atuki	kisa zubiri atuki	
1359	346	340	c	اِلِيْ يَمْوَالِمُ وَاكِ	ilii yamwālimu wāki	ilii yamwalimu waki	
1360	346	340	d	كِنِرَا كُمْپِكِيْيَا	kinirā kumpikı̄yā	kinira kumpikiya	
1361	347	341	a	زُبِيْرِ كُتُكَ كْوَاكِ	zubı̄ri kutuka kwāki	zubiri kutuka kwaki	
1362	347	341	b	يِيِ اَسُمِ مَمَكِ	yiyi asumi mamaki	yiyi asumi mamaki	
1363	347	341	c	اَكَتُكَ مْپْوِكِيَكِ	akatuka mpwikiyaki	akatuka mpwikiyaki	
1364	347	341	d	مْتُ اَسِپُ زِغِيْيَ	mtu asipu zighı̄ya	mtu asipu zighiya	
1365	348	342	a	نَيِيِ اَكَنُظُمُ	nayiyi akanuẓumu	nayiyi akanudhumu	
1366	348	342	b	يُوَا لِمُ هُسَلِمُ	yuwā limu husalimu	yuwa limu husalimu	
1367	348	342	c	وَلَا اَسِپُ فَهَمُ	walā asipu fahamu	wala asipu fahamu	
1368	348	342	d	اُسِيْكُ كُمْڠِلِيَا	usı̄ku kumgiliyā	usiku kumgiliya	
1369	349	343	a	نَهُكُ نْيُمَ زُبِيْرِ	nahuku nyuma zubı̄ri	nahuku nyuma zubiri	
1370	349	343	b	اَسِوَاتِ تَغَكُرِا	asiwāti taghakurī	asiwati taghakuri	
1371	349	343	c	كُلَّ نْيُبَا هُوَابِيْرِ	kulla nyubā huwābı̄ri	kulla nyuba huwabiri	
1372	349	343	d	هُمآْزِڠِيَا عَطِيَا	humãzigiyā ʿaṭiyā	humazigiya atiya	
1373	350	344	a	هَپُ نْدِيَا كَفُوَاتَ	hapu ndiyā kafuwāta	hapu ndiya kafuwata	
1374	350	344	b	اَكِنِرَا اَسِكُتَ	akinirā asikuta	akinira asikuta	
1375	350	344	c	نْيُبا يَكْوَنْدَ كُپَتَ	nyubā yakwanda kupata	nyuba yakwanda kupata	
1376	350	344	d	مْلَغُوْنِ اَكَغِيْيَا	mlaghūni akaghı̄yā	mlaghuni akaghiya	
1377	351	345	a	حَمْزَةِ كَفَصِيْرِ	ḥamzaẗi kafaṣı̄ri	hamzati kafasiri	
1378	351	345	b	نَمَوْلَنَا عُمَرِا	namawlanā ʿumarī	namaulana umari	
1379	351	345	c	هِنِ نِا اَلْفَجِيْرِ	hini nī alfajı̄ri	hini ni alfajiri	
1380	351	345	d	صَلَا اِمِسِمَمِيَا	ṣalā imisimamiyā	sala imisimamiya	
1381	352	346	a	مْوَانَمْكِ كَتَمْكَ	mwānamki katamka	mwanamki katamka	
1382	352	346	b	كَنِنَ مِمِ عَطِيْكَ	kanina mimi ʿaṭı̄ka	kanina mimi atika	
1383	352	346	c	كَمْبَ مُتَنِپِيْلِكَ	kamba mutanipı̄lika	kamba mutanipilika	
1384	352	346	d	كْوَ مَوُلَنَا عَلِيْ يَا	kwa mawulanā ʿalii yā	kwa mawulana alii ya	
1385	353	347	a	نْدِيَ نِمِيَبِيْرِ	ndiya nimiyabı̄ri	ndiya nimiyabiri	
1386	353	347	b	نْيُبَ سِكُئفَصِيْرِا	nyuba sikufaṣı̄rī	nyuba sikufasiri	
1387	353	347	c	نِمِمِ اُمِيْ جَعْفَارِ	nimimi umii jaʿfāri	nimimi umii jafari	
1388	353	347	d	كَمَ هَيَكُوِلِيْيَا	kama hayakuwilı̄yā	kama hayakuwiliya	
1389	354	348	a	هَپُ حَمْزَا كَتُكَ	hapu ḥamzā katuka	hapu hamza katuka	
1390	354	348	b	كْوَ اُپِسِ نَحَرَكَ	kwa upisi naḥaraka	kwa upisi naharaka	
1391	354	348	c	مْلَغُوْ اَكَوْشِيْكَا	mlaghuu akawshı̄kā	mlaghuu akaushika	
1392	354	348	d	اِلِيْ كُمْفُڠُلِيَا	ilii kumfuguliyā	ilii kumfuguliya	
1393	355	349	a	نْدِ كِتُكَ كْوَا حِمَ	ndi kituka kwā ḥima	ndi kituka kwa hima	
1394	355	349	b	حَپُ نْدِيَا كَيَنْدَامَ	ḥapu ndiyā kayandāma	hapu ndiya kayandama	
1395	355	349	c	كْوَا عَلِيْ اَكِيْكُمَ	kwā ʿalii akı̄kuma	kwa alii akikuma	
1396	355	349	d	مْلَڠُوْ كَمْبِشِيَا	mlaguu kambishiyā	mlaguu kambishiya	
1397	356	350	a	عَلِيْ كَمُوُلِيْزَ	ʿalii kamuwulı̄za	alii kamuwuliza	
1398	356	350	b	كَمْبَ نِا مِمِ حَمْزَا	kamba nī mimi ḥamzā	kamba ni mimi hamza	
1399	356	350	c	نِمْغِنِ هُكُوِيْزَا	nimghini hukūı̄zā	nimghini hukuwiza	
1400	356	350	d	هَپُكَتُكَ عَلِيَا	hapukatuka ʿaliyā	hapukatuka aliya	
1401	357	351	a	يِيِ اُپُ مْلَغُوْنِ	yiyi upu mlaghūni	yiyi upu mlaghuni	
1402	357	351	b	حُلِيْيَ اَكِبَيِنِ	ḥulı̄ya akibayini	huliya akibayini	
1403	357	351	c	قَبُرِ كَنِيُوْنْيِنِ	qaburi kaniyūnyini	qaburi kaniyunyini	
1404	357	351	d	نِپَتِ كُيَڠَلِيَا	nipati kuyagaliyā	nipati kuyagaliya	
1405	358	352	a	حَپُ عَلِيْ كَتُكَ	ḥapu ʿalii katuka	hapu alii katuka	
1406	358	352	b	مَتُوْزِ يَكِمْشُكَ	matūzi yakimshuka	matuzi yakimshuka	
1407	358	352	c	حَتَ نْدِ كَتَمْكَ	ḥata ndi katamka	hata ndi katamka	
1408	358	352	d	مَنِيْنُ اَكَمْوَمْبِيَا	manı̄nu akamwambiyā	maninu akamwambiya	
1409	359	353	a	كَمْوَامْبِيَ كِنُظُمُ	kamwāmbiya kinuẓumu	kamwambiya kinudhumu	
1410	359	353	b	سِنْدِلِى اِسْلَامُ	sindilii islāmu	sindilii islamu	
1411	359	353	c	صُبِرِ كْوَاكِ كَرِيْمَ	ṣubiri kwāki karı̄ma	subiri kwaki karima	
1412	359	353	d	اَمْبَالُ وَاكُتِيْزِيَ	ambālu wākutı̄ziya	ambalu wakutiziya	
1413	360	354	a	كْوَانِ مِمِ نِمَمَكِ	kwāni mimi nimamaki	kwani mimi nimamaki	
1414	360	354	b	نْرِّيِ مْوِنْيِ كِتِ ػَكِ	nrriyi mwinyi kiti kʲaki	nrriyi mwinyi kiti chaki	
1415	360	354	c	نِيُنْيَّ قَبُرِ يَكِيْ	niyunı̄ya qaburi yakii	niyuniya qaburi yakii	
1416	360	354	d	نَتَكَ كُيَغَلِيْيَا	nataka kuyaghalı̄yā	nataka kuyaghaliya	
1417	361	355	a	يُوَا مْوِنْيِ مَمْلَكَ	yuwā mwinyi mamlaka	yuwa mwinyi mamlaka	
1418	361	355	b	لَكِ هُرُوَا كَوِاكَ	laki huruwā kawiāka	laki huruwa kawiaka	
1419	361	355	c	وَلَا مِمِ سِكُتَكَ	walā mimi sikutaka	wala mimi sikutaka	
1420	361	355	d	اَيْفَرِقِ دُنِيَا	ayfariqi duniyā	ayfariqi duniya	
1421	362	356	a	نَوِ صُبِرِ رُيَنْغُ	nawi ṣubiri ruyanghu	nawi subiri ruyanghu	
1422	362	356	b	اُسِپُتِيْ كْوَ مغُ	usiputii kwa mghu	usiputii kwa mghu	
1423	362	356	c	وَلَا هُتُكُوْسَ فُنْغُ	walā hutukūsa funghu	wala hutukusa funghu	
1424	362	356	d	لَئَخِيْرِ نَدُنِيَا	laakhı̄ri naduniyā	laahiri naduniya	
1425	363	357	a	هُمُوْنْيَّ كُپُلِكَ	humūnı̄ya kupulika	humuniya kupulika	
1426	363	357	b	مَتُزِ يَكِمْتُكَ	matuzi yakimtuka	matuzi yakimtuka	
1427	363	357	c	حَپُ كَتُوَا عَطيْكَ	ḥapu katuwā ʿaṭı̄ka	hapu katuwa atika	
1428	363	357	d	اَكَنْيَمَاءَ كُلِيْيَا	akanyamaa kulı̄yā	akanyamaa kuliya	
1429	364	358	a	حَپُا عَلِيْ حَِْدَارِ	ḥapū ʿalii ḥaidāri	hapu alii haidari	
1430	364	358	b	َكِسَ اَكَفَصِيْرِا	akisa akafaṣı̄rī	akisa akafasiri	
1431	364	358	c	بُنَ هَكُيَ زُبِيْرِا	buna hakuya zubı̄rī	buna hakuya zubiri	
1432	364	358	d	نِوِ پْوِكِيْ عَطِيْيَا	niwi pwikii ʿaṭı̄yā	niwi pwikii atiya	
1433	365	359	a	اُنِيِتِيْ بَرُوَا	uniyitii baruwā	uniyitii baruwa	
1434	365	359	b	كَتُكَ كِيْفُنُوَا	katuka kı̄funuwā	katuka kifunuwa	
1435	365	359	c	اَلِپُ سِيْكُمُيُوَا	alipu sı̄kumuyuwā	alipu sikumuyuwa	
1436	365	359	d	وَلَا سِكُمْزِڠِيْيَا	walā sikumzigı̄yā	wala sikumzigiya	
1437	366	360	a	بَرُوَ كِئِفَصِيْرِ	baruwa kiifaṣı̄ri	baruwa kiifasiri	
1438	366	360	b	نْدِيَ نَلِئِيَبِرِا	ndiya naliiyabirī	ndiya naliiyabiri	
1439	366	360	c	حَنْدَ سَسَ كُفِكِرِ	ḥanda sasa kufikiri	handa sasa kufikiri	
1440	366	360	d	تَنَبُحِ كُنِيْغِيَا	tanabuḥi kunı̄ghiyā	tanabuhi kunighiya	
1441	367	361	a	فَطِيْمَ اَكَمْكَلِيْمُ	faṭı̄ma akamkalı̄mu	fatima akamkalimu	
1442	367	361	b	كُمْپَ مَيِ مَتَمُ	kumpa mayi matamu	kumpa mayi matamu	
1443	367	361	c	دُعَآ سَبَعَ تِمَمُ	duʿaã sabaʿa timamu	duaa sabaa timamu	
1444	367	361	d	نْرَانِ نِمِيَسُمِيَا	nrāni nimiyasumiyā	nrani nimiyasumiya	
1445	368	362	a	اَكَمْجِبُ كَلِيْمَ	akamjibu kalı̄ma	akamjibu kalima	
1446	368	362	b	سِيَيَوِزَا فَطِيْمَ	siyayawizā faṭı̄ma	siyayawiza fatima	
1447	368	362	c	مُيُ اُنَ حَلِمَامَ	muyu una ḥalimāma	muyu una halimama	
1448	368	362	d	رُوْحُا حُنَمْبِيَا	rūḥū ḥunambiyā	ruhu hunambiya	
1449	369	363	a	صُبِرِ كْوَا بْوَانَ وِتُ	ṣubiri kwā bwāna witu	subiri kwa bwana witu	
1450	369	363	b	عَطِيْكَ مَيِ سِكِتُ	ʿaṭı̄ka mayi sikitu	atika mayi sikitu	
1451	369	363	c	پِجَ مَتَمَ مَتَتُ	pija matama matatu	pija matama matatu	
1452	369	363	d	يَكِيَقِيْ تَپُكِيْيَا	yakiyaqii tapukı̄yā	yakiyaqii tapukiya	
1453	370	364	a	حَپُ كَتْوَا عَطِيْكَ	ḥapu katwā ʿaṭı̄ka	hapu katwa atika	
1454	370	364	b	مَيِ اَسِپُ يَتَكَ	mayi asipu yataka	mayi asipu yataka	
1455	370	364	c	مْدُوْمُوْنِ كَيَنْدِكَ	mdūmūni kayandika	mdumuni kayandika	
1456	370	364	d	فَطِيْمَ اَكَپُكِيْايَا	faṭı̄ma akapukiyāyā	fatima akapukiyaya	
1457	371	365	a	حَپُ كَمْكَلِيْفِيْشَا	ḥapu kamkalı̄fı̄shā	hapu kamkalifisha	
1458	371	365	b	وَعَظِ كَمُوْنْيِشَا	waʿaẓi kamūnyishā	waadhi kamunyisha	
1459	371	365	c	مَيِ اَلِپُ يَشُشَا	mayi alipu yashushā	mayi alipu yashusha	
1460	371	365	d	مْڠُ كَمْشُهُدِيَ	mgu kamshuhudiya	mgu kamshuhudiya	
1461	372	366	a	اَكِسَ اَمُوِلِيْزِ	akisa amuwilı̄zi	akisa amuwilizi	
1462	372	366	b	زَا مْوَانَوِ خَبَرِزِا	zā mwānawi khabarizī	za mwanawi habarizi	
1463	372	366	c	نَعَلِيْ اَمْوِلِيْزِ	naʿalii amwilı̄zi	naalii amwilizi	
1464	372	366	d	اَكِسَ كَيْلَلِيَا	akisa kaylaliyā	akisa kaylaliya	
1465	373	367	a	حَتَ كُكِپَبَوُكَ	ḥata kukipabawuka	hata kukipabawuka	
1466	373	367	b	فَطِيْمَ اَكَيْنُكَ	faṭı̄ma akaynuka	fatima akaynuka	
1467	373	367	c	كَمْپِكِيَ عَطِيْكَ	kampikiya ʿaṭı̄ka	kampikiya atika	
1468	373	367	d	وَكَلَ وُتِ پَمُيَا	wakala wuti pamuyā	wakala wuti pamuya	
1469	374	368	a	عَطِيْكَ اَكَبَيِنِ	ʿaṭı̄ka akabayini	atika akabayini	
1470	374	368	b	فَطِيْمَ كْوِحِرِانِ	faṭı̄ma kwiḥiriāni	fatima kwihiriani	
1471	374	368	c	مْوَنَڠُ اُكُ مُيُوْنِ	mwanagu uku muyūni	mwanagu uku muyuni	
1472	374	368	d	مْتُ سِكُمُوَاتِيَا	mtu sikumuwātiyā	mtu sikumuwatiya	
1473	375	369	a	نَفَطِيْمَ اَتَمْكِيْ	nafaṭı̄ma atamkii	nafatima atamkii	
1474	375	369	b	اَمْوَامْبِيَ مُوْمِ وَكِ	amwāmbiya mūmi waki	amwambiya mumi waki	
1475	375	369	c	نَوِ نِرَا كَمْپِيْكَ	nawi nirā kampı̄ka	nawi nira kampika	
1476	375	369	d	اَسِرِّ پْوِكِ عَطِيَا	asirri pwiki ʿaṭiyā	asirri pwiki atiya	
1477	376	370	a	عَلِيْ كَغِيَ نْرَانِ	ʿalii kaghiya nrāni	alii kaghiya nrani	
1478	376	370	b	كْوَا مْكُنُ اَكَبَيِنِ	kwā mkunu akabayini	kwa mkunu akabayini	
1479	376	370	c	اَكَىْنُكَ كِتِيْنِ	akaynuka kitı̄ni	akaynuka kitini	
1480	376	370	d	فَطِيْمَ اَكَمْوِرِّيا	faṭı̄ma akamwirriyā	fatima akamwirriya	
1481	377	371	a	كَمَ ػِنْرَا كِمْپِيْكَ	kama kʲinrā kimpı̄ka	kama chinra kimpika	
1482	377	371	b	فَطِيْمَ حُتُوُظِيْكَ	faṭı̄ma ḥutuwuẓı̄ka	fatima hutuwudhika	
1483	377	371	c	كَبَ وَاتُ كُتَمْكَ	kaba wātu kutamka	kaba watu kutamka	
1484	377	371	d	كَمَ حَيُ كُنَمْبِيَا	kama ḥayu kunambiyā	kama hayu kunambiya	
1485	378	372	a	كَنِنَ شَهِدِ مْغُ	kanina shahidi mghu	kanina shahidi mghu	
1486	378	372	b	هَيَمُ مُيُنِ مْوَانْغُ	hayamu muyuni mwānghu	hayamu muyuni mwanghu	
1487	378	372	c	سَسَا نِكَمَ رُيَغُ	sasā nikama ruyaghu	sasa nikama ruyaghu	
1488	378	372	d	نَقَسِيْمُ نِمَمُيَا	naqası̄mu nimamuyā	naqasimu nimamuya	
1489	379	373	a	حَپُ عَلِيْ كَتُكَ	ḥapu ʿalii katuka	hapu alii katuka	
1490	379	373	b	كَدَمَنَ نَعَطِيْكَ	kadamana naʿaṭı̄ka	kadamana naatika	
1491	379	373	c	اَكِنْرَا اَكَمْپِيْكَ	akinrā akampı̄ka	akinra akampika	
1492	379	373	d	حَتَ كْوَوُ اَكَغِيَا	ḥata kwawu akaghiyā	hata kwawu akaghiya	
1493	370	374	a	كِسَ عَلِيْ حَيْدَارِ	kisa ʿalii ḥaydāri	kisa alii haydari	
1494	370	374	b	اَكَصَلِ اَظُهُرِا	akaṣali aẓuhurī	akasali adhuhuri	
1495	370	374	c	كَنَدَامَنَ نَزُبِيْرِ	kanadāmana nazubı̄ri	kanadamana nazubiri	
1496	370	374	d	مُيِنِ اَكِرِجِيْيَا	muyini akirijı̄yā	muyini akirijiya	
1497	371	375	a	حَپُ اَلِپُ رُدِيْ	ḥapu alipu rudii	hapu alipu rudii	
1498	371	375	b	رِپُ اَلِپُ رَادِدِ	ripu alipu rādidi	ripu alipu radidi	
1499	371	375	c	مَنِنُ اَكَجِتَهِدِ	maninu akajitahidi	maninu akajitahidi	
1500	371	375	d	مَصَحَبَ كِوَامْبِيَا	maṣaḥaba kiwāmbiyā	masahaba kiwambiya	
1501	372	376	a	كَوَامْبِيَ كُپُلِيْكَ	kawāmbiya kupulı̄ka	kawambiya kupulika	
1502	372	376	b	كُلَ لَلِلُوْتِرِّكَ	kula lalilūtirrika	kula lalilutirrika	
1503	372	376	c	اَمْابَلُ لَلُنِنِيْكَ	amābalu laluninı̄ka	amabalu laluninika	
1504	372	376	d	يُتِ كَوَاحَدِثِيَا	yuti kawāḥadithiyā	yuti kawahadithiya	
1505	373	377	a	نَمِ نِمِتِيْيَ تَمُ	nami nimitı̄ya tamu	nami nimitiya tamu	
1506	373	377	b	بَىْتِ زَنْغُ حُكُمَ	bayti zanghu ḥukuma	bayti zanghu hukuma	
1507	373	377	c	نَئَبَوُ وَزِسُمَ	naabawu wazisuma	naabawu wazisuma	
1508	373	377	d	كْوَ زُتِ زِتَوِلِيَ	kwa zuti zitawiliya	kwa zuti zitawiliya	
1509	374	378	a	بَىْتِيْزِ زِيُوِنِ	baytı̄zi ziyuwini	baytizi ziyuwini	
1510	374	378	b	مِيَا تَتُ هُمْكِنِ	miyā tatu humkini	miya tatu humkini	
1511	374	378	c	وَسَبَعَ وَسِتِيْنِ	wasabaʿa wasitı̄ni	wasabaa wasitini	
1512	374	378	d	عَدَادِ نِمِوَمْبِيَ	ʿadādi nimiwambiya	adadi nimiwambiya	
1513	375	379	a	اَحِفَظِيُ مُيُوْنِ	aḥifaẓiyu muyūni	ahifadhiyu muyuni	
1514	375	379	b	مْتُ اَكَزِبَيِنِ	mtu akazibayini	mtu akazibayini	
1515	375	379	c	اَصُبُحِ نَيْيُوْنِ	aṣubuḥi nayyūni	asubuhi nayyuni	
1516	375	379	d	مُيَ اِسِپُغُكِيْيَا	muya isipughukı̄yā	muya isipughukiya	
1517	376	380	a	كْوَنْدَ حَتَظِلِلِيْكَ	kwanda ḥataẓililı̄ka	kwanda hatadhililika	
1518	376	380	b	مْتُيِ هَتُسُمْبُكَ	mtuyi hatusumbuka	mtuyi hatusumbuka	
1519	376	380	c	نَئَتَكَوُ تَمْكَ	naatakawu tamka	naatakawu tamka	
1520	376	380	d	مُلَ تَمُوَافِكِيْيَا	mula tamuwāfikı̄yā	mula tamuwafikiya	
1521	377	381	a	اَوْمْبَلُ كْوَ وَهَابُ	awmbalu kwa wahābu	aumbalu kwa wahabu	
1522	377	381	b	اَتَجِبِوَا جَوَابُ	atajibiwā jawābu	atajibiwa jawabu	
1523	377	381	c	اَوْ مْتُ نَجَرِبُ	aw mtu najaribu	au mtu najaribu	
1524	377	381	d	اَدَلِلِشِيْ وَصِيْيَا	adalilishii waṣı̄yā	adalilishii wasiya	
1525	378	382	a	لَاطرد سَعِرِ	lāṭrd saʿiri	latrd sairi	
1526	378	382	b	اِسْمُ يَكِ جَبَارِ	ismu yaki jabāri	ismu yaki jabari	
1527	378	382	c	اُرُادِ وَكِ بَشِيْرِ	uruādi waki bashı̄ri	uruadi waki bashiri	
1528	378	382	d	مْوِسُ اَصِزُتِلِوَى	mwisu aṣizutiliway	mwisu asizutiliway	
1529	379	383	a	نِمِكْوَانْدَ كِكَرِرِ	nimikwānda kikariri	nimikwanda kikariri	
1530	379	383	b	نَوِ سُمَ اِظْهَرِا	nawi suma iẓharī	nawi suma idhhari	
1531	379	383	c	اُتِنْدِ وَجَعْفَرِ	utindi wajaʿfari	utindi wajafari	
1532	379	383	d	نَمَوُلَنَا عَلِيْايَا	namawulanā ʿaliyāyā	namawulana aliyaya	
1533	380	384	a	تمت وايا الخير	tmt wāyā ālkhı̄r	tmt waya alhir	
1534	380	384	b	عمت وصآ اللّٰه	ʿmt wṣã lläh	mt usa llah	
1535	380	384	c	على سيّد نا محمد	ʿlı̄ sı̄yd nā mḥmd	li sid na mhmd	
1536	380	384	d	و على اله وصحبه وسلم	w ʿlı̄ ālh wṣḥbh ūslm	u li alh ushbh uslm	
\.


--
-- Name: jaafari_r_poemline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_r_poemline_id_seq', 1536, true);


--
-- Name: jaafari_r_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY jaafari_r
    ADD CONSTRAINT jaafari_r_pk PRIMARY KEY (poemline_id);


--
-- PostgreSQL database dump complete
--

