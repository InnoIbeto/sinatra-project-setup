require './config/environment'

class UsersController <ApplicationController
    get '/stage1' do
    #     # this saves sign up info in the database
        save_signup = User.create(email: params[:email], user_name: params[:signup_uname], pass_word: params[:signup_ps])
    end
end