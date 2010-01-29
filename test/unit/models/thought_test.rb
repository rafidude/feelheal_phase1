require File.join(File.dirname(__FILE__), '/../../test_helper')

class ThoughtTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Thought.create!
  end
  
end