class Train
  class << self
    def a_class_method
      puts "This is class method of Train"
    end
  end
end

class Subway < Train
end

p Train.singleton_class 
# <Class:Train>
p Subway.singleton_class# #<Class:Subway>
p Train.singleton_class.superclass # #<Class:Object>
p Subway.singleton_class.superclass# #<Class:Train>
p Train.ancestors

p Train.a_class_method

p Subway.a_class_method