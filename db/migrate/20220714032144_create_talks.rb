class CreateTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :talks do |t|
      t.string :title
      t.text :abstract
      t.integer :room
      t.references :speaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
