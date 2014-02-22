class ActivityPostsController < ApplicationController
  before_action :set_activity_post, only: [:show, :edit, :update, :destroy]
 #before_filter :authenticate,only: [:show,:index]
  # GET /activity_posts
  # GET /activity_posts.json
  def index
    @activity_posts = ActivityPost.all
  end

  # GET /activity_posts/1
  # GET /activity_posts/1.json
  def show
  end

  # GET /activity_posts/new
  def new
    @activity_post = ActivityPost.new
  end

  # GET /activity_posts/1/edit
  def edit
  end

  # POST /activity_posts
  # POST /activity_posts.json
  def create
    @activity_post = ActivityPost.new(activity_post_params)

    respond_to do |format|
      if @activity_post.save
        format.html { redirect_to @activity_post, notice: 'Activity post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_posts/1
  # PATCH/PUT /activity_posts/1.json
  def update
    respond_to do |format|
      if @activity_post.update(activity_post_params)
        format.html { redirect_to @activity_post, notice: 'Activity post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_posts/1
  # DELETE /activity_posts/1.json
  def destroy
    @activity_post.destroy
    respond_to do |format|
      format.html { redirect_to activity_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_post
      @activity_post = ActivityPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_post_params
      params.require(:activity_post).permit(:title, :content)
    end
end
