module MyModule
  def myclass_method
    puts "I want to make this method class method!"
  end
end

class MyClass 
  class << self
    include MyModule
  end
end

MyClass.myclass_method # I want to make this method class method!