class Calibre::Data < ActiveRecord::Base
  belongs_to :reference, foreign_key: 'book', class_name: 'Calibre::Book'
  self.table_name = 'data'

  # We alias reference, because the relationship can't clash with the
  # foreign key
  alias :book :reference

  def path
    File.join(reference.path, [name,format.downcase].join('.'))
  end
end
