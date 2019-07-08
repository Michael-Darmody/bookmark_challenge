require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  # get '/' do
  #   'Bookmark manager ready to go!'
  # end

  get '/' do
    @bookmarks = Bookmark.all
    erb(:index)
  end

  get '/new' do
    erb(:new)
  end

  post '/' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/'
  end

  run! if app_file == $0
end
