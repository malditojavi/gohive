class AddAcceptedToEvents < ActiveRecord::Migration
  def change
    add_column :events, :accepted, :integer
  end
end
