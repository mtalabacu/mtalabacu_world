class Comment < ActiveRecord::Base
  
  validates_presence_of :content, :name, :email
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
end
