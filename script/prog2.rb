class Stack
  def initialize
    @store = []
  end
  
  def push(element)
    @store.push(element)
  end
  
  def pop
    @store.pop
  end
  
  def look
    @store.empty? ? nil : @store[-1]
  end
  
  def size
    @store.size
  end
  
  def empty?
    @store.empty?
  end
end
stack = Stack.new
stack.push(5)
stack.push(10)
stack.push(15)
puts stack.look
puts stack.pop
puts stack.pop
puts stack.size 
puts stack.empty?
puts stack.pop  
puts stack.empty?
puts stack.pop 
