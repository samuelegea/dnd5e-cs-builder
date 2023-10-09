class CreateFeatureOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :feature_owners do |t|
      t.references :feature, null: false, foreign_key: true
      t.references :owner, null: false, polymorphic: true

      t.timestamps
    end
  end
end
