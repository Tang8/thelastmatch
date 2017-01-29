# @Author: tang_g
# @Date:   2017-01-11T09:08:04+01:00
# @Email:  tang_g@etna-alternance.net
# @Last modified by:   tang_g
# @Last modified time: 2017-01-12T14:31:57+01:00

tableau ()
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

Jeu ()
{
  ligne="pokemon"

  while [ $ligne != "exit" ]
  do
    echo "Votre tour : "
    printf "  Ligne : "
    read ligne
    if [ "$(echo "$ligne" | egrep '[0-9]+')" ]
        then
          if [ $ligne -lt 0 ]
            then
              echo "  ${yel}Vous devez choisir un nombre supérieur à 0${end}"
              Jeu $1
          elif [ $ligne -le $1 ]
            then
              ligne2=$ligne
              ligne=$((ligne-1))
              Nbr ${tab[$ligne]} $1 $ligne2 $tab
              Jeu_IA $1
          else
              echo "  ${yel}Ce nombre est trop grand${end}"
              Jeu $1
          fi
    elif [ $ligne != "exit" ]
        then
          echo "  ${yel}Veuillez entrer un nombre${end}"
          Jeu $1
    fi
  done
  echo "--- À bientôt ---"
  echo -e '\0033\0143'
  exit
}

Nbr ()
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
            Jeu $2
        elif [ $nbr -le $match ]
          then
            match=$((match-nbr))
			      tab[$ligne]=$match
            echo "  Vous retirez " $nbr " Allumette(s) sur la ligne "$3
            total_matches=$((total_matches-nbr))
            if [[ total_matches -lt 1 ]]
              then
                echo "    ${red}Maintenant vous pouvez voir mon réel pouvoir ! Looser${end}"
                echo "\n${yel}--- FIN DE LA PARTIE ---${end}\n"
                sleep 1
                exit 2
            fi
			      result $tab $line
            Jeu_IA $2
        else
            echo "  ${yel}Ce nombre est trop grand${end}"
            Jeu $2
        fi
  elif [ $ligne != "exit" ]
      then
        echo "  ${yel}Veuillez entrer un nombre${end}"
        Jeu $2
  fi
}
