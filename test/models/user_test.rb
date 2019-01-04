require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Thelonius Monk", email: "thelonius@yahoo.com")
  end

  test "user should be valid" do
    assert @user.valid?
  end
    
  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "name is not too long" do
    @user.name = "z" * 101
    assert_not @user.valid?
  end

  test "email is not too long" do
    @user.email = "z" * 101 + "@foo.com"
    assert_not @user.valid?
  end

  test "allowed email addresses are valid" do
    valid_emails = ["coltrane@gmail.com", "COLTRANE@GMAIL.COM",
                    "COL-TRA_ne@abc.zyx.net", "col.trane@gmail.com",
                    "col+tRAne@training.org"]

    valid_emails.each do |email|
      @user.email = email

      assert @user.valid?, "#{email.inspect} should be valid" 
    end
  end

  test "disallowed email addresses are invalid" do
    invalid_emails = ["coltrane_at_gmail.com", "COLTRANE@GMAIL,COM",
                      "COL-TRA_ne@abc@zyx.net", "col.trane@gmail/com",
                      "col+RAne@train+ing.org"]

    invalid_emails.each do |email|
      @user.email = email

      assert_not @user.valid?, "#{email.inspect} should be invalid" 
    end
  end

  test "non-unique email addresses are invalid" do 
    same_user = @user.dup

    same_user.email = @user.email.upcase

    @user.save
    assert_not same_user.valid?

  end

end
