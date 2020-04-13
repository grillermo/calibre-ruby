module Calibre
  class AbstractSeries < ActiveRecord::Base
    self.table_name = 'series'

    has_and_belongs_to_many :books,
      join_table: 'books_series_link',
      association_foreign_key: 'book',
      foreign_key: 'series'
  end

  class Series < AbstractSeries; end
end
