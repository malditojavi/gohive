class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :date
      t.string :name
      t.string :description
      t.string :city

      t.timestamps null: false
    end
  end
end
