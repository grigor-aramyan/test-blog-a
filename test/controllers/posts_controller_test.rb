require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should create post" do
    assert_difference("Post.count") do
      post posts_url, params: { post: { title: "test title" } }, as: :json
    end

    assert_response :success
  end

  test "should not create post without required title" do
    post posts_url, params: { post: { text: "test body text" } }, as: :json

    assert_response 400
  end

end
