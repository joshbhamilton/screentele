class CreateScreenings < ActiveRecord::Migration
  def self.up
    create_table :screenings do |t|
      t.integer :user_id
      t.integer :title_id

      t.timestamps
    end
  end

  def self.down
    drop_table :screenings
  end
end
