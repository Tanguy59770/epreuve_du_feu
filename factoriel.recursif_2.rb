if (ARGV.length != 1)
  puts "#{__FILE__} requires one argument: #{__FILE__} number"
  exit
end

def facto(n)
  if (n <= 1)
    return (1)
  end
  return (n * facto(n - 1))
end

number = ARGV[0].to_i

res = facto(number).to_s

new_res = ''
res = res.reverse
i = 0
while (i < res.length)
  print res[i]
  if ((i + 1) % 3 == 0)
    new_res = ','
  end
  i += 1
end
puts new_res.reverse
