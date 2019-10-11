no_name = Class.new(Array) do # 引数は継承元クラス
  def my_method
    "HelloWorld"
  end
end

NewArray = no_name

p NewArray.new.my_method