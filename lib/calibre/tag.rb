module Calibre
  class AbstractTag < ActiveRecord::Base
    self.table_name = 'tags'

    has_and_belongs_to_many :books,
      join_table: 'books_tags_link',
      association_foreign_key: 'book',
      foreign_key: 'tag'
  end

  class Tag < AbstractTag; end
end
