require "pry"

class CLLNode
    attr_accessor :data, :next

    def initialize(data=nil)
        @data = data
        @next = nil
    end
end

class CLL
    def initialize(data=nil)
        @head = data
    end

    def list_length
        current_node = @head
        count = 0
        if (@head == nil)
            return 0
        end
        while(current_node)
            count += 1
            current_node = current_node.next
            break if current_node == @head
        end
        count
    end

    def print_cll_list
        current_node = @head
        count = 0
        if (@head == nil)
            return 0
        end
        while(current_node)
            puts current_node.data
            count += 1
            current_node = current_node.next
            break if current_node == @head
        end
    end

    def insertAtEnd(data)
        current_node = @head
        new_cllnode = CLLNode.new(data)
        new_cllnode.next = new_cllnode
        
        if (@head == nil)
            @head = new_cllnode
        else
            while(current_node.next != @head)
                current_node = current_node.next
            end
            current_node.next = new_cllnode
            new_cllnode.next = @head
            new_cllnode.data
        end
    end

    def insertAtBegining(data)
        current_node = @head
        new_cllnode = CLLNode.new(data)
        new_cllnode.next = new_cllnode
        count = 0
        if (@head == nil)
            @head = new_cllnode
        else
            while (current_node.next != @head)
                current_node = current_node.next
            end
            new_cllnode.next = @head
            current_node.next = new_cllnode
            @head = new_cllnode
            new_cllnode.data
        end
    end

    def deleteLastNode
        if list_length < 1
            return
        elsif list_length == 1
            @head = nil
        else
            tempNode = @head
            current_node = nil
            while(tempNode.next != @head)
                current_node = tempNode
                tempNode = tempNode.next
            end
            current_node.next = tempNode.next
        end
    end

    def deleteFirstNode
        if list_length < 1
            return
        elsif list_length == 1
            @head = nil
        else
            current_node = @head
            while(current_node.next != @head)
                current_node = current_node.next
            end
            current_node.next = @head.next
            @head = @head.next
        end
    end


end

list = CLL.new


binding.pry