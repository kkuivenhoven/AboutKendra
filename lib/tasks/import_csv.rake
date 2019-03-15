require 'csv'

namespace :import_csv do

  desc "TODO"
  task load_projects: :environment do
		file_path = 'projectsDeveloped.csv'
		csv_text = File.read(Rails.root.join(file_path))
		csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
		csv.each do |row|
			project = Project.new
			project.name = row['name']
			project.platform_type = row['type']
			project.github_repo = row['github_repo']
			project.prod_site = row['prod_site']
			project.description = row['description']
			project.year = row['year']
			project.month = row['month']
			project.save
		end
  end

  desc "TODO"
  task load_tech_used: :environment do
		file_path = 'techUsed.csv'
		csv_text = File.read(Rails.root.join(file_path))
		csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
		csv.each do |row|
			tech = Tech.new
			tech.project_id = row['proj_id']
			tech.bible_gateway_api = row['bible_gateway']
			tech.bootstrap = row['bootstrap']
			tech.css = row['css']
			tech.csv = row['csv']
			tech.d3_js_api = row['d3_js']
			tech.google_maps_api = row['google_maps']
			tech.javascript = row['javascript']
			tech.json = row['json']
			tech.oxford_dictionary_api = row['oxford']
			tech.pearson_dictionary_api = row['pearson']
			tech.r_spec = row['r_spec']
			tech.react_native = row['react_native']
			tech.ruby = row['ruby']
			tech.ruby_on_rails = row['ruby_on_rails']
			tech.scss = row['scss']
			tech.zing_charts_api = row['zing_charts']
			tech.firebase = row['firebase']
			tech.html = row['html']
			tech.save
		end
	end

end
