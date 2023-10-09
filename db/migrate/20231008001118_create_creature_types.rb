class CreateCreatureTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :creature_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
