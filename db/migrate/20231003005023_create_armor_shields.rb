class CreateArmorShields < ActiveRecord::Migration[7.1]
  def change
    create_table :armor_shields do |t|
      t.string  :name, null: false, default: ''
      t.string  :description, null: false, default: ''
      t.integer :base_ac, null: false, default: 0
      t.integer :ac_modifier, null: true
      t.integer :cap_ac_modifier, null: true
      t.integer :strength, null: true
      t.boolean :stealth_disadvantage, null: false, default: false
      t.integer :weight, null: false, default: 0
      t.integer :cost_cp, null: false, default: 0
      t.integer :don_unit, null: false, default: 0
      t.integer :don_amount, null: false, default: 0
      t.integer :doff_unit, null: false, default: 0
      t.integer :doff_amount, null: false, default: 0
      t.integer :category, null: false, default: 0

      t.timestamps
    end
  end
end
