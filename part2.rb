days = gets.to_i
sales = [0, 0, 0, 0, 0, 0, 0]

days.times do |day|
    day = day % 7
    sales[day] += gets.to_i
end

sales.map { |x| puts x }
