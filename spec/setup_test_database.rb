require 'pg'
# This acts a a script setting up a fresh database then cleaning it when running tests

def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("TRUNCATE bookmarks;")
end
