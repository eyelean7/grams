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
      "These words are anagrams"
      if palindromes
        "These words are also palindromes"
      end
    else
      "These words are nothing special"
  end

  # define_method(:grams) do |comparison|
  #   obj_hash = Hash.new()
  #   arg_hash = Hash.new()
  #   obj_array = self.split("")
  #   arg_array = comparison.split("")
  #   obj_array.each() do |letter|
  #     if obj_hash.has_key?(letter) == false
  #       obj_hash.store(letter, 0)
  #     elsif obj_hash.has_key?(letter) == true
  #      # not really sure what to do here...
  #     end
  #   end
  #   arg_array.each() do |letter|
  #     arg_hash.store(letter, 0)
  #   end
  #   obj_hash, arg_hash
  # end

#this is how to add the numbers for each key
#   myhash = Hash.new(0)
# ['a', 'b', 'c', 'c'].each() do |num|
#   myhash[num] += 1
# end
# myhash
end
