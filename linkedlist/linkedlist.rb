require 'pry'

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

    def insertAtBegining(data)
        newNode = Node.new data
        currentNode = @head
        if currentNode != nil
            newNode.next = currentNode
            @head = newNode
        else
            @head = newNode
        end
        newNode.data
    end

    def insertAtEnd(data)
        newNode = Node.new data
        currentNode = @head
        while(currentNode.next != nil)
            currentNode = currentNode.next
        end
        currentNode.next = newNode
        newNode.data
    end

    def insertAtPos(data, pos)
        newNode = Node.new data
        tempNode = nil
        currentNode = @head
        count = 1;
        while(currentNode != nil && count < pos)
            tempNode = currentNode
            currentNode = currentNode.next
            count += 1
        end
        tempNode.next = newNode
        newNode.next = currentNode
        newNode.data
    end

    def print_list
        currentNode = @head
        while (currentNode)
            puts currentNode.data
            currentNode = currentNode.next
        end
    end


end

#binding.pry

list = LinkedList.new

list.insertAtBegining(1) #[1]
list.insertAtEnd(2) #[1,2]
list.insertAtPos(4,2) #[1,4,2]

list.print_list

