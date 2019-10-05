module Printable
  def print 
    p "Print in Printable Module!"
  end

  def prepare_cove
    p "Prepare Cover!"
  end
end

module Document
  def print_to_screen
    prepare_cove
    format_for_screen
    print
  end

  def format_for_screen
    p "Format for Screen!"
  end

  def print
    p "Print in Document module."
  end
end

class Book
  include Document
  include Printable
end

p Book.ancestors
b = Book.new
b.print_to_screen