class Node
  attr_accessor :left_child, :right_child
  attr_reader :score, :name
  def initialize(score, name)
    @score = score
    @name = name
    @right_child = nil
    @left_child = nil
  end

end
