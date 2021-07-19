require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example", email: "example@example.com",
                     password: "foobar", password_confirmation: "foobar")

  end

  test "user valid"
    assert @user.valid?
  end
end