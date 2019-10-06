my_var = "スコープを超えたよ。"

MyClass = Class.new do
  puts "Inside Class definition: #{my_var}"

  define_method  :my_method do
    puts "Inside Method definition: #{my_var}"
  end
end

m = MyClass.new
p '&&&&&&&&&&'
m.my_method