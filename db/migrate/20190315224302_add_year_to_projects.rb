class AddYearToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :year, :integer
  end
end
