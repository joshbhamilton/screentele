class AddDirectorToMovie < ActiveRecord::Migration
  def self.up
    add_column :movies, :director, :string
  end

  def self.down
    remove_column :movies, :director
  end
end
