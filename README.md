# About this clone
The original repository is on https://0xacab.org/pip/calibre-ruby
I downloaded the code and initialized a new repository because i could not 
make an account on 0xacab.org, registration is closed.

The original need was to remove the SQLite dependency to be able to use this
gem on heroku.

ActiveRecord for Calibre's book database!

# Usage

Install:

```ruby
gem install calibre-ruby
```

Open database:

```ruby
require 'calibre'

Calibre.db = '/path/to/metadata.db'
```

Work with models:

```ruby
# Get all books
Calibre::Book.all

# Get book authors
Calibre::Book.find(1).authors

# Get book files
Calibre::Book.find(1).data.map(&:path)

# Get book cover
Calibre::Book.find(1).cover
```
