class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :name
      t.text :description
      t.belongs_to :goal, index: true

      t.timestamps null: false
    end
  end
end
