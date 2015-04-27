class DiyHash
  define_method(:initialize) do
    @storage_array = []
  end

  define_method(:store) do |diy_key, key_value|
    temp_element = [diy_key, key_value]
    @storage_array.push(temp_element)
    return @storage_array
  end

   define_method(:fetch) do |fetch_key|
     searchedkeyarray = @storage_array.assoc(fetch_key)
     fetch_value = searchedkeyarray[1]
    #binding.pry
    end

end
