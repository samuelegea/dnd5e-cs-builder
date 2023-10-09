class CreateWeaponPropertyWeapons < ActiveRecord::Migration[7.1]
  def change
    create_table :weapon_property_weapons do |t|
      t.references :weapon, null: false, foreign_key: true
      t.references :weapon_property, null: false, foreign_key: true
      t.integer :short_range
      t.integer :long_range
      t.string :alternative_damage_dice

      t.timestamps
    end
  end
end
