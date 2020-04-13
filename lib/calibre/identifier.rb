class Calibre::Identifier < ActiveRecord::Base
  belongs_to :reference, foreign_key: 'book', class_name: 'Calibre::Book'
  self.table_name = 'identifiers'
  self.inheritance_column = 'noop'

  # We alias reference, because the relationship can't clash with the
  # foreign key
  alias :book :reference
end
