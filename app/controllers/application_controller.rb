class ApplicationController < ActionController::Base
    
    include SessionsHelper
    
    private
    
    def require_user_logged_in
        unless logged_in?
        redirect_to login_url
        end
    end
    
    def counts(user)
        @counts_microposts = user.microposts.count
        @count_followings = user.followings.count
        @count_followers = user.followers.count
        @count_like = user.register_favorite.count
        @count_receive_favorite = user.receive_favorite.count
    end
    
end
