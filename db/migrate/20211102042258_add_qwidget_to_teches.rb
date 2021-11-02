class AddQwidgetToTeches < ActiveRecord::Migration[5.0]
  def change
    add_column :teches, :qwidget, :boolean
  end
end
