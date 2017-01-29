# @Author: tang_g
# @Date:   2017-01-11T09:08:04+01:00
# @Email:  tang_g@etna-alternance.net
# @Last modified by:   tang_g
# @Last modified time: 2017-01-12T13:18:09+01:00

#!/bin/bash

get_help ()
{

  printf "${yel}Section d'aide :

      Pour demarrer une nouvelle partie,
      Depuis le prompt du terminal, entrez <sh> <Chemin du fichier> <-[2~10]>

      Explication du jeu :

      Lorsque la partie commence, un cadre s'affiche avec le nombre
      d'allumettes que vous avez choisi, votre tour commencera et
      vous pourrez choisir une ligne en ecrivant son numero,
      ensuite vous choisirez le nombre d'allumettes que vous
      souhaitez retirer à cette ligne.
      Vous jouez contre l'ordinateur, vous gagnez si l'ordinateur
      retire la dernier allumette.

      Tapez <exit> pour quitter le jeu.

  ${end}"
  echo ""
}
