class ChangePearsonColumn < ActiveRecord::Migration[5.0]

  def change
		rename_column :teches, :pearson_dict_api, :pearson_dictionary_api
  end

end
