# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.find_or_create_by_email("ycbacakoglu@gmail.com", :password => "12345678", :password_confirmation => "12345678")
User.find_or_create_by_email("admin@yigitbacakoglu.com", :password => "12345678", :password_confirmation => "12345678")
User.find_or_create_by_email("me@yigitbacakoglu.com", :password => "12345678", :password_confirmation => "12345678")
