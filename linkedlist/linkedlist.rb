require 'pry'

class Node
    attr_accessor :data, :next
        
    def initialize(data)
        @data = data
        @next = nil
    end
    
end


class LinkedList
    attr_reader :size

    def initialize(head = nil)
        @head = head
        @size = 0
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
        @size += 1
        newNode.data
    end

    def insertAtEnd(data)
        if @head == nil
            insertAtBegining(data) 
        else
            newNode = Node.new data
            currentNode = @head
            while(currentNode.next != nil)
                currentNode = currentNode.next
            end
            currentNode.next = newNode
            @size += 1
            newNode.data
        end
    end

    def insertAtPos(data, pos)
        if @head == nil
            insertAtBegining(data) 
        else
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
            @size += 1
            newNode.data
        end
    end

    def delete_first
        currentNode = @head
        if (currentNode != nil)
            @head = currentNode.next
            @size -= 1
            currentNode
        end
    end

    def delete_last
        currentNode = @head
        last_node = currentNode.next
        while (last_node.next != nil)
            currentNode = last_node
            last_node = last_node.next
        end
        currentNode.next = nil
        @size -= 1
        last_node
    end

    def delete_pos(pos)
        if (pos > @size)
            puts "position doesn't exist"
        elsif (pos == 1)
            delete_first
        else
            count = 1
            currentNode = @head
            last_node = nil
            while ((currentNode != nil) && (count < pos))
                count += 1
                last_node = currentNode
                currentNode = currentNode.next
            end
            last_node.next = currentNode.next
            @size -= 1
            currentNode
        end
    end

    def delete_list
        @head = nil
    end


    def print_list
        currentNode = @head
        while (currentNode)
            puts currentNode.data
            currentNode = currentNode.next
        end
    end



end

list = LinkedList.new
list.insertAtEnd(1)
list.insertAtEnd(2)
list.insertAtEnd(3)
list.insertAtEnd(4)
binding.pry


#list.insertAtBegining(1) #[1]
#list.insertAtEnd(2) #[1,2]

list.insertAtPos(4,2) #[1,4,2]

list.print_list

