class AddStillActiveToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :still_active, :boolean
  end
end
