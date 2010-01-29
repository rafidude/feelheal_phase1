require File.join(File.dirname(__FILE__), '/../../test_helper')

class DvdListTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert DvdList.create!
  end
  
end