module UsersHelper
    def current_user
        current_user = User.find(session[:user_id])
    end
    
    def redirect_to_signin
        if !session[:user_id]
            redirect_to '/signin'
        end

        if session[:user_id] != current_user 
            redirect_to '/signin'
        end
    end

end
