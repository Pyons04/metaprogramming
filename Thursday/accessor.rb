class MyClass
  class << self # この記法は最もスタンダードなクラスメソッドの定義
    attr_accessor :class_variable
  end
end

MyClass.class_variable = 100
p MyClass.class_variable # 100