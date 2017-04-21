require('rspec')
require('anagram') #requires lib file that is .rb

describe() do
  it("will check to see if two words are anagrams") do
    expect("".anagram("canoe","ocean")).to(eq("this is an anagram"))
  end

  it("will check to see if two words are anagrams regardeless of case") do
    expect("".anagram("Canoe","oCean")).to(eq("this is an anagram"))
  end

  it("will check to see if two words are also palindromes regardeless of case") do
    expect("".anagram("hannah","hannah")).to(eq("this is a palindrome"))
  end

  it("will check to see if both words include vowels") do
    expect("".anagram("lptr","lptr")).to(eq("please enter an actual word"))
  end

end
