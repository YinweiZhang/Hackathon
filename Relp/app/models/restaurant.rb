class Restaurant < ActiveRecord::Base
  attr_accessible :downvotes, :name, :category, :upvotes, :owner
  belongs_to( :owner,
              :class_name => "User", 
              :foreign_key => :user_id, 
              :primary_key => :id) 

  validates :name, :uniqueness => { :message => "Name has already been submitted." }
  #validates :name, :prescence => { :message => "No name entered." }
  #validates :category, :prescence => { :message => "Needs a category. "}
end
