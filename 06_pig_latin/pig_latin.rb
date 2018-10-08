#code pris sur stack overflow from Sergio Tulentsev
#i'll instead explain what is appening
# ( ne marche pas sur la translation de plusieurs mots)
def translate str                                                  #On traduit, on filtre les informations dont on a besoin
  alpha = ('a'..'z').to_a                                          # ici l'alphabet
  vowels = %w[a e i o u]                                           # Les voyelles
  consonants = alpha - vowels                                      #qui nous aident à déduire les consonnes

  if vowels.include?(str[0])                                       #si la première lettre de la string (str[0]) est une voyelle include "ay" à la fin
    str + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1]) # si la première et seconde lettres sont des consonnes
    str[2..-1] + str[0..1] + 'ay'                                  #affiche les deux premières lettres([0..1]) ajoutées aux suivante ([2..-1])+ "ay"
  elsif consonants.include?(str[0])                                # s'il n'y a qu'un consonne , seulement mettre celle-ci +"ay" à la fin du reste
    str[1..-1] + str[0] + 'ay'
  else
    str # return unchanged
  end
end

translate 'apple' # => "appleay"
translate 'cherry' # => "errychay"
translate 'dog' # => "ogday"
