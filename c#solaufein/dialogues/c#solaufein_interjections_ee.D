/* EE: Elhan's geas in case Hexxat but not Viconia is in group */

I_C_T HEXXATJ 305
== C6ELHAN2 IF ~OR(2) !InParty("viconia")
Dead("viconia")
See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @863
== c#solauJ IF ~OR(2) !InParty("viconia")
Dead("viconia")
See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @860 DO ~ForceSpell("C#Solaufein",FLASHY_1)
SetGlobal("C#Solau_ElhanGeas","GLOBAL",1)
RealSetGlobalTimer("C#SolauSceneryTimer","GLOBAL",500)~
== C6ELHAN2 IF ~OR(2) !InParty("viconia")
Dead("viconia")
See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @864
== HEXXATJ IF ~OR(2) !InParty("viconia")
Dead("viconia")
See("C#Solaufein")
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
!StateCheck("C#Solaufein",CD_STATE_NOTVALID)~ THEN @1940
END