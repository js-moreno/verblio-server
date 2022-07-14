class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :company
      t.string :email
      t.text :bio

      t.timestamps
    end
  end
end
