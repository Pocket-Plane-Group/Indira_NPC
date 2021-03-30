// omfg!!  Indira interjection file?  Crazy.

BEGIN J#IndiJ

/* INTERJECT IDRYAD1 1 MinscDryad
  == MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN 
    ~Boo is outraged that the strange wizard would own these lovely ladies!
    Can Minsc and Boo help you nice girls?~
END IDRYAD2 1 */

////////////////////////////////////////////////
// DestroySelf() in this might fuck things up //
////////////////////////////////////////////////
INTERJECT %er_tutu%abela 9 j#freehercharry
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~<CHARNAME>, you can't be serious!  Here, you poor darling, I will set you free.~
END %er_tutu%abela 6

INTERJECT_COPY_TRANS %er_tutu%alatos 20 j#indiindignant
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Hmph!  If there's little his guild members can do to us, then why don't we...?  Oh, just never mind!~
=
~(Hmph.  How very, very rude!)~
END

INTERJECT_COPY_TRANS %er_tutu%albert 4 j#indirufierefuse
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Awww, poor little fella.  Can't we help him, <CHARNAME>?  Can't we?  His little dog...!  Aw, pleeeeease?~
END

INTERJECT_COPY_TRANS %er_tutu%aldeth 4 j#indidruidwoods
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Sometimes we'd have problems with hunters in the woods back home.  Not much we could do to chase them away, the elders said, since killing them would just bring down the ire of the nearby cities.~
END

INTERJECT_COPY_TRANS %er_tutu%alyth 1 j#indiexciting
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Shifty clientele, people sitting with their backs to the wall, hushed conversations in dark corners; how exciting!~
END

INTERJECT_COPY_TRANS %er_tutu%amnis4 8 j#indighoul
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Ugh, as if this place wasn't creepy enough already.~
END

INTERJECT_COPY_TRANS2 %er_tutu%andars 1 j#indifreethem
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~What a horrible thing.  Can you imagine losing so much hope that that's all you can think of?  <CHARNAME>, we need to do something about this!  What are we standing around waiting for?!~
END

INTERJECT_COPY_TRANS %er_tutu%arcand 2 j#indicrazy
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Sounds like an adventure!  Let's go.  Who knows what sort of powerful artifacts we could find!  I bet the sages would pay a pretty penny for them.~
END

INTERJECT_COPY_TRANS %er_tutu%ardrou 0 j#indiworgs
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Worgs?  What are we waiting for?  Quick, quick, let's move!~
END

INTERJECT_COPY_TRANS %er_tutu%arkion 1 j#indistinky
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Ewwww... a corpse?  The sewers?  We aren't really going to work for a necromancer, are we, <CHARNAME>?~
END

INTERJECT_COPY_TRANS2 %er_tutu%arkush 5 j#indifuture
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~<CHARNAME>, whatever he saw... it wasn't a joke.  I wish I had such power.  I wish I could help, but divinations of that scale are too much for me.~
END

INTERJECT_COPY_TRANS %er_tutu%bandic 9 j#indicharm
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Magic!  Haha!  Gotta love it.~ // Bonus points if you ever find this in-game without having read this code first.  TEN MILLION BONUS POINTS.
END

INTERJECT %er_tutu%bentan 5 j#indisorcery
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Hey!  I might use magic, but I'm not evil!  What kind of god is this Ilmater, anyways?~
END %er_tutu%bentan 7

INTERJECT_COPY_TRANS2 %er_tutu%berrun 15 j#indireward
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Yes sir, the life of an adventurer's the life for me.  So, what's everyone going to do with their share of the take?  I'm thinking about getting that nice scabbard with the nice ducks engraved on it... yeah.~
END

INTERJECT_COPY_TRANS %er_tutu%bheren 1 j#indisavethecat
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Oh!  Some people are just awful!  Tell me you didn't even consider his offer, <CHARNAME>.~
END

INTERJECT_COPY_TRANS2 %er_tutu%binky 4 j#indifunny1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Ha, got him good with that one, <CHARNAME>!~
END

INTERJECT_COPY_TRANS2 %er_tutu%binky 6 j#indifunny2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Hee!  He sure did get your goat, didn't he?~
END

INTERJECT_COPY_TRANS %er_tutu%bjorni 4 j#indihealbjornin
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Hmm.  Must be a paladin of Ilmater.  I hear they're sometimes required to heal naturally instead of using magic.  Odd folk, if you ask me.~
END

INTERJECT_COPY_TRANS %er_tutu%bjorni 3 j#indiaskjoinbjorni
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Psst!  Ask him if he wants to join with us.  That'd be great!  A paladin like him in the party?~
END

ADD_TRANS_TRIGGER %er_tutu%borda 0 ~!IsValidForPartyDialog("J#Indi")~

I_C_T2 %er_tutu%borda 0 j#indiborda2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Wow!  That cheap?  <CHARNAME>, I think we could use the anti-magic scroll!~
  == %er_tutu%borda IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~The lady knows quality, <CHARNAME>.  What do you say?~
END

INTERJECT_COPY_TRANS %er_tutu%boyba1 4 j#indimeanboy
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Am not!~
END

INTERJECT_COPY_TRANS %er_tutu%boybe2 2 j#indisadboy
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~This could possibly be the saddest thing I've ever heard.  He reminds me of me when I was a kid... uh, not about the burgling neighbours houses, of course!~
END

INTERJECT_COPY_TRANS %er_tutu%brathl 2 j#indisteamdagron
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Zowie!  Reminds me of a golem.~
END

INTERJECT_COPY_TRANS %er_tutu%brathl 3 j#indipump
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Imagine how much water you could pump if you had a golem working on that thing!~
END

INTERJECT_COPY_TRANS %er_tutu%brathl 4 j#indieverlight
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~If you had a dragon golem operating the pump of Gond to put oil into the reservoir, you'd never need to fill it!  Brilliant!~
END

INTERJECT_COPY_TRANS %er_tutu%brathl 5 j#indifarseer
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~I expect this is where magic takes its proper place.  A good Clairvoyance or Farsight would do just the same thing.~
END

INTERJECT_COPY_TRANS %er_tutu%brevli 17 j#indistealfarseer
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~I'm not so sure this is a good idea.  I'm all for recovering lost magical treasures and being paid for it, but this "Golden Extra Farseer" isn't lost, and I'm no thief!~
END

INTERJECT_COPY_TRANS2 %er_tutu%brielb 14 j#indibastardcoran
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Coran, I can't believe you!  This sort of thing happened in our village more than you'd expect.  Why is it always so impossible for people to own up to their responsibilities?~
=
~They all left because of it!  I... I hate you!~
END

ADD_TRANS_TRIGGER %er_tutu%caldo 0 ~!IsValidForPartyDialog("J#Indi")~ 1

I_C_T %er_tutu%caldo 0 j#caldo2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~You guys don't slow down to think much, do you?  What happens when you chop the tree down and find that it's just a plain ol' tree?~
  == %er_tutu%caldo IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~I told you already.  Dis tree is magic, and it's got lots of treasure!  You gonna get diggin', or wut?~
END

I_C_T %er_tutu%caldo 1 j#caldo2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~You guys don't slow down to think much, do you?  What happens when you chop the tree down and find that it's just a plain ol' tree?~
  == %er_tutu%caldo IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~I told you already.  Dis tree is magic, and it's got lots of treasure!  You gonna get diggin', or wut?~
END

I_C_T2 %er_tutu%casson 2 J#indicassonres
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Aww.  Wasn't that cute?~
END

I_C_T2 %er_tutu%cauter 1 J#indihobgob
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~I wonder if that fellow's ever even been out of the city.  Hobgoblins fearsome?  Heehee!~
  == %er_tutu%bkagai IF ~IsValidForPartyDialog("kagain")~ THEN
     ~Last I recall, missy, you was runnin' scared from some kobolds.  Half-elves fearsome?  Haw!~
  == %er_bvicon% IF ~IsValidForPartyDialog("viconia")~ THEN
     ~All these surface weaklings would struggle to survive bare minutes in the Underdark.  Hobgoblins, half-elves, and the *kobolds* that chased them there, too.~
  == %er_tutu%bmonta IF ~IsValidForPartyDialog("montaron")~ THEN
     ~Haaa, the lass says she does nae fear the hobgoblins.  There be certain kobolds who'd likely tell the tale different.~
  == %er_bjahei% IF ~IsValidForPartyDialog("jaheira")~ THEN
     ~Reflect upon your words before you babble them, child!  Was it not you we had to rescue from kobolds?~
  == %er_tutu%beldot IF ~IsValidForPartyDialog("eldoth")~ THEN
     ~Many of my colleagues are guilty of the very same sin, Indi.  Hypocrisy from one so pretty is distasteful, but not surprising, I suppose.~
=
~So tell me, were the kobolds <CHARNAME> rescued you from of the fearsome or pathetically undernourished variety?~
  == %er_tutu%bshart IF ~IsValidForPartyDialog("sharteel")~ THEN
     ~Mewling whelp!  Remind the world of your courageous actions in the Firewine, why don't you?~
END

ADD_TRANS_TRIGGER %er_tutu%charle 14 ~!IsValidForPartyDialog("J#Indi")~

I_C_T2 %er_tutu%charle 14 j#indicharleston
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Wow, that's a pretty terrible offer.  Our group was offered 100 gold apiece to venture into Firewine.~
END

I_C_T2 %er_tutc%hildulg 1 j#indidogkicking
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~I do not kick dogs!  Or... uh, any of that other stuff.~
END

I_C_T2 %er_tutu%chilna 0 j#indikidfairspeak
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Hey, we should go to the fair, too!~
END

I_C_T2 %er_tutu%chloe 4 j#indichloeinfo
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Wow, did you hear that?  She thinks we're heroes!~
END

ADD_TRANS_TRIGGER %er_tutu%claird 9 ~!IsValidForPartyDialog("J#Indi")~

I_C_T2 %er_tutu%claird 9 j#indiclairdemon
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~I have... had a similar experience.  But it was I that was the young fool tagging along.  Luck was with me then, but now... now I don't know.~
=
~<CHARNAME>, let's not rush into this, okay?  We need to be smart about things.~
END

I_C_T2 %er_tutu%desret 3 j#indicausefight
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~You really do have a knack for words, don't you?  Oh well, here we go again...~
END

I_C_T2 %er_tutu%dratan 3 j#indiwaryofwhatcomes
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Something's really put the fear into him.  I don't like this at all.~
END

I_C_T2 %er_tutu%dreppi2 2 j#indibadvsgood
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Why is it that only the bad guys believe us when we tell them we've solved the mystery?~
END

INTERJECT %er_tutu%drienn 2 j#indidontbelieve
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~What...?  We... no we didn't!  After all we went through, you don't even believe us!  Hmph!~
END %er_tutu%drienn 4

I_C_T2 %er_tutu%drunk 4 j#indidrunklich
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Whew, he might not be a lich, but his breath is more powerful than any spells I can cast!~
END

ADD_TRANS_TRIGGER %er_tutu%emitar 0 ~!IsValidForPartyDialog("J#Indi")~ DO 1

EXTEND_BOTTOM %er_tutu%emitar 0
 + ~IsValidForPartyDialog("J#Indi")~ + ~I'm afraid you've mistaken us for someone else. I'm Dimwit, this is my good friend Boob, and behind me you'll find Brainless and Moron. How do you do?~ EXTERN J#IndiJ J#indiemitar
END

APPEND J#IndiJ
 IF ~~ J#indiemitar
  SAY ~Hey!  I'm not a boob!~
  IF ~~ THEN EXTERN %er_tutu%emitar 5
 END
END

I_C_T2 %er_tutu%farmbr 9 j#indibrun
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~<CHARNAME>, isn't there something we could do?  I don't know much about farming, though.~
END

I_C_T2 %er_tutu%fergus 3 j#indiangelskinring
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~That was awful nice of you, <CHARNAME>.  That ring'll look awfully pretty on her finger, I'm sure.  Yessir, fancy jewellery sure does look nice on a young lady.  Surely they do.  Yup...  *Cough!*~
END

A_T_T %er_tutu%fuller2 0 ~!IsValidForPartyDialog("J#Indi")~ DO 1

EXTEND_BOTTOM %er_tutu%fuller2 0
 + ~IsValidForPartyDialog("J#Indi")~ + ~Killing more kobolds than you could ever imagine. Hey, you wouldn't happen to need a few rusty old short swords, would you, because I've got tons.~ EXTERN J#IndiJ J#Indifuller
END

APPEND J#IndiJ
 IF ~~ J#Indifuller
  SAY ~Oh, sure.  Open old wounds, why don't you.~
  IF ~~ THEN EXTERN %er_tutu%fuller2 2
 END
END

I_C_T2 %er_tutu%galtok 3 j#indigetkobolds
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Get 'em!~
END

A_T_T %er_tutu%games3 0 ~!IsValidForPartyDialog("J#Indi")~

I_C_T %er_tutu%games3 0 j#indigamblor
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Go for it, <CHARNAME>.  I have a feeling about this game!~
END

I_C_T2 %er_tutu%gandol 23 j#indiendmenace
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Done and done.  The satisfaction of knowing we've put an end to that menace means more to me than any amount of gold could.~
END

I_C_T2 %er_tutu%greywo 3 j#indiliesend
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Lies don't pay, in the end...  Yikes!~
END

I_C_T2 %er_tutu%hafiz 4 j#indihafiz1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~How about that?  I've never heard of a dwarven mage.  Maybe dwarves aren't quite so... Um.  Yeah, let's go.~
END

I_C_T2 %er_tutu%hafiz 6 j#indihafiz1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~How about that?  I've never heard of a dwarven mage.  Maybe dwarves aren't quite so... Um.  Yeah, let's go.~
END

A_T_T %er_tutu%halfg4 0 ~!IsValidForPartyDialog("J#Indi")~

INTERJECT %er_tutu%halfg4 j#indihalflingtyke
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~And you had better listen to her!  The Firewine Ruins, or any other dungeon, are no place for a child like you!~
END %er_tutu%halfg4 3

A_T_T %er_tutu%alvahe 0 ~Global("j#indialvanhendar","GLOBAL",1)~

I_C_T2 %er_tutu%alvahe j#indialvanhendar
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Hello again, goodman Alvanhendar.~
  == %er_tutu%alvahe IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Indira!  You look different from last time I saw ye, young one... there's grief in yer eyes.  Yer companions be different as well, and belike ye need say no more, for I know what has transpired.  Dallillia guide the poor souls of your old friends, and may ye preserve their memories.~
=
~Are ye in need of blessings or healing?~
END

I_C_T2 %er_tutu%jamie
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Ack!  Put some clothes on first!~
END

A_T_T %er_tutu%kagain 2 ~!IsValidForPartyDialog("J#Indi")~

I_C_T2 %er_tutu%kagain 2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Psst!  Are you so sure we should trust a dwarf, <CHARNAME>?  This dwarf in particular?~
END

A_T_T %er_tutu%kerrac 2 ~!IsValidForPartyDialog("J#Indi")~

I_C_T2 %er_tutu%kerrac 2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~That's incredible!  I wonder what magic they must use to keep from falling into the sky?  Perhaps they are all powerful sorcerers, like in the time of Old Netheril.~
END

INTERJECT %er_tutu%keshee 1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Were you a sailor?  Do you have any good tales of adventure on the high seas?~
END %er_tutu%keshee 2


I_C_T2 %er_tutu%kevin 1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Hey, wait, what?  Are we going to run?  I say we prepare ourselves and come back and solve this.  We'll be heroes!  Even more than normal!  Let's do it!~
END

A_T_T %er_tutu%kirian 4 ~!IsValidForPartyDialog("J#Indi")~

I_C_T2 %er_tutu%kirian 4
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~What?  How... how rude!  Just because we're new at this.  Hmph!  We're not sad!~
END


I_C_T2 %er_tutu%korax 3
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Er... hmm.  I guess you know what's best, <CHARNAME>.  I hope.  Heh.~
END


I_C_T2 %er_tutu%laerta 1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Oh, I don't know about the others, but I do.  Don't worry, though, we'll keep you safe!  Right, <CHARNAME>?~
END


I_C_T2 %er_tutu%larria 6
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~How very sad.  Why can't people just... I don't know... why can't they respect each other?!~
END


I_C_T2 %er_tutu%laskal 4
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~But wait!  <CHARNAME> just said that so we could trick you into giving us the message!  We're not...~
END


I_C_T2 %er_tutu%maple 1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Huh.  I thought it was a rather nice name.~
END


I_C_T2 %er_tutu%marale 13
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~Heehee!  Gives you a tingly feeling inside, doesn't it, hearing stuff like that?~
END

/* niemai = Dude who hired Indira's group.
I_C_T2 _
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~~
END
*/
