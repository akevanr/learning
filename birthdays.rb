require 'time'

puts "Birth year?"
year = gets.to_i

puts "Birth month?"
month = gets.to_i

puts "Birth date?"
date = gets.to_i

puts "Birth hour?"
hour = gets.to_i

puts "AM/PM?"
m = gets.chomp

if m == "PM"
  hour += 12
end

puts "Birth minute?"
min = gets.to_i

birth = Time.mktime(year, month, date, hour, min)

puts birth

bsec = birth + 1000000000

puts "On #{bsec.httpdate} you turned one BILLION seconds old!"

puts "Here are your birthday SPANKS!"

today = Time.new

age = today.year - birth.year

1.upto(age) { |i| puts "#{i} SPANK!" }
