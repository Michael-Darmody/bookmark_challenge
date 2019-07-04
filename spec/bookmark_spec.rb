require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'lists all of the bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include('https://www.amazon.co.uk')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.makersacademy.com')
    end
  end
end
