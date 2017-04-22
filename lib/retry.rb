class String
  define_method(:anagram) do
    words_array = self.upcase.split()
    palindrome_answer = ""
    anagram_answer = ""

    vowels = words_array.any? {|word| word.include?("A") || word.include?("E") || word.include?("I") || word.include?("O") || word.include?("U") || word.include?("Y")}

    if vowels
      anagrams = words_array.group_by { |word| word.chars.sort }.values
    else
      print "You need to enter a word sir"
    end
    anagrams.each do |anagram_array|
      if anagram_array.length > 1
        anagram_answer += anagram_array.join(",") + ","
      end
      if anagram_array.any? { |anagram| anagram == anagram.reverse }
       palindrome_answer = " and this is a palinderome " + anagram_array.join
      end
    end
    "Your anagrams are " + anagram_answer + palindrome_answer
  end
end
