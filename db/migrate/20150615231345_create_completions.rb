class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.boolean :completed
      t.references :goal, index: true

      t.timestamps null: false
    end
    add_foreign_key :completions, :goals
  end
end
