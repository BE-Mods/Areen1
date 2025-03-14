BEGIN BEAREN

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0

SAY @1
= @2
= @3

++ @4 DO ~JoinParty()~ EXIT
++ @5 EXIT

END


IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1

SAY @6

++ @7 DO ~JoinParty()~ EXIT
++ @8 EXIT

END