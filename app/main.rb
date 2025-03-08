while true
  $stdout.write("$ ")

  # Wait for user input
  command, *args = gets.chomp.split(" ")

  if command == "exit"
    exit(Integer(args[0]))
  end

  puts "#{command}: command not found"
end