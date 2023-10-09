class AddFieldsToRaces < ActiveRecord::Migration[7.1]
  def change
    add_column :races, :age, :string, null: false, default: ""
    add_column :races, :alignment, :string, null: false, default: ""
    add_column :races, :asi, :jsonb, null: false, default: {}
    add_reference :races, :super_race,  foreign_key: { to_table: :races }
  end
end
