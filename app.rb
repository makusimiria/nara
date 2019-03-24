require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'sinatra/activerecord'
require './models'

get '/' do
  @histories = Post.all
  erb :index
end

post '/create' do
  @post = Post.create(
    name:params[:name],
    body:params[:body])

    redirect'/'
end