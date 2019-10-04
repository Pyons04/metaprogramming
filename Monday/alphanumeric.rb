# def to_alphanumeric(s)
#   s.gsub(/[^\w\s]/,'')
# end

class String
  def to_alphanumeric
    gsub(/[^\w\s]/,'')
  end
end

class Array
  def replace(original,replacement)
    self.map{|e| e == original ? replacement : e}
  end
end

