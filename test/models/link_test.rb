require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @link = Link.new(title: "My blog", url: "https://myblog-254.herokuapp.com")
  end

  test "title should not be blank" do
    @link.title = "  " * 5

    assert_not @link.valid?
  end

  test "url should not be blank" do
    @link.url = "   " * 5

    assert_not @link.valid?
  end

end
