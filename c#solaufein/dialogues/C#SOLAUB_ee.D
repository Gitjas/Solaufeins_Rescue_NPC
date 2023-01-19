/* Solaufein - Dorn */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_DornBanter","GLOBAL",0)
InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB dorn_01
@1800 DO ~SetGlobal("C#Solaufein_DornBanter","GLOBAL",1)~
== BDORN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1801
== BDORN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1801
== C#SOLAUB @1802
EXIT




/* Solaufein - Hexxat (nach Vampirverwandlung) */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_HexxatBanter","GLOBAL",0)
InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN C#SOLAUB hexxat_01
@1803 DO ~SetGlobal("C#Solaufein_HexxatBanter","GLOBAL",1)~
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1804
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1804
== C#SOLAUB @1805
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1823
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1823
== C#SOLAUB @1824
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1825
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1825
== C#SOLAUB @1826
= @1827
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1828
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1828
== C#SOLAUB @845
EXIT

/* Solaufein - Neera */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_NeeraBanter","GLOBAL",0)
InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN C#SOLAUB neera_01
@1872 DO ~SetGlobal("C#Solaufein_NeeraBanter","GLOBAL",1)~
== BNeera IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1873
== BNeera25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1873 
== C#SOLAUB @1874
== BNeera IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1875
== BNeera25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1875
== C#SOLAUB @1876
== BNeera IF ~Kit(Player1,WILDMAGE) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1877
== BNeera25 IF ~Kit(Player1,WILDMAGE) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1877
== C#SOLAUB IF ~Kit(Player1,WILDMAGE)~ THEN @1878
EXIT

/* Solaufein - Rasaad */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_RasaadBanterUD","GLOBAL",1)
InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN C#SOLAUB rasaad_01
@1895 DO ~SetGlobal("C#Solaufein_RasaadBanterUD","GLOBAL",2)~
== C#SolauB IF ~!Class(Player1,MONK)~ THEN @1896
== C#SolauB IF ~Class(Player1,MONK)~ THEN @1897
== BRASAAD IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1898
== BRASAA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1898
== C#SolauB @1899
= @1900
== BRASAAD IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1901
== BRASAA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1901
== C#SolauB @1902
EXIT


/* Wilson */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_WilsonBanter","GLOBAL",0)
InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN C#SOLAUB wilson_01
@1829 DO ~SetGlobal("C#Solaufein_WilsonBanter","GLOBAL",1)~
== BWILSON IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN #79174 /* ~Growl?~ */
== BWILSO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN #79174 /* ~Growl?~ */
== C#SOLAUB @1830
EXIT



/* Solaufein - Dorn */
CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_DornBanter","GLOBAL",1)
InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB dorn_02
@1806 DO ~SetGlobal("C#Solaufein_DornBanter","GLOBAL",2)~
== BDORN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1807
== BDORN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1807
== C#SOLAUB @1808
== BDORN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1809
== BDORN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1809
== C#SOLAUB @1810
EXIT



/* Solaufein - Hexxat (nach Vampirverwandlung) */
CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_HexxatBanter","GLOBAL",1)
InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN C#SOLAUB hexxat_02
@1811 DO ~SetGlobal("C#Solaufein_HexxatBanter","GLOBAL",2)~
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1812
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1812
== C#SOLAUB @1813
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1814
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1814
EXIT



/* Solaufein - Rasaad */
CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_RasaadBanter","GLOBAL",0)
InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN C#SOLAUB rasaad_02
@1910 DO ~SetGlobal("C#Solaufein_RasaadBanter","GLOBAL",1)~
== BRASAAD IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1911
== BRASAA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1911
== C#SolauB @1912
EXIT


/* Solaufein - Neera */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_NeeraBanter","GLOBAL",1)
InParty("Neera") 
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN BNeera neera_02
@1879 DO ~SetGlobal("C#Solaufein_NeeraBanter","GLOBAL",2)~
END
IF ~~ THEN EXTERN C#SOLAUJ neera_02

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_NeeraBanter","GLOBAL",1)
InParty("Neera") 
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN BNeera25 neera_02
@1879 DO ~SetGlobal("C#Solaufein_NeeraBanter","GLOBAL",2)~
END
IF ~~ THEN EXTERN C#SOLAUJ neera_02


CHAIN
IF ~~ THEN C#SOLAUJ neera_02
@1880
== BNeera IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1881
== BNeera25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1881
== C#SOLAUJ @1882
== BNeera IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1883
== BNeera25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1883
== C#SOLAUJ @1884
EXIT


/* Wilson */
CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_WilsonBanter","GLOBAL",1)
InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN C#SOLAUB wilson_02
@1831 DO ~SetGlobal("C#Solaufein_WilsonBanter","GLOBAL",2)~
== C#SOLAUB @1832
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @1833
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @1833
== BWILSON IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN #79174 /* ~Growl?~ */
== BWILSO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN #79174 /* ~Growl?~ */
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @1834
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @1834
== C#SOLAUB @1835
== BWILSON IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN #87157 /* ~ROAR! Growl! Roar, roar.~ */
== BWILSO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN #87157 /* ~ROAR! Growl! Roar, roar.~ */
== C#SOLAUB @1836
== BCERND IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @1837
== BCERND25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @1837
== C#SOLAUB IF ~InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @1838
== C#SOLAUB @1839
== BWILSON IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN #79217 /* ~ROAR!~ */
== BWILSO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN #79217 /* ~ROAR!~ */
== C#SOLAUB @1840
EXIT



/* Solaufein - Rasaad */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_RasaadBanter","GLOBAL",1)
InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN BRASAAD rasaad_03
@1913 DO ~SetGlobal("C#Solaufein_RasaadBanter","GLOBAL",2)~
END
IF ~~ THEN EXTERN C#SOLAUJ rasaad_03

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_RasaadBanter","GLOBAL",1)
InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN BRASAA25 rasaad_03
@1913 DO ~SetGlobal("C#Solaufein_RasaadBanter","GLOBAL",2)~
END
IF ~~ THEN EXTERN C#SOLAUJ rasaad_03

CHAIN
IF ~~ THEN C#SOLAUJ rasaad_03
@1914
== BRASAAD IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1915
== BRASAA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1915
== C#SOLAUJ @1916
EXIT


/* Solaufein - Neera */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_NeeraBanter","GLOBAL",2)
InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN C#SOLAUB neera_03
@1885 DO ~SetGlobal("C#Solaufein_NeeraBanter","GLOBAL",3)~
== BNeera IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1886
== BNeera25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1886
== C#SOLAUB @1887
== BNeera IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1888
== BNeera25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1888
EXIT




/* Wilson */
CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_WilsonBanter","GLOBAL",2)
InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN C#SOLAUB wilson_03
@1841 DO ~SetGlobal("C#Solaufein_WilsonBanter","GLOBAL",3)~
== C#SOLAUB @1842
== BWILSON IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN #102276 /* ~Snort snrff roar!~ */
== BWILSO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN #102276 /* ~Snort snrff roar!~ */
== C#SOLAUB @1843
EXIT



/* Solaufein - Neera ToB */

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_NeeraBanter","GLOBAL",3)
Global("C#Solaufein_NeeraBanterToB","GLOBAL",0)
InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN C#SOLAUB neera_04
@1889 DO ~SetGlobal("C#Solaufein_NeeraBanterToB","GLOBAL",1)~
== BNeera25 @1890
= @1891
== C#SOLAUB @1892
EXIT



/* Solaufein - Rasaad ToB */
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_RasaadBanter","GLOBAL",2)
Global("C#Solaufein_RasaadBanterToB","GLOBAL",0)
InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN C#SOLAUB rasaad_tob
@1917 DO ~SetGlobal("C#Solaufein_RasaadBanterToB","GLOBAL",1)~
== BRASAA25 @1918
== C#SolauB @1919
== BRASAA25 @1920 DO ~FadeToColor([20.0],0)
	Wait(2)
	FadeFromColor([20.0],0)~
== BRASAA25 @1921
== C#SolauB @1922
== BRASAA25 @1923
== C#SolauB @1924
== BRASAA25 @1925
== C#SolauB @1926
EXIT




/* Solaufein - Dorn ToB */
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_DornBanter","GLOBAL",2)
Global("C#Solaufein_DornBanterToB","GLOBAL",0)
InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB dorn_02
@1903 DO ~SetGlobal("C#Solaufein_DornBanterToB","GLOBAL",1)~
== BDORN25 @1904
== C#SOLAUB @1905
== BDORN25 @1906
== C#SOLAUB @1907
== BDORN25 @1908
== C#SOLAUB @1909
EXIT


/* Wilson - ToB only */
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_WilsonBanter","GLOBAL",3)
Global("C#Solau_WilsonBanterToB","GLOBAL",0)
InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN C#SOLAUB wilson_tob
@1893 DO ~SetGlobal("C#Solau_WilsonBanterToB","GLOBAL",1)~
== BWILSO25 #102276 /* ~Snort snrff roar!~ */
== C#SOLAUB @1894
EXIT



/* Solaufein - Hexxat ToB only */
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_HexxatBanter","GLOBAL",2)
Global("C#Solaufein_HexxatBanterToB","GLOBAL",0)
InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN C#SOLAUB hexxat_03
@1820 DO ~SetGlobal("C#Solaufein_HexxatBanterToB","GLOBAL",1)~
== BHEXXA25 @1821
== C#SOLAUB @1822
EXIT
