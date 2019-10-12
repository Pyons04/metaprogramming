class MyClass
end

MyClass.instance_eval do
  def show_number
    return "MyClassの特異メソッドですよー。"
  end
end

p MyClass.show_number # "MyClassの特異メソッドですよー。"

singleton_class = class << MyClass
  self
end

p singleton_class # #<Class:MyClass>

