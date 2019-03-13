class AddFirebaseToTeches < ActiveRecord::Migration[5.0]
  def change
    add_column :teches, :firebase, :boolean
  end
end
