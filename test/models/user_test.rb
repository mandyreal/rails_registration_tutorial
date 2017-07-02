require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @subject = User.new
  end

  should validate_presence_of(:email)
  
  test "email should be a valid email address" do 
    @subject.email = "invalid"
    @subject.valid?
    
    assert_includes(@subject.errors[:email], "it is not an email")
  end
end
