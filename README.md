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
