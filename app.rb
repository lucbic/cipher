require_relative 'cipher'
require 'sinatra'

if development?
  require 'pry'
  require 'sinatra/reloader'
end

get '/' do
  erb :index
end

post "/" do
  @ciphered = caesar_cipher(params[:to_cipher], params[:shift].to_i, to_b(params[:direction]))
  erb :index
  # redirect "/"
end
