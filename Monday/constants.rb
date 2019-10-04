Y = "ルートレベルの定数"
X = "moduleの外"""

module M
  Y = "Mにある定数"
  p Y # => "Mにある定数"
  p :: Y # => "ルートレベルの定数"
  p Module.constants # => 組み込みクラス、定数を含むすべてとトップレベルのM
  p constants # => "[:Y]"(moduleの中の定数)
end

p M.constants # => "[:Y]"(moduleの中の定数)




