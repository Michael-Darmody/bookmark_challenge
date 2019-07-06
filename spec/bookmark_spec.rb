require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'lists all of the bookmarks' do
      Bookmark.create(url: "http://www.makersacademy.com")
      Bookmark.create(url: "https://www.amazon.co.uk")
      Bookmark.create(url: "http://www.google.com")
      
      bookmarks = Bookmark.all

      expect(bookmarks).to include('https://www.amazon.co.uk')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.makersacademy.com')
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com')

      expect(Bookmark.all).to include 'http://www.testbookmark.com'
    end
  end
end
