class User < ActiveRecord::Base
  attr_accessible :username
  has_many :restaurants

  validates :username, :uniqueness => { :message => "Username already taken."}
  #validates :username, :prescence => {:message => "Username needed."}
end
