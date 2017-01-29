# @Author: tang_g
# @Date:   2017-01-11T09:08:04+01:00
# @Email:  tang_g@etna-alternance.net
# @Last modified by:   tang_g
# @Last modified time: 2017-01-12T13:11:42+01:00

#!/bin/bash

square ()
{
  echo -e '\0033\0143'
  Onstar $1
  BarreSpace $1
  Onstar $1
  echo ""
}

Onstar ()
{
  star2=$1
  star=7
  cpt=0
  total=$((star+star2+star2))

  while [ $cpt -lt $total ]
    do
      printf "*"
      cpt=$((cpt + 1))
    done

  echo " "
}

BarreSpace ()
{
  star2=$1
  star=7
  total=$((star+star2+star2))
  line=0
  barre=1
  nbr=1

  while [ $line -lt $1 ]
  do
    printf "*"
    Space $total $nbr
    printf "|"
    while [ $barre -ne $nbr ]
      do
        printf "|"
        barre=$((barre + 1))
      done
    Space $total $nbr
    printf "*"
    barre=1
    nbr=$((nbr + 2))
    echo " "
    line=$((line + 1))
  done
}

Space ()
{
  nbrspace=$1
  nbrspace2=$2
  nbrspace=$((nbrspace-1))
  space=$((nbrspace-nbrspace2))
  space2=$((space/2))
  cpt=0

  while [[ $cpt -lt $space2 ]]
    do
      printf " "
      cpt=$((cpt + 1))
    done
}
