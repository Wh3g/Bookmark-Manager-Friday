feature 'Deleting a new bookmark' do
  scenario 'A user can delete a bookmark to the Bookmark Manager' do
      Bookmark.add_bookmark(url: 'http://www.google.com', title: 'Google')
      visit('/bookmarks')
      expect(page).to have_link('Google', href: 'http://www.google.com')

      first('.bookmark').click_button 'Delete'
      # page.find("#Delete", visible: false).click

      expect(page).not_to have_link('Google', href: 'http://google.com')
  end
end