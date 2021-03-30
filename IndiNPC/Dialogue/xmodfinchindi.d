CHAIN
IF ~CombatCounter(0) 
InParty("J#Indi")
See("J#Indi")
!StateCheck("j#indi",STATE_SLEEPING)
!AreaCheck("FW5201")
Global("FinchIndi1","LOCALS",0)~ THEN BSUFINCH FirewineBanter
@1009  DO ~SetGlobal("FinchIndi1","LOCALS",1)~ 
== J#INDIB @1010 
== BSUFINCH @1011
== J#INDIB @1012
== BSUFINCH @1013
EXIT

//Must add AreaChecks. Don't want this to happen in an inn area.
CHAIN
IF ~CombatCounter(0)
!AreaCheck("FW0105")
!AreaCheck("FW0114")
!AreaCheck("FW0115")
!AreaCheck("FW0116")
!AreaCheck("FW0128")
!AreaCheck("FW0133")
!AreaCheck("FW0154")
!AreaCheck("FW0165")
!AreaCheck("FW0171")
!AreaCheck("FW0614")
!AreaCheck("FW0705")
!AreaCheck("FW0706")
!AreaCheck("FW0720")
!AreaCheck("FW0807")
!AreaCheck("FW0808")
!AreaCheck("FW1001")
!AreaCheck("FW1109")
!AreaCheck("FW1110")
!AreaCheck("FW1113")
!AreaCheck("FW1215")
!AreaCheck("FW1306")
!AreaCheck("FW2301")
!AreaCheck("FW2302")
!AreaCheck("FW2303")
!AreaCheck("FW2629")
!AreaCheck("FW2630")
!AreaCheck("FW2631")
!AreaCheck("FW3304")
!AreaCheck("FW3305")
!AreaCheck("FW3307")
!AreaCheck("FW3308")
!AreaCheck("FW3351")
!AreaCheck("FW3352")
!AreaCheck("FW3357")
!AreaCheck("FW4801")
!AreaCheck("FW4809")
InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
Global("FinchIndi2","GLOBAL",0)~ THEN J#INDIB ForkFightPt1
@1014  DO ~SetGlobal("FinchIndi2","GLOBAL",1)~
== BSUFINCH @1015 
== J#INDIB @1016
== BSUFINCH @1017
== J#INDIB @1018
=
@1019
== BSUFINCH @1020
== J#INDIB @1021
== BSUFINCH @1022
== J#INDIB @1023
== BSUFINCH @1024
== J#INDIB @1025
== BSUFINCH @1026
== J#INDIB @1027
== BSUFINCH @1028
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("SUFINCH")
See("SUFINCH")
!StateCheck("SUFINCH",STATE_SLEEPING)
Global("FinchIndi3","LOCALS",0)~ THEN J#INDIB IndiraIsALegendaryTart
@1029  DO ~SetGlobal("FinchIndi3","LOCALS",1)~
= @1030 
== BSUFINCH @1031 
== J#INDIB @1032
== BSUFINCH @1033
== J#INDIB @1034
== BSUFINCH @1035
== BSUFINCH @1036
== J#INDIB @1037
== BSUFINCH @1038
== J#INDIB @1039
=
@1040
== BSUFINCH @1041
== J#INDIB @1042
EXIT

CHAIN
IF ~CombatCounter(0) 
InParty("J#Indi")
See("J#Indi")
!StateCheck("j#indi",STATE_SLEEPING)
Global("FinchIndi4","LOCALS",0)~ THEN BSUFINCH KickAssBanter
@1043  DO ~SetGlobal("FinchIndi4","LOCALS",1)~
== J#INDIB @1044 
== BSUFINCH @1045
== J#INDIB @1046
== BSUFINCH @1047
EXIT

// Fork battle - the revenge!

APPEND J#INDIB
IF ~Global("FinchIndiRevengeOfFork", "GLOBAL",1)~ THEN BEGIN ForkFightPt2
SAY @1048 
IF ~!InParty("Edwin") !InParty("Dynaheir") !InParty("Skie")~ THEN DO ~SetGlobal("FinchIndiRevengeOfFork", "GLOBAL",2)~ GOTO IndiNoForks
IF ~InParty("Edwin") !InParty("Dynaheir") !InParty("Skie")~ THEN DO ~SetGlobal("FinchIndiRevengeOfFork", "GLOBAL",2)~ EXTERN _EDWINJ EdwinNoForks
IF ~InParty("Dynaheir") !InParty("Skie")~ THEN DO ~SetGlobal("FinchIndiRevengeOfFork", "GLOBAL",2)~ EXTERN _DYNAHJ DynaNoForks
IF ~InParty("Skie")~ THEN DO ~SetGlobal("FinchIndiRevengeOfFork", "GLOBAL",2)~ EXTERN _SKIEJ SkieNoForks
END

IF ~~ THEN BEGIN IndiNoForks
SAY @1049 
IF ~~ THEN EXTERN SUFINCHJ FinchForksNoFuss
END

IF ~~ THEN BEGIN IndiSpiesForks
SAY @1050
IF ~~ THEN EXTERN SUFINCHJ FinchShushIndi
END

IF ~~ THEN BEGIN GiveUpOnForks
SAY @1051
IF ~~ THEN EXTERN SUFINCHJ ForkFini
END
END

APPEND _SKIEJ

IF ~~ THEN BEGIN SkieNoForks
SAY @1052
IF ~!InParty("Edwin") !InParty("Dynaheir") !InParty("Eldoth")~ THEN EXTERN J#INDIB IndiNoForks
IF ~InParty("Edwin") !InParty("Dynaheir") !InParty("Eldoth")~ THEN EXTERN _EDWINJ EdwinNoForks
IF ~InParty("Dynaheir") !InParty("Eldoth")~ THEN EXTERN _DYNAHJ DynaNoForks
IF ~InParty("Eldoth")~ THEN EXTERN _ELDOTJ EldothNoForks
END

IF ~~ THEN BEGIN SkieForkWhine
SAY @1053
IF ~!InParty("Edwin") !InParty("Dynaheir")~ THEN EXTERN J#INDIB IndiNoForks
IF ~InParty("Edwin") !InParty("Dynaheir")~ THEN EXTERN _EDWINJ EdwinNoForks
IF ~InParty("Dynaheir")~ THEN EXTERN _DYNAHJ DynaNoForks
END
END

APPEND _ELDOTJ

IF ~~ THEN BEGIN EldothNoForks
SAY @1054
=
@1055
IF ~~ THEN EXTERN _SKIEJ SkieForkWhine
END
END

APPEND _DYNAHJ

IF ~~ THEN BEGIN DynaNoForks
SAY @1056
IF ~!InParty("Edwin")~ THEN EXTERN J#INDIB IndiNoForks
IF ~InParty("Edwin")~ THEN EXTERN _EDWINJ EdwinNoForks
END
END

APPEND _EDWINJ

IF ~~ THEN BEGIN EdwinNoForks
SAY @1057
IF ~~ THEN EXTERN J#INDIB IndiNoForks
END
END

APPEND SUFINCHJ

IF ~~ THEN BEGIN FinchForksNoFuss
SAY @1058
IF ~!InParty("Imoen") !InParty("Garrick")~ THEN EXTERN J#INDIB IndiSpiesForks
IF ~!InParty("Imoen") InParty("Garrick")~ THEN EXTERN _GARRIJ GarrickSpiesForks
IF ~InParty("Imoen")~ THEN EXTERN _BIMOEN ImoenSpiesForks
END

IF ~~ THEN BEGIN FinchShushImoen
SAY @1059
IF ~~ THEN EXTERN J#INDIB GiveUpOnForks
END

IF ~~ THEN BEGIN FinchShushGarrick
SAY @1060
IF ~~ THEN EXTERN _GARRIJ GarrickGiveUpForks
END

IF ~~ THEN BEGIN FinchShushIndi
SAY @1061
IF ~~ THEN EXTERN J#INDIB GiveUpOnForks
END

IF ~~ THEN BEGIN ForkFini
SAY @1062
IF ~~ THEN EXIT
END

END

APPEND _BIMOEN

IF ~~ THEN BEGIN ImoenSpiesForks
SAY @1063
IF ~~ THEN EXTERN SUFINCHJ FinchShushImoen
END
END

APPEND _GARRIJ

IF ~~  THEN BEGIN GarrickSpiesForks
SAY @1064
IF ~~ THEN EXTERN SUFINCHJ FinchShushGarrick
END

IF ~~  THEN BEGIN GarrickGiveUpForks
SAY @1065
IF ~~ THEN EXTERN J#INDIB GiveUpOnForks
END
END
