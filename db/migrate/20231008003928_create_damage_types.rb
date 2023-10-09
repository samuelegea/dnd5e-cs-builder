class CreateDamageTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :damage_types do |t|
      t.string :name, null: false, default: ''
      t.string :description, null: false, default: ''

      t.timestamps
    end
  end
end
