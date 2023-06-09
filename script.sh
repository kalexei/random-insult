#!/bin/bash

# GENERATES A RANDOM NUMBER FROM 0 TO 32767 AND STORES IT, SO IT'S ONLY GENERATED ONCE
MYRANDOM=$RANDOM

# YOU CAN PUT YOUR OWN NAME HERE
MYNAME="Alex"

# THESE ARE OPTIONS THAT REQUIRE A NAME
# MYNAME VARIABLE IS HERE BECAUSE ONE OF THE OPTIONS IS :THING, AND DOES NOT REQUIRE :NAME,
# SO I USE MY NAME AS THE :THING BECAUSE IT FITS
NAMEOPTIONS=($MYNAME off you donut shakespeare linus king chainsaw back
blackadder bm bus cocksplat dalton deraadt equity fewer fts gfy
ing keep legend look madison nugget outside problem rockstar shutup think thinking thumbs
understand waste yoda)

# THESE DO NOT REQUIRE A NAME
NONAMEOPTIONS=(this that everything everyone pink life thanks flying fascinating asshole
awesome bag because bucket bye cool cup dense diabetes dumbledore even family ftfy fyyff give holygrail
horse idea immensity jinglebells logs looking lowpoly maybe me mornin no programmer pulp/English question ratsarse
retard ridiculous rtfm sake shit single thanks too tucker what yeah zayn zero)

# RANDOMLY PICKS ONE OF THE TWO ARRAYS
ARRAY=$(( $MYRANDOM % 2 )) # 0 or 1

if [ $ARRAY -eq 0 ]
then
  NUMBER=$(( $MYRANDOM % ${#NAMEOPTIONS[@]} )) # GETS A RANDOM INDEX
  OPTION=${NAMEOPTIONS[$NUMBER]} # OPTION BASED ON THE INDEX
  OUTPUT=$(curl -sH "Accept: text/plain" "https://foaas.com/$OPTION/$MYNAME/$MYNAME")
  echo ${OUTPUT%" - $MYNAME"} # REMOVES THE :FROM PART AT THE END OF THE STRING, SO IT'S JUST THE QUOTE
else
  NUMBER=$(( $MYRANDOM % ${#NONAMEOPTIONS[@]} ))
  OPTION=${NONAMEOPTIONS[$NUMBER]}
  OUTPUT=$(curl -sH "Accept: text/plain" "https://foaas.com/$OPTION/$MYNAME")
  echo ${OUTPUT%" - $MYNAME"}
fi
