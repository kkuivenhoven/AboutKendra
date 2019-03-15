class AddMonthToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :month, :integer
  end
end
