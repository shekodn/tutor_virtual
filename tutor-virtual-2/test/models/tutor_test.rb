require 'test_helper'

class TutorTest < ActiveSupport::TestCase
  def setup
    @tutor = Tutor.new(email: "tutor@example.com")
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @tutor.email = valid_address
      assert @tutor.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com, foo@bar..com]
    invalid_addresses.each do |invalid_address|
      @tutor.email = invalid_address
      assert_not @tutor.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
end
