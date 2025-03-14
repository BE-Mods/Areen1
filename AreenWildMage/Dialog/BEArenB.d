BEGIN BEARENB // this is the banter file for the NPC Areen

// with Xazar and Montaron
CHAIN                                                                                              // start a CHAIN dialogue
IF ~Global("BEMontaron1","GLOBAL",2)~ THEN BEArenB BEMontaron1                                  // has this talk happened before? BEMontaron1 is a WeiDU label, used internally as a name for this banter
@1
DO ~SetGlobal("BEMontaron1","GLOBAL",3)~                                                       // make sure the talk won't happen again

== BMonta @2
== BXzar @3
= @4
== BMonta @5
EXIT                                                                                               // close conversation


// with Dynaheir and Minsc
CHAIN
IF ~Global("BEDynaheir1","GLOBAL",2)~ THEN BEArenB BEDynaheir1
@6
DO ~SetGlobal("BEDynaheir1","GLOBAL",3)~

== BDynah @7
== BMinsc @8
== BEArenB @9
== BDynah @10
== BMinsc @11
EXIT


// with Edwin
CHAIN
IF ~Global("BEEdwin1","GLOBAL",2)~ THEN BEArenB BEEdwin1
@12
DO ~SetGlobal("BEEdwin1","GLOBAL",3)~

== BEdwin @13
== BEArenB @14
== BEdwin @15
EXIT


// with Quayle
CHAIN
IF ~Global("BEQuayle1","GLOBAL",2)~ THEN BEArenB BEQuayle1
@16
DO ~SetGlobal("BEQuayle1","GLOBAL",3)~

== BQuayl @17
== BEArenB @18
== BQuayl @19
== BEArenB @20
== BQuayl @21
== BEArenB @22
EXIT


// with Xan
CHAIN
IF ~Global("BEXan1","GLOBAL",2)~ THEN BEArenB BEXan1
@23
DO ~SetGlobal("BEXan1","GLOBAL",3)~

== BXannn @24
== BEArenB @25
== BXannn @26
== BEArenB @27
== BXannn @28
EXIT


// with Neera
CHAIN
IF ~Global("BENeera1","GLOBAL",2)~ THEN BEArenB BENeera1
@29
DO ~SetGlobal("BENeera1","GLOBAL",3)~

== BNeera @30
== BEArenB @31
== BNeera @32
== BEArenB @33
== BNeera @34
== BEArenB @35
EXIT

CHAIN
IF ~Global("BENeera1","GLOBAL",5)~ THEN BEArenB BENeera2
@36
DO ~SetGlobal("BENeera1","GLOBAL",6) SetGlobal("KickedOut", "LOCALS", 2) LeaveParty()~
EXIT

CHAIN
IF ~Global("BENeera1","GLOBAL",8)~ THEN BEArenB BENeera3
@37
DO ~SetGlobal("BENeera1","GLOBAL",9) SetGlobal("KickedOut", "LOCALS", 2) EscapeArea() LeaveParty()~
EXIT