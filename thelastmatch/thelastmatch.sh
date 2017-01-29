# @Author: tang_g
# @Date:   2017-01-11T09:08:04+01:00
# @Email:  tang_g@etna-alternance.net
# @Last modified by:   tang_g
# @Last modified time: 2017-01-12T16:05:24+01:00

#!/bin/bash

source Jeu/Jeu.sh
source Affichage/square.sh
source Affichage/result.sh
source Jeu/Jeu_IA.sh
source ../bonus/help.sh
source ../bonus/colors.sh
source ../bonus/Jeu_humain.sh

echo ""
if [ -z "$1" ]
  then
    echo "${yel}Argument manquant, entrez -h ou -help pour ouvrir la section d'aide${end}\n"
elif [ $1 == "-h" ] || [ $1 == "-help" ]
  then
    get_help $1
elif [ `echo "$1" | grep -E [0-9]*\.[0-9]+` ]
  then
    echo "${yel}Argument invalide, entrez -h ou -help pour ouvrir la section d'aide${end}\n"
elif [ `echo "$1" | grep -E [a-zA-Z]` ]
    then
      echo "${yel}Argument invalide, entrez -h ou -help pour ouvrir la section d'aide${end}\n"
else
    if [ $1 -le 1 ] || [ $1 -gt 10 ]
      then
        echo "${yel}Argument invalide, entrez -h ou -help pour ouvrir la section d'aide${end}\n"
    else
      total_matches=$1*$1
      echo -e '\0033\0143'
      echo "Bienvenue dans The Last Match"
      sleep 0.5
      echo "1 : Joueur VS IA"
      echo "2 : Joueur1 VS Joueur2"
      printf "Contre qui voulez vous jouer ? (1/2) : "
      read versus
      while [ $versus -ne 1 ] || [ $versus -ne 2 ] || [ $versus -ne "exit" ]
      do
        if [ $versus == 1 ]
          then
            echo -e '\0033\0143'
            square $1
            tableau $1
            Jeu $1
          elif [ $versus == 2 ]
            then
              echo -e '\0033\0143'
              square $1
              tableau $1
              Jeu_humain $1
            else
      echo "${yel}Veuillez ecrire 1 pour jouer contre l'IA ou 2 pour jouer contre un autre Joueur${end}"
      read versus
      fi
    done
    fi
fi
