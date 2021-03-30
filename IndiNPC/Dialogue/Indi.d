BEGIN J#Indi // Initial .dlg

IF ~NumTimesTalkedTo(0)~ grahdiedie
  SAY @0 
  IF ~CheckStatGT(LastTalkedToBy(Myself),13,DEX)~ THEN REPLY @1 GOTO notkobs
  IF ~CheckStatGT(LastTalkedToBy(Myself),13,DEX)~ THEN REPLY @2 DO ~Enemy()~ EXIT
  IF ~CheckStatLT(LastTalkedToBy(Myself),14,DEX)~ THEN GOTO notkobs
END

IF ~~ notkobs
  SAY @3
=
@4
=
@5
  IF ~Dead("dick")~ THEN REPLY @6 GOTO reallycool
  IF ~~ THEN REPLY @7 GOTO notimeforhealing
  IF ~!Dead("dick")~ THEN REPLY @8 GOTO illcomewith
  IF ~~ THEN REPLY @9 GOTO youreheartless
  IF ~~ THEN REPLY @10 GOTO youreheartless
END

IF ~~ notimeforhealing
  SAY @11
  IF ~Dead("dick")~ THEN REPLY @12 GOTO reallycool
  IF ~!Dead("dick")~ THEN REPLY @13 GOTO illcomewith
  IF ~~ THEN REPLY @9 GOTO youreheartless
  IF ~~ THEN REPLY @10 GOTO youreheartless
END

IF ~~ reallycool
  SAY @14
  IF ~~ THEN REPLY @15 GOTO joinprove
  IF ~~ THEN REPLY @16 GOTO joinprove
  IF ~~ THEN REPLY @17 GOTO joinprove
  IF ~~ THEN REPLY @18 GOTO provemyself
  IF ~~ THEN REPLY @19 GOTO provemyself
END

IF ~~ youreheartless
  SAY @20
=
@21
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ illcomewith
  SAY @22
  IF ~~ THEN REPLY @15 GOTO joinprove
  IF ~~ THEN REPLY @16 GOTO joinprove
  IF ~~ THEN REPLY @17 GOTO joinprove
  IF ~~ THEN REPLY @18 GOTO provemyself
  IF ~~ THEN REPLY @19 GOTO provemyself
END

IF ~~ provemyself
  SAY @23
=
@24
  IF ~~ THEN REPLY @15 GOTO joinprove
  IF ~~ THEN REPLY @16 GOTO joinprove
  IF ~~ THEN REPLY @25 GOTO joinprove
  IF ~~ THEN REPLY @26 GOTO youreheartless
END

IF ~~ joinprove
  SAY @27
  IF ~~ THEN DO ~SetGlobal("J#IndiInParty","GLOBAL",1)
JoinParty()~ EXIT
END

BEGIN J#IndiP // Indi kicked out

IF ~Global("J#KickedIndi","GLOBAL",0)~ kickout
  SAY @28 
  IF ~~ THEN REPLY @29 DO ~SetGlobal("J#kickedindi","GLOBAL",1)~ GOTO alright
  IF ~~ THEN REPLY @30 GOTO hooray
  IF ~~ THEN REPLY @31 GOTO hooray
  ++ @32 DO ~SetGlobal("J#kickedindi","GLOBAL",1)~ GOTO alright
  ++ @33 DO ~SetGlobal("J#kickedindi","GLOBAL",1)~ GOTO alright
END

IF ~~ hooray
  SAY @34
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ alright
  SAY @35
  IF ~~ THEN DO ~LeaveParty()~ EXIT
END

IF ~Global("J#KickedIndi","GLOBAL",1)~ youreback
  SAY @36 
  IF ~~ THEN REPLY @37 DO ~SetGlobal("J#KickedIndi","GLOBAL",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @38 DO ~SetGlobal("J#KickedIndi","GLOBAL",0)
JoinParty()~ GOTO kbatn
  ++ @39 EXIT
  ++ @40 GOTO finebye
END

IF ~~ kbatn
  SAY @41
  IF ~~ THEN EXIT
END

IF ~~ finebye
  SAY @42
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END


BEGIN J#IndiB

CHAIN
  IF ~Global("J#indixzar","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bxzar indixzar
  @43
DO ~SetGlobal("J#indixzar","GLOBAL",1)~
  == J#indib
  @44 
  == _bxzar
  @45
  == J#indib
  @46 DO ~RunAwayFrom("Xzar",30)~
EXIT

CHAIN
  IF ~Global("J#indimonty","GLOBAL",0)
      InParty("Montaron")
      See("Montaron")
      !StateCheck("Montaron",STATE_SLEEPING)~ THEN J#IndiB indimonty
  @47 
DO ~SetGlobal("J#indimonty","GLOBAL",1)~
  == _bmonta
  @48
EXIT

CHAIN
  IF ~Global("J#indigarrick","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bgarri indigarrick
  @49
DO ~SetGlobal("J#indigarrick","GLOBAL",1)~
  == J#indib
  @50 
  == _bgarri
  @51
  == J#indib
  @52
  == _bgarri
  @53
EXIT

CHAIN
  IF ~Global("J#indikagain","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bkagai indikagain
  @54
DO ~SetGlobal("J#indikagain","GLOBAL",1)~
  == J#indib
  @55 
  == _bkagai
  @56
EXIT

CHAIN
  IF ~Global("J#indijaheira","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bjahei indijaheira
  @57
DO ~SetGlobal("J#indijaheira","GLOBAL",1)~
  == J#indib
  @58 
  == _bjahei
  @59
  == J#indib
  @60
  == _bjahei
  @61
EXIT

CHAIN
  IF ~Global("J#indikhali","GLOBAL",0)
      InParty("khalid")
      See("khalid")
      !StateCheck("khalid",STATE_SLEEPING)~ THEN J#IndiB indikhali
  @62 
DO ~SetGlobal("J#indikhali","GLOBAL",1)~
  == _bkhali
  @63
  == J#IndiB
  @64
  == _bkhali
  @65
EXIT

CHAIN
  IF ~Global("J#indiKivan","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bKivan indiKivan
  @66
DO ~SetGlobal("J#indiKivan","GLOBAL",1)~
  == J#indib
  @67 
  == _bKivan
  @68
  == J#indib
  @69
  == _bKivan
  @70
  =
  @71
EXIT

CHAIN
  IF ~Global("J#indiEdwin","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bedwin indiEdwin
  @72
DO ~SetGlobal("J#indiEdwin","GLOBAL",1)~
  == J#indib
  @73 
  == _bedwin
  @74
  =
  @75
  == J#indib
  @76
EXIT

CHAIN
  IF ~Global("J#indidynah","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bdynah indidynah
  @77
  =
  @78
DO ~SetGlobal("J#indidynah","GLOBAL",1)~
  == J#indib
  @79 
  == _bdynah
  @80
  == J#indib
  @81
  == _bdynah
  @82
EXIT

CHAIN
  IF ~Global("J#indiXan","GLOBAL",0)
      InParty("Xan")
      See("Xan")
      !StateCheck("Xan",STATE_SLEEPING)~ THEN J#IndiB indiXan
  @83 
DO ~SetGlobal("J#indiXan","GLOBAL",1)~
  == _bxannn
  @84
  =
  @85
  == J#IndiB
  @86
  =
  @87
  == _bxannn
  @88
  == J#IndiB
  @89
  == _bxannn
  @90
  == J#IndiB
  @91
EXIT

CHAIN
  IF ~Global("J#indiSharTe","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bshart indiSharTe
  @92
DO ~SetGlobal("J#indiSharTe","GLOBAL",1)~
  == J#indib
  @93 
  == _bshart
  @94
  == J#indib
  @95
  == _bshart
  @96
EXIT

CHAIN
  IF ~Global("J#indiVicon","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bVicon indiVicon
  @97
DO ~SetGlobal("J#indiVicon","GLOBAL",1)~
  == J#indib
  @98 
  == _bVicon
  @99
  == J#indib
  @100
  == _bVicon
  @101
EXIT

CHAIN
  IF ~Global("J#indiEldot","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bEldot indiEldot
  @102
DO ~SetGlobal("J#indiEldot","GLOBAL",1)~
  == J#indib
  @103 
  =
  @104
  == _bEldot
  @105
  == J#indib
  @106
EXIT

CHAIN
  IF ~Global("J#indiQuayl","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bQuayl indiQuayl
  @107
DO ~SetGlobal("J#indiQuayl","GLOBAL",1)~
  == J#indib
  @108 
  == _bQuayl
  @109
  == J#indib
  @110
  == _bQuayl
  @111
  =
  @112
  == J#indib
  @113
  =
  @114
  == _bQuayl
  @115
EXIT

CHAIN
  IF ~Global("J#indiTiax","GLOBAL",0)
      InParty("Tiax")
      See("Tiax")
      !StateCheck("Tiax",STATE_SLEEPING)~ THEN J#IndiB indiTiax
  @116 
DO ~SetGlobal("J#indiTiax","GLOBAL",1)~
  == _bTiax
  @117
  == J#IndiB
  @118
  == _bTiax
  @119
EXIT

CHAIN
  IF ~Global("J#indiSafan","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)
      Exists(StrongestOfMale)~ THEN _bSafan indiSafan
  @120
DO ~SetGlobal("J#indiSafan","GLOBAL",1)~
  == J#indib
  @121 
  == _bSafan
  @122
  =
  @123
  == J#indib
  @124
  == _bSafan
  @125
EXIT

CHAIN
  IF WEIGHT #-1 ~Global("J#indiminsc","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bminsc indiminsc
  @126
DO ~SetGlobal("J#indiminsc","GLOBAL",1)~
  =
  @127
  == J#indib
  @128 
  == _bminsc
  @129
  == J#indib
  @130
  == _bminsc
  @131
EXIT

CHAIN
  IF ~Global("J#indialora","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _balora indialora
  @132
DO ~SetGlobal("J#indialora","GLOBAL",1)~
  == J#indib
  @133 
  == _balora
  @134
  =
  @135
  == J#indib
  @136
  == _balora
  @137
EXIT

CHAIN
  IF ~Global("J#indiyeslick","GLOBAL",0)
      InParty("yeslick")
      See("yeslick")
      !StateCheck("yeslick",STATE_SLEEPING)~ THEN J#IndiB indiyeslick
  @138 
DO ~SetGlobal("J#indiyeslick","GLOBAL",1)~
  == _byesli
  @139
  == J#IndiB
  @140
  == _byesli
  @141
  == J#IndiB
  @142
  == _byesli
  @143
  == J#IndiB
  @144
  == _byesli
  @145
  == J#IndiB
  @146
  =
  @147
  == _byesli
  @148
  == J#IndiB
  @149
  == _byesli
  @150
EXIT

CHAIN
  IF ~Global("J#indiimoen","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _bimoen indiimoen
  @151
DO ~SetGlobal("J#indiimoen","GLOBAL",1)~
  == J#indib
  @152 
  == _bimoen
  @153
  == J#indib
  @154
  == _bimoen
  @155
  == J#indib
  @156
EXIT


/*
CHAIN
  IF ~Global("J#indi___","GLOBAL",0)
      InParty("J#Indi")
      See("J#Indi")
      !StateCheck("j#indi",STATE_SLEEPING)~ THEN _b___ indi___
  ~~
DO ~SetGlobal("J#indi___","GLOBAL",1)~
  == J#indib
  ~~
  == _b
  ~~
  == J#indib
  ~~
  == _b
  ~~
EXIT

CHAIN
  IF ~Global("J#indi___","GLOBAL",0)
      InParty("___")
      See("___")
      !StateCheck("___",STATE_SLEEPING)~ THEN J#IndiB indi___
  ~~
DO ~SetGlobal("J#indi___","GLOBAL",1)~
  == _b___
  ~~
  == J#IndiB
  ~~
EXIT
*/
