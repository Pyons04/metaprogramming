class Computer

  def self.define_component(name)
    define_method(name) do 
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.capitalize}: #{info}  ($#{price})"
      return result if price >= 100
      result
    end
  end
 
end