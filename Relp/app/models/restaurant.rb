class Restaurant < ActiveRecord::Base
  attr_accessible :downvotes, :name, :type, :upvotes
  belongs_to( :owner,
              :class_name => "User", 
              :foreign_key => :user_id, 
              :primary_key => :id) 
end
