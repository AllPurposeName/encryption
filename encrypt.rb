Encrypt
puts 'push any key'

input_key = gets.to_i

puts 'phrase to be encrypted:'
input_word = gets.chomp

new_alphabet = ('a'..'z').to_a
new_alphabet_caps = ('A'..'Z').to_a


new_alphabet_caps.each do |letter|
  new_alphabet << letter
end

solution = new_alphabet.rotate(input_key).join
newest_alphabet = new_alphabet.shuffle.join

puts "Your phrase: #{input_word.to_s}"
binding.pry
input_word.tr!(newest_alphabet, solution)

binding.pry

input_word.tr!(solution, newest_alphabet)

binding.pry

puts "Encrypted: #{input_word}.\nPlease reenter original phrase"
input_reenter = gets.chomp
binding.pry
if input_reenter == input_word
  puts "Welcome, codename #{input_word}"
else
  puts "GTFO!"
end
