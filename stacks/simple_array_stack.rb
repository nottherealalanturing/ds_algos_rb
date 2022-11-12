require 'pry'

class Stack
    attr_reader :capacity, :array

    def initialize(capacity)
        @array = []
        @capacity = capacity
    end

    def push(data)
        if size == capacity
            "Stack Overflow"
        else
            array.push(data)
        end
    end

    def pop
        if size < 1
            "Stack Underflow"
        else
            array.pop()
        end
    end

    def size
        array.length
    end
    
    def print_stack
        array.each do |a| 
            puts a
            puts " "
        end
    end
end

stack = Stack.new(5)
pry.binding