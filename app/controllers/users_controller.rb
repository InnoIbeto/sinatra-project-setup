require './config/environment'

class UsersController <ApplicationController

    get '/signup_stage' do
    #     # this saves sign up info in the database
        if User.create(email: params[:email], user_name: params[:signup_uname], pass_word: params[:signup_ps]).valid?
            redirect '/login'
        else
            redirect '/'
        end
    end

    get '/login_stage' do
        #this authenticates your details

        logged_msg = "you have successfully logged in"
        error_msg = "incorrect username or password"
     
            if User.where(user_name: params[:login_uname], pass_word: params[:login_ps]).exists?
                logged_msg
            else
                error_msg
            end 
    end
end