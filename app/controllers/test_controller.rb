# require 'sinatra'
require './config/environment'

class TestController < ApplicationController
    get '/test' do
        puts User.all
        erb :"test/test"
    end
end