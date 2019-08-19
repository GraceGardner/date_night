class BinarySearchTree

  def initialize
    @root = nil
    @current_node = nil
  end

  def insert(score, name)
    if !@root
      @root = Node.new(score, name)
      layer = 0
    else
      @current_node = @root
      layer = compare(score)
      insert_child(score, name)
    end
    layer
  end

  def compare(score, layer=0)
    if score > @current_node.score
      go_right(score, layer)
    else
      go_left(score, layer)
    end
  end

  private

  def go_right(score, layer)
    if @current_node.right_child
      @current_node = @current_node.right_child
      compare(score, layer + 1)
    else
      layer += 1
    end
  end

  def go_left(score, layer)
    if @current_node.left_child
      @current_node = @current_node.left_child
      compare(score, layer + 1)
    else
      layer += 1
    #it goes to the left
    end
  end

  def insert_child(score, name)
    if score > @current_node.score
      @current_node.right_child = Node.new(score, name)
    else
      @current_node.left_child = Node.new(score, name)
    end
  end
end
