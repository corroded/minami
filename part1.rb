count = 1
s = ""
gets.each_char do |b|
  if count % 2 == 1
    s << b
  end
  count += 1
end

puts s
