class DiyHash
  define_method(:initialize) do
      @storage_array = []
  end

  define_method(:set_it) do | incoming |
    @storage_array = incoming
    return self
  end

  define_method(:store) do |diy_key, key_value|
    temp_element = [diy_key, key_value]
    @storage_array.push(temp_element)
    return @storage_array
  end

   define_method(:fetch) do |fetch_key|
     searchedkeyarray = @storage_array.assoc(fetch_key)
     fetch_value = searchedkeyarray[1]
    end

    define_method(:has_key?) do |fetch_key|
      if searchedkeyarray = @storage_array.assoc(fetch_key)
        true
      else
        false
      end
    end

    define_method(:has_value?) do |fetch_value|
      if @storage_array.rassoc(fetch_value)
        true
      else
        false
      end
    end

    define_method(:length) do
      @storage_array.count()
    end

    define_method(:merge) do |diy_hash_to_add|
      #@storage_array = self + array_to_add)
      temporary_array = []
      @storage_array.each do |subarray|
        temporary_array.push(subarray)
      end
      diy_hash_to_add.instance_variable_get(:@storage_array).each() do |subarray|
        temporary_array.push(subarray)
      end
     output_diy_hash = DiyHash.new()
#binding.pry
     return output_diy_hash = output_diy_hash.set_it(temporary_array)

    end

end
