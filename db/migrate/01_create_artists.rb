# db/migrate/01_create_artists.rb
# We must use 4.2 in this lab b/c the lab gems used when created support Rails 4.2

# class inherits from ActiveRecord's ActiveRecord::Migration module
class CreateArtists < ActiveRecord::Migration[4.2]
    # think of up and down as "do and undo"
    # up method defines the code to execute when the mirgration is run
    #def up
    #end

    # down method defines the code to execute when the migration is rolled back
    #def down
    #end

    # change is more common for basic migration 
    # is the primary way of writing migrations 
    # works in the majority of cases, where Active Records knows how to reverse the migration automatically 
    def change
        # create_table method, passed the name of the table we want to create as a symbol 
        create_table :artists do |t|
            # add some columns
            # the data type we'd like to case & the name we'd like to give the column 
            t.string :name
            t.string :genre
            t.integer :age
            t.string :hometown
            # Active Record will generate the primary key column for us and auto-increment it
         end
    end 
end 