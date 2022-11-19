class ArrayQueue
    attr_accessor :front, rear, capacity, array
    def initialize(capacity)
        @front = -1
        @rear = -1
        @capacity = capacity
        @array = []
    end

    def isEmpty?
        capacity == 0
    end

    def isFull?
        rear + 1 % capacity == front
    end

    def size
        capacity
    end

    def enqueue(data)
        if isFull?
            puts "queue overflow"
        else
            rear = rear + 1 % capacity
            array[rear] = data;
            front = rear if front == -1
        end
    end

    def dequeue
        if isEmpty?
            puts "queue underflow"
        else
            data = array[front]
        end
        
    end

end