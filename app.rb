require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'sinatra/activerecord'
require './models'

get '/comment' do
  @histories = Post.all
  erb :comment
end

get '/' do
  erb :index
end

get '/secondpage' do
  erb :secondpage
end

get '/community' do
  erb :community
end

get '/comment' do
  erb :secondpage
end

post '/create' do
  @post = Post.create(
    name:params[:name],
    body:params[:body])

    redirect'/'
end