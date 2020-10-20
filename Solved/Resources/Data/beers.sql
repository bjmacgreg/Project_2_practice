--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

SET default_table_access_method = heap;

--
-- Name: beers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.beers (
    beer_id integer NOT NULL,
    abv double precision,
    ibu double precision,
    beer_name character varying(255) NOT NULL,
    beer_style character varying(255),
    brewery_id integer NOT NULL,
    ounces double precision
);


ALTER TABLE public.beers OWNER TO postgres;

--
-- Name: breweries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.breweries (
    brewery_id integer NOT NULL,
    brewery_name character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL
);


ALTER TABLE public.breweries OWNER TO postgres;

--
-- Data for Name: beers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.beers (beer_id, abv, ibu, beer_name, beer_style, brewery_id, ounces) FROM stdin;
1436	0.05	\N	Pub Beer	American Pale Lager	408	12
2265	0.066	\N	Devil's Cup	American Pale Ale (APA)	177	12
2264	0.071	\N	Rise of the Phoenix	American IPA	177	12
2263	0.09	\N	Sinister	American Double / Imperial IPA	177	12
2262	0.075	\N	Sex and Candy	American IPA	177	12
2261	0.077	\N	Black Exodus	Oatmeal Stout	177	12
2260	0.045	\N	Lake Street Express	American Pale Ale (APA)	177	12
2259	0.065	\N	Foreman	American Porter	177	12
2258	0.055	\N	Jade	American Pale Ale (APA)	177	12
2131	0.086	\N	Cone Crusher	American Double / Imperial IPA	177	12
2099	0.07200000000000001	\N	Sophomoric Saison	Saison / Farmhouse Ale	177	12
2098	0.073	\N	Regional Ring Of Fire	Saison / Farmhouse Ale	177	12
2097	0.069	\N	Garce Selé	Saison / Farmhouse Ale	177	12
1980	0.085	\N	Troll Destroyer	Belgian IPA	177	12
1979	0.061	60	Bitter Bitch	American Pale Ale (APA)	177	12
2318	0.06	\N	Ginja Ninja	Cider	154	12
2170	0.06	\N	Cherried Away	Cider	154	12
2169	0.06	\N	Rhubarbarian	Cider	154	12
1502	0.06	\N	BrightCider	Cider	154	12
1593	0.08199999999999999	\N	He Said Baltic-Style Porter	Baltic Porter	368	12
1592	0.08199999999999999	\N	He Said Belgian-Style Tripel	Tripel	368	12
1036	0.099	92	Lower De Boom	American Barleywine	368	8.4
1024	0.079	45	Fireside Chat	Winter Warmer	368	12
976	0.079	\N	Marooned On Hog Island	American Stout	368	12
876	0.044	42	Bitter American	American Pale Ale (APA)	368	12
802	0.049	17	Hell or High Watermelon Wheat (2009)	Fruit / Vegetable Beer	368	12
801	0.049	17	Hell or High Watermelon Wheat (2009)	Fruit / Vegetable Beer	368	12
800	0.049	17	21st Amendment Watermelon Wheat Beer (2006)	Fruit / Vegetable Beer	368	12
799	0.07	70	21st Amendment IPA (2006)	American IPA	368	12
797	0.07	70	Brew Free! or Die IPA (2008)	American IPA	368	12
796	0.07	70	Brew Free! or Die IPA (2009)	American IPA	368	12
531	0.085	52	Special Edition: Allies Win The War!	English Strong Ale	368	12
432	0.097	94	Hop Crisis	American Double / Imperial IPA	368	12
353	0.044	42	Bitter American (2011)	American Pale Ale (APA)	368	12
321	0.079	45	Fireside Chat (2010)	Winter Warmer	368	12
173	0.068	65	Back in Black	American Black Ale	368	12
11	0.083	35	Monk's Blood	Belgian Dark Ale	368	12
10	0.07	65	Brew Free! or Die IPA	American IPA	368	12
9	0.049	17	Hell or High Watermelon Wheat	Fruit / Vegetable Beer	368	12
2519	0.07	82	Bimini Twist	American IPA	67	12
2518	0.05	\N	Beach Blonde	American Blonde Ale	67	12
2517	0.059	\N	Rod Bender Red	American Amber / Red Ale	67	12
2545	0.035	11	Passion Fruit Prussia	Berliner Weissbier	60	12
2544	0.045	18	Send Help	American Blonde Ale	60	12
2324	0.055	\N	Cast Iron Oatmeal Brown	American Brown Ale	60	12
2288	0.06	\N	Reprise Centennial Red	American Amber / Red Ale	60	12
2287	0.055	\N	Alter Ego	American Black Ale	60	12
2286	0.065	\N	Divided Sky	American IPA	60	12
2285	0.065	\N	Resurrected	American IPA	60	12
1870	0.05	28	Contact High	American Pale Wheat Ale	60	12
2603	0.065	\N	Galaxyfest	American IPA	27	16
2602	0.05	45	Citrafest	American IPA	27	16
2220	0.09	\N	Barn Yeti	Belgian Strong Dark Ale	27	16
2219	0.069	65	Scarecrow	American IPA	27	16
2218	0.09	50	Ironman	English Strong Ale	27	16
2217	0.046	15	Honey Kolsch	Kölsch	27	16
2216	0.052000000000000005	18	Copperhead Amber	Belgian Dark Ale	27	16
972	0.059	75	Rude Parrot IPA	American IPA	481	16
866	0.054000000000000006	30	British Pale Ale (2010)	English Pale Ale	481	16
48	0.054000000000000006	30	British Pale Ale	English Pale Ale	481	16
47	0.084	82	Ballz Deep Double IPA	American Double / Imperial IPA	481	16
1583	0.038	\N	Wolfman's Berliner	Berliner Weissbier	373	12
1165	0.055	26	Colorado Native	American Amber / Red Lager	462	12
431	0.055	26	Colorado Native (2011)	American Amber / Red Lager	462	12
516	0.065	52	Jockamo IPA	American IPA	533	12
515	0.042	13	Purple Haze	Fruit / Vegetable Beer	533	12
514	0.045	17	Abita Amber	American Amber / Red Lager	533	12
2540	0.08199999999999999	68	Citra Ass Down	American IPA	62	16
2539	0.05	20	The Brown Note	American Brown Ale	62	16
2686	0.08	68	Citra Ass Down	American Double / Imperial IPA	1	16
2685	0.125	80	London Balling	English Barleywine	1	16
2684	0.077	25	35 K	Milk / Sweet Stout	1	16
2683	0.042	42	A Beer	American Pale Ale (APA)	1	16
2682	0.05	25	Rules are Rules	German Pilsener	1	16
2681	0.066	21	Flesh Gourd'n	Pumpkin Ale	1	16
2680	0.04	13	Sho'nuff	Belgian Pale Ale	1	16
2679	0.055	17	Bloody Show	American Pilsner	1	16
2678	0.076	68	Rico Sauvin	American Double / Imperial IPA	1	16
2677	0.051	38	Coq de la Marche	Saison / Farmhouse Ale	1	16
2676	0.065	\N	Kamen Knuddeln	American Wild Ale	1	16
2675	0.06	65	Pile of Face	American IPA	1	16
2674	0.05	20	The Brown Note	English Brown Ale	1	16
1594	0.053	35	Maylani's Coconut Stout	American Stout	367	16
1162	0.05	35	Oatmeal PSA	American Pale Ale (APA)	367	16
1137	0.052000000000000005	33	Pre Flight Pilsner	American Pilsner	367	16
2403	0.04	20	P-Town Pilsner	American Pilsner	117	12
2402	0.053	36	Klickitat Pale Ale	American Pale Ale (APA)	117	12
2401	0.08199999999999999	103	Yellow Wolf Imperial IPA	American Double / Imperial IPA	117	12
1921	0.053	40	Freeride APA	American Pale Ale (APA)	270	12
1920	0.053	18	Alaskan Amber	Altbier	270	12
2501	0.057	\N	Hopalicious	American Pale Ale (APA)	73	12
1535	0.043	\N	Kentucky Kölsch	Kölsch	388	16
1149	0.065	\N	Kentucky IPA	American IPA	388	16
1474	0.054000000000000006	\N	Dusty Trail Pale Ale	American Pale Ale (APA)	401	16
1473	0.062	\N	Damnesia	American IPA	401	16
837	0.062	43	Desolation IPA	American IPA	401	16
2592	0.059	\N	Liberty Ale	American IPA	35	12
2578	0.065	\N	IPA	American IPA	35	12
2577	0.045	\N	Summer Wheat	American Pale Wheat Ale	35	12
2103	0.049	\N	California Lager	American Amber / Red Lager	35	12
2102	0.056	\N	Brotherhood Steam	California Common / Steam Beer	35	12
2291	0.042	\N	Blood Orange Gose	Gose	171	12
1818	0.042	\N	Keebarlin' Pale Ale	American Pale Ale (APA)	171	12
1738	0.048	\N	the Kimmie, the Yink and the Holy Gose	Gose	171	12
1563	0.06	\N	Fall Hornin'	Pumpkin Ale	171	12
1520	0.057	13	Barney Flats Oatmeal Stout	Oatmeal Stout	171	12
1350	0.056	4	Summer Solstice	Cream Ale	171	12
1327	0.07	80	Hop Ottin' IPA	American IPA	171	12
1326	0.058	15	Boont Amber Ale	American Amber / Red Ale	171	12
1221	0.057	13	Barney Flats Oatmeal Stout	Oatmeal Stout	171	12
1217	0.055	25	El Steinber Dark Lager	Vienna Lager	171	16
811	0.058	15	Boont Amber Ale (2010)	American Amber / Red Ale	171	12
753	0.056	4	Summer Solstice Cerveza Crema (2009)	Cream Ale	171	12
572	0.057	13	Barney Flats Oatmeal Stout (2012)	Oatmeal Stout	171	12
523	0.069	6	Winter Solstice	Winter Warmer	171	12
367	0.07	80	Hop Ottin' IPA (2011)	American IPA	171	12
78	0.058	15	Boont Amber Ale (2011)	American Amber / Red Ale	171	12
77	0.056	4	Summer Solstice (2011)	Cream Ale	171	12
76	0.055	28	Poleeko Gold Pale Ale (2009)	American Pale Ale (APA)	171	12
2337	0.06	\N	Charlie's Rye IPA	American IPA	146	16
410	0.054000000000000006	\N	River Pig Pale Ale	American Pale Ale (APA)	542	16
409	0.047	\N	Oaky's Oatmeal Stout	Oatmeal Stout	542	16
1294	0.05	\N	Angry Orchard Apple Ginger	Cider	434	16
1293	0.05	\N	Angry Orchard Crisp Apple	Cider	434	16
1292	0.05	\N	Angry Orchard Crisp Apple	Cider	434	12
2207	0.068	\N	Golden One	Belgian Pale Ale	193	12
2040	0.06	\N	Arjuna	Witbier	193	12
2039	0.085	\N	Uroboros	American Stout	193	12
2511	0.071	75	Long Leaf	American IPA	69	16
2510	0.047	19	Honey Badger Blonde	American Blonde Ale	69	16
2509	0.06	23	Porter (a/k/a Black Gold Porter)	American Porter	69	16
413	0.06	55	Sky High Rye	American Pale Ale (APA)	541	12
390	0.062	17	Whitsun	American Pale Wheat Ale	541	12
735	0.052000000000000005	\N	On-On Ale (2008)	American Pale Ale (APA)	513	12
1333	0.092	50	Quakertown Stout	American Double / Imperial Stout	426	12
1332	0.051	20	Greenbelt Farmhouse Ale	Saison / Farmhouse Ale	426	12
1172	0.052000000000000005	10	Mo's Gose	Gose	461	16
1322	0.07	45	Green Bullet Organic India Pale Ale	American IPA	429	16
550	0.032	27	Rocket Girl	Kölsch	528	12
429	0.053	26	Ninja Porter	American Porter	528	12
428	0.06	69	Shiva IPA	American IPA	528	12
1640	0.048	\N	Aslan Kölsch	Kölsch	353	16
1639	0.077	\N	Aslan IPA	American IPA	353	16
1638	0.077	\N	Aslan Amber	American Amber / Red Ale	353	16
597	0.056	27	This Season's Blonde	American Blonde Ale	523	12
596	0.07	67	Independence Pass Ale	American IPA	523	12
1580	0.057	40	Trolley Stop Stout	American Stout	374	12
980	0.08199999999999999	138	Bitter Bitch Imperial IPA	American Double / Imperial IPA	374	12
979	0.062	35	Poop Deck Porter	American Porter	374	12
978	0.06	35	Old Red Beard Amber Ale	American Amber / Red Ale	374	12
2503	0.075	115	Hop A-Peel	American Double / Imperial IPA	72	16
2502	0.055	12	Vanilla Java Porter	American Porter	72	16
2495	0.052000000000000005	\N	Michelada	Fruit / Vegetable Beer	72	16
534	0.045	8	Dirty Blonde Ale	American Blonde Ale	72	12
528	0.05	62	Grand Circus IPA	American IPA	72	12
527	0.05	12	Atwater's Lager	Munich Helles Lager	72	12
1409	0.07	\N	Heavy Machinery IPA Series #1: Heavy Fist	American Black Ale	413	16
343	0.062	\N	Fire Eagle IPA	American IPA	413	12
342	0.051	\N	Peacemaker	American Pale Ale (APA)	413	12
341	0.053	\N	Pearl-Snap	German Pilsener	413	12
340	0.052000000000000005	\N	Black Thunder	Schwarzbier	413	12
2589	0.08	\N	Raja	American Double / Imperial IPA	37	12
2546	0.064	\N	Perzik Saison	Saison / Farmhouse Ale	37	12
146	0.047	42	Avery Joe’s Premium American Pilsner	German Pilsener	37	12
108	0.056	10	White Rascal	Witbier	37	12
107	0.063	69	Avery India Pale Ale	American IPA	37	12
106	0.055	17	Ellie’s Brown Ale	American Brown Ale	37	12
1620	0.062	17	Pumpkin Beast	Pumpkin Ale	360	12
1579	0.07200000000000001	22	OktoberBeast	Märzen / Oktoberfest	360	12
1228	0.048	23	Mad Beach	American Pale Wheat Ale	360	12
705	0.067	\N	Hog Wild India Pale Ale	American IPA	360	12
704	0.092	5	Devils Tramping Ground Tripel	Tripel	360	12
702	0.061	41	Hot Rod Red	American Amber / Red Ale	360	12
2058	0.086	\N	Palate Mallet	American Double / Imperial IPA	235	12
1483	0.06	\N	Back East Porter	American Porter	235	12
1426	0.049	\N	Back East Golden Ale	American Blonde Ale	235	12
1132	0.07	\N	Misty Mountain IPA	American IPA	235	12
1131	0.05	\N	Back East Ale	American Amber / Red Ale	235	12
1876	0.06	\N	Truck Stop Honey Brown Ale	English Brown Ale	286	12
1875	0.06	43	Naked Pig Pale Ale	American Pale Ale (APA)	286	12
966	0.068	70	Topcutter India Pale Ale	American IPA	483	12
965	0.044	38	Field 41 Pale Ale	American Pale Ale (APA)	483	12
2593	0.07	\N	Grapefruit Sculpin	American IPA	34	12
2105	0.038	40	Even Keel	American IPA	34	12
1401	0.052000000000000005	23	Ballast Point Pale Ale	Kölsch	34	12
1400	0.07	75	Big Eye India Pale Ale	American IPA	34	12
1019	0.046	\N	Longfin Lager	Munich Helles Lager	34	12
1018	0.07	70	Sculpin IPA	American IPA	34	12
1776	0.045	\N	All Nighter Ale	Extra Special / Strong Bitter (ESB)	318	12
1644	0.045	20	Banner American Rye	Rye Beer	318	12
1643	0.035	45	Banner American Ale	American Amber / Red Ale	318	12
2618	0.07	46	Thai.p.a	American IPA	20	16
2005	0.06	60	Barrio Blanco	American IPA	251	12
1343	0.045	\N	Barrio Tucson Blonde	American Blonde Ale	251	12
2404	0.049	22	Hop in the ‘Pool Helles	American Pilsner	116	12
2323	0.067	60	Ultra Gnar Gnar IPA	American IPA	116	12
2189	0.068	62	In-Tents India Pale Lager	American Pale Lager	116	12
2188	0.05	20	Lost Meridian Wit	Witbier	116	12
2187	0.051	45	Celestial Meridian Cascadian Dark Lager	Euro Dark Lager	116	12
1966	0.054000000000000006	55	Wagon Party	California Common / Steam Beer	258	12
1965	0.067	70	Sky-Five	American IPA	258	12
1964	0.05	28	Stargrazer	Schwarzbier	258	12
1963	0.054000000000000006	48	Wonderstuff	German Pilsener	258	12
1855	0.053	\N	Tarnation California-Style Lager	California Common / Steam Beer	292	12
1778	0.07	42	On the Count of 3 (2015)	Hefeweizen	292	16
1209	0.047	\N	Summer Swelter	American Pale Wheat Ale	292	12
954	0.068	\N	Phantom Punch Winter Stout	Foreign / Export Stout	292	12
910	0.066	\N	Hayride Autumn Ale	Rye Beer	292	12
707	0.047	\N	Celsius Summer Ale (2012)	American Pale Wheat Ale	292	12
533	0.055	35	Amber Road	American Amber / Red Ale	292	12
183	0.049	28	Pamola Xtra Pale Ale	American Pale Ale (APA)	292	12
182	0.069	69	Stowaway IPA	American IPA	292	12
1806	0.08800000000000001	108	Hoptopus Double IPA	American Double / Imperial IPA	306	16
2435	0.05	10	Watermelon Ale	Fruit / Vegetable Beer	103	12
2423	0.058	45	Fenway American Pale Ale	American Pale Ale (APA)	103	12
2420	0.068	85	Back Bay IPA	American IPA	103	12
2419	0.048	16	Bunker Hill Blueberry Ale 	Other	103	12
2494	0.058	\N	Oberon	American Pale Wheat Ale	76	12
2325	0.06	\N	Smitten	Rye Beer	76	16
2022	0.05	\N	Winter White	Witbier	76	16
1989	0.058	\N	Oberon	American Pale Wheat Ale	76	16
1988	0.07	\N	Two Hearted	American IPA	76	16
1955	0.058	\N	Best Brown	American Brown Ale	76	16
2558	0.044	44	Moar	English India Pale Ale (IPA)	53	12
2557	0.083	\N	Uber Lupin Schwarz IPA	American Double / Imperial IPA	53	16
2556	0.057	27	Nordic Blonde	American Blonde Ale	53	12
2496	0.06	\N	Cold Press	American Black Ale	75	12
2410	0.07200000000000001	87	Harness the Winter	American IPA	75	12
1902	0.056	32	14° ESB 	Extra Special / Strong Bitter (ESB)	75	12
1901	0.062	68	Bent Hop Golden IPA	American IPA	75	12
1261	0.06	34	Bent Paddle Black Ale	American Black Ale	75	12
1253	0.05	38	Venture Pils	German Pilsener	75	12
1900	0.055	40	Lost Sailor IPA	English India Pale Ale (IPA)	278	12
1317	0.053	20	Steel Rail Extra Pale Ale	American Pale Ale (APA)	278	12
1158	0.078	\N	La Frontera Premium IPA	American IPA	463	12
1157	0.047	\N	Tejas Lager	Czech Pilsener	463	12
1156	0.064	\N	Number 22 Porter	American Porter	463	12
1155	0.056	\N	Big Bend Hefeweizen	Hefeweizen	463	12
1154	0.06	\N	Terlingua Gold	American Blonde Ale	463	12
2104	0.081	17	Aprè Shred	American Strong Ale	220	16
1762	0.095	104	Hemlock Double IPA	American Double / Imperial IPA	220	12
1422	0.041	\N	West Portal Colorado Common Summer Ale	California Common / Steam Beer	220	16
1067	0.067	85	Disconnected Red	American Amber / Red Ale	220	16
1003	0.07	\N	Big Elm IPA	American IPA	477	12
1002	0.065	\N	Gerry Dog Stout	American Stout	477	12
1001	0.06	\N	413 Farmhouse Ale	Saison / Farmhouse Ale	477	12
2639	0.08	54	Dark Star	American Stout	8	16
2469	0.062	\N	Ryecoe	American IPA	8	16
2586	0.06	\N	Blueberry Blonde	Fruit / Vegetable Beer	40	12
2585	0.075	60	Galaxy IPA	American IPA	40	16
643	0.05	32	Big River Pilsner	Czech Pilsener	519	12
632	0.06	55	House Brand IPA	American IPA	519	12
1714	0.062	65	Big Sky IPA	American IPA	336	12
1713	0.05	40	Scape Goat Pale Ale	English Pale Ale	336	12
1712	0.05	35	Montana Trout Slayer Ale	American Pale Wheat Ale	336	12
1711	0.051	26	Moose Drool Brown Ale	American Brown Ale	336	12
1456	0.07200000000000001	60	Powder Hound Winter Ale	English Strong Ale	336	12
767	0.051	26	Moose Drool Brown Ale (2011)	American Brown Ale	336	12
766	0.05	35	Montana Trout Slayer Ale (2012)	American Pale Wheat Ale	336	12
579	0.062	65	Big Sky IPA (2012)	American IPA	336	12
168	0.047	\N	Summer Honey	American Blonde Ale	336	12
159	0.05	40	Scape Goat Pale Ale (2010)	English Pale Ale	336	12
35	0.05	35	Montana Trout Slayer Ale (2009)	American Pale Wheat Ale	336	12
34	0.051	26	Moose Drool Brown Ale (2009)	American Brown Ale	336	12
2096	0.069	81	Arcus IPA	American IPA	221	12
2095	0.058	38	Wavemaker	American Amber / Red Ale	221	12
1257	0.053	43	Jack Pine Savage	American Pale Ale (APA)	444	16
1256	0.099	85	Forest Fire Imperial Smoked Rye	Rye Beer	444	16
1255	0.098	76	Bad Axe Imperial IPA	American Double / Imperial IPA	444	16
986	0.055	35	Morning Wood	Oatmeal Stout	444	16
985	0.066	50	Bark Bite IPA	American IPA	444	16
2508	0.055	45	Jalapeno Pale Ale	American Pale Ale (APA)	70	16
1441	0.052000000000000005	\N	Blown Out Brown	American Brown Ale	407	12
1413	0.063	\N	Single Hop Ale	American Pale Ale (APA)	407	12
1411	0.054000000000000006	\N	Sawtooth Ale	American Blonde Ale	407	12
2620	0.07200000000000001	75	Saucy Intruder	Rye Beer	18	16
2412	0.045	16	Deception	American Blonde Ale	112	12
1898	0.075	35	Blackmarket Rye IPA	American IPA	112	12
1897	0.05	8	Black Market Hefeweizen	Hefeweizen	112	12
1896	0.058	44	Aftermath Pale Ale	American Pale Ale (APA)	112	12
1850	0.071	83	American India Red Ale	American Strong Ale	294	12
1849	0.071	45	American Red Porter	American Porter	294	12
1848	0.078	34	American Red Saison	Saison / Farmhouse Ale	294	12
1847	0.066	44	Colorado Red Ale	American Amber / Red Ale	294	12
2485	0.048	16	Saddle Bronc Brown Ale	American Brown Ale	79	12
2484	0.046	20	Bomber Mountain Amber Ale	American Amber / Red Ale	79	12
2449	0.073	\N	Flying Sailor	Rye Beer	95	12
2634	0.048	47	Nordskye 	American IPA	12	12
2153	0.06	30	North Third Stout	Foreign / Export Stout	12	12
1953	0.052000000000000005	\N	Honey Lav	American Pale Wheat Ale	12	12
1496	0.068	\N	Coconut Brown Ale	American Brown Ale	12	12
1481	0.07	51	51K IPA	American IPA	12	12
1480	0.055	\N	Grand Rabbits	Cream Ale	12	12
1564	0.05	\N	1800 Big Log Wheat (2012)	American Pale Wheat Ale	380	12
1541	\N	\N	Double Play Pilsner	American Pilsner	380	12
1321	0.055	\N	Brewerhood Brown Ale	American Brown Ale	380	12
1320	0.08	\N	Last Call Imperial Amber Ale	American Amber / Red Ale	380	12
1319	0.096	\N	Pernicious Double IPA	American Double / Imperial IPA	380	12
1303	0.052000000000000005	\N	6-4-3 Double Play Pilsner	German Pilsener	380	12
1025	\N	\N	N Street Drive-In 50th Anniversary IPA	American Double / Imperial IPA	380	12
1012	0.05	\N	467 Ethan's Stout	American Stout	380	12
942	0.064	\N	1335 Wicked Snout	Saison / Farmhouse Ale	380	12
937	0.045	\N	543 Skull Creek Fresh Hopped Pale Ale	American Pale Ale (APA)	380	12
888	0.056	37	1327 Pod's ESB	Extra Special / Strong Bitter (ESB)	380	12
886	0.056	37	1327 Pod's ESB	Extra Special / Strong Bitter (ESB)	380	12
612	0.056	37	1327 Pod's ESB	Extra Special / Strong Bitter (ESB)	380	12
611	0.046	35	834 Happy As Ale	American Pale Ale (APA)	380	12
1372	0.059	\N	Yellow Collar	Mead	422	12
1371	0.059	\N	Green Collar	Mead	422	12
1812	0.08	80	Quarter Mile Double IPA	American Double / Imperial IPA	304	12
1547	0.059	60	Full Nelson Pale Ale	American Pale Ale (APA)	382	12
1546	0.065	30	Steel Wheels ESB	Extra Special / Strong Bitter (ESB)	382	12
1545	0.053	22	Blue Mountain Classic Lager	Euro Pale Lager	382	12
119	0.059	60	Full Nelson Pale Ale (2010)	American Pale Ale (APA)	382	12
1408	0.049	16	Kölsch 151	Kölsch	414	12
2490	\N	\N	Professor Black	American Stout	77	12
2489	\N	\N	Little Boss	American Pale Wheat Ale	77	12
2488	\N	\N	Van Dayum!	American Amber / Red Ale	77	12
2487	\N	\N	Spirit Animal	American Pale Ale (APA)	77	12
939	0.07	\N	Toxic Sludge	American Black Ale	489	16
692	0.06	40	Blue Point White IPA	American White IPA	489	12
667	0.044	16	Blue Point Summer Ale	American Blonde Ale	489	12
665	0.055	28	Toasted Lager	Vienna Lager	489	12
1607	0.06	\N	Bohemian Export Lager	Dortmunder / Export Lager	364	12
1597	0.053	\N	Altus Bohemes Altbier	Altbier	364	12
344	0.04	\N	Cherny Bock	Schwarzbier	364	12
89	0.05	\N	Czech Pilsner	Czech Pilsener	364	12
88	0.05	\N	Viennese Lager	Vienna Lager	364	12
1569	0.065	\N	Mad Manatee IPA	American IPA	378	12
1568	0.055	\N	Killer Whale Cream Ale	Cream Ale	378	12
1188	0.06	\N	Duke's Cold Nose Brown Ale	American Brown Ale	378	12
1891	0.042	30	Longhop IPA	American IPA	281	16
1890	0.04	34	Lucky Buck	Irish Dry Stout	281	16
577	0.051	\N	Bomb Lager (New Recipe)	Munich Helles Lager	525	12
513	0.045	27	Bomb Lager (Old Recipe)	Munich Helles Lager	525	12
2422	0.066	72	Firestarter India Pale Ale	American IPA	107	12
1727	0.075	22	Kilt Dropper Scotch Ale	Scotch Ale / Wee Heavy	107	16
1614	0.048	30	Wood Splitter Pilsner	Czech Pilsener	107	16
1613	0.056	26	Gyptoberfest	Märzen / Oktoberfest	107	12
1549	0.07	94	Farmer Wirtz India Pale Ale	English India Pale Ale (IPA)	107	16
1548	0.047	\N	Slow & Steady Golden Ale	American Blonde Ale	107	12
1517	0.068	\N	Pink-I Raspberry IPA	American IPA	107	16
1500	0.047	\N	Moe's Original Bar B Que 'Bama Brew Golden Ale	American Blonde Ale	107	12
1421	0.047	\N	Live Local Golden Ale	American Blonde Ale	107	12
1360	0.048	38	Screaming Eagle Special Ale ESB	Extra Special / Strong Bitter (ESB)	107	12
1184	0.049	\N	Dirtbag Dunkel	Munich Dunkel Lager	107	16
1183	0.053	45	Kindler Pale Ale	American Pale Ale (APA)	107	12
1023	0.064	\N	Mistress Winter Wheat	Winter Warmer	107	12
998	0.061	\N	Tent Pole Vanilla Porter	American Porter	107	16
997	0.058	\N	Awry Rye Pale Ale	American Pale Ale (APA)	107	12
996	0.058	\N	Demshitz Brown Ale	American Brown Ale	107	12
931	0.048	\N	Wood Splitter Pilsner (2012)	Czech Pilsener	107	12
798	0.048	\N	Brush Creek Blonde	American Blonde Ale	107	16
633	0.066	72	Firestarter India Pale Ale	American IPA	107	16
2062	0.071	16	Noche Dulce	American Porter	231	16
1830	0.045	8	Porch Rocker	Radler	300	12
1629	0.065	45	Rebel IPA	American IPA	300	16
1601	0.055	\N	Cold Snap	Witbier	300	12
1427	0.056	\N	Samuel Adams Winter Lager	Bock	300	12
1349	0.049	30	Boston Lager	Vienna Lager	300	16
1310	0.049	30	Boston Lager	Vienna Lager	300	12
1281	0.053	15	Samuel Adams Octoberfest	Märzen / Oktoberfest	300	12
1144	0.053	7	Samuel Adams Summer Ale	American Pale Wheat Ale	300	12
1143	0.049	30	Boston Lager	Vienna Lager	300	12
1395	0.049	35	Hazed & Infused	American Pale Ale (APA)	417	12
808	0.057	35	Hoopla Pale Ale	American Pale Ale (APA)	417	12
81	0.049	35	Hazed & Infused (2010)	American Pale Ale (APA)	417	12
2596	0.062	80	Heavy Lifting	American IPA	31	12
2300	0.065	\N	1492	American Pale Ale (APA)	167	12
2299	0.058	\N	Mango Ginger	American IPA	167	12
2298	0.047	\N	Passenger	English Dark Mild Ale	167	12
2107	0.06	52	Plum St. Porter	American Porter	219	12
1573	0.057	52	Plum St. Porter	American Porter	219	12
1289	0.07	80	Bozone HopZone IPA	American IPA	219	12
1288	0.06	25	Bozone Hefe Weizen	Hefeweizen	219	12
470	0.055	\N	Bozone Select Amber Ale	American Amber / Red Ale	219	12
2167	0.052000000000000005	40	Evil Owl	American Amber / Red Ale	207	12
2204	0.05	\N	Post Time Kölsch	Kölsch	195	16
1522	0.042	9	Agave Wheat	American Pale Wheat Ale	391	12
397	0.045	15	SummerBright Ale	American Pale Wheat Ale	391	12
193	0.062	68	Lucky U IPA	American IPA	391	12
83	0.054000000000000006	19	Avalanche Ale	American Amber / Red Ale	391	12
1802	0.05	\N	You're My Boy, Blue	Fruit / Vegetable Beer	308	12
1801	0.07200000000000001	60	Last Stop IPA	American IPA	308	12
1800	0.05	21	Rollin Dirty Red Ale	Irish Red Ale	308	12
1799	0.055	28	Are Wheat There Yet?	American Pale Wheat Ale	308	12
2619	0.058	\N	Insert Hop Reference	American Pale Ale (APA)	19	16
2468	0.053	\N	Manitou Amber	American Amber / Red Ale	85	16
2637	0.067	\N	Belfort	Saison / Farmhouse Ale	10	16
2636	0.06	\N	Star Runner	Belgian Pale Ale	10	16
2598	0.098	\N	Tart Side of the Barrel	American Double / Imperial Stout	10	16
2597	0.06	\N	Linnaeus Mango IPA	American IPA	10	16
2548	0.07	\N	Beasts A'Burnin'	Rauchbier	10	16
2542	0.077	\N	Verdun	Bière de Garde	10	16
2541	0.065	\N	Barrel Aged Triomphe	Belgian IPA	10	16
2504	0.065	\N	Cherry Doppelbock	Doppelbock	10	16
2500	0.065	\N	Tropical Saison	Saison / Farmhouse Ale	10	16
2499	0.065	\N	Beach Patrol	Witbier	10	16
2498	0.05	\N	Nuit Serpent	Belgian IPA	10	16
2481	0.09	\N	Paris	Saison / Farmhouse Ale	10	16
2476	0.055	\N	The Grand Army	Belgian IPA	10	16
2467	0.059	\N	Acidulated Trip	Saison / Farmhouse Ale	10	16
2466	0.066	\N	Root Stock	Rye Beer	10	16
2465	0.041	\N	Mind Games	Dunkelweizen	10	16
2433	0.08199999999999999	\N	Sous Chef	Belgian Strong Pale Ale	10	16
2418	0.065	\N	Dubbelicious	Dubbel	10	16
2416	0.062	\N	Psychopomp	Belgian Dark Ale	10	16
2382	\N	\N	Fat Paczki	Belgian Dark Ale	10	16
2381	\N	\N	Earth-Like Planets	Belgian Pale Ale	10	16
2290	0.061	\N	Ski Patrol	Witbier	10	16
2241	0.063	\N	Viking Ice Hole	Oatmeal Stout	10	16
2240	0.056	\N	Rye Porter	American Porter	10	16
2137	0.099	\N	Wizard Burial Ground	Quadrupel (Quad)	10	16
2101	0.051	\N	Smoky Wheat	Rauchbier	10	16
2092	0.062	\N	BRIPA	Belgian IPA	10	16
2091	0.062	\N	Mela	Belgian Dark Ale	10	16
2086	0.053	\N	W.I.P.A Snappa	Belgian IPA	10	16
2023	0.063	\N	Pepper in the Rye	Rye Beer	10	16
2006	0.064	\N	Moe Lasses'	American Stout	10	16
1997	0.07	\N	Pumpkin Tart	Fruit / Vegetable Beer	10	16
1977	0.067	\N	Undertaker	Belgian Dark Ale	10	16
1976	0.067	\N	Undertaker (2014)	Belgian Dark Ale	10	16
1974	0.05	\N	Coq D'Or	Belgian Pale Ale	10	16
1973	0.06	\N	North French	Bière de Garde	10	16
1959	0.065	\N	Agent a Deux	Belgian Dark Ale	10	16
1958	0.045	\N	Belgian Wit	Witbier	10	16
1949	0.063	\N	Pothole Stout	American Stout	10	16
1947	0.093	\N	Tree Bucket	Belgian IPA	10	16
1785	0.073	\N	Le Flaneur Ale	American Wild Ale	10	16
1651	0.056	\N	Maize & Blueberry	Fruit / Vegetable Beer	10	16
1443	0.093	\N	Trebuchet Double IPA	American Double / Imperial IPA	10	16
1352	0.065	\N	Contemplation	Bière de Garde	10	16
1267	0.05	\N	Black Rabbit	American Black Ale	10	16
1266	0.09	\N	Zaison	Saison / Farmhouse Ale	10	16
1178	0.08199999999999999	\N	Vivant Tripel	Tripel	10	16
1136	0.098	\N	Tart Side of the Moon	Belgian Dark Ale	10	16
1044	0.06	\N	Big Red Coq	American Amber / Red Ale	10	16
1033	0.099	\N	Hubris Quadrupel Anniversary Ale	Quadrupel (Quad)	10	16
1031	0.095	\N	Plow Horse Belgian Style Imperial Stout	American Double / Imperial Stout	10	16
909	0.092	\N	Escoffier Bretta Ale	American Wild Ale	10	16
873	0.065	\N	Contemplation (2012)	Bière de Garde	10	16
860	0.099	\N	Vivant Belgian Style Imperial Stout (2012)	Russian Imperial Stout	10	16
677	0.062	\N	Big Red Coq (2012)	American Amber / Red Ale	10	16
671	0.09	\N	Zaison (2012)	Saison / Farmhouse Ale	10	16
670	0.092	\N	Vivant Tripel (2012)	Tripel	10	16
669	0.097	\N	Trebuchet Double IPA (2012)	Belgian IPA	10	16
627	0.085	\N	Kludde	Belgian Strong Dark Ale	10	16
387	0.055	\N	Farm Hand	Saison / Farmhouse Ale	10	16
385	0.06	\N	Solitude	Belgian Pale Ale	10	16
384	0.065	\N	Triomphe	Belgian IPA	10	16
1096	\N	\N	Tampa Pale Ale	American Pale Ale (APA)	467	12
1095	\N	\N	Orange Grove Wheat Ale	American Pale Wheat Ale	467	12
2456	0.061	\N	Broad Brook Ale	American Amber / Red Ale	89	16
921	0.05	15	Northern Lights Amber Ale	American Amber / Red Ale	493	12
920	0.052000000000000005	17	Polar Pale Ale	American Pale Ale (APA)	493	12
919	0.048	\N	Chugach Session Ale	Cream Ale	493	12
648	0.061	64	Fairweather IPA	American IPA	493	12
1279	0.068	47	East India Pale Ale	English India Pale Ale (IPA)	437	16
756	0.045	\N	Brooklyn Summer Ale	English Pale Mild Ale	437	12
566	0.068	47	East India Pale Ale	English India Pale Ale (IPA)	437	12
328	0.045	\N	Brooklyn Summer Ale (2011)	English Pale Mild Ale	437	12
66	0.052000000000000005	\N	Brooklyn Lager (16 oz.)	American Amber / Red Lager	437	16
65	0.052000000000000005	\N	Brooklyn Lager (12 oz.)	American Amber / Red Lager	437	12
538	0.08	\N	Tour de Nez Belgian IPA (Current)	Belgian IPA	530	16
504	\N	\N	Roler Bock (Current)	Maibock / Helles Bock	530	16
383	0.073	85	Black Adder IBA (Current)	American Black Ale	530	16
29	0.099	\N	Very Noddy Lager (Current)	Schwarzbier	530	16
28	0.062	42	Tule Duck Red Ale (Current)	American Amber / Red Ale	530	16
27	0.058	35	Original Orange Blossom Ale (Current)	Herbed / Spiced Beer	530	16
26	0.052000000000000005	40	Black Noddy Lager (Current)	Schwarzbier	530	16
1627	0.053	\N	Cleveland Beer Week 2013	Munich Helles Lager	357	16
2552	0.045	\N	Painted Turtle	American Pale Ale (APA)	56	12
2125	0.06	40	1836	American Blonde Ale	214	12
2124	0.06	20	Summer's Wit	Witbier	214	12
2123	0.09	118	More Cowbell	American Double / Imperial IPA	214	16
2608	0.065	\N	Wrath of Pele	American Brown Ale	24	16
2607	0.068	\N	Black Beer'd	American Black Ale	24	16
2606	0.078	\N	Mr. Tea	Fruit / Vegetable Beer	24	24
2478	0.055	40	Pale Alement	American Pale Ale (APA)	24	12
2471	0.099	115	Hopkick Dropkick	American Double / Imperial IPA	24	12
2470	0.06	\N	Kreamed Corn	Cream Ale	24	12
2464	0.065	\N	Coconoats	American Pale Wheat Ale	24	16
2160	0.068	16	Joey Wheat	American Pale Wheat Ale	24	16
2158	0.07200000000000001	86	3:33 Black IPA	American IPA	24	16
2072	0.068	\N	MCA	American IPA	24	16
2054	0.055	40	Pale Alement	American Pale Ale (APA)	24	16
2196	0.05	14	Couch Select Lager	American Pale Lager	197	12
668	0.056	36	Mucho Aloha Hawaiian Pale Ale	American Pale Ale (APA)	517	12
52	0.049	\N	Heinnieweisse Weissebier	Hefeweizen	556	12
51	0.068	\N	Snapperhead IPA	American IPA	556	12
50	0.049	\N	Moo Thunder Stout	Milk / Sweet Stout	556	12
49	0.043	\N	Porkslap Pale Ale	American Pale Ale (APA)	556	12
2657	0.093	\N	Blackbeard	American Double / Imperial Stout	5	12
2656	0.062	\N	Rye Knot	American Brown Ale	5	12
2655	0.06	\N	Dead Arm	American Pale Ale (APA)	5	12
2654	0.048	\N	32°/50° Kölsch 	Kölsch	5	16
2653	0.077	\N	HopArt	American IPA	5	16
2652	0.097	\N	Boy King	American Double / Imperial IPA	5	16
2252	0.052000000000000005	\N	Gran Sport	American Porter	182	16
2214	0.053	25	Horny Toad Cerveza	American Blonde Ale	182	16
2213	0.063	35	Native Amber	American Amber / Red Ale	182	16
1442	0.068	100	F5 IPA	American IPA	182	16
170	0.063	35	Native Amber (2013)	American Amber / Red Ale	182	16
169	0.053	25	Horny Toad Cerveza (2013)	American Blonde Ale	182	16
2315	0.068	100	Hopportunity Knocks IPA	American IPA	155	12
1808	0.06	\N	Pilot Rock Porter	American Porter	155	12
1419	0.056	55	Caldera Pale Ale	American Pale Ale (APA)	155	12
878	0.039	16	Lawnmower Lager	American Adjunct Lager	155	12
794	0.054000000000000006	24	Ashland Amber Ale (2009)	American Amber / Red Ale	155	12
793	0.061	94	Caldera IPA (2009)	American IPA	155	12
792	0.061	94	Caldera IPA (2007)	American IPA	155	12
791	0.056	55	Caldera Pale Ale (2010)	American Pale Ale (APA)	155	12
790	0.056	55	Caldera Pale Ale (2009)	American Pale Ale (APA)	155	12
789	0.056	55	Caldera Pale Ale (2005)	American Pale Ale (APA)	155	12
788	0.056	55	Caldera Pale Ale (2007)	American Pale Ale (APA)	155	12
38	0.056	55	Caldera Pale Ale (2011)	American Pale Ale (APA)	155	12
37	0.054000000000000006	24	Ashland Amber Ale	American Amber / Red Ale	155	12
36	0.061	94	Caldera IPA	American IPA	155	12
2257	0.05	\N	Remain in Light	American Pilsner	178	12
2256	0.065	\N	Flower Child (2014)	American IPA	178	12
870	\N	\N	THP White (2006)	Witbier	497	12
869	\N	\N	THP Amber (2006)	American Amber / Red Ale	497	12
868	\N	\N	THP Light (2006)	American Blonde Ale	497	12
867	\N	\N	THP Dark (2006)	English Dark Mild Ale	497	12
2068	0.099	43	Imperial Pumpkin Stout	Pumpkin Ale	230	16
2067	0.09	130	Dead-Eye DIPA	American Double / Imperial IPA	230	16
2066	0.055	64	Fisherman's IPA	American IPA	230	12
2065	0.054000000000000006	35	Fisherman's Pils	German Pilsener	230	12
2064	0.055	30	Fisherman's Brew	American Amber / Red Ale	230	12
1928	0.055	35	Cape Cod Red	American Amber / Red Ale	267	16
1927	0.049	10	Beach Blonde	American Blonde Ale	267	16
2227	0.065	80	Dark Voyage Black IPA (2013)	American Black Ale	192	12
2226	0.052000000000000005	28	Wisconsin Amber	Vienna Lager	192	12
2225	0.046	18	Lake House	Munich Helles Lager	192	12
1954	0.056	55	Ghost Ship White IPA	American IPA	192	12
1910	0.046	18	Lake House	Munich Helles Lager	192	16
1177	0.062	70	Mutiny IPA	American IPA	192	12
840	0.052000000000000005	\N	Wisconsin Amber (1998)	Vienna Lager	192	12
180	0.042	\N	Island Wheat	American Pale Wheat Ale	192	12
63	0.052000000000000005	\N	Wisconsin Amber (2013)	Vienna Lager	192	12
62	0.05	\N	U.S. Pale Ale	American Pale Ale (APA)	192	12
61	\N	\N	Supper Club Lager	American Pale Lager	192	12
784	0.04	\N	Carolina Lighthouse (2007)	American Blonde Ale	504	12
783	0.05	\N	Carolina Blonde (2006)	American Blonde Ale	504	12
782	0.035	\N	Carolina Blonde Light (2005)	American Blonde Ale	504	12
2255	0.059	22	Santa's Secret	Winter Warmer	179	16
530	0.057	\N	Flagship IPA	English India Pale Ale (IPA)	179	12
427	0.051	\N	Sky Blue Golden Ale	Kölsch	179	12
2094	0.099	100	Epitome	American Black Ale	222	16
1941	0.039	9	Monkey Chased the Weasel	Berliner Weissbier	222	16
1940	0.078	80	077XX	American Double / Imperial IPA	222	16
1439	0.042	35	Boat Beer	American IPA	222	12
1465	0.069	\N	Granny Smith Hard Apple Cider	Cider	404	16
1464	0.069	\N	Dry Hard Apple Cider	Cider	404	16
1744	0.056	\N	Farmer Ted's Cream Ale	Cream Ale	331	12
1743	0.052000000000000005	\N	Firewater India Pale Ale	American IPA	331	12
1742	0.047	\N	White Zombie Ale	Witbier	331	12
1719	0.07	\N	King Winterbolt Winter Ale	Winter Warmer	331	12
638	0.047	\N	White Zombie Ale	Witbier	331	12
507	0.052000000000000005	\N	Firewater India Pale Ale	American IPA	331	12
480	0.056	\N	Farmer Ted's Farmhouse Cream Ale	Cream Ale	331	12
1882	0.048	16	Whitecap Wit	Witbier	285	16
1881	0.078	16	Seiche Scottish Ale	Scottish Ale	285	16
2446	0.058	\N	Peanut Butter Jelly Time	American Brown Ale	96	12
2106	0.054000000000000006	\N	King Coconut	American Porter	96	12
2600	0.085	90	Gone A-Rye	American Double / Imperial IPA	29	16
2210	\N	\N	Special Release	\N	29	16
2052	0.068	70	Dankosaurus	American IPA	29	16
1584	0.051	35	Scruffy's Smoked Alt	Smoked Beer	29	16
1182	0.051	36	Elliott's Phoned Home Pale Ale	American Pale Ale (APA)	29	16
1050	0.05	18	The Lawn Ranger	Cream Ale	29	16
1219	0.05	\N	All American Blonde Ale	American Blonde Ale	452	12
1218	0.05	\N	All American Red Ale	American Amber / Red Ale	452	12
2377	0.05	40	Main St. Virginia Ale	Altbier	122	12
1839	0.045	24	Chin Music Amber Lager	American Amber / Red Lager	122	12
1248	0.05	40	Main St. Virginia Ale	Altbier	122	12
1247	0.052000000000000005	42	Ray Ray’s Pale Ale	American Pale Ale (APA)	122	12
1649	0.051	15	Chai Ale	Herbed / Spiced Beer	350	16
1648	0.07200000000000001	85	Lucky Day IPA	American IPA	350	16
1647	0.095	99	Terrace Hill Double IPA	American Double / Imperial IPA	350	16
1646	0.075	77	Catch 23	American Black Ale	350	16
2057	0.07	\N	Stickin' In My Rye	Rye Beer	236	24
2056	0.06	45	Black Me Stout	American Stout	236	12
2055	0.05	22	Killer Kolsch	Kölsch	236	12
1933	0.07	65	Missile IPA	American IPA	236	12
2019	0.045	\N	Enlighten	Kölsch	250	16
2018	0.065	8	Ale Cider	Fruit / Vegetable Beer	250	16
2017	0.055	30	Pail Ale	American Pale Ale (APA)	250	16
2016	0.045	\N	Englishman	English Brown Ale	250	16
2080	0.08	69	8 Barrel	American Strong Ale	226	16
2079	0.055	40	Oktoberfest	Märzen / Oktoberfest	226	16
2380	0.057	58	IPA #11	American IPA	121	16
2379	0.057	10	Blood Orange Honey	Fruit / Vegetable Beer	121	16
2354	0.052000000000000005	\N	Lighthouse Amber	Altbier	121	16
2440	0.08900000000000001	126	Bay of Bengal Double IPA (2014)	American Double / Imperial IPA	99	12
567	0.049	29	Churchkey Pilsner Style Beer	American Pilsner	526	12
1342	0.05	\N	First Press	Cider	425	12
1341	0.05	\N	Magic Apple	Cider	425	12
2349	0.055	25	Cubano Espresso	Bock	141	12
2014	0.062	65	Operation Homefront	American IPA	141	12
2013	0.08199999999999999	65	Wandering Pelican	American Black Ale	141	12
2012	0.055	\N	Sugar Plum	American Brown Ale	141	12
2011	0.055	\N	Oktoberfest	Märzen / Oktoberfest	141	12
2010	0.06	\N	Puppy's Breath Porter	American Porter	141	12
2009	0.045	\N	Happening Now	American IPA	141	12
1726	0.07	60	Hopped on the High Seas (Hop #529)	American IPA	141	12
1725	0.07	60	Hopped on the High Seas (Calypso)	American IPA	141	12
1695	0.063	\N	Wiregrass Post-Prohibition Ale	American Pale Ale (APA)	141	12
1694	0.07	60	Dry-Hopped On The High Seas Caribbean-Style IPA	American IPA	141	12
1693	0.07	60	Hopped on the High Seas (Citra)	American IPA	141	12
1692	0.07	60	Hopped on the High Seas (Ahtanum)	American IPA	141	12
1369	0.055	\N	Gwar Beer	American Pale Ale (APA)	141	12
1243	0.052000000000000005	\N	Tropical Heatwave	American Pale Wheat Ale	141	16
1142	0.075	70	Humidor Series India Pale Ale	American IPA	141	12
1141	0.075	70	Jai Alai IPA Aged on White Oak	American IPA	141	12
1140	0.08	65	José Martí American Porter	American Porter	141	12
1139	0.05	\N	Invasion Pale Ale	American Pale Ale (APA)	141	12
1138	0.055	25	Maduro Brown Ale	English Brown Ale	141	12
571	0.055	25	Maduro Brown Ale	American Brown Ale	141	12
570	0.05	\N	Hotter Than Helles Lager	Munich Helles Lager	141	12
569	0.07200000000000001	75	Tocobaga Red Ale	American Amber / Red Ale	141	12
546	0.075	70	Jai Alai IPA	American IPA	141	12
545	0.05	18	Florida Cracker Belgian Wit	Witbier	141	12
2338	0.048	\N	Shark Tracker Light lager	Light Lager	145	12
1365	0.06	\N	Pumple Drumkin	Pumpkin Ale	145	12
1094	0.045	\N	Grey Lady	Witbier	145	12
657	0.062	\N	Summer of Lager	Munich Helles Lager	145	12
656	0.065	\N	Indie Pale Ale	American IPA	145	12
359	0.038	\N	Sankaty Light Lager	Light Lager	145	12
56	0.056	\N	Whale's Tale Pale Ale	English Pale Ale	145	12
1772	0.067	60	Jacaranada Rye IPA	American IPA	320	16
1393	0.06	75	Cascadian Dark Ale	American Black Ale	418	12
893	0.044	13	Wheat the People	American Pale Wheat Ale	418	16
1407	0.047	17	Tybee Island Blonde	American Blonde Ale	415	12
1406	0.062	55	Savannah Brown Ale	American Brown Ale	415	12
2438	0.046	11	Rhode Island Blueberry	Kölsch	101	12
2437	0.065	75	Newport Storm IPA	American IPA	101	12
751	0.052000000000000005	24	Hurricane Amber Ale (2004)	American Amber / Red Ale	101	12
120	0.052000000000000005	24	Hurricane Amber Ale	American Amber / Red Ale	101	12
2061	0.058	\N	Big Blue Van	Fruit / Vegetable Beer	232	16
970	0.068	75	Des Moines IPA	American IPA	482	16
969	0.048	22	Capital Gold Golden Lager	German Pilsener	482	16
968	0.056	21	Farmer John's Multi-Grain Ale	American Blonde Ale	482	16
2351	0.05	\N	Behemoth	American Pilsner	139	12
1650	0.052000000000000005	\N	Arkansas Red	American Amber / Red Ale	139	12
1337	0.057	\N	Core Oatmeal Stout	Oatmeal Stout	139	12
1336	0.061	\N	Core ESB	Extra Special / Strong Bitter (ESB)	139	12
737	0.038	\N	Chester's Beer (2005)	American Pale Lager	512	12
129	0.05	\N	Heiner Brau Kölsch	Kölsch	553	12
716	0.048	\N	Trigger Blonde Ale	American Blonde Ale	515	16
659	0.075	29	Crabtree Oatmeal Stout	Oatmeal Stout	515	16
556	0.077	71	Eclipse Black IPA	American Black Ale	515	16
2538	0.06	46	Neomexicanus Native	American Pale Ale (APA)	63	12
2355	0.075	25	Old Soul	Belgian Strong Pale Ale	63	12
1689	0.059	\N	Snowcat Coffee Stout	American Stout	63	12
1163	\N	\N	WinterWonderGrass Festival Ale	American Amber / Red Ale	63	12
940	\N	\N	Boohai Red Ale	American Amber / Red Ale	63	12
685	0.052000000000000005	15	Lava Lake Wit	Witbier	63	12
613	0.06	\N	Mountain Livin' Pale Ale	American Pale Ale (APA)	63	12
356	0.052000000000000005	25	Crazy Mountain Amber Ale	American Amber / Red Ale	63	12
2029	0.065	65	Tropicalia	American IPA	247	12
2028	0.045	\N	Athena	Berliner Weissbier	247	12
2293	0.049	25	Aviator Raspberry Blonde	American Blonde Ale	169	12
1105	0.055	\N	3 Picket Porter	American Porter	169	12
1104	0.056	\N	Rusty Nail Pale Ale	American Pale Ale (APA)	169	12
2145	0.065	\N	Red Water Irish Style Red	American Amber / Red Ale	212	12
1804	0.066	\N	Mjöllnir	Herbed / Spiced Beer	212	12
1602	0.055	\N	Bear Butte Nut Brown Ale	American Brown Ale	212	12
1301	0.045	\N	Easy Livin' Summer Ale	American Blonde Ale	212	12
542	0.055	\N	Canyon Cream Ale	Cream Ale	212	12
272	0.069	\N	Pile O'Dirt Porter	American Porter	212	12
271	0.06	\N	11th Hour IPA	American IPA	212	12
1057	0.06	31	South Ridge Amber Ale	American Amber / Red Ale	472	16
681	0.052000000000000005	23	Summertime Ale	Kölsch	472	16
1789	0.049	\N	Lost River Blonde Ale	American Blonde Ale	315	16
1788	0.054000000000000006	\N	Monon Wheat	Witbier	315	16
1787	0.08	\N	Floyd's Folly	Scottish Ale	315	16
1786	0.063	\N	Half Court IPA	American IPA	315	16
1763	0.045	\N	Geary's Pale Ale	English Pale Ale	323	12
1311	0.06	\N	Geary's Summer Ale	Kölsch	323	12
2078	0.08	\N	Stone of Arbroath	Scotch Ale / Wee Heavy	227	12
1809	0.05	15	The Tradition	American Blonde Ale	227	12
1263	0.053	11	El Hefe Speaks	Hefeweizen	227	12
1092	0.055	\N	Penn Quarter Porter	American Porter	227	12
851	0.092	115	On the Wings of Armageddon	American Double / Imperial IPA	227	12
186	0.065	80	The Corruption	American IPA	227	12
185	0.07	\N	The Citizen	Belgian Pale Ale	227	12
184	0.06	\N	The Public	American Pale Ale (APA)	227	12
1224	0.065	\N	Dank IPA	American IPA	451	16
964	0.065	\N	Dank IPA (2012)	American IPA	451	16
1623	0.07200000000000001	\N	Lift Off IPA	American IPA	358	16
110	0.055	\N	BrewFarm Select Golden Lager	American Pale Lager	554	12
1735	0.05	\N	Sprocket Blonde Ale (2006)	American Blonde Ale	333	12
1734	0.05	\N	Sprocket Pale Ale (2006)	American Pale Ale (APA)	333	12
1746	0.063	37	Dead Armadillo Amber Ale	American Amber / Red Ale	330	12
2371	0.06	\N	Neato Bandito	Euro Pale Lager	127	12
2251	0.075	33	Oak Cliff Coffee Ale	American Brown Ale	127	12
2166	0.085	100	Dream Crusher Double IPA	American Double / Imperial IPA	127	12
1827	0.06	\N	Deep Ellum Pale Ale	American Pale Ale (APA)	127	12
1203	0.07	\N	Double Brown Stout	Baltic Porter	127	12
1202	0.048	25	Farmhouse Wit	Saison / Farmhouse Ale	127	16
1161	0.046	\N	Rye Pils Session Lager	German Pilsener	127	12
946	0.052000000000000005	23	Dallas Blonde	American Blonde Ale	127	12
943	0.07	70	Deep Ellum IPA	American IPA	127	12
1886	0.045	44	Thrasher Session India Pale Ale	American IPA	283	12
1885	0.05	16	Gutch English Style Mild Ale	English Pale Mild Ale	283	12
1213	0.059	55	Chuli Stout	Irish Dry Stout	453	12
1159	0.056	46	Mother Ale	American Blonde Ale	453	12
947	0.065	71	Twister Creek India Pale Ale	American IPA	453	12
929	0.058	46	Single Engine Red	Irish Red Ale	453	12
1944	0.07	\N	Incredible Pedal IPA	American IPA	263	12
1943	0.05	\N	Graham Cracker Porter	American Porter	263	12
1210	0.05	40	Mirror Pond Pale Ale	American Pale Ale (APA)	454	12
2550	0.052000000000000005	16	Weissenheimer	Hefeweizen	57	12
2505	0.049	22	Abbey's Single (2015- )	Abbey Single Ale	57	12
2025	0.063	76	Vertex IPA	American IPA	57	12
2021	0.05	12	Here Gose Nothin'	Gose	57	12
2015	0.05	\N	Strawberry Blonde	Fruit / Vegetable Beer	57	12
1888	0.096	85	Hoperation Overload	American Double / Imperial IPA	57	12
1887	0.049	22	Abbey's Single Ale (Current)	Abbey Single Ale	57	12
2051	0.044	45	Bravo Four Point	American Pale Ale (APA)	237	12
1201	0.052000000000000005	26	Striped Bass Pale Ale	American Pale Ale (APA)	237	12
924	0.054000000000000006	27	Deadicated Amber	American Amber / Red Ale	491	16
731	\N	\N	Kaleidoscope Collaboration 2012	American Black Ale	491	16
730	0.071	85	California Sunshine Rye IPA	American IPA	491	16
647	0.07400000000000001	12	Full Boar Scotch Ale	Scotch Ale / Wee Heavy	491	16
1773	0.045	\N	12 Man Pale Ale	American Pale Ale (APA)	319	12
1795	0.065	72	Filthy Hoppin' IPA	American IPA	311	16
944	\N	\N	Dock Street Amber Beer (1992)	American Amber / Red Ale	488	12
524	\N	\N	Dolores River Hefeweizen	Hefeweizen	531	16
450	\N	\N	Dolores River ESB	Extra Special / Strong Bitter (ESB)	531	16
449	\N	\N	Snaggletooth Double Pale Ale	American Double / Imperial IPA	531	16
448	\N	\N	Dolores River Pale Ale	American Pale Ale (APA)	531	16
447	\N	\N	Dolores River Dry Stout	Irish Dry Stout	531	16
446	\N	\N	Dolores River Mild	English Dark Mild Ale	531	16
1246	0.049	\N	Cranberry Blend	Cider	446	12
977	0.051	\N	Orignal Blend	Cider	446	12
881	0.066	100	Hop Abomination	American IPA	496	12
880	0.051	17	Apricot Blonde	Fruit / Vegetable Beer	496	12
872	0.043	12	Dry Dock Hefeweizen	Hefeweizen	496	12
871	0.058	49	Dry Dock Amber Ale	American Amber / Red Ale	496	12
1685	0.061	64	Category 3 IPA	American IPA	340	12
457	0.045	18	Dundee Summer Wheat Beer	American Pale Wheat Ale	538	12
1590	0.05	\N	Pumpkin Patch Ale	Pumpkin Ale	369	16
1382	0.078	74	Crank Yanker IPA	American IPA	369	16
1110	0.06	\N	River Runners Pale Ale	American Pale Ale (APA)	369	16
1014	0.05	\N	Pumpkin Patch Ale (2012)	Pumpkin Ale	369	16
911	0.055	\N	Mountain Fairy Raspberry Wheat	Fruit / Vegetable Beer	369	16
680	0.045	\N	Boater Beer	German Pilsener	369	16
395	0.078	74	Crank Yanker IPA (2011)	American IPA	369	16
1642	0.057	\N	Bleeding Buckeye Red Ale	Extra Special / Strong Bitter (ESB)	352	16
673	0.049	25	Dottie Seattle Lager	American Amber / Red Lager	516	16
1107	0.07	\N	Nut Sack Imperial Brown Ale	American Brown Ale	465	12
1039	0.05	\N	Underachiever	American Adjunct Lager	473	16
2477	0.052000000000000005	\N	Lil' Brainless Raspberries	Fruit / Vegetable Beer	81	12
2008	0.052000000000000005	\N	Element 29	American Pale Ale (APA)	81	12
2004	0.05	\N	Hop Syndrome	American Pale Lager	81	12
2003	0.062	\N	Escape to Colorado	American IPA	81	12
2292	0.043	60	Little Sister India Style Session Ale	American IPA	170	12
1504	0.062	80	Country Boy IPA	American IPA	170	12
2604	0.049	23	Blonde Czich	American Blonde Ale	26	16
2432	0.07	61	White Reaper	Belgian IPA	26	16
2431	0.051	\N	Bobblehead	American Pale Wheat Ale	26	16
2430	0.052000000000000005	\N	Lucky Dog	American Pale Ale (APA)	26	16
2429	0.048	\N	Voodoo	American Porter	26	16
1967	0.054000000000000006	48	General George Patton Pilsner	Czech Pilsener	26	16
2283	0.04	\N	Nomader Weiss	Berliner Weissbier	173	12
2248	0.085	\N	Molotov Lite	American Double / Imperial IPA	173	16
1287	0.055	\N	Hipster Ale (Two Roads Brewing)	American Pale Ale (APA)	173	12
1286	0.027000000000000003	\N	Bikini Beer	American IPA	173	12
640	0.055	\N	Hipster Ale (Westbrook Brewing)	American Pale Ale (APA)	173	12
1722	0.05	32	Iron Horse Pale Ale	American Pale Ale (APA)	335	12
1435	0.045	19	Stone's Throw IPA	Scottish Ale	335	12
1434	0.067	70	Wood Chipper India Pale Ale	American IPA	335	12
2089	0.063	55	Trail Head	American Pale Ale (APA)	224	12
2088	0.07	80	Hop Stalker Fresh Hop IPA	American IPA	224	16
1455	0.07	58	Sudice American Stout	American Stout	405	16
1454	0.05	20	Parcae Belgian Style Pale Ale	Belgian Pale Ale	405	16
1453	0.05	20	Norns Roggenbier	Roggenbier	405	16
1452	0.05	20	Laimas Kölsch Style Ale	Kölsch	405	16
1451	0.07	70	Moirai India Pale Ale	American IPA	405	16
2191	0.075	53	Loki Red Ale	American Amber / Red Ale	201	16
1731	0.046	\N	Peaches & Cream	Fruit / Vegetable Beer	201	16
1022	0.051	\N	Quaff India Style Session Ale	American IPA	201	16
895	0.075	53	Loki Red Ale (2013)	American Amber / Red Ale	201	16
682	0.069	\N	Mjolnir Imperial IPA	American Double / Imperial IPA	201	16
112	0.05	\N	Fearless Scottish Ale	Scottish Ale	201	16
2289	0.081	\N	Mastermind	American Double / Imperial IPA	172	12
2027	0.08199999999999999	\N	Hyzer Flip	American Double / Imperial IPA	172	16
1929	0.08199999999999999	80	Second Fiddle	American Double / Imperial IPA	172	16
1858	0.055	30	Hodad Porter	American Porter	172	16
2591	0.045	\N	Weiss Weiss Baby	Kristalweizen	36	12
2590	0.055	45	Czech Yo Self	Czech Pilsener	36	12
1968	0.048	20	FMB 101	Kölsch	36	12
1981	0.09	\N	Hardcore Chimera	American Double / Imperial IPA	256	16
1664	0.08	80	Sobek & Set	American Black Ale	256	16
1663	0.086	\N	Nuclear Winter	Belgian Strong Dark Ale	256	16
1662	0.05	22	Wet Hot American Wheat Ale	American Pale Wheat Ale	256	16
941	0.053	\N	Secret Stache Stout	American Stout	256	16
935	0.08	72	Fascist Pig Ale	American Amber / Red Ale	256	16
809	0.055	\N	Cut Throat Pale Ale	American Pale Ale (APA)	256	16
481	0.075	\N	Threadless IPA	American IPA	256	16
351	0.055	\N	Cut Throat Pale Ale (2011)	American Pale Ale (APA)	256	16
350	0.047	\N	Golden Wing Blonde Ale	American Blonde Ale	256	16
2569	0.045	47	Easy Jack	American IPA	48	12
2463	0.075	75	Union Jack	American IPA	48	12
2462	0.053	\N	Pivo Pils	German Pilsener	48	12
1957	0.047	\N	805 Blonde Ale	American Blonde Ale	48	12
1733	0.047	20	805	American Blonde Ale	48	12
2624	0.065	\N	Deflator	Doppelbock	16	16
2284	0.05	27	Hinchtown Hammer Down	American Blonde Ale	16	16
1610	0.06	104	Half Cycle IPA	American IPA	16	16
520	\N	\N	Inclined Plane Ale	American IPA	532	12
2554	0.055	\N	Moped Traveler	American Pale Ale (APA)	54	16
608	0.071	60	Snake Dog IPA	American IPA	521	12
607	0.047	28	Underdog Atlantic Lager	American Pale Lager	521	12
2567	0.04	\N	Flying Mouse 8	American Porter	50	12
2566	0.07	70	Flying Mouse 4	American IPA	50	12
1899	0.078	\N	La Ferme Urbaine Farmhouse Ale	Saison / Farmhouse Ale	279	12
983	0.06	\N	Backyahd IPA	American IPA	279	12
982	0.065	\N	Raincloud Robust Porter	American Porter	279	12
981	0.045	\N	Barstool American Golden Ale	American Blonde Ale	279	12
2111	0.05	18	What the Butler Saw	Witbier	217	12
2110	0.069	65	1916 Shore Shiver	American IPA	217	12
2172	0.052000000000000005	\N	Quick WIT	Belgian Pale Ale	206	12
2171	0.062	\N	The Optimist	American IPA	206	12
1911	0.045	\N	Suicide Squeeze IPA	American IPA	206	16
1803	0.065	\N	Java the Hop	American IPA	206	16
1566	0.062	\N	Next Adventure Black IPA	American Black Ale	206	16
1515	0.067	\N	3-Way IPA (2013)	American IPA	206	16
1214	0.058	\N	Tender Loving Empire NWPA	American Pale Ale (APA)	206	16
674	0.052000000000000005	\N	Quick Wit Belgianesque Ale	Witbier	206	16
562	0.055	\N	Sunrise Oatmeal Pale Ale	American Pale Ale (APA)	206	16
552	0.08800000000000001	\N	Cavatica Stout	American Double / Imperial Stout	206	16
319	0.051	\N	1811 Lager	American Amber / Red Lager	206	16
318	0.07400000000000001	97	Vortex IPA	American IPA	206	16
2322	\N	\N	Fort Pitt Ale	American Amber / Red Ale	151	12
2661	0.047	19	Park	American Pale Wheat Ale	4	12
2660	0.056	16	Westfalia	American Amber / Red Ale	4	12
2659	0.046	17	KSA	Kölsch	4	12
2658	0.063	42	Villager	American IPA	4	12
2625	0.085	50	Dirty Bastard	Scotch Ale / Wee Heavy	15	12
1565	0.07200000000000001	65	Centennial IPA	American IPA	15	12
1223	0.047	42	All Day IPA	American IPA	15	12
1874	0.076	73	El Chingon IPA	American IPA	287	12
1873	0.057	40	Block Party Robust Porter	American Porter	287	12
1872	0.052000000000000005	20	Local Buzz	American Blonde Ale	287	12
2613	0.055	\N	Feel Like Maplin' Love	Oatmeal Stout	22	16
2612	0.05	\N	Father's Beer	Belgian Pale Ale	22	16
2611	0.06	\N	The 26th	American IPA	22	16
2610	0.064	90	The Gadget	American IPA	22	16
1657	0.04	\N	Leprechaun Lager	American Pale Lager	348	12
2309	0.052000000000000005	17	Sunbru Kölsch	Kölsch	160	12
1635	0.06	21	Kilt Lifter Scottish-Style Ale	\N	160	12
1616	0.051	\N	Pumpkin Porter	American Porter	160	12
1585	0.042	9	Four Peaks Peach Ale	Fruit / Vegetable Beer	160	12
358	0.067	47	Hop Knot IPA	American IPA	160	12
179	0.06	21	Kilt Lifter Scottish-Style Ale (2009)	Scottish Ale	160	12
178	0.052000000000000005	\N	Sunbru Kölsch	Kölsch	160	12
2428	0.06	\N	Four String Vanilla Porter	American Porter	105	12
2427	0.05	28	Suncaster Summer Wheat	American Pale Wheat Ale	105	12
2425	0.057	36	Brass Knuckle Pale Ale	American Pale Ale (APA)	105	12
2424	0.07	70	Big Star White IPA	American White IPA	105	12
1998	0.056	\N	Old Detroit	American Amber / Red Ale	253	12
1556	0.069	69	Batch 69 IPA	American IPA	253	12
1208	0.055	18	Twisted Helles Summer Lager	Munich Helles Lager	253	12
2527	0.053	27	OktoberFiesta	\N	66	12
2526	0.065	33	Texicali 	American Brown Ale	66	12
2525	0.06	\N	Pinata Protest	Witbier	66	12
2524	0.042	20	Bat Outta Helles	Munich Helles Lager	66	12
2523	0.068	\N	Original	American Amber / Red Ale	66	12
2522	0.042	10	Rye Wit	Witbier	66	12
2521	0.059	70	Soul Doubt	American IPA	66	12
2520	0.044	5	Yo Soy Un Berliner	Berliner Weissbier	66	12
1174	0.04	\N	77 Fremont Select Spring Session IPA	American IPA	460	12
1116	0.045	\N	Fremont Organic Pale Ale	American Pale Ale (APA)	460	12
994	0.08	\N	Abominable Ale	English Strong Ale	460	12
901	0.065	35	Harvest Ale	Saison / Farmhouse Ale	460	12
875	0.065	45	Fremont Summer Ale	American Pale Ale (APA)	460	12
858	0.056	30	Universale Pale Ale	American Pale Ale (APA)	460	12
857	0.065	80	Interurban IPA	American IPA	460	12
1300	0.053	32	Gateway Kolsch Style Ale	Kölsch	433	12
1260	0.07	24	Wee-Heavy-Er Scotch Ale	Scotch Ale / Wee Heavy	433	12
1259	0.052000000000000005	42	13 Rebels ESB	Extra Special / Strong Bitter (ESB)	433	12
2254	0.07	73	Salamander Slam	American IPA	180	16
1658	0.05	\N	Cack-A-Lacky	American Pale Ale (APA)	347	12
2077	0.07200000000000001	50	No Wake IPA	American IPA	228	12
2076	0.049	15	Boathouse Blonde	American Blonde Ale	228	12
2075	0.05	26	Cedar Point	American Amber / Red Ale	228	12
2426	0.067	70	Clean Shave IPA	American IPA	106	12
2045	0.07200000000000001	75	Might As Well IPL	American Pale Lager	240	16
1960	0.058	35	Saison Pamplemousse	Saison / Farmhouse Ale	240	12
1777	0.07400000000000001	74	2020 IPA	American IPA	240	16
1698	0.08	70	Wolf Among Weeds IPA	American IPA	240	16
1641	0.094	92	Better Weather IPA	American IPA	240	16
1490	0.059	60	Point the Way IPA	American IPA	240	16
1489	0.046	15	Golden Road Hefeweizen	Hefeweizen	240	16
1399	0.068	65	Heal the Bay IPA	American IPA	240	16
1296	0.059	60	Point the Way IPA	American IPA	240	12
1034	0.05	\N	Cabrillo Kölsch	Kölsch	240	16
991	0.055	20	Get Up Offa That Brown	American Brown Ale	240	16
750	0.08	70	Burning Bush Smoked IPA	American IPA	240	16
749	0.08	70	Wolf Among Weeds IPA (2012)	American IPA	240	16
549	0.059	60	Point the Way IPA (2012)	American IPA	240	16
548	0.046	15	Golden Road Hefeweizen (2012)	Hefeweizen	240	16
2587	0.07	11	Vanilla Porter	American Porter	39	16
1109	0.07	70	Descender IPA	American IPA	464	12
1108	0.06	18	Sweet As Pacific Ale	American Pale Wheat Ale	464	12
1000	0.056	36	Good People Pale Ale	American Pale Ale (APA)	478	12
312	0.093	103	Snake Handler Double IPA	American Double / Imperial IPA	478	12
311	0.06	54	Coffee Oatmeal Stout	Oatmeal Stout	478	12
309	0.06	64	Good People IPA	American IPA	478	12
308	0.058	36	Good People American Brown Ale	American Brown Ale	478	12
2205	0.055	40	Mountain Rescue Pale Ale	American Pale Ale (APA)	194	12
2198	0.059	55	Goose Island India Pale Ale	American IPA	196	12
2457	0.054000000000000006	30	312 Urban Pale Ale	American Pale Ale (APA)	88	16
2202	0.054000000000000006	30	312 Urban Pale Ale	American Pale Ale (APA)	88	12
2201	0.042	18	312 Urban Wheat Ale	American Pale Wheat Ale	88	16
1829	0.042	18	312 Urban Wheat Ale	American Pale Wheat Ale	88	12
581	0.042	20	312 Urban Wheat Ale (2012)	American Pale Wheat Ale	88	12
1383	0.052000000000000005	19	Beaver Logger	American Pale Lager	420	12
477	0.05	\N	White Water Wheat	American Pale Wheat Ale	536	12
476	0.052000000000000005	\N	Grand Canyon American Pilsner	American Pilsner	536	12
143	0.054000000000000006	\N	Grand Canyon Sunset Amber Ale	American Amber / Red Ale	536	12
142	\N	\N	Black Iron India Pale Ale	American IPA	536	12
2129	0.043	21	Monarch Classic American Wheat	American Pale Wheat Ale	213	12
2127	0.049	21	Sir William's English Brown Ale	English Brown Ale	213	12
2126	0.055	35	Lakefire Rye Pale Ale	American Pale Ale (APA)	213	12
2303	0.053	22	Beer Agent Re-Ignition	American Blonde Ale	165	16
1990	0.057	18	Cherry Ale	Fruit / Vegetable Beer	165	16
1702	0.056	33	Bourbon Barrel Aged Coconut Porter	American Porter	165	16
1701	0.062	60	Great Crescent IPA	American IPA	165	16
1700	0.057	27	Aurora Lager	Dortmunder / Export Lager	165	16
1699	0.053	22	Great Crescent Blonde Ale	American Blonde Ale	165	16
1269	0.056	33	Great Crescent Coconut Porter	American Porter	165	16
930	0.057	25	Great Crescent Oktoberfest Lager	Märzen / Oktoberfest	165	16
649	0.045	36	Great Crescent Brown Ale	American Brown Ale	165	16
639	0.057	18	Cherry Ale (1)	Fruit / Vegetable Beer	165	16
626	0.057	27	Aurora Lager (2011)	Dortmunder / Export Lager	165	16
615	0.06	25	Frosted Fields Winter Wheat	American Dark Wheat Ale	165	16
478	0.051	13	Great Crescent Belgian Style Wit	Witbier	165	16
455	0.075	65	Bourbon's Barrel Stout	American Stout	165	16
442	0.08	66	Great Crescent Stout	English Stout	165	16
441	0.056	33	Great Crescent Coconut Porter (2012)	American Porter	165	16
440	0.057	23	Great Crescent Dark Lager	Euro Dark Lager	165	16
439	0.042	26	Great Crescent Mild Ale	English Dark Mild Ale	165	16
436	0.062	60	Great Crescent IPA (2011)	American IPA	165	16
389	0.053	22	Great Crescent Blonde Ale (2011)	American Blonde Ale	165	16
2650	0.05	\N	Denver Pale Ale (Artist Series No. 1)	American Pale Ale (APA)	6	12
2649	0.087	\N	Hibernation Ale	Old Ale	6	12
2648	0.061	\N	Whitewater	American Pale Wheat Ale	6	12
2647	0.071	\N	Rumble	American IPA	6	12
2646	0.083	\N	Orabelle	Tripel	6	12
2645	0.05	\N	Lasso	American IPA	6	12
2644	0.095	75	Yeti  Imperial Stout	Russian Imperial Stout	6	12
2643	0.073	\N	Colette	Saison / Farmhouse Ale	6	12
2642	0.071	\N	Titan IPA	American IPA	6	12
404	0.045	15	Black Star Double Hopped Golden Lager (24 oz.)	American Pale Lager	543	24
164	0.045	15	Black Star Double Hopped Golden Lager (12 oz.)	American Pale Lager	543	12
1923	0.052000000000000005	49	Commotion APA	American Pale Ale (APA)	269	12
1922	0.052000000000000005	\N	Southern Drawl Pale Lager	American Pale Lager	269	12
1604	0.05	5	Chickawawa Lemonale	Fruit / Vegetable Beer	365	12
1574	0.07	22	Barrel Aged Farmer	American Brown Ale	365	16
1446	0.048	\N	Great River Golden Ale	American Blonde Ale	365	12
1275	0.048	\N	Dirty Blonde Chocolate Ale	American Blonde Ale	365	12
1244	0.048	20	Dos Pistolas	Vienna Lager	365	12
1064	0.05	30	Owney Irish Style Red Ale	Irish Red Ale	365	16
1028	0.06	\N	Aaah Bock Lager	Vienna Lager	365	16
865	0.055	10	Widespread Wit	Witbier	365	16
864	0.054000000000000006	30	Roller Dam Red Ale	Irish Red Ale	365	16
863	0.053	48	483 Pale Ale	American Pale Ale (APA)	365	16
672	0.09	99	Hop A Potamus Double Dark Rye Pale Ale	Rye Beer	365	16
655	0.07	22	Farmer Brown Ale	American Brown Ale	365	16
540	0.07	70	Big Cock IPA	American IPA	365	16
539	0.059	25	Oktoberfest	Märzen / Oktoberfest	365	16
517	0.048	25	40th Annual Bix Street Fest Copper Ale (Current)	American Amber / Red Ale	365	16
371	0.06	36	Redband Stout	American Stout	365	16
190	0.053	48	483 Pale Ale (2010)	American Pale Ale (APA)	365	16
189	0.054000000000000006	30	Roller Dam Red Ale (2010)	Irish Red Ale	365	16
1106	0.05	30	Pablo Beach Pale Ale	American Pale Ale (APA)	466	12
2314	0.057	44	Wild Trail Pale Ale	American Pale Ale (APA)	156	12
2313	0.067	71	Mothman Black IPA	American Black Ale	156	12
2461	0.058	\N	Autumn Winds Fest Beer	Märzen / Oktoberfest	86	16
2044	0.085	69	Captain's Daughter	American Double / Imperial IPA	86	12
1567	0.058	\N	Autumn Winds	Märzen / Oktoberfest	379	16
1505	0.06	54	Flying Jenny Extra Pale Ale	American Pale Ale (APA)	379	12
1186	0.04	20	Hazy Day Belgian-Style Wit	Witbier	379	16
1185	0.055	\N	Bring Back the Beach Blonde Ale	American Blonde Ale	379	16
984	0.06	34	Leaning Chimney Smoked Porter	American Porter	379	16
693	0.06	54	Flying Jenny Extra Pale Ale (2012)	American Pale Ale (APA)	379	12
631	0.049	22	Flagship Ale	Cream Ale	379	12
2375	0.045	6	Mr. Blue Sky	American Pale Wheat Ale	124	16
2143	0.065	\N	3 Scrooges	Winter Warmer	124	16
2142	0.05	25	Screamin’ Pumpkin	Pumpkin Ale	124	16
2141	0.05	35	Grand Trunk Bohemian Pils	Czech Pilsener	124	16
2140	0.065	25	El Rojo	American Amber / Red Ale	124	16
2139	0.075	\N	Norm's Raggedy Ass IPA	American IPA	124	16
2138	0.05	35	Grind Line	American Pale Ale (APA)	124	16
2007	0.04	55	Norm's Gateway IPA	American IPA	124	12
1570	0.09	\N	Lemon Shandy Tripel	Tripel	124	16
2339	0.063	43	Little Red Cap	Altbier	144	12
1857	0.069	67	Supergoose IPA	American IPA	290	12
1440	0.047	\N	Hale's Pale American Ale	American Pale Ale (APA)	290	12
1753	0.07	\N	Heyoka IPA	American IPA	327	16
1448	0.08	\N	Guest Lager	American Double / Imperial Pilsner	327	16
1134	0.057	\N	Pony Pilsner	German Pilsener	327	16
1066	0.055	\N	Akari Shogun American Wheat Ale	American Pale Wheat Ale	327	16
849	0.06	\N	Meat Wave	English India Pale Ale (IPA)	327	16
352	0.06	\N	Over Ale	American Brown Ale	327	16
149	0.042	\N	Gossamer Golden Ale	American Blonde Ale	327	16
148	0.052000000000000005	\N	Daisy Cutter Pale Ale	American Pale Ale (APA)	327	16
2026	0.07	40	Pursuit	American IPA	248	12
1361	0.052000000000000005	18	Half Full Bright Ale	American Blonde Ale	248	12
1016	0.046	17	Orange Wheat	Fruit / Vegetable Beer	476	12
1015	0.043	14	Hangar 24 Helles Lager	Munich Helles Lager	476	12
1677	0.075	70	The Great Return	American IPA	343	16
1331	0.044	18	Hardywood Cream Ale	Cream Ale	343	12
1270	0.056	55	Capital Trail Pale Ale	American Pale Ale (APA)	343	12
2059	0.052000000000000005	15	UFO Gingerland	Herbed / Spiced Beer	234	12
1653	0.062	45	The Long Thaw White IPA	American White IPA	234	12
1558	0.048	\N	Honey Cider	Cider	234	12
1380	0.05	28	Harpoon Summer Beer	Kölsch	234	12
1379	0.059	42	Harpoon IPA	American IPA	234	12
1340	0.059	20	UFO Pumpkin	Pumpkin Ale	234	12
1313	0.055	30	Harpoon Octoberfest	Märzen / Oktoberfest	234	12
770	0.059	42	Harpoon IPA (2012)	American IPA	234	12
769	0.05	28	Harpoon Summer Beer (2012)	Kölsch	234	12
610	0.048	10	UFO White	American Pale Wheat Ale	234	12
192	0.05	28	Harpoon Summer Beer (2010)	Kölsch	234	12
126	0.059	42	Harpoon IPA (2010)	American IPA	234	12
506	\N	\N	Great Falls Select Pale Ale	American Blonde Ale	535	12
181	0.048	\N	Beltian White	Witbier	535	12
2183	0.049	\N	Kaua'i Golden Ale	American Blonde Ale	204	12
2182	0.054000000000000006	\N	Sunset Amber	American Pale Ale (APA)	204	12
2181	0.064	\N	Hapa Brown Ale	American Brown Ale	204	19.2
2180	0.064	\N	Hapa Brown Ale	American Brown Ale	204	12
2179	0.083	\N	Southern Cross	Flanders Red Ale	204	19.2
1895	0.076	65	Groupe G	Belgian IPA	280	16
1894	0.062	40	Pt. Bonita Rustic Lager	American Pale Lager	280	16
1893	0.08800000000000001	77	Hill 88 Double IPA	American Double / Imperial IPA	280	16
990	0.07200000000000001	45	Loose Cannon	American IPA	479	12
989	0.06	30	AARGHtoberfest!	Märzen / Oktoberfest	479	12
988	0.06	\N	Davy Jones Lager	Cream Ale	479	12
1351	0.063	30	Grazias	Cream Ale	423	16
1346	0.08	86	Habitus IPA	American IPA	423	16
904	0.099	85	Ex Umbris Rye Imperial Stout	American Double / Imperial Stout	423	16
2295	0.063	21	The Golden One	American Pilsner	168	12
2294	0.07	68	The Power of Zeus	American Pale Ale (APA)	168	12
824	0.044	22	Tonganoxie Honey Wheat	American Pale Wheat Ale	500	12
616	0.045	\N	Oregon Trail Unfiltered Raspberry Wheat	Fruit / Vegetable Beer	500	12
96	0.055	\N	Annie's Amber Ale	American Amber / Red Ale	500	12
1615	0.045	32	The 12th Can™	American Pale Ale (APA)	362	16
889	0.055	34	Hilliard's Pils	Czech Pilsener	362	16
724	0.049	20	Hilliard's Blonde	American Blonde Ale	362	16
497	0.055	60	Hilliard's Amber Ale	American Amber / Red Ale	362	16
496	0.066	30	Hilliard's Saison	Saison / Farmhouse Ale	362	16
1652	0.042	\N	White Cap White IPA	American White IPA	349	16
1835	0.042	25	Provision	Saison / Farmhouse Ale	297	12
1834	0.047	28	One Nut Brown	American Brown Ale	297	12
1833	0.058	45	Hop Farm IPA	American IPA	297	12
2195	0.049	20	Double D Blonde	American Blonde Ale	198	12
1605	0.078	60	Festeroo Winter Ale	American Strong Ale	198	12
1543	0.063	70	Proxima IPA	American IPA	198	12
1390	0.049	20	Double D Blonde (2013)	American Blonde Ale	198	12
1354	0.048	13	541 American Lager	American Pale Lager	198	12
1353	0.065	90	Alphadelic IPA	American IPA	198	12
499	0.065	90	Alphadelic IPA (2011)	American IPA	198	12
498	0.049	20	Double D Blonde (2011)	American Blonde Ale	198	12
1501	0.07	\N	Green House India Pale Ale	American IPA	395	12
1004	0.051	\N	The One They Call Zoe	American Pale Lager	395	12
502	0.051	40	Alteration	Altbier	395	12
501	0.06	50	Pale Dog	American Pale Ale (APA)	395	12
2357	0.065	\N	Porter Culture	American Porter	136	12
2483	0.068	\N	Hard Cider	Cider	80	16
2482	0.027000000000000003	21	Totally Radler	Radler	80	16
2400	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2399	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2398	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2397	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2396	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2395	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2394	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2393	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2392	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2391	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2390	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2389	0.039	20	Nonstop Hef Hop	American Pale Wheat Ale	80	16
2388	0.058	60	Rise Up Red	American Amber / Red Ale	80	16
2200	0.058	35	Survival Stout	American Stout	80	16
2199	0.066	75	Hopworks IPA	American IPA	80	16
2193	0.073	70	Abominable Winter Ale	American Strong Ale	80	16
1398	0.06	60	Pigwar White India Pale Ale	American White IPA	80	16
1085	0.058	60	Rise-Up Red (2014)	American Amber / Red Ale	80	16
916	0.073	70	Abominable Winter Ale (2012)	American Strong Ale	80	16
658	0.051	32	HUB Lager	Czech Pilsener	80	16
653	0.066	75	Hopworks IPA (2012)	American IPA	80	16
2385	0.056	\N	Watermelon Wheat	American Pale Wheat Ale	120	12
2384	0.051	17	Laka Laka Pineapple	Hefeweizen	120	12
2383	0.06	\N	Oktoberfest	Märzen / Oktoberfest	120	16
1251	0.065	\N	Trail Maker Pale Ale	American Pale Ale (APA)	445	12
1250	0.055	\N	Action Man Lager	Vienna Lager	445	12
1903	0.068	90	Let It Ride IPA	American IPA	277	12
1691	0.065	22	Stir Crazy Winter Ale	Winter Warmer	277	12
1555	0.05	10	Sweet Yamma Jamma Ale	Fruit / Vegetable Beer	277	12
1115	0.046	27	Shenanigans Summer Ale	American Pale Wheat Ale	277	12
729	0.065	80	Midnight Ryder	American Black Ale	277	12
728	0.054000000000000006	45	Day Tripper Pale Ale	American Pale Ale (APA)	277	12
2350	0.048	32	Oklahoma Suks	American Amber / Red Ale	140	12
2301	0.055	42	Power & Light	American Pale Ale (APA)	140	12
1904	0.059	27	White Rabbit 	Witbier	140	12
2609	0.058	58	Tribute	American Pale Ale (APA)	23	12
2038	0.07	75	Infamous IPA	American IPA	242	12
1774	0.055	20	Hijack	Cream Ale	242	12
559	0.045	20	Jon Boat Coastal Ale	American Blonde Ale	527	12
558	0.068	55	I-10 IPA	American IPA	527	12
553	0.053	28	People's Pale Ale	American Pale Ale (APA)	527	12
2376	0.049	\N	Summer Ale	American Blonde Ale	123	12
1784	\N	\N	Appreciation Ale	American IPA	316	16
2673	0.052000000000000005	18	House Lager	Keller Bier / Zwickel Bier	2	16
2672	0.048	15	Leisure Time	American Pale Lager	2	12
2671	0.07200000000000001	80	Excess IPL	American India Pale Lager	2	16
2670	0.067	65	Hoponius Union	American India Pale Lager	2	12
2669	0.049	45	Calyptra	American India Pale Lager	2	12
1405	0.05	\N	Helen's Blend	Cider	416	12
823	0.051	\N	Jack's Hard Cider	Cider	416	12
1793	0.055	37	Thunder Ann	American Pale Ale (APA)	312	12
2453	0.055	\N	Razz Wheat	Fruit / Vegetable Beer	92	12
2363	0.065	\N	Hop Ryot	American IPA	92	12
689	0.07	\N	Mystic Mama IPA	American IPA	92	12
688	0.05	\N	Firefly Amber Ale	American Amber / Red Ale	92	12
687	0.067	\N	Chomolungma Honey Nut Brown Ale	English Brown Ale	92	12
2408	0.069	\N	Welcome to Scoville	American IPA	114	12
2595	\N	\N	Bastian	American Strong Ale	32	12
2480	0.045	\N	Healani	Hefeweizen	32	12
1525	0.055	\N	Yabba Dhaba Chai Tea Porter	American Porter	32	12
1524	0.055	\N	A Capella Gluten Free Pale Ale	American Pale Ale (APA)	32	12
1523	0.06	\N	Casper White Stout	American Blonde Ale	32	12
1254	0.06	\N	JP's Ould Sod Irish Red IPA	American IPA	32	12
2060	0.05	15	Weize Guy	Hefeweizen	233	12
469	0.05	50	Fox Tail Gluten Free Ale	American Pale Ale (APA)	233	12
468	0.093	90	Hop Box Imperial IPA	American Double / Imperial IPA	233	12
467	0.052000000000000005	15	Joseph James American Lager	American Adjunct Lager	233	12
2163	0.071	\N	Sucha Much IPA	American IPA	208	12
2162	0.075	24	Lewbricator Wheat Dopplebock 	Doppelbock	208	12
2374	0.052000000000000005	16	Weisse Versa (2012)	Hefeweizen	125	12
1560	0.058	25	Mother in Lager	Munich Dunkel Lager	125	12
1557	0.055	40	Weekend Warrior Pale Ale	American Pale Ale (APA)	125	12
1458	0.055	25	Karbachtoberfest	Märzen / Oktoberfest	125	12
1235	0.047	20	Love Street Summer Seasonal (2014)	Kölsch	125	12
1068	0.066	20	Barn Burner Saison	Saison / Farmhouse Ale	125	12
666	0.095	85	Rodeo Clown Double IPA	American Double / Imperial IPA	125	12
465	0.049	45	Sympathy for the Lager	American Amber / Red Lager	125	12
464	0.052000000000000005	15	Weisse Versa	Hefeweizen	125	12
463	0.066	70	Hopadillo India Pale Ale	American IPA	125	12
1678	0.057	19	KelSo Nut Brown Lager	Euro Dark Lager	342	12
1572	0.06	64	KelSo India Pale Ale	American IPA	342	12
1348	0.055	23	KelSo Pilsner	Czech Pilsener	342	12
1193	0.058	\N	Skilak Scottish Ale	Scottish Ale	458	12
1187	0.05	15	Peninsula Brewers Reserve (PBR)	American Blonde Ale	458	12
349	0.068	\N	Sunken Island IPA	American IPA	458	12
348	0.058	\N	Skilak Scottish Ale (2011)	Scottish Ale	458	12
760	0.065	11	Cold Smoke Scotch Ale (2007)	Scotch Ale / Wee Heavy	510	16
759	0.065	65	Double Haul IPA (2009)	American IPA	510	16
758	0.065	65	Double Haul IPA (2006)	American IPA	510	16
87	0.055	50	Eddy Out Pale Ale	American Pale Ale (APA)	510	16
86	0.065	65	Double Haul IPA	American IPA	510	16
85	0.065	11	Cold Smoke Scotch Ale	Scotch Ale / Wee Heavy	510	16
2472	\N	\N	U. P. Witbier	Witbier	84	12
779	\N	\N	November Gale Pale Ale	American Pale Ale (APA)	84	12
364	\N	\N	Olde Ore Dock Scottish Ale	Scottish Ale	84	12
60	\N	\N	Widow Maker Black Ale	American Brown Ale	84	12
59	\N	\N	Lift Bridge Brown Ale	American Brown Ale	84	12
58	\N	\N	Pick Axe Blonde Ale	American Blonde Ale	84	12
57	\N	\N	Red Jacket Amber Ale	American Amber / Red Ale	84	12
2436	0.051	\N	Amber Ale	American Amber / Red Ale	102	12
1706	0.055	\N	King Street Pilsner	Czech Pilsener	102	12
1667	0.06	70	King Street IPA	American IPA	102	12
1666	0.057	10	King Street Hefeweizen	Hefeweizen	102	12
1665	0.049	\N	King Street Blonde Ale	American Blonde Ale	102	12
2460	0.063	65	India Pale Ale	American IPA	87	16
2459	0.048	11	Blackberry Wheat	American Pale Wheat Ale	87	16
1274	0.046	18	Longboard Island Lager	American Amber / Red Lager	439	24
1220	0.046	18	Longboard Island Lager	American Amber / Red Lager	439	16
1070	0.046	18	Longboard Island Lager	American Amber / Red Lager	439	12
590	0.046	18	Longboard Island Lager	American Amber / Red Lager	439	12
781	0.04	9	Choc Beer (2003)	American Dark Wheat Ale	505	12
1637	0.08	\N	Bellingham Beer Week 2013 Collaboration	Belgian Strong Dark Ale	354	16
1741	0.054000000000000006	15	A Slice of Hefen	Hefeweizen	332	16
664	0.07200000000000001	100	Elevated IPA	American IPA	332	16
392	0.066	30	Rumspringa Golden Bock	Maibock / Helles Bock	545	12
195	0.048	28	Lancaster German Style Kölsch	Kölsch	545	12
2547	0.045	\N	Beach Cruiser	Hefeweizen	59	12
2493	0.068	\N	I.P. Eh!	American IPA	59	12
2492	0.05	\N	Schoolhouse Honey	American Amber / Red Ale	59	12
2491	0.055	\N	10 Degrees of Separation	English Brown Ale	59	12
2108	0.05	12	Laughing Dog Cream Ale	Cream Ale	218	12
1397	0.048	9	Two-One Niner	American Pilsner	218	12
1396	0.064	66	Laughing Dog IPA	American IPA	218	12
1675	0.064	95	Madra Allta	American IPA	345	12
1249	0.056	70	Duluchan India Pale Ale	American IPA	345	12
1445	0.05	\N	Lazy Monk Bohemian Pilsner	Czech Pilsener	406	16
475	0.051	\N	Yellowstone Golden Ale	Kölsch	537	12
474	0.057	\N	Tumbleweed IPA	American IPA	537	12
473	0.05	\N	Lewis & Clark Amber Ale	American Amber / Red Ale	537	12
472	0.05	\N	Miner's Gold Hefeweizen	Hefeweizen	537	12
471	0.057	\N	Back Country Scottish Ale	Scottish Ale	537	12
2036	0.052000000000000005	30	Getaway	German Pilsener	244	16
1168	0.06	30	Farm Girl Saison	Saison / Farmhouse Ale	244	16
1832	0.058	40	Adam's Stout	American Stout	298	12
1688	0.057	42	American Hero	American Amber / Red Ale	298	12
1687	0.052000000000000005	20	Schweet Ale	Fruit / Vegetable Beer	298	12
1686	0.065	75	Irregardless IPA	American IPA	298	12
2434	0.057	40	Peach Pale Ale	American Pale Ale (APA)	104	12
2332	0.06	\N	Deadeye Jack	American Porter	149	12
2330	0.075	\N	Pistols at Dawn	American Stout	149	16
2329	0.057	47	Peacemaker Pale Ale	American Pale Ale (APA)	149	12
2327	0.058	11	Shotgun Betty	Hefeweizen	149	12
2326	0.061	30	Sweet Josie	American Brown Ale	149	12
1926	0.059	42	Long Trail IPA	English India Pale Ale (IPA)	268	12
1924	0.046	30	Long Trail Ale	American Amber / Red Ale	268	12
1090	0.07200000000000001	33	Double Bag	Altbier	268	16
574	0.04	8	Blackbeary Wheat	Fruit / Vegetable Beer	268	12
573	0.046	30	Long Trail Ale (1)	Altbier	268	12
2584	0.046	8	Gose	Gose	41	16
2583	0.048	20	Vermont Pilsner	German Pilsener	41	16
2582	0.055	\N	Mosaic Single Hop IPA	American IPA	41	16
2581	0.045	\N	Lost Galaxy	American IPA	41	16
1309	0.062	65	Face Plant IPA	American IPA	430	12
1308	0.056	55	Rhino Chasers Pilsner	Czech Pilsener	430	12
1571	0.052000000000000005	29	Slow Hand Stout	American Stout	377	16
1204	0.062	\N	Hips Don't Lie	Hefeweizen	456	16
1122	0.052000000000000005	\N	Ride Again Pale Ale	American Pale Ale (APA)	456	16
700	0.048	\N	The Farmer's Daughter	American Blonde Ale	456	16
2033	0.038	18	Pub Ale	English Dark Mild Ale	245	12
2032	0.051	31	Ballistic Blonde	Belgian Pale Ale	245	12
2311	0.054000000000000006	\N	Knotty Pine	American Pale Ale (APA)	158	12
1153	0.053	20	Lumberyard Pilsner	American Pilsner	158	12
355	0.061	\N	Lumberyard IPA	American IPA	158	12
125	0.058	\N	Lumberyard Red Ale	American Amber / Red Ale	158	12
962	0.05	\N	Mac's Highlander Pale Ale (2000)	American Pale Ale (APA)	485	12
961	0.051	32	Mac's Scottish Style Amber Ale (2000)	American Amber / Red Ale	485	12
1475	0.05	\N	Macon Progress Ale	American Pale Ale (APA)	400	12
1008	0.055	\N	Macon History Ale	American Brown Ale	400	12
2454	0.099	\N	Galaxy High	American Double / Imperial IPA	91	12
2209	0.043	18	Sol Drifter	American Blonde Ale	91	12
2133	0.085	\N	Thunder Snow	Winter Warmer	91	12
1994	0.079	18	The Great Pumpcan	Fruit / Vegetable Beer	91	16
1816	0.047	11	LIFT	Kölsch	91	12
1815	0.05	40	SPRYE	American Pale Ale (APA)	91	12
1126	0.069	70	Psychopathy	American IPA	91	12
1125	0.07	32	Gnarly Brown	American Brown Ale	91	12
1124	0.06	30	Happy Amber	American Amber / Red Ale	91	12
1813	0.051	20	#9	Fruit / Vegetable Beer	303	16
1113	0.055	13	Elder Betty	Hefeweizen	303	12
360	0.051	20	#9	Fruit / Vegetable Beer	303	12
511	0.042	\N	High Country Pilsner (Current)	German Pilsener	534	12
75	0.065	\N	Epic IPA	American IPA	534	12
74	0.042	\N	Golden Trout Pilsner	German Pilsener	534	12
73	0.045	\N	Real McCoy Amber Ale (Current)	American Amber / Red Ale	534	12
1628	0.07200000000000001	\N	Festivus (1)	Winter Warmer	356	12
1626	0.067	\N	Manayunk Oktoberfest	Märzen / Oktoberfest	356	12
1625	0.045	21	Belgian Style Session Ale	Belgian Pale Ale	356	12
1624	0.055	\N	Manayunk IPA	American IPA	356	12
1600	0.055	\N	Yunkin' Punkin'	Pumpkin Ale	356	12
1484	0.05	18	Summer Paradise	American Pale Wheat Ale	356	12
1356	0.09	30	Monk from the 'Yunk	Tripel	356	12
1355	0.06	14	Schuylkill Punch	Fruit / Vegetable Beer	356	12
1334	0.085	85	Dreamin' Double IPA	American Double / Imperial IPA	356	12
1674	0.099	93	Chaotic Double IPA	American Double / Imperial IPA	346	12
1673	0.08	88	Manzanita IPA	American IPA	346	12
1672	0.06	25	Riverwalk Blonde Ale	American Blonde Ale	346	12
1671	0.095	49	Gillespie Brown Ale	American Brown Ale	346	12
1670	0.066	44	Manzanita Pale Ale	American Pale Ale (APA)	346	12
1262	0.047	\N	Marble Pilsner	German Pilsener	443	12
845	0.062	\N	Marble India Pale Ale	American IPA	443	12
1783	0.07200000000000001	\N	Toughcats IPA	American IPA	317	16
1717	0.05	\N	Tug Pale Ale	American Pale Ale (APA)	317	16
1716	0.099	\N	Sexy Chaos	Russian Imperial Stout	317	16
1516	0.063	\N	Ace Hole American Pale Ale	American Pale Ale (APA)	317	16
725	0.097	\N	Cant Dog Imperial Pale Ale	American Double / Imperial IPA	317	16
2308	0.05	20	River House	Saison / Farmhouse Ale	161	16
2268	0.065	47	Pretzel Stout	American Stout	161	16
2197	0.05	35	Rubberneck Red	American Amber / Red Ale	161	16
2120	0.08	\N	The Imperial Texan	American Double / Imperial IPA	161	16
1234	0.08	\N	The Imperial Texan	American Double / Imperial IPA	161	12
1233	0.05	\N	Day Break 4-Grain Breakfast Beer	Rye Beer	161	16
1232	0.05	\N	River House Saison	Saison / Farmhouse Ale	161	12
1231	0.065	\N	There Will Be Stout	American Stout	161	12
1831	0.065	60	Our Legacy IPA	American IPA	299	12
1359	0.042	\N	Saranac Shandy	Shandy	299	12
1135	0.065	60	Our Legacy IPA	American IPA	299	16
960	0.051	\N	Saranac Golden Pilsener (2003)	German Pilsener	299	12
959	0.045	\N	Saranac Adirondack Light (2002)	Light Lager	299	12
958	0.045	\N	DAX Light (1998)	Light Lager	299	12
957	0.048	\N	Saranac Traditional Lager (2000)	American Pale Lager	299	12
956	0.047	\N	Pomegranate Wheat (2008)	Fruit / Vegetable Beer	299	12
773	0.05	12	Blueberry Blonde Ale	American Blonde Ale	299	12
686	0.06	\N	Saranac White IPA	American IPA	299	12
453	0.047	\N	Saranac Summer Ale (2011)	American Pale Wheat Ale	299	12
150	0.055	\N	Saranac Pale Ale (12 oz.)	English Pale Ale	299	12
133	0.055	\N	Saranac Pale Ale (16 oz.)	English Pale Ale	299	16
1578	0.051	20	Lahaina Town Brown	American Brown Ale	375	12
1429	0.055	\N	Pau Hana Pilsner	Czech Pilsener	375	12
1271	0.05	\N	Lemongrass Saison	Saison / Farmhouse Ale	375	12
713	0.07	\N	Aloha B’ak’tun	Belgian Strong Dark Ale	375	12
712	0.08199999999999999	\N	Liquid Breadfruit	Fruit / Vegetable Beer	375	12
690	0.06	24	Sobrehumano Palena'ole	American Amber / Red Ale	375	12
547	0.05	12	La Perouse White	Witbier	375	12
435	0.068	68	Flyin' HI.P.Hay	American IPA	375	12
313	0.055	15	Mana Wheat	American Pale Wheat Ale	375	12
33	0.045	18	Bikini Blonde Lager	Munich Helles Lager	375	12
32	0.057	30	CoCoNut Porter	American Porter	375	12
31	0.062	65	Big Swell IPA	American IPA	375	12
1237	0.037000000000000005	34	Pit Stop Chocolate Porter	American Porter	448	12
1236	0.037000000000000005	21	Pace Setter Belgian Style Wit	Witbier	448	12
1047	0.037000000000000005	53	Back in the Saddle Rye Pale Ale	American Pale Ale (APA)	448	12
1986	0.069	\N	Bushwhacker Cider	Cider	254	16
1985	0.069	\N	Weim-R-Iner	Cider	254	16
1984	0.069	\N	Cherry Bomb	Cider	254	16
2186	0.07200000000000001	75	Tsunami IPA	American IPA	203	19.2
2185	0.07200000000000001	75	Tsunami IPA	American IPA	203	12
2184	0.042	22	Humpback Blonde Ale	American Blonde Ale	203	12
2178	0.052000000000000005	27	Hawaiian Crow Porter	American Porter	203	12
2177	0.052000000000000005	23	Volcano Red Ale	American Amber / Red Ale	203	12
2176	0.054000000000000006	42	Mauna Kea Pale Ale	American Pale Ale (APA)	203	12
1508	0.053	11	Shark Bait	Fruit / Vegetable Beer	393	12
1507	0.053	30	Gator Tail Brown Ale	American Brown Ale	393	12
1506	0.071	62	Miami Vice IPA	American IPA	393	12
1325	0.053	16	Big Rod Coconut Ale	American Blonde Ale	393	12
174	0.056	\N	Mickey Finn's Amber Ale	American Amber / Red Ale	552	12
2093	0.063	61	Pleasure Town	American IPA	223	12
1814	0.063	61	Pleasure Town IPA	American IPA	223	12
587	0.048	12	Snowshoe White Ale	Witbier	223	12
586	0.05	24	Kodiak Brown Ale	American Brown Ale	223	12
434	0.057	70	Sockeye Red IPA	American IPA	223	12
2668	0.08	100	Habitus (2014)	American Double / Imperial IPA	3	16
2667	0.075	85	Solis	American IPA	3	16
2666	0.06	24	Jucundus	Wheat Ale	3	16
2664	0.08	100	Habitus	American Double / Imperial IPA	3	16
2663	0.063	30	Grazias	Cream Ale	3	16
2662	0.058	28	Claritas	Kölsch	3	16
2535	0.083	\N	Vinyl Frontier	American Double / Imperial IPA	65	24
2534	0.08	\N	Disco Superfly	American IPA	65	24
2533	0.075	\N	Misty Mountain Hop	American IPA	65	24
2532	0.075	\N	One-Hit Wonderful	Belgian IPA	65	24
2531	0.065	\N	En Parfaite Harmonie	Saison / Farmhouse Ale	65	24
2530	0.043	8	Daft Funk	Berliner Weissbier	65	24
2529	0.075	\N	Love In An Ellavator	American IPA	65	24
2528	0.053	\N	Spin Doctor	American Pale Ale (APA)	65	24
1612	0.05	\N	Keeper (Current)	American Pilsner	363	12
1611	0.068	\N	Better Half	American IPA	363	12
1273	0.048	\N	SNO White Ale	Witbier	440	16
365	0.048	\N	BRIK Irish Red Ale	Irish Red Ale	440	16
273	\N	\N	AXL Pale Ale	American Pale Ale (APA)	440	16
1884	0.087	80	Hop Freak	American Double / Imperial IPA	284	16
1272	0.051	24	Louie's Demise Amber Ale	American Amber / Red Ale	284	16
1080	0.075	51	Hop Happy	American IPA	284	16
932	0.065	20	Booyah Farmhouse Ale	Saison / Farmhouse Ale	284	16
776	0.092	\N	O-Gii	Witbier	284	16
172	0.048	18	Flaming Damsel Lager (2010)	Vienna Lager	284	16
171	0.051	24	Louie’s Demise Immort-Ale (2010)	American Amber / Red Ale	284	16
2361	0.099	\N	Axe Head Malt Liquor	American Malt Liquor	134	24
2359	0.054000000000000006	\N	Huber Bock (2014)	Bock	134	16
2358	0.04	\N	Minhas Light (2012)	Light Lager	134	12
2282	0.05	\N	Huber	American Pale Lager	134	12
2281	0.062	\N	Clear Creek Ice	American Pale Lager	134	16
2280	0.062	\N	Clear Creek Ice	American Pale Lager	134	12
2279	0.055	\N	Mountain Crest	American Pale Lager	134	16
2278	0.055	\N	Mountain Crest	American Pale Lager	134	12
2277	0.055	\N	Mountain Creek (2013)	American Pale Lager	134	12
2276	0.05	\N	Boxer	American Adjunct Lager	134	24
2275	0.042	\N	Boxer Light	Light Lager	134	12
2274	0.055	\N	Boxer Ice	American Adjunct Lager	134	12
2273	0.05	\N	Boxer	American Adjunct Lager	134	12
2442	0.05	\N	Cortez Gold	Belgian Pale Ale	98	32
2441	0.068	66	Mission IPA	American IPA	98	32
1460	0.048	44	El Conquistador Extra Pale Ale	American Pale Ale (APA)	98	32
1459	0.092	75	Shipwrecked Double IPA	American Double / Imperial IPA	98	32
1476	0.04	\N	Squeaky Bike Nut Brown Ale	American Brown Ale	399	16
902	0.04	\N	Dead Horse Amber	American Pale Wheat Ale	399	16
645	0.04	\N	Rocket Bike American Lager	California Common / Steam Beer	399	16
644	0.04	\N	Johnny's American IPA	American IPA	399	16
337	0.055	\N	Boneshaker Brown Ale	English Brown Ale	547	24
336	0.056	\N	Iron Mike Pale Ale	American Pale Ale (APA)	547	24
2236	0.042	\N	Monkadelic	American Pale Ale (APA)	189	12
2159	0.075	85	City of the Sun	American IPA	209	16
2157	0.068	75	Booming Rollers	American IPA	209	16
2156	0.052000000000000005	50	Oneida	American Pale Ale (APA)	209	16
2154	0.067	75	Aurora 	American Amber / Red Ale	209	16
1495	0.055	30	Lomaland	Saison / Farmhouse Ale	209	16
1494	0.047	46	Fortunate Islands	American Pale Wheat Ale	209	16
1493	0.058	40	Black House	American Stout	209	16
1492	0.065	115	Blazing World	American Amber / Red Ale	209	16
327	0.05	\N	Wapiti Amber Ale	American Amber / Red Ale	549	12
719	0.054000000000000006	\N	Sweet Georgia Brown	American Brown Ale	514	16
718	0.087	\N	Rich Man's IIPA	American Double / Imperial IPA	514	16
717	0.058	\N	Monkey Paw Oatmeal Pale Ale	American Pale Ale (APA)	514	16
1907	0.056	28	Montauk Summer Ale	American Blonde Ale	276	12
1906	0.06	49	Driftwood Ale	Extra Special / Strong Bitter (ESB)	276	12
1756	0.056	18	When Helles Freezes Over	Munich Helles Lager	326	12
1617	0.049	24	Morgan Street Oktoberfest	Märzen / Oktoberfest	326	12
1052	0.047	14	Honey Wheat	American Pale Wheat Ale	326	12
1051	0.046	24	Black Bear Dark Lager	Schwarzbier	326	12
1046	0.05	35	Golden Pilsner	German Pilsener	326	12
2413	0.052000000000000005	21	Cali Creamin'	Cream Ale	111	12
419	0.05	\N	Second Wind Pale Ale	American Pale Ale (APA)	540	12
408	0.05	\N	Sunny Haze	Hefeweizen	540	12
2237	0.052000000000000005	21	Towhead	American Blonde Ale	188	12
2208	0.07	70	Lil' Helper	American IPA	188	12
1952	0.08199999999999999	\N	Train Wreck	American Amber / Red Ale	260	16
768	0.085	\N	Full Moon Belgian White Ale	Witbier	507	12
625	0.07200000000000001	\N	Desert Magic IPA	American IPA	507	12
326	0.042	\N	Up River Light	Light Lager	507	12
132	0.085	\N	Full Moon Belgian White Ale (2007)	Witbier	507	12
131	0.055	\N	Dry Heat Hefeweizen (2006)	Hefeweizen	507	12
1598	0.05	\N	Mustang Sixty-Six	American Amber / Red Lager	366	12
862	0.04	\N	Mustang '33	American Pale Lager	366	12
699	0.04	\N	Session '33 (2011)	American Pale Lager	366	12
421	0.053	10	Mustang Golden Ale	American Blonde Ale	366	12
420	0.053	14	Washita Wheat	American Pale Wheat Ale	366	12
2345	0.037000000000000005	10	Gansett Light	Light Lager	143	16
2224	0.052000000000000005	30	Bohemian Pils	American Pilsner	143	16
1775	0.053	30	Autocrat Coffee Milk Stout	Milk / Sweet Stout	143	16
1291	0.086	35	Narragansett Bohemian Pilsner	German Pilsener	143	16
1093	0.042	24	Narragansett Summer Ale	American Pale Wheat Ale	143	12
580	0.05	22	Narragansett Cream Ale	Cream Ale	143	16
403	0.042	24	Narragansett Summer Ale	American Pale Wheat Ale	143	16
316	0.07	22	Narragansett Porter	American Porter	143	16
315	0.065	32	Narragansett Bock	Bock	143	16
314	0.055	15	Narragansett Fest Lager	Märzen / Oktoberfest	143	16
1537	0.053	\N	Undun Blonde Ale	American Blonde Ale	387	16
1536	0.07400000000000001	\N	CuDa Cascadian Dark Ale	American Black Ale	387	16
1265	0.085	86	Old Grogham Imperial India Pale Ale	American Double / Imperial IPA	387	16
747	0.085	86	Old Grogham Imperial India Pale Ale (2012)	American Double / Imperial IPA	387	16
746	0.07400000000000001	\N	CuDa Cascadian Dark Ale (2012)	American Black Ale	387	16
654	0.053	\N	Undun Blonde Ale (2012)	American Blonde Ale	387	16
1705	0.061	11	Wick For Brains	Pumpkin Ale	337	12
1148	0.065	65	Nebraska India Pale Ale	American IPA	337	12
1147	0.048	10	EOS Hefeweizen	Hefeweizen	337	12
1146	0.048	15	Brunette Nut Brown Ale	English Brown Ale	337	12
1145	0.057	29	Cardinal Pale Ale	American Pale Ale (APA)	337	12
1758	0.066	\N	County Line IPA	American IPA	325	12
1757	0.048	\N	Trauger Pilsner	German Pilsener	325	12
2475	0.045	40	Slow Ride	American IPA	82	12
2230	0.065	70	Ranger IPA	American IPA	82	12
1987	0.05	29	Shift	American Pale Lager	82	12
1978	0.056	21	1554 Black Lager	Euro Dark Lager	82	12
1975	0.048	\N	Blue Paddle	Czech Pilsener	82	12
1737	0.055	\N	California Route	American Amber / Red Lager	82	12
1707	0.052000000000000005	\N	Snapshot	American Pale Wheat Ale	82	16
1690	0.048	\N	Sunshine Wheat Beer	American Pale Wheat Ale	82	12
1586	0.052000000000000005	18	Fat Tire Amber Ale	American Amber / Red Ale	82	12
952	0.05	29	Shift (1)	American Pale Lager	82	12
748	0.052000000000000005	18	Fat Tire Amber Ale (2011)	American Amber / Red Ale	82	12
578	0.05	29	Shift	American Pale Lager	82	16
564	0.065	70	Ranger IPA	American IPA	82	16
563	0.052000000000000005	18	Fat Tire Amber Ale	American Amber / Red Ale	82	16
115	0.065	70	Ranger IPA (Current)	American IPA	82	12
72	0.048	\N	Sunshine Wheat Beer (2009)	American Pale Wheat Ale	82	12
71	0.052000000000000005	18	Fat Tire Amber Ale (2008)	American Amber / Red Ale	82	12
1417	0.034	6	Weiss Trash Culture	Berliner Weissbier	410	12
885	0.062	\N	Sea Hag IPA	American IPA	410	12
884	0.05	\N	Elm City Pilsner	American Pilsner	410	12
757	0.05	\N	Atlantic Amber Ale (2004)	American Amber / Red Ale	410	12
568	0.09	\N	668 Neighbor of the Beast12 oz.	Belgian Pale Ale	410	12
320	0.08800000000000001	85	Gandhi-Bot Double IPA (12 oz.)	American Double / Imperial IPA	410	12
43	0.09	\N	668 Neighbor of the Beast (16 oz.) (2010)	Belgian Pale Ale	410	16
42	0.08800000000000001	85	Gandhi-Bot Double IPA (16 oz.) (2010)	American Double / Imperial IPA	410	16
41	0.05	\N	Elm City Lager (2007)	American Pilsner	410	12
40	0.05	\N	Atlantic Amber Ale (2007)	American Amber / Red Ale	410	12
39	0.062	\N	Sea Hag IPA (Current)	American IPA	410	12
2272	0.05	\N	Rebirth Pale Ale	American Pale Ale (APA)	174	12
1582	0.068	\N	Irish Channel Stout	American Stout	174	16
1114	0.08800000000000001	\N	MechaHopzilla	American Double / Imperial IPA	174	16
486	0.065	\N	Hopitoulas IPA	American IPA	174	16
485	0.039	\N	NOLA Brown Ale	English Dark Mild Ale	174	12
484	0.049	\N	NOLA Blonde Ale	American Blonde Ale	174	12
2043	0.056	20	Skylight	Dunkelweizen	241	12
2042	0.056	30	Kadigan	American Blonde Ale	241	12
2041	0.052000000000000005	50	Dammit Jim!	American Amber / Red Ale	241	12
646	0.054000000000000006	\N	Nut Brown Ale	English Brown Ale	518	12
165	0.046	\N	White Ale	Witbier	518	12
2050	0.042	35	Cream Ale	Cream Ale	238	12
915	0.07200000000000001	\N	Green Head IPA	American IPA	495	12
914	0.054000000000000006	\N	Plum Island Belgian White	Witbier	495	12
913	0.055	\N	Newburyport Pale Ale	American Pale Ale (APA)	495	12
1811	0.055	\N	Marblehead	American Amber / Red Ale	305	16
1622	0.051	31	Jam Session	American Pale Ale (APA)	359	16
1621	0.07200000000000001	80	Hop Drop 'N Roll IPA	American IPA	359	16
1307	0.06	\N	Paleo IPA	English India Pale Ale (IPA)	431	12
1306	0.061	\N	Buck Snort Stout	American Stout	431	12
1305	0.055	\N	Station 33 Firehouse Red	Irish Red Ale	431	12
1304	0.045	\N	Slimy Pebble Pils	German Pilsener	431	12
2692	0.045	50	Get Together	American IPA	0	16
2691	0.049	26	Maggie's Leap	Milk / Sweet Stout	0	16
2690	0.048	19	Wall's End	English Brown Ale	0	16
2689	0.06	38	Pumpion	Pumpkin Ale	0	16
2688	0.06	25	Stronghold	American Porter	0	16
2687	0.056	47	Parapet ESB	Extra Special / Strong Bitter (ESB)	0	16
1854	0.069	\N	Blue Boots IPA	American IPA	293	16
1227	0.063	\N	Hoppy Bitch IPA	American IPA	450	16
1226	0.063	42	Three Skulls Ale Pale Ale	American Pale Ale (APA)	450	16
541	0.045	\N	Walter's Premium Pilsener Beer	German Pilsener	529	12
109	0.045	\N	Floppin' Crappie	American Pale Wheat Ale	529	12
1917	0.043	\N	Left of the Dial IPA	American IPA	271	12
1190	0.04	\N	Notch Session Pils	Czech Pilsener	271	12
1264	0.055	\N	O'Fallon Pumpkin Beer	Pumpkin Ale	442	12
1258	0.061	66	5 Day IPA	American IPA	442	12
128	0.051	7	O'Fallon Wheach	Fruit / Vegetable Beer	442	12
2331	0.067	70	Watershed IPA	American IPA	150	12
1669	0.054000000000000006	24	Oakshire Amber Ale	American Amber / Red Ale	150	12
1668	0.058	27	Overcast Espresso Stout	American Stout	150	12
999	0.067	70	Watershed IPA (2013)	American IPA	150	12
2247	0.08199999999999999	25	Lake Monster	Baltic Porter	184	16
2071	0.049	27	London Homesick Ale	English Bitter	184	12
2070	0.048	35	Luchesa Lager	Keller Bier / Zwickel Bier	184	12
2069	0.048	35	Slow Ride	American Pale Ale (APA)	184	12
2192	0.047	\N	Occidental Hefeweizen	American Pale Wheat Ale	200	16
1130	0.051	\N	Occidental Dunkel	Dunkelweizen	200	16
1129	0.05	\N	Occidental Altbier	Altbier	200	16
1081	0.045	\N	Occidental Kölsch	Kölsch	200	16
2335	0.092	72	Perpetual Darkness	Belgian Strong Dark Ale	148	12
2334	0.087	29	Clan Warrior	Scotch Ale / Wee Heavy	148	12
2333	0.054000000000000006	36	Psycho Penguin Vanilla Porter	American Porter	148	12
1721	0.047	\N	Heliocentric Hefeweizen	Hefeweizen	148	12
1720	0.051	\N	Ghose Drifter Pale Ale	American Pale Ale (APA)	148	12
1431	0.051	\N	Ghost Rider Pale Ale (2013)	American Pale Ale (APA)	148	12
1430	0.047	\N	Helios Hefeweizen (2013)	Hefeweizen	148	12
1059	0.095	19	The Hole in Hadrian's Wall	Scottish Ale	471	16
1058	0.065	26	33 Select Brown Ale	American Brown Ale	471	16
603	0.06	29	Midwest Charm Farmhouse Ale	Saison / Farmhouse Ale	471	16
602	0.05	45	Boji Blue Pale Ale	American Pale Ale (APA)	471	16
601	0.057	26	Winter Games Select #32 Stout	American Stout	471	16
600	0.05	23	Boji Beach Golden Rye Ale	Rye Beer	471	16
1828	0.06	\N	Hopsmith Pale Lager	American Pale Lager	301	16
1487	0.065	65	Falling Down Brown Ale	American Brown Ale	301	16
1486	0.068	\N	Resolution Rye Stout	American Stout	301	16
1485	0.055	\N	Plowshare Porter	American Porter	301	16
1394	0.046	20	Old Forge Pumpkin Ale	Pumpkin Ale	301	16
1381	0.045	\N	Endless Sun Ale	American Pale Wheat Ale	301	16
900	0.065	\N	Celestial Blonde Ale	American Blonde Ale	301	16
891	0.075	\N	Overbite IPA	American IPA	301	16
509	0.055	\N	T-Rail Pale Ale	American Pale Ale (APA)	301	16
508	0.048	\N	Endless Summer Ale (2011)	American Pale Wheat Ale	301	16
1530	0.053	\N	Clem's Gold	American Pale Lager	390	16
1529	0.055	\N	Lizzy's Red	American Amber / Red Lager	390	16
1528	0.067	\N	Orlison India Pale Lager	American Pale Lager	390	16
1527	0.042	\N	Brünette	Euro Dark Lager	390	16
1526	0.041	\N	Havanüther	Light Lager	390	16
2113	0.065	\N	Lyric Ale	Saison / Farmhouse Ale	216	12
2112	0.053	\N	Atalanta	Saison / Farmhouse Ale	216	12
2302	0.049	35	Pinner Throwback IPA	American IPA	166	12
1883	0.052000000000000005	\N	Centennial State Pale Ale	American Pale Ale (APA)	166	19.2
1859	0.08	\N	Old Chub NITRO	Scotch Ale / Wee Heavy	166	16
1796	\N	\N	The CROWLER™	\N	166	32
1790	\N	\N	CAN'D AID Foundation	\N	166	12
1752	\N	\N	Icey.P.A.	American IPA	166	16
1751	0.05	\N	One Nut Brown	English Brown Ale	166	12
1750	\N	\N	Birth IPA	American IPA	166	12
1444	0.065	65	Dale's Pale Ale	American Pale Ale (APA)	166	12
1252	0.065	65	Dale's Pale Ale	American Pale Ale (APA)	166	12
1167	0.053	35	Mama's Little Yella Pils	Czech Pilsener	166	19.2
993	0.085	\N	oSKAr the G'Rauch	American IPA	166	19.2
992	0.085	\N	oSKAr the G'Rauch	American IPA	166	16
955	0.065	65	Dale's Pale Ale	American Pale Ale (APA)	166	19.2
933	0.07	\N	The Deuce	American Brown Ale	166	16
892	0.065	65	Dale's Pale Ale (10 Year Anniversary)	American Pale Ale (APA)	166	12
828	0.065	65	Dale's Pale Ale (2012)	American Pale Ale (APA)	166	12
806	0.087	85	Gordon Imperial Red (2010)	American Double / Imperial IPA	166	12
755	0.065	65	Dale's Pale Ale (2011)	American Pale Ale (APA)	166	12
754	0.065	65	Dale's Pale Ale (2010)	American Pale Ale (APA)	166	12
726	0.087	85	G'KNIGHT (16 oz.)	American Double / Imperial IPA	166	16
720	0.09	\N	15th Anniversary Abbey Ale (2012)	Belgian Dark Ale	166	16
661	0.08	\N	Chaka	Belgian Strong Pale Ale	166	16
585	0.08	70	HGH (Home Grown Hops): Part Duh	American Strong Ale	166	12
565	0.08	\N	Deviant Dale's IPA	American Double / Imperial IPA	166	16
391	0.09	60	One Hit Wonder	American Double / Imperial IPA	166	12
388	0.087	85	G'KNIGHT (12 oz.)	American Double / Imperial IPA	166	12
8	0.099	98	Ten Fidy Imperial Stout	Russian Imperial Stout	166	12
7	0.053	35	Mama's Little Yella Pils	Czech Pilsener	166	12
6	0.099	100	GUBNA Imperial IPA	American Double / Imperial IPA	166	12
5	0.08	35	Old Chub	Scottish Ale	166	12
4	0.087	85	Gordon Ale (2009)	American Double / Imperial IPA	166	12
1	0.065	65	Dale's Pale Ale	American Pale Ale (APA)	166	12
805	0.092	85	Gordon (2005)	American Double / Imperial IPA	503	12
804	0.095	98	Ten Fidy Imperial Stout (2008)	Russian Imperial Stout	503	12
803	0.099	98	Ten Fidy Imperial Stout (2007)	Russian Imperial Stout	503	12
787	0.08	35	Old Chub (2008)	Scottish Ale	503	12
786	0.08	35	Old Chub (2004)	Scottish Ale	503	12
785	0.08	35	Old Chub (2003)	Scottish Ale	503	12
745	0.065	65	Dale's Pale Ale (2008)	American Pale Ale (APA)	503	12
744	0.065	65	Dale's Pale Ale (2006)	American Pale Ale (APA)	503	12
743	0.065	65	Dale's Pale Ale (2004)	American Pale Ale (APA)	503	12
742	0.065	65	Dale's Pale Ale (2003)	American Pale Ale (APA)	503	12
741	0.065	65	Dale's Pale Ale (2002)	American Pale Ale (APA)	503	12
734	0.052000000000000005	\N	Leroy (2005)	American Brown Ale	503	12
733	0.087	60	Gordon Beer (2006)	American Double / Imperial IPA	503	12
1533	0.087	85	G'KNIGHT	American Double / Imperial IPA	389	12
1532	0.099	98	Ten Fidy	Russian Imperial Stout	389	12
1328	0.08	85	Deviant Dale's IPA	American Double / Imperial IPA	389	16
1175	0.08	35	Old Chub	Scottish Ale	389	12
1166	0.065	65	Dale's Pale Ale	American Pale Ale (APA)	389	19.2
1065	0.065	65	Dale's Pale Ale	American Pale Ale (APA)	389	12
1908	0.055	45	Fresh Slice White IPA	American White IPA	275	12
1946	0.055	55	Overgrown American Pale Ale	American Pale Ale (APA)	261	12
1961	0.04	39	Ozark American Pale Ale	American Pale Ale (APA)	259	12
1684	0.048	\N	Hula Hoppie Session IPA	American IPA	341	12
927	0.053	\N	Dirty Hippie Dark Wheat	American Dark Wheat Ale	341	12
1268	0.052000000000000005	23	Rustic Red	Irish Red Ale	441	16
697	0.053	48	Stimulator Pale Ale	American Pale Ale (APA)	441	16
696	0.045	22	Old Town Ale	Kölsch	441	16
695	0.044	28	Car 21	English Bitter	441	16
694	0.05	24	Cache La Porter	American Porter	441	16
1805	0.042	35	Rodeo Rye Pale Ale	American Pale Ale (APA)	307	12
1048	0.062	65	Outlaw IPA	American IPA	307	12
1043	0.044	\N	North Fork Lager	American Pale Lager	307	12
890	0.048	35	Payette Pale Ale	American Pale Ale (APA)	307	12
775	0.055	25	Mutton Buster	American Brown Ale	307	12
1087	0.05	\N	Side Kick Kölsch	Kölsch	468	12
1931	0.046	\N	Fresh Cut Pilsner	American Pilsner	266	12
1930	0.05	61	Summer Session Ale	American Pale Wheat Ale	266	12
2238	0.04	12	Lobo Lito	Light Lager	187	12
2144	0.05	17	Robert Earl Keen Honey Pils	American Pilsner	187	12
2175	0.065	77	Mound Builder IPA	American IPA	205	12
2168	0.062	62	Amazon Princess IPA	American IPA	205	12
1956	0.042	\N	Farmer's Daughter Wheat	American Pale Wheat Ale	205	12
1794	0.045	\N	People's Pilsner	German Pilsener	205	12
2633	0.055	10	Hotbox Brown	American Brown Ale	13	12
2632	0.048	15	Gold	American Blonde Ale	13	12
2631	0.058	\N	Black	American Black Ale	13	12
2630	0.065	65	98 Problems (Cuz A Hop Ain't One)	American IPA	13	12
2629	0.05	40	Veteran’s Pale Ale (VPA)	American Pale Ale (APA)	13	12
2628	0.05	35	Grapefruit IPA	American IPA	13	12
1062	0.051	\N	Pete's ESP Lager (1998)	American Pale Lager	470	12
1061	0.047	\N	Pete's Wicked Summer Brew (1995)	American Pale Wheat Ale	470	12
1060	0.049	\N	Pete's Wicked Bohemian Pilsner (1997)	Czech Pilsener	470	12
1056	\N	\N	Pete's Wicked Pale Ale (1997)	American Pale Ale (APA)	470	12
1055	0.047	\N	Pete's Wicked Summer Brew (2002)	American Pale Wheat Ale	470	12
1054	0.047	\N	Pete's Wicked Summer Brew (1997)	American Pale Wheat Ale	470	12
1053	0.047	\N	Pete's Wicked Summer Brew (1996)	American Pale Wheat Ale	470	12
2635	0.041	12	Sparkle	American Pale Lager	11	16
1404	0.059	25	North 45 Amber Ale	American Amber / Red Ale	11	16
1403	0.069	20	Horny Monk	Dubbel	11	16
1402	0.067	74	Mind's Eye PA	American IPA	11	16
2312	0.061	60	Camelback	American IPA	157	12
1636	0.056	\N	Local 5 Pale Ale	American Pale Ale (APA)	355	16
1518	0.073	\N	Devils Head Red Ale	American Amber / Red Ale	355	16
1384	0.07	75	Elephant Rock IPA	American IPA	355	12
1797	0.05	\N	Black Bay Milk Stout	Milk / Sweet Stout	310	12
1437	0.05	\N	Atom Splitter Pale Ale	American Pale Ale (APA)	310	12
1791	0.06	20	Hot Date Ale	Chile Beer	314	16
1540	0.07	\N	Masked Bandit IPA	American Black Ale	314	16
1491	0.06	24	Sweet Potato Ale	Fruit / Vegetable Beer	314	16
1335	0.045	18	Float Trip Ale	American Blonde Ale	314	16
847	0.055	25	Old Tom Porter	American Porter	314	16
846	0.045	18	Black Walnut Wheat	American Dark Wheat Ale	314	16
521	0.055	20	McKinney Eddy Amber Ale	American Amber / Red Ale	314	16
479	0.07	70	Missouri Mule India Pale Ale	American IPA	314	16
2559	0.065	\N	Blood of the Unicorn	American Amber / Red Ale	52	16
1760	0.069	51	GreyBeard™ IPA	American IPA	324	12
1759	0.057	31	Pisgah Pale Ale	American Pale Ale (APA)	324	12
1589	0.045	\N	PONTO S.I.P.A.	American IPA	370	16
1457	0.049	\N	Chronic Ale	American Amber / Red Ale	370	16
1191	0.068	\N	Swami's India Pale Ale	American IPA	370	16
2336	0.05	\N	New Cleveland Palesner	American Pilsner	147	12
2553	0.054000000000000006	45	Mazzie	American Pale Ale (APA)	55	12
1909	0.099	\N	Big Chuck Barleywine	American Barleywine	274	12
335	\N	\N	Ponderosa IPA	American IPA	548	12
64	\N	\N	Liquid Amber Ale	American Amber / Red Ale	548	12
2360	0.059	14	Morning Wood Wheat (Current)	American Pale Wheat Ale	135	12
1463	0.069	17	Hideout Helles	Munich Helles Lager	135	12
1462	0.06	15	Dead Eye Dunkel	Munich Dunkel Lager	135	12
1461	0.058	21	Peacemaker Pilsner	Czech Pilsener	135	12
711	0.057	68	Over the Rail Pale Ale	American Pale Ale (APA)	135	12
188	0.058	21	Pallavicini Pilsner (2009)	Czech Pilsener	135	12
130	0.059	14	Morning Wood Wheat (Current)	American Pale Wheat Ale	135	12
399	0.052000000000000005	18	Pyramid Hefeweizen (2011)	Hefeweizen	544	12
82	0.052000000000000005	18	Haywire Hefeweizen (2010)	Hefeweizen	544	16
2031	0.045	35	Golden Fleece	Belgian Pale Ale	246	12
2030	0.055	30	Smoking Mirror	American Porter	246	12
2269	0.046	\N	Rahr's Blonde	Munich Helles Lager	176	12
2229	0.058	60	Pride of Texas Pale Ale	American Pale Ale (APA)	176	12
2370	0.044	5	18th Anniversary Gose	Gose	128	12
2211	0.046	25	White (2015)	Witbier	128	12
1861	0.099	85	BLAKKR	American Black Ale	128	12
1718	0.051	21	Firemans #4 Blonde Ale (2013)	American Blonde Ale	128	12
1290	0.059	\N	The Sword Iron Swan Ale	English Pale Ale	128	12
1091	0.053	52	Hans' Pils (2015)	German Pilsener	128	12
1086	0.06	50	Four Squared (2015)	American Blonde Ale	128	12
830	0.051	21	Firemans #4 Blonde Ale (2015)	American Blonde Ale	128	12
1021	0.07200000000000001	55	Watership Brown Ale	American Brown Ale	475	12
938	0.062	55	Gangway IPA	American IPA	475	12
715	0.049	\N	Long Day Lager	Czech Pilsener	475	12
2516	0.051	17	Farmer's Daughter Blonde	American Blonde Ale	68	16
2515	0.055	45	Pump House IPA	American IPA	68	16
2514	0.07	\N	Suicide Blonde IPA	Belgian IPA	68	16
2513	0.047	25	Vanilla Porter	American Porter	68	16
2512	0.058	18	Honey Rye	Rye Beer	68	16
1467	0.055	\N	Happy Cider	Cider	403	16
945	0.065	44	Long Hammer IPA	American IPA	487	16
583	0.065	44	Long Hammer IPA	American IPA	487	12
339	0.058	27	Copper Hook (2011)	American Amber / Red Ale	487	12
1375	0.08	\N	Nectar of the Hops	Mead	421	16
1374	0.08	\N	Sunshine Nectar	Mead	421	16
1373	0.08	\N	Black Raspberry Nectar	Mead	421	16
2087	0.05	16	Blood Orange Wit	Witbier	225	16
2414	0.05	40	Consilium	American Pale Ale (APA)	110	12
1581	0.09	60	Hammer & Sickle	Russian Imperial Stout	110	12
1176	0.07	100	Redacted Rye IPA	American IPA	110	16
1006	0.099	100	Elevation Triple India Pale Ale	American Double / Imperial IPA	110	12
1005	0.05	25	5:00 O'Clock Afternoon Ale	American Blonde Ale	110	16
636	0.07	100	Ryeteous Rye IPA (2012)	American IPA	110	16
1538	0.064	\N	Stout Ol' Friend	American Stout	386	16
1075	0.064	\N	Stout Ol' Friend (2012)	American Stout	386	16
710	\N	\N	Rye Porter	American Porter	386	16
709	0.05	\N	Miner's Gold	American Blonde Ale	386	16
708	0.046	\N	Vienna Lager	Vienna Lager	386	16
706	0.056	\N	Jessie's Garage	American Pale Ale (APA)	386	16
220	0.062	\N	Colorado Red Ale	American Amber / Red Ale	386	12
219	\N	\N	Miner's Gold	American Blonde Ale	386	12
2576	0.055	40	Fist City	American Pale Ale (APA)	44	12
1133	0.068	\N	A Little Crazy	Belgian Pale Ale	44	12
609	0.058	15	Rosa Hibiscus Ale	Herbed / Spiced Beer	44	12
418	0.061	31	Fistmas Ale	Herbed / Spiced Beer	44	12
417	0.057	25	Oktoberfest Revolution	Märzen / Oktoberfest	44	12
416	0.068	28	Eugene Porter	American Porter	44	12
415	0.065	70	Anti-Hero IPA	American IPA	44	12
414	0.05	14	Bottom Up Belgian Wit	Witbier	44	12
2452	0.057	42	Hustle	American Amber / Red Ale	93	12
2451	0.055	42	Pure Fury	American Pale Ale (APA)	93	12
2132	0.06	60	Dad	American Amber / Red Ale	93	12
1993	0.058	35	Panther	American Porter	93	12
1992	0.052000000000000005	21	Franz	Märzen / Oktoberfest	93	12
1935	0.043	45	Zen	American Pale Ale (APA)	93	12
1852	0.07200000000000001	75	Truth	American IPA	93	12
1851	0.048	25	Cougar	American Blonde Ale	93	12
2307	0.038	\N	Smooth Operator	Cream Ale	162	16
2580	0.035	\N	Gose	Gose	42	16
1807	0.043	\N	Maine Island Trail Ale	American Pale Ale (APA)	42	16
1180	0.05	\N	River North White Ale	Witbier	459	16
1179	0.05	\N	River North Ale	American Amber / Red Ale	459	16
1771	0.05	55	Lil SIPA	American IPA	321	16
1654	0.055	60	Hop Bomber Rye Pale Ale	American Pale Ale (APA)	321	16
2579	0.05	100	Jah Mon	American IPA	43	12
2373	0.062	\N	Oktoberfest	Märzen / Oktoberfest	43	12
2049	0.08	\N	Headless Wylie	Pumpkin Ale	43	12
2048	0.05	\N	Dayman IPA	American IPA	43	12
1880	0.071	\N	All Aboard! Anniversary Stout	Oatmeal Stout	43	12
1879	0.062	\N	Hop Lace	American White IPA	43	12
1878	0.048	\N	OH-PA Session Pale Ale	American Pale Ale (APA)	43	12
1877	0.08	\N	Patrick's Poison	American Amber / Red Ale	43	12
1764	0.081	\N	Rudolph's Red	American Amber / Red Ale	43	12
1103	0.053	\N	Babbling Blonde	American Blonde Ale	43	12
1102	0.051	\N	Maxwell's Scottish Ale	Scottish Ale	43	12
1101	0.061	\N	Grateful White	Witbier	43	12
1100	0.055	\N	RT Lager	American Amber / Red Lager	43	12
1099	0.062	\N	Old Wylie's IPA	American IPA	43	12
1098	0.048	\N	Hala Kahiki Pineapple Beer	Fruit / Vegetable Beer	43	12
1330	0.045	\N	Track 1 Amber Lager	American Amber / Red Lager	427	16
2074	0.053	\N	Pine Knob Pilsner	Czech Pilsener	229	16
1724	\N	\N	Cal and Co. Black Cherry Porter	American Porter	229	16
1280	0.055	\N	Lazy Daze Lager	American Adjunct Lager	229	16
899	0.059	\N	Rochester Red Ale	American Amber / Red Ale	229	16
363	0.05	\N	Milkshake Stout	Milk / Sweet Stout	229	16
158	0.07	\N	Cornerstone IPA	American IPA	229	16
97	0.055	\N	Lazy Daze Lager	American Adjunct Lager	229	12
1860	0.051	\N	Rogue American Amber Ale	American Amber / Red Ale	289	16
1577	0.076	78	12th Round	American Strong Ale	376	16
1576	0.07	80	RoughTail IPA	American IPA	376	16
1575	0.08	\N	Polar Night Stout	American Stout	376	16
2304	0.071	36	Sundown	Saison / Farmhouse Ale	164	12
2249	0.099	\N	Sanctified	Belgian Strong Pale Ale	164	12
2053	0.051	\N	Fear of a Brett Planet	American Pale Ale (APA)	164	12
1842	0.056	40	Original Slacker Ale	English Brown Ale	164	12
1841	0.07200000000000001	\N	Alpha Blackback	American Black Ale	164	12
1782	0.063	\N	Kiss Off IPA	American IPA	164	12
1552	0.045	28	Dog Days Summer Ale	Kölsch	164	12
1479	0.056	35	1881 California Red	American Amber / Red Ale	397	12
1478	0.073	55	CAPT Black IPA	American Black Ale	397	12
1370	0.048	42	Ruhstaller's Gilt Edge Lager Beer	American Amber / Red Lager	397	12
883	0.073	55	CAPT Black IPA	American Black Ale	397	16
882	0.056	35	1881 California Red Ale	American Amber / Red Ale	397	16
1868	0.05	15	Saint Archer White Ale	Witbier	288	12
1867	0.068	66	Saint Archer IPA	American IPA	288	12
1865	0.052000000000000005	40	Saint Archer Pale Ale	American Pale Ale (APA)	288	12
1864	0.048	22	Saint Archer Blonde	Kölsch	288	12
2599	0.069	20	Sex Panther	American Porter	30	12
2073	0.095	25	Winter Warmer (Vault Series)	Winter Warmer	30	16
2063	0.091	99	Count Hopula (Vault Series)	American Double / Imperial IPA	30	16
1995	0.055	\N	Oktoberfest	Märzen / Oktoberfest	30	12
1934	0.05	15	SunSpot Golden Ale	American Blonde Ale	30	12
1329	0.06	\N	I.W.A. (2011)	American Pale Wheat Ale	30	12
1299	0.065	\N	Supermonk I.P.A.	Belgian IPA	30	12
1073	0.055	20	Epicenter Amber Ale	American Amber / Red Ale	30	12
1072	0.05	15	SanTan HefeWeizen	Hefeweizen	30	12
1071	0.07	85	Hop Shock IPA	American IPA	30	12
852	0.069	20	Sex Panther (2014)	American Porter	30	12
850	0.055	45	Devil’s Ale	American Pale Ale (APA)	30	12
839	0.081	\N	Rail Slide Imperial Spiced Ale	Herbed / Spiced Beer	30	12
777	0.05	20	Mr. Pineapple	Fruit / Vegetable Beer	30	12
764	0.055	45	American Idiot Ale (2012)	American Pale Ale (APA)	30	12
317	0.07	85	Hop Shock IPA (2010)	American IPA	30	12
286	0.05	15	SanTan HefeWeizen (2010)	Hefeweizen	30	12
285	0.055	45	Devil’s Ale (2010)	American Pale Ale (APA)	30	12
124	0.055	20	Epicenter Amber Ale (2010)	American Amber / Red Ale	30	12
1392	0.058	20	Sanitas Saison Ale	Saison / Farmhouse Ale	419	12
1391	0.068	65	Sanitas Black IPA	American Black Ale	419	12
2002	0.08900000000000001	88	Giant DIPA	American Double / Imperial IPA	252	16
1683	0.054000000000000006	\N	Dread Brown Ale	American Brown Ale	252	12
1362	0.07	\N	Casinos IPA	English India Pale Ale (IPA)	252	16
1519	0.055	30	Saison 88	Saison / Farmhouse Ale	392	12
967	0.071	95	Black IPA	American Black Ale	392	12
599	0.045	\N	Santa Fe Irish Red Ale	Irish Red Ale	392	12
307	\N	\N	Santa Fe Oktoberfest	Märzen / Oktoberfest	392	12
305	0.08	\N	Imperial Java Stout	Russian Imperial Stout	392	12
304	0.055	\N	Freestyle Pilsner	German Pilsener	392	12
217	0.066	\N	Happy Camper IPA	American IPA	392	12
1477	0.05	11	Oval Beach Blonde Ale	American Blonde Ale	398	16
1503	0.065	\N	Oak Aged Cider	Cider	394	12
1466	0.065	\N	Ginger Cider	Cider	394	12
1245	0.065	\N	Schilling Hard Cider	Cider	394	12
1324	0.05	45	Schlafly Yakima Wheat Ale	American Pale Wheat Ale	428	12
1323	0.05	\N	Schlafly Black Lager	Schwarzbier	428	12
1078	0.045	30	Schlafly IPA	American IPA	428	12
1077	0.05	30	Schlafly American Brown Ale	American Brown Ale	428	12
588	0.041	16	Schlafly Hefeweizen	Hefeweizen	428	12
53	0.045	17	Schlafly Summer Lager	Munich Helles Lager	428	12
815	0.047	\N	Sea Dog Wild Blueberry Wheat Ale	Fruit / Vegetable Beer	502	12
1302	0.07400000000000001	60	Blur India Pale Ale	American IPA	432	12
1416	0.065	\N	Dry Cider	Cider	411	16
1415	0.065	\N	Dry Hard Cider	Cider	411	16
918	0.07	105	Frankenlou's IPA	American IPA	494	16
917	0.07	55	Becky's Black Cat Porter	American Porter	494	16
2250	0.077	40	Seventh Son of a Seventh Son	American Strong Ale	183	16
1768	0.053	20	Stone Fort Brown Ale	English Brown Ale	183	16
1767	0.077	40	Seventh Son Hopped Red Ale	American Amber / Red Ale	183	16
1766	0.06	53	Humulus Nimbus Super Pale Ale	American Pale Ale (APA)	183	16
1765	0.07	68	Golden Ratio IPA	American IPA	183	16
2368	0.068	\N	Black Hop IPA	American Black Ale	130	12
738	0.05	\N	Archer's Ale (2004)	English Pale Ale	511	12
1539	0.069	65	Monkey Fist IPA	American IPA	385	12
975	0.051	\N	Shipyard Summer Ale	American Pale Wheat Ale	385	12
814	0.047	\N	Pumpkinhead Ale	Pumpkin Ale	385	12
727	0.051	\N	Shipyard Export	American Blonde Ale	385	12
2474	0.052000000000000005	\N	Nooner	German Pilsener	83	12
2239	0.07200000000000001	65	Torpedo	American IPA	83	12
1919	0.06	\N	Yonder Bock	Maibock / Helles Bock	83	12
1918	0.06	\N	CANfusion Rye Bock	Rye Beer	83	12
1905	0.056	37	Sierra Nevada Pale Ale	American Pale Ale (APA)	83	16
1338	0.048	26	Old Chico Crystal Wheat	American Pale Wheat Ale	83	12
1295	0.05	28	Summerfest	Czech Pilsener	83	12
426	0.07200000000000001	65	Torpedo	American IPA	83	16
400	0.056	37	Sierra Nevada Pale Ale	American Pale Ale (APA)	83	12
2353	0.069	\N	Sietsema Red Label	Cider	137	16
212	0.042	\N	Bear Ass Brown	American Brown Ale	551	12
161	0.06	\N	Red Mountain Ale	American Amber / Red Ale	551	12
160	0.068	\N	Ice Pick Ale	American IPA	551	12
2574	0.1	52	4Beans	Baltic Porter	46	12
2479	0.042	16	Jammer	Gose	46	12
2443	0.08	\N	Abigale	Belgian Pale Ale	46	12
2266	0.032	7	Rad	Fruit / Vegetable Beer	46	16
2090	0.065	62	Bengali	American IPA	46	24
1962	0.047	50	Sensi Harvest	American Pale Ale (APA)	46	12
1696	0.099	111	Hi-Res	American Double / Imperial IPA	46	12
1608	0.07	70	Global Warmer	American Strong Ale	46	12
1591	0.067	74	Autumnation (2013)	American IPA	46	16
1388	0.054000000000000006	42	The Crisp	German Pilsener	46	16
1387	0.052000000000000005	34	Sweet Action	Cream Ale	46	16
1386	0.063	57	Righteous Ale	Rye Beer	46	16
1385	0.064	62	Bengali Tiger	American IPA	46	16
1020	0.099	85	3Beans	Baltic Porter	46	12
778	0.059	47	Brownstone	American Brown Ale	46	16
630	0.052000000000000005	11	Apollo	American Pale Wheat Ale	46	16
629	0.049	35	Harbinger	Saison / Farmhouse Ale	46	16
628	0.091	103	Resin	American Double / Imperial IPA	46	12
525	0.063	69	Diesel	American Stout	46	16
512	0.06	48	Autumnation (2011-12) (2011)	Pumpkin Ale	46	16
425	0.054000000000000006	42	The Crisp (2011)	German Pilsener	46	16
424	0.052000000000000005	34	Sweet Action (2011)	Cream Ale	46	16
423	0.063	57	Righteous Ale (2011)	Rye Beer	46	16
422	0.064	62	Bengali Tiger (2011)	American IPA	46	16
1942	0.045	\N	Rudie Session IPA	American IPA	264	12
1708	0.07400000000000001	\N	Taster's Choice	Doppelbock	264	12
1521	0.068	65	Modus Hoperandi	American IPA	264	12
1297	0.058	15	Estival Cream Stout	American Stout	264	12
1192	0.058	\N	Vernal Minthe Stout	American Stout	264	12
1013	0.08	\N	Hibernal Vinifera Stout	Foreign / Export Stout	264	12
774	\N	\N	Autumnal Molé Stout	American Stout	264	12
386	0.042	18	Mexican Logger	American Pale Lager	264	12
70	0.053	\N	True Blonde Ale	American Blonde Ale	264	12
69	0.061	\N	Euphoria Pale Ale	American Pale Ale (APA)	264	12
68	0.057	58	ESB Special Ale	Extra Special / Strong Bitter (ESB)	264	12
67	0.068	65	Modus Hoperandi	American IPA	264	12
1792	0.058	39	Iron Butt Red Ale	American Amber / Red Ale	313	12
1609	0.071	92	Initial Point India Pale Ale	American IPA	313	12
2537	0.085	\N	Monkey Dancing On A Razor Blade	Belgian IPA	64	24
2536	0.08199999999999999	\N	Tripel Deke	Tripel	64	24
30	0.049	\N	Urban Wilderness Pale Ale	English Pale Ale	557	12
2305	0.06	70	Homefront IPA	American IPA	163	12
1588	0.055	16	Sly Fox Christmas Ale 2013	Winter Warmer	371	12
1363	0.056	25	Grisette	Grisette	371	12
1211	0.062	\N	360° India Pale Ale	American IPA	371	12
1123	0.049	18	Helles Golden Lager	Munich Helles Lager	371	12
926	0.055	16	Sly Fox Christmas Ale 2012 (2012)	Winter Warmer	371	12
894	0.084	90	Odyssey Imperial IPA	American Double / Imperial IPA	371	12
166	0.058	25	Oktoberfest Lager	Märzen / Oktoberfest	371	12
24	0.07	113	113 IPA	American IPA	371	12
23	0.053	21	Dunkel Lager	Munich Dunkel Lager	371	12
22	0.056	11	Royal Weisse Ale	Hefeweizen	371	12
21	0.049	44	Pikeland Pils	German Pilsener	371	12
20	0.051	40	Phoenix Pale Ale	American Pale Ale (APA)	371	12
2407	0.07	88	Rule G IPA	American IPA	115	12
2406	0.058	35	Murphy's Law	American Amber / Red Ale	115	12
2405	0.062	33	Alter Ego 	Saison / Farmhouse Ale	115	12
2234	0.05	\N	Monarch Pilsner	American Pilsner	191	12
1606	0.06	55	Snow King Pale Ale	American Pale Ale (APA)	191	12
617	0.054000000000000006	36	Zonker Stout	Foreign / Export Stout	191	12
407	0.05	22	OB-1 Organic Ale	English Brown Ale	191	12
406	0.05	18	Snake River Lager	Vienna Lager	191	12
402	0.052000000000000005	32	Snake River Pale Ale	American Pale Ale (APA)	191	12
393	0.068	60	Pako’s EyePA	American IPA	191	12
1798	0.05	\N	Thanksgiving Ale	Kölsch	309	12
1655	0.092	\N	Double Dagger Imperial IPA	American Double / Imperial IPA	309	12
1596	0.063	100	Dagger Falls IPA	American IPA	309	12
1595	0.063	100	Dagger Falls IPA	American IPA	309	12
1482	0.06	\N	Socktoberfest	Märzen / Oktoberfest	309	16
1447	0.079	\N	Hopnoxious Imperial IPA	American Double / Imperial IPA	309	12
1425	0.099	\N	Barrel Aged Seven Devils Imperial Stout	American Double / Imperial Stout	309	12
1424	0.055	\N	Boise Co-Op Two Score Ale	Saison / Farmhouse Ale	309	16
1298	0.05	\N	Sockeye Belgian Style Summer Ale	Witbier	309	16
1181	0.064	\N	Sockeye Maibock	Maibock / Helles Bock	309	12
1160	0.099	100	Old Devil's Tooth	American Barleywine	309	12
1152	0.043	\N	Galena Golden	American Blonde Ale	309	12
1151	0.052000000000000005	32	Hell-Diver Pale Ale	American Pale Ale (APA)	309	12
1150	0.046	12	Woolybugger Wheat	American Pale Wheat Ale	309	12
1076	0.057	\N	Power House Porter	American Porter	309	12
995	0.084	90	Winterfest	American Strong Ale	309	16
879	0.063	100	Dagger Falls IPA	American IPA	309	12
1972	0.07	18	LuckenBock	Bock	257	16
1971	0.055	40	Texas Pale Ale (TPA)	American IPA	257	16
1970	0.08	\N	6 String Saison	Saison / Farmhouse Ale	257	16
1969	0.05	22	Kol' Beer	Kölsch	257	16
2024	0.035	\N	Montauk Light	Light Lager	249	12
1283	0.048	32	Na Zdraví Pilsner	Czech Pilsener	436	16
1282	0.055	65	Nice Rack IPA	American IPA	436	16
2362	0.075	72	2014 IPA Cicada Series	American IPA	133	16
2346	0.077	65	Sinister Minister Black IPA	American IPA	133	16
2320	0.053	45	Jack the Sipper	Extra Special / Strong Bitter (ESB)	133	12
2297	0.058	60	Devil's Harvest Extra Pale Ale	American Pale Ale (APA)	133	12
2296	0.05	20	Suzy B Dirty Blonde Ale	American Blonde Ale	133	12
1745	0.08	80	Mississippi Fire Ant	American Amber / Red Ale	133	16
1120	0.058	40	Hipster Breakfast	Oatmeal Stout	133	16
1118	0.05	20	Suzy B Dirty Blonde Ale	American Blonde Ale	133	16
1117	0.058	60	Devil's Harvest Extra Pale Ale	American Pale Ale (APA)	133	16
2387	0.065	45	Pine Belt Pale Ale	American Pale Ale (APA)	118	12
2267	0.055	\N	Walloon	Saison / Farmhouse Ale	118	12
1740	0.069	23	Le Mort Vivant	Bière de Garde	118	12
1728	0.085	110	Red Cockaded Ale	American Double / Imperial IPA	118	12
1497	0.092	100	Valkyrie Double IPA	American Double / Imperial IPA	118	12
1011	0.085	110	Red Cockaded Ale (2013)	American Double / Imperial IPA	118	12
1010	0.07200000000000001	40	Old Potentate	Old Ale	118	12
856	0.05	20	Bombshell Blonde	American Blonde Ale	118	16
853	0.099	100	PRO-AM (2012) (2012)	American Double / Imperial IPA	118	12
691	0.055	\N	Walloon (2014)	Saison / Farmhouse Ale	118	12
555	0.069	23	Le Mort Vivant (2011)	Bière de Garde	118	12
46	0.083	50	Buried Hatchet Stout	Foreign / Export Stout	118	12
45	0.065	45	Pine Belt Pale Ale	American Pale Ale (APA)	118	16
44	0.05	20	Bombshell Blonde	American Blonde Ale	118	12
2486	0.047	35	Baby Daddy Session IPA	American IPA	78	12
763	\N	\N	Hopluia (2004)	English India Pale Ale (IPA)	508	16
2271	0.058	\N	Ball & Chain (2014)	American Pale Ale (APA)	175	16
2206	0.096	\N	Bitter Biker Double IPA	American Double / Imperial IPA	175	16
2136	0.08199999999999999	\N	God Damn Pigeon Porter	American Porter	175	16
2135	0.079	\N	Working for the Weekend	American Double / Imperial IPA	175	16
2134	0.06	\N	Angry Adam	American Amber / Red Ale	175	16
2109	0.055	\N	Freedom Fries	American Stout	175	16
1821	0.096	\N	Bitter Biker Double IPA	American Double / Imperial IPA	175	12
1820	0.073	\N	Ghost Bike Pale Ale	American Pale Ale (APA)	175	16
1819	0.062	\N	Spiteful IPA	American IPA	175	12
1634	0.06	\N	Alley Time	American Pale Ale (APA)	175	12
1633	0.058	\N	Fat Badger	Irish Red Ale	175	12
1632	0.055	\N	In the Weeds	American Pale Wheat Ale	175	12
855	0.05	22	Special Amber	Vienna Lager	498	12
445	0.05	22	Special Amber	Vienna Lager	498	12
1587	0.056	\N	Seven Gates Pale Ale	American Pale Ale (APA)	372	12
2242	0.052000000000000005	\N	Gunga Din	Cider	186	16
1544	0.042	20	Starr Pils	German Pilsener	383	12
1205	0.065	52	Northern Lights India Pale Ale	American IPA	383	16
369	0.048	12	Festie	Märzen / Oktoberfest	383	12
368	0.065	52	Northern Lights India Pale Ale	American IPA	383	12
2386	0.065	65	Third Eye Enlightened Pale Ale	American Pale Ale (APA)	119	12
92	0.049	17	Colorado Kölsch	Kölsch	119	12
91	0.057	25	Steam Engine Lager	American Amber / Red Lager	119	12
90	0.065	65	Third Eye Pale Ale	American IPA	119	12
2366	0.047	9	Point Special (Current)	American Adjunct Lager	131	12
2365	0.047	9	Point Special	American Adjunct Lager	131	12
2270	0.054000000000000006	33	Point Cascade Pale Ale (2013)	American Pale Ale (APA)	131	12
2228	0.047	9	Point Special	American Adjunct Lager	131	12
2151	0.052000000000000005	9	Onyx Black Ale	American Black Ale	131	12
2150	0.063	64	Beyond The Pale IPA	American IPA	131	12
2122	0.047	9	Point Special (2013)	American Adjunct Lager	131	12
2121	0.047	9	Point Special (2012)	American Adjunct Lager	131	12
2115	0.047	9	Point Special Lager	American Adjunct Lager	131	16
1450	0.062	\N	St. Benedict's Winter Ale	Winter Warmer	131	12
1357	0.057	15	Point Oktoberfest	Märzen / Oktoberfest	131	16
1225	0.052000000000000005	7	Point Nude Beach Summer Wheat	American Pale Wheat Ale	131	16
816	0.05	7	Point Nude Beach Summer Wheat	American Pale Wheat Ale	131	12
772	0.05	7	Point Nude Beach Summer Wheat (2011)	American Pale Wheat Ale	131	12
684	0.035	\N	Drop Dead Blonde	American Blonde Ale	131	12
650	0.049	13	Three Kings Ale	Kölsch	131	12
456	0.057	15	Point Oktoberfest	Märzen / Oktoberfest	131	12
357	0.054000000000000006	32	2012 Black Ale	American Brown Ale	131	12
141	0.05	7	Point Nude Beach Summer Wheat (2010)	American Pale Wheat Ale	131	12
140	0.054000000000000006	33	Point Cascade Pale Ale	American Pale Ale (APA)	131	12
139	0.047	14	Point Amber Classic	American Amber / Red Lager	131	12
138	0.047	9	Point Special Lager	American Adjunct Lager	131	12
953	0.051	31	Wisco Disco	American Amber / Red Ale	486	16
1983	0.05	\N	Brontide	American Black Ale	255	12
1631	0.05	\N	Brontide	American Black Ale	255	12
1344	0.045	\N	Classique	Saison / Farmhouse Ale	255	12
922	0.045	\N	Sunsplash Golden Ale (2004)	American Blonde Ale	492	12
1410	0.051	25	Sand Island Lighthouse	Kölsch	412	12
925	0.05	30	Lily Flagg Milk Stout	Milk / Sweet Stout	412	12
637	0.07200000000000001	70	Monkeynaut IPA	American IPA	412	12
2369	0.05	\N	Straub Beer (Current)	American Adjunct Lager	129	12
2233	0.041	8	American Lager	American Adjunct Lager	129	12
2232	0.041	8	American Amber	American Amber / Red Lager	129	12
2231	0.032	13	American Light	Light Lager	129	12
2352	0.053	49	Extra Pale Ale	American Pale Ale (APA)	138	12
2549	0.053	40	Make It So	Extra Special / Strong Bitter (ESB)	58	12
2473	0.047	55	Hopvale Organic Ale	American Pale Ale (APA)	58	16
2415	0.083	100	Unchained #18 Hop Silo	American Double / Imperial IPA	58	16
2605	0.052000000000000005	29	Tip Off	Altbier	25	16
2215	0.054000000000000006	\N	Java Mac	Scottish Ale	25	16
2164	0.054000000000000006	23	Cowbell	American Porter	25	16
2085	0.058	20	Hop Up Offa That Brett (2014)	Belgian Pale Ale	25	16
2084	0.083	23	PV Muckle (2013)	Scotch Ale / Wee Heavy	25	16
2083	0.099	36	Bourbon Barrel Batch 666: Sympathy for the Devil	Belgian Dark Ale	25	16
2082	0.09	30	Whip Fight	Scotch Ale / Wee Heavy	25	16
2081	0.053	23	Port Barrel Wee Mac 	Scotch Ale / Wee Heavy	25	16
2001	0.064	75	Fistful Of Hops Red	American IPA	25	16
2000	0.063	75	Fistful of Hops Orange	American IPA	25	16
1999	0.064	75	Fistful Of Hops Blue	American IPA	25	16
1996	0.064	75	Fistful of Hops Green	American IPA	25	16
1948	\N	\N	30 Min Coma	Belgian IPA	25	16
1656	0.09	30	Wee Muckle	Scotch Ale / Wee Heavy	25	16
1599	0.065	55	Royal Brat	Extra Special / Strong Bitter (ESB)	25	16
1420	0.075	77	Grapefruit Jungle (GFJ)	American IPA	25	16
1389	0.056	50	Osiris Pale Ale	American Pale Ale (APA)	25	16
1367	0.099	75	Bourbon Barrel Aged Timmie	Russian Imperial Stout	25	16
1366	0.063	23	Stupid Sexy Flanders	Flanders Oud Bruin	25	16
1347	\N	\N	Bourbon Barrel Cowbell	American Porter	25	16
1314	0.054000000000000006	\N	Popcorn Pilsner	German Pilsener	25	16
1128	0.071	27	Ring of Dingle	Irish Dry Stout	25	16
1127	0.054000000000000006	23	Bourbon Barrel Wee Mac	Scottish Ale	25	16
1049	0.099	60	Bourbon Barrel Johan	English Barleywine	25	16
934	0.07	\N	The Deuce	American Brown Ale	25	16
923	0.09	24	The Velvet Fog	Quadrupel (Quad)	25	16
874	0.055	23	Sun King Oktoberfest	Märzen / Oktoberfest	25	16
739	0.052000000000000005	24	Indianapolis Indians Lager	Dortmunder / Export Lager	25	16
698	0.052000000000000005	24	Indians Victory Lager (2012)	Dortmunder / Export Lager	25	16
660	0.08	\N	Chaka	Belgian Strong Pale Ale	25	16
651	0.091	91	Isis	American Double / Imperial IPA	25	16
584	0.09	30	Wee Muckle (2011)	Scotch Ale / Wee Heavy	25	16
532	0.075	77	Grapefruit Jungle (GFJ) (2011)	American IPA	25	16
526	0.055	23	Sun King Oktoberfest (2011)	Märzen / Oktoberfest	25	16
394	0.099	60	Johan the Barleywine	English Barleywine	25	16
213	0.054000000000000006	23	Wee Mac Scottish-Style Ale	Scottish Ale	25	16
55	0.053	20	Sunlight Cream Ale	Cream Ale	25	16
54	0.056	50	Osiris Pale Ale (2010)	American Pale Ale (APA)	25	16
1207	0.045	\N	Dam Lager	American Amber / Red Lager	455	12
1206	0.07	\N	Red Clay IPA	American IPA	455	12
2543	0.07200000000000001	\N	Todd the Axe Man	American IPA	61	16
2409	0.057	\N	Doomtree	Extra Special / Strong Bitter (ESB)	61	16
1739	0.099	85	BLAKKR	American Black Ale	61	16
1112	0.073	69	Overrated! West Coast Style IPA	American IPA	61	16
329	0.075	90	WET	American IPA	61	16
19	0.04	37	Bitter Brewer	English Bitter	61	16
18	0.055	34	SurlyFest	Rye Beer	61	16
17	0.051	45	Coffee Bender	American Brown Ale	61	16
16	0.051	45	Bender	American Brown Ale	61	16
15	0.097	120	Abrasive Ale	American Double / Imperial IPA	61	16
14	0.051	20	Hell	Keller Bier / Zwickel Bier	61	16
13	0.067	33	CynicAle	Saison / Farmhouse Ale	61	16
12	0.062	99	Furious	American IPA	61	16
1242	0.073	50	Big Nose	American IPA	447	12
1241	0.05	10	Cotton Mouth	Witbier	447	12
1240	0.056	35	Stump Knocker Pale Ale	American Pale Ale (APA)	447	12
1239	0.05	38	Midnight Oil	Oatmeal Stout	447	12
1238	0.059	18	Wild Night	Cream Ale	447	12
1554	0.045	\N	Bermuda Triangle Ginger Beer	Herbed / Spiced Beer	381	12
2568	0.055	35	Take Two Pils	German Pilsener	49	12
2551	0.057	\N	Waterkeeper	Hefeweizen	49	12
1710	0.064	\N	SweetWater IPA	American IPA	49	12
1709	0.054000000000000006	\N	420 Extra Pale Ale	American Pale Ale (APA)	49	12
1229	0.08	95	Dodgy Knight Imperial IPA	American Double / Imperial IPA	449	12
1164	0.05	\N	TailGate Saison	Saison / Farmhouse Ale	449	12
663	0.05	44	TailGate IPA	American IPA	449	24
662	0.05	44	TailGate IPA	American IPA	449	12
623	0.049	28	TailGate Hefeweizen	Hefeweizen	449	24
622	0.05	19	Blacktop Blonde	American Blonde Ale	449	24
362	0.05	19	Blacktop Blonde	American Blonde Ale	449	12
361	0.049	28	TailGate Hefeweizen	Hefeweizen	449	12
2575	0.085	34	Wooden Rooster	Tripel	45	16.9
2555	0.048	20	Ginger Peach Saison	Saison / Farmhouse Ale	45	16
1736	0.062	35	Zombie Monkie	American Porter	45	16
1196	0.056	20	Wild Plum Farmhouse Ale	Saison / Farmhouse Ale	45	16
1063	0.05	20	Vanilla Bean Buffalo Sweat	Oatmeal Stout	45	16
1017	0.068	110	Ethos IPA	American IPA	45	16
1009	0.044	12	Tallgrass Pub Ale	American Brown Ale	45	16
912	0.07200000000000001	93	Oasis	Extra Special / Strong Bitter (ESB)	45	16
765	0.05	20	Buffalo Sweat	Milk / Sweet Stout	45	16
676	0.05	20	Halcyon Unfiltered Wheat	American Pale Wheat Ale	45	16
595	0.052000000000000005	\N	8-Bit Pale Ale	American Pale Ale (APA)	45	16
537	0.085	\N	Velvet Rooster	Tripel	45	16
412	0.05	20	Halcyon Unfiltered Wheat	American Pale Wheat Ale	45	12
105	0.05	16	Köld Lager (2010)	German Pilsener	45	16
104	0.07200000000000001	93	Oasis (2010)	American Double / Imperial IPA	45	16
103	0.044	22	Tallgrass Ale	American Brown Ale	45	16
102	0.05	20	Buffalo Sweat (2010)	Milk / Sweet Stout	45	16
101	0.063	60	Tallgrass IPA	American IPA	45	16
1433	0.068	\N	Hat Trick Hop IPA	American IPA	409	16
1432	0.056	\N	Yard Sale Amber Ale	American Amber / Red Ale	409	16
936	0.055	\N	Loafin Bräu	Altbier	490	16
544	0.07	80	Old Elephant Foot IPA	American IPA	490	16
2640	0.065	35	Peck's Porter	American Porter	7	16
2448	0.07	\N	Reactor	American IPA	7	16
2447	0.057	\N	Mr. Orange	Witbier	7	16
2601	0.08	22	Deduction	Dubbel	28	12
973	0.057	\N	Face Down Brown Ale	American Brown Ale	480	12
827	0.064	\N	Tempter IPA	American IPA	480	12
589	0.055	\N	Bridal Veil Rye Pale Ale	American Pale Ale (APA)	480	12
2155	0.048	\N	Smittytown	Extra Special / Strong Bitter (ESB)	210	12
1982	0.04	\N	Greenwood Beach	Fruit / Vegetable Beer	210	12
1939	0.066	\N	Gatecrasher	English India Pale Ale (IPA)	210	12
1082	0.047	42	RecreationAle	American Pale Ale (APA)	469	12
2119	0.055	35	First Stand	Saison / Farmhouse Ale	215	12
2118	0.063	23	Battle LIne	American Brown Ale	215	12
2117	0.056	12	Broken Bridge	Dunkelweizen	215	12
2116	0.071	69	Brutus	English India Pale Ale (IPA)	215	12
1916	0.06	\N	Petit Mutant	American Wild Ale	272	16
1915	0.096	\N	The Crusher	American Double / Imperial IPA	272	16
1914	0.08	\N	Beelzebub	American Double / Imperial Stout	272	16
1810	0.07	\N	Focal Banger	American IPA	272	16
1111	0.08	120	Heady Topper	American Double / Imperial IPA	272	16
379	0.08	120	Heady Topper	American Double / Imperial IPA	272	16
1200	0.046	20	Bomber Mountain Amber Ale (2013)	American Amber / Red Ale	457	12
1199	0.07	75	Indian Paintbrush IPA	American IPA	457	12
1198	0.048	16	Saddle Bronc Brown Ale (2013)	English Brown Ale	457	12
1197	0.059	15	Wagon Box Wheat Beer	American Pale Wheat Ale	457	12
1945	0.05	\N	Birdhouse Pale Ale	Belgian Pale Ale	262	12
1079	0.073	\N	Ozzy	Belgian Pale Ale	262	12
94	0.07	\N	Resurrection	Dubbel	262	12
1748	0.052000000000000005	16	Bronx Summer Pale Ale	American Pale Ale (APA)	329	16
1747	0.057	46	Bronx Black Pale Ale	American Black Ale	329	16
1037	0.063	50	Bronx Pale Ale	American Pale Ale (APA)	329	16
2594	0.052000000000000005	35	Surfrider	American Pale Ale (APA)	33	16
2035	0.055	\N	Kolschtal Eddy	Kölsch	33	16
2034	0.05	\N	South Bay Session IPA	American IPA	33	16
1562	0.069	34	Grandma's Pecan	English Brown Ale	33	16
1561	0.099	101	Double Trunk	American Double / Imperial IPA	33	16
1749	0.046	45	Just IPA	American IPA	328	12
2455	0.045	\N	Lionshead	American Pilsner	90	12
963	\N	\N	Manhattan Gold Lager (1990)	American Amber / Red Lager	484	12
2638	0.052000000000000005	\N	G. B. Russo’s Italian Pistachio Pale Ale	American Pale Ale (APA)	9	16
1278	0.058	\N	Northern Hawk Owl Amber	American Amber / Red Ale	438	12
1277	0.059	\N	CEO Stout	American Stout	438	16
1276	0.047	\N	Will Power Pale Ale	American Pale Ale (APA)	438	16
1732	0.044	\N	Curious Traveler Shandy	Shandy	334	12
2347	0.048	18	Hunny Do Wheat	American Pale Wheat Ale	142	12
1781	0.052000000000000005	\N	Three Way Pale Ale	American Pale Ale (APA)	142	12
1780	0.041	\N	Rise to the Top	Cream Ale	142	12
1779	0.049	\N	Lost Trout Brown Ale	American Brown Ale	142	12
2421	0.051	11	Watermelon Ale	Fruit / Vegetable Beer	108	12
2319	0.04	18	Knotty Blonde Ale	American Blonde Ale	153	12
2317	0.062	40	Fivepine Chocolate Porter	American Porter	153	12
2316	0.062	82	Hoodoo Voodoo IPA	American IPA	153	12
1913	0.053	22	Hydraulion Red	Irish Red Ale	273	12
1912	0.06	50	40 Mile IPA	American IPA	273	12
2617	0.055	64	Citra Faced	American Pale Wheat Ale	21	16
2616	0.055	31	Pole Barn Stout	Oatmeal Stout	21	16
2615	0.054000000000000006	37	Pale	American Pale Ale (APA)	21	16
2614	0.053	27	Yoshi's Nectar	California Common / Steam Beer	21	16
1889	0.052000000000000005	\N	Leatherhead Red	American Amber / Red Ale	282	12
1222	0.065	\N	Cropduster Mid-American IPA	American IPA	282	12
122	0.075	\N	Golden Frau Honey Wheat	Braggot	282	12
121	\N	\N	Cornstalker Dark Wheat	American Dark Wheat Ale	282	12
2623	0.058	20	Cafe Leche	American Porter	17	16
2622	0.052000000000000005	12	Damascene Apricot Sour	Fruit / Vegetable Beer	17	16
2621	0.12	90	Csar	Russian Imperial Stout	17	16
1817	0.055	\N	Klingon Warnog Roggen Dunkel	Roggenbier	17	16
1449	0.085	115	Overlord Imperial IPA	American Double / Imperial IPA	17	16
951	0.058	36	Alloy	American IPA	17	16
950	0.051	22	Rivet Irish Red Ale	Irish Red Ale	17	16
949	0.052000000000000005	50	3 Gear Robust Porter	American Porter	17	16
948	0.045	35	Circuit Bohemian Pilsner	Czech Pilsener	17	16
2321	0.055	\N	Turnrow Harvest Ale	American Blonde Ale	152	12
1755	0.07	60	Juke Joint IPA	American IPA	152	12
1754	0.07	35	Parade Ground Coffee Porter	American Porter	152	12
1428	0.05	21	Tin Roof Watermelon Wheat	Fruit / Vegetable Beer	152	12
529	0.045	18	Tin Roof Blonde Ale	American Blonde Ale	152	12
495	0.055	37	Voodoo Bengal Pale Ale	American Pale Ale (APA)	152	12
494	0.045	28	Perfect Tin Amber	American Amber / Red Ale	152	12
1856	0.073	87	IPA & a Half	American IPA	291	12
736	0.055	33	Ornery Amber Lager (2003)	Vienna Lager	291	12
1027	0.05	\N	Big Island Shandy	Shandy	474	16
1026	0.068	\N	Preservation IPA	American IPA	474	16
1938	0.062	72	Almanac IPA	American IPA	265	12
1937	0.065	\N	Milk Mustachio Stout	Milk / Sweet Stout	265	12
1936	0.06	30	Farmer's Tan Red Ale	American Amber / Red Ale	265	12
594	0.057	\N	Triangle India Pale Ale	American IPA	524	12
114	0.05	\N	Triangle White Ale	Witbier	524	12
113	0.08	\N	Triangle Belgian Golden Ale	Belgian Strong Pale Ale	524	12
2445	0.08199999999999999	\N	Troegenator	Doppelbock	97	16
2444	0.075	93	Nugget Nectar	American Amber / Red Ale	97	16
2203	0.045	45	Sunshine Pils	American Pilsner	97	12
1510	0.08199999999999999	25	Troegenator Doublebock	Doppelbock	97	16
1509	0.075	85	Perpetual IPA	American IPA	97	12
433	0.055	52	Greenville Pale Ale	American Pale Ale (APA)	539	12
641	0.062	65	Hoppy Boy	American IPA	520	16
2588	0.054000000000000006	26	Cow Creek	American Amber / Red Lager	38	12
2458	0.075	63	Chupahopra	American IPA	38	12
2212	0.051	19	Twisted X	American Adjunct Lager	38	12
2235	0.041	41	Day Hike Session	American IPA	190	12
1661	0.048	48	Trailhead ISA	American IPA	190	12
1660	0.052000000000000005	27	Immersion Amber	American Amber / Red Ale	190	12
1659	0.062	70	Evo IPA	American IPA	190	12
1438	0.048	\N	Presidential Pils	Czech Pilsener	190	12
1173	0.062	70	Evolutionary IPA (2012)	American IPA	190	12
560	0.057	36	Persnickety Pale	American Pale Ale (APA)	190	12
519	0.054000000000000006	20	SoDo Brown Ale	American Brown Ale	190	12
518	0.052000000000000005	27	Immersion Amber Ale (2011)	American Amber / Red Ale	190	12
505	0.062	70	Evolutionary IPA (2011)	American IPA	190	12
482	0.048	48	Trailhead India Style Session Ale (2011)	American IPA	190	12
451	0.046	\N	Panorama Wheat Ale	American Pale Wheat Ale	190	12
2497	0.063	69	Wobble	American IPA	74	16
2246	0.058	43	Night Cat	American Dark Wheat Ale	74	12
1630	0.058	43	Night Cat (2014)	American Dark Wheat Ale	74	12
1284	0.051	17	Dog Days Lager	Dortmunder / Export Lager	74	12
1121	0.051	36	Sidekick Extra Pale Ale	American Pale Ale (APA)	74	12
1042	0.077	23	Atom Smasher	Märzen / Oktoberfest	74	12
1041	0.045	\N	Testudo	Bière de Garde	74	12
1040	0.065	\N	Hobnob B & B Pale Ale	American Pale Ale (APA)	74	12
861	0.07	68	Cane and Ebel	American Strong Ale	74	12
642	0.065	\N	Outlaw IPA (2015)	American IPA	74	12
2037	0.045	\N	The Gilded Age	Munich Helles Lager	243	12
1285	0.05	\N	No Limits Hefeweizen	Hefeweizen	435	16
1189	0.06	\N	Honeyspot Road White IPA	American White IPA	435	12
1171	0.07200000000000001	\N	Road 2 Ruin Double IPA	American Double / Imperial IPA	435	12
1170	0.048	\N	Workers Comp Saison	Saison / Farmhouse Ale	435	12
1169	0.05	\N	Ol' Factory Pils	German Pilsener	435	12
2310	0.05	10	PUNK'N	Pumpkin Ale	159	12
2100	0.04	22	Yard Sale Winter Lager	American Amber / Red Lager	159	12
1925	0.04	42	Trader Session IPA	American IPA	159	12
1723	0.073	83	Hop Nosh IPA	American IPA	159	12
1212	0.04	17	SUM'R	American Blonde Ale	159	12
1097	0.04	32	Organic Baba Black Lager	Schwarzbier	159	12
1089	0.073	82	Hop Notch IPA (2013)	American IPA	159	12
1088	0.04	34	Cutthroat Pale Ale	American Pale Ale (APA)	159	12
974	0.04	29	WYLD Extra Pale Ale	American Pale Ale (APA)	159	12
98	0.055	\N	Pilsner Ukiah	German Pilsener	555	12
2372	0.06	75	The Green Room	American IPA	126	16
2367	0.047	25	Humbucker Helles	Maibock / Helles Bock	126	16
1704	0.065	\N	Uncle John's Apple Cherry Cider	Cider	338	16
1703	0.065	\N	Uncle John's Apricot Apple Cider	Cider	338	16
877	0.065	\N	Draught Hard Apple Cider	Cider	338	16
606	0.001	\N	Scotty K NA	Low Alcohol Beer	522	16
543	0.068	\N	Bacon Brown Ale	American Brown Ale	522	16
347	0.064	\N	Golden State Ale	Belgian Pale Ale	522	16
346	0.078	\N	Baltic Porter	Baltic Porter	522	16
25	0.085	\N	Siamese twin	Dubbel	522	16
2507	0.085	90	Double Duckpin	American Double / Imperial IPA	71	12
2506	0.042	10	Old Pro	Gose	71	12
829	0.055	\N	Duckpin Pale Ale	American Pale Ale (APA)	71	12
582	0.06	\N	Balt Altbier	Altbier	71	12
2190	0.045	50	Campside Session IPA	American IPA	202	16
1951	0.045	15	Upland Wheat Ale	Witbier	202	16
1950	0.06	\N	Dragonfly IPA	American IPA	202	16
2565	0.128	\N	Lee Hill Series Vol. 5 - Belgian Style Quadrupel Ale	Quadrupel (Quad)	51	19.2
2564	0.104	\N	Lee Hill Series Vol. 4 - Manhattan Style Rye Ale	Rye Beer	51	19.2
2563	0.068	24	Lee Hill Series Vol. 2 - Wild Saison	American Wild Ale	51	19.2
2562	0.099	51	Lee Hill Series Vol. 3 - Barrel Aged Imperial Stout	American Double / Imperial Stout	51	19.2
2561	0.076	\N	Lee Hill Series Vol. 1 - Barrel Aged Brown Ale	American Brown Ale	51	19.2
2560	0.06	\N	Blood Orange Saison	Saison / Farmhouse Ale	51	12
1932	0.065	33	Thai Style White IPA	American White IPA	51	12
1853	0.075	30	Ferus Fluxus Wild Belgian Pale Ale	American Wild Ale	51	19.2
1315	0.099	90	Upslope Imperial India Pale Ale	American Double / Imperial IPA	51	19.2
907	0.08199999999999999	\N	Upslope Christmas Ale	Winter Warmer	51	16
906	0.077	\N	Upslope Pumpkin Ale	Pumpkin Ale	51	16
683	0.075	30	Upslope Belgian Style Pale Ale	Belgian Pale Ale	51	12
614	0.069	\N	Upslope Foreign Style Stout	Foreign / Export Stout	51	12
466	0.048	15	Top Rope Mexican-style Craft Lager	Vienna Lager	51	12
444	0.048	22	Upslope Craft Lager	Vienna Lager	51	12
345	0.067	\N	Upslope Brown Ale	English Brown Ale	51	12
80	0.058	\N	Upslope Pale Ale	American Pale Ale (APA)	51	12
79	0.07200000000000001	\N	Upslope India Pale Ale	American IPA	51	12
382	0.053	22	Common Sense Kentucky Common Ale	American Brown Ale	546	16
381	0.065	70	Upstate I.P.W.	American IPA	546	12
1826	0.04	\N	Squatters Full Suspension Pale Ale	American Pale Ale (APA)	302	12
1825	0.09	75	Squatters Hop Rising Double IPA	American Double / Imperial IPA	302	12
1824	0.08	\N	Devastator Double Bock	Doppelbock	302	12
1823	0.06	\N	Wasatch Ghostrider White IPA	American White IPA	302	12
1682	0.06	\N	Wasatch Ghostrider White IPA (2014)	American White IPA	302	12
1681	0.04	\N	Wasatch Apricot Hefeweizen	Fruit / Vegetable Beer	302	12
1680	0.09	75	Squatters Hop Rising Double IPA (2014)	American Double / Imperial IPA	302	12
1679	0.04	\N	Squatters Full Suspension Pale Ale	American Pale Ale (APA)	302	12
2245	0.068	\N	Nunica Pine	Cider	185	16
2244	0.069	\N	Ginger Peach	Cider	185	16
1378	0.068	\N	Totally Roasted	Cider	185	16
1377	0.068	\N	Blue Gold	Cider	185	16
1376	0.068	\N	Hard Apple	Cider	185	16
2411	0.052000000000000005	\N	Nitro Can Coffee Stout	American Stout	113	12
1770	0.092	25	Voodoo Love Child	Tripel	322	12
1769	0.079	23	White Magick of the Sun	Witbier	322	12
1730	0.075	31	Wynona's Big Brown Ale	American Brown Ale	322	12
1729	0.092	25	Gran Met	Belgian Strong Pale Ale	322	12
1603	0.073	85	Good Vibes IPA	American IPA	322	12
1488	0.075	85	Pilzilla	American Double / Imperial Pilsner	322	12
1846	0.04	37	Wachusett Light IPA	American IPA	295	12
1845	0.06	55	Green Monsta IPA	American IPA	295	12
1844	0.056	50	Wachusett IPA	American IPA	295	12
1843	0.047	\N	Strawberry White	Witbier	295	12
1418	0.085	85	Larry Imperial IPA	American Double / Imperial IPA	295	12
1038	0.047	\N	Wachusett Summer	American Pale Wheat Ale	295	12
1030	0.051	17	Country Pale Ale	English Pale Ale	295	12
1029	0.04	37	Wachusett Light IPA (2013)	American IPA	295	12
908	0.052000000000000005	20	Pumpkan	Pumpkin Ale	295	12
619	0.045	10	Wachusett Blueberry Ale	Fruit / Vegetable Beer	295	12
618	0.06	55	Green Monsta IPA	American IPA	295	12
780	0.047	\N	T-6 Red Ale (2004)	American Amber / Red Ale	506	12
2450	0.052000000000000005	67	Self Starter	American IPA	94	16
2223	0.054000000000000006	20	Ermal's	Cream Ale	94	16
2222	0.07	\N	10 Ton	Oatmeal Stout	94	16
2221	0.07	\N	Flyin' Rye	American IPA	94	16
2439	0.09	\N	Christmas Ale	Herbed / Spiced Beer	100	12
2356	0.07	\N	Pay It Forward Cocoa Porter	American Porter	100	12
1069	0.055	\N	West Sixth Amber Ale	American Amber / Red Ale	100	12
652	\N	\N	West Sixth IPA	American IPA	100	12
1542	0.055	\N	One Claw	American Pale Ale (APA)	384	12
1312	0.04	5	Westbrook Gose	Gose	384	12
576	0.05	16	White Thai	Witbier	384	12
575	0.068	65	Westbrook IPA	American IPA	384	12
1645	0.057	22	Westfield Octoberfest	Märzen / Oktoberfest	351	12
1551	0.052000000000000005	\N	Pop's Old Fashioned Lager	American Amber / Red Lager	351	12
1550	0.058	55	Charlie in the Rye	American IPA	351	12
2364	\N	\N	Royal Lager	American Pale Lager	132	16
2348	0.08	\N	Rip Van Winkle (Current)	Bock	132	12
2344	\N	\N	O’Malley’s Stout	English Stout	132	12
2343	0.075	89	O’Malley’s IPA	American IPA	132	12
2342	\N	\N	O’Malley’s Irish Style Cream Ale	Cream Ale	132	12
2341	0.049	28	L'il Lucy's Hot Pepper Ale	Chile Beer	132	12
2340	0.052000000000000005	\N	Drop Kick Ale	American Amber / Red Ale	132	12
2573	0.055	\N	Raspberry Berliner Weisse	Berliner Weissbier	47	12
2572	0.05	\N	Hop Session	American IPA	47	12
2571	0.055	\N	Blueberry Berliner Weisse	Berliner Weissbier	47	12
2570	0.055	\N	Berliner Weisse	Berliner Weissbier	47	12
1498	0.06	\N	Super G IPA	American IPA	396	16
1838	0.049	30	Hefe Lemon	Radler	296	12
1837	0.049	30	Hefe Black	Hefeweizen	296	12
1836	0.049	30	Widmer Brothers Hefeweizen	Hefeweizen	296	12
1619	0.08199999999999999	100	Hop Slayer Double IPA	American Double / Imperial IPA	361	12
1618	0.045	\N	Pumpkin Ale	Pumpkin Ale	361	12
1364	0.05	\N	Big Bowl Blonde Ale	American Brown Ale	361	12
971	0.052000000000000005	27	Phat Chance	American Blonde Ale	361	12
740	0.08199999999999999	100	Hop Slayer Double IPA (2011)	American Double / Imperial IPA	361	12
430	0.08199999999999999	100	Hop Slayer Double IPA (2011)	American Double / Imperial IPA	361	12
398	0.042	13	Wild Onion Summer Wit	Witbier	361	12
366	0.06	23	Jack Stout	Oatmeal Stout	361	12
334	0.045	\N	Wild Onion Pumpkin Ale (2010)	Pumpkin Ale	361	12
162	0.056	41	Paddy Pale Ale	American Pale Ale (APA)	361	12
2253	0.068	21	Blonde Hunny	Belgian Pale Ale	181	12
1318	0.057	20	Wild Wolf Wee Heavy Scottish Style Ale	Scotch Ale / Wee Heavy	181	12
1195	0.045	25	Wild Wolf American Pilsner	American Pilsner	181	12
1194	0.051	45	Alpha Ale	American Pale Ale (APA)	181	12
826	0.054000000000000006	\N	Mystical Stout	Irish Dry Stout	499	16
825	0.075	\N	Bodacious Bock	Bock	499	16
813	0.05	\N	Ambitious Lager	Munich Helles Lager	499	16
324	0.07200000000000001	\N	Wyoming Pale Ale	American Pale Ale (APA)	550	16
323	0.05	\N	Wind River Blonde Ale	American Blonde Ale	550	16
762	0.07400000000000001	83	Ace IPA	American IPA	509	16
761	0.08	31	P-51 Porter	American Porter	509	16
2149	0.055	\N	#001 Golden Amber Lager	American Amber / Red Lager	211	12
2148	0.071	60	#002 American I.P.A.	American IPA	211	12
2147	0.052000000000000005	\N	#003 Brown & Robust Porter	American Porter	211	12
2146	0.048	38	#004 Session I.P.A.	American IPA	211	12
2047	0.059	\N	Tarasque	Saison / Farmhouse Ale	239	12
1470	0.062	61	Ananda India Pale Ale	American IPA	239	12
1469	0.045	23	Tiny Bomb	American Pilsner	239	12
2627	0.058	72	Train Hopper	American IPA	14	12
2626	0.045	\N	Edward’s Portly Brown	American Brown Ale	14	12
1676	0.059	135	Troopers Alley IPA	American IPA	344	12
1468	0.047	15	Wolverine Premium Lager	American Pale Lager	402	12
822	0.05	\N	Woodchuck Amber Hard Cider	Cider	501	12
2417	0.065	82	4000 Footer IPA	American IPA	109	12
2306	0.028	15	Summer Brew	American Pilsner	109	12
1697	0.065	69	Be Hoppy IPA	American IPA	339	16
2194	0.069	69	Worthy IPA	American IPA	199	12
1514	0.045	25	Easy Day Kolsch	Kölsch	199	12
1513	0.077	30	Lights Out Vanilla Cream Extra Stout	American Double / Imperial IPA	199	12
1512	0.069	69	Worthy IPA (2013)	American IPA	199	12
1511	0.06	50	Worthy Pale	American Pale Ale (APA)	199	12
1345	0.042	\N	Patty's Chile Beer	Chile Beer	424	12
1316	0.08199999999999999	\N	Colorojo Imperial Red Ale	American Strong Ale	424	12
1045	0.055	\N	Wynkoop Pumpkin Ale	Pumpkin Ale	424	12
1035	0.075	\N	Rocky Mountain Oyster Stout	American Stout	424	12
928	0.067	45	Belgorado	Belgian IPA	424	12
807	0.052000000000000005	\N	Rail Yard Ale	American Amber / Red Ale	424	12
620	0.055	\N	B3K Black Lager	Schwarzbier	424	12
145	0.055	40	Silverback Pale Ale	American Pale Ale (APA)	424	12
84	0.052000000000000005	\N	Rail Yard Ale (2009)	American Amber / Red Ale	424	12
\.


--
-- Data for Name: breweries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.breweries (brewery_id, brewery_name, city, state) FROM stdin;
0	NorthGate Brewing 	Minneapolis	 MN
1	Against the Grain Brewery	Louisville	 KY
2	Jack's Abby Craft Lagers	Framingham	 MA
3	Mike Hess Brewing Company	San Diego	 CA
4	Fort Point Beer Company	San Francisco	 CA
5	COAST Brewing Company	Charleston	 SC
6	Great Divide Brewing Company	Denver	 CO
7	Tapistry Brewing	Bridgman	 MI
8	Big Lake Brewing	Holland	 MI
9	The Mitten Brewing Company	Grand Rapids	 MI
10	Brewery Vivant	Grand Rapids	 MI
11	Petoskey Brewing	Petoskey	 MI
12	Blackrocks Brewery	Marquette	 MI
13	Perrin Brewing Company	Comstock Park	 MI
14	Witch's Hat Brewing Company	South Lyon	 MI
15	Founders Brewing Company	Grand Rapids	 MI
16	Flat 12 Bierwerks	Indianapolis	 IN
17	Tin Man Brewing Company	Evansville	 IN
18	Black Acre Brewing Co.	Indianapolis	 IN
19	Brew Link Brewing	Plainfield	 IN
20	Bare Hands Brewery	Granger	 IN
21	Three Pints Brewing	Martinsville	 IN
22	Four Fathers Brewing 	Valparaiso	 IN
23	Indiana City Brewing	Indianapolis	 IN
24	Burn 'Em Brewing	Michigan City	 IN
25	Sun King Brewing Company	Indianapolis	 IN
26	Evil Czech Brewery	Mishawaka	 IN
27	450 North Brewing Company	Columbus	 IN
28	Taxman Brewing Company	Bargersville	 IN
29	Cedar Creek Brewery	Seven Points	 TX
30	SanTan Brewing Company	Chandler	 AZ
31	Boulevard Brewing Company	Kansas City	 MO
32	James Page Brewing Company	Stevens Point	 WI
33	The Dudes' Brewing Company	Torrance	 CA
34	Ballast Point Brewing Company	San Diego	 CA
35	Anchor Brewing Company	San Francisco	 CA
36	Figueroa Mountain Brewing Company	Buellton	 CA
37	Avery Brewing Company	Boulder	 CO
38	Twisted X Brewing Company	Dripping Springs	 TX
39	Gonzo's BiggDogg Brewing	Kalamazoo	 MI
40	Big Muddy Brewing	Murphysboro	 IL
41	Lost Nation Brewing	East Fairfield	 VT
42	Rising Tide Brewing Company	Portland	 ME
43	Rivertowne Brewing Company	Export	 PA
44	Revolution Brewing Company	Chicago	 IL
45	Tallgrass Brewing Company	Manhattan	 KS
46	Sixpoint Craft Ales	Brooklyn	 NY
47	White Birch Brewing	Hooksett	 NH
48	Firestone Walker Brewing Company	Paso Robles	 CA
49	SweetWater Brewing Company	Atlanta	 GA
50	Flying Mouse Brewery	Troutville	 VA
51	Upslope Brewing Company	Boulder	 CO
52	Pipeworks Brewing Company	Chicago	 IL
53	Bent Brewstillery	Roseville	 MN
54	Flesk Brewing Company	Lombard	 IL
55	Pollyanna Brewing Company	Lemont	 IL
56	BuckleDown Brewing	Lyons	 IL
57	Destihl Brewery	Bloomington	 IL
58	Summit Brewing Company	St. Paul	 MN
59	Latitude 42 Brewing Company	Portage	 MI
60	4 Hands Brewing Company	Saint Louis	 MO
61	Surly Brewing Company	Brooklyn Center	 MN
62	Against The Grain Brewery	Louisville	 KY
63	Crazy Mountain Brewing Company	Edwards	 CO
64	SlapShot Brewing Company	Chicago	 IL
65	Mikerphone Brewing	Chicago	 IL
66	Freetail Brewing Company	San Antonio	 TX
67	3 Daughters Brewing	St Petersburg	 FL
68	Red Shedman Farm Brewery and Hop...	Mt. Airy	 MD
69	Appalachian Mountain Brewery	Boone	 NC
70	Birdsong Brewing Company	Charlotte	 NC
71	Union Craft Brewing	Baltimore	 MD
72	Atwater Brewery	Detroit	 MI
73	Ale Asylum	Madison	 WI
74	Two Brothers Brewing Company	Warrenville	 IL
75	Bent Paddle Brewing Company	Duluth	 MN
76	Bell's Brewery	Kalamazoo	 MI
77	Blue Owl Brewing	Austin	 TX
78	Speakasy Ales & Lagers	San Francisco	 CA
79	Black Tooth Brewing Company	Sheridan	 WY
80	Hopworks Urban Brewery	Portland	 OR
81	Epic Brewing	Denver	 CO
82	New Belgium Brewing Company	Fort Collins	 CO
83	Sierra Nevada Brewing Company	Chico	 CA
84	Keweenaw Brewing Company	Houghton	 MI
85	Brewery Terra Firma	Traverse City	 MI
86	Grey Sail Brewing Company	Westerly	 RI
87	Kirkwood Station Brewing Company	Kirkwood	 MO
88	Goose Island Brewing Company	Chicago	 IL
89	Broad Brook Brewing LLC	East Windsor	 CT
90	The Lion Brewery	Wilkes-Barre	 PA
91	Madtree Brewing Company	Cincinnati	 OH
92	Jackie O's Pub & Brewery	Athens	 OH
93	Rhinegeist Brewery	Cincinnati	 OH
94	Warped Wing Brewing Company	Dayton	 OH
95	Blackrocks Brewery	Marquette	 MA
96	Catawba Valley Brewing Company	Morganton	 NC
97	Tröegs Brewing Company	Hershey	 PA
98	Mission Brewery	San Diego	 CA
99	Christian Moerlein Brewing Company	Cincinnati	 OH
100	West Sixth Brewing	Lexington	 KY
101	Coastal Extreme Brewing Company	Newport	 RI
102	King Street Brewing Company	Anchorage	 AK
103	Beer Works Brewery	Lowell	 MA
104	Lone Tree Brewing Company	Lone Tree	 CO
105	Four String Brewing Company	Columbus	 OH
106	Glabrous Brewing Company	Pineland	 ME
107	Bonfire Brewing Company	Eagle	 CO
108	Thomas Hooker Brewing Company	Bloomfield	 CT
109	Woodstock Inn, Station & Brewery	North Woodstock	 NH
110	Renegade Brewing Company	Denver	 CO
111	Mother Earth Brew Company	Vista	 CA
112	Black Market Brewing Company	Temecula	 CA
113	Vault Brewing Company	Yardley	 PA
114	Jailbreak Brewing Company	Laurel	 MD
115	Smartmouth Brewing Company	Norfolk	 VA
116	Base Camp Brewing Co.	Portland	 OR
117	Alameda Brewing	Portland	 OR
118	Southern Star Brewing Company	Conroe	 TX
119	Steamworks Brewing Company	Durango	 CO
120	Horny Goat Brew Pub	Milwaukee	 WI
121	Cheboygan Brewing Company	Cheboygan	 MI
122	Center of the Universe Brewing C...	Ashland	 VA
123	Ipswich Ale Brewery	Ipswich	 MA
124	Griffin Claw Brewing Company	Birmingham	 MI
125	Karbach Brewing Company	Houston	 TX
126	Uncle Billy's Brewery and Smokeh...	Austin	 TX
127	Deep Ellum Brewing Company	Dallas	 TX
128	Real Ale Brewing Company	Blanco	 TX
129	Straub Brewery	St Mary's	 PA
130	Shebeen Brewing Company	Wolcott	 CT
131	Stevens Point Brewery	Stevens Point	 WI
132	Weston Brewing Company	Weston	 MO
133	Southern Prohibition Brewing Com...	Hattiesburg	 MS
134	Minhas Craft Brewery	Monroe	 WI
135	Pug Ryan's Brewery	Dillon	 CO
136	Hops & Grains Brewing Company	Austin	 TX
137	Sietsema Orchards and Cider Mill	Ada	 MI
138	Summit Brewing Company	St Paul	 MN
139	Core Brewing & Distilling Company	Springdale	 AR
140	Independence Brewing Company	Austin	 TX
141	Cigar City Brewing Company	Tampa	 FL
142	Third Street Brewhouse	Cold Spring	 MN
143	Narragansett Brewing Company	Providence	 RI
144	Grimm Brothers Brewhouse	Loveland	 CO
145	Cisco Brewers	Nantucket	 MA
146	Angry Minnow	Hayward	 WI
147	Platform Beer Company	Cleveland	 OH
148	Odyssey Beerwerks	Arvada	 CO
149	Lonerider Brewing Company	Raleigh	 NC
150	Oakshire Brewing	Eugene	 OR
151	Fort Pitt Brewing Company	Latrobe	 PA
152	Tin Roof Brewing Company	Baton Rouge	 LA
153	Three Creeks Brewing	Sisters	 OR
154	2 Towns Ciderhouse	Corvallis	 OR
155	Caldera Brewing Company	Ashland	 OR
156	Greenbrier Valley Brewing Company	Lewisburg	 WV
157	Phoenix Ale Brewery	Phoenix	 AZ
158	Lumberyard Brewing Company	Flagstaff	 AZ
159	Uinta Brewing Company	Salt Lake City	 UT
160	Four Peaks Brewing Company	Tempe	 AZ
161	Martin House Brewing Company	Fort Worth	 TX
162	Right Brain Brewery	Traverse City	 MI
163	Sly Fox Brewing Company	Phoenixville	 PA
164	Round Guys Brewing	Lansdale	 PA
165	Great Crescent Brewery	Aurora	 IN
166	Oskar Blues Brewery	Longmont	 CO
167	Boxcar Brewing Company	West Chester	 PA
168	High Hops Brewery	Windsor	 CO
169	Crooked Fence Brewing Company	Garden City	 ID
170	Everybody's Brewing	White Salmon	 WA
171	Anderson Valley Brewing Company	Boonville	 CA
172	Fiddlehead Brewing Company	Shelburne	 VT
173	Evil Twin Brewing	Brooklyn	 NY
174	New Orleans Lager & Ale Brewing ...	New Orleans	 LA
175	Spiteful Brewing Company	Chicago	 IL
176	Rahr & Sons Brewing Company	Fort Worth	 TX
177	18th Street Brewery	Gary	 IN
178	Cambridge Brewing Company	Cambridge	 MA
179	Carolina Brewery	Pittsboro	 NC
180	Frog Level Brewing Company	Waynesville	 NC
181	Wild Wolf Brewing Company	Nellysford	 VA
182	COOP Ale Works	Oklahoma City	 OK
183	Seventh Son Brewing Company	Columbus	 OH
184	Oasis Texas Brewing Company	Austin	 TX
185	Vander Mill Ciders	Spring Lake	 MI
186	St. Julian Winery	Paw Paw	 MI
187	Pedernales Brewing Company	Fredericksburg	 TX
188	Mother's Brewing	Springfield	 MO
189	Modern Monks Brewery	Lincoln	 NE
190	Two Beers Brewing Company	Seattle	 WA
191	Snake River Brewing Company	Jackson	 WY
192	Capital Brewery	Middleton	 WI
193	Anthem Brewing Company	Oklahoma City	 OK
194	Goodlife Brewing Co.	Bend	 OR
195	Breakside Brewery	Portland	 OR
196	Goose Island Brewery Company	Chicago	 IL
197	Burnside Brewing Co.	Portland	 OR
198	Hop Valley Brewing Company	Springfield	 OR
199	Worthy Brewing Company	Bend	 OR
200	Occidental Brewing Company	Portland	 OR
201	Fearless Brewing Company	Estacada	 OR
202	Upland Brewing Company	Bloomington	 IN
203	Mehana Brewing Co.	Hilo	 HI
204	Hawai'i Nui Brewing Co.	Hilo	 HI
205	People's Brewing Company	Lafayette	 IN
206	Fort George Brewery	Astoria	 OR
207	Branchline Brewing Company	San Antonio	 TX
208	Kalona Brewing Company	Kalona	 IA
209	Modern Times Beer	San Diego	 CA
210	Temperance Beer Company	Evanston	 IL
211	Wisconsin Brewing Company	Verona	 WI
212	Crow Peak Brewing Company	Spearfish	 SD
213	Grapevine Craft Brewery	Farmers Branch	 TX
214	Buffalo Bayou Brewing Company	Houston	 TX
215	Texian Brewing Co.	Richmond	 TX
216	Orpheus Brewing	Atlanta	 GA
217	Forgotten Boardwalk	Cherry Hill	 NJ
218	Laughing Dog Brewing Company	Ponderay	 ID
219	Bozeman Brewing Company	Bozeman	 MT
220	Big Choice Brewing	Broomfield	 CO
221	Big Storm Brewing Company	Odessa	 FL
222	Carton Brewing Company	Atlantic Highlands	 NJ
223	Midnight Sun Brewing Company	Anchorage	 AK
224	Fat Head's Brewery	Middleburg Heights	 OH
225	Refuge Brewery	Temecula	 CA
226	Chatham Brewing	Chatham	 NY
227	DC Brau Brewing Company	Washington	 DC
228	Geneva Lake Brewing Company	Lake Geneva	 WI
229	Rochester Mills Brewing Company	Rochester	 MI
230	Cape Ann Brewing Company	Gloucester	 MA
231	Borderlands Brewing Company	Tucson	 AZ
232	College Street Brewhouse and Pub	Lake Havasu City	 AZ
233	Joseph James Brewing Company	Henderson	 NV
234	Harpoon Brewery	Boston	 MA
235	Back East Brewing Company	Bloomfield	 CT
236	Champion Brewing Company	Charlottesville	 VA
237	Devil's Backbone Brewing Company	Lexington	 VA
238	Newburgh Brewing Company	Newburgh	 NY
239	Wiseacre Brewing Company	Memphis	 TN
240	Golden Road Brewing	Los Angeles	 CA
241	New Republic Brewing Company	College Station	 TX
242	Infamous Brewing Company	Austin	 TX
243	Two Henrys Brewing Company	Plant City	 FL
244	Lift Bridge Brewing Company	Stillwater	 MN
245	Lucky Town Brewing Company	Jackson	 MS
246	Quest Brewing Company	Greenville	 SC
247	Creature Comforts	Athens	 GA
248	Half Full Brewery	Stamford	 CT
249	Southampton Publick House	Southampton	 NY
250	Chapman's Brewing	Angola	 IN
251	Barrio Brewing Company	Tucson	 AZ
252	Santa Cruz Mountain Brewing	Santa Cruz	 CA
253	Frankenmuth Brewery	Frankenmuth	 MI
254	Meckley's Cidery	Somerset Center	 MI
255	Stillwater Artisanal Ales	Baltimore	 MD
256	Finch's Beer Company	Chicago	 IL
257	South Austin Brewery	South Austin	 TX
258	Bauhaus Brew Labs	Minneapolis	 MN
259	Ozark Beer Company	Rogers	 AR
260	Mountain Town Brewing Company 	Mount Pleasant	 MI
261	Otter Creek Brewing	Waterbury	 VT
262	The Brewer's Art	Baltimore	 MD
263	Denver Beer Company	Denver	 CO
264	Ska Brewing Company	Durango	 CO
265	Tractor Brewing Company	Albuquerque	 NM
266	Peak Organic Brewing Company	Portland	 ME
267	Cape Cod Beer	Hyannis	 MA
268	Long Trail Brewing Company	Bridgewater Corners	 VT
269	Great Raft Brewing Company	Shreveport	 LA
270	Alaskan Brewing Company	Juneau	 AK
271	Notch Brewing Company	Ipswich	 MA
272	The Alchemist	Waterbury	 VT
273	Three Notch'd Brewing Company	Charlottesville	 VA
274	Portside Brewery	Cleveland	 OH
275	Otter Creek Brewing	Middlebury	 VT
276	Montauk Brewing Company	Montauk	 NY
277	Indeed Brewing Company	Minneapolis	 MN
278	Berkshire Brewing Company	South Deerfield	 MA
279	Foolproof Brewing Company	Pawtucket	 RI
280	Headlands Brewing Company	Mill Valley	 CA
281	Bolero Snort Brewery	Ridgefield Park	 NJ
282	Thunderhead Brewing Company	Kearney	 NE
283	Defiance Brewing Company	Hays	 KS
284	Milwaukee Brewing Company	Milwaukee	 WI
285	Catawba Island Brewing	Port Clinton	 OH
286	Back Forty Beer Company	Gadsden	 AL
287	Four Corners Brewing Company	Dallas	 TX
288	Saint Archer Brewery	San Diego	 CA
289	Rogue Ales	Newport	 OR
290	Hale's Ales	Seattle	 WA
291	Tommyknocker Brewery	Idaho Springs	 CO
292	Baxter Brewing Company	Lewiston	 ME
293	Northampton Brewery	Northamtpon	 MA
294	Black Shirt Brewing Company	Denver	 CO
295	Wachusett Brewing Company	Westminster	 MA
296	Widmer Brothers Brewing Company	Portland	 OR
297	Hop Farm Brewing Company	Pittsburgh	 PA
298	Liquid Hero Brewery	York	 PA
299	Matt Brewing Company	Utica	 NY
300	Boston Beer Company	Boston	 MA
301	Old Forge Brewing Company	Danville	 PA
302	Utah Brewers Cooperative	Salt Lake City	 UT
303	Magic Hat Brewing Company	South Burlington	 VT
304	Blue Hills Brewery	Canton	 MA
305	Night Shift Brewing	Everett	 MA
306	Beach Brewing Company	Virginia Beach	 VA
307	Payette Brewing Company	Garden City	 ID
308	Brew Bus Brewing	Tampa	 FL
309	Sockeye Brewing Company	Boise	 ID
310	Pine Street Brewery	San Francisco	 CA
311	Dirty Bucket Brewing Company	Woodinville	 WA
312	Jackalope Brewing Company	Nashville	 TN
313	Slanted Rock Brewing Company	Meridian	 ID
314	Piney River Brewing Company	Bucryus	 MO
315	Cutters Brewing Company	Avon	 IN
316	Iron Hill Brewery & Restaurant	Wilmington	 DE
317	Marshall Wharf Brewing Company	Belfast	 ME
318	Banner Beer Company	Williamsburg	 MA
319	Dick's Brewing Company	Centralia	 WA
320	Claremont Craft Ales	Claremont	 CA
321	Rivertown Brewing Company	Lockland	 OH
322	Voodoo Brewery	Meadville	 PA
323	D.L. Geary Brewing Company	Portland	 ME
324	Pisgah Brewing Company	Black Mountain	 NC
325	Neshaminy Creek Brewing Company	Croydon	 PA
326	Morgan Street Brewery	Saint Louis	 MO
327	Half Acre Beer Company	Chicago	 IL
328	The Just Beer Project	Burlington	 VT
329	The Bronx Brewery	Bronx	 NY
330	Dead Armadillo Craft Brewing	Tulsa	 OK
331	Catawba Brewing Company	Morganton	 NC
332	La Cumbre Brewing Company	Albuquerque	 NM
333	David's Ale Works	Diamond Springs	 CA
334	The Traveler Beer Company	Burlington	 VT
335	Fargo Brewing Company	Fargo	 ND
336	Big Sky Brewing Company	Missoula	 MT
337	Nebraska Brewing Company	Papillion	 NE
338	Uncle John's Fruit House Winery	St. John's	 MI
339	Wormtown Brewery	Worcester	 MA
340	Due South Brewing Company	Boynton Beach	 FL
341	Palisade Brewing Company	Palisade	 CO
342	KelSo Beer Company	Brooklyn	 NY
343	Hardywood Park Craft Brewery	Richmond	 VA
344	Wolf Hills Brewing Company	Abingdon	 VA
345	Lavery Brewing Company	Erie	 PA
346	Manzanita Brewing Company	Santee	 CA
347	Fullsteam Brewery	Durham	 NC
348	Four Horsemen Brewing Company	South Bend	 IN
349	Hinterland Brewery	Green Bay	 WI
350	Central Coast Brewing Company	San Luis Obispo	 CA
351	Westfield River Brewing Company	Westfield	 MA
352	Elevator Brewing Company	Columbus	 OH
353	Aslan Brewing Company	Bellingham	 WA
354	Kulshan Brewery	Bellingham	 WA
355	Pikes Peak Brewing Company	Monument	 CO
356	Manayunk Brewing Company	Philadelphia	 PA
357	Buckeye Brewing	Cleveland	 OH
358	Daredevil Brewing Company	Shelbyville	 IN
359	NoDa Brewing Company	Charlotte	 NC
360	Aviator Brewing Company	Fuquay-Varina	 NC
361	Wild Onion Brewing Company	Lake Barrington	 IL
362	Hilliard's Beer	Seattle	 WA
363	Mikkeller	Pottstown	 PA
364	Bohemian Brewery	Midvale	 UT
365	Great River Brewery	Davenport	 IA
366	Mustang Brewing Company	Mustang	 OK
367	Airways Brewing Company	Kent	 WA
368	21st Amendment Brewery	San Francisco	 CA
369	Eddyline Brewery & Restaurant	Buena Vista	 CO
370	Pizza Port Brewing Company	Carlsbad	 CA
371	Sly Fox Brewing Company	Pottstown	 PA
372	Spring House Brewing Company	Conestoga	 PA
373	7venth Sun	Dunedin	 FL
374	Astoria Brewing Company	Astoria	 OR
375	Maui Brewing Company	Lahaina	 HI
376	RoughTail Brewing Company	Midwest City	 OK
377	Lucette Brewing Company	Menominee	 WI
378	Bold City Brewery	Jacksonville	 FL
379	Grey Sail Brewing of Rhode Island	Westerly	 RI
380	Blue Blood Brewing Company	Lincoln	 NE
381	Swashbuckler Brewing Company	Manheim	 PA
382	Blue Mountain Brewery	Afton	 VA
383	Starr Hill Brewery	Crozet	 VA
384	Westbrook Brewing Company	Mt. Pleasant	 SC
385	Shipyard Brewing Company	Portland	 ME
386	Revolution Brewing	Paonia	 CO
387	Natian Brewery	Portland	 OR
388	Alltech's Lexington Brewing Company	Lexington	 KY
389	Oskar Blues Brewery (North Carol...	Brevard	 NC
390	Orlison Brewing Company	Airway Heights	 WA
391	Breckenridge Brewery	Denver	 CO
392	Santa Fe Brewing Company	Santa Fe	 NM
393	Miami Brewing Company	Miami	 FL
394	Schilling & Company	Seattle	 WA
395	Hops & Grain Brewery	Austin	 TX
396	White Flame Brewing Company	Hudsonville	 MI
397	Ruhstaller Beer Company	Sacramento	 CA
398	Saugatuck Brewing Company	Douglas	 MI
399	Moab Brewery	Moab	 UT
400	Macon Beer Company	Macon	 GA
401	Amnesia Brewing Company	Washougal	 WA
402	Wolverine State Brewing Company	Ann Arbor	 MI
403	Red Tank Cider Company	Bend	 OR
404	Cascadia Ciderworks United	Portland	 OR
405	Fate Brewing Company	Boulder	 CO
406	Lazy Monk Brewing	Eau Claire	 WI
407	Bitter Root Brewing	Hamilton	 MT
408	10 Barrel Brewing Company	Bend	 OR
409	Tamarack Brewing Company	Lakeside	 MT
410	New England Brewing Company	Woodbridge	 CT
411	Seattle Cider Company	Seattle	 WA
412	Straight to Ale	Huntsville	 AL
413	Austin Beerworks	Austin	 TX
414	Blue Mountain Brewery	Arrington	 VA
415	Coastal Empire Beer Company	Savannah	 GA
416	Jack's Hard Cider (Hauser Estate...	Biglerville	 PA
417	Boulder Beer Company	Boulder	 CO
418	Coalition Brewing Company	Portland	 OR
419	Sanitas Brewing Company	Boulder	 CO
420	Gore Range Brewery	Edwards	 CO
421	Redstone Meadery	Boulder	 CO
422	Blue Dog Mead	Eugene	 OR
423	Hess Brewing Company	San Diego	 CA
424	Wynkoop Brewing Company	Denver	 CO
425	Ciderboys	Stevens Point	 WI
426	Armadillo Ale Works	Denton	 TX
427	Roanoke Railhouse Brewery	Roanoke	 VA
428	Schlafly Brewing Company	Saint Louis	 MO
429	Asher Brewing Company	Boulder	 CO
430	Lost Rhino Brewing Company	Ashburn	 VA
431	North Country Brewing Company	Slippery Rock	 PA
432	Seabright Brewery	Santa Cruz	 CA
433	French Broad Brewery	Asheville	 NC
434	Angry Orchard Cider Company	Cincinnati	 OH
435	Two Roads Brewing Company	Stratford	 CT
436	Southern Oregon Brewing Company	Medford	 OR
437	Brooklyn Brewery	Brooklyn	 NY
438	The Right Brain Brewery	Traverse City	 MI
439	Kona Brewing Company	Kona	 HI
440	MillKing It Productions	Royal Oak	 MI
441	Pateros Creek Brewing Company	Fort Collins	 CO
442	O'Fallon Brewery	O'Fallon	 MO
443	Marble Brewery	Albuquerque	 NM
444	Big Wood Brewery	Vadnais Heights	 MN
445	Howard Brewing Company	Lenoir	 NC
446	Downeast Cider House	Leominster	 MA
447	Swamp Head Brewery	Gainesville	 FL
448	Mavericks Beer Company	Half Moon Bay	 CA
449	TailGate Beer	San Diego	 CA
450	Northwest Brewing Company	Pacific	 WA
451	Dad & Dude's Breweria	Aurora	 CO
452	Centennial Beer Company	Edwards	 CO
453	Denali Brewing Company	Talkeetna	 AK
454	Deschutes Brewery	Bend	 OR
455	Sunken City Brewing Company	Hardy	 VA
456	Lucette Brewing Company	Menominie	 WI
457	The Black Tooth Brewing Company	Sheridan	 WY
458	Kenai River Brewing Company	Soldotna	 AK
459	River North Brewery	Denver	 CO
460	Fremont Brewing Company	Seattle	 WA
461	Armstrong Brewing Company	South San Francisco	 CA
462	AC Golden Brewing Company	Golden	 CO
463	Big Bend Brewing Company	Alpine	 TX
464	Good Life Brewing Company	Bend	 OR
465	Engine 15 Brewing	Jacksonville Beach	 FL
466	Green Room Brewing	Jacksonville	 FL
467	Brindle Dog Brewing Company	Tampa Bay	 FL
468	Peace Tree Brewing Company	Knoxville	 IA
469	Terrapin Brewing Company	Athens	 GA
470	Pete's Brewing Company	San Antonio	 TX
471	Okoboji Brewing Company	Spirit Lake	 IA
472	Crystal Springs Brewing Company	Boulder	 CO
473	Engine House 9	Tacoma	 WA
474	Tonka Beer Company	Minnetonka	 MN
475	Red Hare Brewing Company	Marietta	 GA
476	Hangar 24 Craft Brewery	Redlands	 CA
477	Big Elm Brewing	Sheffield	 MA
478	Good People Brewing Company	Birmingham	 AL
479	Heavy Seas Beer	Halethorpe	 MD
480	Telluride Brewing Company	Telluride	 CO
481	7 Seas Brewing Company	Gig Harbor	 WA
482	Confluence Brewing Company	Des Moines	 IA
483	Bale Breaker Brewing Company	Yakima	 WA
484	The Manhattan Brewing Company	New York	 NY
485	MacTarnahans Brewing Company	Portland	 OR
486	Stillmank Beer Company	Green Bay	 WI
487	Redhook Brewery	Woodinville	 WA
488	Dock Street Brewery	Philadelphia	 PA
489	Blue Point Brewing Company	Patchogue	 NY
490	Tampa Bay Brewing Company	Tampa	 FL
491	Devil's Canyon Brewery	Belmont	 CA
492	Stone Coast Brewing Company	Portland	 ME
493	Broken Tooth Brewing Company	Anchorage	 AK
494	Seven Brides Brewery	Silverton	 OR
495	Newburyport Brewing Company	Newburyport	 MA
496	Dry Dock Brewing Company	Aurora	 CO
497	Cans Bar and Canteen	Charlotte	 NC
498	Sprecher Brewing Company	Glendale	 WI
499	Wildwood Brewing Company	Stevensville	 MT
500	High Noon Saloon And Brewery	Leavenworth	 KS
501	Woodchuck Hard Cider	Middlebury	 VT
502	Sea Dog Brewing Company	Portland	 ME
503	Oskar Blues Brewery	Lyons	 CO
504	Carolina Beer & Beverage	Mooresville	 NC
505	Krebs Brewing Company (Pete's Pl...	Krebs	 OK
506	Warbird Brewing Company	Fort Wayne	 IN
507	Mudshark Brewing Company	Lake Havasu City	 AZ
508	Spilker Ales	Cortland	 NE
509	Wingman Brewers	Tacoma	 WA
510	Kettle House Brewing Company	Missoula	 MT
511	Sherwood Forest Brewers	Marlborough	 MA
512	Cottrell Brewing	Pawcatuck	 CT
513	Arctic Craft Brewery	Colorado Springs	 CO
514	Monkey Paw Pub & Brewery	San Diego	 CA
515	Crabtree Brewing Company	Greeley	 CO
516	Emerald City Beer Company	Seattle	 WA
517	Butcher's Brewing	Carlsbad	 CA
518	New South Brewing Company	Myrtle Beach	 SC
519	Big River Brewing Company	Chattanooga	 TN
520	Twisted Pine Brewing Company	Boulder	 CO
521	Flying Dog Brewery	Frederick	 MD
522	Uncommon Brewers	Santa Cruz	 CA
523	Aspen Brewing Company	Aspen	 CO
524	Triangle Brewing Company	Durham	 NC
525	Bomb Beer Company	New York	 NY
526	Churchkey Can Company	Seattle	 WA
527	Intuition Ale Works	Jacksonville	 FL
528	Asheville Brewing Company	Asheville	 NC
529	Northwoods Brewpub	Eau Claire	 WI
530	Buckbean Brewing Company	Reno	 NV
531	Dolores River Brewery	Dolores	 CO
532	Flat Rock Brewing Company	Smithton	 PA
533	Abita Brewing Company	Abita Springs	 LA
534	Mammoth Brewing Company	Mammoth Lakes	 CA
535	Harvest Moon Brewing Company	Belt	 MT
536	Grand Canyon Brewing Company	Williams	 AZ
537	Lewis and Clark Brewing Company	Helena	 MT
538	Dundee Brewing Company	Rochester	 NY
539	Twin Lakes Brewing Company	Greenville	 DE
540	Mother Earth Brewing Company	Kinston	 NC
541	Arcadia Brewing Company	Battle Creek	 MI
542	Angry Minnow Brewing Company	Hayward	 WI
543	Great Northern Brewing Company	Whitefish	 MT
544	Pyramid Breweries	Seattle	 WA
545	Lancaster Brewing Company	Lancaster	 PA
546	Upstate Brewing Company	Elmira	 NY
547	Moat Mountain Smoke House & Brew...	North Conway	 NH
548	Prescott Brewing Company	Prescott	 AZ
549	Mogollon Brewing Company	Flagstaff	 AZ
550	Wind River Brewing Company	Pinedale	 WY
551	Silverton Brewery	Silverton	 CO
552	Mickey Finn's Brewery	Libertyville	 IL
553	Covington Brewhouse	Covington	 LA
554	Dave's Brewfarm	Wilson	 WI
555	Ukiah Brewing Company	Ukiah	 CA
556	Butternuts Beer and Ale	Garrattsville	 NY
557	Sleeping Lady Brewing Company	Anchorage	 AK
\.


--
-- Name: beers beers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beers
    ADD CONSTRAINT beers_pkey PRIMARY KEY (beer_id);


--
-- Name: breweries breweries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breweries
    ADD CONSTRAINT breweries_pkey PRIMARY KEY (brewery_id);


--
-- Name: beers beers_brewery_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beers
    ADD CONSTRAINT beers_brewery_id_fkey FOREIGN KEY (brewery_id) REFERENCES public.breweries(brewery_id);


--
-- PostgreSQL database dump complete
--

