def math(a,b,&operation)
 #仮引数の中でBlockに変換させる。
 p block_given? # true
 p yield(a,b)   # 6
end

def do_math(a,b,&operation)
  # Procに変換したまま渡す。
  math(a,b,operation)
end

do_math(2,3){|x , y| x*y}

