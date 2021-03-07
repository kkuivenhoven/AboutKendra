class AddQtToTeches < ActiveRecord::Migration[5.0]
  def change
    add_column :teches, :qt, :boolean
  end
end
