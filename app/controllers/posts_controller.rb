class PostsController < ApplicationController
  def create
    msg = {:name => 'john', :age => 21}
    render :json => msg
  end
end
