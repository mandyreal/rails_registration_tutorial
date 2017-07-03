require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @subject = User.new
  end

  should validate_presence_of(:email)
  
  test "email should be unique" do
    create(:user, email: "email@domain.com")
   
    @subject.email = "email@domain.com"
    @subject.valid?
   
    assert_includes(@subject.errors[:email], "has already been taken")
  end
  
  test "user should be authentic able" do
    user = create(:user, password: "password")
 
    assert_not(user.authenticate("qwerty"))
 
    assert(user.authenticate("password"))
  end
end
