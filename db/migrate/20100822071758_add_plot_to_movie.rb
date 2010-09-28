class AddPlotToMovie < ActiveRecord::Migration
  def self.up
    add_column :movies, :plot, :text
  end

  def self.down
    remove_column :movies, :plot
  end
end
