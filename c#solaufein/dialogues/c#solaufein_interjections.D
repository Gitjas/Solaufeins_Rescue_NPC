/* Elhan */


EXTEND_BOTTOM C6ELHAN2 8
IF ~See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
OR(4)
Dead("Viconia")
!InParty("Viconia")
!See("Viconia")
StateCheck("Viconia",STATE_SLEEPING)~ THEN GOTO Elhan_23
END

APPEND C6ELHAN2 

IF ~~ THEN BEGIN Elhan_23 
  SAY @846 
  COPY_TRANS C6ELHAN2 23
END

END //APPEND

EXTEND_BOTTOM C6ELHAN2 10
  IF ~!Dead("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
See("C#Solaufein")
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN REPLY @847 EXTERN ~C6WARSA1~ 1
END

EXTEND_BOTTOM C6ELHAN2 24
IF ~See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
OR(2)
!InParty("hexxat")
Dead("hexxat")
OR(4)
Dead("Viconia")
!InParty("Viconia")
!See("Viconia")
StateCheck("Viconia",STATE_SLEEPING)~ THEN GOTO Elhan_25
END

APPEND C6ELHAN2 

IF ~~ THEN BEGIN Elhan_25
  SAY @848 
  COPY_TRANS C6ELHAN2 25
END

END //APPEND



EXTEND_BOTTOM C6ELHAN2 83 
IF ~See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
OR(4)
Dead("Viconia")
!InParty("Viconia")
!See("Viconia")
StateCheck("Viconia",STATE_SLEEPING)~ THEN GOTO Elhan_85
END


APPEND C6ELHAN2 

IF ~~ THEN Elhan_85
  SAY @849
  COPY_TRANS C6ELHAN2 85
END

END //APPEND


EXTEND_BOTTOM C6ELHAN2 53 
IF ~See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
OR(2)
!InParty("hexxat")
Dead("hexxat")
OR(4)
Dead("Viconia")
!InParty("Viconia")
!See("Viconia")
StateCheck("Viconia",STATE_SLEEPING)~ THEN GOTO Elhan_55
END


CHAIN
IF ~~ THEN C6ELHAN2 Elhan_55
@850 
DO ~SetGlobal("C#Solau_DialogueState","LOCALS",55)~
END
IF ~~ THEN EXTERN c#solauJ elhan_solau_chain


APPEND C6ELHAN2 

IF WEIGHT #-1
~NumTimesTalkedToGT(0) Global("C#Solau_ElhanGeas","GLOBAL",0)
See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN solaufein_geas
SAY @851
IF ~~ THEN DO ~SetGlobal("C#Solau_DialogueState","LOCALS",55)~ EXTERN c#solauJ elhan_solau_chain
END

END //APPEND


CHAIN 
IF ~~ THEN c#solauJ elhan_solau_chain
@852
== C6ELHAN2 #59138 /* ~Ihr stellt ein Risiko dar. Ich werde das nicht zulassen.~ */
END
++ @853  EXTERN c#solauJ elhan_1
++ @854 EXTERN C6ELHAN2 Elhan_59

CHAIN
IF ~~ THEN C6ELHAN2 Elhan_59
@855

== c#solauJ @856
== C6ELHAN2 @857
== c#solauJ @858
== C6ELHAN2 @859
== c#solauJ @860 
 DO ~ForceSpell("C#Solaufein",FLASHY_1)
SetGlobal("C#Solau_ElhanGeas","GLOBAL",1)
RealSetGlobalTimer("C#SolauSceneryTimer","GLOBAL",500)~
END
COPY_TRANS C6ELHAN2 53
IF ~Global("C#Solau_DialogueState","LOCALS",55)~ THEN EXTERN C6ELHAN2 solau_end



APPEND c#solauJ 

IF ~~ THEN elhan_1
SAY @861
IF ~~ THEN EXTERN C6ELHAN2 Elhan_59
END

END //APPEND


APPEND C6ELHAN2 
IF ~~ THEN solau_end
SAY @862
IF ~~ THEN EXIT
END

END //APPEND

/* in case Viconia is also in group, she will be dealt with first */
EXTEND_BOTTOM C6ELHAN2 62 
IF ~See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN GOTO Elhan_c#solau
END


CHAIN
IF ~~ THEN C6ELHAN2 Elhan_c#solau
@863
== c#solauJ @860 
== C6ELHAN2 @864 DO ~SetGlobal("C#Solau_ElhanGeas","GLOBAL",1) ForceSpell("C#Solaufein",FLASHY_1)~
END
COPY_TRANS C6ELHAN2 62



/* Drizzt */


/*Wenn HC Drizzt angreift */

I_C_T C6DRIZZ1 5 C#Solaufein_DrizztAttack
== c#solauJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @865 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @866
END

I_C_T C6DRIZZ1 9 C#Solaufein_DrizztAttack
== c#solauJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @865 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @866
END

I_C_T C6DRIZZ1 18 C#Solaufein_DrizztAttack
== c#solauJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @865 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @866
END

I_C_T C6DRIZZ1 41 C#Solaufein_DrizztAttack
== c#solauJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @865 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @866
END

I_C_T C6DRIZZ1 48 C#Solaufein_DrizztAttack
== c#solauJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @865 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @866
END

I_C_T C6DRIZZ1 55 C#Solaufein_DrizztAttack
== c#solauJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @865 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @866
END

ADD_TRANS_TRIGGER C6DRIZZ1 4 ~OR(2)
	!See("c#Solaufein")
	!InParty("c#Solaufein")
Global("C#SolauJoined","GLOBAL",0)~ DO 3

EXTEND_BOTTOM C6DRIZZ1 4
IF ~See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
OR(2)
!See("Viconia")
!InParty("Viconia")~ THEN REPLY #53321 /* ~Ich griff Euch an, weil Ihr ein Drow seid, und ich wollte nicht darauf warten, dass Ihr mich angreift, sobald Ihr mit den Gnollen fertig wart.~ */ GOTO 7
END

APPEND C6DRIZZ1 

IF ~~ THEN BEGIN c#solaufein_6 
  SAY @867
  IF ~~ THEN REPLY @868 GOTO c#solaufein_11
  IF ~~ THEN REPLY @869 GOTO c#solaufein_11
  IF ~~ THEN REPLY @870 + c#solaufein_13 
  IF ~~ THEN REPLY #53326 /* ~Ich meinte damit, dass ich früher so dachte. Doch jetzt nicht mehr. Ich weiß, dass es sogar bei den Drow Ausnahmen gibt.~ */ GOTO 10
END

IF ~~ THEN BEGIN c#solaufein_11
  SAY @871
  IF ~~ THEN EXTERN ~C6WULF1~ 0
END

IF ~~ THEN BEGIN c#solaufein_13 
  SAY @872 
  IF ~~ THEN GOTO 14
END

END //APPEND




/* Dialog mit Drizt */

EXTEND_BOTTOM C6DRIZZ1 25 //Drizzt unzufrieden
IF ~Global("C#SolaufeinDrizzt","GLOBAL",0)~ THEN DO ~SetGlobal("C#SolaufeinDrizzt","GLOBAL",1) SetGlobal("C#SolaufeinDrizztTracking","LOCALS",25)~ EXTERN c#SolauJ solaufein_drizzt_01
END

EXTEND_BOTTOM C6DRIZZ1 29 
IF ~Global("C#SolaufeinDrizzt","GLOBAL",0)~ THEN DO ~SetGlobal("C#SolaufeinDrizzt","GLOBAL",1) SetGlobal("C#SolaufeinDrizztTracking","LOCALS",29)~ EXTERN c#SolauJ solaufein_drizzt_01
END

EXTEND_BOTTOM C6DRIZZ1 50 //unbelastetes Treffen
IF ~Global("C#SolaufeinDrizzt","GLOBAL",0)~ THEN DO ~SetGlobal("C#SolaufeinDrizzt","GLOBAL",1) SetGlobal("C#SolaufeinDrizztTracking","LOCALS",50)~ EXTERN c#SolauJ solaufein_drizzt_01
END

EXTEND_BOTTOM C6DRIZZ1 53 //unbelastetes Treffen
IF ~Global("C#SolaufeinDrizzt","GLOBAL",0)~ THEN DO ~SetGlobal("C#SolaufeinDrizzt","GLOBAL",1) SetGlobal("C#SolaufeinDrizztTracking","LOCALS",53)~ EXTERN c#SolauJ solaufein_drizzt_01
END


CHAIN
IF ~~ THEN c#SolauJ solaufein_drizzt_01
@873
= @874
== C6DRIZZ1 IF ~ReactionLT(Player1,10)~ THEN @875
== c#SolauJ IF ~ReactionLT(Player1,10)~ THEN @876
== C6DRIZZ1 @877
END
++ @2800 EXTERN C6DRIZZ1 solaufein_drizzt_03
++ @2801 DO ~SetGlobal("C#Solau_PCListenedDrizzt","GLOBAL",1)~ EXTERN C6DRIZZ1 solaufein_drizzt_02

CHAIN
IF ~~ THEN C6DRIZZ1 solaufein_drizzt_02
@878
= @879
== c#SolauJ @880
== C6DRIZZ1 @881
== c#SolauJ @882
== C6DRIZZ1 @883
= @884
== c#SolauJ @885
== C6DRIZZ1 @886
= @887
= @888
== c#SolauJ @889
= @890
== C6DRIZZ1 @891
= @892
END
IF ~~ THEN EXTERN C6DRIZZ1 solaufein_drizzt_03

CHAIN
IF ~~ THEN C6DRIZZ1 solaufein_drizzt_03
@893
== c#SolauJ @894
== C6DRIZZ1 @895
END
IF ~Global("C#SolaufeinDrizztTracking","LOCALS",25)~ THEN + solaufein_drizzt_04_25
IF ~Global("C#SolaufeinDrizztTracking","LOCALS",29)~ THEN + solaufein_drizzt_04_29
IF ~Global("C#SolaufeinDrizztTracking","LOCALS",50)~ THEN + solaufein_drizzt_04_50
IF ~Global("C#SolaufeinDrizztTracking","LOCALS",53)~ THEN + solaufein_drizzt_04_53

APPEND C6DRIZZ1 
IF ~~ THEN solaufein_drizzt_04_25
SAY @896
COPY_TRANS C6DRIZZ1 25
END

IF ~~ THEN solaufein_drizzt_04_29
SAY @896
COPY_TRANS C6DRIZZ1 29
END

IF ~~ THEN solaufein_drizzt_04_50
SAY @896
COPY_TRANS C6DRIZZ1 50
END

IF ~~ THEN solaufein_drizzt_04_53
SAY @896
COPY_TRANS C6DRIZZ1 53
END

END //APPEND




/* Belmin.dlg */

CHAIN
IF WEIGHT #-1 ~See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)
Global("C#Solaufein_Belmin","AR0700",0)~ THEN BELMIN solaufein
  #25314 /* ~You!  The worst of that vile elven race!  The touch of evil is upon you, I swear it!~ */ DO ~SetGlobal("C#Solaufein_Belmin","AR0700",1)~ 
== c#SolauJ @897
== BELMIN #25315 /* ~Never!  The elven race should be seared from the face of Faerun, but you...you Drow...with your evil, blighted, cancerous hearts...!~ */
== c#SolauJ @898
== BELMIN #25316 /* ~EVERYONE!  SEE THE FACE OF TRUE EVIL HERE BEFORE US!!  A DROW ELF!!~ */
== c#SolauJ @899
== BELMIN #25318 /* ~I SHALL CLEANSE THIS DEVIL FROM OUR MIDST!!  AAAAHHHHH!!~ */
END
  IF ~~ THEN DO ~Enemy()
Attack("C#Solaufein")
~ EXIT



/* Irenicus */

/* als I_C_T, z.B. in Elissimes Dilaog? */

I_C_T SUDEMIN 15 C#SolaufeinSudemin
== c#solauJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @900
END





/* Am Lebensbaum */

EXTEND_BOTTOM Player1 33 
IF ~Global("C#SolaufeinLebensbaum","LOCALS",0) 
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2) 
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#SolaufeinLebensbaum","LOCALS",1)~ + lebensbaum 
END

APPEND Player1
IF ~~ THEN lebensbaum 
SAY @901
++ @902 EXTERN c#solauJ lebensbaum_01
++ @903 EXTERN c#solauJ lebensbaum_01
++ @904 EXTERN c#solauJ lebensbaum_01
END

END //APPEND

APPEND c#solauJ 

IF ~~ THEN lebensbaum_01
SAY @905
COPY_TRANS Player1 33
END

END //APPEND


/* Hölle */

//Ankunft Hölle, 
I_C_T3 Player1 25 C#Solaufein_Hell1
== c#solauJ IF ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") 
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @906
= @907
END