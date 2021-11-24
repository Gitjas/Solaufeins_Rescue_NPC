




/* --------------------------------------- */


/* ToB */





BEGIN C#Sola25

IF ~Global("C#SolaufeinSummoned","GLOBAL",1)~ THEN solaufein_summoned
SAY @1329
+ ~%IsNewGameToB%~ + @1330 DO ~SetGlobal("C#SolauNoScenery","GLOBAL",1)
SetGlobal("C#SolaufeinFriends","GLOBAL",1)
SetGlobal("C#Solaufein_Dialog","GLOBAL",51)
SetGlobal("C#solaufein_MagicGone","LOCALS",1)
SetGlobal("C#SolaufeinSummoned","GLOBAL",2)~ + solaufein_summoned_01
+ ~%IsNewGameToB%~+ @1331 DO ~SetGlobal("C#Solaufein_Dialog","GLOBAL",3)
SetGlobal("C#SolaufeinSummoned","GLOBAL",2)~ + solaufein_summoned_01
+ ~%IsContiGameToB%~ + @1330 + solaufein_summoned_01
END

IF ~~ THEN solaufein_summoned_01
SAY @1332
++ @1333 + solaufein_summoned_02
++ @1334 + not_yet
END

IF ~~ THEN solaufein_summoned_02
SAY @1335
IF ~~ THEN DO ~RealSetGlobalTimer("C#SolauDialogTimer","GLOBAL",300)
RealSetGlobalTimer("C#SolauSceneryTimer","GLOBAL",500)
SetGlobal("C#Solaufein_Waits","GLOBAL",5)
SetGlobal("C#SolauJoined","GLOBAL",1)
JoinParty()~ EXIT


IF ~NumInPartyLT(6)~ THEN DO ~SetInterrupt(FALSE)
RealSetGlobalTimer("C#SolauDialogTimer","GLOBAL",300)
RealSetGlobalTimer("C#SolauSceneryTimer","GLOBAL",500)
SetGlobal("C#Solaufein_Waits","GLOBAL",5)
SetGlobal("C#SolauJoined","GLOBAL",1)
JoinParty()
SetInterrupt(TRUE)~ EXIT
IF ~NumInParty(6)~ THEN + solaufein_summoned_02_b
END

IF ~~ THEN solaufein_summoned_02_b
SAY @2702
IF ~~ THEN DO ~SetInterrupt(FALSE)
RealSetGlobalTimer("C#SolauDialogTimer","GLOBAL",300)
RealSetGlobalTimer("C#SolauSceneryTimer","GLOBAL",500)
RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_FAST%)
SetGlobal("C#Solaufein_Waits","GLOBAL",5)
SetGlobal("C#SolauJoined","GLOBAL",2) 
SetGlobal("C#LevelUp","LOCALS",0)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()
SetDialog("C#SolauJ")
ChangeAIScript("C#solau",OVERRIDE)
ChangeAIScript("DEFAULT",CLASS)
ChangeAIScript("",RACE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
SetInterrupt(TRUE)~ EXIT
END

IF ~~ THEN not_yet
SAY @1336
IF ~~ THEN DO ~MoveToPoint([2238.1273])~ EXIT
END




/* I_C_T */

/* Sarevok */

I_C_T SAREV25A 10 C#SolauSarevokICT
== C#SOLAUJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @1337
END


EXTEND_BOTTOM SARVOLO 9 
+ ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)~ + @1338 + volo_solaufein
END

CHAIN 
IF ~~ THEN SARVOLO volo_solaufein
@1339
== SARVOLO IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)~ THEN @1340
== C#SOLAUJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @1341
END
IF ~~ THEN + 9


/* Final Solar dialogue */


I_C_T FINSOL01 27 C#SolaufeinFINSOL01_27
== C#SOLAUJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @1342
= @1343
END


/* --------------------------------------- */


APPEND C#SOLAUJ



/* after Oasis */

IF ~Global("C#Solaufein_Oasis","GLOBAL",1)~ THEN oasis
SAY @1344
= @1345
++ @1346 + oasis_01
++ @1347 + oasis_04
++ @1348 + oasis_03
+ ~Dead("amtgen01")~ + @1349 + oasis_02
+ ~!Dead("amtgen01")~ + @1350 + oasis_02
END

IF ~~ THEN oasis_01
SAY @1351
IF ~~ THEN + oasis_05
END

IF ~~ THEN oasis_02
SAY @1352
IF ~~ THEN + oasis_05
END

IF ~~ THEN oasis_03
SAY @1353
IF ~~ THEN + oasis_05
END

IF ~~ THEN oasis_04
SAY @1354
IF ~~ THEN + oasis_05
END

IF ~~ THEN oasis_05
SAY @1355
= @1356
++ @1357 + oasis_06
++ @1358 + oasis_06
++ @1359 + oasis_06
END

IF ~~ THEN oasis_06
SAY @1360
IF ~~ THEN + oasis_07
END

IF ~~ THEN oasis_07
SAY @1361
= @1362
++ @247 + oasis_09
++ @1363 + oasis_09
++ @1364 + oasis_08
++ @1365 + oasis_09
END

IF ~~ THEN oasis_08
SAY @1366
IF ~~ THEN + oasis_09
END


END //APPEND

CHAIN
IF ~~ THEN C#SOLAUJ oasis_09
@1367 DO ~SetGlobal("C#Solaufein_Oasis","GLOBAL",2)~
== C#SOLAUJ IF ~Global("C#SolaufeinFriends","GLOBAL",1)~ THEN @1368
== C#SOLAUJ @1369
EXIT

APPEND C#SOLAUJ

/* Sendais Enklave */

IF ~Global("C#Solaufein_SendaiLair","GLOBAL",1)~ THEN sendais_enklave
SAY @1844
= @1845
IF ~~ THEN DO ~SetGlobal("C#Solaufein_SendaiLair","GLOBAL",2)~ EXIT
END

IF ~Global("C#Solaufein_SendaiLair","GLOBAL",3)~ THEN sendais_enklave_spinnen
SAY @1370
= @1371
IF ~~ THEN DO ~SetGlobal("C#Solaufein_SendaiLair","GLOBAL",4)~ EXIT
END

END //APPEND
