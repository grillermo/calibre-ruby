module Calibre
  class AbstractLanguage < ActiveRecord::Base
    self.table_name = 'languages'

    has_and_belongs_to_many :books,
      join_table: 'books_languages_link',
      association_foreign_key: 'book',
      foreign_key: 'lang_code'
  end

  class Language < AbstractLanguage; end
end
