-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2021 at 02:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
-- Table structure for table `filmpersonages`
--

CREATE TABLE `filmpersonages` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `kleur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filmpersonages`
--

INSERT INTO `filmpersonages` (`id`, `naam`, `beschrijving`, `kleur`) VALUES
(1, 'Darth Vader', '', '#e0ab03'),
(2, 'Timoty Dalton', '', '#317f43'),
(3, 'Luke Skywalker', '', '#317f43');

-- --------------------------------------------------------

--
-- Table structure for table `gereedschap`
--

CREATE TABLE `gereedschap` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gereedschap`
--

INSERT INTO `gereedschap` (`id`, `naam`, `beschrijving`) VALUES
(1, 'Beitel', 'Een moderne beitel is een langwerpig stuk gereedschap van staal met aan één zijde een scherpe snede. Een beitel voor houtbewerking heeft meestal een houten of kunststoffen handvat ook wel hecht genoemd of is onderdeel van een schaaf. De snijkant wordt vouw genoemd. Verder zijn er beitels voor onder andere steen- en metaalbewerking. Beitels kunnen machinaal en handmatig toegepast worden.\r\n\r\nHoutbeitels worden als handgereedschap in het algemeen in de houtbewerking gebruikt om te kunnen steken of te hakken. Aan de toepassing ontleent ieder type houtbeitel zijn vorm. Houtbeitels kunnen qua hoofdverdeling onderscheiden worden in hakbeitels, steekbeitels en gutsen. Alle beitels zijn voorzien van een heft van hout of kunststof, ook wel een hecht genoemd. Het heft is voorzien van een metalen blad dat (vrijwel altijd) aan één zijde een scherp toelopend uiteinde heeft, de vouw en de snede geheten. Bij het minder scherp worden kan de beitel opnieuw worden geslepen, waarna de ontstane braam eraf kan worden gewet met een wetsteen. De hoek waaronder de houtbeitel wordt geslepen (de slijphoek) en gewet, is belangrijk en kan variëren per type beitel. In het algemeen geldt hiervoor: Hoe kleiner de slijphoek, des te scherper de beitel echter des te eerder hij weer bot wordt.[3]'),
(2, 'Hamer', 'Een hamer is een klop- of slagwerktuig. Een hamer bestaat uit een steel, het handvat, met aan het eind de zogenaamde hamerkop.\r\n\r\nDe vorm en grootte en het materiaal van de hamerkop en de lengte van de steel hangen sterk af van het type hamer. Bij hamers met een ijzeren hamerkop staat vaak het aantal grammen in het metaal geslagen. Voor speciale uitvoeringen, zoals voor percussie-instrumenten, wordt ook de term mallet (uit het Engels) gebruikt. \r\n\r\nTypen hamers\r\n\r\nDe volgende tabel geeft een overzicht van typen van hamers:\r\n\r\ngewone hamer\r\n    Een metalen hamerkop van 50-300 gram op een houten steel van ca. 30 cm lang die onder meer wordt gebruikt om spijkers (draadnagels) in houten voorwerpen te slaan.\r\nklauwhamer\r\n    Zoals een gewone hamer, maar de achterkant van de hamer heeft een platte V-groef waarin spijkers geklemd kunnen worden. De bovenkant is afgerond zodat de geklemde spijker uit het object gerold kan worden.\r\nvuist of moker\r\n    Een zware hamer met een vierkante hamerkop van 1000-1500 gram op een steel van 30 cm lang, voor zwaar werk. Met een rubberen opzetstuk wordt een vuisthamer gebruikt om tegels of straatstenen in het zand te leggen voor het maken van bestrating.\r\ntegelhamer\r\n    Houten hamer met grote houten kop en een korte steel. Om tegels te leggen.\r\nstraathamer\r\n    Een hamer om te straten, met een kromme zijde om stenen door midden te slaan, en een rechte afgeplatte zijde om stenen aan te slaan (bestraten).\r\nvoorhamer\r\n    Een hamer om sloopwerkzaamheden uit te voeren. Een hamerkop van een paar kilo op een steel van een meter lang.\r\nrubberen hamer\r\n    Een rubberen hamer wordt vooral gebruikt bij het leggen van tegels op grond. Een kleine hamer met een rubberen gewicht die kan worden gebruikt voor voorzichtig werk, zoals het aankloppen van kleine lijmverbindingen in de houtbewerking. Kampeerders gebruiken een rubber hamer om de tentpinnen in de grond te slaan. Door (para)medici wordt soms een kleine hamer gebruikt met een zacht gedeelte. Deze heeft meestal twee gekleurde uiteinden.\r\nhouten hamer\r\n    Een hamer met een houten hamerkop die kan worden gebruikt voor voorzichtig werk zoals het vooruithelpen van een guts of beitel in de houtbewerking. De hamerkop is gemaakt van een harde houtsoort, meestal beukenhout. De steel is gemaakt van een taaie houtsoort. Dit is nodig om de klappen goed op te kunnen vangen. De hamerkop kan rond (cilindervormig) zijn of een blokvorm hebben.\r\nsmidshamer\r\n    Een hamer met een gevormd gewicht die kan worden gebruikt om (heet) ijzer op een aambeeld vorm te geven.\r\nbikhamer\r\n    Een hamer om te bikken, bijvoorbeeld om slakken te verwijderen, ontstaan bij het elektrisch lassen.\r\nsleg, slegge of slei\r\n    Een langstelige houten hamer, onder meer in gebruik om wiggen in boomstammen te drijven en palen in de grond te slaan.\r\nzandhamer\r\n    Een (kunststoffen) hamer met diverse hamerkoppen en grootte, waarvan de kop gevuld is met zand, teneinde de terugslag te verkleinen. Wordt toegepast wanneer het werkstuk met zo min mogelijke beschadiging vervormd moet worden of om lagers op assen te tikken.\r\nbankhamer\r\n    Een bankhamer heeft aan één kant een iets bolvormig baanvlak en aan de andere kant een pen die haaks staat op de langsrichting van de steel. Hij is verkrijgbaar met een gewicht van 50 tot 2000 gram. Deze hamer wordt veel gebruikt door bank- en plaatwerkers.\r\nhaarhamer\r\n    Een haarhamer is een hamer, waarbij de beide kanten uitlopen in een dun plat vlak. Hiermee wordt een zeis gehaard (scherp gemaakt).\r\nbolhamer\r\n    Een bol- of bolkophamer is een hamer voor het bewerken van metaal, met name het hameren (strekken) van bijvoorbeeld koper- of zilverplaat.\r\nbilhamer of zwaaispits\r\n    Een bilhamer is een hamer voor het bewerken van molenstenen. Door steenhouwers wordt deze hamer zwaaispits genoemd en werd voorheen gebruikt voor het ruw voorhakken van blokken natuursteen.\r\npletsteenhamer\r\n    Een pletsteenhamer of bouchardhamer is een hamer voor het vlak maken van molenstenen en andere natuursteen\r\nloodhamer\r\n    Een loodhamer is een hamer die in de beeldhouwkunst gebruikt wordt, bestaande uit een (veelal) koperen of messing band gevuld met lood. De boven- en onderkant van de band zijn open. Met die open – loden – kant wordt geslagen op een beitel. Het lood dempt de slagkracht door de relatieve zachtheid. De koperen band houdt het lood bijeen en is noodzakelijk om de kop aan een (houten) steel te bevestigen. Aldus kan zeer fijn scharreer- of bouchardeerwerk gedaan worden in natuursteen.\r\nnoodhamer\r\n    Een noodhamer is bedoeld om, bijvoorbeeld bij een ongeluk, een ruit in te slaan om een voertuig (trein, auto) of een ruimte snel te kunnen verlaten.\r\nstemhamer\r\n    Eigenlijk geen hamer maar een sleutel (daarom ook stemsleutel genoemd). Wordt gebruikt bij het stemmen van piano\'s en andere snaarinstrumenten.\r\nreflexhamer\r\n    Hamertje met een rubber kop waarmee bij een medisch onderzoek de reflexen, vooral de kniepeesreflex, worden getest.\r\nkrijgshamer\r\n    Hamer die als wapen gebruikt wordt.\r\nterugslagvrije hamer (dead blow)\r\n    Een hamer gevuld met hagel (lood).'),
(3, 'Kettingzaag', 'Een kettingzaag bestaat uit drie delen:\r\n\r\n    Motor: de benzinemotor moet gestart worden met een startkoord (als bij een motormaaier). De motor drijft een kettingrondsel aan, dat zorgt dat de ketting gaat ronddraaien. Bij een elektrische kettingzaag dient men op een knop te drukken om de motor te starten.\r\n    Zaagblad: het zaagblad of \"zwaard\" zit aan de motorbehuizing vastgemaakt. Het zaagblad heeft over de hele lengte een groef. De functie van de groef is tweeledig. Enerzijds zorgt de groef ervoor dat de ketting rechtuit blijft lopen. Anderzijds zorgt de groef voor vervoer van olie, die de ketting smeert. De groef moet voldoende diep zijn, en vrij zijn van vuil en zand. Dit alles om de ketting er niet uit te laten lopen. Het blad mag niet beschadigd zijn en er mogen geen bramen op zitten.\r\n    Zaagketting: een schakelketting met zaagtanden, ook wel beitels genoemd. Een zaagketting bestaat uit drie onderdelen: de zaagtand, de dieptesteller en de aandrijfschakel. Deze zijn met elkaar verbonden door verbindingsschakels. De zaagtand doet het werk. Deze beitelt het hout uit de zaagsnede. De dieptesteller bepaalt de diepte waarmee de zaagtand door het hout gaat. Staat deze te hoog afgesteld neemt de zaagtand bijna geen hout mee. Staat deze te diep afgesteld kan de zaagtand vastlopen in het hout (ook wel \'agressief\' genoemd). De aandrijfschakel loopt door de groef van het zaagblad. Hieruit haalt hij olie om de ketting te smeren.\r\n\r\nEen kettingzaag is onnauwkeurig en levert een vrij brede en rafelige zaagsnede op, maar is door zijn handzaamheid en lange zaagblad uitermate geschikt om gehele bomen om te zagen of tot brandhout te verwerken. De omgezaagde bomen worden daarna soms in zagerijen met lintzagen of cirkelzagen tot planken verwerkt, omdat deze een nettere zaagsnede geven. '),
(4, 'Cirkelzaag', 'Een cirkelzaag (of radiaalzaag) is een zaag met een blad in de vorm van een stalen schijf, die met een motor tot een zeer hoog toerental wordt aangedreven. De schijf kan in een zaagtafel zijn gemonteerd waarover het te zagen materiaal wordt aangevoerd, of ingebouwd in een constructie samen met een elektromotor tot draagbare handcirkelzaag. Deze heeft een minder krachtige motor en kan ook dunner materiaal zagen.\r\n\r\nCirkelzaagbladen bestaan in soorten en maten, met allerlei verschillende vertandingen, en ook de diameter kan sterk verschillen (normaal is ca. 25 cm, maar industriële cirkelzagen met veel grotere bladen bestaan ook). De maximale zaagdiepte wordt bepaald door de straal van het cirkelzaagblad.\r\n\r\nEen cirkelzaag die bedoeld is om latten, buizen, houten balken en dergelijke te zagen wordt ook wel een afkorter of afkortzaag genoemd. ');

-- --------------------------------------------------------

--
-- Table structure for table `songteksten`
--

CREATE TABLE `songteksten` (
  `id` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `artiest` varchar(255) NOT NULL,
  `songtekst` text NOT NULL,
  `kleur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songteksten`
--

INSERT INTO `songteksten` (`id`, `titel`, `artiest`, `songtekst`, `kleur`) VALUES
(1, 'Bohemian Rhapsody', 'Queen', 'Is this the real life?\r\nIs this just fantasy?\r\nCaught in a landside,\r\nNo escape from reality\r\nOpen your eyes,\r\nLook up to the skies and see,\r\nI\'m just a poor boy, I need no sympathy,\r\nBecause I\'m easy come, easy go,\r\nLittle high, little low,\r\nAny way the wind blows doesn\'t really matter to\r\nMe, to me\r\nMamaaa,\r\nJust killed a man,\r\nPut a gun against his head, pulled my trigger,\r\nNow he\'s dead\r\nMamaaa, life had just begun,\r\nBut now I\'ve gone and thrown it all away\r\nMama, oooh,\r\nDidn\'t mean to make you cry,\r\nIf I\'m not back again this time tomorrow,\r\nCarry on, carry on as if nothing really matters\r\nToo late, my time has come,\r\nSends shivers down my spine, body\'s aching all\r\nThe time\r\nGoodbye, everybody, I\'ve got to go,\r\nGotta leave you all behind and face the truth\r\nMama, oooh\r\nI don\'t want to die,\r\nI sometimes wish I\'d never been born at all.\r\nI see a little silhouetto of a man,\r\nScaramouch, Scaramouch, will you do the Fandango!\r\nThunderbolts and lightning, very, very frightening me\r\nGalileo, Galileo\r\nGalileo, Galileo\r\nGalileo, Figaro - magnificoo\r\nI\'m just a poor boy nobody loves me\r\nHe\'s just a poor boy from a poor family,\r\nSpare him his life from this monstrosity\r\nEasy come, easy go, will you let me go\r\nBismillah! No, we will not let you go\r\n(Let him go!) Bismillah! We will not let you go\r\n(Let him go!) Bismillah! We will not let you go\r\n(Let me go) Will not let you go\r\n(Let me go)(Never) Never let you go\r\n(Let me go) (Never) let you go (Let me go) Ah\r\nNo, no, no, no, no, no, no\r\nOh mama mia, mama mia, mama mia, let me go\r\nBeelzebub has a devil put aside for me, for me,\r\nFor meee\r\nSo you think you can stop me and spit in my eye\r\nSo you think you can love me and leave me to die\r\nOh, baby, can\'t do this to me, baby,\r\nJust gotta get out, just gotta get right outta here\r\nNothing really matters, Anyone can see,\r\nNothing really matters,\r\nNothing really matters to me\r\nAny way the wind blows...', '#4682b4'),
(2, 'Killer Queen', 'Queen', 'She keeps her Moet et Chandon\r\nIn her pretty cabinet\r\n\"Let them eat cake\", she says\r\nJust like Marie Antoinette\r\nA built-in remedy\r\nFor Khrushchev and Kennedy\r\nAt anytime an invitation\r\nYou can\'t decline\r\nCaviar and cigarettes\r\nWell versed in etiquette\r\nExtraordinarily nice\r\nShe\'s a Killer Queen\r\nGunpowder, gelatine\r\nDynamite with a laser beam\r\nGuaranteed to blow your mind\r\nAnytime\r\nRecommended at the price\r\nInsatiable an appetite\r\nWanna try?\r\nTo avoid complications\r\nShe never kept the same address\r\nIn conversation\r\nShe spoke just like a baroness\r\nMet a man from China\r\nWent down to Geisha Minah\r\nThen again incidentally\r\nIf you\'re that way inclined\r\nPerfume came naturally from Paris (naturally)\r\nFor cars she couldn\'t care less\r\nFastidious and precise\r\nShe\'s a Killer Queen\r\nGunpowder, gelatine\r\nDynamite with a laser beam\r\nGuaranteed to blow your mind\r\nAnytime\r\nDrop of a hat she\'s as willing as\r\nPlayful as a pussy cat\r\nThen momentarily out of action\r\nTemporarily out of gas\r\nTo absolutely drive you wild, wild\r\nShe\'s all out to get you\r\nShe\'s a Killer Queen\r\nGunpowder, gelatine\r\nDynamite with a laser beam\r\nGuaranteed to blow your mind\r\nAnytime\r\nRecommended at the price\r\nInsatiable an appetite\r\nWanna try?\r\nYou wanna try', '#4682b4'),
(3, 'Madness', 'Muse', 'I, I can\'t get these memories out of my mind\r\nAnd some kind of madness has started to evolve\r\nI, I tried so hard to let you go\r\nBut some kind of madness is swallowing me whole, yeah\r\nI have finally seen the light\r\nAnd I have finally realized\r\nWhat you mean\r\nOh oh oh\r\nAnd now, I need to know is this real love\r\nOr is it just madness keeping us afloat?\r\nAnd when I look back at all the crazy fights we had\r\nLike some kind of madness\r\nWas taking control\r\nYeah\r\nAnd now I have finally seen the light\r\nAnd I have finally realized\r\nWhat you need\r\nMm\r\nAnd now I have finally seen the end (Finally seen the end)\r\nAnd I\'m not expecting you to care (Expecting you to care)\r\nBut I have finally seen the light (Finally seen the light)\r\nI have finally realized (Realized)\r\nI need to love\r\nI need to love\r\nCome to me,\r\nTrust in your dream\r\nCome on and rescue me\r\nYes I have known, I can be wrong\r\nMaybe I\'m too headstrong\r\nOur love is\r\nMadness', '#cc0000'),
(4, 'Uprising', 'My Baby', 'Allow me in your tub\r\nJust allow me in your club\r\nAllow me to drink from your cup\r\nI\'ll be coming back for more\r\nAllow me in your dream\r\nAllow me in your scene\r\nJust allow me on your knees\r\nI\'ll be coming back for more\r\nSisters, keep on rising\r\nBrothers, keep on rising\r\nThis girl keeps on rising\r\nKeep on rising up\r\nAll I Believe in your school\r\nI Believe in your rules\r\nI Believe in your truth\r\nI\'ll be coming back for more\r\nI Believe in your land\r\nI Believe in that man\r\nI Believe in your command\r\nI\'ll be coming back for more\r\nSisters, Brothers, Lovers\r\nKeep on rising up\r\nSisters, keep on rising\r\nBrothers, keep on rising\r\nThis girl keeps on rising\r\nKeep on rising up\r\nUprising, uprising\r\nUprising, uprising\r\nSisters, Brothers, Lovers\r\nThis girl keep on rising up\r\nSisters, keep on rising\r\nBrothers, keep on rising\r\nThis girl keeps on rising\r\nKeep on rising up', '#b97d4b'),
(5, 'Uprising', 'Muse', 'Paranoia is in bloom\r\nThe PR transmissions will resume\r\nThey\'ll try to push drugs that keep us all dumbed down\r\nAnd hope that we will never see the truth around\r\n(So come on)\r\nAnother promise, another scene\r\nAnother packaged lie to keep us trapped in greed\r\nAnd all the green belts wrapped around our minds\r\nAnd endless red tape to keep the truth confined\r\n(So come on)\r\nThey will not force us\r\nThey will stop degrading us\r\nThey will not control us\r\nWe will be victorious\r\n(So come on)\r\nInterchanging mind control\r\nCome, let the revolution take its toll\r\nIf you could flick the switch and open your third eye\r\nYou\'d see that we should never be afraid to die\r\n(So come on)\r\nRise up and take the power back\r\nIt\'s time the fat cats had a heart attack\r\nYou know that their time\'s coming to an end\r\nWe have to unify and watch our flag ascend\r\n(So come on)\r\nThey will not force us\r\nThey will stop degrading us\r\nThey will not control us\r\nWe will be victorious\r\n(So come on)\r\nThey will not force us\r\nThey will stop degrading us\r\nThey will not control us\r\nWe will be victorious\r\n(So come on)', '#b97d4b'),
(6, 'Plug In', 'Muse', 'I\'ve exposed your lies, baby\r\nThe underneath no big surprise\r\nNow it\'s time for changing\r\nAnd cleansing everything\r\nTo forget your love\r\nMy plug in baby\r\nCrucifies my enemies\r\nWhen I\'m tired of giving\r\nMy plug in baby\r\nIn unbroken virgin realities\r\nIs tired of living\r\nDon\'t confuse\r\nBaby you\'re gonna lose\r\nYour own game\r\nChange me\r\nAnd replace the envying\r\nTo forget your love\r\nMy plug in baby\r\nCrucifies my enemies\r\nWhen I\'m tired of giving\r\nMy plug in baby\r\nIn unbroken virgin realities\r\nAnd tired of living\r\nAnd I\'ve seen your loving\r\nMine is gone', '#b97d4b'),
(7, 'Transylvania', 'Iron Maiden', '[Instrumental]', '#cc0000'),
(8, 'We Are the Champions', 'Queen', 'I\'ve paid my dues\r\nTime after time\r\nI\'ve done my sentence\r\nBut committed no crime\r\nAnd bad mistakes\r\nI\'ve made a few\r\nI\'ve had my share of sand\r\nKicked in my face\r\nBut I\'ve come through\r\nAnd we mean to go on and on and on and on\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting till the end\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions of the World\r\nI\'ve taken my bows\r\nAnd my curtain calls\r\nYou brought me fame and fortune\r\nAnd everything that goes with it\r\nI thank you all\r\nBut it\'s been no bed of roses\r\nNo pleasure cruise\r\nI consider it a challenge before\r\nThe human race\r\nAnd I ain\'t gonna lose\r\nAnd we mean to go on and on and on and on\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting till the end\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions of the World\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting till the end\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions of the World', '#4682b4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmpersonages`
--
ALTER TABLE `filmpersonages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gereedschap`
--
ALTER TABLE `gereedschap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songteksten`
--
ALTER TABLE `songteksten`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmpersonages`
--
ALTER TABLE `filmpersonages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gereedschap`
--
ALTER TABLE `gereedschap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `songteksten`
--
ALTER TABLE `songteksten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
