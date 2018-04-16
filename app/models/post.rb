class Post < ApplicationRecord
	
 	acts_as_votable
    belongs_to :user
	 # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  #  has_many :post
 


end


