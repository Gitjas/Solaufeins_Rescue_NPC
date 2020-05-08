

ADD_TRANS_ACTION UDSOLA01 BEGIN 49 END BEGIN END ~
SetGlobal("C#SolaufeinEntschuldigung","GLOBAL",1)~

//PC hat die Eier von Solaufein genommen
ADD_TRANS_ACTION UDSOLA01 BEGIN 161 152 END BEGIN END 
~SetGlobal("C#SolaufeinEier","GLOBAL",1)~

//PC hat die angebotenen Eier ausgeschlagen (163: "ich traue Euch nicht, Solaufein", 153: "ich habe nicht vor, Phaere zu hintergehen")
 
ADD_TRANS_ACTION UDSOLA01 BEGIN 163 153 END BEGIN END 
~SetGlobal("C#SolaufeinEier","GLOBAL",2)~


BEGIN ~C#SOLAUJ~




/* Friendship path */



/* Phase 1: Solaufein glaubt noch, mit den Beeinträchtigungen der Oberfläche zurecht zu kommen. Er spricht viel über seine Schwächen und versucht, seine Aufregung mit Sarkasmus oder Eigenironie zu überspielen. */



IF ~Global("C#Solaufein_Dialog","GLOBAL",2)~ THEN talk_hallo
SAY @157
+ ~Global("C#Solau_TalkedIrenicus","GLOBAL",1)~ + @158 DO ~SetGlobal("C#Solau_TalkedSoul","GLOBAL",1)~ + hallo_01_2
+ ~Global("C#Solau_TalkedSoul","GLOBAL",1)~ + @158 + hallo_01_1

+ ~!Global("C#Solau_TalkedIrenicus","GLOBAL",1) 
!Global("C#Solau_TalkedSoul","GLOBAL",1)~ + @158 DO ~SetGlobal("C#Solau_TalkedSoul","GLOBAL",1)~ + hallo_01_2

+ ~Global("C#Solau_TalkedIrenicus","GLOBAL",1)~ + @159 + hallo_01_6
+ ~Global("C#Solau_TalkedSoul","GLOBAL",1)~ + @159 + hallo_01_1

+ ~!Global("C#Solau_TalkedIrenicus","GLOBAL",1) 
!Global("C#Solau_TalkedSoul","GLOBAL",1)~ + @159 + hallo_01_6

++ @160 DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",-1)~ + hallo_01
END

IF ~~ THEN hallo_01
SAY @161
= @162
IF ~~ THEN + hallo_01_7
END

IF ~~ THEN hallo_01_1
SAY @163
IF ~~ THEN + hallo_01_3
END

IF ~~ THEN hallo_01_2
SAY @164
IF ~~ THEN + hallo_01_3
END

IF ~~ THEN hallo_01_3
SAY @165
IF ~OR(2)
InParty("Viconia")
InParty("DKDrizzt")~ THEN + hallo_01_4
IF ~!InParty("Viconia")
!InParty("DKDrizzt")~ THEN + hallo_01_7
END

IF ~~ THEN hallo_01_4
SAY @166
IF ~~ THEN + hallo_01_5
END

IF ~~ THEN hallo_01_5
SAY @167
IF ~~ THEN + hallo_01_7
END

IF ~~ THEN hallo_01_6
SAY @168
++ @169 + hallo_01_2
++ @170 + hallo_01_3
++ @171 + hallo_01
END

IF ~~ THEN hallo_01_7
SAY @172
= @173
++ @174 + hallo_02
++ @175 + hallo_03
++ @176 + hallo_04
END

IF ~~ THEN hallo_02
SAY @177 
IF ~~ THEN DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",1)~ + hallo_05
END

IF ~~ THEN hallo_03
SAY @178
IF ~~ THEN + hallo_05
END

IF ~~ THEN hallo_04
SAY @179 
IF ~~ THEN + hallo_05
END

IF ~~ THEN hallo_05
SAY @180
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END


/* ---- */

IF ~Global("C#Solaufein_Dialog","GLOBAL",4)~ THEN ability_drain
SAY @181
++ @182 + ability_drain_01
++ @183 + ability_drain_02
++ @184 + ability_drain_06
++ @185 + ability_drain_04
++ @186 + ability_drain_07
END

IF ~~ THEN ability_drain_01
SAY @187
++ @183 + ability_drain_02
++ @184 + ability_drain_06
++ @185 + ability_drain_04
++ @186 + ability_drain_07
END

IF ~~ THEN ability_drain_02
SAY @188
IF ~~ THEN + ability_drain_07
END

IF ~~ THEN ability_drain_03
SAY @189
++ @190 + ability_drain_04
++ @191 + ability_drain_08
++ @185 + ability_drain_04
++ @192 + ability_drain_04
END

IF ~~ THEN ability_drain_04
SAY @193
IF ~~ THEN + ability_drain_05
END

IF ~~ THEN ability_drain_05
SAY @194
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN ability_drain_06
SAY @195
IF ~~ THEN + ability_drain_07
END

IF ~~ THEN ability_drain_07
SAY @196
IF ~~ THEN + ability_drain_03
END

IF ~~ THEN ability_drain_08
SAY @197
IF ~~ THEN DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",1)~ + ability_drain_04
END



/* ---- */


IF ~Global("C#Solaufein_Dialog","GLOBAL",6)~ THEN bhaal_heritage
SAY @198
++ @199 + bhaal_heritage_01
++ @200 + bhaal_heritage_01
++ @201 + bhaal_heritage_02
++ @202 + bhaal_heritage_02
END

IF ~~ THEN bhaal_heritage_01
SAY @203
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN + bhaal_heritage_tob
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN + bhaal_heritage_01a
END

IF ~~ THEN bhaal_heritage_01a
SAY @204
= @205
++ @206 + bhaal_heritage_04
++ @207 + bhaal_heritage_05
++ @208 + bhaal_heritage_06
++ @209 + bhaal_heritage_03
END

IF ~~ THEN bhaal_heritage_tob
SAY @210
= @211
++ @212 + bhaal_heritage_03
++ @213 + bhaal_heritage_03
++ @214 + bhaal_heritage_03
END

IF ~~ THEN bhaal_heritage_02
SAY @215
IF ~~ THEN + bhaal_heritage_01
END

CHAIN
IF ~~ THEN C#SOLAUJ bhaal_heritage_03
@216
= @217
== C#SOLAUJ IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @218
== C#SOLAUJ IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @219
END
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT

APPEND C#SOLAUJ

IF ~~ THEN bhaal_heritage_04
SAY @220
IF ~~ THEN + bhaal_heritage_03
END

IF ~~ THEN bhaal_heritage_05
SAY @221
IF ~~ THEN + bhaal_heritage_03
END

IF ~~ THEN bhaal_heritage_06
SAY @222
IF ~~ THEN + bhaal_heritage_03
END


/* ---- */



IF ~Global("C#Solaufein_Dialog","GLOBAL",8)~ THEN surfacer_leader
SAY @223
= @224
= @225 
++ @226 + HC_name_01
++ @227 + HC_name_03
++ @228 + HC_name_04
++ @229 + HC_name_02
++ @230 + HC_name_07
++ @231 + HC_name_06
END

IF ~~ THEN HC_name_01
SAY @232
++ @233 + HC_name_02
++ @227 + HC_name_03
++ @229 + HC_name_02_b
++ @230 + HC_name_07
++ @231 + HC_name_06
END

IF ~~ THEN HC_name_02
SAY @234
IF ~~ THEN + HC_name_05
END

IF ~~ THEN HC_name_02_b
SAY @1846
IF ~~ THEN + HC_name_05
END

IF ~~ THEN HC_name_03
SAY @235
IF ~~ THEN + HC_name_05
END

IF ~~ THEN HC_name_04
SAY @236
IF ~~ THEN + HC_name_05
END

IF ~~ THEN HC_name_05
SAY @237
= @238 
= @239
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN HC_name_06
SAY @240 
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1) IncrementGlobal("C#SolauFriendshipCounter","LOCALS",-1)~ EXIT
END

IF ~~ THEN HC_name_07
SAY @241
IF ~~ THEN + HC_name_05
END

/* ---- */

/* PC is drow 
Global("C#Solaufein_PCIsDrow","GLOBAL",1) */


IF ~Global("C#Solaufein_Dialog","GLOBAL",10) !Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ THEN attitude
SAY @242
IF ~~ THEN + attitude_00b
END

IF ~Global("C#Solaufein_Dialog","GLOBAL",10) Global("C#Solaufein_PCIsDrow","GLOBAL",1)~ THEN attitude_00
SAY @243
IF ~~ THEN + attitude_00b
END

IF ~~ THEN attitude_00b
SAY @244 
++ @245 + attitude_02
++ @246 + attitude_01
++ @247 + attitude_02
END

IF ~~ THEN attitude_01
SAY @248
IF ~~ THEN + attitude_02
END

IF ~~ THEN attitude_02
SAY @249
++ @250 + attitude_03
++ @251 + attitude_05
++ @252 + attitude_05
++ @253 + attitude_06
END

IF ~~ THEN attitude_03
SAY @254
++ @255 + attitude_05
++ @256 + attitude_05
++ @252 + attitude_05
++ @253 + attitude_06
END

IF ~~ THEN attitude_04
SAY @257
= @258 
++ @259 + attitude_08
++ @260 + attitude_07
++ @261 + attitude_07
++ @262 + attitude_07
END

IF ~~ THEN attitude_05
SAY @263
IF ~~ THEN + attitude_04
END

IF ~~ THEN attitude_06
SAY @264
IF ~~ THEN + attitude_04
END

IF ~~ THEN attitude_07
SAY @265
IF ~~ THEN + attitude_09
END

IF ~~ THEN attitude_08
SAY @266
IF ~~ THEN + attitude_09
END

IF ~~ THEN attitude_09
SAY @267
= @268
= @269
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END






/* ---- */

IF ~Global("C#Solaufein_Dialog","GLOBAL",12)~ THEN silberdrache
SAY @270
++ @271 + ehemals_drow_silberdrache
++ @272 + ehemals_drow_silberdrache_02
++ @273 + ehemals_drow_silberdrache_05
++ @274 DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",-1)~ + silberdrache_ende
END

IF ~~ THEN ehemals_drow_silberdrache
SAY @275
IF ~Dead("udsilver")~ THEN + ehemals_drow_silberdrache_01
IF ~!Dead("udsilver")~ THEN + ehemals_drow_silberdrache_02
END

IF ~~ THEN ehemals_drow_silberdrache_01
SAY @276
IF ~~ THEN + ehemals_drow_silberdrache_02
END

IF ~~ THEN ehemals_drow_silberdrache_02
SAY @277
IF ~!Global("C#SolaufeinEier","GLOBAL",2)~ THEN + ehemals_drow_silberdrache_04
IF ~Global("C#SolaufeinEier","GLOBAL",2)~ THEN + ehemals_drow_silberdrache_03
END

IF ~~ THEN ehemals_drow_silberdrache_03
SAY @278
IF ~~ THEN + ehemals_drow_silberdrache_04
END

IF ~~ THEN ehemals_drow_silberdrache_04
SAY @279
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN ehemals_drow_silberdrache_05
SAY @280
++ @281 + ehemals_drow_silberdrache_06
++ @271 + ehemals_drow_silberdrache
++ @272 + ehemals_drow_silberdrache_02
++ @274 DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",-1)~ + silberdrache_ende
END

IF ~~ THEN ehemals_drow_silberdrache_06
SAY @282
++ @271 + ehemals_drow_silberdrache
++ @272 + ehemals_drow_silberdrache_02
++ @274 + silberdrache_ende
END

IF ~~ THEN silberdrache_ende
SAY @240 
IF ~~ THEN EXIT
END





/* Phase 2: Solaufein ist irritiert, weil er seine Schwächen nicht so schnell und gut überwinden kann, wie er es sich vorgestellt hatte. Er ist positiver überrascht und beeindruckt über das Zusammenleben auf der Oberfläche, als er es erwartet hatte. Er wird mürrischer/bissiger. Er vergreift sich im Tonfall und entschuldigt sich danach. JA ICh WEISS DAS IST KLISCHEE*/




/* ---- */

IF ~Global("C#Solaufein_Dialog","GLOBAL",14)~ THEN sprache
SAY @283
++ @284 + sprache_00
++ @285 + sprache_04
++ @286 + sprache_04
++ @287 DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",-1)~ + sprache_gelernt_ende
END

IF ~~ THEN sprache_00
SAY @288
++ @289 + sprache_04
++ @290 + sprache_gelernt
++ @291 + sprache_01
++ @287 + sprache_gelernt_ende
++ @292 DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",-1)~ + sprache_gelernt_ruhe
END

IF ~~ THEN sprache_01
SAY @293
= @294
+ ~!InParty("Viconia")~ + @295 + sprache_02
+ ~InParty("Viconia")~ + @295 + sprache_03
++ @289 + sprache_04
++ @290 + sprache_gelernt
++ @296 + sprache_gelernt_ende
++ @292 + sprache_gelernt_ruhe
END

IF ~~ THEN sprache_02
SAY @297
++ @290 + sprache_gelernt
++ @296 + sprache_gelernt_ende
++ @292 + sprache_gelernt_ruhe
END

IF ~~ THEN sprache_03
SAY @298
IF ~~ THEN + sprache_02
END

IF ~~ THEN sprache_04
SAY @299
++ @290 + sprache_gelernt
++ @296 + sprache_gelernt_ende
++ @292 + sprache_gelernt_ruhe
END

IF ~~ THEN sprache_gelernt
SAY @300
++ @86 + sprache_gelernt_2_1
++ @301 + sprache_gelernt_2
++ @296 + sprache_gelernt_ende
END

IF ~~ THEN sprache_gelernt_2
SAY @302
IF ~~ THEN + sprache_gelernt_2_1
END

IF ~~ THEN sprache_gelernt_2_1
SAY @303
= @304
= @305
= @306
= @307
IF ~~ THEN + sprache_gelernt_ende
END

IF ~~ THEN sprache_gelernt_ende
SAY @308
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN sprache_gelernt_ruhe
SAY @309
++ @310 + sprache_gelernt_ende
++ @311 + friendship_end_2
END




/* ---- */



IF ~Global("C#Solaufein_Dialog","GLOBAL",16)~ THEN weapons
SAY @312
= @313
++ @314 + weapons_01
++ @315 + weapons_01
++ @316 + weapons_01
++ @317 + weapons_02
++ @318 + weapons_02
++ @319 DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",-1)~ + weapons_01
END

IF ~~ THEN weapons_01
SAY @320
++ @321 + weapons_03
++ @322 + weapons_05 
++ @323 + weapons_03
++ @324 + weapons_04
END

IF ~~ THEN weapons_02
SAY @325
IF ~~ THEN + weapons_01
END

IF ~~ THEN weapons_03
SAY @326
IF ~~ THEN + weapons_05 
END

IF ~~ THEN weapons_04
SAY @327
IF ~~ THEN + weapons_05 
END

IF ~~ THEN weapons_05 
SAY @328
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END



/* ---- */

IF ~Global("C#Solaufein_Dialog","GLOBAL",18)~ THEN raubzuege
SAY @329 
++ @330 + raubzuege_01
++ @331 + raubzuege_01
++ @332 + raubzuege_02
END

IF ~~ THEN raubzuege_01
SAY @333
IF ~~ THEN + raubzuege_03
END

IF ~~ THEN raubzuege_02
SAY @334
IF ~~ THEN + raubzuege_03
END

IF ~~ THEN raubzuege_03
SAY @335
= @336
++ @337 + raubzuege_04 
++ @338 + raubzuege_05 
++ @339 + raubzuege_10 
END


IF ~~ THEN raubzuege_04 
SAY @340
++ @338 + raubzuege_05 
++ @339 + raubzuege_10 
END

IF ~~ THEN raubzuege_05 
SAY @341
= @342
++ @343 + raubzuege_06 
++ @344 + raubzuege_08 
++ @339 + raubzuege_10 
END

IF ~~ THEN raubzuege_06 
SAY @345
++ @346 + raubzuege_07 
++ @339 + raubzuege_10 
END

IF ~~ THEN raubzuege_07 
SAY @347
++ @348 + raubzuege_08 
++ @349 + raubzuege_09 
++ @339 + raubzuege_10 
END

IF ~~ THEN raubzuege_08 
SAY @350
IF ~~ THEN + raubzuege_09 
END

IF ~~ THEN raubzuege_09 
SAY @351
= @352
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN raubzuege_10 
SAY @240 
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END



/* ---- */

IF ~Global("C#Solaufein_Dialog","GLOBAL",20)~ THEN kampf
SAY @353
++ @354 + kampf_03
++ @355 + kampf_01
++ @356 + kampf_02
++ @357 + kampf_03
END

IF ~~ THEN kampf_01
SAY @358
IF ~~ THEN + kampf_03
END

IF ~~ THEN kampf_02
SAY @359 
IF ~~ THEN + kampf_03
END

IF ~~ THEN kampf_03
SAY @360
= @361
= @362
= @363
= @364
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1) 
SetGlobal("C#SolaufeinPID3","GLOBAL",1)
~ EXIT
END


/* ---- */




IF ~Global("C#Solaufein_Dialog","GLOBAL",22)~ THEN kraft
SAY @365
= @366
++ @367 DO ~SetGlobal("C#Solau_FPkraft2","LOCALS",1)~ + kraft_01
++ @368 DO ~SetGlobal("C#Solau_FPkraft1","LOCALS",1)~ + kraft_04
++ @369 DO ~SetGlobal("C#Solau_FPkraft3","LOCALS",1)~ + kraft_05
++ @370 + kraft_06
++ @371 DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",-1)~ + kraft_03
END

IF ~~ THEN kraft_01
SAY @372
= @373
+ ~!Global("C#Solau_FPkraft1","LOCALS",1)~ + @368 DO ~SetGlobal("C#Solau_FPkraft1","LOCALS",1)~ + kraft_04
+ ~!Global("C#Solau_FPkraft3","LOCALS",1)~ + @369 DO ~SetGlobal("C#Solau_FPkraft3","LOCALS",1)~ + kraft_05
++ @374 + kraft_03
++ @371 + kraft_03
END

IF ~~ THEN kraft_02
SAY @375
= @376
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN kraft_03
SAY @377
IF ~~ THEN + kraft_02
END

IF ~~ THEN kraft_04
SAY @378
= @379
+ ~!Global("C#Solau_FPkraft2","LOCALS",1)~ + @367 DO ~SetGlobal("C#Solau_FPkraft2","LOCALS",1)~ + kraft_01
+ ~!Global("C#Solau_FPkraft3","LOCALS",1)~ + @369 DO ~SetGlobal("C#Solau_FPkraft3","LOCALS",1)~ + kraft_05
++ @374 + kraft_03
++ @371 + kraft_03
END

IF ~~ THEN kraft_05
SAY @380
+ ~!Global("C#Solau_FPkraft2","LOCALS",1)~ + @367 DO ~SetGlobal("C#Solau_FPkraft2","LOCALS",1)~ + kraft_01
+ ~!Global("C#Solau_FPkraft1","LOCALS",1)~ + @368 DO ~SetGlobal("C#Solau_FPkraft1","LOCALS",1)~ + kraft_04
++ @374 + kraft_03
++ @371 + kraft_03
END

IF ~~ THEN kraft_06
SAY @381
++ @367 DO ~SetGlobal("C#Solau_FPkraft2","LOCALS",1)~ + kraft_01
++ @368 DO ~SetGlobal("C#Solau_FPkraft1","LOCALS",1)~ + kraft_04
++ @369 DO ~SetGlobal("C#Solau_FPkraft3","LOCALS",1)~ + kraft_05
++ @371 + kraft_03
END

/* ---- */


IF ~Global("C#Solaufein_Dialog","GLOBAL",24)~ THEN schwaeche
SAY @382
++ @383 + schwaeche_01
++ @384 + schwaeche_02
++ @385 + schwaeche_03
++ @386 + schwaeche_02
END

IF ~~ THEN schwaeche_01
SAY @387
++ @388 + schwaeche_05
++ @389 + schwaeche_06
++ @390 + schwaeche_04
END

IF ~~ THEN schwaeche_02
SAY @391
IF ~~ THEN + schwaeche_01
END

IF ~~ THEN schwaeche_03
SAY @392
IF ~~ THEN + schwaeche_01
END

IF ~~ THEN schwaeche_04
SAY @393
= @394
= @395
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN schwaeche_05
SAY @396
IF ~~ THEN + schwaeche_04
END

IF ~~ THEN schwaeche_06
SAY @397
IF ~~ THEN + schwaeche_04
END




/* ---- */


IF ~Global("C#Solaufein_Dialog","GLOBAL",26)~ THEN weakness
SAY @398
++ @399 + weakness_01 
++ @400 + weakness_01 
++ @401 + friendship_end_2 //end of FP
END

IF ~~ THEN weakness_01 
SAY @402
++ @403 + weakness_03 
++ @404 + weakness_04
++ @405 + weakness_02 
++ @406 + weakness_02 
END

IF ~~ THEN weakness_02 
SAY @407
IF ~~ THEN + weakness_03 
END

IF ~~ THEN weakness_03 
SAY @408
IF ~~ THEN + weakness_04 
END

IF ~~ THEN weakness_04
SAY @409
= @410
++ @411 + weakness_07 
++ @412 + weakness_08
++ @413 + weakness_06
++ @414 + weakness_05
++ @415 + weakness_09
END

IF ~~ THEN weakness_05
SAY @416
IF ~~ THEN + weakness_06
END

IF ~~ THEN weakness_06
SAY @417
= @418
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN weakness_07 
SAY @419
IF ~~ THEN + weakness_06
END

IF ~~ THEN weakness_08
SAY @420
IF ~~ THEN + weakness_07
END

IF ~~ THEN weakness_09
SAY @421
IF ~~ THEN + weakness_06
END










/* hier: Check nach Ruf + "C#SolauFriendshipCounter". Freundschaft findet nur für Ruf > 14 und GlobalGT("C#SolauFriendshipCounter","LOCALS",0) statt. */


IF ~Global("C#Solaufein_Dialog","GLOBAL",28)~ THEN ansage
SAY @422
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) ReputationGT(Player1,14)~ + rep_high
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) ReputationLT(Player1,15) GlobalGT("C#SolauFriendshipCounter","LOCALS",0)~ THEN + rep_low
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) ReputationLT(Player1,15) GlobalLT("C#SolauFriendshipCounter","LOCALS",1)~ THEN + both_low

IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) ReputationGT(Player1,9)~ + rep_high
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) ReputationLT(Player1,10) GlobalGT("C#SolauFriendshipCounter","LOCALS",0)~ THEN + rep_low
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) ReputationLT(Player1,10) GlobalLT("C#SolauFriendshipCounter","LOCALS",1)~ THEN + both_low
END

IF ~~ THEN rep_high
SAY @423
IF ~GlobalGT("C#SolauFriendshipCounter","LOCALS",0)~ THEN + freundschaft_ent
IF ~GlobalLT("C#SolauFriendshipCounter","LOCALS",1)~ THEN + friendcounter_low
END

IF ~~ THEN freundschaft_ent
SAY @424
= @425
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN friendcounter_low
SAY @426
++ @427 + friendcounter_low_01
++ @428 + friendcounter_low_02
END

IF ~~ THEN friendcounter_low_01
SAY @429 
IF ~~ THEN DO ~SetGlobal("C#SolauFriendshipCounter","LOCALS",1) IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN friendcounter_low_02
SAY @430
IF ~~ THEN DO ~SetGlobal("C#SolaufeinFriends","GLOBAL",2) IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN rep_low
SAY @431
++ @432 + rep_low_01
++ @428 + friendcounter_low_02
END

IF ~~ THEN rep_low_01
SAY @433
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN both_low
SAY @434
= @435
= @436
++ @427 + both_low_01
++ @428 + friendcounter_low_02
END

IF ~~ THEN both_low_01
SAY @429
IF ~~ THEN DO ~SetGlobal("C#SolauFriendshipCounter","LOCALS",1)~ + rep_low_01
END










/* Solaufeins Prägung spielt gegen seine Gefühle der Verbundenheit und verursachen, dass Solaufeins Irritation überhand gewinnt. Er verstummt etwas. -> setzt GLOBAL "grübeln"*/



IF ~Global("C#Solaufein_Dialog","GLOBAL",30)~ THEN zweifel
SAY @437
++ @438 + zweifel_03
++ @439 + zweifel_02
++ @440 + zweifel_01
END

IF ~~ THEN zweifel_01
SAY @441
IF ~~ THEN + friendship_end_2
END

IF ~~ THEN zweifel_02
SAY @442
IF ~~ THEN + zweifel_03
END

IF ~~ THEN zweifel_03
SAY @443
++ @444 + zweifel_04
++ @445 + zweifel_04
++ @446 + zweifel_04
END

IF ~~ THEN zweifel_04
SAY @447
++ @448 + zweifel_06
++ @449 + zweifel_05
++ @450 + zweifel_06
END

IF ~~ THEN zweifel_05
SAY @451
IF ~~ THEN + zweifel_06
END

IF ~~ THEN zweifel_06
SAY @452
= @453
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1) 
SetGlobal("C#Solaufein_Gruebelt","GLOBAL",1)
~ EXIT
END


/*Solaufein versucht, sich dem HC zu öffnen */


/* ---- */

IF ~Global("C#Solaufein_Dialog","GLOBAL",32)~ THEN erklaerung
SAY @454
++ @455 + erklaerung_03
++ @456 + erklaerung_02
++ @457 + erklaerung_01
END

IF ~~ THEN erklaerung_01
SAY @458
++ @459 + erklaerung_03
++ @460 + zweifel_01
END

IF ~~ THEN erklaerung_02
SAY @461
IF ~~ THEN + erklaerung_03
END

IF ~~ THEN erklaerung_03
SAY @462
++ @463 + erklaerung_04
++ @464 + erklaerung_05
++ @465 + erklaerung_06
END

IF ~~ THEN erklaerung_04
SAY @466
IF ~~ THEN + erklaerung_06
END

IF ~~ THEN erklaerung_05
SAY @467
IF ~~ THEN + erklaerung_06
END

IF ~~ THEN erklaerung_06
SAY @468
= @469
= @470
= @471
= @472
= @473
++ @474 + erklaerung_08
++ @475 + erklaerung_09
++ @476 + erklaerung_07
++ @477 + erklaerung_09
END

IF ~~ THEN erklaerung_07
SAY @478
++ @474 + erklaerung_08
++ @475 + erklaerung_09
++ @477 + erklaerung_09
END

IF ~~ THEN erklaerung_08
SAY @479
IF ~~ THEN + erklaerung_09
END

IF ~~ THEN erklaerung_09
SAY @480 
++ @481 + erklaerung_11
++ @482 + erklaerung_10
++ @483 + erklaerung_11
++ @484 + erklaerung_13
END

IF ~~ THEN erklaerung_10
SAY @485
IF ~~ THEN + erklaerung_11
END

IF ~~ THEN erklaerung_11
SAY @486
++ @487 + erklaerung_12
++ @488 + erklaerung_14
++ @484 + erklaerung_13
END

IF ~~ THEN erklaerung_12
SAY @489
IF ~~ THEN + erklaerung_13
END

IF ~~ THEN erklaerung_13
SAY @490
= @491
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)
SetGlobal("C#Solaufein_Gruebelt","GLOBAL",0)
~ EXIT
END

IF ~~ THEN erklaerung_14
SAY @492
IF ~~ THEN + erklaerung_13
END




/* ---- */

/* Solaufein nimmt den HC beiseite und gesteht seine verwirrten Gefühle. */


IF ~Global("C#Solaufein_Dialog","GLOBAL",34)~ THEN erklaerung2
SAY @493
= @494
= @495
= @496
= @497
++ @498 + erklaerung2_01
++ @499 + erklaerung2_01_1
++ @500 + erklaerung2_03
++ @501 + erklaerung2_10
END

IF ~~ THEN erklaerung2_01
SAY @502
++ @503 + erklaerung2_03
++ @504 + erklaerung2_02
++ @499 + erklaerung2_01_1
++ @501 + erklaerung2_10
END

IF ~~ THEN erklaerung2_01_1
SAY @505
++ @503 + erklaerung2_03
++ @501 + erklaerung2_10
END

IF ~~ THEN erklaerung2_02
SAY @506
++ @503 + erklaerung2_03
++ @501 + erklaerung2_10
END

IF ~~ THEN erklaerung2_03
SAY @507
= @508
= @509
++ @510 + erklaerung2_05
++ @511 + erklaerung2_04
++ @512 + erklaerung2_10
++ @513 + erklaerung2_10
END

IF ~~ THEN erklaerung2_04
SAY @514
IF ~~ THEN + erklaerung2_05
END

IF ~~ THEN erklaerung2_05
SAY @515
= @516 
= @517 
++ @518 + erklaerung2_07
++ @519 + erklaerung2_06
++ @520 + erklaerung2_09
END

IF ~~ THEN erklaerung2_06
SAY @521
++ @522 + erklaerung2_08
++ @518 + erklaerung2_07
++ @523 + erklaerung2_10
END

IF ~~ THEN erklaerung2_07
SAY @524
++ @525 + erklaerung2_13
++ @526 + erklaerung2_12
++ @527 + erklaerung2_09
END

IF ~~ THEN erklaerung2_08
SAY @528 
++ @518 + erklaerung2_07
++ @523 + erklaerung2_10
END

IF ~~ THEN erklaerung2_09
SAY @529
IF ~~ THEN + erklaerung2_11
END

IF ~~ THEN erklaerung2_10
SAY @530
IF ~~ THEN + erklaerung2_11
END

IF ~~ THEN erklaerung2_11
SAY @531
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1) 
//SetGlobal(EndFP)
~ EXIT
END

IF ~~ THEN erklaerung2_12
SAY @532
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)
SetGlobal("C#SolaufeinFriends","GLOBAL",1)~ EXIT
END

IF ~~ THEN erklaerung2_13
SAY @533
++ @526 + erklaerung2_12
++ @527 + erklaerung2_09
END





/* Solaufein ruckelt sich in der Freundschaft zurecht */


IF ~Global("C#Solaufein_Dialog","GLOBAL",36)~ THEN difficult
SAY @534
= @535
= @536
= @537
++ @538 + difficult_02 
++ @539 + difficult_02 
++ @540 + difficult_02 
++ @541 + difficult_01
END

IF ~~ THEN difficult_01
SAY @542 
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN difficult_02 
SAY @543
= @544
++ @545 + difficult_04 
++ @546 + difficult_03 
++ @547 + difficult_03 
END

IF ~~ THEN difficult_03 
SAY @548
++ @549 + difficult_04
++ @550 + difficult_05 
++ @541 + difficult_01
END

IF ~~ THEN difficult_04 
SAY @551
++ @552 + difficult_05 
++ @553 + difficult_05 
++ @541 + difficult_01
END

IF ~~ THEN difficult_05 
SAY @554
IF ~~ THEN + difficult_06 
END

IF ~~ THEN difficult_06 
SAY @555
IF ~~ THEN + difficult_07 
END

IF ~~ THEN difficult_07 
SAY @556
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END




/* jetzt fängt Solaufein an, über sich und die Drow zu sprechen */



IF ~Global("C#Solaufein_Dialog","GLOBAL",38)~ THEN freundliche_gesichter
SAY @557
++ @558 + freundliches_gesicht
++ @559 + freundliches_gesicht_01
++ @560 + freundliches_gesicht_07
END

IF ~~ THEN freundliches_gesicht_01
SAY @561
++ @558 + freundliches_gesicht
++ @560 + freundliches_gesicht_07
END

IF ~~ THEN freundliches_gesicht
SAY @562
++ @563 + freundliches_gesicht_phaere
++ @564 + freundliches_gesicht_01_1
++ @560 + freundliches_gesicht_07
END

IF ~~ THEN freundliches_gesicht_phaere
SAY @565
IF ~~ THEN + freundliches_gesicht_01_1
END

IF ~~ THEN freundliches_gesicht_01_1
SAY @566
= @567
= @568
++ @569 DO ~SetGlobal("C#solaufein_Phaere","LOCALS",1)~ + freundliches_gesicht_02
++ @570 + freundliches_gesicht_07
END

IF ~~ THEN freundliches_gesicht_02
SAY @571
= @572
++ @573 + freundliches_gesicht_02_1
++ @574 + freundliches_gesicht_03
++ @575 + freundliches_gesicht_03
++ @576 + freundliches_gesicht_07
END

IF ~~ THEN freundliches_gesicht_02_1
SAY @577
IF ~~ THEN + freundliches_gesicht_03
END

IF ~~ THEN freundliches_gesicht_03
SAY @578
= @579
= @580
= @581
++ @582 + freundliches_gesicht_04
++ @583 + freundliches_gesicht_04
++ @576 + freundliches_gesicht_07
END

IF ~~ THEN freundliches_gesicht_04
SAY @584
= @585
= @586
= @587
++ @575 + freundliches_gesicht_05
++ @576 + freundliches_gesicht_07
END

IF ~~ THEN freundliches_gesicht_05
SAY @588
= @589
= @590
= @591
= @592
++ @593 + freundliches_gesicht_06
++ @575 + freundliches_gesicht_06
++ @576 + freundliches_gesicht_07
END

IF ~~ THEN freundliches_gesicht_06
SAY @594 
= @595
= @596
= @597 
= @598
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN freundliches_gesicht_07
SAY @240 
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END






IF ~Global("C#Solaufein_Dialog","GLOBAL",40)~ THEN lob
SAY @599
++ @600 + lob_01
++ @601 + lob_05 
++ @602 + lob_04
END

IF ~~ THEN lob_01
SAY @603
IF ~~ THEN + lob_02
END

IF ~~ THEN lob_02
SAY @604
++ @605 + lob_10
++ @606 + lob_12
++ @607 + lob_11
++ @608 + wie_ihr_meint
END

IF ~~ THEN lob_03
SAY @609
IF ~~ THEN + lob_06 
END

IF ~~ THEN lob_04
SAY @610
IF ~~ THEN + lob_02
END

IF ~~ THEN lob_05
SAY @611
IF ~~ THEN + lob_02
END

IF ~~ THEN lob_06 
SAY @612
IF ~Global("C#SolaufeinEntschuldigung","GLOBAL",1)~ THEN + lob_07
IF ~!Global("C#SolaufeinEntschuldigung","GLOBAL",1)~ THEN + lob_08
END

IF ~~ THEN lob_07
SAY @613
IF ~~ THEN + lob_08
END

IF ~~ THEN lob_08
SAY @614
IF ~~ THEN + lob_09
END

IF ~~ THEN lob_09
SAY @615
= @616
= @617
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN lob_10
SAY @618
IF ~~ THEN + lob_12
END

IF ~~ THEN lob_11
SAY @619
IF ~~ THEN + lob_12
END

IF ~~ THEN lob_12
SAY @620
= @621
= @622
++ @623 + lob_13
++ @624 + lob_06 
++ @625 + lob_03
++ @626 + wie_ihr_meint
END

IF ~~ THEN lob_13
SAY @627
IF ~~ THEN + lob_03
END





IF ~Global("C#Solaufein_Dialog","GLOBAL",42)~ THEN oberflaechenbewohner
SAY @628
= @629
++ @630 + oberflaechenbewohner_02
++ @631 + oberflaechenbewohner_03
++ @632 + oberflaechenbewohner_01
++ @633 + wie_ihr_meint
END

IF ~~ THEN oberflaechenbewohner_01
SAY @634
IF ~~ THEN + oberflaechenbewohner_04
END

IF ~~ THEN oberflaechenbewohner_02
SAY @635
IF ~~ THEN + oberflaechenbewohner_04
END

IF ~~ THEN oberflaechenbewohner_03
SAY @636
IF ~~ THEN + oberflaechenbewohner_04
END

IF ~~ THEN oberflaechenbewohner_04
SAY @637
= @638
= @639
++ @640 + oberflaechenbewohner_05
++ @641 + oberflaechenbewohner_06
++ @633 + wie_ihr_meint
END

IF ~~ THEN oberflaechenbewohner_05
SAY @642
++ @643 + oberflaechenbewohner_08
++ @644 + oberflaechenbewohner_07
++ @645 + oberflaechenbewohner_05_1
END

IF ~~ THEN oberflaechenbewohner_05_1
SAY @646
IF ~~ THEN + oberflaechenbewohner_07
END

IF ~~ THEN oberflaechenbewohner_06
SAY @647
= @648
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN oberflaechenbewohner_07
SAY @649
= @650
= @651
IF ~~ THEN + oberflaechenbewohner_06
END

IF ~~ THEN oberflaechenbewohner_08
SAY @652
IF ~~ THEN + oberflaechenbewohner_07
END



IF ~Global("C#Solaufein_Dialog","GLOBAL",44)~ THEN sklavin
SAY @653
++ @654 + sklavin_01
++ @655 + sklavin_01
++ @656 + wie_ihr_meint
END

IF ~~ THEN sklavin_01
SAY @657
++ @575 + sklavin_02
++ @658 + wie_ihr_meint
END

IF ~~ THEN sklavin_02
SAY @659
= @660
= @661
++ @662 + sklavin_03
++ @663 + sklavin_03
++ @575 + sklavin_04
++ @656 + wie_ihr_meint
END

IF ~~ THEN sklavin_03
SAY @664
IF ~~ THEN + sklavin_04
END

IF ~~ THEN sklavin_04
SAY @665
++ @666 + sklavin_05
++ @667 + sklavin_07
++ @668 + sklavin_06
++ @669 + sklavin_08
++ @670 + sklavin_06
++ @656 + wie_ihr_meint
END

IF ~~ THEN sklavin_05
SAY @671
= @672
++ @667 + sklavin_07
++ @668 + sklavin_06
++ @669 + sklavin_08
++ @670 + sklavin_06
++ @656 + wie_ihr_meint
END

IF ~~ THEN sklavin_06
SAY @673
IF ~~ THEN + sklavin_07
END

IF ~~ THEN sklavin_07
SAY @674
++ @675 + lasst_uns_weiterziehen
++ @669 + sklavin_08
++ @676 + lasst_uns_weiterziehen
END

IF ~~ THEN sklavin_08
SAY @677 
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END







/* PC freed the drow slaves. Dialogue gets skipped if the PC did not free the drow slaves




*/




IF ~Global("C#Solaufein_Dialog","GLOBAL",46)~ THEN slaves
SAY @678
++ @679 + slaves_01
++ @680 + slaves_00
++ @681 + slaves_00_1
END

IF ~~ THEN slaves_00
SAY @682
IF ~~ THEN + slaves_04
END

IF ~~ THEN slaves_00_1
SAY @683
++ @684 + slaves_04_1
++ @685 + wie_ihr_meint
END

IF ~~ THEN slaves_01
SAY @686
IF ~Global("DrowSlavesFree","GLOBAL",1)~ THEN + slaves_03
IF ~Global("DrowSlavesFree","GLOBAL",2)~ THEN + slaves_02
END

IF ~~ THEN slaves_02
SAY @687
IF ~~ THEN + slaves_03_1
END

IF ~~ THEN slaves_03
SAY @688
IF ~~ THEN + slaves_03_1
END

IF ~~ THEN slaves_03_1
SAY @689
IF ~~ THEN + slaves_04
END

IF ~~ THEN slaves_04
SAY @690
IF ~~ THEN + slaves_04_1
END

IF ~~ THEN slaves_04_1
SAY @691
++ @692 + slaves_05
++ @693 + slaves_07
++ @694 + slaves_04_2
++ @695 + slaves_05_1
END

IF ~~ THEN slaves_04_2
SAY @696
IF ~~ THEN + slaves_06
END

IF ~~ THEN slaves_05
SAY @697
IF ~~ THEN + slaves_05_1
END

IF ~~ THEN slaves_05_1
SAY @698
= @699
++ @700 + slaves_05_2
++ @701 + slaves_05_2
++ @694 + slaves_04_2
++ @695 + slaves_06
END

IF ~~ THEN slaves_05_2
SAY @702
IF ~~ THEN + slaves_06
END

IF ~~ THEN slaves_06
SAY @703
IF ~~ THEN + slaves_09
END

IF ~~ THEN slaves_07
SAY @704
++ @705 + slaves_08
++ @706 + slaves_07_1
++ @695 + slaves_11
END

IF ~~ THEN slaves_07_1
SAY @707
IF ~~ THEN + slaves_11
END

IF ~~ THEN slaves_08
SAY @708
IF ~~ THEN + slaves_06
END

IF ~~ THEN slaves_09
SAY @709
++ @710 + slaves_11
++ @711 + slaves_10
++ @712 + slaves_09_1
++ @713 + slaves_09_1
END

IF ~~ THEN slaves_09_1
SAY @714
IF ~~ THEN + slaves_11
END

IF ~~ THEN slaves_10
SAY @715
IF ~~ THEN + slaves_11
END

IF ~~ THEN slaves_11
SAY @716
= @717
IF ~~ THEN + slaves_12
END

IF ~~ THEN slaves_12
SAY @718
IF ~~ THEN + slaves_13
END

IF ~~ THEN slaves_13
SAY @719
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END





IF ~Global("C#Solaufein_Dialog","GLOBAL",48)~ THEN vertrauen
SAY @720
= @721
++ @722 + vertrauen_03
++ @723 + vertrauen_02
++ @724 + vertrauen_03
++ @725 + vertrauen_01
++ @726 + vertrauen_02
END

IF ~~ THEN vertrauen_01
SAY @727
++ @722 + vertrauen_03
++ @728 + vertrauen_02
++ @724 + vertrauen_03
++ @726 + vertrauen_02
END

IF ~~ THEN vertrauen_02
SAY @729
IF ~~ THEN + vertrauen_03
END

IF ~~ THEN vertrauen_03
SAY @730
= @731
= @732
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END






IF ~Global("C#Solaufein_Dialog","GLOBAL",50)~ THEN gestoert
SAY @733
= @734
= @735
++ @736 + gestoert_01
++ @737 + gestoert_02
++ @738 + gestoert_03
++ @739 + gestoert_03
++ @740 + gestoert_05
END


IF ~~ THEN gestoert_01
SAY @741 
IF ~~ THEN + gestoert_04
END

IF ~~ THEN gestoert_02
SAY @742
IF ~~ THEN + gestoert_04
END

IF ~~ THEN gestoert_03
SAY @743 
IF ~~ THEN + gestoert_04
END

IF ~~ THEN gestoert_04
SAY @744 
= @745
= @746
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN gestoert_05
SAY @747
= @748
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END



IF ~Global("C#Solaufein_Dialog","GLOBAL",52)~ THEN zufrieden
SAY @749
++ @750 + zufrieden_01
++ @751 + zufrieden_03
++ @752 + zufrieden_04
++ @753 + zufrieden_02
END

IF ~~ THEN zufrieden_01
SAY @754
IF ~~ THEN + zufrieden_03
END

IF ~~ THEN zufrieden_02
SAY @755 
IF ~~ THEN + zufrieden_03
END

IF ~~ THEN zufrieden_03
SAY @756
++ @757 + zufrieden_05
++ @758 + zufrieden_06
++ @759 + friendship_end
END

IF ~~ THEN zufrieden_04
SAY @760
IF ~~ THEN + zufrieden_03
END

IF ~~ THEN zufrieden_05
SAY @761
IF ~~ THEN + zufrieden_06
END

IF ~~ THEN zufrieden_06
SAY @762
= @763
= @764
= @765
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END





/* [Dieser Dialog ist event-getriggert, damit er auf alle Fälle vor dem Ende von ToB kommt] */



IF ~Global("C#Solaufein_LastDialog","GLOBAL",1)~ THEN freundschaft
SAY @766
++ @767 + freundschaft_02
++ @768 + freundschaft_04
++ @769 + freundschaft_01
++ @770 + freundschaft_03
END

IF ~~ THEN freundschaft_01
SAY @771
IF ~~ THEN + freundschaft_02
END

IF ~~ THEN freundschaft_02
SAY @772
= @773
= @774
IF ~~ THEN DO ~SetGlobal("C#Solaufein_LastDialog","GLOBAL",2)~ EXIT
END

IF ~~ THEN freundschaft_03
SAY @775
IF ~~ THEN + freundschaft_02
END

IF ~~ THEN freundschaft_04
SAY @776
IF ~~ THEN + freundschaft_02
END



/* mehrfach genutzte Gesprächsenden (FP) */

IF ~~ THEN wie_ihr_meint
SAY @240 
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN lasst_uns_weiterziehen
SAY @777 
IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN friendship_end
  SAY @778
IF ~~ THEN + friendship_end_2
END

IF ~~ THEN friendship_end_2
SAY @779
  IF ~~ THEN DO ~IncrementGlobal("C#Solaufein_Dialog","GLOBAL",1) 
SetGlobal("C#SolaufeinFriends","GLOBAL",2)~ EXIT
END

END //APPEND