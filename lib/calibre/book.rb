module Calibre
  # We do this to prevent AR to fail miserably because the foreign key
  # name is the same as the class
  class AbstractBook < ActiveRecord::Base
    has_many :data, foreign_key: 'book', class_name: 'Calibre::Data'
    has_many :comments, foreign_key: 'book', class_name: 'Calibre::Comment'
    has_many :identifiers, foreign_key: 'book', class_name: 'Calibre::Identifier'
    self.table_name = 'books'

    %w[author publisher rating tag].each do |association|
      has_and_belongs_to_many "#{association}s".to_sym,
        join_table: "books_#{association}s_link",
        association_foreign_key: association,
        foreign_key: 'book'
    end

    # This association is pluralized
    has_and_belongs_to_many :series,
      join_table: "books_series_link",
      association_foreign_key: 'series',
      foreign_key: 'book'

    # And this one is weirdly name
    has_and_belongs_to_many :languages,
      join_table: "books_languages_link",
      association_foreign_key: 'lang_code',
      foreign_key: 'book'

    def cover
      File.join(path, 'cover.jpg')
    end

    def cover?
      has_cover == 1
    end
  end

  # You can use this :)
  class Book < AbstractBook ; end
end
