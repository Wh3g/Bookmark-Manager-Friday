feature "update bookmarks" do
  scenario "updates bookmarks" do
    Bookmark.add_bookmark(url: 'http://www.google.com', title: 'Google')
    visit('/bookmarks')

    first('.bookmark').click_button 'Edit'
    fill_in('url', with: 'http://www.amazon.co.uk')
    fill_in('title', with: 'Amazon')
    click_button 'Submit'

    expect(page).to have_link("Amazon", href: "http://www.amazon.co.uk")
  end
end