class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.integer :neighborhood_id
      t.string :coordinates

      t.timestamps
    end
  end
end
