require "minitest/autorun"
require "minitest/pride"
require "./lib/node.rb"

class NodeTest < Minitest::Test

  def test_that_it_has_attributes
    node = Node.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal 61, node.score
    assert_equal "Bill & Ted's Excellent Adventure", node.name
  end

  def test_it_had_children
    node = Node.new(61, "Bill & Ted's Excellent Adventure")
    left_child = Node.new(16, "Johnny English")
    right_child = Node.new(92, "Sharknado 3")
    node.left_child = left_child
    node.right_child = right_child
    assert_equal node.left_child, left_child
    assert_equal node.right_child, right_child
  end
end
