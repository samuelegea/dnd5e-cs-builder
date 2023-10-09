class AddDescriptionToWeapon < ActiveRecord::Migration[7.1]
  def change
    add_column :weapons, :description, :string
  end
end
