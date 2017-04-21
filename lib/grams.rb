class String
  define_method(:grams) do |comparison|
    vowels = ['a','e','i','o','u','y']

    obj = self
    obj.gsub!(/[^a-zA-Z0-9]*/, "")
    arg = comparison
    arg.gsub!(/[^a-zA-Z0-9]*/, "")

    obj_array = obj.downcase.split("")
    arg_array = arg.downcase.split("")

    shared_obj = vowels & obj_array.to_a
    shared_arg = vowels & arg_array.to_a

    if shared_obj == [] || shared_arg == []
      "Hey... that's not even a word! Try again."
    else
      if obj_array & arg_array.to_a == []
        "No letters match! You have an antigram."
      else
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
            "These words are not only anagrams but also palindromes."
          else
            "These words are anagrams."
          end
        else
          "These words are nothing special."
        end
      end
    end
  end
end
