class Tech < ApplicationRecord
	belongs_to :project, optional: true

	def self.getTotalTechCount
		 proj_ids = Project.pluck(:id) 
		 @projByTech = Hash.new 
		 cn = Tech.column_names 
		 stopCol = ["id","created_at","updated_at", "project_id"] 
		 cn = cn.reject{ |e| stopCol.include? e } 

		 cn.each do |colName| 
			 @projByTech[colName] = Array.new 
		 end 

		 proj_ids.each do |pi| 
				 project = Project.where(id: pi).first 
				 tech = project.tech 
				 cn.each do |colName| 
					 columnBool = Tech.where(project_id: pi).pluck("#{colName}").first 
					 if columnBool == true 
						 @projByTech[colName] << pi 
					 end 
				 end 
		 end 
		 @projByTech = @projByTech.sort_by { |key| key }.to_h
		 return @projByTech 
	end

	def self.splitTotalTechCount
	 @techVals = Tech.getTotalTechCount 
	 midpoint = (@techVals.length)/2 

		i = 0 
		@kv_first_half = Hash.new
		@kv_second_half = Hash.new

		loop do
			if i < midpoint
				@kv_first_half[@techVals.keys[i]] = @techVals.values[i]
			else
				@kv_second_half[@techVals.keys[i]] = @techVals.values[i]
			end 
			i += 1
			break if (i == @techVals.length)
		end 
		return @kv_first_half, @kv_second_half
	end

end
