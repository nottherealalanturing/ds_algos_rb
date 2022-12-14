require "pry"
require_relative "../stacks/simple_array_stack.rb"

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
      
    def pre_order_recursive(node_val=node)
        if node_val
            print "#{node_val.value} - "
            pre_order_recursive(node_val.left)
            pre_order_recursive(node_val.right)
        end
    end

    def pre_order_non_recursive(node_val=node)
        stack = Stack.new 100
        while true
            while node_val
                print "#{node_val.value} - "
                stack.push(node_val)
                node_val = node_val.left
            end
            
            break if stack.is_empty?

            node_val = stack.pop

            node_val= node_val.right
        end
    end

    def in_order_recursive(node_val=node)
        if node_val
            in_order_recursive(node_val.left)
            print "#{node_val.value} - "
            in_order_recursive(node_val.right)
        end
    end

    def post_order_recursive(node_val=node)
        if node_val
            post_order_recursive(node_val.left)
            post_order_recursive(node_val.right)
            print "#{node_val.value} - "
        end
    end

=begin  
    def level_order
        asdasd
    end
=end

end
  
btn = BinaryTreeNode.new 1
btn.node.left = Node.new 2
btn.node.left.left = Node.new 4
btn.node.left.right = Node.new 5
btn.node.right = Node.new 3
btn.node.right.left = Node.new 6
btn.node.right.right = Node.new 7




#btn.pre_order_recursive(btn.root)
pry.binding