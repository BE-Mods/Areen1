BEGIN BEARENJ


// Candlekeep speach

IF ~Global("BECandlekeep","GLOBAL",1)~ BEGIN BECandlekeep1

SAY @29 /*~Remarkable. I'd heard tales of Candlekeep's collection, but seeing it in person... *adjusts his collar* My parents would have given anything for access to these volumes.~ */
= @30 /*~While we're here, perhaps we might locate 'A Beginner's Guide to Controlled Chaos' by Master Almahn? A seminal text on wild magic theory, quite difficult to find outside academic circles. Could prove most enlightening.~ */

++ @31 /*~I know this library well. I'll help you find that book if we have time.~*/ DO ~SetGlobal("BECandlekeep","GLOBAL",2)~ EXIT
++ @32 /*~We're here for more pressing matters than browsing dusty tomes, Areen.~*/ DO ~SetGlobal("BECandlekeep","GLOBAL",2)~ EXIT
END

IF ~Global("BECandlekeep","GLOBAL",2)~ BEGIN BECandlekeep2

SAY @33 /*~*carefully examining the book* Extraordinary! Master Almahn's work, intact and well-preserved. There's wisdom here that even my parents' notes didn't fully explore. *delicately turns a page* These surge control techniques... most illuminating. Thank you, <CHARNAME>.~ */

++ @34 /*~You are welcome.~*/ DO ~AddexperienceParty(1000) SetGlobal("BECandlekeep","GLOBAL",3)~ EXIT
END



// Undercity speach

IF ~Global("BEUndercity","GLOBAL",1)~ BEGIN BEUndercity1

SAY @35 /*~What a mess <CHARNAME>... *adjusts his collar nervously*~ */
= @36 /*~I'll see this business with Sarevok through to the end, but afterwards I must return to my home in Athkatla posthaste. A rather pressing matter at the Cowled Wizards' guild requires my attention.~ */
= @37 /*~*more quietly* And I'd strongly suggest avoiding the northern route when you're done here. Dreadfully unstable situation brewing up there, I heard.~ */

++ @38 /*~Do as you must, Areen.~*/ DO ~SetGlobal("BEUndercity","GLOBAL",2)~ EXIT
++ @39 /*~I may even visit you there if we survive this fight.~*/ DO ~SetGlobal("BEUndercity","GLOBAL",2)~ EXIT
END