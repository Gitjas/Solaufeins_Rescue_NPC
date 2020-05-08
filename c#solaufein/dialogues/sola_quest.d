/* This is not a real quest. */

/* Somewhere in Athkatla */

BEGIN C#SOMOB2
BEGIN C#SOMOB3
BEGIN C#SOMOB4
BEGIN C#SOMOB5

BEGIN C#SOMOB1
IF ~Global("C#Solaufein_Quest","GLOBAL",0)~ THEN random
SAY @0
IF ~~ THEN EXIT
END

CHAIN 
IF ~Global("C#Solaufein_Quest","GLOBAL",1)~ THEN C#SOMOB1 mob
@1
END
IF ~AreaCheck("AR1000")~ THEN DO ~CreateCreature("C#SOMOB2",[2118.1175],5) CreateCreature("C#SOMOB3",[1887.1090],10) CreateCreature("C#SOMOB4",[2063.1079],0)~ + mob_00

IF ~AreaCheck("AR0300")~ THEN DO ~CreateCreature("C#SOMOB2",[2184.670],9) CreateCreature("C#SOMOB3",[2243.457],5) CreateCreature("C#SOMOB4",[1912.393],0)~ + mob_00

IF ~AreaCheck("AR0900")~ THEN DO ~CreateCreature("C#SOMOB2",[2689.3480],5) CreateCreature("C#SOMOB3",[2663.3331],10) CreateCreature("C#SOMOB4",[2519.3367],0)~ + mob_00

CHAIN 
IF ~~ THEN C#SOMOB1 mob_00
@2 
== ViconiJ IF ~InParty("Viconia") Detect("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3
== C#SolauJ @4
== ViconiJ IF ~InParty("Viconia") Detect("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @5
== C#SOMOB2 @6  
== C#SOMOB3 @7
END
IF ~~ THEN DO ~SetGlobal("C#Solaufein_Quest","GLOBAL",2) ClearAllActions()
      StartCutSceneMode()
StartCutScene("C#SOCUT3")~ EXIT


CHAIN 
IF ~True()~ THEN C#SOMOB4 mob_01
@8
== C#SOMOB2 @9

== C#SolauJ @10
== C#SOMOB3 @11

== C#SolauJ @12
== C#SOMOB3 @13
== C#SOMOB2 @9

== C#SolauJ @14
= @15
END

++ @16 EXTERN C#SOMOB3 mob_03
++ @17 EXTERN C#SolauJ mob_02
++ @18 EXTERN C#SOMOB3 mob_03
++ @19 EXTERN C#SolauJ mob_04

APPEND C#SolauJ
IF ~~ THEN mob_02
SAY @20
IF ~~ THEN + mob_04 
END
END //APPEND

APPEND C#SOMOB3
IF ~~ THEN mob_03
SAY @21
IF ~~ THEN EXTERN C#SolauJ mob_04
END
END //APPEND

CHAIN
IF ~~ THEN C#SolauJ mob_04
@22

== C#SOMOB2 @23
== C#SOMOB3 @9
== C#SOMOB4 @24
== C#SOMOB2 @25
END 
IF ~~ THEN DO ~SetGlobal("C#Solaufein_Quest","GLOBAL",3) ActionOverride("C#SOMOB1",EscapeArea()) ActionOverride("C#SOMOB2",EscapeArea()) ActionOverride("C#SOMOB3",EscapeArea()) ActionOverride("C#SOMOB4",EscapeArea())~ EXIT 

APPEND C#SolauJ
IF ~Global("C#Solaufein_Quest","GLOBAL",4)~ THEN after_mob
SAY @26
++ @27 + after_mob_03
++ @28 + after_mob_01
++ @29 + after_mob_02
++ @30 + after_mob_05
++ @31 + after_mob_04
END

IF ~~ THEN after_mob_01
SAY @32
IF ~~ THEN + after_mob_05
END

IF ~~ THEN after_mob_02
SAY @33
IF ~~ THEN + after_mob_05
END

IF ~~ THEN after_mob_03
SAY @34
++ @28 + after_mob_01
++ @29 + after_mob_02
++ @30 + after_mob_05
++ @31 + after_mob_04
END

IF ~~ THEN after_mob_04
SAY @36
IF ~~ THEN + after_mob_05
END

IF ~~ THEN after_mob_05
SAY @35
IF ~~ THEN DO ~SetGlobal("C#Solaufein_Quest","GLOBAL",5)~ EXIT
END

END //APPEND


/* follow-up, probably in grave district */

CHAIN 
IF ~Global("C#Solaufein_Quest","GLOBAL",7)~ THEN C#SOMOB5 followup
@51 DO ~SetGlobal("C#Solaufein_Quest","GLOBAL",8)~
== C#SolauJ @52
== C#SOMOB5 @53
== C#SolauJ @54
END
++ @55 EXTERN C#SOMOB5 followup_01
++ @56 EXTERN C#SOMOB5 followup_01
++ @57 EXTERN C#SOMOB5 followup_01

CHAIN
IF ~~ THEN C#SOMOB5 followup_01
@58
= @59
== C#SolauJ @60
== C#SOMOB5 @61
== C#SolauJ @62
== C#SOMOB5 @63
== C#SolauJ @64 DO ~ActionOverride("C#SOMOB5",EscapeArea())~
EXIT






/* ToB. Smuggler in Amkethran */

/*

OR(2)
	Global("ThfArrest","GLOBAL",1)
	Global("SmugglerPlot","GLOBAL",2)
*/


CHAIN
IF WEIGHT #-1
~Global("C#Solau_CarrasOffer","GLOBAL",1)~ THEN AMCARRAS carras-offer
@37
DO ~SetGlobal("C#Solau_CarrasOffer","GLOBAL",2)~
== C#SolauJ IF ~Gender(Player1,FEMALE)
OR(2)
Global("C#Solaufein_PCIsDrow","GLOBAL",1)
InParty("Viconia")~ THEN @38
== AMCARRAS IF ~Gender(Player1,FEMALE)
OR(2)
Global("C#Solaufein_PCIsDrow","GLOBAL",1)
InParty("Viconia")~ THEN @39
== C#SolauJ IF ~Gender(Player1,MALE)
Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ THEN @40 
== AMCARRAS IF ~Gender(Player1,MALE)
Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ THEN @41
== C#SolauJ @42
== AMCARRAS @43
== C#SolauJ @44
== AMCARRAS @45
== AMCARRAS IF ~GlobalGT("C#Solaufein_Quest","GLOBAL",2)~ THEN @46
== C#SolauJ IF ~GlobalGT("C#Solaufein_Quest","GLOBAL",2)~ THEN @47
== AMCARRAS IF ~GlobalGT("C#Solaufein_Quest","GLOBAL",2)~ THEN @48
== C#SolauJ IF ~GlobalGT("C#Solaufein_Quest","GLOBAL",2)~ THEN @49
== AMCARRAS @50
EXIT



