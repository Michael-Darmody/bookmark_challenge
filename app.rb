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

  run! if app_file == $0
end
