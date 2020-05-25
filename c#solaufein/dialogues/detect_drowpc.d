/* I_C_T und andere Interjections */

/* this adds a reply option to Adalon's dialogue. The player has to chose this to set the variable that will let Solaufein detect that the PC is drow */

EXTEND_BOTTOM UDSILVER 27
+ ~Race(Player1,ELF)
Global("C#Solaufein_PCIsDrow","GLOBAL",0)~ + @2000 DO ~SetGlobal("C#Solaufein_PCIsDrow","GLOBAL",1)~ + drow_pc
END

APPEND UDSILVER 

IF ~~ THEN drow_pc
SAY @2001
COPY_TRANS UDSILVER 27
END

END //APPEND