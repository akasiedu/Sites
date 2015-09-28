# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

newpost = Post.create([{ comment: "Chicago"}, {comment: "Hollywood"}, {comment:"Ghana"}])
newtag = Tag.create([{ content: "Asiedu"}, {content: "Amoako"}, {content: "Kwame"}])