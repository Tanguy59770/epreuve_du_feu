if (ARGV.length < 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} [array_of_numbers_to_sort...]"
  exit
end

flag = true
while (flag)
  flag = false
  i = 0
  while (i < ARGV.length() - 1)
    if (ARGV[i] < ARGV[i + 1])
      tnp = ARGV[i]
      ARGV[i] = ARGV[i + 1]
      ARGV[i + 1] = tnp
      flag = true
    end
    i += 1
  end
end

puts ARGV.join(' ')
