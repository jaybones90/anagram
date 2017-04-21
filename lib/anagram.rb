class String
  define_method(:anagram) do |word1,word2|
    word1_array = word1.upcase.split("")
    word2_array = word2.upcase.split("")
    new_array = []
    answer = ""

    word2_array.each() do |letter|
      word1_array.include?(letter)
      if true
        new_array.push(letter)
      end
    end

    if new_array.length == word1_array.length
    answer = "this is an anagram"
    end

  end
end
