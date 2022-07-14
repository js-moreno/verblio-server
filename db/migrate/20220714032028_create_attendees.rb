class CreateAttendees < ActiveRecord::Migration[7.0]
  def change
    create_table :attendees do |t|
      t.string :name
      t.string :company
      t.string :email
      t.datetime :registered

      t.timestamps
    end
  end
end
