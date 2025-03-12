BEGIN BEAREN

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0

SAY ~Yes? I'm Areen, practitioner of wild magic, at your service.~
= ~I had a spot of trouble with bandits last night on my way to Athkatla and I lost rather valuable research materials and my spell book.~
= ~Traveling alone has proved... less than ideal. You appear a capable lot. Might we discuss a mutually beneficial arrangement?~

++ ~I could use someone of your talents. We could travel together.~ DO ~JoinParty()~ EXIT
++ ~Sorry, but I am not looking for more company.~ EXIT

END


IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1

SAY ~*ahem* I don't typically revisit declined proposals, frightfully poor form and all that, but... might we reconsider our previous discussion about traveling together?~

++ ~Things have changed. I could use your help now.~ DO ~JoinParty()~ EXIT
++ ~I wish you luck, but I must decline again.~ EXIT

END