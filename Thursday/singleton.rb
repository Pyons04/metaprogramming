string = "Hello World"

def string.shibuya
  puts "Shibuya is busy city."
end

singleton_class = class << string
  self
end

p singleton_class         # #<Class:#<String:0x00007fffda2f7538>>
p singleton_class.class   # Class
p string.singleton_class  # #<Class:#<String:0x00007fffda2f7538>>
p singleton_class.instance_methods(false) # [:shibuya]
p singleton_class.superclass # String