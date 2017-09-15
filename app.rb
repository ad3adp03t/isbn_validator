require 'sinatra'
require_relative "isbnapp.rb"
enable :sessions

get '/'do
	erb :index
end	
post '/results' do
	session[:isbn] = params[:isbn]
	redirect '/isbn_results'
end	

get '/isbn_results' do
	erb :isbn_results, locals:{isbn: session[:isbn]}
end	