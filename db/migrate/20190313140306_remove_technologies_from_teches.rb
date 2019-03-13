class RemoveTechnologiesFromTeches < ActiveRecord::Migration[5.0]
  def change
    remove_column :teches, :technologies, :string
  end
end
