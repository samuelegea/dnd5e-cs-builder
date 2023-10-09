class CreateWeaponProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :weapon_properties do |t|
      t.string :name, null: false, default: ''
      t.string :description, null: false, default: ''

      t.timestamps
    end
  end
end
