def substrings(string, dictionary)
    s = string.downcase.split()
    
    result = dictionary.reduce(Hash.new(0)) do |hash, word|
      s.each { |substring| hash[word] += 1 if substring.include?(word.downcase) }
      hash
    end
    
    result.each { |word, count| puts "#{word}: #{count}" }
  end
  
  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  string = "Howdy partner, sit down! How's it going?"
  
  substrings(string, dictionary)
