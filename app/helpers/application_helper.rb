module ApplicationHelper

     def set_user
          @user = current_user
     end

     def current_user 
          @current_user ||= User.find_by(id: session[:user_id])
     end

     def logged_in?
          current_user
     end

     def authorized_user? 
          @user == current_user
     end

     def logout!
          session.clear
     end

     def login!
          session[:user_id] = @user.id
    end

     
end