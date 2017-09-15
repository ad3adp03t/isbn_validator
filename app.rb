require 'sinatra'
require_relative "isbnapp.rb"
require_relative "aws_app.rb"
enable :sessions

get '/'do
	erb :index
end	
post '/results' do
	session[:isbn] = params[:isbn]
	session[:isbn_result] = isbn_cleaner(session[:isbn])
	session[:isbn_bucket] = send_to_bucket(session[:isbn_results])
	session[:get_file] = get_file()
	redirect '/isbn_results'
end	

get '/isbn_results' do

	erb :isbn_results, locals:{isbn: session[:isbn], isbn_result: session[:isbn_result], }
end	