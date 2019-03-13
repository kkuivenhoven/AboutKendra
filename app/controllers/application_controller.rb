class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :extract_tech_column_names

	def extract_tech_column_names
		 @techColNames = Tech.column_names 
		 stopCol = ["id","created_at","updated_at", "project_id"]
		 @techColNames = @techColNames.reject{ |e| stopCol.include? e }
		 @stopColKeySet = [:id, :created_at, :updated_at, :project_id]
	end

end
