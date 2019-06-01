require './lib/enigma'

input, output = ARGV

enigma = Enigma.new
ans = enigma.encrypt(File.read("data/#{input}").chomp)
File.write("data/#{output}", "#{ans[:encryption]}")

puts "Created #{output} with the key #{ans[:key]} and date #{ans[:date]}"
