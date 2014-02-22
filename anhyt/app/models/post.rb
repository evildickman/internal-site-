class Post < ActiveRecord::Base
  validates :title,presence: true,uniqueness: true
  validates :content,:slug,presence: true
  default_scope -> {order('created_at DESC')}
end
