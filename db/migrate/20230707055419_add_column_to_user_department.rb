class AddColumnToUserDepartment < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :department, :integer
  end
end
