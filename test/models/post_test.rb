require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Should not save post without title" do
    new_post = Post.new

    assert_not new_post.save, "Saving the post without title"
  end

  test "Should save post with required fields" do
    new_post = Post.new({ :title => "test title" })

    assert new_post.save, "Not saving post with required fields in place"
  end
end
