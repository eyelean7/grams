class String
  define_method(:grams) do |comparison|
    obj_array = self.split("")
    arg_array = comparison.split("")

    obj_hash = Hash.new(0)
    obj_array.each() do |letter|
      obj_hash[letter] += 1
    end
    # obj_array + ", " + arg_array
    obj_hash
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
