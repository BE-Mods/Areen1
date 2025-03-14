BEGIN BEARENP

IF ~Global("KickedOut", "LOCALS", 0)~ THEN BEGIN 0
SAY @1
= @2
++ @3 DO ~JoinParty()~ EXIT
++ @4 DO ~SetDialog("BEArenP") SetGlobal("KickedOut", "LOCALS", 1)~ EXIT
END

IF ~Global("KickedOut", "LOCALS", 1)~ THEN BEGIN 1
SAY @5
++ @6 DO ~JoinParty() SetDialog("BEAren") SetGlobal("KickedOut", "LOCALS", 0)~ EXIT
++ @7 EXIT
END

IF ~Global("KickedOut", "LOCALS", 2) !InParty("Neera")~ THEN BEGIN 2
SAY @8
++ @9 DO ~JoinParty() SetDialog("BEAren") SetGlobal("KickedOut", "LOCALS", 1)~ EXIT
++ @10 EXIT
END

