# @Author: tang_g
# @Date:   2017-01-11T09:08:04+01:00
# @Email:  tang_g@etna-alternance.net
# @Last modified by:   tang_g
# @Last modified time: 2017-01-12T14:26:43+01:00

Jeu_IA ()
{
    AI=$1
    IA_number_match=0
    IA_number=0
    if [[ total_matches -lt 2 ]]
      then
        echo "Tour de l'IA..."
        sleep 1
        echo "    ${grn}Zut ! J'ai perdu...${end}"
        echo "\n${yel}--- FIN DE LA PARTIE ---${end}\n"
        sleep 1
        exit 2
    fi
    while [[ $IA_number_match == 0 ]] || [[ $IA_number_match == "" ]]
    do
      while [[ $IA_number == 0 ]] || [[ $IA_number == "" ]]
      do
        line_IA
      done

      IA_number_match=$(( ( RANDOM % IA_number ) + 1 ))

      while [[ $IA_number_match == 1 ]]
        do
          IA_number_match=$(( ( RANDOM % IA_number ) + 1 ))
        done
    done
    rein=${tab[IA_line]}
    tab[$IA_line]=$((rein-IA_number_match))
    echo "Tour de l'IA..."
    sleep 1
    echo "  L'IA retire " $IA_number_match " allumette(s) sur la ligne "$IA_match
    total_matches=$((total_matches-IA_number_match))
    result $tab $1
    if [[ total_matches -lt 1 ]]
      then
        echo "    ${grn}Zut ! J'ai perdu...${end}"
        echo "\n${yel}--- FIN DE LA PARTIE ---${end}\n"
        sleep 1
        exit 1
    fi
    Jeu $1
}

line_IA ()
{
  IA=$(( ( RANDOM % AI ) + 1))
  AI_line=$IA
  IA_line=$(( ( RANDOM % IA ) + 1))

  while [[ $IA_line -le $1 ]]
    do
      IA_line=$(( RANDOM % IA ))
    done

  IA_match=$((IA_line+1))

  IA_number=${tab[IA_line]}
}
