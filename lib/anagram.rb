require('pry')
class String
  define_method(:anagram) do |word1,word2|
    word1_array = word1.upcase.split("")
    word2_array = word2.upcase.split("")
    compare_word2 = []
    # anagram_answer = ""
    # palindrome_answer = ""
    good_input = false

    if (word1_array.include?("A"||"E"||"I"||"O"||"U") && word2_array.include?("A"||"E"||"I"||"O"||"U"))
      good_input = true
    end

    word2_array.each() do |letter|
      word1_array.include?(letter)
      if true
        compare_word2.push(letter)
      end
    end

      if good_input == false
        bad_answer = "please enter an actual word"
      elsif (compare_word2.length == word1_array.length && word2_array.reverse != word1_array)
        anagram_answer = "this is an anagram"
      elsif word2_array.reverse == word1_array
        palindrome_answer = "this is a palindrome"
      end

  end
end
