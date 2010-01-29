require File.join(File.dirname(__FILE__), '/../../test_helper')

class PassageTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Passage.create!
  end
  
end