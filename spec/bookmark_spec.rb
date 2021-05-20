require 'bookmark'
require 'database_helper'

describe Bookmark do
    
    describe '.add_bookmark' do
        it 'adds a new bookmark' do
            bookmark = Bookmark.add_bookmark(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
            persisted_data = persisted_data(id: bookmark.id)

            expect(bookmark).to be_a Bookmark
            expect(bookmark.id).to eq(persisted_data['id'])    
            expect(bookmark.url).to eq 'http://www.testbookmark.com'
            expect(bookmark.title).to eq 'Test Bookmark'
        end
    end
    
    describe '.delete' do
        it 'deletes a bookmark by id' do
            bookmark = Bookmark.add_bookmark(title: 'Test', url: 'http://www.test.com')
            Bookmark.delete(id: bookmark.id)

            expect(Bookmark.all_bookmarks.length).to eq 0
        end
    end

    describe '.update' do
        it 'updates a bookmark' do
            bookmark = Bookmark.add_bookmark(title: 'Test', url: 'http://www.test.com')
            new_bookmark = Bookmark.update(id: bookmark.id, title: "Update", url: "http://www.update.com")

            expect(new_bookmark.first['id']).to eq bookmark.id
            expect(new_bookmark.first['title']).to eq "Update"
            expect(new_bookmark.first['url']).to eq "http://www.update.com"
        end
    end
end