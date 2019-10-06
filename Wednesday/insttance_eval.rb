class MyClass
  variable = "This cannnot be accessed from out side."
  def initialize
    @v = 1
  end
  p variable
end

obj = MyClass.new

obj.instance_eval do
  p self # <MyClass:0x007ffff6a16de8 @v=1>
  p @v # 1
  p self.send :local_variables
end

MyClass.instance_eval do
  p self # MyClass
  p @v #nil
  p self.send :local_variables
  # p variable # undefined error (クラス内でselfのレシーバーを付けても同様)
end

obj2 = MyClass.new 

obj2.instance_eval do
  @v = "Hello"
  p @v
end