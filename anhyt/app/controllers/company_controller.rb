class CompanyController < ApplicationController
  before_action :authenticate,only: [:admin_index]
  def index
    @posts=Post.paginate(:page=>params[:page],:per_page=>10)
    @project_posts=ProjectPost.paginate(:page=>params[:page],:per_page=>10)
    @activity_posts=ActivityPost.paginate(:page=>params[:page],:per_page=>10)
  end
  def pre_index
  end
  def info
    render "jianjie"
  end
  def admin_index
   $end
  end
  def posts_list
    @posts=Post.paginate(:page=>params[:page],:per_page=>10)
    render "posts_list"
  end
   def project_posts_list
    @project_posts=ProjectPost.paginate(:page=>params[:page],:per_page=>10)
    render "project_posts_list"
  end
   def activity_posts_list
    @activity_posts=ActivityPost.paginate(:page=>params[:page],:per_page=>10)
    render "activity_posts_list"
  end
end