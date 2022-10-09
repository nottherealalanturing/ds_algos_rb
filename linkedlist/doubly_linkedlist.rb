require 'pry'

class DLLNode
    attr_accessor :data, :next, :prev

    def initialize(data=nil)
        @data = data
        @next = nil
        @prev = nil
    end
end


class DLL
    attr_accessor :size

    def initialize(dllnode=nil)
        @head = dllnode
        @size = 0
    end

    def insertAtBegining(data)
        if @size == 0
            @head = DLLNode.new(data)
            @size += 1
        else
            new_dllnode = DLLNode.new(data)
            new_dllnode.next = @head
            @head.prev = new_dllnode
            @head = new_dllnode
            @size += 1
            new_dllnode.data
        end
    end

    def insertAtEnd(data)
        if @size == 0
            insertAtBegining(data)
        else
            new_dllnode = DLLNode.new(data)
            current_node = @head
            while (current_node.next != nil)
                current_node = current_node.next
            end
            current_node.next = new_dllnode
            new_dllnode.prev = current_node
        end
    end

    def insertAtPos(data, pos)
        current_node = @head
        if pos == 1
            insertAtBegining(data)
        else
            count = 1
            while (current_node.next != nil && count < pos)
                current_node = current_node.next
                count += 1
            end
            temp_node = DLLNode.new(data)
            before_node = current_node.prev
            
            before_node.next = temp_node
            temp_node.prev = before_node
            temp_node.next = current_node
            @size += 1
            temp_node.data
        end
    end

    def delete_first
        if @size == 0
            return
        end
        temp_node = @head
        @head = temp_node.next
        temp_node.data
        @size -= 1

    end

    def delete_last
        if @size == 0
            return
        elsif @size == 1
            delete_first
        else
            temp_node = @head
            while (temp_node.next)
                temp_node = temp_node.next
            end
            last_node = temp_node.prev
            last_node.next = nil
            @size -= 1
            temp_node.data
        end
    end

    def delete_pos(pos)
        temp_node = @head
        if (pos > @size)
            puts "position doesn't exist"
        elsif (pos == 1)
            delete_first
        else
            count = 1
            while(temp_node.next && count < pos)
                temp_node = temp_node.next
                count += 1
            end
            prev_node = temp_node.prev
            prev_node.next = temp_node.next
            temp_node.prev = prev_node
            @size -= 1
            temp_node.data
        end

    end

    def print_dll_list
        if @size == 0
            return
        end
        current_node = @head
        while (current_node.next != nil)
            puts current_node.data
            current_node = current_node.next
        end
        puts current_node.data

    end
end

list = DLL.new

list.insertAtBegining(3)
list.insertAtBegining(2)
list.insertAtBegining(1)

binding.pry
list.print_dll_list
