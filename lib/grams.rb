class String
  define_method(:grams) do |comparison|
    obj_array = self.split("")
    obj_array
  end

  # define_method(:grams) do |comparison|
  #   obj_hash = Hash.new()
  #   arg_hash = Hash.new()
  #   obj_array = self.split("")
  #   arg_array = comparison.split("")
  #   obj_array.each() do |letter|
  #     if e.has_key?(letter) == false
  #       obj_hash.store(letter, 0)
  #     end
  #   end
  #   arg_array.each() do |letter|
  #     arg_hash.store(letter, 0)
  #   end
  #   obj_hash, arg_hash
  # end
end
