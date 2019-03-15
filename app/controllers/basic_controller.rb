class BasicController < ApplicationController

  def home
  end

  def about
		# @all_projects = Project.all.pluck(:id, :name, :description, :platform_type, :github_repo, :prod_site, :year, :month, :platform_type)
		@all_projects = Project.all.pluck(:id, :name, :description, :platform_type, :github_repo, :prod_site)
		@kv_first_half, @kv_second_half = Tech.splitTotalTechCount

		@name = "<h1>Kendra Kuivenhoven</h1>".html_safe
		@email = "<p>kendrakvnhvn10@gmail.com</p>".html_safe
		@seeking = "I am seeking a technical position in software development, full-stack or front end and/or back end. I am open to a quality assurance analyst position as well. I am also available to tutor high school Mathematics (up to Calculus 1) or Statistics. "
		@portfolio = "My portfolio is below with links to my projects. Developing web and mobile apps is one of my passions, so I am always creating something new. "
		@challenge = "I like the challenge of learning a new language. If your company works with a language that is not on my resume, I am ready to work until I know it. "
		@resume = "<a href='https://docs.google.com/document/d/1hWh5acj5OFcYbxT26l2BewyVcgwnASD_RIBMRfC3Hqk/edit?usp=sharing'>Resume</a>".html_safe
		@linked_in = "<a href='https://www.linkedin.com/in/kendra-kuivenhoven-4a898237/'>Linked In</a>".html_safe
		@github = "<a href='www.github.com/kkuivenhoven'>GitHub</a>".html_safe
		@stackoverflow = "<a href='https://stackoverflow.com/users/story/5479897'>Stackoverflow</a>".html_safe
		@gem_profile = "<a href='https://rubygems.org/profiles/kendrakvnhvn10'>Published Gems</a>".html_safe
		@greeting = "Welcome and enjoy!"
  end

end
