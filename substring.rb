def substrings(text, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |entry, totals|
    text.downcase.split.each do |word|
      totals[entry] += 1 if word.include?(entry)
    end
  end
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)