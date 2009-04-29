
--
-- Dumping data for table `collections_roles`
--

LOCK TABLES `collections_roles` WRITE;
/*!40000 ALTER TABLE `collections_roles` DISABLE KEYS */;
INSERT INTO `collections_roles` VALUES (1,'Organisatorische Einheiten',1,'none',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `collections_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections_contents_1`
--

CREATE TABLE `collections_contents_1` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collections_contents_1`
--

LOCK TABLES `collections_contents_1` WRITE;
/*!40000 ALTER TABLE `collections_contents_1` DISABLE KEYS */;
INSERT INTO `collections_contents_1` VALUES (1,NULL),(2,'Fakultät für Biologie'),(3,'Arbeitsbereich Zell - und Molekularbiologie'),(4,'Genetik'),(5,'Gentechnologie und Mikrobiologie'),(6,'Genomforschung'),(7,'Biochemie und Physiologie der Pflanzen'),(8,'Molekulare Zellphysiologie'),(9,'Zellbiologie'),(10,'Zell- und Entwicklungsbiologie der Pflanzen'),(11,'Biochemische Zellbiologie'),(12,'Algenbiotechnologie'),(13,'Arbeitsbereich Evolutionsbiologie und Ökologie'),(14,'Experimentelle Ökologie und Ökosystembiologie'),(15,'Evolutionsbiologie'),(16,'Chemische Ökologie'),(17,'Tierökologie'),(18,'Biologische Sammlung'),(19,'Arbeitsbereich Neurobiologie und Verhaltensforschung'),(20,'Neurobiologie'),(21,'Kognitive Neurowissenschaften'),(22,'Verhaltensforschung'),(23,'Theoretische Biologie / Biologische Kybernetik'),(24,'Arbeitsbereich Didaktik der Biologie'),(25,'Biologiedidaktik (Botanik und Zellbiologie)'),(26,'Biologiedidaktik (Humanbiologie und Zoologie)'),(27,'Ehemalige Arbeitsbereiche'),(28,'Ökologie der Pflanzen'),(29,'Biologie und Didaktik der Biologie, Botanik'),(30,'Entwicklungsbiologie & Molekulare Pathologie'),(31,'Prasitologie und Umweltökologie'),(32,'Neuroanatomie'),(33,'Fakultätsübergreifende Forschungsschwerpunkte'),(34,'Sonderforschungsbereiche'),(35,'Sonderforschungsbereich 549 \"Prozessierung und Signalwirkung Extrazellulärer Maskromoleküle\"'),(36,'Sonderforschungsbereich 613 \"Physik von Einzelmolekülprozessen und molekularer Erkennung in organischen Systemen\"'),(37,'Forschergruppen'),(38,'Forschergruppe 387 \"Redox-Steuerung als zentrales regulativ der Photosynthese\"'),(39,'Graduiertenkollegs'),(40,'GK \"Verhaltensstrategien und Verhaltensoptimierung\"'),(41,'GK \"Bioinformatik\"'),(42,'GK \"Strukturbildungsprozesse\"'),(43,'Zentrum für Genomfoschung'),(44,'Fakultät für Chemie'),(45,'Arbeitsgruppe Anorganische Chemie'),(46,'Arbeitsgruppe Biochemie'),(47,'Arbeitsgruppe Didaktik der Chemie'),(48,'Arbeitsgruppe Organische Chemie'),(49,'Arbeitsgruppe Physikalische Chemie'),(50,'Arbeitsgruppe Theoretische Chemie'),(51,'Fakultät für Erziehungswissenschaft'),(52,'Arbeitsgruppe Allgemeine Erziehungswissenschaft'),(53,'Arbeitsgruppe Sozialisation'),(54,'Arbeitsgruppe Schultheorie mit dem Schwerpunkt Grund- und Förderschulen'),(55,'Arbeitsgruppe Schulentwicklung und Schulforschung'),(56,'Arbeitsgruppe Schulpädagogik und Allgemeine Didaktik'),(57,'Arbeitsgruppe Weiterbildung und Bildungsmanagement'),(58,'Arbeitsgruppe Pädagogische Diagnose und Beratung'),(59,'Arbeitsgruppe Soziale Arbeit'),(60,'Arbeitsgruppe Medienpädagogik, Forschungsmethoden und Jugendforschung'),(61,'Arbeitsgruppe Migrationspädagogik und Kulturarbeit'),(62,'Fakultät für Geschichtswissenschaft, Philosophie und Theologie'),(63,'Abteilung Geschichtswissenschaft'),(64,'Arbeitsbereich Geschichte des 19. und 20. Jahrhunderts'),(65,'Alte Geschichte'),(66,'Geschichte des Mittelalters und der Frühen Neuzeit'),(67,'Geschlechtergeschichte'),(68,'Geschichte moderner Gesellschaften'),(69,'Historische Politikforschung'),(70,'Iberische und lateinamerikanische Geschichte'),(71,'Osteuropäische Geschichte'),(72,'Sozialgeschichte'),(73,'Wirtschaftsgeschichte'),(74,'Zeitgeschichte'),(75,'Geschichte als Beruf'),(76,'Abteilung Philosophie'),(77,'Theoretische Philosophie'),(78,'Philosophie des Geistes'),(79,'Wissenschaftsphilosophie'),(80,'Sprachphilosophie'),(81,'Erkenntnistheorie'),(82,'Praktische Philosophie'),(83,'Politische Philosophie'),(84,'Ethik'),(85,'Handlungstheorie'),(86,'Rechtsphilosophie'),(87,'Abteilung Theologie'),(88,'Bibelwissenschaft (Altes/Neues Testament)'),(89,'Systematische Theologie und Kirchengeschichte'),(90,'Religionspädagogik'),(91,'Fakultät für Gesundheitswissenschaften'),(92,'Arbeitsgruppe Sozialepidemiologie und Gesundheitssystemgestaltung'),(93,'Arbeitsgruppe Biomedizinische Grundlagen und Bevölkerungsmedizin | Gesundheitslabor | MSE'),(94,'Arbeitsgruppe Epidemiologie & International Public Health'),(95,'Arbeitsgruppe Prävention und Gesundheitsförderung'),(96,'Arbeitsgruppe Gesundheitsökonomie und Gesundheitsmanagement'),(97,'Arbeitsgruppe Versorgungsforschung und Pflegewissenschaft'),(98,'Arbeitsgruppe Umwelt und Gesundheit'),(99,'Arbeitsgruppe Demografie und Gesundheit'),(100,'Fakultät für Linguistik und Literaturwissenschaft'),(101,'Experimentelle Neurolinguistik'),(102,'Texttechnologie'),(103,'Theoretische Linguistik'),(104,'Abteilung Kunst und Musik'),(105,'Fakultät für Mathematik'),(106,'SFB 701 \"Spektrale Strukturen und topologische Methoden in der Mathematik\"'),(107,'Research Centre for Mathematical Modelling'),(108,'Representations of Finite Dimensional Algebras'),(109,'Arbeitsgruppe Geometrie und Topologie'),(110,'Graduiertenkolleg \"Stochastics and Real World Models\"'),(111,'Arbeitsgemeinschaft Numerische Analysis Dynamischer Systeme'),(112,'Math. Statistik und Wahrscheinlichkeitstheorie'),(113,'Arbeitsgruppe Stochastische Analysis'),(114,'Arbeitsgruppe Information & Komplexität'),(115,'Institut für Didaktik der Mathematik'),(116,'Fakultät für Physik'),(117,'Arbeitsgruppe Experimentalphysik'),(118,'Supramolekulare Systeme, Oberflächen und Cluster'),(119,'Molekül- und Oberflächenphysik'),(120,'Dünne Schichten & Nanostrukturen'),(121,'Angewandte Laserphysik & Laserspektroskopie'),(122,'Biophysik und angewandte Nanowissenschaften'),(123,'Arbeitsgruppe Theoretische Physik'),(124,'Hochenergiephysik'),(125,'Astroteilchenphysik und Kosmologie'),(126,'Computersimulationen und Schwerionenphysik'),(127,'Elementarteilchen und Quantenfelder'),(128,'Mathematische Physik'),(129,'Theorie der Kondensierten Materie'),(130,'Arbeitsgruppe Physik und ihre Didaktik'),(131,'Fakultät für Psychologie und Sportwissenschaft'),(132,'Abteilung Psychologie'),(133,'Arbeitseinheit Allgemeine Psychologie I'),(134,'Arbeitseinheit Allgemeine Psychologie II'),(135,'Arbeitseinheit Entwicklungspsychologie'),(136,'Arbeitseinheit Differentielle Psychologie'),(137,'Arbeitseinheit Sozialpsychologie'),(138,'Arbeitseinheit Methodenlehre'),(139,'Arbeitseinheit Klinische Kinder- und Jugendlichenpsychologie und Psychotherapie'),(140,'Arbeitseinheit Klinische Psychologie/Rehabilitation'),(141,'Arbeitseinheit Pädagogische Psychologie'),(142,'Arbeitseinheit Arbeits- und Organisationspsychologie'),(143,'Arbeitseinheit Klinische Psychologie und Psychotherapie'),(144,'Arbeitseinheit Psychologie der Bildung und Erziehung'),(145,'Arbeitseinheit Entwicklung und Erziehung'),(146,'Arbeitseinheit Physiologische Psychologie'),(147,'Abteilung Sportwissenschaft'),(148,'Arbeitsbereich Sportmedizin - \"Gesundheit und Training\"'),(149,'Arbeitsbereich \"Neurokognition und Bewegung\" - Biomechanik'),(150,'Arbeitsbereich \"Sport und Gesellschaft\"'),(151,'Arbeitsbereich \"Sport und Erziehung\"'),(152,'Arbeitsbereich \"Sport und Wirtschaft\"'),(153,'Fakultät für Rechtswissenschaft'),(154,'Institute'),(155,'Institut für Anwalts- und Notarrecht'),(156,'IWB - Institut für Wirtschaftsrecht'),(157,'Institut für Rechtstatsachenforschung und Kriminalpolitik'),(158,'Forschungsstelle Reiserecht'),(159,'Centrum für Europäische Rechtspraxis (CERP)'),(160,'Institut für Arbeit und sozialen Schutz (IAsS)'),(161,'Projekte'),(162,'Staatsanwaltschaftliche und polizeiliche Ermittlungstätigkeit im Bereich der Wirtschaftskriminalität'),(163,'Bielefelder Kompaktkurs'),(164,'Europa Intensiv'),(165,'Bielefelder Verfahrenstage'),(166,'Projekt Deutsche Verfassungsurkunden'),(167,'Fakultät für Soziologie'),(168,'Arbeitsbereich Theoretische Soziologie'),(169,'Arbeitsbereich Methoden'),(170,'Arbeitsbereich Organisation'),(171,'Arbeitsbereich Politik und Gesellschaft'),(172,'Arbeitsbereich Sozialstruktur, Wirtschaft und Arbeit'),(173,'Arbeitsbereich Transnationalisierung und Entwicklung'),(174,'Arbeitsbereich Wissenschaft, Technik,Medien'),(175,'Arbeitsbereich Gender'),(176,'Arbeitsbereich Didaktik der Sozialwissenschaften'),(177,'Technische Fakultät'),(178,'Arbeitsgruppen'),(179,'Arbeitsgruppen der Biotechnologie'),(180,'Fermentationstechnik'),(181,'Zellkulturtechnik'),(182,'Zelluläre Genetik'),(183,'Arbeitsgruppen der Informatik'),(184,'Angewandte Informatik'),(185,'Angewandte Neuroinformatik'),(186,'Bioinformatik und Medizinische Informatik'),(187,'Biomathematik und Theoretische Bioinformatik'),(188,'Computergrafik'),(189,'Genominformatik'),(190,'Neuroinformatik'),(191,'Rechnernetze und Verteilte Systeme'),(192,'Praktische Informatik'),(193,'Technische Informatik'),(194,'Wissensbasierte Systeme'),(195,'Nachwuchsgruppen'),(196,'Mechatronik Biomimetischer Aktuatoren (ELAN-Projekt)'),(197,'Combinatorial Search Algorithms in Bioinformatics'),(198,'Graduiertenkollegs'),(199,'Aufgabenorientierte Kommunikation'),(200,'Strukturbildungsprozesse\" im Forschungsschwerpunkt Mathematisierung'),(201,'Beteiligung an Sonderforschungsbereichen'),(202,'SFB 673: Alignment in Communication'),(203,'SFB 360: Situierte Künstliche Kommunikatoren'),(204,'Beteiligung an Forschungseinrichtungen'),(205,'Center for Biotechnlology (CeBiTec)'),(206,'Research Institute for Cognition and Robotics (CoR-Lab)'),(207,'Exzellenzcluster EXC 277: Cognitive Interaction Technology (Citec)'),(208,'Fakultät für Wirtschaftswissenschaften'),(209,'Betriebswirtschaftslehre'),(210,'BWL Accounting, Taxes, Finance'),(211,'BWL Betriebliche Steuerlehre'),(212,'BWL Controlling & Produktionswirtschaft'),(213,'BWL Finanzwirtschaft'),(214,'Betriebswirtschaftslehre : Marketing'),(215,'BWL Organisation, Personal und Unternehmungsführung'),(216,'BWL Unternehmensrechnung und Rechnungslegung'),(217,'Statistik / Ökonometrie / Informatik'),(218,'Angew. Informatik'),(219,'Ökonometrie u. Statistik'),(220,'Statistik'),(221,'Volkswirtschaftslehre'),(222,'VWL Quantitative Wirtschaftspolitik'),(223,'VWL Volkswirtschaftspolitik'),(224,'VWL Wirtschaftspolitik'),(225,'VWL Wirtschaftstheorie'),(226,'VWL Wirtschaftstheorie II'),(227,'Institut für Mathematische Wirtschaftsforschung');
/*!40000 ALTER TABLE `collections_contents_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections_structure_1`
--

CREATE TABLE `collections_structure_1` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `collections_id` int(10) unsigned NOT NULL,
  `left` int(10) unsigned NOT NULL,
  `right` int(10) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `fk_collections_structure_collections_contents_1` (`collections_id`),
  CONSTRAINT `fk_collections_structure_collections_contents_1` FOREIGN KEY (`collections_id`) REFERENCES `collections_contents_1` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collections_structure_1`
--

LOCK TABLES `collections_structure_1` WRITE;
/*!40000 ALTER TABLE `collections_structure_1` DISABLE KEYS */;
INSERT INTO `collections_structure_1` VALUES (1,1,1,460,0),(2,2,2,85,1),(3,3,3,22,1),(4,4,4,5,1),(5,5,6,7,1),(6,6,8,9,1),(7,7,10,11,1),(8,8,12,13,1),(9,9,14,15,1),(10,10,16,17,1),(11,11,18,19,1),(12,12,20,21,1),(13,13,23,34,1),(14,14,24,25,1),(15,15,26,27,1),(16,16,28,29,1),(17,17,30,31,1),(18,18,32,33,1),(19,19,35,44,1),(20,20,36,37,1),(21,21,38,39,1),(22,22,40,41,1),(23,23,42,43,1),(24,24,45,50,1),(25,25,46,47,1),(26,26,48,49,1),(27,27,51,62,1),(28,28,52,53,1),(29,29,54,55,1),(30,30,56,57,1),(31,31,58,59,1),(32,32,60,61,1),(33,33,63,84,1),(34,34,64,69,1),(35,35,65,66,1),(36,36,67,68,1),(37,37,70,73,1),(38,38,71,72,1),(39,39,74,81,1),(40,40,75,76,1),(41,41,77,78,1),(42,42,79,80,1),(43,43,82,83,1),(44,44,86,99,1),(45,45,87,88,1),(46,46,89,90,1),(47,47,91,92,1),(48,48,93,94,1),(49,49,95,96,1),(50,50,97,98,1),(51,51,100,121,1),(52,52,101,102,1),(53,53,103,104,1),(54,54,105,106,1),(55,55,107,108,1),(56,56,109,110,1),(57,57,111,112,1),(58,58,113,114,1),(59,59,115,116,1),(60,60,117,118,1),(61,61,119,120,1),(62,62,122,179,1),(63,63,123,148,1),(64,64,124,125,1),(65,65,126,127,1),(66,66,128,129,1),(67,67,130,131,1),(68,68,132,133,1),(69,69,134,135,1),(70,70,136,137,1),(71,71,138,139,1),(72,72,140,141,1),(73,73,142,143,1),(74,74,144,145,1),(75,75,146,147,1),(76,76,149,170,1),(77,77,150,159,1),(78,78,151,152,1),(79,79,153,154,1),(80,80,155,156,1),(81,81,157,158,1),(82,82,160,169,1),(83,83,161,162,1),(84,84,163,164,1),(85,85,165,166,1),(86,86,167,168,1),(87,87,171,178,1),(88,88,172,173,1),(89,89,174,175,1),(90,90,176,177,1),(91,91,180,197,1),(92,92,181,182,1),(93,93,183,184,1),(94,94,185,186,1),(95,95,187,188,1),(96,96,189,190,1),(97,97,191,192,1),(98,98,193,194,1),(99,99,195,196,1),(100,100,198,207,1),(101,101,199,200,1),(102,102,201,202,1),(103,103,203,204,1),(104,104,205,206,1),(105,105,208,229,1),(106,106,209,210,1),(107,107,211,212,1),(108,108,213,214,1),(109,109,215,216,1),(110,110,217,218,1),(111,111,219,220,1),(112,112,221,222,1),(113,113,223,224,1),(114,114,225,226,1),(115,115,227,228,1),(116,116,230,259,1),(117,117,231,242,1),(118,118,232,233,1),(119,119,234,235,1),(120,120,236,237,1),(121,121,238,239,1),(122,122,240,241,1),(123,123,243,256,1),(124,124,244,251,1),(125,125,245,246,1),(126,126,247,248,1),(127,127,249,250,1),(128,128,252,253,1),(129,129,254,255,1),(130,130,257,258,1),(131,131,260,303,1),(132,132,261,290,1),(133,133,262,263,1),(134,134,264,265,1),(135,135,266,267,1),(136,136,268,269,1),(137,137,270,271,1),(138,138,272,273,1),(139,139,274,275,1),(140,140,276,277,1),(141,141,278,279,1),(142,142,280,281,1),(143,143,282,283,1),(144,144,284,285,1),(145,145,286,287,1),(146,146,288,289,1),(147,147,291,302,1),(148,148,292,293,1),(149,149,294,295,1),(150,150,296,297,1),(151,151,298,299,1),(152,152,300,301,1),(153,153,304,331,1),(154,154,305,318,1),(155,155,306,307,1),(156,156,308,309,1),(157,157,310,311,1),(158,158,312,313,1),(159,159,314,315,1),(160,160,316,317,1),(161,161,319,330,1),(162,162,320,321,1),(163,163,322,323,1),(164,164,324,325,1),(165,165,326,327,1),(166,166,328,329,1),(167,167,332,351,1),(168,168,333,334,1),(169,169,335,336,1),(170,170,337,338,1),(171,171,339,340,1),(172,172,341,342,1),(173,173,343,344,1),(174,174,345,346,1),(175,175,347,348,1),(176,176,349,350,1),(177,177,352,419,1),(178,178,353,392,1),(179,179,354,361,1),(180,180,355,356,1),(181,181,357,358,1),(182,182,359,360,1),(183,183,362,385,1),(184,184,363,364,1),(185,185,365,366,1),(186,186,367,368,1),(187,187,369,370,1),(188,188,371,372,1),(189,189,373,374,1),(190,190,375,376,1),(191,191,377,378,1),(192,192,379,380,1),(193,193,381,382,1),(194,194,383,384,1),(195,195,386,391,1),(196,196,387,388,1),(197,197,389,390,1),(198,198,393,402,1),(199,199,394,395,1),(200,200,396,397,1),(201,40,398,399,1),(202,41,400,401,1),(203,201,403,408,1),(204,202,404,405,1),(205,203,406,407,1),(206,204,409,418,1),(207,205,410,411,1),(208,206,412,413,1),(209,207,414,415,1),(210,107,416,417,1),(211,208,420,459,1),(212,209,421,436,1),(213,210,422,423,1),(214,211,424,425,1),(215,212,426,427,1),(216,213,428,429,1),(217,214,430,431,1),(218,215,432,433,1),(219,216,434,435,1),(220,217,437,444,1),(221,218,438,439,1),(222,219,440,441,1),(223,220,442,443,1),(224,221,445,456,1),(225,222,446,447,1),(226,223,448,449,1),(227,224,450,451,1),(228,225,452,453,1),(229,226,454,455,1),(230,227,457,458,1);
/*!40000 ALTER TABLE `collections_structure_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections_replacement_1`
--

CREATE TABLE `collections_replacement_1` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `collections_id` int(10) unsigned NOT NULL,
  `replacement_for_id` int(10) unsigned default NULL,
  `replacement_by_id` int(10) unsigned default NULL,
  `current_replacement_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_link_collections_1` (`collections_id`),
  KEY `fk_link_collections_replacement_for_1` (`replacement_for_id`),
  KEY `fk_link_collections_replacement_by_1` (`replacement_by_id`),
  KEY `fk_link_collections_current_replacement_1` (`current_replacement_id`),
  CONSTRAINT `fk_link_collections_1` FOREIGN KEY (`collections_id`) REFERENCES `collections_contents_1` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_link_collections_replacement_for_1` FOREIGN KEY (`replacement_for_id`) REFERENCES `collections_contents_1` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_link_collections_replacement_by_1` FOREIGN KEY (`replacement_by_id`) REFERENCES `collections_contents_1` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_link_collections_current_replacement_1` FOREIGN KEY (`current_replacement_id`) REFERENCES `collections_contents_1` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `link_documents_collections_1`
--

CREATE TABLE `link_documents_collections_1` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `collections_id` int(11) unsigned NOT NULL,
  `documents_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_link_documents_collections_collections_contents_1` (`collections_id`),
  KEY `fk_link_documents_collections_documents_1` (`documents_id`),
  CONSTRAINT `fk_link_documents_collections_collections_contents_1` FOREIGN KEY (`collections_id`) REFERENCES `collections_contents_1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_link_documents_collections_documents_1` FOREIGN KEY (`documents_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


