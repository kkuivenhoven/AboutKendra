class FixColumnName < ActiveRecord::Migration[5.0]

  def change
		rename_column :projects, :type, :platform_type
  end

end
