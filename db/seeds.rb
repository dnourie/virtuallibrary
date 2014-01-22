# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create [{:name => 'Atheism'},
                {:name => 'Religion'},
                {:name => 'Science'},
                {:name => 'History'},
                {:name => 'Philosophy'},
                {:name => 'Computers'},
                {:name => 'Health'},
                {:name => 'Travel'},
                {:name => 'Math'},
                {:name => 'Fiction'},
                {:name => 'Other'}]
