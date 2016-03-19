require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(username: "Akshay123", email:"akshay@example.com", password: "password")
  end
  
  test "should be vaild" do
   assert @user.valid?
  end
  
  test "username should be present" do
    @user.username = " "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end
  
  test "username should not be to long" do
    @user.username = "akshay" * 52
    assert_not @user.valid?
  end
  
  test "email should not be to long" do
    @user.email = "akshay" * 110 + "@example.com" 
    assert_not @user.valid?
  end
  
   test "email validation should accept valid address" do
    valid_addresses = %w[abc@abc.com abc@xyz.org abc.xyz@pqr.com abc+pqr@xyz.in]
    valid_addresses.each do |valid_address| 
      @user.email = valid_address 
      assert @user.valid? , "#{valid_address} should be valid"
    end   
  end

  test "username should be uniqueness" do
    duplicate_user = @user.dup 
    duplicate_user.email = @user.username.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "email should be uniqueness" do
    duplicate_user = @user.dup 
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

end