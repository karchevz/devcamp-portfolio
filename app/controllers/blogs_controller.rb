class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]
<<<<<<< HEAD
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :toggle_status]}, site_admin: :all

  layout "blog"
  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.page(params[:page]).per(5)
    # @blogs = Blog.featured_blogs
    # @blogs = Blog.all
=======
  before_action :set_sidebar_topics, except: [:update, :create, :destroy, :toggle_status]
  layout "blog"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :toggle_status]}, site_admin: :all

  # GET /blogs
  # GET /blogs.json
  def index
    if logged_in?(:site_admin)
      @blogs = Blog.recent.page(params[:page]).per(5)
    else
      @blogs = Blog.published.recent.page(params[:page]).per(5)
    end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
    @page_title = "My Portfolio Blog"
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
<<<<<<< HEAD
    @page_title = @blog.title
    @seo_keywords = @blog.body
=======
    if logged_in?(:site_admin) || @blog.published?
      @blog = Blog.includes(:comments).friendly.find(params[:id])
      @comment = Comment.new

      @page_title = @blog.title
      @seo_keywords = @blog.body
    else
      redirect_to blogs_path, notice: "You are not authorized to access this page"
    end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  # GET /blogs/new
  def new
<<<<<<< HEAD
    @blog = Blog.new 
    @topic = Topic.find(1)      
=======
    @blog = Blog.new
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
<<<<<<< HEAD
    byebug
=======
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
<<<<<<< HEAD
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
=======
        format.html { redirect_to @blog, notice: 'Your post is now live.' }
      else
        format.html { render :new }
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
<<<<<<< HEAD
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }        
      else
        format.html { render :edit }        
=======
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
=======
      format.html { redirect_to blogs_url, notice: 'Post was removed.' }
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
      format.json { head :no_content }
    end
  end

  def toggle_status
<<<<<<< HEAD
    #byebug
    if @blog.draft?
      @blog.published! 
    else
      @blog.draft!
    end     
    #byebug
    redirect_to blogs_url, notice: 'Post status has been updated'
=======
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
        
    redirect_to blogs_url, notice: 'Post status has been updated.'
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
<<<<<<< HEAD
      params.require(:blog).permit(:title, :body, :topic_id)
=======
      params.require(:blog).permit(:title, :body, :topic_id, :status)
    end

    def set_sidebar_topics
      @side_bar_topics = Topic.with_blogs
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
    end
end
