class AddColumnsToTech < ActiveRecord::Migration[5.0]
  def change
    add_column :teches, :ruby_on_rails, :boolean
    add_column :teches, :ruby, :boolean
    add_column :teches, :pearson_dict_api, :boolean
    add_column :teches, :oxford_dictionary_api, :boolean
    add_column :teches, :zing_charts_api, :boolean
    add_column :teches, :javascript, :boolean
    add_column :teches, :r_spec, :boolean
    add_column :teches, :json, :boolean
    add_column :teches, :csv, :boolean
    add_column :teches, :bootstrap, :boolean
    add_column :teches, :html, :boolean
    add_column :teches, :css, :boolean
    add_column :teches, :scss, :boolean
    add_column :teches, :google_maps_api, :boolean
    add_column :teches, :d3_js_api, :boolean
    add_column :teches, :bible_gateway_api, :boolean
    add_column :teches, :react_native, :boolean
  end
end
