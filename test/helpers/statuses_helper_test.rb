require 'test_helper'

class StatusesHelperTest < ActionView::TestCase
	test "that a status requires content" do 
		status = Status.new
		assert !status.save
		assert !status.errors[:content].empty?
	end
	test "content is at least 2 letters long" do 
		status = Status.new
		status.content = "H"
		assert !status.save
		assert !status.errors[:content].empty?
	end
	test "user should have a user id" do 
		status = Status.new
		status.content = "hello"
		assert !status.save
		assert !status.errors[:user_id].empty?
	end
end
