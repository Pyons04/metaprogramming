module StringExtension
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/,'')
    end
  end

  refine Array do
    def replace(original,replacement)
      self.map{|e| e == original ? replacement : e}
    end
  end
end