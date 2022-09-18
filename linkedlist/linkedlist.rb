class Node
    attr_accessor :data, :next
        
    def initialize(data)
        @data = data
        @next = nil
    end
    
end

class LinkedList
    def initialize(head = nil)
        @head = head
    end
    
    def list_length
        currentNode = @head
        count = 0

        while (currentNode != null) 
            count++
            currentNode = currentNode.next
        end

        count
    end

    def insert(data, pos)
        newNode = Node.new data
        currentNode = @head
        count = 1
        tempNode = nil;
        if pos == 1
            newNode.next = currentNode
            @head = newNode
        else
            while (@head != nil && count < pos)
                count += 1
                tempNode = currentNode
                currentNode = currentNode.next
            end
            tempNode.next = newNode
            newNode.next = currentNode
        end
    end

    def print_list
        currentNode = @head
        while (currentNode)
            puts currentNode.data
        end
    end


end

list = LinkedList.new

list.insert(1,1)
list.insert(2,2)
list.insert(4,4)

list.print_list