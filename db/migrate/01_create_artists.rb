mechanics-of-migrations-v-000/
  config/
    environment.rb
  db/
    migrate/
      01_create_artists.rb
  spec/
    artist_spec.rb
    spec_helper.rb
  .gitignore
  .learn
  .rspec
  artist.rb
  CONTRIBUTING.md
  Gemfile
  Gemfile.lock
  LICENSE.md
  Rakefile
  README.md

class CreateArtists < ActiveRecord::Migration
  def up
  end
 
  def down
  end
  
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end
  
  connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)

class CreateArtists < ActiveRecord::Migration
  def change
  end
end
 
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)

class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end
end

def change
  create_table :artists do |t|
  end
end
 
ActiveRecord::Base.connection.execute(sql)
end

require 'bundler/setup'
Bundler.require
 
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)

class Artist 
end

a = Artist.new(name: 'Jon')
# => #<Artist id: nil, name: "Jon", genre: nil, age: nil, hometown: nil>
 
a.age = 30
# => 30
 
a.save
# => true

Artist.create(name: 'Kelly')
# => #<Artist id: 2, name: "Kelly", genre: nil, age: nil, hometown: nil>
Return an array of all Artists from the database:

Artist.all
# => [#<Artist id: 1, name: "Jon", genre: nil, age: 30, hometown: nil>,
 #<Artist id: 2, name: "Kelly", genre: nil, age: nil, hometown: nil>]
 
 Artist.find_by(name: 'Jon')
# => #<Artist id: 1, name: "Jon", genre: nil, age: 30, hometown: nil>