class Stack
    def initialize
      # create ivar to store stack here!
      @arr = []
    end

    def push(el)
      # adds an element to the stack
      @arr.push(el)
      el
    end

    def pop
      # removes one element from the stack
      @arr.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @arr.last
    end

    def print
        p @arr
    end
  end

  stack = Stack.new
  stack.push(5)
  stack.push(7)
  stack.push(8)
  stack.print
  p stack.peek
  stack.pop
  stack.print