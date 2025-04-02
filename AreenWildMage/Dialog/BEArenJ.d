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

++ @6 DO ~AddexperienceParty(2000) SetGlobal("BECandlekeep","GLOBAL",3)~ EXIT
END


// Undercity speach

IF ~Global("BEUndercity","GLOBAL",1)~ BEGIN BEUndercity1

SAY @7
= @8
= @9

++ @10 DO ~SetGlobal("BEUndercity","GLOBAL",2)~ EXIT
++ @11 DO ~SetGlobal("BEUndercity","GLOBAL",2)~ EXIT
END

IF ~Global("BEFirewine","GLOBAL",1)~ BEGIN BEFirewine1

SAY @14
= @15
= @16

++ @17 DO ~SetGlobal("BEFirewine","GLOBAL",2)~ EXIT
++ @18 DO ~SetGlobal("BEFirewine","GLOBAL",2)~ EXIT
END

// Interjections

I_C_T AJANTI 1 BEArenAjantis1
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @12
END

I_C_T AJANTI 2 BEArenAjantis2
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @12
END

/* he disapears
I_C_T FORESH 3 BEArenForesh3
== BEARENJ IF ~InParty("BEAren") InMyArea("BEAren") !StateCheck("BEAren",CD_STATE_NOTVALID)~ THEN @13
END
*/