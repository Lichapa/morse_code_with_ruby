# Create a method to decode a Morse code character

def decode_char(char)
  morse_chars_codes = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_chars_codes.each do |key, value|
    return value if key == char
  end
end

puts decode_char('.-')

# Create a method to decode an entire word in Morse code

def decode_word(word)
  myword = []
  char = word.split
  char.each do |c|
    myword << decode_char(c)
  end
  myword = myword.join
end

puts decode_word('-- -.--')

# # Create a method to decode the entire message in Morse code

def decode(message)
  mymessage = []
  word = message.split('   ')
  word.each do |w|
    mymessage << decode_word(w)
  end
  mymessage = mymessage.join(' ')
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ... ')
