class CreateWeapons < ActiveRecord::Migration[7.1]
  def change
    create_table :weapons do |t|
      t.string :name, null: false, default: ''
      t.integer :cost_cp, null: false, default: 0
      t.float :weight, null: false, default: 0
      t.string :damage_dice, null: false, default: ''
      t.references :damage_type, null: false, foreign_key: true
      t.integer :weapon_type, null: false, default: 0

      t.timestamps
    end
  end
end
