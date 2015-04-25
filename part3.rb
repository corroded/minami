cols, rows = gets.split(' ')

cols = cols.to_i
rows = rows.to_i

arr = []

cols.times do |col|
  arr.push([])
end

rows.times do |row|
  col_num = 0
  gets.split(' ').each do |x|
    arr[col_num].push x
    col_num += 1
  end
end

arr.each do |col|
  col.each_with_index do |num, i|
    if num == '2'
      col[i] = nil
    end
  end

  col.compact!

  (rows - col.size).times do
    col.push 0
  end
  col = col.reverse
end

rows.times do
  puts arr.map(&:pop).join(' ')
end
