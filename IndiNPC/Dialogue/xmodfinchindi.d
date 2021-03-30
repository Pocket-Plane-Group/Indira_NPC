CHAIN
IF ~CombatCounter(0) 
InParty("J#Indi")
See("J#Indi")
!StateCheck("j#indi",STATE_SLEEPING)
!AreaCheck("%er_FirewineRuins%")
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
!AreaCheck("%er_BladeStarsL1%")
!AreaCheck("%er_BlushingMermaidL1%")
!AreaCheck("%er_BlushingMermaidL2%")
!AreaCheck("%er_HelmCloakL1%")
!AreaCheck("%er_MerchantLeagueL2%")
!AreaCheck("%er_LowLanternL1%")
!AreaCheck("%er_KeexieTavernL1%")
!AreaCheck("%er_NWBG_GenericTavernL1%")
!AreaCheck("%er_KeexieTavernL2%")
!AreaCheck("%er_IronThroneL4%")
!AreaCheck("%er_ElfsongTavernL1%")
!AreaCheck("%er_ElfsongTavernL2%")
!AreaCheck("%er_DrakonTavern%")
!AreaCheck("%er_EBG_GenericInnL1%")
!AreaCheck("%er_EBG_GenericInnL2%")
!AreaCheck("%er_UlgothBeardsInn%")
!AreaCheck("%er_SWBG_GenericTavernL1%")
!AreaCheck("%er_SWBG_GenericTavernL2%")
!AreaCheck("%er_YeOldeInnL1%")
!AreaCheck("%er_JopalinsTavern%")
!AreaCheck("%er_SEBG_GenericInnL1%")
!AreaCheck("%er_FriendlyArmInnL1%")
!AreaCheck("%er_FriendlyArmInnL2%")
!AreaCheck("%er_FriendlyArmInnL3%")
!AreaCheck("%er_CandlekeepCh6InnL1%")
!AreaCheck("%er_CandlekeepCh6InnL2%")
!AreaCheck("%er_CandlekeepCh6Barracks%")
!AreaCheck("%er_JovialJugglerL1%")
!AreaCheck("%er_JovialJugglerL2%")
!AreaCheck("%er_BurningWizardL1%")
!AreaCheck("%er_BurningWizardL2%")
!AreaCheck("%er_FeldepostsInnL1%")
!AreaCheck("%er_FeldepostsInnL2%")
!AreaCheck("%er_RedSheafL1%")
!AreaCheck("%er_NashkelInn%")
!AreaCheck("%er_BelchingDragonTavern%")
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
IF ~InParty("Edwin") !InParty("Dynaheir") !InParty("Skie")~ THEN DO ~SetGlobal("FinchIndiRevengeOfFork", "GLOBAL",2)~ EXTERN %er_tutu%EDWINJ EdwinNoForks
IF ~InParty("Dynaheir") !InParty("Skie")~ THEN DO ~SetGlobal("FinchIndiRevengeOfFork", "GLOBAL",2)~ EXTERN %er_dynahj% DynaNoForks
IF ~InParty("Skie")~ THEN DO ~SetGlobal("FinchIndiRevengeOfFork", "GLOBAL",2)~ EXTERN %er_tutu%SKIEJ SkieNoForks
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

APPEND %er_tutu%SKIEJ

IF ~~ THEN BEGIN SkieNoForks
SAY @1052
IF ~!InParty("Edwin") !InParty("Dynaheir") !InParty("Eldoth")~ THEN EXTERN J#INDIB IndiNoForks
IF ~InParty("Edwin") !InParty("Dynaheir") !InParty("Eldoth")~ THEN EXTERN %er_tutu%EDWINJ EdwinNoForks
IF ~InParty("Dynaheir") !InParty("Eldoth")~ THEN EXTERN %er_dynahj% DynaNoForks
IF ~InParty("Eldoth")~ THEN EXTERN %er_tutu%ELDOTJ EldothNoForks
END

IF ~~ THEN BEGIN SkieForkWhine
SAY @1053
IF ~!InParty("Edwin") !InParty("Dynaheir")~ THEN EXTERN J#INDIB IndiNoForks
IF ~InParty("Edwin") !InParty("Dynaheir")~ THEN EXTERN %er_tutu%EDWINJ EdwinNoForks
IF ~InParty("Dynaheir")~ THEN EXTERN %er_dynahj% DynaNoForks
END
END

APPEND %er_tutu%ELDOTJ

IF ~~ THEN BEGIN EldothNoForks
SAY @1054
=
@1055
IF ~~ THEN EXTERN %er_tutu%SKIEJ SkieForkWhine
END
END

APPEND %er_dynahj%

IF ~~ THEN BEGIN DynaNoForks
SAY @1056
IF ~!InParty("Edwin")~ THEN EXTERN J#INDIB IndiNoForks
IF ~InParty("Edwin")~ THEN EXTERN %er_tutu%EDWINJ EdwinNoForks
END
END

APPEND %er_tutu%EDWINJ

IF ~~ THEN BEGIN EdwinNoForks
SAY @1057
IF ~~ THEN EXTERN J#INDIB IndiNoForks
END
END

APPEND SUFINCHJ

IF ~~ THEN BEGIN FinchForksNoFuss
SAY @1058
IF ~!InParty("%er_imoen%") !InParty("Garrick")~ THEN EXTERN J#INDIB IndiSpiesForks
IF ~!InParty("%er_imoen%") InParty("Garrick")~ THEN EXTERN %er_tutu%GARRIJ GarrickSpiesForks
IF ~InParty("%er_imoen%")~ THEN EXTERN %er_bimoen% ImoenSpiesForks
END

IF ~~ THEN BEGIN FinchShushImoen
SAY @1059
IF ~~ THEN EXTERN J#INDIB GiveUpOnForks
END

IF ~~ THEN BEGIN FinchShushGarrick
SAY @1060
IF ~~ THEN EXTERN %er_tutu%GARRIJ GarrickGiveUpForks
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

APPEND %er_bimoen%

IF ~~ THEN BEGIN ImoenSpiesForks
SAY @1063
IF ~~ THEN EXTERN SUFINCHJ FinchShushImoen
END
END

APPEND %er_tutu%GARRIJ

IF ~~  THEN BEGIN GarrickSpiesForks
SAY @1064
IF ~~ THEN EXTERN SUFINCHJ FinchShushGarrick
END

IF ~~  THEN BEGIN GarrickGiveUpForks
SAY @1065
IF ~~ THEN EXTERN J#INDIB GiveUpOnForks
END
END
