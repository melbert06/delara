class MessagesController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	

	def index

		# @post = Post.all
		 @post = Post.select(Arel.star).where(Post.arel_table[:user_id].eq(current_user.id))
		if Post.select(:post_id).where(Post.arel_table[:user_id].eq(2))

		else 
			render 'nothing'
		end	 
	end

	# def upvote 
 #  		@post = Post.find(params[:id])
 #  		@post.upvote_by current_user
 #  		redirect_back fallback_location: root_path
	# end  

	# def downvote
 #  		@post = Post.find(params[:id])
 #  		@post.downvote_by current_user
 #  		redirect_back fallback_location: root_path
	# end
	# def show
	# 	@post = Post.find(params[:id])
	# end 

	

	# def new 
	# 	@post = current_user.post.build
	# end
	# def create 
	# 	@post = current_user.post.build(post_params)
	# 	if @post.save
	# 		redirect_to @post
	# 	else 
	# 		render 'new'
	# 	end
	# end
	# def edit

	# end
	# def update
	# 	if @post.update(post_params)
	# 		redirect_to @post
	# 	else
	# 		render 'edit'
	# 	end
	# end

	# def destroy
	# 	@post.destroy
	# 	redirect_to root_path
	# end


	# private 

	# def find_post
	# 	@post = Post.find(params[:id])
	# end

	# def post_params 
	# 	params.require(:post).permit(:title, :content)
	# end
end
