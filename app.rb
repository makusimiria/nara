require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

post '/create' do
  @post=Post.create(
    name:params[:name],
    body:params[:body])

    redirect'/'
end