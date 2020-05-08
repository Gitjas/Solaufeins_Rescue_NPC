                                 
      		Solaufein's Rescue - jastey's Solaufein NPC mod for BGII 

		   for original BG2 (with ToB), BGT, BGII:EE, and EET





GENERAL DESCRIPTION

This is not Weimer's Solaufein NPC mod. 

With this modification the game character Solaufein, drow fighter from Ust Natha, is extended to a joinable NPC. Before he can join, Solaufein has to be freed from drider chambers. This starting quest can be played independently to whether he should then join the group or not.
 
Compatibility with Weimers Solaufein for this case is described below in detail.

Solaufein can also follow as a '7th party member' in case your group already consists of 6 persons. More details about this please see below.

The second, optional mod component offers the possibility to give the game Solaufein in Ust Natha the mod's portrait. If you want to see this in the game, this component has to be installed after Weimer's Solaufein.

The third, optional component is for BGII and BGT: If the main component of Infinity Animations (link see below section "LINKS") is installed, this component will install and use the drider animations for the mod. 
Without this component, all driders in the mod will be displayed as drow. There is no loss in gameplay, other than it won't look as nice. :-) 
For BGII:EE and EET the animations will be included and used automatically.

The forth, optional component enables to install the alternative portrait for Solaufein, also from Holger Kirste!


For version1, the rescue quest can be played fully in English. The rest of the mod is still mostly in German. English version is done to 55%.



PLEASE NOTE

-The mod needs to be installed before visiting the Underdark for the first time because of area modifications of the main Underdark area. For BGII/BGT and using the drider animations you probably need to start a new game.

-Solaufein will not join an evil PC with a reputation lower than 10. This is because the friendshp path I wrote is best suited for a PC of good alignment. Also, in my opinion it does make sense since Solaufein tries to leave an evil society behind and would not trust an evil PC with low reputation enough with his life.



DETAILS

-Starting point of the mod is once the group leaves Ust Natha after the demon ceremony. Solaufein's life had to be spared before (obviously). Please also note compatibility with Weimer's Solaufein, as the quest will not start if Weimer's Solaufein already joined the party or is left waiting in the Underdark (more details to compatibility below).

-Solaufein will wait in front of the entrance to Adalon's Lair (again: only if Weimer's Solaufein is not nearby). He will talk to the PC but then be captured by other drow and brought to the drider chambers. It is then up to the PC to rescue Solaufein from being turned into a drider! 

-After being freed from the drider pits, Solaufein wants to collect some more things before joining. He will then rejoin shortly before the group exits the Underdark. At this point, he can also be told to exit alone and wait outside. Then he will wait outside the elves' camp at [2477.2023] (south-east corner).

-If starting a new game in ToB the player can chose the status of the friendship by chosing the correct reply option. Note: If answering that Solaufein and the PC spent time together, only the normal ToB content will show. If answering that Solaufein left shortly after being freed from the drider cocoon, the whole friendship track will start from the beginning. The latter option was meant for players curious about this mod's characterization but not wanting to play the whole game to see it.
For ToB, assumption is always that the PC freed Solaufein from the drider chambers.



CONTENT

-Quest "Solaufein's Rescue": Adds drider chambers to the main Underdark area (the entrance is at the west cave wall, north of the place where the group enters Underdark for the first time (behind the group of Illithids)).

-Solaufein as a full-fledged party member: friendship path (with 26 base dialogues), NPC banter (at least 2 in SoA and 1 in ToB with every BioWare and BeamDog NPC), additional scenery dialogues and interjections, PID (player initiated dialogue) with several full-fledged dialogues. There is no romance.

-There is a small encounter in Athkatla with two follow-ups, the last in Amkethran (to call this quest would be highly exaggerated). The PC can lay down his arms for those, though.

-Solaufein's alignment is lawful neutral. The mod gives him the kit "drow fighter" with the following specifications:

  Advantages:
  -Gains 2% magical resistance upon every level up to a max of 80% at level 16.
  -Innate abilities Faerie Fire, Darkness, Dimension Door, and Dispel Magic, all 1/day
  
  Disadvantages:
  -during daylight, the drow has the following penalties due to the sunlight:
	-Penalty of 4 to each THACO and AC
	-Reduction of 2 to all saving throws
	-Sets the visual range to 2
	-Magic resistance reduction by 50% (counted from 100%)
Many thanks to Knight who allowed me to use his spells Faerie Fire and Darkness from his mod "Knights Kits" (all files are renamed and use my prefix). Partly the spells also use ressources from the spells available in SoD / BGII:EE.

-Both portraits ares taken from pictures of drow fighters by Holger Kirste. Thank you very much to Holger Kirste!

-Solaufein will acknowledge your PC being a drow - but do not expect him to be available to teach drow lore, as he tries to leave all this behind. For activation, you either have to install one of the subrace mods befor the Solaufein mod and use the drow or half-drow kits of these mods. Supported mods are (so far, only English version is considered since these mods aren't traify_d yet): Welverin's Subrace mod, FinnJO's Subrace mod, Corsymyr's BG:EE Subrace mod.
Alternatively, for "hand-made" drow NPCs there is one reply option added to Adalon's dialogue for en elven PC to tell her that Player1 is a drow. It will show after Adalon revealed her plan about the drow illusion. Only click this if Solaufein should adddress your PC as a drow. 



SOLAUFEIN AS 7th PARTY MEMBER

If the group consist of 6 NPCs already, Solaufein will join as a "7th party member". This means the following:
-He will follow like a familiar, i.e. he can be given orders and the player has control of his quickslot items and his special abilities. 
-All dialogues, interjections and banters will fire as if he is a full party member. Note: the frequency of banters will not be influenced by banter accellerator mods while following in 7th party member mode, as the banter have to be triggered by Solaufein's script instead of the engine. There are three different spaced timers available, though. Times between banters can be changed via PID. Just tell Solaufein that he should banter more or less often and the timer between banters will be changed accordingly.
-To have access to his inventory or to equip him with items or new quickslot items, Solaufein needs to join the group as a full party member.
-For levelling up he needs to join the group. His script adjusts his amount of XP to the PC's automatically.
-To change from full party member to "7th party member", kick Solaufein out of the party and tell him then to "get in line behind the others."
-While being in this modus, Solaufein cannot die. Once his HP drop to 1, he will pass out until the current fight is over, turning "neutral" with a blue circle so that enemies will also stop attacking him. After the fight, he will be healed completely and rejoin as familiar. The healing is a tweak needed because there were instances where he died upon regaining his group status if his HP dropped too low.

Note: Following as a familiar means Solaufein will always be behind the last full group member, for walking as well as area transitions. This is unfortunate if you need him as a full fighter or even tank who is supposed to be in first line upon fights.

Hint: If you have another NPC of whom you know that he will not leave forever if kicked out, you can manage Solaufein's level-up and inventory by a quick switch of group slots - the trick being that letting Solaufein join and doing all the management is done before the other NPC had time to walk to the PC and start his "Do you really want me to leave the group"-dialogue. You can then let the other NPC rejoin and tell Solaufein to get in line behind the others.

I don't have any extensive experience with the "7th party member mode" ingame yet, so we will have to see whether it disturbes balance and makes some fights too easy. The conditions could be misused for a quicker party level-up.  



SOLAUFEIN'S CHARAKTER

Solaufein is a centuries old drow (albeit not "old" yet) who dissociated himself - mentally - from the drow culture. Being stuck in what he sees as an impasse inside the cruel drow society, he arranged himself with the situation by aquiring some status himself as male commander and being backed by a powerful house (whichs name is never mentioned and is not important). Being somewhat protected this way he vents his bitterness with sarcasm and by opposing lesser females to a drow-untypical degree. His love for Phaere is long gone, he dispises her as much as all other drow seeking favor of the spider queen Lolth. 

The main theme of the mod's dialogues is the change that leaving the Underdark brought upon him, especially the loss of most of his magic and being blinded by the sun with the resulting weakening of his fighting prowess. Also, he comments on the so much yearned for surfacers' way of living from his drow perspective. 

He will befriend a PC who is ready to talk to him and deals with quests in a good or neutral way. Suspiciousness against him, the drow, is a wise sentiment in his opinion. He hardly feels offended by any PC remark.

Note: The friendship path also deals with Solaufein's problems of actually allowing the feeling of friendship and could be a bit stereotype at times.



INSTALLATION (Windows)

BGII:EE
If you use BGII Enhanced Edition from GOG or Steam, you need to prepare your game with modmerge before installing any mods:
https://forums.beamdog.com/discussion/50441/modmerge-merge-your-steam-gog-zip-based-dlc-into-something-weidu-nearinfinity-dltcep-can-use/p1

NOTE: BG(II):EE are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames.

For EET, install this mod to the BGII:EE folder after the EET transformation (i.e. somewhere after EET_main.exe) but before running the final EET-end.exe. 


Make sure you back up your dialog.tlk file (and dialogf.tlk, if it exists), just to be sure.
Extract the contents of the archive to your game's main directory (BGII - SoA).

Run the "setup-c#solaufein.exe" program. Choose the language you prefer and confirm installation.

Should the installation fail, please send the "setup-c#solaufein.DEBUG" file to me at jastey@web.de and tell the game you tried to install to (BGII, BGII:EE, BGT, EET). Alternatively, you can post at one of the forums I am active in, preferably Kerzenburgforum or GibberlingsThree.



COMPATIBILITY

General: Solaufein's Rescue - jastey's Solaufein NPC for BGII is coded using WeiDU, and it does not overwrite any files, only patches them if necessary.

I am very interested in your experience with compatibility to other mods. Especially if you encounter incompatibilities, please let me know.

For BGII / BGT you need to install the main component ("Core Mod") of "Infinity Animations"to see the drider animations in the game. If IA is not installed before the main component of the Solaufein mod, the component "Enable Drider Animations in this Mod" of this mod can be installed later to enable the drider animations. 

There is some crossmod content in this mod. Solaufein's Rescue - jastey's Solaufein NPC for BGII should be installed after:
-Corsymyr's BG:EE Subrace mod (if your PC is supposed to be drow)
-FinnJO's Subrace mod (if your PC is supposed to be drow)
-Welverin's Subrace mod (if your PC is supposed to be drow)

All other crossmod is inside the Crossmod Banter Pack which should be installed after Solaufein (from v1.5).



COMPATIBILITY WITH WEIMER'S SOLAUFEIN:

If both Solaufein NPC mods are installed, this is how it is treated in the game. My idea was to enable players to play the rescue quest but let Weimer's Solaufein join later, if they prefer his characterization over mine, with as little immersion breaking as possible.

The content of Weimer's Solaufein mod is not changed in any way by this mod.

Weimer's Solaufein is the first to approach the PC after coming out of Ust Natha after opposing the matron mother in the temple ritual and saving the dragon eggs. If you have Weimer's Solaufein installed and want to play the rescue quest, you need to send Weimer's Solaufein to the surface to wait for you there. The quest "Solaufein's Rescue" (i.e. the whole mod) will only start if Weimer's Solaufein did not join the group in the Underdark and also was not left standing to wait in front of Ust Natha. 

-After Solaufein was rescued from the drider cocoon, you can make my Solaufein NPC disappear (i.e. only leaving Weimer's Solaufein for joining later) by clicking the appropriate reply choice. Weimer's Solaufein mod will be detected, and Solaufein will tell the player: "We already agreed on meeting at the surface. I will go there now, if you still want me to join you."
--If you tell him "Yes, Solaufein. I will expect you there, just as we agreed in front of the Ust Natha's city gates!", only Weimer's Solaufein will await you outside the Elven camp.
--If you reply "No, this experience changed you. I prefer you as you are now.", then my Solaufein will also be available as a joinable NPC. Note: The presence of Weimer's Solaufein will not be changed by this mod.

-My Solaufein will be outside the elves's camp at [2477.2023] (south-east corner) - at opposed sides from Weimer's so you don't have to look at both at the same time, in case "both" mod Solaufeins were send to the surface.

-For the component "Give Solaufein in Ust Natha the Mod's Portrait" to work, it has to be installed after Weimer's Solaufein.



BUG REPORTS

In case you encounter any problems while playing that might be related to this mod, please either post in one of the forums I am active, preferably at Kerzenburgforum or GibberlingThree, or email me at jastey@web.de. Please attach the "setup-c#solaufein.DEBUG" file and tell me, on which game you installed the mod (BGII, BGII:EE, BGT, EET).

I will try to answer as soon as possible.



DECLARATION

Solaufein is ein BioWare charakter, but the mod is based on my view. I do not mind if you write crossmod banters for my Solaufein without consulting me, as long as you try to match the mod's characterization, do not ridicule him or write offensive content, and as long as it's banter that have no other impact on the content of this mod, i.e. don't make Solaufein leave the party due to a conflict with your NPC (feel free to make *your* NPC leave the goup), and also don't make him fall in love with your NPC even though I am sure he/she is the greatest, just to name some things. 

You can add reactions of your NPC to any and all content of this mod without my consent, albeit I'd ask you not to add interjections inside my mod's dialogues.

For your private use you can do with this mod what you like, obviously. 

If you think using code from this mod is a good idea then go ahead.

Holger Kirste allowed the portraits to be used for this mod, but do not make edits other than for your personal use. All uses outside the mod are copyrighted.

I'll be happy to have a look at crossmod you designed, of course.

Technical updates and bugfixes for this mod will be very welcome in case I'll be no longer active in IE-modding.



CREDITS

Many thanks to Holger Kirste for the wonderful drow portraits! You can see the default one in full scale here: https://chinasky.artstation.com/


Also my thanks go to:


Annalena: much interest in the mod and constructive criticism

Isewein: proofreading English

Knight: for granting me the use of his spells Faerie Fire and Darkness from his drow kit

Morywen: Beta tests and constructive criticism

S.: Beta tests, proof reading, and constructive criticism

viader: for granting the use of the drider animations imported from IWDII to BGII:EE from his Extended Animations Mod

White Agnus: for a lot of help with coding 


Sir Darian for hosting the mod at Kerzenburgforum, also via the ftp space Kerzenburgforum generously provided me with!

Thank you to all Kerzenburgforum admins for the time spent to make it the reliable forum it is!




LINKS

Resource Packs used or needed for this mod:

Infinity Animations-Mod:
http://www.shsforums.net/files/category/98-infinity-animations/

Link to drider animations for BGII/BGT (included in this mod):
http://www.shsforums.net/files/file/861-ia-content-002-iwdii-and-unused-bgii-animations/

Extended Animations by viader for BGII:EE/EET (included in this mod): http://forum.baldursgate.com/discussion/19501/resource-pack-extended-animations/p1

Knight Kits (WeiDU-Version, without drow kit): https://kerzenburg.baldurs-gate.eu/downloads.php?id=36



Tools and Ressources:
Solaufein's Rescue - jastey's Solaufein NPC mod for BGII was created using the resources provided by the IESDP (https://gibberlings3.github.io/iesdp/index.htm) and with the following software:


IE-Modding Tools:

BAM Workshop		http://www.shsforums.net/topic/57564-bamworkshop/
DLTCEP			http://www.gibberlings3.net/tools/dltcep.php
Near Infinity		https://github.com/Argent77/NearInfinity/releases/latest
Shadowkeeper		http://www.mud-master.com/shadowkeeper/index.html
WeiDU			https://github.com/WeiDUorg/weidu/releases/latest
 			(formerly: http://www.weidu.org)


Other very useful tools:

Audacity		https://www.audacityteam.org/
CpConverter		https://sourceforge.net/projects/cp-converter/
grepWin			http://tools.stefankueng.com/grepWin.html
WinMerge		http://winmerge.org/


Modding communities, tutorials and technical assistance:

Kerzenburgforum 	https://www.baldurs-gate.de/index.php
The Gibberlings Three	http://gibberlings3.net
Pocket Plane Group	http://pocketplane.net
Spellhold Studios	http://www.spellholdstudios.net/



HISTORY

Version 1.6:
-fatesp summoning: transition to correct state 
-Spell Darkness: corrected BAM display (should be real sphere of darkness), by Acifer
-Change into 7th party member mode and back should not be interrupted.
-all lines from script traify-ed.
-not getting hostile if hit with friendly fire while in 7th party mode 
-C#5MINHP.spl should not be applied to party

Version 1.5:
-if interacting with the drider cocoons, texts will also be shown on screen (changed to DisplayStringHead)
-added more variable parameters to EET EET_NPC_TRANSITION (tp2 optimization, no changes ingame) 
-added summoning for new ToB game (EET)
-crossmod with Ajantis and Gavin moved into Crossmod Banter Pack
-corrected: infer_charset -> infer_charsets
-EE use pvrz-tis (no more black lines in areas)
-setup-c#solaufein.tp2 renamed to c#solaufein.tp2
-c#solaufein.ini with mod info metadata added.

Version 1.4:
-Solaufein should always change into the 7th party modus without problems (added SetInterrupt(FALSE/TRUE) to script actions).
-update to weidu 246

Version 1.3:
-integrated proof-readings from Isewein (all files except c#solatra.tra)
-some more lines translated to English
-update to weidu 245

Version 1.2:
-changed detection of installed Ajantis BGII mod to a dlg-file to reflect behavior of FILE_EXISTS_IN_GAME
-changed WEIGHT of crossmod banters in the hopes that they willl mix better with the existent ones (instead of firing all first).
-edited Ajantis crossmod a little
-adjusted trigger for one of the Ajantis-Solaufein banters (dialogue about belt will not trigger if Ajantis got rid of it alone)
-some more lines translated to English
-added link to artstation to portrait artist's page (Holger Kirste)
-added check whether Player1 was rested (baldur.bcs, baldur25.bcs) using spell "C#FATIG1" that gives Player1 1 point to "FATIGUE" if it is "0" -> same principle as Zed Nocear's rest check for BG1. This is for rare cases that a mod uses a cutscene with Rest() instead of PartyRested(), so 7th party member will be rested, too.

Version 1.1:
-fixed Gavin crossmod install error

Version 1:
-official release with German and part-English version

Legal Information:

=================================================================================
This mod uses changed area graphics and animations from IWDII. I did this because I am not able to create such great area graphics myself. Of course there are great area artists in the modding community who could have created such for me, but I justified it for myself with the thought that it keeps the drider chambers in the same style as BioWare made them, which is how I like it. 
Further, I created a soundset from Solaufein's original lines. For this, I extracted some phrases and words, which are now used in, for some, different context.
If there are any objections legally wise, please let me know and I will remove offensive content immediately.
=================================================================================

=================================================================================
Solaufein's Rescue - jastey's Solaufein NPC mod for BGII is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. ©Wizards of the Coast LLC.
This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.
=================================================================================
=================================================================================

=================================================================================
REDISTRIBUTION NOTE: Solaufein's Rescue - jastey's Solaufein NPC mod for BGII was created to be freely enjoyed by all Baldur's Gate II players, and may not be sold.
=================================================================================