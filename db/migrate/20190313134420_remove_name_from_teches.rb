class RemoveNameFromTeches < ActiveRecord::Migration[5.0]
  def change
    remove_column :teches, :name, :string
  end
end
