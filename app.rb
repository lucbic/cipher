require_relative 'cipher'
require 'sinatra'
if development?
  require 'sinatra/reloader'
end

get '/' do
  erb :index
end

post "/" do
  @ciphered = caesar_cipher(params[:to_cipher], 3)
  erb :index
  # redirect "/"
end
