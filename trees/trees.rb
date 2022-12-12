class BinaryTreeNode

    attr_accessor :data, :left, :right
    def initialize(data)
        @data = data
        @left = new BinaryTreeNode
        @right = new BinaryTreeNode
    end

end