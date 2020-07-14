BEGIN C#SOLAUB





/* Solaufein - Imoen */

CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ImoenBanter","GLOBAL",0)
InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN C#SOLAUB imoen_01
@908 DO ~SetGlobal("C#Solaufein_ImoenBanter","GLOBAL",1)~
== BIMOEN2 IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @909
== BIMOEN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @909
== C#SOLAUB @910
== BIMOEN2 IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @911
== BIMOEN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @911
== C#SOLAUB @912
== BIMOEN2 IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @913
== BIMOEN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @913
EXIT


/* Solaufein - Anomen; IsNotKnight = 0 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_AnomenBanter","GLOBAL",0)
InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN C#SOLAUB anomen_01
@914 DO ~SetGlobal("C#Solaufein_AnomenBanter","GLOBAL",1)~
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @915
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @915
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("C#Ajantis")~ THEN @916
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("C#Ajantis")~ THEN @916
== C#SOLAUB IF ~InParty("C#Ajantis")~ THEN @917
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) !InParty("C#Ajantis")~ THEN @918
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("C#Ajantis")~ THEN @918 
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @919
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @919
== C#SOLAUB @920
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @921
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @921
== C#SOLAUB @922
EXIT




/* Solaufein - Minsk */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_MinscBanter","GLOBAL",0)
InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN C#SOLAUB minsc_01
@2516 DO ~SetGlobal("C#Solaufein_MinscBanter","GLOBAL",1)~
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2517
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2517
== C#SOLAUB @2518
= @2519
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2520
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2520
== C#SOLAUB @2521
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2522
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2522
== C#SOLAUB @2523
EXIT


/* Solaufein - Jaheira */

APPEND BJAHEIR

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_JaheiraBanter","GLOBAL",0)~ THEN jaheira_00
SAY @923 /* ~[Jaheira] Solaufein, stay more to my left and protect our flanks!~ */
= @924 /* ~[Jaheira] ...It provides better coverage against enemy rogues.~ */
IF ~~ THEN DO ~SetGlobal("C#Solaufein_JaheiraBanter","GLOBAL",1)~ EXTERN C#SOLAUB jaheira_00
END
END

APPEND BJAHEI25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_JaheiraBanter","GLOBAL",0)~ THEN jaheira_00
SAY @923
= @924
IF ~~ THEN DO ~SetGlobal("C#Solaufein_JaheiraBanter","GLOBAL",1)~ EXTERN C#SOLAUB jaheira_00
END

END

CHAIN
IF ~~ THEN C#SOLAUB jaheira_00
@925 /* ~[Solaufein] Yes, Jaheira. I will do so right away!~ */
DO ~RealSetGlobalTimer("C#Solau_JaheiraBanterTimer","GLOBAL",10)~
EXIT

CHAIN
IF ~Global("C#Solaufein_JaheiraBanter","GLOBAL",2)~ THEN C#SOLAUJ jaheira_00_followup
@926 /* ~[Solaufein] ...It... also gives you a better angle to keep an eye on me, the *drow*?~ */ DO ~SetGlobal("C#Solaufein_JaheiraBanter","GLOBAL",3)~ 
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @927 /* ~[Jaheira] That... is true, but it was not my intention. <CHARNAME> obviously trusts you, so we should make the best of it. I was thinking about the best tactical formation against unexpected attacks.~ */
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @927
== C#SOLAUB @928 /* ~[Solaufein] You did, and I still agree. Yet, when you commanded me so sternly, I jumped to obey like you were one of the Handmaidens.  Who would have thought that though the Priestesses of Lolth always claimed that the elves were our natural hated enemies, I would still find so many similarities in your mannerisms.~ */
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @929 /* ~[Jaheira] You think I behave like a drow female? The comparison is ridiculous, Solaufein!~ */
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @929
== C#SOLAUB @930 /* ~[Solaufein] Considering my head is still attached to my body it was an inappropriate comparison, indeed. I do recognize that you are nothing like them, Jaheira. It was your tone - spoken by a female in a potential combat situation... It seems my conditioning to follow such commands without question in the heat of the moment runs deeper than I thought.~ */
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @931 /* ~[Jaheira] I wanted to communicate clearly and succinctly. A potential combat situation is no place for excessive wordiness. Yet... you are not the first one to tell me that my tone might sound harsh and commanding at times. I will... tone it down in the future.~ */
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @931
== C#SOLAUB @1219 /* ~[Solaufein] I thank you for the sentiment, Jaheira. Although I'm the one who really needs to learn the lesson.  It is going to be a bigger effort than I thought to free myself from old habits and social conditioning.~ */
EXIT

APPEND BJAHEIR

IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_JaheiraBanter","GLOBAL",3)~ THEN jaheira_02
SAY @934 /* ~[Jaheira] Solaufein, how much do you know about the surface world's flora?~ */
IF ~~ THEN DO ~SetGlobal("C#Solaufein_JaheiraBanter","GLOBAL",4)~ EXTERN C#SOLAUB jaheira_02
END
END

APPEND BJAHEI25

IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_JaheiraBanter","GLOBAL",3)~ THEN jaheira_02
SAY @934
IF ~~ THEN DO ~SetGlobal("C#Solaufein_JaheiraBanter","GLOBAL",4)~ EXTERN C#SOLAUB jaheira_02
END

END

CHAIN
IF ~~ THEN C#SOLAUB jaheira_02
@932 /* ~[Solaufein] You are probably not surprised that I find it difficult to name most of the plants we encounter, but you it may surprise you that this is mostly because I am seeing them in the light of the day for the first time, not in the dim light of the night.~ */
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @933 /* ~[Jaheira] That, indeed, is a reason I didn't expect. Well, if you have any questions concerning the plants we encounter, especially the fruit-bearing trees, edible roots, and herbs then do not hesitate to profit from my knowledge.~ */
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @933
== C#SOLAUB @937 /* ~[Solaufein] You would teach me? I am surprised and humbled, Jaheira. I thank you in advance for your offer.~ */
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @938 /* ~[Jaheira] It's not charity, Solaufein. <CHARNAME> decided we travel together, so I would prefer not to be accidentally poisoned at our next meal.~ */
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @938
== C#SOLAUB @939 /* ~[Solaufein] I see. I will try not to poison you accidentally, then.~ */
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @940 /* ~[Jaheira] That sounded... Never mind.~ */
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @940
EXIT

/* Solaufein - Mazzy */

APPEND BMAZZY

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_MazzyBanter","GLOBAL",0)~ THEN mazzy_01
SAY @941
IF ~~ THEN DO ~SetGlobal("C#Solaufein_MazzyBanter","GLOBAL",1)~ EXTERN C#SOLAUB mazzy_01
END
END

APPEND BMAZZY25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_MazzyBanter","GLOBAL",0)~ THEN mazzy_01
SAY @941
IF ~~ THEN DO ~SetGlobal("C#Solaufein_MazzyBanter","GLOBAL",1)~ EXTERN C#SOLAUB mazzy_01
END

END

CHAIN
IF ~~ THEN C#SOLAUB mazzy_01
@942
== BMAZZY IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @943
= @944
== BMAZZY25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @943
= @944
== C#SOLAUB @945
== BMAZZY IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @935
== BMAZZY25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @935
== C#SOLAUB @936
EXIT

/* Solaufein - Mazzy */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself) 
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_MazzyBanter","GLOBAL",1)
InParty("MAZZY") InMyArea("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN C#SOLAUB mazzy_02
@946 DO ~SetGlobal("C#Solaufein_MazzyBanter","GLOBAL",2) RealSetGlobalTimer("C#SolauBanterTimer","GLOBAL",800)~
== BMAZZY IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @947
== BMAZZY25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @947
== C#SOLAUB @948
== BMAZZY IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @949
== BMAZZY25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @949
== C#SOLAUB @950
== BMAZZY IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @951
== BMAZZY25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @951
EXIT




/* Solaufein - Jan */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_JanBanter","GLOBAL",0)
InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN C#SOLAUB jan_01
@952 DO ~SetGlobal("C#Solaufein_JanBanter","GLOBAL",1)~
== BJAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @953
== BJAN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @953
== C#SOLAUB @954
== BJAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @955
== BJAN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @955
== C#SOLAUB @956
== BJAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @957
== BJAN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @957
== C#SOLAUB @958
EXIT



/* Solaufein - Minsk */

APPEND BMINSC

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_MinscBanter","GLOBAL",1)~ THEN minsc_02
SAY @959
IF ~~ THEN DO ~SetGlobal("C#Solaufein_MinscBanter","GLOBAL",2)~ EXTERN C#SOLAUB minsc_02
END
END

APPEND BMINSC25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_MinscBanter","GLOBAL",1)~ THEN minsc_02
SAY @959
IF ~~ THEN DO ~SetGlobal("C#Solaufein_MinscBanter","GLOBAL",2)~ EXTERN C#SOLAUB minsc_02
END

END

CHAIN
IF ~~ THEN C#SOLAUB minsc_02
@960
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @961
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @961
== C#SOLAUB @962
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @963
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @963
== C#SOLAUB @964
EXIT




/* Solaufein - Sarevok */

CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_SarevokBanter","GLOBAL",0)
InParty("Sarevok") InMyArea("Sarevok") !StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN C#SOLAUB sarevok_01
@965
= @966 DO ~SetGlobal("C#Solaufein_SarevokBanter","GLOBAL",1)~
== BSAREV25 @967
== C#SOLAUB @968
EXIT




/* Solaufein - Korgan */
APPEND BKORGAN

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_KorganBanter","GLOBAL",0)~ THEN korgan_01
SAY @969
= @970
IF ~~ THEN DO ~SetGlobal("C#Solaufein_KorganBanter","GLOBAL",1)~ EXTERN C#SOLAUB korgan_01
END
END

APPEND BKORGA25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_KorganBanter","GLOBAL",0)~ THEN korgan_01
SAY @969 
= @970
IF ~~ THEN DO ~SetGlobal("C#Solaufein_KorganBanter","GLOBAL",1)~ EXTERN C#SOLAUB korgan_01
END

END

CHAIN
IF ~~ THEN C#SOLAUB korgan_01
@971
== BKORGAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @972
== BKORGA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @972
== C#SOLAUB @973
== BKORGAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @974
== BKORGA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @974
EXIT




/* Solaufein - Aerie: */
/* SoA 1 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_AerieBanter","GLOBAL",0)
InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN C#SOLAUB aerie_01
@975 DO ~SetGlobal("C#Solaufein_AerieBanter","GLOBAL",1)~ 
= @976
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @977 
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @977
== C#SOLAUB @978
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @979
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @979
== C#SOLAUB @980
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @981
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @981
EXIT


/* Solaufein - Mazzy: restbanter */
/* Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_MazzyBanter","GLOBAL",2)
InParty("MAZZY") InMyArea("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID) */
APPEND MAZZYJ 
IF WEIGHT #-1
~Global("C#Solaufein_MazzyBanter","GLOBAL",3)~ THEN mazzy_03
SAY @982 
IF ~~ THEN DO ~SetGlobal("C#Solaufein_MazzyBanter","GLOBAL",4)~ EXTERN C#SOLAUB mazzy_03
END
END //APPEND

APPEND MAZZY25J 
IF WEIGHT #-1
~Global("C#Solaufein_MazzyBanter","GLOBAL",3)~ THEN mazzy_03
SAY @982 
IF ~~ THEN DO ~SetGlobal("C#Solaufein_MazzyBanter","GLOBAL",4)~ EXTERN C#SOLAUB mazzy_03
END
END //APPEND

CHAIN
IF ~~ THEN C#SOLAUB mazzy_03
@983
= @984
== BMAZZY IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @985
= @986
= @2524
== BMAZZY25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @985
= @986
= @2524
== C#SOLAUB @2525
END
IF ~~ THEN DO ~RestParty()~ EXIT




/* Solaufein - Valygar */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ValygarBanter","GLOBAL",0)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN C#SOLAUB valygar_01
@987 DO ~SetGlobal("C#Solaufein_ValygarBanter","GLOBAL",1)~
== BVALYGA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @988
== BVALYG25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @988
== C#SOLAUB @989
EXIT






/* Solaufein - Keldorn: */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_KeldornBanter","GLOBAL",0)
InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB Keldorn_01
@990 DO ~SetGlobal("C#Solaufein_KeldornBanter","GLOBAL",1)~
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @991
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @991
== C#SOLAUB @992
= @993
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @994
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @994
== C#SOLAUB @995
EXIT



/* Solaufein - Cernd */
/* SoA 1 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_CerndBanter","GLOBAL",0)
InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN C#SOLAUB cernd_01
@996 DO ~SetGlobal("C#Solaufein_CerndBanter","GLOBAL",1)~
== BCERND IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @997
== BCERND25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @997
== C#SOLAUB @998
== BCERND IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2527
= @999
== BCERND25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2527
= @999
EXIT




/* Solaufein - Edwin(a) */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Gender("Edwin",FEMALE)
	GlobalGT("TalkedDegardan","GLOBAL",1)
Global("C#Solaufein_EdwinABanter","GLOBAL",0)
InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN C#SOLAUB Edwina_01
@1000 DO ~SetGlobal("C#Solaufein_EdwinABanter","GLOBAL",1)~
== BEDWIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1001
== BEDWIN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1001
== C#SOLAUB @1002
== BEDWIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1003
== BEDWIN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1003
== C#SOLAUB @1004
EXIT



/* Solaufein - Edwin; ToB only */
/* no check whether SoA banters run */

CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_EdwinBanterToB","GLOBAL",0)
InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB edwin_tob
@1005 DO ~SetGlobal("C#Solaufein_EdwinBanterToB","GLOBAL",1)~
== BEDWIN25 @1006
== C#SOLAUB @1007
== BEDWIN25 @1008
== C#SOLAUB @1009
== BEDWIN25 @1010
== C#SOLAUB @1011
== BEDWIN25 @1012
EXIT



/* Solaufein - Viconia */

CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ViconiaBanter","GLOBAL",0)
InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN C#SOLAUB viconia_01
@1013 DO ~SetGlobal("C#Solaufein_ViconiaBanter","GLOBAL",1)~
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1014
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1014
== C#SOLAUB @1015
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1016
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1016
EXIT



/* Solaufein - Haer'Dalis */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_HaerDalisBanter","GLOBAL",0)
InParty("haerdalis") InMyArea("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN C#SOLAUB haerdalis_01
@1017
= @1018 DO ~SetGlobal("C#Solaufein_HaerDalisBanter","GLOBAL",1)~
== BHAERDA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1019
== BHAERD25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1019
== C#SOLAUB @1020
== BHAERDA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1021
== BHAERD25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1021
EXIT


APPEND BHAERDA

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_HaerDalisBanter","GLOBAL",1)~ THEN haerdalis_02
SAY @1022
IF ~~ THEN DO ~SetGlobal("C#Solaufein_HaerDalisBanter","GLOBAL",2)~ EXTERN C#SOLAUB haerdalis_02
END
END

APPEND BHAERD25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_HaerDalisBanter","GLOBAL",1)~ THEN haerdalis_02
SAY @1022
IF ~~ THEN DO ~SetGlobal("C#Solaufein_HaerDalisBanter","GLOBAL",2)~ EXTERN C#SOLAUB haerdalis_02
END

/* ToB - only */
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_HaerDalisBanter","GLOBAL",2)
Global("C#Solaufein_HaerDalisBanterToB","GLOBAL",0)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN haerdalis_03
SAY @1023
IF ~~ THEN DO ~SetGlobal("C#Solaufein_HaerDalisBanterToB","GLOBAL",1)~ EXTERN C#SOLAUB haerdalis_03
END

END

CHAIN
IF ~~ THEN C#SOLAUB haerdalis_02
@1024
== BHAERDA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1025
== BHAERD25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1025
== C#SOLAUB @1026
EXIT


CHAIN
IF ~~ THEN C#SOLAUB haerdalis_03
@1027
== BHAERD25 @1028
== C#SOLAUB @1029
EXIT




/* Solaufein - Imoen */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ImoenBanter","GLOBAL",1)
InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN C#SOLAUB imoen_02
@1030 DO ~SetGlobal("C#Solaufein_ImoenBanter","GLOBAL",2)~
== BIMOEN2 IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1031
= @1032
= @1033
== BIMOEN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1031
= @1032
= @1033
EXIT



/* Solaufein - Mazzy; ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_MazzyBanter","GLOBAL",4)
Global("C#Solaufein_MazzyBanterToB","GLOBAL",0)
InParty("MAZZY") InMyArea("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB mazzy_04
@1034 DO ~SetGlobal("C#Solaufein_MazzyBanterToB","GLOBAL",1)~
== BMAZZY25 @1035
== C#SOLAUB @1036
== BMAZZY25 @1037
== C#SOLAUB @1038
== BMAZZY25 @1039
EXIT


/* Solaufein - Anomen; IsNotKnight = 0 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_AnomenBanter","GLOBAL",1)
InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN C#SOLAUB anomen_02
@1040 DO ~SetGlobal("C#Solaufein_AnomenBanter","GLOBAL",2)~
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @247
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @247
== C#SOLAUB @1041
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1042
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1042
== C#SOLAUB @1043
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1044
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1044
== C#SOLAUB @1045
EXIT


APPEND BANOMEN

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_AnomenBanter","GLOBAL",2)~ THEN anomen_03
SAY @1046
IF ~~ THEN DO ~SetGlobal("C#Solaufein_AnomenBanter","GLOBAL",3)~ EXTERN C#SOLAUB anomen_03
END

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_AnomenBanter","GLOBAL",3)~ THEN anomen_04
SAY @1047
IF ~~ THEN DO ~SetGlobal("C#Solaufein_AnomenBanter","GLOBAL",4)~ EXTERN C#SOLAUB anomen_04
END
END

APPEND BANOME25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_AnomenBanter","GLOBAL",2)~ THEN anomen_03
SAY @1046
IF ~~ THEN DO ~SetGlobal("C#Solaufein_AnomenBanter","GLOBAL",3)~ EXTERN C#SOLAUB anomen_03
END

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_AnomenBanter","GLOBAL",3)~ THEN anomen_04
SAY @1047 
IF ~~ THEN DO ~SetGlobal("C#Solaufein_AnomenBanter","GLOBAL",4)~ EXTERN C#SOLAUB anomen_04
END

END

CHAIN
IF ~~ THEN C#SOLAUB anomen_03
@1048
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1049
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1049
== C#SOLAUB @1050
EXIT

CHAIN
IF ~~ THEN C#SOLAUB anomen_04
@1051
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1052
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1052
== C#SOLAUB @1053
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1054
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1054
== C#SOLAUB @1055
== BANOMEN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1056
== BANOME25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1056
== C#SOLAUB @1057
EXIT





/* Solaufein - Nalia */

APPEND BNALIA

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_NaliaBanter","GLOBAL",0)~ THEN nalia_01
SAY @1058
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",1)~ EXTERN C#SOLAUB nalia_01
END

IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_NaliaBanter","GLOBAL",1)~ THEN nalia_01_b
SAY @2500
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",2)~ EXTERN C#SOLAUB nalia_01_b
END

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_NaliaBanter","GLOBAL",3)~ THEN nalia_03
SAY @1059
= @1060
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",4)~ EXTERN C#SOLAUB nalia_03
END

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_NaliaBanter","GLOBAL",4)~ THEN nalia_04
SAY @1061
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",5)~ EXTERN C#SOLAUB nalia_04
END

END

APPEND BNALIA25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_NaliaBanter","GLOBAL",0)~ THEN nalia_01
SAY @1058
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",1)~ EXTERN C#SOLAUB nalia_01
END

IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_NaliaBanter","GLOBAL",1)~ THEN nalia_01_b
SAY @2500
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",2)~ EXTERN C#SOLAUB nalia_01_b
END

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_NaliaBanter","GLOBAL",3)~ THEN nalia_03
SAY @1059
= @1060
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",4)~ EXTERN C#SOLAUB nalia_03
END

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_NaliaBanter","GLOBAL",4)~ THEN nalia_04
SAY @1061
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",5)~ EXTERN C#SOLAUB nalia_04
END

/* ToB only */
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_NaliaBanter","GLOBAL",5)
Global("C#Solaufein_NaliaBanterToB","GLOBAL",0)~ THEN nalia_05
SAY @1062
IF ~~ THEN DO ~SetGlobal("C#Solaufein_NaliaBanterToB","GLOBAL",1)~ EXTERN C#SOLAUB nalia_05
END

END

CHAIN
IF ~~ THEN C#SOLAUB nalia_01
@1063
== BNALIA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1064
== BNALIA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1064
== C#SOLAUB @1065
== BNALIA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1066
== BNALIA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1066
== C#SOLAUB @1067
== BNALIA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1068
== BNALIA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1068
== C#SOLAUB @1069
EXIT

CHAIN
IF ~~ THEN C#SOLAUB nalia_01_b
@2501
== BNALIA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2502
== BNALIA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2502
== C#SOLAUB @2503
== BNALIA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2504
== BNALIA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2504
== C#SOLAUB @2505
EXIT


CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_NaliaBanter","GLOBAL",2)
InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN C#SOLAUB nalia_02
@1070
= @1071 DO ~SetGlobal("C#Solaufein_NaliaBanter","GLOBAL",3)~
== BNALIA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1072
= @1073
== BNALIA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1072
= @1073
== C#SOLAUB @1074
== BNALIA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1075
== BNALIA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1075
== C#SOLAUB @1076
EXIT


CHAIN
IF ~~ THEN C#SOLAUB nalia_03
@1077
EXIT


CHAIN
IF ~~ THEN C#SOLAUB nalia_04
@1078
== BNALIA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1079
== BNALIA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1079
== C#SOLAUB @1080
EXIT


/* ToB */
CHAIN
IF ~~ THEN C#SOLAUB nalia_05
@1081
== BNALIA25 @1082
== C#SOLAUB @1083
== BNALIA25 @1084
== C#SOLAUB @1085
== BNALIA25 @1086
EXIT







/* Solaufein - Jaheira */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_JaheiraBanter","GLOBAL",4)
InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN C#SOLAUB jaheira_03
@1087 DO ~SetGlobal("C#Solaufein_JaheiraBanter","GLOBAL",5)~
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",8)~ THEN @1088
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",7)~ THEN @1088 
== C#SOLAUB @1089 
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",8)~ THEN @1090
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",7)~ THEN @1090
== C#SOLAUB @1091
EXIT


/* Solaufein - Jan */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_JanBanter","GLOBAL",1)
InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN C#SOLAUB jan_02
@1092 DO ~SetGlobal("C#Solaufein_JanBanter","GLOBAL",2)~
== BJAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1093
== BJAN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1093
== C#SOLAUB @1094
== BJAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1095
== BJAN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1095
EXIT

/* Solaufein - Valygar */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ValygarBanter","GLOBAL",1)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN C#SOLAUB valygar_02
@1096 DO ~SetGlobal("C#Solaufein_ValygarBanter","GLOBAL",2)~
== BVALYGA IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1097
= @1098
== BVALYG25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1097
= @1098
== C#SOLAUB @1099
EXIT



/* Solaufein - Minsk */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_MinscBanter","GLOBAL",2)
InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN C#SOLAUB minsc_03
@1100 DO ~SetGlobal("C#Solaufein_MinscBanter","GLOBAL",3)~
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",8)~ THEN @1101
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",7)~ THEN @1101
== C#SOLAUB @1102
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1103
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1103
== C#SOLAUB @1104
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1105
== C#SOLAUB @1106
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1105
== C#SOLAUB @1106
== BMINSC IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1101
== BMINSC25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1101
== C#SOLAUB @1107
EXIT

/* Solaufein - Sarevok */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_SarevokBanter","GLOBAL",1)
InParty("Sarevok") InMyArea("Sarevok") !StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN C#SOLAUB sarevok_02
@1108 DO ~SetGlobal("C#Solaufein_SarevokBanter","GLOBAL",2)~
== BSAREV25 @1109
== C#SOLAUB @1110
== BSAREV25 @1111
== C#SOLAUB @1112
== BSAREV25 @1113
EXIT



/* Solaufein - Imoen: ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_ImoenBanter","GLOBAL",2)
Global("C#Solaufein_ImoenBanterToB","GLOBAL",0)
InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB imoen_tob
@1114 DO ~SetGlobal("C#Solaufein_ImoenBanterToB","GLOBAL",1)~
== BIMOEN25 @1115
= @1116
EXIT



/* Solaufein - Imoen: ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ImoenBanterToB","GLOBAL",1)
InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB imoen_tob_2
@1117 DO ~SetGlobal("C#Solaufein_ImoenBanterToB","GLOBAL",2)~
== BIMOEN25 @1118
= @1119
EXIT




/* Solaufein - Korgan */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_KorganBanter","GLOBAL",1)
InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN C#SOLAUB korgan_02
@1120 DO ~SetGlobal("C#Solaufein_KorganBanter","GLOBAL",2)~
== BKORGAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1121
== BKORGA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1121
== C#SOLAUB @1122
= @1123
= @1124
EXIT





/* Solaufein - Aerie: */
/* SoA 2 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_AerieBanter","GLOBAL",1)
InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN C#SOLAUB aerie_02
@1125 DO ~SetGlobal("C#Solaufein_AerieBanter","GLOBAL",2)~
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1126
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1126
== C#SOLAUB @1127
= @1128
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1129
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1129
== C#SOLAUB @1130
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1131
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1131
EXIT



/* Solaufein - Minsk; ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_MinscBanter","GLOBAL",3)
Global("C#Solaufein_MinscBanterToB","GLOBAL",0)
InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",7)~ THEN C#SOLAUB minsc_04
@1100 DO ~SetGlobal("C#Solaufein_MinscBanterToB","GLOBAL",1)~
== BMINSC25 @1101
== C#SOLAUB @1132
== BMINSC25 @1133
== C#SOLAUB @1134
= @1135
== BMINSC25 @1136
== C#SOLAUB @1137
== BMINSC25 @1138
== C#SOLAUB @1139
EXIT




/* Solaufein - Valygar; ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_ValygarBanter","GLOBAL",2)
Global("C#Solaufein_ValygarBanterToB","GLOBAL",0)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB valygar_03
@1140 DO ~SetGlobal("C#Solaufein_ValygarBanterToB","GLOBAL",1)~
== BVALYG25 @1141
== C#SOLAUB @1142
== BVALYG25 @1143
= @1144
EXIT






/* Solaufein - Keldorn: */
CHAIN
IF 
~!Global("C#Solaufein_Gruebelt","GLOBAL",1)
Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_KeldornBanter","GLOBAL",1)
InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB Keldorn_02
@1145 DO ~SetGlobal("C#Solaufein_KeldornBanter","GLOBAL",2)~
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1146
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1146
== C#SOLAUB @1147
= @1148
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1149
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1149
== C#SOLAUB @1150
EXIT


/* Solaufein - Cernd */
/* SoA 2 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_CerndBanter","GLOBAL",1)
InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN C#SOLAUB cernd_02
@1151 DO ~SetGlobal("C#Solaufein_CerndBanter","GLOBAL",2)~
== BCERND IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1152
= @1153
== BCERND25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1152
= @1153
== BCERND IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)
Kit("CERND",SHAPESHIFTER)~ THEN @1154
== BCERND25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
Kit("CERND",SHAPESHIFTER)~ THEN @1154
== BCERND IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1155
== BCERND25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1155
== C#SOLAUB @1156
EXIT


/* add detection variable to Cernd's quest because the variable is reset to "0" in the game :-( */
ADD_TRANS_ACTION CERNDP BEGIN 10 END BEGIN END ~SetGlobal("C#Solau_CerndBaby","GLOBAL",1)~


/* Solaufein - Cernd */
/* Cernd after quest, SoA only */
CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)
Global("C#Solau_CerndBaby","GLOBAL",1) //after Cerns brought his son to druid grove
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_CerndBanterQ","GLOBAL",0)
InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN C#SOLAUB cernd_02
@1157 DO ~SetGlobal("C#Solaufein_CerndBanterQ","GLOBAL",1)~
== BCERND @1158
== C#SOLAUB @1159
== BCERND @1160
== C#SOLAUB @1161
== BCERND @2528
== C#SOLAUB @2529
== BCERND @2530
== C#SOLAUB @2531
== BCERND @2532
EXIT




/* Solaufein - Anomen; IsNotKnight = 0, rep > 10; ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_AnomenBanter","GLOBAL",4)
Global("C#Solaufein_AnomenBanterToB","GLOBAL",0)
InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0) ReputationGT(Player1,10)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB anomen_05_isknight
@1162 DO ~SetGlobal("C#Solaufein_AnomenBanterToB","GLOBAL",1)~
== BANOME25 @1163
== C#SOLAUB @1164
== BANOME25 @1165
== C#SOLAUB @1166
== BANOME25 @1167
== C#SOLAUB @1168
EXIT


/* Solaufein - Anomen; IsNotKnight = 1, rep < 9; ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_AnomenBanter","GLOBAL",4)
Global("C#Solaufein_AnomenBanterToB","GLOBAL",0)
InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1) ReputationLT(Player1,9)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB anomen_05_isnotknight
@1169 DO ~SetGlobal("C#Solaufein_AnomenBanterToB","GLOBAL",1)~
== BANOME25 @1163
== C#SOLAUB @1170
== BANOME25 @1171
== C#SOLAUB @1172
== BANOME25 @1167
== C#SOLAUB @1168
EXIT



APPEND BEDWIN

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_EdwinABanter","GLOBAL",1)~ THEN edwina_02
SAY @1173
=  @1174
IF ~~ THEN DO ~SetGlobal("C#Solaufein_EdwinABanter","GLOBAL",2)~ EXTERN C#SOLAUB edwina_02
END
END

APPEND BEDWIN25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_EdwinABanter","GLOBAL",1)~ THEN edwina_02
SAY @1173
=  @1174 
IF ~~ THEN DO ~SetGlobal("C#Solaufein_EdwinABanter","GLOBAL",2)~ EXTERN C#SOLAUB edwina_02
END

END

CHAIN
IF ~~ THEN C#SOLAUB edwina_02
@1175 
== BEDWIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1176
== BEDWIN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1176
== C#SOLAUB @1177
== BEDWIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1178
== BEDWIN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1178
EXIT



/* Solaufein - Viconia */
/* 2 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ViconiaBanter","GLOBAL",1)
InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN C#SOLAUB viconia_05
@1277 DO ~SetGlobal("C#Solaufein_ViconiaBanter","GLOBAL",2)~
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1278
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1278
== C#SOLAUB @1279
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1280
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1280
== C#SOLAUB @1281
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1282
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1282
EXIT




/* Solaufein - Jaheira */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_JaheiraBanter","GLOBAL",5)
InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN C#SOLAUB jaheira_04
@1184 DO ~SetGlobal("C#Solaufein_JaheiraBanter","GLOBAL",6)~
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1185
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1185 
== C#SOLAUB @1186
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1187
= @1188
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1187
= @1188 
== C#SOLAUB @1189
== BJAHEIR IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1190
== BJAHEI25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1190 
EXIT




/* Solaufein - Jan */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_JanBanter","GLOBAL",2)
InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN C#SOLAUB jan_03
@1191 DO ~SetGlobal("C#Solaufein_JanBanter","GLOBAL",3)~
== BJAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1192
== BJAN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1192
== C#SOLAUB @1193
== BJAN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1194
= @1195
== BJAN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1194
= @1195
EXIT



/* Solaufein - Sarevok */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_SarevokBanter","GLOBAL",2)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein") 
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN BSAREV25 sarevok_03
@1196 DO ~SetGlobal("C#Solaufein_SarevokBanter","GLOBAL",3)~
== C#SOLAUB @1197
== C#SOLAUB @1198
== BSAREV25 @1199
EXIT




/* Solaufein - Aerie: */
/* SoA 3 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_AerieBanter","GLOBAL",2)
InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN C#SOLAUB aerie_03
@1200 DO ~SetGlobal("C#Solaufein_AerieBanter","GLOBAL",3)~
= @1201
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1202
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1202
== C#SOLAUB @1203
= @1204
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1205
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1205
== C#SOLAUB @1206
= @1207
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1208
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1208
EXIT



/* Solaufein - Keldorn: */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
		Global("LadyMaria","GLOBAL",4)
		Global("LadyMaria","GLOBAL",5)
Global("C#Solaufein_KeldornBanter","GLOBAL",2)
InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB Keldorn_03
@1209
= @1210 DO ~SetGlobal("C#Solaufein_KeldornBanter","GLOBAL",3)~
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1211
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1211
== C#SOLAUB @1212
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1213
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1213
EXIT


/* Solaufein - Cernd - ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_CerndBanter","GLOBAL",2)
Global("C#Solaufein_CerndBanterToB","GLOBAL",0)
InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB cernd_04
@1214 DO ~SetGlobal("C#Solaufein_CerndBanterToB","GLOBAL",1)~
== BCERND25 @1215
= @1216
== C#SOLAUB @1220
== BCERND25 @1221
== C#SOLAUB @1217
== BCERND25 @1218
EXIT




/* Solaufein - Viconia */
/* 3 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ViconiaBanter","GLOBAL",2)
InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN C#SOLAUB viconia_02
@1179 DO ~SetGlobal("C#Solaufein_ViconiaBanter","GLOBAL",3)~
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1180
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1180
== C#SOLAUB @1181
= @1182
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1183
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1183
EXIT

/* Solaufein - Viconia */
/* 4 */
APPEND BVICONI

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_ViconiaBanter","GLOBAL",3)~ THEN viconia_03
SAY @1222
IF ~~ THEN DO ~SetGlobal("C#Solaufein_ViconiaBanter","GLOBAL",4)~ EXTERN C#SOLAUB viconia_03
END
END

APPEND BVICON25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_ViconiaBanter","GLOBAL",3)~ THEN viconia_03
SAY @1222 
IF ~~ THEN DO ~SetGlobal("C#Solaufein_ViconiaBanter","GLOBAL",4)~ EXTERN C#SOLAUB viconia_03
END

END

CHAIN
IF ~~ THEN C#SOLAUB viconia_03
@1223
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1224
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1224
== C#SOLAUB @1225
= @1226 
EXIT




/* Solaufein - Aerie: */
/* SoA 4 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_AerieBanter","GLOBAL",3)
InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN C#SOLAUB aerie_04
@1242 DO ~SetGlobal("C#Solaufein_AerieBanter","GLOBAL",4)~
= @1243
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1244
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1244
== C#SOLAUB @1247
EXIT



/* Solaufein - Jaheira ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_JaheiraBanter","GLOBAL",6)
Global("C#Solaufein_JaheiraBanterToB","GLOBAL",0)
InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB jaheira_05
@1227 DO ~SetGlobal("C#Solaufein_JaheiraBanterToB","GLOBAL",1)~
== BJAHEI25 @1228
== C#SOLAUB @1229
== BJAHEI25 @1230
== C#SOLAUB @1231
== BJAHEI25 @1232
EXIT



/* Solaufein - Jan; ToB only */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_JanBanter","GLOBAL",3)
Global("C#Solaufein_JanBanterToB","GLOBAL",0)
InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB jan_04
@1233 DO ~SetGlobal("C#Solaufein_JanBanterToB","GLOBAL",1)~
== BJAN25 @1234
= @1235
== C#SOLAUB @1236
== BJAN25 @1237
== C#SOLAUB @1238
== BJAN25 @1239
== C#SOLAUB @1240
= @1241
EXIT







/* Solaufein - Keldorn: */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_KeldornBanter","GLOBAL",3)
InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB Keldorn_04
@1248 DO ~SetGlobal("C#Solaufein_KeldornBanter","GLOBAL",4)~
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1249
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1249
== C#SOLAUB @1250
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1251
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1251
== C#SOLAUB @1252
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1253
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1253
== C#SOLAUB @1254
EXIT




/* Solaufein - Aerie: */
/* SoA 5 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_AerieBanter","GLOBAL",4)
InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN C#SOLAUB aerie_05
@1294 DO ~SetGlobal("C#Solaufein_AerieBanter","GLOBAL",5)~
= @1295
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1296
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1296
== C#SOLAUB @1297
= @1298
EXIT




/* Solaufein - Viconia */
/* 5 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ViconiaBanter","GLOBAL",4)
InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN C#SOLAUB viconia_04
@1255 DO ~SetGlobal("C#Solaufein_ViconiaBanter","GLOBAL",5)~
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Alignment("Viconia",MASK_EVIL)~ THEN @1256
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Alignment("Viconia",MASK_EVIL)~ THEN @1256
== C#SOLAUB IF ~Alignment("Viconia",MASK_EVIL)~ THEN @1257
== C#SOLAUB @1258
== BVICONI IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1259
== BVICON25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1259
EXIT



/* Solaufein - Keldorn: */

CHAIN
IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_KeldornBanter","GLOBAL",4)
InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB Keldorn_01
@2506 DO ~SetGlobal("C#Solaufein_KeldornBanter","GLOBAL",5)~
= @2507
= @2508
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2509
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2509
== C#SOLAUB @2510
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2511
= @2512
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2511
= @2512
== C#SOLAUB @2513
== BKELDOR  IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @2514
== BKELDO25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2514
== C#SOLAUB @2515
EXIT

/* Solaufein - Aerie: */
/* SoA 6 */
CHAIN
IF 
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_AerieBanter","GLOBAL",5)
InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN C#SOLAUB aerie_06
@1260 DO ~SetGlobal("C#Solaufein_AerieBanter","GLOBAL",6)~
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1261
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1261
== C#SOLAUB @1262
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1263
= @1264
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1263
= @1264
== C#SOLAUB @1265
EXIT



/* Solaufein - Korgan, ToB only: */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_KorganBanter","GLOBAL",2)
Global("C#Solaufein_KorganBanterToB","GLOBAL",0)
InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB korgan_03
@1274 DO ~SetGlobal("C#Solaufein_KorganBanterToB","GLOBAL",1)~
== BKORGA25 @1275
== C#SOLAUB @1276
EXIT



/* Solaufein - Viconia - ToB only */
/* ToB 1 */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_ViconiaBanter","GLOBAL",5)
Global("C#Solaufein_ViconiaBanterToB","GLOBAL",0)
InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB viconia_06
@1288 DO ~SetGlobal("C#Solaufein_ViconiaBanterToB","GLOBAL",1)~
== BVICON25 @1289
== C#SOLAUB @1290
= @1291
== BVICON25 @1292
== C#SOLAUB @1293
EXIT






/* Solaufein - Aerie */
/* SoA 7 */
APPEND BAERIE

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_AerieBanter","GLOBAL",6)~ THEN aerie_07
SAY @1245
IF ~~ THEN DO ~SetGlobal("C#Solaufein_AerieBanter","GLOBAL",7)~ EXTERN C#SOLAUB aerie_07
END
END

APPEND BAERIE25

IF WEIGHT #-1
~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_AerieBanter","GLOBAL",6)~ THEN aerie_07
SAY @1245 
IF ~~ THEN DO ~SetGlobal("C#Solaufein_AerieBanter","GLOBAL",7)~ EXTERN C#SOLAUB aerie_07
END

END

CHAIN
IF ~~ THEN C#SOLAUB aerie_07
@1246
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1284
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1284
== C#SOLAUB @1285
= @1286 
= @1299
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1287
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1287
== C#SOLAUB @2526
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1303
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1303
EXIT




/* Solaufein - Keldorn, Tob only: */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	GlobalGT("C#Solaufein_KeldornBanter","GLOBAL",1)
Global("C#Solaufein_KeldornBanterToB","GLOBAL",0)
InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB Keldorn_05
@1266 DO ~SetGlobal("C#Solaufein_KeldornBanterToB","GLOBAL",1)~
== BKELDO25 @1267
== C#SOLAUB @1268
= @1269
== BKELDO25 @1270
== C#SOLAUB @1271
== BKELDO25 @1272
= @1273
EXIT



/* Solaufein - Viconia; ToB only */
/* ToB 2 */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_ViconiaBanterToB","GLOBAL",1)
InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#SOLAUB viconia_06
@1300 DO ~SetGlobal("C#Solaufein_ViconiaBanterToB","GLOBAL",2)~
== BVICON25 @1301
== C#SOLAUB @1302
== BVICON25 @1283
EXIT




/* Solaufein - Aerie; Tob only: */
/* ToB 1 */
CHAIN
IF ~Global("C#SolauNoScenery","GLOBAL",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2)
	Global("C#SolaufeinFriends","GLOBAL",1)
	Global("C#Solaufein_AerieBanter","GLOBAL",7)
Global("C#Solaufein_AerieBanterToB","GLOBAL",0)
InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN C#SOLAUB aerie_tob_01
@1307 DO ~SetGlobal("C#Solaufein_AerieBanterToB","GLOBAL",1)~
== BAERIE25 @1308
== C#SOLAUB @1309
= @1310
= @1311
== BAERIE25 @1312 
== C#SOLAUB @1313
== BAERIE25 @1314
== C#SOLAUB @1315
== BAERIE25 @1316
== C#SOLAUB @1317
== BAERIE25 @1318
== C#SOLAUB @1319
EXIT



/* ToB 2 */
APPEND BAERIE25 

IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR(2) Global("C#SolauJoined","GLOBAL",2) InParty("C#Solaufein")
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
!Dead("C#Solaufein")
Global("C#Solaufein_AerieBanterToB","GLOBAL",1)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN aerie_08
SAY @1304
= @1305
= @1306 
IF ~~ THEN DO ~SetGlobal("C#Solaufein_AerieBanterToB","GLOBAL",2)~ EXTERN C#SOLAUB aerie_tob_02
END

END


CHAIN
IF ~~ THEN C#SOLAUB aerie_tob_02
@1320
== BAERIE25 @1321
== C#SOLAUB @1322
== BAERIE25 @1323
== C#SOLAUB @1324
== BAERIE25 @1325
== C#SOLAUB @1326
= @1327
EXIT
