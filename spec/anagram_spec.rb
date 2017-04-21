require('rspec')
require('anagram') #requires lib file that is .rb

describe() do
  it("will check to see if two words are anagrams") do #doesnt matter english explination
    expect("".anagram("ruby","bury")).to(eq("this is an anagram"))

  end
end
