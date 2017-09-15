require 'sinatra'
require_relative "isbnapp.rb"
enable :sessions

get '/'do
	erb :index
end