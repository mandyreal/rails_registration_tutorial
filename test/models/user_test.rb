require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @subject = User.new
  end

  should validate_presence_of(:email)
end
