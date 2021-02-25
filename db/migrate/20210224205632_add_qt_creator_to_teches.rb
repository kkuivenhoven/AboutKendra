class AddQtCreatorToTeches < ActiveRecord::Migration[5.0]
  def change
    add_column :teches, :qt_creator, :boolean
  end
end
