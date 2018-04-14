Rails.application.routes.draw do

  devise_for :users
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
  	member do
		put "like", to: "posts#upvote"
    	put "dislike", to: "posts#downvote"
    end
   end

  resources :messages do
  	member do
		put "like", to: "posts#upvote"
    	put "dislike", to: "posts#downvote"
    end
   end



  authenticated :user do
    root 'posts#index', as: :authenticated_root
    
  
  end



  root "posts#landing"


end
