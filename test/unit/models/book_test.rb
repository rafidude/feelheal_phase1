require File.join(File.dirname(__FILE__), '/../../test_helper')

class BookTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Book.create!
  end
  
end