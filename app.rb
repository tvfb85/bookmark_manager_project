require 'sinatra/base'
require './app/helpers/dm_config'
require './lib/bookmark_manager'

ENV['RACK_ENV'] ||= 'development'

class App < Sinatra::Base

  enable :sessions

  get '/' do
    session[:bookmark_manager] = BookmarkManager.new
    redirect '/links'
  end

  get '/links' do
    @links = session[:bookmark_manager].show_links
    erb :links
  end

  get '/links/new' do
    erb :new
  end

  post '/links' do
    session[:bookmark_manager].add_link(params)
    redirect '/links'
  end

end
