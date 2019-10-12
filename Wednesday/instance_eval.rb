class MyClass
  def initialize
    @v = 1
  end
end

MyClass.class_eval do
  def show_number
    return @v + 10
  end
end

obj = MyClass.new
p obj.show_number

