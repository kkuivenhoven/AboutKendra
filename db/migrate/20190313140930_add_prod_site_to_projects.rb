class AddProdSiteToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :prod_site, :string
  end
end
