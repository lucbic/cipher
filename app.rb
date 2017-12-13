require_relative 'cipher'
require 'sinatra'


if development?
  require "better_errors"
  require 'pry'
  require 'sinatra/reloader'
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path("..", __FILE__)
end

get '/' do
  erb :index
end

post "/" do
  @ciphered = caesar_cipher(params[:to_cipher], params[:shift].to_i, to_b(params[:direction]))
  erb :index
  # redirect "/"
end
