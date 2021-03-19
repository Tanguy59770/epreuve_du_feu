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

i = 0
while ( i < my_str.length)
  if (i % 2 == 0)
    print my_str[i].downcase
  else
    print my_str[i].upcase
  end
  i += 1
end
print "\n"
