class CreateRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :races do |t|
      t.string :name
      t.string :description
      t.integer :size
      t.integer :speed

      t.timestamps
    end
  end
end
