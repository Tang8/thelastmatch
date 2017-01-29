# @Author: tang_g
# @Date:   2017-01-11T09:08:04+01:00
# @Email:  tang_g@etna-alternance.net
# @Last modified by:   tang_g
# @Last modified time: 2017-01-12T13:18:09+01:00

#!/bin/bash

# @Author: tang_g
# @Date:   2017-01-11T09:08:04+01:00
# @Email:  tang_g@etna-alternance.net
# @Last modified by:   tang_g
# @Last modified time: 2017-01-12T14:31:57+01:00

tableau_humain ()
{
  cpt=0
  nbr=1

  while [ $cpt -lt $1 ]
  do
    tab[$cpt]=$nbr
    nbr=$((nbr+2))
    cpt=$((cpt+1))
  done
}

player="J1"

Jeu_humain ()
{
  ligne="pokemon"

  while [ $ligne != "exit" ]
  do
    echo "Tour du " $player ": "
    printf "  Ligne : "
    read ligne
    if [ "$(echo "$ligne" | egrep '[0-9]+')" ]
        then
          if [ $ligne -lt 0 ]
            then
              echo "  ${yel}Vous devez choisir un nombre supérieur à 0${end}"
              Jeu_humain $1
          elif [ $ligne -le $1 ]
            then
              ligne2=$ligne
              ligne=$((ligne-1))
              Nbr_humain ${tab[$ligne]} $1 $ligne2 $tab
              if [ $player == "J1" ]
                then
                  player="J2"
                  Jeu_humain $1
                else
                Jeu_humain $1
              fi
          else
              echo "  ${yel}Ce nombre est trop grand${end}"
              Jeu_humain $1
          fi
    elif [ $ligne != "exit" ]
        then
          echo "  ${yel}Veuillez entrer un nombre${end}"
          Jeu_humain $1
    fi
  done
  echo -e '\0033\0143'
  echo "--- À bientôt ---"
  exit
}

Nbr_humain ()
{
  match=$1
  line=$2
  tab=$4

  printf "  Nombre d'allumettes : "
  read nbr
  if [ "$(echo "$nbr" | egrep '[0-9]+')" ]
      then
        if [ $nbr -lt 0 ]
          then
            echo "  ${yel}Vous devez choisir un nombre supérieur à 0${end}"
            Jeu_humain $2
        elif [ $nbr -le $match ]
          then
            match=$((match-nbr))
			      tab[$ligne]=$match
            echo "  $player retire " $nbr " allumette(s) sur la ligne "$3
            total_matches=$((total_matches-nbr))
            if [[ total_matches -lt 1 ]]
              then
                if [ $player == "J1" ]
                then
                  echo "    ${grn}J2 gagne la partie ! Bravo${end}"
                  sleep 0.5
                  echo "${yel}--- FIN DE LA PARTIE ---${end}"
                  sleep 0.5
                  exit 2
              else
                echo "    ${grn}J1 gagne la partie ! Bravo${end}"
                echo "\n${yel}--- FIN DE LA PARTIE ---${end}\n"
                sleep 1
                exit 1
              fi
            fi
			      result $tab $line
            if [ $player == "J1" ]
              then
                player="J2"
                Jeu_humain $2
              else
                Jeu_humain $2
            fi
            Jeu_humain $2
        else
            echo "  ${yel}Ce nombre est trop grand${end}"
            Jeu_humain $2
        fi
  elif [ $ligne != "exit" ]
      then
        echo "  ${yel}Veuillez entrer un nombre${end}"
        Jeu_humain $2
  fi
}
