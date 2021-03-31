/* An der Oberfläche */

BEGIN ~c#solau~

IF ~Global("C#Solaufein_Waits","GLOBAL",4)~ THEN treffen
SAY @7
+ ~!Global("C#Solaufein_WahreGestalt","GLOBAL",1) !Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ + @8 + treffen_14
++ @9 + treffen_01
++ @10 + treffen_03
++ @11 + treffen_04
END

IF ~~ THEN treffen_01
SAY @12
IF ~TimeOfDay(DAY)~ THEN + treffen_02
IF ~!TimeOfDay(DAY)~ THEN + treffen_05
END

IF ~~ THEN treffen_02
SAY @13
IF ~~ THEN + treffen_05
END

IF ~~ THEN treffen_03
SAY @14
IF ~TimeOfDay(DAY)~ THEN + treffen_02
IF ~!TimeOfDay(DAY)~ THEN + treffen_05
END

IF ~~ THEN treffen_04
SAY @15
IF ~TimeOfDay(DAY)~ THEN + treffen_02
IF ~!TimeOfDay(DAY)~ THEN + treffen_05
END

IF ~~ THEN treffen_05
SAY @16
= @17
++ @18 + treffen_06
++ @19 + treffen_11
++ @20 + treffen_11
++ @21 + treffen_12
END

IF ~~ THEN treffen_06
SAY @22
++ @23 + treffen_08
++ @24 + treffen_07
++ @25 + treffen_07
++ @19 + treffen_11
++ @20 + treffen_11
++ @26 + treffen_09
END

IF ~~ THEN treffen_07
SAY @27
IF ~~ THEN + treffen_10
END

IF ~~ THEN treffen_08
SAY @28
IF ~~ THEN DO ~SetInterrupt(FALSE)
RealSetGlobalTimer("C#SolauDialogTimer","GLOBAL",300)
RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_NORMAL%)
RealSetGlobalTimer("C#SolauSceneryTimer","GLOBAL",500)
SetGlobal("C#Solaufein_Dialog","GLOBAL",1)
SetGlobal("C#Solaufein_Waits","GLOBAL",5)
SetGlobal("C#SolauJoined","GLOBAL",1)
EraseJournalEntry(@1797)
EraseJournalEntry(@1796)
JoinParty()
SetInterrupt(TRUE)~ SOLVED_JOURNAL @1795 EXIT
IF ~NumInParty(6)~ THEN + treffen_08_b
END

IF ~~ THEN treffen_08_b
SAY @2702
IF ~~ THEN DO ~SetInterrupt(FALSE)
RealSetGlobalTimer("C#SolauDialogTimer","GLOBAL",300)
RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_NORMAL%)
RealSetGlobalTimer("C#SolauSceneryTimer","GLOBAL",500)
SetGlobal("C#Solaufein_Dialog","GLOBAL",1)
SetGlobal("C#Solaufein_Waits","GLOBAL",5)
EraseJournalEntry(@1797)
EraseJournalEntry(@1796)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()
SetDialog("C#SolauJ")
ChangeAIScript("C#solau",OVERRIDE)
ChangeAIScript("DEFAULT",CLASS)
ChangeAIScript("",RACE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_FAST%)
SetGlobal("C#SolauJoined","GLOBAL",2) 
SetInterrupt(TRUE)~ SOLVED_JOURNAL @1795 EXIT
END

IF ~~ THEN treffen_09
SAY @29
IF ~~ THEN DO ~SetGlobal("C#Solaufein_Waits","GLOBAL",6)~ EXIT
END

IF ~~ THEN treffen_10
SAY @30
++ @23 + treffen_08
+ ~!AreaCheck("AR2401")~ + @26 + treffen_09
+ ~AreaCheck("AR2401")~ + @31 + dazu_04
++ @32 + treffen_13
END

IF ~~ THEN treffen_11
SAY @33
IF ~~ THEN + treffen_10
END

IF ~~ THEN treffen_12
SAY @34
IF ~~ THEN + treffen_10
END

IF ~Global("C#Solaufein_Waits","GLOBAL",6)~ THEN wartet_noch
SAY @35
IF ~~ THEN + treffen_10
END

IF ~~ THEN treffen_13
SAY @36
= @37
IF ~~ THEN DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
SetGlobal("C#Solaufein_Waits","GLOBAL",10)
EraseJournalEntry(@1797)
DestroySelf()~ SOLVED_JOURNAL @1798 EXIT
END

IF ~~ THEN treffen_14
SAY @38 
++ @9 + treffen_01
++ @10 + treffen_03
++ @11 + treffen_04
END


/* Kickout-Dialog */
BEGIN ~c#solauP~


IF ~Global("C#SolauJoined","GLOBAL",0)~ THEN wartet_wieder
SAY @35
IF ~~ THEN + wartet_wieder_01
END

IF ~~ THEN wartet_wieder_01
SAY @39
++ @23 + wartet_wieder_02
+ ~AreaType(OUTDOOR)~ + @26 + wartet_wieder_03
+ ~!AreaType(OUTDOOR)~ + @26 + wartet_wieder_04
END

IF ~~ THEN wartet_wieder_02
SAY @28
IF ~~ THEN DO ~SetGlobal("C#SolauJoined","GLOBAL",1)
EraseJournalEntry(@1797)
EraseJournalEntry(@1796)
JoinParty()~ SOLVED_JOURNAL @1795 EXIT
IF ~NumInParty(6)~ THEN + wartet_wieder_02_b
END

IF ~~ THEN wartet_wieder_02_b
SAY @2702
IF ~~ THEN DO ~SetInterrupt(FALSE)
EraseJournalEntry(@1797)
EraseJournalEntry(@1796)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()
SetDialog("C#SolauJ")
ChangeAIScript("C#solau",OVERRIDE)
ChangeAIScript("DEFAULT",CLASS)
ChangeAIScript("",RACE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_FAST%)
SetGlobal("C#SolauJoined","GLOBAL",2) 
SetInterrupt(TRUE)~ SOLVED_JOURNAL @1795 EXIT
END

IF ~~ THEN wartet_wieder_03
SAY @40
IF ~~ THEN EXIT
END

IF ~~ THEN wartet_wieder_04
SAY @41
IF ~~ THEN EXIT
END

IF ~!InParty(Myself) Global("C#SolauJoined","GLOBAL",1)~ THEN kickout
SAY @42
++ @1860 /* ~I just need you to make some room. Get in line behind the others.~ */ + follow_companion
+ ~AreaType(OUTDOOR)~ + @43 DO ~SetGlobal("C#SolauJoined","GLOBAL",0)~ + wartet_wieder_03
+ ~!AreaType(OUTDOOR)~ + @43 DO ~SetGlobal("C#SolauJoined","GLOBAL",0)~ + wartet_wieder_04
++ @44 + wartet_wieder_02
END

IF ~~ THEN follow_companion
SAY @1855
IF ~~ THEN DO ~SetInterrupt(FALSE)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()
SetDialog("C#SolauJ")
ChangeAIScript("C#solau",OVERRIDE)
ChangeAIScript("DEFAULT",CLASS)
ChangeAIScript("",RACE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",%SOLAUFEIN_BANTER_FAST%)
SetGlobal("C#SolauJoined","GLOBAL",2) 
SetInterrupt(TRUE)~ EXIT
END




/* first meeting after PC left Ust Natha: in front of Adalon's lair */
BEGIN ~c#solau1~

IF ~Allegiance(Myself,ENEMY)~ THEN feindlich
SAY @45
IF ~~ THEN EXIT
END

CHAIN
IF ~NumTimesTalkedTo(0) !Allegiance(Myself,ENEMY)~ THEN ~c#solau1~ greeting
@46
== ~c#solau1~ IF ~Global("PlayerLooksLikeDrow","GLOBAL",0) !Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ THEN @75 DO ~SetGlobal("C#Solaufein_WahreGestalt","GLOBAL",1)~
== ~c#solau1~ IF ~Global("PlayerLooksLikeDrow","GLOBAL",0) Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ THEN @1847 DO ~SetGlobal("C#Solaufein_WahreGestalt","GLOBAL",1)~
== ~c#solau1~ @47
END
++ @1793 + greeting_02
++ @48 + greeting_02
+ ~PartyHasItem("misc9T")~ + @1794 + greeting_03
++ @49 + greeting_02

APPEND ~c#solau1~

IF ~~ THEN greeting_01
SAY @50
IF ~~ THEN + greeting_04
END

IF ~~ THEN greeting_02
SAY @51
IF ~~ THEN + greeting_01
END

IF ~~ THEN greeting_03
SAY @52
IF ~~ THEN + greeting_02
END

IF ~~ THEN greeting_04
SAY @53
= @54
= @55
= @56
IF ~~ THEN DO ~StartCutScene("C#SOCUT1")
StartCutSceneMode()~ EXIT
END

END //APPEND

BEGIN C#SOCRE1 

CHAIN 
IF ~True()~ THEN C#SOCRE1 capture
@57
== c#solau1 @58
== C#SOCRE1 @59
== c#solau1 @60
= @61
== C#SOCRE1 @62
== c#solau1 @63
== C#SOCRE1 @64
== C#SOCRE1 IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)~ @1849
== C#SOCRE1 IF ~Global("PlayerLooksLikeDrow","GLOBAL",0)~ @1850
== c#solau1 @65
== C#SOCRE1 @66
END
IF ~~ THEN DO ~ClearAllActions()
      StartCutSceneMode()
StartCutScene("C#SOCUT2")~ UNSOLVED_JOURNAL @67 EXIT




//Inside the drider-chambers

/* difference: Global("PlayerLooksLikeDrow","GLOBAL",0): Now the drow speak drow! 
Übersetzungen: mit dem Eilistraee's Drow Translator (http://www.eilistraee.com/chosen/language.php)


~Wer kommt da? Oberflächler! Tötet sie!~ 
~Vel'uss zhah doerin? Kivvin! Elgg mina!~
 
~Ihr seid es! 
~Ol zhah dos! 

*/

BEGIN c#sodrc0

IF ~Global("PlayerLooksLikeDrow","GLOBAL",0)~ THEN drow_1
SAY @68
IF ~~ THEN DO ~SetGlobal("C#SolauDrowHostile","c#So01",1) Enemy()~ EXIT
END

IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN drow_2
SAY @69
IF ~~ THEN DO ~SetGlobal("C#SolauDrowHostile","c#So01",1) Enemy()~ EXIT
END





/* Solauein ist jetzt "unbekleidet" = Elfanimation */

APPEND ~c#solau~

IF ~Global("C#Solaufein_Cocoon1","c#so01",2)~ THEN rescue
SAY @70
IF ~OR(2)
Global("C#Solaufein_WahreGestalt","GLOBAL",1) Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN + rescue_01
IF ~Global("C#Solaufein_WahreGestalt","GLOBAL",0) Global("PlayerLooksLikeDrow","GLOBAL",0) !Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ THEN + rescue_02
IF ~Global("C#Solaufein_WahreGestalt","GLOBAL",0) Global("PlayerLooksLikeDrow","GLOBAL",0) Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ THEN + rescue_02_b
END

IF ~~ THEN rescue_01
SAY @71
++ @72 + rescue_04
++ @73 + rescue_03
++ @74 + rescue_04_1
END

IF ~~ THEN rescue_02
SAY @75
IF ~~ THEN DO ~SetGlobal("C#Solaufein_WahreGestalt","GLOBAL",1)~ + rescue_01
END

IF ~~ THEN rescue_02_b
SAY @1847
IF ~~ THEN DO ~SetGlobal("C#Solaufein_WahreGestalt","GLOBAL",1)~ + rescue_01
END

IF ~~ THEN rescue_03
SAY @76
IF ~~ THEN + rescue_06
END

IF ~~ THEN rescue_04
SAY @77
IF ~~ THEN + rescue_05
END

IF ~~ THEN rescue_04_1
SAY @78
IF ~~ THEN + rescue_05
END

IF ~~ THEN rescue_05
SAY @79
IF ~~ THEN + rescue_06
END

IF ~~ THEN rescue_06
SAY @80
= @81
IF ~Global("SolaTeleport","GLOBAL",3)~ THEN + rescue_07
IF ~!Global("SolaTeleport","GLOBAL",3)~ THEN + rescue_10
END

IF ~~ THEN rescue_07
SAY @82
IF ~OR(2)
Alignment(Player1,MASK_EVIL) !ReputationGT(Player1,9)~ THEN + rescue_08
+ ~!Alignment(Player1,MASK_EVIL) ReputationGT(Player1,9)~ + @83 + rescue_08
+ ~!Alignment(Player1,MASK_EVIL) ReputationGT(Player1,9)~ + @84 + rescue_09
END


IF ~~ THEN rescue_08
SAY @85
IF ~~ THEN DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
SetGlobal("C#SolauRettung","GLOBAL",4)
SetGlobal("C#Solaufein_Cocoon1","c#so01",3)
TriggerActivation("c#sococ1",FALSE)
EraseJournalEntry(@67)
DestroySelf()~ SOLVED_JOURNAL @1795 EXIT
END

IF ~~ THEN rescue_09
SAY @86
IF ~~ THEN + rescue_10
END

IF ~~ THEN rescue_10
SAY @87
+ ~Global("SolaTeleport","GLOBAL",3)~ + @88 + rescue_08
+ ~Global("SolaTeleport","GLOBAL",3)~ + @89 + rescue_11
+ ~!Global("SolaTeleport","GLOBAL",3)~ + @90 + rescue_11
++ @91 + rescue_18
++ @92 + rescue_20
END

END //APPEND

CHAIN
IF ~~ THEN c#solau rescue_11 //npc_reactions
@93

== BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @94
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @95
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @96
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) 
!HasItem("MISC84","MINSC")~ THEN @97
== BKORGAN IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @98
//== BEDWIN IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN ~~
//== BHAERDA IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN ~~
== BNALIA IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @99
//== BVALYGA IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN ~~
== BVICONI IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @100
== BMAZZY IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @101
//== BCERND IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN ~~
//== BJAN IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN ~~
== BIMOEN2 IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @102
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)~ THEN @103
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",1)~ THEN @104
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @105
END
IF ~!Global("SolaTeleport","GLOBAL",3) Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,10)~ THEN + nojoining
IF ~OR(2)
!Alignment(Player1,MASK_EVIL)
ReputationGT(Player1,9)~ THEN + joining
IF ~Global("SolaTeleport","GLOBAL",3) Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,10)~ THEN + rescue_07

APPEND c#solau

IF ~~ THEN nojoining
SAY @106
IF ~~ THEN + rescue_19
END

IF ~~ THEN joining
SAY @107
= @108
= @109
= @110
= @111
= @112
++ @113 + rescue_11_1
++ @114 + rescue_11_2
++ @115 + rescue_19
END

IF ~~ THEN rescue_11_1
SAY @116
++ @114 + rescue_11_2
++ @115 + rescue_19
END

IF ~~ THEN rescue_11_2
SAY @117
++ @118 DO ~SetGlobal("C#Solau_TalkedIrenicus","GLOBAL",1)~ + rescue_11_5
++ @119 DO ~SetGlobal("C#Solau_TalkedSoul","GLOBAL",1)~ + rescue_11_4
++ @120 + rescue_11_5
END

IF ~~ THEN rescue_11_3
SAY @121
IF ~~ THEN + rescue_12
END

IF ~~ THEN rescue_11_4
SAY @122
IF ~~ THEN + rescue_11_5
END

IF ~~ THEN rescue_11_5
SAY @123
++ @124 + rescue_12
++ @125 + rescue_13
++ @126 + rescue_11_3
++ @127 + rescue_19
END

IF ~~ THEN rescue_12
SAY @128
IF ~~ THEN + rescue_14
END

IF ~~ THEN rescue_13
SAY @129
IF ~~ THEN + rescue_12
END

IF ~~ THEN rescue_14
SAY @130
IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)~ + rescue_15
IF ~Global("PlayerLooksLikeDrow","GLOBAL",0)~ + rescue_16
END

IF ~~ THEN rescue_15
SAY @131
IF ~~ THEN + rescue_16
END

IF ~~ THEN rescue_16
SAY @132
+ ~Global("SolaTeleport","GLOBAL",3)~ + @88 + rescue_08
+ ~Global("PlayerLooksLikeDrow","GLOBAL",1)~ + @133 + rescue_22
+  ~Global("PlayerLooksLikeDrow","GLOBAL",0)~ + @133 + rescue_23
++ @134 + rescue_17
++ @127 + rescue_19
END

IF ~~ THEN rescue_17
SAY @135
IF ~~ THEN + rescue_24
END

IF ~~ THEN rescue_18
SAY @136
IF ~~ THEN + rescue_21
END

IF ~~ THEN rescue_19
SAY @137
IF ~~ THEN + rescue_21
END

IF ~~ THEN rescue_20
SAY @138
IF ~~ THEN + rescue_21
END

IF ~~ THEN rescue_21
SAY @139
IF ~~ THEN DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
SetGlobal("C#SolauRettung","GLOBAL",4)
SetGlobal("C#Solaufein_Cocoon1","c#so01",3)
TriggerActivation("c#sococ1",FALSE)
EraseJournalEntry(@67)
DestroySelf()~ SOLVED_JOURNAL @1795  EXIT 
END

IF ~~ THEN rescue_22
SAY @140
IF ~~ THEN + rescue_23
END

IF ~~ THEN rescue_23
SAY @141
= @142
= @143
IF ~~ THEN DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
SetGlobal("C#SolauRettung","GLOBAL",4)
SetGlobal("C#Solaufein_Cocoon1","c#so01",3)
SetGlobal("C#Solaufein_Waits","GLOBAL",2)
TriggerActivation("c#sococ1",FALSE)
EraseJournalEntry(@67)
DestroySelf()~ UNSOLVED_JOURNAL @1797 EXIT
END


IF ~~ THEN rescue_24
SAY @142
= @144
IF ~~ THEN DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
SetGlobal("C#SolauRettung","GLOBAL",4)
SetGlobal("C#Solaufein_Cocoon1","c#so01",3)
SetGlobal("C#Solaufein_Waits","GLOBAL",1)
TriggerActivation("c#sococ1",FALSE)
EraseJournalEntry(@67)
DestroySelf()~ UNSOLVED_JOURNAL @1796 EXIT
END


/* aftr leaving at the drider pits: Solaufein meets up at the Underdark exit */

/* Solaufein wanted to join at the surface */
IF ~Global("C#Solaufein_Waits","GLOBAL",1)~ THEN dazu
SAY @145
IF ~~ THEN + dazu_02
END

/* Solaufein wanted to join later in Underdark */
IF ~Global("C#Solaufein_Waits","GLOBAL",2)~ THEN dazu_01
SAY @146
IF ~~ THEN + dazu_02
END

IF ~~ THEN dazu_02
SAY @147
= @148
++ @149 + treffen_08
++ @150 + treffen_08
++ @151 + dazu_03
++ @21 + treffen_12
++ @152 + dazu_04
END

END //APPEND

CHAIN
IF ~~ THEN c#solau dazu_03
@153
== c#solau IF ~OR(2) Global("C#Solaufein_PCIsDrow","GLOBAL",1) InPartyAllowDead("Viconia")~ THEN @2700 
END
+ ~!Global("C#Solaufein_PCIsDrow","GLOBAL",1) !InPartyAllowDead("Viconia")~ + @154 + dazu_04
+ ~OR(2) Global("C#Solaufein_PCIsDrow","GLOBAL",1) InPartyAllowDead("Viconia")~ + @2701 + dazu_04
++ @155 + dazu_04
++ @149 + treffen_08
++ @21 + treffen_12
++ @152 + dazu_04


APPEND c#solau

IF ~~ THEN dazu_04
SAY @156
IF ~~ THEN + dazu_05
END

IF ~~ THEN dazu_05
SAY @2703
IF ~~ THEN DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
SetGlobal("C#SolauRettung","GLOBAL",4)
SetGlobal("C#Solaufein_Waits","GLOBAL",3)
EraseJournalEntry(@1797)
DestroySelf()~ UNSOLVED_JOURNAL @1796 EXIT
END

END //APPEND

