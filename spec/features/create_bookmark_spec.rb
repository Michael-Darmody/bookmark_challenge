
feature 'Adding a new bookmark' do
  scenario 'a user can add a new bookmark' do
    visit('/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
