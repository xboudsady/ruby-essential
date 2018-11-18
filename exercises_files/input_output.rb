# gets: waits for user iput--a single line ending in a return
# chomp: removes any line ending ("\n", "\r", "\r\n")
# chop: would remove ANY final character (chomp is usually better)
input = gets.chomp

# print: outputs a string string with no line return
# puts: outputs a string with a line return
print "You just told me: "
puts input + "."

# Use gets inside a loop for more user input
results = ""
until results == "quit"
    print "> "
    results = gets.chomp
    puts "I heard: #{results}"
end
puts "Goodbye!"