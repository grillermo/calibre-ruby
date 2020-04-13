module Calibre
  class AbstractRating < ActiveRecord::Base
    self.table_name = 'ratings'

    has_and_belongs_to_many :books,
      join_table: 'books_ratings_link',
      association_foreign_key: 'book',
      foreign_key: 'rating'
  end

  class Rating < AbstractRating; end
end
