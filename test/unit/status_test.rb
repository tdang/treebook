require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "status should require content" do
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:content].empty?
  end

  test "status should be at least 2 letters long" do
  	status = Status.new
  	status.content = "H"
  	assert !status.save
  	assert !status.errors[:content].empty?
  end

  test "status should have a user ID" do
  	status = Status.new
  	status.content = "Hello"
  	assert !status.save
  	assert !status.errors[:user_id].empty?
  end
end
