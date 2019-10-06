def hello
  shared = 0
  
  define_method :counter do
    shared
  end

  # def counter 
  #   shared
  # end

  define_method :incriment do |x|
    shared += x
  end

  # def incriment(x)
  #   shared += x
  # end
end

hello

p counter
incriment(4)
p counter

