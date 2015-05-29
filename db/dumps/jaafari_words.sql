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

COPY jaafari_words (word_id, stanza, loc, "position", arabic, close, standard, edclose, variant, note, root, english) FROM stdin;
3050	288	d	1	أَمْبَيٗ	ambayo	ambayo	ambayo				who has brought you here.
79	8	b	2	كَمْكَنُشَ	kamkanusha	kamkanusha	kamkanusha				
35	4	a	2	مَهَرِيٖ	mahariye	mahariye	mahariye				And know that as for her dowry,
7	1	c	1	نَ	na	na	na				and "the Merciful" -- know
3060	289	c	1	نِؤٗنْيَ	nionya	nionya	nionya				Show me his grave --
3063	289	d	1	نَتَكَ	naṯaka	nataka	naṯaka				I want to see it.
12	2	a	1	پُلِكَنِ	pulikani	pulikani	pulikani				Listen, my brothers,
3085	291	d	1	لَ	la	la	la				in the next world and this one.
44	5	a	1	عَلِى	'alii	'alii	Ali				When Ali left [Atiya]
5	1	b	2	نَ	na	na	na				
56	5	d	2	هُمْفُمْبِيَ	humfumbiya	humfumbiya	humfumbia		i.e. to hide the fact that he was not wearing the ring.		
81	8	c	2	كَمُؤٗنٖشَ	kamuonesha	kamuonesha	kamuonesha				
2	1	a	2	اللّٰهِ	llähi	llahi					
45	5	a	2	كُتٗكَ	kuṯoka	kutoka	kutoka				
3052	289	a	1	مِمِ	mimi	mimi	mimi				[Atiya said:] I am his mother!
9	1	c	3	يُوَنِ	yuwani	yuwani	yuwani				
3091	292	b	1	مَتٗزِ	maṯozi	matozi	maṯozi				tears falling.
37	4	b	1	نَلٗمْپَ	nalompa	nalompa	nalompa				which I gave her as well, 
58	6	a	2	بِنْتِ	binṯi	binti	binti				
84	9	a	1	مْوَنَ	mwana	mwana	Mwana				Lady, daughter of the Trustworthy One, 
59	6	a	3	رَسُوْلِ	rasūli	rasuli	rasuli				
3107	293	d	1	أُيِنٖ	uyine	uyine	uyine				Did you come by yourself, Atiya?
3089	292	a	1	هُمُؤٗوَ	humuowa	humuowa	humuowa		\\Swa{anamtizama}.		[Atiya] looked at him, listening,
3065	290	a	1	يٗوَ	yowa	yowa	yowa		Emend to \\Swa{yuwa}.		[Ali said:] Know that the Almighty
64	6	c	3	عَقِلِ	'aqili	'aqili	akili				
66	6	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambia				
16	2	b	3	يَنْڠُ	yangu	yangu	yangu				
48	5	b	2	رُبَ	ruba	ruba	ruba				
49	5	b	3	مٗيٗ	moyo	moyo	moyo				
34	4	a	1	نَ	na	na	na				
70	7	b	2	أَكَمْوَمْبِيٖ	akamwambiye	akamwambiye	akamwambie				
19	2	c	3	زَنْڠُ	zangu	zangu	zangu				
3096	292	d	1	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				and Ali spoke.
72	7	c	2	عَليْ	'alı̄	'ali	Ali				
36	4	a	3	يُوَنِ	yuwani	yuwani	yuwani				
14	2	b	1	كهٖنْدَ	kʿenḏa	kenda	kenda				I went on a journey.
73	7	c	3	أُوٗزٖيْ	uwozee	uwozee	uozee				
3101	293	b	1	بَسِ	basi	basi	basi				spoke to her then:
50	5	b	4	وَكٖ	wake	wake	wake				
8	1	c	2	الرَّحِيْمُ	rraḥı̄mu	rrahimu	rahimu				
75	7	d	2	هُكِسِكِيَ	hukisikiya	hukisikiya	hukisikia				
83	8	d	2	أَكَمْٹِيَ	akamţiya	akamtiya	akamtia				
3112	294	b	1	كَٹِكَ	kaţika	katika	kaţika				and when I opened it
3114	294	c	1	أَلِپٗ	alipo	alipo	alipo				I took no heed of where he was,
11	1	d	2	يَلٗأَنْدَمِيَ	yaloanḏamiya	yaloandamiya	yaloandamia				
3056	289	b	1	نْدِيٖ	nḏiye	ndiye	nḏiye				I bore his birthpangs!
13	2	a	2	نْدُزَنْڠُ	nḏuzangu	nduzangu	nduzangu				
26	3	b	2	نَ	na	na	na				
85	9	a	2	بِنْتِ	binṯi	binti	binti				
3093	292	c	1	هَپٗ	hapo	hapo	hapo				Then Atiya stopped [crying]
3116	294	d	1	وَلَ	wala	wala	wala				and I did not look for him.
3118	295	a	1	بَرُوَ	baruwa	baruwa	baruwa				When I realised what was in the letter
3120	295	b	1	نْدِيَ	nḏiya	ndiya	nḏiya				I set out on the road -- 
3127	296	a	1	فَطِمَ	faṭima	fatima	faṭima				Fatima spoke to her,
15	2	b	2	مَتٖمْبٖزِ	maṯembezi	matembezi	matembezi				
18	2	c	2	خَبَرِ	khabari	habari	habari				
3129	296	b	1	أَكَمْپَ	akampa	akampa	akampa				and gave her sweet water --
3	1	a	3	إِخْوَانِ	ikhwāni	ihwani	ikhwāni				
21	2	d	2	چَلٗنِجِرِيَ	chalonijiriya	chalonijiriya	chalonijiria				
17	2	c	1	نِوَپٖ	niwape	niwape	niwape				Let me give you my story, 
23	3	a	2	نٖنْدَءٗ	nenḏao	nendao	nendao				
3098	293	a	1	هَپٗ	hapo	hapo	hapo				So Ali the Lion-like
52	5	c	2	كْوَ	kwa	kwa	kwa				
3104	293	c	1	مْبٗنَ	mbona	mbona	mbona				Why did Zubayr not come [with you]?
46	5	a	3	كْوَكٖ	kwake	kwake	kwake				
53	5	c	3	مْكٖ	mke	mke	mke				
54	5	c	4	وَكٖ	wake	wake	wake				
68	7	a	2	كِزٖيْ	kizee	kizee	kizee				
63	6	c	2	مْوٖنْيٖ	mwenye	mwenye	mwenye				
77	8	a	2	مْشَوَشَ	mshawasha	mshawasha	mshawasha				
3132	296	c	1	دُعَ	ḏu'a	du'a	ḏu'a				seven whole prayers
3135	296	d	1	نْدَنِ	nḏani	ndani	nḏani				she had read into it.
3137	297	a	1	أَكَمْجِبُ	akamjibu	akamjibu	akamjibu				[Atiya] answered her with the words:
3142	297	c	1	مٗيٗ	moyo	moyo	moyo				my heart is in confusion,
3148	298	a	1	صُبِرِ	ṣubiri	subiri	ṣubiri				[Fatima replied:] Trust in our Lord,
3159	298	d	1	يَبَكِيٖؤٗ	yabakiyeo	yabakiyeo	yabakiyeo				and whatever is left I will take.
3163	299	b	1	مِيٗمٗنِ	miyomoni	miyomoni	miyomoni				she took some into her mouth.
3165	299	c	1	أَكَٹُمْوَ	akaţumwa	akatumwa	akaţumwa				[The cup] was given back by Atiya,
3168	299	d	1	فَتُمَ	faṯuma	fatuma	faṯuma				and Fatima took it. (?)
3170	300	a	1	هَپٗ	hapo	hapo	hapo				So Fatima persuaded her
3175	300	c	1	مَاءِ	mai	mai	mai				When [Atiya] had swallowed the water
3182	301	b	1	زَ	za	za	za				for news of her son,
3185	301	c	1	نَ	na	na	na				and Ali explained [everything] to her
3188	301	d	1	كِشَ	kisha	kisha	kisha				weeping at the end.
3190	302	a	1	هَتَ	haṯa	hata	haṯa				Until, when dawn came,
3192	302	b	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima got up
3194	302	c	1	كَمْپِكِيَ	kampikiya	kampikiya	kampikiya				and cooked [food] for Atiya
3213	304	b	1	أَمْوَمْبِيٖ	amwambiye	amwambiye	amwambiye				and said to her husband:
3216	304	c	1	نَاوٖ	nāwe	nawe	nāwe				And you go and accompany her
3222	305	a	1	عَلِيْ	'alii	'alii	'alii				Ali went into the inner [room]
3225	305	b	1	كْوَ	kwa	kwa	kwa				and signalled [Fatima] with his hand.
3228	305	c	1	أَكَئِنُكَ	akainuka	akainuka	akainuka				She rose from her chair,
3230	305	d	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima, and went to him.
3232	306	a	1	كَْبَ	kaba	kaba	kaba				He said: If I go and accompany her,
3235	306	b	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima, will you not be angry
3237	306	c	1	كْوَمْبَ	kwamba	kwamba	kwamba				if people talk [about it]
3243	307	a	1	كَنٖنَ	kanena	kanena	kanena				She said: I swear to God,
3246	307	b	1	هَيَمٗ	hayamo	hayamo	hayamo				[such things] are not in my heart.
3249	307	c	1	سَسَ	sasa	sasa	sasa				[Atiya] is like a sister to me -- 
3257	308	a	1	هَپٗ	hapo	hapo	hapo				So Ali went out
3260	308	b	1	كَنْدَمَنَ	kanḏamana	kandamana	kanḏamana				and went along with Atiya.
3263	308	c	1	أَكٖنْدَ	akenḏa	akenda	akenḏa				He went and accompanied her
3265	308	d	1	هَتَ	haṯa	hata	haṯa				until he reached her home.
3271	309	b	1	أَكَصَلِ	akaṣali	akasali	akaṣali				said the midday prayers
3276	309	d	1	مُئِنِ	muini	muini	muini				and returned to the town.
3278	310	a	1	نَ	na	na	na				And when he returned,
3283	310	c	1	مَنٖنٗ	maneno	maneno	maneno				striving for [exact] words,
3285	310	d	1	مصَحَبَ	mṣaḥaba	msahaba	mṣaḥaba				telling the Companions.
3287	311	a	1	هَپَ	hapa	hapa	hapa				Here I have finished,
3290	311	b	1	بَيْتِ	bayṯi	bayti	bayṯi				my verses have come to an end,
3296	311	d	1	كْوَ	kwa	kwa	kwa				will be made aware of everything [that happened].
3328	315	b	1	نَنْيِ	nanyi	nanyi	nanyi				and you, read it inwardly --
3331	315	c	1	أُتٖنْدِ	uṯenḏi	utendi	uṯenḏi				the Ballad of Ja'far
3334	315	d	1	وَ	wa	wa	wa				and Lord Ali.
6	1	b	3	رَحْمٰنِ	raḥmäni	rahmani	rahmani				
39	4	c	1	نَلِنَ	nalina	nalina	nali na				I had a ring on my finger,
42	4	d	1	كَوَهِ	kawahi	kawahi	kawahi				and I persuaded her to wear it.
87	9	b	1	هِيٗ	hiyo	hiyo	hiyo				[said the old woman], this is true.
61	6	b	2	هَيَتَأَمَلِ	hayaṯaamali	hayataamali	hayataamali		\\Swa{-taamali}, \\E{observe}.		
1019	96	d	1	نَمِ	nami	nami	nami				I can tell from your behaviour.
3177	300	d	1	مُنْڠُ	mungu	mungu	mungu				[Fatima] interceded to God for her.
3219	304	d	1	أَسٖنْدٖ	asenḏe	asende	asenḏe				so that Atiya [need] not go on her own.
3240	306	d	1	كَمَ	kama	kama	kama				and gossip about me?
3253	307	d	1	نَ	na	na	na				exactly the same as Qasim.
3268	309	a	1	هَپٗ	hapo	hapo	hapo				Then Ali the Lion-like
1642	153	c	2	وَٹٹُ	waţţu	wattu	waţţu				
1887	176	c	3	إِكِتٗمَ	ikiṯoma	ikitoma	ikiṯoma				
1972	185	a	1	نَ	na	na	na		Emend to \\Swa{ni}.		It is my grandfather the Prophet,
2429	229	b	1	پٹٖ	pţe	pte	pţe		Emend to \\Swa{pete}.		she caught sight of the ring.
2557	242	a	2	أَكَنُطُمُ	akanuṭumu	akanutumu	akanuṭumu		Emend to \\Swa{akanuzumu}. Fatima supports the point Ali is making to his children. 		
2611	246	d	1	آٹِ	ţi	ti	ţi		\\Swa{ati} here implies that what was said is a lie.		as you swore?
2652	250	a	3	لِسَنِ	lisani	lisani	lisani		Emend to \\Swa{hisani}, \\E{kindness, goodness}.		
2718	256	c	1	هَوٖكَ	haweka	haweka	haweka		We understand \\Swa{Mungu}, \\E{God}.		[God] cannot have two Lions,
2933	277	c	2	أ							
3161	299	a	1	مََءِ	maai	maai	maai				Although [Atiya] did not really want the water,
1022	97	a	1	نَتَكَ	naṯaka	nataka	naṯaka				[She told Ja'far:] I want [to hear] your news,
213	21	a	1	كِشَ	kisha	kisha	kisha				Then Ali the Lion-like,
1025	97	b	1	هَيَ	haya	haya	haya				tell it to me, Ja'far.
222	21	d	2	كُٹْوَلِيَ	kuţwaliya	kutwaliya	kuţwaliya		Ali tells this lie to gain some time, but it doesn't work.		
244	23	c	3	مْكٖ	mke	mke	mke				
256	24	b	5	وَنْڠُ	wangu	wangu	wangu		This is, at best, only half-true.  Note that \\Swa{kusema urongo asitete ni vizuri, si vibaya} -- that is, it is justifiable to tell white lies to console your spouse, or in the interests of conciliation and marital harmony.  For instance, once a husband arrived home late accompanied by a friend.  The wife asked the husband why he was late and became suspicious when he did not reply.  The friend saw trouble brewing and stepped in with the lie that the husband had been seeing about getting some money for her as a present, which of course placated her.		
193	19	a	3	نْدُيَنْڠُ	nḏuyangu	nduyangu	nduyangu				
1031	97	d	1	صُوْرَ	ṣūra	sura	ṣūra				and you are not your ordinary self.
215	21	a	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari		\\Swa{haidari}, \\E{lion}.  The epithet, "lion-like", is so closely associated with Ali that it is now more of a name than a descriptive metaphor.		
1032	97	d	2	زِمٖكُپٗتٖيَ	zimekupoṯeya	zimekupoteya	zimekupoṯeya		lit. "[your] features have changed".  \\Swa{-poteya} here = \\Swa{-geuka, -badilika}.		
191	19	a	1	وَتَكَ	waṯaka	wataka	wataka				What do you want, my dear, 
194	19	b	1	نِئِفِدِ	niifiḏi	niifidi	niifidi		\\Swa{niifidi} =  \\Swa{niokowe}.  Therefore, lit., "so that I may save my soul, so that I will not be in distress".  This expresses humility, and shows that the speaker cares very much about the other person.		so that I may console you,
204	20	a	2	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				
195	19	b	2	رٗحٗ	roḥo	roho	roho				
198	19	c	2	أُوَتٖ	uwaṯe	uwate	uwate				
199	19	c	3	مَتُنْڠُ	maṯungu	matungu	matungu				
197	19	c	1	مٗيٗ	moyo	moyo	moyo				so that your heart will leave aside pain, 
200	19	d	1	نَوٖ	nawe	nawe	nawe				so that you will stop crying?
1033	98	a	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far said:
1035	98	b	1	وَتَكَ	waṯaka	wataka	waṯaka				What news do you want?
202	19	d	3	كُلِيَ	kuliya	kuliya	kulia				
1045	99	a	1	كِكْوَمْبِيَ	kikwambiya	kikwambiya	kikwambiya				If I tell you in Arabic
1047	99	b	1	نَيُوَ	nayuwa	nayuwa	nayuwa				I know you will answer:
1049	99	c	1	تٖنَ	ṯena	tena	ṯena				"I am perplexed again"
1052	99	d	1	مِمِ	mimi	mimi	mimi				[even if] I myself tell you.
1055	100	a	1	كِكُؤُلِزَ	kikuuliza	kikuuliza	kikuuliza				If I ask you [whether] he is alive,
203	20	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima replied:
206	20	b	2	يَكٗ	yako	yako	yako				
207	20	b	3	نَئِتَكَ	naiṯaka	naitaka	naiṯaka				
208	20	c	1	عَلِى	'alii	'alii	'alii				Ali was startled --
210	20	d	1	هَؤٗنِ	haoni	haoni	haoni				he could not see what he could tell her.
209	20	c	2	أَكَشُٹُكَ	akashuţuka	akashutuka	akashuţuka				
227	22	b	1	أَبُوْ	abuu	abuu	abuu				it will not fit Abu Bakr.
192	19	a	2	نِنِ	nini	nini	nini				
231	22	c	1	نِمٖٹْوَاءَ	nimeţwaa	nimetwaa	nimeţwaa				"I have discovered the real reason
233	22	d	1	كْوَ	kwa	kwa	kwa				for what you told me.
196	19	b	3	يَنْڠُ	yangu	yangu	yangu				
234	22	d	2	أُلِيٗنَمْبِيَ	uliyonambiya	uliyonambiya	uliyonambiya				
211	20	d	2	لَ	la	la	la				
212	20	d	3	كُمْوَمْبِيَ	kumwambiya	kumwambiya	kumwambiya				
201	19	d	2	أُكٗمٖ	ukome	ukome	ukome				
214	21	a	2	عَلِيْ	'alii	'alii	'alii				
224	22	a	2	يَكٗ	yako	yako	yako				
225	22	a	3	يَ	ya	ya	ya				
217	21	b	2	أَلِلٗفَسِرِ	alilofasiri	alilofasiri	alilofasiri				
226	22	a	4	چَنْدَنِ	chanḏani	chandani	chanḏani				
219	21	c	2	ٰإبُوْ	äbuu	abuu	äbuu				
220	21	c	3	بَكِرَِ	bakiria	bakiria	bakiria				
228	22	b	2	بَكَرِ	bakari	bakari	bakari				
229	22	b	3	سِ	si	si	si				
230	22	b	4	كِفَنِ	kifani	kifani	kifani				
232	22	c	2	تَمْكِنِ	ṯamkini	tamkini	ṯamkini				
236	23	a	2	مْوٖزِ	mwezi	mwezi	mwezi				
237	23	a	3	نِ	ni	ni	ni				
238	23	a	4	وَ	wa	wa	wa				
239	23	a	5	پِلِ	pili	pili	pili				
245	23	c	4	وَ	wa	wa	wa				
246	23	c	5	پِلِ	pili	pili	pili				
253	24	b	2	وٖيْ	wee	wee	wee				
254	24	b	3	پْوٖكٖ	pweke	pweke	pweke				
255	24	b	4	مْكٖ	mke	mke	mke				
243	23	c	2	نَ	na	na	na				
250	24	a	2	وَاللّٰهِ	wallähi	wallahi	wallähi				
248	23	d	2	نِمٖسِكِيَ	nimesikiya	nimesikiya	nimesikiya				
251	24	a	3	نْدُيَنْڠُ	nḏuyangu	nduyangu	nḏuyangu				
258	24	c	2	نَنِ	nani	nani	nani				
259	24	c	3	عَدُوِ	'aḏuwi	'aduwi	'aḏuwi				
260	24	c	4	يَنْڠُ	yangu	yangu	yangu				
346	33	c	3	هَئِسِ	haisi	haisi	haisi				
262	24	d	2	أَلٗنِزُلِيَ	alonizuliya	alonizuliya	alonizuliya				
1060	100	c	1	يَنْڠُ	yangu	yangu	yangu				"When I was still pregnant with you
263	25	a	1	كَمْجِبُ	kamjibu	kamjibu	kamjibu				She replied eloquently:
278	26	c	2	كِسِمَنِ	kisimani	kisimani	kisimani		Another lie, again to gain some time, \\Swa{kamuulize Nabiya}, \\E{so that he can go and ask the Prophet}.  But Fatima does not fall for this one either.		
265	25	a	3	لِسَنِ	lisani	lisani	lisani		\\Swa{lisani} perhaps < \\AS{لسن}, \\E{speak eloquently}, note also \\AS{لسان}, \\E{tongue} and \\AS{لسانى}, \\E{orally}.  We could also emend to \\Swa{hisani}, \\E{kindness, goodness}, i.e. politely.  See 250a.		
264	25	a	2	كْوَ	kwa	kwa	kwa				
315	30	c	1	زِيَپٗ	ziyapo	ziyapo	ziyapo		\\Swa{-apa}, \\E{curse}, but \\Swa{-tia kiapo}, \\E{swear an oath}, such as \\Swa{nife nili kaffir}, \\E{may I die an unbeliever}.  Ali has sworn a few oaths to Fatima out of necessity, but he is not bound by them because he swore them in order to preserve marital harmony.		white lies,
1057	100	b	1	بَبَ	baba	baba	baba				my father, you tell me he is not:
305	29	b	3	نِنِ	nini	nini	nini		The northern form of \\Swa{alikuwa na nini}, based respectively on two verbs meaning "be": \\Swa{-li} and \\Swa{-wa}.		
267	25	b	2	سِمْبَئِنِ	simbaini	simbaini	simbaini				
333	32	b	2	أَبُرُدِ	aburuḏi	aburudi	aburuḏi		He is speaking as if \\Swa{iko moto nyumbani}, \\E{there is a fire at home}, and he wants Fatima to \\Swa{apowe}, \\E{cool down}.\n 		
340	33	a	2	أَكَجِلِسِ	akajilisi	akajilisi	akajilisi		\\Swa{-jilisi} = \\Swa{-keti}.  The Prophet is being subtle, and pretends he does not know what has happened, so that he can get to the bottom of things.		
379	37	a	1	أَكَئِنَمَ	akainama	akainama	akainama		Good children are shy in front of their parents, and show them respect.		Fatima bowed down
269	25	c	2	أُمْپٖيْ	umpee	umpee	umpee				
270	25	c	3	نَنِ	nani	nani	nani				
481	47	a	2	نَلٗيَفِكِرِ	naloyafikiri	naloyafikiri	naloyafikiri		Amu \\Swa{n[i]-al[i]-o} = Mvita \\Swa{ni-l[i]-o}, subject prefix + past marker + relative marker.		
293	28	a	2	أَكَؤُذِكَ	akaudhika	akaudhika	akaudhika				
272	25	d	2	تهَرِضِيَ	ṯʿariḍiya	taridhiya	ṯʿariḍiya				
282	27	a	2	نٖنَ	nena	nena	nena		Or we could emend to \\Swa{huyanena}, \\E{you still haven't said}.		
274	26	a	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
266	25	b	1	مْٹُيٖ	mţuye	mtuye	mţuye				I will not disclose that person.
326	31	c	2	سِهِمِلِ	sihimili	sihimili	sihimili				
1084	102	d	2	عَلِيَ	'aliya	'aliya	'aliya		i.e. your daily life does not take you to the sorts of places where you might meet Ali. 		
1101	104	c	3	هَكِزِدِ	hakiziḏi	hakizidi	hakiziḏi		See note to 67c.  People believe anecdotes about famous people, even if they are not likely or academically proven -- as the many magazines retailing celebrity gossip can attest.		
276	26	b	2	تَمْكِنِ	ṯamkini	tamkini	ṯamkini				
1102	104	d	1	كَمَ	kama	kama	kama				than my own, look.
295	28	b	2	كُكَسِرِكَ	kukasirika	kukasirika	kukasirika				
1326	124	a	1	هٗىٗ	hoyo	hoyo	hoyo				This is Abu Bakr, [said the first man],
1336	124	c	3	هُفَسِرِ	hufasiri	hufasiri	hufasiri		\\Swa{mbona husemi?}, \\E{why aren't you speaking?}.		
1337	124	d	1	أِنَ	ina	ina	ina				name for us to hear it.
280	26	d	2	كُكُتٗلٖيَ	kukuṯoleya	kukutoleya	kukuṯoleya				
310	29	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				
297	28	c	2	كَتٗكَ	kaṯoka	katoka	kaṯoka				
283	27	a	3	پٖٹٖ	peţe	pete	peţe				
284	27	a	4	يَكٗ	yako	yako	yako				
286	27	b	2	أُئِوٖسٖپٗ	uiwesepo	uiwesepo	uiwesepo				
288	27	c	2	هَيَ	haya	haya	haya				
289	27	c	3	مَتَمْكٗ	maṯamko	matamko	maṯamko				
299	28	d	2	كْوَ	kwa	kwa	kwa				
300	28	d	3	نَبِيَ	nabiya	nabiya	nabiya				
312	30	a	2	شَرِيْفُ	sharı̄fu	sharifu	sharı̄fu				
302	29	a	2	هَشِمَ	hashima	hashima	hashima				
320	31	a	2	يَا	yā	ya	yā				
321	31	a	3	رَسُوْلِ	rasūli	rasuli	rasūli				
304	29	b	2	نَ	na	na	na				
306	29	b	4	فَتُمَ	faṯuma	fatuma	faṯuma				
314	30	b	2	مٖنِكَلِفُ	menikalifu	menikalifu	menikalifu				
335	32	c	2	مُحَمَدِ	muḥamaḏi	muhamadi	muḥamaḏi				
318	30	d	2	نِمٖمْٹِلِيَ	nimemţiliya	nimemtiliya	nimemţiliya				
323	31	b	2	نِمٖٹٖنْدَ	nimeţenḏa	nimetenda	nimeţenḏa				
324	31	b	3	كْوٖلِ	kweli	kweli	kweli				
330	32	a	2	إٖنٖنْدَ	enenḏa	enenda	enenḏa				
331	32	a	3	سَيِدِ	sayiḏi	sayidi	sayiḏi				
328	31	d	2	زَمٖنِنْڠِيَ	zameningiya	zameningiya	zameningiya				
337	32	d	2	كَأَنْدَمَ	kaanḏama	kaandama	kaanḏama				
338	32	d	3	نْدِيَنِ	nḏiyani	ndiyani	nḏiyani				
342	33	b	2	أُنَ	una	una	una				
343	33	b	3	وَسِوَسِ	wasiwasi	wasiwasi	wasiwasi				
345	33	c	2	كَمَ	kama	kama	kama				
359	34	d	2	كُمْوَنْدَمِيَ	kumwanḏamiya	kumwandamiya	kumwanḏamiya		\\Swa{-andama}, \\E{follow someone directly, the two of you together}, but \\Swa{-andamia}, \\E{follow someone who has already gone ahead, so that each person is travelling alone}, = \\Swa{-fuatia}.		
361	35	a	2	هَكُكَسِرِ	hakukasiri	hakukasiri	hakukasiri		i.e. \\Swa{pale pale kampa habari yote}, \\E{there and then she gave him the whole story}.		
391	38	b	2	نَ	na	na	na				
392	38	b	3	مُمٖئٗ	mumeo	mumeo	mumeo				
1341	125	b	1	مِمِ	mimi	mimi	mimi				I am called Azwaj,
348	33	d	2	كُمْوَنْڠَلِيَ	kumwangaliya	kumwangaliya	kumwangaliya				
1344	125	c	1	نَمِ	nami	nami	nami				and I now hope
376	36	c	2	نْيُمْبَنِ	nyumbani	nyumbani	nyumbani				
393	38	c	1	أَكَرُدِشَ	akaruḏisha	akarudisha	akaruḏisha				And he comforted her,
350	34	a	2	هَشِمِ	hashimi	hashimi	hashimi				
384	37	c	2	كَلِمَ	kalima	kalima	kalima		\\Swa{ametokwa na maneno} -- this occurs when one feels particularly when one feels strongly about something.  If you want to emphasise a speaker's volubility, you can say \\Swa{ametokwa na maneno yake na ya kuwazimu}, lit. \\E{je was come out of by his own words and those of his ancestors}.		
365	35	c	2	نْدَكٖ	nḏake	ndake	nḏake		Emend to \\Swa{zake}.		
395	38	d	1	فَاطِمَة	fāṭimaẗ	fatimat	fāṭimaẗ				Fatima the Radiant.
352	34	b	2	نَ	na	na	na				
353	34	b	3	نِنِ	nini	nini	nini				
354	34	b	4	فَتُمَ	faṯuma	fatuma	faṯuma				
387	38	a	1	يَوَتٖ	yawaṯe	yawate	yawaṯe				Leave off these words," [he said].
1347	125	d	1	نَ	na	na	na				[you] will tell me your name too.
378	36	d	2	أُكَمُأَمْكُوَ	ukamuamkuwa	ukamuamkuwa	ukamuamkuwa				
390	38	b	1	أُسِٹٖٹٖ	usiţeţe	usitete	usiţeţe				Don't quarrel with your husband.
1351	126	a	1	كَوَمْبِيَ	kawambiya	kawambiya	kawambiya				And I told them: I have decided
356	34	c	2	مٖكُيَ	mekuya	mekuya	mekuya				
357	34	c	3	هِمَ	hima	hima	hima				
397	39	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				He told her: My child, 
411	40	b	1	يَلٖ	yale	yale	yale				weighed those [words] carefully,
402	39	c	1	نِ	ni	ni	ni				this is my advice --
400	39	b	2	رَضِ	raḍi	radhi	raḍi		Move note from 83d to here.		
1364	127	b	1	وٖنْدَءٗ	wenḏao	wendao	wenḏao				Where are you going, stranger?
409	40	a	2	كْوَكٖ	kwake	kwake	kwake				
1370	127	d	1	نِتَكَلٗ	niṯakalo	nitakalo	niṯakalo				telling them what I had [earlier] intended.
408	40	a	1	كُتٗكَ	kuṯoka	kutoka	kuṯoka				For her part, Fatima
1454	135	d	1	نِتَرُدِ	niṯaruḏi	nitarudi	niṯaruḏi				I will return, I tell you.
1460	136	b	1	كُنْوَ	kunwa	kunwa	kunwa				that my goats should drink the water.
380	37	a	2	فَتُمَ	faṯuma	fatuma	faṯuma				
1523	142	b	1	كُنٖٹٖيَ	kuneţeya	kuneteya	kuneţeya				to send me my father.
1525	142	c	1	كَنِؤُزَ	kaniuza	kaniuza	kaniuza				[The man] asked me about the ring
363	35	b	2	نَشِيْرِ	nashı̄ri	nashiri	nashı̄ri				
394	38	c	2	كِلِيٗ	kiliyo	kiliyo	kiliyo				
366	35	c	3	هَبَرِ	habari	habari	habari				
416	40	d	1	بَبَكٖ	babake	babake	babake				and told her father:
382	37	b	2	هَشِمَ	hashima	hashima	hashima				
420	41	b	1	ٹُنَنِ	ţunani	tunani	ţunani				what quarrel do I have with my husband?
368	35	d	2	نِمٖزِسِكِيَ	nimezisikiya	nimezisikiya	nimezisikiya				
423	41	b	4	وَنْڠُ	wangu	wangu	wangu				[It was] my fault entirely,
370	36	a	2	أَمِيْنِ	amı̄ni	amini	amı̄ni				
372	36	b	2	كَمَ	kama	kama	kama				
373	36	b	3	هَبَرِ	habari	habari	habari				
374	36	b	4	ڠَنِ	gani	gani	gani				
410	40	a	3	فَتُمَ	faṯuma	fatuma	faṯuma				
386	37	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				
396	38	d	2	الزَّهْرِيَّة	zzahrı̄yaẗ	zzahriyat	zzahrı̄yaẗ				
388	38	a	2	مَنٖنٗ	maneno	maneno	maneno				
389	38	a	3	هَيٗ	hayo	hayo	hayo				
403	39	c	2	هَيَ	haya	haya	haya				
404	39	c	3	مَنٖنٗ	maneno	maneno	maneno				
405	39	c	4	يَنْڠُ	yangu	yangu	yangu				
398	39	a	2	مْوَنَنْڠُ	mwanangu	mwanangu	mwanangu				
401	39	b	3	يَنْڠُ	yangu	yangu	yangu				
419	41	a	2	بَبَنْڠُ	babangu	babangu	babangu				
407	39	d	2	أُكِيَسِكِيَ	ukiyasikiya	ukiyasikiya	ukiyasikiya				
414	40	c	2	كَڤُٹَ	kavuţa	kavuta	kavuţa				
415	40	c	3	كَلِمَ	kalima	kalima	kalima				
412	40	b	2	أَكَيَسُكُمَ	akayasukuma	akayasukuma	akayasukuma				
417	40	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				
421	41	b	2	نَ	na	na	na				
422	41	b	3	مُمٖ	mume	mume	mume				
425	41	c	2	مَؤٗڤُ	maovu	maovu	maovu				
426	41	c	3	يَنْڠُ	yangu	yangu	yangu				
428	41	d	2	مْوٖنْيٖ	mwenye	mwenye	mwenye				
424	41	c	1	كَبِسَ	kabisa	kabisa	kabisa				
349	34	a	1	كَمُؤُلِزَ	kamuuliza	kamuuliza	kamuuliza				The Hashimite asked her:
486	47	c	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari		We might surmise that he was named Ja'far after Ali's brother Ja'far.		
458	44	d	2	كُوَمْبِيَ	kuwambiya	kuwambiya	kuwambiya				
439	43	a	1	تٖنَ	ṯena	tena	ṯena				And the conclusion in my heart
431	42	a	2	مْٹُ	mţu	mtu	mţu				
432	42	a	3	أَلٗنِغُرِ	aloniḡuri	alonighuri	aloniḡuri				
454	44	b	3	تهَنُظُمُ	ṯʿanuẓumu	tanudhumu	ṯʿanuẓumu		\\Swa{nuzumu}, \\E{compose}.		
456	44	c	2	مُيَفَهَمُ	muyafahamu	muyafahamu	muyafahamu		"that you may all understand it", or "that you may understand it all".		
442	43	b	1	مْٹُيٖ	mţuye	mtuye	mţuye				[is that] that person was the Devil,
434	42	b	2	نِمٖفِكِرِ	nimefikiri	nimefikiri	nimefikiri				
467	45	c	4	عَيْنَ	'ayna	'ayna	'ayna		\\Swa{ya aina}, \\E{one of a kind}, i.e. \\Swa{nzuri}.		
515	50	b	2	مُعَيَنِ	mu'ayani	mu'ayani	mu'ayani		lit. "clearly".		
476	46	c	2	هُزَءَ	huzaa	huzaa	huzaa				
1481	138	a	1	أَوَلِ	awali	awali	awali				Just before the seventh hour (noon),
436	42	c	2	خٖيْرِ	khēri	heri	khēri				
471	46	a	2	قَصِدِ	qaṣiḏi	qasidi	qaṣiḏi		Amu \\Swa{qasidi} = Mvita \\Swa{maqusudi}.		
492	48	b	1	نَ	na	na	na				resembling his father.
460	45	a	2	وَؤُنْڠْوَنَ	waungwana	waungwana	waungwana				
487	47	d	1	وَ	wa	wa	wa				[son of] Lord Ali.
438	42	d	2	كُٹْوَنْڠَلِيَ	kuţwangaliya	kutwangaliya	kuţwangaliya				
1545	144	c	2	مِؤُجِزَ	miujiza	miujiza	miujiza		i.e. unless he really was Ja'far's father.		
496	48	c	1	كُلَ	kula	kula	kula				[To] everyone who saw him,
440	43	a	2	هُضُمُ	huḍumu	hudhumu	huḍumu				
441	43	a	3	مٗيٗنِ	moyoni	moyoni	moyoni				
477	46	c	3	وَلِدِ	waliḏi	walidi	waliḏi				
498	48	d	1	صُوْرَ	ṣūra	sura	ṣūra				his features said who he was.
443	43	b	2	نِ	ni	ni	ni				
444	43	b	3	شَيْطَانِ	shayṭāni	shaytani	shayṭāni				
1607	149	d	1	تَكُيَ	ṯakuya	takuya	ṯakuya		i.e. he will return to his town for periodic visits.		I will come and visit them.
462	45	b	2	نِوَپٖ	niwape	niwape	niwape				
503	49	b	1	عَلِى	'alii	'alii	'alii				[but] Ali knew nothing of it
446	43	c	2	مَلْعُوْنِ	mal'ūni	mal'uni	mal'ūni				
490	48	a	1	أَكَئِسِنْڠَ	akaisinga	akaisinga	akaisinga		lit., "he moulded himself" to the appearance of his father.		The boy grew up
463	45	b	3	مَعَنَ	ma'ana	ma'ana	ma'ana				
1626	151	d	2	كُمْسٗمٖيَ	kumsomeya	kumsomeya	kumsomeya		This is somewhat exaggerated in this situation.  The point is that her behaviour makes her look as if she is ill, and in such a case a common practice is to read to the sick person from the Qur'an, especially Chapter 36, \\Eit{Ya Sin}.  The main message of this chapter is that human beings are created by God, and wholly dependent upon him.  Reading it comforts the sick person and their relatives, and is a sign of sympathy.  Reciting the Word of God has beneficial effects in general.  For instance, a rich man may pay a \\Swa{mwalimu}, \\E{Islamic scholar} to read the Qur'an over the man's wife every Friday, to keep her safe.  If someone is going on a long journey, wellwishers may pass verses from the Qur'an around them while saying \\Swa{Ngwakuhifadhi}, \\E{may God protect you}, and then give them the verses to protect them.		
448	43	d	2	مْبٗڤُ	mbovu	mbovu	mbovu				
449	43	d	3	كُنِٹِيَ	kuniţiya	kunitiya	kuniţiya				
445	43	c	1	مْلَنِوَ	mlaniwa	mlaniwa	mlaniwa				the Cursed One, the Damned One,
1550	145	a	2	شُوْرَ	shūra	shura	shūra				
1609	150	a	1	أَكِسَكِيَ	akisakiya	akisakiya	akisakiya				When she heard these words
493	48	b	2	بَبَكٖ	babake	babake	babake				
453	44	b	2	مٖنْڠِنٖ	mengine	mengine	mengine				
465	45	c	2	يَنْڠُ	yangu	yangu	yangu				
495	48	b	4	كِفَنَ	kifana	kifana	kifana				
469	45	d	2	نَلٗئِوَتِيَ	naloiwaṯiya	naloiwatiya	naloiwaṯiya				
473	46	b	2	مَهَبَ	mahaba	mahaba	mahaba				
474	46	b	3	كُنِزِدِ	kuniziḏi	kunizidi	kuniziḏi				
488	47	d	2	مَوْلَانَا	mawlānā	maulana	mawlānā				
489	47	d	3	عَلِيَ	'aliya	'aliya	'aliya				
483	47	b	2	يٗتٖ	yoṯe	yote	yoṯe				
484	47	b	3	يَلٗجِرِ	yalojiri	yalojiri	yalojiri				
491	48	a	2	كِجَنَ	kijana	kijana	kijana				
500	48	d	3	لِكِمْوَمْبِيَ	likimwambiya	likimwambiya	likimwambiya				
497	48	c	2	أَلٗكِمُؤٗنَ	alokimuona	alokimuona	alokimuona				
507	49	c	2	مْمٗيَ	mmoya	mmoya	mmoya				
508	49	c	3	كْوَ	kwa	kwa	kwa				
509	49	c	4	سِرِ	siri	siri	siri				
504	49	b	2	هَنَ	hana	hana	hana				
505	49	b	3	هَبَرِ	habari	habari	habari				
511	49	d	2	كُمْوَمْبِيَ	kumwambiya	kumwambiya	kumwambiya				
513	50	a	2	مَنَانِ	manāni	manani	manāni				
528	51	c	2	أَلِكِفُنِكَ	alikifunika	alikifunika	alikifunika		Because in such a climate water is very valuable.		
540	52	d	2	كُنِفُنُلِيَ	kunifunuliya	kunifunuliya	kunifunuliya		To annoy and frustrate him.		
544	53	b	2	يٖؤٗ	yeo	yeo	yeo				
545	53	b	3	تهَكِفُنِكَ	ṯʿakifunika	takifunika	ṯʿakifunika				
555	54	b	2	كَئٖڠٖمَ	kaegema	kaegema	kaegema		The Swahili belief would be that the boy has been led to that particular place "by the blood", i.e. because he is a son of his father's, the two have a bodily affinity, and tend to be attracted to each other, like magnets.		
517	50	c	2	كِسِمَ	kisima	kisima	kisima				
518	50	c	3	مْوِٹُنِ	mwiţuni	mwituni	mwiţuni				
560	54	d	2	أَكَلَتِلِيَ	akalaṯiliya	akalatiliya	akalaṯiliya		\\Swa{-atilia} means "drop" in Mvita and "throw" in Amu.		
576	56	b	2	قَصِدِ	qaṣiḏi	qasidi	qaṣiḏi		lit. \\E{we will compete in aim}.  It seems we should understand a sequence of events prior to the present sequence (beginning in stanza 50), in which Ali's covering of the well and Ja'far's uncovering of it have gone on for some time.  They have now both resolved to get to the heart of the matter and teach the other person a lesson.		
586	57	a	4	بِرِ	biri	biri	biri		i.e. if Ali is daring Ja'far to do something.		
520	50	d	2	كُچَنْڠَلِيَ	kuchangaliya	kuchangaliya	kuchangaliya				
591	57	c	3	بَنْدَرِ	banḏari	bandari	banḏari		lit. \\E{this [boat, \\Swa{jahazi}] has gained the harbour", i.e. this state of affairs must come to an end.}		
580	56	c	4	أَكِرُدِ	akiruḏi	akirudi	akiruḏi				
574	56	a	2	كُرَدِدِ	kuraḏiḏi	kuradidi	kuraḏiḏi		Move note to 183c to here.		
1872	175	b	1	أَتَكُپٖكَ	aṯakupeka	atakupeka	aṯakupeka		\\Swa{-peka} = \\Swa{-peleka}, \\E{send}.  In other words, may God make it possible for you to go.		May Providence keep you
532	52	a	2	عَلِى	'alii	'alii	'alii		̣		
522	51	a	2	أَكٖنْدَ	akenḏa	akenda	akenḏa				
523	51	a	3	كْوَ	kwa	kwa	kwa				
524	51	a	4	شَكَ	shaka	shaka	shaka				
514	50	b	1	كَمُؤٗنَ	kamuona	kamuona	kamuona				[Ali] saw [Ja'far] in the flesh.
585	57	a	3	نِ	ni	ni	ni		This line is unclear.  Possibly we should read \\Swa{nibiri}, \\E{challenge} < \\AS{نبر}, \\E{raise one's voice, shout}.		
547	53	c	2	بَدِ	baḏi	badi	baḏi				
526	51	b	2	أَسِپٗيَتَكَ	asipoyaṯaka	asipoyataka	asipoyaṯaka				
1673	156	a	3	نْيَؤٗنِ	nyaoni	nyaoni	nyaoni		lit. "take care that you are under his feet".  That is, be humble, and also obedient.		
548	53	c	3	تهَمْشِكَ	ṯʿamshika	tamshika	ṯʿamshika				
1718	159	d	1	نَ	na	na	na				and then his teacher arrived [while they were eating].
1722	160	a	2	مِكٗنٗ	mikono	mikono	mikono		They all eat from the same bowl, since this is a special day -- Ja'far is leaving.  When you do not know if you will meet again, sharing a meal brings a special feeling of closeness.		
1811	169	b	1	نْڠُوٗ	nguwo	nguwo	nguwo				what is he carrying clothes for?
1813	169	c	1	سِكُ	siku	siku	siku				I have never seen him [do that before].
1867	174	d	1	كْوَنْدَ	kwanḏa	kwanda	kwanḏa				First intercede to God for me.
530	51	d	2	أَكِچٖنْدٖيَ	akichenḏeya	akichendeya	akichenḏeya				
2040	191	d	1	ٹُمِوٖ	ţumiwe	tumiwe	ţumiwe				I have been sent to fetch you.
562	55	a	2	وَكَنْوَ	wakanwa	wakanwa	wakanwa				
2042	192	a	1	كُنَ	kuna	kuna	kuna				There is a handsome boy there.
550	53	d	2	أَمٖزٗوٖيَ	amezoweya	amezoweya	amezoweya				
2052	192	d	1	نِ	ni	ni	ni				I have told you everything now.
2067	194	b	1	هَپٗ	hapo	hapo	hapo				Ali the Lion-like,
533	52	a	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
557	54	c	2	نَاءٗ	nao	nao	nao				
535	52	b	2	نَ	na	na	na				
536	52	b	3	كُفِكِرِ	kufikiri	kufikiri	kufikiri				
563	55	a	3	كْوَ	kwa	kwa	kwa				
564	55	a	4	هِمَ	hima	hima	hima				
538	52	c	2	مَكَفِرِ	makafiri	makafiri	makafiri				
552	54	a	2	هُكُ	huku	huku	huku				
553	54	a	3	نْيُمَ	nyuma	nyuma	nyuma				
542	53	a	2	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				
566	55	b	2	أُكَلِكٗ	ukaliko	ukaliko	ukaliko				
567	55	b	3	نْيُمَ	nyuma	nyuma	nyuma				
558	54	c	3	كَسُكُمَ	kasukuma	kasukuma	kasukuma				
569	55	c	2	نَاءٖ	nae	nae	nae				
570	55	c	3	كَئٖڠٖمَ	kaegema	kaegema	kaegema				
572	55	d	2	هُمْوَنْڠَلِيَ	humwangaliya	humwangaliya	humwangaliya				
584	57	a	2	هُفَنْيَ	hufanya	hufanya	hufanya				
582	56	d	2	أَكِيَ	akiya	akiya	akiya				
578	56	c	2	ندَ	nḏa	nda	nḏa				
579	56	c	3	يٖؤٗ	yeo	yeo	yeo				
588	57	b	2	أَتَنِكِرِ	aṯanikiri	atanikiri	aṯanikiri				
593	57	d	2	تهَمْفِنِكِيَ	ṯʿamfinikiya	tamfinikiya	ṯʿamfinikiya				
595	58	a	2	كَٹِكَ	kaţika	katika	kaţika				
590	57	c	2	لِپٖٹٖ	lipeţe	lipete	lipeţe				
596	58	a	3	كُٹٖكَ	kuţeka	kuteka	kuţeka				
599	58	b	3	أَكَتٗكَ	akaṯoka	akatoka	akaṯoka				
597	58	b	1	نَ	na	na	na				
629	61	b	2	سَاءَ	saa	saa	saa				
621	60	c	2	أَظْهَرِ	aẓhari	adhhari	aẓhari		\\Swa{azhari} = \\Swa{wazi-wazi, zaidi}.		
2080	195	c	1	جُمْلَ	jumla	jumla	jumla				All your relatives,
623	60	d	2	زَيْدِ	zayḏi	zaydi	zayḏi		This is fighting talk -- \\Swa{jeuri}!		
603	58	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				
608	59	b	3	سِنَنِ	sinani	sinani	sinani		\\Swa{si nani} emphasises the negative -- a person accused of theft may say \\Swa{sikuiba si nani}, \\E{I didn't do any stealing at all}. It may be shortened to \\Swa{sini}.  Thus the poem: \\Swa{kidege na uliwani? / silicha mtu si nani}.  The story is told of a witty tailor from Takaungu.  A group of people had dropped into his shop for a chat, and after a while the tailor got up and went out to answer nature's call to urinate.  He came back very quickly, which made some of the men there ask him jokingly why he had been so fast.  He replied, "\\Swa{sina kisonono sini!}", \\E{I don't have gonorrhea at all!}, which was greeted with laughter.  The men then said that even if this were the case, he should still have taken longer, since it takes some time to wash (\\Swa{kutama}) after going to the toilet.  The tailor replied, "\\Swa{siswali sina!}", \\E{I'm not doing any praying!}.  This made veryone collapse with laughter -- people may not pray, but they certainly would not tell other people that.		
617	60	b	1	سِكُيَنٖنَ	sikuyanena	sikuyanena	sikuyanena				I have not spoken secretly -- 
605	59	a	2	هُنِشِكِيَنِ	hunishikiyani	hunishikiyani	hunishikiyani				
660	64	a	3	كْوَكٖ	kwake	kwake	kwake				
669	64	d	3	كُمْنْڠِيَ	kumngiya	kumngiya	kumngiya		The motif of a father and son unknowingly fighting each other is a recurrent one in literature -- the most famous example is that of Sohrab and Rustum.  Fortunately, in this case the father recognises his son before any damage has been done.		
620	60	c	1	أُكِتَكَ	ukiṯaka	ukitaka	ukiṯaka				if you want it in plain terms
607	59	b	2	سِكُچِ	sikuchi	sikuchi	sikuchi				
2081	195	c	2	وٖنْدَنِ	wenḏani	wendani	wenḏani		\\Swa{wendani} can also cover friends as well as relatives.		
672	65	a	3	أَمْوَمْبِئٖ	amwambie	amwambie	amwambie		The following stanzas are a bit unclear.  The gist seems to be that Ali says he is Ja'far's father, Ja'far reproaches him for his earlier bullying behaviour, still suspicious and unsure whether or not to believe him, whereupon Ali describes Ja'far's mother to him, which convinces Ja'far.		
2095	196	d	1	سِپَٹِ	sipaţi	sipati	sipaţi				I have nothing to tell you [since my departure].
639	62	b	2	آدَمُ	ḏamu	damu	ḏamu				
633	61	c	3	قَوْلِ	qawli	qauli	qawli				
631	61	c	1	كِشَ	kisha	kisha	kisha				Eventually he spoke,
615	60	a	1	هَيَ	haya	haya	haya				These [things] I have said,
610	59	c	2	أُكِوَ	ukiwa	ukiwa	ukiwa				
611	59	c	3	نِ	ni	ni	ni				
612	59	c	4	جِنِ	jini	jini	jini				
776	74	c	5	كُقُلِ	kuquli	kuquli	kuquli		\\Swa{kuvuli} = \\Swa{kulia}.		
628	61	b	1	وَكَوَنَ	wakawana	wakawana	wakawana				and they fought for two hours.
614	59	d	2	كُكُسٗمٖيَ	kukusomeya	kukusomeya	kukusomeya				
2097	197	a	1	تٖنَ	ṯena	tena	ṯena				Also, father, [my] teacher
2100	197	b	1	نَ	na	na	na				and [my] mother greet you.
616	60	a	2	نِمٖزٗفَسِرِ	nimezofasiri	nimezofasiri	nimezofasiri				
635	61	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				
2103	197	c	1	وَعَلَيْكَ	wa'alayka	wa'alayka	wa'alayka				Peace be with you, 
618	60	b	2	كْوَ	kwa	kwa	kwa				
619	60	b	3	سِرِ	siri	siri	siri				
649	63	b	2	بَبَكٗ	babako	babako	babako				
650	63	b	3	نِ	ni	ni	ni				
624	60	d	3	تهَكْوَمْبِيَ	ṯʿakwambiya	takwambiya	ṯʿakwambiya				
651	63	b	4	نَنِ	nani	nani	nani				
626	61	a	2	كْوَ	kwa	kwa	kwa				
627	61	a	3	مْبَلِ	mbali	mbali	mbali				
640	62	b	3	نْنَنِ	nnani	nnani	nnani				
642	62	c	2	هَكٗ	hako	hako	hako				
643	62	c	3	دُنِيَنِ	ḏuniyani	duniyani	ḏuniyani				
653	63	c	2	نِ	ni	ni	ni				
654	63	c	3	پٖٹٖ	peţe	pete	peţe				
647	63	a	2	هُنٖنَنِ	hunenani	hunenani	hunenani				
655	63	c	4	چَنْدَنِ	chanḏani	chandani	chanḏani				
668	64	d	2	مَيُتٗ	mayuṯo	mayuto	mayuṯo				
657	63	d	2	كَيَنْڠَلِيَ	kayangaliya	kayangaliya	kayangaliya				
662	64	b	2	نَ	na	na	na				
663	64	b	3	جِنَ	jina	jina	jina				
659	64	a	2	كُئِيٗنَ	kuiyona	kuiyona	kuiyona				
664	64	b	4	لَكٖ	lake	lake	lake				
666	64	c	2	أَسِكِتِكٖ	asikiṯike	asikitike	asikiṯike				
678	65	d	2	نْدِيٖ	nḏiye	ndiye	nḏiye				
671	65	a	2	هَپٗ	hapo	hapo	hapo				
681	66	a	2	دَمُ	ḏamu	damu	ḏamu				
683	66	b	2	سِكُكُفَهَمُ	sikukufahamu	sikukufahamu	sikukufahamu				
675	65	c	2	لَكٗ	lako	lako	lako				
676	65	c	3	هُئِٹْوَيٖ	huiţwaye	huitwaye	huiţwaye				
679	65	d	3	عَلِيَ	'aliya	'aliya	'aliya				
685	66	c	2	كَتَكَلَمُ	kaṯakalamu	katakalamu	kaṯakalamu				
602	58	d	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Jaafari said to him:
687	66	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				
695	67	c	2	أُجَڠِنَ	ujagina	ujagina	ujagina		According to Sacleux, \\Swa{ujagina} comes from a Galla word meaning "brave, courageous".  It is said that \\Swa{Ali sifa yake ni shujaa}, \\E{Ali is famed as a warrior}, and Ja'far inherits this martial attribute, as his spirited fighting shows.  Ali was a short man, but very strong.  It is said that once he plunged his sword into the ground and challenged others to pull it out, but it was buried so deep that no-one could.  Again, it is said that once when Ali was praying in the mosque his friends jokingly took his sandals (which in accordance with ritual he had of course removed before entering the mosque) and placed them on top of the lintel, where Ali, being short, could not reach them.  As a retort, Ali took their sandals, grabbed hold of the mosque wall, lifted it up, put the sandals under the wall, and set it down again.  Other important Muslims have their own attributes -- Uthman, for instance, was known for his shyness.		
2133	200	b	3	نْدِيَنِ	nḏiyani	ndiyani	nḏiyani		These points were presumably part of the directions that Ali gave Ja'far in 74.		
710	69	b	1	نَمُيُوَ	namuyuwa	namuyuwa	namuyuwa				I recognise her features [in you].
767	74	a	2	قَوْلِ	qawli	qauli	qawli		\\Swa{akampa maneno mazuri}, \\E{he gave him words of advice}.		
706	68	d	1	مْوِلِنِ	mwilini	mwilini	mwilini				to inflict injuries on my body.
689	67	a	2	مْٹُ	mţu	mtu	mţu				
690	67	a	3	هُمُؤٗنَ	humuona	humuona	humuona				
703	68	b	2	بَبَنْڠُ	babangu	babangu	babangu		Ja'far is suspicious.		
708	69	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				[Ali] told him [who] his mother [was]:
717	69	d	2	لَكٖ	lake	lake	lake				
718	69	d	3	أَمْوَمْبِيٖ	amwambiye	amwambiye	amwambiye				
2147	201	d	2	إِمٖنِپِٹِيَ	imenipiţiya	imenipitiya	imenipiţiya		We are to understand, "and I still hadn't found the place I was trying to go to".		
692	67	b	2	لَكٖ	lake	lake	lake				
693	67	b	3	إِنَ	ina	ina	ina				
2159	202	d	2	نِسِپٗرٖجٖيَ	nisiporejeya	nisiporejeya	nisiporejeya		i.e. instead of trying to retrace his footsteps.		
719	70	a	1	كِمْوَمْبِيَ	kimwambiya	kimwambiya	kimwambiya				He spoke, saying:
713	69	c	1	نَاءٖ	nae	nae	nae				And then [Ja'far] spoke
749	72	b	4	وَنْڠُ	wangu	wangu	wangu		Ja'far has to go to the \\Swa{chuo}, \\E{school}, first in order to gain the permission of his teacher.  See 79b.		
735	71	b	1	نَ	na	na	na				
734	71	a	3	مْوِٹُنِ	mwiţuni	mwituni	mwiţuni		Ali suggests going back with him to Mecca, but Ja'far wishes to take leave of his family first.  He must also ask permission of his teacher (122b), since he cannot leave the \\Swa{chuo}, \\E{school}, without being allowed.  See 79b.		
697	67	d	2	تهَكَمْبِيَ	ṯʿakambiya	takambiya	ṯʿakambiya				
720	70	a	2	كَفَسِرِ	kafasiri	kafasiri	kafasiri				
716	69	d	1	إِنَ	ina	ina	ina				in order to tell [Ali] his name.
699	68	a	2	نِپَ	nipa	nipa	nipa				
700	68	a	3	پٖٹٖ	peţe	pete	peţe				
701	68	a	4	يَنْڠُ	yangu	yangu	yangu				
737	71	b	3	ݝْدِيَنِ	ngḏiyani	ngdiyani	ngḏiyani				
705	68	c	2	مَتُنْڠُ	maṯungu	matungu	maṯungu				
722	70	b	2	هُئِٹْوَ	huiţwa	huitwa	huiţwa				
707	68	d	2	كُنِٹِيَ	kuniţiya	kunitiya	kuniţiya				
723	70	b	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
709	69	a	2	مَمَكٖ	mamake	mamake	mamake				
711	69	b	2	سُرَ	sura	sura	sura				
712	69	b	3	زَكٖ	zake	zake	zake				
754	72	d	2	كٖشٗ	kesho	kesho	kesho				
714	69	c	2	هَپٗ	hapo	hapo	hapo				
715	69	c	3	أَتَمْكٖ	aṯamke	atamke	aṯamke				
725	70	c	2	عَلِيْ	'alii	'alii	'alii				
726	70	c	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
747	72	b	2	نَ	na	na	na				
739	71	c	2	زٖٹُ	zeţu	zetu	zeţu				
740	71	c	3	مُئِنِ	muini	muini	muini				
728	70	d	2	مْوَكَ	mwaka	mwaka	mwaka				
729	70	d	3	نِ	ni	ni	ni				
730	70	d	4	وَ	wa	wa	wa				
731	70	d	5	تِسِيَ	ṯisiya	tisiya	ṯisiya				
748	72	b	3	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
733	71	a	2	مْبُزِ	mbuzi	mbuzi	mbuzi				
742	71	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				
744	72	a	2	نٖنْدَ	nenḏa	nenda	nenḏa				
745	72	a	3	زَنْڠُ	zangu	zangu	zangu				
755	72	d	3	نِتَكُيَ	niṯakuya	nitakuya	niṯakuya				
751	72	c	2	نَ	na	na	na				
752	72	c	3	مَمَنْڠُ	mamangu	mamangu	mamangu				
759	73	b	2	مَپِمَ	mapima	mapima	mapima				
757	73	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka	kukipambauka				
760	73	b	3	يَئِنُكَ	yainuka	yainuka	yainuka				
762	73	c	2	مٗيَ	moya	moya	moya				
765	73	d	2	يَكُوَصِلِيَ	yakuwaṣiliya	yakuwasiliya	yakuwaṣiliya				
770	74	b	3	يَ	ya	ya	ya				
771	74	b	4	مْبَلِ	mbali	mbali	mbali				
773	74	c	2	مَكَه	makah	makah	makah				
768	74	b	1	أُيَپٗ	uyapo	uyapo	uyapo				
774	74	c	3	نِ	ni	ni	ni				
775	74	c	4	يَ	ya	ya	ya				
777	74	d	1	أُسِتَكٖ	usiṯake	usitake	usiṯake		\\Swa{usitake} = \\Swa{usije}.		just so you don't get lost.
855	81	d	1	سِوٖزِ	siwezi	siwezi	siwezi				I cannot keep you back from it.
823	78	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya	akamuombeya		lit. "interceded for him to God".  If a parent is punishing a child, and a neighbour is present, the neighbour may plead for the child by saying, \\Swa{namuombea, namuombea}, \\E{I ask mercy for him, I intercede for him}.  If the child is let off lightly, the neighbour will warn the child not to be naughty again, because he will not plead for him a second time.		
789	75	d	2	نْدُزٗ	nḏuzo	nduzo	nḏuzo		\\Swa{nduzo} < \\Swa{ndugu zako}.  \\Swa{ndugu} can mean "cousin" as well as "brother".		
806	77	b	2	نَ	na	na	na				
807	77	b	3	ذُرِيَ	dhuriya	dhuriya	dhuriya				
851	81	c	1	وَلَ	wala	wala	wala				Yet that place you are going to --
780	75	a	2	تَمْكٗ	ṯamko	tamko	ṯamko				
794	76	a	4	نَسَبَ	nasaba	nasaba	nasaba		Ja'far will therefore do what is right and expected of him.		
2235	209	d	4	مْمٗيَ	mmoya	mmoya	mmoya		\\Swa{mtu mmoya si sawasawa na watu wengi}, \\E{one person is no match for many}.		
2269	213	b	2	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka		Ali is trying to put off as long as possible the inevitable point at which Fatima will hear that Ja'far is his son.		
2284	214	d	1	مَنٖنٗيٖ	manenoye	manenoye	manenoye				as he tells us his story.
782	75	b	2	هَيَ	haya	haya	haya				
783	75	b	3	نٖنْدَ	nenḏa	nenda	nenḏa				
784	75	b	4	زَكٗ	zako	zako	zako				
812	77	d	2	نَوَفَهَمِيَ	nawafahamiya	nawafahamiya	nawafahamiya		\\Swa{-fahamia}, \\E{know of someone, hear about someone, while not knowing them personally}.		
860	82	b	1	نَ	na	na	na				and what sort of situation will you be in there,
865	82	c	1	نَاءٖ	nae	nae	nae				with your father at war,
857	82	a	1	سِ	si	si	si				It is not easy to go there,
859	82	a	3	كُئٖنْدَنِ	kuenḏani	kuendani	kuenḏani		i.e. the journey is dangerous.		
786	75	c	2	نَ	na	na	na				
787	75	c	3	مَمَكٗ	mamako	mamako	mamako				
839	80	b	2	مُعَلِمُ	mu'alimu	mu'alimu	mu'alimu		\\Swa{anampenda yule mwanafunzi wake}, \\E{he is very fond of that pupil of his}.		
809	77	c	2	نَ	na	na	na				
842	80	c	3	هَمُ	hamu	hamu	hamu		Everybody, even a teacher, is apprehensive about the future.		
2286	215	a	1	عَلِيْ	'alii	'alii	'alii				Ali said:
778	74	d	2	كُپٗتٖيَ	kupoṯeya	kupoteya	kupoṯeya		Ali gives more directions than the ones here (see 200a/b), but in the event Ja'far forgets them all and almost gets lost in the scrubland (see 202-3).		
790	75	d	3	نِسَلِمِيَ	nisalimiya	nisalimiya	nisalimiya		\\Swa{-salimu} is used for a person-to-person greeting, and this is the indirect form: "greet them on my behalf".		
2292	215	d	1	إٖنْدٖ	enḏe	ende	enḏe				to go and fetch him.
799	76	c	3	أَقْرَبَ	aqraba	aqraba	aqraba				
825	79	a	2	كُنْڠِيَ	kungiya	kungiya	kungiya				
826	79	a	3	كْوَكٖ	kwake	kwake	kwake				
810	77	c	3	إِظْهَارِ	iẓhāri	idhhari	iẓhāri		This reading is uncertain -- it seems to mean \\Swa{nde na ndani}.  Perhaps we should adopt that of R, and translate "I know (have heard of) their general qualities".		
2293	215	d	2	كُمُؤَمْكُوَ	kumuamkuwa	kumuamkuwa	kumuamkuwa		This is another attempt to put off the moment of truth.		
792	76	a	2	مْوَنَ	mwana	mwana	mwana				
793	76	a	3	وَ	wa	wa	wa				
2294	216	a	1	عَلِيْ	'alii	'alii	'alii				Ali came back from the inner [room]
2299	216	c	1	أَمْسِكِيٖ	amsikiye	amsikiye	amsikiye				He heard Hasan
796	76	b	2	مَرْحَبَا	marḥabā	marhaba	marḥabā				
798	76	c	2	مُكٗ	muko	muko	muko				
801	76	d	2	نِسَلِمِيَ	nisalimiya	nisalimiya	nisalimiya				
814	78	a	2	هَپٗ	hapo	hapo	hapo				
815	78	a	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
803	77	a	2	أَبُوْ	abuu	abuu	abuu				
804	77	a	3	بَكَرِ	bakari	bakari	bakari				
844	80	d	2	أُمٖزٗنَمْبِيَ	umezonambiya	umezonambiya	umezonambiya				
817	78	b	2	كْوَ	kwa	kwa	kwa				
818	78	b	3	هٖرِ	heri	heri	heri				
828	79	b	2	كْوَ	kwa	kwa	kwa				
829	79	b	3	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
820	78	c	2	عَلِى	'alii	'alii	'alii				
821	78	c	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
832	79	c	2	هَبَرِ	habari	habari	habari				
833	79	c	3	زَكٖ	zake	zake	zake				
835	79	d	2	هَيَسِكِلِيَ	hayasikiliya	hayasikiliya	hayasikiliya				
858	82	a	2	رَحِمُ	raḥimu	rahimu	raḥimu				
841	80	c	2	وَنِٹِيَ	waniţiya	wanitiya	waniţiya				
846	81	a	2	سِكِتِكٗ	sikiṯiko	sikitiko	sikiṯiko				
848	81	b	2	وِنْڠِ	wingi	wingi	wingi				
849	81	b	3	وَ	wa	wa	wa				
852	81	c	2	نَ	na	na	na				
853	81	c	3	هُكٗ	huko	huko	huko				
854	81	c	4	وٖنْدَكٗ	wenḏako	wendako	wenḏako				
861	82	b	2	هُكٗ	huko	huko	huko				
862	82	b	3	أُ	u	u	u				
863	82	b	4	حَلِ	ḥali	hali	ḥali				
864	82	b	5	ڠَنِ	gani	gani	gani				
930	88	c	2	كَمَ	kama	kama	kama				
866	82	c	2	بَبَكٗ	babako	babako	babako				
867	82	c	3	زِٹَنِ	ziţani	zitani	ziţani				
830	79	b	4	وَكٖ	wake	wake	wake		These stanzas show the great importance of the teacher in Swahili life.  The Islamic teacher is greatly respected and honoured.  Ja'far, as a good-mannered child, tells his teacher of his plans even before telling his mother.  Among the Swahili, to bring someone his shoes is humiliating, making you look like a servant, but to bring a teacher his shoes is a mark of respect, and not something humiliating. Teachers get prestige, but no money, and the more students they have, the more esteemed they are.  It is usual, indeed considered necessary, to stay with the same teacher, and to finish his course of instruction.  It is said of one important sheikh that he was forced to move his abode to the next town because of a quarrel.  Even though the next town was a fair distance away, all his original students from the first town came to see him there.  But after a while, one of them stopped coming.  When he next saw this student, the teacher asked him the reason for this, and the student replied that he was prevented from attending the classes because his mother was sick, and, since caring for your parents is a duty in Islam, he had stayed at home to nurse her.  The teacher said that because the student was so dutiful he would have a long life, but since he had unfortunately missed the classes he would never be successful in teaching.  This prediction turned out to be true.		
931	88	c	3	كْوَ	kwa	kwa	kwa				
880	83	c	3	أَلٗفُلَكِ	alofulaki	alofulaki	alofulaki				
873	83	a	3	سِتَكِ	siṯaki	sitaki	siṯaki		\\Swa{sitaki kushinda na wewe}.		
869	82	d	2	وَ	wa	wa	wa				
870	82	d	3	كُٹَنْڠُلِيَ	kuţanguliya	kutanguliya	kuţanguliya				
879	83	c	2	رَضِ	raḍi	radhi	raḍi		\\Swa{radi}, \\E{consent, blessing}, is of great importance to a person, whether it be from his mother, his father, or his teacher.  People will become afraid if any of these three persons withhold their \\Swa{radi}, since it is held that without \\Swa{radi} you cannot prosper -- anything you set your hand to will be blighted and fail.  The teacher here gives Ja'far his \\Swa{radi} -- if he had not given it, Ja'far would not have gone -- and says that not only will he give his complete consent, but also (83d) that he will not change his mind once Ja'far has gone.		
896	85	b	2	مَمَكٗ	mamako	mamako	mamako		The teacher is teaching Ja'far obedience to his mother.		
932	88	c	4	سِرِ	siri	siri	siri				
915	87	a	3	كِبُ	kibu	kibu	kibu		\\Swa{fimbo ya mbuzi}?		
944	89	c	3	مَنٗ	mano	mano	mano				
889	84	c	2	كَلِمُ	kalimu	kalimu	kalimu		Emend to \\Swa{kalamu}.		
875	83	b	2	نَيُوَ	nayuwa	nayuwa	nayuwa		̣		
949	90	a	2	مِمِ	mimi	mimi	mimi				
891	84	d	2	سِيَسِكِلِيَ	siyasikiliya	siyasikiliya	siyasikiliya		Amu \\Swa{-sika} = \\Swa{fika}.  Compare \\Swa{-sita / fita}.		
898	85	c	2	مَتَمْكٗ	maṯamko	matamko	maṯamko				
909	86	c	3	هَلِمَمَ	halimama	halimama	halimama		\\Swa{halimama} = \\Swa{wasiwasi}.		
928	88	b	2	جَوْرِ	jawri	jauri	jawri		Emend to \\Swa{jeuri}.		
872	83	a	2	كُكِكِنْدَ	kukikinḏa	kukikinda	kukikinḏa		Emend to \\Swa{kukukinda}.		
876	83	b	3	نِ	ni	ni	ni				
877	83	b	4	هَكِ	haki	haki	haki				
914	87	a	2	كَوٖكَ	kaweka	kaweka	kaweka				
948	90	a	1	إٖوٖ	ewe	ewe	ewe		= \\Swa{wewe}.		Don't worry, mother --
1038	98	c	1	نِكْوَمْبِيَ	nikwambiya	nikwambiya	nikwambiya				In what language should I tell you,
900	85	d	2	تَكَلٗكْوَمْبِيَ	ṯakalokwambiya	takalokwambiya	ṯakalokwambiya				
882	83	d	2	زَيْدِ	zayḏi	zaydi	zayḏi				
883	83	d	3	كِكْوٖٹٖيَ	kikweţeya	kikweteya	kikweţeya				
885	84	a	2	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
887	84	b	2	أَيَفَهَمُ	ayafahamu	ayafahamu	ayafahamu				
902	86	a	2	هِيٗ	hiyo	hiyo	hiyo				
903	86	a	3	كَلِمَ	kalima	kalima	kalima				
893	85	a	2	إٖنْدَ	enḏa	enda	enḏa				
894	85	a	3	زَكٗ	zako	zako	zako				
925	88	a	2	سِوٖ	siwe	siwe	siwe				
905	86	b	2	نْدِيَ	nḏiya	ndiya	nḏiya				
906	86	b	3	كَيَنْدَمَ	kayanḏama	kayandama	kayanḏama				
926	88	a	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
908	86	c	2	أُنَ	una	una	una				
918	87	b	3	نَ	na	na	na				
911	86	d	2	مَمَكٖ	mamake	mamake	mamake				
912	86	d	3	أَكِنْڠِيَ	akingiya	akingiya	akingiya				
921	87	c	2	كَتَعَجَبُ	kaṯa'ajabu	kata'ajabu	kaṯa'ajabu				
923	87	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				
941	89	b	3	أَتَمْكٖ	aṯamke	atamke	aṯamke				
943	89	c	2	يَ	ya	ya	ya				
936	89	a	2	نِ	ni	ni	ni				
937	89	a	3	نْدُڠُ	nḏugu	ndugu	nḏugu				
938	89	a	4	يَكٖ	yake	yake	yake				
940	89	b	2	هَپٗ	hapo	hapo	hapo				
945	89	c	4	يَكٖ	yake	yake	yake				
947	89	d	2	كُٹْوَنْڠَلِيَ	kuţwangaliya	kutwangaliya	kuţwangaliya				
950	90	a	3	سِؤُذِكٖ	siudhike	siudhike	siudhike				
952	90	b	2	حُجَ	ḥuja	huja	ḥuja				
953	90	b	3	يَكٖ	yake	yake	yake		Nasir teases Ja'far, saying that he knows why Ja'far is quiet: (1) he lost two of the goats he was herding (90d), which would be a shameful thing, and (2) he is not strong enough to put up with the warmth of the day (91d).		
978	92	d	2	نِكِكْوَنْڠَلِيَ	nikikwangaliya	nikikwangaliya	nikikwangaliya		If someone is impudent, and you try to remind him that he should behave better by asking him where his manners are, he may say: \\Swa{zimeningia kwa huku, zimetoka kwa huku}, \\E{they came into me here, and went out there}, that is, they went in one ear and out the other.  If this is too much for the other person, he may say, like Ja'far: \\Swa{zitakutoka jeuri, zitakuingia adabu}, \\E{your insolence will leave you, and good manners will enter you}, and proceed to teach him a lesson, after which he may say, if successful: \\Swa{umekwisha pata adabu}, \\E{you have finished getting manners}, that is, I've taught you a lesson.		
995	94	b	2	مْٹٗٹٗ	mţoţo	mtoto	mţoţo		Mvita \\Swa{mdogo}. \\E{small} = Amu \\Swa{mtoto} = Gunya \\Swa{mdodi}.		
983	93	b	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
955	90	c	2	أُنَ	una	una	una				
956	90	c	3	مْبُزِ	mbuzi	mbuzi	mbuzi				
957	90	c	4	وَكٖ	wake	wake	wake				
1009	95	d	2	نِمٖزٗكْوَمْبِيَ	nimezokwambiya	nimezokwambiya	nimezokwambiya		Nasir says that his words have affected Ja'far, so there must have been some truth in them.  But the mother stops his teasing this time.		
1027	97	b	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari		She knows something has happened.		
1030	97	c	3	هَرِ	hari	hari	hari		\\Swa{hari} = \\Swa{jasho}.		
959	90	d	2	وَمٖپٗتٖيَ	wamepoṯeya	wamepoteya	wamepoṯeya				
1202	112	c	1	مَرَ	mara	mara	mara		\\Swa{mara} here = \\Swa{pengine}.		once they get here
1162	109	b	1	هِكِ	hiki	hiki	hiki		\\Swa{hiki} implies that the mother knows what drought he is referring to, i.e. she has experienced it too.		This drought was severe,
961	91	a	2	صَفُنِ	ṣafuni	safuni	ṣafuni				
919	87	b	4	تَرَتِبُ	ṯaraṯibu	taratibu	ṯaraṯibu		Ja'far is trying to sneak back into the house.  He is apprehensive about what he is going to tell his mother, and is also hurt that she did not tell him the full story about his past (100-101).		
963	91	b	2	هَوَؤٗنِ	hawaoni	hawaoni	hawaoni				
1200	112	b	1	كِنٖنَ	kinena	kinena	kinena		Note that \\Swa{-nena}, \\E{speak, say}, here means "intend".		and I said to myself that I should wait --
970	91	d	4	لَنْدِيَ	lanḏiya	landiya	lanḏiya				
1011	96	a	2	مَمَكٖ	mamake	mamake	mamake				
951	90	b	1	تَكْوَمْبِيَ	ṯakwambiya	takwambiya	ṯakwambiya				I'll tell you the reason:
965	91	c	2	أَتٗكَ	aṯoka	atoka	aṯoka				
966	91	c	3	مْوِٹُنِ	mwiţuni	mwituni	mwiţuni				
989	93	d	2	سِنْڠٖلِكِمْبِيَ	singelikimbiya	singelikimbiya	singelikimbiya		i.e. don't run away from a fight.		
985	93	c	2	نِ	ni	ni	ni				
986	93	c	3	مِيْ	mii	mii	mii				
987	93	c	4	نَاصِرِ	nāṣiri	nasiri	nāṣiri				
968	91	d	2	نِ	ni	ni	ni				
969	91	d	3	كَلِ	kali	kali	kali				
1000	94	c	4	هَكٗ	hako	hako	hako				
1001	94	d	1	وَتَكُمْٹَنْڠُلِيَ	waṯakumţanguliya	watakumtanguliya	waṯakumţanguliya		Perhaps emend to \\Swa{kumshanguliya}.  The mother tells Ja'far not to hit Nasir, because he was not serious and he was only teasing.  She also reminds him that blood is thicker than water, and that in the last resort your family is your best friend.		so do not attack him.
972	92	a	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
1003	95	a	2	تِنِ	ṯini	tini	ṯini				
974	92	b	2	نَاصِرِ	nāṣiri	nasiri	nāṣiri				
976	92	c	2	جٖؤُرِ	jeuri	jeuri	jeuri				
980	93	a	2	مَمَ	mama	mama	mama				
981	93	a	3	أَسِكِرِ	asikiri	asikiri	asikiri				
1012	96	a	3	أَجِبُ	ajibu	ajibu	ajibu				
991	94	a	2	نِ	ni	ni	ni				
992	94	a	3	نْدُڠُ	nḏugu	ndugu	nḏugu				
993	94	a	4	يَكٗ	yako	yako	yako				
1005	95	b	2	هَنٖنِ	haneni	haneni	haneni				
996	94	b	3	وَكٗ	wako	wako	wako				
1023	97	a	2	زَكٗ	zako	zako	zako				
998	94	c	2	نِ	ni	ni	ni				
999	94	c	3	عَوْنِ	'awni	'auni	'awni				
1007	95	c	2	مْوٖنْدَنِ	mwenḏani	mwendani	mwenḏani				
1024	97	a	3	هَبَرِ	habari	habari	habari				
1020	96	d	2	نَيُوَ	nayuwa	nayuwa	nayuwa				
1021	96	d	3	طَبِيَ	ṭabiya	tabiya	ṭabiya				
1016	96	c	2	وٖوٖ	wewe	wewe	wewe				
1017	96	c	3	نِ	ni	ni	ni				
1018	96	c	4	هَرَبُ	harabu	harabu	harabu				
1026	97	b	2	نِپَ	nipa	nipa	nipa				
1029	97	c	2	أُسِمٖمٖ	usimeme	usimeme	usimeme				
1036	98	b	2	هَبَرِ	habari	habari	habari				
1037	98	b	3	ڠَنِ	gani	gani	gani				
1040	98	c	3	ڠَنِ	gani	gani	gani				
1044	98	d	4	پِيَ	piya	piya	piya		Amu \\Swa{piya} = Mvita \\Swa{mpya}.		
573	56	a	1	أَپٖڠٖمَ	apegema	apegema	apegema				As Ja'far approached, he was saying:
1088	103	b	2	مْوِٹُنِ	mwiţuni	mwituni	mwiţuni				
1082	102	c	2	مَجْلِسِ	majlisi	majlisi	majlisi		\\Swa{majlisi} = \\Swa{baraza}: a meeting-place where men gather to chat and pass the time.		
1041	98	d	1	كْوَكٗ	kwako	kwako	kwako				
575	56	b	1	ٹُتَصِنْدَنَ	ţuṯaṣinḏana	tutasindana	ţuṯaṣinḏana				We will compete tit-for-tat --
1043	98	d	3	نَ	na	na	na				
485	47	c	1	أَكَزَوَ	akazawa	akazawa	akazawa				Ja'far was born,
1072	101	c	3	فٖنٖ	fene	fene	fene				
1065	100	d	2	دُُنِيَ	ḏuuniya	duuniya	ḏuuniya				
1046	99	a	2	كِعَرَبُ	ki'arabu	ki'arabu	ki'arabu				
1067	101	a	2	يُمُئِنِ	yumuini	yumuini	yumuini		i.e. that he has seen someone who might be his father.		
1070	101	c	1	أُتَنَمْبِيَ	uṯanambiya	utanambiya	uṯanambiya				you will tell me [I've seen someone who] looks like him,
1048	99	b	2	أُتَنِجِبُ	uṯanijibu	utanijibu	uṯanijibu				
1071	101	c	2	وَ	wa	wa	wa				
1223	114	c	1	هٖلَ	hela	hela	hela		Amu \\Swa{hela} = Mvita \\Swa{hebu}.  Ja'far's invitation to the three men is not as polite as it might be, which partly accounts for their response.		why don't you come and sit down
1068	101	b	1	أُتَڠٖؤُزَ	uṯageuza	utageuza	uṯageuza				you will change to other [words] --
1050	99	c	2	نَؤٗنَ	naona	naona	naona				
1051	99	c	3	عَجَبُ	'ajabu	'ajabu	'ajabu				
529	51	d	1	كِوَزِ	kiwazi	kiwazi	ki wazi				it was open when he got there.
1074	101	d	2	كُئِنْيَمَزِيَ	kuinyamaziya	kuinyamaziya	kuinyamaziya				
1053	99	d	2	مْوٖنْيٖوٖ	mwenyewe	mwenyewe	mwenyewe				
1054	99	d	3	كُكْوَمْبِيَ	kukwambiya	kukwambiya	kukwambiya				
554	54	b	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far approached,
1078	102	b	1	وَلَ	wala	wala	wala				nor do you know Mecca --
1056	100	a	2	أَلِكٗ	aliko	aliko	aliko				
1110	105	b	2	زَكٖ	zake	zake	zake				
1059	100	b	3	هَكٗ	hako	hako	hako		\\Swa{hako} is the negative form of \\Swa{yuko}, \\E{he is there}, just as \\Swa{siko} is the negative form of \\Swa{niko}, \\E{I am there}.		
1042	98	d	2	إِوٖ	iwe	iwe	iwe		Ja'far is angry that his mother hid the truth about his father from him.		so that it will be new to you?
1076	102	a	2	هُيَوَ	huyawa	huyawa	huyawa		< \\Swa{kuwa}.		
1066	101	a	1	كِكْوَمْبِيَ	kikwambiya	kikwambiya	kikwambiya				If I tell you he is in the town,
1073	101	d	1	خٖيْرِ	khēri	heri	khēri				and it's better to keep quiet about it.
1075	102	a	1	وٖوٖ	wewe	wewe	wewe				[His mother said:] You are not worldly-wise,
1061	100	c	2	نِنَ	nina	nina	nina				
1062	100	c	3	مِمْبَ	mimba	mimba	mimba				
1063	100	c	4	يَكٗ	yako	yako	yako				
1077	102	a	3	فَرِسِ	farisi	farisi	farisi		\\Swa{farisi}, \\E{clever, skilful}, originally meant "horseman, rider", for which skill is necessary.  Compare \\Swa{farasi}, \\E{horse}, 162b.		
1090	103	c	2	زَكٖ	zake	zake	zake				
1079	102	b	2	مَكَه	makah	makah	makah				
1069	101	b	2	مَنْڠِنٖ	mangine	mangine	mangine				
1080	102	b	3	هُكُئِسِ	hukuisi	hukuisi	hukuisi				
1091	103	c	3	مُعَيَنِ	mu'ayani	mu'ayani	mu'ayani				
1100	104	c	2	چَكٖ	chake	chake	chake				
1086	103	a	2	كَبَئِنِ	kabaini	kabaini	kabaini				
1093	103	d	2	نَكْوَمْبِيَ	nakwambiya	nakwambiya	nakwambiya				
1095	104	a	2	نِرَدِدِ	niraḏiḏi	niradidi	niraḏiḏi				
1106	105	a	2	لَ	la	la	la				
1107	105	a	3	پِلِ	pili	pili	pili				
1108	105	a	4	نِبَئِنِ	nibaini	nibaini	nibaini				
1097	104	b	2	سِيٗ	siyo	siyo	siyo				
1098	104	b	3	أُنِرُدِ	uniruḏi	unirudi	uniruḏi				
1103	104	d	2	چَنْڠُ	changu	changu	changu				
1104	104	d	3	أَنْڠَلِيَ	angaliya	angaliya	angaliya				
1111	105	b	3	زَ	za	za	za				
1112	105	b	4	كِتْوَنِ	kiṯwani	kitwani	kiṯwani				
1117	105	d	3	سِيٗ	siyo	siyo	siyo				
1120	106	a	2	يَ	ya	ya	ya				
1118	105	d	4	نَمْبِيَ	nambiya	nambiya	nambiya				
1121	106	a	3	ٹَاٹُ	ţāţu	tatu	ţāţu				
1116	105	d	2	كَمَ	kama	kama	kama				
1122	106	a	4	أُفَهَمُ	ufahamu	ufahamu	ufahamu				
1124	106	b	2	ٹُنْدُ	ţunḏu	tundu	ţunḏu				
1125	106	b	3	يَ	ya	ya	ya				
1128	106	c	2	زَكٖ	zake	zake	zake				
1178	110	b	3	هِلِ	hili	hili	hili				
1209	113	b	1	هَتَ	haṯa	hata	haṯa				until they had passed,
1156	108	c	3	يَوٖءٖؤٗ	yaweeo	yaweeo	yaweeo		Amu \\Swa{yaweeo} = Mvita \\Swa{yalivyokuwa}.		
632	61	c	2	كَڠُٹَ	kaguţa	kaguta	kaguţa				
1131	106	d	2	هِزٗ	hizo	hizo	hizo				
1132	106	d	3	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya	nimekwambiya				
1172	109	d	3	نْدِيَ	nḏiya	ndiya	nḏiya		This comes very close to the English expression "hit the road". \\Swa{-takasa}, \\E{stride along making a noise when your feet hit the ground}.		
1160	109	a	2	ٹَنْڠُ	ţangu	tangu	ţangu				
1161	109	a	3	أَوَلِ	awali	awali	awali				
1189	111	b	2	جَنِبُ	janibu	janibu	janibu		\\Swa{janibu} = \\Swa{upande}.		
1201	112	b	2	نَئِمُهُلِ	naimuhuli	naimuhuli	naimuhuli		\\Swa{-i-muhuli} = \\Swa{-ji-ngojesha}.		
1135	107	a	3	عُوفُ	'ūfu	'ufu	'ūfu				
1136	107	a	4	وَ	wa	wa	wa				
1137	107	a	5	مَنٖنٗ	maneno	maneno	maneno				
1196	111	d	3	نْدِيَ	nḏiya	ndiya	nḏiya		The three of them were walking along \\Swa{moja kwa moja} in Indian file - see the note on \\Swa{-andama}.		
637	62	a	2	مْبَئِنِ	mbaini	mbaini	mbaini		\\Swa{-m-} here = \\Swa{-ni-}.  See 237b.		
1198	112	a	2	وَكٗ	wako	wako	wako				
1139	107	b	2	نِ	ni	ni	ni				
1144	107	c	3	مْفَنٗ	mfano	mfano	mfano		\\Swa{-piga mfano}, \\E{give an example of}.		
1141	107	b	4	مْنٗ	mno	mno	mno				
1163	109	b	2	چَكَ	chaka	chaka	chaka		\\Swa{chaka} < \\Swa{-waka}, \\E{burn}.		
1199	112	a	3	مْبَلِ	mbali	mbali	mbali				
1215	113	d	2	كَوَپِسِيَ	kawapisiya	kawapisiya	kawapisiya		Amu \\Swa{-pisa salamu} = Mvita \\Swa{-toa salamu}.  The greeting \\Swa{salaam alekum} is used only to groups of more than one person.		
1193	111	c	3	وٖنْڠِنٖ	wengine	wengine	wengine		Or we could emend to \\Swa{wageni}, \\E{strangers}.		
1143	107	c	2	أُكِتَكَ	ukiṯaka	ukitaka	ukiṯaka				
1214	113	d	1	سَلَامُ	salāmu	salamu	salāmu				I greeted them.
1164	109	b	3	نِ	ni	ni	ni				
646	63	a	1	كَمُؤٗزَ	kamuoza	kamuoza	kamuoza				[Ali] asked him: What are you saying?
638	62	b	1	مْوَنَ	mwana	mwana	mwana				what sort of person you are.
1146	107	d	2	نِمٖكُپِجِنَ	nimekupijina	nimekupijina	nimekupijina				
644	62	d	1	نْدِپٗ	nḏipo	ndipo	nḏipo				and that is why you are bullying me.
680	66	a	1	نِنْڠَلِپٗتٖزَ	ningalipoṯeza	ningalipoteza	ningalipoṯeza		\\Swa{-poteza} = \\Swa{-tupa}.		I would have spilt your blood
1129	106	c	3	زٖمٖيِمُ	zemeyimu	zemeyimu	zemeyimu				
1149	108	a	3	يٖؤٗ	yeo	yeo	yeo				
1140	107	b	3	جَڠِنَ	jagina	jagina	jagina		See 67c.		
1180	110	c	2	هَپَنَ	hapana	hapana	hapana				
1181	110	c	3	مَهَلِ	mahali	mahali	mahali				
1165	109	b	4	ثَقِلِ	thaqili	thaqili	thaqili		Because of this, Ja'far had to travel farther than normal with his goats to find water, and this led to his meeting up with Ali.		
1151	108	b	2	كْوٖلِ	kweli	kweli	kweli				
1152	108	b	3	نْدِيٗ	nḏiyo	ndiyo	nḏiyo				
1153	108	b	4	يَلِيٗ	yaliyo	yaliyo	yaliyo				
1203	112	c	2	نِكِوَصِلِ	nikiwaṣili	nikiwasili	nikiwaṣili		Emend to Swa{wakiwasili}.		
1130	106	d	1	نَ	na	na	na				it consists of these things that I have told you.
1134	107	a	2	زَ	za	za	za		= \\Swa{taratibu}, \\E{polite}.		
1167	109	c	2	مَاءِ	mai	mai	mai				
1148	108	a	2	أُنَمْبِزِ	unambizi	unambizi	unambizi				
1155	108	c	2	جِنْسِ	jinsi	jinsi	jinsi				
1168	109	c	3	نِ	ni	ni	ni				
1169	109	c	4	غَالِ	ḡāli	ghali	ḡāli				
1158	108	d	2	كُمْفَهَمِيَ	kumfahamiya	kumfahamiya	kumfahamiya				
1171	109	d	2	نَ	na	na	na				
1192	111	c	2	وَٹُ	waţu	watu	waţu				
1174	110	a	2	يَنْڠُ	yangu	yangu	yangu				
1175	110	a	3	قَوْلِ	qawli	qauli	qawli				
1183	110	d	2	خٖيْرِ	khēri	heri	khēri				
1184	110	d	3	كَئِرُدِيَ	kairuḏiya	kairudiya	kairuḏiya				
1177	110	b	2	بَرَ	bara	bara	bara				
1186	111	a	2	هِوَزَ	hiwaza	hiwaza	hiwaza				
1187	111	a	3	مٗيٗنِ	moyoni	moyoni	moyoni				
1190	111	b	3	ڠَنِ	gani	gani	gani				
1195	111	d	2	وٖنْدٖمٖ	wenḏeme	wendeme	wenḏeme				
1207	113	a	2	كِڤُلِ	kivuli	kivuli	kivuli				
1210	113	b	2	نَاءٗ	nao	nao	nao				
1211	113	b	3	وَكَپِٹَ	wakapiţa	wakapita	wakapiţa				
1208	113	a	3	كِنْيٖسَ	kinyesa	kinyesa	kinyesa				
1217	114	a	2	مْوٖنْدَپِ	mwenḏapi	mwendapi	mwenḏapi				
1271	119	a	2	نِ	ni	ni	ni		Emend to \\Swa{si}.		
1114	105	c	2	أُپَآنِ	upani	upani	upani		lit. "does not grow on the bald patch [that he has].  \\Swa{ana upaa [mkubwa]}, \\E{he's bald}.		
1249	116	d	2	كَنِٹِلِيَ	kaniţiliya	kanitiliya	kaniţiliya				
1297	121	b	1	هُمْوِٹَ	humwiţa	humwita	humwiţa				and call: "Abu Bakr,
1220	114	b	2	نِ	ni	ni	ni				
1221	114	b	3	كِپُنْڠُ	kipungu	kipungu	kipungu				
1227	114	d	2	كُپِنْدُكِيَ	kupinḏukiya	kupindukiya	kupinḏukiya		We are to understand \\Swa{jua}.  \\Swa{-pindukia} is lit. "change direction", i.e. the sun ascends through the sky until noon, and then begins to decline.		
1267	118	c	2	مَتَمْكٗ	maṯamko	matamko	maṯamko				
917	87	b	2	أُپٗلِ	upoli	upoli	upoli				
1224	114	c	2	نْدٗنِ	nḏoni	ndoni	nḏoni				
1225	114	c	3	مُكٖيْتِ	mukēṯi	muketi	mukēṯi				
934	88	d	2	أَمٖزٗكِمْبِيَ	amezokimbiya	amezokimbiya	amezokimbiya		\\Swa{anajifita}, \\E{he is hiding himself}.		
1304	121	d	1	وٗتٖ	woṯe	wote	woṯe				And both of them came over.
1307	122	a	1	وَكَيَ	wakaya	wakaya	wakaya				They came over and stood,
1126	106	b	4	كُزِمُ	kuzimu	kuzimu	kuzimu		The meaning of this line is unclear.  \\Swa{tundu} means "hole, pit", and \\Swa{kuzimu} means "the Underworld" (\\Swa{kuzimu hakuna nyota}, \\E{in the Underworld there are no stars}), but the implication here is obscure.		
962	91	b	1	مٖوَتَنْڠَ	mewaṯanga	mewatanga	mewaṯanga		\\Swa{-tanga}, \\E{scatter, spread out}.		they went off and he couldn't find them.
1251	117	a	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
1229	115	a	2	هِلِ	hili	hili	hili				
1230	115	a	3	يُوَ	yuwa	yuwa	yuwa				
1231	115	a	4	سِ	si	si	si				
1276	119	b	3	قَوْمُ	qawmu	qaumu	qawmu		i.e. a jinn or the Devil.		
1034	98	a	2	أَكَبَئِنِ	akabaini	akabaini	akabaini		\\Swa{-baini} = \\Swa{-sema}.		
1285	120	b	2	دِيْنِ	ḏı̄ni	dini	ḏı̄ni				
1191	111	c	1	كُؤٗنَ	kuona	kuona	kuona		Emend to \\Swa{kaona}.		I saw some people,
1234	115	b	2	نِ	ni	ni	ni				
1235	115	b	3	خَطَرِ	khaṭari	hatari	khaṭari				
1239	115	c	4	أَخِرِ	akhiri	ahiri	akhiri		lit. "end".		
1253	117	b	2	نْدِوٖ	nḏiwe	ndiwe	nḏiwe				
856	81	d	2	كُكُزِوِيَ	kukuziwiya	kukuziwiya	kukuziwiya		Emend to \\Swa{kukuzuwiya}.		
1303	121	c	4	زُبَيْرِ	zubayri	zubayri	zubayri		Abu Bakr and Zubeir are two of the \\Swa{masahaba}, the Companions of the Prophet.		
1244	116	b	1	وَكِزُنْڠُكِيَ	wakizungukiya	wakizungukiya	wakizungukiya				they turned round.
1238	115	c	3	سِ	si	si	si				
1205	112	d	2	وَنِنِمْبِيَ	waninimbiya	waninimbiya	waninimbiya				
1246	116	c	1	وَوِلِ	wawili	wawili	wawili				Two stood where they were,
1269	118	d	2	كُٹْوَمْبِيَ	kuţwambiya	kutwambiya	kuţwambiya				
1300	121	c	1	نْدٗوْ	nḏoo	ndoo	nḏoo				come here, and you Zubeir!
975	92	c	1	زِتَكُتٗك	ziṯakuṯok	zitakutok	ziṯakuṯok				Your impudence will leave you
1014	96	b	2	هُتُأَدَبُ	huṯuaḏabu	hutuadabu	huṯuaḏabu				
1256	117	c	2	وَٹُتَكِيَنِ	waţuṯakiyani	watutakiyani	waţuṯakiyani				
1039	98	c	2	لُغه	luḡh	lughh	luḡh				
1243	116	a	2	كَلِمَ	kalima	kalima	kalima				
1278	119	c	2	ٹُكَفَهَمُ	ţukafahamu	tukafahamu	ţukafahamu				
1280	119	d	2	ٹُيَوٖ	ţuyawe	tuyawe	ţuyawe				
1247	116	c	2	وَكَسِمَمَ	wakasimama	wakasimama	wakasimama				
1286	120	b	3	يَكٖ	yake	yake	yake				
1260	118	a	2	هَٹُشِكَ	haţushika	hatushika	haţushika				
1281	119	d	3	طَبِيَ	ṭabiya	tabiya	ṭabiya				
1272	119	a	3	مْوَنَ	mwana	mwana	mwana				
1263	118	b	2	سِ	si	si	si				
1264	118	b	3	نْدُڠُ	nḏugu	ndugu	nḏugu				
1273	119	a	4	آدَمُ	ḏamu	damu	ḏamu				
1287	120	b	4	رَسُوْلِ	rasūli	rasuli	rasūli				
1275	119	b	2	مْپٗتٖزَ	mpoṯeza	mpoteza	mpoṯeza				
1283	120	a	2	قَوْلِ	qawli	qauli	qawli				
1290	120	c	3	نِ	ni	ni	ni				
1293	120	d	2	زَنْڠُ	zangu	zangu	zangu				
1294	120	d	3	نٗنْدٗكٖيَ	nonḏokeya	nondokeya	nonḏokeya				
1289	120	c	2	وٖوٖ	wewe	wewe	wewe				
1298	121	b	2	أَبُوْ	abuu	abuu	abuu				
1299	121	b	3	بَكَرِ	bakari	bakari	bakari				
1296	121	a	2	هُفَسِرِ	hufasiri	hufasiri	hufasiri				
1301	121	c	2	وٖوٖ	wewe	wewe	wewe				
1302	121	c	3	نَ	na	na	na				
1305	121	d	2	وَوِلِ	wawili	wawili	wawili				
1306	121	d	3	وَكَيَ	wakaya	wakaya	wakaya				
1388	129	c	2	وَنْڠُ	wangu	wangu	wangu				
1308	122	a	2	وَكَسِمَمَ	wakasimama	wakasimama	wakasimama				
1206	113	a	1	پَنَ	pana	pana	pana				Waiting (?) there in the shade
1338	124	d	2	ٹُكَلِسِكِيَ	ţukalisikiya	tukalisikiya	ţukalisikiya				
1212	113	c	1	نِوَوٖنٖ	niwawene	niwawene	niwawene				when I had seen them go by
1310	122	b	2	وَكِنِٹِزَمَ	wakiniţizama	wakinitizama	wakiniţizama				
1213	113	c	2	وَكِنُسَ	wakinusa	wakinusa	wakinusa		Emend to \\Swa{wakitusa}.		
1312	122	c	2	مُكِمْفَهَمَ	mukimfahama	mukimfahama	mukimfahama				
1216	114	a	1	كَمْبَ	kamba	kamba	kamba				I said: Where are you going in such a hurry?
1218	114	a	3	مَتِتِ	maṯiṯi	matiti	maṯiṯi		\\Swa{kama Wazungu}, \\E{like Europeans}!		
1222	114	b	4	كَٹِ	kaţi	kati	kaţi		\\Swa{kipungu-kati} = \\Swa{mti-kati, saa sita, jua kali}.		
1232	115	a	5	زُرِ	zuri	zuri	zuri		Even though he is only a child, Ja'far gives advice to the men.		
1314	122	d	2	وَكٖ	wake	wake	wake				
1315	122	d	3	نَبِيَ	nabiya	nabiya	nabiya				
1340	125	a	2	مْبُجِ	mbuji	mbuji	mbuji				
1233	115	b	1	كُلَنْدَمَ	kulanḏama	kulandama	kulanḏama		\\Swa{-andama} = \\Swa{-fuata}.  See 34d.		to go about in it [for long] is dangerous,
1237	115	c	2	زٖؤٗ	zeo	zeo	zeo		Amu \\Swa{zeo}, 9/10 = Mvita \\Swa{wakati}.  Compare \\Swa{njeo} in Muyaka.		
1317	123	a	2	هُنِجِبُ	hunijibu	hunijibu	hunijibu				
1241	115	d	2	مُتَلِمَٹِيَ	muṯalimaţiya	mutalimatiya	muṯalimaţiya		\\Swa{-limatiya} = \\Swa{-chelewa}.  In other words, if they stop for a bit, they will not arrive at their destination so late that they will sleep in the next morning.		
1254	117	b	3	نَنِ	nani	nani	nani		This is a rude response.  They are suspicious because he is being over-familiar, and yet they do not know him.		
1319	123	b	2	بِنْ	bin	bin	bin				
1320	123	b	3	طَالِبُ	ṭālibu	talibu	ṭālibu				
1255	117	c	1	أَوْ	aw	au	aw				And why are you concerned about us,
1357	126	c	2	نْدِيٖ	nḏiye	ndiye	nḏiye				
1358	126	c	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
1322	123	c	2	وَمٖتَعَجَبُ	wameṯa'ajabu	wameta'ajabu	wameṯa'ajabu				
1258	117	d	2	كُٹُفِكِيَ	kuţufikiya	kutufikiya	kuţufikiya		Emend to \\Swa{kitufikiya}.		
1342	125	b	2	هُئِٹْوَ	huiţwa	huitwa	huiţwa				
1257	117	d	1	خَطَرِ	khaṭari	hatari	khaṭari				and about danger coming to us?
1261	118	a	3	يَكٗ	yako	yako	yako		We understand \\Swa{maneno}.  This is very rude.  There is a saying: \\Swa{usishike maneno ya wanawake}, \\E{don't take the word of women}.		
1324	123	d	2	وٗتٖ	woṯe	wote	woṯe				
1325	123	d	3	هُنَنْڠَلِيَ	hunangaliya	hunangaliya	hunangaliya				
1259	118	a	1	سِسِ	sisi	sisi	sisi				We will not take your [advice] --
1318	123	b	1	عَلِي	'alii	'alii	'alii				of Ali ibn Talib.
1327	124	a	2	نِ	ni	ni	ni				
1328	124	a	3	أَبُوْ	abuu	abuu	abuu				
1329	124	a	4	بَكَرِ	bakari	bakari	bakari				
1345	125	c	2	سَسَ	sasa	sasa	sasa				
1331	124	b	2	هٗيٗ	hoyo	hoyo	hoyo				
1332	124	b	3	هُئِٹْوَ	huiţwa	huitwa	huiţwa				
1333	124	b	4	زُبٖئْرِ	zuberi	zuberi	zuberi				
1335	124	c	2	لَكٗ	lako	lako	lako				
1368	127	c	2	مَمَ	mama	mama	mama				
1369	127	c	3	كَوَجِبُ	kawajibu	kawajibu	kawajibu				
1360	126	d	2	مَوْلَانَا	mawlānā	maulana	mawlānā				
1348	125	d	2	إِنَ	ina	ina	ina				
1350	125	d	4	نَمْبِيَ	nambiya	nambiya	nambiya				
1361	126	d	3	عَلِيَ	'aliya	'aliya	'aliya				
1352	126	a	2	نِمٖكِرِ	nimekiri	nimekiri	nimekiri				
1354	126	b	2	إِنَ	ina	ina	ina				
1355	126	b	3	كُفَسِرِ	kufasiri	kufasiri	kufasiri				
1363	127	a	2	تَرَتِبُ	ṯaraṯibu	taratibu	ṯaraṯibu				
1376	128	b	2	سِيَؤٗنِ	siyaoni	siyaoni	siyaoni				
1371	127	d	2	كَوَمْبِيَ	kawambiya	kawambiya	kawambiya				
1365	127	b	2	وَپِ	wapi	wapi	wapi				
1374	128	a	3	بَرَنِ	barani	barani	barani				
1378	128	c	2	وَمٖلِشَ	wamelisha	wamelisha	wamelisha				
1379	128	c	3	يَنِ	yani	yani	yani				
1382	128	d	3	هَلِيَ	haliya	haliya	haliya				
1384	129	a	2	مْمٖزٗپِٹَ	mmezopiţa	mmezopita	mmezopiţa				
1386	129	b	2	هَمْكُيَكُٹَ	hamkuyakuţa	hamkuyakuta	hamkuyakuţa				
1391	129	d	2	مْوَيُوَ	mwayuwa	mwayuwa	mwayuwa				
1392	129	d	3	نَمْبِيَ	nambiya	nambiya	nambiya				
1394	130	a	2	قَوْلِ	qawli	qauli	qawli				
1309	122	b	1	أُسٗ	uso	uso	uso				and looked at my face.
1424	132	d	2	سِسِ	sisi	sisi	sisi				
1416	131	d	2	هُچٖلٖيَ	hucheleya	hucheleya	hucheleya		\\Swa{tunaogopa}.  Because they are not sure how Ali will react to someone else using the well.		
1265	118	b	4	زَكٗ	zako	zako	zako		Again, very rude.		
1396	130	b	2	كِسِمَ	kisima	kisima	kisima				
1397	130	b	3	سِ	si	si	si				
1398	130	b	4	مْبَلِ	mbali	mbali	mbali				
1465	136	c	2	نٖنْدَ	nenḏa	nenda	nenḏa				
1466	136	c	3	زَنْڠُ	zangu	zangu	zangu				
1400	130	c	2	كِنَ	kina	kina	kina				
1401	130	c	3	ثَقِلِ	thaqili	thaqili	thaqili				
1343	125	b	3	أَزْوَجِ	azwaji	azwaji	azwaji		\\Swa{azwaji} is literally "a couple", so this name is strange.		
1437	134	a	2	كِدُسَ	kiḏusa	kidusa	kiḏusa		Emend to \\Swa{kidosa}.  \\Swa{-dosa} = \\Swa{-gota, -gogota}, \\E{knock, rap}.  As Ja'far walks over the planks covering the well, he hears the resonating sound of the well beneath them.		
1444	134	c	3	كُٹِزَمَ	kuţizama	kutizama	kuţizama		The meaning of this line is unclear. 		
1474	137	b	3	مُتٖكَ	muṯeka	muteka	muṯeka				
1356	126	c	1	مِمِ	mimi	mimi	mimi				I am Ja'far,
1366	127	b	3	غَرِيْبُ	ḡarı̄bu	gharibu	ḡarı̄bu		\\Swa{gharibu} = \\Swa{mgeni}.		
1443	134	c	2	كِوَڤُ	kiwavu	kiwavu	kiwavu				
1406	131	a	2	مَاءِ	mai	mai	mai				
1407	131	a	3	نِ	ni	ni	ni				
1408	131	a	4	مَتَمُ	maṯamu	matamu	maṯamu				
1381	128	d	2	كُيُتَ	kuyuṯa	kuyuta	kuyuṯa		Emend to \\Swa{kwa nyota}.		
1313	122	d	1	وَجْهِ	wajhi	wajhi	wajhi		\\Swa{wajhi} = \\Swa{uso}.		his face [resembles] the Prophet's.
1448	135	a	2	أَتَمْكٖ	aṯamke	atamke	aṯamke		Past tense.		
1425	132	d	3	ٹُلٗكْوَمْبِيَ	ţulokwambiya	tulokwambiya	ţulokwambiya		Emend to \\Swa{ţulokwambiya}.		
1410	131	b	2	وَ	wa	wa	wa				
1404	130	d	3	كُئِٹِيَ	kuiţiya	kuitiya	kuiţiya		Because Ali has covered it up.		
1430	133	b	3	كَفُوَٹَ	kafuwaţa	kafuwata	kafuwaţa				
1411	131	b	3	زَمْزَمُ	zamzamu	zamzamu	zamzamu		Zamzam is a sacred spring in Mecca, situated close to the Ka'aba.		
1480	137	d	4	كُوَاءَ	kuwaa	kuwaa	kuwaa		\\Swa{-waa} = \\Swa{-waka}, \\E{burn}.		
1413	131	c	2	سِسِ	sisi	sisi	sisi				
1414	131	c	3	فَهَمُ	fahamu	fahamu	fahamu				
1453	135	c	2	سِكِفُنِكٖ	sikifunike	sikifunike	sikifunike				
1427	133	a	2	أُسِٹَ	usiţa	usita	usiţa		\\Swa{usita} = \\Swa{barabara}.		
1316	123	a	1	هُسِكِيَ	husikiya	husikiya	husikiya		\\Swa{hu-} here = \\Swa{waka-}.		When [the others] heard this, [they said:] He reminds me
1321	123	c	1	مَمَ	mama	mama	mama		\\Swa{mama!} is an expression of disbelief.		Impossible!, they [said] in amazement,
1455	135	d	2	كُكْوَمْبِيَ	kukwambiya	kukwambiya	kukwambiya		Emend to \\Swa{nakwambiya}.  Presumably Ja'far means that now he has found this well he will come back each day with his goats, so there is no point covering the well. 		
1418	132	a	2	أُمٖخِتَرِ	umekhiṯari	umehitari	umekhiṯari				
1346	125	c	3	نِتَرَجِ	niṯaraji	nitaraji	niṯaraji				
1432	133	c	2	مْوِٹُنِ	mwiţuni	mwituni	mwiţuni				
1349	125	d	3	لَكٖ	lake	lake	lake				
1373	128	a	2	مَاءَ	maa	maa	maa				
1389	129	c	3	وَنَنْيٗٹَ	wananyoţa	wananyota	wananyoţa				
1433	133	c	3	وَكَپِٹَ	wakapiţa	wakapita	wakapiţa				
1403	130	d	2	نْدٗوْ	nḏoo	ndoo	nḏoo				
1422	132	c	2	أُسِٹُفَسِرِ	usiţufasiri	usitufasiri	usiţufasiri				
1438	134	a	3	كِسِمَ	kisima	kisima	kisima				
1440	134	b	2	بَاءٗ	bao	bao	bao				
1441	134	b	3	كَسُكُمَ	kasukuma	kasukuma	kasukuma				
1461	136	b	2	مَاءِ	mai	mai	mai				
1450	135	b	2	بَكَرِ	bakari	bakari	bakari				
1451	135	b	3	سِشُٹُكٖ	sishuţuke	sishutuke	sishuţuke				
1462	136	b	3	مْبُزِ	mbuzi	mbuzi	mbuzi				
1463	136	b	4	وَنْڠُ	wangu	wangu	wangu				
1457	136	a	2	خٗوْفُ	khōfu	hofu	khōfu				
1458	136	a	3	مٗيٗ	moyo	moyo	moyo				
1459	136	a	4	وَنْڠُ	wangu	wangu	wangu				
1468	136	d	2	نَ	na	na	na				
1469	136	d	3	نْدِيَ	nḏiya	ndiya	nḏiya				
1471	137	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka	kukipambauka				
1473	137	b	2	فُرَهَ	furaha	furaha	furaha				
1476	137	c	2	كِوَپٖكَ	kiwapeka	kiwapeka	kiwapeka				
1478	137	d	2	وَ	wa	wa	wa				
1479	137	d	3	يُوَ	yuwa	yuwa	yuwa				
1482	138	a	2	يَ	ya	ya	ya				
1483	138	a	3	سَاءَ	saa	saa	saa				
1395	130	b	1	كٔوَمْبَ	kwamba	kwamba	kwamba				that there was a well not far away.
1484	138	a	4	سِتَ	siṯa	sita	siṯa				
1556	145	b	5	يَكٗ	yako	yako	yako				
1656	154	c	4	فِكِرَ	fikira	fikira	fikira		In other words, \\Swa{siwe kama ng'ombe} -- don't act stupidly.		
1511	141	a	1	أَكِيَ	akiya	akiya	akiya				When he arrived he grabbed hold of me
1487	138	b	3	كَوَسُتَ	kawasuṯa	kawasuta	kawasuṯa		Amu \\Swa{-suta} = Mvita \\Swa{-shunga, -fukuza}, \\E{shoo animals on, drive animals along}.		
1486	138	b	2	مْبُزِ	mbuzi	mbuzi	mbuzi				
1512	141	a	2	أَكَنِشِكَ	akanishika	akanishika	akanishika		What happens next has already been described in 58 ff.		
1490	138	d	1	هُتُرِ	huṯuri	huturi	huṯuri		\\Swa{-tura} = \\Swa{-ruka}, \\E{jump, bound}.		running and frisking.
1501	139	d	3	كُوَٹٖكٖيَ	kuwaţekeya	kuwatekeya	kuwaţekeya		i.e. there is no point in the goats running ahead of Ja'far and reaching the well before him, because once they are there they will have to stand and wait for him to get the water for them.		
1488	138	c	1	نَؤٗنَ	naona	naona	naona		The tense here gives the nuance of "suddenly".		and I saw that they had broken away from me,
1489	138	c	2	وَمٖنِوَتَ	wameniwaṯa	wameniwata	wameniwaṯa				
1434	133	d	1	مْبِيٗ	mbiyo	mbiyo	mbiyo		Emend to \\Swa{mbee}.		and directed me onwards.
1531	143	a	2	أَكَئِٹِزِمَ	akaiţizima	akaitizima	akaiţizima				
1491	138	d	2	نِ	ni	ni	ni				
1492	138	d	3	كُكُمْبِيَ	kukumbiya	kukumbiya	kukumbiya				
1435	133	d	2	وَكَنِتٗلٖيَ	wakaniṯoleya	wakanitoleya	wakaniṯoleya		\\Swa{-toleya}, \\E{give directions by accompanying a person to a good place to give them from}.		
1528	142	d	1	چَنْدَنِ	chanḏani	chandani	chanḏani				on my finger, and I gave it to him.
1494	139	a	2	إٖنٖنْدَنِ	enenḏani	enendani	enenḏani				
1467	136	d	1	نِزِتَكَسٖ	niziṯakase	nizitakase	niziṯakase		\\Swa{-takasa}, \\E{shake}, with \\Swa{nyayo}, \\E{footsteps} understood.  The meaning is to shake the road by travelling a lot.		so that I can herd them along the road."
1505	140	b	2	كِسِمَ	kisima	kisima	kisima		i.e. the well has been covered over again, in spite of Ja'far uncovering it the day before (134d) and telling Abu Bakr that there was no point in covering it (135c).  The reason, of course, as we know from the earlier verses is that Ali has come to check on the well, and covered it (53b).		
1516	141	c	2	هَپٗ	hapo	hapo	hapo				
1496	139	b	2	كِسِمَنِ	kisimani	kisimani	kisimani				
1513	141	b	1	مَاءِ	mai	mai	mai				before I had drawn any water.
1515	141	c	1	مَمَ	mama	mama	mama		\\Swa{mama!} -- see 123c.		Gosh!  At that point I spoke,
1518	141	d	1	يَ	ya	ya	ya				and addressed him angrily.
1498	139	c	2	هُفَلِيَنِ	hufaliyani	hufaliyani	hufaliyani				
1514	141	b	2	نِسِيَثٖكَ	nisiyatheka	nisiyatheka	nisiyatheka				
1500	139	d	2	وَ	wa	wa	wa				
1530	143	a	1	پٖٹٖ	peţe	pete	peţe				He looked at the ring
1503	140	a	2	وَكَسِمَمَ	wakasimama	wakasimama	wakasimama				
1532	143	b	1	كَپِجَ	kapija	kapija	kapija				and became anxious.
1519	141	d	2	غَضَبُ	ḡaḍabu	ghadhabu	ḡaḍabu				
1535	143	c	1	يَپِسِيٖ	yapisiye	yapisiye	yapisiye				everything that had happened in the past,
1520	141	d	3	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				
1507	140	c	2	نِكَلِسُكُمَ	nikalisukuma	nikalisukuma	nikalisukuma				
1543	144	b	2	كَئِزَ	kaiza	kaiza	kaiza				
1509	140	d	2	مْٹُ	mţu	mtu	mţu				
1510	140	d	3	أَكِيَ	akiya	akiya	akiya				
1522	142	a	2	مْنْڠُ	mngu	mngu	mngu				
1533	143	b	2	نَ	na	na	na				
1534	143	b	3	هَلِمَمَ	halimama	halimama	halimama				
1524	142	b	2	بَبَنْڠُ	babangu	babangu	babangu				
1526	142	c	2	پٖٹٖ	peţe	pete	peţe				
1527	142	c	3	يَنْڠُ	yangu	yangu	yangu				
1529	142	d	2	كَمْتٗلٖيَ	kamṯoleya	kamtoleya	kamṯoleya				
1536	143	c	2	يَ	ya	ya	ya				
1539	143	d	2	يَكَمْرُدِيَ	yakamruḏiya	yakamrudiya	yakamruḏiya				
1541	144	a	2	أَلِپٗنِؤُلِزَ	aliponiuliza	aliponiuliza	aliponiuliza				
1551	145	a	3	زَكٗ	zako	zako	zako				
1547	144	d	2	نَ	na	na	na				
1553	145	b	2	صِفَ	ṣifa	sifa	ṣifa				
1554	145	b	3	زَ	za	za	za				
1555	145	b	4	نْيُمْبَ	nyumba	nyumba	nyumba				
1561	145	d	2	لَنْڠُ	langu	langu	langu				
1562	145	d	3	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				
1564	146	a	2	نْيَكَ	nyaka	nyaka	nyaka				
1558	145	c	2	كَئٖٹَ	kaeţa	kaeta	kaeţa				
1559	145	c	3	تَمْكٗ	ṯamko	tamko	ṯamko				
1566	146	b	2	هَكِكَ	hakika	hakika	hakika				
1568	146	c	2	تِسِيَ	ṯisiya	tisiya	ṯisiya				
1485	138	b	1	هَپٗ	hapo	hapo	hapo				I was then driving the goats along,
1599	149	a	3	مْنْڠُ	mngu	mngu	mngu				
1571	146	d	2	وٖوٖ	wewe	wewe	wewe				
1572	146	d	3	تَرٖهٖ	ṯarehe	tarehe	ṯarehe				
1624	151	c	3	كَمْڤِشَ	kamvisha	kamvisha	kamvisha		The \\Swa{kanga} is a wraparound garment, which is knotted, not sewn closed, so if someone is ill, tossing and turning, it can become undone.  Ja'far holds it on and re-knots it.  Similarly, it is considered unwise for a man to go into the kitchen, because while the woman is working there her \\Swa{leso}, \\E{upper garment}, may become undone.		
1537	143	c	3	نْيُمَ	nyuma	nyuma	nyuma		\\Swa{yale mambo yaliyopita zamani}.		
1617	150	d	3	كَئِٹِيَ	kaiţiya	kaitiya	kaiţiya				
1548	144	d	3	كُنِپِجِيَ	kunipijiya	kunipijiya	kunipijiya		\\Swa{-piga mifano}, \\E{give examples}.		
1565	146	b	1	نِزٖزٗوٖءٗ	nizezoweo	nizezoweo	nizezoweo		Emend to \\Swa{nizeweo}, = \\Swa{nilizozaliwa}.		since I was born -- definitely
1575	147	a	2	زَكٖ	zake	zake	zake				
1576	147	a	3	تِمَمُ	ṯimamu	timamu	ṯimamu				
2312	218	a	2	أُ	u	u	u		= \\Swa{kwa taratibu}. (?)		
1573	146	d	4	ٹِيَ	ţiya	tiya	ţiya		= Swa{kumbuka tarehe}.		
1601	149	b	2	نَ	na	na	na				
1578	147	b	2	أُفَهَمُ	ufahamu	ufahamu	ufahamu				
1588	148	b	1	أَسُبهِ	asubhi	asubhi	asubhi		Emend to \\Swa{asubuhi}.		[tomorrow] morning I will set off [to go to my father].
1602	149	b	3	بَبَنْڠُ	babangu	babangu	babangu				
1613	150	c	1	أَكَتَرَدَدِ	akaṯaraḏaḏi	akataradadi	akaṯaraḏaḏi		\\Swa{taradadi} = \\Swa{-badilika}.		She went out of her mind
1580	147	c	2	نَ	na	na	na				
1581	147	c	3	كْوَ	kwa	kwa	kwa				
1582	147	c	4	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
1628	152	a	2	فَهَمُ	fahamu	fahamu	fahamu				
1621	151	b	2	أَكَئِرُشَ	akairusha	akairusha	akairusha		She does not know what she is doing.		
1584	147	d	2	كُمْوَمْبِيَ	kumwambiya	kumwambiya	kumwambiya				
1569	146	c	3	زَسِزٗشَكَ	zasizoshaka	zasizoshaka	zasizoshaka				
1517	141	c	3	كَتَمْكَ	kaṯamka	katamka	kaṯamka				
1619	151	a	2	كَيِنْڠُشَ	kayingusha	kayingusha	kayingusha				
1521	142	a	1	نِكَمُحِمِدِ	nikamuḥimiḏi	nikamuhimidi	nikamuḥimiḏi		cf. 152b. 		I pleaded with God
1586	148	a	2	كْوَ	kwa	kwa	kwa				
1587	148	a	3	خٖيْرِ	khēri	heri	khēri				
1636	153	a	2	أَللّٰهُ	alllähu	alllahu	alllähu		FIX allahu		
1604	149	c	2	كِشَ	kisha	kisha	kisha				
2302	216	d	2	هُوَپِسِيَ	huwapisiya	huwapisiya	huwapisiya		Hasan has obviously not left yet (assuming Ali has even told him to fetch Husayn), because he is still greeting the visitors.		
2303	217	a	1	حَسَنِ	ḥasani	hasani	ḥasani				Hasan spoke
1589	148	b	2	نِ	ni	ni	ni				
1590	148	b	3	سَفَرِ	safari	safari	safari				
2307	217	c	1	أَمْرُدِشٖ	amruḏishe	amrudishe	amruḏishe		Emend to \\Swa{wamrudishe}.		so that they could return the greeting.
1606	149	c	4	وَنڠُ	wangu	wangu	wangu				
2311	218	a	1	كْوَ	kwa	kwa	kwa				With politeness (?)
1592	148	c	2	كْوَ	kwa	kwa	kwa				
1593	148	c	3	جَبَارِ	jabāri	jabari	jabāri				
2314	218	a	4	كْوِمَ	kwima	kwima	kwima		 \\Swa{-ima}, \\E{stop, stand}.  The meaning of this line is unclear.		
2315	218	b	1	كَمُؤُلِزَ	kamuuliza	kamuuliza	kamuuliza				he asked how [Ja'far] was.
2321	219	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				[ja'far] spoke [these] words to him:
1577	147	b	1	نِمٖكُشَ	nimekusha	nimekusha	nimekusha				I have completed it so that you may understand.
1595	148	d	2	رَصِ	raṣi	rasi	raṣi				
1596	148	d	3	كُنِوٖيَ	kuniweya	kuniweya	kuniweya				
1605	149	c	3	مُنِ	muni	muni	muni				
1608	149	d	2	كُوَنْڠَلِيَ	kuwangaliya	kuwangaliya	kuwangaliya				
1598	149	a	2	نِؤٗمْبٖيَ	niombeya	niombeya	niombeya				
1610	150	a	2	قَوْلِ	qawli	qauli	qawli				
1612	150	b	2	أَسِحِمِلِ	asiḥimili	asihimili	asiḥimili				
1630	152	b	2	كَرِيْمُ	karı̄mu	karimu	karı̄mu				
1616	150	d	2	مَكٗنْدٖ	makonḏe	makonde	makonḏe				
1623	151	c	2	نْڠُوٗ	nguwo	nguwo	nguwo				
1640	153	b	2	مْوَنَنْڠُ	mwanangu	mwanangu	mwanangu				
1632	152	c	2	أَكَتَكَلَمُ	akaṯakalamu	akatakalamu	akaṯakalamu				
1634	152	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya	akamuombeya				
1638	153	a	4	وَنْڠُ	wangu	wangu	wangu				
1648	154	a	2	هُنَ	huna	huna	huna				
1643	153	c	3	وَ	wa	wa	wa				
1649	154	a	3	مَضَرَ	maḍara	madhara	maḍara				
1651	154	b	2	أَلْفُ	alfu	alfu	alfu				
1652	154	b	3	مَرَ	mara	mara	mara				
1654	154	c	2	أُوٖ	uwe	uwe	uwe				
1655	154	c	3	نَ	na	na	na				
1570	146	d	1	نَ	na	na	na				and you should remember the number.
1705	158	c	4	أَدَبُ	aḏabu	adabu	aḏabu				
1644	153	c	4	وٖنْزَنْڠُ	wenzangu	wenzangu	wenzangu		It would be selfish to pray only for yourself or your own children.  The proper thing is to pray for others too, e.g. Muslims, or unbelievers who will become Muslims.		
1658	154	d	2	نِمٖكُؤُصِيَ	nimekuuṣiya	nimekuusiya	nimekuuṣiya				
1690	157	c	2	اللّٰهَ	lläha	llaha	lläha				
1702	158	c	1	كْوَكٖ	kwake	kwake	kwake				be courteous towards her,
1660	155	a	2	أُيَپٗنِؤُذِ	uyaponiudhi	uyaponiudhi	uyaponiudhi				
1646	153	d	2	نِٹِلِيَ	niţiliya	nitiliya	niţiliya		In other words, she is giving Ja'far her \\Swa{radhi} -- see 83c.  In order to leave, Ja'far must have this.  Hence the verse: \\Swa{mwate asumbuke / hana radhi ya mamake}, \\E{let him remain troubled / he does not have the blessing of his mother}.  Likewise, an unsuccessful person may be referred to as someone \\Swa{asiyekupata radhi ya babake}, \\E{sho did not get his father's blessing}.  However, \\Swa{watoto wa jeuri} \\E{cheeky children}, will say things like \\Swa{radhi yako kaiweke mbuyuni}, \\E{stick your blessing in a baobab tree}. 		
1687	157	b	2	بُدِ	buḏi	budi	buḏi				
1694	157	d	3	وَصِيَ	waṣiya	wasiya	waṣiya		\\Swa{wasia} is often translated as "last will", but its wider meaning is "wisdom", or "dos and don'ts".		
1662	155	b	2	نَ	na	na	na				
1695	158	a	1	نَاءٖ	nae	nae	nae				And as for the daughter of the Beloved One,
1697	158	a	3	حَبِيْبُ	ḥabı̄bu	habibu	ḥabı̄bu		i.e. Fatima.  The Prophet is also known as \\Swa{habibu'llah}, \\E{Beloved of God}.		
1709	159	a	1	أَكَتٗكَ	akaṯoka	akatoka	akaṯoka				Ja'far arose [the next morning]
1665	155	c	2	وَتَكَ	waṯaka	wataka	waṯaka				
1666	155	c	3	رَضِ	raḍi	radhi	raḍi				
1717	159	c	4	نَاصِرِ	nāṣiri	nasiri	nāṣiri				
1711	159	b	1	نَ	na	na	na				and a meal was ready.
1714	159	c	1	كَلَ	kala	kala	kala				He ate with his brother Nasir
1668	155	d	2	كْوَ	kwa	kwa	kwa				
1669	155	d	3	عَلِيْ	'alii	'alii	'alii				
1670	155	d	4	زٖنْڠٖيَ	zengeya	zengeya	zengeya		\\Swa{-zengeya} = \\Swa{-tafuta}.  She is telling him: \\Swa{fanya bidii kupata radhi ya Ali}, \\E{make an effort to secure Ali's blessing}.		
1691	157	c	3	جِتَهِدِ	jiṯahiḏi	jitahidi	jiṯahiḏi				
1698	158	b	1	كٖتِ	keṯi	keti	keṯi				stay with her politely;
1672	156	a	2	أُوٖ	uwe	uwe	uwe				
1701	158	b	4	ثَوَابُ	thawābu	thawabu	thawābu		i.e. \\Swa{vizuri, kama mama wa kambo}, \\E{nicely, as with a stepmother}.  Because Ja'far will be living in Ali's house, he must be a polite guest.		
1706	158	d	1	أُمْطِيْ	umṭii	umtii	umṭii				obey her and be humble towards her.
1731	161	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				He told Nasir:
1721	160	a	1	وَكَتَنْڠَنْيَ	wakaṯanganya	wakatanganya	wakaṯanganya				They all put their hands [in the communal bowl]
1675	156	b	2	بَبَكٗ	babako	babako	babako				
1676	156	b	3	أُوٖ	uwe	uwe	uwe				
1677	156	b	4	تِنِ	ṯini	tini	ṯini				
1733	161	b	1	يٖؤٗ	yeo	yeo	yeo				Goodbye today, my brother --
1693	157	d	2	أُپَٹٖ	upaţe	upate	upaţe				
1737	161	c	1	تَكَپٗرُدِ	ṯakaporuḏi	takaporudi	ṯakaporuḏi				when I come back from my journey
1680	156	d	1	كْوَكٗ	kwako	kwako	kwako				
1707	158	d	2	نَ	na	na	na				
1741	162	a	1	أَكَمْجِبُ	akamjibu	akamjibu	akamjibu				[Nasir] answered him quickly:
1684	157	a	2	مْٹُمٖ	mţume	mtume	mţume				
1685	157	a	3	مُحَمَدِ	muḥamaḏi	muhamadi	muḥamaḏi				
1696	158	a	2	بِنْتِ	binṯi	binti	binṯi				
1710	159	a	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
1699	158	b	2	نَاءٖ	nae	nae	nae				
1700	158	b	3	كْوَ	kwa	kwa	kwa				
1724	160	b	2	وَٹَٹُ	waţaţu	watatu	waţaţu				
1703	158	c	2	أُوٖ	uwe	uwe	uwe				
1704	158	c	3	نَ	na	na	na				
1725	160	b	3	مفَنٗ	mfano	mfano	mfano				
1719	159	d	2	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
1720	159	d	3	كَتٗكٖيَ	kaṯokeya	katokeya	kaṯokeya				
1715	159	c	2	نَ	na	na	na				
1716	159	c	3	نْدُيٖ	nḏuye	nduye	nḏuye				
1734	161	b	2	نْدُيَنْڠُ	nḏuyangu	nduyangu	nḏuyangu				
1727	160	c	2	نَ	na	na	na				
1728	160	c	3	مَنٖنٗ	maneno	maneno	maneno				
1735	161	b	3	كْوَ	kwa	kwa	kwa				
1732	161	a	2	نَاصِرِ	nāṣiri	nasiri	nāṣiri				
1736	161	b	4	خٖيْرِ	khēri	heri	khēri				
1738	161	c	2	سَفَرِ	safari	safari	safari				
1740	161	d	2	تَكُلٖٹٖيَ	ṯakuleţeya	takuleteya	ṯakuleţeya				
1742	162	a	2	أُپٖسِ	upesi	upesi	upesi				
1744	162	b	2	نَ	na	na	na				
1667	155	d	1	نَ	na	na	na				then go and visit Ali.
1790	167	a	2	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				
1745	162	b	3	فَرَسِ	farasi	farasi	farasi				
1793	167	b	3	مَكَه	makah	makah	makah		Nasir is not stupid, and sees through her words.		
1679	156	c	2	أَتَكَلٗبَئِنِ	aṯakalobaini	atakalobaini	aṯakalobaini		\\Swa{-baini}, \\E{say}.		
1767	164	c	2	مَٹٖ	maţe	mate	maţe		Making gentle spitting sounds (pp-pp-pp) at him, \\Swa{-mtia mate}, signifies that she thinks he is \\Swa{sharifu}, \\E{noble}, and to be admired.		
1774	165	b	2	أَهِتِمُ	ahiṯimu	ahitimu	ahiṯimu		\\Swa{kumaliza Kurani}.		
1688	157	b	3	كُكُزِدِ	kukuziḏi	kukuzidi	kukuziḏi		i.e. it goes without saying that \\Swa{anakushinda}, \\E{he is superior to you}.		
1689	157	c	1	أَللّٰهَ	allläha	alllaha	allläha		\\Swa{hala} = \\Swa{hara}, an exhortation to effort, as in \\Swa{hara mbee!}, \\E{forward!}.		so mind you exert yourself
1750	162	d	2	كُمْوَنْڠَلِيَ	kumwangaliya	kumwangaliya	kumwangaliya				
1692	157	d	1	نْڠَاءَ	ngaa	ngaa	ngaa		\\Swa{ngaa}, \\E{even without} is similar to \\Swa{ingawa}, \\E{although, even though}, but distinct from it.  Compare: \\Swa{ngaa hungii ndani ukauliza}, \\E{even without getting in you can ask, even if you don't get in you can ask} and \\Swa{ingawa umengia ndani, lakini ...}, \\E{even though you get in, yet ..., even if you've got in, still ...}.  In this line, the meaning is that even if Ja'far picks up little or no wisdom, he should still attempt to do it.		to gain even a little wisdom [from him].
1708	158	d	3	كُمْوَنْڠُكِيَ	kumwangukiya	kumwangukiya	kumwangukiya		\\Swa{-angukia}, \\E{fall down before, prostrate oneself before}, = \\Swa{-sujudia}, i.e. submit.  This would normally be humiliating (the only time you prostrate yourself should be before God), but Ja'far's mother is impressing on him the need for humility.		
1712	159	b	2	چَكُلَ	chakula	chakula	chakula		A meal with someone before they go on a journey is traditional, but  \\Swa{watu wakenda mbali, chakula hukosa baraka}, \\E{if people are going far away, food lacks savour, lit. blessing}.		
1752	163	a	2	هَپٗ	hapo	hapo	hapo				
1753	163	a	3	كَتَمْكَ	kaṯamka	katamka	kaṯamka				
1713	159	b	3	كِتَيَرِ	kiṯayari	kitayari	kiṯayari		FIX ki tayari		
1814	169	c	2	زٗتِ	zoṯi	zoti	zoṯi		Emend to \\Swa{zote}.		
1747	162	c	2	هُيٗ	huyo	huyo	huyo		Mvita \\Swa{huyo} = Amu \\Swa{hoyo}.		
1755	163	b	2	مَمَ	mama	mama	mama				
1812	169	b	2	هُتَكُلِيَنِ	huṯakuliyani	hutakuliyani	huṯakuliyani				
1663	155	b	3	غَيْظِ	ḡayẓi	ghaydhi	ḡayẓi		\\Swa{ghaizi} = \\Swa{hasira}, \\E{crossness, annoyance}.  A mother is always soft-hearted towards her children, unlike a father.		
1817	169	d	2	هَيٗ	hayo	hayo	hayo				
1797	167	d	2	نْدِيَ	nḏiya	ndiya	nḏiya		\\Swa{kama hakuona ndia}, as if he does not know the right road, i.e. he is going in a completely different direction to his normal route.		
1758	163	c	2	أَكَئِنُكَ	akainuka	akainuka	akainuka				
1820	170	a	2	كَبَئِنِ	kabaini	kabaini	kabaini		\\Swa{-baini}, lit. \\E{explain}.		
1802	168	b	2	تَمْكٗ	ṯamko	tamko	ṯamko				
1657	154	d	1	مٗيٗ	moyo	moyo	moyo		Emend to \\Swa{moya}.  We understand \\Swa{jambo}, i.e. this is the one important thing she asks him to do.		is the one [thing] I charge you to do.
1760	163	d	2	كَمْتٗلٖيَ	kamṯoleya	kamtoleya	kamṯoleya				
1682	156	d	3	مَرْصِيَ	marṣiya	marsiya	marṣiya		That is, do not refuse anything -- the opposite of \\Swa{-legea}, \\E{be remiss}.		
1778	165	d	2	يَكٗ	yako	yako	yako				
1779	165	d	3	تَكْوٖٹٖيَ	ṯakweţeya	takweteya	ṯakweţeya				
1762	164	a	2	مَمَكٖ	mamake	mamake	mamake				
1765	164	b	2	أَمْفُوَتٖ	amfuwaṯe	amfuwate	amfuwaṯe				
1792	167	b	2	إٖنْدَ	enḏa	enda	enḏa				
1781	166	a	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
1769	164	d	2	أَكِمُؤٗمْبٖيَ	akimuombeya	akimuombeya	akimuombeya				
1771	165	a	2	نَاصِرِ	nāṣiri	nasiri	nāṣiri				
1772	165	a	3	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
1783	166	b	2	كَلِيَ	kaliya	kaliya	kaliya				
1784	166	b	3	نَاصِرِ	nāṣiri	nasiri	nāṣiri				
1786	166	c	2	أَكَفَسِرِ	akafasiri	akafasiri	akafasiri				
1795	167	c	2	هَنْڠَلِتٗكَ	hangaliṯoka	hangalitoka	hangaliṯoka				
1822	170	b	2	وَلِلِيَنِ	waliliyani	waliliyani	waliliyani				
1804	168	c	2	وٖنْدَنِ	wenḏani	wendani	wenḏani				
1799	168	a	2	يَنَ	yana	yana	yana				
1800	168	a	3	سِكُوَكٗ	sikuwako	sikuwako	sikuwako				
1809	169	a	2	وٖنْدَ	wenḏa	wenda	wenḏa				
1805	168	c	3	وَكٗ	wako	wako	wako				
1810	169	a	3	مَتُنْڠَنِ	maṯungani	matungani	maṯungani				
1807	168	d	2	نَلِيَسِكِيَ	naliyasikiya	naliyasikiya	naliyasikiya				
1815	169	c	3	سِمُؤٗنِ	simuoni	simuoni	simuoni				
1818	169	d	3	كُنَمْبِيَ	kunambiya	kunambiya	kunambiya				
1825	170	c	3	ڠَنَنِ	ganani	ganani	ganani				
1743	162	b	1	نِئٖٹٖيَ	nieţeya	nieteya	nieţeya				Bring me a horse --
1828	171	a	1	نَ	na	na	na				
1730	160	d	2	أَكِمْوَمْبِيَ	akimwambiya	akimwambiya	akimwambiya		Emend to \\Swa{akamwambiya}.		
1739	161	d	1	تَمَشَ	ṯamasha	tamasha	ṯamasha		i.e. \\Swa{zawadi}, \\E{a present}.		I will bring you something nice.
1857	173	d	2	زَكٗ	zako	zako	zako				
1838	172	a	1	أَكَجِبُ	akajibu	akajibu	akajibu				[Nasir] answered with the words
1759	163	d	1	صَدَكَ	ṣaḏaka	sadaka	ṣaḏaka		Contrast \\Swa{sadaka} with \\Swa{kafara}, \\E{expiatory offering} -- the former is given before doing something, the latter after doing something.  The purpose of the \\Swa{sadaka} is to protect Ja'far.  If a person is ill, you might put money under his pillow, or rice under his bed, and then give that away as alms, in the hope that he will get better.  Or to bring blessings to someone, you might circle them three times with the \\Swa{sadaka}, and then give it away (compare the note to 151d).		and gave alms for him.
1748	162	c	3	سِمُئِسِ	simuisi	simuisi	simuisi		\\Swa{-isa}, \\E{not know}, is only used in the negative.		
1858	173	d	3	زَ	za	za	za				
1859	173	d	4	كُئِنُكِيَ	kuinukiya	kuinukiya	kuinukiya		\\Swa{wakati wako wa kutoka}.  Being sad is natural for Nasir -- his brother has stopped being a playmate and has now become a young man.  		
1840	172	b	1	سِكُئِزَ	sikuiza	sikuiza	sikuiza				I don't disagree with these [plans] of yours --
1832	171	b	2	نِسِيَتٗكَ	nisiyaṯoka	nisiyatoka	nisiyaṯoka				
1749	162	d	1	نَتَكَ	naṯaka	nataka	naṯaka		Nasir considers the horse an exotic animal, which suggests he comes from an isolated village.  People may say: \\Swa{yeyeni maskini ameona ngamia -- labda anakaa mji mdogo}, \\E{that poor fellow there has just seen a camel [for the first time] -- he must live in a little village}.		I would like to see one.
1756	163	b	3	هُتٗكَ	huṯoka	hutoka	huṯoka		= \\Swa{natoka}.		
1895	177	b	3	هَكُئِسِ	hakuisi	hakuisi	hakuisi				
1843	172	c	1	سِكُ	siku	siku	siku				all the days of my life
1834	171	c	2	هَتَ	haṯa	hata	haṯa				
1879	175	d	4	عَفُوَ	'afuwa	'afuwa	'afuwa		The verb \\Swa{-afu}, \\E{preserve, deliver}, is the opposite of \\Swa{-tesa}, \\E{suffer, be afflicted by}, e.g. sickness, poverty, love.		
1763	164	a	3	أَتٗكٖ	aṯoke	atoke	aṯoke		Past tense.		
2325	219	b	3	نِتٗكَكٗ	niṯokako	nitokako	niṯokako		This is an echo of 196b, but neatly turns it to refer to time instead of space.		
1886	176	c	2	كْوَ	kwa	kwa	kwa				
1837	171	d	2	كُنِٹِيَ	kuniţiya	kunitiya	kuniţiya				
2344	221	b	1	زٖءٗ	zeo	zeo	zeo				the time is late -- 
1835	171	c	3	كُؤُذِكَ	kuudhika	kuudhika	kuudhika		\\Swa{haina maana}, \\E{there's no sense}.		
1854	173	c	2	مَتُلِ	maṯuli	matuli	maṯuli		FIX matulituli		
1839	172	a	2	تَمْكٗ	ṯamko	tamko	ṯamko				
2370	223	d	1	نَ	na	na	na				and brought them water.
1841	172	b	2	هَيٗ	hayo	hayo	hayo				
1842	172	b	3	يَكٗ	yako	yako	yako				
1861	174	a	2	نْدُيَكٖ	nḏuyake	nduyake	nḏuyake		See 170d.		
1882	176	a	3	كَيَنْدَمَ	kayanḏama	kayandama	kayanḏama		\\Swa{fuata ndia}.		
1844	172	c	2	زٗتٖ	zoṯe	zote	zoṯe				
1845	172	c	3	نِكٗ	niko	niko	niko				
1911	179	a	2	كَؤُٹِزَمَ	kauţizama	kautizama	kauţizama		= \\Swa{}akauona.		
1863	174	b	2	إِنُكَ	inuka	inuka	inuka				
1864	174	b	3	أُتٗكٖ	uṯoke	utoke	uṯoke				
2371	223	d	2	مَاءِ	mai	mai	mai		This could either be \\Swa{ya kunawa}, \\E{to wash with}, or \\Swa{ya kunwa}, \\E{to drink}.  The Swahili custom is not to eat food without water.		
1847	172	d	2	كُلِيَ	kuliya	kuliya	kuliya				
2504	236	d	1	هٗيٗ	hoyo	hoyo	hoyo				[it is] this person who has told [people] that.
2506	237	a	1	أَكَپِٹَ	akapiţa	akapita	akapiţa				He came to the door [of Ali's house]
1877	175	d	2	عَفِيَ	'afiya	'afiya	'afiya				
1878	175	d	3	نَ	na	na	na				
1830	171	a	3	هُكِرِضِكَ	hukiriḍika	hukiridhika	hukiriḍika				
1849	173	a	2	هَيٗ	hayo	hayo	hayo				
1850	173	a	3	نْدَ	nḏa	nda	nḏa				
1851	173	a	4	عَقِلِ	'aqili	'aqili	'aqili				
1866	174	c	2	أَتَمْكٖ	aṯamke	atamke	aṯamke				
1855	173	c	3	تُلِ	ṯuli	tuli	ṯuli				
1889	176	d	2	مَكَه	makah	makah	makah				
1890	176	d	3	أَمٖنْڠِيَ	amengiya	amengiya	amengiya				
1868	174	d	2	مْنْڠُ	mngu	mngu	mngu				
1869	174	d	3	نِؤٗمْبٖيَ	niombeya	niombeya	niombeya				
1881	176	a	2	نْدِيَ	nḏiya	ndiya	nḏiya				
1871	175	a	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
1873	175	b	2	مَنَنِ	manani	manani	manani				
1875	175	c	2	سَلِمِيْنِ	salimı̄ni	salimini	salimı̄ni				
1884	176	b	2	كُتٗسِمَمَ	kuṯosimama	kutosimama	kuṯosimama				
1900	177	d	2	تَئِكٖتِلِيَ	ṯaikeṯiliya	taiketiliya	ṯaikeṯiliya				
1894	177	b	2	بَبَكٖ	babake	babake	babake				
1897	177	c	2	نْدِيَ	nḏiya	ndiya	nḏiya				
1902	178	a	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
1904	178	b	2	زُبٖيْرِ	zubēri	zuberi	zubēri				
1906	178	c	2	نَ	na	na	na				
1907	178	c	3	بَشِيْرِ	bashı̄ri	bashiri	bashı̄ri				
1913	179	b	2	أَكَسِمَمَ	akasimama	akasimama	akasimama				
2002	188	a	2	زٗتٖ	zoṯe	zote	zoṯe				
1773	165	b	1	مْسٗمٖشٖ	msomeshe	msomeshe	msomeshe		Ja'far's mother asks the \\Swa{mwalimu} to "cause Nasir to read", i.e. teach him how to read the Qur'an.  Being able to read the Qur'an, even without understanding the detailed meaning of the words, is considered a first step in learning.  The student will attend the \\Swa{chuo}, \\E{school}, for 3-4 years, and while he is there the \\Swa{mfunzi} has wide latitude in terms of discipline -- the student may be chastised with a \\Swa{kikoto}, \\E{whip made of plaited grass}, made by the student himself, if he makes mistakes, and it is said that the only constraint on the \\Swa{mfunzi} is that \\Swa{asaze mifupa na mato}, \\E{he should omit [damaging] the bones and the eyes}.  The books used will all have brown or tan covers, because white is considered harmful.  Taha Hussein's \\E{The Stream of Days} includes a passage on his similar schooling in Egypt in the early 1900s.		teach him to read [the Qur'an] so that he may complete it.
1990	186	d	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima answered him.
1992	187	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima spoke
1915	179	c	2	هَشِمَ	hashima	hashima	hashima				
1943	182	b	2	بَبَنْڠُ	babangu	babangu	babangu				
1967	184	c	2	أَكَبئِنِ	akabini	akabini	akabini				
1777	165	d	1	عَادَ	'āḏa	'ada	'āḏa		These fees will be paid in stages once certain portions of the Qur'an have been learned, and can be paid in kind (e.g. in food items such as \\Swa{bisi}, \\E{roasted corn}).		I will pay your fee.
1917	179	d	2	وٖٹُ	weţu	wetu	weţu				
1788	166	d	2	أَتَرٖجٖيَ	aṯarejeya	atarejeya	aṯarejeya		She tries to comfort the child by saying things like \\Swa{hendi mbali -- atakuja atakuletea peremendi}, \\E{he is not going far -- he will come back and bring you sweets}.		
1994	187	b	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza				And asked the Hashimite:
1934	181	c	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far answered him:
1920	180	a	2	أَمِيْنِ	amı̄ni	amini	amı̄ni				
1996	187	c	1	بَبَ	baba	baba	baba				Father, I still don't recognise
1998	187	d	1	كِجَنَ	kijana	kijana	kijana				this boy, Prophet.
1946	182	c	2	أَمِيْنِ	amı̄ni	amini	amı̄ni				
1936	181	d	1	وَجْهِ	wajhi	wajhi	wajhi				His face is that of the Prophet.
1922	180	b	2	وٖٹُ	weţu	wetu	weţu				
1923	180	b	3	نِ	ni	ni	ni				
1924	180	b	4	نَنِ	nani	nani	nani				
1930	181	a	1	زُبٖيْرِ	zubēri	zuberi	zubēri				Zubayr was amazed:
1932	181	b	1	وَمُيُوَپِ	wamuyuwapi	wamuyuwapi	wamuyuwapi				How do you know the Prophet?
1926	180	c	2	هُبَئِنِ	hubaini	hubaini	hubaini				
1776	165	c	2	نَعِلِمُ	na'ilimu	na'ilimu	na'ilimu		This knowledge would include detailed exegesis of the Qur'an, intricate knowledge of \\Swa{fikhri}, \\E{grammar}, awareness of religious ritual, etc.		
1824	170	c	2	ٹْوَلِأ	ţwali	twali	ţwali				
1970	184	d	3	يَنْفُ	yanfu	yanfu	yanfu				
1928	180	d	2	نِپٖ	nipe	nipe	nipe				
1931	181	a	2	كَتَعَجَبُ	kaṯa'ajabu	kata'ajabu	kaṯa'ajabu				
1948	182	d	2	نَاءٖ	nae	nae	nae				
1933	181	b	2	حَبِيْبُ	ḥabı̄bu	habibu	ḥabı̄bu				
1949	182	d	3	كْوَ	kwa	kwa	kwa				
1950	182	d	4	عَلِيَ	'aliya	'aliya	'aliya				
1935	181	c	2	كَمْجِبُ	kamjibu	kamjibu	kamjibu				
1981	185	c	2	قَوْلِ	qawli	qauli	qawli				
1937	181	d	2	وَكٖ	wake	wake	wake				
1952	183	a	2	سَيِّدِ	sayyiḏi	sayyidi	sayyiḏi				
1940	182	a	2	هَپٗ	hapo	hapo	hapo				
1964	184	b	2	نِ	ni	ni	ni				
1965	184	b	3	نْيَانِ	nyāni	nyani	nyāni				
1954	183	b	2	أَكَپِجَ	akapija	akapija	akapija				
1955	183	b	3	هٗدِ	hoḏi	hodi	hoḏi				
1973	185	a	2	جَدِ	jaḏi	jadi	jaḏi				
1974	185	a	3	يَنْڠُ	yangu	yangu	yangu				
1959	183	d	2	هَكٗ	hako	hako	hako				
1975	185	a	4	رَسُوْلِ	rasūli	rasuli	rasūli				
1971	184	d	4	سِكِيَ	sikiya	sikiya	sikiya				
1985	186	a	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
1977	185	b	2	نَ	na	na	na				
1978	185	b	3	وَٹُ	waţu	watu	waţu				
1979	185	b	4	وَوِلِ	wawili	wawili	wawili				
1983	185	d	2	كَمْوَنْڠَلِيَ	kamwangaliya	kamwangaliya	kamwangaliya				
1993	187	a	2	كَتَكَلَمُ	kaṯakalamu	katakalamu	kaṯakalamu				
1995	187	b	2	هَشِمُ	hashimu	hashimu	hashimu				
1989	186	c	2	كَفَسِرِ	kafasiri	kafasiri	kafasiri				
1997	187	c	2	سِيَمْفَهَمُ	siyamfahamu	siyamfahamu	siyamfahamu				
1999	187	d	2	هُيُ	huyu	huyu	huyu				
2000	187	d	3	نَبِيَ	nabiya	nabiya	nabiya				
1921	180	b	1	مْڠٖنِ	mgeni	mgeni	mgeni				Who is our guest?
2060	193	b	3	كَيَنْدَمَ	kayanḏama	kayandama	kayanḏama				
2003	188	a	3	سِمُؤٗنَ	simuona	simuona	simuona				
1892	177	a	2	أَلِپٗجِلِسِ	alipojilisi	alipojilisi	alipojilisi		\\Swa{-jilisi} = \\Swa{-keti}.		
1827	170	d	2	نَلٗكْوَمْبِيَ	nalokwambiya	nalokwambiya	nalokwambiya		Refers to 174-5.  \\Swa{amkumbusha, umesahau ...}, \\E{he reminds him, you have forgotten ...}.  He says something like: "You said you wanted a horse -- how can I get one if I don't go?"		
1909	178	d	2	كَمْوِنُلِيَ	kamwinuliya	kamwinuliya	kamwinuliya		lit. "raised his hands to him".		
1918	179	d	3	هُنْڠِيَ	hungiya	hungiya	hungiya		\\Swa{anaanza kufika sasa}, \\E{he is arriving just now}.		
2005	188	b	2	لَكٖ	lake	lake	lake				
2006	188	b	3	نٔدِيٖ	nḏiye	ndiye	nḏiye				
2007	188	b	4	نَنِ	nani	nani	nani				
1929	180	d	3	نَبِيَ	nabiya	nabiya	nabiya		Ja'far, despite never having met the Prophet, recognises him immediately.		
1938	181	d	3	نَبِيَ	nabiya	nabiya	nabiya		i.e. \\Swa{uso wake unamwonyesha}, \\E{his countenance identifies him} -- the Prophet's features show a qualitative difference (\\Swa{tofauti}) from everyone elses's.		
1941	182	a	3	كَبَئِنِ	kabaini	kabaini	kabaini		\\Swa{akasema}.		
2009	188	c	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
2078	195	b	2	سَلَامَ	salāma	salama	salāma				
1945	182	c	1	كَمْتُكُوَ	kamṯukuwa	kamtukuwa	kamṯukuwa		\\Swa{-enda naye}.		The Trustworthy One accompanied him
2011	188	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				
1953	183	b	1	كْوَءٗ	kwao	kwao	kwao				he called: Hello!
1957	183	c	2	أَكَرَدِدِ	akaraḏiḏi	akaradidi	akaraḏiḏi		The original Arabic words means "repeat", but in Swahili it is another word for \\Swa{-sema}, \\E{speak}.		
2033	191	a	2	كَتٗكَ	kaṯoka	katoka	kaṯoka				
1960	183	d	3	نَبِيَ	nabiya	nabiya	nabiya		\\Swa{alifikiri mtu anamtaka Mtume} -- Fatima thinks that someone has come to the house looking for the Prophet.		
2013	189	a	2	بَشِيْرِ	bashı̄ri	bashiri	bashı̄ri				
1961	184	a	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza		\\Swa{-uza} = \\Swa{-uliza}.		She asked Husayn:
2034	191	a	3	حُسَيْنِ	ḥusayni	husayni	ḥusayni				
1963	184	b	1	أَمْكُوَءٗ	amkuwao	amkuwao	amkuwao		= Swa{aitaye}.		Who is calling?
2015	189	b	2	نْدِيٖ	nḏiye	ndiye	nḏiye				
2016	189	b	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
1969	184	d	2	جَدِ	jaḏi	jadi	jaḏi		= \\Swa{babu}.		
2049	192	c	2	إِنَ	ina	ina	ina				
1987	186	b	2	خَبَرِ	khabari	habari	khabari		i.e. he asked \\Swa{hujambo?}		
2054	192	d	3	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya	nimekwambiya		i.e. I have told you the real cause.  He tells the whole story in case Ali gets worried that there has been a crisis at home.  Compare 13b.		
2018	189	c	2	عَلِيْ	'alii	'alii	'alii				
2019	189	c	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
1898	177	c	3	سِتَكَسِ	siṯakasi	sitakasi	siṯakasi		Emend to \\Swa{sitakisi} = \\Swa{siioni}.		
2036	191	b	2	مْسِكِٹِنِ	msikiţini	msikitini	msikiţini				
1962	184	a	2	حُسَيْبِ	ḥusaybi	husaybi	ḥusaybi				
1944	182	b	3	نِپٖكٖنِ	nipekeni	nipekeni	nipekeni				
2021	189	d	2	صُوْرَ	ṣūra	sura	ṣūra				
2050	192	c	3	نِ	ni	ni	ni				
2051	192	c	4	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
2024	190	a	2	سَيِدِ	sayiḏi	sayidi	sayiḏi				
2025	190	a	3	أَمِيْنِ	amı̄ni	amini	amı̄ni				
2027	190	b	2	حُسَيْنِ	ḥusayni	husayni	ḥusayni				
2038	191	c	2	كُئِيٖ	kuiye	kuiye	kuiye				
2039	191	c	3	مْڠٖنِ	mgeni	mgeni	mgeni				
2029	190	c	2	مْسِكِٹِنِ	msikiţini	msikitini	msikiţini				
2079	195	b	3	أُتٗكَكٗ	uṯokako	utokako	uṯokako				
2062	193	c	2	أَكِكٗمَ	akikoma	akikoma	akikoma				
2043	192	a	2	كِجَنَ	kijana	kijana	kijana				
2044	192	a	3	مْزُرِ	mzuri	mzuri	mzuri				
2053	192	d	2	هِلٗ	hilo	hilo	hilo				
2046	192	b	2	نَ	na	na	na				
2047	192	b	3	بَشِيْرِ	bashı̄ri	bashiri	bashı̄ri				
2056	193	a	2	هِيٗ	hiyo	hiyo	hiyo				
2057	193	a	3	كَلِمَ	kalima	kalima	kalima				
2068	194	b	2	عَلِيْ	'alii	'alii	'alii				
2059	193	b	2	نْدِيَ	nḏiya	ndiya	nḏiya				
2069	194	b	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
2066	194	a	2	أَكِفَسِرِ	akifasiri	akifasiri	akifasiri				
2073	194	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya	kampokeya				
2071	194	c	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
2075	195	a	2	كٖٹَ	keţa	keta	keţa				
2076	195	a	3	تَمْكٗ	ṯamko	tamko	ṯamko				
2082	195	c	3	وَكٗ	wako	wako	wako				
2084	195	d	2	زَءٗ	zao	zao	zao				
2085	195	d	3	نَمْبِيَ	nambiya	nambiya	nambiya				
2087	196	a	2	كَلَمُ	kalamu	kalamu	kalamu				
2001	188	a	1	سِكُ	siku	siku	siku				I have never seen him before,
2138	201	a	1	كَئِوَتَ	kaiwaṯa	kaiwata	kaiwaṯa				I left behind the [road] to the right
2117	199	a	2	قَوْلِ	qawli	qauli	qawli				
2148	202	a	1	نِپَ	nipa	nipa	nipa				Then I did something stupid -- 
2089	196	b	2	نِ	ni	ni	ni				
2090	196	b	3	سَلَامَ	salāma	salama	salāma				
1991	186	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya	kampokeya		= \\Swa{-itikia}.		
2022	189	d	3	هُكْوَمْبِيَ	hukwambiya	hukwambiya	hukwambiya		In the Mombasa expression, \\Swa{umejizaa mwenyewe}, \\E{he's the spitting image of you}.		
2150	202	a	3	كَئٖٹَ	kaeţa	kaeta	kaeţa		i.e. \\Swa{-fanya jinga la kipumbavu}, \\E{do something blockheaded}, lit. "do the stupidity of an idiot".		
2031	190	d	2	نَمْكُلِيَ	namkuliya	namkuliya	namkuliya		= \\Swa{nimtia, namwita}.		
2144	201	c	1	هَتَ	haṯa	hata	haṯa				until I realised
2092	196	c	2	يَ	ya	ya	ya				
2093	196	c	3	هٗكٗ	hoko	hoko	hoko				
2094	196	c	4	نْيُمَ	nyuma	nyuma	nyuma				
2041	191	d	2	كُكْوَنْدَمِيَ	kukwanḏamiya	kukwandamiya	kukwanḏamiya		= \\Swa{nimetumwa kukufuatia}.		
2154	202	b	4	كَپِٹُ	kapiţu	kapitu	kapiţu		Where, of course, there are no paths.		
2096	196	d	2	لَكُكْوَمْبِيَ	lakukwambiya	lakukwambiya	lakukwambiya				
2151	202	b	1	إِيُ	iyu	iyu	iyu				I walked out into the scrubland
2098	197	a	2	بَبَ	baba	baba	baba				
2099	197	a	3	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
2115	198	d	2	أُمٖلِمَٹِيَ	umelimaţiya	umelimatiya	umelimaţiya		Amu \\Swa{-limatia} = Zanzibar, Mvita \\Swa{-chelewa}, Mvita \\Swa{-kawia}.		
2119	199	b	2	نَلِصَلِ	naliṣali	nalisali	naliṣali		i.e. he had got up in time for prayers at 5.00am.		
2155	202	c	1	إِلِ	ili	ili	ili				and left the road behind,
2101	197	b	2	مَمَ	mama	mama	mama				
2102	197	b	3	وَكُسَلِمُ	wakusalimu	wakusalimu	wakusalimu				
2160	203	a	1	سُرَ	sura	sura	sura		= \\Swa{namna yeyote}, \\E{whatever kind}.		Wherever I went in the scrubland
2158	202	d	1	نْيُمَ	nyuma	nyuma	nyuma				instead of going back.
2045	192	b	1	چٖنْدٖمٖنٖ	chenḏemene	chendemene	chenḏemene		Emend to \\Swa{endemene}, because \\Swa{kijana} (Class 7) is not a diminutive here.		He came with the Bringer of Good Tidings,
2104	197	c	2	السَّلَامَ	āssaّlāma	assaU+0651lama	āssaّlāma				
2064	193	d	2	كَوَپِسِيَ	kawapisiya	kawapisiya	kawapisiya		\\Swa{-pisiya} = \\Swa{-pitisha}.  In other words, he said \\Swa{salaam alekum}.		
2163	203	b	1	إِلٖ	ile	ile	ile				I couldn't find the road --
2121	199	c	2	بَبَ	baba	baba	baba				
2166	203	c	1	هُؤٗنَ	huona	huona	huona				I realised I was [lost] in the scrubland, 
2106	197	d	2	كَپٗكٖيَ	kapokeya	kapokeya	kapokeya				
2141	201	b	1	كَأَنْدَمَ	kaanḏama	kaandama	kaanḏama				and walked on for a long way
2122	199	c	3	نِ	ni	ni	ni				
2123	199	c	4	مْبَلِ	mbali	mbali	mbali				
2146	201	d	1	سَاءَ	saa	saa	saa		\\Swa{saa}, \\E{hour}, is used here to signify the passage of time.		a long time had passed.
2108	198	a	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
2171	204	a	1	كِپِجَ	kipija	kipija	kipija				I cudgelled my brains
2110	198	b	2	نْدِيَنِ	nḏiyani	ndiyani	nḏiyani				
2137	200	d	2	وَلٗنَمْبِيَ	walonambiya	walonambiya	walonambiya				
2112	198	c	2	زٖءٗ	zeo	zeo	zeo				
2113	198	c	3	ڠَنِ	gani	gani	gani				
2125	199	d	2	أُرٖفُ	urefu	urefu	urefu				
2126	199	d	3	وَ	wa	wa	wa				
2127	199	d	4	نْدِيَ	nḏiya	ndiya	nḏiya				
2139	201	a	2	يَ	ya	ya	ya				
2140	201	a	3	كُڤُلِ	kuvuli	kuvuli	kuvuli				
2132	200	b	2	مْٹٖنْدٖ	mţenḏe	mtende	mţenḏe				
2142	201	b	2	إِلٗ	ilo	ilo	ilo				
2143	201	b	3	مْبَلِ	mbali	mbali	mbali				
2149	202	a	2	أُوِنْڠَ	uwinga	uwinga	uwinga				
2145	201	c	2	كِتَأَمَلِ	kiṯaamali	kitaamali	kiṯaamali				
2156	202	c	2	نْدِيَ	nḏiya	ndiya	nḏiya				
2157	202	c	3	كُئِوَتَ	kuiwaṯa	kuiwata	kuiwaṯa				
2152	202	b	2	لَ	la	la	la				
2153	202	b	3	بَرَ	bara	bara	bara				
2162	203	a	3	بَرَنِ	barani	barani	barani				
2167	203	c	2	نِكٗ	niko	niko	niko				
2161	203	a	2	نٖنْدَءٗ	nenḏao	nendao	nenḏao				
2165	203	b	3	سِئِيٗنِ	siiyoni	siiyoni	siiyoni				
2164	203	b	2	نْدِيَ	nḏiya	ndiya	nḏiya				
2168	203	c	3	بَرَنِ	barani	barani	barani				
2170	203	d	2	زِمٖنِپٗتٖيَ	zimenipoṯeya	zimenipoteya	zimenipoṯeya				
2172	204	a	2	فِكِرَ	fikira	fikira	fikira				
2173	204	a	3	زَنْڠُ	zangu	zangu	zangu				
2175	204	b	2	ڠُوْ	guu	guu	guu				
2088	196	b	1	نِتٗكَجكٗ	niṯokajko	nitokajko	niṯokajko				Everything is well where I come from,
2206	207	a	1	كِمَلِزَ	kimaliza	kimaliza	kimaliza				When he had finished listening
2176	204	b	3	لَنْڠُ	langu	langu	langu				
2129	200	a	2	كِپَٹَ	kipaţa	kipata	kipaţa		Contrast \\Swa{-pata}, \\E{arrive at somewhere en route to a destination}, and \\Swa{-fika}, \\E{arrive at the destination}.		
2205	206	d	2	نِمٖكْوَمْبِيَ	nimekwambiya	nimekwambiya	nimekwambiya				
2208	207	b	1	عَلِيْ	'alii	'alii	'alii				Ali spoke:
2178	204	c	2	پَلٖ	pale	pale	pale				
2179	204	c	3	پَنْڠُ	pangu	pangu	pangu				
2239	210	b	1	أَكَمْوٖپُكَ	akamwepuka	akamwepuka	akamwepuka				She moved back from the Trustworthy One
2223	208	c	2	مٖزٗإِيَنْدَمَ	mezoiyanḏama	mezoiyandama	mezoiyanḏama				
2241	210	c	1	كْوَ	kwa	kwa	kwa				and made a sign with her hand
2508	237	b	1	أَكَرَدِدِ	akaraḏiḏi	akaradidi	akaraḏiḏi				and told Husayn:
2181	204	d	2	نْيُمَ	nyuma	nyuma	nyuma				
2182	204	d	3	كَرٖجٖيَ	karejeya	karejeya	karejeya				
2135	200	c	2	مٗيٗنِ	moyoni	moyoni	moyoni		i.e. \\Swa{nilisahau}, \\E{I forgot}.		
2199	206	b	3	كَعَبِرِ	ka'abiri	ka'abiri	ka'abiri		\\Swa{-abiri} < \\AS{عبر}, \\E{traverse, cross} was used in older Swahili to mean \\E{travel from continent to continent in a ship}, but now it refers to travel in general.		
2212	207	d	1	هَپٗ	hapo	hapo	hapo				Then the Prophet spoke.
2210	207	c	1	مْوَنَنْڠُ	mwanangu	mwanangu	mwanangu				My child, you have been through a lot.
2185	205	a	3	نْيُمَ	nyuma	nyuma	nyuma				
2169	203	d	1	زٗتٖ	zoṯe	zote	zoṯe		We understand \\Swa{ndia}, \\E{paths}.		and I had lost track of all [the roads].
2244	210	d	1	نَ	na	na	na				and beckoned [Ali] into the inner [room].
2218	208	b	1	سِ	si	si	si				It is no small thing to arrive safely --
2187	205	b	2	نْدِيَ	nḏiya	ndiya	nḏiya				
2188	205	b	3	كَيَنْدَمَ	kayanḏama	kayandama	kayanḏama				
2130	200	a	3	يَنْڠٗنِ	yangoni	yangoni	yangoni				
2209	207	b	2	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				
2510	237	c	1	آسَ	sa	sa	sa		Emend to \\Swa{basi}.		So, why are you bothering me?
2190	205	c	2	مْٹٖنْدٖ	mţenḏe	mtende	mţenḏe				
2191	205	c	3	كَكٗمَ	kakoma	kakoma	kakoma				
2207	207	a	2	كُپُلِكَ	kupulika	kupulika	kupulika		\\Swa{-pulika} = \\Swa{-sikiza}, \\E{listen carefully}.		
2240	210	b	2	أَمِيْنِ	amı̄ni	amini	amı̄ni				
2193	205	d	2	إِمٖنِسِمَمِيَ	imenisimamiya	imenisimamiya	imenisimamiya				
2222	208	c	1	نْدِيَ	nḏiya	ndiya	nḏiya				[on] the road he came along
2247	211	a	1	مكٗنٗ	mkono	mkono	mkono				When he saw her hand [sign]
2224	208	d	1	خَطَرِ	khaṭari	hatari	khaṭari				danger stalked him.
2514	237	d	2	أَلِوَپٗتٖيَ	aliwapoṯeya	aliwapoteya	aliwapoṯeya		The meaning seems to be that there is no justification for any gossip, because it is not as if Ja'far has gone wandering around the town like a child or a pet, giving people cause to talk about it.		
2195	206	a	2	يَ	ya	ya	ya				
2253	211	d	1	نٖنْدَ	nenḏa	nenda	nenḏa				I am just now going to the inner [room].
2511	237	c	2	وَ	wa	wa	wa		\\Swa{-m-} here = \\Swa{-ni-}.  i.e. it's no-one else's business.		
2249	211	b	1	عَلِيْ	'alii	'alii	'alii				Ali understood [what it meant].
2251	211	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				He told the Hashimite:
2198	206	b	2	نِْيَ	niya	niya	niya				
2255	211	d	3	مَرَ	mara	mara	mara				
2184	205	a	2	كُرُدِيَ	kuruḏiya	kurudiya	kuruḏiya				
2254	211	d	2	نْدَمِ	nḏami	ndami	nḏami				
2258	212	a	2	نْدَمِ	nḏami	ndami	nḏami				
2213	207	d	2	كَنٖنَ	kanena	kanena	kanena				
2201	206	c	2	يَ	ya	ya	ya				
2202	206	c	3	كُجَ	kuja	kuja	kuja				
2203	206	c	4	أَخِيْرِ	akhı̄ri	ahiri	akhı̄ri				
2214	207	d	3	نَبِيَ	nabiya	nabiya	nabiya				
2257	212	a	1	كْوَ	kwa	kwa	kwa				When he entered the inner [room]
2260	212	b	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima spoke:
2227	209	a	2	وَدُوْدِ	waḏūḏi	wadudi	waḏūḏi				
2216	208	a	2	كَنٖنَ	kanena	kanena	kanena				
2217	208	a	3	هَشِمَ	hashima	hashima	hashima				
2234	209	d	3	نْڠِسِ	ngisi	ngisi	ngisi				
2219	208	b	2	هَبَ	haba	haba	haba				
2220	208	b	3	كُيَ	kuya	kuya	kuya				
2245	210	d	2	نْدَنِ	nḏani	ndani	nḏani				
2237	210	a	2	أُكٗ	uko	uko	uko				
2238	210	a	3	كِٹِنِ	kiţini	kitini	kiţini				
2242	210	c	2	مْكٗنٗ	mkono	mkono	mkono				
2248	211	a	2	كِؤُٹِزَمَ	kiuţizama	kiutizama	kiuţizama				
2250	211	b	2	أَكَفَهَمَ	akafahama	akafahama	akafahama				
2252	211	c	2	هَشِمَ	hashima	hashima	hashima				
2256	211	d	4	مٗيَ	moya	moya	moya				
2259	212	a	3	أَلِپٗفِكَ	alipofika	alipofika	alipofika				
2174	204	b	1	كَلَنْدَمَ	kalanḏama	kalandama	kalanḏama				and then retraced my footsteps
2334	220	b	1	كَوَمْبِيَ	kawambiya	kawambiya	kawambiya				and bade them goodbye.
2261	212	b	2	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				
2196	206	a	3	أَظُهُرِ	aẓuhuri	adhuhuri	aẓuhuri		Midday, when the sun is approaching its zenith, or just afterwards.		
2289	215	b	2	حُسَيْنِ	ḥusayni	husayni	ḥusayni				
2200	206	c	1	حُجَ	ḥuja	huja	ḥuja		\\Swa{huja}, \\E{reason, argument, proof}.		Regarding coming late,
2337	220	c	1	عَلِيْ	'alii	'alii	'alii				Ali spoke:
2263	212	c	2	نِمٖكِپِكَ	nimekipika	nimekipika	nimekipika				
2328	219	c	3	نٖنْدَكٗ	nenḏako	nendako	nenḏako				
2339	220	d	1	مْبٗنَ	mbona	mbona	mbona				Surely you are not leaving, Prophet?
2265	212	d	2	كْوَنْدِكِوَ	kwanḏikiwa	kwandikiwa	kwanḏikiwa				
2215	208	a	1	هَپٗ	hapo	hapo	hapo		Note the use of \\Swa{hapo} to refer to time instead of place: "at this point".		Then the Hashimite spoke:
2342	221	a	1	مْٹُمٖ	mţume	mtume	mţume				The Prophet spoke:
2221	208	b	4	سَلَام	salām	salam	salām		Emend to \\Swa{salama}.  \\Swa{ingawa umetaabika}, \\E{even though you were in distress}.		
2233	209	d	2	وَ	wa	wa	wa				
2225	208	d	2	هُمْزٖنْڠٖيَ	humzengeya	humzengeya	humzengeya		He could have been attacked by robbers, lions, etc.		
2291	215	c	2	حَسَنِ	ḥasani	hasani	ḥasani				
2226	209	a	1	أَمْكِنْڠَ	amkinga	amkinga	amkinga		Emend to \\Swa{amemkinga}.		The Loving One protected him
2267	213	a	2	سِكُمَكِنِكَ	sikumakinika	sikumakinika	sikumakinika		Emend to \\Swa{ni kumakinika}.		
2231	209	c	2	وَنْڠَلِمْزِدِ	wangalimziḏi	wangalimzidi	wangalimziḏi		i.e. "they would have been too much for him" -- \\Swa{-zidi} here = \\Swa{shinda}.		
2306	217	b	2	سَلَامُ	salāmu	salamu	salāmu				
2271	213	c	2	هُمْپَپَٹِكَ	humpapaţika	humpapatika	humpapaţika				
2243	210	c	3	كَبَئِنِ	kabaini	kabaini	kabaini		\\Swa{kumwambia siri}, \\E{to tell him a secret}.		
2273	213	d	2	أَثَقِلِ	athaqili	athaqili	athaqili				
2246	210	d	3	كَمُأَمْكُوَ	kamuamkuwa	kamuamkuwa	kamuamkuwa		\\Swa{kumwita ndani}, \\E{to call him into the private quarters}.		
2211	207	c	2	أُمٖسُمْبُكَ	umesumbuka	umesumbuka	umesumbuka		\\Swa{umepata taabu}.		
2274	213	d	3	وَ	wa	wa	wa				
2285	214	d	2	هُرٹْوَمْبِيَ	hurţwambiya	hurtwambiya	hurţwambiya				
2275	213	d	4	نْدِيَ	nḏiya	ndiya	nḏiya		i.e. \\Swa{taabu ya ndiani}.		
2278	214	a	3	أَلِزٗتٗكَ	alizoṯoka	alizotoka	alizoṯoka				
2318	218	c	2	وَكَسِمَ	wakasima	wakasima	wakasima		Emend to \\Swa{wakasema}.		
2320	218	d	2	وَكَمْپٗكٖيَ	wakampokeya	wakampokeya	wakampokeya		i.e. answered \\Swa{wa alekum as-salaam}.		
2229	209	b	2	مَيَهُوْدِ	mayahūḏi	mayahudi	mayahūḏi		Although the literal meaning is "Jews", it is important to note that this word now has a much wider meaning of unbelievers in general, \\Swa{makafiri}.		
2277	214	a	2	زٖءٗ	zeo	zeo	zeo		Amu \\Swa{zeo} = Mvita \\Swa{wakati}, Mu \\Swa{njeo}.		
2280	214	b	2	هَكِكَ	hakika	hakika	hakika				
2296	216	a	3	نْدَنِ	nḏani	ndani	nḏani				
2282	214	c	2	سِسِ	sisi	sisi	sisi				
2283	214	c	3	هُمْپُلِكَ	humpulika	humpulika	humpulika				
2308	217	c	2	كَلِمُ	kalimu	kalimu	kalimu				
2287	215	a	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
2298	216	b	2	كِٹِنِ	kiţini	kitini	kiţini				
2300	216	c	2	حَسَنِ	ḥasani	hasani	ḥasani				
2310	217	d	2	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				
2304	217	a	2	أَكَنُظُمُ	akanuẓumu	akanudhumu	akanuẓumu				
2324	219	b	2	سَلَامَ	salāma	salama	salāma				
2313	218	a	3	نْدَنِ	nḏani	ndani	nḏani				
2316	218	b	2	سَلَامَ	salāma	salama	salāma				
2322	219	a	2	مَتَمْكٗ	maṯamko	matamko	maṯamko				
2335	220	b	2	كْوَ	kwa	kwa	kwa				
2336	220	b	3	هٖرِنِ	herini	herini	herini				
2327	219	c	2	مْبٖيْ	mbee	mbee	mbee				
2333	220	a	2	أَمِيْنِ	amı̄ni	amini	amı̄ni				
2330	219	d	2	نِ	ni	ni	ni				
2331	219	d	3	جَلِيَ	jaliya	jaliya	jaliya				
2338	220	c	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
2340	220	d	2	هُتٗكَ	huṯoka	hutoka	huṯoka				
2341	220	d	3	نَبِيَ	nabiya	nabiya	nabiya				
2343	221	a	2	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				
2392	225	c	2	أَكَئِنُكَ	akainuka	akainuka	akainuka				
2345	221	b	2	زِمٖأَخِرِكَ	zimeakhirika	zimeahirika	zimeakhirika				
2374	224	a	2	كْوَ	kwa	kwa	kwa				
2347	221	c	2	تِسِيَ	ṯisiya	tisiya	ṯisiya				
2348	221	c	3	هَكِكَ	hakika	hakika	hakika				
2406	227	a	1	تَمْبُوْ	ṯambuu	tambuu	ṯambuu		\\Swa{tambuu} is some lime wrapped in a betel leaf, used like chewing tobacco.  Protracted use stains the teeth red.  Offering \\Swa{tambuu} is a particular feature of northern Swahili culture.  However, it is very unlikely that Swa{tambuu} would have been offered in the original Arabian setting of the story, and it is even less likely that the Prophet would have accepted it even if it was.		Choice tambuu
2288	215	b	1	هُمْصُبِرِ	humṣubiri	humsubiri	humṣubiri		\\Swa{-subiri} = \\Swa{-ngoja}.		we are [still] waiting for Husayn --
2463	232	d	1	حر	ḥr	hr	ḥr		Emend to \\Swa{habari}.		and told him the news.
2372	223	d	3	كَوَپٖكٖيَ	kawapekeya	kawapekeya	kawapekeya				
2350	221	d	2	سِيَرٖجٖيَ	siyarejeya	siyarejeya	siyarejeya				
2375	224	a	3	مْفَنٗ	mfano	mfano	mfano		i.e. \\Swa{kwa sawasawa}.		
2424	228	c	2	أَكَئِنُكَ	akainuka	akainuka	akainuka				
2377	224	b	2	مِكٗنٗ	mikono	mikono	mikono		In other words, they eat together, \\Swa{kula pamoja}, which brings \\Swa{baraka}, \\E{blessings}.		
2352	222	a	2	صُبِرِ	ṣubiri	subiri	ṣubiri				
2353	222	a	3	بَشِيْرِ	bashı̄ri	bashiri	bashı̄ri				
2394	225	d	2	أَكَوَتِيَ	akawaṯiya	akawatiya	akawaṯiya		In other words, the Prophet stays for a little while for politeness' sake, but leaves as soon as he can.		
2395	226	a	1	أَكَئِنُكَ	akainuka	akainuka	akainuka		This and the previous stanza are very vivid depictions of Swahili customs.		He rose from his chair
2405	226	d	2	أَكَسُكُتُوَ	akasukuṯuwa	akasukutuwa	akasukuṯuwa		After eating, you rinse your mouth with water and spit it out.		
2355	222	b	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari		i.e. \\Swa{tule naye}, \\E{so that we may share a meal with him}.  Sharing a meal with someone shows respect.		
2408	227	a	3	كُخِتَرِ	kukhiṯari	kuhitari	kukhiṯari		\\Swa{ya kuteua nzuri}.		
2430	229	b	2	أَكَئِٹِزَمَ	akaiţizama	akaitizama	akaiţizama		Gasp!!!		
2357	222	c	2	كِكٗ	kiko	kiko	kiko				
2358	222	c	3	تَيَرِ	ṯayari	tayari	ṯayari				
2442	230	d	1	يٖؤٗ	yeo	yeo	yeo		In this case, \\Swa{yeo / leo}, \\E{today}, means "now".		now as I look at you?
2426	228	d	2	أَكَوَپٖكٖيَ	akawapekeya	akawapekeya	akawapekeya				
2473	233	d	1	بِبِ	bibi	bibi	bibi		\\Swa{bibi} is a more polite way of saying \\Swa{mama}.		my mother - I'm telling you.
2360	222	d	2	كَكٖتِ	kakeṯi	kaketi	kakeṯi				
2361	222	d	3	نَبِيَ	nabiya	nabiya	nabiya				
2367	223	b	4	هَرَكَ	haraka	haraka	haraka		After being told not to server the food yet, she now has to do it in a hurry.		
2478	234	b	1	مٖكُسِرِ	mekusiri	mekusiri	mekusiri				Why has she got angry?
2295	216	a	2	كُتٗكَ	kuṯoka	kutoka	kuṯoka				
2363	223	a	2	أَكَئِنُكَ	akainuka	akainuka	akainuka				
2290	215	c	1	نِمٖمْٹُمَ	nimemţuma	nimemtuma	nimemţuma				I have sent Hasan
2379	224	c	2	وَٹُ	waţu	watu	waţu				
2380	224	c	3	وَ	wa	wa	wa				
2381	224	c	4	نَنٗ	nano	nano	nano				
2365	223	b	2	أُپٖسِ	upesi	upesi	upesi				
2366	223	b	3	نَ	na	na	na				
2369	223	c	2	أَكَئِوٖكَ	akaiweka	akaiweka	akaiweka				
2383	224	d	2	أَسِلٖ	asile	asile	asile				
2384	224	d	3	نَبِيَ	nabiya	nabiya	nabiya				
2396	226	a	2	كِٹِنِ	kiţini	kitini	kiţini				
2386	225	a	2	ٹَاٹُ	ţāţu	tatu	ţāţu				
2387	225	a	3	كْوَ	kwa	kwa	kwa				
2388	225	a	4	هَكِكَ	hakika	hakika	hakika				
2390	225	b	2	أَلِؤُپٖكَ	aliupeka	aliupeka	aliupeka				
2398	226	b	2	مَاءِ	mai	mai	mai				
2399	226	b	3	أَمِيْرِ	amı̄ri	amiri	amı̄ri				
2413	227	c	2	كْوَ	kwa	kwa	kwa				
2407	227	a	2	يَ	ya	ya	ya				
2401	226	c	2	يَ	ya	ya	ya				
2402	226	c	3	كُنْوَ	kunwa	kunwa	kunwa				
2403	226	c	4	كِكٗمْبٖنِ	kikombeni	kikombeni	kikombeni				
2414	227	c	3	هٖرِ	heri	heri	heri				
2410	227	b	2	كَپٗوَ	kapowa	kapowa	kapowa				
2411	227	b	3	بَشِيْرِ	bashı̄ri	bashiri	bashı̄ri				
2418	228	a	2	أَكِشَ	akisha	akisha	akisha				
2416	227	d	2	أَكَئِتٗكٖيَ	akaiṯokeya	akaitokeya	akaiṯokeya				
2419	228	a	3	كُتٗكَ	kuṯoka	kutoka	kuṯoka				
2421	228	b	2	كُلَ	kula	kula	kula				
2422	228	b	3	وَمٖكْوِشَ	wamekwisha	wamekwisha	wamekwisha				
2428	229	a	2	فَتُمَ	faṯuma	fatuma	faṯuma				
2346	221	c	1	سَاءَ	saa	saa	saa				it is now the ninth hour for certain,
2432	229	c	2	يَ	ya	ya	ya				
2433	229	c	3	نْيُمَ	nyuma	nyuma	nyuma				
2489	235	b	2	حُسَيْنِ	ḥusayni	husayni	ḥusayni				
2498	236	b	1	مْوٖنْيٖ	mwenye	mwenye	mwenye				the gossip-monger in the town,
2435	229	d	2	يَكَمْرُدِيَ	yakamruḏiya	yakamrudiya	yakamruḏiya				
2501	236	c	1	َِنَ	aina	aina	aina				[ja'far's] name, certainly,
2447	231	b	2	هُنٖنْدِ	hunenḏi	hunendi	hunenḏi				
2441	230	c	2	أُمٖزٗؤُدِكَ	umezouḏika	umezoudika	umezouḏika		Like \\Swa{ambaye mekasirika}, \\E{someone who is angry}.		
2461	232	c	2	كْوَ	kwa	kwa	kwa				
2462	232	c	3	أَمِيْنِ	amı̄ni	amini	amı̄ni				
2493	235	d	1	هُكُ	huku	huku	huku				to our house, I hear.
2439	230	b	2	أُمٖبَدِلِكَ	umebaḏilika	umebadilika	umebaḏilika				
2503	236	c	3	تَمْكِنِ	ṯamkini	tamkini	ṯamkini		= \\Swa{hakika}, \\E{certainly}.		
2448	231	b	3	بَعِيْدِ	ba'ı̄ḏi	ba'idi	ba'ı̄ḏi		\\Swa{baidi} = \\Swa{mbali}, \\E{far}, but here it has the meaning "yet".  i.e. Ali is going to be there for a while, so she will tell him now.		
2437	230	a	2	أكَتَمْكَ	kaṯamka	katamka	kaṯamka				
2479	234	b	2	كِيَ	kiya	kiya	kiya				
2481	234	c	1	مْوٖنْيٖوٖ	mwenyewe	mwenyewe	mwenyewe				[Hasan said:] Myself I don't know -- 
2443	230	d	2	نِكِكْوَنْڠَلِيَ	nikikwangaliya	nikikwangaliya	nikikwangaliya				
2482	234	c	2	هَكُبَئِنِ	hakubaini	hakubaini	hakubaini		Emend to \\Swa{sikubaini}.		
2477	234	a	2	أمِيْنِ	mı̄ni	mini	mı̄ni				
2464	232	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				
2490	235	c	1	آٹِ	ţi	ti	ţi				So, a visitor has come
2445	231	a	2	َكَرَدِدِ	akaraḏiḏi	akaradidi	akaraḏiḏi				
2499	236	b	2	خَتَرِ	khaṯari	hatari	khaṯari				
2500	236	b	3	هُئِنِ	huini	huini	huini		Hasan is annoyed because someone is spreading gossip about the fact that Ali has a hitherto-unknown son.  To avoid confirming the rumours he does a typically Swahili thing -- if someone asks you if such-and-such a rumour is true, you say: "The one who told you is the one who knows -- go back and ask him".		
2512	237	c	3	مْتَكِيَن	mṯakiyan	mtakiyan	mṯakiyan				
2485	235	a	1	كُرُدِ	kuruḏi	kurudi	kuruḏi				As [Hasan] went back along the road
2502	236	c	2	يٖيٖ	yeye	yeye	yeye		i.e. Ja'far's name.		
2480	234	b	3	نِنِ	nini	nini	nini				
2488	235	b	1	أَكَمُؤٗنَ	akamuona	akamuona	akamuona				he saw Husayn [who said:]
2450	231	c	2	سِنَ	sina	sina	sina				
2451	231	c	3	بُدِ	buḏi	budi	buḏi				
2466	233	a	2	كِشَ	kisha	kisha	kisha				
2467	233	a	3	كُفِكَ	kufika	kufika	kufika				
2515	238	a	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza				His father asked him:
2453	231	d	2	نَاوٖ	nāwe	nawe	nāwe				
2454	231	d	3	كُكْوَمْبِيَ	kukwambiya	kukwambiya	kukwambiya				
2496	236	a	1	أَكَمْجِبُ	akamjibu	akamjibu	akamjibu				Hasan answered him:
2456	232	a	2	حَسَنِ	ḥasani	hasani	ḥasani				
2458	232	b	2	كُلٖ	kule	kule	kule				
2459	232	b	3	نْيُمْبَنِ	nyumbani	nyumbani	nyumbani				
2469	233	b	2	مْٹُمٖ	mţume	mtume	mţume				
2470	233	b	3	كَتَمْكَ	kaṯamka	katamka	kaṯamka				
2472	233	c	2	أَمٖكَسِرِكَ	amekasirika	amekasirika	amekasirika				
2497	236	a	2	حَسَنِ	ḥasani	hasani	ḥasani				
2474	233	d	2	يَنْڠُ	yangu	yangu	yangu				
2475	233	d	3	نَكْوَمْبِيَ	nakwambiya	nakwambiya	nakwambiya				
2484	234	d	2	سِكُفَهَمِيَ	sikufahamiya	sikufahamiya	sikufahamiya				
2491	235	c	2	مٖكُيَ	mekuya	mekuya	mekuya				
2492	235	c	3	مْڠٖنِ	mgeni	mgeni	mgeni				
2486	235	a	2	كْوَكٖ	kwake	kwake	kwake				
2487	235	a	3	نْدِيَنِ	nḏiyani	ndiyani	nḏiyani				
2509	237	b	2	حُسَيْنِ	ḥusayni	husayni	ḥusayni				
2494	235	d	2	كْوٖٹُ	kweţu	kwetu	kweţu				
2495	235	d	3	نَسِكِيَ	nasikiya	nasikiya	nasikiya				
2505	236	d	2	أَمٖزٗوَمْبِيَ	amezowambiya	amezowambiya	amezowambiya				
2507	237	a	2	مْلَنْڠٗنِ	mlangoni	mlangoni	mlangoni				
2516	238	a	2	بَبَكٖ	babake	babake	babake				
2434	229	d	1	يٗتٖ	yoṯe	yote	yoṯe				all came back to her.
2563	242	c	2	هَنَ	hana	hana	hana				
2546	241	a	1	كْوٖنُ	kwenu	kwenu	kwenu				A visitor has come to your house --
2518	238	b	2	نَنِ	nani	nani	nani				
2519	238	b	3	هُنٖنَ	hunena	hunena	hunena				
2599	245	c	4	چَكٗ	chako	chako	chako		It is said: \\Swa{mtu mzima, huwezi kumdanganya}, \\E{you cannot hoodwink a mature person}.  Ali is telling Fatima: \\Swa{usinihadae, mimi si mtoto}, \\E{don't try to fool me, I am not a child}.  He knows something is troubling her, and wants her to say what it is.		
2521	238	c	1	أَكَمْبَ	akamba	akamba	akamba				Then [Ali] said: It is best I go out.
2547	241	a	2	كُئِيٖ	kuiye	kuiye	kuiye				
2564	242	c	3	تَبَسَمُ	ṯabasamu	tabasamu	ṯabasamu		\\Swa{amehuzunika}, \\E\\{he has become sad} because everyone seems to be against him.		
2549	241	b	1	هِلٗ	hilo	hilo	hilo				why does this disturb you?
2522	238	c	2	خٖيْرِ	khēri	heri	khēri				
2575	243	c	3	هِمَ	hima	hima	hima		= \\Swa{taratibu}.		
2517	238	b	1	أُ	u	u	u		= \\Swa{una nini?}.  See 244a, 263b.		What's the matter?  You are speaking amongst yourselves.
2523	238	c	3	بِتٗكٖ	biṯoke	bitoke	biṯoke		We have to assume that Hasan and Husayn have told Ali what they were talking about.		
2525	238	d	2	زِمٖئٖنٖيَ	zimeeneya	zimeeneya	zimeeneya		In other words, Ali thinks it would be better to give the word officially, instead of having people gossip about it as a scandal.		
2513	237	d	1	پٖنُ	penu	penu	penu		We understand \\Swa{pahali}.		Has he left our house [and gone wandering about]?
2541	240	c	1	أُوٖنْڠَ	uwenga	uwenga	uwenga		Cognate with \\Swa{jinga} in 202a.		Foolishness is dangerous,
2583	244	b	3	كِسِرَنِ	kisirani	kisirani	kisirani		\\Swa{hateki}, \\E{she is not laughing}.  If someone is in a bad mood, you might say: \\Swa{ameamka na kisirani}, \\E{he got out of the wrong side of the bed}.  A \\Swa{siku wa kisirani} is a "bad hair day", a day on which nothing goes right.		
2527	239	a	2	خَبَرِ	khabari	habari	khabari				
2579	244	a	2	أُ	u	u	u		= \\Swa{una nini?}.  See 238b, 263b.		
2529	239	b	2	يَ	ya	ya	ya				
2588	244	d	2	مَتُنْڠُ	maṯungu	matungu	maṯungu		\\E{bitterness}.		
2545	240	d	2	يَكِتُمِلِيَ	yakiṯumiliya	yakitumiliya	yakiṯumiliya		Emend to \\Swa{yakitokweleya}.		
2532	239	c	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
2551	241	c	1	تَمُوٖكَ	ṯamuweka	tamuweka	ṯamuweka				Should I keep him here in the house
2534	239	d	2	مَوْلَانَا	mawlānā	maulana	mawlānā				
2535	239	d	3	عَلِيَ	'aliya	'aliya	'aliya				
2552	241	c	2	هُكُ	huku	huku	huku				
2553	241	c	3	نْيُمْبَنِ	nyumbani	nyumbani	nyumbani				
2567	243	a	1	عَلِيْ	'alii	'alii	'alii				So Ali said:
2537	240	a	2	عَلِيْ	'alii	'alii	'alii				
2538	240	a	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
2542	240	c	2	أُنَ	una	una	una				
2543	240	c	3	خَطَرِ	khaṭari	hatari	khaṭari				
2577	243	d	2	كَمُئٖنْدٖيَ	kamuenḏeya	kamuendeya	kamuenḏeya				
2568	243	a	2	هَپٗ	hapo	hapo	hapo				
2559	242	b	2	سِ	si	si	si				
2560	242	b	3	مْوَنَ	mwana	mwana	mwana				
2561	242	b	4	حَرَمُ	ḥaramu	haramu	ḥaramu				
2569	243	a	3	كَسٖمَ	kasema	kasema	kasema				
2594	245	b	3	طَبِيَ	ṭabiya	tabiya	ṭabiya				
2571	243	b	2	نْدٗوْ	nḏoo	ndoo	nḏoo				
2572	243	b	3	فَطُمَ	faṭuma	fatuma	faṭuma				
2580	244	a	3	نَنِ	nani	nani	nani				
2574	243	c	2	كْوَ	kwa	kwa	kwa				
2589	244	d	3	هُكْوَمْبِيَ	hukwambiya	hukwambiya	hukwambiya				
2582	244	b	2	أُنَ	una	una	una				
2585	244	c	2	أَكَمْبَ	akamba	akamba	akamba				
2591	245	a	2	تَمْكٗ	ṯamko	tamko	ṯamko				
2595	245	b	4	يَكٗ	yako	yako	yako				
2597	245	c	2	سِ	si	si	si				
2593	245	b	2	سِ	si	si	si				
2598	245	c	3	كِجَنَ	kijana	kijana	kijana				
2601	245	d	2	هَيٗ	hayo	hayo	hayo				
2602	245	d	3	هُنَمْبِيَ	hunambiya	hunambiya	hunambiya				
2604	246	a	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
2665	251	a	3	مْڠٖنِ	mgeni	mgeni	mgeni				
2550	241	b	2	هُكُؤُذِيَنِ	hukuudhiyani	hukuudhiyani	hukuudhiyani				
2663	251	a	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far was a stranger [to war]
2606	246	b	2	إِلٖ	ile	ile	ile				
2607	246	b	3	پٖٹٖ	peţe	pete	peţe				
2608	246	b	4	چَنْدَنِ	chanḏani	chandani	chanḏani				
2636	248	d	2	أُتَكَلٗ	uṯakalo	utakalo	uṯakalo				
2554	241	d	1	هُئِنَ	huina	huina	huina				so that he will not wander around the town?
2666	251	b	1	هَيَزٗوٖيَ	hayazoweya	hayazoweya	hayazoweya				he was not accustomed to battle --
2610	246	c	2	كِسِمَنِ	kisimani	kisimani	kisimani				
2668	251	c	1	مَهَلَ	mahala	mahala	mahala				where there were 200 [opponents]
2672	251	d	2	أَكِمْوٖنْدٖلٖيَ	akimwenḏeleya	akimwendeleya	akimwenḏeleya		Unlike Ali, Ja'far cannot yet fight 200 opponents alone!		
2613	246	d	3	هُٹِيَ	huţiya	hutiya	huţiya				
2612	246	d	2	زِيَپٗ	ziyapo	ziyapo	ziyapo		\\E{oaths}.		
2677	252	b	2	أَمٖصِفِكَ	ameṣifika	amesifika	ameṣifika				
2671	251	d	1	عَلِيْ	'alii	'alii	'alii				Ali would go to him [to help].
2654	250	b	2	نَ	na	na	na				
2673	252	a	1	هَتَ	haṯa	hata	haṯa				Until at the end of one year
2615	247	a	2	أَكَمْبَ	akamba	akamba	akamba				
2616	247	a	3	هَكِكَ	hakika	hakika	hakika				
2658	250	c	2	نٖنْدَپٗ	nenḏapo	nendapo	nenḏapo		Emend to \\Swa{naye wendapo}.		
2676	252	b	1	زِٹَنِ	ziţani	zitani	ziţani				he was renowned in battle.
2639	249	a	2	كٖٹَ	keţa	keta	keţa				
2678	252	c	1	سَبَا	sabā	saba	sabā				Indeed, 700 [opponents]
2618	247	b	2	أُكَكَسِرِكَ	ukakasirika	ukakasirika	ukakasirika				
2623	247	d	3	نَكْوَمْبِيَ	nakwambiya	nakwambiya	nakwambiya		In other words, "You would have got angry if I had not told you lies}.		
2640	249	a	3	قَوْلِ	qawli	qauli	qawli				
2630	248	b	4	غَرَضِ	ḡaraḍi	gharadhi	ḡaraḍi		\\Swa{gharadhi} = \\Swa{hasira}.		
2681	252	d	1	هُتِنْدَ	huṯinḏa	hutinda	huṯinḏa				he would cut down with no effort.
2620	247	c	2	أُنْڠٖلِؤُدِكَ	ungeliuḏika	ungeliudika	ungeliuḏika				
2637	248	d	3	نَمْبِيَ	nambiya	nambiya	nambiya		Ali is trying to mollify his wife.		
2622	247	d	2	كِلٖ	kile	kile	kile		Amend translation.		
2682	252	d	2	أَسِپٗيُوَ	asipoyuwa	asipoyuwa	asipoyuwa		i.e. he could do it without realising.		
2691	253	c	3	مَيَهُدِ	mayahuḏi	mayahudi	mayahuḏi		See 209b.  This word can be used for anyone who is bad or evil.		
2670	251	c	3	مَيْتِنِ	mayṯini	maytini	mayṯini		Emend to \\Swa{miyateni}.		
2655	250	b	3	مْوَنَ	mwana	mwana	mwana				
2656	250	b	4	نْيُمْبَنِ	nyumbani	nyumbani	nyumbani				
2625	248	a	2	سَسَ	sasa	sasa	sasa				
2626	248	a	3	نِنْڠٖكُؤُذِ	ningekuudhi	ningekuudhi	ningekuudhi				
2558	242	b	1	كْوَنِ	kwani	kwani	kwani				Why [do you want to hide him]?  He is not an illegitimate child.
2605	246	b	1	سِ	si	si	si				That ring on his finger, is it not [the one]
2628	248	b	2	يَنْڠُ	yangu	yangu	yangu				
2629	248	b	3	وَتَ	waṯa	wata	waṯa				
2660	250	d	1	وَچٖنْدَ	wachenḏa	wachenda	wachenḏa				they both went together.
2662	250	d	3	پَمٗيَ	pamoya	pamoya	pamoya		i.e. Ai took Ja'far with him on his campaigns.		
2642	249	b	2	سِ	si	si	si				
2643	249	b	3	يَ	ya	ya	ya				
2644	249	b	4	كُلَ	kula	kula	kula				
2683	253	a	1	هَتَ	haṯa	hata	haṯa				Until, as time went by,
2684	253	a	2	مْوَكَ	mwaka	mwaka	mwaka		\\Swa{mwaka}, \\E{year}, is used here to mean "time" in general.  Compare \\Swa{saa} in 201d.		
2632	248	c	2	وَكٖ	wake	wake	wake				
2633	248	c	3	أُوٖ	uwe	uwe	uwe				
2634	248	c	4	رَضِ	raḍi	radhi	raḍi				
2686	253	b	1	هَپٗ	hapo	hapo	hapo				when he went on a crusade,
2647	249	c	2	أُمٖكُبَلِ	umekubali	umekubali	umekubali				
2667	251	b	2	زِٹَنِ	ziţani	zitani	ziţani				
2659	250	c	3	زِٹَنِ	ziţani	zitani	ziţani				
2651	250	a	2	كْوَ	kwa	kwa	kwa				
2661	250	d	2	وٗتٖ	woṯe	wote	woṯe				
2674	252	a	2	أَكِتِمُ	akiṯimu	akitimu	akiṯimu				
2664	251	a	2	نِ	ni	ni	ni				
2675	252	a	3	مْوَكَ	mwaka	mwaka	mwaka				
2669	251	c	2	پَ	pa	pa	pa				
2680	252	c	3	هَكِكَ	hakika	hakika	hakika				
2679	252	c	2	مِيَ	miya	miya	miya				
2685	253	a	3	أُكِزِدِ	ukiziḏi	ukizidi	ukiziḏi				
2687	253	b	2	أَكٖنْدَ	akenḏa	akenda	akenḏa				
2688	253	b	3	جِهَدِ	jihaḏi	jihadi	jihaḏi				
2690	253	c	2	مٗيَ	moya	moya	moya				
2693	253	d	2	هَتَ	haṯa	hata	haṯa				
2763	261	a	1	أَمٖئِنُكَ	ameinuka	ameinuka	ameinuka				He got up from the chair
2694	253	d	3	مْمٗيَ	mmoya	mmoya	mmoya				
2645	249	b	5	دَلِيْلِ	ḏalı̄li	dalili	ḏalı̄li		The meaning of this line is not entirely clear.  \\Swa{dalili} is usuallly translated as "sign", but it is also a term for "proof", as used in logic.  So the line might be paraphrased as: "between us, the issue (\\Swa{kitu}) does not need to be proved on every point, because we love each other".		
457	44	d	1	نِمٖچٖنْدَ	nimechenḏa	nimechenda	nimechenḏa				I have emjoyed telling them to you.
2722	256	d	2	نَبِيَ	nabiya	nabiya	nabiya				
466	45	c	3	ي	ı̄	i	ı̄				
2696	254	a	2	مُئِنِ	muini	muini	muini				
2649	249	d	2	نِمٖكْوٖلٖيَ	nimekweleya	nimekweleya	nimekweleya		= \\Swa{nimekusamehe}, \\E{I have forgiven you}.    The mollification works -- Fatima forgives him.		
479	46	d	2	إِكَپٗتِيَ	ikapoṯiya	ikapotiya	ikapoṯiya		That is, the child would not know who his father was -- this would be very unfortunate, and Ali is anxious for this not to happen		
2698	254	b	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
2712	255	d	1	هُتٗشَ	huṯosha	hutosha	huṯosha		\\E{he is capable of [doing something]}.		He is fully able, in my opinion.
2771	262	a	1	هَپٗ	hapo	hapo	hapo				So the Bringer of Good Tidings went in
2739	258	c	2	نَ	na	na	na				
494	48	b	3	وَ	wa	wa	wa				
2700	254	c	2	أَمِنِ	amini	amini	amini				
2713	255	d	2	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya	kimwangaliya		Compare: \\Swa{kila kimwangaliya, naona ana mambo yule}, \\E{every time I look at him, I see that guy has something}.		
499	48	d	2	زَ	za	za	za				
510	49	d	1	َٰأَكَفِكَ	äaakafika	aaakafika	äaakafika				arrived to tell him.
2724	257	a	2	أَمِيْنِ	amı̄ni	amini	amı̄ni		Unlike Ali, the Prophet immediately understands the implications of the angel's message.		
2702	254	d	2	يَمْبٗ	yambo	yambo	yambo				
2703	254	d	3	يَكْوَمْبِيَ	yakwambiya	yakwambiya	yakwambiya				
2728	257	c	1	مْوَنٗ	mwano	mwano	mwano		= \\Swa{mwanayo, mwana wako, mtoto wako}.		this son of yours, it seems,
2740	258	c	3	رَسُوْلِ	rasūli	rasuli	rasūli				
2737	258	b	2	أَسِيَمُهَلِ	asiyamuhali	asiyamuhali	asiyamuhali		i.e. he did not delay.		
2705	255	a	2	سَسَ	sasa	sasa	sasa				
2706	255	a	3	بَشِرِ	bashiri	bashiri	bashiri				
2741	258	d	1	هَپٗ	hapo	hapo	hapo		i.e. \\Swa{pale pale}, \\E{then and there}.		and then they set out on the road.
2745	259	a	2	مْلَنْڠٗنِ	mlangoni	mlangoni	mlangoni		i.e. \\Swa{hajangia ndani} -- he has not gone into the house yet.		
2762	260	d	2	نَمْكُلِيَ	namkuliya	namkuliya	namkuliya		i.e. call my father for me.		
2708	255	b	2	پْوٖكٖ	pweke	pweke	pweke				
2709	255	b	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
2719	256	c	2	سِمْبَ	simba	simba	simba		Ali is known as \\Swa{simba wa Mungu}.		
2726	257	b	2	ٹْوٖنْدٖ	ţwenḏe	twende	ţwenḏe				
2727	257	b	3	نْيُمْبَنِ	nyumbani	nyumbani	nyumbani				
2765	261	b	1	أَمٖپَنْدَ	amepanḏa	amepanda	amepanḏa				and climbed onto the bed.
2711	255	c	2	مَكُفَرِ	makufari	makufari	makufari				
2767	261	c	1	نَاءٖ	nae	nae	nae				Go and look at him --
2769	261	d	1	يَمْبٗ	yambo	yambo	yambo				what has happened to him?
2774	262	b	1	نَ	na	na	na				with Ali the Lion-like.
601	58	c	2	أَكَمْصِكَ	akamṣika	akamsika	akamṣika				
2715	256	a	2	جِبْرِيْلِ	jibrı̄li	jibrili	jibrı̄li				
2756	260	b	2	حَسَنِ	ḥasani	hasani	ḥasani				
2717	256	b	2	رَسُوْلِ	rasūli	rasuli	rasūli				
2729	257	c	2	هُيٗ	huyo	huyo	huyo				
2730	257	c	3	يَقِيْنِ	yaqı̄ni	yaqini	yaqı̄ni				
2720	256	c	3	وَوِلِ	wawili	wawili	wawili				
2751	259	d	2	كُكْوَنْدَمِيَ	kukwanḏamiya	kukwandamiya	kukwanḏamiya				
2742	258	d	2	وَكَنْدَمَ	wakanḏama	wakandama	wakanḏama				
2732	257	d	2	دُنِيَ	ḏuniya	duniya	ḏuniya				
2743	258	d	3	نْدِيَ	nḏiya	ndiya	nḏiya				
2734	258	a	2	هِيٗ	hiyo	hiyo	hiyo				
2735	258	a	3	قَوْلِ	qawli	qauli	qawli				
2757	260	b	3	نَ	na	na	na				
2758	260	b	4	حُسَيْنِ	ḥusayni	husayni	ḥusayni				
2747	259	b	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
2753	260	a	2	أَلِپٗ	alipo	alipo	alipo				
2749	259	c	2	حَسَنِ	ḥasani	hasani	ḥasani				
2754	260	a	3	كِٹِنِ	kiţini	kitini	kiţini				
2764	261	a	2	كِٹِنِ	kiţini	kitini	kiţini				
2760	260	c	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
2766	261	b	2	فِرَشَنِ	firashani	firashani	firashani				
2772	262	a	2	أَكٖنْدَ	akenḏa	akenda	akenḏa				
2773	262	a	3	بَشِيْرِ	bashı̄ri	bashiri	bashı̄ri				
2775	262	b	2	عَلِىْ	'alii	'alii	'alii				
2776	262	b	3	حَىْدَرِ	ḥayḏari	haydari	ḥayḏari				
2692	253	d	1	هَكُنَ	hakuna	hakuna	hakuna				there was not one [left alive].
2748	259	c	1	أَلِهُتٗكَ	alihuṯoka	alihutoka	alihuṯoka				Hasan has [just] left 
2778	262	c	2	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
2746	259	b	1	فَتُمَ	faṯuma	fatuma	faṯuma		In a fairytale we would immediately conclude that \\Swa{mama wa kambo anamdhuru}, \\E{his stepmother is doing him harm}, but nothing could be further from the truth in this case -- it is God who has determined Ja'far's fate.		Fatima spoke:
2838	268	d	1	عَلِيْ	'alii	'alii	'alii				and addressed Ali.
2786	263	b	3	أُ	u	u	u				
2840	269	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				He told him as [Ali] listened:
2780	262	d	2	بَبَكٖ	babake	babake	babake				
2781	262	d	3	كَلِيَ	kaliya	kaliya	kaliya				
2807	265	b	2	نِپَ	nipa	nipa	nipa		lit. "give me", as a favour.  The sick person will also be offered watr.		
2768	261	c	2	مْوَنْڠَلِيِنِ	mwangaliyini	mwangaliyini	mwangaliyini		Emend to \\Swa{mwangaliyeni}.		
2793	263	d	2	كْوَنْدَم	kwanḏam	kwandam	kwanḏam		Emend to \\Swa{kwandama}.		
2783	263	a	2	كِبَنِ	kibani	kibani	kibani				
2845	269	c	1	مْٹُ	mţu	mtu	mţu				a person may be seized [by death]
2825	267	b	2	جَمِيْعِ	jamī'i	jami'i	jamī'i				
2847	269	d	1	نَوٖ	nawe	nawe	nawe				even if you were to stand watch over him.
2849	270	a	1	وَ	wa	wa	wa				And indeed, what kind of person is it
2785	263	b	2	مْوَنَنْڠُ	mwanangu	mwanangu	mwanangu				
2808	265	b	3	يَسِنِ	yasini	yasini	yasini		See note to 151d.  Chapter 36, \\Eit{Ya Sin}, of the Qur'an is read over the sick or dying.  It is considered unfortunate to die without having it read over you.		
2787	263	b	4	نَنِ	nani	nani	nani				
2810	265	c	2	كُبَئِنِ	kubaini	kubaini	kubaini				
2800	264	c	2	ضَرُبُ	ḍarubu	dharubu	ḍarubu		\\Swa{dharubu} = \\Swa{taabu, mashaka}		
2823	267	a	2	كِپُلِكَ	kipulika	kipulika	kipulika				
2836	268	c	1	مَنٖنٗ	maneno	maneno	maneno				and spoke [these] words
2789	263	c	2	نَ	na	na	na				
2790	263	c	3	يَمْبٗ	yambo	yambo	yambo				
2791	263	c	4	ڠَنِ	gani	gani	gani				
2844	269	b	3	رَبُك	rabuk	rabuk	rabuk		Emend to \\Swa{rabuka}.		
2817	266	b	2	أَسِيَفِكِرِ	asiyafikiri	asiyafikiri	asiyafikiri		\\Swa{hajui mambo}.  Usually only women are in this state after someone has died -- the men try to concentrate on making the funeral arrangements.  In this case, the Prophet steps in to organise the funeral.		
2856	270	c	1	إِسِپٗكُوَ	isipokuwa	isipokuwa	isipokuwa				unless it is God alone,
2812	265	d	2	كُئِفِيَ	kuifiya	kuifiya	kuifiya				
2858	270	d	1	نِوٖ	niwe	niwe	niwe				and you know that well.
2842	269	b	1	صُبِرِ	ṣubiri	subiri	ṣubiri		You have to endure whatever God sends you.  If someone wanted to take your child, you would not just stand there and look at him, but what else can you do in this case?		Have trust in Him, your Lord --
2794	263	d	3	نْدِيَ	nḏiya	ndiya	nḏiya				
2860	271	a	1	عَلِيْ	'alii	'alii	'alii				Ali, don't go on about this too much -- 
2796	264	a	2	كَلِمُ	kalimu	kalimu	kalimu				
2798	264	b	2	كَفَهَمَ	kafahama	kafahama	kafahama				
2850	270	a	2	أَمَّا	ammā	amma	ammā				
2801	264	c	3	كَٹِزَمَ	kaţizama	katizama	kaţizama				
2814	266	a	2	عَلِيْ	'alii	'alii	'alii				
2815	266	a	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
2803	264	d	2	أَكَمْوَنْڠَلِيَ	akamwangaliya	akamwangaliya	akamwangaliya				
2805	265	a	2	أَمِيْنِ	amı̄ni	amini	amı̄ni				
2852	270	a	4	مْٹُ	mţu	mtu	mţu				
2828	267	c	2	وَكِشَ	wakisha	wakisha	wakisha				
2819	266	c	2	بَشِيْرِ	bashı̄ri	bashiri	bashı̄ri				
2829	267	c	3	كُزِكَ	kuzika	kuzika	kuzika				
2821	266	d	2	كَوَمْبِيَ	kawambiya	kawambiya	kawambiya				
2837	268	c	2	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				
2831	267	d	2	أَسِپٗيُوَ	asipoyuwa	asipoyuwa	asipoyuwa				
2833	268	a	2	كُزِكَ	kuzika	kuzika	kuzika				
2843	269	b	2	كْوَكٖ	kwake	kwake	kwake				
2839	268	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				
2841	269	a	2	كِپُلِكَ	kipulika	kipulika	kipulika				
2853	270	a	5	ڠَنِ	gani	gani	gani				
2855	270	b	2	دُنِيَنِ	ḏuniyani	duniyani	ḏuniyani				
2851	270	a	3	نِ	ni	ni	ni				
2859	270	d	2	وَيَفَهَمِيَ	wayafahamiya	wayafahamiya	wayafahamiya				
2861	271	a	2	سٖنٖنْدٖ	senenḏe	senende	senenḏe				
2777	262	c	1	كِمْوٗنَ	kimwona	kimwona	kimwona				and when he saw Ja'far
2848	269	d	2	أُكَمْوَمْڠَلِيَ	ukamwamgaliya	ukamwamgaliya	ukamwamgaliya				
2918	276	a	3	كْوَكٖ	kwake	kwake	kwake		i.e. immediately he left.		
2864	271	b	2	هُچِجْوَ	huchijwa	huchijwa	huchijwa				
2927	277	a	1	نَاءٖ	nae	nae	nae				And as she repeated [the contents]
2871	272	a	1	هَپٗ	hapo	hapo	hapo				So when he had calmed down
2944	278	c	2	مْيُمَ	myuma	myuma	myuma		Emend to \\Swa{nyumba}.		
2865	271	b	3	مْفَنٗ	mfano	mfano	mfano				
2826	267	b	3	وَكَتٗكَ	wakaṯoka	wakatoka	wakaṯoka		With Ja'far's corpse.		
2893	273	d	2	مٗيَ	moya	moya	moya				
2894	273	d	3	كُوَمْبِيَ	kuwambiya	kuwambiya	kuwambiya				
2835	268	b	2	أَكَمُوٖكَ	akamuweka	akamuweka	akamuweka		In a chair.		
2867	271	c	2	هَيٗ	hayo	hayo	hayo				
2868	271	c	3	مَنٖنٗ	maneno	maneno	maneno				
2846	269	c	2	هَنْڠَلِكُپٗكَ	hangalikupoka	hangalikupoka	hangalikupoka		Amu \\Swa{-poka} = Mvita \\Swa{-pokonya}, \\E{seize}.		
2929	277	b	1	يُوَ	yuwa	yuwa	yuwa				the sun was going down,
2935	277	d	1	أُسِكُ	usiku	usiku	usiku				that night was drawing on.
2924	276	c	3	يَكٖ	yake	yake	yake		Usually if a mother is going somewhere and she has a small child she will take the child with her, but in this case Atiya is  so distraught that she rushes out immediately, forgetting about Nasir.		
2872	272	a	2	أَكِشَ	akisha	akisha	akisha				
2943	278	c	1	كِلَ	kila	kila	kila				calling at every house
2875	272	b	2	كَمْوَمْكُوَ	kamwamkuwa	kamwamkuwa	kamwamkuwa				
2854	270	b	1	أَدُمُوٗ	aḏumuwo	adumuwo	aḏumuwo		\\Swa{-dumu} < \\AS{دَامَ}, \\E{endure}, cognate of \\Swa{daima}, \\E{always}.		who remains in existence,
2911	275	c	2	يَ	ya	ya	ya				
2912	275	c	3	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
2870	271	d	2	إِكَمْنْڠِيَ	ikamngiya	ikamngiya	ikamngiya		He realised the truth -- to be sorrowful is a mistake, as the Prophet has said.  This sort of bereavement has always happened -- it is the same for everyone, and you cannot help it.  The Swahili practice is to console people by saying things like this -- if the bereaved family thought that they were the only ones to whom this was happening, they would become very distraught.		
2948	279	a	1	هَتَ	haṯa	hata	haṯa				So as she followed the road
2877	272	c	2	زَنْڠُ	zangu	zangu	zangu				
2878	272	c	3	بَرُوَ	baruwa	baruwa	baruwa				
2857	270	c	2	مَنَّانِ	mannāni	mannani	mannāni		\\Swa{ela Mannani tu}.  \\Swa{Mannani} < \\AS{المنّان}, the Benevolent One, < \\AS{مَنُّ}, \\E{bestow favours}.		
2898	274	b	2	كَرَتَسِ	karaṯasi	karatasi	karaṯasi				
2862	271	a	3	مْنٗ	mno	mno	mno		\\Swa{usizidi huzuni sana}, \\E{do not wallow in sadness}.		
2880	272	d	2	كُنِپٖكٖيَ	kunipekeya	kunipekeya	kunipekeya				
2913	275	c	4	وَكٖ	wake	wake	wake				
2882	273	a	2	مٗيَ	moya	moya	moya				
2883	273	a	3	نْدَ	nḏa	nda	nḏa				
2884	273	a	4	مَمَكٖ	mamake	mamake	mamake				
2900	274	c	2	نَزٗ	nazo	nazo	nazo				
2901	274	c	3	أُپٖسِ	upesi	upesi	upesi				
2886	273	b	2	نْدَ	nḏa	nda	nḏa				
2887	273	b	3	مْوَلِمُ	mwalimu	mwalimu	mwalimu				
2888	273	b	4	وَكٖ	wake	wake	wake				
2923	276	c	2	پْوٖكٖ	pweke	pweke	pweke				
2890	273	c	2	أُچٖنْدَ	uchenḏa	uchenda	uchenḏa				
2891	273	c	3	سِتَمْكٖ	siṯamke	sitamke	siṯamke				
2903	274	d	2	عَطِيَ	'aṭiya	'atiya	'aṭiya				
2915	275	d	2	كُمْپٖكٖيَ	kumpekeya	kumpekeya	kumpekeya				
2905	275	a	2	كُمْپَ	kumpa	kumpa	kumpa				
2906	275	a	3	كْوَكٖ	kwake	kwake	kwake				
2908	275	b	2	زُبٖىْرِ	zubēri	zuberi	zubēri				
2909	275	b	3	أَتٗكٖ	aṯoke	atoke	aṯoke				
2917	276	a	2	كُتٗكَ	kuṯoka	kutoka	kuṯoka				
2930	277	b	2	لِمٗ	limo	limo	limo				
2926	276	d	2	أَسِپٗزٖنْڠٖيَ	asipozengeya	asipozengeya	asipozengeya				
2920	276	b	2	أَسٗمٖ	asome	asome	asome				
2921	276	b	3	مَمَكٖ	mamake	mamake	mamake				
2940	278	a	4	زُبٖيْرِ	zubēri	zuberi	zubēri				
2936	277	d	2	هُمْنْڠِلِيَ	humngiliya	humngiliya	humngiliya				
2939	278	a	3	نْيُمَ	nyuma	nyuma	nyuma				
2947	278	d	2	عَطِيَ	'aṭiya	'atiya	'aṭiya				
2950	279	a	3	كِفُوَٹَ	kifuwaţa	kifuwata	kifuwaţa				
2863	271	b	1	مَمْبٗ	mambo	mambo	mambo				things have turned out like this.
2949	279	a	2	نْدِيَ	nḏiya	ndiya	nḏiya				
2978	281	d	3	عَلِيَ	'aliya	'aliya	'aliya				
2959	280	a	1	حَمْزَة	ḥamzaẗ	hamzat	ḥamzaẗ				Hamza was talking
2952	279	b	2	كِتٗمْكُٹَ	kiṯomkuţa	kitomkuta	kiṯomkuţa				
3025	286	a	3	مْلَنْڠٗنِ	mlangoni	mlangoni	mlangoni				
2961	280	b	1	نَ	na	na	na				with Lord Umar [in the house].
2954	279	c	2	يَ	ya	ya	ya				
2955	279	c	3	كْوَنْدَ	kwanḏa	kwanda	kwanḏa				
2956	279	c	4	كِپَٹَ	kipaţa	kipata	kipaţa				
2931	277	b	3	هُسَلِمُ	husalimu	husalimu	husalimu		It is dangerous for a woman to be out alone at night, but she is grief-stricken.		
2946	278	d	1	كِمْزٖنْڠٖيَ	kimzengeya	kimzengeya	kimzengeya		\\Swa{anamtafuta}.		while Atiya was looking for him.
2945	278	c	3	كِعَبِرِ	ki'abiri	ki'abiri	ki'abiri		i.e. going to every house and calling "Hodi!"  Zubeir is trying to find the \\Swa{mwalimu}'s house, to deliver his second letter (273b, 275).  He could not simply ask Atiya where it was, because he was told by Ali not to speak to the recipients (273c/d).		
2958	279	d	2	أَكِنْڠِيَ	akingiya	akingiya	akingiya				
2980	282	a	2	يَ	ya	ya	ya				
3000	283	d	2	كُمْفُنْڠُلِيَ	kumfunguliya	kumfunguliya	kumfunguliya		When someone asks you directions, the Swahili consider it polite to accompany them to their destination, call the person they are looking for, and hand over the visitor to them: \\Swa{nakuletea mgeni wako}, \\E{I'm bringing your visitor to you}.		
2969	281	a	1	مْوَنَمْكٖ	mwanamke	mwanamke	mwanamke				The woman spoke:
2960	280	a	2	أَكَفَسِرِ	akafasiri	akafasiri	akafasiri				
2998	283	c	2	أَكَؤُشِكَ	akaushika	akaushika	akaushika				
2971	281	b	1	كَنٖنَ	kanena	kanena	kanena				and said: I am Atiya.
2962	280	b	2	مَوْلَانَا	mawlānā	maulana	mawlānā				
2963	280	b	3	عُمَرِ	'umari	'umari	'umari				
2964	280	c	1	هِيِ	hiyi	hiyi	hiyi				It was dawn
2966	280	c	3	أَلْفَجِرِ	alfajiri	alfajiri	alfajiri		\\Swa{alfajiri}, \\E{dawn}.  In other words, it was time for morning prayers.		
2938	278	a	2	نُكٗ	nuko	nuko	nuko				
2974	281	c	1	چَمْبَ	chamba	chamba	chamba				perhaps you could show me
2965	280	c	2	نِ	ni	ni	ni				
2968	280	d	2	إِمٖسِمَمِيَ	imesimamiya	imesimamiya	imesimamiya		\\Swa{yali tayari sala}.		
2928	277	a	2	أََكِيَنُظُمُ	aakiyanuẓumu	aakiyanudhumu	aakiyanuẓumu				
2979	282	a	1	نْدِ	nḏi	ndi	nḏi				I have come along the road
2982	282	b	1	نْيُمْبَ	nyumba	nyumba	nyumba				and I don't know the house.
2970	281	a	2	كَتَمْكَ	kaṯamka	katamka	kaṯamka				
3027	286	b	2	ََكِبَئِنِ	aakibaini	aakibaini	aakibaini				
2973	281	b	3	أَتْوِكَ	aṯwika	atwika	aṯwika		The normal form of her name, Atiya, has been changed to Atika here to suit the rhyme.  But see also 298b, where it is not at the end of the line.		
2975	281	c	2	مْتَنِپِلٖكَ	mṯanipileka	mtanipileka	mṯanipileka		Emend to \\Swa{mtanipeleka}.		
2984	282	c	1	نْدِمِ	nḏimi	ndimi	nḏimi				I am Ja'far's mother
2972	281	b	2	نْدِمِ	nḏimi	ndimi	nḏimi				
3029	286	c	2	نِ	ni	ni	ni				
2985	282	c	2	أُمِ	umi	umi	umi				
2986	282	c	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
2977	281	d	2	مَوْلَانَا	mawlānā	maulana	mawlānā				
2988	282	d	2	هَيَ	haya	haya	haya				
2989	282	d	3	يَوٖلٖيَ	yaweleya	yaweleya	yaweleya				
3009	284	c	2	عَلِيْ	'alii	'alii	'alii				
2991	283	a	2	حَمْزَ	ḥamza	hamza	ḥamza				
2992	283	a	3	كَتٗكَ	kaṯoka	katoka	kaṯoka				
2994	283	b	2	أُپٖسِ	upesi	upesi	upesi				
2995	283	b	3	نَ	na	na	na				
2996	283	b	4	هَرَكَ	haraka	haraka	haraka				
3002	284	a	2	كِتٗكَ	kiṯoka	kitoka	kiṯoka				
3003	284	a	3	كَٹِكَ	kaţika	katika	kaţika				
3004	284	a	4	هٖمَ	hema	hema	hema				
3016	285	b	2	نْدِمِ	nḏimi	ndimi	nḏimi				
3006	284	b	2	نْدِيَ	nḏiya	ndiya	nḏiya				
3012	284	d	2	كِمْبِشِيَ	kimbishiya	kimbishiya	kimbishiya				
3017	285	b	3	حَمْزَ	ḥamza	hamza	ḥamza				
3021	285	d	2	كَتٗكَ	kaṯoka	katoka	kaṯoka				
3019	285	c	2	هُكُؤُلِزَ	hukuuliza	hukuuliza	hukuuliza				
3022	285	d	3	عَلِيَ	'aliya	'aliya	'aliya				
3024	286	a	2	يُپٗ	yupo	yupo	yupo				
3030	286	c	3	نِپٖكَنِ	nipekani	nipekani	nipekani				
3032	286	d	2	كُيَنْڠَلِيَ	kuyangaliya	kuyangaliya	kuyangaliya				
3034	287	a	2	عَلِيْ	'alii	'alii	'alii				
3035	287	a	3	كَتٗكَ	kaṯoka	katoka	kaṯoka				
3037	287	b	2	يَكِمْشُكَ	yakimshuka	yakimshuka	yakimshuka				
2981	282	a	3	نِمٖعَبِرِ	nime'abiri	nime'abiri	nime'abiri		See note to 206b.  Atiya is, to use the Arabic phrase, an \\Swa{abir sabili}, \\E{a traveller on the road}.  Travellers, even though they may just be passing through and not staying as a guest, must still be looked after, and given assistance.		
3084	291	c	3	فُنْڠُ	fungu	fungu	fungu				
2983	282	b	2	سِكُئِفَسِرِ	sikuifasiri	sikuifasiri	sikuifasiri		\\Swa{-fasiri} = \\Swa{-jua}.		
3010	284	c	3	أَكِكٗمَ	akikoma	akikoma	akikoma		\\Swa{-koma} here means "end up at".  Compare \\Swa{ndia hii imekoma wapi?}, \\E{where does this road go to?}		
3039	287	c	2	نْدٖ	nḏe	nde	nḏe				
3040	287	c	3	كَتَمْكَ	kaṯamka	katamka	kaṯamka				
3044	288	a	2	كِنُطُمُ	kinuṭumu	kinutumu	kinuṭumu				
3066	290	a	2	مْوٖنْيٖ	mwenye	mwenye	mwenye				
3038	287	c	1	هَتَ	haṯa	hata	haṯa				and outside he spoke,
3068	290	b	1	لَكٖ	lake	lake	lake				[his way] is to take people away and bring [them into existence],
3042	287	d	2	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				
3071	290	c	1	وَلَ	wala	wala	wala				and I did not want 
3074	290	d	1	أَئِفَرِكِ	aifariki	aifariki	aifariki				[ja'far] to pass away.
3047	288	c	1	صُبِرِ	ṣubiri	subiri	ṣubiri		Compare 269b.  		trust in Providence
3076	291	a	1	نَوٖ	nawe	nawe	nawe				And have trust [in God], my dear,
3046	288	b	2	إِسِلَامُ	isilāmu	isilamu	isilāmu				
3079	291	b	1	أُسِپٗتٖيْ	usipoṯee	usipotee	usipoṯee				so that you do not go astray from God's [path].
3082	291	c	1	وَلَ	wala	wala	wala				or you will not receive your share
3048	288	c	2	كْوَكٖ	kwake	kwake	kwake				
3049	288	c	3	كَرِيْمُ	karı̄mu	karimu	karı̄mu				
3077	291	a	2	صُبِرِ	ṣubiri	subiri	ṣubiri				
3080	291	b	2	كّوَ	kkwa	kkwa	kkwa				
3007	284	b	3	هَيَنْدَمَ	hayanḏama	hayandama	hayanḏama		Emend to kayandama.		
3051	288	d	2	أَكُلٖٹٖيَ	akuleţeya	akuleteya	akuleţeya				
3053	289	a	2	هُىُ	huyu	huyu	huyu				
3054	289	a	3	نِ	ni	ni	ni				
3055	289	a	4	مَمَكٖ	mamake	mamake	mamake				
3095	292	c	3	عَطِكَ	'aṭika	'atika	'aṭika				
3014	285	a	2	أَكِمَلِزَ	akimaliza	akimaliza	akimaliza		Emend to \\Swa{akimweleza}.		
3072	290	c	2	مِمِ	mimi	mimi	mimi				
3057	289	b	2	مْوٖنْي	mwenı̄	mweni	mwenı̄				
3059	289	b	4	چَكٖ	chake	chake	chake				
3073	290	c	3	سِكُتَكَ	sikuṯaka	sikutaka	sikuṯaka				
3061	289	c	2	قَبُرِ	qaburi	qaburi	qaburi				
3062	289	c	3	يَكٖ	yake	yake	yake				
3102	293	b	2	نَاءٖ	nae	nae	nae				
3058	289	b	3	كِٹِ	kiţi	kiti	kiţi		Emend to \\Swa{kite}, \\E{birth pangs}.  These give a mother a special love (\\Swa{huruma}) for her child -- she will willingly sacrifice herself for the child.  We see this even in animals.		
3064	289	d	2	كُيَنْڠَلِيَ	kuyangaliya	kuyangaliya	kuyangaliya				
3067	290	a	3	مَمْلَكَه	mamlakah	mamlakah	mamlakah				
3075	290	d	2	دُنِيَ	ḏuniya	duniya	ḏuniya				
3069	290	b	2	هٗنْدٗوَ	honḏowa	hondowa	honḏowa		We understand \\Swa{watu}, \\E{human beings}.  		
3087	291	d	3	نَ	na	na	na				
3070	290	b	3	كِوٖكَ	kiweka	kiweka	kiweka		God has the power to do whatever he likes -- he sustains people or brings their life to an end, and we are not in a position to understand his motives.		
3078	291	a	3	نْدُيَنْڠُ	nḏuyangu	nduyangu	nḏuyangu				
3088	291	d	4	دُنِيَ	ḏuniya	duniya	ḏuniya				
3081	291	b	3	مْنْڠُ	mngu	mngu	mngu				
3103	293	b	3	كَفَسِرِ	kafasiri	kafasiri	kafasiri				
3097	292	d	2	عَلِيَ	'aliya	'aliya	'aliya				
3090	292	a	2	كِپُلِكَ	kipulika	kipulika	kipulika				
3092	292	b	2	يَكِمْشُكَ	yakimshuka	yakimshuka	yakimshuka				
3115	294	c	2	سِكُمُيُوَ	sikumuyuwa	sikumuyuwa	sikumuyuwa				
3099	293	a	2	عَلِيْ	'alii	'alii	'alii				
3100	293	a	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
3108	293	d	2	پْوٖكٖ	pweke	pweke	pweke				
3109	293	d	3	عَلِيَ	'aliya	'aliya	'aliya				
3105	293	c	2	هَكُيَ	hakuya	hakuya	hakuya				
3106	293	c	3	زُبٖيْرِ	zubēri	zuberi	zubēri				
3111	294	a	2	بَرُوَ	baruwa	baruwa	baruwa				
3117	294	d	2	سِكُمْزٖنْڠٖيَ	sikumzengeya	sikumzengeya	sikumzengeya				
3113	294	b	2	كُئِفُنْڠُوَ	kuifunguwa	kuifunguwa	kuifunguwa				
3119	295	a	2	كِئِفَسِرِ	kiifasiri	kiifasiri	kiifasiri				
3202	303	b	2	نَمِ	nami	nami	nami				
3123	295	c	2	سَسَ	sasa	sasa	sasa				
3124	295	c	3	كُفِكِرِ	kufikiri	kufikiri	kufikiri				
3196	302	d	1	وَكَلَ	wakala	wakala	wakala				and they all ate together.
3155	298	b	4	كِٹُ	kiţu	kitu	kiţu		i.e. it is not food, so if she is fasting because of the bereavement it is reasonable to take it.		
3125	295	d	1	يَنَبُهِ	yanabuhi	yanabuhi	yanabuhi		= \\Swa{hatari}.		I put myself in danger.
3126	295	d	2	كُنِنْڠِيَ	kuningiya	kuningiya	kuningiya				
3201	303	b	1	سَسَ	sasa	sasa	sasa				Now I [bid you] farewell.
3156	298	c	1	چِجَ	chija	chija	chija				take three sips,
3128	296	a	2	كَمْكَلِمُ	kamkalimu	kamkalimu	kamkalimu				
3153	298	b	2	مَاءِ	mai	mai	mai				
3154	298	b	3	سِ	si	si	si				
3171	300	a	2	كَمْكَلِفِشَ	kamkalifisha	kamkalifisha	kamkalifisha		\\Swa{-kalifisha} =  \\Swa{-lazimisha}.		
3208	303	d	1	مْٹُ	mţu	mtu	mţu				and I left no-one with him.
3130	296	b	2	مَجِ	maji	maji	maji				
3131	296	b	3	يَمُ	yamu	yamu	yamu				
3133	296	c	2	سَبَا	sabā	saba	sabā				
3134	296	c	3	تِمَمُ	ṯimamu	timamu	ṯimamu				
3174	300	b	3	كُمُؤٗنٖشَ	kumuonesha	kumuonesha	kumuonesha		By saying: "This is good for you, take it.  Death comes to us all, everyone will die."		
3203	303	b	3	كْوَ	kwa	kwa	kwa				
3094	292	c	2	كَشُكَ	kashuka	kashuka	kashuka		Emend to \\Swa{kachoka}.		
3121	295	b	2	نَلِئِعَبِرِ	nalii'abiri	nalii'abiri	nalii'abiri		Emend to \\Swa{nali'abiri}.		
3138	297	a	2	كَلِمَ	kalima	kalima	kalima				
205	20	b	1	پٖٹٖ	peţe	pete	peţe				I want your ring.
3158	298	c	3	مَٹَٹُ	maţaţu	matatu	maţaţu				
3122	295	c	1	هَنْدَ	hanḏa	handa	hanḏa		Amu for \\Swa{naanza}.		I am beginning now to realise
3140	297	b	2	يَ	ya	ya	ya				
3141	297	b	3	فَتُمَ	faṯuma	fatuma	faṯuma				
3151	298	a	4	وٖٹُ	weţu	wetu	weţu		i.e. \\Swa{Mungu}.		
3143	297	c	2	نِنَ	nina	nina	nina				
3144	297	c	3	هَلِمَمَ	halimama	halimama	halimama				
216	21	b	1	نٖنٗ	neno	neno	neno				the utterance that he spoke [was this:]
3157	298	c	2	مَٹَمَ	maţama	matama	maţama		\\Swa{-piga tama} or \\Swa{-shika tama}, \\E{take a drink, fill your mouth with liquid}.		
3146	297	d	2	يَتَكَ	yaṯaka	yataka	yaṯaka				
3147	297	d	3	كُلِيَ	kuliya	kuliya	kuliya				
3160	298	d	2	تَٹُوَ	ṯaţuwa	tatuwa	ṯaţuwa		Emend to \\Swa{tatwaa}.		
3173	300	b	2	عَظِ	'aẓi	'adhi	'aẓi				
218	21	c	1	ٰأَنَيٗ	äanayo	aanayo	äanayo				Abu Bakr has it --
221	21	d	1	تهكْوٖنْدَ	ṯʿkwenḏa	tkwenda	ṯʿkwenḏa				I'll go and fetch it.
3149	298	a	2	كْوَ	kwa	kwa	kwa				
3150	298	a	3	بْوَنَ	bwana	bwana	bwana				
223	22	a	1	پٖٹٖ	peţe	pete	peţe				[But Fatima said:] "Your ring is for [your] finger --
3162	299	a	2	أَسِپٗيَتَكَ	asipoyaṯaka	asipoyataka	asipoyaṯaka				
3199	303	a	1	عَطِكَ	'aṭika	'atika	'aṭika				Atiya said:
235	23	a	1	هُنُ	hunu	hunu	hunu				"This is the second month [that you have not worn it] --
3164	299	b	2	كَيَپٖكَ	kayapeka	kayapeka	kayapeka				
3183	301	b	2	مْوَنَوٖ	mwanawe	mwanawe	mwanawe				
3184	301	b	3	جَبَرِزٖ	jabarize	jabarize	jabarize				
241	23	b	2	سِكُتَأَمَلِ	sikuṯaamali	sikutaamali	sikuṯaamali				
3166	299	c	2	نَ	na	na	na				
3167	299	c	3	عَطِكَ	'aṭika	'atika	'aṭika				
3205	303	c	1	مْوَنَنْڠُ	mwanangu	mwanangu	mwanangu				My son is [back] at home
3176	300	c	2	أَلِپٗيَشُشَ	alipoyashusha	alipoyashusha	alipoyashusha				
3169	299	d	2	كَمْپٗكٖيَ	kampokeya	kampokeya	kampokeya				
3178	300	d	2	أَكَمُؤٗمْبٖيَ	akamuombeya	akamuombeya	akamuombeya				
3191	302	a	2	كُكِپَمْبَؤُكَ	kukipambauka	kukipambauka	kukipambauka				
3180	301	a	2	هَپٗ	hapo	hapo	hapo				
3181	301	a	3	أَمُؤُزٖ	amuuze	amuuze	amuuze				
3186	301	c	2	عَلِيْ	'alii	'alii	'alii				
3187	301	c	3	أَمْوٖلٖزٖ	amweleze	amweleze	amweleze				
3195	302	c	2	عَطِكَ	'aṭika	'atika	'aṭika				
3189	301	d	2	أَكِلِيَ	akiliya	akiliya	akiliya				
3193	302	b	2	أَكَئِنُكَ	akainuka	akainuka	akainuka				
3197	302	d	2	وٗتٖ	woṯe	wote	woṯe				
3198	302	d	3	پَمٗيَ	pamoya	pamoya	pamoya				
3200	303	a	2	أَكَبَئِنِ	akabaini	akabaini	akabaini				
3204	303	b	4	خٖرِنِ	kherini	herini	kherini				
3206	303	c	2	أُكٗ	uko	uko	uko				
3207	303	c	3	مُئِنِ	muini	muini	muini				
3209	303	d	2	سِكُمُوَتِيَ	sikumuwaṯiya	sikumuwatiya	sikumuwaṯiya				
3227	305	b	3	كَبَئِنِ	kabaini	kabaini	kabaini		He does not want Atiya to hear.		
3238	306	c	2	وَٹُ	waţu	watu	waţu				
3239	306	c	3	هُتَمْكَ	huṯamka	hutamka	huṯamka				
3211	304	a	2	فَتُمَ	faṯuma	fatuma	faṯuma				
3212	304	a	3	أَتَمْكَ	aṯamka	atamka	aṯamka				
3256	307	d	4	مَمٗيَ	mamoya	mamoya	mamoya		Emend to \\Swa{mmoya}.		
3214	304	b	2	مُمٖ	mume	mume	mume				
3215	304	b	3	وَكٖ	wake	wake	wake				
3254	307	d	2	قَاسِمُ	qāsimu	qasimu	qāsimu		Qasim was Fatima's brother, and died in infancy.  The Prophet had 7 children (3 boys and 4 girls), but they all pre-deceased him except Fatima.		
3269	309	a	2	عَلِيْ	'alii	'alii	'alii				
3248	307	b	3	مْوَنڠُ	mwangu	mwangu	mwangu		Fatima, in contrast to her behaviour at the beginning of the ballad, has learnt to be magnanimous.		
3217	304	c	2	نٖنْدَ	nenḏa	nenda	nenḏa				
3218	304	c	3	كَمْپٖكٖ	kampeke	kampeke	kampeke				
3241	306	d	2	هَيٗ	hayo	hayo	hayo				
3242	306	d	3	كُنَمْبِيَ	kunambiya	kunambiya	kunambiya				
3262	308	b	3	عَطِكَ	'aṭika	'atika	'aṭika		Compare 281b and 298b.		
3220	304	d	2	پْوٖكٖ	pweke	pweke	pweke				
3221	304	d	3	عَطِيَ	'aṭiya	'atiya	'aṭiya				
3234	306	a	3	كِمْيٖكَ	kimyeka	kimyeka	kimyeka				
3223	305	a	2	كَنْڠِيَ	kangiya	kangiya	kangiya				
3224	305	a	3	نْدَنِ	nḏani	ndani	nḏani				
3252	307	c	4	نْدُيَنْڠُ	nḏuyangu	nduyangu	nḏuyangu				
3258	308	a	2	عَلِيْ	'alii	'alii	'alii				
3259	308	a	3	كَتٗكَ	kaṯoka	katoka	kaṯoka				
3226	305	b	2	مْكٗنٗ	mkono	mkono	mkono				
3244	307	a	2	شَهِدِ	shahiḏi	shahidi	shahiḏi				
3229	305	c	2	كِٹِنِ	kiţini	kitini	kiţini				
3245	307	a	3	مْنْڠُ	mngu	mngu	mngu				
3231	305	d	2	أَكَمْوٖنْدٖيَ	akamwenḏeya	akamwendeya	akamwenḏeya				
3233	306	a	2	چٖنْدَ	chenḏa	chenda	chenḏa				
3236	306	b	2	هُتٗؤُذِكَ	huṯoudhika	hutoudhika	huṯoudhika				
3270	309	a	3	حَيْدَرِ	ḥayḏari	haydari	ḥayḏari				
3247	307	b	2	مٗيٗنِ	moyoni	moyoni	moyoni				
3261	308	b	2	نَ	na	na	na				
3250	307	c	2	نِ	ni	ni	ni				
3251	307	c	3	كَمَ	kama	kama	kama				
3284	310	c	2	كِجِتَهِدِ	kijiṯahiḏi	kijitahidi	kijiṯahiḏi				
3255	307	d	3	نِ	ni	ni	ni				
3264	308	c	2	أَكَمْپٖكَ	akampeka	akampeka	akampeka				
3272	309	b	2	أَظُهُرِ	aẓuhuri	adhuhuri	aẓuhuri				
3266	308	d	2	كْوَءٗ	kwao	kwao	kwao				
3267	308	d	3	أَكَنْڠِيَ	akangiya	akangiya	akangiya				
3277	309	d	2	أَكَرٖجٖيَ	akarejeya	akarejeya	akarejeya				
3274	309	c	2	نَ	na	na	na				
3275	309	c	3	زُبٖيْرِ	zubēri	zuberi	zubēri				
3282	310	b	2	أَلِپٗرَدِدِ	aliporaḏiḏi	aliporadidi	aliporaḏiḏi				
3279	310	a	2	هَپٗ	hapo	hapo	hapo				
3280	310	a	3	أَلِپٗرُدِ	aliporuḏi	aliporudi	aliporuḏi				
3288	311	a	2	نِمٖٹِيَ	nimeţiya	nimetiya	nimeţiya				
3289	311	a	3	تَمَ	ṯama	tama	ṯama				
3286	310	d	2	كِوَمْبِيَ	kiwambiya	kiwambiya	kiwambiya				
3291	311	b	2	زَنْڠُ	zangu	zangu	zangu				
3292	311	b	3	هُكٗمَ	hukoma	hukoma	hukoma				
3294	311	c	2	أَمْبَؤٗ	ambao	ambao	ambao				
3295	311	c	3	وَتَسٗمَ	waṯasoma	watasoma	waṯasoma				
3297	311	d	2	زٗتٖ	zoṯe	zote	zoṯe				
3210	304	a	1	نَ	na	na	na				And Fatima spoke
1	1	a	1	بِسْمِ	bismi	bismi	bismillahi				"In the name of God", my friends
3298	311	d	3	زِكَوٖلٖيَ	zikaweleya	zikaweleya	zikaweleya				
51	5	c	1	أَكٖنْدَ	akenḏa	akenda	akenda				when he went to his wife [Fatima],
25	3	b	1	كْوَلِ	kwali	kwali	kwali				and there was a person in a room,
60	6	b	1	يَلِ	yali	yali	yale				was unaware of these things
3300	312	a	2	زِيُوٖنِ	ziyuweni	ziyuweni	ziyuweni				
3327	315	a	2	كُكَرِرِ	kukariri	kukariri	kukariri				
1442	134	c	1	كْوَ	kwa	kwa	kwa				They watched me from one side,
3302	312	b	2	أَكَزِبَئِنِ	akazibaini	akazibaini	akazibaini				
55	5	d	1	مْكٗنٗ	mkono	mkono	mkono				he hid his hand from her.
1447	135	a	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far said:
3304	312	c	2	نَ	na	na	na				
3305	312	c	3	جِيٗنِ	jiyoni	jiyoni	jiyoni				
290	27	d	1	بَبَنْڠُ	babangu	babangu	babangu				I do not [want to] tell my father [about them]."
62	6	c	1	كَنٖنْدَ	kanenḏa	kanenda	kanenda				[until] someone in the know went
10	1	d	1	نْدِيٗ	nḏiyo	ndiyo	ndiyo				that that is what goes first.
3307	312	d	2	أُسٗپُنْڠُلِيَ	usopunguliya	usopunguliya	usopunguliya				
20	2	d	1	قِصَ	qiṣa	qisa	kisa				an account of what happened to me.
3329	315	b	2	سٗمَنِ	somani	somani	somani				
31	3	d	1	كْوَ	kwa	kwa	kwa				and I was gratified lawfully.
291	27	d	2	سِنٗمْوَمْبِيَ	sinomwambiya	sinomwambiya	sinomwambiya		\\Swa{anamwogopa sana} -- she is greatly in awe of him.		
3330	315	b	3	ضَمِيْرِ	ḍamı̄ri	dhamiri	ḍamı̄ri				
1445	134	d	1	وَءٗ	wao	wao	wao				looking at me.
3311	313	b	2	هَتٗسُمْبُكَ	haṯosumbuka	hatosumbuka	haṯosumbuka				
57	6	a	1	مْوَنَ	mwana	mwana	mwana		i.e. Fatima.		The daughter of the Prophet
3313	313	c	2	أَتَكَلٗتَمْكَ	aṯakaloṯamka	atakalotamka	aṯakaloṯamka				
65	6	d	1	خَبَرِ	khabari	habari	habari				and told her the news.
67	7	a	1	أَكٖنٖنْدَءٖ	akenenḏae	akenendae	akenendaye				The person who went was an old woman,
47	5	b	1	أُنَ	una	una	una				his heart was troubled --
298	28	d	1	أَكَنٖنْندَ	akanennḏa	akanennda	akanennḏa				and went to the Prophet.
69	7	b	1	فَاطِمَه	fāṭimah	fatimah	Fatima				and she said to Fatima:
3332	315	c	2	وَ	wa	wa	wa				
3317	314	a	2	كْوَ	kwa	kwa	kwa				
3318	314	a	3	وَهَابُ	wahābu	wahabu	wahābu				
3333	315	c	3	جَعْفَرِ	ja'fari	ja'fari	ja'fari				
303	29	b	1	أَلِ	ali	ali	ali				What was wrong with Fatima?
3320	314	b	2	جَوَبُ	jawabu	jawabu	jawabu				
71	7	c	1	شٖيْحٖ	shēḥe	shehe	shehe				"Sheikh Ali has got married --
307	29	c	1	أَلِكهَاٹَ	alikʿāţa	alikata	alikʿāţa				[Ali] interrupted him,
3322	314	c	2	مْٹُ	mţu	mtu	mţu				
316	30	c	2	زِسِزٗخٗوْفُ	zisizokhōfu	zisizohofu	zisizokhōfu		i.e. oaths that have no frightening consequences.		
74	7	d	1	خَبَرِ	khabari	habari	habari				have you heard the news?"
308	29	c	2	كَلِمَ	kalima	kalima	kalima		lit. "cut the words".		
3335	315	d	2	مَوْلَانَا	mawlānā	maulana	mawlānā				
3336	315	d	3	عَلِيَ	'aliya	'aliya	'aliya				
4	1	b	1	پَمْوٖ	pamwe	pamwe	pamwe				along with "the Compassionate"
22	3	a	1	نِلِ	nili	nili	nili				I was going along the road,
29	3	c	1	مٗيٗ	moyo	moyo	moyo				and my heart desired her,
76	8	a	1	أَكَفَنْيَ	akafanya	akafanya	akafanya				She tried to convince Fatima,
3303	312	c	1	أَصُبُحِ	aṣubuḥi	asubuhi	aṣubuḥi				morning and evening.
3312	313	c	1	نَ	na	na	na				and whatever he asks for
3314	313	d	1	مٗلَ	mola	mola	mola				the Lord will bring to him.
3316	314	a	1	أَؤٗمْبَلٗ	aombalo	aombalo	aombalo				Whatever he prays for from the Generous One,
3319	314	b	1	أَتَجِبُوَ	aṯajibuwa	atajibuwa	aṯajibuwa				he will be vouchsafed an answer,
1449	135	b	1	بُوْ	buu	buu	buu				Abu Bakr, do not worry --
1452	135	c	1	كِسِمَ	kisima	kisima	kisima				do not cover the well.
1456	136	a	1	سِنَ	sina	sina	sina				I have no fear [in] my heart
3299	312	a	1	بَيْتِزٖ	bayṯize	baytize	bayṯize				Learn [the poem's] verses,
3301	312	b	1	مْٹُ	mţu	mtu	mţu				so that a person may say them
3306	312	d	1	مٗيٗ	moyo	moyo	moyo		Emend to \\Swa{moya}.		not omitting one.
3308	313	a	1	كْوَنْدَ	kwanḏa	kwanda	kwanḏa				First, he will never be brought low,
3310	313	b	1	مْٹُيٖ	mţuye	mtuye	mţuye				that person, he will not be troubled,
24	3	a	3	نْدِيَنِ	nḏiyani	ndiyani	ndiani				
30	3	c	2	أُكَمْتَمَنِ	ukamṯamani	ukamtamani	ukamtamani				
32	3	d	2	حَلَالِ	ḥalāli	halali	halali				
38	4	b	2	زَيْدَنِ	zayḏani	zaydani	zaidani				
40	4	c	2	پٖٹٖ	peţe	pete	pete		This ring is an important factor in the rest of the story, because it had been given to Ali by his wife Fatima.		
41	4	c	3	چَنْدَنِ	chanḏani	chandani	chandani				
347	33	d	1	ٰإٖنٖنْدٖيْ	äenenḏee	aenendee	äenenḏee		Emend to \\Swa{endee}.		[that] he had just come to look in on her.
43	4	d	2	كُمْڤَلِيَ	kumvaliya	kumvaliya	kumvalia		Perhaps emend to \\Swa{kumwatiya}, i.e. I succeeded in leaving it with her.		
364	35	c	1	علِيْ	'lii	'lii	'lii				The news about Ali --
90	9	c	1	أَلِ	ali	ali	ali				He had a ring on his finger, 
33	3	d	3	كُرِضِيَ	kuriḍiya	kuridhiya	kuridhia		Emend to \\Swa{karidhiya}.  Ali did not want to sin by committing adultery with her, so he decides to marry in secret -- \\Swa{kuoa kwa siri}.  Among the Swahili it is possible to have a secret wife (\\Swa{mke wa siri}) if it is thought that the first wife or other people would object.  An \\Swa{mke wa siri} has all the rights of an ordinary wife, except that the marriage is not publicised.  This custom has certain similarities to one formerly widespread in the Scottish village of Ford (ref req), where the courtship, betrothal and even marriage of the couple were done secretly.  Even if it was known that a certain couple were courting, it was considered a breach of etiquette to mention this in public.		
27	3	b	3	مْٹُ	mţu	mtu	mtu		The woman's name is Atiya, but we are not told this until 274d.		
94	9	d	1	كَوَهِ	kawahi	kawahi	kawahi				and he took it off [to leave it] with her."
96	10	a	1	سِجُوِ	sijuwi	sijuwi	sijui				I don't know, said [Fatima], if that is true.
110	11	b	1	أَسِئِوٖزٖ	asiiweze	asiiweze	asiiweze		\\Swa{hakuweza kustahimili}.		she could not restrain herself.
123	12	d	1	مْبٖلٖ	mbele	mbele	mbele				in front of the Messenger, the Prophet.
100	10	b	1	مِمِ	mimi	mimi	mimi				I didn't pay him any heed.
127	13	a	1	كَفَسِرِ	kafasiri	kafasiri	kafasiri				He addressed [Ali] openly [saying:]
129	13	b	1	هَمْكُلِوَ	hamkuliwa	hamkuliwa	hamkuliwa				You are wanted at home.
105	10	d	1	يٖئٗ	yeo	yeo	yeo				today, I will ask him.
351	34	b	1	وَلِ	wali	wali	wali				Was there anything wrong, Fatima?
107	11	a	1	أَكَفَنْيَ	akafanya	akafanya	akafanya				But Fatima then acted immediately --
358	34	d	1	عَليْ	'alı̄	'ali	'alı̄				to fetch Ali.
367	35	d	1	يٖؤٗ	yeo	yeo	yeo				I heard it today.
371	36	b	1	نِ	ni	ni	ni				What sort of news is it
114	11	d	1	بَبَكٗ	babako	babako	babako				"I am summoning your father."
377	36	d	1	أُكَجَ	ukaja	ukaja	ukaja				and ended up sending for him?
399	39	b	1	أُتَكَپٗ	uṯakapo	utakapo	uṯakapo				if you want my blessing,
413	40	c	1	كِشَ	kisha	kisha	kisha				then she spoke [these] words,
418	41	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				She said: Father,
427	41	d	1	سِ	si	si	si				and I am not pleased [to have done it].
430	42	a	1	نَ	na	na	na				And the person who deceived me --
406	39	d	1	تُوَ	ṯuwa	tuwa	ṯuwa				you know, if you'll listen to it.
429	41	d	3	كُچٖنْدٖلٖيَ	kuchenḏeleya	kuchendeleya	kuchenḏeleya				
131	13	c	1	أَكِسِكِيَ	akisikiya	akisikiya	akisikiya				When the Trustworthy One heard this
78	8	b	1	فَاطِمَه	fāṭimah	fatimah	Fatima				but Fatima refused to believe her,
80	8	c	1	عَلَامَ	'alāma	'alama	alama				but [the old woman] gave her proof,
82	8	d	1	أُتُنْڠُ	uṯungu	utungu	utungu				and made her worried.
28	3	b	4	چُمْبَنِ	chumbani	chumbani	chumbani		Atiya probably went indoors to hide from Ali.  The custom is for  women to hide from men of their own status.  Therefore, if they hide when they see a man coming, the man will be pleased, because it is a compliment to him to be considered of noble status.  On the other hand, if the woman does not hide, the man may be angry, because he will think she is looking down on him. Thus, women will not hide from lascivious people, but only from those who aren't, because they are worthy of more respect.		
102	10	c	1	أَرُدِپٗ	aruḏipo	arudipo	arudipo				When he comes back from the Prophet's
112	11	c	1	حَسَنِ	ḥasani	hasani	Hasani				She sent Hasan, [saying:]
116	12	a	1	نَمْكُلِيَ	namkuliya	namkuliya	namkulia				"I am summoning him secretly, 
119	12	b	1	أَسِسِكِيٖ	asisikiye	asisikiye	asisikie				so that the Bearer of Good Tidings does not hear."
121	12	c	1	كٖنٖنْدَ	kenenḏa	kenenda	kenenda				[But Hasan] went and spoke [openly],
135	14	a	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza				The Hashimite asked [Ali]:
435	42	c	1	هَٹُچٖنْدٖلٖئِ	haţuchenḏelei	hatuchendelei	haţuchenḏelei				she did not want good fortune for us --
86	9	a	3	أَمِيْنِ	amı̄ni	amini	Amini		The Prophet was called \\Eit{al-Amin} from his teenage years onward, because he was reliable and even-handed to all.		
2530	239	b	3	أَنْشَارِ	anshāri	anshari	anshāri		\\Swa{ansari} are the people of Medina who gave sanctuary to the Prophet when he was forced to flee from Mecca in 622 CE.		
136	14	a	2	هَشِمِ	hashimi	hashimi	Hashimi		The Prophet belonged to the clan of Hashim in the tribe of Quraysh of the Hollow.		
137	14	b	1	يٖئٗ	yeo	yeo	yeo				What is the matter with Fatima today?
144	14	d	1	نَايٗ	nāyo	nayo	nayo				and that is not like her.
167	17	a	1	أُنَ	una	una	una				Do you have a headache,
170	17	b	1	أَمَ	ama	ama	ama				or have you a temperature?
174	17	c	1	أَكَمْجِبُ	akamjibu	akamjibu	akamjibu				And Fatima replied:
176	17	d	1	كْوَ	kwa	kwa	kwa				I am not crying because I am ill.
179	18	a	1	مِمِ	mimi	mimi	mimi				[Ali said:] When I left here
182	18	b	1	وٖوٖ	wewe	wewe	wewe				you were talking and laughing.
189	18	d	1	أُسِخٗفُ	usikhofu	usihofu	usihofu				don't be afraid to ask me [for it].
452	44	b	1	نَ	na	na	na				and I will compose other [things],
158	16	a	1	هُرُمَ	huruma	huruma	huruma				Ali was seized with pity,
459	45	a	1	فَهَمُنِ	fahamuni	fahamuni	fahamuni		It seems that here we should envisage Ali explaining, after the events of the rest of the ballad, about the ring, and why he left it with Atiya.		[Ali said:] Pay attention, noble [listeners],
461	45	b	1	يٖؤٗ	yeo	yeo	yeo				so that today I may give you an explanation:
464	45	c	1	پٖٹٖ	peţe	pete	peţe				my distinctive ring --
2520	238	b	4	پْوٖكٖ	pweke	pweke	pweke		i.e. they are muttering to each other under their breath.  Sometimes someone will mutter to himself to get you to ask him what is wrong: \\Swa{una-ni, bwana?}, \\E{what's up, mate?}.  He can then talk about his problem: \\Swa{si hao, kina fulani ...}, \\E{it's nothing, it's just that so-and-so ...}.		
88	9	b	2	نْدِيٗ	nḏiyo	ndiyo	ndiyo				
92	9	c	3	پٖٹٖ	peţe	pete	pete				
166	16	d	2	نَمْبِيَ	nambiya	nambiya	nambiya				
468	45	d	1	حُجَ	ḥuja	huja	ḥuja				the reason I left it behind.
480	47	a	1	بَسِ	basi	basi	basi				Indeed, what I had foreseen
501	49	a	1	وَٹُ	waţu	watu	waţu				People were talking about it,
506	49	c	1	هَتَ	haṯa	hata	haṯa				not a single [person] secretly
512	50	a	1	أَلِپٗپٖنْدَ	alipopenḏa	alipopenda	alipopenḏa		This translation (\\Swa{hata mmoya}, \\E{not a single [person]}) deals with the Y text, but for the R text we should translate \\Swa{hata mmoya}, \\E{until a single [person]} to deal with the fact that it adds stanzas here describing someone (actually the Devil) coming along to trick Ali.		When it pleased Providence
519	50	d	1	أَكٖنْدَ	akenḏa	akenda	akenḏa				and [Ali] went to have a look at it.
2540	240	b	2	أَلِلٗفَسِرِ	alilofasiri	alilofasiri	alilofasiri		\\Swa{Ali anamlaumu mtoto wake}, \\E{Ali is criticising his son [Hasan]}.  i.e. Ali is telling them they should not be upset by gossip.		
2548	241	a	3	مْڠٖنِ	mgeni	mgeni	mgeni		Ali is asking Hasan: \\Swa{kwa nini umekasirika?}, \\E{why are you angry?}.  You must know that I have a duty of care to Ja'far -- I cannot disown him and leave him to wander around the town by himself.		
2555	241	d	2	هَتٗتٖمْبٖيَ	haṯoṯembeya	hatotembeya	haṯoṯembeya		This is a rhetorical question: Ali is saying that trying to keep Ja'far's existence secret by locking him in the house would be just as bad as disowning him and leaving him to wander about like a beggar.		
185	18	c	1	نَ	na	na	na				And if there's anything you want,
2556	242	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima spoke [to the boys]:
89	9	b	3	يَمْكِنِ	yamkini	yamkini	yamkini		\\Swa{tamkini = hakika, kweli}	+	
502	49	a	2	وَلِكِنُكُرِ	walikinukuri	walikinukuri	walikinukuri		Emend to \\Swa{walikidhukuri}.		
91	9	c	2	نَ	na	na	na				
98	10	a	3	نِ	ni	ni	ni				
99	10	a	4	كوٖلِ	kweli	kweli	kweli				
103	10	c	2	كْوَ	kwa	kwa	kwa				
93	9	c	4	چَنْدَنِ	chanḏani	chandani	chandani				
97	10	a	2	كهَنٖنَ	kʿanena	kanena	kanena				
101	10	b	2	سِمتَأَمَلِ	simṯaamali	simtaamali	simtaamali				
104	10	c	3	رَسُوْلِ	rasūli	rasuli	Rasuli				
132	13	c	2	أَمِيْنِ	amı̄ni	amini	Amini				
133	13	d	1	عَجَبُ	'ajabu	'ajabu	ajabu				he was filled with wonder.
134	13	d	2	إِكَمْنْڠِيَ	ikamngiya	ikamngiya	ikamngia				
141	14	c	1	هُكْوَمْكُوَ	hukwamkuwa	hukwamkuwa	hukwamkua				She wants you in a hurry, 
147	15	a	1	عَلِى	'alii	'alii	Ali				Ali got up
149	15	b	1	أَكَنٖنْدَ	akanenḏa	akanenda	akanenda				and went in haste
152	15	c	1	هَتَ	haṯa	hata	hata				until he arrived home.
155	15	d	1	مْوَنَ	mwana	mwana	Mwana				Lady Fatima was crying.
160	16	b	1	عَلِيْ	'alii	'alii	Ali				and became perplexed.
108	11	a	2	هِمَ	hima	hima	hima				
109	11	a	3	هِمَ	hima	hima	hima				
117	12	a	2	كْوَ	kwa	kwa	kwa				
118	12	a	3	سِرِ	siri	siri	siri				
124	12	d	2	زَ	za	za	za				
130	13	b	2	نْيُمْبَنِ	nyumbani	nyumbani	nyumbani				
138	14	b	2	أُ	u	u	u				
139	14	b	3	نَنِ	nani	nani	nani				
142	14	c	2	كْوَ	kwa	kwa	kwa				
143	14	c	3	مِمِ	mimi	mimi	mimi				
145	14	d	2	سِيٗ	siyo	siyo	siyo				
148	15	a	2	أَكَئِنُكَ	akainuka	akainuka	akainuka				
150	15	b	2	كْوَ	kwa	kwa	kwa				
151	15	b	3	هَرَكَ	haraka	haraka	haraka				
153	15	c	2	نْيُمْبَنِ	nyumbani	nyumbani	nyumbani				
154	15	c	3	كِفِكَ	kifika	kifika	kifika				
159	16	a	2	زِكَمْشِكَ	zikamshika	zikamshika	zikamshika				
164	16	c	3	پُلِكَ	pulika	pulika	pulika				
169	17	a	3	هُكُؤُمَ	hukuuma	hukuuma	hukuuma				
171	17	b	2	أُمٖشِكْوَ	umeshikwa	umeshikwa	umeshikwa				
180	18	a	2	هَپَ	hapa	hapa	hapa				
183	18	b	2	هُنٖنَ	hunena	hunena	hunena				
186	18	c	2	كَمَ	kama	kama	kama				
106	10	d	2	تهَمْزِنْڠَتِيَ	ṯʿamzingaṯiya	tamzingatiya	tamzingatia				
111	11	b	2	فَاطِمَه	fāṭimah	fatimah	Fatima				
113	11	c	2	أَكَمْٹُمَ	akamţuma	akamtuma	akamtuma				
165	16	d	1	أُلِلٗنَلٗ	ulilonalo	ulilonalo	ulilonalo				tell me what's wrong with you.
120	12	b	2	بَشِيْرِ	bashı̄ri	bashiri	Bashiri				
125	12	d	3	ٹُمْوَ	ţumwa	tumwa	Tumwa				
172	17	b	3	نِ	ni	ni	ni		Emend to \\Swa{na}.		
128	13	a	2	مُعَيَنِ	mu'ayani	mu'ayani	muayani				
140	14	b	4	فَاطِمَه	fāṭimah	fatimah	Fatima				
146	14	d	3	مَزٗوٖيَ	mazoweya	mazoweya	mazoea				
156	15	d	2	فَاطِمَ	fāṭima	fatima	Fatima				
157	15	d	3	هُلِيَ	huliya	huliya	hulia				
163	16	c	2	فَتُمَ	faṯuma	fatuma	Fatima				
168	17	a	2	كِتْوَ	kiṯwa	kitwa	kitwa				
173	17	b	4	حُمَ	ḥuma	huma	huma				
175	17	c	2	فَتُمَ	faṯuma	fatuma	Fatima				
177	17	d	2	مَرَضِ	maraḍi	maradhi	maradhi				
178	17	d	3	سِكُلِيَ	sikuliya	sikuliya	sikulia				
181	18	a	3	نَلِتٗكَ	naliṯoka	nalitoka	nalitoka				
240	23	b	1	مِمِ	mimi	mimi	mimi				I did not realise this before.
187	18	c	3	كهِٹُ	kʿiţu	kitu	kitu				
188	18	c	4	وتَكَ	ūṯaka	utaka	utaka				
190	18	d	2	كُنَمْبِيَ	kunambiya	kunambiya	kunambia				
252	24	b	1	نِ	ni	ni	ni				you are my only wife.
257	24	c	1	نِ	ni	ni	ni				Who is this enemy of mine
261	24	d	1	هُيٗ	huyo	huyo	huyo				who has told you this lie about me?"
268	25	c	1	پٖٹٖ	peţe	pete	peţe				Who have you given the ring to?
273	26	a	1	عَلِى	'alii	'alii	'alii				Ali declared:
277	26	c	1	يَلِنْڠِيَ	yalingiya	yalingiya	yalingiya				It fell into a well --
115	11	d	2	نَمْكُلِيَ	namkuliya	namkuliya	namkulia		N. \\Swa{-amkulia} = S. \\Swa{-itia}		
242	23	c	1	أُنَ	una	una	una				You have a second wife --
126	12	d	4	نَبِيَ	nabiya	nabiya	Nabia		In other words, the child forgot to give the message privately (\\Swa{hakusema kwa siri}).  In any case, for a man to be called away from the \\Swa{baraza} by a message from home is very worrying, since it implies some emergency for which his presence is required.		
161	16	b	2	كَشَوِشِكَ	kashawishika	kashawishika	kashawishika		\\Swa{-shawishika} = \\Swa{-fanya wasiwasi, -fanya tashwish}		
184	18	b	3	هُتٖكَ	huṯeka	huteka	huteka		This is a common expression meaning "you were in a good mood".		
275	26	b	1	تهَكْوَمْبِيَ	ṯʿakwambiya	takwambiya	ṯʿakwambiya				I will tell you what really happened.
122	12	c	2	أَكَفَسِرِ	akafasiri	akafasiri	akafasiri		\\Swa{-fasiri} lit. means "explain".		
162	16	c	1	كَمْبَ	kamba	kamba	kamba				He said: Fatima, listen -- 
247	23	d	1	هَبَرِ	habari	habari	habari				I have heard the news.
249	24	a	1	نَأَپَ	naapa	naapa	naapa				[Ali said:] I swear to God, dearest --
271	25	d	1	أُنِپَپٗ	unipapo	unipapo	unipapo				[Only] when you give [it to me] will I be satisfied.
279	26	d	1	تهَكْوٖنْدَ	ṯʿakwenḏa	takwenda	ṯʿakwenḏa				I'l go and get it out for you.
581	56	d	1	هَلِدِرِكِ	haliḏiriki	halidiriki	haliḏiriki				he will not find [the plank] when he gets here.
583	57	a	1	چَمْبَ	chamba	chamba	chamba		\\Swa{chamba}, \\E{if}.		If he is challenging me, 
604	59	a	1	وٖوٖ	wewe	wewe	wewe				Why are you grabbing hold of me?
630	61	b	3	مْبِلِ	mbili	mbili	mbili		For a small boy to be able to hold his own against Ali, the champion warrior, is no mean feat.		
645	62	d	2	أُكَنِؤٗنٖيَ	ukanioneya	ukanioneya	ukanioneya		i.e. why are you picking on an orphan?		
732	71	a	1	وَتٗوٖ	waṯowe	watowe	waṯowe				Bring your goats out of the forest, [said Ali],
736	71	b	2	أُوَپٖكٖ	uwapeke	uwapeke	uwapeke				and herd them along the road
625	61	a	1	كَمْڠُٹِيَ	kamguţiya	kamgutiya	kamguţiya				He pulled away from [Ali]
779	75	a	1	كُمْرُدِشِيَ	kumruḏishiya	kumrudishiya	kumruḏishiya		This seems out of place, since Ja'far has not actually said anything for Ali to reply to.  Perhaps we should emend by reading 122, 124, 123, 125.		[Ali] replied to [Ja'far]:
843	80	d	1	هَپٗ	hapo	hapo	hapo				with these [things] you have told me.
294	28	b	1	فَتُمَ	faṯuma	fatuma	faṯuma				that Fatima was angry.
296	28	c	1	أَلِئِنُكَ	aliinuka	aliinuka	aliinuka				He got up and left,
301	29	a	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza				The Hashimite asked him:
309	29	d	1	مْٹُمٖ	mţume	mtume	mţume				and told the Prophet:
311	30	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				He told the Noble One:
317	30	d	1	زِنْڠِ	zingi	zingi	zingi				I have told her many of them.
322	31	b	1	نَمِ	nami	nami	nami				I've really done it now.
334	32	c	1	كَئِنُكَ	kainuka	kainuka	kainuka				Muhammad got up,
339	33	a	1	أَكٖنْدَ	akenḏa	akenda	akenḏa				He went [to the house] and sat down.
341	33	b	1	مٗيٗ	moyo	moyo	moyo				His heart was confused,
355	34	c	1	حَسَنِ	ḥasani	hasani	ḥasani				Hasan came [to us] in a hurry
360	35	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima did not hesitate,
362	35	b	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				she told the Bearer of Glad Tidings:
369	36	a	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza				The Trustworthy One asked her:
375	36	c	1	أُسِمْنْڠٗجٖ	usimngoje	usimngoje	usimngoje				that you couldn't wait for him at home,
381	37	b	1	كُمْسِتَحِ	kumsiṯaḥi	kumsitahi	kumsiṯaḥi				to show honour to the Hashimite,
383	37	c	1	يَلٗمْتٗكَ	yalomṯoka	yalomtoka	yalomṯoka				and words came tumbling out, 
385	37	d	1	بَبَكٖ	babake	babake	babake				and she explained [everything] to her father.
344	33	c	1	كَئِفَنْيَ	kaifanya	kaifanya	kaifanya				He pretended he knew nothing,
281	27	a	1	هَيَ	haya	haya	haya				[Fatima said:] Well, your ring -- say
433	42	b	1	سَسَ	sasa	sasa	sasa				now I have realised
437	42	d	1	هَوٖزِ	hawezi	hawezi	hawezi				she couldn't look at us [without envy].
447	43	d	1	نِيَه	niyah	niyah	niyah				planting evil intentions in me.
450	44	a	1	هَيَ	haya	haya	haya				I have completed these [things],
455	44	c	1	جَمِيْعِ	jamī'i	jami'i	jamī'i				so that all of you may understand them -- 
470	46	a	1	نَلِئِوَتَ	naliiwaṯa	naliiwata	naliiwaṯa				I left it for the purpose,
472	46	b	1	سِ	si	si	si				not of increasing [her] love for me,
475	46	c	1	مَرَ	mara	mara	mara				[but lest] once the child was born,
478	46	d	1	أَصِلِ	aṣili	asili	aṣili				its heritage should be lost.
482	47	b	1	نْدِيٗ	nḏiyo	ndiyo	nḏiyo				was exactly what happened.
516	50	c	1	كُنَ	kuna	kuna	kuna				There was a well in the forest,
521	51	a	1	نَاءٖ	nae	nae	nae				And he went from suspicion,
525	51	b	1	مَاءِ	mai	mai	mai				not wanting water.
527	51	c	1	نَاءٖ	nae	nae	nae				 [Although] he had [earlier] covered it,
292	28	a	1	علِيْ	'lii	'lii	'lii				Ali was worried
531	52	a	1	هَپٗ	hapo	hapo	hapo				Then Ali the Lion-like
285	27	b	1	مَهَلٖ	mahale	mahale	mahale				where you have put it,
287	27	c	1	كَمَ	kama	kama	kama				for these words --
313	30	b	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima is annoyed with me --
319	31	a	1	أَلِكِلِيَ	alikiliya	alikiliya	alikiliya				[Ali] was weeping: Oh Prophet!
329	32	a	1	تٖنَ	ṯena	tena	ṯena				So you go, my Lord,
332	32	b	1	أُمُؤٗنْيٖ	umuonye	umuonye	umuonye				and tell her to calm down.
336	32	d	1	هَپٗ	hapo	hapo	hapo				and then set out on the way [to Ali's house].
325	31	c	1	كُمْوَبِيَ	kumwabiya	kumwabiya	kumwabiya				I haven't the nerve to tell her.
327	31	d	1	حٗوْفُ	ḥōfu	hofu	ḥōfu				I'm filled with fear.
546	53	c	1	سِنَ	sina	sina	sina				and doubtless I will catch
556	54	c	1	لِلٖ	lile	lile	lile				pushed off the plank [covering the well],
559	54	d	1	مْبَلِ	mbali	mbali	mbali				and threw it far away.
561	55	a	1	مْبُزِ	mbuzi	mbuzi	mbuzi				His goats drank greedily
565	55	b	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				and Jaafar was there behind them.
568	55	c	1	كِشَ	kisha	kisha	kisha				Then he too came forward, 
571	55	d	1	عَلِيْ	'alii	'alii	'alii				and Ali watched him.
587	57	b	1	أَيَپٗ	ayapo	ayapo	ayapo				when he gets here he will submit to me.
589	57	c	1	هِلِ	hili	hili	hili				I'm at the end of my tether --
594	58	a	1	مَاءِ	mai	mai	mai				[But] while he was drawing water,
598	58	b	2	عَلِى	'alii	'alii	'alii				Ali came out [of hiding]
600	58	c	1	مْكٗنٗ	mkono	mkono	mkono				and grabbed him by the arm.
606	59	b	1	مِمِ	mimi	mimi	mimi				I'm not in the least afraid of you.
613	59	d	1	نَيُوَ	nayuwa	nayuwa	nayuwa				I would know how to read [the Qur'an] against you.
622	60	d	1	نَ	na	na	na				I will say even more to you."
641	62	c	1	بَبَ	baba	baba	baba				[My] father is no longer in this world,
648	63	b	1	وٖوٖ	wewe	wewe	wewe				Who is your father?
656	63	d	1	عَلِى	'alii	'alii	'alii				Ali looked at it.
658	64	a	1	پٖٹٖ	peţe	pete	peţe				Once he saw the ring
661	64	b	1	كِسٗمَ	kisoma	kisoma	kisoma				and read his name [on it],
665	64	c	1	أَرُدِ	aruḏi	arudi	aruḏi				he stepped back greatly saddened
667	64	d	1	نَ	na	na	na				and was filled with remorse.
674	65	c	1	إِنَ	ina	ina	ina				As for the name you are to be called,
677	65	d	1	بَبَكٗ	babako	babako	babako				your father is [me], Ali.
684	66	c	1	أَكِشَ	akisha	akisha	akisha				When he finished speaking,
686	66	d	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Jaafar spoke to him:
696	67	d	1	أُلِؤٗنَ	uliona	uliona	uliona				and you thought I would run away.
698	68	a	1	كْوَنْزَ	kwanza	kwanza	kwanza				First, give me back my ring,
704	68	c	1	هُنْڠَلِوٖزٖ	hungaliweze	hungaliweze	hungaliweze				you would not have been able 
724	70	c	1	وَ	wa	wa	wa				[son] of Ali the Lion-like
746	72	b	1	نِنَ	nina	nina	nina				I have my teacher
750	72	c	1	نِمُوَڠٖ	nimuwage	nimuwage	nimuwage				whom I must take leave of, and my mother.
636	62	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				He said to him: Explain to me
652	63	c	1	كَمْبَ	kamba	kamba	kamba				[Jaafar] said: He is the ring on my finger.
634	61	d	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far, and addressed him.
577	56	c	1	كْوَ	kwa	kwa	kwa				if he comes back today,
702	68	b	1	إِنُكَإٖوٖ	inukaewe	inukaewe	inukaewe				and get up, father --
592	57	d	1	نْڠٗٹٖ	ngoţe	ngote	ngoţe				I'll teach him a lesson."
534	52	b	1	كِوَزَ	kiwaza	kiwaza	kiwaza				pondered and considered:
537	52	c	1	وَمٖكُيَ	wamekuya	wamekuya	wamekuya				Unbelievers have come here
539	52	d	1	يٖؤٗ	yeo	yeo	yeo				to uncover it today in spite of me.
541	53	a	1	كِشَ	kisha	kisha	kisha				Then he said:
543	53	b	1	نَ	na	na	na				I will cover it again today,
549	53	d	1	مْٹُيٖ	mţuye	mtuye	mţuye				that person who is behaving like that.
551	54	a	1	أَچٗنْدٗكَ	achonḏoka	achondoka	achonḏoka				When he had gone off [to hide], in the meantime
609	59	c	1	هَتَ	haṯa	hata	haṯa				Even if you were a jinn
670	65	a	1	كِشَ	kisha	kisha	kisha				Then he told [Ja'far]:
673	65	b	1	سِنْڠَلِكُپِجِئٖ	singalikupijie	singalikupijie	singalikupijie				I should not have attacked you.
682	66	b	1	كَمَ	kama	kama	kama				if I had not recognised you.
688	67	a	1	وٖوٖ	wewe	wewe	wewe				When you see someone,
691	67	b	1	هُمُؤُزِ	humuuzi	humuuzi	humuuzi				you do not even ask his name.
694	67	c	1	هُجِؤٗنَ	hujiona	hujiona	hujiona				You see yourself as a warrior,
721	70	b	1	مِمِ	mimi	mimi	mimi				I am called Ja'far,
727	70	d	1	نَ	na	na	na				and I am nine years old.
758	73	b	1	نَ	na	na	na				I will get up early, 
761	73	c	1	سَاءَ	saa	saa	saa				and when the first hour comes
772	74	c	1	يَ	ya	ya	ya				the way to Mecca is the one on the right --
785	75	c	1	مْوَلِمُ	mwalimu	mwalimu	mwalimu				the teacher and your mother
788	75	d	1	نَ	na	na	na				and your relatives -- give them my best wishes."
797	76	c	1	نَمِ	nami	nami	nami				And from me to your relatives there,
802	77	a	1	سَلَامُ	salāmu	salamu	salāmu				Greetings to Abu Bakr,
808	77	c	1	سُزَاءٗ	suzao	suzao	suzao				both close and extended family --
816	78	b	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				said goodbye to him,
819	78	c	1	نَ	na	na	na				and Ali the Lion-like
827	79	b	1	كٖنْدَ	kenḏa	kenda	kenḏa				he went to his teacher's house,
831	79	c	1	كَمْپَ	kampa	kampa	kampa				and gave him his news --
836	80	a	1	أَكِشَ	akisha	akisha	akisha				When he had finished explaining [everything],
871	83	a	1	نَ	na	na	na				Yet I don't intend to oppose you,
838	80	b	1	أَكَلِيَ	akaliya	akaliya	akaliya				the teacher wept,
868	82	d	1	نْدِيٖ	nḏiye	ndiye	nḏiye				always in the front line?"
874	83	b	1	كْوَنِ	kwani	kwani	kwani				because I know it is proper.
897	85	c	1	أُسِكِزٖ	usikize	usikize	usikize				Pay heed to the things
901	86	a	1	َكِشَ	akisha	akisha	akisha				Once [the teacher] had finished these words,
913	87	a	1	كِنْڠِيَ	kingiya	kingiya	kingiya				When he went in he put his stick away
920	87	c	1	مَمَكٖ	mamake	mamake	mamake				His mother was surprised, 
929	88	c	1	هُنْڠِيَ	hungiya	hungiya	hungiya				entering as if secretly,
973	92	b	1	أَكَمْپِجَ	akampija	akampija	akampija				and hit Nasir:
791	76	a	1	نَاءٖ	nae	nae	nae				And [Ja'far], the noble child,
971	92	a	1	كَئِنُكَ	kainuka	kainuka	kainuka				Ja'far got up
977	92	d	1	يٖؤٗ	yeo	yeo	yeo				today, I'll see to it.
753	72	d	1	كِشَ	kisha	kisha	kisha				Then I will come tomorrow.
756	73	a	1	كٖشٗ	kesho	kesho	kesho				When tomorrow has dawned,
764	73	d	1	بَبَ	baba	baba	baba				I will arrive with you, father.
766	74	a	1	أَكَمْطِبُ	akamṭibu	akamtibu	akamṭibu				[Ali] gave [Ja'far] some advice:
878	83	c	1	نِ	ni	ni	ni				you have my consent a hundred thousand times,
881	83	d	1	نَ	na	na	na				and I give you [even] more [than that].
884	84	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				The teacher said to him:
886	84	b	1	مَمَكٗ	mamako	mamako	mamako				Is your mother aware of these [things]?
888	84	c	1	كَمْجِبِشَ	kamjibisha	kamjibisha	kamjibisha				And [Ja'far] answered him:
890	84	d	1	كْوَكٖ	kwake	kwake	kwake				"I have not yet gone home.
899	85	d	1	نَاءٖ	nae	nae	nae				that she will tell you.
904	86	b	1	هَپٗ	hapo	hapo	hapo				[Ja'far] then continued on his way.
907	86	c	1	مٗيٗ	moyo	moyo	moyo				His heart was heavy
910	86	d	1	كْوَ	kwa	kwa	kwa				as he went in to his mother's [house].
892	85	a	1	كَْوَمْبِيَ	kawambiya	kawambiya	kawambiya				And [the teacher] told him: Off you go,
895	85	b	1	أُكَمُؤُلِزَ	ukamuuliza	ukamuuliza	ukamuuliza				and ask your mother.
916	87	b	1	كّوَ	kkwa	kkwa	kkwa				quietly and carefully.
979	93	a	1	هَپٗ	hapo	hapo	hapo				But his mother would have none of that,
990	94	a	1	نَاصِرِ	nāṣiri	nasiri	nāṣiri				[To Jaafar she said:] "Nasir is your brother,
994	94	b	1	مْوَنَنْڠُ	mwanangu	mwanangu	mwanangu				my son, your younger brother --
1004	95	b	1	أَكِؤُلِزْوَ	akiulizwa	akiulizwa	akiulizwa				he did not answer when spoken to.
1006	95	c	1	يَمٖكُپَٹَ	yamekupaţa	yamekupata	yamekupaţa				[Nasir said:] "It was right on the mark, my friend,
1008	95	d	1	هَيَ	haya	haya	haya				what I said to you."
1010	96	a	1	هَپٗ	hapo	hapo	hapo				Then his mother retorted:
1028	97	c	1	أُسٗ	uso	uso	uso				Your face is flushed,
1058	100	b	2	هُنَمْبِيَ	hunambiya	hunambiya	hunambiya				
1064	100	d	1	أَلِفَرِكِ	alifariki	alifariki	alifariki				he passed away from this world."
1083	102	d	1	أُكَمُؤٗنَ	ukamuona	ukamuona	ukamuona				that you saw Ali?"
1085	103	a	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Jaafar said:
1109	105	b	1	نْيٖيْ	nyee	nyee	nyee				the hair on his head
1123	106	b	1	أُنَ	una	una	una				he has a hole [leading to the] Underworld (?).
1138	107	b	1	كِشَ	kisha	kisha	kisha				and further, he is a great warrior.
1142	107	c	1	نَ	na	na	na				If you want a likeness of him,
1150	108	b	1	نِ	ni	ni	ni				are indeed exactly correct.
1157	108	d	1	هَتَ	haṯa	hata	haṯa				that you came to recognise him."
1159	109	a	1	تَكُپَ	ṯakupa	takupa	ṯakupa				[Jaafar said:] "I will give you [the whole story] from the beginning.
1176	110	b	1	نِمٖتَنْڠَ	nimeṯanga	nimetanga	nimeṯanga				I wandered around in the hinterland,
1185	111	a	1	هٖنْدَ	henḏa	henda	henḏa				As I went along, pondering in my heart
1087	103	b	1	ٹُمٖؤٗنَنَ	ţumeonana	tumeonana	ţumeonana				We met in the forest --
1081	102	c	1	وٖنْدٖلٖپِ	wenḏelepi	wendelepi	wenḏelepi				where did you go among people,
1113	105	c	1	مَكُمٖيَ	makumeya	makumeya	makumeya				does not cover his bald patch,
1166	109	c	1	كِتَنْڠَ	kiṯanga	kitanga	kiṯanga				and wandering around [looking for] water was difficult,
1188	111	b	1	نٖنٖنْدٖ	nenenḏe	nenende	nenenḏe		Emend to \\Swa{ninende}.		which direction I should take,
982	93	b	1	كَمْشِكَ	kamshika	kamshika	kamshika				and grabbed Ja'far [and said to Nasir:]
984	93	c	1	إِوَپٗ	iwapo	iwapo	iwapo				If I were you, Nasir, 
988	93	d	1	هَپٗ	hapo	hapo	hapo				I would not have run away just now.
997	94	c	1	كِشَ	kisha	kisha	kisha				you can depend on him [when you need help],
1089	103	c	1	صِفَ	ṣifa	sifa	ṣifa				a clear description,
1092	103	d	1	أُكِتَكَ	ukiṯaka	ukitaka	ukiṯaka				if you want it, I will tell you.
1094	104	a	1	نِسِكِزَ	nisikiza	nisikiza	nisikiza				Listen to me, let me speak --
1096	104	b	1	كِوَ	kiwa	kiwa	kiwa				if it is not him, correct me --
1099	104	c	1	كِمٗ	kimo	kimo	kimo				his height is not much taller
1105	105	a	1	نَ	na	na	na				And let me tell you the second thing:
1115	105	d	1	نَ	na	na	na				and if that is not so, tell me.
1119	106	a	1	نَ	na	na	na				And know the third thing:
1127	106	c	1	صِفَ	ṣifa	sifa	ṣifa				His description is complete --
1133	107	a	1	نِ	ni	ni	ni				He is courteous of speech,
1145	107	d	1	هُنُ	hunu	hunu	hunu				I have given you this one.
1147	108	a	1	هَيٗ	hayo	hayo	hayo				[His mother said:] These things you have told me
1154	108	c	1	نِپَ	nipa	nipa	nipa				Tell me how it was
1170	109	d	1	نِكَتَكَسَ	nikaṯakasa	nikatakasa	nikaṯakasa				so I travelled further afield.
1173	110	a	1	صَدِقِ	ṣaḏiqi	sadiqi	ṣaḏiqi				Believe my words:
1182	110	d	1	نِ	ni	ni	ni				[and I thought] I'd better come back.
1194	111	d	1	وَٹَٹُ	waţaţu	watatu	waţaţu				three of them, coming along the road.
1197	112	a	1	كَوَءٗنَ	kawaona	kawaona	kawaona				I saw them when they were far off,
1179	110	c	1	مَاءَ	maa	maa	maa				but there was no water anywhere,
1236	115	c	1	وَلَ	wala	wala	wala				nor is the time so late
1240	115	d	1	كَمَ	kama	kama	kama				that you will be delayed [if you stop here]."
1248	116	d	1	مْمٗيَ	mmoya	mmoya	mmoya				and one came up to me.
1250	117	a	1	أَكِجَ	akija	akija	akija				When he came over he spoke,
1262	118	b	1	وَلَ	wala	wala	wala				we are not relatives of yours.
1266	118	c	1	أُئٖٹَيٗ	ueţayo	uetayo	ueţayo				The words you have spoken,
1288	120	c	1	كِوَ	kiwa	kiwa	kiwa				if you are an unbeliever,
1323	123	d	1	كْوَ	kwa	kwa	kwa				as they all stared at me.
1334	124	c	1	نَوٖ	nawe	nawe	nawe				But you have not spoken your
1339	125	a	1	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				This gentleman spoke:
1353	126	b	1	نَمِ	nami	nami	nami				to speak my name too.
1359	126	d	1	وَ	wa	wa	wa				[son] of Lord Ali.
1362	127	a	1	وَنِؤُزٖ	waniuze	waniuze	waniuze				And they asked me politely,
1367	127	c	1	هَپٗ	hapo	hapo	hapo				Then, Mother, I answered them:
1375	128	b	1	نِمٖچٗكَ	nimechoka	nimechoka	nimechoka				I am tired and I still haven't seen any.
1377	128	c	1	مْبُزِ	mbuzi	mbuzi	mbuzi				The goats have eaten all the grass,
1387	129	c	1	مْبُزِ	mbuzi	mbuzi	mbuzi				My goats are thirsty --
1390	129	d	1	چَمْبَ	chamba	chamba	chamba				if you know of [a well], tell me."
1393	130	a	1	وَكَنِجِبُ	wakanijibu	wakanijibu	wakanijibu				They answered me with word
1409	131	b	1	مْفَنٗ	mfano	mfano	mfano				just like Zamzam's,
1412	131	c	1	لَكِنِ	lakini	lakini	lakini				but we, you understand,
1426	133	a	1	وَكَنِؤٗنْيَ	wakanionya	wakanionya	wakanionya				They showed me the way,
1428	133	b	1	هَپٗ	hapo	hapo	hapo				and then I followed the path.
1431	133	c	1	كْوَ	kwa	kwa	kwa				They went into the forest,
1436	134	a	1	هَتَ	haṯa	hata	haṯa				Until, when I came to the well,
1439	134	b	1	لِپٗ	lipo	lipo	lipo				there was a plank there that I pushed away.
1228	115	a	1	نَ	na	na	na				You should know that this [sun] is not good [for you] --
1372	128	a	1	نِمٖتَنْڠَ	nimeṯanga	nimetanga	nimeṯanga				I have wandered about [searching for] water in the scrubland --
1270	119	a	1	وٖوٖ	wewe	wewe	wewe				You are not a human being,
1274	119	b	1	نِ	ni	ni	ni				you are [a spirit] who makes people lose their way.
1226	114	d	1	لِپَٹٖ	lipaţe	lipate	lipaţe				until the sun goes down a bit?
1242	116	a	1	وَكِسِكِيَ	wakisikiya	wakisikiya	wakisikiya				When they heard my words,
1245	116	b	2	نْيُمَ	nyuma	nyuma	nyuma				
1252	117	b	1	كَنِؤُزَ	kaniuza	kaniuza	kaniuza				and asked me: Who are you?
1268	118	d	1	يَپٖسٖنِ	yapeseni	yapeseni	yapeseni		\\Swa{ilifaa vipi}. \\Swa{-pasa}, \\E{be obliged to, have to}.		what good is it to tell us them?"
1277	119	c	1	ٹْوَمْبِيٖ	ţwambiye	twambiye	ţwambiye				Tell us so that we can know you,
1279	119	d	1	كْوَنْدَ	kwanḏa	kwanda	kwanḏa				let us first know your character.
1284	120	b	1	نِ	ni	ni	ni				[My religion] is the religion of the Prophet ---
1292	120	d	1	مْبٖلٖ	mbele	mbele	mbele				go away from in front of me.
1311	122	c	1	كَمْبَ	kamba	kamba	kamba				[The first man] said: When you look at him closely,
1330	124	b	1	نَ	na	na	na				and this is Zubeir.
1380	128	d	1	سَسَ	sasa	sasa	sasa				and now they are bleating for want of water.
1383	129	a	1	هُكٗ	huko	huko	huko				In that area you've passed through,
1385	129	b	1	مَاءِ	mai	mai	mai				have you not come upon any water there?
1399	130	c	1	لَكِنِ	lakini	lakini	lakini				But, [they said,] it is difficult
1402	130	d	1	هِيٗ	hiyo	hiyo	hiyo				to put the bucket into it.
1405	131	a	1	هَيٗ	hayo	hayo	hayo				The water is sweet,
1415	131	d	1	كُكُؤٗنْيَ	kukuonya	kukuonya	kukuonya				are afraid to show it to you.
1417	132	a	1	أُوَپٗ	uwapo	uwapo	uwapo				If you want to risk it,
1419	132	b	1	كُكُپٖكَ	kukupeka	kukupeka	kukupeka				we are ready to take you there,
1421	132	c	1	وَلَ	wala	wala	wala				but do not mention us,
1423	132	d	1	نِ	ni	ni	ni				[that] it was us who told you [about it].
1204	112	d	1	مَاءَ	maa	maa	maa				they can tell me [where to find] water."
1219	114	b	1	كِكِ	kiki	kiki	kiki				This is high noon --
1282	120	a	1	كَوَجِبِشَ	kawajibisha	kawajibisha	kawajibisha				I answered them with the words:
1470	137	a	1	يُوَ	yuwa	yuwa	yuwa				When the sun rose [next day]
1472	137	b	1	نِنَ	nina	nina	nina				I was laughing with joy,
1477	137	d	1	مُدَ	muḏa	muda	muḏa				when the sun was burning hot.
1495	139	b	1	مْوَكُيُوَ	mwakuyuwa	mwakuyuwa	mwakuyuwa				you know where the well is.
1497	139	c	1	لَِكِنِ	laikini	laikini	laikini				But what good will it do you,
1502	140	a	1	وَكٖنْدَ	wakenḏa	wakenda	wakenḏa				They went on and stood
1504	140	b	1	كُفُنِشِوٖ	kufunishiwe	kufunishiwe	kufunishiwe				where the well had been covered over.
1506	140	c	1	نَاءٗ	nao	nao	nao				I pushed away the plank,
1538	143	d	1	يٗتٖ	yoṯe	yote	yoṯe				all of it came back to him.
1540	144	a	1	جِنَ	jina	jina	jina				When he asked me my name
1542	144	b	1	نِسِمْوَمْبِيَ	nisimwambiya	nisimwambiya	nisimwambiya				I wouldn't tell him -- I refused.
1544	144	c	1	أَكَنِپَ	akanipa	akanipa	akanipa				He told me things he could not have known [unless he was my father]
1546	144	d	1	پِيَ	piya	piya	piya				giving me example after example.
1552	145	b	1	نَ	na	na	na				and the characteristics of your house.
1557	145	c	1	هَپٗ	hapo	hapo	hapo				Then I spoke
1560	145	d	1	إِنَ	ina	ina	ina				and told him my name.
1567	146	c	1	نِ	ni	ni	ni				it is nine, and no mistake;
1574	147	a	1	خَبَرِ	khabari	habari	khabari				The news about him is finished.
1579	147	c	1	تٖنَ	ṯena	tena	ṯena				And via my teacher's [house]
1583	147	d	1	نِمٖرُدِ	nimeruḏi	nimerudi	nimeruḏi				I came back to tell him [about it].
1585	148	a	1	نِمٖمُؤَڠَ	nimemuaga	nimemuaga	nimemuaga				I have said farewell to him.
1594	148	d	1	نَ	na	na	na				and give me your blessing.
1600	149	b	1	ٹُپٖنْدَنٖ	ţupenḏane	tupendane	ţupenḏane				that my father and I will get along well together.
1603	149	c	1	نَمِ	nami	nami	nami				And then [the people] in my town
1611	150	b	1	مَمَكٖ	mamake	mamake	mamake				his mother could not bear it.
1615	150	d	1	كْوَ	kwa	kwa	kwa				and beat herself with her fists.
1620	151	b	1	تِيَتِ	ṯiyaṯi	tiyati	ṯiyaṯi				she hurled herself to the ground,
1622	151	c	1	هَتَ	haṯa	hata	haṯa				so that her clothing came undone,
1625	151	d	1	إِكَوَ	ikawa	ikawa	ikawa				as if she was being read over.
1631	152	c	1	كِشَ	kisha	kisha	kisha				and then she spoke
1633	152	d	1	مْنْڠُ	mngu	mngu	mngu				and prayed to God.
1635	153	a	1	يَا	yā	ya	yā				Oh God,
1637	153	a	3	مٗلَ	mola	mola	mola				my Lord,
1639	153	b	1	نِنُصُرِيَ	ninuṣuriya	ninusuriya	ninuṣuriya				protect my child for me,
1641	153	c	1	نَ	na	na	na				and the children of my friends,
1645	153	d	1	حِفَظِنِ	ḥifaẓini	hifadhini	ḥifaẓini				place them for me in your care.
1653	154	c	1	نَاوٖ	nāwe	nawe	nāwe				And that you should be sensible
1671	156	a	1	إِتُنْدٖ	iṯunḏe	itunde	iṯunḏe				Take care that you be humble
1674	156	b	1	كْوَ	kwa	kwa	kwa				and subservient to your father,
1678	156	c	1	نَ	na	na	na				and [accept] whatever he says to you
1681	156	d	2	لِپٗ	lipo	lipo	lipo				without demur.
1683	157	a	1	نَ	na	na	na				And the Prophet Muhammad,
1627	152	a	1	َأَلِپٗپَٹَ	aalipopaţa	aalipopata	aalipopaţa				When she regained her senses
1618	151	a	1	كَئِٹُنْدَ	kaiţunḏa	kaitunda	kaiţunḏa		Amu \\Swa{-tunda} = Mvita \\Swa{-twaa}.		She took and threw herself down,
1464	136	c	1	كِنٖنَ	kinena	kinena	kinena				I said: I am going now,
1650	154	b	1	نِرَضِ	niraḍi	niradhi	niraḍi		FIX ni radhi		I bless you a thousand times.
1475	137	c	1	مَلِشٗنِ	malishoni	malishoni	malishoni				and took [the goats] to the pastures
1493	139	a	1	كَوَمْبِيَ	kawambiya	kawambiya	kawambiya				I told them: On you go --
1661	155	b	1	سِيٗكُوَ	siyokuwa	siyokuwa	siyokuwa				I would not hold it against you.
1549	145	a	1	أُنِپِيٖ	unipiye	unipiye	unipiye		Emend to \\Swa{unipeye}.		He described your features to me,
1563	146	a	1	نِكَمْوَمْبِيَ	nikamwambiya	nikamwambiya	nikamwambiya				I told him [the number of] years
1591	148	c	1	نِؤٗمْبٖيَ	niombeya	niombeya	niombeya				Intercede for me to the Almighty,
1597	149	a	1	تٖنَ	ṯena	tena	ṯena				And intercede for me to God
1629	152	b	1	كَمُحِمِدِ	kamuḥimiḏi	kamuhimidi	kamuḥimiḏi				she thanked the Generous One,
1647	154	a	1	إٖنٖنْدَ	enenḏa	enenda	enenḏa				[To Ja'far she said:] Off you go -- no harm will come to you.
1659	155	a	1	مِمِ	mimi	mimi	mimi				Even if you were to anger me
1664	155	c	1	إِوَپٗ	iwapo	iwapo	iwapo				If you want a blessing [from him],
1499	139	d	1	نْدِمَ	nḏima	ndima	nḏima				when I'm the only one who can draw water for you?
1508	140	d	1	نِمٗيٖ	nimoye	nimoye	nimoye		Again, the tense gives the nuance of "suddenly" -- see 138c.		and I saw someone coming.
1686	157	b	1	هَنَ	hana	hana	hana				there is no doubt that he is better than you,
1729	160	d	1	نْدُڠُيٖ	nḏuguye	nduguye	nḏuguye				speaking to his brother:
1751	163	a	1	كِشَ	kisha	kisha	kisha				When he had finished, then [Ja'far] spoke,
1754	163	b	1	أَكَمْبَ	akamba	akamba	akamba				and said: Mother, I am leaving.
1757	163	c	1	مَمَكٖ	mamake	mamake	mamake				His mother got up
1766	164	c	1	أَكِمْٹٖمٖيَ	akimţemeya	akimtemeya	akimţemeya				spitting at him,
1768	164	d	1	مْنْڠُ	mngu	mngu	mngu				praying to God for him.
1780	166	a	1	أَكِتٗكَ	akiṯoka	akitoka	akiṯoka				As Ja'far was setting off
1782	166	b	1	هَپٗ	hapo	hapo	hapo				then Nasir began to cry.
1785	166	c	1	مَمَكٖ	mamake	mamake	mamake				His mother said:
1787	166	d	1	أُسِكُ	usiku	usiku	usiku				[ja'far] will be back by nightfall.
1789	167	a	1	نَاصِرِ	nāṣiri	nasiri	nāṣiri				Nasir spoke:
1791	167	b	1	نَمُيُوَ	namuyuwa	namuyuwa	namuyuwa				I know he is going to Mecca.
1798	168	a	1	أَوْ	aw	au	aw				For was I not there yesterday
1806	168	d	1	يٗتٖ	yoṯe	yote	yoṯe				I heard everything.
1808	169	a	1	أَوْ	aw	au	aw				Or if he is going to the pastures,
1816	169	d	1	هَتَ	haṯa	hata	haṯa				So explain these [things] to me.
1819	170	a	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far spoke:
1829	171	a	2	كَمَ	kama	kama	kama				And if you are not pleased,
1831	171	b	1	نَمْبِيَ	nambiya	nambiya	nambiya				tell me before I go.
1833	171	c	1	هُنَ	huna	huna	huna				You have no cause to be hurt
1836	171	d	1	سِكِتِكٗ	sikiṯiko	sikitiko	sikiṯiko				and make me feel sad.
1846	172	d	1	هَمُنِؤٗنِ	hamunioni	hamunioni	hamunioni				you have never seen me cry.
1860	174	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				He told his brother:
1865	174	c	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far said:
1870	175	a	1	نَاصِرِ	nāṣiri	nasiri	nāṣiri				Nasir said:
1880	176	a	1	هَپٗ	hapo	hapo	hapo				Then [Ja'far] set out,
1883	176	b	1	كِنٖنْدَ	kinenḏa	kinenda	kinenḏa				going on, not stopping, 
1888	176	d	1	نَاءٖ	nae	nae	nae				he entered Mecca.
1891	177	a	1	مَكَه	makah	makah	makah				When he arrived in Mecca
1893	177	b	1	كْوَ	kwa	kwa	kwa				he did not know his father's home.
1899	177	d	1	كْوَنْدَ	kwanḏa	kwanda	kwanḏa				first I will sit myself down.
1901	178	a	1	أَكَكٖتِ	akakeṯi	akaketi	akakeṯi				Ja'far sat down
1905	178	c	1	وٖنْدٖمٖنٖ	wenḏemene	wendemene	wenḏemene				he was walking along with the Bearer of Good News --
1764	164	b	1	إٖنٖنْدٖ	enenḏe	enende	enenḏe		= Swa{alienda}.		she went and followed him,
1775	165	c	1	أُمْفُنْدٖ	umfunḏe	umfunde	umfunḏe				Teach him knowledge.
1794	167	c	1	كُتُنْڠَ	kuṯunga	kutunga	kuṯunga		\\Swa{-tunga}, \\E{graze}.		If he were going [to take the animals] to graze
1723	160	b	1	وٗتٖ	woṯe	wote	woṯe				all three of them as equals.
1726	160	c	1	أَكِنٖنَ	akinena	akinena	akinena		Emend to \\Swa{akanena}.		Then [Ja'far] said these words,
1746	162	c	1	نْيَمَ	nyama	nyama	nyama				I don't know [what] that animal [looks like],
1761	164	a	1	هَپٗ	hapo	hapo	hapo				Then his mother went out [after him],
1796	167	d	1	أَسِپٗئِيٗنَ	asipoiyona	asipoiyona	asipoiyona				he would not take that road.
1801	168	b	1	أُكِمْوَمْبِيَ	ukimwambiya	ukimwambiya	ukimwambiya				when you said him [those] words to him:
1803	168	c	1	كَوَڠٖ	kawage	kawage	kawage				"Go and say goodbye to your friends."
1823	170	c	1	أَوْ	aw	au	aw				Did we not agree
1826	170	d	1	مَنٖنٗ	maneno	maneno	maneno				on the things I said to you?
1848	173	a	1	سَسَ	sasa	sasa	sasa				Now, these [things] are [a matter of] commonsense,
1852	173	b	1	نِمٖزٗيَتَأَمَلِ	nimezoyaṯaamali	nimezoyataamali	nimezoyaṯaamali				[the things] which I observed.
1853	173	c	1	نَكُوَ	nakuwa	nakuwa	nakuwa				I am sad [because]
1856	173	d	1	زٖءٗ	zeo	zeo	zeo				it is time for you to go.
1874	175	c	1	سَلَامَ	salāma	salama	salāma				safe and sound,
1876	175	d	1	كْوَ	kwa	kwa	kwa				in health and free from affliction.
1885	176	c	1	سَاءَ	saa	saa	saa				and at four o'clock
1896	177	c	1	كَمْبَ	kamba	kamba	kamba				He said: I will not [try to] guess the road,
1903	178	b	1	أَكَمُؤٗنَ	akamuona	akamuona	akamuona				and saw Zubayr --
1908	178	d	1	مِكٗنٗ	mikono	mikono	mikono				and Ja'far waved to him.
1910	179	a	1	مْكٗنٗ	mkono	mkono	mkono				Zubayr saw the wave
1770	165	a	1	هُي	huy	huy	huy				[Then she said:] Teacher, Nasir here,
1862	174	b	1	هى	hı̄	hi	hı̄		Emend to \\Swa{haya}.		So, off you go.
1821	170	b	1	بَسِ	basi	basi	basi				So why are you crying?
1912	179	b	1	زُبٖيْرِ	zubēri	zuberi	zubēri				and stopped.
1914	179	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				He told the Hashimite:
1919	180	a	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza				The Trustworthy One asked:
1925	180	c	1	وَسِكِيٖ	wasikiye	wasikiye	wasikiye				And they heard [Ja'far] say:
1927	180	d	1	مْكٗنٗ	mkono	mkono	mkono				Give me your hand, Prophet.
1939	182	a	1	كِشَ	kisha	kisha	kisha				Then he said:
1951	183	a	1	أَلِپٗكْوٖنْدَ	alipokwenḏa	alipokwenda	alipokwenḏa				When the Lord got there
1956	183	c	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima answered
1958	183	d	1	أَكَمْبَ	akamba	akamba	akamba				and said: The Prophet is not here.
1966	184	c	1	كِجَنَ	kijana	kijana	kijana				And the boy answered:
1968	184	d	1	نِ	ni	ni	ni				Listen -- it is my grandfather.
1976	185	b	1	يٖيٖ	yeye	yeye	yeye				he and two people.
1982	185	d	1	كَتٗكَ	kaṯoka	katoka	kaṯoka				[Fatima] went out to see him.
1984	186	a	1	أَكِتٗكَ	akiṯoka	akitoka	akiṯoka				When she came out, Ja'far
1986	186	b	1	كَمُؤُلِزَ	kamuuliza	kamuuliza	kamuuliza				asked her how she was.
1988	186	c	1	أَكِكٗمَ	akikoma	akikoma	akikoma				When he had finished speaking
2004	188	b	1	إِنَ	ina	ina	ina				What is his name?
2008	188	c	1	مْٹُمٖ	mţume	mtume	mţume				The Prophet spoke
2010	188	d	1	فَتُمَ	faṯuma	fatuma	faṯuma				and addressed Fatima.
2012	189	a	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				The Bringer of Good Tidings told her:
2014	189	b	1	هُيُ	huyu	huyu	huyu				This is Ja'far
2020	189	d	1	هِزٗ	hizo	hizo	hizo				his features would tell you that.
2023	190	a	1	هَپٗ	hapo	hapo	hapo				Then the Lord, the Trustworthy One,
2028	190	c	1	إٖنٖنْدَ	enenḏa	enenda	enenḏa				Go to the mosque,
2035	191	b	1	كَفِكَ	kafika	kafika	kafika				and arrived at the mosque.
2048	192	c	1	نَ	na	na	na				and his name is Ja'far -- 
2055	193	a	1	چَنْبِوَ	cham̱biwa	chambiwa	cham̱biwa				When these words had been said
2058	193	b	1	پَپٗ	papo	papo	papo				[Ali] set off immediately.
2061	193	c	1	مْلَنْڠٗنِ	mlangoni	mlangoni	mlangoni				When he reached the door [of his house]
2063	193	d	1	سَلَامُ	salāmu	salamu	salāmu				he greeted [those inside].
2065	194	a	1	سَلَامُ	salāmu	salamu	salāmu				While he was greeting [them],
2070	194	c	1	كَئِتٗكَ	kaiṯoka	kaitoka	kaiṯoka				Ja'far got up
2072	194	d	1	مكٗنٗ	mkono	mkono	mkono				and took his hand.
2074	195	a	1	عَلِيْ	'alii	'alii	'alii				Ali spoke:
2077	195	b	1	نِ	ni	ni	ni				Is everything well where you came from?
2083	195	d	1	حَالِ	ḥāli	hali	ḥāli				tell me how they are.
2086	196	a	1	أَكَمْجِبُ	akamjibu	akamjibu	akamjibu				And [Ja'far] answered him with the words:
2091	196	c	1	سِيُوِ	siyuwi	siyuwi	siyuwi				[though] I don't know about after [I left].
2105	197	d	1	عَلِيْ	'alii	'alii	'alii				Ali answered.
2107	198	a	1	عَلِيْ	'alii	'alii	'alii				Ali spoke:
2109	198	b	1	نِمٖكُنْڠٗجَ	nimekungoja	nimekungoja	nimekungoja				I waited for you on the road -- 
2111	198	c	1	وَلِتٗكَ	waliṯoka	walitoka	waliṯoka				what time did you set out?
2116	199	a	1	أَكَمْجِبُ	akamjibu	akamjibu	akamjibu				[ja'far] answered him with the words:
2120	199	c	1	لَكِنِ	lakini	lakini	lakini				but, father, it is far --
2124	199	d	1	إِنَ	ina	ina	ina				the road is a long one.
2128	200	a	1	نَمِ	nami	nami	nami				And when I reached the cave
2114	198	d	1	مْبٗنَ	mbona	mbona	mbona				Why are you late?
2118	199	b	1	أَصُبُحِ	aṣubuḥi	asubuhi	aṣubuḥi				I prayed in the morning,
1916	179	d	1	مْڠٖنِ	mgeni	mgeni	mgeni				Our guest has just arrived.
1942	182	b	1	كْوَ	kwa	kwa	kwa				Could you show me to my father's [house]?
1947	182	d	1	كٖنْدَ	kenḏa	kenda	kenḏa				and took him to Ali's [house].
2017	189	c	1	وَ	wa	wa	wa				[son] of Ali the Lion-like --
2026	190	b	1	أَكَمْٹُمَ	akamţuma	akamtuma	akamţuma				sent Husayn:
2030	190	d	1	بَبَكٗ	babako	babako	babako				and call your father for me.
2032	191	a	1	هَپٗ	hapo	hapo	hapo				So Husayn went off
2037	191	c	1	بَبَ	baba	baba	baba				Father, a visitor has come -- 
1980	185	c	1	كُسِكِيَكْوٖ	kusikiyakwe	kusikiyakwe	kusikiyakwe				When she heard these words,
2131	200	b	1	پَنَ	pana	pana	pana				there was the date-tree by the road,
2134	200	c	1	يَلِنِتٗكَ	yaliniṯoka	yalinitoka	yaliniṯoka				but they left my head,
2136	200	d	1	يَلٖ	yale	yale	yale				the [directions] you had told me.
2177	204	c	1	نَرُدِيَ	naruḏiya	narudiya	naruḏiya				and returned to my [correct] place
2180	204	d	1	كِشَ	kisha	kisha	kisha				and finally I got back.
2186	205	b	1	هَپٗ	hapo	hapo	hapo				and then I followed the road.
2189	205	c	1	پٖنْيٖ	penye	penye	penye				At the place with the date-tree I stopped --
2192	205	d	1	صَالَ	ṣāla	sala	ṣāla				it was time to pray.
2194	206	a	1	أَوَلِ	awali	awali	awali				Just after noon
2197	206	b	1	نْدِپٗ	nḏipo	ndipo	nḏipo				was when I set out [again] on the road.
2228	209	b	1	أَسِؤٗوْنٖ	asiōne	asione	asiōne				so that he met no unbelievers,
2230	209	c	1	كْوَنِ	kwani	kwani	kwani				for they would have overwhelmed him -- 
2232	209	d	1	وَٹُ	waţu	watu	waţu				one against many.
2236	210	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima had been sitting down.
2262	212	c	1	چَكُلَ	chakula	chakula	chakula				I have cooked some food
2266	213	a	1	كْوَنْدَ	kwanḏa	kwanda	kwanḏa				[Ali said:] First he must relax
2268	213	b	1	خَبَرِ	khabari	habari	khabari				and tell his news -- 
2270	213	c	1	مٗيٗ	moyo	moyo	moyo				his heart is fluttering
2272	213	d	1	كْوَ	kwa	kwa	kwa				because of the hardships of the journey.
2297	216	b	1	أَلِپٗكٖتِ	alipokeṯi	alipoketi	alipokeṯi				and sat down on a chair.
2301	216	d	1	سَلَامُ	salāmu	salamu	salāmu				greeting them.
2305	217	b	1	كُوَپِسِزَ	kuwapisiza	kuwapisiza	kuwapisiza				and greeted them
2319	218	d	1	وٗتٖ	woṯe	wote	woṯe				and all returned his greeting.
2323	219	b	1	نِ	ni	ni	ni				All is well where I come from;
2326	219	c	1	سِيُوِ	siyuwi	siyuwi	siyuwi				I do not know about where I am going --
2329	219	d	1	أَيُوَءٖ	ayuwae	ayuwae	ayuwae				the one who knows is the Almighty.
2332	220	a	1	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				The Trustworthy One spoke
2349	221	d	1	نْيُمْبَنِ	nyumbani	nyumbani	nyumbani				and I have not yet returned home.
2351	222	a	1	كَمْبَ	kamba	kamba	kamba				[Ali] said: Wait, Bringer of Good Tidings,
2354	222	b	1	ٹُمْلِشٖ	ţumlishe	tumlishe	ţumlishe				until we have given Ja'far something to eat.
2356	222	c	1	چَكُلَ	chakula	chakula	chakula				The food is ready.
2359	222	d	1	هَپٗ	hapo	hapo	hapo				So the Prophet sat down.
2362	223	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima got up
2364	223	b	1	كْوَ	kwa	kwa	kwa				quickly, in a hurry,
2373	224	a	1	وَكَكٖتِ	wakakeṯi	wakaketi	wakakeṯi				They sat equally,
2376	224	b	1	وَكَتَنْڠَنْيَ	wakaṯanganya	wakatanganya	wakaṯanganya				sharing the same dish,
2378	224	c	1	جُمْلَ	jumla	jumla	jumla				all five of them,
2382	224	d	1	وَلَ	wala	wala	wala				though the Prophet did not eat [much].
2385	225	a	1	مَرَ	mara	mara	mara				Three times indeed
2389	225	b	1	مْكٗنٗ	mkono	mkono	mkono				he put his hand [into the dish]
2391	225	c	1	أَكِشَ	akisha	akisha	akisha				and then he got up
2397	226	b	1	كَپٗوَ	kapowa	kapowa	kapowa				and accepted water, the Trustworthy One,
2400	226	c	1	نَ	na	na	na				in a cup to drink,
2404	226	d	1	نَاءٖ	nae	nae	nae				and rinsed his mouth.
2409	227	b	1	هَپٗ	hapo	hapo	hapo				he was then given, the Bearer of Good Tidings,
2317	218	c	1	وَلِؤٗپٗ	waliopo	waliopo	waliopo				Those present spoke
2368	223	c	1	تَمَشَ	ṯamasha	tamasha	ṯamasha		\\Swa{vitu vizuri vizuri}.		and placed delicacies [before them]
2183	205	a	1	كِشَ	kisha	kisha	kisha				At last I turned back
2264	212	d	1	هَيَتَسَ	hayaṯasa	hayatasa	hayaṯasa				is it not time for it to be served?
2276	214	a	1	نَ	na	na	na				And the time he took [to get here],
2279	214	b	1	أُمٖزِيُوَ	umeziyuwa	umeziyuwa	umeziyuwa				you know it well,
2281	214	c	1	نَ	na	na	na				and we are listening to him
2393	225	d	1	وَءٗ	wao	wao	wao				and left [the food] to them.
2204	206	d	1	نَعَانَ	na'āna	na'ana	na'āna				I have told you the reason.
2309	217	d	1	جَّْفَرِ	jaّfari	jaU+0651fari	jaّfari				He spoke to Ja'far.
2412	227	c	1	أَكَوَآڠَ	akawaga	akawaga	akawaga				and he bade them farewell -- 
2415	227	d	1	ٹُمْوَ	ţumwa	tumwa	ţumwa				the Prophet went off.
2417	228	a	1	ٹُمْوَ	ţumwa	tumwa	ţumwa				When the Prophet had left
2420	228	b	1	نَاءٗ	nao	nao	nao				and they had finished eating
2423	228	c	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima got up
2425	228	d	1	مَاءِ	mai	mai	mai				and offered them water.
2427	229	a	1	أَكَئِيٗنَ	akaiyona	akaiyona	akaiyona				And Fatima saw it -- 
2431	229	c	1	يَپِسِيٗ	yapisiyo	yapisiyo	yapisiyo				What had happened in the past
2436	230	a	1	عَلِيْ	'alii	'alii	'alii				Ali spoke:
2438	230	b	1	مْبٗنَ	mbona	mbona	mbona				Why has [your mood] changed,
2440	230	c	1	كَمَ	kama	kama	kama				as if you are angry,
2444	231	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima replied:
2452	231	d	1	إِلَّا	illā	illa	illā				but to tell you.
2457	232	b	1	كَتٗكَ	kaṯoka	katoka	kaṯoka				he left the house
2460	232	c	1	أَكَنٖنْدَ	akanenḏa	akanenda	akanenḏa				and went to the Trustworthy One
2465	233	a	1	حَسَنِ	ḥasani	hasani	ḥasani				When Hassan got there
2468	233	b	1	كْوَ	kwa	kwa	kwa				he told the Prophet:
2471	233	c	1	مِمِ	mimi	mimi	mimi				she is angry,
2476	234	a	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza				The Trustworthy One asked him:
2524	238	d	1	خَبَرِ	khabari	habari	khabari				The news has spread.
2526	239	a	1	كُمٖپَنَنَ	kumepanana	kumepanana	kumepanana				The news is being passed about
2533	239	d	1	وَ	wa	wa	wa				[the son] of Lord Ali.
2536	240	a	1	هَپٗ	hapo	hapo	hapo				Then Ali the Lionlike,
2539	240	b	1	نٖنٗ	neno	neno	neno				the words that he said [were]:
2573	243	c	1	أَكَئِنُكَ	akainuka	akainuka	akainuka				He got up carefully
2576	243	d	1	مْكٖوٖ	mkewe	mkewe	mkewe				and went to his wife.
2581	244	b	1	مْبٗنَ	mbona	mbona	mbona				Why are you frowning?
2592	245	b	1	هِيٗ	hiyo	hiyo	hiyo				This is not like you.
2596	245	c	1	مِمِ	mimi	mimi	mimi				I am not your child,
2603	246	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima spoke:
2609	246	c	1	يَلٗنْڠِيَ	yalongiya	yalongiya	yalongiya				which "fell into the well",
2614	247	a	1	عَلِيْ	'alii	'alii	'alii				Ali said: Indeed, 
2619	247	c	1	پَلٖ	pale	pale	pale				you would have got angry at that time [as well],
2627	248	b	1	نْدُڠُ	nḏugu	ndugu	nḏugu				stop being angry, my dear.
2631	248	c	1	مٗيٗ	moyo	moyo	moyo				let your heart be forgiving
2635	248	d	1	نَ	na	na	na				and tell me what you want.
2638	249	a	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima spoke these words:
2648	249	d	1	رَضِ	raḍi	radhi	raḍi				I forgive you.
2695	254	a	1	أَلِپٗكُيَ	alipokuya	alipokuya	alipokuya				When he came back to the town [after one campaign]
2697	254	b	1	عَلِيْ	'alii	'alii	'alii				Ali spoke
2699	254	c	1	أَكَمْوَمْبِيَ	akamwambiya	akamwambiya	akamwambiya				and told the Trustworthy One:
2483	234	d	1	مٗيٗ	moyo	moyo	moyo				I don't understand [a thing about it].
2570	243	b	1	هٖلَ	hela	hela	hela		= \\Swa{hebu}.		Come now, Fatima.
2657	250	c	1	نَوٖ	nawe	nawe	nawe				When [Ali] went to war
2617	247	b	1	نْدِپٗ	nḏipo	ndipo	nḏipo		\\E{that is why}.		so that's why you are angry --
2646	249	c	1	أُوَپٗ	uwapo	uwapo	uwapo		= \\Swa{ukiwa}.		Since you have now agreed [you were wrong],
2446	231	b	1	وٖوٖ	wewe	wewe	wewe				You are not leaving yet. 
2449	231	c	1	نِلٗنَلٗ	nilonalo	nilonalo	nilonalo				[the thing] I have [in my heart], I have no choice
2455	232	a	1	أَكِسِكِيَ	akisikiya	akisikiya	akisikiya				When Hasan heard this
2641	249	b	1	كِٹُ	kiţu	kitu	kiţu				the matter is of little importance.
2528	239	b	1	جَمِيْعِ	jamī'i	jami'i	jamī'i				among all the Helpers:
2531	239	c	1	أَمٖكُيَ	amekuya	amekuya	amekuya				Ja'far has arrived,
2544	240	d	1	مَمْبٗ	mambo	mambo	mambo				if someone does not understand how things are.
2565	242	d	1	عَلِيْ	'alii	'alii	'alii				when Ali looked at her.
2578	244	a	1	أَكَمُؤُزَ	akamuuza	akamuuza	akamuuza				He asked her: What is the matter?
2584	244	c	1	فَتُمَ	faṯuma	fatuma	faṯuma				Fatima said: What is the point
2600	245	d	1	أَمْبَ	amba	amba	amba				say what it is, and tell me.
2621	247	d	1	كَمَ	kama	kama	kama				if I had told you the truth.
2624	248	a	1	نَ	na	na	na				And now, even if I have hurt you,
2650	250	a	1	وَكَكٖتِ	wakakeṯi	wakaketi	wakakeṯi				They lived happily,
2653	250	b	1	يٖيٖ	yeye	yeye	yeye				[Ali] and the boy, in the house.
2701	254	d	1	نِنَ	nina	nina	nina				I have something to tell you.
845	81	a	1	ٖوَنِٹِيَ	ewaniţiya	ewanitiya	ewaniţiya				You are making me sad
1291	120	c	4	جَمِلِ	jamili	jamili	jamili		\\Swa{jahili}, \\E{someone ignorant of the truth}, in this case of Islam.		
1295	121	a	1	كِسِكِيَ	kisikiya	kisikiya	kisikiya				And I heard him speak
1420	132	b	2	ٹُتَيَرِ	ţuṯayari	tutayari	ţuṯayari				
1429	133	b	2	نْدِيٗ	nḏiyo	ndiyo	nḏiyo				
1446	134	d	2	هُنِٹَنْڠَلِيَ	huniţangaliya	hunitangaliya	huniţangaliya				
1614	150	c	2	عَفِلِ	'afili	'afili	'afili				
2704	255	a	1	نَپٖنْدَ	napenḏa	napenda	napenḏa				I would now like, Bringer of Good Tidings,
2707	255	b	1	َٖنْدٖ	aenḏe	aende	aenḏe				for Ja'far to go on his own
2710	255	c	1	أَكَپِجٖ	akapije	akapije	akapije				to fight the unbelievers.
2714	256	a	1	أَكَشُكَ	akashuka	akashuka	akashuka				Gabriel descended
2721	256	d	1	أَكُسَلِمُ	akusalimu	akusalimu	akusalimu				and he greets you, Prophet.
2723	257	a	1	أَكَتَمْكَ	akaṯamka	akatamka	akaṯamka				The Trustworthy One spoke:
2725	257	b	1	عَلِيْ	'alii	'alii	'alii				Ali, let us go to your house --
2731	257	d	1	هُئِفَرِكِ	huifariki	huifariki	huifariki				is departing this world.
2733	258	a	1	چَمْبِوَ	chambiwa	chambiwa	chambiwa				When he was told these words
2736	258	b	1	هَپٗ	hapo	hapo	hapo				[Ali] did not linger there --
2738	258	c	1	كَئِنُكَ	kainuka	kainuka	kainuka				he got up with the Prophet
2744	259	a	1	أَكِپَٹَ	akipaţa	akipata	akipaţa				When he got to the door
2752	260	a	1	مْوَنٗ	mwano	mwano	mwano				Your son was sitting there
2759	260	c	1	غَفُلَ	ḡafula	ghafula	ḡafula				and all of a sudden he said:
2761	260	d	1	بَبَنْڠُ	babangu	babangu	babangu				I need to call my father.
2779	262	d	1	هَپٗ	hapo	hapo	hapo				his father wept.
2782	263	a	1	أَكَلِيَ	akaliya	akaliya	akaliya				He wept, saying:
2788	263	c	1	أُپٖٹْوٖ	upeţwe	upetwe	upeţwe				What misfortune has stricken you
2792	263	d	1	كَٹِكَ	kaţika	katika	kaţika				as you went on your way?
2795	264	a	1	أَكِسِكِيَ	akisikiya	akisikiya	akisikiya				When he heard these words
2797	264	b	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				Ja'far regained consciousness
2799	264	c	1	كْوَ	kwa	kwa	kwa				and looked about with difficulty
2802	264	d	1	َمَيٗ	amayo	amayo	amayo				and focussed his eyes on him.
2804	265	a	1	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya	kimwangaliya				When he saw the Trustworthy One
2811	265	d	1	أَمٖكْوِشَ	amekwisha	amekwisha	amekwisha				[Ja'far] was already dead.
2816	266	b	1	يٗتٖ	yoṯe	yote	yoṯe				became insensible to anything.
2820	266	d	1	مَصَحَبَ	maṣaḥaba	masahaba	maṣaḥaba				and spoke to the Companions.
2824	267	b	1	نَ	na	na	na				and they all went out
2827	267	c	1	هَيَ	haya	haya	haya				and they completed the burial ceremony,
2830	267	d	1	عَلِيْ	'alii	'alii	'alii				Ali still insensible.
2832	268	a	1	أَلِپٗكْوِشَ	alipokwisha	alipokwisha	alipokwisha				When he had completed the burial
2834	268	b	1	مْٹُمِ	mţumi	mtumi	mţumi				the Prophet sat [Ali] down
2869	271	d	1	عَقِلِ	'aqili	'aqili	'aqili				[Ali] regained his senses.
2876	272	c	1	تَكُپَ	ṯakupa	takupa	ṯakupa				I will give you my letters
2879	272	d	1	أُپَٹٖ	upaţe	upate	upaţe				so that you may deliver them for me.
2881	273	a	1	هِيْ	hii	hii	hii				This one is for his mother
2885	273	b	1	مٗيَ	moya	moya	moya				and this one for his teacher,
2892	273	d	1	نٖنٗ	neno	neno	neno				one word to tell them [what has happened].
2897	274	b	1	كَپٗكٖيَ	kapokeya	kapokeya	kapokeya				he took the papers
2899	274	c	1	كَنٖنْدَ	kanenḏa	kanenda	kanenḏa				and went quickly with them.
2902	274	d	1	كَمْپٖكٖيَ	kampekeya	kampekeya	kampekeya				He delivered one to Atiya [Ja'far's mother].
2904	275	a	1	بَرُوَ	baruwa	baruwa	baruwa				When he had given her the letter
2919	276	b	1	يٖيٖ	yeye	yeye	yeye				[ja'far's] mother read [the letter],
2922	276	c	1	أَكَتٗكَ	akaṯoka	akatoka	akaṯoka				and she left home on her own
2925	276	d	1	مْٹُ	mţu	mtu	mţu				without telling anyone.
2951	279	b	1	كِنٖنْدَ	kinenḏa	kinenda	kinenḏa		Emend to \\Swa{kenenda}.		she went on without finding him.
2866	271	c	1	كَپٖوَ	kapewa	kapewa	kapewa		The passive of \\Swa{-pa}, \\E{give} is \\Swa{powa} in Amu, \\Swa{-pawa} in Mvita, and \\Swa{-pewa} in Zanzibar.		And when he was given this advice
2750	259	d	1	أُيَاءٗ	uyao	uyao	uyao				to go and fetch you.
2755	260	b	1	نَ	na	na	na				with Hasan and Husayn
2813	266	a	1	هَپٗ	hapo	hapo	hapo				Then Ali the Lion-like
2953	279	c	1	نْيُمْبَ	nyumba	nyumba	nyumba				When she reached the first house
2716	256	b	1	أَكمْوَمْبِيَ	akmwambiya	akmwambiya	akmwambiya				and told the Prophet:
2967	280	d	1	صَلَ	ṣala	sala	ṣala				and prayers were about to begin.
2976	281	d	1	كْوَ	kwa	kwa	kwa				to Lord Ali's [house]?
2987	282	d	1	كَمَ	kama	kama	kama				if that clarifies things for you.
2993	283	b	1	كْوَ	kwa	kwa	kwa				quickly and speedily
2997	283	c	1	مْلَنْڠٗ	mlango	mlango	mlango				and took hold of the door
2999	283	d	1	إِلِ	ili	ili	ili				to open it for her.
3001	284	a	1	نْدِ	nḏi	ndi	nḏi				Then, leaving the tent,
3005	284	b	1	هَپٗ	hapo	hapo	hapo				he set out on the way.
3008	284	c	1	كْوَ	kwa	kwa	kwa				When he finally came to Ali's [house]
3011	284	d	1	مْلَنْڠٗ	mlango	mlango	mlango				he knocked on the door.
3013	285	a	1	كِنٖنَ	kinena	kinena	kinena				And he said, explaining [things] to him:
3015	285	b	1	عَلِيْ	'alii	'alii	'alii				Ali, it's me,  Hamza.
3020	285	d	1	هَپٗ	hapo	hapo	hapo				Then Ali went out.
3023	286	a	1	يٖيٖ	yeye	yeye	yeye				[Atiya] was at the door,
3026	286	b	1	هُلِيَ	huliya	huliya	huliya				weeping and saying:
3028	286	c	1	قَبُرِ	qaburi	qaburi	qaburi				Take me to his grave -- 
3031	286	d	1	نَپٖنْدَ	napenḏa	napenda	napenḏa				I want to see it.
3033	287	a	1	هَپٗ	hapo	hapo	hapo				Then Ali went out,
3036	287	b	1	مَتٗزِ	maṯozi	matozi	maṯozi				his tears flowing,
3041	287	d	1	مَنٖنٗ	maneno	maneno	maneno				telling her these words.
3043	288	a	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				He spoke, saying:
743	72	a	1	كَمَْمْبِيَ	kamambiya	kamambiya	kamambiya				and told him: I am going off --
3018	285	c	1	مْڠٖنِ	mgeni	mgeni	mgeni		i.e. \\Swa{kuna mgeni wako hapa}.		A visitor is asking for you.
738	71	c	1	ٹْوٖنٖنْدٖ	ţwenenḏe	twenende	ţwenenḏe				so that we may go on towards the town.
741	71	d	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				But Ja'far spoke to him
763	73	c	3	إِكِفِكَ	ikifika	ikifika	ikifika		i.e. around 7.00pm.		
769	74	b	2	نْدِيَ	nḏiya	ndiya	nḏiya				When you come to the fork in the road,
795	76	b	1	كَمْوَمْبِيَ	kamwambiya	kamwambiya	kamwambiya				told him: Thank you.
800	76	d	1	أُپٖنْدَ	upenḏa	upenda	upenḏa				kindly give them my regards.
805	77	b	1	أَزْوَاجِ	azwāji	azwaji	azwāji		Azwaj and Zubeir are the two people who were with Abu Bakr when Ja'far met them on the road (174, 175).  This part of the story (i.e. how Ja'far came to be at the well) has not been told yet -- it is contained in a flashback a little later in the ballad.  In Y it would seem that the name Azwaj has been confused with the word for "wife" (understandable in this context), an that \\Swa{dhuriya}, \\E{children}, has then been substituted for Zubeir (as making better sense) -- note that \\Swa{dhuriya} does not rhyme.		your wives and children,
811	77	d	1	هَؤٗ	hao	hao	hao				I have heard of them.
822	78	d	1	مْنْڠُ	mngu	mngu	mngu				commended him to God's care.
824	79	a	1	مُئِنِ	muini	muini	muini				When [Ja'far] entered his village
834	79	d	1	كْوَءٗ	kwao	kwao	kwao				before going home.
847	81	b	1	نَ	na	na	na				and and very anxious.
850	81	b	4	مَؤُذِكٗ	maudhiko	maudhiko	maudhiko		lit. "you are bringing me sadness and many anxieties".		
840	80	c	1	كَمبَ	kamba	kamba	kamba				and said: You are  making me worried
942	89	c	1	عَيْنِ	'ayni	'ayni	'ayni		Emend to \\Swa{aina}.		To judge by his eyes,
922	87	d	1	جَعْفَرِ	ja'fari	ja'fari	ja'fari				and spoke to Ja'far.
924	88	a	1	كَمْبَ	kamba	kamba	kamba				She said: That's not [like] you, Ja'far --
927	88	b	1	وَٹُؤٗنٖشَ	waţuonesha	watuonesha	waţuonesha				are you being insolent to us,
933	88	d	1	مْٹُ	mţu	mtu	mţu				[like] a person who has run away [and is trying to hide]?
935	89	a	1	نَاصِرِ	nāṣiri	nasiri	nāṣiri				Nasir was [Ja'far's] brother,
939	89	b	1	پَپٗ	papo	papo	papo				and at that moment he spoke up:
946	89	d	1	هَتَكِ	haṯaki	hataki	haṯaki				he doesn't want to look at us.
954	90	c	1	يٖؤٗ	yeo	yeo	yeo				today he was with his goats,
958	90	d	1	وَوِلِ	wawili	wawili	wawili				[and] two of them went missing.
960	91	a	1	وَمٖتٗكَ	wameṯoka	wametoka	wameṯoka				They left the herd,
964	91	c	1	كِشَ	kisha	kisha	kisha				And of course he is coming back from the forest --
967	91	d	1	يُوَ	yuwa	yuwa	yuwa				the sun is fierce on the way.
1002	95	a	1	أَلِئِنَمِيَ	aliinamiya	aliinamiya	aliinamiya				[Ja'far] lay down --
1013	96	b	1	نَاصِرِ	nāṣiri	nasiri	nāṣiri				You are ill-mannered, Nasir --
1015	96	c	1	كِوَ	kiwa	kiwa	kiwa				when you are being naughty
2957	279	d	1	مْلَنْڠٗنِ	mlangoni	mlangoni	mlangoni		In other words, \\Swa{alikwenda usiku kucha}, \\E{she travelled all night}, and arrived at Mecca, where she immediately makes for the first house in the village -- this just happens to be one where Hamza and Umar are present.  Note that in her distress Atiya does not even ask permission to enter ("Hodi!").		she went in the door.
2990	283	a	1	هَپٗ	hapo	hapo	hapo				Then Hamza went out
781	75	b	1	نَسِ	nasi	nasi	nasi				So, now, off you go,
813	78	a	1	نَسِ	nasi	nasi	nasi				So then Ja'far
837	80	a	2	كُيَنُظُمَ	kuyanuẓuma	kuyanudhuma	kuyanuẓuma		\\Swa{-nuzumu} usually means "compose" (\\Swa{-tunga}), but here it means "explain" (\\Swa{-eleza}).		
2562	242	c	1	مْوَنَ	mwana	mwana	mwana		\\Swa{mwana} in the previous line meant \\E{child}, but in this line it is used a respectful title, \\E{lady, mistress}. 		[But] the Lady [Fatima] appeared sad
2566	242	d	2	كِمْوَنْڠَلِيَ	kimwangaliya	kimwangaliya	kimwangaliya		In spite of supporting Ali's comments, Fatima is still upset about her discovery.		
2586	244	c	3	كُنِ	kuni	kuni	kuni		Emend to \\Swa{kwani}, \\E{why?}.		
2587	244	d	1	يَ	ya	ya	ya				of telling you bitter things.
2590	245	a	1	أَكَمْجِبُ	akamjibu	akamjibu	akamjibu				[Ali] answered her with the words:
2689	253	c	1	لَكِ	laki	laki	laki		\\Swa{laki} < \\AS{لَكٌّ}, \\E{100,000}.		of 100,000 unbelievers
2770	261	d	2	لَلٗمْزِدِيَ	lalomziḏiya	lalomzidiya	lalomziḏiya		Or: "what misfortune has overwhelmed him?".  Compare \\Swa{kumezidi nini?}, \\E{what has happened?} for something disastrous or catastrophic.		
2784	263	b	1	إٖوٖ	ewe	ewe	ewe				Oh, my son, what is the matter with you?
2806	265	b	1	أَكَمْبَ	akamba	akamba	akamba				he said: Read me [the chapter] Ya Sin.
2809	265	c	1	أَكِكٗمَ	akikoma	akikoma	akikoma				By the time he had finished speaking,
2818	266	c	1	أَكَسِمَمَ	akasimama	akasimama	akasimama		\\Swa{-simama} does not mean just "stand up"; it also means "do anything that needs to be done", i.e. in this case, step into the breach as regards the aftermath of Ja'far's death.		The Bringer of Good Tidings had to do the needful,
2822	267	a	1	كَوَمْبِيَ	kawambiya	kawambiya	kawambiya				He spoke to them and they listened,
2873	272	a	3	كُتٗوَ	kuṯowa	kutowa	kuṯowa		Fix kutuwa		
2874	272	b	1	زُبَيْرِ	zubayri	zubayri	zubayri				He summoned Zubayr [and said:]
2889	273	c	1	نَ	na	na	na				and when you go there do not say
2895	274	a	1	زُبَيْرِ	zubayri	zubayri	zubayri				Zubayr did not delay --
2896	274	a	2	أَسِجِلِسِ	asijilisi	asijilisi	asijilisi		i.e. Zubayr did not sit and wait.		
2907	275	b	1	كِشَ	kisha	kisha	kisha				then Zubayr left,
2910	275	c	1	إِلٖ	ile	ile	ile				and the one for [Ja'far's] teacher
2914	275	d	1	كٖنٖنْدَ	kenenḏa	kenenda	kenenḏa				he went on to deliver [it] to him.
2916	276	a	1	زُبَىْرِ	zubayri	zubayri	zubayri				When Zubayr had left
2934	277	c	3	َسِپٗفَهَمُ	asipofahamu	asipofahamu	asipofahamu		Because she was so distraught.		
2937	278	a	1	نَ	na	na	na				And meanwhile Zubayr
2941	278	b	1	أَسِپَٹٖ	asipaţe	asipate	asipaţe		Emend to \\Swa{asifanye}.		was doing his best [to find the teacher's house],
3045	288	b	1	سٖنْدٖلٖيْ	senḏelee	sendelee	senḏelee		i.e. \\Swa{usifanye sana}.  If you get carried away by grief, you may say something that is \\Swa{kufru}, i.e. something an unbeliever might say.  So a wife at the death of her husband may say that he was her lion, or her pillar in the world, or tht she depended on him, and she will be told: don't say that, or you will become a \\Swa{kafiri}.  On the contrary, you have to be loyal to God even in a time of grief, and endure whatever he sends you.  Debate on the "problem of evil" (why does a good God allow bad things to happen) is unknown in Islam -- God knows best, and we cannot begin to fathom His motives.		don't go on so -- submit to God's will,
3083	291	c	2	هُتٗكٗسَ	huṯokosa	hutokosa	huṯokosa		Emend to \\Swa{hutakosa}.  If you \\Swa{subiri}, you will receive a reward from God: \\Swa{hutakosa maneno kwa Mungu}, \\E{you will not fail [to receive] comfort from God}.		
3110	294	a	1	أُنِئٖٹٖيْ	unieţee	unietee	unieţee				[Atiya said:] He brought me a letter,
3136	296	d	2	أَلِيَسٗمٖيَ	aliyasomeya	aliyasomeya	aliyasomeya		This is anachronistic, in that this would not have been done at the time the story is supposed to take place.  The reference is to the practice of reading the Qur'an and then breathing into the water -- the efficacy of the verses is piously considered to transfer into the water.		
3139	297	b	1	سِيَوٖزِ	siyawezi	siyawezi	siyawezi		She means \\Swa{chakula hakinishuki}, \\E{I have no heart for eating}.  If someone dies, he is buried the next day, and the women keen and lament all day and night.  They may not eat at all until after the burial.  People who are not close relatives of the deceased may make food and bring it secretly, encouraging the bereaved to eat, as if they were sick.		I cannot [take it], oh Fatima --
3145	297	d	1	رُوْحُ	rūḥu	ruhu	rūḥu		\\Swa{ruhu} = \\Swa{roho}.		and my soul wants to cry out.
3152	298	b	1	عَطِكَ	'aṭika	'atika	'aṭika				Atiya, the water is not something [to eat] --
3273	309	c	1	كَنْدَمَنَ	kanḏamana	kandamana	kanḏamana				and walked along with Zubayr
3281	310	b	1	نْدِپٗ	nḏipo	ndipo	nḏipo				it was then that he told [the story],
3293	311	c	1	نَ	na	na	na				and whoever reads [them]
3315	313	d	2	هُمُوَفِقِيَ	humuwafiqiya	humuwafiqiya	humuwafiqiya		These claims are somewhat overblown -- this is not a religious text.		
3321	314	c	1	أَوْ	aw	au	aw				and let the person try [it],
3323	314	c	3	نَجَرِبُ	najaribu	najaribu	najaribu		Emend to \\Swa{ajaribu}.		
3324	314	d	1	أَدَلِلِشٖ	aḏalilishe	adalilishe	aḏalilishe				that he may demonstrate its wisdom.
3325	314	d	2	وَصِيَ	waṣiya	wasiya	waṣiya		In other words, if the reader is doubtful that this is true, let him just try it.  See note to 157d.		
3326	315	a	1	نِمٖپٖنْدَ	nimepenḏa	nimependa	nimepenḏa				I have been pleased to recite it,
95	9	d	2	كُمْفُلِيَ	kumfuliya	kumfuliya	kumfulia				
451	44	a	2	نِمٖيَجِتِمُ	nimeyajiṯimu	nimeyajitimu	nimeyajiṯimu		The first part of the ballad, describing the \\Swa{mke wa siri}, and the resulting friction between Ali and Fatima, and its resolution, is now complete.  The next portion of the tale ("\\Swa{mengine}"), describing Ja'far's meeting with his father Ali, and its results, now begins.		
3309	313	a	2	هَتٗذَلِلِكَ	haṯodhalilika	hatodhalilika	haṯodhalilika		\\Swa{-dhalilika}, \\E{be humble, be humiliated, no agent specified}.		
2932	277	c	1	وَلَ	wala	wala	wala				but she did not realise
2942	278	b	2	فَقْصِيْرِ	faqṣı̄ri	faqsiri	faqṣı̄ri		\\Swa{-fanya taksiri}, \\E{put in the effort, do the needful}.  Note that the Swahili negative here corresponds to a positive in English.		
3086	291	d	2	أَجٖرَ	ajera	ajera	ajera		It is said: \\Swa{ukisema mambo mabaya, utapata madhambi kwa Mungu; ukisubiri, utapata malipo mazuri}, \\E{if you say irreligious things, God will judge you as having sinned; on the other hand, if you trust [in him], you will be well-rewarded}.		
3172	300	b	1	وَ	wa	wa	wa				and showed her [what to do] by exhortation.
3179	301	a	1	نَسِ	nasi	nasi	nasi				Then [Atiya] asked
\.


--
-- Name: jaafari_words_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kevin
--

SELECT pg_catalog.setval('jaafari_words_word_id_seq', 3336, true);


--
-- Name: jaafari_words_pk; Type: CONSTRAINT; Schema: public; Owner: kevin; Tablespace: 
--

ALTER TABLE ONLY jaafari_words
    ADD CONSTRAINT jaafari_words_pk PRIMARY KEY (word_id);


--
-- PostgreSQL database dump complete
--

