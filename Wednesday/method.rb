class MyClass
  def initialize
    @variable = 100
  end

  def original_method(param)
    @variable * param
  end
end

fetched_method = MyClass.instance_method(:original_method)
p fetched_method.class

class MyChildClass < MyClass
  def initialize
    @variable = 200
  end
end

obj2 = MyChildClass.new
MyChildClass.send :define_method, :copied_method , fetched_method
p obj2.copied_method(3)