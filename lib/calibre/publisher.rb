module Calibre
  class AbstractPublisher < ActiveRecord::Base
    self.table_name = 'publishers'

    has_and_belongs_to_many :books,
      join_table: 'books_publishers_link',
      association_foreign_key: 'book',
      foreign_key: 'publisher'
  end

  class Publisher < AbstractPublisher; end
end
