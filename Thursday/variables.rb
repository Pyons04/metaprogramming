class MyClass
  @my_var = "I belongs to ????"
  def self.read 
    @my_var = "I belongs to class."
  end

  def write
    @my_var =  "I belongs to instanse."
  end

  def read
    @my_var
  end
end

obj = MyClass.new
p obj.read     # nil
obj.write
p obj.read     # "I belongs to instanse."
p MyClass.read # "I belongs to class."
