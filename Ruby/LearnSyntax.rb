# Ruby program to illustrate the
# Numbers Data Type
  
# float type
distance = 0.1
  
# both integer and float type
time = 9.87 / 3600
speed = distance / time
puts "The average speed of a sprinter is #{speed} km/h"

# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------

puts "String Data Type";
puts 'escape using "\\"';
puts 'That\'s right';

# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
 print key, " is ", value, "\n"
end

puts colors
puts hsh
# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------
domains = {:sk => "fanzru", :no => "fanzru ganteng", :hu => "fanzru ganteng polll"}
  
puts domains[:sk]
puts domains[:no]
puts domains[:hu]
puts domains