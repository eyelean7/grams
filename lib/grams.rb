class String
  define_method(:grams) do |comparison|
    obj_array = self.downcase.split("")
    arg_array = comparison.downcase.split("")

    obj_hash = Hash.new(0)
    obj_array.each() do |letter|
      obj_hash[letter] += 1
    end
    arg_hash = Hash.new(0)
    arg_array.each() do |letter|
      arg_hash[letter] += 1
    end
    anagrams = obj_hash == arg_hash
    palindromes = obj_array.reverse() == arg_array
    if anagrams
      if palindromes
        "These words are not only anagrams but also palindromes"
      else
        "These words are anagrams"
      end
    else
      "These words are nothing special"
    end
  end
end
