class CreateTeches < ActiveRecord::Migration[5.0]
  def change
    create_table :teches do |t|
      t.string :name
      t.integer :project_id
      t.string :technologies

      t.timestamps
    end
  end
end
