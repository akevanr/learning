puts "This is a leap year calculator."
puts "List two years you want to know the number of leap years occur, inclusive"

puts "From: (year)"
from_year = gets.chomp

puts "To: (year)"
to_year = gets.chomp

total = 0

from_year.to_i.upto(to_year.to_i) { |i|
    puts i % 4
    puts i % 400
    puts i % 100
    puts ""
    if i % 4 == 0
      puts "#{i} is divisible by 4"
      if i % 400 == 0
        puts "#{i} is divisible by 400"
        total += 1
      elsif i % 100 != 0
        puts "#{i} is not divisible by 100"
        total += 1
      end
    end
}

puts total
