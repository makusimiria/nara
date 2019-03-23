require 'bundler/setup'
Bundler.require

if development?
  ActiveRecord::Base.establish_connection("sqlite3:db/development.db")
end

ActiveREcird::Base.establish_connection('sqlite3:db/deveopment.db')

class Post < ActiveRecord::Base
end