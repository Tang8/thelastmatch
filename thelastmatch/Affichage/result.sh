# @Author: tang_g
# @Date:   2017-01-11T15:07:06+01:00
# @Email:  tang_g@etna-alternance.net
# @Last modified by:   tang_g
# @Last modified time: 2017-01-13T16:28:33+01:00

result ()
{
  echo -e '\0033\0143'
  tab=$1
  Onstar $2
  BarreSpace2 $tab $2
  Onstar $2
  echo ""
}

BarreSpace2 ()
{
  tab=$1
  star2=$2
  star=7
  total=$((star+star2+star2))
  line=0
  bar=1

  while [ $line -lt $2 ]
    do
      match=${tab[$line]}
      printf "*"
      Space2 $total $match
      if [[ $match -eq 1 ]]
        then
        printf "|"
      elif [[ $match -eq 0 ]]
        then
         printf " "
      else
        while [[ $bar -lt $match ]]
          do
            printf "|"
            bar=$((bar+1))
          done
      fi
      Space2 $total $match
      if [[ $((match % 2)) == 0 ]]
      then
        printf " "
      fi
      if [[ $match -eq 0 ]]
      then
        printf " "
      fi
      printf "*"
      bar=0
      echo " "
      line=$((line+1))
    done
}

Space2 ()
{
  nbrspace=$1
  nbrspace2=$2
  if [[ $((nbrspace2 % 2)) == 0 ]]
  then
    nbrspace=$((nbrspace-1))
  fi
  nbrspace=$((nbrspace-1))
  space=$((nbrspace-nbrspace2))
  space2=$((space/2))
  cpt=0

  if [[ nbrspace2 -eq 0 ]]
  then
    space2=$((space2-1))
  fi
  while [[ $cpt -lt $space2 ]]
    do
      printf " "
      cpt=$((cpt + 1))
    done
}
