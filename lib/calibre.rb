require 'sqlite3'
require 'active_record'

require_relative 'calibre/author'
require_relative 'calibre/book'
require_relative 'calibre/data'
require_relative 'calibre/comment'
require_relative 'calibre/identifier'
require_relative 'calibre/publisher'
require_relative 'calibre/rating'
require_relative 'calibre/tag'
require_relative 'calibre/series'
require_relative 'calibre/language'

module Calibre
  def self.db=(calibre_db)
    ActiveRecord::Base.establish_connection(adapter: 'sqlite3',
      database: calibre_db)
  end
end
