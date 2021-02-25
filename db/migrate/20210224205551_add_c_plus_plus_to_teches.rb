class AddCPlusPlusToTeches < ActiveRecord::Migration[5.0]
  def change
    add_column :teches, :c_plus_plus, :boolean
  end
end
