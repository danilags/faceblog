class BlogsController < ApplicationController
  before_action :set_blog_id, only: [:show, :update]
  
  def index
    @blogs = Blog.all
    # render json: @blogs, status: :ok
    render_response(@blogs)
  end

  def show
    @blog = Blog.find(params[:id])
    # render json:{ data: @blog, message: 'Berhasil get details'}, status: :ok
    render_response(@blog)
  end

  def update 
    @find_blog = Blog.find(parans[:id])
    @find_blog.update(blog_body)
    render_response(@find_blog)
  end

  def destroy 
    @blog.destroy
    render_response(@blog)
  end

  def create
    @create_blog = Blog.create!(blog_body)
    render_response(@create_blog)
  end

  def blog_body
    params.permit(:content, :title)
  end

  def set_blog_id 
    @blog = Blog.find(params[:id])
  end

end
