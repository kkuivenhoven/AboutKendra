class GuestsController < ApplicationController

  def index
		@guests = Guest.all
		@views = Guest.all.pluck(:views)
		@totalViews = 0
		@views.each do |view|
			@totalViews += view
		end
  end

end
