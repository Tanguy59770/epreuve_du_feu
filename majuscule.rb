#Créer un script qui affiche une lettre sur deux en majuscule et le
#reste en minuscule de la chaîne de caractères du premier argument.
#Ex. d’appel du script :
#$> ./majuscule “Bien le bonjour!”
#bIeN lE bOnJoUr!
if (ARGV.length != 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} string"
  exit
end


my_str = ARGV[0].split('')

resultat = ' '
indice_majuscule = 0
i = 0
while (i < my_str.length)
  if (my_str[i] != ' ')
    if (indice_majuscule % 2 == 0)
      resultat += my_str[i].downcase
    else
      resultat += my_str[i].upcase
    end
    indice_majuscule += 1
  else
    resultat += ' '
  end
  i += 1
end
puts resultat
