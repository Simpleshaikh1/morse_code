def morse_to_char(morse_char)
  morse_to_eng = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_to_eng[morse_char]
end

def morse_to_word(morse_word)
  morse_chars = morse_word.split
  word_in_english = ''

  morse_chars.each do |morse_char|
    char_in_english = morse_to_char(morse_char)
    word_in_english += char_in_english if char_in_english
  end

  word_in_english
end

def morse_to_sentence(morse_code)
  morse_words = morse_code.split('   ')
  english_sentence = ''

  morse_words.each do |morse_word|
    english_word = morse_to_word(morse_word)
    english_sentence += "#{english_word} "
  end

  english_sentence.strip
end

# Decoding message
input_morse = ' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
english_sentence = morse_to_sentence(input_morse)
puts english_sentence
