BEGIN BEARENJ


// Candlekeep speach

IF ~Global("BECandlekeep","GLOBAL",1)~ BEGIN BECandlekeep1

SAY @1
= @2

++ @3 DO ~SetGlobal("BECandlekeep","GLOBAL",2)~ EXIT
++ @4 DO ~SetGlobal("BECandlekeep","GLOBAL",2)~ EXIT
END

IF ~Global("BECandlekeep","GLOBAL",2)~ BEGIN BECandlekeep2

SAY @5

++ @6 DO ~AddexperienceParty(1000) SetGlobal("BECandlekeep","GLOBAL",3)~ EXIT
END



// Undercity speach

IF ~Global("BEUndercity","GLOBAL",1)~ BEGIN BEUndercity1

SAY @7
= @8
= @9

++ @10 DO ~SetGlobal("BEUndercity","GLOBAL",2)~ EXIT
++ @11 DO ~SetGlobal("BEUndercity","GLOBAL",2)~ EXIT
END