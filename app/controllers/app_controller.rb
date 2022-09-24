# require 'sinatra'
require './config/environment'

class ApplicationController < Sinatra::Base
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/' do
        erb :signup
    end

    get '/stage1' do
        email = params[:email]
        user_name = params[:signup_uname]
        pass_word = params[:signup_ps]

        erb :login
    end

    post '/stage2' do
        user_name = params[:login_uname]
        pass_word = params[:login_ps]

       "no error thus far, unto the next! "
    end
end