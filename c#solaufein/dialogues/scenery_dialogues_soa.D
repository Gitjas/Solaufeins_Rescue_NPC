/* Scenery dialogues */


APPEND c#solauJ 


/* Elfen am Ausgang des Unterreichs */

IF ~Global("C#SolauElvesExit","GLOBAL",1)~ THEN elfen
SAY @780
= @781
++ @782 + elfen_01
++ @783 + elfen_01
++ @784 + elfen_01
END

IF ~~ THEN elfen_01
SAY @785
IF ~~ THEN DO ~SetGlobal("C#SolauElvesExit","GLOBAL",2)~ EXIT
END



/* In Suldanesselar */

IF ~Global("C#SolauSuldanessalar","GLOBAL",2)~ THEN Suldanesselar
SAY @786
++ @787 + Suldanesselar_02
++ @252 + Suldanesselar_02
+ ~Global("C#Solau_ElhanGeas","GLOBAL",1)~ + @788 + Suldanesselar_01
+ ~!Global("C#Solau_ElhanGeas","GLOBAL",1)~ + @788 + Suldanesselar_01_1
END

IF ~~ THEN Suldanesselar_01
SAY @789
IF ~~ THEN + Suldanesselar_02
END

IF ~~ THEN Suldanesselar_01_1
SAY @790
IF ~~ THEN + Suldanesselar_02
END

IF ~~ THEN Suldanesselar_02
SAY @791
= @792
IF ~~ THEN DO ~SetGlobal("C#SolauSuldanessalar","GLOBAL",3)~ EXIT
END




/* nach der Begegnung mit Drizzt 

C#SolaufeinDrizzt = 1*/

IF ~Global("C#SolaufeinDrizzt","GLOBAL",2)~ THEN drizzt
SAY @793
IF ~~ THEN + drizzt_07
IF ~Global("C#Solau_PCListenedDrizzt","GLOBAL",1)~ THEN + drizzt_00
END

IF ~~ THEN drizzt_00
SAY @2010
++ @794 + drizzt_01
++ @795 + drizzt_01
++ @796 + drizzt_06
END

IF ~~ THEN drizzt_01
SAY @797
++ @798 + drizzt_02
++ @799 + drizzt_04
++ @800 + drizzt_03
++ @796 + drizzt_06
END

IF ~~ THEN drizzt_02
SAY @801
++ @800 + drizzt_03
++ @796 + drizzt_06
END

IF ~~ THEN drizzt_03
SAY @802
++ @803 + drizzt_05
++ @804 + drizzt_06
++ @805 + drizzt_06
END

IF ~~ THEN drizzt_04
SAY @806
++ @807 + drizzt_06
++ @800 + drizzt_03
++ @796 + drizzt_06
END

IF ~~ THEN drizzt_05
SAY @808
IF ~~ THEN DO ~IncrementGlobal("C#SolauFriendshipCounter","LOCALS",1)~ + drizzt_06
END

IF ~~ THEN drizzt_06
SAY @809
IF ~~ THEN + drizzt_07
END

IF ~~ THEN drizzt_07
SAY @810
IF ~~ THEN DO ~SetGlobal("C#SolaufeinDrizzt","GLOBAL",3)~ EXIT
END



/* inside a temple */

IF ~Global("C#SolauTemple","GLOBAL",1)~ THEN temple
SAY @811
= @812
= @813
IF ~~ THEN DO ~SetGlobal("C#SolauTemple","GLOBAL",2)~ EXIT
END




/* morning NoWeather*/

IF ~Global("C#SolauMorningTalk","GLOBAL",1)~ THEN morning
SAY @814
= @815
= @816
= @817
IF ~~ THEN DO ~SetGlobal("C#SolauMorningTalk","GLOBAL",2)~ EXIT
END



/* TimeOfDay(DAY), Noweather~ */

IF ~Global("C#SolauSunTalk","GLOBAL",2)~ THEN sonnendialog1
SAY @818
= @819 
++ @820 + sonnendialog1_02
++ @821 + sonnendialog1_03
++ @822 + sonnendialog1_01
END

IF ~~ THEN sonnendialog1_01
SAY @823
IF ~~ THEN DO ~SetGlobal("C#SolauSunTalk","GLOBAL",3)~ EXIT
END

IF ~~ THEN sonnendialog1_02
SAY @824
IF ~~ THEN + sonnendialog1_04
END

IF ~~ THEN sonnendialog1_03
SAY @825
IF ~~ THEN + sonnendialog1_04
END

IF ~~ THEN sonnendialog1_04
SAY @826
IF ~~ THEN DO ~SetGlobal("C#SolauSunTalk","GLOBAL",3)~ EXIT
END



/* zweiter Sonnendialog, sehr viel später im Spiel */
IF ~Global("C#SolauSunTalk","GLOBAL",5)~ THEN lovetalk_sonne
SAY @827
++ @828 + sonne_01
++ @829 + sonne_02
END

IF ~~ THEN sonne_01
SAY @830
= @831
IF ~~ THEN DO ~SetGlobal("C#SolauSunTalk","GLOBAL",6)~ EXIT
END

IF ~~ THEN sonne_02
SAY @832
IF ~~ THEN + sonne_01
END


/* TimeOfDay(DAY), Regen und Gewitter */

IF ~Global("C#SolauRainTalk","GLOBAL",2)~ THEN regendialog1
SAY @833
= @834
IF ~~ THEN DO ~SetGlobal("C#SolauRainTalk","GLOBAL",3)~ EXIT
END


/* TimeOfDay(NIGHT), Noweather */

IF ~Global("C#SolauMoonTalk","GLOBAL",2)~ THEN mond
SAY @835
= @836 
++ @837 + mond_03
++ @838 + mond_01
++ @839 + mond_04
++ @840 + mond_02
END

IF ~~ THEN mond_01
SAY @841
= @842
IF ~~ THEN DO ~SetGlobal("C#SolauMoonTalk","GLOBAL",3)~ EXIT
END

IF ~~ THEN mond_02
SAY @843
IF ~~ THEN DO ~SetGlobal("C#SolauMoonTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN mond_03
SAY @844
IF ~~ THEN + mond_01
END

IF ~~ THEN mond_04
SAY @845
IF ~~ THEN + mond_01
END

END //APPEND