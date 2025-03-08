$stdout.write("$ ")

# Wait for user input
command, *args = gets.chomp.split(" ")

puts "#{command}: command not found"