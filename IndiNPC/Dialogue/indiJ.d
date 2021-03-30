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
     @0
END %er_tutu%abela 6

INTERJECT_COPY_TRANS %er_tutu%alatos 20 j#indiindignant
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @1
=
@2
END

INTERJECT_COPY_TRANS %er_tutu%albert 4 j#indirufierefuse
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @3
END

INTERJECT_COPY_TRANS %er_tutu%aldeth 4 j#indidruidwoods
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @4
END

INTERJECT_COPY_TRANS %er_tutu%alyth 1 j#indiexciting
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @5
END

INTERJECT_COPY_TRANS %er_tutu%amnis4 8 j#indighoul
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @6
END

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%andars 1 j#indifreethem
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @7
END
*/

INTERJECT_COPY_TRANS %er_tutu%arcand 2 j#indicrazy
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @8
END

INTERJECT_COPY_TRANS %er_tutu%ardrou 0 j#indiworgs
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @9
END

INTERJECT_COPY_TRANS %er_tutu%arkion 1 j#indistinky
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @10
END

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%arkush 5 j#indifuture
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @11
END
*/

/*
INTERJECT_COPY_TRANS %er_tutu%bandic 9 j#indicharm
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @12 // Bonus points if you ever find this in-game without having read this code first.  TEN MILLION BONUS POINTS.
END
//Sorry tospil the million bonus point easter egg but this would make Indira go forever.
*/

INTERJECT %er_tutu%bentan 5 j#indisorcery
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @13
END %er_tutu%bentan 7

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%berrun 15 j#indireward
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @14
END
*/

INTERJECT_COPY_TRANS %er_tutu%bheren 1 j#indisavethecat
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @15
END

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%binky 4 j#indifunny1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @16
END
*/

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%binky 6 j#indifunny2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @17
END
*/

INTERJECT_COPY_TRANS %er_tutu%bjorni 4 j#indihealbjornin
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @18
END

/* this would eat the GiveShield reward action
INTERJECT_COPY_TRANS %er_tutu%bjorni 3 j#indiaskjoinbjorni
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @19
END
*/

I_C_T %er_tutu%borda 0 j#indiborda2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @20
  == %er_tutu%borda IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @21
END

INTERJECT_COPY_TRANS %er_tutu%boyba1 4 j#indimeanboy
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @22
END

INTERJECT_COPY_TRANS %er_tutu%boybe2 2 j#indisadboy
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @23
END

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%brathl 2 j#indisteamdagron
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @24
END
*/

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%brathl 3 j#indipump
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @25
END
*/

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%brathl 4 j#indieverlight
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @26
END
*/

INTERJECT_COPY_TRANS %er_tutu%brathl 5 j#indifarseer
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @27
END

INTERJECT_COPY_TRANS %er_tutu%brevli 17 j#indistealfarseer
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @28
END

/* action follows - needs passback line
INTERJECT_COPY_TRANS %er_tutu%brielb 14 j#indibastardcoran
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @29
=
@30
END
*/

I_C_T %er_tutu%caldo 0 j#caldo2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @31
  == %er_tutu%caldo IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @32
END

I_C_T %er_tutu%caldo 1 j#caldo2
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @31
  == %er_tutu%caldo IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @32
END

I_C_T %er_tutu%casson 2 J#indicassonres
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @33
END

/* action follows - needs passback line
I_C_T %er_tutu%cauter 1 J#indihobgob
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @34
  == %er_tutu%bkagai IF ~IsValidForPartyDialog("kagain")~ THEN
     @35
  == %er_bvicon% IF ~IsValidForPartyDialog("viconia")~ THEN
     @36
  == %er_tutu%bmonta IF ~IsValidForPartyDialog("montaron")~ THEN
     @37
  == %er_bjahei% IF ~IsValidForPartyDialog("jaheira")~ THEN
     @38
  == %er_tutu%beldot IF ~IsValidForPartyDialog("eldoth")~ THEN
     @39
=
@40
  == %er_tutu%bshart IF ~IsValidForPartyDialog("sharteel")~ THEN
     @41
END
*/

I_C_T %er_tutu%charle 14 j#indicharleston
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @42
END

I_C_T %er_tutc%hildulg 1 j#indidogkicking
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @43
END

I_C_T %er_tutu%chilna 0 j#indikidfairspeak
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @44
END

/* action follows - needs passback line
I_C_T %er_tutu%chloe 4 j#indichloeinfo
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @45
END
*/

I_C_T %er_tutu%claird 9 j#indiclairdemon
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @46
=
@47
END

/* action follows - needs passback line
I_C_T %er_tutu%desret 3 j#indicausefight
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @48
END
*/

/* action follows - needs passback line
I_C_T %er_tutu%dratan 3 j#indiwaryofwhatcomes
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @49
END
*/

I_C_T %er_tutu%dreppi2 2 j#indibadvsgood
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @50
END

INTERJECT %er_tutu%drienn 2 j#indidontbelieve
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @51
END %er_tutu%drienn 4

/* action follows - needs passback line
I_C_T %er_tutu%drunk 4 j#indidrunklich
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @52
END
*/

ADD_TRANS_TRIGGER %er_tutu%emitar 0 ~!IsValidForPartyDialog("J#Indi")~ DO 1

EXTEND_BOTTOM %er_tutu%emitar 0
 + ~IsValidForPartyDialog("J#Indi")~ + @53 EXTERN J#IndiJ J#indiemitar
END

APPEND J#IndiJ
 IF ~~ J#indiemitar
  SAY @54
  IF ~~ THEN EXTERN %er_tutu%emitar 5
 END
END

/* action follows - needs passback line
I_C_T %er_tutu%farmbr 9 j#indibrun
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @55
END
*/

/* action follows - needs passback line
I_C_T %er_tutu%fergus 3 j#indiangelskinring
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @56
END
*/

A_T_T %er_tutu%fuller2 0 ~!IsValidForPartyDialog("J#Indi")~ DO 1

EXTEND_BOTTOM %er_tutu%fuller2 0
 + ~IsValidForPartyDialog("J#Indi")~ + @57 EXTERN J#IndiJ J#Indifuller
END

APPEND J#IndiJ
 IF ~~ J#Indifuller
  SAY @58
  IF ~~ THEN EXTERN %er_tutu%fuller2 2
 END
END

/* action follows - needs passback line
I_C_T %er_tutu%galtok 3 j#indigetkobolds
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @59
END
*/

/* action follows - needs passback line
I_C_T %er_tutu%games3 0 j#indigamblor
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @60
END
*/

/* action follows - needs passback line
I_C_T %er_tutu%gandol 23 j#indiendmenace
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @61
END
*/

/* action follows - needs passback line
I_C_T %er_tutu%greywo 3 j#indiliesend
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @62
END
*/

/* action follows - needs passback line
I_C_T %er_tutu%hafiz 4 j#indihafiz1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @63
END
*/

/* action follows - needs passback line
I_C_T %er_tutu%hafiz 6 j#indihafiz1
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @63
END
*/

INTERJECT %er_tutu%halfg4 0 j#indihalflingtyke
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @64
END %er_tutu%halfg4 3

I_C_T %er_tutu%alvahe 0 j#indialvanhendar
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @65
  == %er_tutu%alvahe IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @66
=
@67
END

/* action follows - needs passback line
I_C_T %er_tutu%jamie 0 j#SamanthaJamie
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @68
END
*/

I_C_T %er_tutu%kagain 2 j#kagain_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @69
END

I_C_T %er_tutu%kerrac 2 j#kerrac_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @70
END

INTERJECT %er_tutu%keshee 1 j#keshee_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @71
END %er_tutu%keshee 2


/* action follows - needs passback line
I_C_T %er_tutu%kevin 1 j#kevin_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @72
END
*/

I_C_T %er_tutu%kirian 4 j#kirian_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @73
END

/* action follows - needs passback line
I_C_T %er_tutu%korax 3 j#korax_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @74
END
*/

I_C_T %er_tutu%laerta 1 j#laerta_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @75
END

I_C_T %er_tutu%larria 6 j#larria_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @76
END

/* action follows - needs passback line
I_C_T %er_tutu%laskal 4 j#laskal_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @77
END
*/

/* action follows - needs passback line
I_C_T %er_tutu%maple 1 j#maple_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @78
END
*/

I_C_T %er_tutu%marale 13 j#marale_indi
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     @79
END

/* niemai = Dude who hired Indira's group.
I_C_T2 _
  == J#IndiJ IF ~IsValidForPartyDialog("J#Indi")~ THEN
     ~~
END
*/
