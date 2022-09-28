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
    
    get '/login' do
        erb :login
    end
end