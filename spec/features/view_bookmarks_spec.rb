
feature 'Viewing the bookmarks' do
  scenario 'a user can see all the bookmarks' do
    visit('/')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('https://www.amazon.co.uk')
  end
end
