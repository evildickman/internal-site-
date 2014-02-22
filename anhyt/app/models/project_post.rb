class ProjectPost < ActiveRecord::Base
  validates :title,presence: true,uniqueness: true
  validates :content,presence: true
  default_scope -> {order('created_at DESC')}
end
