class Post < ApplicationRecord
	
 	acts_as_votable
    belongs_to :user
	 # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  #  has_many :post
 


end


@post = Post.new( :title => 'thea')
@post.save 
@post.liked_by @user
@post.votes_for.size  #=> 1 