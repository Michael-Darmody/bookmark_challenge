
feature 'Viewing the bookmarks' do
  scenario 'a user can see all the bookmarks' do

    Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')
    Bookmark.create(url: "https://www.amazon.co.uk", title: 'Amazon')
    Bookmark.create(url: "http://www.google.com", title: 'Google')

    visit('/')
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Amazon',  href: 'https://www.amazon.co.uk')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end
