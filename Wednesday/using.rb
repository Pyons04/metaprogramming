module Kernel
  def with(resouce)
    begin
      yield if block_given?
    ensure
      resouce.dispose
    end
  end
end

class Running
  def raise_error
    raise "Opps!!"
  end

  def pause(sec)
    puts "Now I am having rest."
    sleep(sec)
  end

  def dispose
    puts "Bye!!"
  end
end

runner = Running.new

with(runner){
  runner.pause(3)
  # runner.raise_error
}