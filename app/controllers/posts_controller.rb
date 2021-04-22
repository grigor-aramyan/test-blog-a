class PostsController < ApplicationController
  def create
    new_post = Post.new(post_params)

    if new_post.save
      render :json => { :msg => 'created', :post => new_post }, :status => 201
    else
      render :json => { :msg => 'could not save post', :post => nil }, :status => 400
    end

  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
