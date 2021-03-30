APPEND BA#MURN

IF ~~ THEN BEGIN IndiBanterFlee
SAY @0 
IF ~~ THEN DO ~ActionOverride("A#MURN",LeaveParty())
ReallyForceSpellRES("A#GHAUN1","A#MURN")
ActionOverride("A#MURN",EscapeArea())
SetGlobal("A#MURNRETURN","GLOBAL",1)~ EXIT
END

END

APPEND J#INDIB

IF ~CombatCounter(0)
!See([ENEMY])
InParty("J#INDI")
See("J#INDI")
!StateCheck("J#INDI",STATE_SLEEPING)
Global("A#MURN_INDI","GLOBAL",1)
InParty("A#MURN")
!StateCheck("A#MURN",STATE_SLEEPING)
!Dead("A#MURN")
!Dead("J#INDI")~ THEN BEGIN Murn_Indi_2
SAY @1 
IF ~~ THEN REPLY @2 DO ~SetGlobal("A#MURN_INDI","GLOBAL",2)~ GOTO indi_continue
IF ~~ THEN REPLY @3 GOTO indi_later
IF ~~ THEN REPLY @4 GOTO indi_never
END

IF ~~ THEN BEGIN indi_later
SAY @5 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN indi_never
SAY @6 
IF ~~ THEN DO ~SetGlobal("A#MURN_INDI","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN indi_continue
SAY @7 
= @8
= @9
IF ~~ THEN REPLY @10 GOTO hes_evil
IF ~~ THEN REPLY @11 GOTO well_fine
IF ~~ THEN REPLY @12 GOTO well_fine
IF ~~ THEN REPLY @13 GOTO whimper
IF ~~ THEN REPLY @14 EXTERN BA#MURN IndiBanterFlee
END

IF ~~ THEN BEGIN hes_evil
SAY @15
=
@16
IF ~~ THEN REPLY @17 EXTERN BA#MURN IndiBanterFlee
IF ~~ THEN REPLY @18 EXTERN BA#MURN IndiBanterFlee
IF ~~ THEN REPLY @19 GOTO well_fine
IF ~~ THEN REPLY @20 GOTO whimper
END

IF ~~ THEN BEGIN well_fine
SAY @21
IF ~~ THEN EXTERN BA#MURN Murn_Indi_2
END

IF ~~ THEN BEGIN whimper
SAY @22
IF ~~ THEN EXTERN BA#MURN Murn_Indi_2
END

END

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("J#INDI")
See("J#INDI")
!StateCheck("J#INDI",STATE_SLEEPING)
Global("A#MURN_INDI","GLOBAL",0)
InParty("A#MURN")
!StateCheck("A#MURN",STATE_SLEEPING)
!Dead("A#MURN")
!Dead("J#INDI")~ THEN ~BA#MURN~ Murn_Indi_1
@23 
DO ~SetGlobal("A#MURN_INDI","GLOBAL",1)~
== J#INDIB @24 
== BA#MURN @25
== J#INDIB @26
== ~%er_tutu%BFALDO~ IF ~InParty("FALDORN")
See("FALDORN")
!StateCheck("FALDORN",STATE_SLEEPING)
!Dead("FALDORN")~ THEN @27
== BA#MURN @28
== J#INDIB @29
== BA#MURN @30
== J#INDIB @31
== ~%er_tutu%BALORA~ IF ~InParty("ALORA")
See("ALORA")
!StateCheck("ALORA",STATE_SLEEPING)
!Dead("ALORA")~ THEN @32
== BA#MURN @33
== ~%er_tutu%BMONTA~ IF ~InParty("MONTARON")
See("MONTARON")
!StateCheck("MONTARON",STATE_SLEEPING)
!Dead("MONTARON")~ THEN @34
== J#INDIB @35
== BA#MURN @36
== ~%er_tutu%BXZAR~ IF ~InParty("XZAR")
See("XZAR")
!StateCheck("XZAR",STATE_SLEEPING)
!Dead("XZAR")~ THEN @37
== J#INDIB @38
== ~%er_tutu%BAJANT~ IF ~InParty("AJANTIS")
See("AJANTIS")
!StateCheck("AJANTIS",STATE_SLEEPING)
!Dead("AJANTIS")~ THEN @39
== BA#MURN @40
END
IF ~~ THEN REPLY @41 EXIT
IF ~~ THEN REPLY @42 EXIT
IF ~~ THEN REPLY @43 EXIT
IF ~~ THEN REPLY @44 EXTERN BA#Murn IndiBanterFlee

CHAIN ~BA#MURN~ Murn_Indi_2
@45 
== J#INDIB @46 
== BA#MURN @47
== ~%er_tutu%BXZAR~ IF ~InParty("XZAR")
See("XZAR")
!StateCheck("XZAR",STATE_SLEEPING)
!Dead("XZAR")~ THEN @48
== BA#MURN @49
== J#INDIB @50
== BA#MURN @51
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("J#INDI")
See("J#INDI")
!StateCheck("J#INDI",STATE_SLEEPING)
Global("A#MURN_INDI","GLOBAL",2)
InParty("A#MURN")
!StateCheck("A#MURN",STATE_SLEEPING)
!Dead("A#MURN")
!Dead("J#INDI")~ THEN ~BA#MURN~ Murn_Indi_3
@52 
DO ~SetGlobal("A#MURN_INDI","GLOBAL",3)~
== ~%er_tutu%BELDOT~ IF ~InParty("ELDOTH")
See("ELDOTH")
!StateCheck("ELDOTH",STATE_SLEEPING)
!Dead("ELDOTH")~ THEN @53
== BA#MURN @54
== J#INDIB @55 
== BA#MURN @56
== J#INDIB @57 
== BA#MURN @58
== J#INDIB @59
== BA#MURN @60
== J#INDIB @61
== BA#MURN @62
== J#INDIB @63
EXIT
