require File.join(File.dirname(__FILE__), '/../../test_helper')

class JournalTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Journal.create!
  end
  
end