require "test_helper"

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = categories(:one)
  end

  test "title should be present" do
    @category.title = ""
    assert_not @category.valid?
  end

  test "title should not be too short" do
    @category.title = "a" * 2
    assert_not @category.valid?
  end

  test "title should not be too long" do
    @category.title = "a" * 51
    assert_not @category.valid?
  end

  test "user should be present" do
    @category.user = nil
    assert_not @category.valid?
  end
end
