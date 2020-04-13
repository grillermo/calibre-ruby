module Calibre
  class AbstractAuthor < ActiveRecord::Base
    self.table_name = 'authors'

    has_and_belongs_to_many :books,
      join_table: 'books_authors_link',
      association_foreign_key: 'book',
      foreign_key: 'author'
  end

  class Author < AbstractAuthor; end
end
