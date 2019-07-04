require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark manager ready to go!'
  end

  run! if app_file == $0
end
