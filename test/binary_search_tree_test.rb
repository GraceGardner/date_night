require "minitest/autorun"
require "minitest/pride"
require "./lib/binary_search_tree"

class BinarySearchTreeTest < Minitest::Test

  def test_that_insert_returns_layer
    tree = BinarySearchTree.new
    expected = tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 0, expected
  end

  def test_can_insert_multiple_nodes
    tree = BinarySearchTree.new
    expected = tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 0, expected
    expected = tree.insert(16, "Johnny English")
    assert_equal 1, expected
    expected = tree.insert(92, "Sharknado 3")
    assert_equal 1, expected
    expected = tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 2, expected
  end
end
