class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.integer :title_id
      t.text :title

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
