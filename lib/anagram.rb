require('pry')
class String
  define_method(:anagram) do |word1,word2|

    
    word1_array = word1.upcase.split("")
    word2_array = word2.upcase.split("")
    compare_word2 = []
    new_array = []
    vowels = ["A","E","I","O","U","Y"]
    good_input = ""
    good_input2 = ""
    antigram = ""

    word2_array.each() do |letter|
      if word1_array.include?(letter)
        compare_word2.push(letter)
      else new_array.push(letter)
      end
    end

    word1_array.each() do |letter|
      if new_array.include?(letter)
        antigram = false
      elsif new_array == []
        antigram = false
      else antigram = true
      end
    end

    vowels.each() do |vowel|
      if (word1_array.include?(vowel) && word2_array.include?(vowel)) || (compare_word2.include?(vowel)) || (new_array.include?(vowel))
        good_input = true
        break
      else good_input = false
      end
    end

    if (good_input == false)
      bad_answer = "please enter an actual word"
    elsif antigram == true
      antigram_answer = "these words have no letter matches and are antigrams"
    elsif (compare_word2.length == word1_array.length && word2_array.reverse != word1_array)
      anagram_answer = "this is an anagram"
    elsif word2_array.reverse == word1_array
      palindrome_answer = "this is a palindrome"
    end

  end
end
