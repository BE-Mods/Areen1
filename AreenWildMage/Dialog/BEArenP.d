BEGIN BEARENP

IF ~Global("KickedOut", "LOCALS", 0)~ THEN BEGIN 0

SAY ~I see. Yes, quite. Well, I suppose our arrangement has run its course. Rather unfortunate timing, I shall make the necessary arrangements for solo travel. Again.~
= ~Do try not to spread tales of any wild mages you may encounter behaving like buffoons. We're not all cut from the same cloth, you understand.~

++ ~Actually, your knowledge of wild magic might still prove useful. Perhaps I was hasty...~ DO ~JoinParty()~ EXIT
++ ~This isn't personal, Areen. Safe travels.~ DO ~SetDialog("BEArenP") SetGlobal("KickedOut", "LOCALS", 1)~ EXIT

END


IF ~Global("KickedOut", "LOCALS", 1)~ THEN BEGIN 1

SAY ~Well, well. If it isn't my former traveling companions. I don't suppose you've come to discuss the theoretical applications of controlled wild magic surges?~

++ ~I could use your expertise again, Areen.~ DO ~JoinParty() SetDialog("BEAren") SetGlobal("KickedOut", "LOCALS", 0)~ EXIT
++ ~Just passing through. Good luck with your surges.~ EXIT

END


IF ~Global("KickedOut", "LOCALS", 2) !InParty("Neera")~ THEN BEGIN 2

SAY ~I see you've come to your senses about proper magical standards.~

++ ~Yes Areen, please join me.~ DO ~JoinParty() SetDialog("BEAren") SetGlobal("KickedOut", "LOCALS", 1)~ EXIT
++ ~This changes nothing. Farewell.~ EXIT

END

