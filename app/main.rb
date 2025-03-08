while true
  $stdout.write("$ ")

  # Wait for user input
  command, *args = gets.chomp.split(" ")

  case command
  when "exit"
    exit(Integer(args[0]))
  when "echo"
    puts args.join(" ")
  when "type"
    case args[0]
    when "exit", "echo", "type"
      puts "#{args[0]} is a shell builtin"
    else
      puts "#{args[0]}: not found"
    end
  else
    puts "#{command}: command not found"
  end

end