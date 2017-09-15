require 'sinatra'
require_relative "isbnapp.rb"
enable :sessions

get '/'do
	erb :index
end	
post '/results' do
	session[:isbn] = params[:isbn]
	session[:isbn_result] = isbn_cleaner(session[:isbn])
	redirect '/isbn_results'
end	

get '/isbn_results' do
	
	erb :isbn_results, locals:{isbn: session[:isbn], isbn_result: session[:isbn_result]}
end	