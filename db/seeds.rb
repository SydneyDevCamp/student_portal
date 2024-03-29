# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'student' },
  { :name => 'VIP' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :username => 'Pete', :email => 'peter@sydneydevcamp.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user.username
user2 = User.create! :username => 'Danila', :email => 'danila@sydneydevcamp.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user2.username
user.add_role :admin
user2.add_role :student