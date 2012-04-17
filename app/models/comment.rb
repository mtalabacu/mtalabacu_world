class Comment < ActiveRecord::Base
  # Relationship
  belongs_to :commentable, :polymorphic => true
  
  # Validations
  validates_presence_of :content, :name, :email
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
end
