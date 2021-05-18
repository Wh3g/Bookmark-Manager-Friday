require 'pg'

p "Setting up test datasbase ..."

connection = PG.connect(dbname: 'bookmark_manager_test')

# Clear the bookmarks table
connection.exec("TRUNCATE bookmarks;")