if (ARGV.length < 2)
    puts "#{__FILE__} requires two argument: #{__FILE__} word_to_find dictionnary"
    exit
end

value = ARGV[0]
dictionnary_file = ARGV[1]

dictionnary = []
position = 0
File.foreach(c1) { |line| dictionnary[position] = line.chomp; position += 1 }

value = value.split('').sortjoin('')

i = 0
while (i < dictionnary.count - 1)
  if (dictionnary[i].split('').sort.join('') == value)
    puts dictionnary[i]
  end
  i += 1
end
