class DiyHash
  define_method(:initialize) do
  end

  define_method(:store) do |diy_key, diy_value|
    @diy_key = diy_key
    @diy_value = diy_value
  end

   define_method(:fetch) do |fetch_key|
     if fetch_key == @diy_key
        fetch_value = @diy_value
     end

  end

end
