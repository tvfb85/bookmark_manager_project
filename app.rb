require 'sinatra/base'
require './app/helpers/dm_config'

class App < Sinatra::Base

  get '/' do
    "Hello world"
  end

  get '/links' do
    arr = []
    Link.all.each { |u| arr << u.url }
    arr.join(", ")
  end

end
