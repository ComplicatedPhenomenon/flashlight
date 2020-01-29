--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: following_relation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.following_relation (
    id integer NOT NULL,
    relation json NOT NULL
);


ALTER TABLE public.following_relation OWNER TO postgres;

--
-- Name: following_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.following_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.following_relation_id_seq OWNER TO postgres;

--
-- Name: following_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.following_relation_id_seq OWNED BY public.following_relation.id;


--
-- Name: following_relation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.following_relation ALTER COLUMN id SET DEFAULT nextval('public.following_relation_id_seq'::regclass);


--
-- Data for Name: following_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.following_relation (id, relation) FROM stdin;
1	{"name":"dr-guangtou","follow_whom":["jwuphysics","HerculesJack","duncandc","kadrlica","NGC4676","marius311","ylilan","xfangcosmo","kartheikiyer","weiguangcui","yyzhang","kstoreyf","1313e","inonchiu","MilesCranmer","kmzzhang","lgarrison","changhoonhahn","modichirag","deapplegate","aimalz","RobertLuptonTheGood","PaulPrice","TallJimbo","rearmstr","msimet","chihway","HSouch","msyriac","hywu","geoffcfchen","d80b2t","xinglunju","cmbant","extrsun","AlexaVillaume","Shiyin-Shen","tmcclintock","YoemanLeung","mjvakili","Grillard","yasharhezaveh","yanzastro","stacchella","nevencaplar","Jammy2211","dkirkby","lwymarie","myinxd","sowmyakth","joezuntz","agabrown","gnarayan","yzhenggit","yaoyuhan","gbernstein","beckermr","ruguan","j-dr","chengchengcode","yymao","feigewang","ewpeng","AstroJacobLi","yluo54301","jeff-regier","f-ardila","keflavich","richteague","zjzhang42","iancze","rodluger","karlan","Adaydl","LoveDaisy","jyshangguan","danielgruen","kareemelbadry","jltinker","caiz12","kbwestfall","rmandelb","sibirrer","granttremblay","jradavenport","moustakas","ekadofong","fred3m","liyropt","guillochon","noaodatalab-user","aileisun","alexieleauthaud","pmelchior","tingyuansen","wll745881210","asgr","taranu","HironaoMiyatake","pacargile"]}
2	{"name":"jwuphysics","follow_whom":["daveluo","editeodoro","lessw2020","dougalsutherland","gwgundersen","rkunnawa","seclark","jph00","eleanorlutz","stevans","adamamiller","astrofrog","jegpeek","jradavenport","changhoonhahn","jobovy","SpheMakh","taki0112","idia-pipelines","racheltho","ruthcfong","boada","ilaflott","emapple","dfm","adrn","mtyka","davidwhogg","jakevdp","dli"]}
3	{"name":"HerculesJack","follow_whom":["sukhdeep1989","sferraroastro","VMBoehm","slowdivePTG","EiffL","dr-guangtou","AstroJacobLi","Topaceminem","mingweima"]}
4	{"name":"duncandc","follow_whom":["ssamuroff","vcalderon2009","c-d-leonard","yymao","bsipocz","parejkoj","kevinhuangtan","mattgiguere","dfm","aphearin","npadmana"]}
5	{"name":"kadrlica","follow_whom":["glitterboots"]}
6	{"name":"NGC4676","follow_whom":["taranu","AstroJacobLi"]}
7	{"name":"marius311","follow_whom":[]}
8	{"name":"ylilan","follow_whom":[]}
9	{"name":"xfangcosmo","follow_whom":[]}
10	{"name":"kartheikiyer","follow_whom":["yymao","3b1b","artix41","rafaeleufrasio","JeyhanSK","nevencaplar","ACCarnall","emapple","paulgarias","christopherlovell","boada"]}
11	{"name":"weiguangcui","follow_whom":["ZhiyuZhang","the300-project","syazaizz","EdoardoCarlesi","spilipenko","ZhuXJ1"]}
12	{"name":"yyzhang","follow_whom":[]}
13	{"name":"kstoreyf","follow_whom":["mclaughlin6464","mehdirezaie","alexieleauthaud","mhuertascompany","EiffL","nesar","mwalmsley","d80b2t","adrn","andersdot","lgarrison","tmcclintock","aimalz","RuthAngus","rodluger","dfm","farr","jltinker","avanhatt","mimming","christopherlovell","davidwhogg","ieshghi"]}
14	{"name":"1313e","follow_whom":["kateharborne","Code-Bullet","abatten","astroduff","darrencroton","manodeep","smutch","qyx268"]}
15	{"name":"inonchiu","follow_whom":["shenwei356","rmurata","pmelchior","rsnemmen","mgckind","Samreay","SebastianBocquet","BogdanCiambur","hoiting","TallJimbo","vterron","rtobar","dr-guangtou","keflavich","pbrod","vacquaviva","esheldon","danielballan","sweverett","cristobal-sifon","jesford","suensummit","RuthAngus","drphilmarshall","rwesson","newville","jjhelmus","dpgettings","dfm","joergdietrich","rmjarvis","jiayiliu","steven-murray","astrofrog","rsuhada"]}
16	{"name":"MilesCranmer","follow_whom":["RexYing","bunelr","tkipf","cranmer","justinalsing","pmelchior","anassinator","nkhoit","andersdot","richardagalvez","wkerzendorf","atomoton","dfm","davidwhogg","JulienNGirard","tacaswell","rarchiba","jonathansick","profjsb","ewanbarr","benbarsdell","jaycedowell","altosaar","lgarrison","reidmcy","Baycken","Chopin96","brammool","AaronParsons","thoppe","scrooloose","gleitz","leighklotz","peterpark77","stevecroft","telegraphic","chitrangpatel","gumgl","jack-h","tpope","steve-ord","jeenriquez","siemion","ryanolson","yoshua","rainwoodman","mrafieir","legel","mburhanpurkar","o-smirnov"]}
17	{"name":"kmzzhang","follow_whom":["jorgemarpa"]}
18	{"name":"lgarrison","follow_whom":["eelregit","rainwoodman","bacook17","villrv","pmocz","joshspeagle","jdpopkin"]}
19	{"name":"changhoonhahn","follow_whom":["sferraroastro","pmelchior","bd-j","geohot","qmxp55","j-dr","zxzhai","EmmanuelSchaan","chihway","georgestein","aphearin","johannesulf","cconroy20","CullanHowlett","dr-guangtou","viajani","lindablot","Allium","Linc-tw","johannbrehmer","EiffL","justinalsing","parfa30","forero","meghaphone","aemerick","nye17","JohanComparat","msyriac","nickhand","ecastorina","adrn","moustakas","astrofrog","sbird","manodeep","andreufont","slosar","martinjameswhite","franciscovillaescusa","rainwoodman","fbeutler","ixkael","aimalz","dhuppenkothen","timahutchinson","jltinker","NBernat","geoffryan","rspeare"]}
20	{"name":"modichirag","follow_whom":["georgestein","EiffL","VMBoehm","ambrishrawat","bhorowitz","fbeutler"]}
21	{"name":"deapplegate","follow_whom":[]}
22	{"name":"aimalz","follow_whom":[]}
23	{"name":"RobertLuptonTheGood","follow_whom":[]}
24	{"name":"PaulPrice","follow_whom":[]}
25	{"name":"TallJimbo","follow_whom":[]}
26	{"name":"rearmstr","follow_whom":[]}
27	{"name":"msimet","follow_whom":[]}
28	{"name":"chihway","follow_whom":[]}
29	{"name":"HSouch","follow_whom":["chamkank","dr-guangtou"]}
30	{"name":"msyriac","follow_whom":["blakesherwin","RichardLitt","amaurea","aiolasimone","tskisner","keskitalo","humnaawan","rmjarvis","kmsmith137","adrn","yuanshuoastro","RobertLuptonTheGood","amanzotti","cmbant","davidwhogg","esheldon","slosar","dkirkby","nolta","EthanAnderes","torvalds"]}
31	{"name":"hywu","follow_whom":[]}
32	{"name":"geoffcfchen","follow_whom":["cdfassnacht","dfm","pipidog","drphilmarshall","sibirrer"]}
33	{"name":"d80b2t","follow_whom":["JDTimlin","cdeil","amueller","davidwhogg","tinapeters","fbeutler","martinjameswhite","naosuzuki"]}
34	{"name":"xinglunju","follow_whom":["ShanghuoLi","borntoleave","akleroy","ZhiyuZhang","yangcht","esoPanda","dr-guangtou"]}
35	{"name":"cmbant","follow_whom":[]}
36	{"name":"extrsun","follow_whom":["astrobrent","dr-guangtou","niu541412","ZhiyuZhang","zhengfaxiang","jeremysanders","zhuww","mojombo"]}
37	{"name":"AlexaVillaume","follow_whom":["NathanSandford","kbwestfall","cconroy20","bd-j","joe07734","acencini"]}
38	{"name":"Shiyin-Shen","follow_whom":[]}
39	{"name":"tmcclintock","follow_whom":["TylerL314","dwadden","dribbleanalytics","iamjarret","robertmartin8","dafer45","cmetz20","rafaelgm9","marinadunn","belaa","jbkalmbach","dougalsutherland","pmelchior","wagoner47","bhudnell1240","pierfied","jammcc","matthewkirby"]}
40	{"name":"YoemanLeung","follow_whom":["dr-guangtou","onouems"]}
158	{"name":"spilipenko","follow_whom":[]}
41	{"name":"mjvakili","follow_whom":["OlafenwaMoses","saizhang1","dr-guangtou","changhoonhahn","esheldon","geoffryan","AmirooR","kilianbreathnach","dfm","davidwhogg"]}
42	{"name":"Grillard","follow_whom":[]}
43	{"name":"yasharhezaveh","follow_whom":[]}
44	{"name":"yanzastro","follow_whom":["astrojysun","TAOYi92"]}
45	{"name":"stacchella","follow_whom":["rohannaidu","nevencaplar"]}
46	{"name":"nevencaplar","follow_whom":["sibirrer","jmeyers314","farr","dfm","jakevdp","stacchella","PaulPrice","kartheikiyer","adrn","msyriac"]}
47	{"name":"Jammy2211","follow_whom":["panchuzhong","rhayes777","sibirrer","tcollett","drphilmarshall","owertz","JingZhaoQi","AJessWilliams","linan7788626","syrte","yangcht"]}
48	{"name":"dkirkby","follow_whom":[]}
49	{"name":"lwymarie","follow_whom":["asdsteven","csyhuang","JianiDing","profxj","cwfinn","snasab","honleunglee","qian-yang","Fmajor","pochoi"]}
50	{"name":"myinxd","follow_whom":["AlexeyAB","zuochongyan","foolwood","dr-guangtou","rfthusn","krzjoa","Annihil","ZixiaoShen","xiaohu2015","mayu-ot","zellwk","syl20bnr","Bunlong","iSuperMostafa","opengineer","wangshub","jrmarino","ChenxiSSS","dczheng","zzh0616","liweitianux"]}
51	{"name":"sowmyakth","follow_whom":[]}
52	{"name":"joezuntz","follow_whom":[]}
53	{"name":"agabrown","follow_whom":[]}
54	{"name":"gnarayan","follow_whom":["griffin-h","jcpunk","pgris","kadrlica","raphaelshirley","kboone","QNWang93","asfriedman","ArturoAvelino","astrojuan","CambridgeAstroStat","stevet40","rrgupta","alexandergagliano","mgckind","stefco","genghisken","Mondrik","adamamiller","bapoczos","iancze","acalamid","JohannesBuchner","cstubens","bsipocz","ryanjmccall","gully","dgodinez77","johnh2o2","aboucaud","connolly","jobovy","saurabhwjha","kponder","lgalbany","emilleishida","damianavila","geychaner","aimalz","Andromedanita","mi-dai","juramaga","tallamjr","DoctorLobster","RickKessler","mdwarfgeek","tmatheson","camipacifici","reneehlozek","cnsetzer"]}
55	{"name":"yzhenggit","follow_whom":[]}
56	{"name":"yaoyuhan","follow_whom":["guillochon","profjsb","mcoughlin","EranOfek","dmitryduev","kburdge","dr-guangtou","igorandreoni","rrubenza","astrobarn","MickaelRigault","dannygoldstein","annayqho","adamamiller","scizen9","dnkasen","jakevdp","ebellm","hypergravity"]}
57	{"name":"gbernstein","follow_whom":[]}
58	{"name":"beckermr","follow_whom":[]}
59	{"name":"ruguan","follow_whom":["bd-j","Leoisfool","Madimo","Kristall-WangShiwei","LorenzoZhu","lwymarie","AstroJacobLi","alexieleauthaud","dr-guangtou","ShimingGu","yluo54301","DannyFirmin"]}
60	{"name":"j-dr","follow_whom":["ataber","tmcclintock","mbaumer","cpadavis","wmorning","nkurinsky","fderose","yymao","mclaughlin6464","billderose-zz","dannygoldstein"]}
61	{"name":"chengchengcode","follow_whom":["unixil","gbrammer","liyropt","ShuxuYi","akeley98","PBarmby","astronomeralex","moustakas","yangcht","dsx1986","danustc","Yeqzids","ulirgs","dr-guangtou","RapidLzj"]}
62	{"name":"yymao","follow_whom":["chto","leofang","EiffL","tjnelson5","duncandc","leomao","j-dr","marlageha","rhw","beckermr","drphilmarshall","saga-survey"]}
63	{"name":"feigewang","follow_whom":["yangcht","TimothyADavis","jinyiY"]}
64	{"name":"ewpeng","follow_whom":["yangcht","gully"]}
65	{"name":"AstroJacobLi","follow_whom":["HerculesJack","kadrlica","Fmajor","davidharvey1986","dkirkby","sejaldua","sfarrens","astrojysun","ruguan","yyzhang","rudolffu","aphearin","YipZLF","wenweili","cbwang2016","adamamiller","kmzzhang","wangyasai","taranu","robertoabraham","NGC4676","emilleishida","EiffL","jcjohnson","dmitryduev","adrn","jobovy","Yeqzids","yuma-m","Protesticon","XinmiaoZhao","lwymarie","cconroy20","bacook17","stevenjoezhang","zhang-wenjun","johnnygreco","yymao","dfm","KindXiaoming","PaulPrice","goodfeli","AtomyChan","slowdivePTG","gnarayan","bd-j","moustakas","shiaki","liuxx479","davidwhogg"]}
66	{"name":"yluo54301","follow_whom":["egentry","sukhdeep1989","dr-guangtou","alexieleauthaud","ruguan"]}
67	{"name":"jeff-regier","follow_whom":[]}
68	{"name":"f-ardila","follow_whom":["sarikj93","ndmiles"]}
69	{"name":"keflavich","follow_whom":["trhunter","sarikj93","segasai","joshmachado","jfrob27","cleevesli","ryanaloomis","bmcguir2","mcyc","ptorrey","mikegrudic","will-henney","GiantMolecularCloud","Szimcha","jaotter","mccbc","AstroBrandt","tanmoylaskar","TimothyADavis","low-sky","jfoster17","egstrom","jimdale","stuartsale","jrka","fjdu","indebetouw","mtazzari","juliantaylor","jmasters","cbattersby","akleroy","ericmandel","slowe","kevinjardine","leeeratson","jluastro","jasonglenn999","e-koch","thriveth","autocorr","nden","willettk","mgalloy","jakevdp","Carreau","alissapajer","Kashomon","eteq","astrofrog"]}
70	{"name":"richteague","follow_whom":["FredDeCeuster","birnstiel","claw-astro","dlmatra","seanandrews","megbedell","aragilar","rodluger","nickalaskreynolds","ryanaloomis","mtazzari","dfm","iancze"]}
71	{"name":"zjzhang42","follow_whom":["rsiverd","benmontet","dr-guangtou","duisiya","taberger","eteq","dfm","kelle","yanxiali","miteshgoplani","liyenhsu","davidwhogg","iancze","shuang92","cubeton","gully"]}
72	{"name":"iancze","follow_whom":["claw-astro","dlmatra","FredDeCeuster","skgrunblatt","afeinstein20","urvashirau","mansdell","benmontet","ryanaloomis","mileslucas","tofflemire","zjzhang42","gnarayan","jbirky","dsavransky","barentsen","semaphoreP","mtazzari","richteague","awmann","zkbt","wmorning","garrettsomers","bmacastro","megbedell","rodluger","kstassun","farr","aarondotter","kgullikson88","long-feng","moustakas","jpinedaf","augustfly","dfm","cconroy20","gully","RuthAngus","wmjac","tripathi","adrn","eford","davidwhogg","akainic","adampalay","jfoster17","seanandrews","giffordw","jobovy","pkgw"]}
73	{"name":"rodluger","follow_whom":["benmontet"]}
74	{"name":"karlan","follow_whom":["legolason","jkadowaki","jngaravitoc","Sportsfan77777","jlevy","emptymalei","cathysia","taldcroft","marguerite"]}
75	{"name":"Adaydl","follow_whom":["BenjiKCF","kevin28520","KaimingHe","benanne","MorvanZhou"]}
76	{"name":"LoveDaisy","follow_whom":["pengyuwei","dr-guangtou","huiyiqun","MAVProxyUser"]}
77	{"name":"jyshangguan","follow_whom":["mingyangzhuang","bd-j","gully","lizhaoyuSHAO","luis-ho","GHpku","TitaniumDioxide","dr-guangtou","yulin-zhao","Fmajor"]}
78	{"name":"danielgruen","follow_whom":[]}
79	{"name":"kareemelbadry","follow_whom":[]}
80	{"name":"jltinker","follow_whom":[]}
81	{"name":"caiz12","follow_whom":["LittleLin1999","iprafols","HuaizheXu","siriobelli","zsw6666","aymericdamien","zhitaozhang","akeley98","xiaohuifan-az","esheldon","profxj"]}
82	{"name":"kbwestfall","follow_whom":[]}
159	{"name":"ZhuXJ1","follow_whom":[]}
242	{"name":"steve-ord","follow_whom":["baseband-geek","robotopia"]}
83	{"name":"rmandelb","follow_whom":["sarahbridle","joergdietrich","gbernstein","barnabytprowe","PaulPrice","TallJimbo","rmjarvis","joezuntz"]}
84	{"name":"sibirrer","follow_whom":["dangilman","ajshajib","martin-millon","aymgal","ylilan","JimenaGonzalez","jiwoncpark"]}
85	{"name":"granttremblay","follow_whom":["facero","ericmandel","taldcroft","dhuppenkothen","ddevault","ngoldbaum","ramalho","adrn","hannorein","altercation","sosey","torvalds","onekiloparsec","dominiceggerman","jzuhone","jeremysanders","astrofrog","eteq","scottransom","ebressert","keflavich"]}
86	{"name":"jradavenport","follow_whom":["kboone","petiay","jbirky","spencerw","lupitatovar","dflemin3","tagordon","shbhuk","KosukeNamekata","smoh","squisty","stephenportillo","courtk32","henry-ngo","jsobeck","tzdwi","ZoeHMC","jspineda","sarallelagram","MelissaGraham","awmann","ctheissen","stephtdouglas","ekaterinailin","benjaminpope","mpuighol","jadilia","dhuppenkothen","mscoggs","connolly","horvatn","ZacheryLaycock","andersdot","davidkipping","ernewton","benmontet","Nick-Saether","philip-muirhead","krislars","ebellm","dylanpmorgan","jlustigy","eteq","RileyWClarke","cornetj2","scfleming","hmchristenson","rhiever","weaverba137","austin-boeck","migueldvb","afkowalski","rapidsnow","libcce","transientlunatic","nhuntwalker","philrosenfield","lcjohnso","willettk","lmwalkowicz","alex-parker","kweis","ivezic","patti","ericjhilton","keatonb","adrn","barentsen","RuthAngus","mrtommyb","dfm","tdwilkinson","solontoi","kevincovey","crawfordsm","davidwhogg","dstndstn","pkgw","kelle","mjuric","adleorocks","sjschmidt","mrawls","augustfly","jbochanski","lesliehebb","wlandsman","acbecker","jonathansick","mbostock","jlurie","darenkeck","mapsam","mgalloy","bmorris3","ethankruse","jakevdp","mfouesneau","ChrisBeaumont","lauralwatkins"]}
87	{"name":"moustakas","follow_whom":["dstndstn","noaodatalab-user","dkirkby"]}
88	{"name":"ekadofong","follow_whom":[]}
89	{"name":"fred3m","follow_whom":[]}
90	{"name":"liyropt","follow_whom":["dr-guangtou","svdataman","chengchengcode"]}
91	{"name":"guillochon","follow_whom":["pcowpert","shangfei","duetosymmetry","joshspeagle","rtfisher","profxj","bpholden","bmockler","manolis07gr","giordano","hannorein","jparrent","lzkelley","edengirma"]}
92	{"name":"noaodatalab-user","follow_whom":[]}
93	{"name":"aileisun","follow_whom":["dr-guangtou"]}
94	{"name":"alexieleauthaud","follow_whom":[]}
95	{"name":"pmelchior","follow_whom":[]}
96	{"name":"tingyuansen","follow_whom":[]}
97	{"name":"wll745881210","follow_whom":[]}
98	{"name":"asgr","follow_whom":["rhyspoulton","obreschkow","steven-murray","rtobar","taranu","malpaslan","Colkadome","AngusWright"]}
99	{"name":"taranu","follow_whom":["asgr"]}
100	{"name":"HironaoMiyatake","follow_whom":["dstndstn","ShingoHattori"]}
101	{"name":"pacargile","follow_whom":["tarraneh","rudyphd","joshspeagle","bd-j"]}
102	{"name":"daveluo","follow_whom":[]}
103	{"name":"editeodoro","follow_whom":["jwuphysics","bek0s","giulianoiorio","naomimg","lposti","Punzo","ntessore"]}
104	{"name":"lessw2020","follow_whom":["oguiza"]}
105	{"name":"dougalsutherland","follow_whom":["kevin-w-li","wilocw","noukoudashisoup","MichaelArbel","shriphani","arthurgretton","wittawatj","karlnapf","mbinkowski","hcllaw","jammcc","lambday","yuxiangw","tmfs10","DavidKurokawa","escesare","benbo","tmcclintock","bkj","wgmueller1","hafen","bwlewis","junieroliva","JosephCottam","tetradeca7tope","akshaykr","tzukuoh","twongCMU","rmgarnett","EbTech","schimmy","mhlinder","ahefny","avelingker","kaneplusplus","jamesplease","astromme","inlinestyle","nfelt","jgluck","dwoos","durka","linkinpark342"]}
106	{"name":"gwgundersen","follow_whom":["alexhsamuel","kolodny","vrrs","ihodes","bgun"]}
107	{"name":"rkunnawa","follow_whom":["blackcathj","adverma98","lukedeo","twiecki","eriklindernoren","mverwe","appeltel","richard-cms","cfmcginn"]}
108	{"name":"seclark","follow_whom":["astrosica","LLi1996","jcolinhill"]}
109	{"name":"jph00","follow_whom":[]}
110	{"name":"eleanorlutz","follow_whom":["cyanharlow","nbremer","jakevdp","ericfischer","hakabar","johnalexandergreene","inconvergent","defaultnamehere"]}
111	{"name":"stevans","follow_whom":["djfarrow","cfroning","phantomamoeba","BrianaLane","wpb-astro","grzeimann","afitts","jwuphysics","keatonb","davidwhogg","jjardel","ExLupi","jmsilverman","astrosmith","randirl17","jonathansick","gbrammer","hummel","smfactor","kgullikson88","keflavich","gully","stefano-meschiari"]}
112	{"name":"adamamiller","follow_whom":[]}
113	{"name":"astrofrog","follow_whom":["JazzTap","mengksun6","matthewfeickert","GenevieveBuckley","fran6w","ivanov","vasoto","eblur","hpiwowar","abigailStev","rjsmethurst","epistemographer","joeharr4","eztean","koepferl","jehturner","mperrin","crawfordsm","giocalitri","AndrewRook","jiffyclub","mservillat","davidwhogg","embray","soffner","kapadia","hamogu","taldcroft","eteq","slowe","phn","ebressert","augustfly","skendrew","soylentdeen","stuartlynn","brefsdal","carolune","dotAstronomy","leejjoon","lbjay","rahuldave","mdboom","arfon"]}
114	{"name":"jegpeek","follow_whom":["seclark","arfon","fedhere","dfm","ahwkuepper","ChrisBeaumont","adrn"]}
115	{"name":"jobovy","follow_whom":["chloe-mt-cheng","nstarman","victorcchan","jamesmlane","teuben","svenbuder","morganb-phys","webbjj","jmackereth","henrysky","cranmer","jackhong6","ixkael","kawatadaisuke","pmelchior","JASHunt","npricejones","uelipen","mhvk","Andromedanita","adrn","DanielAndreasen","bsesar","HWRix","fjaellet","mkness","ahwkuepper","mdipompe","wilmatrick","andycasey","jcbird","schlafly","agabrown","apontzen","stinsong4100","rokroskar","esheldon","sbird","ritabanc","mjuric","tingyuansen","dsspiegel","drphilmarshall","davidwhogg","dfm","hannorein"]}
116	{"name":"SpheMakh","follow_whom":["gijzelaerr"]}
117	{"name":"taki0112","follow_whom":["Ha0Tang","SooDevv","akanimax","shaoanlu","sagiebenaim","CyberZHG","manicman1999","sgrvinod","znxlwm","HelenMao","zzsza","switchablenorms","lzhbrian","titu1994","awesome-davian","utilForever","taesungp","yulunzhang","owang","yeonun","Slava","shinseung428","shervinea","yenchenlin","RubensZimbres","AlexiaJM","LMescheder","moono","JaeYeopHan","LynnHo","lllyasviel","togheppi","zhangqianhui","tkarras","eriklindernoren","wiseodd","xunhuang1995","goodfeli","mingyuliutw","tangzhenyu","leehomyc","junyanz","digshock","khanrc","golbin","junbeomlee","nakosung","andabi","jeongkyeong","code-terminator"]}
118	{"name":"idia-pipelines","follow_whom":[]}
119	{"name":"racheltho","follow_whom":[]}
120	{"name":"ruthcfong","follow_whom":["chrirupp","rgeirhos","wielandbrendel","TengdaHan","anguyen8","dosovits","lenck","jamt9000","jotaf98","aravindhm","albanie","davidbau","metalbubble","vedaldi","davidcox"]}
157	{"name":"EdoardoCarlesi","follow_whom":["markusweimer","yanneta","aobr","weiguangcui","spilipenko","forero","StefGeco","miguelzuma"]}
121	{"name":"boada","follow_whom":["yymao","mikeckennedy","humnaawan","wkerzendorf","elinor-lev","jwuphysics","cristobal-sifon","chasecoop","arfon","ryanoelkers","pybites","chriswhong","rainsworth","adrn","rquadri","pddoze","menanteau","ixkael","holman","gnatman","davidwhogg","bryansandw","trentschlar","jakevdp","crawfordsm"]}
122	{"name":"ilaflott","follow_whom":["adverma98","jwuphysics","karpur-shukla","joelmazer","emapple","zhenhu","obaron","jrcastle","dmb2","yenjie","kurtejung","richard-cms","mandrenguyen","yetkinyilmaz","jcoulter120","xadflores","aparikh0694","cfmcginn","rkunnawa"]}
123	{"name":"emapple","follow_whom":["NikhilTilak","willowbk","kdettman","kartheikiyer","humnaawan","RaySSharma","jwuphysics","ilaflott"]}
124	{"name":"dfm","follow_whom":["iancze","dhuppenkothen","danxhuber","ahwkuepper","michaelbrooks","houfengji","HWRix","aprsa","larogers","galmatijevic","RuthAngus","mrtommyb","benmontet","pdbaines","cranmer","eford","dweisz","svenkreiss","chris-rudmin","Allium","sjoertvv","slowe","kapadia","barentsen","rossfadely","fierrozd","eggplantbren","jsilvester","dstndstn","jobovy","adgaudio","drphilmarshall","davidwhogg","adrn","williamsmj","RuiPereira","jonathansick","phn","roban","j2labs","mynameisfiber","tpope"]}
125	{"name":"adrn","follow_whom":["kstoreyf","destrys","smoh","lglattly","megbedell","jobovy","galaxyumi","astrosica","marlageha","kevincovey","nevencaplar","andersdot","jls713","RuthAngus","aceilers","paulrozdeba","sfeeney","pbvarga1","thejunglejane","msyriac","camillescott","jegpeek","eteq","andycasey","sapearson","ChrisBeaumont","ahwkuepper","smriazati","stephtdouglas","seclark","YongAstro","demitri","jaredhiller","davidwhogg","dfm","andrewlott","laurennc"]}
126	{"name":"mtyka","follow_whom":["koji","dribnet","nagadomi","jcjohnson"]}
127	{"name":"davidwhogg","follow_whom":["lilyling27","farr","kstoreyf","aceilers","jbirky","benjaminpope","dhuppenkothen","abonaca","megbedell","andycasey","kbarbary","mkness","aimalz","so-hattori","brittafiore","jvc2688","marlageha","jeffreymei","RuthAngus","HWRix","demitri","michaelhirsch","barentsen","astrorobyn","pkgw","mjuric","lmoustakas","ChrisBeaumont","dweisz","lcjohnso","mfouesneau","karllark","FritzZwicky","sjoertvv","slowe","julywater","Allium","bjfultn","eggplantbren","mykytyn","ekta1224","joeyrichar","jeffgertler","roryholmes","rossfadely","dsspiegel","dstndstn","jobovy","drphilmarshall","adrn"]}
128	{"name":"jakevdp","follow_whom":["ellisonbg","jheer","kanitw","domoritz","ogrisel","GaelVaroquaux"]}
129	{"name":"dli","follow_whom":[]}
130	{"name":"sukhdeep1989","follow_whom":[]}
131	{"name":"sferraroastro","follow_whom":["akrolewski","eelregit","HerculesJack","sukhdeep1989","modichirag","VMBoehm","rainwoodman","georgestein","EmmanuelSchaan","EiffL","msyriac","changhoonhahn"]}
132	{"name":"VMBoehm","follow_whom":["HerculesJack","cmbant","gpapamak","honamnguyen","ybh0822","modichirag","rainwoodman"]}
133	{"name":"slowdivePTG","follow_whom":["HerculesJack","zhengrong-li","XinmiaoZhao","XFengwei","LittleLin1999","yaoyuhan","dmitryduev","Qingchuan-Ma","Protesticon","AstroJacobLi"]}
134	{"name":"EiffL","follow_whom":["sferraroastro","zaccharieramzi","HerculesJack","wkerzendorf","sukhdeep1989","sibirrer","EthanAnderes","adrn","dr-guangtou","msyriac","stefanv","aferte","JulienPeloton","davidreiman","kmzzhang","jiwoncpark","CosmoMatt","amirgholami","gpapamak","aphearin","EmmanuelSchaan","changhoonhahn","rainwoodman","georgestein","VMBoehm","JohSchoeneberg","bhorowitz","mwalmsley","tingyuansen","johannbrehmer","duncandc","maho3","brantr","rmandelb","humnaawan","NiallJeffrey","riblidezso","cbottrell","kstoreyf","tycheng-sunny","aimalz","modichirag","erichson","tomcharnock","avirukt","aboucaud","andersjohanandreassen","hsnee","austinpeel","WentaoLuo"]}
135	{"name":"Topaceminem","follow_whom":["mingweima","HerculesJack"]}
136	{"name":"mingweima","follow_whom":["Topaceminem","Xihan001","HerculesJack"]}
137	{"name":"ssamuroff","follow_whom":[]}
138	{"name":"vcalderon2009","follow_whom":["mattwthompson","rmatsum836","kstoreyf","jessespencersmith","amritrajpatra","mrdragonbear","jessicayung","MaryLvV","dtamayo","amueller","brack228","bacook17","jradavenport","BenDavidAaron","WillKoehrsen","guyroyse","maho3","Raab70","jacobic","megbedell","matthewturk","nstrayer","bkeepers","dr-guangtou","lgarrison","adamamiller","johannesulf","mjuric","mrawls","Joefdez","dalya","MilesCranmer","exowanderer","barentsen","jegpeek","giganano","malpaslan","jamiekin","benmontet","bgalgano","dhuppenkothen","rainwoodman","ross-oreto","christasich","jobovy","Angelo1211","kbrady","srush","jonathan-g","pllim"]}
139	{"name":"c-d-leonard","follow_whom":[]}
140	{"name":"bsipocz","follow_whom":[]}
141	{"name":"parejkoj","follow_whom":["demitri","saga-survey","npadmana"]}
142	{"name":"kevinhuangtan","follow_whom":["mhw32","albertshin"]}
143	{"name":"mattgiguere","follow_whom":[]}
144	{"name":"aphearin","follow_whom":["kilianbreathnach"]}
145	{"name":"npadmana","follow_whom":[]}
146	{"name":"glitterboots","follow_whom":[]}
147	{"name":"3b1b","follow_whom":[]}
148	{"name":"artix41","follow_whom":["desireevl","paintception","AWehenkel","pablodecm","jostosh","bbdamodaran","mratsim","EKami","azizpour","deep0learning","ZhangJUJU","GuillaumeLe","gbogopolsky","AntoinePlumerault","kilianFatras","rginestou"]}
149	{"name":"rafaeleufrasio","follow_whom":["ACCarnall","kartheikiyer","cconroy20","bd-j","jrleja"]}
150	{"name":"JeyhanSK","follow_whom":["kartheikiyer","dalekocevski","AgentM-GEG","gsnyder206","StewardObservatory","christianready"]}
151	{"name":"ACCarnall","follow_whom":["zpace","wpb-astro","samwalker2312","stephenmwilkins","cylammarco","rcoch","rohitk-10","BrettSalmon","joezuntz","jrleja","bd-j","ciaran-fairhurst","kartheikiyer","J-Yellen","astrofrog","GabrielaCR","Morisset","bpfm","46bit"]}
152	{"name":"paulgarias","follow_whom":["kartheikiyer","brockpalen","neuralvis"]}
153	{"name":"christopherlovell","follow_whom":["dnarayanan","dnelson86","duncandc","jrleja","dr-guangtou","arfon","raphaelshirley","gkhullar","ryanhausen","camipacifici","llSourcell","dalya","ciaran-fairhurst","aswinpvijayan","jkk32","davidwhogg","rjsmethurst","ACCarnall","JBorrow","ProfPAThomas","davidparks21","profxj","cconroy20","petercamps","kartheikiyer","pdh21","nell-byler","sbird","adrn","jchelly","taldcroft","eteq","kelle","zpenoyre","Migelo","rmjarvis","twiecki","kstoreyf","stephenmwilkins","genekogan","timbl","emilyinamillion","RuthAngus","alejandrobll","mdelorme","ladsantos","sekhansen","evelinag","astrofrog","ProfessorBrunner"]}
154	{"name":"ZhiyuZhang","follow_whom":["weiguangcui","leejjoon","ahzonoozi","syrte","dr-guangtou","gongyan2444","boxcwang","yxlinaqua","SihanJiao","sbailey","Fmajor","jrka","MalcolmCurrie","HaoChen-ast","Jiangxuejian","xinglunju","yangcht"]}
155	{"name":"the300-project","follow_whom":[]}
156	{"name":"syazaizz","follow_whom":["weiguangcui","IevaPak"]}
160	{"name":"mclaughlin6464","follow_whom":["janelleshane","twhit223","mbaumer","whittlbc","yymao","j-dr","cpadavis","rthompsonj","mbostock","harshilkamdar","ProfessorBrunner"]}
161	{"name":"mehdirezaie","follow_whom":["kstoreyf","Samreay","jacobic","Yasmin69801","seansicheng","bhishanpdl","RKPandit","jcburgad","LarousseKhosravi","RezaKatebi","kennethreitz","belaa","Ashlou","ashleyjross","manodeep","rainwoodman","moustakas","zdplayground","tskisner","KiarashS","sheejong","esheldon","dstndstn"]}
162	{"name":"mhuertascompany","follow_whom":[]}
163	{"name":"nesar","follow_whom":["mwalmsley","changhoonhahn","kstoreyf","mlucey","tingyuansen","cguilloteau","xinliu4","sowmyakth","patricialarsen","sinandeger","beckermr","dkorytov","jhollowed","bnord","SebastianBocquet","aphearin","vvinuv","dleebrown","YWCosmology","jhidding"]}
164	{"name":"mwalmsley","follow_whom":["dr-guangtou","d80b2t","scottransom","kmsmith137","SaulAryehKohn","gvanhorn38","noahmalmed","ericagol","dfm","yaringal","ADThomas-astro","NatAdAstra","daniel-muthukrishna","jakevdp","eteq","boada","samvaughan","lsgos","Jammy2211","STSpencer","sandorkruk","chrislintott","AlvaroMenduina","OxfordSciCos","ArunAniyan","guille-c","PmasonFF","mpaw86","demitri","dbouquin","nmearl","bmorris3","marco-willi","lfortson","vrooje","rjsmethurst","melaniebeck","karenlmasters","CKrawczyk"]}
165	{"name":"andersdot","follow_whom":[]}
166	{"name":"RuthAngus","follow_whom":["smoh","adrn","davidkipping","eggplantbren","timothydmorton","sanchisojeda","benmontet","kbarbary","dhuppenkothen","mosb","barentsen","FlorianTilquin","ianangus","davidwhogg","jobarstow","sjrob","nealegibson","hpparvi","sophiehecht","EdGillen","saigrain","tomevans","dfm"]}
167	{"name":"farr","follow_whom":["timothydmorton"]}
168	{"name":"avanhatt","follow_whom":["sampsyo","rachitnigam","kstoreyf"]}
169	{"name":"mimming","follow_whom":[]}
170	{"name":"ieshghi","follow_whom":["kilianbreathnach","VianneyRousset","kstoreyf","davidwhogg","gnwong","AntoninRousset"]}
171	{"name":"kateharborne","follow_whom":["manodeep","abatten","bazkiaei"]}
172	{"name":"Code-Bullet","follow_whom":[]}
173	{"name":"abatten","follow_whom":["rdzudzar","davidgardenier","gannonjs","respiewak","robbassett","harley-wood-school","ebpetroff","lspitler","telegraphic","sebastianocantalupo","1313e","aaorsi","kateharborne","AstronomerAmber","Grace-Lawrence","simongoode","ellawang44","franciscovillaescusa","jacobseiler","skendrew","manodeep","sarawebb","nell-byler","3b1b","certik","smutch","qyx268","brittonsmith","sbird","wtgee","astroduff","tiffyday","aragilar","arvhug"]}
174	{"name":"astroduff","follow_whom":["skendrew","brittonsmith","stinsong4100","abatten","christianready"]}
175	{"name":"darrencroton","follow_whom":["manodeep","gshattow","smutch","gbpoole","maxbernyk","arhstevens","furious-luke","chiaratonini","tgarel"]}
176	{"name":"manodeep","follow_whom":["dhuppenkothen","WojciechMula","yochannah","GeorginaRae","bsipocz","pllim","sunainapai","gbeltzmo","langmm","lpereira","Maratyszcza","hfp","jpiscionere","ljdursi","twiecki","beckermr"]}
177	{"name":"smutch","follow_whom":["amanchokshi","qyx268","yqiuu","BradGreig","doctorcbpower","annehutter","jakevdp","tpope","junegunn","justinmk","romainl","cosmo-ethz","gbpoole","darrencroton","furious-luke"]}
178	{"name":"qyx268","follow_whom":[]}
179	{"name":"shenwei356","follow_whom":["natir","hcdenbakker","karel-brinda","jltsiren","cdarby","chhylp123","linsalrob","rrwick","clauswilke","holtjma","fanhuan","dparks1134","dgryski","bsipos","ondovb","cjain7","dtolnay","gmarcais","Malfoy","xiongxu","dnbaker","benbjohnson","kloetzl","fbreitwieser","ekzhu","rchikhi","lemire","zhenjl","johnlees","codechenx","bovee","glycerine","dkoslicki","prashantpandey","jakevdp","xtaci","jteutenberg","will-rowe","sigven","HouzuoGuo","seiflotfy","lmmx","clintval","davyxu","jokergoo","thomasp85","wdecoster","chrisquince","billzt","rafalab","marianogappa","wckdouglas","wchnicholas","ewels","fenghen360","disintegration","mw55309","emepyc","betatim","carbocation","mrocklin","Code-Hex","nicolaprezza","tidwall","mateidavid","mikelove","sidneymbell","trvrb","jameshadfield","jackywu","alexpreynolds","rozovr","salzberg","sethgrid","quwubin","pditommaso","jeffreybarrick","camillescott","standage","mitchellh","penglbio","aquaskyline","BenLangmead","attractivechaos","hyper0x","mattn","mhausenblas","lonng","tmc","lomereiter","walaj","jkh1","bgruening","baimingze","lakhujanivijay","alexbowe","rakyll","bbushnell","davecheney","Microbiology","johanneskoester","daler","crazyhottommy","luizirber","johnkerl","rsc","snayfach","valyala","lukechampine","tomkinsc","sjackman","lileiting","pmenzel","dariober","rob-p","dpryan79","ryuzheng","joefitzgerald","sfchen","leipzig","mzimmerman","yarden","bioinformatist","robpike","ryanlayer","ocxtal","slowkow","lexnederbragt","audy","infphilo","jondegenhardt","CTLife","terrytangyuan","qyuhen","xiaojay","rossant","fogleman","manucorporat","dustin","tylertreat","gahoo","tqchen","sunbjt","hadley","cznic","blahah","chrislusf","gosuri","mholt","arq5x","samuell","richarddurbin","cboettig","jhcepas","tiagoantao","koadman","klauspost","coding4medicine","GregoryFaust","meren","BjornFJohansson","malachig","jonathaneisen","chdoig","Runsheng","sharpton","gangchen","peterjc","ndaniels","gmonce","jonathancrabtree","brentp","inodb","sebhtml","Puriney","ffrancis","indexofire","mdshw5","michaelbarton","ekg","ncw","tanghaibao","jamesruan","ogrisel","rasbt","voutcn","stephens999","jtleek","nfahlgren","baruchlubinsky","jameslz","marioroy","Przemol","jiarong","ncrna","torognes","mwaskom","olgabot","lpp1985","pmelsted"]}
180	{"name":"rmurata","follow_whom":["surhudm","benjaminpope","erykoff","jobovy","ixkael","davidwhogg"]}
181	{"name":"rsnemmen","follow_whom":["odemangeon","jcjohnson","zblz","pkestene","jantic","coolastro","dfm","jakevdp","evaneschneider","benshope","babrodtk","mchandra","smressle","jdolence","brryan","dhuppenkothen","cfgammie","rndsrc","michaeloriordan","atchekho","pseudotensor","eegroopm","trevisanj","danmoser","kialio","brandonckelly","sabrinacales","sixtenbe","eteq","taldcroft","ebellm","crawfordsm","gabraganca","davidwhogg","jonathansick","sjoertvv","augustfly","roban"]}
182	{"name":"mgckind","follow_whom":[]}
183	{"name":"Samreay","follow_whom":["caitlinadams","fipanther","conor-oneill","nataliaeire"]}
184	{"name":"SebastianBocquet","follow_whom":[]}
185	{"name":"BogdanCiambur","follow_whom":[]}
186	{"name":"hoiting","follow_whom":[]}
187	{"name":"vterron","follow_whom":["dokeeffe","pablogsal","jkoshy"]}
188	{"name":"rtobar","follow_whom":[]}
189	{"name":"pbrod","follow_whom":[]}
190	{"name":"vacquaviva","follow_whom":[]}
191	{"name":"esheldon","follow_whom":[]}
192	{"name":"danielballan","follow_whom":["meifeng","ambergman","murphyofglad","nickrsan","peterfpeterson","stuartcampbell","stuwilkins","rmcgibbo","kthyng","bryevdv","msarahan","bsschuster","RebeccaWPerry","markottaviani","stefanbyrdkrueger","DLu","maxdeliso"]}
193	{"name":"sweverett","follow_whom":["bdice","brendan-k-wells","devonhollowood","mattkwiecien"]}
194	{"name":"cristobal-sifon","follow_whom":[]}
195	{"name":"jesford","follow_whom":[]}
196	{"name":"suensummit","follow_whom":["YugeTen","Zoulama","lablaco-develop","lablaco-aminmahboubi","mironoart","circularfashion","DiegoUsaiUK","dragen1860","jaredclin","Vonng","ying-zhang","hadoopsubmarine","ept","MuTsunTsai","stripathy","Eric-Wallace","Droidtown","n-riesco","davidcpage","tuxu","kokes","shekhargulati","ranahanocka","williamFalcon","jonbcampos","jamalex","kjk","phoenix104104","DmitryUlyanov","ButTaiwan","juliangehring","ncehk2019","amirbar","HelloMina001","pjreddie","JeffBezanson","M157q","danielfrg","shakedzy","zergtant","stefanprodan","zhongjiajie","dmateusp","talegari","danielvdende","Jutho","labspacegit","lanma","ajbosco","feng-tao","dimberman","Fokko","r39132","teddysun","qqwweee","wmeints","saturnism","lindbrook","jaapbrasser","yutannihilation","mthx","mouradmourafiq","ajsondev","antuki","VincentGuyader","statnmap","ritazh","tgjones","pymia","osk2","mjypeng","juifa-tsai","ry","sufuf3","kunmingg","frankhsu","osowskit","ericholscher","life1347","renyuanL","richardsliu","apu-kumar","arex18","wbuchwalter","mark2me","matt-42","buo","bstriner","mgyucht","pahud","maxpumperla","wenkesj","chuchuhao","Plabo1028","chuangtc","renchiyuan","arrowrowe","gaocegege","suleisl2000","brendalee","allencjchang","egpivo","feiyao","shervinea","AliasIO","ddio","FiloSottile","lenkiefer","mourner","mrocklin","John-Lin","simoninithomas","hinnefe2","woodnathan","jruels","brendandburns","supasorn","jlewi","Leerw","mbejda","cheyang","sethtroisi","TGmeetupBot","jba","BlueMonday","Rukeith","david30907d","chris1610","rodnolan","corytu","leemengtaiwan","krasimir","guybedford","PyDataScience","vlandham","tmashuang","kkos","aksnzhy","irakli97","danielsabinasz","dynamicwebpaige","junsuwhy","gamontal","mikenicholson","flovv","exe1023","balabagi2012","bailantaotao","ldkrsi","Naurislv","chiunhau","AceFire2014","rladiestaipei","noelbundick","cemoody","josephpconley","xxhomey19","chentsulin","yozian","yurufu","ryudoawaru","ninayeh","ct-analytics","jijigo","baraldilorenzo","dustinstansbury","jminh","Guantou-Li","Hvass-Labs","Avgle","bhoriuchi","angusgibbs","juinc","ShuHsiangLiang","lulalachen","adelinaypatricia","MylesBorins","DavidMah","daneden","dca","ryanchao2012","chrwu","foreverpeng","bluefgh429","trentm","vesse","chenjr0719","0ShawWu0","beehivedata","ninthday","a0726h77","kstseng","markert","Bjoux2","cchuang2009","Psli","donmccurdy","ngokevin","thenom","spite","st0012","recca0120","fstpackage","abel1105","mandarjoshi90","mjbommar","lmenezes","jakebian","bafu","andres-alvarado","medcl","sincoew","mayyangtaiwan","elijah","albertosantini","how2945ard","hazelwei","ichiaohsu","eJamesLin","ychi","krypton","mailtruck","toddmotto","kdchang","lnishan","codepathreview","braitz","joeyvlin","kimballXD","crwilcox","ericjang","peorthrind","jeroen","mstamy2","timClicks","codekansas","ro31337","EgeBalci","MrOrz","imdataman","milosgajdos83","exilespacer","jatrost","IvanWei","aendrew","jackycute","ostera","chomado","amsantac","balzaczyy","andrewarrow","shenwei356","vdobler","mxgit1090","strategist922","riseswallow","lichin-lin","ematvey","advancedlogic","datastream","dana117","simeji","hieven","nchern","Urigo","zol","stubailo","Slava","rricard","kamilkisiela","lorensr","johnthepink","jbaxleyiii","helfer","DxCx","daniman","chrisalbon","Schmavery","Stuk","MortenHoustonLudvigsen","baconbao","ds-section","drsimonj","leeneil","padamson","fnielsen","darkbtf","dnozay","stefanleijnen","VanVeenGames","shaochuan","IBridgePy","evanxd","phstudy","shenxdtw","Mila432","phalt","staticfloat","hsuantien","iamchucky","leesei","ChingChuan-Chen","czakon","guillaume-martin","lionel-","orsonwang","ElaineHuang","withsmilo","fzaninotto","gosilent","r3dmaohongtech","alvarotrigo","jonathantneal","howie","amaboura","gotwarlost","soumith","kkdai","missmoss","mistydemeo","icy","yungshinlintw","willard1218","jaredhanson","kewang","sindresorhus","shazow","joshbuchea","gammons","dylang","zenorocha","yungshin","bfaludi","saiday","buunguyen","cyrus","zswang","hansdu","dryman","BillPetti","tgriesser","mutekinootoko","andrewpalumbo","kakashit","victorfu","qawemlilo","kxgio","Wei1234c","jamiebuilds","glandium","duraraxbaccano","ccckmit","azer","valyala","domguinard","BensonQiu","valcu","TritonHo","aykutyaman","lauradhamilton","nl5887","ksasao","Huxpro","ZacharyChim","Unitech","merrihew","devongovett","azat-co","mikeal","cgiffard","chubin","howchihlee","sanand0","ajahuang","nlf","ningchencontact","jerrywu2013","nispc","CrystalTu","vinhkhuc","abalone0204","trevorstephens","inonchiu","mdo","mmistakes","nickbuddendotcom","yurenju","em","Casear","nicolewhite","Kalvar","ashleygwilliams","sxywu","radu-gheorghe","geeeeeeeeek","NOtherDev","dhamaniasad","jaohaohsuan","joenot443","log4analytics","fchollet","h324yang","chyyuu","NARKOZ","livoras","chris-taylor","qu1j0t3","esbullington","EntilZha","karpathy","sk413025","leoluyi","joshuaulrich","tewei","dz1984","solring","chiaolun","mike-north","weijen","miniEggRoll","hden","davedash","lisposter","boyw165","crazyguitar","alexandrebarachant","XingxingZhang","ioanpocol","amitkaps","Fodoj","gwenshap","jedisct1","fxsjy","white1033","zuxfoucault","rameshsheth37","thuyhongdang","lajupelarobe","liuxiaodong","yuruc","sjh","gabrielpconceicao","englianhu","kenke7","lizhihao1990","lovelybigdata","timbrandin","zhusee2","vipulnsward","XueningZhu","arank","azev7","ScottHamper","kgusakov","minimaxir","non","yenchenlin","jsgao0","mdub","yyuu","Emaasit","pablobarbera","jennybc","twolfson","OleLaursen","p8952","data-sciences","guesslin","DrBoolean","davidyen1124","freewil","virajsanghvi","hackl","jprante","greggman","john-data-chen","stowler","Gwill","jasonlong","seppo0010","gaylemcd","kenttw","erictham","chpapa","rickmak","Shinichi-Nakagawa","mattdennewitz","cgj531","mmocny","indichen","jnordberg","huytd","yutelin","ZhangHang-z","bdon","zeroshine","hungyanbin","JuanitoFatas","cecol","malloc47","chebee7i","JelteF","jserv","lijian13","gliyao","dalekurt","kzaher","chanhou","lucjon","karan","hanamizuki","nviennot","kkc","cfsghost","smbache","hrbrmstr","arasatasaygin","forwyl","gkz","poweic","comdan66","terryjbates","stianeikeland","pmarkun","flaviobarros","jwilder","qinwf","hangyan","tlpinney","piersharding","jeffwong","okamipride","arunoda","aluxian","winstef","ChuyuHsu","charlesreid1","elliotwmsft","lucemia","whizzalan","sih4sing5hong5","cosecantTW","mohammadpz","abhishekkr","blackjack","timjacobi","SimonSun1988","flaxsearch","chzhcn","jieyu","rmuir","coopermaa","sirleech","BaiGang","peihsinsu","Yukaii","zetavg","nbremer","renkun-ken","sjwhitworth","alonsovidales","Naranim","gansidui","argusdusty","arnocandel","Gorgens","yaniswang","staltz","mrkrstphr","pishen","fumin","LarryLo","ernestorx","aphyr","elliot79313","0xAX","bvasiles","goKosPlay","ruanyf","subprotocol","indradhanush","marinbek","jeromer","mattbaird","olivere","sksamuel","scalastuff","iSimar","ianserlin","wadackel","johndbritton","xiaoyongzi","moskytw","huandu","willdurand","markbates","ricardoquesada","dowshawu","chrismetcalf","kachok","tantalor","amunategui","looly","n1k0","detro","scottslowe","infographicstw","rogaha","justjavac","mpapis","kaochenlong","RayCHOU","ddbc","adilmoujahid","brady-vitrano","rjpower","appleboy","ycshu","quentingronau","yutin1987","imgarylai","youchenlee","yjlou","wildjcrt","walkingice","virus-warnning","ttcat","tomchentw","timdream","timchen86","Superbil","snowmantw","shelling","shawn111","repeat","raejin","pm5","onlinemad","MnO2","MIND0S","miaout17","lwhsu","lis186","kong0107","kmsheng","kentwelcome","kcwu","kcliu","jsleetw","jjjenq","jbytw","imwithye","iamblue","hychen","gugod","gsklee","fukuball","fourdollars","favonia","ethantw","EragonJ","egistli","darbychang","czchen","cpyang","chilijung","chihsuan","blue119","bater","a-tsioh","Chien19861128","chhsiao1981","c9s","jonathon-love","YeongYuh","thirdwing","yenlung","flopshot","loperntu","rich-iannone","mplewis","codeguy","uranusjr","joeyespo","MicheleTobias","aaaddress1","0xyd","sammcj","IanLunn","ariya","mafintosh","wsargent","jessfraz","ashisha","Asoul","seabre","IonicaBizau","pbeshai","concretevitamin","jeffhung","regit","iambigd","skratchdot","kzwang","ramnathv","thebrecht","snoweye","wrathematics","igauravsehrawat","aanand","rjbriody","drei01","icecrime","daigofuji","norbauer","ywchiu","kidd","vramosp","mingfang","AllThingsSmitty","spitfire-sidra","jonathanslenders","easonchan1213","randyh0329","c1mone","JoeyZwicker","jdoliner","lunastorm","seth","szilard","jalapic","akiran","benlue","topepo","spheromak","djannot","robjhyndman","yllan","mansunkuo","cmaneu","DerekHung","Rplus","noahchense","brianc","simonhsu","numtel","timoxley","KrissWong","tvganesh","clonn","ExNexu","junipertcy","shulusama","caasi","coodoo","giolin","s-u","karl-forner-quartz-bio","feross","zachmayer","ilyabo","tobegit3hub","bitliner","CarolHsu","jashkenas","miawss","kimisan","tianon","vinta","dustinul6","sermanet","jlong","chengjun","earowang","racklin","achala0309","radfordneal","gdequeiroz","readata","kiang","yhunglee","apocas","ariaBennett","William-Yeh","jazzwang","wjmuse","radiegtya","coderolabs","t0mst0ne","ggggggggg","bmcmahen","jefflau","inducer","tagty","masayuki0812","arcolife","iansinnott","eddelbuettel","christophergandrud","joe11051105","bryanyang0528","mbostock","pissang","kener","gcoop","cturbelin","kachkaev","yanping","elerao","casunlight","jcheng5","LevelbossMike","nicolaskruchten","yihui","keleshev","kristjankorjus","jakevdp","dominictarr","lukaszx0","Raynes","popcornylu","wbond","tony1223","sameersbn","johnlinp","lulalala","GaelVaroquaux","rschiang","vgvassilev","josemazo","jsliang","jtwang99","yahsinhuangtw","theosp","ccwang002","maxogden","fonnesbeck","waitingkuo","kdd-cup-2013-ntu","yhsiang","toshiakit","aaronlin","MonkmanMH","qcl","philipz","everdark","mwoodbri","KuiMing","mcdlee","WeiChengLiou","cogdong","eit","progrium","fbessho","tjwei","eduardolundgren","hadley","tsaiid","olizilla","FredChiang","littleq0903","hlb","billy3321","mitchellh","tsaikd","flukeout","maxtoki","beanumber","668Jerry","ChihChengLiang","victorhsieh","medicalwei","guitarmind","ebrehault","mingderwang","othree","winwu","muan","juliemr","cambecc","kav-ya","JohnsonHsieh","jpetazzo","rbrito","ensky","kasperpeulen","greenido","ihower","a0000778","jessy1092","jimyhuang","ETBlue","audreyt","evenwu","ipaaa","mrbigmouth","dboyliao","godgunman","ntuaha","ctiml"]}
197	{"name":"drphilmarshall","follow_whom":["chto","piccolomud","burchat","rkeisler","rogerblandford","hke","knalew","mtewes","mbaumer","tommasotreu","shsuyu","timstaley","samskillman","bethwillman","lmwalkowicz","djbard","ivezic","wmwv","kbarbary","rhw","devonmpowell","tonyyli","brittafiore","bareid","adamlrlevine","karenyyng","yoachim","rumbaugh","idellant","mdschneider","jmeyers314","jgeach","yymao","saga-survey","gdobler","jfwallin","charlottenosam","vrooje","leighfletcher","chrislintott","kcwong","tcollett","anupreeta27","jobovy","rossfadely","lmoustakas","slowe","eggplantbren","kapadia","mwauger"]}
198	{"name":"rwesson","follow_whom":["sundarjhu","fpriestley","stuartsale","mischaschirmer","kdere","pscicluna","dstock","bwduncan"]}
199	{"name":"newville","follow_whom":["margaretkolbeannellen","klauer","bruceravel","maurov"]}
200	{"name":"jjhelmus","follow_whom":["bcoe","NHDaly","josephhardinee","nguy","tjlang","matthew-brett","dopplershift","pmarshwx","deeplycloudy","scollis","dlax","Colbert-Sesanker","tecki","mattfenwick","thouis","josef-pkt","newville","teoliphant","GaelVaroquaux","rgommers","rkern","stefanv"]}
201	{"name":"dpgettings","follow_whom":["cgettings","chrissimpkins","freebsdgirl","kennethreitz","dfm","martindurant"]}
202	{"name":"joergdietrich","follow_whom":[]}
203	{"name":"rmjarvis","follow_whom":[]}
240	{"name":"jack-h","follow_whom":["david-deboer","oxfork","telegraphic","griffinfoster"]}
241	{"name":"tpope","follow_whom":["torvalds","delitescere","spiiph","mattreduce","paulelliott","adamlowe","rbxbx","shaneriley","godlygeek","desi","l4rk","wesgibbs","durran","leshill","obie","voxdolo","scrooloose","blaix","therubymug","shayarnett","wayneeseguin"]}
204	{"name":"jiayiliu","follow_whom":["YanzhaoWu","jaberg","miraclewkf","renmengye","lishen","gnachman","jiazhihao","jiaxiang-wu","zhangyaobit","shelhamer","ysh329","BertMoons","kuangliu","anishathalye","yihui-he","david-abel","lexfridman","rbgirshick","jbuckman","timgaripov","andrewgordonwilson","jbhuang0604","yeasy","k3oni","norvig","bojone","jiweil","KaimingHe","tyrchen","nolanbconaway","Yangqing","naturomics","junxiaosong","bourdakos1","JunshengFu","astonzhang","hadley","rdpeng","alexuadler","jtleek","mli","FairyOnIce","AllenDowney","tqchen","RedditSota","tomwhite","mbostock","lballabio","thinklancer"]}
205	{"name":"steven-murray","follow_whom":["SimonBiggs","asgr","doctorcbpower","voidcycles","awicenec","astrofrog"]}
206	{"name":"rsuhada","follow_whom":["infotranecon","pirate","JeffreyBenjaminBrown","joshsh","nikitavoloboev","dvorka","karpathy","guciek","JohnMount","incandescentman","abo-abo","novoid","sachac","topepo","schwanksta","hadley","slaanco","astrofrog"]}
207	{"name":"RexYing","follow_whom":["xinli94","hwwang55","kfrancischen","DanqingZ","cewall","hme812","PengyiPan"]}
208	{"name":"bunelr","follow_whom":["riceric22","danielamassiceti","progirep","colesbury","lberrada","mhauskn","pankajpansari","bamos","edran","iffsid","pushmeet","mpawankumar","jwiegley","Malabarba","Atcold","karpathy","szagoruyko","clementfarabet","andresy","soumith","xjingyu","wernerandrew","albanD","pdib","cosmith","j2bbayle"]}
209	{"name":"tkipf","follow_whom":["seuqaj114","jermainewang","andreaskipf","maartjeth","tomrunia","jmtomczak"]}
210	{"name":"cranmer","follow_whom":["SylvainCorlay","atrisovic","anantzoid","kyleniemeyer","khinsen","ixkael","kratsg","fizisist","ihrke","owenzhang","jmburges","omazapa","erccarls","minrk","svenkreiss","glouppe","jstypka","crepererum","bmcfee","karthik","dfm","tiborsimko","lukasheinrich","rsbowman"]}
211	{"name":"justinalsing","follow_whom":[]}
212	{"name":"anassinator","follow_whom":["yaringal","yasasa","RussTedrake","cbfinn","cwfoo","andybarry","peteflorence","juancamilog","janclarin","alexandercmzt","dirk-thomas","belljustin","mikepurvis","weidi-chang","sdahdah","picatsso","Baycken","jean-sebastien-dery","mcgillrobotics","nkhoit","lvwrence"]}
213	{"name":"nkhoit","follow_whom":["dakejahl","MilesCranmer","mjjohnston23","sbporter","jean-sebastien-dery","BackslashEcho","mcsauder","AlexKlimaj","kurtmueller42","bscothern","rjhidalgo","zlite","mhkabir","sanderux","LorenzMeier","malcolmwhat","lhillmer","sytelus","nickspeal","dagar","chickensouple","anassinator","Baycken","sayar","thescouser89","draringi","everfor","jyang11"]}
214	{"name":"richardagalvez","follow_whom":["mahnooshs","MilesCranmer","miranda-v","stevenliuyi","AngieH7"]}
215	{"name":"wkerzendorf","follow_whom":["landscape-bot","jrs65","brianpschmidt"]}
216	{"name":"atomoton","follow_whom":["cpury","MarioKrenn6240","dbobr","dirKernel","somody","ldmoray"]}
217	{"name":"JulienNGirard","follow_whom":["David-McKenna","jmel","griffinfoster","EiffL","SpheMakh","cyriltasse","CEA-jiangming","mrbell"]}
218	{"name":"tacaswell","follow_whom":["y3l2n","binarysubstrate","nukhetk","alejandrox1","lisabang","doniarobinson","dutc","blink1073","dorafc","ericdill","davidgrier","fperez","joferkington","nkeim"]}
219	{"name":"rarchiba","follow_whom":[]}
220	{"name":"jonathansick","follow_whom":["miebeers","timj","jsilvester","dfm"]}
221	{"name":"profjsb","follow_whom":["kalliefriedman","derekchiang","jdoliner","mjpieters","mathiasbynens","llSourcell","mbabineau","onsi"]}
222	{"name":"ewanbarr","follow_whom":["dan-thornton","samb8s"]}
223	{"name":"benbarsdell","follow_whom":[]}
224	{"name":"jaycedowell","follow_whom":[]}
225	{"name":"altosaar","follow_whom":["kortina","tilek","zmwangx","thomwolf","benfred","shoyaida","danielmkarlsson","sudo-nim","hendrycks","robinsloan","petar","david-cortes","aberke","pjreddie","dnbaker","rddy","wolfmanstout","tkf","zenna","benjamin-recht","erikbern","ekmett","marcotcr","jrzech","jakobnicolaus","arogozhnikov","enalisnick","jzf2101","worrydream","norvig","stevengj","eb8680","yashkaf","awni","DeepPavlov","tscohen","karlmoritz","jrh13","elibingham","lcary","taolei87","ajtulloch","inconvergent","cavaunpeu","williamFalcon","galinngeorgiev","johnmyleswhite","cssndrx","peterwittek","JohnLangford","jli05","marcoct","ThomasMiconi","sirrice","malcolmreynolds","yoavg","hjet","zackchase","jameswex","galaxykate","crm416","lmcinnes","henripal","bwhite","dawenl","mdhaber","cmaes","mjaczynski","davetcoleman","goodfeli","akucukelbir","pcmoritz","negrinho","rsepassi","woollysocks","neubig","DRMacIver","jeff-regier","Valloric","risi-kondor","garybernhardt","dustinvtran","mortenjust","jonberliner","alexminnaar","hexahedria","bayerj","dselsam","hypotext","craffel","ikostrikov","tansey","brandonmburroughs","dmrd","datang1992","cooijmanstim","alepoblador","poolio","lahwran","marbiru","mnielsen","cameronbell","fatsmcgee","carpedm20","eamonnbell","cstjean","yburda","maximz","jeffreyadean","angelaradulescu","ajbc","lcharlin","smsharma","binarybin","piskvorky","ericmjonas","premgopalan","longhotsummer","lohedges","amedeedaboville","lilred","stuhlmueller","jovo","memimo","Kariina","Skjulet","ekgren","pbronez","aleifer","aproko","rossibarra","vsbuffalo","shbhrsaha","niharm","rabdureh","sbyrnes321","JohnMurray","janl","pgbovine","phoboslab","damacisaac","abeppu","crucialfelix","yogsototh","BohdanKul","mmistakes","hooniekwon","eusonic","mikeking214","rgmelko"]}
226	{"name":"reidmcy","follow_whom":["dfreelon","mllewis","kavgan","jasoncwarner","jamesallenevans","shugamoe","amyxlu","mclevey","networks-lab","kousu","torvalds"]}
227	{"name":"Baycken","follow_whom":[]}
228	{"name":"Chopin96","follow_whom":["shawnlauzon","MilesCranmer"]}
229	{"name":"brammool","follow_whom":[]}
230	{"name":"AaronParsons","follow_whom":["karakundert","david-deboer","magyarm","jpober","damoupenn","jdmcbr","dannyjacobs","pkgw"]}
231	{"name":"thoppe","follow_whom":["robbiebarrat"]}
232	{"name":"scrooloose","follow_whom":["wallrj","actionshrimp","dahu","nelstrom","larister","bneate","philbrock","millermedeiros","spiiph","kongo2002","brehaut","godlygeek","kstep","dannyhope","x-cubed","justinabrahms","nickb","james2m","tpope","halorgium"]}
233	{"name":"gleitz","follow_whom":["scttdavs","melodykramer","bigeasy","mattvonrocketstein","gduverger","matthandlersux","dorkitude","Miserlou","volkangurel","chrisballinger","jLukeC","gmarzloff","maxogden","rystecher","jordanorelli","jonmarkgo"]}
234	{"name":"leighklotz","follow_whom":["PDP-1170","Klotz"]}
235	{"name":"peterpark77","follow_whom":["eddelbuettel","emzerbib","belbahrim","farhadrclass","yassine-mhedhbi","goodfeli","MilesCranmer","Chopin96"]}
236	{"name":"stevecroft","follow_whom":[]}
237	{"name":"telegraphic","follow_whom":["jack-h","griffinfoster"]}
238	{"name":"chitrangpatel","follow_whom":["mubdi","emilieparent","pscholz","plazar","scottransom","smearedink"]}
239	{"name":"gumgl","follow_whom":["fionaclerc"]}
243	{"name":"jeenriquez","follow_whom":["custal","profjsb","marksbrt","griffinfoster","telegraphic","MilesCranmer","ngizani","jack-h"]}
244	{"name":"siemion","follow_whom":["mhvk"]}
245	{"name":"ryanolson","follow_whom":["dholt","gheinrich","GAMESS","lsb","geerlingguy","jnbntz","sloria","pydanny","audreyr","miguelgrinberg","mattupstate","jefflarkin","mbostock","dlwire","srlindsay","tilgovi"]}
246	{"name":"yoshua","follow_whom":[]}
247	{"name":"rainwoodman","follow_whom":["Jagdnoob","sukhdeep1989","labarba","luplatina","ekitanidis","aslanyan","djschlegel","rcthomas","arundurvasula","dstndstn","trillian","deculler","clcarson","fatmai","zhaozhang","danielturek","bareid","kevkoy","pbstark","jkitzes","kbarbary","katyhuff","karthik","jey","davclark","mpip","galtay","tcv"]}
248	{"name":"mrafieir","follow_whom":["kiyo-masui","utkarshgiri","ajosephy","mburhanpurkar","dstndstn","kmsmith137"]}
249	{"name":"legel","follow_whom":["dorodnic","Mango-kid","betanalpha","shahbhatti","mattfel1","mdda","stev3","cemoody","CodesInChaos","lemeb"]}
250	{"name":"mburhanpurkar","follow_whom":["gabrieleoliaro","utkarshgiri","mrafieir","kmsmith137"]}
251	{"name":"o-smirnov","follow_whom":[]}
252	{"name":"jorgemarpa","follow_whom":["tdejaeger","stephenportillo","kmzzhang","EiffL","jakevdp","dalya","sarajamal57","profjsb","jmaureir","1Reinier","abhishekmalali","fforster","MightyCristof"]}
253	{"name":"eelregit","follow_whom":["sferraroastro","lgarrison","superonion1993","thierry-sousbie","rainwoodman"]}
254	{"name":"bacook17","follow_whom":[]}
255	{"name":"villrv","follow_whom":[]}
256	{"name":"pmocz","follow_whom":["fbecerra","libcce","dbouquin","tomhohenstein","lgarrison"]}
257	{"name":"joshspeagle","follow_whom":["adrn","dstndstn","shiaki","gregreen","schlafly","nikoapos","jcoupon","villrv","alexieleauthaud","hiranyapeiris","ejhigson","hdiamondlowe","JohannesBuchner","cschreib","abonaca","cgosmeyer","dfm","theroncarmichael","guillochon","xiaohanzai","jrleja","JunYinDM","rohannaidu","mosORadi","aimalz","bacook17","ixkael","dr-guangtou","catherinezucker","pacargile","nesanders","cconroy20","bd-j","hoyleb","lgarrison","harshilkamdar"]}
258	{"name":"jdpopkin","follow_whom":["NickZnaj","conniew","kyzyx","lgarrison","pbosetti","jclif","dlikhten","sebastian-donorschoose","TooManyBees","D3RPZ1LLA","jimberlage","clementpigeon","sarahquigley"]}
259	{"name":"bd-j","follow_whom":["moustakas","ACCarnall","gbrammer","joshspeagle","pacargile","cconroy20","nell-byler","jrleja","hakimel","dfm","AlexaVillaume"]}
260	{"name":"geohot","follow_whom":[]}
261	{"name":"qmxp55","follow_whom":["cmbant","rainwoodman","arnauqb"]}
262	{"name":"zxzhai","follow_whom":[]}
263	{"name":"EmmanuelSchaan","follow_whom":[]}
264	{"name":"georgestein","follow_whom":[]}
265	{"name":"johannesulf","follow_whom":[]}
266	{"name":"cconroy20","follow_whom":[]}
267	{"name":"CullanHowlett","follow_whom":[]}
268	{"name":"viajani","follow_whom":[]}
269	{"name":"lindablot","follow_whom":["Funkateer","miknab","congma","albertizard"]}
270	{"name":"Allium","follow_whom":["DanSeeto","dfm"]}
271	{"name":"Linc-tw","follow_whom":["anthonyhtyao","yulinhuang","gnitnaw","JulienNGirard","sfarrens","JZorrilla","martinkilbinger","EiffL"]}
272	{"name":"johannbrehmer","follow_whom":["gpapamak","raubtaube","pablodecm","philippwindischhofer","tomcharnock","shomiller","justinalsing","EiffL","dlvp","luclepot","smsharma","SebastianMacaluso","alexander-held","irinaespejo","cranmer","KlingFelix","svenkreiss","glouppe"]}
273	{"name":"parfa30","follow_whom":[]}
274	{"name":"forero","follow_whom":["miguel-aragon","juanitorduz","john-guerra","nestorandrespe","dmitryduev","jchelly","jsuarez314","leouieda","cosmologywater","shongscience","cemoody","knaidoo29","franciscovillaescusa","safonova","seshnadathur","jhidding","amjsmith","SandyYuan","aasensio","bettachini","geordie666","kdawson1000","Srheft","clopezcorrea","rasbt","katbailey","queerviolet","mneira10","rctatman","jmakino","AstronomerAmber","diyadas","marius311","mamaciasq","lgarrison","segasai","cgomez11","joelgrus","veemcb","yanneta","mvgarcia","corbett","carmeloevoli","cdplagos","asgr","Carreau","yuvipanda","vivianamarquez","LuzGarciaP","dabarbosa10","mykytyn","mvuorre","nelsonamayad","rmcelreath","bgpurzycki","ctross","sibirrer","ClarkGuilty","thriveth","PaipaPsyche","sausheong","londumas","eramirem","JohanComparat","betanalpha","jdprada1760","topology-tool-kit","jd","oliverphilcox","hplgit","aaorsi","JianhuaHe","bwvdnbro","astrofrog","ekta1224","nickhand","hippke","isislovecruft","cgarciae","chootka","aantonop","jesstess","nschloe","erikbern","cebasfu93","mardom","andfoy","vtamara","jhonjairoroa87","zonca","bd-j","bhareeshg","benfred","GaelVaroquaux","damonge","mlandriau","pbstark","fjaviersanchez","demotu","moustakas","apcooper","nhmc","triketora","drarnakarick","colah","stephencwelch","mjuric","Davidnet","dpsanders","computo-fc","justmarkham","andycasey","martinjameswhite","rjleveque","rwesson","aphearin","duncandc","albahnsen","zingale","sercharpak","rhiannonlynne","finiterank","dstndstn","eggplantbren","RuthAngus","ebressert","tbs1980","Kambrian","gevolution-code","gdhungana","bgriffen","vivianamarquez-2013","dpearson1983","junkoda","guido-granda","RobertLuptonTheGood","fbeutler","CullanHowlett","rahulporuri","CS395T","alejandrobll","ladosamushia","deepzot","slosar","dkirkby","castellanos-duran","rainwoodman","JC-AlfonsoR","ojack","VeronicaArias","mzemp","recanews","andres-root","labarba","eljuguetero","astrosanti","saint-germain","barentsen","dhuppenkothen","gully","hannorein","juglardelzipa","EdoardoCarlesi","savila","mbostock","cmcbride","wll745881210","ethankruse","keflavich","sgarciac","jakevdp","bcrowell","spsaaibi","regonzar","weaverba137","dutc","ahwkuepper","ChrisBeaumont","skendrew","pymilo","ivezic","flgomezc","gdobler","tskisner","Fernandez-Trincado","agabrown","sbird","xiaodongli1986","drphilmarshall","jobovy","ndpadilla","davidwhogg","facom","sbailey","krushev36","Daniel-M","adrn","dfm","mariacamilarg","fonnesbeck"]}
275	{"name":"meghaphone","follow_whom":["philippmuench","matznerd","shu223","sebastianruder","zachgrayio","lattner","rxwei","ColinEberhardt","genekogan","johnno1962","JorgeCeja","llSourcell","davisliang","segiddins","codinfox","alexsosn","ochococo","zertosh","brendanekane","jspahrsummers","schickling","ddfreyne","android10"]}
276	{"name":"aemerick","follow_whom":[]}
277	{"name":"nye17","follow_whom":["EiffL","tetradeca7tope","rmandelb","jakevdp"]}
278	{"name":"JohanComparat","follow_whom":["lewtonstein","JohannesBuchner","esheldon","dstndstn","cgiocoli","federicomarulli"]}
279	{"name":"nickhand","follow_whom":["Swizec","zvlah"]}
280	{"name":"ecastorina","follow_whom":[]}
281	{"name":"sbird","follow_whom":["mafern","gkulkarni","JulianBMunoz","nhmc","jgsuresh","jobovy","orac","jbytheway"]}
282	{"name":"andreufont","follow_whom":["sbird","andersdot","Chris-Pedersen","rainwoodman","dkirkby","julienguy"]}
283	{"name":"slosar","follow_whom":[]}
284	{"name":"martinjameswhite","follow_whom":[]}
285	{"name":"franciscovillaescusa","follow_whom":[]}
286	{"name":"fbeutler","follow_whom":["fabians18","jrwalsh1","mscrim","saitosmst","sheejong"]}
287	{"name":"ixkael","follow_whom":["rodluger","drphilmarshall","dstndstn","RuthAngus","megbedell","ahwkuepper","jradavenport","kbarbary","dhuppenkothen","dfm","sapearson","jegpeek","eteq","andycasey","adrn","cranmer","smoh","jobovy","joshspeagle","eggplantbren","davidwhogg","aimalz","oso","paterijk","non","sbigaret","quiewbee","harrah","ept"]}
288	{"name":"dhuppenkothen","follow_whom":["mrocklin","fedhere","adrn","jdswinbank","aimalz","abigailStev","kbarbary","RuthAngus","drphilmarshall","gdobler","rossfadely","davidwhogg","dfm","imurray"]}
289	{"name":"timahutchinson","follow_whom":["a-g-green","SleeveShirtholes","ntejos","vicbonj","julianbautista","changhoonhahn","guangtunbenzhu","weaverba137","maryharges","sbailey"]}
290	{"name":"NBernat","follow_whom":["beerys","ezhan94","zplizzi","coopaloopster","Allium","mjvakili","nityamd","geoffryan","mmihovil","carelly22","kilianbreathnach","ekta1224","AVatch"]}
291	{"name":"geoffryan","follow_whom":["sjoertvv","dhuppenkothen","changhoonhahn","duffell","aimalz","macfadyen","gnwong","moradology","jeffgertler","shorja","whidye","dhuntley","lhackman","djdorazio","julywater","brianfarris","walshc","fknust","hveerten","chomps","troydhanson","mjvakili","jzrake","rawrzi","coopaloopster","kilianbreathnach","mynameisfiber","Allium","dfm"]}
292	{"name":"rspeare","follow_whom":["fonnesbeck","JuanManuelHuerta","kbroman"]}
293	{"name":"ambrishrawat","follow_whom":["vincentropy","willtebbutt","hexahedria","duvenaud","goodfeli","alexggmatthews","jameshensman","modichirag","wesselb","yaringal","guicho271828","vibhavsinha","samarth7b","AnuragBajpai"]}
322	{"name":"niu541412","follow_whom":["lwfinger","extrsun","onekiloparsec","thdauser","oesping","riobard","jagophile","olliwang","hankem","eblur"]}
294	{"name":"bhorowitz","follow_whom":["sferraroastro","zvlah","stephanieger","martinjameswhite","aslanyan","rainwoodman","modichirag","linzho","diracdeltas","milescalabresi","joshuahhh"]}
295	{"name":"chamkank","follow_whom":["danyal1234","samsjkang","dima328","d4l3k","sjason19","patricklinpl","luceliu"]}
296	{"name":"blakesherwin","follow_whom":[]}
297	{"name":"RichardLitt","follow_whom":["llkats","blackforestboi","ljharb","bigtimebuddy","jonschlinkert","samswag","vvp","MichaelDimmitt","Schwartz10","whyrusleeping","andrew","dshaw","kentcdodds","k88hudson","adam-palazzo","JulianaDixon","BenJam","copernicus-mogley","dborzov","cspannos","srl295","bkeepers","zeke","elcuervo","sericaia","iurimatias","fed135","watilde","flovilmart","tlackemann","ninabreznik","blahah","tedinega","ZJaf","sotayamashita","sam0901","ericholscher","asadzulfahri","patch","acabunoc","marcandre","chriddyp","ocollet","ruyadorno","chadwhitacre","jdorfman","ipfs-helper","gabiciudin","jmeistrich","magalhini","hguiney","ldanielswakman","izzydoesizzy","Lingomat","Xaviju","frabrunelle","ajmas","dmhowcroft","fvntr","shamb0t","sotojuan","David-Ro","pcuci","harrisrobin","leffen","groundwater","moxie0","fritzvd","deanoemcke","jesseclay","parkan","gdpelican","NeoTeo","SimonGreenhill","noffle","hermanjunge","mikolalysenko","JoaoFOliveira","samhogg","daviddias","gggritso","victorb","hemanth","Findiglay","lgierth","jonathanPoitz","jywarren","holic","wooorm","watson","jonesbp","blakeembrey","iancrowther","eglassman","mappum","namuol","sethwoodworth","ashleygwilliams","amstocker","isaacs","domenic","substack","maxogden","stoeffel","bcng","jlord","joshsimmons","rmhenderson","florida","HughP","mafintosh","darwin","Xyzer","LaughingSun","seacgroup","feross","vchahun","sballesteros","jtleek","marcschulder","junosuarez","mbjones","arfon","Urigo","christinebeaubrun","zachklein","sindresorhus","MappingKat","annabelew","linclark","pfeyz","FesterCluck","qiuwei","jaypinho","macdiva","btford","addyosmani","alvations","dresen","dav009","indexzero","roblourens","gergoerdosi","bhollis","brent06611","rubzo","kylebgorman","johnjcamilleri","jkahn","stephencelis"]}
298	{"name":"amaurea","follow_whom":[]}
299	{"name":"aiolasimone","follow_whom":["mhasself","joeydumont","EiffL","hke","zonca","veragluscevic","amaurea","dhanson","fbianchini","nolta","dfm","sievers","lesgourg","eric-switzer"]}
300	{"name":"tskisner","follow_whom":["jessephus"]}
301	{"name":"keskitalo","follow_whom":[]}
302	{"name":"humnaawan","follow_whom":["Emadmasroor"]}
303	{"name":"kmsmith137","follow_whom":["moritzmunchmeyer","ajvanengelen","joelmeyers","nealdalal","selimhotinli","honamnguyen","jcolinhill","amaurea","mjohnsonperimeter","misanthropealoupe","PranavSanghavi","mburhanpurkar","dstndstn","utkarshgiri","jgbreault","msyriac","typing-monkey","shenyangHuang","mrafieir","veragluscevic","sferraroastro","scottransom","jrs65","kiyo-masui","liamconnor","sievers","ajosephy"]}
304	{"name":"yuanshuoastro","follow_whom":["eelregit","hoganbin","Adaydl","aasensio","leimingyu","brandon-rhodes","pmelchior","namhyung","AgnerF","lesgourg","lyang36","soulmachine","Dev-XYS","vreverdy","geoffryan","stevengj","tmcclintock","hsgg","sibirrer","wll745881210","wfchiang","junkoda","lgarrison","nschloe","miguelzuma","jeffmcm1977","chuericky","sfarrens","jacobwilliams","surhudm","hebl","jiqizhixin","sakra","dlegland","HumamAlwassel","martinjameswhite","myurtoglu","JulienPeloton","smarnach","BenWibking","kpeeters","rouson","fredrik-johansson","federicomarulli","zbeekman","tbs1980","ajt60gaibb","ismael2395","coccoinomane","dhanson","esheldon","nickhand","slosar","gpeyre","jlokimlin","vsht","giacombum","torvalds","sjoudaki","dgrin1","floquet","manodeep","zingale","MichaelSiehl","TieBaMma","Alkistis","beckermr","LadaF","lordgrilo","ernestyalumni","JohannesBuchner","chuckkeeton","rantonels","Kambrian","ispc","dstndstn","jobovy","gully","JoeMcEwen","gevolution-code","sagemanifolds","amaurea","xiaodongli1986","forero","cgiocoli","DeathKing","dkirkby","Lnasellentin","steven-murray","rainwoodman","cmbant","adrn","fengChenHPC","dominiksimek","sbustamante","szaghi","liran827","shiyanlou","zqhuang","sudeepdas"]}
305	{"name":"amanzotti","follow_whom":["raquelhr","MLWave","emanuele","alanzablocki","cathydeng","cbonnett","hunterowens","mvzink","vilterp","dfm","veragluscevic","captainsafia","jesford","zonca","Linc-tw","cmcbride","tbs1980","steven-murray","deepzot","EiffL","aslanyan","esheldon","roban","lucailiesiu","ycjuan","benanne","rkeisler","drphilmarshall","RuthAngus","msyriac","duetosymmetry","vallis","dhanson","apetri","joezuntz","sudeepdas"]}
306	{"name":"nolta","follow_whom":[]}
307	{"name":"EthanAnderes","follow_whom":["pochoi","marius311","msyriac","jmwerner","empaisley","lkang"]}
308	{"name":"torvalds","follow_whom":[]}
309	{"name":"cdfassnacht","follow_whom":[]}
310	{"name":"pipidog","follow_whom":["CyberZHG"]}
311	{"name":"JDTimlin","follow_whom":["d80b2t","tinapeters"]}
312	{"name":"cdeil","follow_whom":["therhaag","joleroi"]}
313	{"name":"amueller","follow_whom":["gagolews","topepo","tmylk","dhuppenkothen","ccolburn","ylow","mrocklin","shjb","JasperSnoek","dan-blanchard","rsteff","larsborn","xianghang","ppletscher","chrodan","petergehler","mdbecker","amirsaffari","rstebbing","jaquesgrobler","opengm","radfordneal","bdholt1","robertlayton","jakevdp","PetterS","glouppe","larsmans","fabianp","vene","mblondel","GaelVaroquaux","NelleV","jaberg","agramfort","tonysyu","pprett","ogrisel","dwf","npinto","temporaer","alextp","davidmarek"]}
314	{"name":"tinapeters","follow_whom":["aimalz","thoppe","reneehlozek","jmoreno28","AstroVPK","d80b2t","JDTimlin","CKrawczyk"]}
315	{"name":"naosuzuki","follow_whom":["profxj","knjcode","aimalz","caseywstark","npat-efault","nregnault","scizen9","VikrantKamble","ejeschke","tskisner","ehsiao","kbarbary","rcthomas","sbailey","janosb"]}
316	{"name":"ShanghuoLi","follow_whom":["emaciasq","iancze","jdhenshaw","xinglunju","iwstephens","catherinezucker","pkgw","e-koch","keflavich","autocorr","jluastro","ericmandel","tanmoylaskar","egstrom","fjdu","low-sky","cbattersby"]}
317	{"name":"borntoleave","follow_whom":["rbv188","correderadiego","chaitanya11","Ark0617","fititnt","cyrillegin","laddng","crhamilt","ReggieYang","bkraft4257","imabhishekl","maiziex","goo2go","shuowenwei","zijunzhao","kwkevinlin","sajantanand","jgilyard","s-ramirez","melcz","Procta","samcho","leplen","patim","jags9415","xinglunju"]}
318	{"name":"akleroy","follow_whom":[]}
319	{"name":"yangcht","follow_whom":["siyu6974","eugvas","FredDeCeuster","skyao","clymb3r","bmoster","caoxiaoyue","xzackli","yanxiali","shangfei","niu541412","superonion1993","dustinvtran","mengyaoxue","Sketos","Yeqzids","AstroJacobLi","WuShichao","zihaoyang-96","jiadonglee","comcat","astrojuan","WeichenStars","guanpu","fx2y","HongquanSu","wangleon","yanlongastro","ZeroWang9606","ymzhong","tgreve","charlesyou999648","Kristall-WangShiwei","tanmoylaskar","unionx","srichers","AndreaEnia","r-xue","feigewang","harryhare","hypergravity","aximov","ewpeng","EyreFree","privong","pavesiriccardo","tkoolen","rhayes777","qian-yang","AstroSong"]}
320	{"name":"esoPanda","follow_whom":["yuanjinghua","xinglunju","jpinedaf","jfoster17"]}
321	{"name":"astrobrent","follow_whom":["extrsun"]}
323	{"name":"zhengfaxiang","follow_whom":["dr-guangtou","astrogqzhang","ZhiyuZhang","Rhilip","astrofrog","Founder42","cjhang","Kael-Chan","OZv","abo-abo","Malabarba","OliverLew","solarqiang","extrsun","yangcht"]}
324	{"name":"jeremysanders","follow_whom":["granttremblay","jzuhone","eggplantbren"]}
325	{"name":"zhuww","follow_whom":["telegraphic","SparkePei","PennyQ","qianlivan","heiles","chitrangpatel","kiyo-masui","ewanbarr","pscholz","jellis18","cmingarelli","ozooxo","scottransom","istairs","brandon-rhodes","emmanuelfonseca","smearedink","yanwang2012","tririver","vkaspi","plazar","aberndsen","demorest","aarchiba","pprett"]}
326	{"name":"mojombo","follow_whom":["broccolini","skeltoac","m","jbarnette","kneath","rtomayko","maddox","schacon","KirinDave","pjhyett","defunkt"]}
327	{"name":"NathanSandford","follow_whom":["tingyuansen"]}
328	{"name":"joe07734","follow_whom":["AlexaVillaume"]}
329	{"name":"acencini","follow_whom":["nayeemaquib","fivegrant","Caesar1127","MatthewBennington","hoanhan101","SegFaultx64","timfallmk","sperka","devttys0","bgwalter","grampelberg","sjwhit","anselmbradford","swatkns785","KylerBurke","edaniszewski","JackGerrard","SisterMystery","kstrack-grose","rohailaltaf","vaporio","nideshchitrakar","Nephilim314","Berrescuda","scttmllmn","benbp","heckj","shevek","joe07734","AlexaVillaume","idupree","mattgam"]}
330	{"name":"TylerL314","follow_whom":[]}
331	{"name":"dwadden","follow_whom":[]}
332	{"name":"dribbleanalytics","follow_whom":[]}
333	{"name":"iamjarret","follow_whom":["slotterback","kevinellerton"]}
334	{"name":"robertmartin8","follow_whom":[]}
335	{"name":"dafer45","follow_whom":["benjaminbjornsson","soumyajyotih","evaleev","haykkh","JPchico","anbergman","kpws","lcovaci","quantum-kite","MAndelkovic","WilliamHPNielsen","jenshnielsen","Huaguiyuan","willzeng","hmenke","aromanro","dbwz8","dean0x7d","tmcclintock","opeil","mzingl","aichhorn","HugoStrand","aeantipov","pseth","Mi-chael","Titan-C","lmessio","hafermann","Wentzell","mferrero","tayral","krivenko","parcollet","jbweston","akhmerov","chryswoods","benfulton","talentkeychen","halucka","Anny-Moon","UCLGuichard","bast"]}
336	{"name":"cmetz20","follow_whom":["tmcclintock"]}
337	{"name":"rafaelgm9","follow_whom":["pierfied","tmcclintock"]}
338	{"name":"marinadunn","follow_whom":["samscibelli","joseph-long","lakew68","abgibbs","fridajau","yinglingw","quadrychance","tbainesUA","ahenrici","gurtina","alexstoken","rsmullen","tmcclintock","nzawadzki","bjswift","StewardObservatory","autocorr","jngaravitoc","ekta1224","rafia37","weldon119","jkcalahan"]}
339	{"name":"belaa","follow_whom":["emilylorenzen","tmcclintock","jgrillo","mehdirezaie","greenstick"]}
340	{"name":"jbkalmbach","follow_whom":["jiwoncpark","MelissaGraham","fforster","christopherlovell","moeyensj","DinoBektesevic","PWhiddy","smotherh","djreiss","mtpatter","nhuntwalker","dfm","drphilmarshall","octonion","tmcclintock","jakevdp","mjuric","sc932","CatRobot"]}
341	{"name":"wagoner47","follow_whom":["Benard117","ptomooka","matthewkirby","edgarmsalazar","safonova","tmcclintock"]}
342	{"name":"bhudnell1240","follow_whom":["tmcclintock"]}
343	{"name":"pierfied","follow_whom":["rafaelgm9","safonova","maxwellcui","tmcclintock"]}
344	{"name":"jammcc","follow_whom":["dougalsutherland","tmcclintock"]}
345	{"name":"matthewkirby","follow_whom":["robertmartin8","weitianyu11","pcottle","wagoner47","jngaravitoc","edgarmsalazar","noaodatalab-user","sghiaa","lidenscheng","maxwellgregoire","tmcclintock"]}
346	{"name":"onouems","follow_whom":[]}
347	{"name":"OlafenwaMoses","follow_whom":["ehiaig","hoopsomuah","robmarkcole","rafaelpadilla","cclauss","parvezrana","gauravssnl","rebeen","aymane-lotfi","chikaobuah","am-sirdaniel","shalikram"]}
348	{"name":"saizhang1","follow_whom":["mjvakili","knanne","redappless","susanli2016","aerdem4","vlarine","mikeskim","kgavrilchik","ThomasTilli","SeuTao","miha-skalic","daxiongshu","n01z3","mark4h","jfpuget","pudae","smly","pdima","xiaozhouwang","fakyras","PavelOstyakov","ZFTurbo","ppleskov","kaz-Anova","chrisalbon","izabella-lubowiecka","owenkinsella","amyjanewarner","petergeorgopoulos"]}
349	{"name":"AmirooR","follow_whom":["royshil","mrgloom","rodrigob","chrischoy","mahmoud","liuliu","sgould","tbs1980","victorprad","sergeyk","auduno","wilsonkl","forresti","dimatura","boulanni","uschmidt83","matttrent","genp","MingMingCheng","benanne","bittnt","rbgirshick","CamDavidsonPilon","savannahniles","snavely","mwaskom","cjrd","mojtaba-farmani","karpathy","reprogrammer","jakevdp","shervinemami","jpilet","matze","rossant","inspirit","quantombone","ppletscher","king110","ogrisel","zygmuntz","alishir","daviddoria","mjvakili","kcarnold","bwhite","davidwhogg","amueller"]}
350	{"name":"kilianbreathnach","follow_whom":["JanuszL","burningion","tabbyg","hongyi-zhang","ajbrock","rbgirshick","harpone","soumith","rwightman","yxlijun","sfzhang15","erikbern","fregu856","BraveApple","dwhitena","worrydream","nasser","telmomenezes","ddevault","myclues","sleepymachine","pron","jwasham","Spandan-Madan","nikic","rofinn","florian","cbarrett","t-vi","int8","worldmodels","eggplantbren","douglascrockford","dnbaker","bmcfee","bmtgoncalves","jchelly","rspeer","colah","EricSchles","karpathy","phil8192","wichtounet","donnemartin","rasbt","joanbruna","jasondavies","ixkael","codingforentrepreneurs","PerezHz","kleinschmidt","hadley","twiecki","dzbee","davidanthoff","malmaud","stevengj","cochran-at-niche","brandon-rhodes","jzf2101","mclaughlin6464","okinesio","jltinker","mgeier","wkearn","simonster","simonbyrne","pc","chollida1","StefanKarpinski","j2kun","tbreloff","johnmyleswhite","lindahua","aflyax","mbostock","IainNZ","falconindy","weaverba137","kerkeslager","Autio","skeeto","jeffhammond","Topclaff","robotlolita","aphearin","amueller","julianafreire","dhuppenkothen","GavinGKenny","fchollet","cmcbride","eteq","hynek","jvns","adewes","xiaoyixie","ProfessorBrunner","DavidJohnstonCEO","bareid","wannabeCitizen","wll745881210","gobboph","esheldon","HarryRybacki","profjsb","benjaminplanche","sturlamolden","jegpeek","aymanfarhat","exaexa","dan462","veryeasily","moradology","rgommers","kapadia","keflavich","markhannel","gigamonkey","grayghostvisuals","AndrewRadev","nityamd","geoffryan","mikeal","svenkreiss","AVatch","mykytyn","mjvakili","changhoonhahn","whymirror","unconed","benhowdle89","ChrisBeaumont","ghl3","adrn","jobovy","rossfadely","stumm","rtomayko","ryanb","dstndstn","walshc","dfm","coopaloopster","Allium","drphilmarshall","ezeakeal","davidwhogg","astrofrog","mynameisfiber"]}
351	{"name":"astrojysun","follow_whom":["shiaki","e-koch","joshualin24","RuancunLi","ANSalcedo","yangcht","samsonajohnson","TAOYi92","yanzastro","Fmajor","low-sky","akleroy"]}
352	{"name":"TAOYi92","follow_whom":["soimort","yanzastro","DarkMatterHunter","Hello-Elaine","pycompleteuser","gucong3000","chenshuo","jpivarski","miloyip","whtsky","CaoZ","ivmm","michaelliao"]}
353	{"name":"rohannaidu","follow_whom":["lokhorst","DouglasBoubert","barentsen","carpedm20","tarraneh","segasai","kendricktan","pllim","chriscslaughter","astrofrog","profxj","yasharhezaveh","keflavich","jchelly","sblunt","christinahedges","RadxChangeSG","drphilmarshall","gnarayan","ACCarnall","johnnygreco","JohannesBuchner","jan-rybizki","adrn","bpholden","xiaohanzai","pcowpert","vbuterin","stacchella","gregreen","lgarrison","guillochon","catherinezucker","dr-guangtou","cmateu","davidwhogg","dfm","pacargile","abrkn","Ejhfast","dweisz","jieunchoi","erikzhang","mtlynch","hrishioa","loiluu","prateeksaxena","deadalnix","slush0","prusnak"]}
354	{"name":"jmeyers314","follow_whom":[]}
355	{"name":"panchuzhong","follow_whom":[]}
356	{"name":"rhayes777","follow_whom":["YaaOppong","jasonmayes","linan7788626","Razewolf","ZakkGriffiths","perrygeo","mcamila777","david1309","sgillies","Jammy2211","stomlin","nerVzzz","hjek","kzar"]}
357	{"name":"tcollett","follow_whom":[]}
358	{"name":"owertz","follow_whom":[]}
359	{"name":"JingZhaoQi","follow_whom":["typhooneye","wangdeng123","MorvanZhou","sfeeney","baudren","beyondgfw","srodney","owertz","tcollett","sum33it","kelthuzadx","chenjiandongx","CosmicFish","per-andersen","zhenhou","ja-vazquez","hao-wang","roban","congma"]}
360	{"name":"AJessWilliams","follow_whom":["sarah-gardner","Mark-Torrance","mark-andrews","Jammy2211"]}
361	{"name":"linan7788626","follow_whom":["torvalds"]}
362	{"name":"syrte","follow_whom":["wangleon","rougier","dr-guangtou","eugvas","ZhiyuZhang","Kein-Cary","rmandelb","guangtunbenzhu","ehalley","ewpeng","yangcht","AstroSong","weiguangcui","yymao","nye17","WentaoLuo","yihui","ColdThunder","liambx","Fmajor","luly42","emptymalei","hypergravity","Kambrian","jakevdp","legolason","RapidLzj","timothydmorton","rainwoodman","ruoyu0088"]}
363	{"name":"asdsteven","follow_whom":["lwymarie"]}
364	{"name":"csyhuang","follow_whom":["lmcinnes","maziyarpanahi","zbonnieho","bshillingford","yoursun0","ruizhang1122","jameslamb","holdenk","tmalaska","Quantisan","matthew-hsr","fjgreco","stoic-cyfung","amyching-Tempus","ashhafez","Skemes","mathartic","gregpalmier","chriseckertempus","louisfern","veredsil","ElliotDahl1986","bbsonjohn","stephaniehho","tqchen","Marchette","msbarnes","fchollet","karpathy","aching87","mine-cetinkaya-rundel","MLWave","zhuangyh","ramyead","bcaffo","AngelaVC","khabboud","mitsuhiko","InsightfullyYours","rempic","paulgowdy","lixu0818","ericmjl","ethen8181","TommyBlanchard","JBreedingAllison","zweinstein","tsoare","andrewenoble","japerk"]}
365	{"name":"JianiDing","follow_whom":["lwymarie","profxj"]}
366	{"name":"profxj","follow_whom":[]}
367	{"name":"cwfinn","follow_whom":["hemmer","ntejos","nhmc"]}
368	{"name":"snasab","follow_whom":[]}
369	{"name":"honleunglee","follow_whom":["TseChapman","madebyollin","csyhuang","pochoi","lwymarie"]}
370	{"name":"qian-yang","follow_whom":["chenjiandongx","vcheckzen","brandonckelly","WillKoehrsen","dstarkey23","rlwastro","kevinjameshunt","takkyon","xyz3919","profjsb","dan7geo","sk89q","dhuppenkothen","likebeta","yaoyuhan","boada","iancze","gnarayan","badbye","evandromr","zzxihep","suberlak","danielsf","pkuzhw387","cloumacleod","sniemi","kseth","khrapovs","XFW","jlfischer","blanton144","melaniebeck","mykytyn","askielboe","drgmk","jradavenport","gregreen","moustakas","kaylanb","rpplusplus","lsb","chairmank","scottdw1950-github","davidgrier","csibrahim","alalek","shantnu","mrnugget","arjundey","anthonyjsmith"]}
371	{"name":"Fmajor","follow_whom":["torvalds","defunkt","ruanyf","shadowsocksr-backup-release","masatake","yaniswang","chi-feng","ixkael","breakwa11","WangShu123","anthonyjsmith","maxogden","pandao","qshu","qiyeboy","RapidLzj","clowwindy","ericmandel","AstroProfundis","angusshire","fletcher","sahmes","skendrew","davidwhogg","gully","vim-scripts","hackedteam","yuanshuoastro","qian-yang","yulin-zhao","lwang-astro","albertfxwang","XiaoleiMeng","congma","fonnesbeck"]}
372	{"name":"pochoi","follow_whom":["jennybc","tkipf","lilianweng","jjallaire","geohot","kithomak","cshallue","ChrisRackauckas","honleunglee","Jutho","kbarbary","cmbant","karpathy","dustinvtran","moble","tskisner","marius311","stevengj","dsidavis","cernphsft","karenyyng","MikeInnes","EthanAnderes","jakevdp","minjay","hadley","duncantl","randy3k"]}
373	{"name":"AlexeyAB","follow_whom":["SergiySW","clemahieu","nghiaho12","pjreddie","HowardHinnant"]}
374	{"name":"zuochongyan","follow_whom":["cfo","zdzhaoyong","gaoxiang12","DavidLee999","Ewenwan","TimingSpace","PeiliangLi","songhan","tanglang96","yeshaokai","myinxd","qintonguav","shichaoy","ShaohuiLin","lixincn2015","daijifeng001","guanfuchen","yaringal","soumith","fchollet","floodsung"]}
375	{"name":"foolwood","follow_whom":["JonathonLuiten","yz93","lhanaf","Cysu","s9xie","feichtenhofer","achalddave","scaelles","qizhuli","SeanChenxy","lzrobots","huanghoujing","bilylee","fmassa","sfzhang15","BestSonny","anewell","Tmono","eladhoffer","apaszke","soumith","leonid-pishchulin","bearpaw","wangsr126","peiyunh","zhanghang1989","handong1587","HolmesShuan","ydwen","zibuyu","jvlmdr","eduardolundgren","ihpdep","alanlukezic","Yangqing","goodfeli","lukacu","vojirt","AlexeyAB","martin-danelljan","mbuckler","pjreddie","junyuGao","samhare","changhongjian","kli-crise","WizardYan","jbhuang0604","vedaldi","jotaf98"]}
\.


--
-- Name: following_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.following_relation_id_seq', 375, true);


--
-- Name: following_relation following_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.following_relation
    ADD CONSTRAINT following_relation_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

