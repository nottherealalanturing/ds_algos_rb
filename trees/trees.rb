require_relative "../stacks/simple_array_stack.rb"
require "pry"

class Node
    attr_accessor :value, :left, :right
    def initialize(data)
        @value = data
        @left = nil
        @right = nil
    end
end

class BinaryTreeNode
        attr_accessor :node
      
        def initialize(value)
          @node = Node.new value
        end
      
      
        def insert(node, value)
            if node.nil?
            return BinaryTreeNode.new(value)
            elsif value < node.value
            node.left = insert(node.left, value)
            elsif value > node.value
            node.right = insert(node.right, value)
            end
        
            return node
        end

        def pre_order_recursive(node_val=node)
            if node_val
                puts "#{node_val.value}"
                pre_order_recursive(node_val.left)
                pre_order_recursive(node_val.right)
            end
        end

        def pre_order_non_recursive(root_node)
            # my stack was created with a capacity parameter hence the 100
            stack = Stack.new(100)
            while true
                while(root_node)
                    puts "#{root_node.data}"
                    stack.push(root_node)
                    root_node = root_node.left
                end
                
                break if stack.is_empty?

                root_node = stack.pop
                root_node = root_node.right
            end
        end

end
  
btn = BinaryTreeNode.new 1




#btn.pre_order_recursive(btn.root)
pry.binding