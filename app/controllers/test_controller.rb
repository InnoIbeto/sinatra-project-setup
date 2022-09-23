# require 'sinatra'
require './config/environment'

class TestController < ApplicationController
    get '/test' do
        erb :"test/test"
    end
end