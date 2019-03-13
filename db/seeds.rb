# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

puts "importing projects"
Rake::Task['import_csv:load_projects'].execute
puts "project imported"


puts "importing tech used"
Rake::Task['import_csv:load_tech_used'].execute
puts "technologies imported"


