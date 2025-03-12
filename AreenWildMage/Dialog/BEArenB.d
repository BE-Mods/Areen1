BEGIN BEARENB // this is the banter file for the NPC Areen

// with Xazar and Montaron
CHAIN                                                                                              // start a CHAIN dialogue
IF ~Global("BEMontaron1","GLOBAL",2)~ THEN BEArenB BEMontaron1                                  // has this talk happened before? BEMontaron1 is a WeiDU label, used internally as a name for this banter
~I say, Montaron... I've been meaning to inquire. How does someone of your... particular talents come to associate with that rather unstable necromancer? Surely there are more reliable magical practitioners available?~
DO ~SetGlobal("BEMontaron1","GLOBAL",3)~                                                       // make sure the talk won't happen again

== BMonta ~Heh, ye fancy types always ask that. Truth is, the mad fool's got his uses. When he's not talkin' to corpses, his spells keep me alive. Besides, his chattering scares the marks right where I want 'em.~
== BXzar ~Oh, the wild one speaks of DISCIPLINE! Tell me, do your carefully controlled chaos explosions come in different flavors too?~
= ~Mine taste like RASPBERRY DEATH!~
== BMonta ~Now ye've done it. He'll be on about taste-testing spells all day.~
EXIT                                                                                               // close conversation


// with Dynaheir and Minsc
CHAIN
IF ~Global("BEDynaheir1","GLOBAL",2)~ THEN BEArenB BEDynaheir1
~I say, Dynaheir... rather convenient having your own pack mu...er, porter. Makes traveling with all one's books and journals so much more manageable.~
DO ~SetGlobal("BEDynaheir1","GLOBAL",3)~

== BDynah ~Thou find'st humor where none exists. Minsc is no beast of burden, but a sworn protector and trusted friend.~
== BMinsc ~Ha! Minsc is strong like a mule, yes! But smarter, because Minsc has Boo! Little Boo says the wild magic man is right: carrying heavy things makes Minsc's muscles ready for JUSTICE!~
== BEArenB ~Did... did that hamster just agree with me?~
== BDynah ~*sighs* At times I forget that Boo's wisdom follows paths unknown to thee and me both.~
== BMinsc ~Boo says the fancy mage should carry his own books though. Book-carrying builds character! And possibly hamster treats?~
EXIT


// with Edwin
CHAIN
IF ~Global("BEEdwin1","GLOBAL",2)~ THEN BEArenB BEEdwin1
~I must say, Edwin, if someone had told me I'd be traveling with a Red Wizard of Thay... *straightens his collar* Rather unexpected turn of events.~
DO ~SetGlobal("BEEdwin1","GLOBAL",3)~

== BEdwin ~Let's keep this simple - you don't like me, and I don't like you. (As if I need approval from a practitioner of such questionable arts.)~
== BEArenB ~Oh, but I do like you, actually. Your methodical approach to magic is quite refreshing compared to the usual wild mage buffoonery.~
== BEdwin ~*baffled silence* (Most unexpected. A wild mage with actual intellectual capacity? Still, must keep an eye on this one. No one sincerely compliments Edwin Odesseiron without ulterior motives.)~
EXIT


// with Quayle
CHAIN
IF ~Global("BEQuayle1","GLOBAL",2)~ THEN BEArenB BEQuayle1
~I say, Quayle... I've been reviewing your thesis on illusionary manipulations. Quite... interesting methodology.~
DO ~SetGlobal("BEQuayle1","GLOBAL",3)~

== BQuayl ~Naturally! Though I doubt someone of your... *ahem* lesser intellectual capacity could fully grasp the subtle genius of my work. Did you know my IQ is 216?~
== BEArenB ~Yes, you've mentioned it. Several times. *adjusts his collar* Though I must point out that your calculation of surge variables on page 47 seems rather...~
== BQuayl ~Oh? *smirking* Found a mistake did you? I highly doubt that. After all, I am the most intelligent being you're ever likely to meet!~
== BEArenB ~Actually, I was going to say 'elegant.' *slight smile* Though perhaps my lesser intellectual capacity is affecting my judgment.~
== BQuayl ~I... oh. Well. *puffs up* Of course it's elegant! I wrote it, didn't I? Though if you'd like, I could explain it in simpler terms for you.~
== BEArenB ~*under his breath* And they say Candlekeep scholars are pompous...~
EXIT


// with Xan
CHAIN
IF ~Global("BEXan1","GLOBAL",2)~ THEN BEArenB BEXan1
~I must say, Xan, your pessimistic outlook is rather... consistent.~
DO ~SetGlobal("BEXan1","GLOBAL",3)~

== BXannn ~*sighs heavily* We're all doomed anyway. Though practicing wild magic? You're clearly more doomed than most.~
== BEArenB ~Indeed? *straightens his collar* Tell me then, who is more doomed: the wild mage who acknowledges the need for protection, or the enchanter who agrees to protect him?~
== BXannn ~...both, obviously. Though I must admit, *slight pause* that's rather well reasoned.~
== BEArenB ~How gratifying to earn the approval of a fellow practitioner.~
== BXannn ~Don't get too comfortable. That will only make our inevitable demise more painful.~
EXIT


// with Neera
CHAIN
IF ~Global("BENeera1","GLOBAL",2)~ THEN BEArenB BENeera1
~*stiffly* I've been observing your... approach to wild magic. My parents would be absolutely mortified.~
DO ~SetGlobal("BENeera1","GLOBAL",3)~

== BNeera ~Oh come on, lighten up! Not everything has to be all serious study and dusty books. Wild magic is about embracing the unexpected!~
== BEArenB ~Embracing the... *inhales sharply* Do you have any idea how many years my parents spent developing proper control techniques? Wild magic isn't some entertaining parlor trick for your amusement.~
== BNeera ~Hey, I take it seriously! ...Most of the time. When it's important. Sort of.~
== BEArenB ~You treat our art like some kind of joke, while practitioners like yourself have utterly destroyed the reputation of wild magic. Do you know how many scholars refuse to even consider my research because they assume I'm just another reckless catastrophe waiting to happen?~
== BNeera ~Wow, someone needs a wild surge to turn their hair pink. Might help with that attitude!~
== BEArenB ~<CHARNAME>, I must inform you that if we continue traveling with this... this walking magical liability, I shall be forced to reconsider our arrangement.~
EXIT

CHAIN
IF ~Global("BENeera1","GLOBAL",5)~ THEN BEArenB BENeera2
~I see you've made your choice regarding proper magical discipline. I shall not have my reputation tainted by association with such... frivolity. Good day.~
DO ~SetGlobal("BENeera1","GLOBAL",6) SetGlobal("KickedOut", "LOCALS", 2) LeaveParty()~
EXIT

CHAIN
IF ~Global("BENeera1","GLOBAL",8)~ THEN BEArenB BENeera3
~Right, I’ll just leg it then. No point in hanging about."~
DO ~SetGlobal("BENeera1","GLOBAL",9) SetGlobal("KickedOut", "LOCALS", 2) EscapeArea() LeaveParty()~
EXIT