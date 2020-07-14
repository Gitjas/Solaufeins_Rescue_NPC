

APPEND C#SOLAUJ

IF ~IsGabber(Player1) GlobalGT("C#Solaufein_Gruebelt","GLOBAL",0)
!Global("C#Solaufein_Gruebelt","GLOBAL",2)~ THEN gruebeln_1
SAY @1372
IF ~~ THEN DO ~SetGlobal("C#Solaufein_Gruebelt","GLOBAL",2)~ EXIT
END



/*-----------------*/

IF ~IsGabber(Player1) Global("C#Solaufein_Gruebelt","GLOBAL",2)~ THEN gruebeln_2
SAY @1373
++ @1374 + gruebeln_03 
++ @1375 + gruebeln_03 
++ @1376 + gruebeln_01
++ @1377 + gruebeln_04 
++ @1378 + gruebeln_06 
END 

IF ~~ THEN gruebeln_01
SAY @1379
++ @1374 + gruebeln_03 
++ @1377 + gruebeln_04 
++ @1380 + gruebeln_02
++ @1378 + gruebeln_06 
END

IF ~~ THEN gruebeln_02
SAY @1381
++ @1374 + gruebeln_03 
++ @1377 + gruebeln_04 
++ @1378 + gruebeln_06 
END

IF ~~ THEN gruebeln_03 
SAY @1382
++ @1383 DO ~SetGlobal("C#Solaufein_Anteilnahme","LOCALS",1) IncrementGlobal("C#Solaufein_Gruebelt","GLOBAL",1)~ + gruebeln_04 
++ @1384 + gruebeln_08
++ @1385 DO 
~SetGlobal("C#Solaufein_Anteilnahme","LOCALS",1) IncrementGlobal("C#Solaufein_Gruebelt","GLOBAL",1)~ + gruebeln_04
++ @1378 + gruebeln_06 
END

IF ~~ THEN gruebeln_04 
SAY @1386
= @1387
++ @383 + gruebeln_07
++ @1388 + gruebeln_05 
++ @1389 + gruebeln_05 
++ @1390 + gruebeln_05 
END

IF ~~ THEN gruebeln_05 
SAY @1391
++ @1392 + gruebeln_06 
++ @1393 + gruebeln_06
++ @1390 + gruebeln_06
END

IF ~~ THEN gruebeln_06 
SAY @1394 
IF ~~ THEN EXIT //No variable change here
END

IF ~~ THEN gruebeln_07
SAY @1395
IF ~~ THEN + gruebeln_05 
END

IF ~~ THEN gruebeln_08
SAY @1396
++ @1383 DO ~SetGlobal("C#Solaufein_Anteilnahme","LOCALS",1) IncrementGlobal("C#Solaufein_Gruebelt","GLOBAL",1)~ + gruebeln_04 
++ @1385 DO 
~SetGlobal("C#Solaufein_Anteilnahme","LOCALS",1) IncrementGlobal("C#Solaufein_Gruebelt","GLOBAL",1)~ + gruebeln_04
++ @1378 + gruebeln_06 
END






/*-----------------*/

IF ~IsGabber(Player1) 
Global("C#Solaufein_Gruebelt","GLOBAL",0)
Global("C#SolauNoScenery","GLOBAL",0)~ THEN BEGIN anrede // from:
  SAY @1397



/* Friendship */


+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("C#SolaufeinBeruehrung","LOCALS",0)~ + @1398 DO ~SetGlobal("C#SolaufeinBeruehrung","LOCALS",1)~ + beruehrung



+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("C#SolaufeinSterbenPID","LOCALS",0)~ + @1399 DO ~SetGlobal("C#SolaufeinSterbenPID","LOCALS",1)~ + sterben_01


+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("C#SolaufeinPIDstellung","LOCALS",0)~ + @1400 DO ~SetGlobal("C#SolaufeinPIDstellung","LOCALS",1)~ + stellung
+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("C#SolaufeinPIDstellung01","LOCALS",0)~ + @1401 DO ~SetGlobal("C#SolaufeinPIDstellung01","LOCALS",1)~ + stellung_01
+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("C#SolaufeinPIDstellung02","LOCALS",0)~ + @1402 DO ~SetGlobal("C#SolaufeinPIDstellung02","LOCALS",1)~ + stellung_02
+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("C#SolaufeinPIDstellung03","LOCALS",0)~ + @1403 DO ~SetGlobal("C#SolaufeinPIDstellung03","LOCALS",1)~ + stellung_03


+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("C#SolauRomanceEmpfinden","LOCALS",0)~ + @1404 DO ~SetGlobal("C#SolauRomanceEmpfinden","LOCALS",1)~ + empfinden


+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("C#SolauPIDVorbilder","LOCALS",0)~ + @1405 + vorbilder

+ ~Global("SolaufeinSvA_Hoelle","LOCALS",1)
OR(7)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")
AreaCheck("AR2906")~ + @1406 DO ~SetGlobal("SolaufeinSvA_Hoelle","LOCALS",2)~ + hoelle



/* Questions to the time in Ust Natha / as drow */

+ ~OR(6)
Global("C#Solaufeinirenicus","LOCALS",0) Global("C#Solaufeinstellung_04","LOCALS",0) 
Global("C#Solaufeindrinnen1","LOCALS",0) Global("C#Solaufeindrinnen2","LOCALS",0) 
Global("C#Solaufeindrinnen3","LOCALS",0) Global("c#solaufein_PhaerePID","LOCALS",0)~ + @1407 + ust_natha


/* Reactions to what Solaufein said or did */


+ ~Global("C#Solaufein_Quest","GLOBAL",6)~ + @1866 /* ~Oh, Drizzt, can I have some of your hair, too?~ */ DO ~SetGlobal("C#Solaufein_Quest","GLOBAL",7)~ + drizzt_hair
+ ~Global("C#Solaufein_Quest","GLOBAL",6)~ + @1867 /* ~I surely hope a scene like these Drizzt admirers will not happen again.~ */ DO ~SetGlobal("C#Solaufein_Quest","GLOBAL",7)~ + drizzt_hair

+ ~Global("C#Solau_CarrasOffer","GLOBAL",3)~ + @1869 /* ~This Drizzt-hair fencing is hilarious. You could have made some easy gold with it!~ */ DO ~SetGlobal("C#Solau_CarrasOffer","GLOBAL",4)~ + drizzt_hair_tob
+ ~Global("C#Solau_CarrasOffer","GLOBAL",3)~ + @1870 /* ~Thank you for not trading with that smuggler. Even if it's only small sums, I do not appreciate people being conned.~ */ DO ~SetGlobal("C#Solau_CarrasOffer","GLOBAL",4)~ + drizzt_hair_tob

+ ~Global("C#SolaufeinEier","GLOBAL",2)~ + @1408 DO ~SetGlobal("C#SolaufeinEier","GLOBAL",3)~ + eier
+ ~Global("C#SolaufeinEier","GLOBAL",2)~ + @1935 DO ~SetGlobal("C#SolaufeinEier","GLOBAL",3)~ + eier_01

+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("RE_SolaufeinSex","GLOBAL",1)~ + @1409 + dienste_RE

+ ~Global("C#SolaufeinFriends","GLOBAL",1) Global("RE_SolaufeinFlirt","GLOBAL",1) !Global("RE_SolaufeinSex","GLOBAL",1)~ + @1409 + dienste_RE_flirt

+ ~Global("C#SolaufeinFriends","GLOBAL",1) !Global("RE_SolaufeinFlirt","GLOBAL",1) !Global("RE_SolaufeinSex","GLOBAL",1)~ + @1409 + dienste


+ ~Global("C#SolaufeinPID3","GLOBAL",2)~ + @1410 DO ~SetGlobal("C#SolaufeinPID3","GLOBAL",3)~ + ambush

+ ~Global("C#SolaufeinDrizzt","GLOBAL",4)
OR(2)
Global("EilistraeeBeginning","GLOBAL",0)
Global("EilistraeeBeginning","GLOBAL",66)~ + @1411 DO ~SetGlobal("C#SolaufeinDrizzt","GLOBAL",5)~ + suche

+ ~GlobalGT("C#Solaufein_Dialog","GLOBAL",4) Global("C#solaufein_MagicGone","LOCALS",1)~ + @1412 DO ~SetGlobal("C#solaufein_MagicGone","LOCALS",2)~ + magic_gone

+ ~Global("c#solaufein_Magic5","LOCALS",0)
Global("C#solaufein_MagicGone","LOCALS",1)~ + @1513 DO ~SetGlobal("c#solaufein_Magic5","LOCALS",1)~ + magic_gone_05

+ ~Global("c#solaufein_Magic5","LOCALS",0)
Global("C#solaufein_MagicGone","LOCALS",1)~ + @1514 DO ~SetGlobal("c#solaufein_Magic6","LOCALS",1)
SetGlobal("c#solaufein_Magic5","LOCALS",1)
SetGlobal("C#solaufein_MagicGone","LOCALS",2)~ + magic_gone_06



/* Drow lore */

+ ~OR(7)
	Global("SolaufeinPIDDrow1","LOCALS",0)
	Global("SolaufeinDancingPID","LOCALS",0)
	Global("SolaufeinDancingPID2","LOCALS",0)
	Global("SolaufeinPIDDrow2","LOCALS",0)
	Global("SolaufeinPIDDrow3","LOCALS",0)
	Global("SolaufeinPIDDrow4","LOCALS",0)
	Global("SolaufeinPIDDrow5","LOCALS",0)~ + @1413 + drow_frage


/* other questions you can ask him */


+ ~Global("C#SolaufeinLeben","LOCALS",0)~ + @1414 DO ~IncrementGlobal("C#SolaufeinLeben","LOCALS",1)~ + leben_01

+ ~Global("C#SolaufeinLeben","LOCALS",1)~ + @1862 DO ~IncrementGlobal("C#SolaufeinLeben","LOCALS",1)~ + leben_04

+ ~Global("C#SolaufeinLeben","LOCALS",2)~ + @1862 DO ~IncrementGlobal("C#SolaufeinLeben","LOCALS",1)~ + city1

+ ~Global("C#SolaufeinLeben","LOCALS",3)~ + @1862 DO ~IncrementGlobal("C#SolaufeinLeben","LOCALS",1)~ + city2

+ ~Global("C#SolaufeinLeben","LOCALS",4)~ + @1862 DO ~IncrementGlobal("C#SolaufeinLeben","LOCALS",1)~ + leben_02

+ ~Global("C#SolaufeinLeben","LOCALS",5)~ + @1862 DO ~IncrementGlobal("C#SolaufeinLeben","LOCALS",1)~ + leben_03

+ ~Global("C#SolaufeinLeben","LOCALS",6)~ + @1862 DO ~IncrementGlobal("C#SolaufeinLeben","LOCALS",1)~ + leben_05



/* ToB - GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) */

+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("ToBPID_unterwegs","LOCALS",1)
GlobalGT("C#Solau_ElhanGeas","GLOBAL",0)~ + @1415 DO ~SetGlobal("ToBPID_unterwegs","LOCALS",2)~ + unterwegs

+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("ToBPID_unterwegs","LOCALS",1)
Global("C#Solau_ElhanGeas","GLOBAL",0)~ + @1415 DO ~SetGlobal("ToBPID_unterwegs","LOCALS",2)~ + unterwegs_tob_00

+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("ToBPID_unterwegs","LOCALS",0)
Global("C#Solau_ElhanGeas","GLOBAL",0)~ + @1416 DO ~SetGlobal("ToBPID_unterwegs","LOCALS",2)~ + unterwegs_tob


+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("ToBPID_hoelle","LOCALS",0)~ + @1417 DO ~SetGlobal("ToBPID_hoelle","LOCALS",1)~ + dunkle_hoelle

+ ~GlobalGT("SarevokAlive","GLOBAL",0) Global("C#SolauPIDToB","LOCALS",0)
!AreaCheck("AR5500")~ + @1418 DO ~IncrementGlobal("C#SolauPIDToB","LOCALS",1)~ + sarevok_comment

+ ~Global("C#SolauPIDToB","LOCALS",1) !AreaCheck("AR5500")~ + @1863 DO ~IncrementGlobal("C#SolauPIDToB","LOCALS",1)~ + bhaalkriege

+ ~Global("C#SolauPIDToB","LOCALS",2) !AreaCheck("AR5500")~ + @1863 DO ~IncrementGlobal("C#SolauPIDToB","LOCALS",1)~ + maechtig

+ ~Global("C#SolauPIDToB","LOCALS",3) !AreaCheck("AR5500")~ + @1863 DO ~IncrementGlobal("C#SolauPIDToB","LOCALS",1)~ + powerful

+ ~AreaCheck("AR5500") Global("C#SolauPIDAmke","LOCALS",1)~ + @1863 DO ~SetGlobal("C#SolauPIDAmke","LOCALS",2)~ + amketran

+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",1)~ + @1419 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten_01
+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",2)~ + @1419 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten_02
+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",3)~ + @1419 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten_03
+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",4)~ + @1419 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten_04
+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",5)~ + @1419 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten_05


+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",1)~ + @1697 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten2_01
+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",2)~ + @1697 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten2_02
+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",3)~ + @1697 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten2_03
+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",4)~ + @1697 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten2_04
+ ~TimeOfDay(DAY)
    OR(2)
    AreaType(OUTDOOR)
    AreaType(FOREST)
    Global("C#SolaufeinSchatten","LOCALS",5)~ + @1697 DO ~IncrementGlobal("C#SolaufeinSchatten","LOCALS",1)~ + schatten2_05


//Gesicht verstecken
+ ~Global("C#SolaufeinPIDGesicht","LOCALS",0)~ + @1420 DO ~SetGlobal("C#SolaufeinPIDGesicht","LOCALS",1)~ + gesicht_verstecken
//gesicht nicht verstecken
+ ~Global("C#SolaufeinPIDGesicht","LOCALS",0)~ + @1927 DO ~SetGlobal("C#SolaufeinPIDGesicht","LOCALS",1)~ + gesicht_nicht_verstecken


+ ~!Global("C#SolaufeinFriends","GLOBAL",1)~ + @1421 +  shut_down




/* inventory management.  - if Solaufein is not in party but following as companion he has to join the group so the player has access to the inventory. */

+ ~!InParty(Myself) Global("C#SolauJoined","GLOBAL",2) NumInPartyLT(6)~ + @1851 /* ~Solaufein, come nearer, I need access to your inventory.~ */ DO ~RemoveFamiliar()
SetGlobal("C#SolauJoined","GLOBAL",1) JoinParty()~ EXIT

+ ~!InParty(Myself) Global("C#SolauJoined","GLOBAL",2) NumInParty(6)~ + @1851 /* ~Solaufein, come nearer, I need access to your inventory.~ */ + join


+ ~Global("C#Solaufein_HPAlarm","GLOBAL",0) Global("C#SolauJoined","GLOBAL",2)~ + @1852 /* ~Solaufein, please warn me if your health gets too low in the next fight.~ */ DO ~SetGlobal("C#Solaufein_HPAlarm","GLOBAL",1)~ + hp_alarm
+ ~Global("C#Solaufein_HPAlarm","GLOBAL",1) Global("C#SolauJoined","GLOBAL",2)~ + @1853 /* ~Solaufein, I want you to stop warning me about your health conditions in our fights.~ */ DO ~SetGlobal("C#Solaufein_HPAlarm","GLOBAL",0)~ + hp_alarm

+ ~!Global("C#Solaufein_BanterSpeed","GLOBAL",-1)
Global("C#SolauJoined","GLOBAL",2)~ + @1930 DO ~SetGlobal("C#Solaufein_BanterSpeed","GLOBAL",-1) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_SLOW%)~ + hp_alarm
+ ~!Global("C#Solaufein_BanterSpeed","GLOBAL",1)
Global("C#SolauJoined","GLOBAL",2)~ + @1931 DO ~SetGlobal("C#Solaufein_BanterSpeed","GLOBAL",1) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_FAST%)~ + hp_alarm

+ ~Global("C#Solaufein_BanterSpeed","GLOBAL",-1)
Global("C#SolauJoined","GLOBAL",2)~ + @1932 DO ~SetGlobal("C#Solaufein_BanterSpeed","GLOBAL",0) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_NORMAL%)~ + hp_alarm
+ ~Global("C#Solaufein_BanterSpeed","GLOBAL",1)
Global("C#SolauJoined","GLOBAL",2)~ + @1933 DO ~SetGlobal("C#Solaufein_BanterSpeed","GLOBAL",0) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_NORMAL%)~ + hp_alarm

+ ~Global("C#SolauJoined","GLOBAL",2)~ + @43 + kickout_companion_01

++ @1422 EXIT
END




/* Fot ToB-only (summoned by fate spirit), friendship 
## alle Gesprächsoptionen übertragen?*/

IF ~IsGabber(Player1) 
Global("C#Solaufein_Gruebelt","GLOBAL",0)
Global("C#SolauNoScenery","GLOBAL",1)~ THEN BEGIN anrede_tob // from:
  SAY @1397

+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("ToBPID_hoelle","LOCALS",0)~ + @1417 DO ~SetGlobal("ToBPID_hoelle","LOCALS",1)~ + dunkle_hoelle

+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("ToBPID_unterwegs","LOCALS",0)
Global("C#Solau_ElhanGeas","GLOBAL",0)~ + @1416 DO ~SetGlobal("ToBPID_unterwegs","LOCALS",2)~ + unterwegs_tob

+ ~GlobalGT("SarevokAlive","GLOBAL",0) Global("C#SolauPIDToB","LOCALS",0)
!AreaCheck("AR5500")~ + @1418 DO ~IncrementGlobal("C#SolauPIDToB","LOCALS",1)~ + sarevok_comment

+ ~Global("C#SolauPIDToB","LOCALS",1) !AreaCheck("AR5500")~ + @1863 DO ~IncrementGlobal("C#SolauPIDToB","LOCALS",1)~ + bhaalkriege

+ ~Global("C#SolauPIDToB","LOCALS",2) !AreaCheck("AR5500")~ + @1863 DO ~IncrementGlobal("C#SolauPIDToB","LOCALS",1)~ + maechtig

+ ~Global("C#SolauPIDToB","LOCALS",3) !AreaCheck("AR5500")~ + @1863 DO ~IncrementGlobal("C#SolauPIDToB","LOCALS",1)~ + powerful

+ ~AreaCheck("AR5500") Global("C#SolauPIDAmke","GLOBAL",1)~ + @1864 DO ~SetGlobal("C#SolauPIDAmke","GLOBAL",2)~ + amketran


/* inventory management.  - if Solaufein is not in party but following as companion he has to join the group so the player has access to the inventory. */

+ ~!InParty(Myself) Global("C#SolauJoined","GLOBAL",2) NumInPartyLT(6)~ + @1851 /* ~Solaufein, come nearer, I need access to your inventory.~ */ DO ~RemoveFamiliar()
SetGlobal("C#SolauJoined","GLOBAL",1) JoinParty()~ EXIT

+ ~!InParty(Myself) Global("C#SolauJoined","GLOBAL",2) NumInParty(6)~ + @1851 /* ~Solaufein, come nearer, I need access to your inventory.~ */ + join


+ ~Global("C#Solaufein_HPAlarm","GLOBAL",0) Global("C#SolauJoined","GLOBAL",2)~ + @1852 /* ~Solaufein, please warn me if your health gets too low in the next fight.~ */ DO ~SetGlobal("C#Solaufein_HPAlarm","GLOBAL",1)~ + hp_alarm
+ ~Global("C#Solaufein_HPAlarm","GLOBAL",1) Global("C#SolauJoined","GLOBAL",2)~ + @1853 /* ~Solaufein, I want you to stop warning me about your health conditions in our fights.~ */ DO ~SetGlobal("C#Solaufein_HPAlarm","GLOBAL",0)~ + hp_alarm


+ ~!Global("C#Solaufein_BanterSpeed","GLOBAL",-1)
Global("C#SolauJoined","GLOBAL",2)~ + @1930 DO ~SetGlobal("C#Solaufein_BanterSpeed","GLOBAL",-1) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_SLOW%)~ + hp_alarm
+ ~!Global("C#Solaufein_BanterSpeed","GLOBAL",1)
Global("C#SolauJoined","GLOBAL",2)~ + @1931 DO ~SetGlobal("C#Solaufein_BanterSpeed","GLOBAL",1) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_FAST%)~ + hp_alarm

+ ~Global("C#Solaufein_BanterSpeed","GLOBAL",-1)
Global("C#SolauJoined","GLOBAL",2)~ + @1932 DO ~SetGlobal("C#Solaufein_BanterSpeed","GLOBAL",0) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_NORMAL%)~ + hp_alarm
+ ~Global("C#Solaufein_BanterSpeed","GLOBAL",1)
Global("C#SolauJoined","GLOBAL",2)~ + @1933 DO ~SetGlobal("C#Solaufein_BanterSpeed","GLOBAL",0) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_NORMAL%)~ + hp_alarm

+ ~Global("C#SolauJoined","GLOBAL",2)~ + @43 + kickout_companion_01

++ @1422 EXIT
END
/* --------------------------------- */



IF ~~ THEN kickout_companion_01
SAY @41
IF ~~ THEN DO ~SetGlobal("C#SolauJoined","GLOBAL",0)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL)
ActionOverride("C#Solaufein",SetLeavePartyDialogFile())~ EXIT
END


IF ~~ THEN join
SAY @1854 /* ~With pleasure - if someone else moves away.~ */
IF ~~ THEN DO ~RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("C#SolauJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ THEN hp_alarm
SAY @1855 /* ~As you wish.~ */
IF ~~ THEN EXIT
END




IF ~~ THEN ust_natha
SAY @1423

+ ~Global("C#Solaufeinirenicus","LOCALS",0)~ + @1424 DO ~SetGlobal("C#Solaufeinirenicus","LOCALS",1)~ + irenicus


+ ~Global("C#Solaufeinstellung_04","LOCALS",0)~ + @1425 DO ~SetGlobal("C#Solaufeinstellung_04","LOCALS",1)~ + stellung_04


+ ~Global("C#Solaufeindrinnen1","LOCALS",0)~ + @1426 DO ~SetGlobal("C#Solaufeindrinnen1","LOCALS",1)~ + drinnen_rettung

+ ~Global("C#Solaufeindrinnen2","LOCALS",0)~ + @1427 DO ~SetGlobal("C#Solaufeindrinnen2","LOCALS",1)~ + drinnen_rettung_01

+ ~Global("C#Solaufeindrinnen3","LOCALS",0)~ + @1428 DO ~SetGlobal("C#Solaufeindrinnen3","LOCALS",1)~ + drinnen_rettung_04

+ ~Global("c#solaufein_PhaerePID","LOCALS",0)~ + @1429 + phaere_01

++ @1430 + anrede 
END


IF ~~ THEN drow_frage
SAY @1431

+ ~Global("SolaufeinPIDDrow1","LOCALS",0)~ + @1432 DO ~SetGlobal("SolaufeinPIDDrow1","LOCALS",1)~ + eilistraee

+ ~Global("SolaufeinDancingPID","LOCALS",0)~ + @1433 DO ~SetGlobal("SolaufeinDancingPID","LOCALS",1)~ + dancing

+ ~Global("SolaufeinDancingPID2","LOCALS",0)~ + @1434 DO ~SetGlobal("SolaufeinDancingPID2","LOCALS",1)~ + dancing_03

+ ~Global("SolaufeinPIDDrow2","LOCALS",0)~ + @1435 DO ~SetGlobal("SolaufeinPIDDrow2","LOCALS",1)~ + drow_drider

+ ~Global("SolaufeinPIDDrow3","LOCALS",0)~ + @1436 DO ~SetGlobal("SolaufeinPIDDrow3","LOCALS",1)~ + drow_organisation

+ ~Global("SolaufeinPIDDrow4","LOCALS",0)~ + @1437 DO ~SetGlobal("SolaufeinPIDDrow4","LOCALS",1)~ + drow_evil

+ ~Global("SolaufeinPIDDrow5","LOCALS",0)~ + @1438 DO ~SetGlobal("SolaufeinPIDDrow5","LOCALS",1)~ + drow_familien

++ @1378 + anrede 
END



/* --------------------------------- */

IF ~~ THEN shut_down
SAY @1439
IF ~~ THEN DO ~SetGlobal("C#SolaufeinFriends","GLOBAL",2)~ EXIT
END

IF ~~ THEN drizzt_hair
SAY @1868 /* ~(snorts) Next thing happening will be I being arrested for impostering as Drizzt. Let's go, <CHARNAME> - before the gods decide to play on with this game.~ */
IF ~~ THEN + anrede
END

IF ~~ THEN drizzt_hair_tob
SAY @1871 /* ~I can't believe how far this went! And I didn't even *do* anything! But then... maybe that was the problem. (mutters to himself) Surfacers...~ */
IF ~~ THEN + anrede
END



IF ~~ THEN eier
SAY @1440
= @1441
= @1442
IF ~~ THEN + anrede 
END

IF ~~ THEN eier_01
SAY @1934
IF ~~ THEN + anrede 
END


END //APPEND C#SOLAUJ

CHAIN
IF ~~ THEN C#SOLAUJ vorbilder
@1443
== C#SOLAUJ IF ~OR(2)
Global("EilistraeeBeginning","GLOBAL",0)
Global("EilistraeeBeginning","GLOBAL",66)~ THEN @1444
== C#SOLAUJ IF ~GlobalGT("EilistraeeBeginning","GLOBAL",1)
GlobalLT("EilistraeeBeginning","GLOBAL",66)~ THEN @2750
== C#SOLAUJ @1445
END
IF ~~ THEN + anrede 


APPEND C#SOLAUJ

IF ~~ THEN leben_01
SAY @1446
= @1447
= @1448
IF ~~ THEN + anrede 
END

IF ~~ THEN city1
SAY @1449
=  @1450
= @1451
= @1452
IF ~~ THEN + anrede 
END

IF ~~ THEN city2
SAY @1453
= @1454
= @1455
IF ~~ THEN + anrede 
END



IF ~~ THEN leben_02
SAY @1456
= @1457
= @1458
++ @1459 DO ~SetGlobal("C#Solaufein_Leben2_1","LOCALS",1)~ + leben_02_2
++ @1460 DO ~SetGlobal("C#Solaufein_Leben2_2","LOCALS",1)~ + leben_02_3
++ @1461 DO ~SetGlobal("C#Solaufein_Leben2_3","LOCALS",1)~ + leben_02_1
++ @1462 + leben_02_4
END

IF ~~ THEN leben_02_1
SAY @1463
+ ~Global("C#Solaufein_Leben2_1","LOCALS",1)~ + @1459 DO ~SetGlobal("C#Solaufein_Leben2_1","LOCALS",1)~ + leben_02_2
+ ~Global("C#Solaufein_Leben2_2","LOCALS",1)~ + @1460 DO ~SetGlobal("C#Solaufein_Leben2_2","LOCALS",1)~ + leben_02_3
++ @1462 + leben_02_4
END

IF ~~ THEN leben_02_2
SAY @1464
= @1465
= @1466
+ ~Global("C#Solaufein_Leben2_2","LOCALS",1)~ + @1460 DO ~SetGlobal("C#Solaufein_Leben2_2","LOCALS",1)~ + leben_02_3
+ ~Global("C#Solaufein_Leben2_3","LOCALS",1)~ + @1461 DO ~SetGlobal("C#Solaufein_Leben2_3","LOCALS",1)~ + leben_02_1
++ @1462 + leben_02_4
END

IF ~~ THEN leben_02_3
SAY @1467
+ ~Global("C#Solaufein_Leben2_1","LOCALS",1)~ + @1459 DO ~SetGlobal("C#Solaufein_Leben2_1","LOCALS",1)~ + leben_02_2
+ ~Global("C#Solaufein_Leben2_3","LOCALS",1)~ + @1461 DO ~SetGlobal("C#Solaufein_Leben2_3","LOCALS",1)~ + leben_02_1
++ @1462 + leben_02_4
END

IF ~~ THEN leben_02_4
SAY @1468
IF ~~ THEN + anrede 
END


IF ~~ THEN leben_03
SAY @1469
IF ~~ THEN + anrede
END


IF ~~ THEN leben_04
SAY @1470
IF ~Global("C#SolaufeinFriends","GLOBAL",1)~ THEN + leben_04_0_2
IF ~!Global("C#SolaufeinFriends","GLOBAL",1)~ THEN + leben_04_0_1
END

IF ~~ THEN leben_04_0_1
SAY @1471
+ ~GlobalGT("C#SolauFriendshipCounter","LOCALS",0)~ + @1472 + leben_04_1
+ ~GlobalLT("C#SolauFriendshipCounter","LOCALS",1)~ + @1472 + leben_04_2
++ @1473 + leben_04_3
++ @1474 + leben_04_4
END

IF ~~ THEN leben_04_0_2
SAY @1475
IF ~~ THEN + leben_04_4
END

IF ~~ THEN leben_04_1
SAY @1476
IF ~~ THEN + leben_04_3
END

IF ~~ THEN leben_04_2
SAY @1477
IF ~~ THEN + leben_04_3
END

IF ~~ THEN leben_04_3
SAY @1478
IF ~~ THEN + leben_04_4
END

IF ~~ THEN leben_04_4
SAY @1479
++ @1480 + leben_04_5
++ @1481 + leben_04_6
++ @608 + leben_04_6
END

IF ~~ THEN leben_04_5
SAY @1482
IF ~~ THEN + anrede
END

IF ~~ THEN leben_04_6
SAY @1483
IF ~~ THEN + anrede
END


IF ~~ THEN leben_05
SAY @1484
++ @1485 + leben_05_2
++ @1486 + leben_05_1
++ @1487 + leben_05_2
++ @1488 + leben_05_4
++ @1489 + leben_05_3
++ @608 + anrede
END

IF ~~ THEN leben_05_1
SAY @1490
IF ~~ THEN + leben_05_2
END

IF ~~ THEN leben_05_2
SAY @1491
++ @1489 + leben_05_3
++ @608 + anrede
END

IF ~~ THEN leben_05_3
SAY @802
++ @1492 + leben_05_5
++ @1493 + leben_05_5
+ ~GlobalLT("TalkedToSolar","GLOBAL",2)~ + @1494 + leben_05_5
+ ~GlobalGT("TalkedToSolar","GLOBAL",1)~ + @1495 + leben_05_5
++ @1496 + leben_05_5
END

IF ~~ THEN leben_05_4
SAY @1497
IF ~~ THEN + leben_05_2
END

IF ~~ THEN leben_05_5
SAY @1498
= @1499
++ @1500 + leben_05_9
++ @1501 + leben_05_8
++ @1502 + leben_05_6
++ @1503 + leben_05_7
++ @608 + anrede
END

IF ~~ THEN leben_05_6
SAY @1504
++ @1500 + leben_05_9
++ @1501 + leben_05_8
++ @1503 + leben_05_7
++ @608 + anrede
END

IF ~~ THEN leben_05_7
SAY @1505
++ @1500 + leben_05_9
++ @1501 + leben_05_8
++ @608 + anrede
END

IF ~~ THEN leben_05_8
SAY @1506
IF ~~ THEN + leben_05_9
END

IF ~~ THEN leben_05_9
SAY @1507
IF ~~ THEN + anrede
END







IF ~~ THEN magic_gone
SAY @1508
+ ~Global("c#solaufein_Magic1","LOCALS",0)~ + @1509 DO ~SetGlobal("c#solaufein_Magic1","LOCALS",1)~ + magic_gone_01
+ ~Global("c#solaufein_Magic2","LOCALS",0)~ + @1510 DO ~SetGlobal("c#solaufein_Magic2","LOCALS",1)~ + magic_gone_02
+ ~Global("c#solaufein_Magic3","LOCALS",0)~ + @1511 DO ~SetGlobal("c#solaufein_Magic3","LOCALS",1)~ + magic_gone_03
+ ~Global("c#solaufein_Magic4","LOCALS",0)~ + @1512 DO ~SetGlobal("c#solaufein_Magic4","LOCALS",1)~ + magic_gone_04
++ @1515 + anrede
END


/* ~Wenn es nicht so erbärmlich wäre, könnte ich sogar darüber lachen.~ */

IF ~~ THEN magic_gone_01
SAY @1516
IF ~~ THEN + magic_gone
END

IF ~~ THEN magic_gone_02
SAY @1517
= @1518
IF ~~ THEN + magic_gone
END

IF ~~ THEN magic_gone_03
SAY @1519
IF ~~ THEN + magic_gone
END

IF ~~ THEN magic_gone_04
SAY @1520
IF ~~ THEN + magic_gone
END

IF ~~ THEN magic_gone_05
SAY @1521
= @1522
IF ~~ THEN + anrede
END

IF ~~ THEN magic_gone_06
SAY @1522
IF ~~ THEN + magic_gone
END




IF ~~ THEN drow_organisation
SAY @1523
= @1524
= @1525
= @1526
IF ~~ THEN + drow_frage
END


IF ~~ THEN drow_familien
SAY @1527
= @1528
IF ~~ THEN + drow_frage
END

IF ~~ THEN drow_evil
SAY @1529
= @1530
IF ~~ THEN + drow_frage
END

IF ~~ THEN drow_drider
SAY @1531
= @1532
= @1533
IF ~~ THEN + drow_frage
END


IF ~~ THEN eilistraee
SAY @1534
= @1535
= @1536
++ @1537 + eilistraee_01
++ @1538 + eilistraee_02
++ @1539 + eilistraee_02
END

IF ~~ THEN eilistraee_01
SAY @1540
IF ~~ THEN + eilistraee_03
END

IF ~~ THEN eilistraee_02
SAY @240 
IF ~~ THEN + drow_frage
END

IF ~~ THEN eilistraee_03
SAY @1541
IF ~~ THEN + drow_frage
END




IF ~~ THEN ambush
SAY @1542
= @1543
IF ~~ THEN + anrede
END


IF ~~ THEN hoelle
SAY @1544
= @1545
IF ~~ THEN + anrede
END


IF ~~ THEN drinnen_rettung
SAY @1546
= @1547
IF ~~ THEN + ust_natha
END

IF ~~ THEN drinnen_rettung_01
SAY @1548
++ @1549 + drinnen_rettung_05
++ @1550 + drinnen_rettung_06
++ @1551 + drinnen_rettung_02
END

IF ~~ THEN drinnen_rettung_02
SAY @1552
IF ~~ THEN + ust_natha
END

IF ~~ THEN drinnen_rettung_03
SAY @1553
IF ~~ THEN + ust_natha
END

IF ~~ THEN drinnen_rettung_04
SAY @1554
= @1555
IF ~~ THEN + ust_natha
END

IF ~~ THEN drinnen_rettung_05
SAY @1556
IF ~~ THEN + drinnen_rettung_03
END

IF ~~ THEN drinnen_rettung_06
SAY @1557
IF ~~ THEN + drinnen_rettung_03
END

IF ~~ THEN dienste_RE
SAY @1558
++ @1559 + dienste_RE_01
++ @1560 + dienste_RE_02
++ @1561 + dienste_RE_03
++ @1562 + dienste_RE_03
++ @1563 + dienste_RE_06
++ @1564 + dienste_RE_02
END

IF ~~ THEN dienste_RE_flirt
SAY @1565
++ @1559 + dienste_RE_01
++ @1560 + dienste_RE_02
++ @1566 + dienste_RE_03
++ @1562 + dienste_RE_03
++ @1567 + dienste_RE_06
++ @1564 + dienste_RE_02
END

IF ~~ THEN dienste_RE_01
SAY @1568
IF ~~ THEN + dienste_RE_03
END

IF ~~ THEN dienste_RE_02
SAY @1569
IF ~~ THEN + dienste_RE_03
END

IF ~~ THEN dienste_RE_03
SAY @1570
IF ~Global("RE_SolaufeinFlirt","GLOBAL",1) !Global("RE_SolaufeinSex","GLOBAL",1)~ THEN + dienste_RE_05
IF ~Global("RE_SolaufeinSex","GLOBAL",1)~ THEN + dienste_RE_04
END

IF ~~ THEN dienste_RE_04
SAY @1571
IF ~~ THEN + dienste_RE_05
END

IF ~~ THEN dienste_RE_05
SAY @1572
= @1573
++ @1574 + dienste_RE_06
+ ~Global("RE_SolaufeinSex","GLOBAL",1)~ + @1575 + dienste_RE_06
+ ~Global("RE_SolaufeinSex","GLOBAL",1)~ + @1576 + dienste_RE_06
+ ~!Global("RE_SolaufeinSex","GLOBAL",1)~ + @1577 + dienste_RE_06
++ @1578 + dienste_RE_06
++ @1579 + anrede
END

IF ~~ THEN dienste_RE_06
SAY @1580
= @1581
IF ~~ THEN + dienste
END

IF ~~ THEN dienste
SAY @1582
++ @1583 + dienste_01
++ @1584 + dienste_02
++ @1585 + dienste_02
++ @1586 + dienste_13
++ @1587 + dienste_13
+ ~Global("PhaereInnuendo","GLOBAL",2)~ + @1588 + dienste_14
++ @1579 + anrede
END

IF ~~ THEN dienste_01
SAY @1589
++ @1584 + dienste_02
++ @1585 + dienste_02
++ @1586 + dienste_13
++ @1587 + dienste_13
++ @1579 + anrede
END

IF ~~ THEN dienste_02
SAY @1590
++ @1591 + dienste_03
++ @1592 + dienste_03
++ @1593 + dienste_05
++ @1594 + dienste_05
++ @1579 + anrede
END

IF ~~ THEN dienste_03
SAY @31
IF ~~ THEN + dienste_05
END

IF ~~ THEN dienste_04
SAY @1595
= @1596
++ @1597 + dienste_06
++ @1598 + dienste_06
++ @1599 + dienste_08
++ @1579 + anrede
END

IF ~~ THEN dienste_05
SAY @1600
++ @1601 + dienste_08
++ @1602 + dienste_08
++ @1603 + dienste_04
++ @1579 + anrede
END

IF ~~ THEN dienste_06
SAY @1604
= @1605
++ @1606 + dienste_07
++ @1599 + dienste_08
++ @1579 + anrede
END

IF ~~ THEN dienste_07
SAY @1607
= @1608 
IF ~~ THEN + dienste_08
END

IF ~~ THEN dienste_08
SAY @1609
= @1610
+ ~!Race(Player1,ELF)~ + @1611 + dienste_11
+ ~!Race(Player1,ELF)~ + @1612 + dienste_10
+ ~Race(Player1,ELF)~ + @1613 + dienste_11
+ ~Race(Player1,ELF)~ + @1614 + dienste_10
++ @1615 + dienste_09
++ @1616 + dienste_13
++ @1579 + anrede

END

IF ~~ THEN dienste_09
SAY @1617
IF ~~ THEN + dienste_12
END

IF ~~ THEN dienste_10
SAY @1618
IF ~~ THEN + dienste_11
END

IF ~~ THEN dienste_11
SAY @1619
IF ~~ THEN + dienste_12
END

IF ~~ THEN dienste_12
SAY @1620 
= @1621
= @1622
IF ~~ THEN + anrede
END

IF ~~ THEN dienste_13
SAY @1623
IF ~~ THEN + dienste_12
END

IF ~~ THEN dienste_14
SAY @1624
= @1625
++ @1584 + dienste_02
++ @1585 + dienste_02
++ @1586 + dienste_13
++ @1587 + dienste_13
++ @1579 + anrede
END



IF ~~ THEN suche
SAY @1626
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN + suche_01
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN + suche_02
IF ~Dead("helljon2")~ THEN + anrede
END

IF ~~ THEN suche_01
SAY @1627 
IF ~~ THEN + suche_03
END

IF ~~ THEN suche_02
SAY @1628
IF ~~ THEN + suche_03
END

IF ~~ THEN suche_03
SAY @1629
IF ~~ THEN + anrede
END


IF ~~ THEN dancing
SAY @1630
+ ~OR(2)!TimeOfDay(NIGHT)
!AreaType(OUTDOOR)~ + @1631 + dancing_01
+ ~TimeOfDay(NIGHT)
AreaType(OUTDOOR)~ + @1631 + dancing_02
++ @1430 + drow_frage
END

IF ~~ THEN dancing_01
SAY @1632
++ @1633 + dancing_02
++ @1634 + dancing_02
++ @1635 + dancing_09
END

IF ~~ THEN dancing_02
SAY @1636
++ @1637 + dancing_04
++ @1638 + dancing_04
++ @1639 + dancing_09
++ @1635 + dancing_09
END

IF ~~ THEN dancing_03
SAY @1640
= @1641
IF ~~ THEN + drow_frage
END

IF ~~ THEN dancing_04
SAY @1642
++ @1643 + dancing_05
++ @1644 + dancing_06
++ @1645 + dancing_08
++ @1646 + dancing_05
++ @1639 + dancing_09
++ @1635 + dancing_09
END

IF ~~ THEN dancing_05
SAY @1647
IF ~~ THEN + dancing_08
END

IF ~~ THEN dancing_06
SAY @1648
++ @1649 + dancing_07
++ @1650 + dancing_08
++ @1651 + dancing_08
END

IF ~~ THEN dancing_07
SAY @1652
IF ~~ THEN + dancing_08
END

IF ~~ THEN dancing_08
SAY @1653
++ @1654 + dancing_09
++ @782 + dancing_09
++ @1635 + dancing_09
END

IF ~~ THEN dancing_09
SAY @1655 
IF ~~ THEN + drow_frage
END




IF ~~ THEN phaere_01
SAY @1656
++ @1657 DO ~SetGlobal("c#solaufein_Phaere_1","LOCALS",1)~ + phaere_03
++ @1658 DO ~SetGlobal("c#solaufein_Phaere_2","LOCALS",1)~ + phaere_02
++ @1659 DO ~SetGlobal("c#solaufein_Phaere_3","LOCALS",1)~ + phaere_04
++ @1660 DO ~SetGlobal("c#solaufein_Phaere_4","LOCALS",1)~ + phaere_06
++ @1661 DO ~SetGlobal("c#solaufein_PhaerePID","LOCALS",1)~ + phaere_05
END

IF ~~ THEN phaere_02
SAY @1662
= @1663
+ ~!Global("c#solaufein_Phaere_1","LOCALS",1)~ + @1657 DO ~SetGlobal("c#solaufein_Phaere_1","LOCALS",1)~ + phaere_03
+ ~Global("c#solaufein_Phaere_3","LOCALS",1)~ + @1659 DO ~SetGlobal("c#solaufein_Phaere_3","LOCALS",1)~ + phaere_04
+ ~Global("c#solaufein_Phaere_4","LOCALS",1)~ + @1660 DO ~SetGlobal("c#solaufein_Phaere_4","LOCALS",1)~ + phaere_06
++ @1661 DO ~SetGlobal("c#solaufein_PhaerePID","LOCALS",1)~ + phaere_05
END

IF ~~ THEN phaere_03
SAY @1664
+ ~Global("c#solaufein_Phaere_2","LOCALS",1)~ + @1658 DO ~SetGlobal("c#solaufein_Phaere_2","LOCALS",1)~ + phaere_02
+ ~Global("c#solaufein_Phaere_3","LOCALS",1)~ + @1659 DO ~SetGlobal("c#solaufein_Phaere_3","LOCALS",1)~ + phaere_04
+ ~Global("c#solaufein_Phaere_4","LOCALS",1)~ + @1660 DO ~SetGlobal("c#solaufein_Phaere_4","LOCALS",1)~ + phaere_06
++ @1661 DO ~SetGlobal("c#solaufein_PhaerePID","LOCALS",1)~ + phaere_05
END

IF ~~ THEN phaere_04
SAY @1665
= @1666
= @1667
+ ~!Global("c#solaufein_Phaere_1","LOCALS",1)~ + @1657 DO ~SetGlobal("c#solaufein_Phaere_1","LOCALS",1)~ + phaere_03
+ ~Global("c#solaufein_Phaere_2","LOCALS",1)~ + @1658 DO ~SetGlobal("c#solaufein_Phaere_2","LOCALS",1)~ + phaere_02
+ ~Global("c#solaufein_Phaere_4","LOCALS",1)~ + @1660 DO ~SetGlobal("c#solaufein_Phaere_4","LOCALS",1)~ + phaere_06
++ @1661 DO ~SetGlobal("c#solaufein_PhaerePID","LOCALS",1)~ + phaere_05
END


IF ~~ THEN phaere_05
SAY @1668
= @1669
= @1670
= @1671
= @1672
IF ~~ THEN + ust_natha
END

IF ~~ THEN phaere_06
SAY @1673
= @1674
++ @1675 + phaere_07
+ ~!Global("c#solaufein_Phaere_1","LOCALS",1)~ + @1657 DO ~SetGlobal("c#solaufein_Phaere_1","LOCALS",1)~ + phaere_03
+ ~Global("c#solaufein_Phaere_2","LOCALS",1)~ + @1658 DO ~SetGlobal("c#solaufein_Phaere_2","LOCALS",1)~ + phaere_02
+ ~Global("c#solaufein_Phaere_3","LOCALS",1)~ + @1659 DO ~SetGlobal("c#solaufein_Phaere_3","LOCALS",1)~ + phaere_04
++ @1661 DO ~SetGlobal("c#solaufein_PhaerePID","LOCALS",1)~ + phaere_05
END

IF ~~ THEN phaere_07
SAY @1676
= @1677
= @1678
+ ~!Global("c#solaufein_Phaere_1","LOCALS",1)~ + @1657 DO ~SetGlobal("c#solaufein_Phaere_1","LOCALS",1)~ + phaere_03
+ ~Global("c#solaufein_Phaere_2","LOCALS",1)~ + @1658 DO ~SetGlobal("c#solaufein_Phaere_2","LOCALS",1)~ + phaere_02
+ ~Global("c#solaufein_Phaere_3","LOCALS",1)~ + @1659 DO ~SetGlobal("c#solaufein_Phaere_3","LOCALS",1)~ + phaere_04
++ @1661 DO ~SetGlobal("c#solaufein_PhaerePID","LOCALS",1)~ + phaere_05
END


IF ~~ THEN irenicus
SAY @1679
= @1680
IF ~~ THEN + ust_natha
END

IF ~~ THEN stellung
SAY @1681
= @1682
IF ~~ THEN + anrede
END

IF ~~ THEN stellung_01
SAY @1683
= @1684
= @1685
IF ~~ THEN + anrede
END

IF ~~ THEN stellung_02
SAY @1686
= @1687
= @1688
IF ~~ THEN + anrede
END

IF ~~ THEN stellung_03
SAY @1689
= @1690
= @1691
IF ~~ THEN + anrede
END

IF ~~ THEN stellung_04
SAY @1692
= @1693
IF ~~ THEN + ust_natha
END



IF ~~ THEN schatten_01
SAY @1861 
IF ~~ THEN + anrede
END

IF ~~ THEN schatten_02
SAY @1694
IF ~~ THEN + anrede
END

IF ~~ THEN schatten_03
SAY @1695
IF ~~ THEN + anrede
END

IF ~~ THEN schatten_04
SAY @1696
IF ~~ THEN + anrede
END

IF ~~ THEN schatten_05
SAY @1698
IF ~~ THEN + anrede
END

IF ~~ THEN schatten2_01
SAY @1699 
IF ~~ THEN + anrede
END

IF ~~ THEN schatten2_02
SAY @1694
IF ~~ THEN + anrede
END

IF ~~ THEN schatten2_03
SAY @1695
IF ~~ THEN + anrede
END

IF ~~ THEN schatten2_04
SAY @1696
IF ~~ THEN + anrede
END

IF ~~ THEN schatten2_05
SAY @1929
IF ~~ THEN + anrede
END






IF ~~ THEN sterben_01
SAY @1700
=  @1701
++ @1702 + anrede
++ @1703 + sterben_02
++ @1704 + sterben_03
END

IF ~~ THEN sterben_02
SAY @1705
++ @1702 + anrede
++ @1704 + sterben_03
END

IF ~~ THEN sterben_03
SAY @1706
= @1707
IF ~~ THEN + anrede
END


IF ~~ THEN beruehrung
SAY @1708
++ @1709 + beruehrung_01
++ @1710 + beruehrung_05
END

IF ~~ THEN beruehrung_01
SAY @1711 
++ @1712 + beruehrung_03
++ @1713 + beruehrung_04
++ @1714 + beruehrung_02
END

IF ~~ THEN beruehrung_02
SAY @1715
IF ~~ THEN + beruehrung_05
END 

IF ~~ THEN beruehrung_03
SAY @1716
++ @1713 + beruehrung_04
++ @1378 + beruehrung_05
END

IF ~~ THEN beruehrung_04
SAY @1717
IF ~~ THEN + beruehrung_05
END 

IF ~~ THEN beruehrung_05
SAY @1718
IF ~~ THEN + anrede
END 

IF ~~ THEN empfinden
SAY @1719
= @1720 
IF ~~ THEN + anrede
END 

IF ~~ THEN gesicht_verstecken
SAY @1721
IF ~~ THEN + anrede
END

IF ~~ THEN gesicht_nicht_verstecken
SAY @1928
IF ~~ THEN + anrede
END

END


/* ToB */

APPEND C#SOLAUJ 
IF ~~ THEN unterwegs
SAY @1722
IF ~~ THEN + unterwegs_tob_00b
END

IF ~~ THEN unterwegs_tob_00
SAY @1864
IF ~~ THEN + unterwegs_tob_00b
END

END

CHAIN
IF ~~ THEN C#SOLAUJ unterwegs_tob_00b
@1723
== C#SOLAUJ IF ~Global("C#SolaufeinFriends","GLOBAL",1)~ THEN @1724
== C#SOLAUJ IF ~Global("C#SolaufeinFriends","GLOBAL",1)~ THEN @1725
== C#SOLAUJ IF ~!Global("C#SolaufeinFriends","GLOBAL",1)~ THEN @1726
END
IF ~~ THEN + unterwegs_tob_01

APPEND C#SOLAUJ 

IF ~~ THEN unterwegs_tob
SAY @1727
= @1728
IF ~~ THEN + unterwegs_tob_01
END

IF ~~ THEN unterwegs_tob_01
SAY @1729
IF ~~ THEN + anrede 
IF ~Global("C#SolauNoScenery","GLOBAL",1)~ THEN + anrede_tob
END

END

CHAIN
IF ~~ THEN C#SOLAUJ dunkle_hoelle
@1730
== C#SOLAUJ IF ~Global("C#SolaufeinFriends","GLOBAL",1)~ THEN @1731
== C#SOLAUJ @1732
END
++ @1733 + dunkle_hoelle_02
++ @1734 + dunkle_hoelle_01
++ @1735 + dunkle_hoelle_02


APPEND C#SOLAUJ 

IF ~~ THEN dunkle_hoelle_01
SAY @1736
IF ~~ THEN + dunkle_hoelle_02
END

IF ~~ THEN dunkle_hoelle_02
SAY @1737
++ @1738 + dunkle_hoelle_05
++ @1739 + dunkle_hoelle_03
++ @1740 + dunkle_hoelle_04
END

IF ~~ THEN dunkle_hoelle_03
SAY @1741
= @1742
= @1743
IF ~~ THEN + anrede 
IF ~Global("C#SolauNoScenery","GLOBAL",1)~ THEN + anrede_tob 
END

IF ~~ THEN dunkle_hoelle_04
SAY @1744
IF ~~ THEN + dunkle_hoelle_03
END

IF ~~ THEN dunkle_hoelle_05
SAY @1745
IF ~~ THEN + dunkle_hoelle_03
END



/* Sarevok recovered 
GlobalLT("ImoenGiveSoul","GLOBAL",2) GlobalGT("SarevokAlive","GLOBAL",0) - CHARNAME's soul

Global("ImoenGiveSoul","GLOBAL",2) GlobalGT("SarevokAlive","GLOBAL",0) - Imoen's soul */

IF ~~ THEN sarevok_comment
SAY @1746 
= @1747
+ ~GlobalLT("ImoenGiveSoul","GLOBAL",2)~ + @1748 + sarevok_comment_01
+ ~Global("ImoenGiveSoul","GLOBAL",2)~ + @1749 + sarevok_comment_02
++ @1750 + sarevok_comment_02
++ @1751 + sarevok_comment_03
++ @1752 + sarevok_comment_02
++ @1753 + sarevok_comment_03
END

IF ~~ THEN sarevok_comment_01
SAY @1754
IF ~~ THEN + sarevok_comment_03
END

IF ~~ THEN sarevok_comment_02
SAY @1755
IF ~~ THEN + sarevok_comment_03
END

IF ~~ THEN sarevok_comment_03
SAY @1756
IF ~~ THEN + anrede 
IF ~Global("C#SolauNoScenery","GLOBAL",1)~ THEN + anrede_tob
END




/* godly throne */

IF ~~ THEN bhaalkriege
SAY @1757
++ @1758 + bhaalkriege_02
++ @448 + bhaalkriege_02
++ @1759 + bhaalkriege_01
END

IF ~~ THEN bhaalkriege_01
SAY @1760
IF ~~ THEN + bhaalkriege_02
END

IF ~~ THEN bhaalkriege_02
SAY @1761
++ @1762 + bhaalkriege_04
++ @1763 + bhaalkriege_04
++ @1764 + bhaalkriege_04
++ @1765 + bhaalkriege_03
END

IF ~~ THEN bhaalkriege_03
SAY @1766
IF ~~ THEN + bhaalkriege_04
END

IF ~~ THEN bhaalkriege_04
SAY @1767
IF ~~ THEN + anrede 
IF ~Global("C#SolauNoScenery","GLOBAL",1)~ THEN + anrede_tob
END

/* comment on PCs fate, after Cyric encounter (Challenge no. ?)  */

IF ~~ THEN maechtig
SAY @1768
= @1769
= @1770
IF ~~ THEN + anrede 
IF ~Global("C#SolauNoScenery","GLOBAL",1)~ THEN + anrede_tob
END

/* PC's power */

IF ~~ THEN powerful
SAY @1771
= @1772
= @1773
= @1774
++ @1775 + powerful_02
++ @1776 + powerful_01
++ @1777 + powerful_04
END

IF ~~ THEN powerful_01
SAY @1778
++ @1779 + powerful_05
+ ~Global("C#SolaufeinFriends","GLOBAL",1)~ + @1780 + powerful_03
+ ~!Global("C#SolaufeinFriends","GLOBAL",1)~ + @1781 + powerful_03
++ @1782 + powerful_04
END

IF ~~ THEN powerful_02
SAY @1783
++ @1776 + powerful_01
++ @1777 + powerful_04
END

IF ~~ THEN powerful_03
SAY @1784
++ @1785 + powerful_06
++ @1777 + powerful_04
END

IF ~~ THEN powerful_04
SAY @1786
IF ~~ THEN + anrede 
IF ~Global("C#SolauNoScenery","GLOBAL",1)~ THEN + anrede_tob
END

IF ~~ THEN powerful_05
SAY @1787
++ @1780 + powerful_03
++ @1782 + powerful_04
END

IF ~~ THEN powerful_06
SAY @1788
IF ~~ THEN + anrede 
IF ~Global("C#SolauNoScenery","GLOBAL",1)~ THEN + anrede_tob
END

/*  Amkethran  */
IF ~~ THEN amketran
SAY @1789
= @1790
= @1791
= @1792 
IF ~~ THEN + anrede 
IF ~Global("C#SolauNoScenery","GLOBAL",1)~ THEN + anrede_tob
END





END // APPEND