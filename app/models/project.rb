class Project < ApplicationRecord
	has_one :tech, -> { joins(:project) }

end
