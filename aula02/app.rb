# encoding: utf-8

require 'sinatra'

get '/' do
	erb :index
end

get '/form/:nome' do
	@nome = params[:nome]
	erb :form 
end

get '/hello' do
	erb :hello
end

post '/bom-dia' do
	@nn = params[:nome]
	erb :form
end