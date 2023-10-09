class ChangeDamageTypeToOptionalOnWeapons < ActiveRecord::Migration[7.1]
  def change
    change_column :weapons, :damage_type_id, :bigint, null: true
    remove_index :weapons, :damage_type_id
  end
end
