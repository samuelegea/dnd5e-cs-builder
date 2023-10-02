class CreateLanguageSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :language_speakers do |t|
      t.references :language, null: false, foreign_key: true
      t.references :speaker, polymorphic: true 

      t.timestamps
    end
  end
end

