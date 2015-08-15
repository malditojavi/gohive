class AddDeitToEvents < ActiveRecord::Migration
  def change
    add_column :events, :deit, :date
  end
end
