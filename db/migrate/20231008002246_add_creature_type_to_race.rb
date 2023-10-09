class AddCreatureTypeToRace < ActiveRecord::Migration[7.1]
  def change
    add_reference :races, :creature_type, null: false, foreign_key: true
  end
end
