class AddTypeToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :type_of, :string
  end
end
