# encoding: utf-8

require 'sinatra'

get '/' do
	erb :index
end

get '/ola' do
	erb :ola
end

get '/teste' do
	erb :teste
end
