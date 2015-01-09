class AddColumnToJokes < ActiveRecord::Migration
  def change
  	add_column :jokes, :vote_count, :integer
  end
end
