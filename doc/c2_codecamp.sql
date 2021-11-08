-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 nov 2021 om 10:19
-- Serverversie: 10.4.14-MariaDB
-- PHP-versie: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c2_codecamp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `acteurs`
--

CREATE TABLE `acteurs` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `achtergrondkleur` varchar(255) DEFAULT NULL,
  `afbeelding` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `acteurs`
--

INSERT INTO `acteurs` (`id`, `naam`, `beschrijving`, `achtergrondkleur`, `afbeelding`) VALUES
(1, 'Timothy Dalton', 'Dalton groeide op in Manchester. Nadat hij zijn school had afgemaakt, ging hij naar het National Youth Theatre. Hij studeerde twee jaar lang aan de Royal Academy of Dramatic Art. In 1966 ging hij naar het Birmingham Repertory Theatre, waar hij hoofdrollen speelde.', '#317f43', 'TimothyDalton.jpg'),
(2, 'Roger Moore', 'Lijst van James Bond films met Roger Moore:\r\n\r\nLive and Let Die (1973)\r\nThe Man with the Golden Gun (1974)\r\nThe Spy Who Loved Me (1977)\r\nMoonraker (1979)\r\nFor Your Eyes Only (1981)\r\nOctopussy (1983)\r\nA View to a Kill (1985)', '', 'RogerMoore.jpg'),
(3, 'George Clooney', 'George Timothy Clooney (Lexington, Kentucky, 6 mei 1961) is een Amerikaans acteur, regisseur, scenarioschrijver en producent met meer dan dertig filmprijzen en nominaties op zijn naam. Voor de film Syriana won hij een Oscar voor beste mannelijke bijrol. Tevens won hij als producent een Oscar voor beste film voor Argo. Ook kreeg hij Oscarnominaties voor zijn rollen in Michael Clayton en The Descendants, een European Film Award (voor Good Night, and Good Luck) en meerdere Golden Globes (voor Syriana en O Brother, Where Art Thou?).\r\nClooney is de zoon van televisiepersoonlijkheid Nick Clooney en Nina Bruce Warren. Hij heeft een oudere zus, Ada Zeidler. Zijn vader is de broer van zangeres-actrice Rosemary Clooney.\r\n\r\nOp jonge leeftijd leerde Clooney omgaan met de camera; zijn vader nam vaak zijn familie mee naar publieke optredens en de jonge Clooney verscheen zelfs in een van zijn televisieprogramma\'s. Op de Augusta High School was Clooney een begaafd honkballer, maar tijdens een tryout bij de Cincinnati Reds bleek hij niet goed genoeg om prof te worden.', NULL, 'GeorgeClooney.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boeken`
--

CREATE TABLE `boeken` (
  `id` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `paginas` int(11) NOT NULL,
  `beschrijving` text DEFAULT NULL,
  `prijs` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `boeken`
--

INSERT INTO `boeken` (`id`, `titel`, `auteur`, `paginas`, `beschrijving`, `prijs`) VALUES
(1, 'Harry Potter en de Steen der Wijzen', 'JK Rowling', 232, '', 0),
(2, 'The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', 336, NULL, NULL),
(3, 'Oorlog en vrede', 'Tolstoj', 1624, NULL, NULL),
(4, 'Moonraker', 'Ian Fleming', 256, NULL, NULL),
(5, 'Dr. No', 'Ian Fleming', 320, NULL, NULL),
(6, 'Turks fruit ', 'Jan Wolkers', 192, NULL, NULL),
(7, 'Wurgtechnieken', 'Ward Ruyslinck', 205, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `filmpersonages`
--

CREATE TABLE `filmpersonages` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `achtergrondkleur` varchar(255) DEFAULT NULL,
  `afbeelding` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `filmpersonages`
--

INSERT INTO `filmpersonages` (`id`, `naam`, `beschrijving`, `achtergrondkleur`, `afbeelding`) VALUES
(1, 'Darth Vader', 'Darth Vader is een personage uit de Star Wars-films. Hij is als Sith-leerling ondergeschikt aan keizer Palpatine, ook bekend als Darth Sidious.\r\n\r\nIn de jaren 1977, 1980 en 1983 werd Darth Vader gespeeld door acteur David Prowse en stuntman Bob Anderson. Zijn stem werd echter ingesproken door James Earl Jones, omdat diens stem veel zwaarder, duisterder en dreigender klonk.', '#e0ab03', 'DarthVader.jpg'),
(3, 'Luke Skywalker', 'Luke Skywalker is een personage uit de Star Warssaga, gespeeld door acteur Mark Hamill. Luke is de tweelingbroer van prinses Leia. Hun ouders zijn Padmé Amidala en Anakin Skywalker. Skywalker werd opgevoed door zijn oom Owen Lars en tante Beru Whitesun Lars.', '#317f43', 'LukeSkywalker.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gereedschap`
--

CREATE TABLE `gereedschap` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `afbeelding` varchar(255) DEFAULT NULL,
  `zaag` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `gereedschap`
--

INSERT INTO `gereedschap` (`id`, `naam`, `beschrijving`, `afbeelding`, `zaag`) VALUES
(1, 'Beitel', 'Een moderne beitel is een langwerpig stuk gereedschap van staal met aan één zijde een scherpe snede. Een beitel voor houtbewerking heeft meestal een houten of kunststoffen handvat ook wel hecht genoemd of is onderdeel van een schaaf. De snijkant wordt vouw genoemd. Verder zijn er beitels voor onder andere steen- en metaalbewerking. Beitels kunnen machinaal en handmatig toegepast worden.\r\n\r\nHoutbeitels worden als handgereedschap in het algemeen in de houtbewerking gebruikt om te kunnen steken of te hakken. Aan de toepassing ontleent ieder type houtbeitel zijn vorm. Houtbeitels kunnen qua hoofdverdeling onderscheiden worden in hakbeitels, steekbeitels en gutsen. Alle beitels zijn voorzien van een heft van hout of kunststof, ook wel een hecht genoemd. Het heft is voorzien van een metalen blad dat (vrijwel altijd) aan één zijde een scherp toelopend uiteinde heeft, de vouw en de snede geheten. Bij het minder scherp worden kan de beitel opnieuw worden geslepen, waarna de ontstane braam eraf kan worden gewet met een wetsteen. De hoek waaronder de houtbeitel wordt geslepen (de slijphoek) en gewet, is belangrijk en kan variëren per type beitel. In het algemeen geldt hiervoor: Hoe kleiner de slijphoek, des te scherper de beitel echter des te eerder hij weer bot wordt.', 'Beitel.jpg', 0),
(2, 'Hamer', 'Een hamer is een klop- of slagwerktuig. Een hamer bestaat uit een steel, het handvat, met aan het eind de zogenaamde hamerkop.\r\n\r\nDe vorm en grootte en het materiaal van de hamerkop en de lengte van de steel hangen sterk af van het type hamer. Bij hamers met een ijzeren hamerkop staat vaak het aantal grammen in het metaal geslagen. Voor speciale uitvoeringen, zoals voor percussie-instrumenten, wordt ook de term mallet (uit het Engels) gebruikt. \r\n\r\nTypen hamers:\r\n\r\nDe volgende tabel geeft een overzicht van typen van hamers:\r\n\r\ngewone hamer:\r\n\r\nEen metalen hamerkop van 50-300 gram op een houten steel van ca. 30 cm lang die onder meer wordt gebruikt om spijkers (draadnagels) in houten voorwerpen te slaan.\r\n\r\nklauwhamer:\r\n\r\nZoals een gewone hamer, maar de achterkant van de hamer heeft een platte V-groef waarin spijkers geklemd kunnen worden. De bovenkant is afgerond zodat de geklemde spijker uit het object gerold kan worden.\r\n\r\nvuist of moker:\r\n\r\nEen zware hamer met een vierkante hamerkop van 1000-1500 gram op een steel van 30 cm lang, voor zwaar werk. Met een rubberen opzetstuk wordt een vuisthamer gebruikt om tegels of straatstenen in het zand te leggen voor het maken van bestrating.\r\n\r\ntegelhamer:\r\nHouten hamer met grote houten kop en een korte steel. Om tegels te leggen.\r\n\r\nstraathamer:\r\n\r\nEen hamer om te straten, met een kromme zijde om stenen door midden te slaan, en een rechte afgeplatte zijde om stenen aan te slaan (bestraten).\r\n\r\nvoorhamer:\r\nEen hamer om sloopwerkzaamheden uit te voeren. Een hamerkop van een paar kilo op een steel van een meter lang.\r\n\r\nrubberen hamer:\r\n\r\nEen rubberen hamer wordt vooral gebruikt bij het leggen van tegels op grond. Een kleine hamer met een rubberen gewicht die kan worden gebruikt voor voorzichtig werk, zoals het aankloppen van kleine lijmverbindingen in de houtbewerking. Kampeerders gebruiken een rubber hamer om de tentpinnen in de grond te slaan. Door (para)medici wordt soms een kleine hamer gebruikt met een zacht gedeelte. Deze heeft meestal twee gekleurde uiteinden.\r\n\r\nhouten hamer:\r\n\r\nEen hamer met een houten hamerkop die kan worden gebruikt voor voorzichtig werk zoals het vooruithelpen van een guts of beitel in de houtbewerking. De hamerkop is gemaakt van een harde houtsoort, meestal beukenhout. De steel is gemaakt van een taaie houtsoort. Dit is nodig om de klappen goed op te kunnen vangen. De hamerkop kan rond (cilindervormig) zijn of een blokvorm hebben.\r\n\r\nsmidshamer:\r\nEen hamer met een gevormd gewicht die kan worden gebruikt om (heet) ijzer op een aambeeld vorm te geven.\r\n\r\nbikhamer:\r\nEen hamer om te bikken, bijvoorbeeld om slakken te verwijderen, ontstaan bij het elektrisch lassen.\r\n\r\nsleg, slegge of slei:\r\nEen langstelige houten hamer, onder meer in gebruik om wiggen in boomstammen te drijven en palen in de grond te slaan.\r\n\r\nzandhamer:\r\n\r\nEen (kunststoffen) hamer met diverse hamerkoppen en grootte, waarvan de kop gevuld is met zand, teneinde de terugslag te verkleinen. Wordt toegepast wanneer het werkstuk met zo min mogelijke beschadiging vervormd moet worden of om lagers op assen te tikken.\r\n\r\nbankhamer:\r\n\r\nEen bankhamer heeft aan één kant een iets bolvormig baanvlak en aan de andere kant een pen die haaks staat op de langsrichting van de steel. Hij is verkrijgbaar met een gewicht van 50 tot 2000 gram. Deze hamer wordt veel gebruikt door bank- en plaatwerkers.\r\n\r\nhaarhamer:\r\n\r\nEen haarhamer is een hamer, waarbij de beide kanten uitlopen in een dun plat vlak. Hiermee wordt een zeis gehaard (scherp gemaakt).\r\n\r\nbolhamer:\r\n\r\nEen bol- of bolkophamer is een hamer voor het bewerken van metaal, met name het hameren (strekken) van bijvoorbeeld koper- of zilverplaat.\r\n\r\nbilhamer of zwaaispits:\r\n\r\nEen bilhamer is een hamer voor het bewerken van molenstenen. Door steenhouwers wordt deze hamer zwaaispits genoemd en werd voorheen gebruikt voor het ruw voorhakken van blokken natuursteen.\r\n\r\npletsteenhamer:\r\n\r\nEen pletsteenhamer of bouchardhamer is een hamer voor het vlak maken van molenstenen en andere natuursteen\r\n\r\nloodhamer:\r\n\r\nEen loodhamer is een hamer die in de beeldhouwkunst gebruikt wordt, bestaande uit een (veelal) koperen of messing band gevuld met lood. De boven- en onderkant van de band zijn open. Met die open – loden – kant wordt geslagen op een beitel. Het lood dempt de slagkracht door de relatieve zachtheid. De koperen band houdt het lood bijeen en is noodzakelijk om de kop aan een (houten) steel te bevestigen. Aldus kan zeer fijn scharreer- of bouchardeerwerk gedaan worden in natuursteen.\r\n\r\nnoodhamer:\r\n\r\nEen noodhamer is bedoeld om, bijvoorbeeld bij een ongeluk, een ruit in te slaan om een voertuig (trein, auto) of een ruimte snel te kunnen verlaten.\r\n\r\nstemhamer:\r\n\r\nEigenlijk geen hamer maar een sleutel (daarom ook stemsleutel genoemd). Wordt gebruikt bij het stemmen van piano\'s en andere snaarinstrumenten.\r\n\r\nreflexhamer:\r\nHamertje met een rubber kop waarmee bij een medisch onderzoek de reflexen, vooral de kniepeesreflex, worden getest.\r\n\r\nkrijgshamer:\r\nHamer die als wapen gebruikt wordt.\r\n\r\nterugslagvrije hamer (dead blow):\r\n\r\nEen hamer gevuld met hagel (lood).', 'Hamer.jpg', 0),
(3, 'Schroevendraaiers', 'Een schroevendraaier is een stuk gereedschap waarmee schroeven worden aangebracht en verwijderd. Het bestaat uit een handvat met een metalen steel waarvan het uiteinde zo gevormd is dat het in de kop van een schroef past.\r\n\r\nSchroevendraaiers zijn in velerlei soorten, afmetingen en kwaliteiten verkrijgbaar. Er bestaan schroevendraaiers met een platte punt, alsook met een ster- of kruiskop. Goede schroevendraaiers zijn vervaardigd van speciale staalsoorten. Bij een juiste toepassing zijn ze praktisch onbreekbaar. Het heft van een schroevendraaier wordt meestal gemaakt van een slagvaste, onbreekbare kunststof. Soms vervaardigt men het heft nog van een taaie houtsoort. De grootte van schroevendraaier en schroef dienen bij elkaar te \'passen\'.', 'Schroevendraaiers.jpg', 0),
(5, 'Cirkelzaag', 'Een cirkelzaag (of radiaalzaag) is een zaag met een blad in de vorm van een stalen schijf, die met een motor tot een zeer hoog toerental wordt aangedreven. De schijf kan in een zaagtafel zijn gemonteerd waarover het te zagen materiaal wordt aangevoerd, of ingebouwd in een constructie samen met een elektromotor tot draagbare handcirkelzaag. Deze heeft een minder krachtige motor en kan ook dunner materiaal zagen.\r\n\r\nCirkelzaagbladen bestaan in soorten en maten, met allerlei verschillende vertandingen, en ook de diameter kan sterk verschillen (normaal is ca. 25 cm, maar industriële cirkelzagen met veel grotere bladen bestaan ook). De maximale zaagdiepte wordt bepaald door de straal van het cirkelzaagblad.\r\n\r\nEen cirkelzaag die bedoeld is om latten, buizen, houten balken en dergelijke te zagen wordt ook wel een afkorter of afkortzaag genoemd. ', 'Cirkelzaag.jpg', 1),
(6, 'Handzaag', 'Een handzaag is een zaag met een taps toelopend, veerkrachtig stalen zaagblad dat voorzien is van een handvat. Het blad is ongeveer 1 mm dik, 400 à 500 mm lang, en circa 100 mm breed.\r\n\r\nDe tanden van de zaag (met een lengte van circa 5 mm elk) zijn \'gezet\', dat wil zeggen dat ze om beurten naar links en naar rechts zijn gebogen. De zetting bedraagt een derde van de bladdikte naar links en een derde naar rechts. Dit zorgt voor een bredere zaagsnede zodat het zaagblad niet in het hout klemt en vastloopt. Om gemakkelijk te kunnen zagen dienen de tanden niet alleen gezet, maar ook scherp te zijn.\r\n\r\nVoor het zagen van hout in de lengterichting van de houtvezels (schulpen) dienen de tanden onder een andere hoek geslepen te zijn dan bij het afkorten, waarbij dwars op de lengterichting van de vezels wordt gezaagd. Bij zagen die geschikt zijn voor het schulpen zijn de tanden haaks geslepen, waardoor deze tijdens het zagen een krul vormen. Bij het afkorten dient de hoek van de tanden tussen de 65 en 75° te liggen. Deze werken dan als een soort mesjes en snijden de houtvezels dwars door. Tegenwoordig ziet men meestal zagen die zogenaamd universeel zijn: men kan ermee afkorten en mee schulpen.', 'Handzaag.jpg', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `songteksten`
--

CREATE TABLE `songteksten` (
  `id` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `artiest` varchar(255) NOT NULL,
  `songtekst` text NOT NULL,
  `achtergrondkleur` varchar(255) DEFAULT NULL,
  `textkleur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `songteksten`
--

INSERT INTO `songteksten` (`id`, `titel`, `artiest`, `songtekst`, `achtergrondkleur`, `textkleur`) VALUES
(1, 'Bohemian Rhapsody', 'Queen', '[Intro]\r\nIs this the real life? Is this just fantasy?\r\nCaught in a landslide, no escape from reality\r\nOpen your eyes, look up to the skies and see\r\nI\'m just a poor boy, I need no sympathy\r\nBecause I\'m easy come, easy go, little high, little low\r\nAny way the wind blows doesn\'t really matter to me, to me\r\n\r\n[Verse 1]\r\nMama, just killed a man\r\nPut a gun against his head, pulled my trigger, now he\'s dead\r\nMama, life had just begun\r\nBut now I\'ve gone and thrown it all away\r\nMama, ooh, didn\'t mean to make you cry\r\nIf I\'m not back again this time tomorrow\r\nCarry on, carry on as if nothing really matters\r\n\r\n[Verse 2]\r\nToo late, my time has come\r\nSends shivers down my spine, body\'s aching all the time\r\nGoodbye, everybody, I\'ve got to go\r\nGotta leave you all behind and face the truth\r\nMama, ooh (Any way the wind blows)\r\nI don\'t wanna die\r\nI sometimes wish I\'d never been born at all\r\n[Guitar Solo]\r\n\r\n[Verse 3]\r\nI see a little silhouetto of a man\r\nScaramouche, Scaramouche, will you do the Fandango?\r\nThunderbolt and lightning, very, very frightening me\r\n(Galileo) Galileo, (Galileo) Galileo, Galileo Figaro magnifico\r\nBut I\'m just a poor boy, nobody loves me\r\nHe\'s just a poor boy from a poor family\r\nSpare him his life from this monstrosity\r\nEasy come, easy go, will you let me go?\r\nBismillah! No, we will not let you go\r\n(Let him go) Bismillah! We will not let you go\r\n(Let him go) Bismillah! We will not let you go\r\n(Let me go) Will not let you go\r\n(Let me go) Will not let you go\r\n(Never, never, never, never let me go) Ah\r\nNo, no, no, no, no, no, no\r\n(Oh, mamma mia, mamma mia) Mamma mia, let me go\r\nBeelzebub has a devil put aside for me, for me, for me!\r\n\r\n[Verse 4]\r\nSo you think you can stone me and spit in my eye?\r\nSo you think you can love me and leave me to die?\r\nOh, baby, can\'t do this to me, baby!\r\nJust gotta get out, just gotta get right outta here\r\n[Outro]\r\n(Ooh)\r\n(Ooh, yeah, ooh, yeah)\r\nNothing really matters, anyone can see\r\nNothing really matters\r\nNothing really matters to me\r\nAny way the wind blows', '#4682b4', NULL),
(2, 'Killer Queen', 'Queen', '[Verse 1]\r\nShe keeps Moët et Chandon\r\nIn her pretty cabinet\r\n\"Let them eat cake,\" she says\r\nJust like Marie Antoinette\r\nA built-in remedy\r\nFor Khrushchev and Kennedy (Ooh, ooh)\r\nAt anytime an invitation\r\nYou can\'t decline (Ooh, ooh)\r\n\r\n[Pre-Chorus]\r\nCaviar and cigarettes\r\nWell versed in etiquette\r\nExtraordinarily nice\r\n\r\n[Chorus]\r\nShe\'s a Killer Queen\r\nGunpowder, gelatine\r\nDynamite with a laser beam\r\nGuaranteed to blow your mind\r\n(Pa-pa-pa-pa) Anytime\r\nOoh\r\nRecommended at the price\r\nInsatiable an appetite\r\nWanna try?\r\n[Verse 2]\r\nTo avoid complications\r\nShe never kept the same address\r\nIn conversation\r\nShe spoke just like a baroness\r\nMet a man from China\r\nWent down to Geisha Minah (Ooh, ooh)\r\n(Killer, killer, she\'s a killer Queen)\r\nThen again incidentally\r\nIf you\'re that way inclined\r\n\r\n[Pre-Chorus]\r\nPerfume came naturally from Paris (Naturally)\r\nFor cars, she couldn\'t care less\r\nFastidious and precise\r\n\r\n[Chorus]\r\nShe\'s a Killer Queen\r\nGunpowder, gelatin\r\nDynamite with a laser beam\r\nGuaranteed to blow your mind\r\n(Pa-pa-pa-pa)\r\nAnytime\r\n\r\n[Guitar Solo]\r\n[Bridge]\r\nDrop of a hat she\'s as willing as\r\nPlayful as a pussy cat (Ooh)\r\nThen momentarily out of action (Ooh)\r\nTemporarily out of gas (Ta-taaa)\r\nTo absolutely drive you wild, wild\r\nShe\'s out to get you\r\n\r\n[Chorus]\r\nShe\'s a Killer Queen\r\nGunpowder, gelatine\r\nDynamite with a laser beam (Pa-pa-pa-ra)\r\nGuaranteed to blow your mind\r\nAnytime\r\nOoh\r\nRecommended at the price\r\nInsatiable an appetite\r\nWanna try?\r\nYou wanna try . ', '#4682b4', NULL),
(3, 'Madness', 'Muse', '[Refrain]\r\nMa-ma-ma-ma-ma-ma-ma-ma mad mad mad\r\nMa-ma-ma-ma-ma-ma-ma-ma mad mad mad\r\nMa-ma-ma-ma-ma-ma-ma-ma mad mad mad\r\nMa-ma-ma-ma-ma-ma-ma-ma mad mad mad\r\n\r\n[Verse 1]\r\nI, I can\'t get these memories out of my mind\r\nAnd some kind of madness has started to evolve, mmm\r\nAnd I, I tried so hard to let you go\r\nBut some kind of madness is swallowing me whole, yeah\r\n\r\n[Bridge 1]\r\nI have finally seen the light\r\nAnd I have finally realized what you mean\r\n\r\n[Verse 2]\r\nAnd now I need to know - is this real love\r\nOr is it just madness keeping us afloat? mmm\r\nAnd when I look back at all the crazy fights we\'ve had\r\nLike some kind of madness was taking control, yeah\r\n\r\n[Bridge 2]\r\nAnd now I have finally seen the light\r\nAnd I have finally realized what you need\r\n[Verse 3]\r\nBut now I have finally seen the end\r\n(finally seen the end)\r\nAnd I\'m not expecting you to care, no\r\n(expecting you to care)\r\nThat I have finally seen the light\r\n(finally seen the light)\r\nAnd I have finally realized\r\n(realized)\r\nI need to love\r\nI need to love\r\n\r\n[Outro]\r\nCome to me, just in a dream\r\nCome on and rescue me\r\nYes I know I can be wrong\r\nBaby, you\'re too headstrong\r\nOur love is...\r\n\r\nMa-ma-ma-ma-ma-ma-ma-ma mad mad mad\r\nMa-ma-ma-ma-ma-ma-ma-ma mad mad mad\r\nMa-ma-ma-ma-ma-ma-ma-ma mad mad mad\r\nMa-ma-ma-ma-ma--ma--ma madness...', '#cc0000', NULL),
(4, 'Uprising', 'My Baby', 'Allow me in your tub\r\nAllow me in your club\r\nAllow me to drink from your cup\r\nI\'ll be coming back for more\r\n\r\nAllow me in your dream\r\nAllow me in your scene\r\nAllow me on your knees\r\nI\'ll be coming back for more\r\n\r\nSisters, keep on rising\r\nBrothers, keep on rising\r\nThis girl keeps on rising\r\nKeep on rising up\r\n\r\nI Believe in your school\r\nI Believe in your rules\r\nI Believe in your truth\r\nI\'ll be coming back for more\r\n\r\nI Believe in your land\r\nI Believe in that man\r\nI Believe in your command\r\nI\'ll be coming back for more\r\n\r\nSisters, Brothers, Lovers\r\nKeep on rising up\r\n\r\nSisters, keep on rising\r\nBrothers, keep on rising\r\nThis girl keeps on rising\r\nKeep on rising up\r\n\r\nUprising, uprising', '#317f43', '#cc0000'),
(5, 'Uprising', 'Muse', '[Verse 1]\r\nParanoia is in bloom\r\nThe PR transmissions will resume\r\nThey\'ll try to push drugs that keep us all dumbed down\r\nAnd hope that we will never see the truth around\r\n(So come on)\r\n\r\n[Verse 2]\r\nAnother promise, another seed\r\nAnother packaged lie to keep us trapped in greed\r\nAnd all the green belts wrapped around our minds\r\nAnd endless red tape to keep the truth confined\r\n(So come on)\r\n\r\n[Chorus]\r\nThey will not force us\r\nThey will stop degrading us\r\nThey will not control us\r\nWe will be victorious\r\n(So come on)\r\n\r\n[Verse 3]\r\nInterchanging mind control\r\nCome let the revolution take its toll\r\nIf you could flick the switch and open your third eye\r\nYou\'d see that we should never be afraid to die\r\n(So come on)\r\n[Verse 4]\r\nRise up and take the power back\r\nIt\'s time the fat cats had a heart attack\r\nYou know that their time\'s coming to an end\r\nWe have to unify and watch our flag ascend\r\n(So come on)\r\n\r\n[Chorus]\r\nThey will not force us\r\nThey will stop degrading us\r\nThey will not control us\r\nWe will be victorious\r\n(So come on)\r\n\r\n[Post-Chorus]\r\nHey, hey, hey, hey\r\nHey, hey, hey, hey\r\n\r\n[Chorus]\r\nThey will not force us\r\nThey will stop degrading us\r\nThey will not control us\r\nWe will be victorious\r\n(So come on)\r\n\r\n[Outro]\r\nHey, hey, hey, hey', '#317f43', '#cc0000'),
(6, 'Plug In Baby', 'Muse', '[Verse 1]\r\nI\'ve exposed your lies, baby\r\nThe underneath\'s no big surprise\r\nNow it\'s time for changing\r\nAnd cleansing everything\r\nTo forget your love\r\n\r\n[Chorus]\r\nMy plug in baby\r\nCrucifies my enemies\r\nWhen I\'m tired of giving, whoa\r\nMy plug in baby\r\nIn unbroken virgin realities\r\nIs tired of living\r\n\r\n[Verse 2]\r\nDon\'t confuse\r\nBaby you\'re gonna lose\r\nYour own game\r\nChange me\r\nAnd replace the envying\r\nTo forget your love\r\n\r\n[Chorus]\r\nMy plug in baby\r\nCrucifies my enemies\r\nWhen I\'m tired of giving, whoa\r\nMy plug in baby\r\nIn unbroken virgin realities\r\nIs tired of living\r\n[Outro]\r\nAnd I\'ve seen your loving\r\nMine is gone\r\nAnd I\'ve been in trouble\r\nWooaahhh', '#b97d4b', NULL),
(8, 'We Are the Champions', 'Queen', '[Verse 1]\r\nI\'ve paid my dues\r\nTime after time\r\nI\'ve done my sentence\r\nBut committed no crime\r\nAnd bad mistakes\r\nI\'ve made a few\r\nI\'ve had my share of sand kicked in my face\r\nBut I\'ve come through\r\n(And I need to go on and on, and on, and on)\r\n\r\n[Chorus]\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting \'til the end\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions\r\nOf the world\r\n\r\n[Verse 2]\r\nI\'ve taken my bows\r\nAnd my curtain calls\r\nYou brought me fame and fortune and everything that goes with it\r\nI thank you all\r\nBut it\'s been no bed of roses\r\nNo pleasure cruise\r\nI consider it a challenge before the whole human race\r\nAnd I ain\'t gonna lose\r\n(And I need to go on and on, and on, and on)\r\n[Chorus]\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting \'til the end\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions\r\nOf the world\r\n\r\n[Outro]\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting \'til the end, oh\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions...', '#4682b4', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Sales manager', 'salesmanager', '$2y$10$XRcMggutE9yEN.uqf8WSAOmcLD4acYE3mbYI9QfsgZh5lEJ6MjT.u'),
(2, 'Content leverancier', 'contentleverancier', '$2y$10$XRcMggutE9yEN.uqf8WSAOmcLD4acYE3mbYI9QfsgZh5lEJ6MjT.u');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `boeken`
--
ALTER TABLE `boeken`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `filmpersonages`
--
ALTER TABLE `filmpersonages`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gereedschap`
--
ALTER TABLE `gereedschap`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `songteksten`
--
ALTER TABLE `songteksten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `boeken`
--
ALTER TABLE `boeken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `filmpersonages`
--
ALTER TABLE `filmpersonages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `gereedschap`
--
ALTER TABLE `gereedschap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `songteksten`
--
ALTER TABLE `songteksten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
